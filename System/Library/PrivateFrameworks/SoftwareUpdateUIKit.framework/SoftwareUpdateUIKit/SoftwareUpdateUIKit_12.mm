uint64_t sub_26B04AA3C(__n128 a1)
{
  v4 = *(v1 + 248);
  *(v1 + 144) = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v4);

  v2 = *(*(v1 + 144) + 8);

  return v2();
}

uint64_t ReactiveUIManager.checkForAvailableUpdatesInBackground(_:)(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 273) = a1 & 1;
  *(v2 + 144) = v2;
  *(v2 + 272) = 0;
  *(v2 + 152) = 0;
  *(v2 + 168) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700);
  *(v2 + 184) = swift_task_alloc();
  v3 = sub_26B078580();
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 272) = a1 & 1;
  *(v2 + 152) = v1;

  return MEMORY[0x2822009F8](sub_26B04ACA8, 0, 0);
}

uint64_t sub_26B04ACA8(uint64_t a1)
{
  v41 = v1;
  v22 = MEMORY[0x277D85700];
  v23 = v1[22];
  v1[18] = v1;
  sub_26B078540();

  v34 = sub_26B078570();
  v35 = sub_26B07A2A0();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B06B49C;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B06B54C;
  *(v25 + 24) = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B06B598;
  *(v29 + 24) = v25;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B05E17C;
  *(v26 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26B06B698;
  *(v32 + 24) = v26;
  v1[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v33 = v2;

  *v33 = sub_26B06B4D0;
  v33[1] = v27;

  v33[2] = sub_26B06B504;
  v33[3] = v28;

  v33[4] = sub_26B06B5E4;
  v33[5] = v29;

  v33[6] = sub_26B06B61C;
  v33[7] = v30;

  v33[8] = sub_26B06B650;
  v33[9] = v31;

  v33[10] = sub_26B06B6E4;
  v33[11] = v32;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v34, v35))
  {
    buf = sub_26B07A420();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v19 = sub_26AEA3B70(0, v17, v17);
    v20 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36 = buf;
    v37 = v19;
    v38 = v20;
    sub_26AEA3BC4(2, &v36);
    sub_26AEA3BC4(2, &v36);
    v39 = sub_26B06B4D0;
    v40 = v27;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06B504;
    v40 = v28;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06B5E4;
    v40 = v29;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06B61C;
    v40 = v30;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06B650;
    v40 = v31;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26B06B6E4;
    v40 = v32;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_26AE88000, v34, v35, "%s.%s: Starting to check for available updates in the background...", buf, 0x16u);
    sub_26AEA3C24(v19, 0, v17);
    sub_26AEA3C24(v20, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v21 + 232) = 0;
  v9 = *(v21 + 216);
  v10 = *(v21 + 192);
  v12 = *(v21 + 184);
  v11 = *(v21 + 176);
  v15 = *(v21 + 273);
  v8 = *(v21 + 200);
  v3 = MEMORY[0x277D82BD8](v34);
  v4 = *(v8 + 8);
  *(v21 + 240) = v4;
  *(v21 + 248) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v9, v10, v3);
  ReactiveUIManager.performingBackgroundScan.setter(1);
  v5 = sub_26B07A160();
  (*(*(v5 - 8) + 56))(v12, 1);

  sub_26B07A130();
  v13 = sub_26B07A120();
  v6 = swift_allocObject();
  v6[2] = v13;
  v6[3] = v22;
  v6[4] = v11;
  sub_26AEBC0C4(0, 0, v12, &unk_26B0920F8, v6, MEMORY[0x277D84F78] + 8);

  v16 = ReactiveUIManager.statefulManager.getter();
  *(v21 + 256) = v16;
  *(v21 + 16) = *(v21 + 144);
  *(v21 + 56) = v21 + 160;
  *(v21 + 24) = sub_26B04B714;
  v14 = swift_continuation_init();
  *(v21 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEEF0, &qword_26B092100);
  *(v21 + 112) = v14;
  *(v21 + 80) = MEMORY[0x277D85DD0];
  *(v21 + 88) = 1107296256;
  *(v21 + 92) = 0;
  *(v21 + 96) = sub_26B05DFBC;
  *(v21 + 104) = &block_descriptor_923;
  [v16 checkForUpdatesInBackgroundWithForcedReload:v15 & 1 completion:?];

  return MEMORY[0x282200938](v21 + 16);
}

uint64_t sub_26B04B714()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[33] = v1;
  if (v1)
  {
    v2 = sub_26B04C16C;
  }

  else
  {
    v2 = sub_26B04B86C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B04B86C()
{
  v35 = v0;
  v1 = v0[32];
  v17 = v0[22];
  v0[18] = v0;
  v16 = v0[20];
  v0[21] = v16;
  MEMORY[0x277D82BD8](v1);
  sub_26B078540();

  v28 = sub_26B078570();
  v29 = sub_26B07A2A0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06B978;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B06BA28;
  *(v19 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B06BA74;
  *(v23 + 24) = v19;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B05E4F8;
  *(v20 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B06BB74;
  *(v26 + 24) = v20;
  sub_26B07A760();
  v27 = v2;

  *v27 = sub_26B06B9AC;
  v27[1] = v21;

  v27[2] = sub_26B06B9E0;
  v27[3] = v22;

  v27[4] = sub_26B06BAC0;
  v27[5] = v23;

  v27[6] = sub_26B06BAF8;
  v27[7] = v24;

  v27[8] = sub_26B06BB2C;
  v27[9] = v25;

  v27[10] = sub_26B06BBC0;
  v27[11] = v26;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v28, v29))
  {
    v3 = v15[29];
    buf = sub_26B07A420();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v13 = sub_26AEA3B70(0, v11, v11);
    v14 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = buf;
    v31 = v13;
    v32 = v14;
    sub_26AEA3BC4(2, &v30);
    sub_26AEA3BC4(2, &v30);
    v33 = sub_26B06B9AC;
    v34 = v21;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    if (v3)
    {
    }

    v33 = sub_26B06B9E0;
    v34 = v22;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BAC0;
    v34 = v23;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BAF8;
    v34 = v24;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BB2C;
    v34 = v25;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BBC0;
    v34 = v26;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_26AE88000, v28, v29, "%s.%s: Finished to check for available updates in the background.", buf, 0x16u);
    sub_26AEA3C24(v13, 0, v11);
    sub_26AEA3C24(v14, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v15[30];
  v10 = v15[26];
  v7 = v15[24];
  v9 = v15[22];
  v5 = MEMORY[0x277D82BD8](v28);
  v8(v10, v7, v5);
  sub_26B05E340(v9);

  v6 = *(v15[18] + 8);

  return v6(v16);
}

uint64_t sub_26B04C16C(__n128 a1)
{
  v4 = v1[32];
  v5 = v1[22];
  v1[18] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v4);
  sub_26B05E340(v5);

  v2 = *(v1[18] + 8);

  return v2();
}

uint64_t ReactiveUIManager.isBusy.getter()
{
  v39 = 0;
  v25 = sub_26B078360();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v19 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v25);
  v24 = &v2[-v19];
  v39 = v26;
  (*(v22 + 16))(&v2[-v19], v26 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v20 = &v38;
  v38 = v26;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v22 + 8))(v24, v25);
  ReactiveUIManager.currentInitiatedAction.getter(&v37);
  v36 = v37;
  v35 = 0;
  v27 = static UpdateAction.== infix(_:_:)(&v36, &v35);

  if (v27)
  {
    v17 = ReactiveUIManager.targetedDescriptor.getter();
    if (v17)
    {
      v16 = v17;
      v12 = v17;
      v13 = ReactiveDescriptor.currentState.getter();

      v14 = v13;
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 1;
    }

    v10 = v15;
    v11 = v14;
    v31 = v14;
    v32 = v15 & 1;
    v33 = 5;
    v34 = 0;
    if (v15)
    {
      v9 = 0;
    }

    else
    {
      v29[1] = v11;
      v30 = v10 & 1;
      v8 = v29;
      v29[0] = v11;
      v6 = &v28;
      v28 = v33;
      v7 = type metadata accessor for SUUIStatefulDescriptorState(0);
      sub_26AFE1DF4();
      v9 = sub_26B079D70();
    }

    v18 = v9;
  }

  else
  {
    v18 = 1;
  }

  v5 = v18;

  if (v5)
  {
    v4 = 1;
  }

  else
  {
    v4 = ReactiveUIManager.performingBackgroundScan.getter();
  }

  v3 = v4;

  return v3 & 1;
}

Swift::Bool __swiftcall ReactiveUIManager.isDelayingUpdate()()
{
  v1 = ReactiveUIManager.statefulManager.getter();
  v2 = [v1 isDelayingUpdate];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

Swift::Bool __swiftcall ReactiveUIManager.hasSUPathRestrictions()()
{
  v1 = ReactiveUIManager.statefulManager.getter();
  v2 = [v1 hasSUPathRestrictions];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t ReactiveUIManager.checkForAvailableUpdates(_:)(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 265) = a1 & 1;
  *(v2 + 144) = v2;
  *(v2 + 264) = 0;
  *(v2 + 152) = 0;
  *(v2 + 168) = 0;
  v3 = sub_26B078580();
  *(v2 + 184) = v3;
  *(v2 + 192) = *(v3 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 264) = a1 & 1;
  *(v2 + 152) = v1;

  return MEMORY[0x2822009F8](sub_26B04C7E0, 0, 0);
}

uint64_t sub_26B04C7E0(uint64_t a1)
{
  v35 = v1;
  v17 = v1[22];
  v1[18] = v1;
  sub_26B078540();

  v28 = sub_26B078570();
  v29 = sub_26B07A2A0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06BBE4;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B06BC94;
  *(v19 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B06BCE0;
  *(v23 + 24) = v19;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B05DE14;
  *(v20 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B06BDE0;
  *(v26 + 24) = v20;
  v1[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v27 = v2;

  *v27 = sub_26B06BC18;
  v27[1] = v21;

  v27[2] = sub_26B06BC4C;
  v27[3] = v22;

  v27[4] = sub_26B06BD2C;
  v27[5] = v23;

  v27[6] = sub_26B06BD64;
  v27[7] = v24;

  v27[8] = sub_26B06BD98;
  v27[9] = v25;

  v27[10] = sub_26B06BE2C;
  v27[11] = v26;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v28, v29))
  {
    buf = sub_26B07A420();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v14 = sub_26AEA3B70(0, v12, v12);
    v15 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = buf;
    v31 = v14;
    v32 = v15;
    sub_26AEA3BC4(2, &v30);
    sub_26AEA3BC4(2, &v30);
    v33 = sub_26B06BC18;
    v34 = v21;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BC4C;
    v34 = v22;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BD2C;
    v34 = v23;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BD64;
    v34 = v24;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BD98;
    v34 = v25;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BE2C;
    v34 = v26;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_26AE88000, v28, v29, "%s.%s: Starting to check for available updates...", buf, 0x16u);
    sub_26AEA3C24(v14, 0, v12);
    sub_26AEA3C24(v15, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v16 + 224) = 0;
  v7 = *(v16 + 208);
  v8 = *(v16 + 184);
  v10 = *(v16 + 265);
  v6 = *(v16 + 192);
  v3 = MEMORY[0x277D82BD8](v28);
  v4 = *(v6 + 8);
  *(v16 + 232) = v4;
  *(v16 + 240) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v7, v8, v3);
  v11 = ReactiveUIManager.statefulManager.getter();
  *(v16 + 248) = v11;
  *(v16 + 16) = *(v16 + 144);
  *(v16 + 56) = v16 + 160;
  *(v16 + 24) = sub_26B04D158;
  v9 = swift_continuation_init();
  *(v16 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEEF0, &qword_26B092100);
  *(v16 + 112) = v9;
  *(v16 + 80) = MEMORY[0x277D85DD0];
  *(v16 + 88) = 1107296256;
  *(v16 + 92) = 0;
  *(v16 + 96) = sub_26B05DFBC;
  *(v16 + 104) = &block_descriptor_1002;
  [v11 checkForAvailableUpdatesWithForcedReload:v10 & 1 completion:?];

  return MEMORY[0x282200938](v16 + 16);
}

uint64_t sub_26B04D158()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[32] = v1;
  if (v1)
  {
    v2 = sub_26B04DBA0;
  }

  else
  {
    v2 = sub_26B04D2B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B04D2B0()
{
  v35 = v0;
  v1 = v0[31];
  v17 = v0[22];
  v0[18] = v0;
  v16 = v0[20];
  v0[21] = v16;
  MEMORY[0x277D82BD8](v1);
  sub_26B078540();

  v28 = sub_26B078570();
  v29 = sub_26B07A2A0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06BE78;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B06BF28;
  *(v19 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B06BF74;
  *(v23 + 24) = v19;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B05E120;
  *(v20 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B06C074;
  *(v26 + 24) = v20;
  sub_26B07A760();
  v27 = v2;

  *v27 = sub_26B06BEAC;
  v27[1] = v21;

  v27[2] = sub_26B06BEE0;
  v27[3] = v22;

  v27[4] = sub_26B06BFC0;
  v27[5] = v23;

  v27[6] = sub_26B06BFF8;
  v27[7] = v24;

  v27[8] = sub_26B06C02C;
  v27[9] = v25;

  v27[10] = sub_26B06C0C0;
  v27[11] = v26;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v28, v29))
  {
    v3 = v15[28];
    buf = sub_26B07A420();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v13 = sub_26AEA3B70(0, v11, v11);
    v14 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = buf;
    v31 = v13;
    v32 = v14;
    sub_26AEA3BC4(2, &v30);
    sub_26AEA3BC4(2, &v30);
    v33 = sub_26B06BEAC;
    v34 = v21;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    if (v3)
    {
    }

    v33 = sub_26B06BEE0;
    v34 = v22;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BFC0;
    v34 = v23;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06BFF8;
    v34 = v24;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06C02C;
    v34 = v25;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26B06C0C0;
    v34 = v26;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_26AE88000, v28, v29, "%s.%s: Finished to check for available updates.", buf, 0x16u);
    sub_26AEA3C24(v13, 0, v11);
    sub_26AEA3C24(v14, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v15[29];
  v10 = v15[25];
  v7 = v15[23];
  v9 = v15[22];
  v5 = MEMORY[0x277D82BD8](v28);
  v8(v10, v7, v5);
  sub_26B05DE44(v9);

  v6 = *(v15[18] + 8);

  return v6(v16);
}

uint64_t sub_26B04DBA0(__n128 a1)
{
  v4 = v1[31];
  v5 = v1[22];
  v1[18] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v4);
  sub_26B05DE44(v5);

  v2 = *(v1[18] + 8);

  return v2();
}

uint64_t ReactiveUIManager.targetedDescriptor.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__targetedDescriptor);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;

  swift_endAccess();
  return v14;
}

Swift::Void __swiftcall ReactiveUIManager.stopRefreshScanResultsCacheTimer()()
{
  v67 = MEMORY[0x277D85700];
  v68 = &unk_26B092168;
  v69 = sub_26B06C32C;
  v70 = sub_26B06C3DC;
  v71 = sub_26B06C428;
  v72 = sub_26B05AB94;
  v73 = sub_26B06C528;
  v74 = sub_26B06C360;
  v75 = sub_26B06C394;
  v76 = sub_26B06C474;
  v77 = sub_26B06C4AC;
  v78 = sub_26B06C4E0;
  v79 = sub_26B06C574;
  v101 = 0;
  v80 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700);
  v81 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v82 = &v33 - v81;
  v83 = 0;
  v84 = sub_26B078580();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v88 = &v33 - v87;
  v93 = sub_26B0784A0();
  v91 = *(v93 - 8);
  v92 = v93 - 8;
  v89 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v93);
  v94 = &v33 - v89;
  v101 = v90;
  (*(v91 + 104))(&v33 - v89, *MEMORY[0x277D64B08], v1);
  v95 = sub_26B078490();
  (*(v91 + 8))(v94, v93);
  if (v95)
  {
    v33 = 0;
    v26 = sub_26B07A160();
    (*(*(v26 - 8) + 56))(v82, 1);

    sub_26B07A130();
    v34 = sub_26B07A120();
    v27 = swift_allocObject();
    v28 = v67;
    v29 = v90;
    v30 = v33;
    v31 = v82;
    v32 = v68;
    v27[2] = v34;
    v27[3] = v28;
    v27[4] = v29;
    sub_26AEBC0C4(v30, v30, v31, v32, v27, MEMORY[0x277D84F78] + 8);
  }

  else
  {
    sub_26B078540();

    v65 = sub_26B078570();
    v66 = sub_26B07A2A0();
    v51 = 17;
    v54 = 7;
    v56 = swift_allocObject();
    v50 = 32;
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    v52 = 8;
    *(v57 + 16) = 8;
    v53 = 32;
    v2 = swift_allocObject();
    v3 = v90;
    v48 = v2;
    *(v2 + 16) = v69;
    *(v2 + 24) = v3;
    v4 = swift_allocObject();
    v5 = v48;
    v49 = v4;
    *(v4 + 16) = v70;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v49;
    v58 = v6;
    *(v6 + 16) = v71;
    *(v6 + 24) = v7;
    v59 = swift_allocObject();
    *(v59 + 16) = v50;
    v60 = swift_allocObject();
    *(v60 + 16) = v52;
    v8 = swift_allocObject();
    v55 = v8;
    *(v8 + 16) = v72;
    *(v8 + 24) = 0;
    v9 = swift_allocObject();
    v10 = v55;
    v62 = v9;
    *(v9 + 16) = v73;
    *(v9 + 24) = v10;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    v61 = sub_26B07A760();
    v63 = v11;

    v12 = v56;
    v13 = v63;
    *v63 = v74;
    v13[1] = v12;

    v14 = v57;
    v15 = v63;
    v63[2] = v75;
    v15[3] = v14;

    v16 = v58;
    v17 = v63;
    v63[4] = v76;
    v17[5] = v16;

    v18 = v59;
    v19 = v63;
    v63[6] = v77;
    v19[7] = v18;

    v20 = v60;
    v21 = v63;
    v63[8] = v78;
    v21[9] = v20;

    v22 = v62;
    v23 = v63;
    v63[10] = v79;
    v23[11] = v22;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v65, v66))
    {
      v24 = v80;
      v40 = sub_26B07A420();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v41 = sub_26AEA3B70(0, v39, v39);
      v42 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v44 = &v100;
      v100 = v40;
      v45 = &v99;
      v99 = v41;
      v46 = &v98;
      v98 = v42;
      v43 = 2;
      sub_26AEA3BC4(2, &v100);
      sub_26AEA3BC4(v43, v44);
      v96 = v74;
      v97 = v56;
      sub_26AEA3BD8(&v96, v44, v45, v46);
      v47 = v24;
      if (v24)
      {

        __break(1u);
      }

      else
      {
        v96 = v75;
        v97 = v57;
        sub_26AEA3BD8(&v96, &v100, &v99, &v98);
        v38 = 0;
        v96 = v76;
        v97 = v58;
        sub_26AEA3BD8(&v96, &v100, &v99, &v98);
        v37 = 0;
        v96 = v77;
        v97 = v59;
        sub_26AEA3BD8(&v96, &v100, &v99, &v98);
        v36 = 0;
        v96 = v78;
        v97 = v60;
        sub_26AEA3BD8(&v96, &v100, &v99, &v98);
        v35 = 0;
        v96 = v79;
        v97 = v62;
        sub_26AEA3BD8(&v96, &v100, &v99, &v98);
        _os_log_impl(&dword_26AE88000, v65, v66, "    %s.%s: Cache feature is disabled. unable to stop refresh cache timer", v40, 0x16u);
        sub_26AEA3C24(v41, 0, v39);
        sub_26AEA3C24(v42, 2, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v25 = MEMORY[0x277D82BD8](v65);
    (*(v85 + 8))(v88, v84, v25);
  }
}

Swift::Void __swiftcall ReactiveUIManager.startRefreshScanResultsCacheTimer()()
{
  v55 = sub_26B06C580;
  v56 = sub_26B06C630;
  v57 = sub_26B06C67C;
  v58 = sub_26B05AE24;
  v59 = sub_26B06C77C;
  v60 = sub_26B06C5B4;
  v61 = sub_26B06C5E8;
  v62 = sub_26B06C6C8;
  v63 = sub_26B06C700;
  v64 = sub_26B06C734;
  v65 = sub_26B06C7C8;
  v93 = 0;
  v92 = 0;
  v66 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD260, &qword_26B089A70);
  v67 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v68 = v26 - v67;
  v74 = 0;
  v69 = sub_26B0782A0();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v73 = v26 - v72;
  v93 = v26 - v72;
  v75 = sub_26B078580();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v79 = v26 - v78;
  v84 = sub_26B0784A0();
  v82 = *(v84 - 8);
  v83 = v84 - 8;
  v80 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v84);
  v85 = v26 - v80;
  v92 = v81;
  (*(v82 + 104))(v26 - v80, *MEMORY[0x277D64B08], v1);
  v86 = sub_26B078490();
  (*(v82 + 8))(v85, v84);
  if (v86)
  {
    ReactiveUIManager.stopRefreshScanResultsCacheTimer()();
    ReactiveUIManager.readScanResultsCacheExpectedTTLValue()(v68);
    if ((*(v70 + 48))(v68, 1, v69) == 1)
    {
      sub_26AEEE704(v68);
      sub_26B05C8CC();
    }

    else
    {
      (*(v70 + 32))(v73, v68, v69);
      sub_26B05B2BC(v73);
      (*(v70 + 8))(v73, v69);
    }
  }

  else
  {
    sub_26B078540();

    v53 = sub_26B078570();
    v54 = sub_26B07A2A0();
    v39 = 17;
    v42 = 7;
    v44 = swift_allocObject();
    v38 = 32;
    *(v44 + 16) = 32;
    v45 = swift_allocObject();
    v40 = 8;
    *(v45 + 16) = 8;
    v41 = 32;
    v2 = swift_allocObject();
    v3 = v81;
    v36 = v2;
    *(v2 + 16) = v55;
    *(v2 + 24) = v3;
    v4 = swift_allocObject();
    v5 = v36;
    v37 = v4;
    *(v4 + 16) = v56;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v37;
    v46 = v6;
    *(v6 + 16) = v57;
    *(v6 + 24) = v7;
    v47 = swift_allocObject();
    *(v47 + 16) = v38;
    v48 = swift_allocObject();
    *(v48 + 16) = v40;
    v8 = swift_allocObject();
    v43 = v8;
    *(v8 + 16) = v58;
    *(v8 + 24) = 0;
    v9 = swift_allocObject();
    v10 = v43;
    v50 = v9;
    *(v9 + 16) = v59;
    *(v9 + 24) = v10;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    v49 = sub_26B07A760();
    v51 = v11;

    v12 = v44;
    v13 = v51;
    *v51 = v60;
    v13[1] = v12;

    v14 = v45;
    v15 = v51;
    v51[2] = v61;
    v15[3] = v14;

    v16 = v46;
    v17 = v51;
    v51[4] = v62;
    v17[5] = v16;

    v18 = v47;
    v19 = v51;
    v51[6] = v63;
    v19[7] = v18;

    v20 = v48;
    v21 = v51;
    v51[8] = v64;
    v21[9] = v20;

    v22 = v50;
    v23 = v51;
    v51[10] = v65;
    v23[11] = v22;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v53, v54))
    {
      v24 = v66;
      v28 = sub_26B07A420();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v29 = sub_26AEA3B70(0, v27, v27);
      v30 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v32 = &v91;
      v91 = v28;
      v33 = &v90;
      v90 = v29;
      v34 = &v89;
      v89 = v30;
      v31 = 2;
      sub_26AEA3BC4(2, &v91);
      sub_26AEA3BC4(v31, v32);
      v87 = v60;
      v88 = v44;
      sub_26AEA3BD8(&v87, v32, v33, v34);
      v35 = v24;
      if (v24)
      {

        __break(1u);
      }

      else
      {
        v87 = v61;
        v88 = v45;
        sub_26AEA3BD8(&v87, &v91, &v90, &v89);
        v26[3] = 0;
        v87 = v62;
        v88 = v46;
        sub_26AEA3BD8(&v87, &v91, &v90, &v89);
        v26[2] = 0;
        v87 = v63;
        v88 = v47;
        sub_26AEA3BD8(&v87, &v91, &v90, &v89);
        v26[1] = 0;
        v87 = v64;
        v88 = v48;
        sub_26AEA3BD8(&v87, &v91, &v90, &v89);
        v26[0] = 0;
        v87 = v65;
        v88 = v50;
        sub_26AEA3BD8(&v87, &v91, &v90, &v89);
        _os_log_impl(&dword_26AE88000, v53, v54, "    %s.%s: Cache feature is disabled. unable to start refresh cache timer", v28, 0x16u);
        sub_26AEA3C24(v29, 0, v27);
        sub_26AEA3C24(v30, 2, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v25 = MEMORY[0x277D82BD8](v53);
    (*(v76 + 8))(v79, v75, v25);
  }
}

uint64_t ReactiveUIManager.canPerformCachedScan()()
{
  v1[24] = v0;
  v1[20] = v1;
  v1[21] = 0;
  v1[23] = 0;
  v2 = sub_26B0782E0();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[21] = v0;

  return MEMORY[0x2822009F8](sub_26B04F784, 0, 0);
}

uint64_t sub_26B04F784()
{
  *(v0 + 160) = v0;
  v14 = ReactiveUIManager.statefulManager.getter();
  *(v0 + 176) = [v14 environment];
  if (*(v0 + 176))
  {
    v6 = *(v13 + 216);
    v5 = *(v13 + 200);
    v4 = *(v13 + 208);
    v10 = *(v13 + 176);
    swift_unknownObjectRetain();
    sub_26B06C7D4((v13 + 176));
    MEMORY[0x277D82BD8](v14);
    swift_getObjectType();
    v9 = ReactiveUIManager.statefulManager.getter();
    sub_26B0782D0();
    sub_26B0782B0();
    v8 = sub_26B079DF0();
    (*(v4 + 8))(v6, v5);

    sub_26AF4013C();
    v7 = sub_26B07A2E0();
    v11 = [v10 scanOperationWithManager:v9 identifier:v8 completionQueue:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    swift_unknownObjectRelease();
    v12 = v11;
  }

  else
  {
    sub_26B06C7D4((v13 + 176));
    MEMORY[0x277D82BD8](v14);
    v12 = 0;
  }

  *(v13 + 224) = v12;
  if (v12)
  {
    *(v13 + 184) = v12;
    swift_getObjectType();
    *(v13 + 16) = *(v13 + 160);
    *(v13 + 56) = v13 + 144;
    *(v13 + 24) = sub_26B04FB00;
    v3 = swift_continuation_init();
    *(v13 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF08, &qword_26B092180);
    *(v13 + 112) = v3;
    *(v13 + 80) = MEMORY[0x277D85DD0];
    *(v13 + 88) = 1107296256;
    *(v13 + 92) = 0;
    *(v13 + 96) = sub_26B05F6F0;
    *(v13 + 104) = &block_descriptor_1121;
    [v12 hasScanResultsCacheWithCompletion_];

    return MEMORY[0x282200938](v13 + 16);
  }

  else
  {

    v1 = *(*(v13 + 160) + 8);

    return v1(0);
  }
}

uint64_t sub_26B04FB00()
{
  *(*v0 + 160) = *v0;

  return MEMORY[0x2822009F8](sub_26B04FBFC, 0, 0);
}

uint64_t sub_26B04FBFC()
{
  *(v0 + 160) = v0;
  v3 = *(v0 + 144);
  MEMORY[0x277D82BD8](*(v0 + 152));
  swift_unknownObjectRelease();

  v1 = *(*(v0 + 160) + 8);

  return v1(v3 & 1);
}

void ReactiveUIManager.presentingViewController.setter(void *a1)
{
  v25 = a1;
  v33 = 0;
  v21 = 0;
  v34 = a1;
  v22 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController);
  v23 = &v32;
  swift_beginAccess();
  v24 = *v22;
  v2 = v24;
  swift_endAccess();
  v31 = v24;
  v30 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF10, &qword_26B092188);
  v3 = sub_26B06C840();
  v27 = &v31;
  v28 = sub_26B05618C(&v31, &v30, v26, v3);
  sub_26B06C958(&v31);
  if (v28)
  {
    v4 = v20;
    v5 = v21;
    KeyPath = swift_getKeyPath();
    v16 = KeyPath;

    v6 = v25;
    v18 = &v12;
    MEMORY[0x28223BE20](KeyPath);
    v11[2] = v4;
    v11[3] = v7;
    sub_26B056288(v8, sub_26B06C98C, v11, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v19 = v5;

    v15 = v19;
  }

  else
  {
    v9 = v25;
    v13 = (v20 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController);
    v14 = &v29;
    swift_beginAccess();
    v10 = *v13;
    *v13 = v25;

    swift_endAccess();
    v15 = v21;
  }
}

id ReactiveUIManager.environmentOptions.getter()
{
  v9 = v0;
  v6 = ReactiveUIManager.statefulManager.getter();
  v7 = [v6 environment];
  if (v7)
  {
    v2 = v7;
    swift_unknownObjectRetain();
    sub_26B06C7D4(&v7);
    MEMORY[0x277D82BD8](v6);
    swift_getObjectType();
    v3 = [v2 options];
    swift_unknownObjectRelease();
    v4 = v3;
    v5 = 0;
  }

  else
  {
    sub_26B06C7D4(&v7);
    MEMORY[0x277D82BD8](v6);
    v4 = 0;
    v5 = 1;
  }

  if ((v5 & 1) == 0)
  {
    return v4;
  }

  type metadata accessor for SUUIStatefulUIEnvironmentOptions(0);
  sub_26B07A760();
  sub_26AE9AD04();
  sub_26B07A4C0();
  return v8;
}

uint64_t ReactiveUIManager.hasHiddenDescriptors.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 hasHiddenDescriptors];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t ReactiveUIManager.unscheduleTargetedUpdate(delegate:)(uint64_t a1)
{
  *(v2 + 232) = v1;
  *(v2 + 224) = a1;
  *(v2 + 168) = v2;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 208) = 0;
  *(v2 + 344) = 0;
  v3 = sub_26B078580();
  *(v2 + 240) = v3;
  *(v2 + 248) = *(v3 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;

  return MEMORY[0x2822009F8](sub_26B05031C, 0, 0);
}

uint64_t sub_26B05031C()
{
  v45 = v0;
  *(v0 + 168) = v0;
  v38 = ReactiveUIManager.targetedDescriptor.getter();
  *(v0 + 272) = v38;
  if (v38)
  {
    v20 = *(v37 + 232);
    *(v37 + 208) = v38;
    sub_26B078540();

    oslog = sub_26B078570();
    v36 = sub_26B07A2A0();
    v25 = swift_allocObject();
    *(v25 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26B06C9D0;
    *(v21 + 24) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_26B06CA88;
    *(v22 + 24) = v21;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_26B06CAD4;
    *(v27 + 24) = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26B05F508;
    *(v23 + 24) = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_26B06CBD4;
    *(v30 + 24) = v23;
    v31 = swift_allocObject();
    *(v31 + 16) = 32;
    v32 = swift_allocObject();
    *(v32 + 16) = 8;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26B06C9D8;
    *(v24 + 24) = v38;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_26B06CCD4;
    *(v33 + 24) = v24;
    *(v37 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v34 = v1;

    *v34 = sub_26B06CA0C;
    v34[1] = v25;

    v34[2] = sub_26B06CA40;
    v34[3] = v26;

    v34[4] = sub_26B06CB20;
    v34[5] = v27;

    v34[6] = sub_26B06CB58;
    v34[7] = v28;

    v34[8] = sub_26B06CB8C;
    v34[9] = v29;

    v34[10] = sub_26B06CC20;
    v34[11] = v30;

    v34[12] = sub_26B06CC58;
    v34[13] = v31;

    v34[14] = sub_26B06CC8C;
    v34[15] = v32;

    v34[16] = sub_26B06CD20;
    v34[17] = v33;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v36))
    {
      buf = sub_26B07A420();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v18 = sub_26AEA3B70(0, v16, v16);
      v19 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v40 = buf;
      v41 = v18;
      v42 = v19;
      sub_26AEA3BC4(2, &v40);
      sub_26AEA3BC4(3, &v40);
      v43 = sub_26B06CA0C;
      v44 = v25;
      sub_26AEA3BD8(&v43, &v40, &v41, &v42);
      v43 = sub_26B06CA40;
      v44 = v26;
      sub_26AEA3BD8(&v43, &v40, &v41, &v42);
      v43 = sub_26B06CB20;
      v44 = v27;
      sub_26AEA3BD8(&v43, &v40, &v41, &v42);
      v43 = sub_26B06CB58;
      v44 = v28;
      sub_26AEA3BD8(&v43, &v40, &v41, &v42);
      v43 = sub_26B06CB8C;
      v44 = v29;
      sub_26AEA3BD8(&v43, &v40, &v41, &v42);
      v43 = sub_26B06CC20;
      v44 = v30;
      sub_26AEA3BD8(&v43, &v40, &v41, &v42);
      v43 = sub_26B06CC58;
      v44 = v31;
      sub_26AEA3BD8(&v43, &v40, &v41, &v42);
      v43 = sub_26B06CC8C;
      v44 = v32;
      sub_26AEA3BD8(&v43, &v40, &v41, &v42);
      v43 = sub_26B06CD20;
      v44 = v33;
      sub_26AEA3BD8(&v43, &v40, &v41, &v42);
      _os_log_impl(&dword_26AE88000, oslog, v36, "%s.%s: Initiating an Unschedule request for %s...", buf, 0x20u);
      sub_26AEA3C24(v18, 0, v16);
      sub_26AEA3C24(v19, 3, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    *(v37 + 288) = 0;
    v12 = *(v37 + 264);
    v13 = *(v37 + 240);
    v15 = *(v37 + 224);
    v11 = *(v37 + 248);
    v2 = MEMORY[0x277D82BD8](oslog);
    v3 = *(v11 + 8);
    *(v37 + 296) = v3;
    *(v37 + 304) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v3(v12, v13, v2);
    v14 = ReactiveUIManager.statefulManager.getter();
    *(v37 + 312) = v14;
    swift_unknownObjectRetain();
    *(v37 + 216) = v15;

    if (*(v37 + 216))
    {
      v39 = *(v37 + 216);
    }

    else
    {
      v9 = *(v37 + 232);
      swift_beginAccess();
      v10 = *(v9 + 24);
      MEMORY[0x277D82BE0](v10);
      swift_endAccess();
      if (!v10)
      {
        return sub_26B07A650();
      }

      v39 = v10;
      if (*(v37 + 216))
      {
        sub_26B067808((v37 + 216));
      }
    }

    *(v37 + 320) = v39;
    sub_26AF4013C();
    v8 = sub_26B07A2E0();
    *(v37 + 328) = v8;
    *(v37 + 16) = *(v37 + 168);
    *(v37 + 56) = v37 + 345;
    *(v37 + 24) = sub_26B0512BC;
    v7 = swift_continuation_init();
    *(v37 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF28, &qword_26B0921C0);
    *(v37 + 112) = v7;
    *(v37 + 80) = MEMORY[0x277D85DD0];
    *(v37 + 88) = 1107296256;
    *(v37 + 92) = 0;
    *(v37 + 96) = sub_26B05EB14;
    *(v37 + 104) = &block_descriptor_1179;
    [v14 unscheduleTargetedUpdateAutomaticInstallation:v39 delegateCallbackQueue:v8 completionHandler:?];

    return MEMORY[0x282200938](v37 + 16);
  }

  else
  {
    type metadata accessor for SUUIError(0);
    *(v37 + 200) = -1;
    sub_26AE9B67C();
    sub_26B05E82C();
    sub_26B0780F0();
    v6 = *(v37 + 192);
    MEMORY[0x277D82BE0](v6);
    swift_willThrow();
    MEMORY[0x277D82BD8](v6);

    v5 = *(*(v37 + 168) + 8);

    return v5(v37 & 1);
  }
}

uint64_t sub_26B0512BC()
{
  v4 = *v0;
  v4[21] = *v0;
  v1 = v4[6];
  v4[42] = v1;
  if (v1)
  {
    v2 = sub_26B052350;
  }

  else
  {
    v2 = sub_26B051414;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B051414()
{
  v45 = v0;
  v15 = *(v0 + 328);
  v1 = *(v0 + 312);
  v21 = *(v0 + 272);
  v17 = *(v0 + 232);
  *(v0 + 168) = v0;
  v16 = *(v0 + 345);
  *(v0 + 344) = v16 & 1;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v15);
  swift_unknownObjectRelease();
  sub_26B078540();

  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  v38 = sub_26B078570();
  v39 = sub_26B07A2A0();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06CD6C;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B06CE5C;
  *(v19 + 24) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B06CEA8;
  *(v27 + 24) = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B05F5C4;
  *(v20 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B06CFA8;
  *(v30 + 24) = v20;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B06CD74;
  *(v22 + 24) = v21;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B06D0A8;
  *(v33 + 24) = v22;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B06CDA8;
  *(v24 + 24) = v23;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B06D1A8;
  *(v36 + 24) = v24;
  sub_26B07A760();
  v37 = v2;

  *v37 = sub_26B06CDE0;
  v37[1] = v25;

  v37[2] = sub_26B06CE14;
  v37[3] = v26;

  v37[4] = sub_26B06CEF4;
  v37[5] = v27;

  v37[6] = sub_26B06CF2C;
  v37[7] = v28;

  v37[8] = sub_26B06CF60;
  v37[9] = v29;

  v37[10] = sub_26B06CFF4;
  v37[11] = v30;

  v37[12] = sub_26B06D02C;
  v37[13] = v31;

  v37[14] = sub_26B06D060;
  v37[15] = v32;

  v37[16] = sub_26B06D0F4;
  v37[17] = v33;

  v37[18] = sub_26B06D12C;
  v37[19] = v34;

  v37[20] = sub_26B06D160;
  v37[21] = v35;

  v37[22] = sub_26B06D1F4;
  v37[23] = v36;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v38, v39))
  {
    v3 = v14[36];
    buf = sub_26B07A420();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v12 = sub_26AEA3B70(0, v10, v10);
    v13 = sub_26AEA3B70(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v40 = buf;
    v41 = v12;
    v42 = v13;
    sub_26AEA3BC4(2, &v40);
    sub_26AEA3BC4(4, &v40);
    v43 = sub_26B06CDE0;
    v44 = v25;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    if (v3)
    {
    }

    v43 = sub_26B06CE14;
    v44 = v26;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06CEF4;
    v44 = v27;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06CF2C;
    v44 = v28;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06CF60;
    v44 = v29;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06CFF4;
    v44 = v30;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D02C;
    v44 = v31;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D060;
    v44 = v32;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D0F4;
    v44 = v33;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D12C;
    v44 = v34;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D160;
    v44 = v35;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D1F4;
    v44 = v36;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_26AE88000, v38, v39, "%s.%s: Finished to execute an Unschedule request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v12, 0, v10);
    sub_26AEA3C24(v13, 4, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v14[37];
  v9 = v14[32];
  v7 = v14[30];
  v5 = MEMORY[0x277D82BD8](v38);
  v8(v9, v7, v5);

  v6 = *(v14[21] + 8);

  return v6(v16 & 1);
}

uint64_t sub_26B052350(__n128 a1)
{
  v6 = v1[41];
  v5 = v1[39];
  v1[21] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  swift_unknownObjectRelease();

  v2 = v1[21];
  v3 = *(v2 + 8);

  return v3(v2 & 1);
}

uint64_t ReactiveUIManager.promoteTargetedUpdate(_:delegate:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 224) = v2;
  *(v3 + 216) = a2;
  *(v3 + 208) = a1;
  *(v3 + 168) = v3;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 328) = 0;
  v4 = sub_26B078580();
  *(v3 + 232) = v4;
  *(v3 + 240) = *(v4 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  *(v3 + 192) = v2;

  return MEMORY[0x2822009F8](sub_26B0525C0, 0, 0);
}

uint64_t sub_26B0525C0(uint64_t a1)
{
  v44 = v1;
  v20 = v1[28];
  v24 = v1[26];
  v1[21] = v1;
  sub_26B078540();

  v36 = sub_26B078570();
  v37 = sub_26B07A2A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B06D200;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B06D2B8;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B06D304;
  *(v28 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B05EA84;
  *(v23 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26B06D404;
  *(v31 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B06D208;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26B06D504;
  *(v34 + 24) = v25;
  v1[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v35 = v2;

  *v35 = sub_26B06D23C;
  v35[1] = v26;

  v35[2] = sub_26B06D270;
  v35[3] = v27;

  v35[4] = sub_26B06D350;
  v35[5] = v28;

  v35[6] = sub_26B06D388;
  v35[7] = v29;

  v35[8] = sub_26B06D3BC;
  v35[9] = v30;

  v35[10] = sub_26B06D450;
  v35[11] = v31;

  v35[12] = sub_26B06D488;
  v35[13] = v32;

  v35[14] = sub_26B06D4BC;
  v35[15] = v33;

  v35[16] = sub_26B06D550;
  v35[17] = v34;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_26B07A420();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v17 = sub_26AEA3B70(0, v15, v15);
    v18 = sub_26AEA3B70(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v39 = buf;
    v40 = v17;
    v41 = v18;
    sub_26AEA3BC4(2, &v39);
    sub_26AEA3BC4(3, &v39);
    v42 = sub_26B06D23C;
    v43 = v26;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D270;
    v43 = v27;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D350;
    v43 = v28;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D388;
    v43 = v29;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D3BC;
    v43 = v30;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D450;
    v43 = v31;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D488;
    v43 = v32;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D4BC;
    v43 = v33;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D550;
    v43 = v34;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_26AE88000, v36, v37, "%s.%s: Initiating a User Initiated Status Promotion request for %s...", buf, 0x20u);
    sub_26AEA3C24(v17, 0, v15);
    sub_26AEA3C24(v18, 3, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  *(v19 + 272) = 0;
  v11 = *(v19 + 256);
  v12 = *(v19 + 232);
  v14 = *(v19 + 216);
  v10 = *(v19 + 240);
  v3 = MEMORY[0x277D82BD8](v36);
  v4 = *(v10 + 8);
  *(v19 + 280) = v4;
  *(v19 + 288) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v11, v12, v3);
  v13 = ReactiveUIManager.statefulManager.getter();
  *(v19 + 296) = v13;
  swift_unknownObjectRetain();
  *(v19 + 200) = v14;

  if (*(v19 + 200))
  {
    v38 = *(v19 + 200);
  }

  else
  {
    v8 = *(v19 + 224);
    swift_beginAccess();
    v9 = *(v8 + 24);
    MEMORY[0x277D82BE0](v9);
    swift_endAccess();
    if (!v9)
    {
      return sub_26B07A650();
    }

    v38 = v9;
    if (*(v19 + 200))
    {
      sub_26B067808((v19 + 200));
    }
  }

  *(v19 + 304) = v38;
  sub_26AF4013C();
  v7 = sub_26B07A2E0();
  *(v19 + 312) = v7;
  *(v19 + 16) = *(v19 + 168);
  *(v19 + 56) = v19 + 329;
  *(v19 + 24) = sub_26B05340C;
  v6 = swift_continuation_init();
  *(v19 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF28, &qword_26B0921C0);
  *(v19 + 112) = v6;
  *(v19 + 80) = MEMORY[0x277D85DD0];
  *(v19 + 88) = 1107296256;
  *(v19 + 92) = 0;
  *(v19 + 96) = sub_26B05EB14;
  *(v19 + 104) = &block_descriptor_1306;
  [v13 promoteTargetedUpdateToUserInitiatedStatus:v38 delegateCallbackQueue:v7 completionHandler:?];

  return MEMORY[0x282200938](v19 + 16);
}

uint64_t sub_26B05340C()
{
  v4 = *v0;
  v4[21] = *v0;
  v1 = v4[6];
  v4[40] = v1;
  if (v1)
  {
    v2 = sub_26B054490;
  }

  else
  {
    v2 = sub_26B053564;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B053564()
{
  v45 = v0;
  v15 = *(v0 + 312);
  v1 = *(v0 + 296);
  v17 = *(v0 + 224);
  v21 = *(v0 + 208);
  *(v0 + 168) = v0;
  v16 = *(v0 + 329);
  *(v0 + 328) = v16 & 1;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v15);
  swift_unknownObjectRelease();
  sub_26B078540();

  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  v38 = sub_26B078570();
  v39 = sub_26B07A2A0();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06D59C;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B06D68C;
  *(v19 + 24) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B06D6D8;
  *(v27 + 24) = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B05EBFC;
  *(v20 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B06D7D8;
  *(v30 + 24) = v20;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B06D5A4;
  *(v22 + 24) = v21;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26B06D8D8;
  *(v33 + 24) = v22;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B06D5D8;
  *(v24 + 24) = v23;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_26B06D9D8;
  *(v36 + 24) = v24;
  sub_26B07A760();
  v37 = v2;

  *v37 = sub_26B06D610;
  v37[1] = v25;

  v37[2] = sub_26B06D644;
  v37[3] = v26;

  v37[4] = sub_26B06D724;
  v37[5] = v27;

  v37[6] = sub_26B06D75C;
  v37[7] = v28;

  v37[8] = sub_26B06D790;
  v37[9] = v29;

  v37[10] = sub_26B06D824;
  v37[11] = v30;

  v37[12] = sub_26B06D85C;
  v37[13] = v31;

  v37[14] = sub_26B06D890;
  v37[15] = v32;

  v37[16] = sub_26B06D924;
  v37[17] = v33;

  v37[18] = sub_26B06D95C;
  v37[19] = v34;

  v37[20] = sub_26B06D990;
  v37[21] = v35;

  v37[22] = sub_26B06DA24;
  v37[23] = v36;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v38, v39))
  {
    v3 = v14[34];
    buf = sub_26B07A420();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v12 = sub_26AEA3B70(0, v10, v10);
    v13 = sub_26AEA3B70(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v40 = buf;
    v41 = v12;
    v42 = v13;
    sub_26AEA3BC4(2, &v40);
    sub_26AEA3BC4(4, &v40);
    v43 = sub_26B06D610;
    v44 = v25;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    if (v3)
    {
    }

    v43 = sub_26B06D644;
    v44 = v26;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D724;
    v44 = v27;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D75C;
    v44 = v28;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D790;
    v44 = v29;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D824;
    v44 = v30;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D85C;
    v44 = v31;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D890;
    v44 = v32;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D924;
    v44 = v33;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D95C;
    v44 = v34;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06D990;
    v44 = v35;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    v43 = sub_26B06DA24;
    v44 = v36;
    sub_26AEA3BD8(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_26AE88000, v38, v39, "%s.%s: Finished to execute User Initiated Status Promotion request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v12, 0, v10);
    sub_26AEA3C24(v13, 4, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v14[35];
  v9 = v14[31];
  v7 = v14[29];
  v5 = MEMORY[0x277D82BD8](v38);
  v8(v9, v7, v5);

  v6 = *(v14[21] + 8);

  return v6(v16 & 1);
}

uint64_t sub_26B054490(__n128 a1)
{
  v5 = v1[39];
  v4 = v1[37];
  v1[21] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  swift_unknownObjectRelease();

  v2 = *(v1[21] + 8);

  return v2(v1 & 1);
}

Swift::Bool __swiftcall ReactiveUIManager.isTargetedUpdateScheduledForAutoInstall()()
{
  v1 = ReactiveUIManager.statefulManager.getter();
  v2 = [v1 isTargetedUpdateScheduledForAutoInstall];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

id ReactiveUIManager.currentInitiatedAction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = ReactiveUIManager.currentUpdateOperationType.getter();
  if (result)
  {
    if (result == 1)
    {
      *a1 = 2;
    }

    else if (result == 2)
    {
      *a1 = 1;
    }

    else if (result == 3)
    {
      *a1 = 2;
    }

    else if (result == 4)
    {
      *a1 = 5;
    }

    else if (result == 5)
    {
      *a1 = 4;
    }

    else
    {
      *a1 = 0;
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t ReactiveUIManager.isClearingSpaceForDownload.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 isClearingSpaceForDownload];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t sub_26B054878()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

double sub_26B0548DC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_26B054968()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

double sub_26B0549CC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_26B054A58@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26B054ACC()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_observations);
  swift_beginAccess();
  v3 = *v2;
  sub_26B078640();
  swift_endAccess();
  return v3;
}

uint64_t sub_26B054B34(uint64_t a1)
{
  sub_26B078640();
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_observations);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_26B054BB8()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_cancellables);
  swift_beginAccess();
  v3 = *v2;
  sub_26B078640();
  swift_endAccess();
  return v3;
}

uint64_t sub_26B054C20(uint64_t a1)
{
  sub_26B078640();
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_cancellables);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_26B054CA4()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__statefulManager);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_26B054D14(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__statefulManager);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_26B054DB0()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__analyticsReporter);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_26B054E18(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__analyticsReporter);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_26B054E9C()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__preferredDescriptor);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_26B054F04(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__preferredDescriptor);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_26B054F84()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__alternateDescriptor);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_26B054FEC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__alternateDescriptor);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_26B05506C()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__targetedDescriptor);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_26B0550D4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__targetedDescriptor);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_26B055154()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__canEnrollInBetaUpdates);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_26B0551BC(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__canEnrollInBetaUpdates);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_26B055230()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__currentDownload);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_26B055298(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__currentDownload);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_26B055318()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__betaPrograms);
  swift_beginAccess();
  v3 = *v2;
  sub_26B078640();
  swift_endAccess();
  return v3;
}

uint64_t sub_26B055380(uint64_t a1)
{
  sub_26B078640();
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__betaPrograms);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_26B055400()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__enrolledBetaProgram);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_26B055468(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__enrolledBetaProgram);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_26B0554E8@<X0>(uint64_t *a1@<X8>)
{

  *a1 = ReactiveUIManager.statefulManager.getter();
}

uint64_t sub_26B055544@<X0>(id *a1@<X8>)
{

  *a1 = ReactiveUIManager.currentState.getter();
}

uint64_t sub_26B0555A0@<X0>(uint64_t *a1@<X8>)
{

  *a1 = ReactiveUIManager.preferredDescriptor.getter();
}

uint64_t sub_26B0555FC@<X0>(uint64_t *a1@<X8>)
{

  *a1 = ReactiveUIManager.alternateDescriptor.getter();
}

uint64_t sub_26B055658@<X0>(id *a1@<X8>)
{

  *a1 = ReactiveUIManager.scanError.getter();
}

uint64_t sub_26B0556B4@<X0>(uint64_t *a1@<X8>)
{

  *a1 = ReactiveUIManager.currentDownload.getter();
}

uint64_t sub_26B055710@<X0>(_BYTE *a1@<X8>)
{

  *a1 = ReactiveUIManager.isClearingSpaceForDownload.getter() & 1;
}

uint64_t sub_26B055770@<X0>(uint64_t *a1@<X8>)
{

  *a1 = ReactiveUIManager.targetedDescriptor.getter();
}

uint64_t sub_26B0557CC@<X0>(id *a1@<X8>)
{

  *a1 = ReactiveUIManager.ddmDeclaration.getter();
}

uint64_t sub_26B055828@<X0>(uint64_t *a1@<X8>)
{

  *a1 = ReactiveUIManager.betaPrograms.getter();
}

uint64_t sub_26B055884@<X0>(_BYTE *a1@<X8>)
{

  *a1 = ReactiveUIManager.canEnrollInBetaUpdates.getter() & 1;
}

uint64_t sub_26B0558E4@<X0>(uint64_t *a1@<X8>)
{

  *a1 = ReactiveUIManager.enrolledBetaProgram.getter();
}

id ReactiveUIManager.currentUpdateOperation.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 currentUpdateOperation];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t sub_26B055AB8@<X0>(id *a1@<X8>)
{

  *a1 = ReactiveUIManager.currentUpdateOperation.getter();
}

id ReactiveUIManager.currentUpdateOperationType.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 currentUpdateOperationType];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t sub_26B055C84@<X0>(id *a1@<X8>)
{

  *a1 = ReactiveUIManager.currentUpdateOperationType.getter();
}

uint64_t sub_26B055CE0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = ReactiveUIManager.hasHiddenDescriptors.getter() & 1;
}

uint64_t ReactiveUIManager.refreshPublisher.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_refreshPublisher);

  return v2;
}

uint64_t ReactiveUIManager.stateChangedPublisher.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_stateChangedPublisher);

  return v2;
}

uint64_t ReactiveUIManager.descriptorStateChangedPublisher.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_descriptorStateChangedPublisher);

  return v2;
}

uint64_t sub_26B055E00()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_26B055E70(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_26B055F08@<X0>(uint64_t *a1@<X8>)
{

  *a1 = ReactiveUIManager.presentingViewController.getter();
}

uint64_t sub_26B055F64(void *a1)
{
  sub_26B07111C(a1, &v3);
  v2 = v3;

  ReactiveUIManager.presentingViewController.setter(v2);
}

double sub_26B055FCC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  *a2 = a1;
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_26B05601C(void *a1)
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
  (*(v9 + 16))(&v5 - v2, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager___observationRegistrar, v1);
  v8 = &v13;
  v13 = v6;
  sub_26B069C94();
  sub_26B078320();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_26B0561E8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  v5 = (a1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController);
  swift_beginAccess();
  v2 = *v5;
  *v5 = a2;
  MEMORY[0x277D82BD8](v2);
  return swift_endAccess();
}

uint64_t sub_26B056288@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  (*(v15 + 16))(v11 - v6, v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager___observationRegistrar, v5);
  v24 = &v27;
  v27 = v17;
  sub_26B069C94();
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

uint64_t (*ReactiveUIManager.presentingViewController.modify(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 10388);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 10388);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26B05601C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26B069C94();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26B056660;
}

void sub_26B056660(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26B0566EC(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26B0566EC(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26B0566EC(uint64_t a1)
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
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078330();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26B056828@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v10 = *(v3 + 40);
  sub_26AEF56C4(*v3, v5, v6, v7, v8, v10);
  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_26B0568EC(uint64_t a1)
{
  memset(__b, 0, 0x29uLL);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  __b[0] = v11;
  __b[1] = v12;
  __b[2] = v13;
  __b[3] = v14;
  __b[4] = v15;
  LOBYTE(__b[5]) = v16;
  sub_26AEF56C4(v11, v12, v13, v14, v15, v16);
  v10 = v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog;
  swift_beginAccess();
  v2 = *v10;
  v3 = *(v10 + 8);
  v4 = *(v10 + 16);
  v5 = *(v10 + 24);
  v6 = *(v10 + 32);
  v7 = *(v10 + 40);
  *v10 = v11;
  *(v10 + 8) = v12;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  *(v10 + 32) = v15;
  *(v10 + 40) = v16;
  sub_26B06DA78(v2, v3, v4, v5, v6, v7);
  swift_endAccess();
  return sub_26B06DA78(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_26B056A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *a1;

  v12 = v8;
  ReactiveUIManager.presentedDialog.getter(v10);
  v2 = v10[1];
  v3 = v10[2];
  v4 = v10[3];
  v5 = v10[4];
  v6 = v11;
  *a2 = v10[0];
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
}

uint64_t sub_26B056AB4(char *a1, uint64_t *a2)
{
  sub_26AE9FB6C(a1, &v16);
  v5 = v16;
  v6 = v17;
  v7 = v18;
  v8 = v19;
  v9 = v20;
  v4 = *a2;

  v15 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  ReactiveUIManager.presentedDialog.setter(&v10);
}

char *sub_26B056B8C(uint64_t *a1, char *a2)
{
  if (a2[40] == 255)
  {
    memcpy(a2, a1, 0x29uLL);
  }

  else if (*(a1 + 40) == 255)
  {
    sub_26AEA0208(a2);
    memcpy(a2, a1, 0x29uLL);
  }

  else
  {
    v2 = a1[1];
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    v11 = *(a2 + 4);
    v12 = a2[40];
    *a2 = *a1;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    *(a2 + 3) = v4;
    *(a2 + 4) = v5;
    a2[40] = v6;
    sub_26AEA00D4(v7, v8, v9, v10, v11, v12);
  }

  return a2;
}

uint64_t sub_26B056C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x29uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  __b[0] = *a1;
  v5 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  __b[4] = v9;
  LOBYTE(__b[5]) = v10;
  sub_26AEF56C4(__b[0], v6, v7, v8, v9, v10);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return sub_26B06DA78(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_26B056D54(uint64_t a1, char *a2)
{
  v6[7] = a1;
  v6[6] = a2;
  sub_26AE9FB6C(a2, v6);
  v5 = (a1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog);
  swift_beginAccess();
  sub_26B056B8C(a2, v5);
  return swift_endAccess();
}

uint64_t (*ReactiveUIManager.presentedDialog.modify(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 51626);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 51626);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26B05601C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26B069C94();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26B056FD0;
}

void sub_26B056FD0(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26B05705C(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26B05705C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26B05705C(uint64_t a1)
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
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078330();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26B057198()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__performingBackgroundScan);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_26B057200(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__performingBackgroundScan);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t ReactiveUIManager.performingBackgroundScan.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26B05601C(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__performingBackgroundScan);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_26B057308@<X0>(_BYTE *a1@<X8>)
{

  *a1 = ReactiveUIManager.performingBackgroundScan.getter() & 1;
}

uint64_t sub_26B057368(char *a1)
{
  v2 = *a1;

  ReactiveUIManager.performingBackgroundScan.setter(v2 & 1);
}

uint64_t ReactiveUIManager.performingBackgroundScan.setter(int a1)
{
  v23 = a1;
  v18 = a1;
  v28 = 0;
  v19 = 0;
  v29 = a1;
  v20 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__performingBackgroundScan);
  v21 = &v27;
  swift_beginAccess();
  v22 = *v20;
  swift_endAccess();
  v26 = v22;
  v25 = v23;
  if (sub_26B05618C(&v26, &v25, MEMORY[0x277D839B0], MEMORY[0x277D839C8]))
  {
    v2 = v17;
    v3 = v19;
    KeyPath = swift_getKeyPath();
    v13 = KeyPath;

    v15 = &v9;
    MEMORY[0x28223BE20](KeyPath);
    v7[2] = v2;
    v8 = v4 & 1;
    sub_26B056288(v5, sub_26B06DB0C, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v16 = v3;

    return v16;
  }

  else
  {
    v10 = (v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__performingBackgroundScan);
    v11 = v24;
    swift_beginAccess();
    *v10 = v18 & 1;
    swift_endAccess();
    return v19;
  }
}

uint64_t sub_26B0575CC(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__performingBackgroundScan);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

uint64_t (*ReactiveUIManager.performingBackgroundScan.modify(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 65512);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 65512);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26B05601C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26B069C94();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26B057808;
}

void sub_26B057808(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26B057894(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26B057894(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26B057894(uint64_t a1)
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
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078330();

  return (*(v8 + 8))(v10, v11);
}

uint64_t ReactiveUIManager.init(representing:analyticsReporter:)(void *a1, uint64_t a2)
{
  v58 = 0;
  v61 = a1;
  v60 = a2;
  v59 = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_26B078350();
  v45 = OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_observations;
  sub_26B078070();
  sub_26B07A760();
  sub_26AEECE8C();
  *(v2 + v45) = sub_26B07A1B0();
  v46 = OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_cancellables;
  sub_26B0788B0();
  sub_26AFA7A40();
  *(v2 + v46) = sub_26B079C50();
  *(v2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__preferredDescriptor) = 0;
  *(v2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__alternateDescriptor) = 0;
  *(v2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__targetedDescriptor) = 0;
  *(v2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__canEnrollInBetaUpdates) = 0;
  *(v2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__currentDownload) = 0;
  *(v2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__betaPrograms) = 0;
  *(v2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__enrolledBetaProgram) = 0;
  v47 = OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_refreshPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCF10, qword_26B08BA48);
  *(v52 + v47) = sub_26B0788E0();
  v48 = OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_stateChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0B0, &unk_26B08BE90);
  *(v52 + v48) = sub_26B0788E0();
  v49 = OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_descriptorStateChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF68, &qword_26B092278);
  *(v52 + v49) = sub_26B0788E0();
  *(v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController) = 0;
  v3 = v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = -1;
  sub_26B0575AC(0, (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__performingBackgroundScan));
  sub_26B078350();
  MEMORY[0x277D82BE0](a1);
  *(v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__statefulManager) = a1;

  *(v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__analyticsReporter) = a2;
  type metadata accessor for StatefulUIDelegateHandler();

  v53 = StatefulUIDelegateHandler.__allocating_init(proxyOf:analyticsReporter:)(v52, a2);
  swift_beginAccess();
  v4 = *(v52 + 24);
  *(v52 + 24) = v53;
  MEMORY[0x277D82BD8](v4);
  swift_endAccess();
  v54 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__statefulManager);
  swift_beginAccess();
  v55 = *v54;
  MEMORY[0x277D82BE0](*v54);
  swift_endAccess();
  swift_beginAccess();
  v56 = *(v52 + 24);
  MEMORY[0x277D82BE0](v56);
  swift_endAccess();
  [v55 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v55);
  v34 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__statefulManager);
  swift_beginAccess();
  v36 = *v34;
  MEMORY[0x277D82BE0](*v34);
  swift_endAccess();
  sub_26AF4013C();
  v35 = sub_26B07A2E0();
  [v36 setDelegateCallbackQueue_];
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  v37 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__preferredDescriptor);
  swift_beginAccess();
  *v37 = 0;

  swift_endAccess();
  v38 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__alternateDescriptor);
  swift_beginAccess();
  *v38 = 0;

  swift_endAccess();
  v39 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__targetedDescriptor);
  swift_beginAccess();
  *v39 = 0;

  swift_endAccess();
  v40 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__canEnrollInBetaUpdates);
  swift_beginAccess();
  *v40 = 0;
  swift_endAccess();
  v41 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__currentDownload);
  swift_beginAccess();
  *v41 = 0;

  swift_endAccess();
  v42 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__betaPrograms);
  swift_beginAccess();
  *v42 = 0;

  swift_endAccess();
  v43 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__enrolledBetaProgram);
  swift_beginAccess();
  *v43 = 0;

  swift_endAccess();
  v44 = [a1 preferredStatefulDescriptor];
  if (v44)
  {
    type metadata accessor for ReactiveDescriptor(0);
    MEMORY[0x277D82BE0](v44);

    v33 = ReactiveDescriptor.__allocating_init(representing:managedBy:)(v44, v52);
    v32 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__preferredDescriptor);
    swift_beginAccess();
    *v32 = v33;

    swift_endAccess();
    MEMORY[0x277D82BD8](v44);
  }

  v31 = [a1 alternateStatefulDescriptor];
  if (v31)
  {
    type metadata accessor for ReactiveDescriptor(0);
    MEMORY[0x277D82BE0](v31);

    v30 = ReactiveDescriptor.__allocating_init(representing:managedBy:)(v31, v52);
    v29 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__alternateDescriptor);
    swift_beginAccess();
    *v29 = v30;

    swift_endAccess();
    MEMORY[0x277D82BD8](v31);
  }

  if ([a1 currentDownload])
  {
    v5 = swift_dynamicCastObjCProtocolConditional();
    v26 = v5;
    v27 = 0;
    if (v5)
    {
      ObjectType = swift_getObjectType();
      v6 = sub_26B06DCDC();
      v27 = dynamic_cast_existential_0_superclass_conditional(v26, ObjectType, v6);
    }

    if (v27)
    {
      v24 = v27;
    }

    else
    {
      swift_unknownObjectRelease();
      v24 = 0;
    }

    v28 = v24;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    type metadata accessor for ReactiveDownload(0);
    MEMORY[0x277D82BE0](v28);
    v23 = ReactiveDownload.__allocating_init(representing:)(v28);
    v22 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__currentDownload);
    swift_beginAccess();
    *v22 = v23;

    swift_endAccess();
    MEMORY[0x277D82BD8](v28);
  }

  v20 = [a1 canEnrollInBetaUpdates];
  v19 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__canEnrollInBetaUpdates);
  swift_beginAccess();
  *v19 = v20;
  swift_endAccess();
  v21 = [a1 enrolledBetaProgram];
  if (v21)
  {
    type metadata accessor for ReactiveBetaProgram();
    MEMORY[0x277D82BE0](v21);
    v18 = ReactiveBetaProgram.__allocating_init(representing:)(v21);
    v17 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__enrolledBetaProgram);
    swift_beginAccess();
    *v17 = v18;

    swift_endAccess();
    MEMORY[0x277D82BD8](v21);
  }

  v16 = [a1 betaPrograms];
  if (v16)
  {
    sub_26B06DC78();
    v14 = sub_26B07A060();
    MEMORY[0x277D82BD8](v16);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v58 = v15;
    sub_26B078640();
    v57[1] = v15;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF70, &qword_26B092280);
    sub_26B06DB3C();
    v57[0] = sub_26B07A5A0();
    v10 = type metadata accessor for ReactiveBetaProgram();
    v7 = sub_26B06DBC4();
    v12 = sub_26B058A70(sub_26B058A04, 0, v13, v10, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v11);
    sub_26B06DC4C(v57);
    v9 = (v52 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__betaPrograms);
    swift_beginAccess();
    *v9 = v12;

    swift_endAccess();
  }

  sub_26B059354();

  MEMORY[0x277D82BD8](a1);
  return v52;
}

uint64_t sub_26B0586FC(void **a1)
{
  v26 = 0;
  v19 = *a1;
  v26 = v19;
  v20 = [v19 title];
  if (v20)
  {
    v15 = sub_26B079E00();
    v16 = v1;
    MEMORY[0x277D82BD8](v20);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v25[0] = v17;
  v25[1] = v18;
  sub_26AF01944(v25);
  MEMORY[0x277D82BE0](v19);
  if (!v18)
  {
    v5 = 0;
    goto LABEL_18;
  }

  v14 = [v19 title];
  if (v14)
  {
    v10 = sub_26B079E00();
    v11 = v2;
    MEMORY[0x277D82BD8](v14);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  sub_26B078640();
  v8 = sub_26B079D00("", 0, 1);
  v9 = v3;
  sub_26B078640();
  v23[0] = v12;
  v23[1] = v13;
  *&v24 = v8;
  *(&v24 + 1) = v9;
  if (!v13)
  {
    if (!*(&v24 + 1))
    {
      sub_26AF01944(v23);
      v7 = 1;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_26AF01970(v23, v22);
  if (!*(&v24 + 1))
  {
    sub_26AE9BCC0(v22);
LABEL_15:
    sub_26AF0190C(v23);
    v7 = 0;
    goto LABEL_14;
  }

  v21 = v24;
  v6 = MEMORY[0x26D66D0C0](v22[0], v22[1], v24, *(&v24 + 1));
  sub_26AE9BCC0(&v21);
  sub_26AE9BCC0(v22);
  sub_26AF01944(v23);
  v7 = v6;
LABEL_14:

  v5 = v7 ^ 1;
LABEL_18:
  MEMORY[0x277D82BD8](v19);
  return v5 & 1;
}

uint64_t sub_26B058A04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ReactiveBetaProgram();
  MEMORY[0x277D82BE0](v3);
  result = ReactiveBetaProgram.__allocating_init(representing:)(v3);
  *a2 = result;
  return result;
}

uint64_t sub_26B058A70(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v55 = &v15 - v54;
  v56 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v64 = &v15 - v63;
  v65 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v66 = &v15 - v65;
  v67 = sub_26B07A210();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69 = sub_26B07A5D0();
  v33 = sub_26B07A5E0();
  sub_26B07A5B0();
  result = sub_26B07A200();
  if (v67 < 0)
  {
    sub_26B07A650();
    __break(1u);
LABEL_24:
    v17 = sub_26B07A070();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_26B07A220();
    swift_getAssociatedConformanceWitness();
    v22 = sub_26B079D70();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_26B07A690();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69;

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_26B07A650();
      __break(1u);
LABEL_18:
      sub_26B07A690();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_26B07A280();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_26B070B38();
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_26B07A5C0();
    sub_26B07A230();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B059354()
{
  v151 = 0;
  v38 = sub_26B06DDEC;
  v48 = sub_26B06DEA4;
  v65 = sub_26B06DF64;
  v82 = sub_26B06E058;
  v92 = sub_26B06E110;
  v102 = sub_26B06E1C8;
  v143 = sub_26B06E448;
  v196 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF98, &qword_26B092288);
  v23 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v139 = &v22 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DEFA0, qword_26B092290);
  v145 = *(v148 - 8);
  v146 = v148 - 8;
  v24 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v148);
  v147 = &v22 - v24;
  v134 = 0;
  v121 = sub_26B078360();
  v27 = *(v121 - 8);
  v28 = v121 - 8;
  v25 = (v27[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121);
  v124 = &v22 - v25;
  v196 = v0;
  v26 = v195;
  v195[0] = v0;
  KeyPath = swift_getKeyPath();
  v30 = ReactiveUIManager.statefulManager.getter();
  v29 = swift_getKeyPath();
  v117 = &qword_2803DE000;
  v119 = v27[2];
  v118 = v27 + 2;
  v119(v124, v149 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v121);
  v120 = sub_26B069C94();
  v32 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(KeyPath, v30, v29, v124, v134, v134, v120);
  v123 = v27[1];
  v122 = v27 + 1;
  v123(v124, v121);

  MEMORY[0x277D82BD8](v30);

  v33 = &v194;
  v194 = v32;
  v129 = &qword_2803DE000;
  v34 = &v193;
  v150 = 33;
  swift_beginAccess();
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC540, qword_26B0907E0);
  sub_26B07A1D0();
  v2 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v195[1]);
  v35 = v192;
  v192[0] = v2;
  v41 = swift_getKeyPath();
  v40 = ReactiveUIManager.statefulManager.getter();
  v39 = swift_getKeyPath();
  v119(v124, v149 + v117[462], v121);

  swift_unownedRetain();
  v191 = v149;

  v36 = v191;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v140 = 24;
  v141 = 7;
  v3 = swift_allocObject();
  *(v3 + 16) = v36;
  v37 = v3;
  swift_unownedRelease();
  v42 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v41, v40, v39, v124, v38, v37, v120);
  sub_26B06DDF4(v38);
  v123(v124, v121);

  MEMORY[0x277D82BD8](v40);

  v43 = &v190;
  v190 = v42;
  v44 = &v189;
  swift_beginAccess();
  sub_26B07A1D0();
  v4 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v192[1]);
  v45 = v188;
  v188[0] = v4;
  v51 = swift_getKeyPath();
  v50 = ReactiveUIManager.statefulManager.getter();
  v49 = swift_getKeyPath();
  v119(v124, v149 + v117[462], v121);

  swift_unownedRetain();
  v187 = v149;

  v46 = v187;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v5 = swift_allocObject();
  *(v5 + 16) = v46;
  v47 = v5;
  swift_unownedRelease();
  v52 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v51, v50, v49, v124, v48, v47, v120);
  sub_26B06DDF4(v48);
  v123(v124, v121);

  MEMORY[0x277D82BD8](v50);

  v53 = &v186;
  v186 = v52;
  v54 = &v185;
  swift_beginAccess();
  sub_26B07A1D0();
  v6 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v188[1]);
  v55 = v184;
  v184[0] = v6;
  v58 = swift_getKeyPath();
  v57 = ReactiveUIManager.statefulManager.getter();
  v56 = swift_getKeyPath();
  v119(v124, v149 + v117[462], v121);
  v59 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v58, v57, v56, v124, v134, v134, v120);
  v123(v124, v121);

  MEMORY[0x277D82BD8](v57);

  v60 = &v183;
  v183 = v59;
  v61 = &v182;
  swift_beginAccess();
  sub_26B07A1D0();
  v7 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v184[1]);
  v62 = v181;
  v181[0] = v7;
  v68 = swift_getKeyPath();
  v67 = ReactiveUIManager.statefulManager.getter();
  v66 = swift_getKeyPath();
  v119(v124, v149 + v117[462], v121);

  swift_unownedRetain();
  v180 = v149;

  v63 = v180;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v8 = swift_allocObject();
  *(v8 + 16) = v63;
  v64 = v8;
  swift_unownedRelease();
  v69 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v68, v67, v66, v124, v65, v64, v120);
  sub_26B06DF6C(v65);
  v123(v124, v121);

  MEMORY[0x277D82BD8](v67);

  v70 = &v179;
  v179 = v69;
  v71 = &v178;
  swift_beginAccess();
  sub_26B07A1D0();
  v9 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v181[1]);
  v72 = v177;
  v177[0] = v9;
  v75 = swift_getKeyPath();
  v74 = ReactiveUIManager.statefulManager.getter();
  v73 = swift_getKeyPath();
  v119(v124, v149 + v117[462], v121);
  v76 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v75, v74, v73, v124, v134, v134, v120);
  v123(v124, v121);

  MEMORY[0x277D82BD8](v74);

  v77 = &v176;
  v176 = v76;
  v78 = &v175;
  swift_beginAccess();
  sub_26B07A1D0();
  v10 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v177[1]);
  v79 = v174;
  v174[0] = v10;
  v85 = swift_getKeyPath();
  v84 = ReactiveUIManager.statefulManager.getter();
  v83 = swift_getKeyPath();
  v119(v124, v149 + v117[462], v121);

  swift_unownedRetain();
  v173 = v149;

  v80 = v173;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v11 = swift_allocObject();
  *(v11 + 16) = v80;
  v81 = v11;
  swift_unownedRelease();
  v86 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v85, v84, v83, v124, v82, v81, v120);
  sub_26B06E060(v82);
  v123(v124, v121);

  MEMORY[0x277D82BD8](v84);

  v87 = &v172;
  v172 = v86;
  v88 = &v171;
  swift_beginAccess();
  sub_26B07A1D0();
  v12 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v174[1]);
  v89 = v170;
  v170[0] = v12;
  v95 = swift_getKeyPath();
  v94 = ReactiveUIManager.statefulManager.getter();
  v93 = swift_getKeyPath();
  v119(v124, v149 + v117[462], v121);

  swift_unownedRetain();
  v169 = v149;

  v90 = v169;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v13 = swift_allocObject();
  *(v13 + 16) = v90;
  v91 = v13;
  swift_unownedRelease();
  v96 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v95, v94, v93, v124, v92, v91, v120);
  sub_26B06E118(v92);
  v123(v124, v121);

  MEMORY[0x277D82BD8](v94);

  v97 = &v168;
  v168 = v96;
  v98 = &v167;
  swift_beginAccess();
  sub_26B07A1D0();
  v14 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v170[1]);
  v99 = v166;
  v166[0] = v14;
  v105 = swift_getKeyPath();
  v104 = ReactiveUIManager.statefulManager.getter();
  v103 = swift_getKeyPath();
  v119(v124, v149 + v117[462], v121);

  swift_unownedRetain();
  v165 = v149;

  v100 = v165;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v15 = swift_allocObject();
  *(v15 + 16) = v100;
  v101 = v15;
  swift_unownedRelease();
  v106 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v105, v104, v103, v124, v102, v101, v120);
  sub_26B06E1D0(v102);
  v123(v124, v121);

  MEMORY[0x277D82BD8](v104);

  v107 = &v164;
  v164 = v106;
  v108 = &v163;
  swift_beginAccess();
  sub_26B07A1D0();
  v16 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v166[1]);
  v109 = v162;
  v162[0] = v16;
  v112 = swift_getKeyPath();
  v111 = ReactiveUIManager.statefulManager.getter();
  v110 = swift_getKeyPath();
  v119(v124, v149 + v117[462], v121);
  v113 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v112, v111, v110, v124, v134, v134, v120);
  v123(v124, v121);

  MEMORY[0x277D82BD8](v111);

  v114 = &v161;
  v161 = v113;
  v115 = &v160;
  swift_beginAccess();
  sub_26B07A1D0();
  v17 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v162[1]);
  v116 = v159;
  v159[0] = v17;
  v127 = swift_getKeyPath();
  v126 = ReactiveUIManager.statefulManager.getter();
  v125 = swift_getKeyPath();
  v119(v124, v149 + v117[462], v121);
  v128 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v127, v126, v125, v124, v134, v134, v120);
  v123(v124, v121);

  MEMORY[0x277D82BD8](v126);

  v130 = &v158;
  v158 = v128;
  v132 = &v157;
  swift_beginAccess();
  sub_26B07A1D0();
  v18 = v149;
  swift_endAccess();
  MEMORY[0x277D82BD8](v159[1]);
  v133 = *(v18 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_refreshPublisher);

  v156[1] = v133;
  v19 = [objc_opt_self() mainRunLoop];
  v138 = v156;
  v156[0] = v19;
  v20 = sub_26B07A3F0();
  (*(*(v20 - 8) + 56))(v139, 1);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCF10, qword_26B08BA48);
  v136 = sub_26B06E27C();
  v137 = sub_26AF6863C();
  sub_26B06E2E0();
  sub_26B078940();
  sub_26B06E360(v139);
  MEMORY[0x277D82BD8](v156[0]);

  v144 = swift_allocObject();

  v142 = v149;
  swift_weakInit();

  sub_26B06E450();
  v154 = sub_26B078950();

  (*(v145 + 8))(v147, v148);
  v152 = v149 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_cancellables;
  v153 = &v155;
  swift_beginAccess();
  sub_26B0788A0();
  swift_endAccess();
}

uint64_t ReactiveUIManager.deinit()
{
  v9 = v0;
  v6 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_observations);
  swift_beginAccess();
  v7 = *v6;
  sub_26B078640();
  swift_endAccess();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC540, qword_26B0907E0);
  sub_26B06E4D8();
  sub_26B079FF0();
  sub_26AEED080(&v8);
  sub_26B06E560((v5 + 16));
  sub_26B06E594((v5 + 24));
  v2 = v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar;
  v3 = sub_26B078360();
  v4 = *(*(v3 - 8) + 8);
  (v4)(v2);
  sub_26AEED080((v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_observations));
  sub_26AFA7B10((v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_cancellables));
  MEMORY[0x277D82BD8](*(v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__statefulManager));

  sub_26AF7E684();
  sub_26AF7E684();
  sub_26AF7E684();
  sub_26B06E5C8();
  sub_26AF06140((v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__betaPrograms));
  sub_26AF1E370();

  sub_26B06C958((v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController));
  sub_26AEA007C(v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog);
  v4(v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager___observationRegistrar, v3);
  return v5;
}

uint64_t sub_26B05ABC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[8] = v4;
  v4[9] = 0;
  v4[9] = a4;
  sub_26B07A130();
  v4[11] = sub_26B07A120();
  v7 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26B05AC78, v7, v5);
}

uint64_t sub_26B05AC78()
{
  v7 = *(v0 + 80);
  *(v0 + 64) = v0;
  swift_beginAccess();
  if (*(v7 + 16))
  {
    v5 = *(v7 + 16);
    MEMORY[0x277D82BE0](v5);
    swift_endAccess();
    [v5 invalidate];
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    swift_endAccess();
  }

  v4 = *(v6 + 80);
  swift_beginAccess();
  v1 = *(v4 + 16);
  *(v4 + 16) = 0;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();

  v2 = *(*(v6 + 64) + 8);

  return v2();
}

uint64_t ReactiveUIManager.readScanResultsCacheExpectedTTLValue()@<X0>(void *a1@<X8>)
{
  v19 = a1;
  v36 = 0;
  v34 = 0;
  v25 = 0;
  v20 = sub_26B0782A0();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v24 = &v4 - v23;
  v26 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD260, &qword_26B089A70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v27 = &v4 - v26;
  v28 = sub_26B0782E0();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v32 = &v4 - v31;
  v36 = v1;
  v33 = ReactiveUIManager.statefulManager.getter();
  v35 = [v33 environment];
  if (v35)
  {
    v11 = &v35;
    v16 = v35;
    swift_unknownObjectRetain();
    sub_26B06C7D4(v11);
    MEMORY[0x277D82BD8](v33);
    swift_getObjectType();
    v15 = ReactiveUIManager.statefulManager.getter();
    sub_26B0782D0();
    sub_26B0782B0();
    v12 = v2;
    v14 = sub_26B079DF0();
    (*(v29 + 8))(v32, v28);

    sub_26AF4013C();
    v13 = sub_26B07A2E0();
    v17 = [v16 scanOperationWithManager:v15 identifier:v14 completionQueue:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    swift_unknownObjectRelease();
    v18 = v17;
  }

  else
  {
    sub_26B06C7D4(&v35);
    MEMORY[0x277D82BD8](v33);
    v18 = 0;
  }

  v10 = v18;
  if (!v18)
  {
    return (*(v21 + 56))(v19, 1, 1, v20);
  }

  v9 = v10;
  v7 = v10;
  v34 = v10;
  swift_getObjectType();
  v8 = [v7 readScanResultsCacheExpectedTTLValue];
  if (v8)
  {
    v6 = v8;
    v5 = v8;
    sub_26B078250();
    (*(v21 + 32))(v27, v24, v20);
    (*(v21 + 56))(v27, 0, 1, v20);
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    (*(v21 + 56))(v27, 1, 1, v20);
  }

  sub_26AEEE5DC(v27, v19);
  return swift_unknownObjectRelease();
}

uint64_t sub_26B05B2BC(uint64_t a1)
{
  v166 = a1;
  v127 = sub_26B06E748;
  v128 = sub_26B062DDC;
  v129 = sub_26B06E674;
  v130 = sub_26B06E99C;
  v131 = sub_26B06E9E8;
  v132 = sub_26B062D4C;
  v133 = sub_26B06EAE8;
  v134 = sub_26B06E7FC;
  v135 = sub_26B06EBE8;
  v136 = sub_26B06E898;
  v137 = sub_26B06ECE8;
  v138 = sub_26B06E920;
  v139 = sub_26B06E954;
  v140 = sub_26B06EA34;
  v141 = sub_26B06EA6C;
  v142 = sub_26B06EAA0;
  v143 = sub_26B06EB34;
  v144 = sub_26B06EB6C;
  v145 = sub_26B06EBA0;
  v146 = sub_26B06EC34;
  v147 = sub_26B06EC6C;
  v148 = sub_26B06ECA0;
  v149 = sub_26B06ED34;
  v150 = MEMORY[0x277D85700];
  v151 = &unk_26B092570;
  v152 = &unk_26B092580;
  v178 = 0;
  v177 = 0;
  v153 = 0;
  v159 = 0;
  v154 = sub_26B078580();
  v155 = *(v154 - 8);
  v156 = v154 - 8;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v154);
  v158 = &v68 - v157;
  v160 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v159);
  v161 = &v68 - v160;
  v169 = sub_26B0782A0();
  v167 = *(v169 - 8);
  v168 = v169 - 8;
  v162 = v167;
  v163 = *(v167 + 64);
  v164 = (v163 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v166);
  v170 = &v68 - v164;
  v178 = v1;
  v177 = v165;
  sub_26B078260();
  sub_26B06E5F4();
  v171 = sub_26B079D40();
  (*(v167 + 8))(v170, v169);
  if (v171)
  {
    v125 = 0;
    v2 = sub_26B07A160();
    (*(*(v2 - 8) + 56))(v161, 1);
    v121 = v162;
    (*(v167 + 16))(v170, v166, v169);

    sub_26B07A130();
    v122 = sub_26B07A120();
    v123 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v124 = (v123 + v163 + 7) & 0xFFFFFFFFFFFFFFF8;
    v3 = swift_allocObject();
    v4 = v150;
    v5 = v123;
    v6 = v167;
    v7 = v170;
    v8 = v169;
    v126 = v3;
    *(v3 + 16) = v122;
    *(v3 + 24) = v4;
    (*(v6 + 32))(v3 + v5, v7, v8);
    v9 = v125;
    v10 = v161;
    v11 = v152;
    v12 = v126;
    *(v126 + v124) = v165;
    sub_26AEBC0C4(v9, v9, v10, v11, v12, MEMORY[0x277D84F78] + 8);
  }

  else
  {
    sub_26B078540();

    v89 = v162;
    (*(v167 + 16))(v170, v166, v169);
    v90 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v101 = 7;
    v91 = swift_allocObject();
    (*(v167 + 32))(v91 + v90, v170, v169);

    v100 = 32;
    v14 = swift_allocObject();
    v15 = v91;
    v95 = v14;
    *(v14 + 16) = v127;
    *(v14 + 24) = v15;

    v16 = swift_allocObject();
    v102 = v16;
    *(v16 + 16) = v128;
    *(v16 + 24) = 0;
    v119 = sub_26B078570();
    v120 = sub_26B07A2B0();
    v98 = 17;
    v104 = swift_allocObject();
    v97 = 32;
    *(v104 + 16) = 32;
    v105 = swift_allocObject();
    v99 = 8;
    *(v105 + 16) = 8;
    v17 = swift_allocObject();
    v18 = v165;
    v92 = v17;
    *(v17 + 16) = v129;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v92;
    v93 = v19;
    *(v19 + 16) = v130;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v93;
    v106 = v21;
    *(v21 + 16) = v131;
    *(v21 + 24) = v22;
    v107 = swift_allocObject();
    *(v107 + 16) = v97;
    v108 = swift_allocObject();
    *(v108 + 16) = v99;
    v23 = swift_allocObject();
    v94 = v23;
    *(v23 + 16) = v132;
    *(v23 + 24) = 0;
    v24 = swift_allocObject();
    v25 = v94;
    v109 = v24;
    *(v24 + 16) = v133;
    *(v24 + 24) = v25;
    v110 = swift_allocObject();
    *(v110 + 16) = v97;
    v111 = swift_allocObject();
    *(v111 + 16) = v99;
    v26 = swift_allocObject();
    v27 = v95;
    v96 = v26;
    *(v26 + 16) = v134;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v96;
    v112 = v28;
    *(v28 + 16) = v135;
    *(v28 + 24) = v29;
    v113 = swift_allocObject();
    *(v113 + 16) = v97;
    v114 = swift_allocObject();
    *(v114 + 16) = v99;
    v30 = swift_allocObject();
    v31 = v102;
    v103 = v30;
    *(v30 + 16) = v136;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v103;
    v116 = v32;
    *(v32 + 16) = v137;
    *(v32 + 24) = v33;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    v115 = sub_26B07A760();
    v117 = v34;

    v35 = v104;
    v36 = v117;
    *v117 = v138;
    v36[1] = v35;

    v37 = v105;
    v38 = v117;
    v117[2] = v139;
    v38[3] = v37;

    v39 = v106;
    v40 = v117;
    v117[4] = v140;
    v40[5] = v39;

    v41 = v107;
    v42 = v117;
    v117[6] = v141;
    v42[7] = v41;

    v43 = v108;
    v44 = v117;
    v117[8] = v142;
    v44[9] = v43;

    v45 = v109;
    v46 = v117;
    v117[10] = v143;
    v46[11] = v45;

    v47 = v110;
    v48 = v117;
    v117[12] = v144;
    v48[13] = v47;

    v49 = v111;
    v50 = v117;
    v117[14] = v145;
    v50[15] = v49;

    v51 = v112;
    v52 = v117;
    v117[16] = v146;
    v52[17] = v51;

    v53 = v113;
    v54 = v117;
    v117[18] = v147;
    v54[19] = v53;

    v55 = v114;
    v56 = v117;
    v117[20] = v148;
    v56[21] = v55;

    v57 = v116;
    v58 = v117;
    v117[22] = v149;
    v58[23] = v57;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v119, v120))
    {
      v59 = v153;
      v82 = sub_26B07A420();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v83 = sub_26AEA3B70(0, v81, v81);
      v84 = sub_26AEA3B70(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v85 = &v176;
      v176 = v82;
      v86 = &v175;
      v175 = v83;
      v87 = &v174;
      v174 = v84;
      sub_26AEA3BC4(2, &v176);
      sub_26AEA3BC4(4, v85);
      v172 = v138;
      v173 = v104;
      sub_26AEA3BD8(&v172, v85, v86, v87);
      v88 = v59;
      if (v59)
      {

        __break(1u);
      }

      else
      {
        v172 = v139;
        v173 = v105;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        v80 = 0;
        v172 = v140;
        v173 = v106;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        v79 = 0;
        v172 = v141;
        v173 = v107;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        v78 = 0;
        v172 = v142;
        v173 = v108;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        v77 = 0;
        v172 = v143;
        v173 = v109;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        v76 = 0;
        v172 = v144;
        v173 = v110;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        v75 = 0;
        v172 = v145;
        v173 = v111;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        v74 = 0;
        v172 = v146;
        v173 = v112;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        v73 = 0;
        v172 = v147;
        v173 = v113;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        v72 = 0;
        v172 = v148;
        v173 = v114;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        v71 = 0;
        v172 = v149;
        v173 = v116;
        sub_26AEA3BD8(&v172, &v176, &v175, &v174);
        _os_log_impl(&dword_26AE88000, v119, v120, "%s.%s: Cache TTL (%s) < %s, refreshing scan results", v82, 0x2Au);
        sub_26AEA3C24(v83, 0, v81);
        sub_26AEA3C24(v84, 4, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v60 = MEMORY[0x277D82BD8](v119);
    (*(v155 + 8))(v158, v154, v60);
    v69 = 0;
    v61 = sub_26B07A160();
    (*(*(v61 - 8) + 56))(v161, 1);

    sub_26B07A130();
    v70 = sub_26B07A120();
    v62 = swift_allocObject();
    v63 = v150;
    v64 = v165;
    v65 = v69;
    v66 = v161;
    v67 = v151;
    v62[2] = v70;
    v62[3] = v63;
    v62[4] = v64;
    sub_26AEBC0C4(v65, v65, v66, v67, v62, MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_26B05C8CC()
{
  v120 = sub_26B06F55C;
  v121 = sub_26B06F60C;
  v122 = sub_26B06F658;
  v123 = sub_26B062CF0;
  v124 = sub_26B06F758;
  v125 = sub_26B06F590;
  v126 = sub_26B06F5C4;
  v127 = sub_26B06F6A4;
  v128 = sub_26B06F6DC;
  v129 = sub_26B06F710;
  v130 = sub_26B06F7A4;
  v131 = sub_26B06F308;
  v132 = sub_26B06F3B8;
  v133 = sub_26B06F404;
  v134 = sub_26B062C94;
  v135 = sub_26B06F504;
  v136 = sub_26B06F33C;
  v137 = sub_26B06F370;
  v138 = sub_26B06F450;
  v139 = sub_26B06F488;
  v140 = sub_26B06F4BC;
  v141 = sub_26B06F550;
  v171 = 0;
  v170 = 0;
  v142 = 0;
  v164 = 0.0;
  v143 = 0;
  v144 = sub_26B078580();
  v145 = *(v144 - 8);
  v146 = v144 - 8;
  v147 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v148 = v54 - v147;
  v149 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v150 = v54 - v149;
  v151 = sub_26B0782A0();
  v152 = *(v151 - 8);
  v153 = v151 - 8;
  v154 = (*(v152 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v151);
  v155 = v54 - v154;
  v156 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54 - v154);
  v157 = v54 - v156;
  v171 = v54 - v156;
  v170 = v0;
  v172 = ReactiveUIManager.getScanResultsCacheExpectedTTLDuration()();
  v158 = *&v172.is_nil;
  if (v4)
  {
    sub_26B078540();

    v81 = sub_26B078570();
    v82 = sub_26B07A2C0();
    v67 = 17;
    v70 = 7;
    v72 = swift_allocObject();
    v66 = 32;
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    v68 = 8;
    *(v73 + 16) = 8;
    v69 = 32;
    v30 = swift_allocObject();
    v31 = v119;
    v64 = v30;
    *(v30 + 16) = v131;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v64;
    v65 = v32;
    *(v32 + 16) = v132;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v65;
    v74 = v34;
    *(v34 + 16) = v133;
    *(v34 + 24) = v35;
    v75 = swift_allocObject();
    *(v75 + 16) = v66;
    v76 = swift_allocObject();
    *(v76 + 16) = v68;
    v36 = swift_allocObject();
    v71 = v36;
    *(v36 + 16) = v134;
    *(v36 + 24) = 0;
    v37 = swift_allocObject();
    v38 = v71;
    v78 = v37;
    *(v37 + 16) = v135;
    *(v37 + 24) = v38;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    v77 = sub_26B07A760();
    v79 = v39;

    v40 = v72;
    v41 = v79;
    *v79 = v136;
    v41[1] = v40;

    v42 = v73;
    v43 = v79;
    v79[2] = v137;
    v43[3] = v42;

    v44 = v74;
    v45 = v79;
    v79[4] = v138;
    v45[5] = v44;

    v46 = v75;
    v47 = v79;
    v79[6] = v139;
    v47[7] = v46;

    v48 = v76;
    v49 = v79;
    v79[8] = v140;
    v49[9] = v48;

    v50 = v78;
    v51 = v79;
    v79[10] = v141;
    v51[11] = v50;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v81, v82))
    {
      v52 = v142;
      v56 = sub_26B07A420();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v57 = sub_26AEA3B70(0, v55, v55);
      v58 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v60 = &v169;
      v169 = v56;
      v61 = &v168;
      v168 = v57;
      v62 = &v167;
      v167 = v58;
      v59 = 2;
      sub_26AEA3BC4(2, &v169);
      sub_26AEA3BC4(v59, v60);
      v165 = v136;
      v166 = v72;
      sub_26AEA3BD8(&v165, v60, v61, v62);
      v63 = v52;
      if (v52)
      {

        __break(1u);
      }

      else
      {
        v165 = v137;
        v166 = v73;
        sub_26AEA3BD8(&v165, &v169, &v168, &v167);
        v54[3] = 0;
        v165 = v138;
        v166 = v74;
        sub_26AEA3BD8(&v165, &v169, &v168, &v167);
        v54[2] = 0;
        v165 = v139;
        v166 = v75;
        sub_26AEA3BD8(&v165, &v169, &v168, &v167);
        v54[1] = 0;
        v165 = v140;
        v166 = v76;
        sub_26AEA3BD8(&v165, &v169, &v168, &v167);
        v54[0] = 0;
        v165 = v141;
        v166 = v78;
        sub_26AEA3BD8(&v165, &v169, &v168, &v167);
        _os_log_impl(&dword_26AE88000, v81, v82, "%s.%s: Unable to get the base chache TTL duration. Can't set a timer.", v56, 0x16u);
        sub_26AEA3C24(v57, 0, v55);
        sub_26AEA3C24(v58, 2, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v53 = MEMORY[0x277D82BD8](v81);
    return (*(v145 + 8))(v148, v144, v53);
  }

  else
  {
    v118 = v158;
    v117 = v158;
    v164 = v158;
    if (v158 <= 0.0)
    {
      sub_26B078540();

      v113 = sub_26B078570();
      v114 = sub_26B07A2C0();
      v99 = 17;
      v102 = 7;
      v104 = swift_allocObject();
      v98 = 32;
      *(v104 + 16) = 32;
      v105 = swift_allocObject();
      v100 = 8;
      *(v105 + 16) = 8;
      v101 = 32;
      v6 = swift_allocObject();
      v7 = v119;
      v96 = v6;
      *(v6 + 16) = v120;
      *(v6 + 24) = v7;
      v8 = swift_allocObject();
      v9 = v96;
      v97 = v8;
      *(v8 + 16) = v121;
      *(v8 + 24) = v9;
      v10 = swift_allocObject();
      v11 = v97;
      v106 = v10;
      *(v10 + 16) = v122;
      *(v10 + 24) = v11;
      v107 = swift_allocObject();
      *(v107 + 16) = v98;
      v108 = swift_allocObject();
      *(v108 + 16) = v100;
      v12 = swift_allocObject();
      v103 = v12;
      *(v12 + 16) = v123;
      *(v12 + 24) = 0;
      v13 = swift_allocObject();
      v14 = v103;
      v110 = v13;
      *(v13 + 16) = v124;
      *(v13 + 24) = v14;
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
      v109 = sub_26B07A760();
      v111 = v15;

      v16 = v104;
      v17 = v111;
      *v111 = v125;
      v17[1] = v16;

      v18 = v105;
      v19 = v111;
      v111[2] = v126;
      v19[3] = v18;

      v20 = v106;
      v21 = v111;
      v111[4] = v127;
      v21[5] = v20;

      v22 = v107;
      v23 = v111;
      v111[6] = v128;
      v23[7] = v22;

      v24 = v108;
      v25 = v111;
      v111[8] = v129;
      v25[9] = v24;

      v26 = v110;
      v27 = v111;
      v111[10] = v130;
      v27[11] = v26;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v113, v114))
      {
        v28 = v142;
        v88 = sub_26B07A420();
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
        v89 = sub_26AEA3B70(0, v87, v87);
        v90 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v92 = &v163;
        v163 = v88;
        v93 = &v162;
        v162 = v89;
        v94 = &v161;
        v161 = v90;
        v91 = 2;
        sub_26AEA3BC4(2, &v163);
        sub_26AEA3BC4(v91, v92);
        v159 = v125;
        v160 = v104;
        sub_26AEA3BD8(&v159, v92, v93, v94);
        v95 = v28;
        if (v28)
        {

          __break(1u);
        }

        else
        {
          v159 = v126;
          v160 = v105;
          sub_26AEA3BD8(&v159, &v163, &v162, &v161);
          v86 = 0;
          v159 = v127;
          v160 = v106;
          sub_26AEA3BD8(&v159, &v163, &v162, &v161);
          v85 = 0;
          v159 = v128;
          v160 = v107;
          sub_26AEA3BD8(&v159, &v163, &v162, &v161);
          v84 = 0;
          v159 = v129;
          v160 = v108;
          sub_26AEA3BD8(&v159, &v163, &v162, &v161);
          v83 = 0;
          v159 = v130;
          v160 = v110;
          sub_26AEA3BD8(&v159, &v163, &v162, &v161);
          _os_log_impl(&dword_26AE88000, v113, v114, "%s.%s: TTL duration is 0. skipping set a timer.", v88, 0x16u);
          sub_26AEA3C24(v89, 0, v87);
          sub_26AEA3C24(v90, 2, MEMORY[0x277D84F70] + 8);
          sub_26B07A400();
        }
      }

      else
      {
      }

      v29 = MEMORY[0x277D82BD8](v113);
      return (*(v145 + 8))(v150, v144, v29);
    }

    else
    {
      sub_26B078260();
      sub_26B078270();
      v116 = *(v152 + 8);
      v115 = v152 + 8;
      v116(v155, v151);
      sub_26B05B2BC(v157);
      return (v116)(v157, v151);
    }
  }
}

uint64_t sub_26B05DE44(uint64_t a1)
{
  v17 = a1;
  v13 = MEMORY[0x277D85700];
  v16 = &unk_26B0926A8;
  v18 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v15 = &v11 - v11;
  v18 = v1;
  v14 = 0;
  v2 = sub_26B07A160();
  (*(*(v2 - 8) + 56))(v15, 1);

  sub_26B07A130();
  v12 = sub_26B07A120();
  v3 = swift_allocObject();
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v3;
  v9 = v17;
  v8[2] = v12;
  v8[3] = v4;
  v8[4] = v9;
  sub_26AEBC0C4(v5, v5, v6, v7, v8, MEMORY[0x277D84F78] + 8);
}

double sub_26B05DFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v5 = sub_26B07100C();
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
    v3 = sub_26B07100C();
    sub_26AFC87FC(v10, &v11, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26B05E1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_26B07A130();
  v4[5] = sub_26B07A120();
  v7 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26B05E260, v7, v5);
}

uint64_t sub_26B05E260()
{
  *(v0 + 16) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCF10, qword_26B08BA48);
  sub_26AF40258();
  sub_26B0788F0();

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_26B05E340(uint64_t a1)
{
  v20 = a1;
  v16 = MEMORY[0x277D85700];
  v19 = &unk_26B0926B8;
  v21 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700);
  v13 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v18 = &v12 - v13;
  v21 = a1;
  v14 = 1;
  ReactiveUIManager.performingBackgroundScan.setter(0);
  v17 = 0;
  v3 = sub_26B07A160();
  (*(*(v3 - 8) + 56))(v18, v14);

  sub_26B07A130();
  v15 = sub_26B07A120();
  v4 = swift_allocObject();
  v5 = v16;
  v6 = v17;
  v7 = v18;
  v8 = v19;
  v9 = v4;
  v10 = v20;
  v9[2] = v15;
  v9[3] = v5;
  v9[4] = v10;
  sub_26AEBC0C4(v6, v6, v7, v8, v9, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_26B05E584()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

double sub_26B05E5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x277D82BE0](a2);
  v9[0] = a2;
  MEMORY[0x277D82BE0](a3);
  v9[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF030, &qword_26B092708);
  sub_26B05E6C4(v6, v9, v3);
  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26B05E754()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

uint64_t sub_26B05E7B4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF030, &qword_26B092708);
  return sub_26B079E60();
}

uint64_t sub_26B05E8BC()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

uint64_t sub_26B05E980()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

uint64_t sub_26B05E9E0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF030, &qword_26B092708);
  return sub_26B079E60();
}

uint64_t sub_26B05EAB4()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

double sub_26B05EB14(uint64_t a1, char a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a3);
  v7 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    sub_26AFC8798(v7, a3, MEMORY[0x277D839B0]);
  }

  else
  {
    v8 = a2;
    sub_26AFC87FC(v7, &v8, MEMORY[0x277D839B0]);
  }

  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_26B05EC2C()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

uint64_t sub_26B05ED24()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

double sub_26B05ED84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x277D82BE0](a2);
  v9[0] = a2;
  MEMORY[0x277D82BE0](a3);
  v9[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF038, &qword_26B092710);
  sub_26B05E6C4(v6, v9, v3);
  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26B05EE64()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

uint64_t sub_26B05EEC4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF038, &qword_26B092710);
  return sub_26B079E60();
}

uint64_t sub_26B05EF98()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

double sub_26B05EFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x277D82BE0](a2);
  v9[0] = a2;
  MEMORY[0x277D82BE0](a3);
  v9[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF028, &qword_26B092700);
  sub_26B05E6C4(v6, v9, v3);
  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26B05F134()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

uint64_t sub_26B05F194(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF028, &qword_26B092700);
  return sub_26B079E60();
}

uint64_t sub_26B05F268()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

double sub_26B05F2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x277D82BE0](a2);
  v9[0] = a2;
  MEMORY[0x277D82BE0](a3);
  v9[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF020, &qword_26B0926F8);
  sub_26B05E6C4(v6, v9, v3);
  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26B05F404()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

uint64_t sub_26B05F464(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF020, &qword_26B0926F8);
  return sub_26B079E60();
}

uint64_t sub_26B05F538()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

uint64_t sub_26B05F5F4()
{
  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v3);
  v2 = v3;

  return v2;
}

uint64_t sub_26B05F690@<X0>(_BYTE *a1@<X8>)
{

  *a1 = ReactiveUIManager.isBusy.getter() & 1;
}

double sub_26B05F6F0(uint64_t a1, char a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a3);
  v7 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v9[0] = a2;
  MEMORY[0x277D82BE0](a3);
  v10 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DF000, &qword_26B092698);
  sub_26B05E6C4(v7, v9, v3);
  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

Swift::Double_optional __swiftcall ReactiveUIManager.getScanResultsCacheExpectedTTLDuration()()
{
  v35 = 0;
  v33 = 0;
  v27 = sub_26B0782E0();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v31 = &v5 - v30;
  v35 = v0;
  v32 = ReactiveUIManager.statefulManager.getter();
  v34 = [v32 environment];
  if (v34)
  {
    v19 = &v34;
    v24 = v34;
    swift_unknownObjectRetain();
    sub_26B06C7D4(v19);
    MEMORY[0x277D82BD8](v32);
    swift_getObjectType();
    v23 = ReactiveUIManager.statefulManager.getter();
    sub_26B0782D0();
    sub_26B0782B0();
    v20 = v1;
    v22 = sub_26B079DF0();
    (*(v28 + 8))(v31, v27);

    sub_26AF4013C();
    v21 = sub_26B07A2E0();
    v25 = [v24 scanOperationWithManager:v23 identifier:v22 completionQueue:?];
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    swift_unknownObjectRelease();
    v26 = v25;
  }

  else
  {
    sub_26B06C7D4(&v34);
    *&v2 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    v26 = 0;
  }

  v18 = v26;
  if (v26)
  {
    v17 = v18;
    v15 = v18;
    v33 = v18;
    swift_getObjectType();
    v16 = [v15 scanResultsCacheExpectedTTLDuration];
    if (v16)
    {
      v14 = v16;
      v10 = v16;
      [v16 doubleValue];
      v11 = v3;
      MEMORY[0x277D82BD8](v10);
      v12 = v11;
      v13 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
    }

    v7 = v13;
    v6 = v12;
    swift_unknownObjectRelease();
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  v4 = v8;
  result.value = v2;
  result.is_nil = v4;
  return result;
}

uint64_t sub_26B05FB04()
{
  KeyPath = swift_getKeyPath();
  ReactiveBetaProgram.subscript.getter(KeyPath);

  return v2;
}

double sub_26B05FB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v5 = sub_26B06DC78();
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
    v3 = sub_26B06DC78();
    sub_26AFC87FC(v10, &v11, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26B05FCEC()
{
  KeyPath = swift_getKeyPath();
  ReactiveBetaProgram.subscript.getter(KeyPath);

  return v2;
}

uint64_t sub_26B05FD9C(uint64_t a1, char a2)
{
  v2 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v5 = a2;
  return sub_26B05E6C4(v2, &v5, MEMORY[0x277D839B0]);
}

double sub_26B05FE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v5 = sub_26B071070();
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
    v3 = sub_26B071070();
    sub_26AFC87FC(v10, &v11, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

double sub_26B060030@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 currentState];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26B06009C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setCurrentState_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26B060104@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 preferredStatefulDescriptor];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26B060178(void *a1, void *a2)
{
  sub_26AEB757C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v4 setPreferredStatefulDescriptor_];
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t sub_26B060200(uint64_t a1, uint64_t a2)
{
  v6[1] = a1;
  v13 = a2;
  v15 = sub_26B070B0C;
  v23 = 0;
  v22 = 0;
  v11 = sub_26B078360();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v2 = v6 - v7;
  v8 = v6 - v7;
  v12 = *v3;
  v23 = v12;
  v22 = v4;
  swift_unownedRetainStrong();
  (*(v9 + 16))(v2, v13 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v11);

  swift_unownedRetainStrong();
  v17 = &v21;
  v21 = v13;
  KeyPath = swift_getKeyPath();
  MEMORY[0x277D82BE0](v12);
  swift_unownedRetain();
  v16 = &v18;
  v19 = v12;
  v20 = v13;
  sub_26B069C94();
  sub_26B078310();
  MEMORY[0x277D82BD8](v12);
  swift_unownedRelease();

  (*(v9 + 8))(v8, v11);
  swift_unownedRetainStrong();
  sub_26B0605AC();
}

double sub_26B06043C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  swift_unownedRetainStrong();
  if (a1)
  {
    type metadata accessor for ReactiveDescriptor(0);
    MEMORY[0x277D82BE0](a1);
    swift_unownedRetainStrong();
    v4 = ReactiveDescriptor.__allocating_init(representing:managedBy:)(a1, a2);
    v3 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__preferredDescriptor);
    swift_beginAccess();
    *v3 = v4;

    swift_endAccess();

    *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  }

  else
  {
    v5 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__preferredDescriptor);
    swift_beginAccess();
    *v5 = 0;

    swift_endAccess();
  }

  return result;
}

uint64_t sub_26B0605AC()
{
  v32 = 0;
  v18 = 0;
  v30 = 0;
  v19 = sub_26B078360();
  v20 = *(v19 - 8);
  v21 = v20;
  v22 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v6 - v24;
  MEMORY[0x28223BE20](&v6 - v24);
  v25 = &v6 - v24;
  v32 = v0;
  v26 = ReactiveUIManager.statefulManager.getter();
  v28 = [v26 targetedUpdateStatefulDescriptor];
  v27 = v28;

  if (v28)
  {
    v16 = v27;
    v1 = v18;
    v12 = v27;
    v30 = v27;
    (*(v21 + 16))(v25, v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v19);
    v29 = v17;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;
    v2 = v12;

    v11 = &v6;
    MEMORY[0x28223BE20](&v6);
    v14 = &v6 - 4;
    *(&v6 - 2) = v12;
    *(&v6 - 1) = v3;
    sub_26B069C94();
    sub_26B078310();
    v15 = v1;
    if (!v1)
    {

      (*(v21 + 8))(v25, v19);

      return 0;
    }

    __break(1u);
  }

  else
  {
    v4 = v18;
    (*(v21 + 16))(v23, v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v19);
    v31 = v17;
    v7 = swift_getKeyPath();
    v6 = v7;

    sub_26B069C94();
    sub_26B078310();
    v8 = v4;
    if (!v4)
    {

      (*(v21 + 8))(v23, v19);
      return v8;
    }
  }

  __break(1u);
  return result;
}

double sub_26B06092C@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 alternateStatefulDescriptor];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26B0609A0(void *a1, void *a2)
{
  sub_26AEB757C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v4 setAlternateStatefulDescriptor_];
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t sub_26B060A28(uint64_t a1, uint64_t a2)
{
  v6[1] = a1;
  v13 = a2;
  v15 = sub_26B070AE0;
  v23 = 0;
  v22 = 0;
  v11 = sub_26B078360();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v2 = v6 - v7;
  v8 = v6 - v7;
  v12 = *v3;
  v23 = v12;
  v22 = v4;
  swift_unownedRetainStrong();
  (*(v9 + 16))(v2, v13 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v11);

  swift_unownedRetainStrong();
  v17 = &v21;
  v21 = v13;
  KeyPath = swift_getKeyPath();
  MEMORY[0x277D82BE0](v12);
  swift_unownedRetain();
  v16 = &v18;
  v19 = v12;
  v20 = v13;
  sub_26B069C94();
  sub_26B078310();
  MEMORY[0x277D82BD8](v12);
  swift_unownedRelease();

  (*(v9 + 8))(v8, v11);
  swift_unownedRetainStrong();
  sub_26B0605AC();
}

double sub_26B060C64(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  swift_unownedRetainStrong();
  if (a1)
  {
    type metadata accessor for ReactiveDescriptor(0);
    MEMORY[0x277D82BE0](a1);
    swift_unownedRetainStrong();
    v4 = ReactiveDescriptor.__allocating_init(representing:managedBy:)(a1, a2);
    v3 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__alternateDescriptor);
    swift_beginAccess();
    *v3 = v4;

    swift_endAccess();

    *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  }

  else
  {
    v5 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__alternateDescriptor);
    swift_beginAccess();
    *v5 = 0;

    swift_endAccess();
  }

  return result;
}

double sub_26B060DD4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 scanError];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26B060E48(void *a1, void *a2)
{
  sub_26AEEE9CC(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v4 setScanError_];
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

double sub_26B060ED0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 currentDownload];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_26B060F44(void *a1, void *a2)
{
  sub_26B070AA8(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v4 setCurrentDownload_];
  MEMORY[0x277D82BD8](v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_26B060FC4(uint64_t a1, uint64_t a2)
{
  v6[1] = a1;
  v13 = a2;
  v15 = sub_26B070A7C;
  v23 = 0;
  v22 = 0;
  v11 = sub_26B078360();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v2 = v6 - v7;
  v8 = v6 - v7;
  v12 = *v3;
  v23 = v12;
  v22 = v4;
  swift_unownedRetainStrong();
  (*(v9 + 16))(v2, v13 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v11);

  swift_unownedRetainStrong();
  v17 = &v21;
  v21 = v13;
  KeyPath = swift_getKeyPath();
  swift_unknownObjectRetain();
  swift_unownedRetain();
  v16 = &v18;
  v19 = v12;
  v20 = v13;
  sub_26B069C94();
  sub_26B078310();
  swift_unknownObjectRelease();
  swift_unownedRelease();

  (*(v9 + 8))(v8, v11);
  swift_unownedRetainStrong();
  sub_26B0605AC();
}

double sub_26B0611E8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (a1)
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    v10 = v2;
    v11 = 0;
    if (v2)
    {
      ObjectType = swift_getObjectType();
      v3 = sub_26B06DCDC();
      v11 = dynamic_cast_existential_0_superclass_conditional(v10, ObjectType, v3);
    }

    if (v11)
    {
      v8 = v11;
    }

    else
    {
      swift_unknownObjectRelease();
      v8 = 0;
    }

    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  swift_unownedRetainStrong();
  if (v12)
  {
    type metadata accessor for ReactiveDownload(0);
    MEMORY[0x277D82BE0](v12);
    v6 = ReactiveDownload.__allocating_init(representing:)(v12);
    v5 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__currentDownload);
    swift_beginAccess();
    *v5 = v6;

    swift_endAccess();

    *&result = MEMORY[0x277D82BD8](v12).n128_u64[0];
  }

  else
  {
    v7 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__currentDownload);
    swift_beginAccess();
    *v7 = 0;

    swift_endAccess();
  }

  return result;
}

double sub_26B061410@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 isClearingSpaceForDownload];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26B06147C(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setClearingSpaceForDownload_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26B0614E8@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v7 = [v6 betaPrograms];
  if (v7)
  {
    sub_26B06DC78();
    v3 = sub_26B07A060();
    MEMORY[0x277D82BD8](v7);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

double sub_26B0615C0(void *a1, void *a2)
{
  sub_26B070A44(a1, &v8);
  v7 = v8;
  v6 = *a2;
  MEMORY[0x277D82BE0](*a2);
  if (v7)
  {
    sub_26B06DC78();
    v3 = sub_26B07A050();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [v6 setBetaPrograms_];
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

uint64_t sub_26B0616AC(uint64_t *a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v14 = *a1;
  v13 = a2;
  sub_26B078640();
  if (v14)
  {
    v12 = v14;
    swift_unownedRetainStrong();
    sub_26B078640();
    v11[1] = v14;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF70, &qword_26B092280);
    sub_26B06DB3C();
    v11[0] = sub_26B07A5A0();
    v5 = type metadata accessor for ReactiveBetaProgram();
    v2 = sub_26B06DBC4();
    v7 = sub_26B058A70(sub_26B061BDC, 0, v8, v5, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v6);
    sub_26B06DC4C(v11);
    v4 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__betaPrograms);
    swift_beginAccess();
    *v4 = v7;

    swift_endAccess();
  }

  else
  {
    swift_unownedRetainStrong();
    v9 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__betaPrograms);
    swift_beginAccess();
    *v9 = 0;

    swift_endAccess();
  }
}

uint64_t sub_26B0618D4(void **a1)
{
  v26 = 0;
  v19 = *a1;
  v26 = v19;
  v20 = [v19 title];
  if (v20)
  {
    v15 = sub_26B079E00();
    v16 = v1;
    MEMORY[0x277D82BD8](v20);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v25[0] = v17;
  v25[1] = v18;
  sub_26AF01944(v25);
  MEMORY[0x277D82BE0](v19);
  if (!v18)
  {
    v5 = 0;
    goto LABEL_18;
  }

  v14 = [v19 title];
  if (v14)
  {
    v10 = sub_26B079E00();
    v11 = v2;
    MEMORY[0x277D82BD8](v14);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  sub_26B078640();
  v8 = sub_26B079D00("", 0, 1);
  v9 = v3;
  sub_26B078640();
  v23[0] = v12;
  v23[1] = v13;
  *&v24 = v8;
  *(&v24 + 1) = v9;
  if (!v13)
  {
    if (!*(&v24 + 1))
    {
      sub_26AF01944(v23);
      v7 = 1;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_26AF01970(v23, v22);
  if (!*(&v24 + 1))
  {
    sub_26AE9BCC0(v22);
LABEL_15:
    sub_26AF0190C(v23);
    v7 = 0;
    goto LABEL_14;
  }

  v21 = v24;
  v6 = MEMORY[0x26D66D0C0](v22[0], v22[1], v24, *(&v24 + 1));
  sub_26AE9BCC0(&v21);
  sub_26AE9BCC0(v22);
  sub_26AF01944(v23);
  v7 = v6;
LABEL_14:

  v5 = v7 ^ 1;
LABEL_18:
  MEMORY[0x277D82BD8](v19);
  return v5 & 1;
}

uint64_t sub_26B061BDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ReactiveBetaProgram();
  MEMORY[0x277D82BE0](v3);
  result = ReactiveBetaProgram.__allocating_init(representing:)(v3);
  *a2 = result;
  return result;
}

double sub_26B061C48@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 enrolledBetaProgram];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26B061CBC(void *a1, void *a2)
{
  sub_26B070A04(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v4 setEnrolledBetaProgram_];
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

double sub_26B061D44(uint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  MEMORY[0x277D82BE0](*a1);
  swift_unownedRetainStrong();
  if (v7)
  {
    type metadata accessor for ReactiveBetaProgram();
    MEMORY[0x277D82BE0](v7);
    v4 = ReactiveBetaProgram.__allocating_init(representing:)(v7);
    v3 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__enrolledBetaProgram);
    swift_beginAccess();
    *v3 = v4;

    swift_endAccess();

    *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  else
  {
    v5 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__enrolledBetaProgram);
    swift_beginAccess();
    *v5 = 0;

    swift_endAccess();
  }

  return result;
}

double sub_26B061EA4@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 canEnrollInBetaUpdates];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26B061F10(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setCanEnrollInBetaUpdates_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_26B061F7C(char *a1, uint64_t a2, double a3)
{
  v5 = *a1;
  swift_unownedRetainStrong();
  v4 = (a2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__canEnrollInBetaUpdates);
  swift_beginAccess();
  *v4 = v5;
  swift_endAccess();
}

double sub_26B062010@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 currentUpdateOperation];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_26B062084(void *a1, void *a2)
{
  sub_26B0709CC(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v4 setCurrentUpdateOperation_];
  MEMORY[0x277D82BD8](v4);
  return swift_unknownObjectRelease();
}

double sub_26B062104@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 currentUpdateOperationType];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26B062170(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setCurrentUpdateOperationType_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_26B0621D8(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v23 = 0;
  v20 = nullsub_71;
  v21 = nullsub_72;
  v39 = 0;
  v37 = 0;
  v22 = 0;
  v25 = sub_26B078360();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (v26[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v29 = &v7 - v28;
  v30 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v7 - v28);
  v31 = &v7 - v30;
  v32 = v3 + 16;
  v39 = v3 + 16;
  v33 = &v38;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v19 = Strong;
    v5 = v22;
    v14 = Strong;
    v37 = Strong;
    v12 = v26[2];
    v13 = v26 + 2;
    v12(v31, Strong + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v25);
    v16 = &v36;
    v36 = v14;
    KeyPath = swift_getKeyPath();
    v17 = sub_26B069C94();
    result = sub_26B078310();
    v18 = v5;
    if (v5)
    {
      __break(1u);
      __break(1u);
    }

    else
    {
      v6 = v29;

      v8 = v26[1];
      v9 = v26 + 1;
      v8(v31, v25);
      v12(v6, v14 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v25);
      v10 = &v35;
      v35 = v14;
      v11 = swift_getKeyPath();
      sub_26B078310();

      v8(v29, v25);
    }
  }

  return result;
}

uint64_t sub_26B06253C(void *a1, uint64_t a2)
{
  v47 = a2;
  v46 = a1;
  v52 = 0;
  v65 = 0;
  v64 = 0;
  v48 = sub_26B078580();
  v49 = *(v48 - 8);
  v50 = v49;
  v2 = MEMORY[0x28223BE20](v46);
  v51 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v4;
  v64 = v5;
  v63[4] = [v4 maskedDescriptorRole];
  v63[3] = v52;
  v54 = type metadata accessor for SUUIStatefulDescriptorRole(v52);
  v53 = v54;
  v55 = sub_26AF2D17C();
  if (sub_26B07A790())
  {
    v38 = (v47 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__preferredDescriptor);
    v39 = &v57;
    v40 = 0;
    swift_beginAccess();
    v42 = *v38;

    swift_endAccess();
    v41 = (v47 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__targetedDescriptor);
    v43 = &v56;
    swift_beginAccess();
    *v41 = v42;

    swift_endAccess();
    result = v45;
    v44 = v45;
  }

  else
  {
    v63[2] = [v46 role];
    v63[1] = 1;
    if (sub_26B07A790())
    {
      v31 = (v47 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__alternateDescriptor);
      v32 = &v59;
      v33 = 0;
      swift_beginAccess();
      v35 = *v31;

      swift_endAccess();
      v34 = (v47 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__targetedDescriptor);
      v36 = &v58;
      swift_beginAccess();
      *v34 = v35;

      swift_endAccess();
      return v45;
    }

    else
    {
      sub_26B078540();
      v29 = sub_26B078570();
      v26 = v29;
      v28 = sub_26B07A2C0();
      v27 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
      v30 = sub_26B07A760();
      if (os_log_type_enabled(v29, v28))
      {
        v24 = v45;
        v16 = sub_26B07A420();
        v12 = v16;
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
        v14 = 0;
        v17 = sub_26AEA3B70(0, v13, v13);
        v15 = v17;
        v18 = sub_26AEA3B70(v14, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v63[0] = v16;
        v62 = v17;
        v61 = v18;
        v19 = 0;
        v20 = v63;
        sub_26AEA3BC4(0, v63);
        sub_26AEA3BC4(v19, v20);
        v60 = v30;
        v21 = &v9;
        MEMORY[0x28223BE20](&v9);
        v22 = &v9 - 6;
        *(&v9 - 4) = v7;
        *(&v9 - 3) = &v62;
        *(&v9 - 2) = &v61;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
        sub_26AE9CC18();
        v8 = v24;
        sub_26B079FF0();
        v25 = v8;
        if (v8)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_26AE88000, v26, v27, "Could not determine role for targeted descriptor", v12, 2u);
          v10 = 0;
          sub_26AEA3C24(v15, 0, v13);
          sub_26AEA3C24(v18, v10, MEMORY[0x277D84F70] + 8);
          sub_26B07A400();

          v11 = v25;
        }
      }

      else
      {

        v11 = v45;
      }

      v9 = v11;

      (*(v50 + 8))(v51, v48);
      return v9;
    }
  }

  return result;
}

uint64_t sub_26B062BFC(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__targetedDescriptor);
  swift_beginAccess();
  *v2 = 0;

  return swift_endAccess();
}

uint64_t sub_26B062DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_26B07A130();
  v4[5] = sub_26B07A120();
  v7 = sub_26B07A0C0();
  v4[6] = v7;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_26B062EB0, v7, v5);
}

uint64_t sub_26B062EB0()
{
  *(v0 + 16) = v0;
  v4 = sub_26B04FCC4();
  v1 = swift_task_alloc();
  *(v3 + 64) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_26B062F70;

  return ReactiveUIManager.checkForAvailableUpdates(_:)(v4 & 1);
}

uint64_t sub_26B062F70(uint64_t a1)
{
  v7 = *v2;
  v7[2] = *v2;
  v7[9] = a1;
  v7[10] = v1;

  if (v1)
  {
    v3 = v7[7];
    v4 = v7[6];
    v5 = sub_26B0631A4;
  }

  else
  {
    v3 = v7[7];
    v4 = v7[6];
    v5 = sub_26B0630F0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26B0630F0()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v0;
  MEMORY[0x277D82BD8](v1);
  ReactiveUIManager.startRefreshScanResultsCacheTimer()();

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_26B0631A4()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = v0;

  MEMORY[0x277D82BD8](0);
  ReactiveUIManager.startRefreshScanResultsCacheTimer()();

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_26B063260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v5[6] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[3] = a4;
  v5[4] = a5;
  sub_26B07A130();
  v5[8] = sub_26B07A120();
  v8 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26B06332C, v8, v6);
}

uint64_t sub_26B06332C()
{
  *(v0 + 16) = v0;
  sub_26B078230();
  v2 = v1 + 300.0;
  *(v0 + 40) = v2;
  sub_26B0633FC(v2);

  v3 = *(*(v0 + 16) + 8);

  return v3();
}

uint64_t sub_26B0633FC(double a1)
{
  v101 = a1;
  v102 = 0;
  v83 = sub_26B06F800;
  v84 = sub_26B06F8E4;
  v85 = sub_26B06F930;
  v86 = sub_26B064364;
  v87 = sub_26B06FA30;
  v88 = sub_26B06F834;
  v89 = sub_26B06FB30;
  v90 = sub_26B06F868;
  v91 = sub_26B06F89C;
  v92 = sub_26B06F97C;
  v93 = sub_26B06F9B4;
  v94 = sub_26B06F9E8;
  v95 = sub_26B06FA7C;
  v96 = sub_26B06FAB4;
  v97 = sub_26B06FAE8;
  v98 = sub_26B06FB7C;
  v99 = sub_26B06FB88;
  v122 = 0.0;
  v121 = 0;
  v100 = 0;
  v103 = sub_26B078580();
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = &v38 - v106;
  v122 = MEMORY[0x28223BE20](v103);
  v121 = v1;
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v81 = *(v82 + 16);
    MEMORY[0x277D82BE0](v81);
    swift_endAccess();
    [v81 invalidate];
    MEMORY[0x277D82BD8](v81);
  }

  else
  {
    swift_endAccess();
  }

  sub_26B078540();

  v64 = 7;
  v65 = swift_allocObject();
  *(v65 + 16) = v101;
  v79 = sub_26B078570();
  v80 = sub_26B07A2B0();
  v61 = 17;
  v67 = swift_allocObject();
  v59 = 32;
  *(v67 + 16) = 32;
  v68 = swift_allocObject();
  v62 = 8;
  *(v68 + 16) = 8;
  v63 = 32;
  v2 = swift_allocObject();
  v3 = v82;
  v57 = v2;
  *(v2 + 16) = v83;
  *(v2 + 24) = v3;
  v4 = swift_allocObject();
  v5 = v57;
  v58 = v4;
  *(v4 + 16) = v84;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v58;
  v69 = v6;
  *(v6 + 16) = v85;
  *(v6 + 24) = v7;
  v70 = swift_allocObject();
  *(v70 + 16) = v59;
  v71 = swift_allocObject();
  *(v71 + 16) = v62;
  v8 = swift_allocObject();
  v60 = v8;
  *(v8 + 16) = v86;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v60;
  v72 = v9;
  *(v9 + 16) = v87;
  *(v9 + 24) = v10;
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = v62;
  v11 = swift_allocObject();
  v12 = v65;
  v66 = v11;
  *(v11 + 16) = v88;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v66;
  v76 = v13;
  *(v13 + 16) = v89;
  *(v13 + 24) = v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v75 = sub_26B07A760();
  v77 = v15;

  v16 = v67;
  v17 = v77;
  *v77 = v90;
  v17[1] = v16;

  v18 = v68;
  v19 = v77;
  v77[2] = v91;
  v19[3] = v18;

  v20 = v69;
  v21 = v77;
  v77[4] = v92;
  v21[5] = v20;

  v22 = v70;
  v23 = v77;
  v77[6] = v93;
  v23[7] = v22;

  v24 = v71;
  v25 = v77;
  v77[8] = v94;
  v25[9] = v24;

  v26 = v72;
  v27 = v77;
  v77[10] = v95;
  v27[11] = v26;

  v28 = v73;
  v29 = v77;
  v77[12] = v96;
  v29[13] = v28;

  v30 = v74;
  v31 = v77;
  v77[14] = v97;
  v31[15] = v30;

  v32 = v76;
  v33 = v77;
  v77[16] = v98;
  v33[17] = v32;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v79, v80))
  {
    v34 = v100;
    v50 = sub_26B07A420();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v51 = sub_26AEA3B70(0, v49, v49);
    v52 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v53 = &v112;
    v112 = v50;
    v54 = &v111;
    v111 = v51;
    v55 = &v110;
    v110 = v52;
    sub_26AEA3BC4(2, &v112);
    sub_26AEA3BC4(3, v53);
    v108 = v90;
    v109 = v67;
    sub_26AEA3BD8(&v108, v53, v54, v55);
    v56 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v108 = v91;
      v109 = v68;
      sub_26AEA3BD8(&v108, &v112, &v111, &v110);
      v48 = 0;
      v108 = v92;
      v109 = v69;
      sub_26AEA3BD8(&v108, &v112, &v111, &v110);
      v47 = 0;
      v108 = v93;
      v109 = v70;
      sub_26AEA3BD8(&v108, &v112, &v111, &v110);
      v46 = 0;
      v108 = v94;
      v109 = v71;
      sub_26AEA3BD8(&v108, &v112, &v111, &v110);
      v45 = 0;
      v108 = v95;
      v109 = v72;
      sub_26AEA3BD8(&v108, &v112, &v111, &v110);
      v44 = 0;
      v108 = v96;
      v109 = v73;
      sub_26AEA3BD8(&v108, &v112, &v111, &v110);
      v43 = 0;
      v108 = v97;
      v109 = v74;
      sub_26AEA3BD8(&v108, &v112, &v111, &v110);
      v42 = 0;
      v108 = v98;
      v109 = v76;
      sub_26AEA3BD8(&v108, &v112, &v111, &v110);
      _os_log_impl(&dword_26AE88000, v79, v80, "%s.%s: Setting timer to reload cache in: %f seconds", v50, 0x20u);
      sub_26AEA3C24(v51, 0, v49);
      sub_26AEA3C24(v52, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v35 = MEMORY[0x277D82BD8](v79);
  (*(v104 + 8))(v107, v103, v35);
  v38 = objc_opt_self();

  v119 = v99;
  v120 = v82;
  aBlock = MEMORY[0x277D85DD0];
  v115 = 1107296256;
  v116 = 0;
  v117 = sub_26B066F10;
  v118 = &block_descriptor_1670;
  v39 = _Block_copy(&aBlock);

  v40 = [v38 scheduledTimerWithTimeInterval:1 repeats:v39 block:v101];
  _Block_release(v39);
  v41 = &v113;
  swift_beginAccess();
  v36 = *(v82 + 16);
  *(v82 + 16) = v40;
  MEMORY[0x277D82BD8](v36);
  return swift_endAccess();
}

uint64_t sub_26B064398(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v65 = a2;
  v64 = sub_26B06FE04;
  v66 = sub_26B06FEB4;
  v68 = sub_26B06FF00;
  v73 = sub_26B064E04;
  v76 = sub_26B070000;
  v78 = sub_26B06FE38;
  v80 = sub_26B06FE6C;
  v82 = sub_26B06FF4C;
  v84 = sub_26B06FF84;
  v86 = sub_26B06FFB8;
  v89 = sub_26B07004C;
  v53 = MEMORY[0x277D85700];
  v54 = &unk_26B092658;
  v101 = 0;
  v100 = 0;
  v55 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700);
  v56 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v57 = &v37 - v56;
  v59 = sub_26B078580();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v63 = &v37 - v62;
  v101 = v3;
  v100 = v4;
  sub_26B078540();

  v93 = sub_26B078570();
  v94 = sub_26B07A2B0();
  v71 = 17;
  v75 = 7;
  v79 = swift_allocObject();
  v70 = 32;
  *(v79 + 16) = 32;
  v81 = swift_allocObject();
  v72 = 8;
  *(v81 + 16) = 8;
  v74 = 32;
  v5 = swift_allocObject();
  v6 = v65;
  v67 = v5;
  *(v5 + 16) = v64;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v67;
  v69 = v7;
  *(v7 + 16) = v66;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v69;
  v83 = v9;
  *(v9 + 16) = v68;
  *(v9 + 24) = v10;
  v85 = swift_allocObject();
  *(v85 + 16) = v70;
  v87 = swift_allocObject();
  *(v87 + 16) = v72;
  v11 = swift_allocObject();
  v77 = v11;
  *(v11 + 16) = v73;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v77;
  v90 = v12;
  *(v12 + 16) = v76;
  *(v12 + 24) = v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v88 = sub_26B07A760();
  v91 = v14;

  v15 = v79;
  v16 = v91;
  *v91 = v78;
  v16[1] = v15;

  v17 = v81;
  v18 = v91;
  v91[2] = v80;
  v18[3] = v17;

  v19 = v83;
  v20 = v91;
  v91[4] = v82;
  v20[5] = v19;

  v21 = v85;
  v22 = v91;
  v91[6] = v84;
  v22[7] = v21;

  v23 = v87;
  v24 = v91;
  v91[8] = v86;
  v24[9] = v23;

  v25 = v90;
  v26 = v91;
  v91[10] = v89;
  v26[11] = v25;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v93, v94))
  {
    v27 = v55;
    v45 = sub_26B07A420();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v46 = sub_26AEA3B70(0, v44, v44);
    v47 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v49 = &v99;
    v99 = v45;
    v50 = &v98;
    v98 = v46;
    v51 = &v97;
    v97 = v47;
    v48 = 2;
    sub_26AEA3BC4(2, &v99);
    sub_26AEA3BC4(v48, v49);
    v95 = v78;
    v96 = v79;
    sub_26AEA3BD8(&v95, v49, v50, v51);
    v52 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v95 = v80;
      v96 = v81;
      sub_26AEA3BD8(&v95, &v99, &v98, &v97);
      v43 = 0;
      v95 = v82;
      v96 = v83;
      sub_26AEA3BD8(&v95, &v99, &v98, &v97);
      v42 = 0;
      v95 = v84;
      v96 = v85;
      sub_26AEA3BD8(&v95, &v99, &v98, &v97);
      v41 = 0;
      v95 = v86;
      v96 = v87;
      sub_26AEA3BD8(&v95, &v99, &v98, &v97);
      v40 = 0;
      v95 = v89;
      v96 = v90;
      sub_26AEA3BD8(&v95, &v99, &v98, &v97);
      _os_log_impl(&dword_26AE88000, v93, v94, "%s.%s: Refresh Timer woke up", v45, 0x16u);
      sub_26AEA3C24(v46, 0, v44);
      sub_26AEA3C24(v47, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v28 = MEMORY[0x277D82BD8](v93);
  (*(v60 + 8))(v63, v59, v28);
  v38 = 0;
  v29 = sub_26B07A160();
  (*(*(v29 - 8) + 56))(v57, 1);

  sub_26B07A130();
  v39 = sub_26B07A120();
  v30 = swift_allocObject();
  v31 = v53;
  v32 = v65;
  v33 = v38;
  v34 = v57;
  v35 = v54;
  v30[2] = v39;
  v30[3] = v31;
  v30[4] = v32;
  sub_26AEBC0C4(v33, v33, v34, v35, v30, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_26B064E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v5 = sub_26B078580();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD260, &qword_26B089A70);
  v4[10] = swift_task_alloc();
  v6 = sub_26B0782A0();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[3] = a4;
  sub_26B07A130();
  v4[15] = sub_26B07A120();
  v10 = sub_26B07A0C0();
  v4[16] = v10;
  v4[17] = v7;

  return MEMORY[0x2822009F8](sub_26B065058, v10, v7);
}

uint64_t sub_26B065058()
{
  v99 = v0;
  v81 = v0[12];
  v83 = v0[11];
  v1 = v0[10];
  v82 = v1;
  v0[2] = v0;
  ReactiveUIManager.readScanResultsCacheExpectedTTLValue()(v1);
  if ((*(v81 + 48))(v82, 1, v83) == 1)
  {
    v19 = v80[4];
    sub_26AEEE704(v80[10]);
    sub_26B078540();

    v30 = sub_26B078570();
    v31 = sub_26B07A2A0();
    v23 = swift_allocObject();
    *(v23 + 16) = 32;
    v24 = swift_allocObject();
    *(v24 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_26B0702A0;
    *(v20 + 24) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26B070350;
    *(v21 + 24) = v20;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_26B07039C;
    *(v25 + 24) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = 32;
    v27 = swift_allocObject();
    *(v27 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_26B066EE0;
    *(v22 + 24) = 0;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_26B07049C;
    *(v28 + 24) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v29 = v9;

    *v29 = sub_26B0702D4;
    v29[1] = v23;

    v29[2] = sub_26B070308;
    v29[3] = v24;

    v29[4] = sub_26B0703E8;
    v29[5] = v25;

    v29[6] = sub_26B070420;
    v29[7] = v26;

    v29[8] = sub_26B070454;
    v29[9] = v27;

    v29[10] = sub_26B0704E8;
    v29[11] = v28;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v30, v31))
    {
      v16 = sub_26B07A420();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v17 = sub_26AEA3B70(0, v15, v15);
      v18 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v84 = v16;
      v85 = v17;
      v86 = v18;
      sub_26AEA3BC4(2, &v84);
      sub_26AEA3BC4(2, &v84);
      v87 = sub_26B0702D4;
      v88 = v23;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      v87 = sub_26B070308;
      v88 = v24;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      v87 = sub_26B0703E8;
      v88 = v25;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      v87 = sub_26B070420;
      v88 = v26;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      v87 = sub_26B070454;
      v88 = v27;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      v87 = sub_26B0704E8;
      v88 = v28;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      _os_log_impl(&dword_26AE88000, v30, v31, "%s.%s: No cache TTL found, skipping refresh this time.", v16, 0x16u);
      sub_26AEA3C24(v17, 0, v15);
      sub_26AEA3C24(v18, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v13 = v80[7];
    v14 = v80[5];
    v12 = v80[6];
    v10 = MEMORY[0x277D82BD8](v30);
    (*(v12 + 8))(v13, v14, v10);
  }

  else
  {
    v78 = v80[13];
    v77 = v80[11];
    v76 = v80[12];
    (*(v76 + 32))();
    sub_26B078260();
    v79 = sub_26B078220();
    v2 = *(v76 + 8);
    v80[18] = v2;
    v80[19] = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v2(v78, v77);
    if (v79)
    {
      v63 = v80[4];
      sub_26B078540();

      oslog = sub_26B078570();
      v75 = sub_26B07A2A0();
      v67 = swift_allocObject();
      *(v67 + 16) = 32;
      v68 = swift_allocObject();
      *(v68 + 16) = 8;
      v64 = swift_allocObject();
      *(v64 + 16) = sub_26B070748;
      *(v64 + 24) = v63;
      v65 = swift_allocObject();
      *(v65 + 16) = sub_26B0707F8;
      *(v65 + 24) = v64;
      v69 = swift_allocObject();
      *(v69 + 16) = sub_26B070844;
      *(v69 + 24) = v65;
      v70 = swift_allocObject();
      *(v70 + 16) = 32;
      v71 = swift_allocObject();
      *(v71 + 16) = 8;
      v66 = swift_allocObject();
      *(v66 + 16) = sub_26B066E28;
      *(v66 + 24) = 0;
      v72 = swift_allocObject();
      *(v72 + 16) = sub_26B070944;
      *(v72 + 24) = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
      sub_26B07A760();
      v73 = v3;

      *v73 = sub_26B07077C;
      v73[1] = v67;

      v73[2] = sub_26B0707B0;
      v73[3] = v68;

      v73[4] = sub_26B070890;
      v73[5] = v69;

      v73[6] = sub_26B0708C8;
      v73[7] = v70;

      v73[8] = sub_26B0708FC;
      v73[9] = v71;

      v73[10] = sub_26B070990;
      v73[11] = v72;
      sub_26AEA3B2C();

      if (os_log_type_enabled(oslog, v75))
      {
        buf = sub_26B07A420();
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
        v61 = sub_26AEA3B70(0, v59, v59);
        v62 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v94 = buf;
        v95 = v61;
        v96 = v62;
        sub_26AEA3BC4(2, &v94);
        sub_26AEA3BC4(2, &v94);
        v97 = sub_26B07077C;
        v98 = v67;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26B0707B0;
        v98 = v68;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26B070890;
        v98 = v69;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26B0708C8;
        v98 = v70;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26B0708FC;
        v98 = v71;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26B070990;
        v98 = v72;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        _os_log_impl(&dword_26AE88000, oslog, v75, "%s.%s: Cache TTL expired, start checking for updates...", buf, 0x16u);
        sub_26AEA3C24(v61, 0, v59);
        sub_26AEA3C24(v62, 2, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }

      else
      {
      }

      v56 = v80[9];
      v57 = v80[5];
      v55 = v80[6];
      v4 = MEMORY[0x277D82BD8](oslog);
      (*(v55 + 8))(v56, v57, v4);
      v58 = sub_26B04FCC4();
      v5 = swift_task_alloc();
      v80[20] = v5;
      *v5 = v80[2];
      v5[1] = sub_26B0669E4;

      return ReactiveUIManager.checkForAvailableUpdates(_:)(v58 & 1);
    }

    v42 = v80[4];
    sub_26B078540();

    log = sub_26B078570();
    v54 = sub_26B07A2A0();
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_26B0704F4;
    *(v43 + 24) = v42;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_26B0705A4;
    *(v44 + 24) = v43;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_26B0705F0;
    *(v48 + 24) = v44;
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_26B066E84;
    *(v45 + 24) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_26B0706F0;
    *(v51 + 24) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v52 = v7;

    *v52 = sub_26B070528;
    v52[1] = v46;

    v52[2] = sub_26B07055C;
    v52[3] = v47;

    v52[4] = sub_26B07063C;
    v52[5] = v48;

    v52[6] = sub_26B070674;
    v52[7] = v49;

    v52[8] = sub_26B0706A8;
    v52[9] = v50;

    v52[10] = sub_26B07073C;
    v52[11] = v51;
    sub_26AEA3B2C();

    if (os_log_type_enabled(log, v54))
    {
      v39 = sub_26B07A420();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v40 = sub_26AEA3B70(0, v38, v38);
      v41 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v89 = v39;
      v90 = v40;
      v91 = v41;
      sub_26AEA3BC4(2, &v89);
      sub_26AEA3BC4(2, &v89);
      v92 = sub_26B070528;
      v93 = v46;
      sub_26AEA3BD8(&v92, &v89, &v90, &v91);
      v92 = sub_26B07055C;
      v93 = v47;
      sub_26AEA3BD8(&v92, &v89, &v90, &v91);
      v92 = sub_26B07063C;
      v93 = v48;
      sub_26AEA3BD8(&v92, &v89, &v90, &v91);
      v92 = sub_26B070674;
      v93 = v49;
      sub_26AEA3BD8(&v92, &v89, &v90, &v91);
      v92 = sub_26B0706A8;
      v93 = v50;
      sub_26AEA3BD8(&v92, &v89, &v90, &v91);
      v92 = sub_26B07073C;
      v93 = v51;
      sub_26AEA3BD8(&v92, &v89, &v90, &v91);
      _os_log_impl(&dword_26AE88000, log, v54, "%s.%s: Cache TTL is still valid, no need to check for updates.", v39, 0x16u);
      sub_26AEA3C24(v40, 0, v38);
      sub_26AEA3C24(v41, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v33 = v80[8];
    v34 = v80[5];
    v32 = v80[6];
    v8 = MEMORY[0x277D82BD8](log);
    (*(v32 + 8))(v33, v34, v8);
    v37 = v80[18];
    v35 = v80[14];
    v36 = v80[11];
    ReactiveUIManager.startRefreshScanResultsCacheTimer()();
    v37(v35, v36);
  }

  v11 = *(v80[2] + 8);

  return v11();
}

uint64_t sub_26B0669E4(uint64_t a1)
{
  v7 = *v2;
  v7[2] = *v2;
  v7[21] = a1;
  v7[22] = v1;

  if (v1)
  {
    v3 = v7[17];
    v4 = v7[16];
    v5 = sub_26B066CAC;
  }

  else
  {
    v3 = v7[17];
    v4 = v7[16];
    v5 = sub_26B066B64;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26B066B64()
{
  v1 = v0[21];
  v0[2] = v0;
  MEMORY[0x277D82BD8](v1);
  v6 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  ReactiveUIManager.startRefreshScanResultsCacheTimer()();
  v6(v4, v5);

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_26B066CAC()
{
  v1 = v0[22];
  v0[2] = v0;

  MEMORY[0x277D82BD8](0);
  v6 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  ReactiveUIManager.startRefreshScanResultsCacheTimer()();
  v6(v4, v5);

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_26B066F10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  v3(a2);
  MEMORY[0x277D82BD8](a2);
}

uint64_t sub_26B066F88@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26B06702C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t sub_26B067118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_26B07A130();
  v4[5] = sub_26B07A120();
  v7 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26B0671CC, v7, v5);
}

uint64_t sub_26B0671CC()
{
  *(v0 + 16) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCF10, qword_26B08BA48);
  sub_26AF40258();
  sub_26B0788F0();

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_26B0672AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_26B07A130();
  v4[5] = sub_26B07A120();
  v7 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26B067360, v7, v5);
}

uint64_t sub_26B067360()
{
  *(v0 + 16) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCF10, qword_26B08BA48);
  sub_26AF40258();
  sub_26B0788F0();

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_26B067884()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_26B068104()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_26B068714()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_26B068F70()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_26B0697CC()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

unint64_t sub_26B069C94()
{
  v2 = qword_2803DEE78;
  if (!qword_2803DEE78)
  {
    type metadata accessor for ReactiveUIManager(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEE78);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ReactiveUIManager(uint64_t a1)
{
  v2 = qword_2803DEFF0;
  if (!qword_2803DEFF0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_26B06A188(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = MEMORY[0x28223BE20](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v27 = sub_26B07A640() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_26B07A690();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    MEMORY[0x28223BE20](v23);
    v16 = v29;
    v17 = v10;
    sub_26B06A3C4(v11, sub_26B0710EC, &v15, v12, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v13, MEMORY[0x277D84F78]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_26B06A3C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a1);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_26B07A690();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = v14(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

uint64_t sub_26B06A58C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26B06A654(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_26AE9B554();
  v5 = MEMORY[0x277D83B88];

  return sub_26B06A188(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_26B06AA58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_26AE9B554();
  v5 = MEMORY[0x277D83B88];

  return sub_26B06A188(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_26B06B6F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26B06B738(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26B06B810;

  return sub_26B05E1AC(a1, v6, v7, v8);
}

uint64_t sub_26B06B810()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26B06C0E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26B06C12C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26B06C204;

  return sub_26B05ABC4(a1, v6, v7, v8);
}

uint64_t sub_26B06C204()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26B06C840()
{
  v2 = qword_2803DEF18;
  if (!qword_2803DEF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEF10, &qword_26B092188);
    sub_26B06C8D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B06C8D8()
{
  v2 = qword_2803DEF20;
  if (!qword_2803DEF20)
  {
    sub_26AF7F044();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEF20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B06DA78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 255)
  {
    return sub_26AEA00D4(result, a2, a3, a4, a5, a6);
  }

  return result;
}

unint64_t sub_26B06DB3C()
{
  v2 = qword_2803DEF78;
  if (!qword_2803DEF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEF70, &qword_26B092280);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEF78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B06DBC4()
{
  v2 = qword_2803DEF80;
  if (!qword_2803DEF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEF70, &qword_26B092280);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEF80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B06DC78()
{
  v2 = qword_2803DEF88;
  if (!qword_2803DEF88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DEF88);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B06DCDC()
{
  v2 = qword_2803DEF90;
  if (!qword_2803DEF90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DEF90);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26B06DDF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B06DF6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B06E060(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B06E118(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B06E1D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26B06E27C()
{
  v2 = qword_2803DEFB0;
  if (!qword_2803DEFB0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DEFB0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B06E2E0()
{
  v2 = qword_2803DEFC0;
  if (!qword_2803DEFC0)
  {
    sub_26B06E27C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEFC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B06E360(uint64_t a1)
{
  v3 = sub_26B07A3F0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_26B06E450()
{
  v2 = qword_2803DEFC8;
  if (!qword_2803DEFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DEFA0, qword_26B092290);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEFC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B06E4D8()
{
  v2 = qword_2803DEFD0;
  if (!qword_2803DEFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DC540, qword_26B0907E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEFD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B06E5F4()
{
  v2 = qword_2803DEFD8;
  if (!qword_2803DEFD8)
  {
    sub_26B0782A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEFD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B06E67C()
{
  v2 = *(sub_26B0782A0() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26B06E748@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26B0782A0();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_26B062D7C(v3, a1);
}

uint64_t sub_26B06E7FC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_26B0782A0();
  v1 = sub_26AEB9EEC();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t sub_26B06E898()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_26B0782A0();
  v1 = sub_26AEB9EEC();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t sub_26B06ED40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26B06ED88(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26B06EE60;

  return sub_26B062DF4(a1, v6, v7, v8);
}

uint64_t sub_26B06EE60()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26B06EF88()
{
  v4 = sub_26B0782A0();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_26B06F094(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(sub_26B0782A0() - 8);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + ((v9 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_26B06F1E0;

  return sub_26B063260(a1, v7, v8, v1 + v9, v10);
}

uint64_t sub_26B06F1E0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t block_copy_helper_1668(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_26B06FC10(uint64_t a1)
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

uint64_t sub_26B070058()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26B0700A0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26B070178;

  return sub_26B064E34(a1, v6, v7, v8);
}

uint64_t sub_26B070178()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_26B0709CC(void *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  *a2 = v4;
  return result;
}

void *sub_26B070A04(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

void *sub_26B070A44(void *a1, void *a2)
{
  v4 = *a1;
  sub_26B078640();
  result = a2;
  *a2 = v4;
  return result;
}

void *sub_26B070AA8(void *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_26B070B7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26B070BC4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26B070C9C;

  return sub_26B067118(a1, v6, v7, v8);
}

uint64_t sub_26B070C9C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26B070DC4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26B070E0C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26B070EE4;

  return sub_26B0672AC(a1, v6, v7, v8);
}

uint64_t sub_26B070EE4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26B07100C()
{
  v2 = qword_2803DF010;
  if (!qword_2803DF010)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DF010);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B071070()
{
  v2 = qword_2803DF018;
  if (!qword_2803DF018)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DF018);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_26B07111C(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

void *sub_26B07115C()
{
  if (qword_2803DB4E0 != -1)
  {
    swift_once();
  }

  return &unk_2803E5740;
}

uint64_t sub_26B0711FC()
{
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  MEMORY[0x277D82BE0](v3);
  MEMORY[0x277D82BE0](v2);
  return v3;
}

uint64_t sub_26B071278()
{
  v2 = *(v0 + 240);

  return v2;
}

uint64_t sub_26B071378(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_26B0713E0(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_26B071448(uint64_t a1)
{

  *(v1 + 16) = a1;
}

uint64_t sub_26B0714B0(uint64_t a1)
{

  *(v1 + 24) = a1;
}

uint64_t sub_26B0714F0()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26B07151C()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_26B071548()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_26B071574()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_26B0715A0()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_26B0715CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_26B0715F4()
{
  v2 = *(v0 + 16);
  sub_26B078640();
  return v2;
}

uint64_t sub_26B07162C()
{
  v2 = *(v0 + 32);
  sub_26B078640();
  return v2;
}

uint64_t sub_26B07166C()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t sub_26B071698(uint64_t a1)
{

  *(v1 + 56) = a1;
}

uint64_t sub_26B0716D4()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t sub_26B071700(uint64_t a1)
{

  *(v1 + 64) = a1;
}

uint64_t sub_26B07173C()
{
  v2 = *(v0 + 72);

  return v2;
}

uint64_t sub_26B071768(uint64_t a1)
{

  *(v1 + 72) = a1;
}

uint64_t sub_26B0717A4()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_26B0717D0(uint64_t a1)
{

  *(v1 + 80) = a1;
}

void *sub_26B07180C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __src[0] = 30.0;
  __src[1] = 10.0;
  __src[2] = sub_26B079D00("arrow.down.circle", 17, 1);
  __src[3] = v5;
  __src[4] = sub_26B079D00("clock", 5, 1);
  __src[5] = v6;
  __src[6] = 6.0;
  __src[7] = a1;
  __src[8] = a2;
  __src[9] = a3;
  __src[10] = a4;
  return memcpy(a5, __src, 0x58uLL);
}

void *sub_26B0718EC@<X0>(void *__src@<X4>, const void *a2@<X0>, const void *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, uint64_t a11)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, a3, sizeof(v22));
  memcpy(v24, v22, sizeof(v24));
  memcpy(v21, a2, sizeof(v21));
  memcpy(v25, v21, sizeof(v25));
  memcpy(v26, v25, 0x58uLL);
  memcpy(&v26[11], v24, 0x58uLL);
  v26[22] = a4;
  v26[23] = a5;
  *&v26[24] = a10;
  v26[25] = __dst[0];
  v26[26] = __dst[1];
  v26[27] = __dst[2];
  v26[28] = __dst[3];
  v26[29] = __dst[4];
  v26[30] = a6;
  v26[31] = a7;
  v26[32] = a8;
  v26[33] = a11;
  return memcpy(a9, v26, 0x110uLL);
}

void *sub_26B071A6C()
{
  v21 = sub_26B079760();
  v0 = [objc_opt_self() systemWhiteColor];
  v22 = sub_26B079750();
  sub_26B0797D0();
  v23 = sub_26B0797B0();

  sub_26B0797D0();
  v24 = sub_26B0797B0();

  sub_26B07180C(v21, v22, v23, v24, v38);
  v25 = sub_26B079780();
  v26 = sub_26B079760();
  v27 = sub_26B079780();
  sub_26B0797D0();
  v28 = sub_26B0797B0();

  sub_26B07180C(v25, v26, v27, v28, v39);
  sub_26AF7E238();
  v30 = sub_26B079D00("exclamationmark.triangle.fill", 29, 1);
  v29 = v1;
  sub_26B071F3C();
  v2 = sub_26B071FA0(2);
  sub_26B071FEC(v30, v29, v2);
  v3 = [objc_opt_self() systemYellowColor];
  v4 = sub_26B071348();
  v36 = v5;
  v37 = v6;
  v35 = v4;
  v7 = [objc_opt_self() labelColor];
  v34 = sub_26B079750();
  v8 = [objc_opt_self() systemRedColor];
  v31 = sub_26B079750();
  v32 = sub_26B079220();
  v9 = [objc_opt_self() systemBlueColor];
  v33 = sub_26B079750();
  v10 = [objc_opt_self() systemGrayColor];
  v11 = sub_26B079750();
  sub_26B0715CC(v34, v31, v32, v33, v11, v40);
  sub_26B079D00("PreferencesIconBackground", 25, 1);
  v12 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v12);
  sub_26B079860();
  sub_26B079D00("PreferencesIconInnerGear");
  v13 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v13);
  sub_26B079860();
  sub_26B079D00("PreferencesIconOuterGearShadow", 30, 1);
  v14 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v14);
  sub_26B079860();
  sub_26B079D00("PreferencesIconOuterGear", 24, 1);
  v15 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v15);
  sub_26B079860();
  nullsub_75();
  sub_26B0718EC(v40, v38, v39, v36, v37, v16, v17, v18, v41, v35, v19);
  return memcpy(&unk_2803E5740, v41, 0x110uLL);
}

void *sub_26B071E90(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v7 = a1[3];

  a2[3] = v7;
  v9 = a1[4];

  result = a2;
  a2[4] = v9;
  return result;
}

unint64_t sub_26B071F3C()
{
  v2 = qword_2803DF040;
  if (!qword_2803DF040)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DF040);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B071FA0(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() configurationWithWeight_];

  return v1;
}

id sub_26B071FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26B079DF0();
  v6 = [swift_getObjCClassFromMetadata() systemImageNamed:v5 withConfiguration:a3];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

uint64_t sub_26B0720D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
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

void *sub_26B0721EC(void *result, int a2, int a3)
{
  v3 = result + 34;
  if (a2 < 0)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[33] = 0;
    result[32] = 0;
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
      result[3] = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26B072434(uint64_t a1, int a2)
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
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
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

uint64_t sub_26B07254C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26B07272C(uint64_t a1, unsigned int a2)
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

uint64_t sub_26B07286C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B072A80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
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

uint64_t sub_26B072B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26B072DB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26B072EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26B0730C8@<X0>(void *a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968, "|l");
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v7 = &v3 - v4;
  v8 = v1;
  sub_26AF9D384(v1, (&v3 - v4));
  sub_26B078A10();
  return sub_26AF9D458(v7);
}

uint64_t sub_26B0731C4(uint64_t a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968, "|l") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v5 = v4 - v4[0];
  v8 = v2;
  v7 = v1;
  sub_26AF9D384(v2, (v4 - v4[0]));
  sub_26AF9D4F4(v5, v4[1]);
  return sub_26AF9D458(v6);
}

uint64_t sub_26B07327C()
{
  v2 = *(v0 + *(type metadata accessor for ReactiveUIModifier(0) + 20));

  return v2;
}

uint64_t type metadata accessor for ReactiveUIModifier(uint64_t a1)
{
  v2 = qword_2803DF0A8;
  if (!qword_2803DF0A8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_26B073334()
{
  v2 = *(v0 + *(type metadata accessor for ReactiveUIModifier(0) + 24));

  return v2;
}

uint64_t sub_26B073378()
{
  v2 = *(v0 + *(type metadata accessor for ReactiveUIModifier(0) + 28));

  return v2;
}

uint64_t sub_26B0733BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a4;
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v12 = type metadata accessor for ReactiveUIModifier(0);
  v11 = (*(*(v12 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v17 = (&v10 - v11);
  v21 = &v10 - v11;
  v20 = v4;
  v19 = v5;
  v18 = v6;
  swift_getKeyPath();
  sub_26B078A30();

  *(v17 + v12[5]) = v16;

  *(v17 + v12[6]) = v15;

  v7 = v17;
  v8 = v13;
  *(v17 + v12[7]) = v14;
  sub_26B07407C(v7, v8);

  return sub_26B0741E4(v17);
}

uint64_t ReactiveUIModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v11[1] = a1;
  v3 = v2;
  v39 = v3;
  v25 = sub_26B074550;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v43 = type metadata accessor for ReactiveUIModifier(0);
  v12 = *(v43 - 1);
  v20 = v12;
  v21 = *(v12 + 64);
  v13 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v23 = v11 - v13;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF048, &qword_26B0929A0);
  v14 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v31 = v11 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF050, &qword_26B0929A8);
  v15 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v36 = v11 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF058, &qword_26B0929B0);
  v16 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v42 = v11 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF060, &qword_26B0929B8);
  v17 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v48 = v11 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF068, &qword_26B0929C0);
  v18 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v52 = v11 - v18;
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v53 = v11 - v19;
  v60 = v11 - v19;
  v59 = a1;
  v58 = v7;
  sub_26B07407C(v7, v8);
  v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v26 = swift_allocObject();
  sub_26B07443C(v23, (v26 + v22));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF070, &qword_26B0929C8);
  sub_26B0745B4();
  sub_26B0796C0();
  sub_26AEB3258(v25, v26);
  KeyPath = swift_getKeyPath();
  v27 = *(v39 + v43[7]);

  v29 = &v57;
  v57 = v27;
  sub_26B07466C();
  sub_26B079430();
  sub_26AF3ED48();

  sub_26B074710(v31);
  v35 = swift_getKeyPath();
  v32 = *(v39 + v43[6]);

  v34 = &v56;
  v56 = v32;
  sub_26B074820();
  sub_26B079430();
  sub_26AEECDD4(v34);

  sub_26B0748C8(v36);
  v41 = swift_getKeyPath();
  v37 = *(v39 + v43[5]);

  v40 = &v55;
  v55 = v37;
  sub_26B074A10();
  sub_26B079430();
  v9 = v39;
  sub_26AF9DEAC();

  sub_26B074AB8(v42);
  v47 = swift_getKeyPath();
  v44 = *(v9 + v43[5]);

  v46 = &v54;
  sub_26B0784C0();

  sub_26B074C38();
  sub_26B079430();
  sub_26AF9DC30(v46);

  sub_26B074CE0(v48);
  v51 = sub_26B074E68();
  sub_26AE9463C(v52, v50, v53);
  sub_26B074F10(v52);
  sub_26B0750E8(v53, v52);
  sub_26AE94B4C(v52, v50, v49);
  sub_26B074F10(v52);
  return sub_26B074F10(v53);
}

uint64_t sub_26B073BEC(uint64_t a1)
{
  v5 = a1;
  v6 = sub_26B075980;
  v12 = 0;
  v10 = sub_26B079120();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v9 = &v3 - v4;
  v12 = a1;
  sub_26B0730C8((&v3 - v4));
  v11 = v5;
  sub_26B079110();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_26B073CE4(void *a1)
{
  type metadata accessor for ReactiveUIModifier(0);

  MEMORY[0x277D82BE0](a1);
  ReactiveUIManager.presentingViewController.setter(a1);
}

uint64_t View.withReactiveSUUI(reactivePlatformEnvironment:reactiveManager:reactiveAnalyticsReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = a6;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v16 = a4;
  v18 = a5;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v24 = a4;
  v17 = type metadata accessor for ReactiveUIModifier(0);
  v11 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v19 = &v11 - v11;
  v23 = v7;
  v22 = v8;
  v21 = v9;
  v20 = v6;

  sub_26B0733BC(v12, v13, v14, v19);
  MEMORY[0x26D66C890](v19, v16, v17, v18);
  return sub_26B0741E4(v19);
}

uint64_t sub_26B073ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_26B079120();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_26B078D30();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_26B078CC0();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

void *sub_26B07407C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B079120();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
  }

  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ReactiveUIModifier(0);
  v4 = v6[5];
  v5 = *(a1 + v4);

  *(a2 + v4) = v5;
  v7 = v6[6];
  v8 = *(a1 + v7);

  *(a2 + v7) = v8;
  v9 = v6[7];
  v10 = *(a1 + v9);

  result = a2;
  *(a2 + v9) = v10;
  return result;
}

uint64_t sub_26B0741E4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  type metadata accessor for ReactiveUIModifier(0);

  return a1;
}

uint64_t sub_26B0742C4()
{
  v0 = *(*(type metadata accessor for ReactiveUIModifier(0) - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

char *sub_26B07443C(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B079120();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = type metadata accessor for ReactiveUIModifier(0);
  result = a2;
  *&a2[v3[5]] = *&a1[v3[5]];
  *&a2[v3[6]] = *&a1[v3[6]];
  *&a2[v3[7]] = *&a1[v3[7]];
  return result;
}

uint64_t sub_26B074550()
{
  v1 = *(type metadata accessor for ReactiveUIModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26B073BEC(v2);
}

unint64_t sub_26B0745B4()
{
  v2 = qword_2803DF078;
  if (!qword_2803DF078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DF070, &qword_26B0929C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DF078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B07466C()
{
  v2 = qword_2803DF080;
  if (!qword_2803DF080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DF048, &qword_26B0929A0);
    sub_26B0745B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DF080);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B074710(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF070, &qword_26B0929C8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF048, &qword_26B0929A0) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

unint64_t sub_26B074820()
{
  v2 = qword_2803DF088;
  if (!qword_2803DF088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DF050, &qword_26B0929A8);
    sub_26B07466C();
    sub_26AF9E678();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DF088);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B0748C8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF070, &qword_26B0929C8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF048, &qword_26B0929A0) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF050, &qword_26B0929A8);

  return a1;
}

unint64_t sub_26B074A10()
{
  v2 = qword_2803DF090;
  if (!qword_2803DF090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DF058, &qword_26B0929B0);
    sub_26B074820();
    sub_26AF9E3A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DF090);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B074AB8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF070, &qword_26B0929C8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF048, &qword_26B0929A0) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF050, &qword_26B0929A8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF058, &qword_26B0929B0);

  return a1;
}

unint64_t sub_26B074C38()
{
  v2 = qword_2803DF098;
  if (!qword_2803DF098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DF060, &qword_26B0929B8);
    sub_26B074A10();
    sub_26AF9E0E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DF098);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B074CE0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF070, &qword_26B0929C8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF048, &qword_26B0929A0) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF050, &qword_26B0929A8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF058, &qword_26B0929B0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF060, &qword_26B0929B8);

  return a1;
}

unint64_t sub_26B074E68()
{
  v2 = qword_2803DF0A0;
  if (!qword_2803DF0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DF068, &qword_26B0929C0);
    sub_26B074C38();
    sub_26AF9DE24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DF0A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B074F10(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF070, &qword_26B0929C8);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF048, &qword_26B0929A0) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF050, &qword_26B0929A8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF058, &qword_26B0929B0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF060, &qword_26B0929B8);

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF068, &qword_26B0929C0) + 36);

  if (*(v3 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 8));
  }

  return a1;
}

uint64_t sub_26B0750E8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF070, &qword_26B0929C8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF048, &qword_26B0929A0) + 36);
  if (*(a1 + v35))
  {
    v31 = *(a1 + v35);
    v32 = *(a1 + v35 + 8);

    v3 = (a2 + v35);
    *v3 = v31;
    v3[1] = v32;
  }

  else
  {
    *(a2 + v35) = *(a1 + v35);
  }

  v29 = a2 + v35;
  v30 = a1 + v35;
  if (*(a1 + v35 + 16))
  {
    v27 = *(v30 + 16);
    v28 = *(a1 + v35 + 24);

    *(v29 + 16) = v27;
    *(a2 + v35 + 24) = v28;
  }

  else
  {
    *(v29 + 16) = *(v30 + 16);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF050, &qword_26B0929A8);
  v12 = (a2 + *(v4 + 36));
  v11 = (a1 + *(v4 + 36));
  v10 = *v11;

  *v12 = v10;
  v13 = v11[1];

  v12[1] = v13;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF058, &qword_26B0929B0);
  v16 = (a2 + *(v5 + 36));
  v15 = (a1 + *(v5 + 36));
  v14 = *v15;

  *v16 = v14;
  v17 = v15[1];

  v16[1] = v17;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF060, &qword_26B0929B8);
  v20 = (a2 + *(v6 + 36));
  v19 = (a1 + *(v6 + 36));
  v18 = *v19;

  *v20 = v18;
  v21 = v19[1];

  v20[1] = v21;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF068, &qword_26B0929C0);
  v23 = (a2 + *(v7 + 36));
  v24 = (a1 + *(v7 + 36));
  v22 = *v24;

  *v23 = v22;
  v25 = v23 + 1;
  v26 = v24 + 1;
  if (v24[4])
  {
    v8 = v24[4];
    v23[4] = v8;
    v23[5] = v24[5];
    (**(v8 - 8))(v25, v26);
  }

  else
  {
    memcpy(v25, v26, 0x28uLL);
  }

  return a2;
}

uint64_t sub_26B0754DC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968, "|l");
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_26B075628(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968, "|l");
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26B075724(uint64_t a1)
{
  v6 = sub_26AF9F0B0(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_26B078530();
    if (v2 <= 0x3F)
    {
      v6 = type metadata accessor for ReactiveUIManager(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_26AF9F14C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_26B075874()
{
  type metadata accessor for ReactiveUIModifier(255);
  sub_26B078BF0();
  sub_26B075900();
  return swift_getWitnessTable();
}

unint64_t sub_26B075900()
{
  v2 = qword_2803DF0B8;
  if (!qword_2803DF0B8)
  {
    type metadata accessor for ReactiveUIModifier(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DF0B8);
    return WitnessTable;
  }

  return v2;
}

id sub_26B075A4C()
{
  sub_26B0350A4();
  type metadata accessor for ResourceBundleClass();
  result = sub_26B035130();
  qword_2803DF0C0 = result;
  return result;
}

uint64_t *sub_26B075A94()
{
  if (qword_2803DB4E8 != -1)
  {
    swift_once();
  }

  return &qword_2803DF0C0;
}

uint64_t sub_26B075AF4()
{
  v2 = sub_26B078470();
  __swift_allocate_value_buffer(v2, qword_2803E5850);
  __swift_project_value_buffer(v2, qword_2803E5850);
  sub_26B079D00("PreferencesIconBackground", 25, 1);
  v0 = sub_26B075A94();
  MEMORY[0x277D82BE0](*v0);
  return sub_26B078440();
}

uint64_t sub_26B075B8C()
{
  if (qword_2803DB4F0 != -1)
  {
    swift_once();
  }

  v0 = sub_26B078470();
  return __swift_project_value_buffer(v0, qword_2803E5850);
}

uint64_t sub_26B075BF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B075B8C();
  v1 = sub_26B078470();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26B075C5C()
{
  v2 = sub_26B078470();
  __swift_allocate_value_buffer(v2, qword_2803E5868);
  __swift_project_value_buffer(v2, qword_2803E5868);
  sub_26B079D00("PreferencesIconInnerGear", 24, 1);
  v0 = sub_26B075A94();
  MEMORY[0x277D82BE0](*v0);
  return sub_26B078440();
}

uint64_t sub_26B075CF4()
{
  if (qword_2803DB4F8 != -1)
  {
    swift_once();
  }

  v0 = sub_26B078470();
  return __swift_project_value_buffer(v0, qword_2803E5868);
}

uint64_t sub_26B075D60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B075CF4();
  v1 = sub_26B078470();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26B075DC4()
{
  v2 = sub_26B078470();
  __swift_allocate_value_buffer(v2, qword_2803E5880);
  __swift_project_value_buffer(v2, qword_2803E5880);
  sub_26B079D00("PreferencesIconOuterGear", 24, 1);
  v0 = sub_26B075A94();
  MEMORY[0x277D82BE0](*v0);
  return sub_26B078440();
}

uint64_t sub_26B075E5C()
{
  if (qword_2803DB500 != -1)
  {
    swift_once();
  }

  v0 = sub_26B078470();
  return __swift_project_value_buffer(v0, qword_2803E5880);
}

uint64_t sub_26B075EC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B075E5C();
  v1 = sub_26B078470();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26B075F2C()
{
  v2 = sub_26B078470();
  __swift_allocate_value_buffer(v2, qword_2803E5898);
  __swift_project_value_buffer(v2, qword_2803E5898);
  sub_26B079D00("PreferencesIconOuterGearShadow", 30, 1);
  v0 = sub_26B075A94();
  MEMORY[0x277D82BE0](*v0);
  return sub_26B078440();
}

uint64_t sub_26B075FC4()
{
  if (qword_2803DB508 != -1)
  {
    swift_once();
  }

  v0 = sub_26B078470();
  return __swift_project_value_buffer(v0, qword_2803E5898);
}

uint64_t sub_26B076030@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B075FC4();
  v1 = sub_26B078470();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26B076094()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_26B078470();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_26AF7E238();
  v1 = sub_26B075B8C();
  (*(v5 + 16))(v8, v1, v7);
  return sub_26B07A3A0();
}

uint64_t sub_26B076174()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_26B078470();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_26AF7E238();
  v1 = sub_26B075CF4();
  (*(v5 + 16))(v8, v1, v7);
  return sub_26B07A3A0();
}

uint64_t sub_26B076254()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_26B078470();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_26AF7E238();
  v1 = sub_26B075E5C();
  (*(v5 + 16))(v8, v1, v7);
  return sub_26B07A3A0();
}

uint64_t sub_26B076334()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_26B078470();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_26AF7E238();
  v1 = sub_26B075FC4();
  (*(v5 + 16))(v8, v1, v7);
  return sub_26B07A3A0();
}

uint64_t sub_26B076414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v23 = 0;
  v13 = sub_26B078450();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v17 = *(v14 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = &v9 - v16;
  v19 = v16;
  MEMORY[0x28223BE20](v4);
  v20 = &v9 - v19;
  v29 = &v9 - v19;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  sub_26B0766D0();
  sub_26B078640();
  MEMORY[0x277D82BE0](v22);
  v25 = sub_26B076734(v24, v21, v22, v23);
  v11 = v25 != 0;
  v10 = v11;
  sub_26B0767D8(&v25);
  if (v10)
  {
    sub_26B078440();
    (*(v14 + 32))(v20, v18, v13);
    (*(v14 + 16))(v12, v20, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    return (*(v14 + 8))(v20, v13);
  }

  else
  {
    MEMORY[0x277D82BD8](v22);

    return (*(v14 + 56))(v12, 1, 1, v13);
  }
}

unint64_t sub_26B0766D0()
{
  v2 = qword_2803DF0C8;
  if (!qword_2803DF0C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DF0C8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B076734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B079DF0();
  v8 = [swift_getObjCClassFromMetadata() colorNamed:v7 inBundle:a3 compatibleWithTraitCollection:a4];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);

  return v8;
}

uint64_t sub_26B07680C(uint64_t a1)
{
  v14 = a1;
  v25 = 0;
  v23 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF0D0, &qword_26B092C30);
  v13 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v22 = &v11 - v13;
  v21 = sub_26B078450();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v15 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v16 = &v11 - v15;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v18 = &v11 - v17;
  v25 = &v11 - v17;
  v23 = v5;
  sub_26B076A90(v5, v6, v4);
  if ((*(v19 + 48))(v22, 1, v21) == 1)
  {
    sub_26B076BB8(v22, v7);
    sub_26B076BB8(v14, v8);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v18, v22, v21);
    (*(v19 + 16))(v16, v18, v21);
    v11 = sub_26B07A390();
    MEMORY[0x277D82BE0](v11);
    v24 = v11;
    v9 = (*(v19 + 8))(v18, v21);
    sub_26B076BB8(v14, v9);
    MEMORY[0x277D82BD8](v24);
    return v11;
  }
}

void *sub_26B076A90(const void *a1, void *a2, double a3)
{
  v7 = sub_26B078450();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF0D0, &qword_26B092C30);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_26B076BB8(uint64_t a1, double a2)
{
  v4 = sub_26B078450();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  return a1;
}

uint64_t sub_26B076C60(uint64_t a1)
{
  v15 = a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF0D0, &qword_26B092C30);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v23 = &v11 - v14;
  v22 = sub_26B078450();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v16 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v17 = &v11 - v16;
  v18 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v19 = &v11 - v18;
  v26 = &v11 - v18;
  v24 = v5;
  sub_26B076A90(v5, v6, v4);
  if ((*(v20 + 48))(v23, 1, v22) == 1)
  {
    sub_26B076BB8(v23, v7);
    sub_26B076BB8(v15, v8);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v19, v23, v22);
    (*(v20 + 16))(v17, v19, v22);
    v12 = sub_26B0797E0();

    v11 = &v25;
    v25 = v12;
    v9 = (*(v20 + 8))(v19, v22);
    sub_26B076BB8(v15, v9);
    sub_26AEF8E10();
    return v12;
  }
}

uint64_t sub_26B076ED0(uint64_t a1)
{
  v15 = a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF0D0, &qword_26B092C30);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v23 = &v11 - v14;
  v22 = sub_26B078450();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v16 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v17 = &v11 - v16;
  v18 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v19 = &v11 - v18;
  v26 = &v11 - v18;
  v24 = v5;
  sub_26B076A90(v5, v6, v4);
  if ((*(v20 + 48))(v23, 1, v22) == 1)
  {
    sub_26B076BB8(v23, v7);
    sub_26B076BB8(v15, v8);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v19, v23, v22);
    (*(v20 + 16))(v17, v19, v22);
    v12 = sub_26B0797E0();

    v11 = &v25;
    v25 = v12;
    v9 = (*(v20 + 8))(v19, v22);
    sub_26B076BB8(v15, v9);
    sub_26AEF8E10();
    return v12;
  }
}

uint64_t sub_26B077140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v23 = 0;
  v13 = sub_26B078470();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v17 = *(v14 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = &v9 - v16;
  v19 = v16;
  MEMORY[0x28223BE20](v4);
  v20 = &v9 - v19;
  v29 = &v9 - v19;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  sub_26AF7E238();
  sub_26B078640();
  MEMORY[0x277D82BE0](v22);
  v25 = sub_26B0773FC(v24, v21, v22, v23);
  v11 = v25 != 0;
  v10 = v11;
  sub_26B0774A0(&v25);
  if (v10)
  {
    sub_26B078440();
    (*(v14 + 32))(v20, v18, v13);
    (*(v14 + 16))(v12, v20, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    return (*(v14 + 8))(v20, v13);
  }

  else
  {
    MEMORY[0x277D82BD8](v22);

    return (*(v14 + 56))(v12, 1, 1, v13);
  }
}

id sub_26B0773FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B079DF0();
  v8 = [swift_getObjCClassFromMetadata() imageNamed:v7 inBundle:a3 compatibleWithTraitCollection:a4];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);

  return v8;
}

uint64_t sub_26B0774D4(uint64_t a1)
{
  v10 = a1;
  v21 = 0;
  v19 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF0D8, qword_26B092C38);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v7 - v9;
  v17 = sub_26B078470();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v11 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v12 = &v7 - v11;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v14 = &v7 - v13;
  v21 = &v7 - v13;
  v19 = v4;
  sub_26B077758(v4, v5);
  if ((*(v15 + 48))(v18, 1, v17) == 1)
  {
    sub_26B077880(v18);
    sub_26B077880(v10);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v14, v18, v17);
    (*(v15 + 16))(v12, v14, v17);
    v7 = sub_26B07A3A0();
    MEMORY[0x277D82BE0](v7);
    v20 = v7;
    (*(v15 + 8))(v14, v17);
    sub_26B077880(v10);
    MEMORY[0x277D82BD8](v20);
    return v7;
  }
}

void *sub_26B077758(const void *a1, void *a2)
{
  v6 = sub_26B078470();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DF0D8, qword_26B092C38);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26B077880(uint64_t a1)
{
  v3 = sub_26B078470();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_2803E56D0 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_2803E56C4 > a2)
  {
    return 1;
  }

  if (dword_2803E56C4 < a2)
  {
    return 0;
  }

  return dword_2803E56C8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_2803E56D8 == -1)
  {
    if (qword_2803E56E0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2803E56E0)
    {
      return _availability_version_check();
    }
  }

  if (qword_2803E56D0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2803E56C4 > a3)
      {
        return 1;
      }

      if (dword_2803E56C4 >= a3)
      {
        return dword_2803E56C8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_2803E56E0;
  if (qword_2803E56E0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_2803E56E0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x26D66DDE0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_2803E56C4, &dword_2803E56C8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}