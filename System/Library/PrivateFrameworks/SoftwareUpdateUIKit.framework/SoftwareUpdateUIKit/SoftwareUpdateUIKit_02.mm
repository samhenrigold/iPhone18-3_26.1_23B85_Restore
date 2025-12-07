uint64_t sub_26AED72E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = v3;
  *(v4 + 88) = a3;
  *(v4 + 80) = a2;
  *(v4 + 72) = a1;
  *(v4 + 48) = v4;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v7 = *(a2 - 8);
  *(v4 + 104) = v7;
  *(v4 + 112) = *(v7 + 64);
  *(v4 + 120) = swift_task_alloc();
  v5 = sub_26B078580();
  *(v4 + 128) = v5;
  *(v4 + 136) = *(v5 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;

  return MEMORY[0x2822009F8](sub_26AED7474, 0, 0);
}

uint64_t sub_26AED7474()
{
  v6 = v0[12];
  v4 = v0[11];
  v3 = v0[10];
  v5 = v0[9];
  v0[6] = v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2C8, &qword_26B089348);

  v8 = swift_task_alloc();
  v0[19] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v6;
  sub_26AEDBAC0(v9, &unk_287B92C18);
  v1 = swift_task_alloc();
  *(v7 + 160) = v1;
  *v1 = *(v7 + 48);
  v1[1] = sub_26AED75F4;

  return MEMORY[0x282200600](v7 + 16, v9);
}

uint64_t sub_26AED75F4()
{
  *(*v0 + 48) = *v0;

  return MEMORY[0x2822009F8](sub_26AED774C, 0, 0);
}

uint64_t sub_26AED774C(uint64_t a1)
{
  v46 = v1;
  v19 = *(v1 + 120);
  v17 = *(v1 + 104);
  v15 = *(v1 + 96);
  v16 = *(v1 + 88);
  v20 = *(v1 + 80);
  *(v1 + 48) = v1;
  v21 = *(v1 + 16);
  v2 = *(v1 + 24);
  v22 = v2;
  *(v1 + 32) = v21;
  *(v1 + 40) = v2 & 1;
  sub_26B078550();
  (*(v17 + 16))(v19, v15, v20);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v16;
  (*(v17 + 32))(v23 + v18, v19);
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  *(v27 + 24) = v22 & 1;
  v39 = sub_26B078570();
  v40 = sub_26B07A2A0();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AEDBBCC;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26AEDD8A8;
  *(v25 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26AEDD8F4;
  *(v31 + 24) = v25;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEDBC20;
  *(v26 + 24) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26AEDD9F4;
  *(v34 + 24) = v26;
  v35 = swift_allocObject();
  *(v35 + 16) = 32;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AEDBCC0;
  *(v28 + 24) = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_26AEDDAF4;
  *(v37 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v38 = v3;

  *v38 = sub_26AEDD82C;
  v38[1] = v29;

  v38[2] = sub_26AEDD860;
  v38[3] = v30;

  v38[4] = sub_26AEDD940;
  v38[5] = v31;

  v38[6] = sub_26AEDD978;
  v38[7] = v32;

  v38[8] = sub_26AEDD9AC;
  v38[9] = v33;

  v38[10] = sub_26AEDDA40;
  v38[11] = v34;

  v38[12] = sub_26AEDDA78;
  v38[13] = v35;

  v38[14] = sub_26AEDDAAC;
  v38[15] = v36;

  v38[16] = sub_26AEDDB40;
  v38[17] = v37;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v39, v40))
  {
    buf = sub_26B07A420();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v12 = sub_26AEA3B70(0, v10, v10);
    v13 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = buf;
    v42 = v12;
    v43 = v13;
    sub_26AEA3BC4(2, &v41);
    sub_26AEA3BC4(3, &v41);
    v44 = sub_26AEDD82C;
    v45 = v29;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEDD860;
    v45 = v30;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEDD940;
    v45 = v31;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEDD978;
    v45 = v32;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEDD9AC;
    v45 = v33;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEDDA40;
    v45 = v34;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEDDA78;
    v45 = v35;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEDDAAC;
    v45 = v36;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEDDB40;
    v45 = v37;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_26AE88000, v39, v40, "%s.%s: Deep linking resolved the current state: %s", buf, 0x20u);
    sub_26AEA3C24(v12, 0, v10);
    sub_26AEA3C24(v13, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v9 = v14[18];
  v8 = v14[16];
  v7 = v14[17];
  v4 = MEMORY[0x277D82BD8](v39);
  (*(v7 + 8))(v9, v8, v4);

  v5 = *(v14[6] + 8);

  return v5(v21, v22 & 1);
}

uint64_t sub_26AED83F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a6;
  *(v6 + 112) = a5;
  *(v6 + 104) = a4;
  *(v6 + 96) = a3;
  *(v6 + 88) = a2;
  *(v6 + 80) = a1;
  *(v6 + 48) = v6;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v8 = *(a5 - 8);
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 + 64);
  *(v6 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;

  return MEMORY[0x2822009F8](sub_26AED857C, 0, 0);
}

uint64_t sub_26AED857C()
{
  v18 = v0[19];
  v13 = v0[18];
  v10 = v0[17];
  v3 = v0[16];
  v11 = v0[15];
  v14 = v0[14];
  v7 = v0[13];
  v16 = v0[12];
  v0[6] = v0;
  v5 = sub_26B07A160();
  v6 = *(*(v5 - 8) + 56);
  v6(v18, 1);

  v8 = *(v3 + 16);
  v8(v13, v7, v14);
  v9 = *(v3 + 80);
  v4 = swift_allocObject();
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = v14;
  *(v4 + 5) = v11;
  *(v4 + 6) = v16;
  v15 = *(v3 + 32);
  v15(&v4[(v9 + 56) & ~v9], v13);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC318, &qword_26B0893F8);
  sub_26AEDB00C(v18, &unk_26B0893F0, v4, v19);
  sub_26AEA08A4(v18);
  (v6)(v18, 1, 1, v5);
  v8(v13, v7, v14);

  v12 = (v9 + 48) & ~v9;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v14;
  *(v17 + 5) = v11;
  v15(&v17[v12], v13);
  *&v17[(v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v16;
  sub_26AEDB00C(v18, &unk_26B089408, v17, v19);
  sub_26AEA08A4(v18);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0[6];
  v1[1] = sub_26AED88FC;

  return MEMORY[0x2822002D0](v0 + 2, 0, 0, v19);
}

uint64_t sub_26AED88FC()
{
  *(*v0 + 48) = *v0;

  return MEMORY[0x2822009F8](sub_26AED8A14, 0, 0);
}

uint64_t sub_26AED8A14()
{
  *(v0 + 48) = v0;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  if (*(v0 + 26))
  {
    v1 = *(v5 + 80);
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  else
  {
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    *(v5 + 41) = HIBYTE(v7) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2C8, &qword_26B089348);
    sub_26B07A110();
    v2 = *(v5 + 80);
    if ((v7 & 0x100) != 0)
    {
      *v2 = 0;
      *(v2 + 8) = 1;
    }

    else
    {
      *v2 = v6;
      *(v2 + 8) = v7;
    }
  }

  v3 = *(*(v5 + 48) + 8);

  return v3();
}

uint64_t sub_26AED8C6C(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v10 = v2[2];
  v11 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AED8D58;

  return sub_26AED83F8(a1, a2, v8, v9, v10, v11);
}

uint64_t sub_26AED8D58()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AED8E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a7;
  v7[11] = a6;
  v7[10] = a5;
  v7[9] = a4;
  v7[8] = a1;
  v7[2] = v7;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = 0;
  v10 = *(a6 - 8);
  v7[13] = v10;
  v7[14] = *(v10 + 64);
  v7[15] = swift_task_alloc();
  v8 = sub_26B078580();
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  v7[3] = a4;
  v7[4] = a5;

  return MEMORY[0x2822009F8](sub_26AED9010, 0, 0);
}

uint64_t sub_26AED9010()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v0;
  v5 = *(v1 + 112) * 1000000000.0;
  if (((*&v5 >> 52) & 0x7FFLL) == 0x7FF || v5 <= -1.0 || v5 >= 1.84467441e19)
  {
    return sub_26B07A650();
  }

  v3 = swift_task_alloc();
  *(v4 + 152) = v3;
  *v3 = *(v4 + 16);
  v3[1] = sub_26AED92AC;

  return MEMORY[0x282200480](v5);
}

uint64_t sub_26AED92AC()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 160) = v0;

  if (v0)
  {
    v2 = sub_26AEDA1E4;
  }

  else
  {
    v2 = sub_26AED9414;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26AED9414()
{
  v48 = v0;
  v0[2] = v0;
  v16 = v0[20];
  v21 = v0[15];
  v19 = v0[13];
  v18 = v0[12];
  v22 = v0[11];
  v17 = v0[10];

  v23 = ReactiveUIManager.currentState.getter();
  v0[5] = v23;

  sub_26B078550();
  (*(v19 + 16))(v21, v17, v22);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v18;
  (*(v19 + 32))(v25 + v20, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;

  v29 = swift_allocObject();
  *(v29 + 16) = sub_26AEDF67C;
  *(v29 + 24) = v24;

  v41 = sub_26B078570();
  v42 = sub_26B07A2A0();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEDF5FC;
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26AEDF7C8;
  *(v27 + 24) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26AEDF814;
  *(v33 + 24) = v27;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AEDAFD4;
  *(v28 + 24) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26AEDF914;
  *(v36 + 24) = v28;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26AEDF6C4;
  *(v30 + 24) = v29;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_26AEDFA14;
  *(v39 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v40 = v1;

  *v40 = sub_26AEDF74C;
  v40[1] = v31;

  v40[2] = sub_26AEDF780;
  v40[3] = v32;

  v40[4] = sub_26AEDF860;
  v40[5] = v33;

  v40[6] = sub_26AEDF898;
  v40[7] = v34;

  v40[8] = sub_26AEDF8CC;
  v40[9] = v35;

  v40[10] = sub_26AEDF960;
  v40[11] = v36;

  v40[12] = sub_26AEDF998;
  v40[13] = v37;

  v40[14] = sub_26AEDF9CC;
  v40[15] = v38;

  v40[16] = sub_26AEDFA60;
  v40[17] = v39;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v41, v42))
  {
    buf = sub_26B07A420();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v13 = sub_26AEA3B70(0, v11, v11);
    v14 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v43 = buf;
    v44 = v13;
    v45 = v14;
    sub_26AEA3BC4(2, &v43);
    sub_26AEA3BC4(3, &v43);
    v46 = sub_26AEDF74C;
    v47 = v31;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    if (v16)
    {
    }

    v46 = sub_26AEDF780;
    v47 = v32;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF860;
    v47 = v33;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF898;
    v47 = v34;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF8CC;
    v47 = v35;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF960;
    v47 = v36;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF998;
    v47 = v37;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF9CC;
    v47 = v38;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDFA60;
    v47 = v39;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    _os_log_impl(&dword_26AE88000, v41, v42, "%s.%s: Timeout exceeded while waiting for scan to finish. End state: %s", buf, 0x20u);
    sub_26AEA3C24(v13, 0, v11);
    sub_26AEA3C24(v14, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v9 = v15[18];
  v10 = v15[16];
  v8 = v15[17];
  v3 = MEMORY[0x277D82BD8](v41);
  (*(v8 + 8))(v9, v10, v3);
  type metadata accessor for SUUIStatefulUIState(0);
  v15[6] = v23;
  v15[7] = 1;
  sub_26AEB6FE0();
  if (sub_26B079D30())
  {
    v6 = v23;
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v4 = v15[8];
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 9) = 0;

  v5 = *(v15[2] + 8);

  return v5();
}

uint64_t sub_26AEDA1E4()
{
  v48 = v0;
  v1 = v0[20];
  v0[2] = v0;

  v21 = v0[15];
  v19 = v0[13];
  v18 = v0[12];
  v22 = v0[11];
  v17 = v0[10];

  v23 = ReactiveUIManager.currentState.getter();
  v0[5] = v23;

  sub_26B078550();
  (*(v19 + 16))(v21, v17, v22);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v18;
  (*(v19 + 32))(v25 + v20, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;

  v29 = swift_allocObject();
  *(v29 + 16) = sub_26AEDF67C;
  *(v29 + 24) = v24;

  v41 = sub_26B078570();
  v42 = sub_26B07A2A0();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEDF5FC;
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26AEDF7C8;
  *(v27 + 24) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26AEDF814;
  *(v33 + 24) = v27;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AEDAFD4;
  *(v28 + 24) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26AEDF914;
  *(v36 + 24) = v28;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26AEDF6C4;
  *(v30 + 24) = v29;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_26AEDFA14;
  *(v39 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v40 = v2;

  *v40 = sub_26AEDF74C;
  v40[1] = v31;

  v40[2] = sub_26AEDF780;
  v40[3] = v32;

  v40[4] = sub_26AEDF860;
  v40[5] = v33;

  v40[6] = sub_26AEDF898;
  v40[7] = v34;

  v40[8] = sub_26AEDF8CC;
  v40[9] = v35;

  v40[10] = sub_26AEDF960;
  v40[11] = v36;

  v40[12] = sub_26AEDF998;
  v40[13] = v37;

  v40[14] = sub_26AEDF9CC;
  v40[15] = v38;

  v40[16] = sub_26AEDFA60;
  v40[17] = v39;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v41, v42))
  {
    buf = sub_26B07A420();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v14 = sub_26AEA3B70(0, v12, v12);
    v15 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v43 = buf;
    v44 = v14;
    v45 = v15;
    sub_26AEA3BC4(2, &v43);
    sub_26AEA3BC4(3, &v43);
    v46 = sub_26AEDF74C;
    v47 = v31;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF780;
    v47 = v32;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF860;
    v47 = v33;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF898;
    v47 = v34;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF8CC;
    v47 = v35;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF960;
    v47 = v36;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF998;
    v47 = v37;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDF9CC;
    v47 = v38;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    v46 = sub_26AEDFA60;
    v47 = v39;
    sub_26AEA3BD8(&v46, &v43, &v44, &v45);
    _os_log_impl(&dword_26AE88000, v41, v42, "%s.%s: Timeout exceeded while waiting for scan to finish. End state: %s", buf, 0x20u);
    sub_26AEA3C24(v14, 0, v12);
    sub_26AEA3C24(v15, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v10 = v16[18];
  v11 = v16[16];
  v9 = v16[17];
  v3 = MEMORY[0x277D82BD8](v41);
  (*(v9 + 8))(v10, v11, v3);
  type metadata accessor for SUUIStatefulUIState(0);
  v16[6] = v23;
  v16[7] = 1;
  sub_26AEB6FE0();
  if (sub_26B079D30())
  {
    v7 = v23;
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  v4 = v16[8];
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 9) = 0;

  v5 = *(v16[2] + 8);

  return v5();
}

uint64_t sub_26AEDB00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v35 = &unk_26B089418;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v38 = &v12 - v37;
  sub_26AED6580(v4, &v12 - v37);
  v39 = sub_26B07A160();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  if ((*(v40 + 48))(v38, 1) == 1)
  {
    sub_26AEA08A4(v38);
    v30 = 0;
  }

  else
  {
    v29 = sub_26B07A150();
    (*(v40 + 8))(v38, v39);
    v30 = v29;
  }

  v26 = v30 | 0x3100;
  v28 = *(v32 + 16);
  v27 = *(v32 + 24);
  swift_unknownObjectRetain();
  if (v28)
  {
    v24 = v28;
    v25 = v27;
    v18 = v27;
    v19 = v28;
    swift_getObjectType();
    v20 = sub_26B07A0C0();
    v21 = v5;
    swift_unknownObjectRelease();
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v14 = v23;
  v13 = v22;
  v12 = *v34;

  v6 = swift_allocObject();
  v7 = v31;
  v8 = v32;
  v9 = v13;
  v10 = v14;
  v15 = v6;
  v16 = *(v33 + 16);
  v45[4] = v16;
  v6[2] = v16;
  v6[3] = v7;
  v6[4] = v8;
  v17 = 0;
  if (v9 != 0 || v10 != 0)
  {
    v45[0] = 0;
    v45[1] = 0;
    v45[2] = v13;
    v45[3] = v14;
    v17 = v45;
  }

  v42 = 1;
  v43 = v17;
  v44 = v12;
  swift_task_create();
}

uint64_t sub_26AEDB368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a1;
  v7[2] = v7;
  v7[3] = 0;
  v7[4] = 0;
  v7[3] = a4;
  v7[4] = a5;
  v8 = swift_task_alloc();
  *(v10 + 48) = v8;
  *v8 = *(v10 + 16);
  v8[1] = sub_26AEDB450;

  return sub_26AEDB5E0(a5, a6, a7);
}

uint64_t sub_26AEDB450(uint64_t a1, char a2)
{
  v4 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;

  return MEMORY[0x2822009F8](sub_26AEDB570, 0, 0);
}

uint64_t sub_26AEDB570()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  *(v0 + 16) = v0;
  *v3 = v2;
  *(v3 + 8) = v1 & 1;
  *(v3 + 9) = 0;
  return (*(*(v0 + 16) + 8))();
}

uint64_t sub_26AEDB5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = v3;
  v4[11] = a3;
  v4[10] = a2;
  v4[9] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[5] = a1;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_26AEDB648, 0, 0);
}

uint64_t sub_26AEDB648()
{
  v0[4] = v0;
  type metadata accessor for SUUIStatefulUIState(0);

  v14 = ReactiveUIManager.currentState.getter();

  v0[7] = v14;
  v0[8] = 1;
  sub_26AEB6FE0();
  if (sub_26B079D30())
  {

    v12 = ReactiveUIManager.currentState.getter();

    v1 = *(v13[4] + 8);

    return v1(v12, 0);
  }

  else
  {
    v8 = v13[12];
    v6 = v13[11];
    v5 = v13[10];
    v7 = v13[9];
    v9 = sub_26B079D00("observeCurrentState(with:)", 26, 1);
    v10 = v3;
    v13[13] = v3;

    v11 = swift_task_alloc();
    v13[14] = v11;
    v11[2] = v5;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = v8;
    v4 = swift_task_alloc();
    v13[15] = v4;
    *v4 = v13[4];
    v4[1] = sub_26AEDB8E8;

    return MEMORY[0x2822007B8](v13 + 2, 0, 0, v9, v10, sub_26AEDDB4C, v11, &unk_287B92C18);
  }
}

uint64_t sub_26AEDB8E8()
{
  *(*v0 + 32) = *v0;

  return MEMORY[0x2822009F8](sub_26AEDBA60, 0, 0);
}

uint64_t sub_26AEDBCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a1;
  v61 = a2;
  v23 = a3;
  v31 = a4;
  v26 = a5;
  v41 = 0;
  v34 = sub_26AEDE224;
  v36 = sub_26AEDD410;
  v42 = sub_26AEDD48C;
  v60 = sub_26AEDE5A4;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v75 = a4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2D0, &qword_26B0893C0);
  v55 = *(v59 - 8);
  v56 = v59 - 8;
  v52 = v55;
  v53 = *(v55 + 64);
  v15 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v58 = &v15 - v15;
  v27 = *(v5 - 8);
  v28 = v5 - 8;
  v24 = v27;
  v25 = *(v27 + 64);
  v16 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v15);
  v30 = &v15 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2D8, &qword_26B0893C8);
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v17 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v39 = &v15 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2E0, &qword_26B0893D0);
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v18 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v45 = &v15 - v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2E8, &qword_26B0893D8);
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v19 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v49 = &v15 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2F0, &qword_26B0893E0);
  v63 = *(v66 - 8);
  v64 = v66 - 8;
  v20 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v65 = &v15 - v20;
  v74 = v6;
  v73 = v7;
  v72 = v8;
  v21 = *(v7 + 128);

  v22 = *(v21 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_stateChangedPublisher);

  v71 = v22;
  (*(v27 + 16))(v30, v23, v31);
  v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v54 = 7;
  v9 = swift_allocObject();
  v10 = v26;
  v11 = v27;
  v12 = v29;
  v13 = v30;
  v32 = v9;
  *(v9 + 16) = v31;
  *(v9 + 24) = v10;
  (*(v11 + 32))(v9 + v12, v13);
  v35 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0B0, &unk_26B08BE90);
  sub_26AEDE278();
  sub_26B078900();
  sub_26AEDE300(v34, v35);

  sub_26AEDE334();
  sub_26B078930();
  (*(v37 + 8))(v39, v40);
  sub_26AEDE3BC();
  sub_26B078910();
  (*(v43 + 8))(v45, v46);
  sub_26AEDE444();
  sub_26B078920();
  (*(v47 + 8))(v49, v50);
  (*(v55 + 16))(v58, v51, v59);
  v57 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v62 = swift_allocObject();
  (*(v55 + 32))(v62 + v57, v58, v59);
  sub_26AEDE628();
  v69 = sub_26B078950();

  (*(v63 + 8))(v65, v66);
  v67 = &v70;
  v68 = sub_26AFA78E4();
  sub_26B0788A0();
  v68();
}

uint64_t sub_26AEDC56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a1;
  v66 = a2;
  v74 = a3;
  v69 = a4;
  v76 = sub_26AEDE7FC;
  v78 = sub_26AEDE77C;
  v80 = sub_26AEDE948;
  v82 = sub_26AEDE994;
  v84 = sub_26AEDD3D8;
  v85 = sub_26AEDEA94;
  v90 = sub_26AEDE844;
  v94 = sub_26AEDEB94;
  v96 = sub_26AEDE8CC;
  v98 = sub_26AEDE900;
  v100 = sub_26AEDE9E0;
  v102 = sub_26AEDEA18;
  v104 = sub_26AEDEA4C;
  v106 = sub_26AEDEAE0;
  v108 = sub_26AEDEB18;
  v110 = sub_26AEDEB4C;
  v113 = sub_26AEDEBE0;
  v125 = 0;
  v124 = 0;
  v58 = 0;
  v126 = a3;
  v70 = *(a3 - 8);
  v71 = a3 - 8;
  v67 = v70;
  v68 = *(v70 + 64);
  v59 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v73 = v49 - v59;
  v61 = sub_26B078580();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v65 = v49 - v64;
  v75 = *v4;
  v125 = v75;
  v124 = v5;
  sub_26B078550();
  (*(v70 + 16))(v73, v66, v74);
  v6 = *(v67 + 80);
  v91 = 32;
  v72 = (v6 + 32) & ~v6;
  v92 = 7;
  v7 = swift_allocObject();
  v8 = v69;
  v9 = v70;
  v10 = v72;
  v11 = v73;
  v79 = v7;
  *(v7 + 16) = v74;
  *(v7 + 24) = v8;
  (*(v9 + 32))(v7 + v10, v11);
  v77 = swift_allocObject();
  *(v77 + 16) = v75;

  v12 = swift_allocObject();
  v13 = v77;
  v93 = v12;
  *(v12 + 16) = v76;
  *(v12 + 24) = v13;

  v117 = sub_26B078570();
  v118 = sub_26B07A2B0();
  v88 = 17;
  v97 = swift_allocObject();
  v87 = 32;
  *(v97 + 16) = 32;
  v99 = swift_allocObject();
  v89 = 8;
  *(v99 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v79;
  v81 = v14;
  *(v14 + 16) = v78;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v81;
  v83 = v16;
  *(v16 + 16) = v80;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v83;
  v101 = v18;
  *(v18 + 16) = v82;
  *(v18 + 24) = v19;
  v103 = swift_allocObject();
  *(v103 + 16) = v87;
  v105 = swift_allocObject();
  *(v105 + 16) = v89;
  v20 = swift_allocObject();
  v86 = v20;
  *(v20 + 16) = v84;
  *(v20 + 24) = 0;
  v21 = swift_allocObject();
  v22 = v86;
  v107 = v21;
  *(v21 + 16) = v85;
  *(v21 + 24) = v22;
  v109 = swift_allocObject();
  *(v109 + 16) = v87;
  v111 = swift_allocObject();
  *(v111 + 16) = v89;
  v23 = swift_allocObject();
  v24 = v93;
  v95 = v23;
  *(v23 + 16) = v90;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v95;
  v114 = v25;
  *(v25 + 16) = v94;
  *(v25 + 24) = v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v112 = sub_26B07A760();
  v115 = v27;

  v28 = v97;
  v29 = v115;
  *v115 = v96;
  v29[1] = v28;

  v30 = v99;
  v31 = v115;
  v115[2] = v98;
  v31[3] = v30;

  v32 = v101;
  v33 = v115;
  v115[4] = v100;
  v33[5] = v32;

  v34 = v103;
  v35 = v115;
  v115[6] = v102;
  v35[7] = v34;

  v36 = v105;
  v37 = v115;
  v115[8] = v104;
  v37[9] = v36;

  v38 = v107;
  v39 = v115;
  v115[10] = v106;
  v39[11] = v38;

  v40 = v109;
  v41 = v115;
  v115[12] = v108;
  v41[13] = v40;

  v42 = v111;
  v43 = v115;
  v115[14] = v110;
  v43[15] = v42;

  v44 = v114;
  v45 = v115;
  v115[16] = v113;
  v45[17] = v44;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v117, v118))
  {
    v46 = v58;
    v51 = sub_26B07A420();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v52 = sub_26AEA3B70(0, v50, v50);
    v53 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v54 = &v123;
    v123 = v51;
    v55 = &v122;
    v122 = v52;
    v56 = &v121;
    v121 = v53;
    sub_26AEA3BC4(2, &v123);
    sub_26AEA3BC4(3, v54);
    v119 = v96;
    v120 = v97;
    sub_26AEA3BD8(&v119, v54, v55, v56);
    v57 = v46;
    if (v46)
    {

      __break(1u);
    }

    else
    {
      v119 = v98;
      v120 = v99;
      sub_26AEA3BD8(&v119, &v123, &v122, &v121);
      v49[7] = 0;
      v119 = v100;
      v120 = v101;
      sub_26AEA3BD8(&v119, &v123, &v122, &v121);
      v49[6] = 0;
      v119 = v102;
      v120 = v103;
      sub_26AEA3BD8(&v119, &v123, &v122, &v121);
      v49[5] = 0;
      v119 = v104;
      v120 = v105;
      sub_26AEA3BD8(&v119, &v123, &v122, &v121);
      v49[4] = 0;
      v119 = v106;
      v120 = v107;
      sub_26AEA3BD8(&v119, &v123, &v122, &v121);
      v49[3] = 0;
      v119 = v108;
      v120 = v109;
      sub_26AEA3BD8(&v119, &v123, &v122, &v121);
      v49[2] = 0;
      v119 = v110;
      v120 = v111;
      sub_26AEA3BD8(&v119, &v123, &v122, &v121);
      v49[1] = 0;
      v119 = v113;
      v120 = v114;
      sub_26AEA3BD8(&v119, &v123, &v122, &v121);
      _os_log_impl(&dword_26AE88000, v117, v118, "%s.%s: State observation acknowledged state change: %s", v51, 0x20u);
      sub_26AEA3C24(v52, 0, v50);
      sub_26AEA3C24(v53, 3, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v47 = MEMORY[0x277D82BD8](v117);
  return (*(v62 + 8))(v65, v61, v47);
}

uint64_t sub_26AEDD410(uint64_t *a1)
{
  type metadata accessor for SUUIStatefulUIState(0);
  sub_26AEB6FE0();
  return sub_26B079D30() & 1;
}

void *sub_26AEDD48C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t DeepLinkCommand.description.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_26B079E60();
}

uint64_t sub_26AEDD5C0(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEDD6D4;

  return v6(a1);
}

uint64_t sub_26AEDD6D4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t dispatch thunk of DeepLinkCommand.execute(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 8) + **(a4 + 8));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_26AEDDCB0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_26AEDDCB0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEDDDD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 9))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_26AEDDEE8(uint64_t result, int a2, int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = (a2 - 1);
    if (a3)
    {
      *v4 = 1;
    }
  }

  else if (a3)
  {
    *v4 = 0;
  }

  return result;
}

unint64_t sub_26AEDE278()
{
  v2 = qword_2803DD100;
  if (!qword_2803DD100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0B0, &unk_26B08BE90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD100);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEDE300(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26AEDE334()
{
  v2 = qword_2803DC2F8;
  if (!qword_2803DC2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC2D8, &qword_26B0893C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC2F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEDE3BC()
{
  v2 = qword_2803DC300;
  if (!qword_2803DC300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC2E0, &qword_26B0893D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEDE444()
{
  v2 = qword_2803DC308;
  if (!qword_2803DC308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC2E8, &qword_26B0893D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC308);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEDE4CC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2D0, &qword_26B0893C0) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26AEDE5A4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2D0, &qword_26B0893C0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_26AEDD4BC(a1, v3);
}

unint64_t sub_26AEDE628()
{
  v2 = qword_2803DC310;
  if (!qword_2803DC310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC2F0, &qword_26B0893E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC310);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEDE844()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState(0);
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t sub_26AEDEBEC()
{
  v4 = *(v0 + 32);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_26AEDECE0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v10 = v1[4];
  v11 = v1[5];
  v9 = (*(*(v10 - 8) + 80) + 56) & ~*(*(v10 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEDEE10;

  return sub_26AED8E80(a1, v6, v7, v8, v1 + v9, v10, v11);
}

uint64_t sub_26AEDEE10()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEDEF38()
{
  v4 = *(v0 + 32);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_26AEDF048(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v10 = v1[4];
  v11 = v1[5];
  v8 = (*(*(v10 - 8) + 80) + 48) & ~*(*(v10 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v9 = *(v1 + ((v8 + *(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEDF1A4;

  return sub_26AEDB368(a1, v6, v7, v1 + v8, v9, v10, v11);
}

uint64_t sub_26AEDF1A4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEDF314(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEDF408;

  return sub_26AEDD5C0(a1, v6);
}

uint64_t sub_26AEDF408()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEDF6C4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState(0);
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t DefaultDeepLinkCommand.execute(with:)(uint64_t a1, uint64_t a2)
{
  v2[14] = a2;
  v2[13] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_26B078580();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[3] = a2;

  return MEMORY[0x2822009F8](sub_26AEDFBCC, 0, 0);
}

uint64_t sub_26AEDFBCC(uint64_t a1)
{
  v33 = v1;
  *(v1 + 16) = v1;
  sub_26B078550();
  oslog = sub_26B078570();
  v27 = sub_26B07A2B0();
  v19 = swift_allocObject();
  *(v19 + 16) = 32;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26AEE2E10;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26AEE32A0;
  *(v17 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AEE32EC;
  *(v21 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26AEE2E14;
  *(v18 + 24) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AEE33EC;
  *(v24 + 24) = v18;
  *(v1 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v25 = v2;

  *v25 = sub_26AEE3224;
  v25[1] = v19;

  v25[2] = sub_26AEE3258;
  v25[3] = v20;

  v25[4] = sub_26AEE3338;
  v25[5] = v21;

  v25[6] = sub_26AEE3370;
  v25[7] = v22;

  v25[8] = sub_26AEE33A4;
  v25[9] = v23;

  v25[10] = sub_26AEE3438;
  v25[11] = v24;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v27))
  {
    buf = sub_26B07A420();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v13 = sub_26AEA3B70(0, v11, v11);
    v14 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v28 = buf;
    v29 = v13;
    v30 = v14;
    sub_26AEA3BC4(2, &v28);
    sub_26AEA3BC4(2, &v28);
    v31 = sub_26AEE3224;
    v32 = v19;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AEE3258;
    v32 = v20;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AEE3338;
    v32 = v21;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AEE3370;
    v32 = v22;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AEE33A4;
    v32 = v23;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AEE3438;
    v32 = v24;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    _os_log_impl(&dword_26AE88000, oslog, v27, "%s.%s: executed", buf, 0x16u);
    sub_26AEA3C24(v13, 0, v11);
    sub_26AEA3C24(v14, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v15[23] = 0;
  v9 = v15[21];
  v10 = v15[15];
  v8 = v15[16];
  v3 = MEMORY[0x277D82BD8](oslog);
  v4 = *(v8 + 8);
  v15[24] = v4;
  v15[25] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v9, v10, v3);
  v5 = swift_task_alloc();
  v15[26] = v5;
  *v5 = v15[2];
  v5[1] = sub_26AEE0450;
  v6 = v15[14];

  return sub_26AED72E4(v6, &type metadata for DefaultDeepLinkCommand, &protocol witness table for DefaultDeepLinkCommand);
}

uint64_t sub_26AEE0450(uint64_t a1, char a2)
{
  v4 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = a2;

  return MEMORY[0x2822009F8](sub_26AEE0578, 0, 0);
}

uint64_t sub_26AEE0578(uint64_t a1)
{
  v157 = v1;
  v2 = *(v1 + 224);
  *(v1 + 16) = v1;
  if (v2)
  {
    sub_26B078550();
    v56 = sub_26B078570();
    v57 = sub_26B07A2C0();
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_26AEE3444;
    *(v46 + 24) = 0;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_26AEE34F0;
    *(v47 + 24) = v46;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_26AEE353C;
    *(v51 + 24) = v47;
    v52 = swift_allocObject();
    *(v52 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_26AEE2F40;
    *(v48 + 24) = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_26AEE363C;
    *(v54 + 24) = v48;
    sub_26B07A760();
    v55 = v12;

    *v55 = sub_26AEE3474;
    v55[1] = v49;

    v55[2] = sub_26AEE34A8;
    v55[3] = v50;

    v55[4] = sub_26AEE3588;
    v55[5] = v51;

    v55[6] = sub_26AEE35C0;
    v55[7] = v52;

    v55[8] = sub_26AEE35F4;
    v55[9] = v53;

    v55[10] = sub_26AEE3688;
    v55[11] = v54;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v56, v57))
    {
      v13 = v124[23];
      v43 = sub_26B07A420();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v44 = sub_26AEA3B70(0, v42, v42);
      v45 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v130 = v43;
      v131 = v44;
      v132 = v45;
      sub_26AEA3BC4(2, &v130);
      sub_26AEA3BC4(2, &v130);
      v133 = sub_26AEE3474;
      v134 = v49;
      sub_26AEA3BD8(&v133, &v130, &v131, &v132);
      if (v13)
      {
      }

      v133 = sub_26AEE34A8;
      v134 = v50;
      sub_26AEA3BD8(&v133, &v130, &v131, &v132);
      v133 = sub_26AEE3588;
      v134 = v51;
      sub_26AEA3BD8(&v133, &v130, &v131, &v132);
      v133 = sub_26AEE35C0;
      v134 = v52;
      sub_26AEA3BD8(&v133, &v130, &v131, &v132);
      v133 = sub_26AEE35F4;
      v134 = v53;
      sub_26AEA3BD8(&v133, &v130, &v131, &v132);
      v133 = sub_26AEE3688;
      v134 = v54;
      sub_26AEA3BD8(&v133, &v130, &v131, &v132);
      _os_log_impl(&dword_26AE88000, v56, v57, "%s.%s: timed out waiting for state change", v43, 0x16u);
      sub_26AEA3C24(v44, 0, v42);
      sub_26AEA3C24(v45, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v41 = 0;
    }

    else
    {

      v41 = v124[23];
    }

    v40 = v124[24];
    v38 = v124[18];
    v39 = v124[15];
    v14 = MEMORY[0x277D82BD8](v56);
    v40(v38, v39, v14);
    v58 = v41;
  }

  else
  {
    v123 = v124[27];
    v124[4] = v123;
    type metadata accessor for SUUIStatefulUIState(0);
    v124[5] = v123;
    v124[6] = 4;
    sub_26AEB6FE0();
    if (sub_26B079D40())
    {

      updated = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

      if (updated)
      {

        v121 = ReactiveUIManager.preferredDescriptor.getter();

        if (v121)
        {
          KeyPath = swift_getKeyPath();
          ReactiveDescriptor.subscript.getter(KeyPath, (v124 + 12));
          v118 = v124[12];

          v119 = v118;
          v120 = 0;
        }

        else
        {
          v119 = 0;
          v120 = 1;
        }

        v151 = v119;
        v152 = v120 & 1;
        v153 = 1;
        v154 = 0;
        if ((v120 & 1) == 0)
        {
          v155 = v119;
          v156 = v120 & 1;
          v124[10] = v119;
          v124[11] = v153;
          type metadata accessor for SUUIAudienceType(0);
          sub_26AEE3F54();
          v3 = sub_26B079D70();
          if (v3)
          {
            v116 = v124[14];
            v115 = v124[13];

            *v115 = 2;
            v115[1] = v116;
            goto LABEL_47;
          }
        }

        v114 = v124[23];
      }

      else
      {

        v113 = ReactiveUIManager.alternateDescriptor.getter();

        if (v113)
        {
          v109 = swift_getKeyPath();
          ReactiveDescriptor.subscript.getter(v109, (v124 + 9));
          v110 = v124[9];

          v111 = v110;
          v112 = 0;
        }

        else
        {
          v111 = 0;
          v112 = 1;
        }

        v140 = v111;
        v141 = v112 & 1;
        v142 = 1;
        v143 = 0;
        if ((v112 & 1) == 0)
        {
          v149 = v111;
          v150 = v112 & 1;
          v124[7] = v111;
          v124[8] = v142;
          type metadata accessor for SUUIAudienceType(0);
          sub_26AEE3F54();
          v4 = sub_26B079D70();
          if (v4)
          {
            v108 = v124[14];
            v107 = v124[13];

            *v107 = 2;
            v107[1] = v108;
            goto LABEL_47;
          }
        }

        sub_26B078550();
        oslog = sub_26B078570();
        v106 = sub_26B07A2B0();
        v98 = swift_allocObject();
        *(v98 + 16) = 32;
        v99 = swift_allocObject();
        *(v99 + 16) = 8;
        v95 = swift_allocObject();
        *(v95 + 16) = sub_26AEE3D04;
        *(v95 + 24) = 0;
        v96 = swift_allocObject();
        *(v96 + 16) = sub_26AEE3DB0;
        *(v96 + 24) = v95;
        v100 = swift_allocObject();
        *(v100 + 16) = sub_26AEE3DFC;
        *(v100 + 24) = v96;
        v101 = swift_allocObject();
        *(v101 + 16) = 32;
        v102 = swift_allocObject();
        *(v102 + 16) = 8;
        v97 = swift_allocObject();
        *(v97 + 16) = sub_26AEE2EB8;
        *(v97 + 24) = 0;
        v103 = swift_allocObject();
        *(v103 + 16) = sub_26AEE3EFC;
        *(v103 + 24) = v97;
        sub_26B07A760();
        v104 = v5;

        *v104 = sub_26AEE3D34;
        v104[1] = v98;

        v104[2] = sub_26AEE3D68;
        v104[3] = v99;

        v104[4] = sub_26AEE3E48;
        v104[5] = v100;

        v104[6] = sub_26AEE3E80;
        v104[7] = v101;

        v104[8] = sub_26AEE3EB4;
        v104[9] = v102;

        v104[10] = sub_26AEE3F48;
        v104[11] = v103;
        sub_26AEA3B2C();

        if (os_log_type_enabled(oslog, v106))
        {
          v6 = v124[23];
          buf = sub_26B07A420();
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
          v93 = sub_26AEA3B70(0, v91, v91);
          v94 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v144 = buf;
          v145 = v93;
          v146 = v94;
          sub_26AEA3BC4(2, &v144);
          sub_26AEA3BC4(2, &v144);
          v147 = sub_26AEE3D34;
          v148 = v98;
          sub_26AEA3BD8(&v147, &v144, &v145, &v146);
          if (v6)
          {
          }

          v147 = sub_26AEE3D68;
          v148 = v99;
          sub_26AEA3BD8(&v147, &v144, &v145, &v146);
          v147 = sub_26AEE3E48;
          v148 = v100;
          sub_26AEA3BD8(&v147, &v144, &v145, &v146);
          v147 = sub_26AEE3E80;
          v148 = v101;
          sub_26AEA3BD8(&v147, &v144, &v145, &v146);
          v147 = sub_26AEE3EB4;
          v148 = v102;
          sub_26AEA3BD8(&v147, &v144, &v145, &v146);
          v147 = sub_26AEE3F48;
          v148 = v103;
          sub_26AEA3BD8(&v147, &v144, &v145, &v146);
          _os_log_impl(&dword_26AE88000, oslog, v106, "%s.%s: conditions unmet to navigate to also Available view.", buf, 0x16u);
          sub_26AEA3C24(v93, 0, v91);
          sub_26AEA3C24(v94, 2, MEMORY[0x277D84F70] + 8);
          sub_26B07A400();

          v90 = 0;
        }

        else
        {

          v90 = v124[23];
        }

        v89 = v124[24];
        v87 = v124[20];
        v88 = v124[15];
        v8 = MEMORY[0x277D82BD8](oslog);
        v89(v87, v88, v8);
        v114 = v90;
      }

      v86 = v114;
    }

    else
    {
      v67 = v124[27];
      sub_26B078550();
      v68 = swift_allocObject();
      *(v68 + 16) = v67;

      v72 = swift_allocObject();
      *(v72 + 16) = sub_26AEE3914;
      *(v72 + 24) = v68;

      log = sub_26B078570();
      v85 = sub_26B07A2B0();
      v74 = swift_allocObject();
      *(v74 + 16) = 32;
      v75 = swift_allocObject();
      *(v75 + 16) = 8;
      v69 = swift_allocObject();
      *(v69 + 16) = sub_26AEE38E4;
      *(v69 + 24) = 0;
      v70 = swift_allocObject();
      *(v70 + 16) = sub_26AEE3A60;
      *(v70 + 24) = v69;
      v76 = swift_allocObject();
      *(v76 + 16) = sub_26AEE3AAC;
      *(v76 + 24) = v70;
      v77 = swift_allocObject();
      *(v77 + 16) = 32;
      v78 = swift_allocObject();
      *(v78 + 16) = 8;
      v71 = swift_allocObject();
      *(v71 + 16) = sub_26AEE2EF8;
      *(v71 + 24) = 0;
      v79 = swift_allocObject();
      *(v79 + 16) = sub_26AEE3BAC;
      *(v79 + 24) = v71;
      v80 = swift_allocObject();
      *(v80 + 16) = 32;
      v81 = swift_allocObject();
      *(v81 + 16) = 8;
      v73 = swift_allocObject();
      *(v73 + 16) = sub_26AEE395C;
      *(v73 + 24) = v72;
      v82 = swift_allocObject();
      *(v82 + 16) = sub_26AEE3CAC;
      *(v82 + 24) = v73;
      sub_26B07A760();
      v83 = v9;

      *v83 = sub_26AEE39E4;
      v83[1] = v74;

      v83[2] = sub_26AEE3A18;
      v83[3] = v75;

      v83[4] = sub_26AEE3AF8;
      v83[5] = v76;

      v83[6] = sub_26AEE3B30;
      v83[7] = v77;

      v83[8] = sub_26AEE3B64;
      v83[9] = v78;

      v83[10] = sub_26AEE3BF8;
      v83[11] = v79;

      v83[12] = sub_26AEE3C30;
      v83[13] = v80;

      v83[14] = sub_26AEE3C64;
      v83[15] = v81;

      v83[16] = sub_26AEE3CF8;
      v83[17] = v82;
      sub_26AEA3B2C();

      if (os_log_type_enabled(log, v85))
      {
        v10 = v124[23];
        v64 = sub_26B07A420();
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
        v65 = sub_26AEA3B70(0, v63, v63);
        v66 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v135 = v64;
        v136 = v65;
        v137 = v66;
        sub_26AEA3BC4(2, &v135);
        sub_26AEA3BC4(3, &v135);
        v138 = sub_26AEE39E4;
        v139 = v74;
        sub_26AEA3BD8(&v138, &v135, &v136, &v137);
        if (v10)
        {
        }

        v138 = sub_26AEE3A18;
        v139 = v75;
        sub_26AEA3BD8(&v138, &v135, &v136, &v137);
        v138 = sub_26AEE3AF8;
        v139 = v76;
        sub_26AEA3BD8(&v138, &v135, &v136, &v137);
        v138 = sub_26AEE3B30;
        v139 = v77;
        sub_26AEA3BD8(&v138, &v135, &v136, &v137);
        v138 = sub_26AEE3B64;
        v139 = v78;
        sub_26AEA3BD8(&v138, &v135, &v136, &v137);
        v138 = sub_26AEE3BF8;
        v139 = v79;
        sub_26AEA3BD8(&v138, &v135, &v136, &v137);
        v138 = sub_26AEE3C30;
        v139 = v80;
        sub_26AEA3BD8(&v138, &v135, &v136, &v137);
        v138 = sub_26AEE3C64;
        v139 = v81;
        sub_26AEA3BD8(&v138, &v135, &v136, &v137);
        v138 = sub_26AEE3CF8;
        v139 = v82;
        sub_26AEA3BD8(&v138, &v135, &v136, &v137);
        _os_log_impl(&dword_26AE88000, log, v85, "%s.%s: State changed to %s, but not enough to navigate to also Available view.", v64, 0x20u);
        sub_26AEA3C24(v65, 0, v63);
        sub_26AEA3C24(v66, 3, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();

        v62 = 0;
      }

      else
      {

        v62 = v124[23];
      }

      v61 = v124[24];
      v59 = v124[19];
      v60 = v124[15];
      v11 = MEMORY[0x277D82BD8](log);
      v61(v59, v60, v11);
      v86 = v62;
    }

    v58 = v86;
  }

  sub_26B078550();
  v36 = sub_26B078570();
  v37 = sub_26B07A2B0();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEE3694;
  *(v26 + 24) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26AEE3740;
  *(v27 + 24) = v26;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26AEE378C;
  *(v31 + 24) = v27;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AEE2F80;
  *(v28 + 24) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26AEE388C;
  *(v34 + 24) = v28;
  sub_26B07A760();
  v35 = v15;

  *v35 = sub_26AEE36C4;
  v35[1] = v29;

  v35[2] = sub_26AEE36F8;
  v35[3] = v30;

  v35[4] = sub_26AEE37D8;
  v35[5] = v31;

  v35[6] = sub_26AEE3810;
  v35[7] = v32;

  v35[8] = sub_26AEE3844;
  v35[9] = v33;

  v35[10] = sub_26AEE38D8;
  v35[11] = v34;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v36, v37))
  {
    v23 = sub_26B07A420();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v24 = sub_26AEA3B70(0, v22, v22);
    v25 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v125 = v23;
    v126 = v24;
    v127 = v25;
    sub_26AEA3BC4(2, &v125);
    sub_26AEA3BC4(2, &v125);
    v128 = sub_26AEE36C4;
    v129 = v29;
    sub_26AEA3BD8(&v128, &v125, &v126, &v127);
    if (v58)
    {
    }

    v128 = sub_26AEE36F8;
    v129 = v30;
    sub_26AEA3BD8(&v128, &v125, &v126, &v127);
    v128 = sub_26AEE37D8;
    v129 = v31;
    sub_26AEA3BD8(&v128, &v125, &v126, &v127);
    v128 = sub_26AEE3810;
    v129 = v32;
    sub_26AEA3BD8(&v128, &v125, &v126, &v127);
    v128 = sub_26AEE3844;
    v129 = v33;
    sub_26AEA3BD8(&v128, &v125, &v126, &v127);
    v128 = sub_26AEE38D8;
    v129 = v34;
    sub_26AEA3BD8(&v128, &v125, &v126, &v127);
    _os_log_impl(&dword_26AE88000, v36, v37, "%s.%s: no extra steps needs to be navigate to.", v23, 0x16u);
    sub_26AEA3C24(v24, 0, v22);
    sub_26AEA3C24(v25, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v20 = v124[24];
  v18 = v124[17];
  v19 = v124[15];
  v21 = v124[13];
  v16 = MEMORY[0x277D82BD8](v36);
  v20(v18, v19, v16);
  *v21 = 0x7FFFFFEFCLL;
  v21[1] = 0;
LABEL_47:

  v17 = *(v124[2] + 8);

  return v17();
}

uint64_t sub_26AEE2E44@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 audienceType];
  return swift_unknownObjectRelease();
}

uint64_t sub_26AEE2FB0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEE306C;

  return DefaultDeepLinkCommand.execute(with:)(a1, a2);
}

uint64_t sub_26AEE306C()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_26AEE395C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState(0);
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

unint64_t sub_26AEE3F54()
{
  v2 = qword_2803DC330;
  if (!qword_2803DC330)
  {
    type metadata accessor for SUUIAudienceType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC330);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for DefaultDeepLinkCommand(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for DefaultDeepLinkCommand(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_26AEE4324()
{
  if (qword_2803DB3A0 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_26AEE4380(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v37 = a1;
  v38 = a2;
  sub_26AEE4CC8();
  v2 = sub_26AEE4C14();
  v23 = *v2;
  v24 = v2[1];
  sub_26B078640();
  v25 = sub_26AEE4D48(v23, v24, 1);
  if (!v25)
  {
    goto LABEL_9;
  }

  v34 = v25;
  sub_26B078640();
  v18 = sub_26B079DF0();

  type metadata accessor for MatchingOptions(0);
  sub_26B07A760();
  sub_26AE9A5E4();
  sub_26B07A4C0();
  v19 = sub_26B079E80();
  v3 = MEMORY[0x26D66D170](a1, a2);
  v20 = v3;
  if (v3 >> 14 < v19 >> 14)
  {
    sub_26B07A650();
    __break(1u);
  }

  v31 = v19;
  v32 = v20;
  sub_26B078640();
  v29 = a1;
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388, "а");
  sub_26AEE6118();
  sub_26AE95974();
  v27 = sub_26B07A3E0();
  v28 = v4;
  v17 = [v25 firstMatchInString:v18 options:v33 range:{v27, v4}];
  MEMORY[0x277D82BD8](v18);
  v26 = v17;
  sub_26AEE61A0(&v26);
  if (!v17)
  {
    MEMORY[0x277D82BD8](v25);
LABEL_9:
    v9 = sub_26AEE4DD8(a1, a2);
    v14 = v5;
    v35 = v9;
    v36 = v5;
    v6 = sub_26AEE4A54();
    v10 = *v6;
    v13 = v6[1];
    sub_26B078640();
    v7 = sub_26AEE4B34();
    v11 = *v7;
    v12 = v7[1];
    sub_26B078640();
    v15 = sub_26AEE6068(v9, v14, v10, v13, v11, v12);

    return v15;
  }

  sub_26B078640();
  MEMORY[0x277D82BD8](v25);
  return a1;
}

uint64_t sub_26AEE4778()
{
  result = sub_26B079D00("<!DOCTYPE html PUBLIC -//W3C//DTD HTML 4.01//EN http://www.w3.org/TR/html4/strict.dtd>\n", 91, 1);
  qword_2803DC338 = result;
  qword_2803DC340 = v1;
  return result;
}

uint64_t *sub_26AEE47BC()
{
  if (qword_2803DB378 != -1)
  {
    swift_once();
  }

  return &qword_2803DC338;
}

uint64_t sub_26AEE481C()
{
  v1 = *sub_26AEE47BC();
  sub_26B078640();
  return v1;
}

void sub_26AEE4858()
{
  sub_26B07A760();
  v7 = v0;
  *v0 = sub_26B079D00("<meta[^>]*>");
  v7[1] = v1;
  v7[2] = sub_26B079D00("<title>.*?</title>", 18, 1);
  v7[3] = v2;
  v7[4] = sub_26B079D00("<style[^>]*>[\\s\\S]*?</style>", 28, 1);
  v7[5] = v3;
  v7[6] = sub_26B079D00("<link[^>]*>", 11, 1);
  v7[7] = v4;
  v7[8] = sub_26B079D00("<script[^>]*>", 13, 1);
  v7[9] = v5;
  sub_26AEA3B2C();
  qword_2803DC348 = v6;
}

uint64_t *sub_26AEE4980()
{
  if (qword_2803DB380 != -1)
  {
    swift_once();
  }

  return &qword_2803DC348;
}

uint64_t sub_26AEE49E0()
{
  v1 = *sub_26AEE4980();
  sub_26B078640();
  return v1;
}

uint64_t sub_26AEE4A10()
{
  result = sub_26B079D00("* {\n    font-family: -apple-system;\n}\n\n:root {\n    color-scheme: light dark !important;\n    -webkit-text-size-adjust: 100% !important;\n}\n        \nhtml body {\n    -webkit-text-size-adjust: 100% !important;\n    font: -apple-system-body;\n}\n\np, h1, h2, h3, h4, h5, h6, span, div, ul, li {\n    font-family: -apple-system, system-ui, HelveticaNeue, LucidaGrande !important;\n    color: -apple-system-label !important;\n    font-size: -apple-system-body !important;\n    -webkit-text-size-adjust: 100% !important;\n}\n\na {\n    -webkit-text-size-adjust: 100% !important;\n}\n\np, span, div, ul, li  {\n    font: -apple-system-body;\n}", 616, 1);
  qword_2803DC350 = result;
  qword_2803DC358 = v1;
  return result;
}

uint64_t *sub_26AEE4A54()
{
  if (qword_2803DB388 != -1)
  {
    swift_once();
  }

  return &qword_2803DC350;
}

uint64_t sub_26AEE4AB4()
{
  v1 = *sub_26AEE4A54();
  sub_26B078640();
  return v1;
}

uint64_t sub_26AEE4AF0()
{
  result = sub_26B079D00("<meta name=viewport content=width=device-width, initial-scale=1>", 68, 1);
  qword_2803DC360 = result;
  qword_2803DC368 = v1;
  return result;
}

uint64_t *sub_26AEE4B34()
{
  if (qword_2803DB390 != -1)
  {
    swift_once();
  }

  return &qword_2803DC360;
}

uint64_t sub_26AEE4B94()
{
  v1 = *sub_26AEE4B34();
  sub_26B078640();
  return v1;
}

uint64_t sub_26AEE4BD0()
{
  result = sub_26B079D00("<!--\\s*apple-su-disable-remote-content-formatter\\s*-->", 54, 1);
  qword_2803DC370 = result;
  qword_2803DC378 = v1;
  return result;
}

uint64_t *sub_26AEE4C14()
{
  if (qword_2803DB398 != -1)
  {
    swift_once();
  }

  return &qword_2803DC370;
}

uint64_t sub_26AEE4C74()
{
  v1 = *sub_26AEE4C14();
  sub_26B078640();
  return v1;
}

unint64_t sub_26AEE4CC8()
{
  v2 = qword_2803DC380;
  if (!qword_2803DC380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DC380);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26AEE4D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_26AEE8150(a1, a2, a3);
  if (v8)
  {
    return v5;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_26AEE4DD8(uint64_t a1, uint64_t a2)
{
  v239 = a1;
  v240 = a2;
  v231 = "Fatal error";
  v232 = "Range requires lowerBound <= upperBound";
  v233 = "Swift/Range.swift";
  v305 = 0;
  v306 = 0;
  v303 = 0;
  v304 = 0;
  v301 = 0;
  v302 = 0;
  v299 = 0;
  v297 = 0;
  v298 = 0;
  v296 = 0;
  v295[0] = 0;
  v295[1] = 0;
  v290 = 0;
  v291 = 0;
  v289[0] = 0;
  v289[1] = 0;
  v276 = 0;
  v277 = 0;
  v271 = 0;
  v272 = 0;
  v269 = 0;
  v264 = 0;
  v259 = 0;
  v255 = 0;
  v256 = 0;
  v242 = 0;
  v234 = sub_26B077F60();
  v235 = *(v234 - 8);
  v236 = v234 - 8;
  v237 = (*(v235 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v239);
  v238 = &v84 - v237;
  v305 = v3;
  v306 = v4;
  v241 = 1;
  v303 = sub_26B079D00("", v2);
  v304 = v5;
  sub_26B078640();
  v301 = v239;
  v302 = v240;
  v247 = sub_26AEE4CC8();
  v248 = sub_26B079D00("<!DOCTYPE[^>]*>", 15, v241 & 1);
  v249 = v6;
  v243 = type metadata accessor for Options(v242);
  v244 = 1;
  sub_26B07A760();
  *v7 = v244;
  sub_26AEA3B2C();
  v245 = v8;
  v246 = sub_26AE9A714();
  sub_26B07A4C0();
  v9 = sub_26AEE4D48(v248, v249, v300);
  v250 = 0;
  v251 = v9;
  v252 = 0;
  v229 = v9;
  v230 = 0;
  v227 = 0;
  v228 = v9;
  if (v9)
  {
    v226 = v228;
    v219 = v228;
    v264 = v228;
    sub_26B078640();
    v220 = sub_26B079DF0();

    v221 = 0;
    type metadata accessor for MatchingOptions(0);
    v222 = sub_26B07A760();
    sub_26AE9A5E4();
    sub_26B07A4C0();
    v223 = v263[2];
    v224 = sub_26B079E80();
    v10 = MEMORY[0x26D66D170](v239, v240);
    v225 = v10;
    if (v10 >> 14 < v224 >> 14)
    {
      sub_26B07A650();
      __break(1u);
    }

    v216 = v263;
    v263[0] = v224;
    v263[1] = v225;
    sub_26B078640();
    v213 = v262;
    v262[0] = v239;
    v262[1] = v240;
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388, "а");
    v215 = sub_26AEE6118();
    v217 = sub_26AE95974();
    v260 = sub_26B07A3E0();
    v261 = v11;
    v218 = [v219 firstMatchInString:v220 options:v223 range:{v260, v11}];
    *&v12 = MEMORY[0x277D82BD8](v220).n128_u64[0];
    if (v218)
    {
      v212 = v218;
      v209 = v218;
      v259 = v218;
      v257 = [v218 range];
      v258 = v13;
      v210 = sub_26B07A290();
      v211 = v14;
      if ((v15 & 1) == 0)
      {
        v207 = v210;
        v208 = v211;
        v255 = v210;
        v256 = v211;
        sub_26B079FD0();
        v197 = v16;
        v198 = sub_26B079FB0();
        v199 = v17;

        sub_26B078640();
        v303 = v198;
        v304 = v199;

        v254[2] = v239;
        v254[3] = v240;
        v204 = v254;
        v254[0] = v198;
        v254[1] = v199;
        v200 = 0;
        v201 = 1;
        v18 = sub_26B079D00("");
        v203 = v253;
        v253[0] = v18;
        v253[1] = v19;
        v202 = MEMORY[0x277D837D0];
        sub_26AEE7738();
        v205 = sub_26B07A490();
        v206 = v20;
        sub_26AE9BCC0(v203);
        sub_26AE9BCC0(v204);
        v301 = v205;
        v302 = v206;
      }

      MEMORY[0x277D82BD8](v209);
      MEMORY[0x277D82BD8](v219);
    }

    else
    {
      MEMORY[0x277D82BD8](v219);
    }
  }

  v194 = v303;
  v195 = v304;
  sub_26B078640();
  v196 = sub_26B079F30();

  if (v196)
  {
    v21 = sub_26AEE47BC();
    v192 = *v21;
    v193 = v21[1];
    sub_26B078640();
    v303 = v192;
    v304 = v193;
  }

  v179 = v301;
  v180 = v302;
  sub_26B078640();
  v181 = sub_26AEE7774(v179, v180);
  v299 = v181;
  v297 = v179;
  v298 = v180;
  v187 = MEMORY[0x277D837D0];
  v186 = sub_26B07A760();
  v185 = v22;
  v182 = 11;
  v183 = 1;
  v23 = sub_26B079D00("<html[^>]*>");
  v24 = v185;
  *v185 = v23;
  v24[1] = v25;
  v184 = 7;
  v26 = sub_26B079D00("</html>");
  v27 = v183;
  v28 = v185;
  v30 = v29;
  v31 = v182;
  v185[2] = v26;
  v28[3] = v30;
  v32 = sub_26B079D00("<head[^>]*>", v31, v27 & 1);
  v33 = v183;
  v34 = v185;
  v36 = v35;
  v37 = v184;
  v185[4] = v32;
  v34[5] = v36;
  v38 = sub_26B079D00("</head>", v37, v33 & 1);
  v39 = v183;
  v40 = v185;
  v42 = v41;
  v43 = v182;
  v185[6] = v38;
  v40[7] = v42;
  v44 = sub_26B079D00("<body[^>]*>", v43, v39 & 1);
  v45 = v183;
  v46 = v185;
  v48 = v47;
  v49 = v184;
  v185[8] = v44;
  v46[9] = v48;
  v50 = sub_26B079D00("</body>", v49, v45 & 1);
  v51 = v185;
  v185[10] = v50;
  v51[11] = v52;
  sub_26AEA3B2C();
  v188 = v53;
  v296 = v53;
  sub_26B078640();
  v294 = v188;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC398, "Ұ");
  v190 = sub_26AEE7DF4();
  sub_26B07A270();
  for (i = v227; ; i = v162)
  {
    v174 = i;
    v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3A8, &qword_26B0894D0);
    sub_26B07A620();
    v176 = v292;
    v177 = v293;
    v178 = v175;
    if (!v293)
    {
      break;
    }

    v172 = v176;
    v173 = v177;
    v54 = v174;
    v168 = v177;
    v167 = v176;
    v271 = v176;
    v272 = v177;
    sub_26B078640();
    v166 = 1;
    sub_26B07A760();
    *v55 = v166;
    sub_26AEA3B2C();
    sub_26B07A4C0();
    v56 = sub_26AEE4D48(v167, v168, v270);
    v169 = v54;
    v170 = v56;
    v171 = v54;
    if (v54)
    {
      v85 = 0;

      v164 = 0;
      v165 = v85;
    }

    else
    {
      v164 = v170;
      v165 = 0;
    }

    v162 = v165;
    v163 = v164;
    if (v164)
    {
      v161 = v163;
      v152 = v163;
      v269 = v163;
      v158 = v297;
      v157 = v298;
      sub_26B078640();
      v153 = sub_26B079DF0();
      v154 = 0;
      type metadata accessor for MatchingOptions(0);
      v155 = sub_26B07A760();
      sub_26AE9A5E4();
      sub_26B07A4C0();
      v156 = v268[2];
      v159 = sub_26B079E80();
      v57 = MEMORY[0x26D66D170](v158, v157);
      v160 = v57;
      if (v57 >> 14 < v159 >> 14)
      {
        sub_26B07A650();
        __break(1u);
      }

      v146 = v268;
      v268[0] = v159;
      v268[1] = v160;
      v143 = v267;
      v267[0] = v158;
      v267[1] = v157;
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388, "а");
      v145 = sub_26AEE6118();
      sub_26AE95974();
      v148 = sub_26B07A3E0();
      v149 = v58;
      sub_26B079D00("", 0, 1);
      v147 = v59;
      v150 = sub_26B079DF0();

      v265 = v148;
      v266 = v149;
      v151 = [v152 stringByReplacingMatchesInString:v153 options:v156 range:v148 withTemplate:{v149, v150}];
      MEMORY[0x277D82BD8](v150);
      MEMORY[0x277D82BD8](v153);
      v297 = sub_26B079E00();
      v298 = v60;

      MEMORY[0x277D82BD8](v151);
      MEMORY[0x277D82BD8](v152);
    }
  }

  v141 = v178;
  sub_26AEE7E7C(v295);
  sub_26AEE7EA8(&v297, &v290);
  sub_26B078640();
  v288 = v181;
  sub_26B07A270();
  for (j = v174; ; j = v138)
  {
    v138 = j;
    sub_26B07A620();
    v139 = v286[2];
    v140 = v287;
    if (!v287)
    {
      break;
    }

    v136 = v139;
    v137 = v140;
    v135 = v140;
    v125 = v139;
    v276 = v139;
    v277 = v140;
    v123 = v290;
    v124 = v291;
    sub_26B078640();
    v132 = v275;
    v275[0] = v123;
    v275[1] = v124;
    v130 = v274;
    v274[0] = v125;
    v274[1] = v135;
    v127 = 0;
    v128 = 1;
    v61 = sub_26B079D00("");
    v131 = v273;
    v273[0] = v61;
    v273[1] = v62;
    v126 = sub_26AE95974();
    v129 = MEMORY[0x277D837D0];
    sub_26AEE7738();
    v133 = sub_26B07A490();
    v134 = v63;
    sub_26AE9BCC0(v131);
    sub_26AE9BCC0(v132);
    v290 = v133;
    v291 = v134;
  }

  sub_26AEE7E7C(v289);
  v119 = &v290;
  v86 = v290;
  v87 = v291;
  sub_26B078640();
  v90 = v286;
  v286[0] = v86;
  v286[1] = v87;
  v114 = 1;
  v64 = sub_26B079D00("\n{3,}", 5, 1);
  v89 = v285;
  v285[0] = v64;
  v285[1] = v65;
  v66 = sub_26B079D00("\n\n", 2, v114 & 1);
  v88 = v284;
  v284[0] = v66;
  v284[1] = v67;
  v93 = sub_26AE95974();
  v109 = MEMORY[0x277D837D0];
  v95 = 0;
  v91 = sub_26B07A490();
  v92 = v68;
  sub_26AE9BCC0(v88);
  sub_26AE9BCC0(v89);
  sub_26AE9BCC0(v90);
  sub_26B078640();
  v290 = v91;
  v291 = v92;

  v94 = v283;
  v283[0] = v91;
  v283[1] = v92;
  sub_26B077F50();
  v107 = sub_26B07A470();
  v108 = v69;
  (*(v235 + 8))(v238, v234);
  sub_26AE9BCC0(v94);
  sub_26B078640();
  v290 = v107;
  v291 = v108;

  v70 = sub_26B07A740();
  v116 = &v281;
  v281 = v70;
  v282 = v71;
  v72 = sub_26B079D00("", v95, v114 & 1);
  v96 = v73;
  MEMORY[0x26D66D910](v72);

  v120 = &v303;
  v97 = v303;
  v98 = v304;
  sub_26B078640();
  v99 = v280;
  v280[0] = v97;
  v280[1] = v98;
  v110 = MEMORY[0x277D83838];
  v111 = MEMORY[0x277D83830];
  sub_26B07A720();
  sub_26AE9BCC0(v99);
  v74 = sub_26B079D00("\n<html>\n<head>\n", 15, v114 & 1);
  v100 = v75;
  MEMORY[0x26D66D910](v74);

  v279[2] = v181;
  v101 = sub_26B079D00("\n", 1, v114 & 1);
  v102 = v76;
  sub_26AEE7EE8();
  v103 = sub_26B079D20();
  v104 = v77;

  v105 = v279;
  v279[0] = v103;
  v279[1] = v104;
  sub_26B07A720();
  sub_26AE9BCC0(v105);
  v113 = 16;
  v78 = sub_26B079D00("\n</head>\n<body>\n");
  v106 = v79;
  MEMORY[0x26D66D910](v78);

  v112 = v278;
  v278[0] = v107;
  v278[1] = v108;
  sub_26B07A720();
  sub_26AE9BCC0(v112);
  v80 = sub_26B079D00("\n</body>\n</html>", v113, v114 & 1);
  v115 = v81;
  MEMORY[0x26D66D910](v80);

  v118 = v281;
  v117 = v282;
  sub_26B078640();
  sub_26AEB9F6C(v116);
  v122 = sub_26B079EB0();
  v121 = v82;
  sub_26AE9BCC0(v119);

  sub_26AE9BCC0(&v297);

  sub_26AE9BCC0(&v301);
  sub_26AE9BCC0(v120);
  return v122;
}

uint64_t sub_26AEE6068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_26AEE61D4(a1, a2, a5, a6);
  v11 = sub_26AEE75BC(v6, v7, a3, a4);

  return v11;
}

unint64_t sub_26AEE6118()
{
  v2 = qword_2803DC390;
  if (!qword_2803DC390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC388, "а");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC390);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEE61D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v120 = 0;
  v119 = 0;
  v113 = 0;
  v114 = 0;
  v109 = 0;
  v106 = 0;
  v103 = 0;
  v97 = 0;
  v98 = 0;
  v93 = 0;
  v90 = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v78 = 0;
  v79 = 0;
  v74 = 0;
  v71 = 0;
  v121[7] = a1;
  v121[8] = a2;
  v121[5] = a3;
  v121[6] = a4;
  v66 = sub_26B079D00("<head[^>]*>", 11, 1);
  v67 = v4;
  v121[3] = v66;
  v121[4] = v4;
  v64 = sub_26B079D00("</head>", 7, 1);
  v65 = v5;
  v121[1] = v64;
  v121[2] = v5;
  sub_26AEE4CC8();
  sub_26B078640();
  v59 = sub_26AEE4D48(v66, v67, 1);
  if (v59)
  {
    sub_26B078640();
    v58 = sub_26B079DF0();

    type metadata accessor for MatchingOptions(0);
    sub_26B07A760();
    sub_26AE9A5E4();
    sub_26B07A4C0();
    sub_26B079E80();
    sub_26B078640();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3B8, &qword_26B0894D8);
    sub_26AEE7F70();
    sub_26AE95974();
    v68 = sub_26B07A3E0();
    v56 = [v59 firstMatchInString:v58 options:v69 range:{v68, v6}];
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v59);
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  v121[0] = v57;
  v7 = sub_26AEE61A0(v121);
  v120 = v57 != 0;
  if (!v57)
  {
    v54 = sub_26B079D00("(<!DOCTYPE html[^>]*>\\s*(?:<html[^>]*>)?|<html[^>]*>)", 53, 1, v7);
    v55 = v8;
    v86 = v54;
    v87 = v8;
    sub_26B078640();
    type metadata accessor for Options(0);
    sub_26B07A760();
    *v9 = 1;
    sub_26AEA3B2C();
    sub_26AE9A714();
    sub_26B07A4C0();
    v53 = sub_26AEE4D48(v54, v55, v85);
    if (!v53)
    {
      sub_26B078640();

      return a1;
    }

    v84 = v53;
    v51 = sub_26B079E80();
    v52 = MEMORY[0x26D66D170](a1, a2);
    if (v52 >> 14 < v51 >> 14)
    {
      sub_26B07A650();
      __break(1u);
    }

    v82 = v51;
    v83 = v52;
    sub_26B078640();
    v80 = a1;
    v81 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388, "а");
    sub_26AEE6118();
    sub_26AE95974();
    v47 = sub_26B07A3E0();
    v48 = v10;
    v78 = v47;
    v79 = v10;
    sub_26B078640();
    v49 = sub_26B079DF0();

    type metadata accessor for MatchingOptions(0);
    sub_26B07A760();
    sub_26AE9A5E4();
    sub_26B07A4C0();
    v75 = v47;
    v76 = v48;
    v50 = [v53 firstMatchInString:v49 options:v77 range:{v47, v48}];
    MEMORY[0x277D82BD8](v49);
    if (v50)
    {
      v74 = v50;
      sub_26B079E80();
      v72 = [v50 range];
      v73 = v11;
      sub_26B07A3D0();
      v71 = sub_26B079F10();
      v70[0] = sub_26B07A740();
      v70[1] = v12;
      v13 = sub_26B079D00("\n<head>\n    ", 12, 1);
      MEMORY[0x26D66D910](v13);

      sub_26B07A720();
      v14 = sub_26B079D00("\n</head>", 8, 1);
      MEMORY[0x26D66D910](v14);

      sub_26B078640();
      sub_26AEB9F6C(v70);
      sub_26B079EB0();
      v45 = sub_26B07A480();

      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v53);

      return v45;
    }

    MEMORY[0x277D82BD8](v53);
  }

  sub_26B078640();
  v44 = sub_26AEE4D48(v64, v65, 1);
  if (v44)
  {
    v103 = v44;
    v42 = sub_26B079E80();
    v15 = MEMORY[0x26D66D170](a1, a2);
    v43 = v15;
    if (v15 >> 14 < v42 >> 14)
    {
      sub_26B07A650();
      __break(1u);
    }

    v101 = v42;
    v102 = v43;
    sub_26B078640();
    v99 = a1;
    v100 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388, "а");
    sub_26AEE6118();
    sub_26AE95974();
    v38 = sub_26B07A3E0();
    v39 = v16;
    v97 = v38;
    v98 = v16;
    sub_26B078640();
    v40 = sub_26B079DF0();

    type metadata accessor for MatchingOptions(0);
    sub_26B07A760();
    sub_26AE9A5E4();
    sub_26B07A4C0();
    v94 = v38;
    v95 = v39;
    v41 = [v44 firstMatchInString:v40 options:v96 range:{v38, v39}];
    MEMORY[0x277D82BD8](v40);
    if (v41)
    {
      v93 = v41;
      sub_26B079E80();
      v91 = [v41 range];
      v92 = v17;
      v90 = sub_26B079F10();
      v89[4] = a1;
      v89[5] = a2;
      v89[2] = v90;
      v89[3] = v90;
      v89[0] = sub_26B07A740();
      v89[1] = v18;
      v19 = sub_26B079D00("    ", 4, 1);
      MEMORY[0x26D66D910](v19);

      v88[2] = a3;
      v88[3] = a4;
      sub_26B07A720();
      v20 = sub_26B079D00("\n", 1, 1);
      MEMORY[0x26D66D910](v20);

      sub_26B078640();
      sub_26AEB9F6C(v89);
      v88[0] = sub_26B079EB0();
      v88[1] = v21;
      v37 = sub_26B07A480();
      sub_26AE9BCC0(v88);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v44);

      return v37;
    }

    MEMORY[0x277D82BD8](v44);
  }

  sub_26B078640();
  v36 = sub_26AEE4D48(v66, v67, 1);
  if (v36)
  {
    v119 = v36;
    v34 = sub_26B079E80();
    v35 = MEMORY[0x26D66D170](a1, a2);
    if (v35 >> 14 < v34 >> 14)
    {
      sub_26B07A650();
      __break(1u);
    }

    v117 = v34;
    v118 = v35;
    sub_26B078640();
    v115 = a1;
    v116 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388, "а");
    sub_26AEE6118();
    sub_26AE95974();
    v30 = sub_26B07A3E0();
    v31 = v22;
    v113 = v30;
    v114 = v22;
    sub_26B078640();
    v32 = sub_26B079DF0();

    type metadata accessor for MatchingOptions(0);
    sub_26B07A760();
    sub_26AE9A5E4();
    sub_26B07A4C0();
    v110 = v30;
    v111 = v31;
    v33 = [v36 firstMatchInString:v32 options:v112 range:{v30, v31}];
    MEMORY[0x277D82BD8](v32);
    if (v33)
    {
      v109 = v33;
      sub_26B079E80();
      v107 = [v33 range];
      v108 = v23;
      sub_26B07A3D0();
      v106 = sub_26B079F10();
      v105[4] = a1;
      v105[5] = a2;
      v105[2] = v106;
      v105[3] = v106;
      v105[0] = sub_26B07A740();
      v105[1] = v24;
      v25 = sub_26B079D00("\n    ", 5, 1);
      MEMORY[0x26D66D910](v25);

      v104[2] = a3;
      v104[3] = a4;
      sub_26B07A720();
      v26 = sub_26B079D00("", 0, 1);
      MEMORY[0x26D66D910](v26);

      sub_26B078640();
      sub_26AEB9F6C(v105);
      v104[0] = sub_26B079EB0();
      v104[1] = v27;
      v29 = sub_26B07A480();
      sub_26AE9BCC0(v104);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v36);

      return v29;
    }

    else
    {
      sub_26B078640();
      MEMORY[0x277D82BD8](v36);

      return a1;
    }
  }

  else
  {
    sub_26B078640();

    return a1;
  }
}

uint64_t sub_26AEE75BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[4] = a1;
  v13[5] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v13[0] = sub_26B07A740();
  v13[1] = v4;
  v5 = sub_26B079D00("<style type=text/css>", 23, 1);
  MEMORY[0x26D66D910](v5);

  sub_26B07A720();
  v6 = sub_26B079D00("</style>", 8, 1);
  MEMORY[0x26D66D910](v6);

  sub_26B078640();
  sub_26AEB9F6C(v13);
  v7 = sub_26B079EB0();
  v12 = sub_26AEE61D4(a1, a2, v7, v8);

  return v12;
}

uint64_t sub_26AEE7738()
{
  sub_26AEE8308(0);

  return 0;
}

uint64_t sub_26AEE7774(uint64_t a1, uint64_t a2)
{
  v38[0] = 0;
  v38[1] = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v39[1] = a1;
  v39[2] = a2;
  v39[0] = sub_26B079C40();
  v18 = *sub_26AEE4980();
  sub_26B078640();
  v37 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC398, "Ұ");
  sub_26AEE7DF4();
  sub_26B07A270();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3A8, &qword_26B0894D0);
    sub_26B07A620();
    v14 = v35;
    v15 = v36;
    if (!v36)
    {
      break;
    }

    v33 = v35;
    v34 = v36;
    sub_26AEE4CC8();
    sub_26B078640();
    type metadata accessor for Options(0);
    sub_26B07A760();
    *v2 = 1;
    v2[1] = 8;
    sub_26AEA3B2C();
    sub_26AE9A714();
    sub_26B07A4C0();
    v13 = sub_26AEE4D48(v14, v15, v32);
    if (v13)
    {
      v31 = v13;
      v11 = sub_26B079E80();
      v12 = MEMORY[0x26D66D170](a1, a2);
      if (v12 >> 14 < v11 >> 14)
      {
        sub_26B07A650();
        __break(1u);
      }

      v29 = v11;
      v30 = v12;
      sub_26B078640();
      v27 = a1;
      v28 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388, "а");
      sub_26AEE6118();
      sub_26AE95974();
      v7 = sub_26B07A3E0();
      v8 = v3;
      v25 = v7;
      v26 = v3;
      sub_26B078640();
      v9 = sub_26B079DF0();

      type metadata accessor for MatchingOptions(0);
      sub_26B07A760();
      sub_26AE9A5E4();
      sub_26B07A4C0();
      v22 = v7;
      v23 = v8;
      v10 = [v13 matchesInString:v9 options:v24 range:{v7, v8}];
      MEMORY[0x277D82BD8](v9);
      sub_26AEE8024();
      v21 = sub_26B07A060();
      MEMORY[0x277D82BD8](v10);
      sub_26B078640();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3D0, &qword_26B0894E0);
      sub_26AEE8088();
      sub_26B07A270();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3E0, qword_26B0894E8);
        sub_26B07A620();
        if (!v19)
        {
          break;
        }

        [v19 range];
        sub_26B07A290();
        if ((v4 & 1) == 0)
        {
          sub_26B079FD0();
          sub_26B079FB0();

          sub_26B078640();
          sub_26B07A090();
        }

        (MEMORY[0x277D82BD8])();
      }

      sub_26AEE8110(v20);

      MEMORY[0x277D82BD8](v13);
    }

    else
    {
    }
  }

  sub_26AEE7E7C(v38);
  v6 = v39[0];
  sub_26B078640();
  sub_26AEE7FF8(v39);
  return v6;
}

unint64_t sub_26AEE7DF4()
{
  v2 = qword_2803DC3A0;
  if (!qword_2803DC3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC398, "Ұ");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC3A0);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AEE7EA8(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_26B078640();
  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_26AEE7EE8()
{
  v2 = qword_2803DC3B0;
  if (!qword_2803DC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC398, "Ұ");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEE7F70()
{
  v2 = qword_2803DC3C0;
  if (!qword_2803DC3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC3B8, &qword_26B0894D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEE8024()
{
  v2 = qword_2803DC3C8;
  if (!qword_2803DC3C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DC3C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26AEE8088()
{
  v2 = qword_2803DC3D8;
  if (!qword_2803DC3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC3D0, &qword_26B0894E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC3D8);
    return WitnessTable;
  }

  return v2;
}

id sub_26AEE8150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B079DF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3E8, "ذ");
  sub_26AEE83B4();
  sub_26B07A7A0();
  v8 = [v5 initWithPattern:v6 options:a3 error:v9];
  MEMORY[0x277D82BE0](0);
  MEMORY[0x277D82BD8](0);
  if (v8)
  {
    MEMORY[0x277D82BD8](v6);

    return v8;
  }

  else
  {
    sub_26B078100();
    MEMORY[0x277D82BD8](0);
    swift_willThrow();
    MEMORY[0x277D82BD8](v6);

    return v4;
  }
}

uint64_t sub_26AEE8308(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for CompareOptions(0);
    v1 = sub_26B07A080();
    sub_26B078640();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_26AEE83B4()
{
  v2 = qword_2803DC3F0;
  if (!qword_2803DC3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC3E8, "ذ");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC3F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t ReactiveDialog.id.getter()
{
  memset(__b, 0, 0x29uLL);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  __b[0] = *v0;
  __b[1] = v1;
  __b[2] = v2;
  __b[3] = v3;
  __b[4] = v4;
  LOBYTE(__b[5]) = v5;
  return ReactiveDialog.description.getter();
}

uint64_t ReactiveDialog.description.getter()
{
  memset(__b, 0, 0x29uLL);
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v90 = 0;
  v87 = 0;
  v84 = 0;
  v81 = 0;
  v80 = 0;
  v74 = *v0;
  v75 = *(v0 + 8);
  v76 = *(v0 + 16);
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  __b[0] = *v0;
  __b[1] = v75;
  __b[2] = v76;
  __b[3] = v1;
  __b[4] = v2;
  LOBYTE(__b[5]) = v3;
  if (v3)
  {
    switch(v3)
    {
      case 1:
        swift_unknownObjectRetain();
        v84 = v74;
        v83[0] = sub_26B07A740();
        v83[1] = v12;
        v13 = sub_26B079D00("passcode(", 9, 1);
        MEMORY[0x26D66D910](v13);

        swift_getObjectType();
        swift_unknownObjectRetain();
        v61 = [v74 updateName];
        v59 = sub_26B079E00();
        v60 = v14;
        swift_unknownObjectRelease();
        v82[0] = v59;
        v82[1] = v60;
        sub_26B07A720();
        sub_26AE9BCC0(v82);
        *&v15 = MEMORY[0x277D82BD8](v61).n128_u64[0];
        v16 = sub_26B079D00(", _)", 4, 1, v15);
        MEMORY[0x26D66D910](v16);

        sub_26B078640();
        sub_26AEB9F6C(v83);
        v62 = sub_26B079EB0();
        swift_unknownObjectRelease();
        return v62;
      case 2:
        swift_unknownObjectRetain();
        v87 = v74;
        v86[0] = sub_26B07A740();
        v86[1] = v17;
        v18 = sub_26B079D00("termsAndConditions(", 19, 1);
        MEMORY[0x26D66D910](v18);

        swift_getObjectType();
        swift_unknownObjectRetain();
        v57 = [v74 updateName];
        v55 = sub_26B079E00();
        v56 = v19;
        swift_unknownObjectRelease();
        v85[0] = v55;
        v85[1] = v56;
        sub_26B07A720();
        sub_26AE9BCC0(v85);
        *&v20 = MEMORY[0x277D82BD8](v57).n128_u64[0];
        v21 = sub_26B079D00(", _)", 4, 1, v20);
        MEMORY[0x26D66D910](v21);

        sub_26B078640();
        sub_26AEB9F6C(v86);
        v58 = sub_26B079EB0();
        swift_unknownObjectRelease();
        return v58;
      case 3:
        swift_unknownObjectRetain();
        v90 = v74;
        v89[0] = sub_26B07A740();
        v89[1] = v22;
        v23 = sub_26B079D00("downloadConstraints(", 20, 1);
        MEMORY[0x26D66D910](v23);

        swift_getObjectType();
        swift_unknownObjectRetain();
        v53 = [v74 updateName];
        v51 = sub_26B079E00();
        v52 = v24;
        swift_unknownObjectRelease();
        v88[0] = v51;
        v88[1] = v52;
        sub_26B07A720();
        sub_26AE9BCC0(v88);
        *&v25 = MEMORY[0x277D82BD8](v53).n128_u64[0];
        v26 = sub_26B079D00(", _, _)", 7, 1, v25);
        MEMORY[0x26D66D910](v26);

        sub_26B078640();
        sub_26AEB9F6C(v89);
        v54 = sub_26B079EB0();
        swift_unknownObjectRelease();
        return v54;
      case 4:
        return sub_26B079D00("splatRollbackRequest(_)", 23, 1);
      default:
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        v104 = v74;
        v103 = v75;
        v102 = v76;
        v101 = v76;
        if (v76)
        {

          KeyPath = swift_getKeyPath();
          ReactiveBetaProgram.subscript.getter(KeyPath);

          v92 = v91;
          v93 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC408, qword_26B089548);
          v48 = sub_26B079E60();
        }

        else
        {
          v48 = sub_26B079D00("N/A", 3, 1);
        }

        v49 = v27;
        v99 = v48;
        v100 = v27;
        v98[0] = sub_26B07A740();
        v98[1] = v28;
        v29 = sub_26B079D00("betaProgramPurge(", 17, 1);
        MEMORY[0x26D66D910](v29);

        swift_getObjectType();
        swift_unknownObjectRetain();
        v46 = [v74 updateName];
        v44 = sub_26B079E00();
        v45 = v30;
        swift_unknownObjectRelease();
        v97[0] = v44;
        v97[1] = v45;
        sub_26B07A720();
        sub_26AE9BCC0(v97);
        *&v31 = MEMORY[0x277D82BD8](v46).n128_u64[0];
        v32 = sub_26B079D00(", ", 2, 1, v31);
        MEMORY[0x26D66D910](v32);

        swift_getObjectType();
        swift_unknownObjectRetain();
        v47 = [v75 descriptor];
        swift_unknownObjectRelease();
        if (v47)
        {
          swift_getObjectType();
          v39 = [v47 updateName];
          v40 = sub_26B079E00();
          v41 = v33;
          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v39);
          v42 = v40;
          v43 = v41;
        }

        else
        {
          v42 = 0;
          v43 = 0;
        }

        v96[2] = v42;
        v96[3] = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400, &qword_26B089540);
        v96[0] = sub_26B079E60();
        v96[1] = v34;
        sub_26B07A720();
        sub_26AE9BCC0(v96);
        v35 = sub_26B079D00(", ", 2, 1);
        MEMORY[0x26D66D910](v35);

        v94 = v48;
        v95 = v49;
        sub_26B07A720();
        v36 = sub_26B079D00(", _)", 4, 1);
        MEMORY[0x26D66D910](v36);

        sub_26B078640();
        sub_26AEB9F6C(v98);
        v38 = sub_26B079EB0();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v38;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v81 = v74;
    v80 = v75;
    v79[0] = sub_26B07A740();
    v79[1] = v4;
    v5 = sub_26B079D00("purge(", 6, 1);
    MEMORY[0x26D66D910](v5);

    swift_getObjectType();
    swift_unknownObjectRetain();
    v72 = [v74 updateName];
    v70 = sub_26B079E00();
    v71 = v6;
    swift_unknownObjectRelease();
    v78[0] = v70;
    v78[1] = v71;
    sub_26B07A720();
    sub_26AE9BCC0(v78);
    *&v7 = MEMORY[0x277D82BD8](v72).n128_u64[0];
    v8 = sub_26B079D00(", ", 2, 1, v7);
    MEMORY[0x26D66D910](v8);

    swift_getObjectType();
    swift_unknownObjectRetain();
    v73 = [v75 descriptor];
    swift_unknownObjectRelease();
    if (v73)
    {
      swift_getObjectType();
      v65 = [v73 updateName];
      v66 = sub_26B079E00();
      v67 = v9;
      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v65);
      v68 = v66;
      v69 = v67;
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    v77[2] = v68;
    v77[3] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400, &qword_26B089540);
    v77[0] = sub_26B079E60();
    v77[1] = v10;
    sub_26B07A720();
    sub_26AE9BCC0(v77);
    v11 = sub_26B079D00(", _)", 4, 1);
    MEMORY[0x26D66D910](v11);

    sub_26B078640();
    sub_26AEB9F6C(v79);
    v63 = sub_26B079EB0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v63;
  }
}

double sub_26AEE92A4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 programID];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void ReactiveDialog.hash(into:)(uint64_t a1)
{
  memset(__b, 0, 0x29uLL);
  __b[6] = a1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  __b[0] = *v1;
  __b[1] = v2;
  __b[2] = v3;
  __b[3] = v4;
  __b[4] = v5;
  LOBYTE(__b[5]) = v6;
  v9[2] = __b[0];
  v9[3] = v2;
  v9[4] = v3;
  v9[5] = v4;
  v9[6] = v5;
  v10 = v6;
  v9[0] = ReactiveDialog.id.getter();
  v9[1] = v7;
  sub_26B07A8F0();
  sub_26AE9BCC0(v9);
}

uint64_t static ReactiveDialog.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  memset(&v20[6], 0, 0x29uLL);
  memset(v20, 0, 0x29uLL);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v20[6] = *a1;
  v20[7] = v2;
  v20[8] = v3;
  v20[9] = v4;
  v20[10] = v5;
  LOBYTE(v20[11]) = v6;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v16 = *(a2 + 40);
  v20[0] = *a2;
  v20[1] = v7;
  v20[2] = v8;
  v20[3] = v9;
  v20[4] = v10;
  LOBYTE(v20[5]) = v16;
  v17 = ReactiveDialog.id.getter();
  v18 = v11;
  v12 = ReactiveDialog.id.getter();
  v19 = MEMORY[0x26D66D0C0](v17, v18, v12);

  return v19 & 1;
}

uint64_t ReactiveDialog.hashValue.getter()
{
  memset(__b, 0, 0x29uLL);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  __b[0] = *v0;
  __b[1] = v1;
  __b[2] = v2;
  __b[3] = v3;
  __b[4] = v4;
  LOBYTE(__b[5]) = v5;
  sub_26AEE9600();
  return sub_26B07A550();
}

unint64_t sub_26AEE9600()
{
  v2 = qword_2803DC410;
  if (!qword_2803DC410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC410);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEE967C@<X0>(uint64_t *a1@<X8>)
{
  result = ReactiveDialog.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_26AEE974C()
{
  v2 = qword_2803DC5E0;
  if (!qword_2803DC5E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC5E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEE9804(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 41))
    {
      v4 = *a1 + 250;
    }

    else
    {
      v2 = *(a1 + 40) ^ 0xFF;
      if (v2 >= 0xFA)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEE98FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 41);
  if (a2 > 0xFA)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 251;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 >= 0xFB)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t SUUIStatefulError.id.getter()
{
  memset(__b, 0, sizeof(__b));
  v16 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v12, 0, sizeof(v12));
  v21 = v10;
  sub_26B07A920();
  memcpy(__b, v22, sizeof(__b));
  (MEMORY[0x277D82BE0])();
  v7 = [v10 domain];
  v5 = sub_26B079E00();
  v6 = v0;
  (MEMORY[0x277D82BD8])();
  v19[0] = v5;
  v19[1] = v6;
  sub_26B07A8F0();
  sub_26AE9BCC0(v19);
  MEMORY[0x277D82BD8](v7);
  (MEMORY[0x277D82BE0])();
  v8 = [v10 code];
  (MEMORY[0x277D82BD8])();
  v18[2] = v8;
  sub_26B07A8F0();
  (MEMORY[0x277D82BE0])();
  v9 = [v10 userInfo];
  sub_26B079C70();
  (MEMORY[0x277D82BD8])();
  v11 = sub_26B07A7C0();
  if (v11)
  {
    v16 = v11;

    MEMORY[0x277D82BD8](v9);
    __dst[8] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC4E0, &qword_26B0897D0);
    sub_26AEEA050();
    __dst[7] = sub_26B079FE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC4F0, &qword_26B0897D8);
    sub_26AEEA0D8();
    sub_26B07A270();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC500, qword_26B0897E0);
      sub_26B07A620();
      memcpy(__dst, v13, 0x38uLL);
      if (!__dst[1])
      {
        break;
      }

      memcpy(v12, &__dst[2], sizeof(v12));
      sub_26B07A8F0();
      sub_26B07A8F0();
      sub_26AEEA18C(v12);
    }

    sub_26AEEA160(v15);
  }

  else
  {

    MEMORY[0x277D82BD8](v9);
  }

  v18[0] = sub_26B07A740();
  v18[1] = v1;
  v2 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v2);

  memcpy(v23, __b, sizeof(v23));
  v17 = sub_26B07A900();
  sub_26B07A710();
  v3 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v3);

  sub_26B078640();
  sub_26AEB9F6C(v18);
  return sub_26B079EB0();
}

unint64_t sub_26AEEA050()
{
  v2 = qword_2803DC4E8;
  if (!qword_2803DC4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC4E0, &qword_26B0897D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEEA0D8()
{
  v2 = qword_2803DC4F8;
  if (!qword_2803DC4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC4F0, &qword_26B0897D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC4F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEEA1B4@<X0>(uint64_t *a1@<X8>)
{
  result = SUUIStatefulError.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t static SUUIStatefulError.== infix(_:_:)(void *a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  v5 = [a1 isEqual_];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t ReactiveDescriptor.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = a1;
  v27 = 0;
  v25 = 0;
  v8 = *a1;
  v16 = sub_26B078360();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v2 = MEMORY[0x28223BE20](v20);
  v15 = &v7 - v3;
  v27 = v4;
  v9 = *(v8 + *MEMORY[0x277D84DE8] + 8);
  v26 = v9;
  v25 = v11;
  (*(v13 + 16))(&v7 - v3, v11 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar, v2);
  v10 = &v24;
  v24 = v11;

  v21 = v9;
  v22 = v20;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078320();
  v5 = v11;

  (*(v13 + 8))(v15, v16);
  v17 = *(v5 + 24);
  MEMORY[0x277D82BE0](v17);
  v18 = [v17 descriptor];
  MEMORY[0x277D82BD8](v17);

  v23 = v18;
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
}

uint64_t sub_26AEEA49C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_26AEEA4FC(uint64_t a1)
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

uint64_t sub_26AEEA574()
{

  swift_weakInit();
}

uint64_t sub_26AEEA5C0()
{
  KeyPath = swift_getKeyPath();
  sub_26AEEA928(KeyPath);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_26AEEA64C@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_26AEEA5C0();
}

uint64_t sub_26AEEA6A8(void *a1, void *a2)
{
  sub_26AE9CCD0(a1, &v4);
  v3 = v4;

  sub_26AEEA710(v3);
}

uint64_t sub_26AEEA710(uint64_t a1)
{
  v19 = a1;
  v26 = 0;
  v15 = 0;
  v27 = a1;
  v16 = v1 + 16;
  v17 = &v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  v24 = Strong;
  v23 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC520, &qword_26B0898C8);
  v20 = &v24;
  v21 = sub_26AEEAA98();
  sub_26AEECDD4(&v24);
  if (v21)
  {
    v2 = v14;
    v3 = v15;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = v8;
    MEMORY[0x28223BE20](KeyPath);
    v7[2] = v2;
    v7[3] = v4;
    sub_26AEEAB50(v5, sub_26AEECE00, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v13 = v3;

    v9 = v13;
  }

  else
  {

    v8[0] = v14 + 16;
    v8[1] = &v22;
    swift_beginAccess();
    swift_weakAssign();

    swift_endAccess();
    v9 = v15;
  }
}

uint64_t sub_26AEEA928(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_26B078360();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = MEMORY[0x28223BE20](v7);
  v11 = &v5 - v2;
  v16 = v3;
  v15 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v2, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar, v1);
  v8 = &v13;
  v13 = v6;
  sub_26AEECCB0();
  sub_26B078320();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_26AEEAAC8(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  swift_weakAssign();

  return swift_endAccess();
}

uint64_t sub_26AEEAB50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_26B078360();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = MEMORY[0x28223BE20](v19);
  v16 = v11 - v6;
  v32 = v7;
  v31 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v6, v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar, v5);
  v24 = &v27;
  v27 = v17;
  sub_26AEECCB0();
  v9 = v23;
  sub_26B078310();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

uint64_t (*sub_26AEEAD68(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x38uLL, 47336);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 47336);
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEEA928(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  v8[4] = swift_weakLoadStrong();
  return sub_26AEEAF34;
}

void sub_26AEEAF34(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[6];
    v2 = v6[5];

    swift_weakAssign();

    sub_26AEECDD4(v6 + 4);
    swift_endAccess();
    sub_26AEEB01C(v2);
    free(v3);
  }

  else
  {
    v5 = v6[6];
    v4 = v6[5];
    swift_weakAssign();

    swift_endAccess();
    sub_26AEEB01C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AEEB01C(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078330();

  return (*(v8 + 8))(v10, v11);
}

uint64_t ReactiveDescriptor.statefulDescriptor.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_26AEEB198@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AEEB20C()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_observations);
  swift_beginAccess();
  v3 = *v2;
  sub_26B078640();
  swift_endAccess();
  return v3;
}

uint64_t sub_26AEEB274(uint64_t a1)
{
  sub_26B078640();
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_observations);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id ReactiveDescriptor.currentState.getter()
{
  v15 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v15 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar, v0);
  v5 = &v14;
  v14 = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = *(v1 + 24);
  MEMORY[0x277D82BE0](v12);
  v13 = [v12 currentState];
  MEMORY[0x277D82BD8](v12);
  return v13;
}

uint64_t sub_26AEEB47C@<X0>(id *a2@<X8>)
{

  *a2 = ReactiveDescriptor.currentState.getter();
}

id ReactiveDescriptor.role.getter()
{
  v15 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v15 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar, v0);
  v5 = &v14;
  v14 = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = *(v1 + 24);
  MEMORY[0x277D82BE0](v12);
  v13 = [v12 role];
  MEMORY[0x277D82BD8](v12);
  return v13;
}

uint64_t sub_26AEEB65C@<X0>(id *a2@<X8>)
{

  *a2 = ReactiveDescriptor.role.getter();
}

uint64_t ReactiveDescriptor.isDownloadable.getter()
{
  v15 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v15 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar, v0);
  v5 = &v14;
  v14 = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = *(v1 + 24);
  MEMORY[0x277D82BE0](v12);
  v13 = [v12 isDownloadable];
  MEMORY[0x277D82BD8](v12);
  return v13;
}

uint64_t sub_26AEEB83C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = ReactiveDescriptor.isDownloadable.getter() & 1;
}

id sub_26AEEB89C()
{
  v15 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v15 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar, v0);
  v5 = &v14;
  v14 = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = *(v1 + 24);
  MEMORY[0x277D82BE0](v12);
  v13 = [v12 updateDownloadError];
  MEMORY[0x277D82BD8](v12);
  return v13;
}

uint64_t sub_26AEEBA28@<X0>(id *a2@<X8>)
{

  *a2 = sub_26AEEB89C();
}

uint64_t ReactiveDescriptor.init(representing:managedBy:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v44 = a2;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v29 = 0;
  v31 = sub_26B078360();
  v9 = *(v31 - 8);
  v10 = v31 - 8;
  v7[0] = (v9[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v34 = v7 - v7[0];
  v57 = v3;
  v56 = v4;
  v55 = v2;
  v40 = 0;
  swift_weakInit();
  v26 = &qword_2803DC000;
  sub_26B078350();
  v38 = &qword_2803DC000;
  v8 = OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_observations;
  v7[1] = sub_26B078070();
  v7[2] = sub_26B07A760();
  sub_26AEECE8C();
  *(v2 + v8) = sub_26B07A1B0();
  sub_26B078350();
  MEMORY[0x277D82BE0](v45);
  *(v2 + 24) = v45;

  sub_26AEEA710(v44);
  v54[1] = v46;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v5 = v26[162];
  v28 = v9[2];
  v27 = v9 + 2;
  v28(v34, v46 + v5, v31);
  v30 = sub_26AEECCB0();
  v13 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(KeyPath, v45, v11, v34, v29, v29, v30);
  v33 = v9[1];
  v32 = v9 + 1;
  v33(v34, v31);

  v14 = v54;
  v54[0] = v13;
  v15 = &v53;
  v39 = 33;
  swift_beginAccess();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC540, qword_26B0907E0);
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v54[2]);
  v52[1] = v46;
  v17 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v28(v34, v46 + v26[162], v31);
  v18 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v17, v45, v16, v34, v29, v29, v30);
  v33(v34, v31);

  v19 = v52;
  v52[0] = v18;
  v20 = &v51;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v52[2]);
  v50[1] = v46;
  v22 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v28(v34, v46 + v26[162], v31);
  v23 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v22, v45, v21, v34, v29, v29, v30);
  v33(v34, v31);

  v24 = v50;
  v50[0] = v23;
  v25 = &v49;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v50[2]);
  v48[1] = v46;
  v36 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v28(v34, v46 + v26[162], v31);
  v37 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v36, v45, v35, v34, v29, v29, v30);
  v33(v34, v31);

  v41 = v48;
  v48[0] = v37;
  v43 = &v47;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v48[2]);

  MEMORY[0x277D82BD8](v45);
  return v46;
}

double sub_26AEEC354@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 currentState];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC3C0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setCurrentState_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC428@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 role];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC494(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setRole_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC4FC@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 isDownloadable];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC568(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setUpdateDownloadable_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC5D4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 updateDownloadError];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC648(void *a1, void *a2)
{
  sub_26AEEE9CC(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v4 setUpdateDownloadError_];
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t ReactiveDescriptor.deinit()
{
  memset(__b, 0, sizeof(__b));
  v8 = v0;
  swift_beginAccess();
  sub_26B078640();
  swift_endAccess();
  sub_26B078070();
  sub_26AEECE8C();
  sub_26B07A1C0();
  memcpy(__b, v9, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEA60, &qword_26B089A60);
    sub_26B07A1E0();
    if (!v6)
    {
      break;
    }

    sub_26B078060();
    (MEMORY[0x277D82BD8])();
  }

  sub_26AEECFFC(__b);
  swift_weakDestroy();
  MEMORY[0x277D82BD8](*(v5 + 24));
  v2 = v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar;
  v3 = sub_26B078360();
  v4 = *(*(v3 - 8) + 8);
  (v4)(v2);
  sub_26AEED080((v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_observations));
  v4(v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar, v3);
  return v5;
}

BOOL sub_26AEEC924(void *a1, void *a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DC5A8, &unk_26B089C08);
  sub_26B07A930();
  v4 = sub_26B079D70();

  return (v4 & 1) != 0;
}

uint64_t sub_26AEECA18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DC5A8, &unk_26B089C08);
  sub_26B07A930();
  return sub_26B079CE0();
}

uint64_t sub_26AEECA88@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v8 = a2;
  v13 = *(a2 + a3 - 8);
  v17 = v13;
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v12 = &v6 - v6;
  v7 = *v4;

  v16 = v7;
  v15 = v7;
  v14 = *v8;

  ReactiveDescriptor.subscript.getter(v14, v12);
  (*(v9 + 32))(v11, v12, v13);
}

void *sub_26AEECC04(void *a1, void *a2)
{
  v4 = *a1;

  result = a1;
  *a2 = v4;
  a2[1] = a1[1];
  return result;
}

void *sub_26AEECC8C(void *result, void *a2)
{
  *a2 = result[1];
  a2[1] = *result;
  return result;
}

unint64_t sub_26AEECCB0()
{
  v2 = qword_2803DC518;
  if (!qword_2803DC518)
  {
    type metadata accessor for ReactiveDescriptor(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC518);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ReactiveDescriptor(uint64_t a1)
{
  v2 = qword_2803DC590;
  if (!qword_2803DC590)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_26AEECE8C()
{
  v2 = qword_2803DC538;
  if (!qword_2803DC538)
  {
    sub_26B078070();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC538);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEED0AC@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AEED17C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t ReactiveDescriptor.id.getter()
{
  v12[2] = 0;
  v12[0] = sub_26B07A740();
  v12[1] = v0;
  v1 = sub_26B079D00("");
  MEMORY[0x26D66D910](v1);

  v7 = *(v9 + 24);
  MEMORY[0x277D82BE0](v7);
  v8 = [v7 updateName];
  MEMORY[0x277D82BD8](v7);
  v11[0] = sub_26B079E00();
  v11[1] = v2;
  sub_26B07A720();
  sub_26AE9BCC0(v11);
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v4 = sub_26B079D00(":", 1, 1, v3);
  MEMORY[0x26D66D910](v4);

  v10 = *(v9 + 24);
  MEMORY[0x277D82BE0](v10);
  sub_26B07A3C0();
  MEMORY[0x277D82BD8](v10);
  sub_26B07A710();
  v5 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v5);

  sub_26B078640();
  sub_26AEB9F6C(v12);
  return sub_26B079EB0();
}

uint64_t sub_26AEED468@<X0>(uint64_t *a1@<X8>)
{
  result = ReactiveDescriptor.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t ReactiveDescriptor.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  MEMORY[0x277D82BE0](v4);
  [v4 hash];
  MEMORY[0x277D82BD8](v4);
  return sub_26B07A8F0();
}

unint64_t sub_26AEED5B8()
{
  v2 = qword_2803DC550;
  if (!qword_2803DC550)
  {
    type metadata accessor for ReactiveDescriptor(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC550);
    return WitnessTable;
  }

  return v2;
}

uint64_t static ReactiveDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 24);
  MEMORY[0x277D82BE0](v6);
  v4 = *(a2 + 24);
  MEMORY[0x277D82BE0](v4);
  v5 = [v4 descriptor];
  v7 = [v6 isEqualToDescriptor_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v6);
  return v7;
}

uint64_t ReactiveDescriptor.description.getter()
{
  v16[2] = 0;
  v16[0] = sub_26B07A740();
  v16[1] = v0;
  v1 = sub_26B079D00("<");
  MEMORY[0x26D66D910](v1);

  v15[2] = *v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC558, &qword_26B089A68);
  v15[0] = sub_26B079E60();
  v15[1] = v2;
  sub_26B07A720();
  sub_26AE9BCC0(v15);
  v3 = sub_26B079D00(": ", 2, 1);
  MEMORY[0x26D66D910](v3);

  v14[2] = sub_26B079D60();
  sub_26B07A700();
  v4 = sub_26B079D00(" { id: ", 8, 1);
  MEMORY[0x26D66D910](v4);

  v14[0] = ReactiveDescriptor.id.getter();
  v14[1] = v5;
  sub_26B07A720();
  sub_26AE9BCC0(v14);
  v6 = sub_26B079D00(", hash: ", 9, 1);
  MEMORY[0x26D66D910](v6);

  v11 = v12[3];
  MEMORY[0x277D82BE0](v11);
  sub_26B07A3C0();
  MEMORY[0x277D82BD8](v11);
  sub_26B07A710();
  v7 = sub_26B079D00("; statefulDescriptor: ", 22, 1);
  MEMORY[0x26D66D910](v7);

  v13 = v12[3];
  MEMORY[0x277D82BE0](v13);
  sub_26AEB75BC();
  sub_26AEEDAE0();
  sub_26B07A710();
  *&v8 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v9 = sub_26B079D00(">", 1, 1, v8);
  MEMORY[0x26D66D910](v9);

  sub_26B078640();
  sub_26AEB9F6C(v16);
  return sub_26B079EB0();
}

unint64_t sub_26AEEDAE0()
{
  v2 = qword_2803DC568;
  if (!qword_2803DC568)
  {
    sub_26AEB75BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC568);
    return WitnessTable;
  }

  return v2;
}

uint64_t ReactiveDescriptor.debugDescription.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0](v2);
  v3 = [v2 description];
  v4 = sub_26B079E00();
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t ReactiveDescriptor.isDownloaded.getter()
{
  ReactiveDescriptor.currentState.getter();
  type metadata accessor for SUUIStatefulDescriptorState(0);
  sub_26AE9B8C0();
  v2 = sub_26B07A790();

  if (v2)
  {
    v1 = 1;
  }

  else
  {
    ReactiveDescriptor.currentState.getter();
    v1 = sub_26B07A790();
  }

  return v1 & 1;
}

id ReactiveDescriptor.updateError.getter()
{
  v4 = v0;
  v2 = sub_26AEEB89C();

  if (v2)
  {
    v3 = v2;
  }

  else if (sub_26AEEA5C0())
  {
    v3 = ReactiveUIManager.scanError.getter();
  }

  else
  {
    sub_26B07A650();
    __break(1u);
  }

  return v3;
}

uint64_t ReactiveDescriptor.hasAnyError.getter()
{
  v9 = ReactiveDescriptor.updateError.getter();
  if (!v9)
  {
    goto LABEL_12;
  }

  v7 = *(v8 + 24);
  MEMORY[0x277D82BE0](v7);
  if (!sub_26AEEA5C0())
  {
    LOBYTE(v1) = 2;
    v2 = 220;
    LODWORD(v3) = 0;
    sub_26B07A650();
    __break(1u);
  }

  v6 = ReactiveUIManager.currentDownload.getter();

  if (v6)
  {
    MEMORY[0x277D82BE0](*(v6 + 16));

    swift_getObjectType();
  }

  v5 = [v9 isNonBlockingErrorForStatefulDescriptor:v7 download:{v1, v2, v3}];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v7);
  if (v5)
  {
    MEMORY[0x277D82BD8](v9);
LABEL_12:
    v4 = 0;
    return v4 & 1;
  }

  MEMORY[0x277D82BD8](v9);
  v4 = 1;
  return v4 & 1;
}

uint64_t ReactiveDescriptor.shouldOfferInstallTonight.getter()
{
  v23 = "Fatal error";
  v24 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v25 = "SoftwareUpdateUIKit/ReactiveDescriptor.swift";
  v43 = 0;
  v40 = 0;
  v39 = 0.0;
  v35 = 0;
  v26 = sub_26B0782A0();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v30 = &v6[-v29];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD260, &qword_26B089A70);
  v31 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v32 = &v6[-v31];
  v33 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6[-v31]);
  v34 = &v6[-v33];
  v43 = v0;
  v3 = ReactiveDescriptor.currentState.getter();
  v38 = &v42;
  v42 = v3;
  v36 = &v41;
  v41 = 5;
  v37 = type metadata accessor for SUUIStatefulDescriptorState(v35);
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v22 = 0;
    return v22 & 1;
  }

  v21 = sub_26AEEA5C0();
  if (v21)
  {
    v20 = v21;
  }

  else
  {
    sub_26B07A650();
    __break(1u);
  }

  v18 = v20;
  v19 = ReactiveUIManager.ddmDeclaration.getter();
  if (!v19)
  {

LABEL_20:
    v22 = 1;
    return v22 & 1;
  }

  v17 = v19;
  v16 = v19;
  v40 = v19;

  if (([v16 isValidDeclaration] & 1) == 0)
  {
    MEMORY[0x277D82BD8](v16);
    goto LABEL_20;
  }

  v15 = [v16 enforcedInstallDate];
  if (v15)
  {
    v14 = v15;
    v13 = v15;
    sub_26B078250();
    (*(v27 + 32))(v32, v30, v26);
    (*(v27 + 56))(v32, 0, 1, v26);
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    (*(v27 + 56))(v32, 1, 1, v26);
  }

  sub_26AEEE5DC(v32, v34);
  if ((*(v27 + 48))(v34, 1, v26) == 1)
  {
    sub_26AEEE704(v34);
    v11 = 0.0;
    v12 = 1;
  }

  else
  {
    sub_26B078230();
    v10 = v4;
    (*(v27 + 8))(v34, v26);
    v11 = v10;
    v12 = 0;
  }

  v9 = v11;
  if (v12)
  {
    MEMORY[0x277D82BD8](v16);
    v22 = 1;
  }

  else
  {
    v8 = v9;
    v39 = v9;
    v7 = v9 >= 86400.0;
    MEMORY[0x277D82BD8](v16);
    v22 = v7;
  }

  return v22 & 1;
}

void *sub_26AEEE5DC(const void *a1, void *a2)
{
  v6 = sub_26B0782A0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD260, &qword_26B089A70);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AEEE704(uint64_t a1)
{
  v3 = sub_26B0782A0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_26AEEE7D0()
{
  v2 = qword_2803DC580;
  if (!qword_2803DC580)
  {
    type metadata accessor for ReactiveDescriptor(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEEE86C(uint64_t a1)
{
  updated = sub_26B078360();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

void *sub_26AEEE9CC(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_26AEEEA0C(uint64_t a1, char a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v4;
}

uint64_t sub_26AEEEAE4(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AEEEB6C(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  swift_getKeyPath();
  sub_26B078A30();

  v5 = v3;
  LOBYTE(v6) = v4 & 1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = a1;
  swift_unknownObjectRelease();
  sub_26AEF4420(&v5);
  return v3;
}

uint64_t sub_26AEEEC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v17 = a1;
  v29 = sub_26AEF44A0;
  v36 = MEMORY[0x277CE0E30];
  v61 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v25 = a2;
  v26 = a3;
  v28 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5B8, &qword_26B089C48);
  v37 = *(v43 - 8);
  v38 = v43 - 8;
  v16 = *(v37 + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v41 = &v14 - v15;
  MEMORY[0x28223BE20](v5);
  v42 = &v14 - v6;
  v61 = &v14 - v6;
  v60 = v17;
  v57 = v7;
  v27 = 1;
  LOBYTE(v58) = v26 & 1;
  v59 = v8;

  v55 = v25;
  v56 = v26 & 1 & v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v18 = v54;

  ReactiveUIManager.presentedDialog.getter(v52);
  v19 = v52[0];
  v20 = v52[1];
  v21 = v52[2];
  v22 = v52[3];
  v23 = v52[4];
  v24 = v53;

  v31 = v50;
  v50[0] = v19;
  v50[1] = v20;
  v50[2] = v21;
  v50[3] = v22;
  v50[4] = v23;
  v51 = v24;

  swift_unknownObjectRetain();
  v9 = swift_allocObject();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v30 = v9;
  *(v9 + 16) = v25;
  *(v9 + 24) = v10 & 1 & v11;
  *(v9 + 32) = v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5C0, &qword_26B089C50);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5C8, &qword_26B089C58);
  v34 = sub_26AEF44D8();
  v35 = sub_26AEF4560();
  sub_26B0796D0();

  sub_26AEA007C(v31);
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v41, v43, v42);
  v45 = *(v37 + 8);
  v44 = v37 + 8;
  v45(v41, v43);
  (*(v37 + 16))(v41, v42, v43);
  sub_26AE94B4C(v41, v43, v39);
  v45(v41, v43);
  return (v45)(v42, v43);
}

uint64_t sub_26AEEF194(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v49 = a1;
  v50 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v42 = &unk_26B089E10;
  v44 = 41;
  v43 = 0;
  memset(&v64[6], 0, 0x29uLL);
  memset(v64, 0, 0x29uLL);
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v64[12] = v45;
  v65 = v46;
  v66 = v47;
  v51 = v45;
  v52 = v46;
  v48 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700);
  MEMORY[0x28223BE20](v49);
  v53 = &v23 - v5;
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  v11 = *(v6 + 40);
  v64[6] = *v6;
  v64[7] = v7;
  v64[8] = v8;
  v64[9] = v9;
  v64[10] = v10;
  LOBYTE(v64[11]) = v11;
  v54 = *v50;
  v55 = *(v50 + 8);
  v56 = *(v50 + 16);
  v57 = *(v50 + 24);
  v58 = *(v50 + 32);
  v59 = *(v50 + 40);
  v64[0] = v54;
  v64[1] = v55;
  v64[2] = v56;
  v64[3] = v57;
  v64[4] = v58;
  LOBYTE(v64[5]) = v59;
  v61 = v45;
  v62 = v46 & 1;
  v63 = v12;
  result = sub_26AEF56C4(v54, v55, v56, v57, v58, v59);
  if (v59 != 255)
  {
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v39 = v57;
    v40 = v58;
    v41 = v59;
    v30 = v41;
    v31 = v40;
    v32 = v39;
    v33 = v38;
    v34 = v37;
    v35 = v36;
    if (v41 == 1)
    {
      v28 = v35;
      v29 = v33;
      v26 = v35;
      v60 = v35;

      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_getObjectType();
      v27 = [v26 isEqual_];
      swift_unknownObjectRelease();
      if (v27)
      {
        sub_26B07A140();
        v24 = 0;
        v14 = *(*(sub_26B07A160() - 8) + 56);
        HIDWORD(v23) = 1;
        v14(v53, 0);

        swift_unknownObjectRetain();
        v15 = swift_allocObject();
        v16 = v51;
        v17 = v52;
        v18 = BYTE4(v23);
        v19 = v48;
        v20 = v24;
        v21 = v42;
        v22 = v53;
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *(v15 + 32) = v16;
        *(v15 + 40) = v17 & 1 & v18;
        *(v15 + 48) = v19;
        v25 = sub_26AF449A0(v20, v20, v22, v21, v15, MEMORY[0x277D84F78] + 8);
        sub_26AEA08A4(v53);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      return sub_26AEA00D4(v35, v34, v33, v32, v31, v30);
    }
  }

  return result;
}

uint64_t sub_26AEEF660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 48) = a4;
  *(v6 + 80) = a5 & 1;
  *(v6 + 56) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700);
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 16) = a4;
  *(v6 + 24) = a5 & 1;
  *(v6 + 32) = a6;
  v7 = swift_task_alloc();
  *(v12 + 72) = v7;
  *v7 = *(v12 + 40);
  v7[1] = sub_26AEEF7F0;

  return sub_26AEEFABC(a4, a5 & 1, a6);
}

uint64_t sub_26AEEF7F0()
{
  *(*v0 + 40) = *v0;

  return MEMORY[0x2822009F8](sub_26AEEF908, 0, 0);
}

uint64_t sub_26AEEF908()
{
  v5 = MEMORY[0x277D85700];
  v10 = *(v0 + 64);
  v8 = *(v0 + 56);
  v7 = *(v0 + 80);
  v6 = *(v0 + 48);
  *(v0 + 40) = v0;
  v1 = sub_26B07A160();
  (*(*(v1 - 8) + 56))(v10, 1);

  swift_unknownObjectRetain();
  sub_26B07A130();
  v9 = sub_26B07A120();
  v2 = swift_allocObject();
  *(v2 + 16) = v9;
  *(v2 + 24) = v5;
  *(v2 + 32) = v6;
  *(v2 + 40) = v7 & 1;
  *(v2 + 48) = v8;
  sub_26AEBC0C4(0, 0, v10, &unk_26B089E20, v2, MEMORY[0x277D84F78] + 8);

  v3 = *(*(v0 + 40) + 8);

  return v3();
}

uint64_t sub_26AEEFABC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 408) = v3;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0;
  *(v3 + 424) = 0;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 440) = 0;
  *(v3 + 448) = 0;
  *(v3 + 464) = 0;
  *(v3 + 472) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 360) = 0;
  *(v3 + 368) = 0;
  *(v3 + 480) = a1;
  *(v3 + 385) = a2 & 1;
  *(v3 + 488) = a3;
  v4 = sub_26B078580();
  *(v3 + 496) = v4;
  *(v3 + 504) = *(v4 - 8);
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 272) = a1;
  *(v3 + 280) = a2 & 1;
  *(v3 + 288) = a3;
  sub_26B07A130();
  *(v3 + 536) = sub_26B07A120();
  v10 = sub_26B07A0C0();
  *(v3 + 544) = v10;
  *(v3 + 552) = v5;

  return MEMORY[0x2822009F8](sub_26AEEFCB0, v10, v5);
}

uint64_t sub_26AEEFCB0()
{
  v29 = v0;
  v20 = *(v0 + 385);
  v21 = *(v0 + 480);
  *(v0 + 408) = v0;

  *(v0 + 376) = v21;
  *(v0 + 384) = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  v22 = ReactiveUIManager.presentingViewController.getter();
  *(v0 + 560) = v22;
  if (!v22)
  {
    v6 = *(v19 + 488);
    v3 = *(v19 + 385);
    v5 = *(v19 + 480);

    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    *(v4 + 16) = v5;
    *(v4 + 24) = v3 & 1;
    *(v4 + 32) = v6;
    sub_26B07A630();

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v14 = *(v19 + 385);
  v15 = *(v19 + 480);
  *(v19 + 424) = v22;

  *(v19 + 392) = v15;
  *(v19 + 400) = v14 & 1;
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(&v23);
  v16 = v23;
  v17 = v24;
  *(v19 + 568) = v24;
  v18 = v25;
  *(v19 + 576) = v25;
  if (v28 == 255)
  {

LABEL_9:
    v10 = *(v19 + 488);
    v7 = *(v19 + 385);
    v9 = *(v19 + 480);

    swift_unknownObjectRetain();
    v8 = swift_task_alloc();
    *(v8 + 16) = v9;
    *(v8 + 24) = v7 & 1;
    *(v8 + 32) = v10;
    sub_26B07A630();

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v22);
LABEL_11:

    v1 = *(*(v19 + 408) + 8);

    return v1();
  }

  if (v28 != 1)
  {
    sub_26AEA00D4(v16, v17, v18, v26, v27, v28);

    goto LABEL_9;
  }

  *(v19 + 296) = v17;
  *(v19 + 304) = v18;
  swift_unknownObjectRelease();

  sub_26AEF4668();
  v13 = sub_26AEF3F00();
  *(v19 + 584) = v13;
  *(v19 + 440) = v13;
  sub_26AEF46CC();
  v12 = sub_26AEF3F30();
  *(v19 + 592) = v12;
  *(v19 + 448) = v12;
  [v12 setDismissUIAfterCompletion_];
  *(v19 + 16) = *(v19 + 408);
  *(v19 + 56) = v19 + 456;
  *(v19 + 24) = sub_26AEF0298;
  v11 = swift_continuation_init();
  *(v19 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5F8, &qword_26B089C70);
  *(v19 + 176) = v11;
  *(v19 + 144) = MEMORY[0x277D85DD0];
  *(v19 + 152) = 1107296256;
  *(v19 + 156) = 0;
  *(v19 + 160) = sub_26AEF3F60;
  *(v19 + 168) = &block_descriptor;
  [v13 startInParentVC:v22 options:v12 completion:?];

  return MEMORY[0x282200938](v19 + 16);
}

uint64_t sub_26AEF0298()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 408) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 600) = v1;
  if (v1)
  {
    v2 = *(v6 + 536);
    v3 = *(v6 + 528);
    v4 = sub_26AEF1D20;
  }

  else
  {
    v2 = *(v6 + 536);
    v3 = *(v6 + 528);
    v4 = sub_26AEF0410;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AEF0410()
{
  v36 = v0;
  v17 = *(v0 + 488);
  v16 = *(v0 + 385);
  v15 = *(v0 + 480);
  *(v0 + 408) = v0;
  v14 = *(v0 + 456);
  *(v0 + 608) = v14;
  *(v0 + 472) = v14;
  sub_26B078540();

  swift_unknownObjectRetain();
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v16 & 1;
  *(v18 + 32) = v17;
  v29 = sub_26B078570();
  v30 = sub_26B07A2A0();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26AEF4C14;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AEF4CF4;
  *(v20 + 24) = v19;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AEF4D40;
  *(v24 + 24) = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AEF40BC;
  *(v21 + 24) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26AEF4E40;
  *(v27 + 24) = v21;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v28 = v1;

  *v28 = sub_26AEF4C78;
  v28[1] = v22;

  v28[2] = sub_26AEF4CAC;
  v28[3] = v23;

  v28[4] = sub_26AEF4D8C;
  v28[5] = v24;

  v28[6] = sub_26AEF4DC4;
  v28[7] = v25;

  v28[8] = sub_26AEF4DF8;
  v28[9] = v26;

  v28[10] = sub_26AEF4E8C;
  v28[11] = v27;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v29, v30))
  {
    buf = sub_26B07A420();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v11 = sub_26AEA3B70(0, v9, v9);
    v12 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = buf;
    v32 = v11;
    v33 = v12;
    sub_26AEA3BC4(2, &v31);
    sub_26AEA3BC4(2, &v31);
    v34 = sub_26AEF4C78;
    v35 = v22;
    sub_26AEA3BD8(&v34, &v31, &v32, &v33);
    v34 = sub_26AEF4CAC;
    v35 = v23;
    sub_26AEA3BD8(&v34, &v31, &v32, &v33);
    v34 = sub_26AEF4D8C;
    v35 = v24;
    sub_26AEA3BD8(&v34, &v31, &v32, &v33);
    v34 = sub_26AEF4DC4;
    v35 = v25;
    sub_26AEA3BD8(&v34, &v31, &v32, &v33);
    v34 = sub_26AEF4DF8;
    v35 = v26;
    sub_26AEA3BD8(&v34, &v31, &v32, &v33);
    v34 = sub_26AEF4E8C;
    v35 = v27;
    sub_26AEA3BD8(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_26AE88000, v29, v30, "%s.%s: Passcode challenge succeeded, completed, extracting credentials.", buf, 0x16u);
    sub_26AEA3C24(v11, 0, v9);
    sub_26AEA3C24(v12, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v13 + 624) = 0;
  v6 = *(v13 + 528);
  v7 = *(v13 + 496);
  v5 = *(v13 + 504);
  v2 = MEMORY[0x277D82BD8](v29);
  v3 = *(v5 + 8);
  *(v13 + 632) = v3;
  *(v13 + 640) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v6, v7, v2);
  *(v13 + 80) = *(v13 + 408);
  *(v13 + 120) = v13 + 312;
  *(v13 + 88) = sub_26AEF0EF4;
  v8 = swift_continuation_init();
  *(v13 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC600, &qword_26B089C78);
  *(v13 + 240) = v8;
  *(v13 + 208) = MEMORY[0x277D85DD0];
  *(v13 + 216) = 1107296256;
  *(v13 + 220) = 0;
  *(v13 + 224) = sub_26AEF4140;
  *(v13 + 232) = &block_descriptor_97;
  [v14 credentialOfType:-9 reply:?];

  return MEMORY[0x282200938](v13 + 80);
}

uint64_t sub_26AEF0EF4()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 408) = *v0;
  v1 = *(v7 + 112);
  *(v8 + 648) = v1;
  if (v1)
  {
    v2 = *(v6 + 536);
    v3 = *(v6 + 528);
    v4 = sub_26AEF2B88;
  }

  else
  {
    v2 = *(v6 + 536);
    v3 = *(v6 + 528);
    v4 = sub_26AEF106C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AEF106C()
{
  v49 = v0;
  v0[51] = v0;
  v42 = v0[39];
  v43 = v0[40];
  if ((v43 & 0xF000000000000000) == 0xF000000000000000)
  {
    v21 = *(v41 + 488);
    v20 = *(v41 + 385);
    v19 = *(v41 + 480);
    sub_26B078540();

    swift_unknownObjectRetain();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v20 & 1;
    *(v22 + 32) = v21;
    oslog = sub_26B078570();
    v34 = sub_26B07A2D0();
    v26 = swift_allocObject();
    *(v26 + 16) = 32;
    v27 = swift_allocObject();
    *(v27 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26AEF4F20;
    *(v23 + 24) = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26AEF5000;
    *(v24 + 24) = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_26AEF504C;
    *(v28 + 24) = v24;
    v29 = swift_allocObject();
    *(v29 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_26AEF4110;
    *(v25 + 24) = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_26AEF514C;
    *(v31 + 24) = v25;
    sub_26B07A760();
    v32 = v2;

    *v32 = sub_26AEF4F84;
    v32[1] = v26;

    v32[2] = sub_26AEF4FB8;
    v32[3] = v27;

    v32[4] = sub_26AEF5098;
    v32[5] = v28;

    v32[6] = sub_26AEF50D0;
    v32[7] = v29;

    v32[8] = sub_26AEF5104;
    v32[9] = v30;

    v32[10] = sub_26AEF5198;
    v32[11] = v31;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v34))
    {
      v3 = *(v41 + 624);
      buf = sub_26B07A420();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v17 = sub_26AEA3B70(0, v15, v15);
      v18 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v44 = buf;
      v45 = v17;
      v46 = v18;
      sub_26AEA3BC4(2, &v44);
      sub_26AEA3BC4(2, &v44);
      v47 = sub_26AEF4F84;
      v48 = v26;
      sub_26AEA3BD8(&v47, &v44, &v45, &v46);
      if (v3)
      {
      }

      v47 = sub_26AEF4FB8;
      v48 = v27;
      sub_26AEA3BD8(&v47, &v44, &v45, &v46);
      v47 = sub_26AEF5098;
      v48 = v28;
      sub_26AEA3BD8(&v47, &v44, &v45, &v46);
      v47 = sub_26AEF50D0;
      v48 = v29;
      sub_26AEA3BD8(&v47, &v44, &v45, &v46);
      v47 = sub_26AEF5104;
      v48 = v30;
      sub_26AEA3BD8(&v47, &v44, &v45, &v46);
      v47 = sub_26AEF5198;
      v48 = v31;
      sub_26AEA3BD8(&v47, &v44, &v45, &v46);
      _os_log_impl(&dword_26AE88000, oslog, v34, "%s.%s: Extracting credentials from passcode challenge failed unexpectedly.", buf, 0x16u);
      sub_26AEA3C24(v17, 0, v15);
      sub_26AEA3C24(v18, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v9 = *(v41 + 632);
    v11 = *(v41 + 608);
    v12 = *(v41 + 592);
    v13 = *(v41 + 584);
    v7 = *(v41 + 520);
    v8 = *(v41 + 496);
    v10 = *(v41 + 568);
    v14 = *(v41 + 560);
    v5 = MEMORY[0x277D82BD8](oslog);
    v9(v7, v8, v5);

    v10(2, 0);

    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);

    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v38 = *(v41 + 608);
    v36 = *(v41 + 568);
    *(v41 + 328) = v42;
    *(v41 + 336) = v43;
    sub_26AE961DC(v42, v43);
    *(v41 + 344) = v42;
    *(v41 + 352) = v43;
    sub_26AEF51A4();
    sub_26AEF521C();
    v35 = sub_26B079F80();
    v37 = v1;
    *(v41 + 360) = v35;
    *(v41 + 368) = v1;

    sub_26B078640();
    v36(0, v35, v37);

    sub_26AE96418(v42, v43);
    MEMORY[0x277D82BD8](v38);
    v39 = *(v41 + 584);
    v40 = *(v41 + 560);
    MEMORY[0x277D82BD8](*(v41 + 592));
    MEMORY[0x277D82BD8](v39);

    MEMORY[0x277D82BD8](v40);
  }

  v6 = *(*(v41 + 408) + 8);

  return v6();
}

uint64_t sub_26AEF1D20(__n128 a1)
{
  v44 = v1;
  *(v1 + 408) = v1;
  swift_willThrow();
  v20 = *(v1 + 600);
  v19 = *(v1 + 488);
  v18 = *(v1 + 385);
  v17 = *(v1 + 480);
  MEMORY[0x26D66E1D0]();
  *(v1 + 464) = v20;
  sub_26B078540();

  swift_unknownObjectRetain();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = v18 & 1;
  *(v21 + 32) = v19;
  MEMORY[0x26D66E1D0](v20);
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  oslog = sub_26B078570();
  v38 = sub_26B07A2C0();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AEF47B8;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26AEF4928;
  *(v23 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26AEF4974;
  *(v29 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AEF42E8;
  *(v24 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26AEF4A74;
  *(v32 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEF4830;
  *(v26 + 24) = v25;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26AEF4B74;
  *(v35 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v36 = v2;

  *v36 = sub_26AEF48AC;
  v36[1] = v27;

  v36[2] = sub_26AEF48E0;
  v36[3] = v28;

  v36[4] = sub_26AEF49C0;
  v36[5] = v29;

  v36[6] = sub_26AEF49F8;
  v36[7] = v30;

  v36[8] = sub_26AEF4A2C;
  v36[9] = v31;

  v36[10] = sub_26AEF4AC0;
  v36[11] = v32;

  v36[12] = sub_26AEF4AF8;
  v36[13] = v33;

  v36[14] = sub_26AEF4B2C;
  v36[15] = v34;

  v36[16] = sub_26AEF4BC0;
  v36[17] = v35;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v38))
  {
    buf = sub_26B07A420();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v14 = sub_26AEA3B70(0, v12, v12);
    v15 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v39 = buf;
    v40 = v14;
    v41 = v15;
    sub_26AEA3BC4(2, &v39);
    sub_26AEA3BC4(3, &v39);
    v42 = sub_26AEF48AC;
    v43 = v27;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF48E0;
    v43 = v28;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF49C0;
    v43 = v29;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF49F8;
    v43 = v30;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF4A2C;
    v43 = v31;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF4AC0;
    v43 = v32;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF4AF8;
    v43 = v33;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF4B2C;
    v43 = v34;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF4BC0;
    v43 = v35;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_26AE88000, oslog, v38, "%s.%s: Passcode challenge failed with error '%s'", buf, 0x20u);
    sub_26AEA3C24(v14, 0, v12);
    sub_26AEA3C24(v15, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v7 = v16[64];
  v8 = v16[62];
  v9 = v16[71];
  v6 = v16[63];
  v3 = MEMORY[0x277D82BD8](oslog);
  (*(v6 + 8))(v7, v8, v3);

  v9(2, 0);

  v10 = v16[73];
  v11 = v16[70];
  MEMORY[0x277D82BD8](v16[74]);
  MEMORY[0x277D82BD8](v10);

  MEMORY[0x277D82BD8](v11);

  v4 = *(v16[51] + 8);

  return v4();
}

uint64_t sub_26AEF2B88(__n128 a1)
{
  v46 = v1;
  v18 = *(v1 + 608);
  *(v1 + 408) = v1;
  swift_willThrow();
  v2 = MEMORY[0x277D82BD8](v18);
  v22 = *(v1 + 648);
  v21 = *(v1 + 488);
  v20 = *(v1 + 385);
  v19 = *(v1 + 480);
  MEMORY[0x26D66E1D0](v2);
  *(v1 + 464) = v22;
  sub_26B078540();

  swift_unknownObjectRetain();
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = v20 & 1;
  *(v23 + 32) = v21;
  MEMORY[0x26D66E1D0](v22);
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  oslog = sub_26B078570();
  v40 = sub_26B07A2C0();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AEF47B8;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26AEF4928;
  *(v25 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26AEF4974;
  *(v31 + 24) = v25;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEF42E8;
  *(v26 + 24) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26AEF4A74;
  *(v34 + 24) = v26;
  v35 = swift_allocObject();
  *(v35 + 16) = 32;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AEF4830;
  *(v28 + 24) = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_26AEF4B74;
  *(v37 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v38 = v3;

  *v38 = sub_26AEF48AC;
  v38[1] = v29;

  v38[2] = sub_26AEF48E0;
  v38[3] = v30;

  v38[4] = sub_26AEF49C0;
  v38[5] = v31;

  v38[6] = sub_26AEF49F8;
  v38[7] = v32;

  v38[8] = sub_26AEF4A2C;
  v38[9] = v33;

  v38[10] = sub_26AEF4AC0;
  v38[11] = v34;

  v38[12] = sub_26AEF4AF8;
  v38[13] = v35;

  v38[14] = sub_26AEF4B2C;
  v38[15] = v36;

  v38[16] = sub_26AEF4BC0;
  v38[17] = v37;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v40))
  {
    buf = sub_26B07A420();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v15 = sub_26AEA3B70(0, v13, v13);
    v16 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = buf;
    v42 = v15;
    v43 = v16;
    sub_26AEA3BC4(2, &v41);
    sub_26AEA3BC4(3, &v41);
    v44 = sub_26AEF48AC;
    v45 = v29;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEF48E0;
    v45 = v30;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEF49C0;
    v45 = v31;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEF49F8;
    v45 = v32;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEF4A2C;
    v45 = v33;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEF4AC0;
    v45 = v34;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEF4AF8;
    v45 = v35;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEF4B2C;
    v45 = v36;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    v44 = sub_26AEF4BC0;
    v45 = v37;
    sub_26AEA3BD8(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_26AE88000, oslog, v40, "%s.%s: Passcode challenge failed with error '%s'", buf, 0x20u);
    sub_26AEA3C24(v15, 0, v13);
    sub_26AEA3C24(v16, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v17[64];
  v9 = v17[62];
  v10 = v17[71];
  v7 = v17[63];
  v4 = MEMORY[0x277D82BD8](oslog);
  (*(v7 + 8))(v8, v9, v4);

  v10(2, 0);

  v11 = v17[73];
  v12 = v17[70];
  MEMORY[0x277D82BD8](v17[74]);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v12);

  v5 = *(v17[51] + 8);

  return v5();
}

uint64_t sub_26AEF3A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 56) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 72) = a4;
  *(v6 + 49) = a5 & 1;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5 & 1;
  *(v6 + 32) = a6;
  sub_26B07A130();
  *(v6 + 80) = sub_26B07A120();
  v9 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AEF3AFC, v9, v7);
}

uint64_t sub_26AEF3AFC()
{
  v10 = v0;
  v3 = *(v0 + 49);
  v4 = *(v0 + 72);
  *(v0 + 56) = v0;

  *(v0 + 40) = v4;
  *(v0 + 48) = v3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  v5 = 0uLL;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  ReactiveUIManager.presentedDialog.setter(&v5);

  v1 = *(*(v0 + 56) + 8);

  return v1();
}

uint64_t sub_26AEF3C18(uint64_t a1, char a2, uint64_t a3)
{
  v10[2] = a1;
  v11 = a2;
  v12 = a3;
  v10[0] = sub_26B07A740();
  v10[1] = v3;
  v4 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v4);

  sub_26AF02FEC(&unk_287B94198);
  v5 = sub_26B079D00(".", 1, 1);
  MEMORY[0x26D66D910](v5);

  v9[0] = sub_26B079D00("presentPasscodeChallenge()", 26, 1);
  v9[1] = v6;
  sub_26B07A720();
  sub_26AE9BCC0(v9);
  v7 = sub_26B079D00(": We have have encountered invalid UI state for passcode sheet (presentation controller nil, better to crash and force reset Settings app.", 138, 1);
  MEMORY[0x26D66D910](v7);

  sub_26B078640();
  sub_26AEB9F6C(v10);
  return sub_26B079EB0();
}

uint64_t sub_26AEF3D8C(uint64_t a1, char a2, uint64_t a3)
{
  v10[2] = a1;
  v11 = a2;
  v12 = a3;
  v10[0] = sub_26B07A740();
  v10[1] = v3;
  v4 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v4);

  sub_26AF02FEC(&unk_287B94198);
  v5 = sub_26B079D00(".", 1, 1);
  MEMORY[0x26D66D910](v5);

  v9[0] = sub_26B079D00("presentPasscodeChallenge()", 26, 1);
  v9[1] = v6;
  sub_26B07A720();
  sub_26AE9BCC0(v9);
  v7 = sub_26B079D00(": We have have encountered invalid UI state for passcode sheet (presentation controller nil, better to crash and force reset Settings app.", 138, 1);
  MEMORY[0x26D66D910](v7);

  sub_26B078640();
  sub_26AEB9F6C(v10);
  return sub_26B079EB0();
}

double sub_26AEF3F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v5 = sub_26AEF5660();
    sub_26AFC8798(v10, a3, v5);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      sub_26B07A7B0();
      __break(1u);
    }

    v11 = v6;
    v3 = sub_26AEF5660();
    sub_26AFC87FC(v10, &v11, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

double sub_26AEF4140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v14 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC618, &unk_26B089DF8);
    sub_26AFC8798(v14, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v7 = sub_26B0781D0();
      v8 = v3;
      MEMORY[0x277D82BD8](a2);
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0xF000000000000000;
    }

    v15[0] = v9;
    v15[1] = v10;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC618, &unk_26B089DF8);
    sub_26AFC87FC(v14, v15, v4);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26AEF4458()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

unint64_t sub_26AEF44D8()
{
  v2 = qword_2803DC5D0;
  if (!qword_2803DC5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC5C0, &qword_26B089C50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC5D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF4560()
{
  v2 = qword_2803DD120;
  if (!qword_2803DD120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC5C8, &qword_26B089C58);
    sub_26AEE974C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF4668()
{
  v2 = qword_2803DC5E8;
  if (!qword_2803DC5E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DC5E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26AEF46CC()
{
  v2 = qword_2803DC5F0;
  if (!qword_2803DC5F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DC5F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26AEF4770()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AEF4BCC()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AEF4ED8()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

unint64_t sub_26AEF51A4()
{
  v2 = qword_2803DC608;
  if (!qword_2803DC608)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF521C()
{
  v2 = qword_2803DC610;
  if (!qword_2803DC610)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC610);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF5294(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEF53AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26AEF558C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC5C0, &qword_26B089C50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC5C8, &qword_26B089C58);
  sub_26AEF44D8();
  sub_26AEF4560();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26AEF5660()
{
  v2 = qword_2803DC620[0];
  if (!qword_2803DC620[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_2803DC620);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26AEF56C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 255)
  {
    return sub_26AE9FC2C(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_26AEF5728()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AEF5778(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) & 1;
  v10 = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEF5888;

  return sub_26AEEF660(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_26AEF5888()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEF59B0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AEF5A00(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) & 1;
  v10 = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEF5B10;

  return sub_26AEF3A0C(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_26AEF5B10()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEF5C38()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26AEF5C8C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_26AEF5D0C()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_26AEF5D60(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void SoftwareUpdateView.init(header:footer:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = 0u;
  v13 = 0u;
  v15 = a5;
  v14 = a6;

  *&v12 = a1;
  *(&v12 + 1) = a2;

  *&v13 = a3;
  *(&v13 + 1) = a4;
  sub_26AEF5EA8(&v12, a7);

  sub_26AEF5F20();
}

void *sub_26AEF5EA8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];

  *a2 = v4;
  a2[1] = v5;
  v7 = a1[2];
  v8 = a1[3];

  result = a2;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t SoftwareUpdateView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v16 = &protocol conformance descriptor for SoftwareUpdateContentView<A, B>;
  v23 = 0;
  v22 = 0;
  v12 = a1[2];
  v24[5] = v12;
  v13 = a1[3];
  v24[4] = v13;
  v14 = a1[4];
  v15 = a1[5];
  v24[0] = v12;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v24);
  v6 = (*(*(updated - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v19 = &v5 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v6);
  v21 = (&v5 - v7);
  v23 = &v5 - v7;
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v22 = v2;

  SoftwareUpdateContentView.init(header:footer:)(v8, v9, v10, v11, v12, v13, v14, v15, v19);
  WitnessTable = swift_getWitnessTable();
  sub_26AE9463C(v19, updated, v21);
  sub_26AEF6128(v19, updated);
  sub_26AEF6558(v21, v19, updated);
  sub_26AE94B4C(v19, updated, v17);
  sub_26AEF6128(v19, updated);
  return sub_26AEF6128(v21, updated);
}

uint64_t sub_26AEF6128(uint64_t a1, int *a2)
{

  v9 = a2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B0789F0();
    (*(*(v2 - 8) + 8))(a1 + v9);
  }

  else
  {
  }

  v7 = a1 + a2[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B078B00();
    (*(*(v3 - 8) + 8))(v7);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(a1 + a2[18]), *(a1 + a2[18] + 8), *(a1 + a2[18] + 16) & 1);
  v6 = a1 + a2[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B079C30();
    (*(*(v4 - 8) + 8))(v6);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AEF642C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_26AEF6474(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_26AEF6474(uint64_t result, unint64_t a2)
{
  if ((result & 0xFFFFFFFFFFFFFEFCLL) != 0x7FFFFFEFCLL || (a2 & 0xF000000000000007) != 0)
  {
    return sub_26AEF64D8(result, a2);
  }

  return result;
}

uint64_t sub_26AEF64D8(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if (v3 <= 2)
  {
  }

  return result;
}

uint64_t sub_26AEF6558(uint64_t *a1, uint64_t a2, int *a3)
{
  v48 = *a1;
  v49 = *(a1 + 8);

  *a2 = v48;
  *(a2 + 8) = v49 & 1;
  v52 = a3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B0789F0();
    (*(*(v3 - 8) + 16))();
  }

  else
  {
    v47 = *(a1 + v52);

    *(a2 + v52) = v47;
  }

  swift_storeEnumTagMultiPayload();
  v45 = (a2 + a3[14]);
  v46 = (a1 + a3[14]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B078B00();
    (*(*(v4 - 8) + 16))(v45, v46);
  }

  else
  {
    v44 = *v46;

    *v45 = v44;
  }

  swift_storeEnumTagMultiPayload();
  v31 = a2 + a3[15];
  v5 = a1 + a3[15];
  v29 = *v5;
  v30 = v5[8];

  *v31 = v29;
  *(v31 + 8) = v30 & 1;
  v34 = a2 + a3[16];
  v6 = a1 + a3[16];
  v32 = *v6;
  v33 = v6[8];

  *v34 = v32;
  *(v34 + 8) = v33 & 1;
  v37 = a2 + a3[17];
  v7 = a1 + a3[17];
  v35 = *v7;
  v36 = v7[8];
  sub_26AEF6B08();
  *v37 = v35;
  *(v37 + 8) = v36 & 1;
  v41 = a2 + a3[18];
  v8 = a1 + a3[18];
  v38 = *v8;
  v39 = *(v8 + 1);
  v40 = v8[16];
  sub_26AEF6B48(*v8, v39, v40 & 1);
  *v41 = v38;
  *(v41 + 8) = v39;
  *(v41 + 16) = v40 & 1;
  v42 = (a2 + a3[19]);
  v43 = (a1 + a3[19]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26B079C30();
    (*(*(v9 - 8) + 16))(v42, v43);
  }

  else
  {
    v28 = *v43;

    *v42 = v28;
  }

  swift_storeEnumTagMultiPayload();
  v10 = a3[20];
  v16 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v17 = *(a1 + v10 + 8);

  *(v16 + 8) = v17;
  v11 = a3[21];
  v18 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v19 = *(a1 + v11 + 8);

  *(v18 + 8) = v19;
  v12 = a3[22];
  v20 = a2 + v12;
  *(a2 + v12) = *(a1 + v12);
  v21 = *(a1 + v12 + 8);

  *(v20 + 8) = v21;
  v13 = a3[23];
  v23 = (a2 + v13);
  v22 = *(a1 + v13);
  v24 = *(a1 + v13 + 8);

  *v23 = v22;
  v23[1] = v24;
  v14 = a3[24];
  v26 = (a2 + v14);
  v25 = *(a1 + v14);
  v27 = *(a1 + v14 + 8);

  result = a2;
  *v26 = v25;
  v26[1] = v27;
  return result;
}

uint64_t sub_26AEF6B48(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_26AEF6B90(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_26AEF6B90(uint64_t result, unint64_t a2)
{
  if ((result & 0xFFFFFFFFFFFFFEFCLL) != 0x7FFFFFEFCLL || (a2 & 0xF000000000000007) != 0)
  {
    return sub_26AEF6BF4(result, a2);
  }

  return result;
}

uint64_t sub_26AEF6BF4(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if (v3 <= 2)
  {
  }

  return result;
}

void SoftwareUpdateView.init<>(header:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = 0u;
  v9 = 0u;
  v10 = a3;
  v6 = a1;
  v7 = a2;
  SoftwareUpdateView.init(header:footer:)(a1, a2, sub_26AEF6D98, 0, a3, MEMORY[0x277CE1428], v5);
  v8 = v5[0];
  v9 = v5[1];
  sub_26AEF6DF4(&v8, a4);
  sub_26AEF6E6C();
}

uint64_t sub_26AEF6D98@<X0>(uint64_t a1@<X8>)
{
  sub_26B079B90();
  v4 = MEMORY[0x277CE1428];
  sub_26AE9463C(v3, MEMORY[0x277CE1428], v3);
  return sub_26AE94B4C(v3, v4, a1);
}

void *sub_26AEF6DF4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];

  *a2 = v4;
  a2[1] = v5;
  v7 = a1[2];
  v8 = a1[3];

  result = a2;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

void SoftwareUpdateView.init<>(footer:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = 0u;
  v9 = 0u;
  v10 = a3;
  v6 = a1;
  v7 = a2;
  SoftwareUpdateView.init(header:footer:)(sub_26AEF6F74, 0, a1, a2, MEMORY[0x277CE1428], a3, v5);
  v8 = v5[0];
  v9 = v5[1];
  sub_26AEF6FD0(&v8, a4);
  sub_26AEF7048();
}

uint64_t sub_26AEF6F74@<X0>(uint64_t a1@<X8>)
{
  sub_26B079B90();
  v4 = MEMORY[0x277CE1428];
  sub_26AE9463C(v3, MEMORY[0x277CE1428], v3);
  return sub_26AE94B4C(v3, v4, a1);
}

void *sub_26AEF6FD0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];

  *a2 = v4;
  a2[1] = v5;
  v7 = a1[2];
  v8 = a1[3];

  result = a2;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

double SoftwareUpdateView.init<>()@<D0>(_OWORD *a1@<X8>)
{
  v3[2] = 0u;
  v4 = 0u;
  SoftwareUpdateView.init(header:footer:)(sub_26AEF7130, 0, sub_26AEF718C, 0, MEMORY[0x277CE1428], MEMORY[0x277CE1428], v3);
  v4 = v3[1];
  *a1 = v3[0];
  result = *&v4;
  a1[1] = v4;
  return result;
}

uint64_t sub_26AEF7130@<X0>(uint64_t a1@<X8>)
{
  sub_26B079B90();
  v4 = MEMORY[0x277CE1428];
  sub_26AE9463C(v3, MEMORY[0x277CE1428], v3);
  return sub_26AE94B4C(v3, v4, a1);
}

uint64_t sub_26AEF718C@<X0>(uint64_t a1@<X8>)
{
  sub_26B079B90();
  v4 = MEMORY[0x277CE1428];
  sub_26AE9463C(v3, MEMORY[0x277CE1428], v3);
  return sub_26AE94B4C(v3, v4, a1);
}

uint64_t sub_26AEF7254()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26AEF72B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEF73F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26AEF75EC(uint64_t *a1)
{
  v6 = *a1;
  v5 = a1[1];
  v1 = a1[2];
  v2 = a1[3];
  v4[0] = v6;
  v4[1] = v5;
  v4[2] = v1;
  v4[3] = v2;
  type metadata accessor for SoftwareUpdateContentView(255, v4);
  return swift_getWitnessTable();
}

void *sub_26AEF7684(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  v3 = a1[3];
  sub_26B078640();
  a2[3] = v3;
  a2[4] = a1[4];
  v4 = a1[5];
  sub_26B078640();
  a2[5] = v4;
  a2[6] = a1[6];
  v5 = a1[7];

  a2[7] = v5;
  v6 = a1[8];

  a2[8] = v6;
  v8 = a1[9];

  a2[9] = v8;
  v10 = a1[10];

  result = a2;
  a2[10] = v10;
  return result;
}

void *sub_26AEF7774(void *a1)
{
  sub_26AEF7684(a1, v4);
  sub_26AEF77B4(a1, v2);
  result = a1;
  sub_26AEF788C(a1);
  return result;
}

void *sub_26AEF77B4(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = a1[3];

  a2[4] = a1[4];
  a2[5] = a1[5];

  a2[6] = a1[6];
  a2[7] = a1[7];

  a2[8] = a1[8];

  a2[9] = a1[9];

  a2[10] = a1[10];

  return a2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26AEF788C(uint64_t a1)
{
}

uint64_t sub_26AEF78F4()
{
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_26AEF7980(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8, &qword_26B089F50);
  sub_26B078A10();
  sub_26AEF7A0C(&v4);
  return v2 & 1;
}

uint64_t sub_26AEF7980(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_26AEF79D8(*a1, v4 & 1);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26AEF79D8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26AEF7A44(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26AEF7A78()
{
  v2 = *(v0 + 88);
  sub_26AEF79D8(v2, *(v0 + 96) & 1);
  return v2;
}

uint64_t sub_26AEF7AB8(uint64_t a1, char a2)
{
  sub_26AEF79D8(a1, a2 & 1);
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2 & 1;
  sub_26AEF7A44(v3, v4 & 1);
  return sub_26AEF7A44(a1, a2 & 1);
}

void *sub_26AEF7B1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x61uLL);
  v8 = a1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[11] = v6[11];
  LOBYTE(__b[12]) = v7 & 1;
  sub_26AEF7684(a1, v6);
  memcpy(__b, a1, 0x58uLL);
  memcpy(v10, __b, 0x61uLL);
  sub_26AEF86C0(v10, v5);
  sub_26AEF788C(a1);
  sub_26AEF87E8(__b);
  return memcpy(a2, v10, 0x61uLL);
}

uint64_t sub_26AEF7C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v8 = a1;
  v3 = v2;
  v4 = v8;
  v42 = v3;
  v49 = MEMORY[0x277CDE668];
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v25 = 0;
  v46 = sub_26B078FC0();
  v38 = *(v46 - 8);
  v39 = v46 - 8;
  v9 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v40 = &v8 - v9;
  v23 = sub_26B078A00();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v22 = &v8 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B0, &qword_26B089F88);
  v11 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v27 = &v8 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B8, &qword_26B089F90);
  v12 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v30 = &v8 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6C0, &qword_26B089F98);
  v13 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v37 = &v8 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6C8, &qword_26B089FA0);
  v14 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v41 = &v8 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6D0, &qword_26B089FA8);
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v15 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v53 = &v8 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6D8, &qword_26B089FB0);
  v17 = *(*(v56 - 8) + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v58 = &v8 - v16;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v59 = &v8 - v18;
  v70 = &v8 - v18;
  v69 = v4;
  v68 = v42;
  (*(v20 + 104))(v6);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6E0, &qword_26B089FB8);
  sub_26AEF8864();
  sub_26B079420();
  (*(v20 + 8))(v22, v23);
  v26 = sub_26AEF88EC();
  sub_26AEAABD4();
  sub_26B079600();
  sub_26AEF8A1C(v27);
  v29 = sub_26AEF835C();
  sub_26AEF8B10();
  sub_26B0794D0();

  sub_26AEF8BB4(v30);
  v31 = __dst;
  v43 = 88;
  memcpy(__dst, v42, sizeof(__dst));
  sub_26AEF7684(__dst, v67);
  v74 = __dst[7];
  sub_26AEF8CA8(&v74, &v66);
  sub_26AEF788C(v31);
  v36 = &v65;
  v65 = v74;
  v34 = sub_26AEF8CE0();
  v33 = MEMORY[0x277CE0F78];
  v35 = MEMORY[0x277CE0F60];
  sub_26AEF8488(v32, MEMORY[0x277CE0F78]);
  sub_26B0793C0();
  sub_26AEF8E10();
  sub_26AEF8E3C(v37);
  sub_26AEF84B0();
  v47 = sub_26AEF8F6C();
  v48 = sub_26AEF909C();
  sub_26B079400();
  (*(v38 + 8))(v40, v46);
  sub_26AEF911C(v41);
  v44 = v71;
  memcpy(v71, v42, v43);
  sub_26AEF7684(v44, v64);
  v50 = v72;
  sub_26AEF788C(v44);
  v60 = v45;
  v61 = v46;
  v62 = v47;
  v63 = v48;
  swift_getOpaqueTypeConformance2();
  sub_26B079660();
  (*(v51 + 8))(v53, v54);
  v57 = sub_26AEF9274();
  sub_26AE9463C(v58, v56, v59);
  sub_26AEF9390(v58);
  sub_26AEF93F8(v59, v58);
  sub_26AE94B4C(v58, v56, v55);
  sub_26AEF9390(v58);
  return sub_26AEF9390(v59);
}

uint64_t sub_26AEF835C()
{
  v12 = v0;
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  sub_26AEF7980(&v15, v11);
  v9 = v15;
  v10 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8, &qword_26B089F50);
  sub_26B078A10();
  sub_26AEF7A0C(&v15);
  if (v8)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_26AEF7684(__dst, v6);
    v3 = __dst[8];

    sub_26AEF788C(__dst);
    return v3;
  }

  else
  {
    memcpy(v14, __src, sizeof(v14));
    sub_26AEF7684(v14, v7);
    v2 = v14[10];

    sub_26AEF788C(v14);
    return v2;
  }
}

uint64_t sub_26AEF8564@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = a2;
  v9[1] = a1;
  v14 = sub_26B078D30();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v14);
  v15 = v9 - v10;
  (*(v12 + 16))(v9 - v10, v2);
  v3 = sub_26B078D10();
  v4 = v12;
  v5 = v14;
  v6 = v3;
  v7 = v15;
  *v11 = v6 & 1;
  return (*(v4 + 8))(v7, v5);
}

uint64_t sub_26AEF86C0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_26B078640();
  *(a2 + 40) = v4;
  *(a2 + 48) = *(a1 + 48);
  v5 = *(a1 + 56);

  *(a2 + 56) = v5;
  v6 = *(a1 + 64);

  *(a2 + 64) = v6;
  v7 = *(a1 + 72);

  *(a2 + 72) = v7;
  v8 = *(a1 + 80);

  *(a2 + 80) = v8;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  sub_26AEF79D8(v10, v11 & 1);
  result = a2;
  *(a2 + 88) = v10;
  *(a2 + 96) = v11 & 1;
  return result;
}

uint64_t sub_26AEF87E8(uint64_t a1)
{

  sub_26AEF7A44(*(a1 + 88), *(a1 + 96) & 1);
  return a1;
}

unint64_t sub_26AEF8864()
{
  v2 = qword_2803DC6E8;
  if (!qword_2803DC6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6E0, &qword_26B089FB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC6E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF88EC()
{
  v2 = qword_2803DC6F0;
  if (!qword_2803DC6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6B0, &qword_26B089F88);
    sub_26AEF8864();
    sub_26AEF8994();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC6F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF8994()
{
  v2 = qword_2803DC6F8;
  if (!qword_2803DC6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC700, &unk_26B089FC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC6F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF8A1C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6E0, &qword_26B089FB8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B0, &qword_26B089F88) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

unint64_t sub_26AEF8B10()
{
  v2 = qword_2803DC708;
  if (!qword_2803DC708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6B8, &qword_26B089F90);
    sub_26AEF88EC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC708);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF8BB4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6E0, &qword_26B089FB8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B0, &qword_26B089F88) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

void *sub_26AEF8CA8(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_26AEF8CE0()
{
  v2 = qword_2803DC710;
  if (!qword_2803DC710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6C0, &qword_26B089F98);
    sub_26AEF8B10();
    sub_26AEF8D88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF8D88()
{
  v2 = qword_2803DE630;
  if (!qword_2803DE630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCC40, &unk_26B08A3C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE630);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF8E3C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6E0, &qword_26B089FB8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B0, &qword_26B089F88) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6C0, &qword_26B089F98);

  return a1;
}

unint64_t sub_26AEF8F6C()
{
  v2 = qword_2803DC718;
  if (!qword_2803DC718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6C8, &qword_26B089FA0);
    sub_26AEF8CE0();
    sub_26AEF9014();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC718);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF9014()
{
  v2 = qword_2803DD110;
  if (!qword_2803DD110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC720, &qword_26B089FD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF909C()
{
  v2 = qword_2803DC728;
  if (!qword_2803DC728)
  {
    sub_26B078FC0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC728);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF911C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6E0, &qword_26B089FB8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B0, &qword_26B089F88) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6C0, &qword_26B089F98);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6C8, &qword_26B089FA0);

  return a1;
}

unint64_t sub_26AEF9274()
{
  v2 = qword_2803DC730;
  if (!qword_2803DC730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6D8, &qword_26B089FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6C8, &qword_26B089FA0);
    sub_26B078FC0();
    sub_26AEF8F6C();
    sub_26AEF909C();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC730);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF9390(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6D0, &qword_26B089FA8);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AEF93F8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6D0, &qword_26B089FA8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6D8, &qword_26B089FB0);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_26AEF94E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEF95F8(uint64_t result, int a2, int a3)
{
  v3 = (result + 97);
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 96) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 24) = (a2 - 1);
    }
  }

  return result;
}

uint64_t Observable<>.observe<A, B, C>(_:of:at:using:sink:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v69 = a1;
  v41[1] = a2;
  v78 = a3;
  v51 = a4;
  v72 = a5;
  v73 = a6;
  v61 = a7;
  v80 = sub_26AEFA7FC;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v90 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v43 = *a1;
  v46 = *a3;
  v41[2] = 0;
  v66 = sub_26B078360();
  v62 = *(v66 - 8);
  v63 = v66 - 8;
  v54 = v62;
  v55 = *(v62 + 64);
  v42 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v65 = v41 - v42;
  v8 = *MEMORY[0x277D84DE8];
  v45 = v43;
  v76 = *(v43 + v8);
  v96 = v76;
  v74 = *(v76 - 8);
  v75 = v76 - 8;
  v56 = v74;
  v57 = *(v74 + 64);
  v44 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v68 = v41 - v44;
  MEMORY[0x28223BE20](v10);
  v77 = v41 - v11;
  v95 = v41 - v11;
  v94 = v69;
  v13 = *v12;
  v47 = 8;
  v59 = *(v45 + v13 + 8);
  v93 = v59;
  v92 = v14;
  v58 = *(v46 + *v12);
  v91 = v58;
  v90 = v15;
  v60 = *(v46 + *v12 + 8);
  v89 = v60;
  v88 = v16;
  v86 = v17;
  v87 = v18;
  v85 = v7;
  v49 = &v84;
  v84 = v14;
  type metadata accessor for NSKeyValueObservingOptions(v19);
  sub_26B07A760();
  v20 = v47;
  *v21 = 4;
  v21[1] = v20;
  v21[2] = 1;
  sub_26AEA3B2C();
  v48 = v22;
  sub_26AE9A844();
  sub_26B07A4C0();
  v79 = v83;
  v53 = *(v74 + 16);
  v52 = v74 + 16;
  v53(v77, v50, v76);
  (*(v62 + 16))(v65, v51, v66);
  v53(v68, v77, v76);

  sub_26AEFA5DC(v72);
  v64 = (*(v54 + 80) + 56) & ~*(v54 + 80);
  v67 = (v64 + v55 + *(v56 + 80)) & ~*(v56 + 80);
  v70 = (v67 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v58;
  v25 = v59;
  v26 = v60;
  v27 = v61;
  v28 = v62;
  v29 = v64;
  v30 = v65;
  v31 = v66;
  v81 = v23;
  v23[2] = v76;
  v23[3] = v24;
  v23[4] = v25;
  v23[5] = v26;
  v23[6] = v27;
  (*(v28 + 32))(v23 + v29, v30, v31);
  (*(v74 + 32))(v81 + v67, v68, v76);
  v32 = v71;
  v33 = v72;
  v34 = v73;
  v35 = v74;
  v36 = v76;
  v37 = v81;
  v38 = v77;
  *(v81 + v70) = v69;
  v39 = (v37 + v32);
  *v39 = v33;
  v39[1] = v34;
  (*(v35 + 8))(v38, v36);
  v82 = sub_26B078170();

  return v82;
}

uint64_t sub_26AEF9EB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v78 = a5;
  v81 = a6;
  v82 = a7;
  v59 = a8;
  v61 = a9;
  v62 = a10;
  v58 = MEMORY[0x277D85700];
  v85 = &unk_26B08A170;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v97 = a8;
  v96 = a9;
  v10 = *a5;
  v44 = MEMORY[0x277D84DE8];
  v11 = *MEMORY[0x277D84DE8];
  v83 = 0;
  v47 = v10;
  v77 = *(v10 + v11);
  v95 = v77;
  v73 = *(v77 - 8);
  v74 = v77 - 8;
  v55 = v73;
  v56 = *(v73 + 64);
  v41 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v76 = &v40 - v41;
  v72 = sub_26B078360();
  v68 = *(v72 - 8);
  v69 = v72 - 8;
  v53 = v68;
  v54 = *(v68 + 64);
  v42 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v71 = &v40 - v42;
  v67 = sub_26B078160();
  v63 = *(v67 - 8);
  v64 = v67 - 8;
  v51 = v63;
  v52 = *(v63 + 64);
  v43 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v66 = &v40 - v43;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v84 = &v40 - v45;
  v94 = *v46;
  v93 = v12;
  v92 = v13;
  v91 = v14;
  v90 = v15;
  v60 = *(v47 + *v16 + 8);
  v89 = v60;
  v87 = v17;
  v88 = v18;
  v19 = sub_26B07A160();
  (*(*(v19 - 8) + 56))(v84, 1);
  (*(v63 + 16))(v66, v48, v67);
  (*(v68 + 16))(v71, v49, v72);
  (*(v73 + 16))(v76, v50, v77);

  sub_26AEFA5DC(v81);
  sub_26B07A130();
  v57 = sub_26B07A120();
  v65 = (*(v51 + 80) + 72) & ~*(v51 + 80);
  v70 = (v65 + v52 + *(v53 + 80)) & ~*(v53 + 80);
  v75 = (v70 + v54 + *(v55 + 80)) & ~*(v55 + 80);
  v79 = (v75 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v58;
  v22 = v59;
  v23 = v60;
  v24 = v61;
  v25 = v62;
  v26 = v63;
  v27 = v65;
  v28 = v66;
  v29 = v67;
  v30 = v77;
  v86 = v20;
  v20[2] = v57;
  v20[3] = v21;
  v20[4] = v30;
  v20[5] = v22;
  v20[6] = v23;
  v20[7] = v24;
  v20[8] = v25;
  (*(v26 + 32))(v20 + v27, v28, v29);
  (*(v68 + 32))(v86 + v70, v71, v72);
  (*(v73 + 32))(v86 + v75, v76, v77);
  v31 = v80;
  v32 = v81;
  v33 = v82;
  v34 = v83;
  v35 = v84;
  v36 = v85;
  v37 = v86;
  *(v86 + v79) = v78;
  v38 = (v37 + v31);
  *v38 = v32;
  v38[1] = v33;
  sub_26AEBC0C4(v34, v34, v35, v36, v37, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_26AEFA5DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26AEFA610()
{
  v6 = *(v0 + 16);
  v3 = *(sub_26B078360() - 8);
  v1 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v4 = *(v6 - 8);
  v5 = (v1 + *(v3 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v7 = (((v5 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v1);
  (*(v4 + 8))(v0 + v5, v6);

  if (*(v0 + v7))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AEFA7FC(uint64_t *a1, uint64_t a2)
{
  v7 = v2[2];
  v10 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v13 = *(sub_26B078360() - 8);
  v3 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v14 = *(v7 - 8);
  v4 = (v3 + *(v13 + 64) + *(v14 + 80)) & ~*(v14 + 80);
  v5 = (v4 + *(v14 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_26AEF9EB0(a1, a2, v2 + v3, v2 + v4, *(v2 + v5), *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v10, v8, v9);
}

uint64_t sub_26AEFA968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v20;
  v8[15] = v19;
  v8[14] = v18;
  v8[13] = a8;
  v8[12] = a7;
  v8[11] = a6;
  v8[10] = a5;
  v8[9] = a4;
  v8[4] = v8;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v8[17] = sub_26B07A430();
  v8[18] = swift_task_alloc();
  v8[19] = *(v19 - 8);
  v8[20] = swift_task_alloc();
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[2] = a8;
  v8[3] = v18;
  sub_26B07A130();
  v8[21] = sub_26B07A120();
  v16 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AEFAB88, v16, v9);
}

uint64_t sub_26AEFAB88(double a1)
{
  *(v1 + 32) = v1;
  sub_26B078160();
  if (sub_26B078150())
  {
    sub_26B078340();
  }

  else
  {
    v6 = v8[18];
    v7 = v8[15];
    v5 = v8[19];
    sub_26B078330();
    sub_26B078140();
    if ((*(v5 + 48))(v6, 1, v7) == 1)
    {
      sub_26AEFB520(v8[18], v8[15]);
    }

    else
    {
      v4 = v8[13];
      (*(v8[19] + 32))(v8[20], v8[18], v8[15]);
      sub_26AEFA5DC(v4);
      if (v4)
      {
        (v8[13])(v8[20]);
      }

      (*(v8[19] + 8))(v8[20], v8[15]);
    }
  }

  v2 = *(v8[4] + 8);

  return v2();
}

uint64_t sub_26AEFAE98(double a1)
{
  v12 = *(v1 + 32);
  v6 = sub_26B078160();
  v4 = *(v6 - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v3 = v5 + *(v4 + 64);
  v9 = sub_26B078360();
  v7 = *(v9 - 8);
  v8 = (v3 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v12 - 8);
  v11 = (v8 + *(v7 + 64) + *(v10 + 80)) & ~*(v10 + 80);
  v13 = (((v11 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v5, v6);
  (*(v7 + 8))(v1 + v8, v9);
  (*(v10 + 8))(v1 + v11, v12);

  if (*(v1 + v13))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AEFB15C(uint64_t a1, double a2)
{
  v12 = v3;
  *(v3 + 16) = v3;
  v10 = v2[4];
  v8 = *(sub_26B078160() - 8);
  v15 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v9 = v15 + *(v8 + 64);
  v4 = sub_26B078360();
  v16 = (v9 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v11 = *(v10 - 8);
  v17 = (v16 + *(*(v4 - 8) + 64) + *(v11 + 80)) & ~*(v11 + 80);
  v5 = (v17 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v2[2];
  v14 = v2[3];
  v18 = *(v2 + v5);
  v19 = *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v12 + 24) = v6;
  *v6 = *(v12 + 16);
  v6[1] = sub_26AEFB3F8;

  return sub_26AEFA968(a1, v13, v14, v2 + v15, v2 + v16, v2 + v17, v18, v19);
}

uint64_t sub_26AEFB3F8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEFB520(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_26AEFB5DC(uint64_t a1, char a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v3;
}

uint64_t sub_26AEFB68C(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AEFB6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v32 = a1;
  v45 = a2;
  LODWORD(v39) = a3;
  v35 = MEMORY[0x277D85700];
  v44 = 0;
  v38 = sub_26AEFC08C;
  v37 = sub_26AEFC104;
  v41 = sub_26AEFC8F4;
  v43 = sub_26AEFD7E8;
  v57 = MEMORY[0x277CDEDF8];
  v86 = 0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v29 = 0;
  v22 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v28 = &v21 - v22;
  v4 = sub_26B079DE0();
  v23 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v26 = &v21 - v23;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC738, &qword_26B08A178);
  v58 = *(v64 - 8);
  v59 = v64 - 8;
  v24 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v62 = &v21 - v24;
  v25 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v63 = &v21 - v25;
  v86 = &v21 - v25;
  v85 = v8;
  v83 = v9;
  HIDWORD(v39) = 1;
  v84 = v10 & 1;
  sub_26B079D00("Remove Security Response", 24, 1, v7);
  sub_26B079D80();
  v27 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v27);
  sub_26AEFB5C4();
  v81[2] = 0;
  v81[3] = 0;
  v82 = *(&v39 + 3) & 0x100;
  v11 = sub_26B079E40();
  v48 = v81;
  v81[0] = v11;
  v81[1] = v12;

  v30 = sub_26B07A130();
  v31 = sub_26B07A120();
  v33 = 7;
  v13 = swift_allocObject();
  v14 = v35;
  v15 = v39;
  v16 = BYTE4(v39);
  v17 = v45;
  v36 = v13;
  *(v13 + 16) = v31;
  *(v13 + 24) = v14;
  *(v13 + 32) = v17;
  *(v13 + 40) = v15 & 1 & v16;
  v34 = sub_26B07A120();
  v18 = swift_allocObject();
  v19 = v35;
  *(v18 + 16) = v34;
  *(v18 + 24) = v19;
  sub_26B0799F0();
  v46 = v78;
  v47 = v79;
  v40 = v80;

  v42 = &v67;
  v68 = v45;
  v69 = v39 & 1 & BYTE4(v39);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC740, &qword_26B08A180);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC748, &qword_26B08A188);
  v53 = sub_26AEFD9B8();
  v54 = sub_26AE95974();
  v55 = sub_26AEFDA40();
  v50 = MEMORY[0x277D837D0];
  v52 = MEMORY[0x277CE0BD8];
  v56 = MEMORY[0x277CE0BC8];
  sub_26B0795E0();

  sub_26AE9BCC0(v48);
  v70 = v49;
  v71 = v50;
  v72 = v51;
  v73 = v52;
  v74 = v53;
  v75 = v54;
  v76 = v55;
  v77 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v62, v64, v63);
  v66 = *(v58 + 8);
  v65 = v58 + 8;
  v66(v62, v64);
  (*(v58 + 16))(v62, v63, v64);
  sub_26AE94B4C(v62, v64, v60);
  v66(v62, v64);
  return (v66)(v63, v64);
}

uint64_t sub_26AEFBE7C@<X0>(uint64_t a1@<X2>, char a2@<W3>, _BYTE *a3@<X8>)
{
  v11 = a1;
  v12 = a2 & 1;

  v9 = a1;
  v10 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(v7);
  if (v8 == 255)
  {
  }

  else
  {
    if (v8 == 4)
    {

      *a3 = 1;
      return result;
    }

    sub_26AEA00D4(v7[0], v7[1], v7[2], v7[3], v7[4], v8);
  }

  *a3 = 0;
  return result;
}

uint64_t sub_26AEFC044()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26AEFC110@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v47 = a1;
  LODWORD(v48) = a2;
  v50 = sub_26AEFE048;
  v33 = sub_26AEFE098;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v68 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
  v34 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v49 = &v27[-v34 - 5];
  v46 = 0;
  v35 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v45 = &v27[-v35 - 5];
  v4 = sub_26B079DE0();
  v36 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v43 = &v27[-v36 - 5];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20, &qword_26B0881A0);
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v37 = (v56[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v38 = &v27[-v37 - 5];
  v39 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v40 = &v27[-v39 - 5];
  v41 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v61 = &v27[-v41 - 5];
  v42 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v10);
  v54 = &v27[-v42 - 5];
  v73 = &v27[-v42 - 5];
  v71 = v12;
  HIDWORD(v48) = 1;
  v72 = v13 & 1;
  sub_26B079D00("Cancel", 6, 1, v11);
  sub_26B079D80();
  v44 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v44);
  sub_26AEFB5C4();
  v69[2] = 0;
  v69[3] = 0;
  v70 = *(&v48 + 3) & 0x100;
  v14 = sub_26B079E40();
  v52 = v69;
  v69[0] = v14;
  v69[1] = v15;
  sub_26B078970();
  v16 = sub_26B078980();
  (*(*(v16 - 8) + 56))(v49, 0, HIDWORD(v48));

  v17 = swift_allocObject();
  v18 = v48;
  v19 = BYTE4(v48);
  v51 = v17;
  *(v17 + 16) = v47;
  *(v17 + 24) = v18 & 1 & v19;
  v53 = sub_26AE95974();
  sub_26B079910();
  v55 = sub_26AE9C224();
  sub_26AE9463C(v61, v58, v54);
  v59 = v56[1];
  v60 = v56 + 1;
  v59(v61, v58);
  v68 = v61;
  *&v27[1] = 1;
  sub_26B079D00("Restart Now", 11, 1);
  sub_26B079D80();
  v26 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v26);
  sub_26AEFB5C4();
  v66[2] = 0;
  v66[3] = 0;
  v67 = *v27 & 0x100;
  v20 = sub_26B079E40();
  v28 = v66;
  v66[0] = v20;
  v66[1] = v21;

  v22 = swift_allocObject();
  v23 = v48;
  v24 = v27[1];
  *(v22 + 16) = v47;
  *(v22 + 24) = v23 & 1 & v24;
  sub_26B079920();
  sub_26AE9463C(v40, v58, v61);
  v59(v40, v58);
  v30 = v56[2];
  v29 = v56 + 2;
  v30(v40, v54, v58);
  v31 = v65;
  v65[0] = v40;
  v30(v38, v61, v58);
  v65[1] = v38;
  v64[0] = v58;
  v64[1] = v58;
  v62 = v55;
  v63 = v55;
  sub_26AFD49C4(v31, 2uLL, v64, v32);
  v59(v38, v58);
  v59(v40, v58);
  v59(v61, v58);
  return (v59)(v54, v58);
}

uint64_t sub_26AEFC904(uint64_t a1, int a2)
{
  v51 = a2;
  v50 = a1;
  v82 = 0;
  v58 = 0;
  v81 = 0;
  v67 = 0;
  v66 = 0;
  v48 = 0;
  v49 = a2;
  v52 = sub_26B078580();
  v53 = *(v52 - 8);
  v54 = v53;
  MEMORY[0x28223BE20](v50);
  v55 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v3;
  v82 = v4 & 1;
  sub_26B078550();
  v60 = sub_26B078570();
  v56 = v60;
  v59 = sub_26B07A2A0();
  v57 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v61 = sub_26B07A760();
  if (os_log_type_enabled(v60, v59))
  {
    v5 = v48;
    v39 = sub_26B07A420();
    v35 = v39;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v37 = 0;
    v40 = sub_26AEA3B70(0, v36, v36);
    v38 = v40;
    v41 = sub_26AEA3B70(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v65 = v39;
    v64 = v40;
    v63 = v41;
    v42 = 0;
    v43 = &v65;
    sub_26AEA3BC4(0, &v65);
    sub_26AEA3BC4(v42, v43);
    v62 = v61;
    v44 = v8;
    MEMORY[0x28223BE20](v8);
    v45 = &v8[-6];
    v8[-4] = v6;
    v8[-3] = &v64;
    v8[-2] = &v63;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v47 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v56, v57, "User Action: Clicked 'Cancel' on the Remove Security Response dialog.", v35, 2u);
      v33 = 0;
      sub_26AEA3C24(v38, 0, v36);
      sub_26AEA3C24(v41, v33, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v34 = v47;
    }
  }

  else
  {

    v34 = v48;
  }

  (*(v54 + 8))(v55, v52);

  v79 = v50;
  v80 = v49 & 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v26 = v78;

  ReactiveUIManager.presentedDialog.getter(v76);
  v27 = v76[0];
  v28 = v76[1];
  v29 = v76[2];
  v30 = v76[3];
  v31 = v76[4];
  v32 = v77;
  if (v77 != 255)
  {
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v13 = v24;
    v14 = v23;
    v15 = v22;
    v16 = v21;
    v17 = v20;
    v18 = v19;
    if (v24 == 4)
    {
      v11 = v18;
      v12 = v17;
      v10 = v17;
      v9 = v18;
      v66 = v18;
      v67 = v17;

      v9(2);
    }

    else
    {
      sub_26AEA00D4(v18, v17, v16, v15, v14, v13);
    }
  }

  v74 = v50;
  v75 = v49 & 1;
  sub_26B078A10();
  v8[1] = v73;

  v68 = 0uLL;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = -1;
  ReactiveUIManager.presentedDialog.setter(&v68);
}

uint64_t sub_26AEFD078(uint64_t a1, int a2)
{
  v51 = a2;
  v50 = a1;
  v82 = 0;
  v58 = 0;
  v81 = 0;
  v67 = 0;
  v66 = 0;
  v48 = 0;
  v49 = a2;
  v52 = sub_26B078580();
  v53 = *(v52 - 8);
  v54 = v53;
  MEMORY[0x28223BE20](v50);
  v55 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v3;
  v82 = v4 & 1;
  sub_26B078550();
  v60 = sub_26B078570();
  v56 = v60;
  v59 = sub_26B07A2A0();
  v57 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v61 = sub_26B07A760();
  if (os_log_type_enabled(v60, v59))
  {
    v5 = v48;
    v39 = sub_26B07A420();
    v35 = v39;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v37 = 0;
    v40 = sub_26AEA3B70(0, v36, v36);
    v38 = v40;
    v41 = sub_26AEA3B70(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v65 = v39;
    v64 = v40;
    v63 = v41;
    v42 = 0;
    v43 = &v65;
    sub_26AEA3BC4(0, &v65);
    sub_26AEA3BC4(v42, v43);
    v62 = v61;
    v44 = v8;
    MEMORY[0x28223BE20](v8);
    v45 = &v8[-6];
    v8[-4] = v6;
    v8[-3] = &v64;
    v8[-2] = &v63;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v47 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v56, v57, "User Action: Clicked 'Restart Now' on the Remove Security Response dialog.", v35, 2u);
      v33 = 0;
      sub_26AEA3C24(v38, 0, v36);
      sub_26AEA3C24(v41, v33, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v34 = v47;
    }
  }

  else
  {

    v34 = v48;
  }

  (*(v54 + 8))(v55, v52);

  v79 = v50;
  v80 = v49 & 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v26 = v78;

  ReactiveUIManager.presentedDialog.getter(v76);
  v27 = v76[0];
  v28 = v76[1];
  v29 = v76[2];
  v30 = v76[3];
  v31 = v76[4];
  v32 = v77;
  if (v77 != 255)
  {
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v13 = v24;
    v14 = v23;
    v15 = v22;
    v16 = v21;
    v17 = v20;
    v18 = v19;
    if (v24 == 4)
    {
      v11 = v18;
      v12 = v17;
      v10 = v17;
      v9 = v18;
      v66 = v18;
      v67 = v17;

      v9(0);
    }

    else
    {
      sub_26AEA00D4(v18, v17, v16, v15, v14, v13);
    }
  }

  v74 = v50;
  v75 = v49 & 1;
  sub_26B078A10();
  v8[1] = v73;

  v68 = 0uLL;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = -1;
  ReactiveUIManager.presentedDialog.setter(&v68);
}

uint64_t sub_26AEFD7E8@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00("A restart is required to continue removal.", 42, 1);
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

unint64_t sub_26AEFD9B8()
{
  v2 = qword_2803DC750;
  if (!qword_2803DC750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC740, &qword_26B08A180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEFDA40()
{
  v2 = qword_2803DCB70;
  if (!qword_2803DCB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748, &qword_26B08A188);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEFDAC8()
{
  swift_getKeyPath();
  sub_26B078A30();

  sub_26AEFDFDC();
  return v1;
}

uint64_t sub_26AEFDBB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 9))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEFDCDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26AEFDEA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC740, &qword_26B08A180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748, &qword_26B08A188);
  sub_26AEFD9B8();
  sub_26AE95974();
  sub_26AEFDA40();
  return swift_getOpaqueTypeConformance2();
}

void *sub_26AEFE128(void *a1)
{
  sub_26AEF7684(a1, v4);
  sub_26AEF77B4(a1, v2);
  result = a1;
  sub_26AEF788C(a1);
  return result;
}

uint64_t sub_26AEFE168()
{
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_26AEF7980(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8, &qword_26B089F50);
  sub_26B078A10();
  sub_26AEF7A0C(&v4);
  return v2 & 1;
}

uint64_t sub_26AEFE1F4()
{
  v2 = *(v0 + 88);
  sub_26AEF79D8(v2, *(v0 + 96) & 1);
  return v2;
}

uint64_t sub_26AEFE234(uint64_t a1, char a2)
{
  sub_26AEF79D8(a1, a2 & 1);
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2 & 1;
  sub_26AEF7A44(v3, v4 & 1);
  return sub_26AEF7A44(a1, a2 & 1);
}

void *sub_26AEFE298@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x61uLL);
  v8 = a1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[11] = v6[11];
  LOBYTE(__b[12]) = v7 & 1;
  sub_26AEF7684(a1, v6);
  memcpy(__b, a1, 0x58uLL);
  memcpy(v10, __b, 0x61uLL);
  sub_26AEFF050(v10, v5);
  sub_26AEF788C(a1);
  sub_26AEFF178(__b);
  return memcpy(a2, v10, 0x61uLL);
}

uint64_t sub_26AEFE37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v3 = v2;
  v85 = v3;
  v80 = MEMORY[0x277CDE668];
  v33 = MEMORY[0x277CE0C08];
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v68 = 0;
  v34 = (*(*(sub_26B078E30() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v35 = v25 - v34;
  v36 = sub_26B079A10();
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v38 = v25 - v37;
  v77 = sub_26B0790F0();
  v72 = *(v77 - 8);
  v73 = v77 - 8;
  v39 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v74 = v25 - v39;
  v66 = sub_26B078A00();
  v63 = *(v66 - 8);
  v64 = v66 - 8;
  v40 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66);
  v65 = v25 - v40;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC760, &qword_26B08A378);
  v41 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v71 = v25 - v41;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC768, &qword_26B08A380);
  v42 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v75 = v25 - v42;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC770, &qword_26B08A388);
  v86 = *(v89 - 8);
  v87 = v89 - 8;
  v43 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v89);
  v88 = v25 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC778, &qword_26B08A390);
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v81 = v25 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC780, &qword_26B08A398);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v50 = v25 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC788, &qword_26B08A3A0);
  v52 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v53 = v25 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC790, &qword_26B08A3A8);
  v58 = *(*(v54 - 8) + 64);
  v55 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v56 = v25 - v55;
  v57 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v59 = v25 - v57;
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v61 = v25 - v60;
  v103 = v25 - v60;
  v102 = a1;
  v101 = v85;
  (*(v63 + 104))(v7);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC798, &unk_26B08A3B0);
  sub_26AEFF1F4();
  sub_26B079420();
  (*(v63 + 8))(v65, v66);
  v69 = sub_26AEFF27C();
  v8 = sub_26AEAABD4();
  v70 = &v17;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 1;
  v21 = v8;
  v22 = v9;
  v23 = v67;
  v24 = v69;
  v83 = 0;
  sub_26B079600();
  sub_26AEFF324(v71);
  sub_26AEFEDB0();
  v78 = sub_26AEFF418();
  v79 = sub_26AEFF4BC(v10);
  sub_26B079400();
  (*(v72 + 8))(v74, v77);
  sub_26AEFF53C(v75);
  sub_26B0791F0();
  v82 = v11;
  v100[2] = v76;
  v100[3] = v77;
  v100[4] = v78;
  v100[5] = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26B0793D0();
  v12 = v85;
  (*(v86 + 8))(v88, v89);
  v13 = v12[11];
  v90 = &v106;
  v106 = v13;
  v107 = *(v12 + 96);
  sub_26AEF7980(&v106, v100);
  v98 = v106;
  v99 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8, &qword_26B089F50);
  sub_26B078A10();
  v91 = v97;
  sub_26AEF7A0C(v90);
  if (v91)
  {
    v28 = __dst;
    memcpy(__dst, v85, sizeof(__dst));
    sub_26AEF7684(__dst, v92);
    v29 = __dst[8];

    sub_26AEF788C(v28);
    v30 = v29;
  }

  else
  {
    v26 = v105;
    memcpy(v105, v85, sizeof(v105));
    sub_26AEF7684(v105, v96);
    v27 = v105[10];

    sub_26AEF788C(v26);
    v30 = v27;
  }

  v25[0] = v30;
  v95[1] = v89;
  v95[2] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26B0794D0();

  (*(v45 + 8))(v81, v44);
  v14 = sub_26AEFEDC8();
  v25[4] = v95;
  v95[0] = v14;
  v25[2] = sub_26AEFF630();
  v25[1] = MEMORY[0x277CE0F78];
  v25[3] = MEMORY[0x277CE0F60];
  sub_26AEF8488(v48, MEMORY[0x277CE0F78]);
  sub_26B0793C0();
  sub_26AEF8E10();
  sub_26AEFF7A0(v50);
  sub_26AEFEEF4(v35);
  sub_26B079A00();
  v25[5] = sub_26AEFF844();
  v25[6] = sub_26AEFF8EC(v15);
  v94 = sub_26AEFEF60();
  v93 = v94;
  sub_26B0796F0();
  sub_26AEFF96C(v38);
  sub_26AEFF9C8(v53);
  v25[7] = sub_26AEFFA94();
  sub_26AE9463C(v59, v54, v61);
  sub_26AEFFBC4(v59);
  sub_26AEFFCEC(v61, v56);
  sub_26AE94B4C(v56, v54, v31);
  sub_26AEFFBC4(v56);
  return sub_26AEFFBC4(v61);
}

uint64_t sub_26AEFEDC8()
{
  v12 = v0;
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  sub_26AEF7980(&v15, v11);
  v9 = v15;
  v10 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8, &qword_26B089F50);
  sub_26B078A10();
  sub_26AEF7A0C(&v15);
  if (v8)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_26AEF7684(__dst, v6);
    v3 = __dst[7];

    sub_26AEF788C(__dst);
    return v3;
  }

  else
  {
    memcpy(v14, __src, sizeof(v14));
    sub_26AEF7684(v14, v7);
    v2 = v14[9];

    sub_26AEF788C(v14);
    return v2;
  }
}

uint64_t sub_26AEFEEF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CE0118];
  v1 = sub_26B078E30();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_26AEFF050(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_26B078640();
  *(a2 + 40) = v4;
  *(a2 + 48) = *(a1 + 48);
  v5 = *(a1 + 56);

  *(a2 + 56) = v5;
  v6 = *(a1 + 64);

  *(a2 + 64) = v6;
  v7 = *(a1 + 72);

  *(a2 + 72) = v7;
  v8 = *(a1 + 80);

  *(a2 + 80) = v8;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  sub_26AEF79D8(v10, v11 & 1);
  result = a2;
  *(a2 + 88) = v10;
  *(a2 + 96) = v11 & 1;
  return result;
}

uint64_t sub_26AEFF178(uint64_t a1)
{

  sub_26AEF7A44(*(a1 + 88), *(a1 + 96) & 1);
  return a1;
}

unint64_t sub_26AEFF1F4()
{
  v2 = qword_2803DC7A0;
  if (!qword_2803DC7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC798, &unk_26B08A3B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEFF27C()
{
  v2 = qword_2803DC7A8;
  if (!qword_2803DC7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC760, &qword_26B08A378);
    sub_26AEFF1F4();
    sub_26AEF8994();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEFF324(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC798, &unk_26B08A3B0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC760, &qword_26B08A378) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700, &unk_26B089FC0) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

unint64_t sub_26AEFF418()
{
  v2 = qword_2803DC7B0;
  if (!qword_2803DC7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC768, &qword_26B08A380);
    sub_26AEFF27C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEFF4BC(double a1)
{
  v3 = qword_2803DC7B8;
  if (!qword_2803DC7B8)
  {
    sub_26B0790F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7B8);
    return WitnessTable;
  }

  return v3;
}