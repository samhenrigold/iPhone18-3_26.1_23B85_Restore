uint64_t sub_268F0DACC(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[39] = a1;
  v5[40] = v1;

  if (v1)
  {
    v3 = sub_268F0E188;
  }

  else
  {

    v3 = sub_268F0DC70;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F0DC70()
{
  v1 = v0[39];
  v10 = v0[32];
  v11 = v0[31];
  v12 = v0[30];
  v0[7] = v0;
  v0[21] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v12);
  v13 = v0[39];

  v4 = *(v0[7] + 8);

  return v4(v13);
}

uint64_t sub_268F0DE40(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[45] = a1;
  v5[46] = v1;

  if (v1)
  {
    v3 = sub_268F0E4DC;
  }

  else
  {

    v3 = sub_268F0DFE4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F0DFE4()
{
  v1 = v0[45];
  v10 = v0[31];
  v11 = v0[30];
  v0[7] = v0;
  v0[16] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);

  MEMORY[0x277D82BD8](v11);
  v12 = v0[45];

  v4 = *(v0[7] + 8);

  return v4(v12);
}

uint64_t sub_268F0E188()
{
  v19 = v0[40];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[30];
  v0[7] = v0;

  v1 = v19;
  v0[19] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[20] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogNumericSyncRF2 | describeNumericSettingStateSpokenOnly cat execution error %@", 128, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);

  MEMORY[0x277D82BD8](v22);

  v8 = *(v0[7] + 8);

  return v8();
}

uint64_t sub_268F0E4DC()
{
  v19 = v0[46];
  v20 = v0[31];
  v21 = v0[30];
  v0[7] = v0;

  v1 = v19;
  v0[14] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[15] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService makeIntentHandledDialogNumericSyncRF2 | describeNumericSettingState cat execution error %@", 118, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v20);

  MEMORY[0x277D82BD8](v21);

  v8 = *(v0[7] + 8);

  return v8();
}

uint64_t sub_268F0E814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 144) = v3;
  *(v4 + 136) = a3;
  *(v4 + 128) = a2;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 240) = 0;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  return MEMORY[0x2822009F8](sub_268F0E898, 0);
}

uint64_t sub_268F0E898()
{
  v1 = *(v0 + 136);
  v64 = v1;
  *(v0 + 32) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v64)
  {
    v59 = *(v63 + 136);
    v60 = [v59 code];
    MEMORY[0x277D82BD8](v59);
    v61 = v60;
    v62 = 0;
  }

  else
  {
    v61 = 0;
    v62 = 1;
  }

  if (v62)
  {
    v25 = sub_268DC866C();
    v29 = *v25;
    MEMORY[0x277D82BE0](*v25);
    v28 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("GetSettingTemplatingService makeFailureHandlingIntentDialogSyncRF2 | response does not exist", 92, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);
    sub_268D28BD4();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
LABEL_25:
    v27 = *(*(v63 + 32) + 8);

    return v27();
  }

  *(v63 + 72) = v61;
  if (v61 != 6)
  {
    if (v61 == 7)
    {
      v2 = swift_task_alloc();
      *(v63 + 152) = v2;
      *v2 = *(v63 + 32);
      v2[1] = sub_268F0F4A4;
      v3 = *(v63 + 136);
      v4 = *(v63 + 128);

      return sub_268F11970(v4, v3);
    }

    v30 = *(v63 + 136);
    v21 = sub_268DC866C();
    v35 = *v21;
    MEMORY[0x277D82BE0](*v21);
    v34 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v33 = v22;
    MEMORY[0x277D82BE0](v30);
    *(v63 + 80) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v31 = sub_268F9AE64();
    v32 = v23;
    v33[3] = MEMORY[0x277D837D0];
    v33[4] = sub_268CDD224();
    *v33 = v31;
    v33[1] = v32;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService makeFailureHandlingIntentDialogSyncRF2 | response contains unsupported error code: %@", 113, 2, &dword_268CBE000, v35, v34);

    MEMORY[0x277D82BD8](v35);
    sub_268D284D4();
    swift_allocError();
    *v24 = 7;
    swift_willThrow();
    goto LABEL_25;
  }

  v50 = *(v63 + 136);
  v57 = *(v63 + 128);
  v6 = sub_268DC866C();
  v56 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v55 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v53 = v7;
  MEMORY[0x277D82BE0](v50);
  *(v63 + 88) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
  v51 = sub_268F9AE64();
  v52 = v8;
  v53[3] = MEMORY[0x277D837D0];
  v54 = sub_268CDD224();
  v53[4] = v54;
  *v53 = v51;
  v53[1] = v52;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService makeFailureHandlingIntentDialogSyncRF2 | Rendering failureUnsupported", 97, 2, &dword_268CBE000, v56, v55);

  MEMORY[0x277D82BD8](v56);
  *(v63 + 96) = v57;
  v9 = sub_268D2E630();
  v58._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v9, &protocol witness table for INGetSettingIntent);
  v58._object = v10;
  *(v63 + 160) = v10;
  if (v10)
  {
    *(v63 + 16) = v58._countAndFlagsBits;
    *(v63 + 24) = v10;

    BinarySettingIdentifier.init(rawValue:)(v58);
    if (v65 != 65)
    {
      *(v63 + 240) = v65;
      v48 = *sub_268E79858();

      *(v63 + 112) = v48;
      *(v63 + 241) = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
      sub_268D28B4C();
      sub_268D288C8();
      v49 = sub_268F9AFC4();
      sub_268CD7930((v63 + 112));
      if (v49)
      {
        v44 = *(v63 + 144);
        v41 = *(v63 + 136);
        v11 = sub_268DC866C();
        v43 = *v11;
        MEMORY[0x277D82BE0](*v11);
        sub_268F9B284();
        sub_268F9B734();
        v42 = v12;
        MEMORY[0x277D82BE0](v41);
        *(v63 + 120) = v41;
        v13 = sub_268F9AE64();
        v42[3] = MEMORY[0x277D837D0];
        v42[4] = v54;
        *v42 = v13;
        v42[1] = v14;
        sub_268CD0F7C();
        sub_268F9AC04("GetSettingTemplatingService makeFailureHandlingIntentDialogSyncRF2 | Rendering Noise Management case", 100);

        MEMORY[0x277D82BD8](v43);
        *(v63 + 168) = *(v44 + qword_280FE80A8);

        type metadata accessor for SettingsBinarySetting(0);

        v47 = SettingsBinarySetting.__allocating_init(settingId:value:)(v58._countAndFlagsBits, v58._object, 0);
        *(v63 + 176) = v47;
        v45 = *(v44 + qword_280FE37C8);
        *(v63 + 184) = v45;

        v46 = sub_268CDD6D4();
        v15 = swift_task_alloc();
        *(v63 + 192) = v15;
        *v15 = *(v63 + 32);
        v15[1] = sub_268F0F6B0;

        return sub_268EB8F90(v47, v45, 2, v46 & 1);
      }
    }
  }

  v40 = *(v63 + 144);
  v36 = *(v63 + 136);
  v16 = sub_268DC866C();
  v39 = *v16;
  MEMORY[0x277D82BE0](*v16);
  v38 = sub_268F9B284();
  sub_268F9B734();
  v37 = v17;
  MEMORY[0x277D82BE0](v36);
  *(v63 + 104) = v36;
  v18 = sub_268F9AE64();
  v37[3] = MEMORY[0x277D837D0];
  v37[4] = v54;
  *v37 = v18;
  v37[1] = v19;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService makeFailureHandlingIntentDialogSyncRF2 | Rendering standard response", 96, 2, &dword_268CBE000, v39, v38);

  MEMORY[0x277D82BD8](v39);
  *(v63 + 216) = *(v40 + qword_280FE80A8);

  v20 = swift_task_alloc();
  *(v63 + 224) = v20;
  *v20 = *(v63 + 32);
  v20[1] = sub_268F0F914;

  return sub_268EB880C();
}

uint64_t sub_268F0F4A4(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 32) = *v2;
  v8 = v7 + 32;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_268F0F6B0(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[25] = a1;
  v5[26] = v1;

  if (v1)
  {
    v3 = sub_268F0FBB4;
  }

  else
  {

    v3 = sub_268F0F854;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F0F854()
{
  *(v0 + 32) = v0;

  v1 = *(v0 + 200);
  v2 = *(*(v0 + 32) + 8);

  return v2(v1);
}

uint64_t sub_268F0F914(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 32) = *v2;
  *(v6 + 232) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268F0FB00, 0);
  }

  else
  {

    v3 = *(*(v6 + 32) + 8);

    return v3(a1);
  }
}

uint64_t sub_268F0FB00()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268F0FBB4()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268F0FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = v3;
  *(v4 + 112) = a2;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 208) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 128) = v5;
  *(v4 + 136) = *(v5 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;

  return MEMORY[0x2822009F8](sub_268F0FE14, 0);
}

uint64_t sub_268F0FE14()
{
  v36 = v0[14];
  v0[4] = v0;
  v1 = sub_268DC866C();
  v35 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v34 = sub_268F9B284();
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v33 = v2;
  MEMORY[0x277D82BE0](v36);
  v0[9] = v36;
  v37 = sub_268D2E630();
  sub_268D59CAC();
  v31 = sub_268F9AE74();
  v32 = v3;
  v33[3] = MEMORY[0x277D837D0];
  v4 = sub_268CDD224();
  v0[21] = v4;
  v33[4] = v4;
  *v33 = v31;
  v33[1] = v32;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService makeIntentConfirmationDialogRF2 | INGetSettingIntent requires confirmation %@", 105, 2, &dword_268CBE000, v35, v34);

  MEMORY[0x277D82BD8](v35);
  v0[10] = v36;
  v0[2] = SettingIntent.settingIdentifier.getter(v37, &protocol witness table for INGetSettingIntent);
  v0[3] = v5;
  if (v0[3])
  {
    v39 = *(v30 + 16);
  }

  else
  {
    v39._countAndFlagsBits = sub_268F9AEF4();
    v39._object = v6;
    if (*(v30 + 24))
    {
      sub_268CD9D30(v30 + 16);
    }
  }

  v22 = *(v30 + 152);
  v21 = *(v30 + 144);
  v23 = *(v30 + 128);
  v19 = *(v30 + 120);
  v20 = *(v30 + 136);
  BinarySettingIdentifier.init(rawValue:)(v39);
  *(v30 + 208) = v38;
  sub_268D29170();
  *(v30 + 88) = sub_268CF0C44();
  v7 = sub_268DB98D4();
  v26 = *v7;
  v27 = v7[1];
  v28 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v29 = *v8;
  MEMORY[0x277D82BE0](*v8);
  (*(v20 + 16))(v22, v19 + qword_280FE3800, v23);
  sub_268F9AB14();
  v25 = sub_268F9AB04();
  v24 = *(v20 + 8);
  v24(v21, v23);
  v24(v22, v23);
  sub_268DB9934(v26, v27, v28, v29, (v25 ^ 1) & 1);
  MEMORY[0x277D82BD8](v29);
  if (v38 != 65 && (v38 == 35 || v38 == 36))
  {
    *(v30 + 176) = *(*(v30 + 120) + qword_280FE37E0);

    v9 = swift_task_alloc();
    *(v30 + 184) = v9;
    *v9 = *(v30 + 32);
    v9[1] = sub_268F104C0;

    return sub_268F4D82C();
  }

  else
  {
    v11 = sub_268DB98D4();
    v17 = *v11;
    v15 = v11[1];
    v16 = *(v11 + 16);
    v12 = sub_268DC7BA8();
    v18 = *v12;
    MEMORY[0x277D82BE0](*v12);
    sub_268DB9B78(v17, v15, v16, v18);
    MEMORY[0x277D82BD8](v18);
    sub_268D284D4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    MEMORY[0x277D82BD8](*(v30 + 88));

    v14 = *(*(v30 + 32) + 8);

    return v14();
  }
}

uint64_t sub_268F104C0(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[24] = a1;
  v5[25] = v1;

  if (v1)
  {
    v3 = sub_268F1079C;
  }

  else
  {

    v3 = sub_268F10644;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F10644()
{
  v1 = v0[24];
  v8 = v1;
  v0[4] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[11];
  v0[11] = v8;
  MEMORY[0x277D82BD8](v2);
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[11]);

  v5 = *(*(v13 + 32) + 8);
  v6 = *(v13 + 192);

  return v5(v6);
}

uint64_t sub_268F1079C()
{
  v19 = v0[25];
  v11 = v0[21];
  v0[4] = v0;

  v1 = v19;
  v0[12] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[13] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService makeIntentConfirmationDialogRF2 | HotspotDiscoverabilityPrompt cat execution error %@", 113, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB98D4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[11]);

  v9 = *(v0[4] + 8);

  return v9();
}

uint64_t sub_268F10A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = v3;
  v4[12] = a2;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v4[14] = swift_task_alloc();
  v5 = sub_268F9AB24();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = v3;

  return MEMORY[0x2822009F8](sub_268F10C18, 0);
}

uint64_t sub_268F10C18()
{
  v1 = v0[18];
  v37 = v0[17];
  v36 = v0[16];
  v38 = v0[15];
  v35 = v0[13];
  v45 = v0[12];
  v0[4] = v0;
  v2 = sub_268DB98D4();
  v41 = *v2;
  v42 = v2[1];
  v43 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v44 = *v3;
  MEMORY[0x277D82BE0](*v3);
  (*(v36 + 16))(v1, v35 + qword_280FE3800, v38);
  sub_268F9AB14();
  v40 = sub_268F9AB04();
  v39 = *(v36 + 8);
  v39(v37, v38);
  v39(v1, v38);
  sub_268DB9934(v41, v42, v43, v44, (v40 ^ 1) & 1);
  v46 = [v45 settingMetadata];
  if (v46)
  {
    v31 = [v46 settingId];
    v32._countAndFlagsBits = sub_268F9AE24();
    v32._object = v4;
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v31);
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34[9]._object = v33._object;
  if (v33._object)
  {
    v34[1] = v33;

    BinarySettingIdentifier.init(rawValue:)(v33);
    if (v47 != 65 && (v47 == 35 || v47 == 36))
    {
      countAndFlagsBits = v34[7]._countAndFlagsBits;
      v34[10]._countAndFlagsBits = *(v34[6]._object + qword_280FE37C0);

      sub_268E948B8(14);
      sub_268F9A9A4();
      v5 = sub_268F9A9C4();
      (*(*(v5 - 8) + 56))(countAndFlagsBits, 0, 1);
      v6 = swift_task_alloc();
      v34[10]._object = v6;
      *v6 = v34[2]._countAndFlagsBits;
      v6[1] = sub_268F113E4;
      v7 = v34[7]._countAndFlagsBits;

      return sub_268DF2E84(v7);
    }

    sub_268D290F8();
    v28 = swift_allocError();
    swift_willThrow();

    v29 = v28;
  }

  else
  {
    v9 = sub_268DB98D4();
    v25 = *v9;
    v23 = v9[1];
    v24 = *(v9 + 16);
    v10 = sub_268DC7BA8();
    v26 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268DB9B78(v25, v23, v24, v26);
    MEMORY[0x277D82BD8](v26);
    sub_268D28BD4();
    v27 = swift_allocError();
    *v11 = 2;
    swift_willThrow();
    v29 = v27;
  }

  v12 = v29;
  v34[4]._object = v29;
  v13 = sub_268DC7B48();
  v22 = *v13;
  MEMORY[0x277D82BE0](*v13);
  v21 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v20 = v14;
  v15 = v29;
  v34[5]._countAndFlagsBits = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v18 = sub_268F9AE64();
  v19 = v16;
  v20[3] = MEMORY[0x277D837D0];
  v20[4] = sub_268CDD224();
  *v20 = v18;
  v20[1] = v19;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService makeIntentConfirmationCancelledDialogRF2 | RetainingCurrentBinaryValue cat execution error %@", 121, 2, &dword_268CBE000, v22, v21);

  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v17 = *(v34[2]._countAndFlagsBits + 8);

  return v17();
}

uint64_t sub_268F113E4(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[22] = a1;
  v5[23] = v1;

  if (v1)
  {
    v3 = sub_268F116C8;
  }

  else
  {
    sub_268D28588(v5[14]);

    v3 = sub_268F11578;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F11578()
{
  v1 = v0[22];
  v0[4] = v0;
  v0[11] = v1;
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);

  v4 = *(*(v11 + 32) + 8);
  v5 = *(v11 + 176);

  return v4(v5);
}

uint64_t sub_268F116C8()
{
  v1 = v0[14];
  v0[4] = v0;
  sub_268D28588(v1);

  v14 = v0[23];
  v2 = v14;
  v0[9] = v14;
  v3 = sub_268DC7B48();
  v13 = *v3;
  MEMORY[0x277D82BE0](*v3);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v4;
  v5 = v14;
  v0[10] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v6;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService makeIntentConfirmationCancelledDialogRF2 | RetainingCurrentBinaryValue cat execution error %@", 121, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v7 = *(v0[4] + 8);

  return v7();
}

uint64_t sub_268F11970(uint64_t a1, uint64_t a2)
{
  *(v3 + 496) = v2;
  *(v3 + 488) = a2;
  *(v3 + 480) = a1;
  *(v3 + 208) = v3;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 256) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 936) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 344) = 0;
  *(v3 + 360) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 376) = 0;
  *(v3 + 392) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 408) = 0;
  *(v3 + 944) = 0;
  *(v3 + 952) = 0;
  *(v3 + 960) = 0;
  *(v3 + 968) = 0;
  *(v3 + 976) = 0;
  *(v3 + 416) = 0;
  *(v3 + 984) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 432) = 0;
  *(v3 + 448) = 0;
  *(v3 + 456) = 0;
  *(v3 + 472) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v3 + 504) = swift_task_alloc();
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  v4 = sub_268F9AB24();
  *(v3 + 528) = v4;
  *(v3 + 536) = *(v4 - 8);
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;
  *(v3 + 232) = v2;

  return MEMORY[0x2822009F8](sub_268F11BB4, 0);
}

uint64_t sub_268F11BB4()
{
  v191 = v0;
  v1 = *(v0 + 488);
  v185 = v1;
  *(v0 + 208) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v185)
  {
    v182 = *(v184 + 488);
    v183 = [v182 errorDetail];
    if (v183)
    {
      v178 = sub_268F9AE24();
      v179 = v2;
      MEMORY[0x277D82BD8](v183);
      v180 = v178;
      v181 = v179;
    }

    else
    {
      v180 = 0;
      v181 = 0;
    }

    MEMORY[0x277D82BD8](v182);
    v176 = v180;
    v177 = v181;
  }

  else
  {
    v176 = 0;
    v177 = 0;
  }

  *(v184 + 560) = v177;
  if (!v177)
  {
    v70 = *(v184 + 488);
    v65 = sub_268DC866C();
    v75 = *v65;
    MEMORY[0x277D82BE0](*v65);
    v74 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v73 = v66;
    MEMORY[0x277D82BE0](v70);
    *(v184 + 240) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v71 = sub_268F9AE64();
    v72 = v67;
    v73[3] = MEMORY[0x277D837D0];
    v73[4] = sub_268CDD224();
    *v73 = v71;
    v73[1] = v72;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | response contains error code 'other reason' but no details: %@", 120, 2, &dword_268CBE000, v75, v74);

    MEMORY[0x277D82BD8](v75);
    sub_268D28BD4();
    swift_allocError();
    *v68 = 3;
    swift_willThrow();
    goto LABEL_76;
  }

  v3 = *(v184 + 552);
  v167 = *(v184 + 544);
  v168 = *(v184 + 528);
  v165 = *(v184 + 496);
  v166 = *(v184 + 536);
  *(v184 + 16) = v176;
  *(v184 + 24) = v177;
  v4 = sub_268DB98D4();
  v171 = *v4;
  v172 = v4[1];
  v173 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v174 = *v5;
  MEMORY[0x277D82BE0](*v5);
  (*(v166 + 16))(v3, v165 + qword_280FE3800, v168);
  sub_268F9AB14();
  v170 = sub_268F9AB04();
  v169 = *(v166 + 8);
  v169(v167, v168);
  v169(v3, v168);
  sub_268DB9934(v171, v172, v173, v174, (v170 ^ 1) & 1);
  MEMORY[0x277D82BD8](v174);

  *(v184 + 32) = sub_268E948B8(3);
  *(v184 + 40) = v6;
  v175 = MEMORY[0x26D62DB50](*(v184 + 32), *(v184 + 40), v176, v177);
  sub_268CD9D30(v184 + 32);
  if (v175)
  {
    v163 = *(v184 + 480);

    v164 = [v163 settingMetadata];
    if (v164)
    {
      v158 = [v164 settingId];
      v159 = sub_268F9AE24();
      v160 = v7;
      MEMORY[0x277D82BD8](v164);
      MEMORY[0x277D82BD8](v158);
      v161 = v159;
      v162 = v160;
    }

    else
    {
      v161 = 0;
      v162 = 0;
    }

    *(v184 + 568) = v162;
    if (v162)
    {
      *(v184 + 192) = v161;
      *(v184 + 200) = v162;
      if (sub_268E07AE4(v161, v162))
      {
        v154 = *(v184 + 496);
        *(v184 + 576) = *(v154 + qword_280FE80A8);

        type metadata accessor for SettingsBinarySetting(0);

        v157 = SettingsBinarySetting.__allocating_init(settingId:value:)(v161, v162, 0);
        *(v184 + 584) = v157;
        v155 = *(v154 + qword_280FE37C8);
        *(v184 + 592) = v155;

        v156 = sub_268CDD6D4();
        v8 = swift_task_alloc();
        *(v184 + 600) = v8;
        *v8 = *(v184 + 208);
        v8[1] = sub_268F13E9C;

        return sub_268EB8F90(v157, v155, 2, v156 & 1);
      }

      if (sub_268E07B94(v161, v162))
      {
        v151 = *(v184 + 496);
        *(v184 + 624) = *(v151 + qword_280FE80A8);

        v153 = *(v151 + qword_280FE37C8);
        *(v184 + 632) = v153;

        v152 = sub_268CDD6D4();
        v10 = swift_task_alloc();
        *(v184 + 640) = v10;
        *v10 = *(v184 + 208);
        v10[1] = sub_268F141E0;

        return sub_268EBA484(v153, v152 & 1);
      }

      v62 = sub_268DB98D4();
      v78 = *v62;
      v76 = v62[1];
      v77 = *(v62 + 16);
      v63 = sub_268DC7BA8();
      v79 = *v63;
      MEMORY[0x277D82BE0](*v63);
      sub_268DB9B78(v78, v76, v77, v79);
      MEMORY[0x277D82BD8](v79);
      sub_268D28BD4();
      swift_allocError();
      *v64 = 4;
      swift_willThrow();
    }

    else
    {
      v11 = sub_268DB98D4();
      v149 = *v11;
      v147 = v11[1];
      v148 = *(v11 + 16);
      v12 = sub_268DC7BA8();
      v150 = *v12;
      MEMORY[0x277D82BE0](*v12);
      sub_268DB9B78(v149, v147, v148, v150);
      MEMORY[0x277D82BD8](v150);
      sub_268D28BD4();
      swift_allocError();
      *v13 = 2;
      swift_willThrow();
    }

    goto LABEL_76;
  }

  *(v184 + 48) = sub_268E948B8(17);
  *(v184 + 56) = v14;
  v146 = MEMORY[0x26D62DB50](*(v184 + 48), *(v184 + 56), v176, v177);
  sub_268CD9D30(v184 + 48);
  if (v146)
  {
    v144 = *(v184 + 480);

    *(v184 + 400) = v144;
    v15 = sub_268D2E630();
    v145._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v15, &protocol witness table for INGetSettingIntent);
    v145._object = v16;
    *(v184 + 664) = v16;
    if (v16)
    {
      *(v184 + 176) = v145._countAndFlagsBits;
      *(v184 + 184) = v16;
      sub_268D29170();
      *(v184 + 408) = sub_268CF0C44();
      v17 = BinarySettingIdentifier.rawValue.getter();
      v143 = MEMORY[0x26D62DB50](v145._countAndFlagsBits, v145._object, v17);

      if (v143)
      {
        v140 = *(v184 + 496);

        v189[3] = 45;
        v18._countAndFlagsBits = BinarySettingIdentifier.rawValue.getter();
        BinarySettingIdentifier.init(rawValue:)(v18);
        v190 = v189[2];
        v142 = sub_268F397B4(&v190);

        *(v184 + 984) = v142;
        *(v184 + 672) = *(v140 + qword_280FE80A8);

        type metadata accessor for SettingsMultiSetting(0);

        v141 = sub_268E067CC(v145._countAndFlagsBits, v145._object, 0);
        *(v184 + 680) = v141;
        v19 = swift_task_alloc();
        *(v184 + 688) = v19;
        *v19 = *(v184 + 208);
        v19[1] = sub_268F14514;

        return sub_268EC0E00(v142, v141);
      }

      else
      {

        BinarySettingIdentifier.init(rawValue:)(v145);
        if (v186 == 65)
        {

          NumericSettingIdentifier.init(rawValue:)(v145);
          if (v187 != 13)
          {
            *(v184 + 944) = v187;

            v188 = v187;
            v135 = sub_268F3988C(&v188);

            *(v184 + 952) = v135;
          }

          v22 = sub_268DB98D4();
          v132 = *v22;
          v130 = v22[1];
          v131 = *(v22 + 16);
          v23 = sub_268DC7BA8();
          v133 = *v23;
          MEMORY[0x277D82BE0](*v23);
          sub_268DB9B78(v132, v130, v131, v133);
          MEMORY[0x277D82BD8](v133);
          v134 = *(v184 + 408);
          MEMORY[0x277D82BE0](v134);
          MEMORY[0x277D82BD8](*(v184 + 408));

          v24 = *(*(v184 + 208) + 8);

          return v24(v134);
        }

        else
        {
          v136 = *(v184 + 496);
          *(v184 + 960) = v186;

          v189[0] = v186;
          v139 = sub_268F397B4(v189);

          *(v184 + 968) = v139;
          v189[1] = 44;
          v20 = BinarySettingIdentifier.rawValue.getter();
          v137 = MEMORY[0x26D62DB50](v20);

          *(v184 + 976) = v137 & 1;
          *(v184 + 712) = *(v136 + qword_280FE80A8);

          type metadata accessor for SettingsBinarySetting(0);

          v138 = SettingsBinarySetting.__allocating_init(settingId:value:)(v145._countAndFlagsBits, v145._object, 0);
          *(v184 + 720) = v138;
          v21 = swift_task_alloc();
          *(v184 + 728) = v21;
          *v21 = *(v184 + 208);
          v21[1] = sub_268F14884;

          return sub_268EC1F74(v139, v137 & 1, 0, v138);
        }
      }
    }

    v25 = sub_268DB98D4();
    v128 = *v25;
    v126 = v25[1];
    v127 = *(v25 + 16);
    v26 = sub_268DC7BA8();
    v129 = *v26;
    MEMORY[0x277D82BE0](*v26);
    sub_268DB9B78(v128, v126, v127, v129);
    MEMORY[0x277D82BD8](v129);
    sub_268D28BD4();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();

LABEL_76:

    v69 = *(*(v184 + 208) + 8);

    return v69();
  }

  *(v184 + 64) = sub_268E948B8(7);
  *(v184 + 72) = v28;
  v125 = MEMORY[0x26D62DB50](*(v184 + 64), *(v184 + 72), v176, v177);
  sub_268CD9D30(v184 + 64);
  if (v125)
  {
    v122 = *(v184 + 480);

    *(v184 + 368) = v122;
    v29 = sub_268D2E630();
    v123 = SettingIntent.settingIdentifier.getter(v29, &protocol witness table for INGetSettingIntent);
    v124 = v30;
    *(v184 + 752) = v30;
    if (!v30)
    {
      v33 = sub_268DB98D4();
      v119 = *v33;
      v117 = v33[1];
      v118 = *(v33 + 16);
      v34 = sub_268DC7BA8();
      v120 = *v34;
      MEMORY[0x277D82BE0](*v34);
      sub_268DB9B78(v119, v117, v118, v120);
      MEMORY[0x277D82BD8](v120);
      sub_268D28BD4();
      swift_allocError();
      *v35 = 2;
      swift_willThrow();

      goto LABEL_76;
    }

    v31 = *(v184 + 496);
    *(v184 + 160) = v123;
    *(v184 + 168) = v30;
    *(v184 + 760) = *(v31 + qword_280FE80A8);

    type metadata accessor for SettingsBinarySetting(0);

    v121 = SettingsBinarySetting.__allocating_init(settingId:value:)(v123, v124, 0);
    *(v184 + 768) = v121;
    v32 = swift_task_alloc();
    *(v184 + 776) = v32;
    *v32 = *(v184 + 208);
    v32[1] = sub_268F14C10;

    return sub_268EBBFB8(v121);
  }

  else
  {

    *(v184 + 80) = sub_268E948B8(10);
    *(v184 + 88) = v36;
    v116 = MEMORY[0x26D62DB50](*(v184 + 80), *(v184 + 88), v176, v177);
    sub_268CD9D30(v184 + 80);
    if ((v116 & 1) == 0)
    {

      *(v184 + 96) = sub_268E948B8(12);
      *(v184 + 104) = v47;
      v97 = MEMORY[0x26D62DB50](*(v184 + 96), *(v184 + 104), v176, v177);
      sub_268CD9D30(v184 + 96);
      if (v97)
      {
        v96 = *(v184 + 512);
        v95 = *(v184 + 496);

        *(v184 + 840) = *(v95 + qword_280FE37C0);

        sub_268E948B8(12);
        sub_268F9A9A4();
        v48 = sub_268F9A9C4();
        (*(*(v48 - 8) + 56))(v96, 0, 1);
        v49 = swift_task_alloc();
        *(v184 + 848) = v49;
        *v49 = *(v184 + 208);
        v49[1] = sub_268F15290;
        v50 = *(v184 + 512);
      }

      else
      {

        *(v184 + 112) = sub_268E948B8(16);
        *(v184 + 120) = v51;
        v94 = MEMORY[0x26D62DB50](*(v184 + 112), *(v184 + 120), v176, v177);
        sub_268CD9D30(v184 + 112);
        if ((v94 & 1) == 0)
        {

          *(v184 + 128) = sub_268E948B8(22);
          *(v184 + 136) = v54;
          v91 = MEMORY[0x26D62DB50](*(v184 + 128), *(v184 + 136), v176, v177);
          sub_268CD9D30(v184 + 128);
          if ((v91 & 1) == 0)
          {
            v80 = *(v184 + 488);

            v56 = sub_268DC866C();
            v85 = *v56;
            MEMORY[0x277D82BE0](*v56);
            v84 = sub_268F9B294();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            sub_268F9B734();
            v83 = v57;
            MEMORY[0x277D82BE0](v80);
            *(v184 + 248) = v80;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
            v81 = sub_268F9AE64();
            v82 = v58;
            v83[3] = MEMORY[0x277D837D0];
            v83[4] = sub_268CDD224();
            *v83 = v81;
            v83[1] = v82;
            sub_268CD0F7C();
            sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | response 'other reason' error code contains unsupported error detail: %@", 130, 2, &dword_268CBE000, v85, v84);

            MEMORY[0x277D82BD8](v85);
            v59 = sub_268DB98D4();
            v88 = *v59;
            v86 = v59[1];
            v87 = *(v59 + 16);
            v60 = sub_268DC7BA8();
            v89 = *v60;
            MEMORY[0x277D82BE0](*v60);
            sub_268DB9B78(v88, v86, v87, v89);
            MEMORY[0x277D82BD8](v89);
            sub_268D28BD4();
            swift_allocError();
            *v61 = 4;
            swift_willThrow();

            goto LABEL_76;
          }

          v90 = *(v184 + 496);

          *(v184 + 904) = *(v90 + qword_280FE80A8);

          v55 = swift_task_alloc();
          *(v184 + 912) = v55;
          *v55 = *(v184 + 208);
          v55[1] = sub_268F158D0;

          return sub_268EBB148();
        }

        v93 = *(v184 + 504);
        v92 = *(v184 + 496);

        *(v184 + 872) = *(v92 + qword_280FE37C0);

        sub_268E948B8(16);
        sub_268F9A9A4();
        v52 = sub_268F9A9C4();
        (*(*(v52 - 8) + 56))(v93, 0, 1);
        v53 = swift_task_alloc();
        *(v184 + 880) = v53;
        *v53 = *(v184 + 208);
        v53[1] = sub_268F155B0;
        v50 = *(v184 + 504);
      }

      return sub_268DF2E84(v50);
    }

    v114 = *(v184 + 480);

    v115 = [v114 settingMetadata];
    if (v115)
    {
      v112 = [v115 targetDevice];
      *&v37 = MEMORY[0x277D82BD8](v115).n128_u64[0];
      v113 = v112;
    }

    else
    {
      v113 = 0;
    }

    *(v184 + 800) = v113;
    if (!v113)
    {
      v46 = sub_268DC866C();
      v99 = *v46;
      MEMORY[0x277D82BE0](*v46);
      v98 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | targetDeviceNotFoundReadBattery cat execution error missing target device.", 132, 2, &dword_268CBE000, v99, v98);

      MEMORY[0x277D82BD8](v99);
      sub_268D290F8();
      swift_allocError();
      swift_willThrow();

      goto LABEL_76;
    }

    v109 = *(v184 + 480);
    *(v184 + 328) = v113;
    v111 = [v113 deviceCategory];
    *(v184 + 336) = v111;
    v110 = sub_268E07FF4(v109);
    *(v184 + 936) = v110 & 1;
    *(v184 + 144) = sub_268F9AEF4();
    *(v184 + 152) = v38;
    if (v111 == 3)
    {
      BatteryDevice = ReadBatteryDeviceCategory.rawValue.getter();
      v108 = v39;

      *(v184 + 144) = BatteryDevice;
      *(v184 + 152) = v108;
    }

    else if (v111 == 9)
    {
      if (v110)
      {
        v105 = ReadBatteryDeviceCategory.rawValue.getter();
        v106 = v40;

        *(v184 + 144) = v105;
        *(v184 + 152) = v106;
      }

      else
      {
        v103 = ReadBatteryDeviceCategory.rawValue.getter();
        v104 = v41;

        *(v184 + 144) = v103;
        *(v184 + 152) = v104;
      }
    }

    else
    {
      v101 = ReadBatteryDeviceCategory.rawValue.getter();
      v102 = v42;

      *(v184 + 144) = v101;
      *(v184 + 152) = v102;
    }

    v100 = *(v184 + 520);
    *(v184 + 808) = *(*(v184 + 496) + qword_280FE37E0);

    sub_268F9A9A4();
    v43 = sub_268F9A9C4();
    (*(*(v43 - 8) + 56))(v100, 0, 1);
    v44 = swift_task_alloc();
    *(v184 + 816) = v44;
    *v44 = *(v184 + 208);
    v44[1] = sub_268F14F44;
    v45 = *(v184 + 520);

    return sub_268F4E80C(v45);
  }
}

uint64_t sub_268F13E9C(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[76] = a1;
  v5[77] = v1;

  if (v1)
  {
    v3 = sub_268F15BE0;
  }

  else
  {

    v3 = sub_268F14040;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F14040()
{
  v1 = v0[76];
  v0[26] = v0;
  v0[59] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[76];

  v4 = *(v0[26] + 8);

  return v4(v10);
}

uint64_t sub_268F141E0(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[81] = a1;
  v5[82] = v1;

  if (v1)
  {
    v3 = sub_268F15F14;
  }

  else
  {

    v3 = sub_268F14374;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F14374()
{
  v1 = v0[81];
  v0[26] = v0;
  v0[56] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[81];

  v4 = *(v0[26] + 8);

  return v4(v10);
}

uint64_t sub_268F14514(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[87] = a1;
  v5[88] = v1;

  if (v1)
  {
    v3 = sub_268F16238;
  }

  else
  {

    v3 = sub_268F146A8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F146A8()
{
  v1 = v0[87];
  v0[26] = v0;
  v2 = v0[51];
  v0[51] = v1;
  MEMORY[0x277D82BD8](v2);
  v3 = sub_268DB98D4();
  v9 = *v3;
  v7 = v3[1];
  v8 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v10 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  v11 = v0[51];
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BD8](v0[51]);

  v5 = *(v0[26] + 8);

  return v5(v11);
}

uint64_t sub_268F14884(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[92] = a1;
  v5[93] = v1;

  if (v1)
  {
    v3 = sub_268F16588;
  }

  else
  {

    v3 = sub_268F14A18;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F14A18()
{
  v1 = v0[92];
  v0[26] = v0;
  v2 = v0[51];
  v0[51] = v1;
  MEMORY[0x277D82BD8](v2);
  v3 = sub_268DB98D4();
  v9 = *v3;
  v7 = v3[1];
  v8 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v10 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  v11 = v0[51];
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BD8](v0[51]);

  v5 = *(v0[26] + 8);

  return v5(v11);
}

uint64_t sub_268F14C10(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[98] = a1;
  v5[99] = v1;

  if (v1)
  {
    v3 = sub_268F168E0;
  }

  else
  {

    v3 = sub_268F14DA4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F14DA4()
{
  v1 = v0[98];
  v0[26] = v0;
  v0[49] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[98];

  v4 = *(v0[26] + 8);

  return v4(v10);
}

uint64_t sub_268F14F44(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[103] = a1;
  v5[104] = v1;

  if (v1)
  {
    v3 = sub_268F16C04;
  }

  else
  {
    sub_268D28588(v5[65]);

    v3 = sub_268F150D8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F150D8()
{
  v1 = v0[103];
  v10 = v0[100];
  v0[26] = v0;
  v0[45] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);
  sub_268CD9D30((v0 + 18));
  MEMORY[0x277D82BD8](v10);

  v11 = v0[103];

  v4 = *(v0[26] + 8);

  return v4(v11);
}

uint64_t sub_268F15290(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[107] = a1;
  v5[108] = v1;

  if (v1)
  {
    v3 = sub_268F16F40;
  }

  else
  {
    sub_268D28588(v5[64]);

    v3 = sub_268F15424;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F15424()
{
  v1 = v0[107];
  v0[26] = v0;
  v0[40] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[107];

  v4 = *(v0[26] + 8);

  return v4(v10);
}

uint64_t sub_268F155B0(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[111] = a1;
  v5[112] = v1;

  if (v1)
  {
    v3 = sub_268F17250;
  }

  else
  {
    sub_268D28588(v5[63]);

    v3 = sub_268F15744;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F15744()
{
  v1 = v0[111];
  v0[26] = v0;
  v0[37] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[111];

  v4 = *(v0[26] + 8);

  return v4(v10);
}

uint64_t sub_268F158D0(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[115] = a1;
  v5[116] = v1;

  if (v1)
  {
    v3 = sub_268F17560;
  }

  else
  {

    v3 = sub_268F15A54;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F15A54()
{
  v1 = v0[115];
  v0[26] = v0;
  v0[34] = v1;
  v2 = sub_268DB98D4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[115];

  v4 = *(v0[26] + 8);

  return v4(v10);
}

uint64_t sub_268F15BE0()
{
  v19 = v0[77];
  v0[26] = v0;

  v1 = v19;
  v0[57] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[58] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | DeviceDoesNotSupportBinarySetting cat execution error %@", 114, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[26] + 8);

  return v8();
}

uint64_t sub_268F15F14()
{
  v19 = v0[82];
  v0[26] = v0;

  v1 = v19;
  v0[54] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[55] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | DeviceDoesNotSupportNumericSetting cat execution error %@", 115, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[26] + 8);

  return v8();
}

uint64_t sub_268F16238()
{
  v0[26] = v0;

  MEMORY[0x277D82BD8](v0[51]);
  v19 = v0[88];
  v1 = v19;
  v0[52] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[53] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | SiriCannotChangeSetting cat execution error %@", 104, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[26] + 8);

  return v8();
}

uint64_t sub_268F16588()
{
  v0[26] = v0;

  MEMORY[0x277D82BD8](v0[51]);
  v19 = v0[93];
  v1 = v19;
  v0[52] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[53] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | SiriCannotChangeSetting cat execution error %@", 104, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[26] + 8);

  return v8();
}

uint64_t sub_268F168E0()
{
  v19 = v0[99];
  v0[26] = v0;

  v1 = v19;
  v0[47] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[48] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | FocusNotConfigured cat execution error %@", 99, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[26] + 8);

  return v8();
}

uint64_t sub_268F16C04()
{
  v20 = v0[104];
  v21 = v0[100];
  v1 = v0[65];
  v0[26] = v0;
  sub_268D28588(v1);

  v2 = v20;
  v0[43] = v20;
  v3 = sub_268DC866C();
  v15 = *v3;
  MEMORY[0x277D82BE0](*v3);
  v14 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v13 = v4;
  v5 = v20;
  v0[44] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v11 = sub_268F9AE64();
  v12 = v6;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | DeviceDoesNotSupportNumericSetting cat execution error %@", 115, 2, &dword_268CBE000, v15, v14);

  MEMORY[0x277D82BD8](v15);
  v7 = sub_268DB98D4();
  v18 = *v7;
  v16 = v7[1];
  v17 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v19 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 18));
  MEMORY[0x277D82BD8](v21);

  v9 = *(v0[26] + 8);

  return v9();
}

uint64_t sub_268F16F40()
{
  v20 = v0[108];
  v1 = v0[64];
  v0[26] = v0;
  sub_268D28588(v1);

  v2 = v20;
  v0[38] = v20;
  v3 = sub_268DC866C();
  v15 = *v3;
  MEMORY[0x277D82BE0](*v3);
  v14 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v13 = v4;
  v5 = v20;
  v0[39] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v11 = sub_268F9AE64();
  v12 = v6;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | DescribeHotspotDiscoverability cat execution error %@", 111, 2, &dword_268CBE000, v15, v14);

  MEMORY[0x277D82BD8](v15);
  v7 = sub_268DB98D4();
  v18 = *v7;
  v16 = v7[1];
  v17 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v19 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v9 = *(v0[26] + 8);

  return v9();
}

uint64_t sub_268F17250()
{
  v20 = v0[112];
  v1 = v0[63];
  v0[26] = v0;
  sub_268D28588(v1);

  v2 = v20;
  v0[35] = v20;
  v3 = sub_268DC866C();
  v15 = *v3;
  MEMORY[0x277D82BE0](*v3);
  v14 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v13 = v4;
  v5 = v20;
  v0[36] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v11 = sub_268F9AE64();
  v12 = v6;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | DescribeHotspotDiscoverability cat execution error %@", 111, 2, &dword_268CBE000, v15, v14);

  MEMORY[0x277D82BD8](v15);
  v7 = sub_268DB98D4();
  v18 = *v7;
  v16 = v7[1];
  v17 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v19 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v9 = *(v0[26] + 8);

  return v9();
}

uint64_t sub_268F17560()
{
  v19 = v0[116];
  v0[26] = v0;

  v1 = v19;
  v0[32] = v19;
  v2 = sub_268DC866C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[33] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService handleOtherFailureReasonRF2 | DisplaySettingsDisabledForCurrentMode cat execution error %@", 118, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[26] + 8);

  return v8();
}

uint64_t sub_268F17860(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  rawValue._countAndFlagsBits = a1;
  rawValue._object = a2;
  v22 = 0u;
  v23 = 0u;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  v5 = *v4;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v21 = *(v5 + qword_280FE8090);
  v20 = *(v5 + qword_280FE8090 + 8);
  v19 = v4;

  BinarySettingIdentifier.init(rawValue:)(rawValue);
  if (v18 == 65 || (v17 = v18, v6 = sub_268E07A88(a3), v12 = v6, v6 == 2))
  {
    v8 = 0;
  }

  else
  {
    v16 = v6 & 1;
    v10 = *sub_268E7C7C8();

    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
    sub_268D28B4C();
    sub_268D288C8();
    v11 = sub_268F9AFC4();
    sub_268CD7930(&v15);
    if (v11)
    {
      v9 = v12 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    v8 = v9;
  }

  return v8 & 1;
}

uint64_t sub_268F17A54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  rawValue._countAndFlagsBits = a1;
  rawValue._object = a2;
  v41 = 0u;
  v42 = 0u;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v7 = *v6;
  *&v41 = a1;
  *(&v41 + 1) = a2;
  *&v42 = a3;
  *(&v42 + 1) = a4;
  v40 = *(v7 + qword_280FE8090);
  v39 = *(v7 + qword_280FE8090 + 8);
  v38 = a5 & 1;
  v37 = a6 & 1;
  v36 = v6;
  if (a6)
  {
    goto LABEL_34;
  }

  if (sub_268F17860(a1, a2, a3, a4))
  {

    v29 = 1;
    v25 = sub_268F47F9C(&v29);

    if (v25 == 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v25 & 1;
    }

    v23 = v24 != 2 && sub_268D2CBA4(v24 & 1, 1);

    BinarySettingIdentifier.init(rawValue:)(rawValue);
    if (v28 == 65 || (sub_268D28AD4(), v8 = sub_268F9B754(), (v8 & 1) == 0 ? (v22 = sub_268F9B754()) : (v22 = 1), (v22 & 1) == 0))
    {
      type metadata accessor for SettingsBinarySetting(0);
      v11 = BinarySettingIdentifier.rawValue.getter();
      return SettingsBinarySetting.__allocating_init(settingId:value:)(v11, v12, v23);
    }

    else
    {
      type metadata accessor for SettingsBinarySetting(0);
      v9 = BinarySettingIdentifier.rawValue.getter();
      return SettingsBinarySetting.__allocating_init(settingId:value:)(v9, v10, !v23);
    }
  }

  v35[1] = 1;
  v13 = BinarySettingIdentifier.rawValue.getter();
  v20 = MEMORY[0x26D62DB50](rawValue._countAndFlagsBits, rawValue._object, v13);

  if ((v20 & 1) == 0)
  {
LABEL_34:
    type metadata accessor for SettingsBinarySetting(0);

    return SettingsBinarySetting.__allocating_init(settingId:value:)(rawValue._countAndFlagsBits, rawValue._object, a5 & 1);
  }

  v35[0] = 1;
  v19 = sub_268F47F9C(v35);

  if (v19 == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = v19 & 1;
  }

  v33 = v18;
  v34 = 1;
  if (v18 == 2)
  {
    if (v34 == 2)
    {
      v17 = 1;
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v30 = v18;
  if (v34 == 2)
  {
LABEL_30:
    v17 = 0;
    goto LABEL_27;
  }

  v17 = sub_268D2CBA4(v30 & 1, v34 & 1);
LABEL_27:
  type metadata accessor for SettingsBinarySetting(0);
  if (v17)
  {
    v31 = 3;
  }

  else
  {
    v32 = 2;
  }

  v14 = BinarySettingIdentifier.rawValue.getter();
  return SettingsBinarySetting.__allocating_init(settingId:value:)(v14, v15, 1u);
}

uint64_t sub_268F17FBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for SettingsNumericSetting(0);

  MEMORY[0x277D82BE0](a4);
  return SettingsNumericSetting.__allocating_init(settingId:value:)(a1, a2, a4);
}

uint64_t sub_268F18090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 144) = v5;
  *(v6 + 249) = a5 & 1;
  *(v6 + 136) = a4;
  *(v6 + 128) = a3;
  *(v6 + 120) = a2;
  *(v6 + 112) = a1;
  *(v6 + 80) = v6;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 248) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0;
  v7 = *v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 152) = *(v7 + qword_280FE8090);
  *(v6 + 160) = *(v7 + qword_280FE8090 + 8);
  *(v6 + 248) = a5 & 1;
  *(v6 + 88) = v5;
  return MEMORY[0x2822009F8](sub_268F1817C, 0);
}

uint64_t sub_268F1817C()
{
  v18 = v0[15];
  v17 = v0[14];
  v0[10] = v0;

  v1 = BinarySettingIdentifier.rawValue.getter();
  v19 = MEMORY[0x26D62DB50](v17, v18, v1);

  if (v19)
  {
    v14 = *(v16 + 249);
    v13 = *(v16 + 120);
    v12 = *(v16 + 112);
    *(v16 + 168) = *(*(v16 + 144) + qword_280FE80A8);

    type metadata accessor for SettingsMultiSetting(0);

    v15 = sub_268E067CC(v12, v13, v14 & 1);
    *(v16 + 176) = v15;
    v2 = swift_task_alloc();
    *(v16 + 184) = v2;
    *v2 = *(v16 + 80);
    v2[1] = sub_268F1842C;

    return sub_268EBCE34(v15);
  }

  else
  {
    v9 = *(v16 + 249);
    v8 = *(v16 + 136);
    v7 = *(v16 + 128);
    v6 = *(v16 + 120);
    v10 = *(v16 + 112);
    *(v16 + 208) = *(*(v16 + 144) + qword_280FE80A8);

    v4 = sub_268CDFACC();
    v11 = sub_268F17A54(v10, v6, v7, v8, v9 & 1, v4 & 1);
    *(v16 + 216) = v11;
    v5 = swift_task_alloc();
    *(v16 + 224) = v5;
    *v5 = *(v16 + 80);
    v5[1] = sub_268F188D8;

    return sub_268EB7990(v11);
  }
}

uint64_t sub_268F1842C(uint64_t a1)
{
  v5 = *v2;
  v5[10] = *v2;
  v5[24] = a1;
  v5[25] = v1;

  if (v1)
  {
    v3 = sub_268F18D84;
  }

  else
  {

    v3 = sub_268F185C0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F185C0()
{
  v21 = *(v0 + 192);
  *(v0 + 80) = v0;
  if (v21)
  {
    v20[13] = v21;
    v18 = sub_268E0739C(v21);
    v19 = v1;
    v2 = MEMORY[0x277D82BD8](v21);
    v3 = *(v20[10] + 8);

    return v3(v18, v19, v2);
  }

  else
  {
    v11 = v20[15];
    v10 = v20[14];
    v5 = sub_268DC7B48();
    v17 = *v5;
    MEMORY[0x277D82BE0](*v5);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v6;

    v20[8] = v10;
    v20[9] = v11;
    v12 = MEMORY[0x277D837D0];
    v13 = sub_268F9AE84();
    v14 = v7;
    v15[3] = v12;
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService getSettingName | multiSettingName CAT failed", 72, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    sub_268D28BD4();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = *(v20[10] + 8);

    return v9();
  }
}

uint64_t sub_268F188D8(uint64_t a1)
{
  v5 = *v2;
  v5[10] = *v2;
  v5[29] = a1;
  v5[30] = v1;

  if (v1)
  {
    v3 = sub_268F190BC;
  }

  else
  {

    v3 = sub_268F18A6C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F18A6C()
{
  v21 = *(v0 + 232);
  *(v0 + 80) = v0;
  if (v21)
  {
    v20[12] = v21;
    v18 = sub_268E0739C(v21);
    v19 = v1;
    v2 = MEMORY[0x277D82BD8](v21);
    v3 = *(v20[10] + 8);

    return v3(v18, v19, v2);
  }

  else
  {
    v11 = v20[15];
    v10 = v20[14];
    v5 = sub_268DC7B48();
    v17 = *v5;
    MEMORY[0x277D82BE0](*v5);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v6;

    v20[6] = v10;
    v20[7] = v11;
    v12 = MEMORY[0x277D837D0];
    v13 = sub_268F9AE84();
    v14 = v7;
    v15[3] = v12;
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService getSettingName | binarySettingName CAT failed", 73, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    sub_268D28BD4();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = *(v20[10] + 8);

    return v9();
  }
}

uint64_t sub_268F18D84()
{
  v16 = *(v0 + 200);
  *(v0 + 80) = v0;

  v8 = v15[15];
  v7 = v15[14];
  v1 = sub_268DC7B48();
  v14 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v2;

  v15[8] = v7;
  v15[9] = v8;
  v9 = MEMORY[0x277D837D0];
  v10 = sub_268F9AE84();
  v11 = v3;
  v12[3] = v9;
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService getSettingName | multiSettingName CAT failed", 72, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  sub_268D28BD4();
  swift_allocError();
  *v4 = 0;
  swift_willThrow();
  v5 = *(v15[10] + 8);

  return v5();
}

uint64_t sub_268F190BC()
{
  v16 = *(v0 + 240);
  *(v0 + 80) = v0;

  v8 = v15[15];
  v7 = v15[14];
  v1 = sub_268DC7B48();
  v14 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v2;

  v15[6] = v7;
  v15[7] = v8;
  v9 = MEMORY[0x277D837D0];
  v10 = sub_268F9AE84();
  v11 = v3;
  v12[3] = v9;
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService getSettingName | binarySettingName CAT failed", 73, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  sub_268D28BD4();
  swift_allocError();
  *v4 = 0;
  swift_willThrow();
  v5 = *(v15[10] + 8);

  return v5();
}

uint64_t sub_268F193F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 120) = v5;
  *(v6 + 169) = a5 & 1;
  *(v6 + 112) = a4;
  *(v6 + 104) = a3;
  *(v6 + 96) = a2;
  *(v6 + 88) = a1;
  *(v6 + 64) = v6;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 168) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 168) = a5 & 1;
  *(v6 + 72) = v5;
  return MEMORY[0x2822009F8](sub_268F1948C, 0);
}

uint64_t sub_268F1948C()
{
  v1 = *(v0 + 120);
  v8 = *(v0 + 169);
  v7 = *(v0 + 112);
  v6 = *(v0 + 104);
  v5 = *(v0 + 96);
  v4 = *(v0 + 88);
  *(v0 + 64) = v0;
  *(v0 + 128) = *(v1 + qword_280FE80A8);

  v10 = sub_268F17A54(v4, v5, v6, v7, v8 & 1, 1);
  *(v0 + 136) = v10;
  v2 = swift_task_alloc();
  *(v9 + 144) = v2;
  *v2 = *(v9 + 64);
  v2[1] = sub_268F195B8;

  return sub_268EB818C(v10);
}

uint64_t sub_268F195B8(uint64_t a1)
{
  v5 = *v2;
  v5[8] = *v2;
  v5[19] = a1;
  v5[20] = v1;

  if (v1)
  {
    v3 = sub_268F19A4C;
  }

  else
  {

    v3 = sub_268F1974C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F1974C()
{
  v21 = *(v0 + 152);
  *(v0 + 64) = v0;
  if (v21)
  {
    v20[10] = v21;
    v18 = sub_268E0739C(v21);
    v19 = v1;
    v2 = MEMORY[0x277D82BD8](v21);
    v3 = *(v20[8] + 8);

    return v3(v18, v19, v2);
  }

  else
  {
    v11 = v20[12];
    v10 = v20[11];
    v5 = sub_268DC7B48();
    v17 = *v5;
    MEMORY[0x277D82BE0](*v5);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v6;

    v20[6] = v10;
    v20[7] = v11;
    v12 = MEMORY[0x277D837D0];
    v13 = sub_268F9AE84();
    v14 = v7;
    v15[3] = v12;
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04("GetBinarySettingTemplatingService getSettingName | binarySettingPageName CAT failed", 83, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    sub_268D284D4();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = *(v20[8] + 8);

    return v9();
  }
}

uint64_t sub_268F19A4C()
{
  v16 = *(v0 + 160);
  *(v0 + 64) = v0;

  v8 = v15[12];
  v7 = v15[11];
  v1 = sub_268DC7B48();
  v14 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v2;

  v15[6] = v7;
  v15[7] = v8;
  v9 = MEMORY[0x277D837D0];
  v10 = sub_268F9AE84();
  v11 = v3;
  v12[3] = v9;
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetBinarySettingTemplatingService getSettingName | binarySettingPageName CAT failed", 83, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  sub_268D284D4();
  swift_allocError();
  *v4 = 1;
  swift_willThrow();
  v5 = *(v15[8] + 8);

  return v5();
}

uint64_t sub_268F19D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = v4;
  v5[13] = a4;
  v5[12] = a2;
  v5[11] = a1;
  v5[7] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[8] = 0;
  v5[9] = 0;
  v5[10] = 0;
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[8] = a4;
  v5[9] = v4;
  return MEMORY[0x2822009F8](sub_268F19DE8, 0);
}

uint64_t sub_268F19DE8()
{
  v1 = v0[14];
  v5 = v0[13];
  v4 = v0[12];
  v6 = v0[11];
  v0[7] = v0;
  v0[15] = *(v1 + qword_280FE80A8);

  type metadata accessor for SettingsNumericSetting(0);

  MEMORY[0x277D82BE0](v5);
  v8 = SettingsNumericSetting.__allocating_init(settingId:value:)(v6, v4, v5);
  v0[16] = v8;
  v2 = swift_task_alloc();
  *(v7 + 136) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268F19F14;

  return sub_268EBEBC0(v8);
}

uint64_t sub_268F19F14(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[18] = a1;
  v5[19] = v1;

  if (v1)
  {
    v3 = sub_268F1A3A8;
  }

  else
  {

    v3 = sub_268F1A0A8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F1A0A8()
{
  v21 = *(v0 + 144);
  *(v0 + 56) = v0;
  if (v21)
  {
    v20[10] = v21;
    v18 = sub_268E0739C(v21);
    v19 = v1;
    v2 = MEMORY[0x277D82BD8](v21);
    v3 = *(v20[7] + 8);

    return v3(v18, v19, v2);
  }

  else
  {
    v11 = v20[12];
    v10 = v20[11];
    v5 = sub_268DC7B48();
    v17 = *v5;
    MEMORY[0x277D82BE0](*v5);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v6;

    v20[5] = v10;
    v20[6] = v11;
    v12 = MEMORY[0x277D837D0];
    v13 = sub_268F9AE84();
    v14 = v7;
    v15[3] = v12;
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingTemplatingService getSettingName | numericSettingName CAT failed", 74, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    sub_268D28BD4();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = *(v20[7] + 8);

    return v9();
  }
}

uint64_t sub_268F1A3A8()
{
  v16 = *(v0 + 152);
  *(v0 + 56) = v0;

  v8 = v15[12];
  v7 = v15[11];
  v1 = sub_268DC7B48();
  v14 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v2;

  v15[5] = v7;
  v15[6] = v8;
  v9 = MEMORY[0x277D837D0];
  v10 = sub_268F9AE84();
  v11 = v3;
  v12[3] = v9;
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("GetSettingTemplatingService getSettingName | numericSettingName CAT failed", 74, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  sub_268D28BD4();
  swift_allocError();
  *v4 = 0;
  swift_willThrow();
  v5 = *(v15[7] + 8);

  return v5();
}

uint64_t sub_268F1A720(void *a1, void *a2)
{
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v64 = 0;
  v62 = 0;
  v60 = 0;
  v58 = 0;
  v3 = *v2;
  v69 = a1;
  v68 = a2;
  v67 = v2;
  v66 = *(v3 + qword_280FE8090);
  v65 = *(v3 + qword_280FE8090 + 8);
  v49 = [a1 settingMetadata];
  if (v49)
  {
    v44 = [v49 settingId];
    v45._countAndFlagsBits = sub_268F9AE24();
    v45._object = v4;
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v44);
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  if (!v46._object)
  {
    v15 = sub_268DC866C();
    v23 = *v15;
    MEMORY[0x277D82BE0](*v15);
    v22 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v21 = v16;
    MEMORY[0x277D82BE0](a1);
    v63 = a1;
    sub_268D2E630();
    sub_268D59CAC();
    v19 = sub_268F9AE74();
    v20 = v17;
    v21[3] = MEMORY[0x277D837D0];
    v21[4] = sub_268CDD224();
    *v21 = v19;
    v21[1] = v20;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingIntent doesn't have setting metadata %@", 49, 2, &dword_268CBE000, v23, v22);

    MEMORY[0x277D82BD8](v23);
    return 0;
  }

  v64 = v46;
  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v5 = [a2 settingResponseDatas];
    v43 = v5;
    if (v5)
    {
      sub_268CDD140();
      v41 = sub_268F9B014();
      MEMORY[0x277D82BD8](v43);
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    v51 = v42;
    if (v42)
    {
      sub_268CDD140();
      sub_268F9B094();
      sub_268CD7930(&v51);
      v38 = [v50 binaryValue];
      (MEMORY[0x277D82BD8])();
      v39 = v38;
      v40 = 0;
      goto LABEL_13;
    }

    sub_268CD7930(&v51);
    MEMORY[0x277D82BD8](a2);
  }

  v39 = 0;
  v40 = 1;
LABEL_13:
  if (v40)
  {
    v14 = sub_268DC866C();
    v25 = *v14;
    MEMORY[0x277D82BE0](*v14);
    v24 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("GetSettingIntent.settingResponseData.binaryValue does not exist", 63, 2, &dword_268CBE000, v25, v24);

    MEMORY[0x277D82BD8](v25);
    sub_268CD9D30(&v64);
    return 0;
  }

  v62 = v39;

  v37 = sub_268F9AF14();

  if (v37)
  {
    v6 = sub_268DC866C();
    v35 = *v6;
    MEMORY[0x277D82BE0](*v6);
    v34 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("GetSettingIntent setting metadata doesn't have setting ID", 57, 2, &dword_268CBE000, v35, v34);

    MEMORY[0x277D82BD8](v35);
    sub_268CD9D30(&v64);
    return 0;
  }

  v7 = v64;

  v61 = 1;
  v8 = BinarySettingIdentifier.rawValue.getter();
  v33 = MEMORY[0x26D62DB50](v7._countAndFlagsBits, v7._object, v8);

  if (v33)
  {

    rawValue = v64;

    BinarySettingIdentifier.init(rawValue:)(rawValue);
    v57[0] = v57[1];
    v32 = sub_268F47F9C(v57);

    if (v32 == 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v32 & 1;
    }

    v55 = v30;
    v56 = 0;
    if (v30 == 2)
    {
      if (v56 == 2)
      {
        v29 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v52 = v30;
      if (v56 != 2)
      {
        v29 = sub_268D2CBA4(v52 & 1, v56 & 1);
LABEL_25:
        if (v29)
        {
          v53 = 2;
        }

        else
        {
          v54 = 3;
        }

        v64._countAndFlagsBits = BinarySettingIdentifier.rawValue.getter();
        v64._object = v9;

        goto LABEL_32;
      }
    }

    v29 = 0;
    goto LABEL_25;
  }

LABEL_32:
  sub_268F9B734();
  *v10 = 28;
  v10[1] = 38;
  v10[2] = 11;
  sub_268CD0F7C();
  sub_268E12E98();
  v60 = sub_268F9B194();
  v28 = v64;

  BinarySettingIdentifier.init(rawValue:)(v28);
  if (v59 == 65 || (v58 = v59, v57[2] = v59, v11 = sub_268F9B1C4(), (v11 & 1) == 0))
  {

    [a1 confirmationValue];
    sub_268F1A6D8();
    v26 = v13;

    sub_268CD9D30(&v64);
    return v26;
  }

  else
  {

    sub_268F1A6D8();
    v27 = v12;

    sub_268CD9D30(&v64);
    return v27;
  }
}

uint64_t sub_268F1B14C(void *a1, void *a2)
{
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v3 = *v2;
  v46 = a1;
  v45 = a2;
  v44 = v2;
  v43 = *(v3 + qword_280FE8090);
  v42 = *(v3 + qword_280FE8090 + 8);
  v35 = [a1 settingMetadata];
  if (v35)
  {
    v28 = [v35 settingId];
    v29 = sub_268F9AE24();
    v30 = v4;
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v28);
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  if (!v32)
  {
    v9 = sub_268DC866C();
    v17 = *v9;
    MEMORY[0x277D82BE0](*v9);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v10;
    MEMORY[0x277D82BE0](a1);
    v41 = a1;
    sub_268D2E630();
    sub_268D59CAC();
    v13 = sub_268F9AE74();
    v14 = v11;
    v15[3] = MEMORY[0x277D837D0];
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04("GetSettingIntent doesn't have setting metadata %@", 49, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    return 0;
  }

  v39 = v31;
  v40 = v32;
  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v5 = [a2 settingResponseDatas];
    v27 = v5;
    if (v5)
    {
      sub_268CDD140();
      v25 = sub_268F9B014();
      MEMORY[0x277D82BD8](v27);
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v37 = v26;
    if (v26)
    {
      sub_268CDD140();
      sub_268F9B094();
      sub_268CD7930(&v37);
      v23 = [v36 numericValue];
      (MEMORY[0x277D82BD8])();
      v24 = v23;
      goto LABEL_13;
    }

    sub_268CD7930(&v37);
    MEMORY[0x277D82BD8](a2);
  }

  v24 = 0;
LABEL_13:
  if (v24)
  {
    v38 = v24;
    if (sub_268F9AF14())
    {
      v6 = sub_268DC866C();
      v21 = *v6;
      MEMORY[0x277D82BE0](*v6);
      v20 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04("GetSettingIntent setting metadata doesn't have setting ID", 57, 2, &dword_268CBE000, v21, v20);

      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v24);

      return 0;
    }

    else
    {
      sub_268EE21D4();
      return v7;
    }
  }

  else
  {
    v8 = sub_268DC866C();
    v19 = *v8;
    MEMORY[0x277D82BE0](*v8);
    v18 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("GetSettingIntent.settingResponseData.numericValue does not exist", 64, 2, &dword_268CBE000, v19, v18);

    MEMORY[0x277D82BD8](v19);

    return 0;
  }
}

uint64_t sub_268F1BA70()
{
  sub_268CD7930((v0 + qword_280FE37A0));
  v3 = qword_280FE3800;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(v0 + v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_280FE37D0));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_280FE80A0));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_280FE37B0));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_280FE3810));
  MEMORY[0x277D82BD8](*(v0 + qword_280FE37D8));
  return __swift_destroy_boxed_opaque_existential_0((v0 + qword_280FE3820));
}

uint64_t sub_268F1BC80()
{
  v3 = sub_268F99AB4();
  sub_268CD7930((v3 + qword_280FE37A0));
  v2 = qword_280FE3800;
  v0 = sub_268F9AB24();
  (*(*(v0 - 8) + 8))(v3 + v2);

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_280FE37D0));

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_280FE80A0));

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_280FE37B0));

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_280FE3810));
  MEMORY[0x277D82BD8](*(v3 + qword_280FE37D8));
  __swift_destroy_boxed_opaque_existential_0((v3 + qword_280FE3820));
  return v3;
}

unint64_t sub_268F1C0D0()
{
  v2 = qword_2802DE188;
  if (!qword_2802DE188)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F1C148()
{
  v2 = qword_2802DE190;
  if (!qword_2802DE190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F1C1C0()
{
  v2 = qword_2802DE198[0];
  if (!qword_2802DE198[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2802DE198);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F1C23C(uint64_t a1)
{
  inited = sub_268F9AB24();
  if (v1 <= 0x3F)
  {
    inited = swift_initClassMetadata2();
    if (!inited)
    {
      return 0;
    }
  }

  return inited;
}

uint64_t sub_268F1C404(uint64_t a1, uint64_t a2)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268F1C468(uint64_t a1, unsigned int a2)
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
      if (*(a1 + 8) < 0x100000000uLL)
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

uint64_t sub_268F1C5A8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_268F1C7A4(uint64_t a1, uint64_t a2)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_268F1C84C()
{
  v2 = qword_2802DE2A0;
  if (!qword_2802DE2A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE2A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F1C8C8()
{
  type metadata accessor for SetFocusModeHandler();
  v2 = sub_268CDC590();
  v0 = sub_268F1C948();
  result = sub_268DCA218(v2, 1, v0);
  qword_2802F1658 = result;
  return result;
}

uint64_t sub_268F1C948()
{
  v1 = *sub_268F88868();

  return v1;
}

uint64_t *sub_268F1C978()
{
  if (qword_2802DB7C8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1658;
}

uint64_t sub_268F1C9D8()
{
  v1 = *sub_268F1C978();

  return v1;
}

double sub_268F1CA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v6 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "SetFocusModeHandler handling intent", 35, 2);

  MEMORY[0x277D82BD8](v6);
  return sub_268F1CAF8(a1, a2, a3);
}

double sub_268F1CAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v21 = a2;
  v22 = a3;
  v20 = v3;
  v4 = sub_268DBBE24();
  v7 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 16);
  v5 = sub_268DC7AE8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  v14 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v16 = a1;
  v17 = v3;
  v18 = a2;
  v19 = a3;
  sub_268DB944C(v7, v11, v12, v13, v14 & 1, sub_268F1CDD4, v15, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

double sub_268F1CC80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268D2E630();
  v10 = sub_268E1B5D8([a1 settingMetadata], 0);

  MEMORY[0x277D82BE0](a1);

  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  sub_268D48CFC(v10, sub_268F1F544, v9);

  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

uint64_t sub_268F1CE08(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4, void *a5, uint64_t a6)
{
  v71 = 0;
  v72 = 0;
  v74[6] = a1;
  v74[7] = a2;
  v74[4] = a3;
  v74[5] = a4;
  v74[3] = a5;
  v74[2] = a6;
  if (a2 == -1)
  {
    v6 = sub_268DC7AE8();
    v47 = *v6;
    MEMORY[0x277D82BE0](*v6);
    v46 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Error while getting state of focus.", 35, 2, &dword_268CBE000, v47, v46);

    MEMORY[0x277D82BD8](v47);

    v48 = sub_268DA9A7C(7, 0);
    (a3)();
    MEMORY[0x277D82BD8](v48);
  }

  else if (a2 == 100)
  {
    v8 = sub_268DC7AE8();
    v44 = *v8;
    MEMORY[0x277D82BE0](*v8);
    v43 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Attempting to get state of unconfigured focus. Returning error.", 63, 2, &dword_268CBE000, v44, v43);

    v45 = [a5 settingMetadata];
    if (v45)
    {
      v38 = [v45 settingId];
      v39 = sub_268F9AE24();
      v40 = v9;
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v38);
      v41 = v39;
      v42 = v40;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    v53[0] = v41;
    v53[1] = v42;
    sub_268CD9D30(v53);
    if (v42)
    {

      v37 = sub_268F23C10();

      if (v37)
      {
        sub_268F42038();

        v36 = sub_268F9AE14();

        [v37 setBool:1 forKey:v36];
        MEMORY[0x277D82BD8](v36);
        MEMORY[0x277D82BD8](v37);
      }
    }

    v34 = sub_268E948B8(7);
    v35 = sub_268DAB158(0, v34, v10);

    a3(v35);
    MEMORY[0x277D82BD8](v35);
  }

  else
  {
    v33 = [a5 settingMetadata];
    if (v33)
    {
      v28 = [v33 settingId];
      v29 = sub_268F9AE24();
      v30 = v11;
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v28);
      v31 = v29;
      v32 = v30;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v74[0] = v31;
    v74[1] = v32;
    sub_268CD9D30(v74);
    if (v32)
    {

      v27 = sub_268F23C10();

      if (v27)
      {
        sub_268F42038();

        v26 = sub_268F9AE14();

        [v27 setBool:0 forKey:v26];
        MEMORY[0x277D82BD8](v26);
        MEMORY[0x277D82BD8](v27);
      }
    }

    MEMORY[0x277D82BE0](a1);
    v25 = [a1 settingResponseDatas];
    if (v25)
    {
      sub_268CDD140();
      v23 = sub_268F9B014();
      MEMORY[0x277D82BD8](v25);
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v73 = v24;
    if (v24)
    {
      sub_268CDD140();
      sub_268F9B094();
      sub_268CD7930(&v73);
      v20 = [v54 binaryValue];
      v12 = MEMORY[0x277D82BD8](v54).n128_u64[0];
      v21 = v20;
      v22 = 0;
    }

    else
    {
      sub_268CD7930(&v73);
      v12 = MEMORY[0x277D82BD8](a1).n128_u64[0];
      v21 = 0;
      v22 = 1;
    }

    v71 = v21;
    v72 = v22 & 1;
    v68 = 0;
    v69 = v21;
    v70 = v22 & 1;
    v57 = [a5 binaryValue];
    v58 = 0;
    if (v22)
    {
      v19 = 0;
    }

    else
    {
      v56 = v57;
      v55 = v69;
      type metadata accessor for INBinarySettingValue(0);
      sub_268D292B8();
      v19 = sub_268F9AE04();
    }

    if (v19)
    {

      v18 = sub_268D4FC9C(0, [a5 0x1FAF5B654], objc_msgSend(a5, 0x1FAF5B654));

      a3(v18);
      MEMORY[0x277D82BD8](v18);
    }

    else
    {
      v67 = [a5 binaryValue];
      v66 = 3;
      type metadata accessor for INBinarySettingValue(0);
      sub_268CD925C();
      v13 = sub_268F9B754();
      if (v13)
      {

        sub_268CD7620();
        v17 = [a5 settingMetadata];
        v62 = v21;
        v63 = v22 & 1;
        v64 = 1;
        v65 = 0;
        if (v22)
        {
          v16 = 0;
        }

        else
        {
          v61 = v22;
          v60 = v21;
          v59 = v64;
          sub_268D292B8();
          v16 = sub_268F9AE04();
        }

        if (v16)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        v14 = sub_268DA95CC(v17, v15, 0);
        sub_268D4E4F0(v14, a3, a4);
        MEMORY[0x277D82BD8](v14);
      }

      else
      {

        sub_268D4E4F0(a5, a3, a4);
      }
    }
  }
}

uint64_t sub_268F1D918(uint64_t a1)
{
  *(v2 + 216) = v1;
  *(v2 + 208) = a1;
  *(v2 + 80) = v2;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 120) = 0;
  *(v2 + 160) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_268F1D994, 0);
}

uint64_t sub_268F1D994()
{
  v10 = v0[27];
  v9 = v0[26];
  v0[10] = v0;
  v1 = sub_268DBBE24();
  v7 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  v2 = sub_268DC7AE8();
  v8 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268DB9934(v7, v5, v6, v8, *(v10 + 24) & 1);
  MEMORY[0x277D82BD8](v8);
  sub_268D2E630();
  v12 = sub_268E1B5D8([v9 settingMetadata], 0);
  v0[28] = v12;
  v0[13] = v12;
  v0[29] = *(v10 + 16);

  v3 = swift_task_alloc();
  *(v11 + 240) = v3;
  *v3 = *(v11 + 80);
  v3[1] = sub_268F1DB0C;

  return sub_268D4AA24(v12);
}

uint64_t sub_268F1DB0C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v4[10] = *v2;
  v4[31] = a1;
  v4[32] = a2;

  return MEMORY[0x2822009F8](sub_268F1DC4C, 0);
}

uint64_t sub_268F1DC4C()
{
  v1 = v0[32];
  v2 = v0[31];
  v0[10] = v0;
  v0[2] = v2;
  v0[3] = v1;
  if (v1 == -1)
  {
    v66 = *(v70 + 248);
    v67 = *(v70 + 224);
    v3 = sub_268DC7AE8();
    v65 = *v3;
    MEMORY[0x277D82BE0](*v3);
    v64 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Error while getting state of focus.", 35, 2, &dword_268CBE000, v65, v64);

    MEMORY[0x277D82BD8](v65);
    v68 = sub_268DA9A7C(7, 0);
    *(v70 + 200) = v68;
    MEMORY[0x277D82BD8](v66);
    v4 = MEMORY[0x277D82BD8](v67);
    v69 = v68;
LABEL_35:
    v18 = *(*(v70 + 80) + 8);

    return v18(v69, v4);
  }

  if (*(v70 + 256) == 100)
  {
    v62 = *(v70 + 208);
    v5 = sub_268DC7AE8();
    v61 = *v5;
    MEMORY[0x277D82BE0](*v5);
    v60 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Attempting to get state of unconfigured focus. Returning error.", 63, 2, &dword_268CBE000, v61, v60);

    v63 = [v62 settingMetadata];
    if (v63)
    {
      v55 = [v63 settingId];
      v56 = sub_268F9AE24();
      v57 = v6;
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v55);
      v58 = v56;
      v59 = v57;
    }

    else
    {
      v58 = 0;
      v59 = 0;
    }

    *(v70 + 48) = v58;
    *(v70 + 56) = v59;
    if (*(v70 + 56))
    {
      sub_268CD9D30(v70 + 48);

      v54 = sub_268F23C10();

      if (v54)
      {
        sub_268F42038();

        v53 = sub_268F9AE14();

        [v54 setBool:1 forKey:v53];
        MEMORY[0x277D82BD8](v53);
        MEMORY[0x277D82BD8](v54);
      }
    }

    else
    {
      sub_268CD9D30(v70 + 48);
    }

    v50 = *(v70 + 248);
    v51 = *(v70 + 224);
    v45 = sub_268E948B8(7);
    v52 = sub_268DAB158(0, v45, v7);

    *(v70 + 192) = v52;
    v8 = sub_268DBBE24();
    v48 = *v8;
    v46 = v8[1];
    v47 = *(v8 + 16);
    v9 = sub_268DC7AE8();
    v49 = *v9;
    MEMORY[0x277D82BE0](*v9);
    sub_268DB9B78(v48, v46, v47, v49);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    v4 = MEMORY[0x277D82BD8](v51);
    v69 = v52;
    goto LABEL_35;
  }

  v44 = [*(v70 + 208) settingMetadata];
  if (v44)
  {
    v39 = [v44 settingId];
    v40 = sub_268F9AE24();
    v41 = v10;
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v39);
    v42 = v40;
    v43 = v41;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  *(v70 + 32) = v42;
  *(v70 + 40) = v43;
  if (*(v70 + 40))
  {
    sub_268CD9D30(v70 + 32);

    v38 = sub_268F23C10();

    if (v38)
    {
      sub_268F42038();

      v37 = sub_268F9AE14();

      [v38 setBool:0 forKey:v37];
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v38);
    }
  }

  else
  {
    sub_268CD9D30(v70 + 32);
  }

  v35 = *(v70 + 248);
  MEMORY[0x277D82BE0](v35);
  v36 = [v35 settingResponseDatas];
  if (v36)
  {
    sub_268CDD140();
    v33 = sub_268F9B014();
    MEMORY[0x277D82BD8](v36);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  *(v70 + 112) = v34;
  if (*(v70 + 112))
  {
    v28 = *(v70 + 248);
    sub_268CDD140();
    sub_268F9B094();
    v29 = *(v70 + 184);
    sub_268CD7930((v70 + 112));
    v30 = [v29 binaryValue];
    v11 = MEMORY[0x277D82BD8](v29).n128_u64[0];
    v31 = v30;
    v32 = 0;
  }

  else
  {
    v19 = *(v70 + 248);
    sub_268CD7930((v70 + 112));
    v11 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    v31 = 0;
    v32 = 1;
  }

  *(v70 + 73) = v32 & 1;
  *(v70 + 264) = v31;
  v12 = *(v70 + 208);
  *(v70 + 64) = v31;
  *(v70 + 72) = v32 & 1;
  v71 = [v12 binaryValue];
  if ((v32 & 1) == 0)
  {
    *(v70 + 168) = v71;
    *(v70 + 176) = v31;
    type metadata accessor for INBinarySettingValue(0);
    sub_268D292B8();
    if (sub_268F9AE04())
    {
      v25 = *(v70 + 248);
      v26 = *(v70 + 224);
      v20 = *(v70 + 208);

      v27 = sub_268D4FC9C(0, [v20 0x1FAF5B654], objc_msgSend(v20, 0x1FAF5B654));

      *(v70 + 160) = v27;
      v13 = sub_268DBBE24();
      v23 = *v13;
      v21 = v13[1];
      v22 = *(v13 + 16);
      v14 = sub_268DC7AE8();
      v24 = *v14;
      MEMORY[0x277D82BE0](*v14);
      sub_268DB9B78(v23, v21, v22, v24);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      v4 = MEMORY[0x277D82BD8](v26);
      v69 = v27;
      goto LABEL_35;
    }
  }

  *(v70 + 272) = *(*(v70 + 216) + 16);

  v15 = swift_task_alloc();
  *(v70 + 280) = v15;
  *v15 = *(v70 + 80);
  v15[1] = sub_268F1EAFC;
  v16 = *(v70 + 208);

  return sub_268D4ED60(v16);
}

uint64_t sub_268F1EAFC(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 80) = *v1;
  *(v3 + 288) = a1;

  return MEMORY[0x2822009F8](sub_268F1EC38, 0);
}

uint64_t sub_268F1EC38()
{
  v1 = v0[36];
  v2 = v0[26];
  v0[10] = v0;
  v0[15] = v1;
  v0[16] = [v2 binaryValue];
  v0[17] = 3;
  type metadata accessor for INBinarySettingValue(0);
  sub_268CD925C();
  if (sub_268F9B754())
  {
    v20 = *(v22 + 73);
    v19 = *(v22 + 208);
    *(v22 + 296) = *(*(v22 + 216) + 16);

    sub_268CD7620();
    v21 = [v19 settingMetadata];
    if ((v20 & 1) != 0 || (*(v22 + 144) = *(v22 + 264), *(v22 + 152) = 1, sub_268D292B8(), v3 = sub_268F9AE04(), (v3 & 1) == 0))
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v17 = sub_268DA95CC(v21, v18, 0);
    *(v22 + 304) = v17;
    v4 = swift_task_alloc();
    *(v22 + 312) = v4;
    *v4 = *(v22 + 80);
    v4[1] = sub_268F1F154;

    return sub_268D4ED60(v17);
  }

  else
  {
    v14 = *(v22 + 248);
    v15 = *(v22 + 224);
    v6 = sub_268DBBE24();
    v12 = *v6;
    v10 = v6[1];
    v11 = *(v6 + 16);
    v7 = sub_268DC7AE8();
    v13 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268DB9B78(v12, v10, v11, v13);
    MEMORY[0x277D82BD8](v13);
    v16 = *(v22 + 120);
    MEMORY[0x277D82BE0](v16);
    MEMORY[0x277D82BD8](*(v22 + 120));
    MEMORY[0x277D82BD8](v14);
    v8 = MEMORY[0x277D82BD8](v15);
    v9 = *(*(v22 + 80) + 8);

    return v9(v16, v8);
  }
}

uint64_t sub_268F1F154(uint64_t a1)
{
  v4 = *v1;
  v3 = *(*v1 + 304);
  *(v4 + 80) = *v1;
  *(v4 + 320) = a1;

  return MEMORY[0x2822009F8](sub_268F1F2B0, 0);
}

uint64_t sub_268F1F2B0()
{
  v1 = v0[40];
  v0[10] = v0;
  v2 = v0[15];
  v0[15] = v1;
  MEMORY[0x277D82BD8](v2);
  v12 = v0[31];
  v13 = v0[28];
  v3 = sub_268DBBE24();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7AE8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  v14 = v0[15];
  MEMORY[0x277D82BE0](v14);
  MEMORY[0x277D82BD8](v0[15]);
  MEMORY[0x277D82BD8](v12);
  v5 = MEMORY[0x277D82BD8](v13);
  v6 = *(v0[10] + 8);

  return v6(v14, v5);
}

uint64_t sub_268F1F48C(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268D82A48;

  return sub_268F1D918(a1);
}

uint64_t sub_268F1F558()
{
  v2 = *(v0 + qword_2802DE2A8);

  return v2;
}

uint64_t sub_268F1F58C()
{
  v2 = *(v0 + qword_2802DE2B0);

  return v2;
}

uint64_t sub_268F1F5C0()
{
  v2 = *(v0 + qword_2802DE2B8);

  return v2;
}

uint64_t sub_268F1F5F4()
{
  v2 = *(v0 + qword_2802DE2C0);

  return v2;
}

uint64_t sub_268F1F638()
{
  v2 = *(v0 + qword_2802DE2C8);

  return v2;
}

uint64_t sub_268F1F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  *(v6 + qword_2802DE2A8) = a1;

  *(v6 + qword_2802DE2B0) = a2;

  *(v6 + qword_2802DE2B8) = a3;

  v7 = (v6 + qword_2802DE2C0);
  *v7 = a4;
  v7[1] = a5;

  *(v6 + qword_2802DE2C8) = a6;
  v15 = sub_268F99B04();

  return v15;
}

void sub_268F1F8A8(uint64_t a1, id a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v61 = 0;
  v55 = 0;
  v54 = 0;
  v48 = 0;
  v6 = *v5;
  v69 = a1;
  v68 = a2;
  v67 = a3;
  v65 = a4;
  v66 = a5;
  v64 = v5;
  v63 = *(v6 + qword_2802F1660);
  v62 = *(v6 + qword_2802F1660 + 8);
  v46 = [a2 settingMetadata];
  if (v46)
  {
    v40 = [v46 settingId];
    v41._countAndFlagsBits = sub_268F9AE24();
    v41._object = v8;
    MEMORY[0x277D82BD8](v46);
    *&v7 = MEMORY[0x277D82BD8](v40).n128_u64[0];
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  if (v42._object)
  {
    v61 = v42;
    v60 = [a3 code];
    v59 = 3;
    type metadata accessor for INSetBinarySettingIntentResponseCode(0);
    sub_268CD91DC();
    if ((sub_268F9B754() & 1) != 0 && (, BinarySettingIdentifier.init(rawValue:)(v42), v49 != 65) && (v48 = v49, , v47 = v49, sub_268D34FD4(), [a3 updatedValue], type metadata accessor for INBinarySettingValue(0), sub_268CD925C(), v9 = sub_268F9B754(), v38 = sub_268DDD164(v9 & 1), v39 = sub_268E57258(&v47, v38), MEMORY[0x277D82BD8](v38), , v39))
    {

      sub_268D34954();
      sub_268F9B734();
      v36 = v10;
      MEMORY[0x277D82BE0](v39);
      *v36 = v39;
      sub_268CD0F7C();
      v37 = v11;
      a4();
      sub_268DADA74(v37, 0);

      MEMORY[0x277D82BD8](v39);
    }

    else
    {
      if (!sub_268F288D0(v42._countAndFlagsBits, v42._object))
      {
        goto LABEL_34;
      }

      v35 = sub_268F23C10();

      if (v35)
      {
        sub_268F42038();

        v33 = sub_268F9AE14();

        v34 = [v35 valueForKey_];
        MEMORY[0x277D82BD8](v33);
        MEMORY[0x277D82BD8](v35);
        if (v34)
        {
          sub_268F9B404();
          sub_268D55CF0(v50, &v51);
          swift_unknownObjectRelease();
        }

        else
        {
          v51 = 0uLL;
          v52 = 0uLL;
        }

        v57 = v51;
        v58 = v52;
      }

      else
      {
        v57 = 0uLL;
        v58 = 0uLL;
      }

      if (*(&v58 + 1))
      {
        v32 = (swift_dynamicCast() & 1) != 0 ? v53 & 1 : 2;
        v31 = v32;
      }

      else
      {
        sub_268D28414(&v57);
        v31 = 2;
      }

      v56 = v31;
      v30 = v31 == 2 ? 0 : v56;
      v55 = v30 & 1;

      v29 = sub_268F23C10();

      if (v29)
      {
        sub_268F42038();

        v28 = sub_268F9AE14();

        [v29 removeObjectForKey_];
        MEMORY[0x277D82BD8](v28);
        MEMORY[0x277D82BD8](v29);
      }

      if ((v30 & 1) != 0 && (, v26 = *(v45 + qword_2802DE2B8), , v24 = *(v45 + qword_2802DE2C0), v25 = *(v45 + qword_2802DE2C0 + 8), , v27 = sub_268F36934(v26, v24, v25), , , , v27))
      {
        v54 = v27;
        v12 = sub_268DC7F68();
        v21 = *v12;
        MEMORY[0x277D82BE0](*v12);
        v20 = sub_268F9B274();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        sub_268F9AC04("A button was created for the setting.", 37, 2, &dword_268CBE000, v21, v20);

        MEMORY[0x277D82BD8](v21);

        sub_268D34954();
        sub_268F9B734();
        v22 = v13;
        MEMORY[0x277D82BE0](v27);
        *v22 = v27;
        sub_268CD0F7C();
        v23 = v14;
        a4();
        sub_268DADA74(v23, 0);

        MEMORY[0x277D82BD8](v27);
      }

      else
      {
LABEL_34:
        v15 = sub_268DC7F68();
        v18 = *v15;
        MEMORY[0x277D82BE0](*v15);
        v17 = sub_268F9B274();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        sub_268F9AC04("Either the intent wasn't successfully handled, or this binary setting does not have an ace snippet", 98, 2, &dword_268CBE000, v18, v17);

        MEMORY[0x277D82BD8](v18);

        sub_268D34954();
        v19 = sub_268F9B734();
        a4();
        sub_268DADA74(v19, 0);
      }
    }
  }

  else
  {

    sub_268D34954();
    v16 = sub_268F9B734();
    a4();
    sub_268DADA74(v16, 0);
  }
}

void sub_268F202F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v31 = 0;
  v6 = *v5;
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v37 = a4;
  v38 = a5;
  v36 = v5;
  v35 = *(v6 + qword_2802F1660);
  v34 = *(v6 + qword_2802F1660 + 8);
  v7 = sub_268DC7F68();
  v26 = *v7;
  MEMORY[0x277D82BE0](*v7);
  v25 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v24 = v8;
  MEMORY[0x277D82BE0](a2);
  v33 = a2;
  sub_268CD7620();
  sub_268D28940();
  v22 = sub_268F9AE74();
  v23 = v9;
  v24[3] = MEMORY[0x277D837D0];
  v24[4] = sub_268CDD224();
  *v24 = v22;
  v24[1] = v23;
  sub_268CD0F7C();
  sub_268F9AC04("Building a BOOL snippet for intent confirmation %@.", 51, 2, &dword_268CBE000, v26, v25);

  MEMORY[0x277D82BD8](v26);
  sub_268DAB218(a2);
  v28 = v32;
  if (v32 == 65 || (v31 = v32, , v30 = v32, sub_268D34FD4(), v29 = v28, v10 = sub_268F20D28(&v29), v19 = sub_268DDD164(v10 & 1), v20 = sub_268E57258(&v30, v19), MEMORY[0x277D82BD8](v19), , !v20))
  {
    v13 = sub_268DC7F68();
    v15 = *v13;
    MEMORY[0x277D82BE0](*v13);
    v14 = sub_268F9B274();
    sub_268F9B734();
    sub_268F9AC04("Either the intent doesn't have a setting metadata, or this binary setting does not have an ace snippet", 102, 2, &dword_268CBE000, v15, v14);

    MEMORY[0x277D82BD8](v15);

    sub_268D34954();
    v16 = sub_268F9B734();
    a4();
    sub_268DADA74(v16, 0);
  }

  else
  {

    sub_268D34954();
    sub_268F9B734();
    v17 = v11;
    MEMORY[0x277D82BE0](v20);
    *v17 = v20;
    sub_268CD0F7C();
    v18 = v12;
    a4();
    sub_268DADA74(v18, 0);

    MEMORY[0x277D82BD8](v20);
  }
}

void sub_268F20748(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  v15 = *(v12 + qword_2802DE2B8);

  v13 = *(v12 + qword_2802DE2C0);
  v14 = *(v12 + qword_2802DE2C0 + 8);

  v16 = sub_268F36934(v15, v13, v14);

  if (v16)
  {

    sub_268D34954();
    sub_268F9B734();
    v9 = v3;
    MEMORY[0x277D82BE0](v16);
    *v9 = v16;
    sub_268CD0F7C();
    v10 = v4;
    a3();
    sub_268DADA74(v10, 0);

    MEMORY[0x277D82BD8](v16);
  }

  else
  {
    v5 = sub_268DC7F68();
    v7 = *v5;
    MEMORY[0x277D82BE0](*v5);
    v6 = sub_268F9B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("A button was not created for the binary setting.", 48, 2, &dword_268CBE000, v7, v6);

    MEMORY[0x277D82BD8](v7);

    sub_268D34954();
    v8 = sub_268F9B734();
    a3();
    sub_268DADA74(v8, 0);
  }
}

void sub_268F20A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{

  v18 = *(v15 + qword_2802DE2B8);

  v16 = *(v15 + qword_2802DE2C0);
  v17 = *(v15 + qword_2802DE2C0 + 8);

  v19 = sub_268F36934(v18, v16, v17);

  if (v19)
  {

    sub_268D34954();
    sub_268F9B734();
    v12 = v6;
    MEMORY[0x277D82BE0](v19);
    *v12 = v19;
    sub_268CD0F7C();
    v13 = v7;
    a6();
    sub_268DADA74(v13, 0);

    MEMORY[0x277D82BD8](v19);
  }

  else
  {
    v8 = sub_268DC7F68();
    v10 = *v8;
    MEMORY[0x277D82BE0](*v8);
    v9 = sub_268F9B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("A button was not created for the binary setting.", 48, 2, &dword_268CBE000, v10, v9);

    MEMORY[0x277D82BD8](v10);

    sub_268D34954();
    v11 = sub_268F9B734();
    a6();
    sub_268DADA74(v11, 0);
  }
}

uint64_t sub_268F20D28(char *a1)
{
  sub_268D28AD4();
  if (sub_268F9B754())
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_268F9B754();
  }

  if (v3)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_268F9B754();
  }

  return v2 & 1;
}

uint64_t sub_268F20F78()
{

  sub_268CD9D30(v0 + qword_2802DE2C0);
}

uint64_t sub_268F2103C()
{
  v1 = sub_268F99B14();

  sub_268CD9D30(v1 + qword_2802DE2C0);

  return v1;
}

uint64_t sub_268F211A0(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F21278()
{
  type metadata accessor for SetAutoCorrectHandler();
  result = sub_268CDA260();
  qword_2802F1670 = result;
  return result;
}

uint64_t *sub_268F212D4()
{
  if (qword_2802DB7D0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1670;
}

uint64_t sub_268F21334()
{
  v1 = *sub_268F212D4();

  return v1;
}

uint64_t sub_268F21364(uint64_t a1, void (*a2)(id))
{
  v5 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "SetAutoCorrectHandler handling intent; Siri cannot change setting: AutoCorrect", 78, 2);

  MEMORY[0x277D82BD8](v6);

  v7 = sub_268E948B8(17);
  v9 = sub_268DAB158(0, v7, v3);

  a2(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t sub_268F21528@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_268CDE730(v1 + 24, a1);
  return swift_endAccess();
}

uint64_t sub_268F2157C(void *a1)
{
  sub_268CDE730(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  sub_268CDF978(v4, (v1 + 24));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_268F215EC(void *a1)
{
  v7 = a1;
  v6 = v1;
  *(v1 + 16) = 0;
  sub_268CDE730(a1, v5);
  sub_268CDF978(v5, (v1 + 24));
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_268F21650(uint64_t a1)
{
  v73 = a1;
  v2 = v1;
  v83 = v2;
  v94 = "ToggleBinarySettingDIFlow on";
  v92 = &dword_268CBE000;
  v74 = "Parse is of unexpected type: %@.";
  v75 = "DI object isn't a unexpected type: %@.";
  v106 = 0;
  v105 = 0;
  v107 = 0;
  v103 = 0;
  v102 = 0;
  v90 = 0;
  v76 = sub_268F99C24();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4, v5, v6);
  v80 = &v44 - v79;
  v81 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, &v44 - v79, v9, v10);
  v82 = &v44 - v81;
  v107 = &v44 - v81;
  v100 = sub_268F99C34();
  v97 = *(v100 - 8);
  v98 = v100 - 8;
  v87 = *(v97 + 64);
  v84 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100, v11, v12, v13);
  v85 = &v44 - v84;
  v86 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v44 - v84, v14, v15, v16);
  v88 = &v44 - v86;
  v89 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v44 - v86, v17, v18, v19);
  v99 = &v44 - v89;
  v106 = a1;
  v105 = v20;
  v96 = *sub_268DC9C10();
  MEMORY[0x277D82BE0](v96);
  v93 = sub_268F9B284();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v95 = sub_268F9B734();
  sub_268F9AC04(v94, 28, 2, v92, v96, v93);

  MEMORY[0x277D82BD8](v96);
  sub_268F99BE4();
  if ((*(v97 + 88))(v99, v100) != *MEMORY[0x277D5C150])
  {
    goto LABEL_7;
  }

  v21 = v82;
  (*(v97 + 16))(v88, v99, v100);
  (*(v97 + 96))(v88, v100);
  (*(v77 + 32))(v21, v88, v76);
  v71 = type metadata accessor for ToggleBinarySetting();
  v72 = sub_268D90E70();
  if ((sub_268F39FF8(v71, v71, v72) & 1) == 0)
  {
    (*(v77 + 8))(v82, v76);
LABEL_7:
    v48 = sub_268F9B284();
    v50 = *sub_268DC9C10();
    MEMORY[0x277D82BE0](v50);
    v47 = sub_268F9B734();
    v46 = v35;
    sub_268F99BE4();
    v44 = sub_268F9AE64();
    v45 = v36;
    v46[3] = MEMORY[0x277D837D0];
    v37 = sub_268CDD224();
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v46[4] = v37;
    *v40 = v38;
    v40[1] = v39;
    sub_268CD0F7C();
    v49 = v41;
    sub_268F9AC14(v48, &dword_268CBE000, v50, v74, 32, 2);

    v42 = MEMORY[0x277D82BD8](v50);
    (*(v97 + 8))(v99, v100, v42);
    v66 = 0;
    return v66 & 1;
  }

  v22 = v71;
  v107 = v82;
  v68 = *(v77 + 16);
  v69 = v77 + 16;
  v68(v80);
  sub_268F3A148(v80, v22, v72, &v104);
  v70 = v104;
  if (v104)
  {
    v67 = v70;
    v65 = v70;
    v103 = v70;
    v61 = 0;
    v58 = sub_268D291D4();
    v60 = *(v65 + 16);
    v59 = *(v65 + 24);

    sub_268E62B3C();
    sub_268CD4500();
    v25 = sub_268E3D824(v61, v61, v61, v61, v24, v23 & 1);
    v64 = sub_268F2B620(v60, v59, v25, v61);
    v102 = v64;
    sub_268CD7620();
    MEMORY[0x277D82BE0](v64);
    v62 = sub_268DA95CC(v64, 3, v61);
    v63 = &v101;
    swift_beginAccess();
    v26 = *(v83 + 16);
    *(v83 + 16) = v62;
    MEMORY[0x277D82BD8](v26);
    swift_endAccess();
    MEMORY[0x277D82BD8](v64);

    (*(v77 + 8))(v82, v76);
    (*(v97 + 8))(v99, v100);
    v66 = 1;
  }

  else
  {
    v55 = sub_268F9B284();
    v57 = *sub_268DC9C10();
    MEMORY[0x277D82BE0](v57);
    v54 = sub_268F9B734();
    v53 = v27;
    (v68)(v80, v82, v76);
    v51 = sub_268F9AE64();
    v52 = v28;
    v53[3] = MEMORY[0x277D837D0];
    v29 = sub_268CDD224();
    v30 = v51;
    v31 = v52;
    v32 = v53;
    v53[4] = v29;
    *v32 = v30;
    v32[1] = v31;
    sub_268CD0F7C();
    v56 = v33;
    sub_268F9AC14(v55, &dword_268CBE000, v57, v75, 38, 2);

    v34 = MEMORY[0x277D82BD8](v57);
    (*(v77 + 8))(v82, v76, v34);
    (*(v97 + 8))(v99, v100);
    v66 = 0;
  }

  return v66 & 1;
}

uint64_t sub_268F22050(uint64_t a1)
{
  *(v2 + 512) = v1;
  *(v2 + 504) = a1;
  *(v2 + 472) = v2;
  *(v2 + 480) = 0;
  *(v2 + 488) = 0;
  *(v2 + 456) = 0;
  *(v2 + 464) = 0;
  *(v2 + 552) = 0;
  *(v2 + 480) = v1;
  return MEMORY[0x2822009F8](sub_268F220A8, 0);
}

uint64_t sub_268F220A8()
{
  v35 = v0[64];
  v0[59] = v0;
  swift_beginAccess();
  v36 = *(v35 + 16);
  v0[65] = v36;
  MEMORY[0x277D82BE0](v36);
  swift_endAccess();
  if (!v36)
  {
    goto LABEL_17;
  }

  *(v34 + 488) = v36;
  *(v34 + 496) = v36;
  v1 = sub_268CD7620();
  v2 = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetBinarySettingIntent);
  v33._countAndFlagsBits = v2;
  v33._object = v3;
  *(v34 + 528) = v3;
  if (!v3)
  {
    MEMORY[0x277D82BD8](v36);
LABEL_17:
    v15 = *(v34 + 512);
    v11 = sub_268DC9C10();
    v14 = *v11;
    MEMORY[0x277D82BE0](*v11);
    v13 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("ToggleBinarySettingDIFlow execute error, missing intent or settingIdentifier", 76, 2, &dword_268CBE000, v14, v13);

    MEMORY[0x277D82BD8](v14);
    swift_beginAccess();
    sub_268CDE730(v15 + 24, v34 + 16);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v34 + 16), *(v34 + 40));
    sub_268DE460C(0);
    __swift_destroy_boxed_opaque_existential_0((v34 + 16));
    sub_268F998F4();
    goto LABEL_18;
  }

  *(v34 + 456) = v2;
  *(v34 + 464) = v3;

  BinarySettingIdentifier.init(rawValue:)(v33);
  if (v37 == 65)
  {
    goto LABEL_16;
  }

  *(v34 + 552) = v37;
  sub_268F7AD98();

  sub_268F7C430();

  if (!*(v34 + 160))
  {
    sub_268D28414((v34 + 136));
LABEL_16:
    v18 = *(v34 + 512);
    v10 = sub_268DC9C10();
    v17 = *v10;
    MEMORY[0x277D82BE0](*v10);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("ToggleBinarySettingDIFlow execute error, can not get Handler", 60, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    swift_beginAccess();
    sub_268CDE730(v18 + 24, v34 + 56);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v34 + 56), *(v34 + 80));
    sub_268DE460C(0);
    __swift_destroy_boxed_opaque_existential_0((v34 + 56));
    sub_268F998F4();

    v9 = MEMORY[0x277D82BD8](v36);
    goto LABEL_18;
  }

  sub_268CDF978((v34 + 136), (v34 + 96));
  v31 = *(v34 + 120);
  v32 = *(v34 + 128);
  __swift_project_boxed_opaque_existential_1((v34 + 96), v31);
  if (((*(v32 + 16))(v36, v31) & 1) == 0)
  {
    v22 = *(v34 + 512);
    v19 = *(v34 + 120);
    v20 = *(v34 + 128);
    __swift_project_boxed_opaque_existential_1((v34 + 96), v19);
    sub_268CDE730(v34 + 96, v34 + 176);
    v21 = swift_allocObject();
    sub_268CDF978((v34 + 176), (v21 + 16));
    (*(v20 + 8))(v36, sub_268F23160, v21, v19);

    swift_beginAccess();
    sub_268CDE730(v22 + 24, v34 + 216);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v34 + 216), *(v34 + 240));
    sub_268DE460C(1);
    __swift_destroy_boxed_opaque_existential_0((v34 + 216));
    sub_268F998F4();
    __swift_destroy_boxed_opaque_existential_0((v34 + 96));

    v9 = MEMORY[0x277D82BD8](v36);
LABEL_18:
    v12 = *(*(v34 + 472) + 8);

    return v12(v9);
  }

  v26 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v27 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v25 = v5;
  sub_268CDE730(v34 + 96, v34 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
  v23 = sub_268F9AE64();
  v24 = v6;
  v25[3] = MEMORY[0x277D837D0];
  v25[4] = sub_268CDD224();
  *v25 = v23;
  v25[1] = v24;
  sub_268CD0F7C();
  sub_268F9AC14(v26, &dword_268CBE000, v27, "%@ handling intent in main thread", 33, 2);

  MEMORY[0x277D82BD8](v27);
  v28 = *(v34 + 120);
  v29 = *(v34 + 128);
  __swift_project_boxed_opaque_existential_1((v34 + 96), v28);
  v30 = (*(v29 + 32) + **(v29 + 32));
  v7 = swift_task_alloc();
  *(v34 + 536) = v7;
  *v7 = *(v34 + 472);
  v7[1] = sub_268F229DC;

  return v30(v36, v28, v29);
}

uint64_t sub_268F229DC(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 472) = *v1;
  *(v3 + 544) = a1;

  return MEMORY[0x2822009F8](sub_268F22AF8, 0);
}

uint64_t sub_268F22AF8()
{
  v1 = v0[68];
  v6 = v0[65];
  v5 = v0[64];
  v0[59] = v0;
  MEMORY[0x277D82BD8](v1);
  swift_beginAccess();
  sub_268CDE730(v5 + 24, (v0 + 37));
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
  sub_268DE460C(1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  sub_268F998F4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v2 = MEMORY[0x277D82BD8](v6);
  v3 = *(v0[59] + 8);

  return v3(v2);
}

double sub_268F22C5C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v10 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v11 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v3;
  sub_268CDE730(a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
  v7 = sub_268F9AE64();
  v8 = v4;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14(v10, &dword_268CBE000, v11, "%@ handling intent", 18, 2);

  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

uint64_t sub_268F22DAC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v18 = a2;
  v21 = &unk_268FAA348;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v3, v4);
  v20 = &v16 - v17;
  v24 = v5;
  v25 = v6;
  v23 = v2;
  v19 = 0;
  v7 = sub_268F9B0E4();
  (*(*(v7 - 8) + 56))(v20, 1);

  v8 = swift_allocObject();
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v8;
  v14 = v22;
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;
  v13[5] = v14;
  v13[6] = v9;
  sub_268E4C098(v10, v10, v11, v12, v13, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_268F22F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v8 = sub_268F99904();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v14 = swift_task_alloc();
  v6[10] = v14;
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  v9 = swift_task_alloc();
  *(v13 + 88) = v9;
  *v9 = *(v13 + 32);
  v9[1] = sub_268E4BCA4;

  return sub_268F22050(v14);
}

uint64_t sub_268F23094()
{
  sub_268D35038((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return v2;
}

uint64_t sub_268F23168(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268F22F24(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_268F23280()
{
  type metadata accessor for SetLocationServicesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1678 = result;
  return result;
}

uint64_t *sub_268F232E8()
{
  if (qword_2802DB7D8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1678;
}

uint64_t sub_268F23348()
{
  v1 = *sub_268F232E8();

  return v1;
}

uint64_t sub_268F23378(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetLocationServicesHandler handling intent", 42, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D37138();

  v4 = sub_268DBE0C4();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9 & 1, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268F2359C, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F2359C, v8);
}

uint64_t sub_268F2352C(char a1)
{

  sub_268D37174(a1 & 1);
}

uint64_t sub_268F235E8()
{
  type metadata accessor for SetPersonalizedVolumeHandler();
  v0 = sub_268CDC590();
  result = sub_268F23650(v0, 0);
  qword_2802F1680 = result;
  return result;
}

uint64_t *sub_268F236A8()
{
  if (qword_2802DB7E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1680;
}

uint64_t sub_268F23708()
{
  v1 = *sub_268F236A8();

  return v1;
}

uint64_t sub_268F23738(uint64_t a1, char a2)
{
  v3 = sub_268DBE9D4();
  v4 = v3[1];
  v5 = *(v3 + 16);
  *(v2 + 16) = *v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return v9;
}

uint64_t sub_268F237C8(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 57) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 56) = 0;
  *(v2 + 24) = 0;
  *(v2 + 56) = a1 & 1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_268F23830, 0);
}

uint64_t sub_268F23830()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 40);

  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D8DA64;
  v3 = *(v5 + 57) & 1;

  return sub_268D510FC(v3);
}

uint64_t sub_268F238F4(char a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268CD7DB8;

  return sub_268F237C8(a1 & 1);
}

uint64_t sub_268F239B0()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268CD7DB8;

  return sub_268DE39BC();
}

uint64_t *sub_268F23A60()
{
  if (qword_280FE56C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE56D0;
}

void *sub_268F23AC0()
{
  type metadata accessor for ConfirmationUtil();
  v1 = sub_268F23B4C();
  v2 = sub_268F1C948();
  sub_268D58CB4(v3);
  result = sub_268F23B7C(v1, v2, v3);
  qword_280FE56D0 = result;
  return result;
}

uint64_t sub_268F23B4C()
{
  v1 = *sub_268F337EC();

  return v1;
}

uint64_t static ConfirmationUtil.shared.getter()
{
  v1 = *sub_268F23A60();

  return v1;
}

uint64_t sub_268F23C10()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_268F23C50()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_268F23C88()
{
  v2 = *(v0 + 32);

  return v2;
}

void *sub_268F23CF0(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  v7[2] = sub_268F9B374();

  v7[3] = a1;

  v7[4] = a2;
  sub_268CDE730(a3, v8);
  sub_268CDF978(v8, v7 + 5);
  __swift_destroy_boxed_opaque_existential_0(a3);

  return v7;
}

uint64_t sub_268F23E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v25 = v29;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v25 = 0;
  }

  if (!v25)
  {
    goto LABEL_13;
  }

  MEMORY[0x277D82BE0](a2);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v24 = v3;
  }

  else
  {
    MEMORY[0x277D82BD8](a2);
    v24 = 0;
  }

  if (!v24)
  {
    MEMORY[0x277D82BD8](v25);
LABEL_13:
    MEMORY[0x277D82BE0](a1);
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v20 = v21;
    }

    else
    {
      MEMORY[0x277D82BD8](a1);
      v20 = 0;
    }

    if (v20)
    {
      MEMORY[0x277D82BE0](a2);
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v19 = v4;
      }

      else
      {
        MEMORY[0x277D82BD8](a2);
        v19 = 0;
      }

      if (v19)
      {
        v18 = sub_268F243F8(v20, v19);
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](v20);
        v23 = v18;
        return v23 & 1;
      }

      MEMORY[0x277D82BD8](v20);
    }

    MEMORY[0x277D82BE0](a1);
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v16 = v17;
    }

    else
    {
      MEMORY[0x277D82BD8](a1);
      v16 = 0;
    }

    if (v16)
    {
      MEMORY[0x277D82BE0](a2);
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v15 = v5;
      }

      else
      {
        MEMORY[0x277D82BD8](a2);
        v15 = 0;
      }

      if (v15)
      {
        v14 = sub_268F26B04(v16, v15);
        MEMORY[0x277D82BD8](v15);
        MEMORY[0x277D82BD8](v16);
        v23 = v14;
        return v23 & 1;
      }

      MEMORY[0x277D82BD8](v16);
    }

    v13 = *(v27 + 16);
    MEMORY[0x277D82BE0](v13);
    v12 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v11 = v6;
    MEMORY[0x277D82BE0](a1);
    sub_268D55AB4();
    sub_268D55B18();
    v9 = sub_268F9AE74();
    v10 = v7;
    v11[3] = MEMORY[0x277D837D0];
    v11[4] = sub_268CDD224();
    *v11 = v9;
    v11[1] = v10;
    sub_268CD0F7C();
    sub_268F9AC04("This type of intent does not have any confirmations.", 52, 2, &dword_268CBE000, v13, v12);

    MEMORY[0x277D82BD8](v13);
    v23 = 0;
    return v23 & 1;
  }

  v22 = sub_268F2580C(v25, v24);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  v23 = v22;
  return v23 & 1;
}

uint64_t sub_268F243F8(void *a1, void *a2)
{
  v101 = 0;
  v100 = 0;
  v98 = 0;
  v103 = a1;
  v102 = a2;
  v90 = [a1 settingMetadata];
  if (v90)
  {
    v84 = [v90 settingId];
    v85._countAndFlagsBits = sub_268F9AE24();
    v85._object = v2;
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v84);
    v86 = v85;
  }

  else
  {
    v86 = 0;
  }

  if (!v86._object)
  {
    goto LABEL_87;
  }

  v100 = v86;

  NumericSettingIdentifier.init(rawValue:)(v86);
  if (v99 == 13)
  {

LABEL_87:
    v25 = *(v89 + 16);
    MEMORY[0x277D82BE0](v25);
    v24 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Providing no confirmation due to missing metadata.", 50, 2, &dword_268CBE000, v25, v24);

    MEMORY[0x277D82BD8](v25);
    v81 = 0;
    return v81 & 1;
  }

  v98 = v99;

  v97 = v99;
  sub_268F35CE8(&v97, v104);

  memcpy(__dst, v104, sizeof(__dst));
  if (!__dst[3])
  {
    v28 = *(v89 + 16);
    MEMORY[0x277D82BE0](v28);
    v27 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v26 = v22;

    v26[1]._object = MEMORY[0x277D837D0];
    v26[2]._countAndFlagsBits = sub_268CDD224();
    *v26 = v86;
    sub_268CD0F7C();
    sub_268F9AC04("Providing no confirmation because no confirmation configuration is available for %@.", 84, 2, &dword_268CBE000, v28, v27);

    MEMORY[0x277D82BD8](v28);

    v81 = 0;
    return v81 & 1;
  }

  memcpy(v106, __dst, sizeof(v106));
  v82 = v106[3];

  v83 = v82(a1);

  if (v83)
  {
    v80 = *(v89 + 16);
    MEMORY[0x277D82BE0](v80);
    v79 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Providing confirmation because of intent.", 41, 2, &dword_268CBE000, v80, v79);

    MEMORY[0x277D82BD8](v80);
    sub_268F27288();

    v81 = 1;
    return v81 & 1;
  }

  v78 = [a1 numericValue];
  if (v78 && (v77 = [v78 value], *&v3 = MEMORY[0x277D82BD8](v78).n128_u64[0], v77))
  {
    [v77 floatValue];
    v74 = v4;
    MEMORY[0x277D82BD8](v77);
    v75 = v74;
    v76 = 0;
  }

  else
  {
    v75 = 0.0;
    v76 = 1;
  }

  v107 = v106[0];
  v108 = BYTE4(v106[0]);
  v93 = v75;
  v94 = v76 & 1;
  v95 = *v106;
  v96 = BYTE4(v106[0]);
  if ((v76 & 1) == 0)
  {
    if ((v96 & 1) == 0)
    {
      v73 = v75 == v95;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if ((v96 & 1) == 0)
  {
LABEL_26:
    v73 = 0;
    goto LABEL_24;
  }

  v73 = 1;
LABEL_24:
  MEMORY[0x277D82BE0](a1);
  sub_268F271E0(v106, v92);
  if (v73)
  {
    v71 = 0;
  }

  else
  {
    [a1 boundedValue];
    v109 = v106[1];
    v110 = v106[2];
    if (v106[2])
    {
      v72 = 0;
    }

    else
    {
      type metadata accessor for INBoundedSettingValue(0);
      sub_268F272C0();
      v72 = sub_268F9AE04();
    }

    v71 = v72 ^ 1;
  }

  MEMORY[0x277D82BD8](a1);
  sub_268F27288();
  if (v71)
  {
    v70 = *(v89 + 16);
    MEMORY[0x277D82BE0](v70);
    v69 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v68 = v5;

    v66 = MEMORY[0x277D837D0];
    v68[1]._object = MEMORY[0x277D837D0];
    v67 = sub_268CDD224();
    v68[2]._countAndFlagsBits = v67;
    *v68 = v86;
    [a1 numericValue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE358, &unk_268FAA540);
    v6 = sub_268F9AE64();
    v68[4]._countAndFlagsBits = v66;
    v68[4]._object = v67;
    v68[2]._object = v6;
    v68[3]._countAndFlagsBits = v7;
    [a1 boundedValue];
    type metadata accessor for INBoundedSettingValue(0);
    v8 = sub_268F9AE64();
    v68[6]._object = v66;
    v68[7]._countAndFlagsBits = v67;
    v68[5]._countAndFlagsBits = v8;
    v68[5]._object = v9;
    sub_268CD0F7C();
    sub_268F9AC04("Providing no confirmation since %@ doesn't require confirmation for setting value %@.", 85, 2, &dword_268CBE000, v70, v69);

    MEMORY[0x277D82BD8](v70);
    sub_268F27288();

    v81 = 0;
    return v81 & 1;
  }

  v65 = [a1 numericValue];
  if (v65 && (v64 = [v65 value], *&v10 = MEMORY[0x277D82BD8](v65).n128_u64[0], v64))
  {
    [v64 floatValue];
    v61 = v11;
    MEMORY[0x277D82BD8](v64);
    v62 = v61;
    v63 = 0;
  }

  else
  {
    v62 = 0.0;
    v63 = 1;
  }

  if ((v63 & 1) == 0)
  {
    v111 = v106[0];
    v112 = BYTE4(v106[0]);
    if ((v106[0] & 0x100000000) == 0 && v62 == *v106)
    {
      v59 = *(v89 + 16);
      MEMORY[0x277D82BE0](v59);
      v58 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04("Providing confirmation because of the setting has a confirmation for the value requested.", 89, 2, &dword_268CBE000, v59, v58);

      MEMORY[0x277D82BD8](v59);
      sub_268F27288();

      v81 = 1;
      return v81 & 1;
    }
  }

  v91[2] = [a1 boundedValue];
  v91[1] = 0;
  type metadata accessor for INBoundedSettingValue(0);
  sub_268F272C0();
  if ((sub_268F9AE04() & 1) == 0)
  {
    [a1 boundedValue];
    v113 = v106[1];
    v114 = v106[2];
    v57 = (v106[2] & 1) != 0 ? 0 : sub_268F9AE04();
    if (v57)
    {
      v56 = *(v89 + 16);
      MEMORY[0x277D82BE0](v56);
      v55 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04("Providing confirmation because of the setting has a confirmation for the bounded value.", 87, 2, &dword_268CBE000, v56, v55);

      MEMORY[0x277D82BD8](v56);
      sub_268F27288();

      v81 = 1;
      return v81 & 1;
    }
  }

  v91[0] = [a2 oldValue];
  if (!v91[0])
  {
    sub_268D35038(v91);
LABEL_83:
    v51 = 0.0;
    v52 = 1;
    goto LABEL_61;
  }

  v53 = v91[0];
  MEMORY[0x277D82BE0](v91[0]);
  sub_268D35038(v91);
  v54 = [v53 value];
  *&v12 = MEMORY[0x277D82BD8](v53).n128_u64[0];
  if (!v54)
  {
    goto LABEL_83;
  }

  [v54 floatValue];
  v50 = v13;
  MEMORY[0x277D82BD8](v54);
  v51 = v50;
  v52 = 0;
LABEL_61:
  if ((v52 & 1) != 0 || ((v14 = [a1 numericValue], (v49 = v14) == 0 ? (v47 = 0, v48 = 1) : (v46 = objc_msgSend(v14, sel_unit), MEMORY[0x277D82BD8](v49), v47 = v46, v48 = 0), (v48 & 1) != 0 || v47 != 1) ? (v45 = v51) : (v45 = v51 * 100.0), (v44 = objc_msgSend(a1, sel_numericValue)) == 0 || (v43 = objc_msgSend(v44, sel_value), *&v15 = MEMORY[0x277D82BD8](v44).n128_u64[0], !v43) ? (v41 = 0.0, v42 = 1) : (objc_msgSend(v43, sel_floatValue, v15), v40 = v16, MEMORY[0x277D82BD8](v43), v41 = v40, v42 = 0), (v42 & 1) != 0 ? (v39 = 0) : (v39 = v45 == v41), !v39))
  {
    v35 = *(v89 + 16);
    MEMORY[0x277D82BE0](v35);
    v34 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v33 = v18;
    MEMORY[0x277D82BE0](a1);
    sub_268D588E0();
    sub_268DCA900();
    v29 = sub_268F9AE74();
    v30 = v19;
    v31 = MEMORY[0x277D837D0];
    v33[3] = MEMORY[0x277D837D0];
    v32 = sub_268CDD224();
    v33[4] = v32;
    *v33 = v29;
    v33[1] = v30;
    MEMORY[0x277D82BE0](a2);
    sub_268CDA484();
    sub_268EE4A98();
    v20 = sub_268F9AE74();
    v33[8] = v31;
    v33[9] = v32;
    v33[5] = v20;
    v33[6] = v21;
    sub_268CD0F7C();
    sub_268F9AC04("Intent: %@. and intentResponse: %@ does NOT require user confirmation", 69, 2, &dword_268CBE000, v35, v34);

    MEMORY[0x277D82BD8](v35);
    sub_268F27288();

    v81 = 0;
  }

  else
  {
    v38 = *(v89 + 16);
    MEMORY[0x277D82BE0](v38);
    v37 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v36 = v17;

    v36[1]._object = MEMORY[0x277D837D0];
    v36[2]._countAndFlagsBits = sub_268CDD224();
    *v36 = v86;
    sub_268CD0F7C();
    sub_268F9AC04("Providing no confirmation since %@ is already in the desired state.", 67, 2, &dword_268CBE000, v38, v37);

    MEMORY[0x277D82BD8](v38);
    sub_268F27288();

    v81 = 0;
  }

  return v81 & 1;
}

uint64_t sub_268F2580C(void *a1, void *a2)
{
  v111 = 0;
  v110 = 0;
  v108 = 0;
  v101 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v87 = 0;
  v113 = a1;
  v112 = a2;
  v81 = [a1 settingMetadata];
  if (v81)
  {
    v75 = [v81 settingId];
    v76._countAndFlagsBits = sub_268F9AE24();
    v76._object = v2;
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](v75);
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  if (!v77._object)
  {
    goto LABEL_59;
  }

  v110 = v77;

  BinarySettingIdentifier.init(rawValue:)(v77);
  v74 = v109;
  if (v109 == 65)
  {

LABEL_59:
    v21 = *(v80 + 16);
    MEMORY[0x277D82BE0](v21);
    v20 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Providing no confirmation due to missing metadata.", 50, 2, &dword_268CBE000, v21, v20);

    MEMORY[0x277D82BD8](v21);
    v71 = 0;
    return v71 & 1;
  }

  v108 = v109;

  v107 = v109;
  sub_268F35C24(&v107, v114);

  memcpy(__dst, v114, sizeof(__dst));
  if (!__dst[2])
  {
    v24 = *(v80 + 16);
    MEMORY[0x277D82BE0](v24);
    v23 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v22 = v19;

    v22[1]._object = MEMORY[0x277D837D0];
    v22[2]._countAndFlagsBits = sub_268CDD224();
    *v22 = v77;
    sub_268CD0F7C();
    sub_268F9AC04("Providing no confirmation because no confirmation configuration is available for %@.", 84, 2, &dword_268CBE000, v24, v23);

    MEMORY[0x277D82BD8](v24);

    v71 = 0;
    return v71 & 1;
  }

  memcpy(v116, __dst, 0x60uLL);
  v72 = v116[10];

  MEMORY[0x277D82BE0](a1);
  v73 = v72(a1);
  MEMORY[0x277D82BD8](a1);
  if (v73 == 2)
  {
  }

  else
  {

    if ((v73 & 1) == 0)
    {
      v70 = *(v80 + 16);
      MEMORY[0x277D82BE0](v70);
      v69 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v68 = v3;

      v68[1]._object = MEMORY[0x277D837D0];
      v68[2]._countAndFlagsBits = sub_268CDD224();
      *v68 = v77;
      sub_268CD0F7C();
      sub_268F9AC04("Providing no confirmation because confirmation is not supported for %@.", 71, 2, &dword_268CBE000, v70, v69);

      MEMORY[0x277D82BD8](v70);
      sub_268DD57B4();

      v71 = 0;
      return v71 & 1;
    }
  }

  v66 = v116[4];

  sub_268CDE730(v80 + 40, v106);
  v67 = v66(v106);
  __swift_destroy_boxed_opaque_existential_0(v106);
  if (v67 != 2)
  {

    v65 = *(v80 + 16);
    MEMORY[0x277D82BE0](v65);
    v64 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    *(v4 + 24) = MEMORY[0x277D839B0];
    *(v4 + 32) = MEMORY[0x277D839F0];
    *v4 = v67 & 1;
    sub_268CD0F7C();
    sub_268F9AC04("Providing override confirmation: %@.", 36, 2, &dword_268CBE000, v65, v64);

    MEMORY[0x277D82BD8](v65);
    sub_268DD57B4();

    v71 = v67;
    return v71 & 1;
  }

  v105 = [a1 binaryValue];
  v104 = 3;
  type metadata accessor for INBinarySettingValue(0);
  sub_268D292B8();
  if (sub_268F9AE04())
  {
    v103 = [a2 oldValue];
    v102 = 1;
    sub_268CD925C();
    if (sub_268F9B754())
    {
      v62 = 2;
    }

    else
    {
      v62 = 1;
    }

    v63 = v62;
  }

  else
  {
    v63 = [a1 binaryValue];
  }

  v101 = v63;
  v100 = v63;
  v99 = 1;
  sub_268CD925C();
  v61 = sub_268F9B754();

  if (v61)
  {
    sub_268CDE730(v80 + 40, v82);
    v58 = v83;
    v57 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v59 = (*(v57 + 40))(v58);
    __swift_destroy_boxed_opaque_existential_0(v82);
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  if (v60)
  {
    sub_268F9B734();
    *v5 = 35;
    v5[1] = 36;
    sub_268CD0F7C();
    v86[0] = v6;
    v85 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
    sub_268D28B4C();
    sub_268D288C8();
    v55 = sub_268F9AFC4();
    sub_268CD7930(v86);
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  if (v56)
  {
    v54 = sub_268F26E9C(a1);
    sub_268DD57B4();

    v71 = v54;
    return v71 & 1;
  }

  v98 = v63;
  v116[12] = v116[0];
  v97 = v116[0];
  if ((sub_268F9AE04() & 1) == 0)
  {
    v53 = *(v80 + 16);
    MEMORY[0x277D82BE0](v53);
    v52 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v51 = v7;

    v49 = MEMORY[0x277D837D0];
    v51[1]._object = MEMORY[0x277D837D0];
    v50 = sub_268CDD224();
    v51[2]._countAndFlagsBits = v50;
    *v51 = v77;
    v86[1] = v63;
    v8 = sub_268F9AE64();
    v51[4]._countAndFlagsBits = v49;
    v51[4]._object = v50;
    v51[2]._object = v8;
    v51[3]._countAndFlagsBits = v9;
    sub_268CD0F7C();
    sub_268F9AC04("Providing no confirmation since %@ doesn't require confirmation for setting value %@.", 85, 2, &dword_268CBE000, v53, v52);

    MEMORY[0x277D82BD8](v53);
    sub_268DD57B4();

    v71 = 0;
    return v71 & 1;
  }

  v96 = [a2 oldValue];
  v95 = v63;
  if (sub_268F9B754())
  {
    v48 = *(v80 + 16);
    MEMORY[0x277D82BE0](v48);
    v47 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v46 = v10;

    v46[1]._object = MEMORY[0x277D837D0];
    v46[2]._countAndFlagsBits = sub_268CDD224();
    *v46 = v77;
    sub_268CD0F7C();
    sub_268F9AC04("Providing no confirmation since %@ is already in the desired state.", 67, 2, &dword_268CBE000, v48, v47);

    MEMORY[0x277D82BD8](v48);
    sub_268DD57B4();

    v71 = 0;
    return v71 & 1;
  }

  v117 = v116[1];
  if ((v116[1] & 1) == 0)
  {
    v45 = *(v80 + 16);
    MEMORY[0x277D82BE0](v45);
    v44 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Providing confirmation.", 23, 2, &dword_268CBE000, v45, v44);

    MEMORY[0x277D82BD8](v45);
    sub_268DD57B4();

    v71 = 1;
    return v71 & 1;
  }

  v43 = sub_268F23C10();

  v94 = v43;
  v92 = sub_268F3384C(SBYTE1(v116[1]));
  v93 = v11;
  MEMORY[0x277D82BE0](v43);
  if (v43)
  {

    v39 = sub_268F9AE14();

    v40 = [v43 integerForKey_];
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v43);
    v41 = v40;
    v42 = 0;
  }

  else
  {
    v41 = 0;
    v42 = 1;
  }

  if (v42)
  {
LABEL_56:
    v29 = *(v80 + 16);
    MEMORY[0x277D82BE0](v29);
    v28 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v27 = v17;
    MEMORY[0x277D82BE0](a1);
    v91 = a1;
    sub_268CD7620();
    sub_268D28940();
    v25 = sub_268F9AE74();
    v26 = v18;
    v27[3] = MEMORY[0x277D837D0];
    v27[4] = sub_268CDD224();
    *v27 = v25;
    v27[1] = v26;
    sub_268CD0F7C();
    sub_268F9AC04("Intent does NOT require user confirmation: %@.", 46, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);

    MEMORY[0x277D82BD8](v43);
    sub_268DD57B4();

    v71 = 0;
    return v71 & 1;
  }

  v90 = v41;
  v38 = v116[8];

  v88 = v38(v12);
  v89 = v13 & 1;

  if (v89)
  {

    v36 = sub_268E12F10();

    v37 = v36;
  }

  else
  {
    v37 = v88;
  }

  v87 = v37;
  if (v41 >= v37)
  {
    v32 = *(v80 + 16);
    MEMORY[0x277D82BE0](v32);
    v31 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v30 = v16;

    v30[1]._object = MEMORY[0x277D837D0];
    v30[2]._countAndFlagsBits = sub_268CDD224();
    *v30 = v77;
    sub_268CD0F7C();
    sub_268F9AC04("Providing no confirmation because %@ has already been served the maximum amount of confirmations.", 97, 2, &dword_268CBE000, v32, v31);

    MEMORY[0x277D82BD8](v32);
    goto LABEL_56;
  }

  result = MEMORY[0x277D82BE0](v43);
  if (!v43)
  {
LABEL_53:
    v34 = *(v80 + 16);
    MEMORY[0x277D82BE0](v34);
    v33 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Providing confirmation.", 23, 2, &dword_268CBE000, v34, v33);

    MEMORY[0x277D82BD8](v34);

    MEMORY[0x277D82BD8](v43);
    sub_268DD57B4();

    v71 = 1;
    return v71 & 1;
  }

  if (!__OFADD__(v41, 1))
  {

    v35 = sub_268F9AE14();

    [v43 setInteger:v41 + 1 forKey:v35];
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v43);
    goto LABEL_53;
  }

  __break(1u);
  return result;
}

uint64_t sub_268F26B04(void *a1, uint64_t a2)
{
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v30 = a1;
  v29 = a2;
  v20 = [a1 settingMetadata];
  if (v20)
  {
    v15 = [v20 settingId];
    v16._countAndFlagsBits = sub_268F9AE24();
    v16._object = v2;
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v15);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v17._object)
  {
    goto LABEL_16;
  }

  v27 = v17;

  BinarySettingIdentifier.init(rawValue:)(v17);
  if (v26 == 65)
  {

LABEL_16:
    v8 = *(v19 + 16);
    MEMORY[0x277D82BE0](v8);
    v7 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Providing no confirmation due to missing metadata.", 50, 2, &dword_268CBE000, v8, v7);

    MEMORY[0x277D82BD8](v8);
    v10 = 0;
    return v10 & 1;
  }

  v25 = v26;
  sub_268CDE730(v19 + 40, v22);
  v14 = v23;
  v13 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v3 = (*(v13 + 40))(v14);
  if (v3)
  {
    sub_268F9B734();
    *v4 = 35;
    v4[1] = 36;
    sub_268CD0F7C();
    v21 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
    sub_268D28B4C();
    sub_268D288C8();
    v11 = sub_268F9AFC4();
    sub_268CD7930(&v21);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  if (v12)
  {
    v9 = sub_268F26E9C(a1);

    v10 = v9;
  }

  else
  {

    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_268F26E9C(uint64_t a1)
{
  sub_268D35434();

  v14 = sub_268D370FC();

  if (v14)
  {
    MEMORY[0x277D82BE0](a1);
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      MEMORY[0x277D82BD8](a1);
      v10 = 0;
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v10);
      sub_268D35434();

      v9 = sub_268D36960();

      if (v9)
      {
        v8 = 1;
      }

      else
      {
        sub_268D35434();

        v7 = sub_268D38D64();

        v8 = v7 ^ 1;
      }

      v12 = v8;
    }

    else
    {
      MEMORY[0x277D82BE0](a1);
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v5 = v6;
      }

      else
      {
        MEMORY[0x277D82BD8](a1);
        v5 = 0;
      }

      if (v5)
      {
        MEMORY[0x277D82BD8](v5);
        sub_268D35434();

        v4 = sub_268D36D3C();

        if (v4)
        {
          sub_268D35434();

          v2 = sub_268D36DD0();

          v3 = v2 ^ 1;
        }

        else
        {
          v3 = 0;
        }

        v12 = v3;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t ConfirmationUtil.deinit()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v2;
}

uint64_t sub_268F271E0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);

  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 41) = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  result = a2;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  return result;
}

unint64_t sub_268F272C0()
{
  v2 = qword_2802DE350;
  if (!qword_2802DE350)
  {
    type metadata accessor for INBoundedSettingValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE350);
    return WitnessTable;
  }

  return v2;
}

id sub_268F2736C(uint64_t a1)
{
  v16 = 0;
  v17 = 0;
  v19 = a1;
  v18 = a1;
  v1 = sub_268D2E630();
  v12 = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INGetSettingIntent);
  v13 = v2;
  if (!v2)
  {
    return 0;
  }

  v16 = v12;
  v17 = v2;
  sub_268F2BDEC();

  v14[0] = v12;
  v14[1] = v13;
  sub_268F9ADC4();
  sub_268CD9D30(v14);
  v10 = v14[2];
  v11 = v15;
  if (!v15)
  {

    return 0;
  }

  sub_268F276D4();

  v8 = sub_268F9AE14();

  v9 = INIntentCreate();
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BE0](v9);
  if (v9)
  {
    sub_268F2BF24();

    v7 = sub_268F9AE14();

    [v9 _setExtensionBundleId_];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BE0](v9);
  if (v9)
  {
    sub_268F2BE4C();

    v6 = sub_268F2FC84(v10, v11, v12, v13);
    sub_268F9AEF4();
    v5 = sub_268F9AE14();

    [v9 setValue:v6 forKey:v5];
    MEMORY[0x277D82BD8](v5);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v9);
  }

  return v9;
}

uint64_t *sub_268F276D4()
{
  if (qword_2802DB800 != -1)
  {
    swift_once();
  }

  return &qword_2802F16A0;
}

id sub_268F27734(void *a1)
{
  v22 = 0;
  v23 = 0;
  v25 = a1;
  v24 = a1;
  v1 = sub_268CD7620();
  v18 = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetBinarySettingIntent);
  v19 = v2;
  if (!v2)
  {
    return 0;
  }

  v22 = v18;
  v23 = v2;
  sub_268F2BDEC();

  v20[0] = v18;
  v20[1] = v19;
  sub_268F9ADC4();
  sub_268CD9D30(v20);
  v15 = v20[2];
  v16 = v21;
  if (!v21)
  {

    return 0;
  }

  sub_268F2C048();

  v13 = sub_268F9AE14();

  v14 = INIntentCreate();
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BE0](v14);
  if (v14)
  {
    sub_268F2BF24();

    v12 = sub_268F9AE14();

    [v14 _setExtensionBundleId_];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BE0](v14);
  if (v14)
  {
    sub_268F2BE4C();

    v11 = sub_268F2FC84(v15, v16, v18, v19);
    sub_268F9AEF4();
    v10 = sub_268F9AE14();

    [v14 setValue:v11 forKey:v10];
    MEMORY[0x277D82BD8](v10);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BE0](v14);
  if (v14)
  {
    [a1 binaryValue];
    type metadata accessor for INBinarySettingValue(0);
    sub_268CD925C();
    if (sub_268F9B754())
    {
      sub_268D34FD4();
      v9 = sub_268F2B5E0(1);
    }

    else
    {
      [a1 binaryValue];
      if (sub_268F9B754())
      {
        sub_268D34FD4();
        v8 = sub_268F2B5E0(2);
      }

      else
      {
        sub_268D34FD4();
        v8 = sub_268F2B5E0(3);
      }

      v9 = v8;
    }

    sub_268F9AEF4();
    v7 = sub_268F9AE14();

    [v14 setValue:v9 forKey:v7];
    MEMORY[0x277D82BD8](v7);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BE0](v14);
  if (v14)
  {
    v6 = sub_268F9B0A4();
    sub_268F9AEF4();
    v5 = sub_268F9AE14();

    [v14 setValue:v6 forKey:v5];
    MEMORY[0x277D82BD8](v5);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v14);
  }

  return v14;
}

uint64_t sub_268F27D28()
{
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v61 = 0;
  v49 = (*(*(sub_268F99D44() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0, v1, v2);
  v50 = &v40 - v49;
  v51 = (*(*(sub_268F99CF4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61, v3, v4, v5);
  v52 = &v40 - v51;
  v53 = sub_268F99E34();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (v54[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61, v6, v7, v8);
  v57 = &v40 - v56;
  v85 = &v40 - v56;
  v58 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11, v12, v13);
  v59 = &v40 - v58;
  v84 = &v40 - v58;
  v60 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  v73 = &v40 - v60;
  v83 = &v40 - v60;
  v62 = (*(*(sub_268F99CD4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61, v19, v20, v21);
  v69 = &v40 - v62;
  v76 = sub_268F99DE4();
  v74 = *(v76 - 8);
  v75 = v76 - 8;
  v63 = (v74[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76, v22, v23, v24);
  v64 = &v40 - v63;
  v65 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v40 - v63, v26, v27, v28);
  v66 = &v40 - v65;
  v67 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v40 - v65, v30, v31, v32);
  v79 = &v40 - v67;
  v68 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v40 - v67, v34, v35, v36);
  v70 = &v40 - v68;
  v82 = &v40 - v68;
  sub_268F99DD4();
  sub_268F99CC4();
  sub_268F99DA4();
  v71 = v74[2];
  v72 = v74 + 2;
  v71(v79, v70, v76);
  sub_268F325B4(v79, v73);
  v77 = v74[1];
  v78 = v74 + 1;
  v77(v79, v76);
  v81 = v79;
  sub_268F99DD4();
  sub_268F99CE4();
  sub_268F99DB4();
  v71(v66, v79, v76);
  sub_268F325B4(v66, v59);
  v77(v66, v76);
  v80 = v66;
  sub_268F99DD4();
  sub_268F99D34();
  sub_268F99DC4();
  v71(v64, v66, v76);
  sub_268F325B4(v64, v57);
  v77(v64, v76);
  v45 = sub_268F9B734();
  v42 = v37;
  v44 = v54[2];
  v43 = v54 + 2;
  v44();
  v41 = v54[9];
  (v44)(v42 + v41, v59, v53);
  (v44)(v42 + 2 * v41, v57, v53);
  sub_268CD0F7C();
  v48 = v38;
  v47 = v54[1];
  v46 = v54 + 1;
  v47(v57, v53);
  v77(v66, v76);
  v47(v59, v53);
  v77(v79, v76);
  v47(v73, v53);
  v77(v70, v76);
  return v48;
}

uint64_t *sub_268F2842C()
{
  if (qword_2802DB830 != -1)
  {
    swift_once();
  }

  return &qword_2802F16E0;
}

uint64_t *sub_268F2848C()
{
  if (qword_280FE5948 != -1)
  {
    swift_once();
  }

  return &qword_280FE8270;
}

id sub_268F284EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  v26 = a1;
  v27 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;

  v19 = a1;
  v20 = a2;
  if (a2)
  {
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v21 = sub_268F9AEF4();
    v22 = v5;
  }

  v8 = v21;
  v9 = v22;
  v17 = v21;
  v18 = v22;
  sub_268D291D4();
  MEMORY[0x277D82BE0](a5);
  v15 = a5;
  if (a5)
  {
    v16 = v15;
  }

  else
  {
    v16 = sub_268F2CB30(a3);
  }

  v7 = v16;
  MEMORY[0x277D82BE0](a4);
  return sub_268F2B620(v8, v9, v7, a4);
}

id sub_268F28680(uint64_t a1, unsigned int a2)
{
  v17 = a1;
  v18 = a2;
  v29 = 0;
  v28 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE368, &unk_268FAA5B0);
  v19 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v18, v4, v5);
  v20 = &v10 - v19;
  v29 = a1;
  v28 = v6 & 1;
  if (sub_268E490CC())
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = sub_268E461E4();
    v16 = v7;
  }

  v24 = v15;
  v25 = v16;
  if (v16)
  {
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = sub_268F9AEF4();
    v27 = v8;
    if (v25)
    {
      sub_268CD9D30(&v24);
    }
  }

  v14 = sub_268E460CC(v26, v27);
  v22 = v14;
  v23 = 0;
  if (v14)
  {
    v13 = 0;
  }

  else
  {
    v21 = v14;
    sub_268E4A500();
    v13 = sub_268F9AE04();
  }

  if (v13)
  {
    return sub_268F2D9F0();
  }

  sub_268E49064();
  v11 = sub_268F2DFA4(v20);
  sub_268F32884(v20);
  return v11;
}

BOOL sub_268F288D0(uint64_t a1, uint64_t a2)
{
  v8[4] = a1;
  v8[5] = a2;
  sub_268F2BDEC();

  v8[0] = a1;
  v8[1] = a2;
  sub_268F9ADC4();
  sub_268CD9D30(v8);
  v5 = v8[2];
  v6 = v8[3];

  v7[0] = v5;
  v7[1] = v6;
  sub_268CD9D30(v7);
  return v6 != 0;
}

uint64_t sub_268F289C0(double a1)
{
  v38 = 0;
  v37 = 0;
  v19 = 0;
  v30 = sub_268F99E34();
  v28 = *(v30 - 8);
  v29 = v30 - 8;
  v18 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v31 = &v17 - v18;
  v38 = &v17 - v18;
  v20 = (*(*(sub_268F99CD4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4, v5, v6);
  v23 = &v17 - v20;
  v33 = sub_268F99DE4();
  v24 = *(v33 - 8);
  v25 = v33 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33, v7, v8, v9);
  v26 = &v17 - v21;
  v22 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v21, v11, v12, v13);
  v32 = &v17 - v22;
  v37 = &v17 - v22;
  sub_268F99DD4();
  sub_268F99CC4();
  sub_268F99DA4();
  (*(v24 + 16))(v26, v32, v33);
  sub_268F325B4(v26, v31);
  v35 = *(v24 + 8);
  v34 = v24 + 8;
  v35(v26, v33);
  v27 = sub_268F9B734();
  (*(v28 + 16))(v14, v31, v30);
  sub_268CD0F7C();
  v36 = v15;
  (*(v28 + 8))(v31, v30);
  v35(v32, v33);
  return v36;
}

uint64_t sub_268F28C88(uint64_t a1, uint64_t a2)
{
  v5[1] = a1;
  v5[2] = a2;
  v3 = *sub_268F2C54C();

  v5[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD7930(v5);
  return v4 & 1;
}

id sub_268F28D48(uint64_t a1)
{
  v56 = a1;
  v52 = "ConverterUtils | Attempting to convert user entity: %@.";
  v41 = sub_268F2D5DC;
  v42 = "ConverterUtils | Could not determine target device from user entity.";
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v43 = 0;
  v44 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56, v1, v2, v3);
  v45 = &v16 - v44;
  v61 = v4;
  v53 = sub_268F9B284();
  v55 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v55);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v51 = sub_268F9B734();
  v49 = v5;

  v46 = &v60;
  v60 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE370, &unk_268FAA5C0);
  v47 = sub_268F9AE64();
  v48 = v6;
  v49[3] = MEMORY[0x277D837D0];
  v7 = sub_268CDD224();
  v8 = v47;
  v9 = v48;
  v10 = v49;
  v49[4] = v7;
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  v54 = v11;
  sub_268F9AC14(v53, &dword_268CBE000, v55, v52, 55, 2);

  MEMORY[0x277D82BD8](v55);

  if (!v56)
  {
    goto LABEL_13;
  }

  v40 = v56;
  v38 = v56;
  sub_268F9AEF4();
  v37 = v12;
  v39 = sub_268F9A0A4();

  if (!v39)
  {
    goto LABEL_13;
  }

  v36 = v39;
  v13 = v43;
  v57 = v39;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (v13)
  {
    __break(1u);
    return result;
  }

  sub_268CD7930(&v57);
  v32 = sub_268F99F64();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v45, 1) == 1)
  {
    sub_268D9C0BC(v45);
LABEL_13:
    v30 = 0;
    v31 = 0;
    goto LABEL_11;
  }

  v28 = sub_268F99F44();
  v29 = v15;
  (*(v33 + 8))(v45, v32);
  v30 = v28;
  v31 = v29;
LABEL_11:
  v26 = v31;
  v27 = v30;
  if (v31)
  {
    v24 = v27;
    v25 = v26;
    v21 = v26;
    v20 = v27;
    v58 = v27;
    v59 = v26;

    v22 = sub_268F2B6D8(v20, v21);

    return v22;
  }

  else
  {
    HIDWORD(v16) = sub_268F9B284();
    v18 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v18);
    v19 = 0;
    v17 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v16), &dword_268CBE000, v18, v42, 68, 2);

    MEMORY[0x277D82BD8](v18);
    return v19;
  }
}

id sub_268F29294(uint64_t a1)
{
  v43 = a1;
  v39 = "ConverterUtils | Attempting to convert device category: %@.";
  v46 = 0;
  v31 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, v1, v2, v3);
  v32 = &v15 - v31;
  v46 = v4;
  v40 = sub_268F9B284();
  v42 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v42);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v38 = sub_268F9B734();
  v36 = v5;

  v33 = &v45;
  v45 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE378, &unk_268FAA5D0);
  v34 = sub_268F9AE64();
  v35 = v6;
  v36[3] = MEMORY[0x277D837D0];
  v7 = sub_268CDD224();
  v8 = v34;
  v9 = v35;
  v10 = v36;
  v36[4] = v7;
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  v41 = v11;
  sub_268F9AC14(v40, &dword_268CBE000, v42, v39, 59, 2);

  MEMORY[0x277D82BD8](v42);

  if (!v43)
  {
    goto LABEL_11;
  }

  v30 = v43;
  v28 = v43;
  sub_268F9AEF4();
  v27 = v12;
  v29 = sub_268F9A0A4();

  if (!v29)
  {
    goto LABEL_11;
  }

  v26 = v29;
  v22 = v29;
  v44 = v29;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268E30B2C();
  sub_268F9B234();

  v23 = sub_268F99F64();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  if ((*(v24 + 48))(v32, 1) == 1)
  {
    sub_268D9C0BC(v32);
LABEL_11:
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v17 = sub_268F99F44();
  v18 = v13;
  (*(v24 + 8))(v32, v23);
  v19 = v17;
  v20 = v18;
LABEL_10:
  v15 = v20;
  v16 = sub_268F2B6D8(v19, v20);

  return v16;
}

uint64_t sub_268F29620(uint64_t a1)
{
  v97 = a1;
  v85 = sub_268F3292C;
  v86 = "ConverterUtils | Enable setting task attributeName is %@";
  v87 = sub_268F3292C;
  v120 = 0;
  v113 = 0;
  v111 = 0;
  v109 = 0;
  v88 = 0;
  v104 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v89 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3, v4, v5);
  v90 = &v26 - v89;
  v91 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v26 - v89, v7, v8, v9);
  v92 = &v26 - v91;
  v120 = a1;
  v93 = *sub_268DDB7E8();

  v96 = &v119;
  v119 = v93;
  v10 = sub_268F9A6D4();
  v95 = v118;
  v118[0] = v10;
  v118[1] = v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v98 = sub_268F9AFC4();
  sub_268CD9D30(v95);
  sub_268CD7930(v96);

  if (v98)
  {
    v84 = 1;
  }

  else
  {
    v84 = sub_268F302C4();
  }

  v83 = v84;

  if (v83)
  {
    v82 = 1;
    return v82 & 1;
  }

  sub_268F9A204();

  if (v117[3])
  {
    sub_268F9A394();
    if (swift_dynamicCast())
    {
      v81 = v99;
    }

    else
    {
      v81 = 0;
    }

    v80 = v81;
  }

  else
  {
    sub_268D28414(v117);
    v80 = 0;
  }

  v79 = v80;
  if (!v80)
  {

    sub_268F9A204();

    if (v116[3])
    {
      sub_268F9A444();
      if (swift_dynamicCast())
      {
        v51 = v105;
      }

      else
      {
        v51 = 0;
      }

      v50 = v51;
    }

    else
    {
      sub_268D28414(v116);
      v50 = 0;
    }

    v49 = v50;
    if (!v50)
    {

      sub_268F9A204();

      if (v115[3])
      {
        sub_268F9A2A4();
        if (swift_dynamicCast())
        {
          v33 = v110;
        }

        else
        {
          v33 = 0;
        }

        v32 = v33;
      }

      else
      {
        sub_268D28414(v115);
        v32 = 0;
      }

      v31 = v32;
      if (v32)
      {
        v30 = v31;
        v111 = v31;

        v82 = 1;
      }

      else
      {

        sub_268F9A204();

        if (v114[3])
        {
          sub_268F9A2F4();
          if (swift_dynamicCast())
          {
            v29 = v112;
          }

          else
          {
            v29 = 0;
          }

          v28 = v29;
        }

        else
        {
          sub_268D28414(v114);
          v28 = 0;
        }

        v27 = v28;
        if (v28)
        {
          v26 = v27;
          v113 = v27;

          v82 = 1;
        }

        else
        {
          v82 = 0;
        }
      }

      return v82 & 1;
    }

    v48 = v49;
    v46 = v49;
    v109 = v49;

    sub_268F9A5C4();
    v47 = v106[1];

    if (v47)
    {
      v45 = v47;
      v43 = v47;
      v23 = sub_268DDA5D0();
      v41 = *v23;
      v42 = v23[1];

      v44 = sub_268F9A0A4();

      if (v44)
      {
        v40 = v44;
        v24 = v88;
        v106[0] = v44;
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v24)
        {
          goto LABEL_63;
        }

        sub_268CD7930(v106);
        v36 = sub_268F99F64();
        v37 = *(v36 - 8);
        v38 = v36 - 8;
        if ((*(v37 + 48))(v90, 1) != 1)
        {
          v34 = sub_268F99F44();
          v35 = v25;
          (*(v37 + 8))(v90, v36);
          v107 = v34;
          v108 = v35;
LABEL_41:
          sub_268CD9D30(&v107);

          v82 = 0;
          return v82 & 1;
        }

        sub_268D9C0BC(v90);
      }
    }

    v107 = 0;
    v108 = 0;
    goto LABEL_41;
  }

  v78 = v79;
  v76 = v79;
  v104 = v79;

  sub_268F9A5C4();
  v77 = v101[2];

  if (!v77)
  {
    goto LABEL_23;
  }

  v75 = v77;
  v73 = v77;
  v12 = sub_268DDA5D0();
  v71 = *v12;
  v72 = v12[1];

  v74 = sub_268F9A0A4();

  if (!v74)
  {
    goto LABEL_23;
  }

  v70 = v74;
  v13 = v88;
  v100 = v74;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v13)
  {
    sub_268CD7930(&v100);
    v66 = sub_268F99F64();
    v67 = *(v66 - 8);
    v68 = v66 - 8;
    if ((*(v67 + 48))(v92, 1) != 1)
    {
      v64 = sub_268F99F44();
      v65 = v15;
      (*(v67 + 8))(v92, v66);
      v102 = v64;
      v103 = v65;
LABEL_22:
      v60 = sub_268F9B284();
      v62 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v62);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v59 = sub_268F9B734();
      v57 = v16;
      v63 = &v102;
      v52 = v102;
      v53 = v103;

      v54 = v101;
      v101[0] = v52;
      v101[1] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
      v55 = sub_268F9AE64();
      v56 = v17;
      v57[3] = MEMORY[0x277D837D0];
      v18 = sub_268CDD224();
      v19 = v55;
      v20 = v56;
      v21 = v57;
      v57[4] = v18;
      *v21 = v19;
      v21[1] = v20;
      sub_268CD0F7C();
      v61 = v22;
      sub_268F9AC14(v60, &dword_268CBE000, v62, v86, 56, 2);

      MEMORY[0x277D82BD8](v62);
      sub_268CD9D30(v63);

      v82 = 0;
      return v82 & 1;
    }

    sub_268D9C0BC(v92);
LABEL_23:
    v102 = 0;
    v103 = 0;
    goto LABEL_22;
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_268F2A01C(uint64_t a1)
{
  v75 = a1;
  v69 = sub_268F329F8;
  v87 = 0;
  v83 = 0;
  v70 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v71 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v72 = &v25 - v71;
  v73 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE380, &unk_268FAA5E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75, v5, v6, v7);
  v74 = &v25 - v73;
  v87 = v8;

  sub_268F9A204();

  if (v86[3])
  {
    sub_268F9A524();
    if (swift_dynamicCast())
    {
      v68 = v76;
    }

    else
    {
      v68 = 0;
    }

    v67 = v68;
  }

  else
  {
    sub_268D28414(v86);
    v67 = 0;
  }

  v66 = v67;
  if (!v67)
  {
    v26 = *sub_268DDB148();

    v29 = &v85;
    v85 = v26;
    v23 = sub_268F9A6D4();
    v28 = v84;
    v84[0] = v23;
    v84[1] = v24;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268DA6BFC();
    v30 = sub_268F9AFC4();
    sub_268CD9D30(v28);
    sub_268CD7930(v29);
    v55 = v30;
    return v55 & 1;
  }

  v65 = v66;
  v63 = v66;
  v83 = v66;

  sub_268F9A324();
  v64 = v82;

  if (v64 && (v62 = v64, v60 = v64, v61 = sub_268F9A074(), , v61))
  {
    v59 = v61;
    v58 = v61;
    sub_268F9A334();
  }

  else
  {
    v10 = sub_268F9A344();
    (*(*(v10 - 8) + 56))(v74, 1);
  }

  v9 = sub_268F9A344();
  v57 = (*(*(v9 - 8) + 48))(v74, 1) != 1;
  v56 = v57;
  sub_268F32950(v74);
  if (v56)
  {

    v55 = 1;
    return v55 & 1;
  }

  sub_268F9A324();
  v54 = v79[1];

  if (!v54)
  {
    goto LABEL_27;
  }

  v53 = v54;
  v51 = v54;
  v11 = sub_268DDA5D0();
  v49 = *v11;
  v50 = v11[1];

  v52 = sub_268F9A0A4();

  if (!v52)
  {
    goto LABEL_27;
  }

  v48 = v52;
  v12 = v70;
  v77 = v52;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v12)
  {
    sub_268CD7930(&v77);
    v44 = sub_268F99F64();
    v45 = *(v44 - 8);
    v46 = v44 - 8;
    if ((*(v45 + 48))(v72, 1) != 1)
    {
      v42 = sub_268F99F44();
      v43 = v14;
      (*(v45 + 8))(v72, v44);
      v80 = v42;
      v81 = v43;
LABEL_26:
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
      v32 = sub_268F9B734();
      v31 = v15;
      v16 = sub_268EC63FC(0);
      v17 = v31;
      *v31 = v16;
      v17[1] = v18;
      v19 = sub_268EC63FC(1);
      v20 = v31;
      v31[2] = v19;
      v20[3] = v21;
      sub_268CD0F7C();
      v39 = v79;
      v79[0] = v22;
      v40 = &v80;
      v34 = v80;
      v35 = v81;

      v38 = v78;
      v78[0] = v34;
      v78[1] = v35;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF38, &unk_268FA2B18);
      v37 = sub_268E0FC34();
      sub_268E0FCBC();
      v41 = sub_268F9AFC4();
      sub_268CD9D30(v38);
      sub_268CD7930(v39);
      sub_268CD9D30(v40);

      v55 = v41;
      return v55 & 1;
    }

    sub_268D9C0BC(v72);
LABEL_27:
    v80 = 0;
    v81 = 0;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_268F2A84C(uint64_t a1)
{
  v65 = a1;
  v55 = sub_268D9C164;
  v56 = "ConverterUtils shouldConvertToOpenSettingIntentChatGPT | Verb is enable, using .chatGPTSetup instead";
  v78 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v71 = 0;
  v57 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v58 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v59 = &v20 - v58;
  v60 = sub_268F99F64();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65, v5, v6, v7);
  v64 = &v20 - v63;
  v78 = &v20 - v63;
  v77 = v8;

  sub_268F9A204();

  if (v76[3])
  {
    sub_268F9A394();
    if (swift_dynamicCast())
    {
      v54 = v66;
    }

    else
    {
      v54 = 0;
    }

    v53 = v54;
  }

  else
  {
    sub_268D28414(v76);
    v53 = 0;
  }

  v52 = v53;
  if (!v53)
  {
    goto LABEL_24;
  }

  v51 = v52;
  v49 = v52;
  v71 = v52;

  sub_268F9A5C4();
  v50 = v70;

  if (!v50 || (v48 = v50, v46 = v50, v9 = sub_268DDA5D0(), v44 = *v9, v45 = v9[1], , v47 = sub_268F9A0A4(), , , !v47))
  {
    (*(v61 + 56))(v59, 1, 1, v60);
LABEL_17:
    if ((*(v61 + 48))(v59, 1, v60) == 1)
    {
      sub_268D9C0BC(v59);
    }

    else
    {
      (*(v61 + 32))(v64, v59, v60);
      v38 = sub_268F99F44();
      v40 = v12;
      v69 = 55;
      v13 = BinarySettingIdentifier.rawValue.getter();
      v39 = v14;
      v41 = MEMORY[0x26D62DB50](v38, v40, v13);

      if (v41)
      {
        v31 = sub_268F9B284();
        v33 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v32 = sub_268F9B734();
        sub_268F9AC14(v31, &dword_268CBE000, v33, v56, 100, 2);

        MEMORY[0x277D82BD8](v33);
        v68 = 56;
        v34 = BinarySettingIdentifier.rawValue.getter();
        v35 = v15;
        (*(v61 + 8))(v64, v60);

        v36 = v34;
        v37 = v35;
        return v36;
      }

      (*(v61 + 8))(v64, v60);
    }

LABEL_24:
    v29 = sub_268F30590(v65);
    v30 = v16;
    if (v16)
    {
      v27 = v29;
      v28 = v30;
      v24 = v30;
      v23 = v29;
      v74 = v29;
      v75 = v30;
      v73 = 55;
      v17 = BinarySettingIdentifier.rawValue.getter();
      v25 = v18;
      v26 = MEMORY[0x26D62DB50](v23, v24, v17);

      if (v26)
      {
        v72 = 55;
        v21 = BinarySettingIdentifier.rawValue.getter();
        v22 = v19;

        v36 = v21;
        v37 = v22;
        return v36;
      }
    }

    v36 = 0;
    v37 = 0;
    return v36;
  }

  v43 = v47;
  v10 = v57;
  v67 = v47;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v10)
  {
    sub_268CD7930(&v67);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_268F2AFA8(uint64_t a1)
{
  v44 = a1;
  v67 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v45 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3, v4, v5);
  v46 = v11 - v45;
  v67 = a1;
  v47 = *sub_268DDB04C();

  v51 = &v66;
  v66 = v47;
  v6 = sub_268F9A6D4();
  v50 = v65;
  v65[0] = v6;
  v65[1] = v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  v49 = sub_268DA6BFC();
  v52 = sub_268F9AFC4();
  sub_268CD9D30(v50);
  sub_268CD7930(v51);
  if ((v52 & 1) == 0)
  {

    sub_268F9A204();

    if (v64[3])
    {
      sub_268F9A304();
      if (swift_dynamicCast())
      {
        v42 = v53;
      }

      else
      {
        v42 = 0;
      }

      v41 = v42;
    }

    else
    {
      sub_268D28414(v64);
      v41 = 0;
    }

    v40 = v41;
    v63 = v41;
    v62 = v41;
    v39 = v41 != 0;
    if (!v41)
    {
      goto LABEL_24;
    }

    if (v40)
    {
      v38 = v40;
      v36 = v40;
      sub_268F9A5C4();
      v37 = v55;

      if (v37)
      {
        v35 = v37;
        v33 = v37;
        v8 = sub_268DDA5D0();
        v31 = *v8;
        v32 = v8[1];

        v34 = sub_268F9A0A4();

        if (v34)
        {
          v30 = v34;
          v26 = v34;
          v54 = v34;
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268E30B2C();
          sub_268F9B234();

          v27 = sub_268F99F64();
          v28 = *(v27 - 8);
          v29 = v27 - 8;
          if ((*(v28 + 48))(v46, 1) != 1)
          {
            v21 = sub_268F99F44();
            v22 = v9;
            (*(v28 + 8))(v46, v27);
            v23 = v21;
            v24 = v22;
            goto LABEL_21;
          }

          sub_268D9C0BC(v46);
        }
      }
    }

    v23 = 0;
    v24 = 0;
LABEL_21:
    v19 = v24;
    v20 = v23;
    if (v24)
    {
      v17 = v20;
      v18 = v19;
      v15 = v19;
      v13 = v20;
      v60 = v20;
      v61 = v19;
      v11[0] = sub_268DDB650();
      v11[1] = &v59;
      swift_beginAccess();
      v12 = *v11[0];

      swift_endAccess();
      v14 = &v58;
      v58 = v12;
      v56 = v13;
      v57 = v15;
      v16 = sub_268F9AFC4();
      sub_268CD7930(v14);

      v43 = v16;
      return v43 & 1;
    }

LABEL_24:

    v43 = 0;
    return v43 & 1;
  }

  v43 = 1;
  return v43 & 1;
}

uint64_t *sub_268F2B678()
{
  if (qword_2802DB828 != -1)
  {
    swift_once();
  }

  return &qword_2802F16D8;
}

id sub_268F2B6D8(uint64_t a1, uint64_t a2)
{
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v28[2] = a1;
  v28[3] = a2;
  v28[0] = 0;
  v28[1] = 0;

  v26 = v25;
  if (*(&v25 + 1))
  {
    v27 = v26;
  }

  else
  {
    sub_268D28874(v28, &v27);
  }

  v24 = v27;
  if (*(&v27 + 1))
  {
    v21 = sub_268F9B284();
    v2 = sub_268DC7EA8();
    v22 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v20 = v3;

    *(v20 + 24) = MEMORY[0x277D837D0];
    *(v20 + 32) = sub_268CDD224();
    *v20 = v24;
    sub_268CD0F7C();
    sub_268F9AC14(v21, &dword_268CBE000, v22, "ConverterUtils | Determined target device type name: %@.", 56, 2);

    MEMORY[0x277D82BD8](v22);
    v23 = sub_268F2D8D4(v24, *(&v24 + 1));
    if (v4)
    {
      v13 = sub_268F9B284();
      v8 = sub_268DC7EA8();
      v14 = *v8;
      MEMORY[0x277D82BE0](*v8);
      sub_268F9B734();
      sub_268F9AC14(v13, &dword_268CBE000, v14, "ConverterUtils | Could not determine target device type for device category in device type name.", 96, 2);

      MEMORY[0x277D82BD8](v14);

      sub_268CD9D30(v28);
      return 0;
    }

    else
    {
      v16 = sub_268F9B284();
      v5 = sub_268DC7EA8();
      v17 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B734();
      v15 = v6;
      sub_268CD4334();
      v15[3] = MEMORY[0x277D83B88];
      v15[4] = MEMORY[0x277D83C10];
      *v15 = v7;
      sub_268CD0F7C();
      sub_268F9AC14(v16, &dword_268CBE000, v17, "ConverterUtils | Determined target device in INDeviceCategory: %d", 65, 2);

      MEMORY[0x277D82BD8](v17);
      sub_268E62B3C();
      v18 = sub_268F2D990(v24, *(&v24 + 1), 0, 0, v23);
      sub_268CD9D30(v28);
      return v18;
    }
  }

  else
  {
    v11 = sub_268F9B284();
    v9 = sub_268DC7EA8();
    v12 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v11, &dword_268CBE000, v12, "ConverterUtils | Could not determine target device from device type name.", 73, 2);

    MEMORY[0x277D82BD8](v12);
    sub_268CD9D30(v28);
    return 0;
  }
}

uint64_t sub_268F2BB3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE388, &qword_268FAA5F0);
  sub_268F9B734();
  v18 = v0;
  *v0 = BinarySettingIdentifier.rawValue.getter();
  v18[1] = v1;
  v18[2] = sub_268F9AEF4();
  v18[3] = v2;
  v18[4] = BinarySettingIdentifier.rawValue.getter();
  v18[5] = v3;
  v18[6] = sub_268F9AEF4();
  v18[7] = v4;
  v18[8] = BinarySettingIdentifier.rawValue.getter();
  v18[9] = v5;
  v18[10] = sub_268F9AEF4();
  v18[11] = v6;
  v18[12] = BinarySettingIdentifier.rawValue.getter();
  v18[13] = v7;
  v18[14] = sub_268F9AEF4();
  v18[15] = v8;
  v18[16] = BinarySettingIdentifier.rawValue.getter();
  v18[17] = v9;
  v18[18] = sub_268F9AEF4();
  v18[19] = v10;
  v18[20] = BinarySettingIdentifier.rawValue.getter();
  v18[21] = v11;
  v18[22] = sub_268F9AEF4();
  v18[23] = v12;
  v18[24] = BinarySettingIdentifier.rawValue.getter();
  v18[25] = v13;
  v18[26] = sub_268F9AEF4();
  v18[27] = v14;
  v18[28] = BinarySettingIdentifier.rawValue.getter();
  v18[29] = v15;
  v18[30] = sub_268F9AEF4();
  v18[31] = v16;
  sub_268CD0F7C();
  result = sub_268F9ADA4();
  qword_2802F1688 = result;
  return result;
}

uint64_t *sub_268F2BDEC()
{
  if (qword_2802DB7F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1688;
}

unint64_t sub_268F2BE4C()
{
  v2 = qword_2802DE360;
  if (!qword_2802DE360)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DE360);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268F2BEB0()
{
  v1 = *sub_268F2BDEC();

  return v1;
}

uint64_t sub_268F2BEE0()
{
  result = sub_268F9AEF4();
  qword_2802F1690 = result;
  qword_2802F1698 = v1;
  return result;
}

uint64_t *sub_268F2BF24()
{
  if (qword_2802DB7F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1690;
}

uint64_t sub_268F2BF84()
{
  v1 = *sub_268F2BF24();

  return v1;
}

uint64_t sub_268F2BFC0()
{
  result = sub_268F9AEF4();
  qword_2802F16A0 = result;
  qword_2802F16A8 = v1;
  return result;
}

uint64_t sub_268F2C004()
{
  result = sub_268F9AEF4();
  qword_2802F16B0 = result;
  qword_2802F16B8 = v1;
  return result;
}

uint64_t *sub_268F2C048()
{
  if (qword_2802DB808 != -1)
  {
    swift_once();
  }

  return &qword_2802F16B0;
}

uint64_t sub_268F2C0A8()
{
  v1 = *sub_268F2C048();

  return v1;
}

uint64_t sub_268F2C0E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE390, &qword_268FAA5F8);
  sub_268F9B734();
  v18 = v0;
  *v0 = sub_268E42B68(0);
  v18[1] = v1;
  v18[2] = 1;
  v18[3] = sub_268E42B68(1);
  v18[4] = v2;
  v18[5] = 1;
  v18[6] = sub_268E42B68(2);
  v18[7] = v3;
  v18[8] = 9;
  v18[9] = sub_268E42B68(4);
  v18[10] = v4;
  v18[11] = 9;
  v18[12] = sub_268E42B68(5);
  v18[13] = v5;
  v18[14] = 9;
  v18[15] = sub_268E42B68(6);
  v18[16] = v6;
  v18[17] = 10;
  v18[18] = sub_268E42B68(13);
  v18[19] = v7;
  v18[20] = 9;
  v18[21] = sub_268E42B68(12);
  v18[22] = v8;
  v18[23] = 8;
  v18[24] = sub_268E42B68(9);
  v18[25] = v9;
  v18[26] = 13;
  v18[27] = sub_268E42B68(8);
  v18[28] = v10;
  v18[29] = 11;
  v18[30] = sub_268E42B68(10);
  v18[31] = v11;
  v18[32] = 12;
  v18[33] = sub_268E42B68(11);
  v18[34] = v12;
  v18[35] = 14;
  v18[36] = sub_268E42B68(3);
  v18[37] = v13;
  v18[38] = 3;
  v18[39] = sub_268E42B68(14);
  v18[40] = v14;
  v18[41] = 10;
  v18[42] = sub_268E42B68(15);
  v18[43] = v15;
  v18[44] = 7;
  v18[45] = sub_268E42B68(7);
  v18[46] = v16;
  v18[47] = 6;
  sub_268CD0F7C();
  type metadata accessor for INDeviceCategory(0);
  result = sub_268F9ADA4();
  qword_280FE8268 = result;
  return result;
}

uint64_t *sub_268F2C37C()
{
  if (qword_280FE5940 != -1)
  {
    swift_once();
  }

  return &qword_280FE8268;
}

uint64_t sub_268F2C3DC()
{
  v1 = *sub_268F2C37C();

  return v1;
}

void sub_268F2C40C()
{
  sub_268F9B734();
  v10 = v0;
  *v0 = BinarySettingIdentifier.rawValue.getter();
  v10[1] = v1;
  v10[2] = BinarySettingIdentifier.rawValue.getter();
  v10[3] = v2;
  v10[4] = BinarySettingIdentifier.rawValue.getter();
  v10[5] = v3;
  v10[6] = BinarySettingIdentifier.rawValue.getter();
  v10[7] = v4;
  v10[8] = BinarySettingIdentifier.rawValue.getter();
  v10[9] = v5;
  v10[10] = BinarySettingIdentifier.rawValue.getter();
  v10[11] = v6;
  v10[12] = BinarySettingIdentifier.rawValue.getter();
  v10[13] = v7;
  v10[14] = BinarySettingIdentifier.rawValue.getter();
  v10[15] = v8;
  sub_268CD0F7C();
  qword_2802F16C0 = v9;
}

uint64_t *sub_268F2C54C()
{
  if (qword_2802DB818 != -1)
  {
    swift_once();
  }

  return &qword_2802F16C0;
}

uint64_t sub_268F2C5AC()
{
  v1 = *sub_268F2C54C();

  return v1;
}

uint64_t sub_268F2C5DC()
{
  result = sub_268F9AEF4();
  qword_280FE8278 = result;
  qword_280FE8280 = v1;
  return result;
}

uint64_t *sub_268F2C620()
{
  if (qword_280FE5950 != -1)
  {
    swift_once();
  }

  return &qword_280FE8278;
}

uint64_t sub_268F2C680()
{
  v1 = *sub_268F2C620();

  return v1;
}

void sub_268F2C6BC()
{
  sub_268F9B734();
  v8 = v0;
  *v0 = sub_268F9AEF4();
  v8[1] = v1;
  v8[2] = sub_268F9AEF4();
  v8[3] = v2;
  v3 = sub_268F2C620();
  sub_268D28874(v3, v8 + 4);
  v8[6] = sub_268F9AEF4();
  v8[7] = v4;
  v8[8] = sub_268F9AEF4();
  v8[9] = v5;
  v8[10] = sub_268F9AEF4();
  v8[11] = v6;
  sub_268CD0F7C();
  qword_280FE8270 = v7;
}

uint64_t sub_268F2C7F4()
{
  v1 = *sub_268F2848C();

  return v1;
}

uint64_t sub_268F2C824()
{
  result = sub_268F9AEF4();
  qword_2802F16C8 = result;
  qword_2802F16D0 = v1;
  return result;
}

uint64_t *sub_268F2C868()
{
  if (qword_2802DB820 != -1)
  {
    swift_once();
  }

  return &qword_2802F16C8;
}

uint64_t sub_268F2C8C8()
{
  v1 = *sub_268F2C868();

  return v1;
}

void sub_268F2C904()
{
  sub_268F9B734();
  v3 = v0;
  *v0 = sub_268F9AEF4();
  v3[1] = v1;
  sub_268CD0F7C();
  qword_2802F16D8 = v2;
}

uint64_t sub_268F2C984()
{
  v1 = *sub_268F2B678();

  return v1;
}

uint64_t sub_268F2C9B4()
{
  result = sub_268F9AEF4();
  qword_2802F16E0 = result;
  qword_2802F16E8 = v1;
  return result;
}

uint64_t sub_268F2C9F8()
{
  v1 = *sub_268F2842C();

  return v1;
}

void sub_268F2CA34()
{
  sub_268F9B734();
  v4 = v0;
  v1 = sub_268D8E300();
  sub_268D28874(v1, v4);
  v2 = sub_268D8E3E0();
  sub_268D28874(v2, v4 + 2);
  sub_268CD0F7C();
  qword_2802F16F0 = v3;
}

uint64_t *sub_268F2CAA0()
{
  if (qword_2802DB838 != -1)
  {
    swift_once();
  }

  return &qword_2802F16F0;
}

uint64_t sub_268F2CB00()
{
  v1 = *sub_268F2CAA0();

  return v1;
}

id sub_268F2CB30(void *a1)
{
  v79 = a1;
  v74 = "ConverterUtils | Determined connected HEADPHONES device";
  v75 = "ConverterUtils | Determined connected CARPLAY device";
  v76 = "ConverterUtils | DEVICE STATE UNAVAILABLE.";
  v77 = "ConverterUtils | Determined sidekick experience.";
  v78 = "ConverterUtils | NOT A SIDEKICK experience: %@";
  v100 = 0;
  v87 = 0;
  v80 = sub_268F9A794();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (v81[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79, v1, v2, v3);
  v84 = &v23 - v83;
  v85 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, &v23 - v83, v6, v7);
  v86 = &v23 - v85;
  v100 = v8;
  v98 = 0;
  v99 = 0;
  sub_268D35D60(v8, v94);
  if (v94[3])
  {
    p_dst = &__dst;
    sub_268CDF978(v94, &__dst);
    v73 = v96;
    v72 = v97;
    __swift_project_boxed_opaque_existential_1(p_dst, v96);
    if (sub_268F997F4())
    {
      v98 = sub_268F9AEF4();
      v99 = v9;

      v68 = sub_268F9B2A4();
      v70 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v69 = sub_268F9B734();
      sub_268F9AC14(v68, &dword_268CBE000, v70, v75, 52, 2);

      MEMORY[0x277D82BD8](v70);
    }

    else
    {
      v61 = v96;
      v60 = v97;
      __swift_project_boxed_opaque_existential_1(&__dst, v96);
      sub_268F99794();
      v10 = *MEMORY[0x277D61C90];
      v62 = v81[13];
      v63 = v81 + 13;
      v62(v84, v10, v80);
      v64 = sub_268D2BDDC();
      v67 = sub_268F9B754();
      v66 = v81[1];
      v65 = v81 + 1;
      v66(v84, v80);
      v66(v86, v80);
      if (v67)
      {
        v59 = 1;
      }

      else
      {
        v57 = v96;
        v56 = v97;
        __swift_project_boxed_opaque_existential_1(&__dst, v96);
        sub_268F99794();
        v62(v84, *MEMORY[0x277D61CA0], v80);
        v58 = sub_268F9B754();
        v66(v84, v80);
        v66(v86, v80);
        v59 = v58;
      }

      if (v59)
      {
        v98 = sub_268F9AEF4();
        v99 = v11;

        v53 = sub_268F9B2A4();
        v55 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v54 = sub_268F9B734();
        sub_268F9AC14(v53, &dword_268CBE000, v55, v74, 55, 2);

        MEMORY[0x277D82BD8](v55);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&__dst);
  }

  else
  {
    sub_268D28414(v94);
    v50 = sub_268F9B2A4();
    v52 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v51 = sub_268F9B734();
    sub_268F9AC14(v50, &dword_268CBE000, v52, v76, 42, 2);

    MEMORY[0x277D82BD8](v52);
  }

  v92 = 0;
  v93 = 0;
  sub_268D35D60(v79, &v89);
  if (v90)
  {
    v47 = &v89;
    v46 = v90;
    v45 = v91;
    __swift_project_boxed_opaque_existential_1(&v89, v90);
    v48 = sub_268F99774();
    __swift_destroy_boxed_opaque_existential_0(v47);
    v49 = v48 & 1;
  }

  else
  {
    sub_268D28414(&v89);
    v49 = 2;
  }

  v44 = v49;
  if (v49 == 2 || (v43 = v44, v87 = v43 & 1, (v43 & 1) == 0))
  {
    v37 = sub_268F9B284();
    v39 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v39);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v36 = sub_268F9B734();
    v34 = v13;
    v31 = &v88;
    sub_268D35D60(v79, &v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE398, &unk_268FAA600);
    v32 = sub_268F9AE64();
    v33 = v14;
    v34[3] = MEMORY[0x277D837D0];
    v15 = sub_268CDD224();
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v34[4] = v15;
    *v18 = v16;
    v18[1] = v17;
    sub_268CD0F7C();
    v38 = v19;
    sub_268F9AC14(v37, &dword_268CBE000, v39, v78, 46, 2);

    MEMORY[0x277D82BD8](v39);
  }

  else
  {
    v92 = sub_268F9AEF4();
    v93 = v12;

    v40 = sub_268F9B284();
    v42 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v41 = sub_268F9B734();
    sub_268F9AC14(v40, &dword_268CBE000, v42, v77, 48, 2);

    MEMORY[0x277D82BD8](v42);
  }

  sub_268E62B3C();
  v29 = &v98;
  v26 = v98;
  v27 = v99;

  v28 = &v92;
  v24 = v92;
  v25 = v93;

  v20 = sub_268DB4108();
  v30 = sub_268E3D824(v26, v27, v24, v25, v20, v21 & 1);
  sub_268CD9D30(v28);
  sub_268CD9D30(v29);
  return v30;
}

uint64_t sub_268F2D5DC(uint64_t a1)
{
  v29 = a1;
  v16 = sub_268F99F54();
  v17 = v1;

  v15 = sub_268F9AEF4();
  v18 = v2;

  v27[0] = v16;
  v27[1] = v17;
  *&v28 = v15;
  *(&v28 + 1) = v18;
  if (v17)
  {
    sub_268D28874(v27, &v21);
    if (*(&v28 + 1))
    {
      v20 = v21;
      v19 = v28;
      v13 = MEMORY[0x26D62DB50](v21, *(&v21 + 1), v28, *(&v28 + 1));
      sub_268CD9D30(&v19);
      sub_268CD9D30(&v20);
      sub_268CD9D30(v27);
      v14 = v13;
      goto LABEL_7;
    }

    sub_268CD9D30(&v21);
    goto LABEL_9;
  }

  if (*(&v28 + 1))
  {
LABEL_9:
    sub_268D28550(v27);
    v14 = 0;
    goto LABEL_7;
  }

  sub_268CD9D30(v27);
  v14 = 1;
LABEL_7:

  if ((v14 & 1) == 0)
  {
    v9 = sub_268F99F54();
    v10 = v3;

    v8 = sub_268F9AEF4();
    v11 = v4;

    v25[0] = v9;
    v25[1] = v10;
    *&v26 = v8;
    *(&v26 + 1) = v11;
    if (v10)
    {
      sub_268D28874(v25, &v24);
      if (*(&v26 + 1))
      {
        v23 = v24;
        v22 = v26;
        v6 = MEMORY[0x26D62DB50](v24, *(&v24 + 1), v26, *(&v26 + 1));
        sub_268CD9D30(&v22);
        sub_268CD9D30(&v23);
        sub_268CD9D30(v25);
        v7 = v6;
LABEL_18:

        v12 = v7;
        return v12 & 1;
      }

      sub_268CD9D30(&v24);
    }

    else if (!*(&v26 + 1))
    {
      sub_268CD9D30(v25);
      v7 = 1;
      goto LABEL_18;
    }

    sub_268D28550(v25);
    v7 = 0;
    goto LABEL_18;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_268F2D8D4(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  sub_268F2C37C();

  v6[0] = a1;
  v6[1] = a2;
  type metadata accessor for INDeviceCategory(0);
  sub_268F9ADC4();
  sub_268CD9D30(v6);
  v5 = v6[2];

  return v5;
}

id sub_268F2D9F0()
{
  v64 = 0;
  v63 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30);
  v29 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0, v1, v2, v3);
  v53 = &v28 - v29;
  v30 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v29, v5, v6, v7);
  v52 = &v28 - v30;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC860, &unk_268FA32E0);
  v31 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v43 = &v28 - v31;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC868, qword_268F9F890);
  v32 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13, v14, v15);
  v42 = &v28 - v32;
  v45 = 0;
  v59 = sub_268F990E4();
  v55 = *(v59 - 8);
  v56 = v59 - 8;
  v33 = (v55[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45, v16, v17, v18);
  v57 = &v28 - v33;
  v64 = &v28 - v33;
  v34 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v21, v22, v23);
  v58 = &v28 - v34;
  v63 = &v28 - v34;
  v35 = sub_268F99314();
  v24 = *(v35 - 8);
  v37 = *(v24 + 56);
  v36 = v24 + 56;
  v49 = 1;
  v37(v42, 1);
  v38 = sub_268F99344();
  v25 = *(v38 - 8);
  v40 = *(v25 + 56);
  v39 = v25 + 56;
  v40(v43, v49);
  v44 = 1;
  v41 = 1;
  v48 = 0;
  sub_268F990D4();
  (v37)(v42, v49, v49, v35);
  (v40)(v43, v49, v49, v38);
  sub_268F990D4();
  v54 = sub_268DAC8A8();
  sub_268DAC7EC();
  v47 = v55[2];
  v46 = v55 + 2;
  v47(v52, v58, v59);
  v51 = v55[7];
  v50 = v55 + 7;
  v51(v52, v48, v49, v59);
  v47(v53, v57, v59);
  v51(v53, v48, v49, v59);
  v26 = sub_268E305DC(v52, v53);
  v62 = sub_268DAC90C(v26);
  v61 = v55[1];
  v60 = v55 + 1;
  v61(v57, v59);
  v61(v58, v59);
  return v62;
}

id sub_268F2DFA4(uint64_t a1)
{
  v282 = a1;
  v233 = "Fatal error";
  v234 = "Unexpectedly found nil while unwrapping an Optional value";
  v235 = "SiriSettingsIntents/ConverterUtils.swift";
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v294 = 0;
  v295 = 0;
  v290 = 0;
  v291 = 0;
  v289 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30);
  v236 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v237 = v127 - v236;
  v238 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v236, v6, v7, v8);
  v239 = v127 - v238;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3A0, &qword_268FAA610);
  v240 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v241 = v127 - v240;
  v242 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v240, v14, v15, v16);
  v243 = v127 - v242;
  v244 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v242, v18, v19, v20);
  v245 = v127 - v244;
  v246 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v244, v22, v23, v24);
  v247 = v127 - v246;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC860, &unk_268FA32E0);
  v248 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v26, v27, v28);
  v249 = v127 - v248;
  v250 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v248, v30, v31, v32);
  v251 = v127 - v250;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC868, qword_268F9F890);
  v252 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33, v34, v35, v36);
  v253 = v127 - v252;
  v254 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v252, v38, v39, v40);
  v255 = v127 - v254;
  v280 = 0;
  v256 = sub_268F990E4();
  v257 = *(v256 - 8);
  v258 = v256 - 8;
  v259 = (v257[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v256, v41, v42, v43);
  v260 = v127 - v259;
  v301 = v127 - v259;
  v261 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45, v46, v47, v48);
  v262 = v127 - v261;
  v300 = v127 - v261;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3A8, qword_268FAA618);
  v263 = *(*(v49 - 8) + 64);
  v264 = (v263 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49, v50, v51, v52);
  v265 = v127 - v264;
  v266 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v264, v54, v55, v56);
  v267 = v127 - v266;
  v268 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v266, v58, v59, v60);
  v269 = v127 - v268;
  v270 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v268, v62, v63, v64);
  v271 = v127 - v270;
  v272 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v270, v66, v67, v68);
  v273 = v127 - v272;
  v274 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v272, v70, v71, v72);
  v275 = v127 - v274;
  v276 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v274, v74, v75, v76);
  v277 = v127 - v276;
  v278 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127 - v276, v78, v79, v80);
  v279 = v127 - v278;
  v281 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE368, &unk_268FAA5B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v280, v81, v82, v83);
  v288 = v127 - v281;
  v287 = sub_268F99FE4();
  v285 = *(v287 - 8);
  v286 = v287 - 8;
  v283 = (*(v285 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v282, v288, v84, v85);
  v284 = v127 - v283;
  v299 = v127 - v283;
  v298 = v86;
  sub_268F32A1C(v86, v87);
  if ((*(v285 + 48))(v288, 1, v287) == 1)
  {
    sub_268F32884(v288);
    return 0;
  }

  (*(v285 + 32))(v284, v288, v287);
  sub_268F99FC4();
  v228 = sub_268F9A024();
  v229 = *(v228 - 8);
  v230 = v228 - 8;
  v231 = *(v229 + 48);
  v232 = v229 + 48;
  if (v231(v279, 1) == 1)
  {
    sub_268F32B44(v279);
    v226 = 0;
    v227 = 1;
  }

  else
  {
    v224 = sub_268F9A014();
    v225 = v88;
    (*(v229 + 8))(v279, v228);
    v226 = v224;
    v227 = v225;
  }

  v296 = v226;
  v297 = v227 & 1;
  v223 = (v227 & 1) == 0;
  if (v227)
  {
    v217 = 0;
    v218 = 1;
LABEL_15:
    v214 = v218;
    v215 = v217;
    v294 = v217;
    v216 = 1;
    v295 = v218 & 1;
    sub_268F99FA4();
    if ((v231)(v275, v216, v228) == 1)
    {
      sub_268F32B44(v275);
      v212 = 0;
      v213 = 1;
    }

    else
    {
      v210 = sub_268F9A014();
      v211 = v92;
      (*(v229 + 8))(v275, v228);
      v212 = v210;
      v213 = v211;
    }

    v292 = v212;
    v293 = v213 & 1;
    v209 = (v213 & 1) == 0;
    if (v213)
    {
      v203 = 0;
      v204 = 1;
      goto LABEL_28;
    }

    sub_268F99FA4();
    if ((v231)(v273, 1, v228) == 1)
    {
      result = sub_268F32B44(v273);
      __break(1u);
    }

    else
    {
      v207 = sub_268F9A014();
      v208 = v93;
      result = (*(v229 + 8))(v273, v228);
      if (v208)
      {
        LOBYTE(v123) = 2;
        v124 = 489;
        LODWORD(v125) = 0;
        result = sub_268F9B584();
        __break(1u);
      }

      else
      {
        v206 = v207;
      }

      v205 = v206 + 1;
      if (!__OFADD__(v206, 1))
      {
        v203 = v205;
        v204 = 0;
LABEL_28:
        v193 = v204;
        v194 = v203;
        v290 = v203;
        v202 = 1;
        v291 = v204 & 1;
        v198 = 0;
        v195 = sub_268F99314();
        v95 = *(v195 - 8);
        v196 = *(v95 + 56);
        v197 = v95 + 56;
        v196(v255, v202);
        v199 = sub_268F99344();
        v96 = *(v199 - 8);
        v200 = *(v96 + 56);
        v201 = v96 + 56;
        v200(v251, v202);
        sub_268F99FC4();
        if ((v231)(v271, v202, v228) == 1)
        {
          sub_268F32B44(v271);
          v191 = 0;
          v192 = 1;
        }

        else
        {
          v189 = sub_268F9A004();
          v190 = v97;
          (*(v229 + 8))(v271, v228);
          v191 = v189;
          v192 = v190;
        }

        v187 = v192;
        v188 = v191;
        sub_268F99FC4();
        if ((v231)(v269, 1, v228) == 1)
        {
          sub_268F32B44(v269);
          v185 = 0;
          v186 = 1;
        }

        else
        {
          v183 = sub_268F99FF4();
          v184 = v98;
          (*(v229 + 8))(v269, v228);
          v185 = v183;
          v186 = v184;
        }

        v176 = v186;
        v177 = v185;
        sub_268F99FD4();
        v178 = sub_268F9A054();
        v179 = *(v178 - 8);
        v180 = v178 - 8;
        v181 = *(v179 + 48);
        v182 = v179 + 48;
        if (v181(v247, 1) == 1)
        {
          sub_268F32BEC(v247);
          v174 = 0;
          v175 = 1;
        }

        else
        {
          v172 = sub_268F9A044();
          v173 = v99;
          (*(v179 + 8))(v247, v178);
          v174 = v172;
          v175 = v173;
        }

        v170 = v175;
        v171 = v174;
        sub_268F99FD4();
        if ((v181)(v245, 1, v178) == 1)
        {
          sub_268F32BEC(v245);
          v168 = 0;
          v169 = 1;
        }

        else
        {
          v166 = sub_268F9A034();
          v167 = v100;
          (*(v179 + 8))(v245, v178);
          v168 = v166;
          v169 = v167;
        }

        v163 = 1;
        v165 = 1;
        v164 = &v105;
        v105 = v177;
        v106 = v176 & 1;
        v107 = v171;
        v108 = v170 & 1;
        v109 = v168;
        v110 = v169 & 1;
        v111 = 0;
        v112 = 1;
        v113 = 0;
        v114 = 1;
        v115 = 0;
        v116 = 1;
        v117 = 0;
        v118 = 1;
        v119 = 0;
        v120 = 1;
        v121 = 0;
        v122 = 1;
        v123 = 0;
        LOBYTE(v124) = 1;
        v125 = 0;
        v126 = 1;
        sub_268F990D4();
        (v196)(v253, v165, v165, v195);
        (v200)(v249, v165, v165, v199);
        sub_268F99FA4();
        if ((v231)(v267, v165, v228) == 1)
        {
          sub_268F32B44(v267);
          v161 = 0;
          v162 = 1;
        }

        else
        {
          v159 = sub_268F9A004();
          v160 = v101;
          (*(v229 + 8))(v267, v228);
          v161 = v159;
          v162 = v160;
        }

        v157 = v162;
        v158 = v161;
        sub_268F99FA4();
        if ((v231)(v265, 1, v228) == 1)
        {
          sub_268F32B44(v265);
          v155 = 0;
          v156 = 1;
        }

        else
        {
          v153 = sub_268F99FF4();
          v154 = v102;
          (*(v229 + 8))(v265, v228);
          v155 = v153;
          v156 = v154;
        }

        v151 = v156;
        v152 = v155;
        sub_268F99FB4();
        if ((v181)(v243, 1, v178) == 1)
        {
          sub_268F32BEC(v243);
          v149 = 0;
          v150 = 1;
        }

        else
        {
          v147 = sub_268F9A044();
          v148 = v103;
          (*(v179 + 8))(v243, v178);
          v149 = v147;
          v150 = v148;
        }

        v145 = v150;
        v146 = v149;
        sub_268F99FB4();
        if ((v181)(v241, 1, v178) == 1)
        {
          sub_268F32BEC(v241);
          v143 = 0;
          v144 = 1;
        }

        else
        {
          v141 = sub_268F9A034();
          v142 = v104;
          (*(v179 + 8))(v241, v178);
          v143 = v141;
          v144 = v142;
        }

        v127[3] = 1;
        v132 = 1;
        v128 = &v105;
        v105 = v152;
        v106 = v151 & 1;
        v107 = v146;
        v108 = v145 & 1;
        v109 = v143;
        v110 = v144 & 1;
        v135 = 0;
        v111 = 0;
        v112 = 1;
        v113 = 0;
        v114 = 1;
        v115 = 0;
        v116 = 1;
        v117 = 0;
        v118 = 1;
        v119 = 0;
        v120 = 1;
        v121 = 0;
        v122 = 1;
        v123 = 0;
        LOBYTE(v124) = 1;
        v125 = 0;
        v126 = 1;
        sub_268F990D4();
        sub_268DAC7EC();
        v130 = v257[2];
        v129 = v257 + 2;
        v130(v239, v262, v256);
        v134 = v257[7];
        v133 = v257 + 7;
        v131 = 0;
        v134(v239);
        v130(v237, v260, v256);
        (v134)(v237, v131, v132, v256);
        v136 = sub_268E305DC(v239, v237);
        v289 = v136;
        sub_268DAC8A8();
        v139 = sub_268DAC90C(v136);
        v138 = v257[1];
        v137 = v257 + 1;
        v138(v260, v256);
        v138(v262, v256);
        (*(v285 + 8))(v284, v287);
        return v139;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  sub_268F99FC4();
  if ((v231)(v277, 1, v228) != 1)
  {
    v221 = sub_268F9A014();
    v222 = v89;
    result = (*(v229 + 8))(v277, v228);
    if (v222)
    {
      LOBYTE(v123) = 2;
      v124 = 488;
      LODWORD(v125) = 0;
      result = sub_268F9B584();
      __break(1u);
    }

    else
    {
      v220 = v221;
    }

    v219 = v220 + 1;
    if (__OFADD__(v220, 1))
    {
      goto LABEL_61;
    }

    v217 = v219;
    v218 = 0;
    goto LABEL_15;
  }

  result = sub_268F32B44(v277);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

id sub_268F2FCDC(uint64_t a1)
{
  v36 = a1;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30);
  v29 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v55 = &v29 - v29;
  v30 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v29 - v29, v6, v7, v8);
  v54 = &v29 - v30;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC860, &unk_268FA32E0);
  v31 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v45 = &v29 - v31;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC868, qword_268F9F890);
  v32 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  v44 = &v29 - v32;
  v47 = 0;
  v61 = sub_268F990E4();
  v57 = *(v61 - 8);
  v58 = v61 - 8;
  v34 = v57[8];
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47, v17, v18, v19);
  v59 = &v29 - v33;
  v67 = &v29 - v33;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v21, v22, v23);
  v60 = &v29 - v35;
  v66 = &v29 - v35;
  v65 = v24;
  v37 = sub_268F99314();
  v25 = *(v37 - 8);
  v39 = *(v25 + 56);
  v38 = v25 + 56;
  v51 = 1;
  v39(v44, 1);
  v40 = sub_268F99344();
  v26 = *(v40 - 8);
  v42 = *(v26 + 56);
  v41 = v26 + 56;
  v42(v45, v51);
  v46 = 1;
  v43 = 1;
  v50 = 0;
  sub_268F990D4();
  (v39)(v44, v51, v51, v37);
  (v42)(v45, v51, v51, v40);
  sub_268F990D4();
  v56 = sub_268DAC8A8();
  sub_268DAC7EC();
  v49 = v57[2];
  v48 = v57 + 2;
  v49(v54, v60, v61);
  v53 = v57[7];
  v52 = v57 + 7;
  v53(v54, v50, v51, v61);
  v49(v55, v59, v61);
  v53(v55, v50, v51, v61);
  v27 = sub_268E305DC(v54, v55);
  v64 = sub_268DAC90C(v27);
  v63 = v57[1];
  v62 = v57 + 1;
  v63(v59, v61);
  v63(v60, v61);
  return v64;
}

uint64_t sub_268F302E0(uint64_t a1)
{
  v11[1] = a1;
  v5 = *sub_268F2CAA0();

  v11[0] = v5;
  v7 = sub_268F99F54();
  v8 = v1;
  if (v1)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = sub_268F9AEF4();
    v10 = v2;
  }

  v6[0] = v9;
  v6[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD9D30(v6);
  sub_268CD7930(v11);
  return v4 & 1;
}

uint64_t sub_268F30410(uint64_t a1)
{
  v15 = a1;
  v1 = sub_268F2C620();
  v7 = *v1;
  v8 = v1[1];

  v6 = sub_268F99F54();
  v9 = v2;

  v13[0] = v7;
  v13[1] = v8;
  *&v14 = v6;
  *(&v14 + 1) = v9;
  if (!v8)
  {
    if (!*(&v14 + 1))
    {
      sub_268CD9D30(v13);
      v5 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_268D28874(v13, &v12);
  if (!*(&v14 + 1))
  {
    sub_268CD9D30(&v12);
LABEL_8:
    sub_268D28550(v13);
    v5 = 0;
    goto LABEL_7;
  }

  v11 = v12;
  v10 = v14;
  v4 = MEMORY[0x26D62DB50](v12, *(&v12 + 1), v14, *(&v14 + 1));
  sub_268CD9D30(&v10);
  sub_268CD9D30(&v11);
  sub_268CD9D30(v13);
  v5 = v4;
LABEL_7:

  return v5 & 1;
}