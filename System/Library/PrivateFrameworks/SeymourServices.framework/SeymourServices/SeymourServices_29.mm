uint64_t sub_22715F1C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22715F258()
{
  v1[7] = v0;
  v2 = sub_227669890();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22715F318, 0, 0);
}

uint64_t sub_22715F318()
{
  sub_22766A7F0();
  sub_226E9DD3C("syncCatalogIfNeeded", 19, 2, &dword_226E8E000, 1, v0 + 2);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_22715F3D8;
  v2 = v0[7];

  return sub_227178508(v1, v2);
}

uint64_t sub_22715F3D8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_22715F5AC;
  }

  else
  {
    v2 = sub_22715F4EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22715F4EC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22715F5AC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22715F6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9C0, &qword_22767B650);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9C8, &unk_22767B658);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v3[15] = swift_task_alloc();
  v5 = sub_2276689A0();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = sub_227662750();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = sub_2276627D0();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v8 = sub_22766C940();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = sub_22766CA10();
  v3[29] = swift_task_alloc();
  sub_22766B3F0();
  v3[30] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v3[31] = v9;
  v3[32] = *(v9 - 8);
  v3[33] = swift_task_alloc();
  v10 = sub_2276624A0();
  v3[34] = v10;
  v3[35] = *(v10 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = type metadata accessor for TransportSerializableJournalRecorder(0);
  v3[39] = swift_task_alloc();
  v11 = sub_227668850();
  v3[40] = v11;
  v3[41] = *(v11 - 8);
  v12 = swift_task_alloc();
  v3[42] = v12;
  v13 = swift_task_alloc();
  v3[43] = v13;
  *v13 = v3;
  v13[1] = sub_22715FB54;

  return sub_227161098(v12, a3);
}

uint64_t sub_22715FB54()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_227160DC0;
  }

  else
  {
    v2 = sub_22715FC94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22715FC94()
{
  v1 = *(v0 + 352);
  sub_22717B7C4(&qword_28139B488, MEMORY[0x277D53618], MEMORY[0x277D53610]);
  v2 = sub_2276683E0();
  if (v1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
LABEL_10:

    v38 = *(v0 + 8);

    return v38();
  }

  v4 = v2;
  v5 = v3;
  v6 = objc_opt_self();
  *(v0 + 360) = v6;
  v7 = sub_227662560();
  sub_226EDC420(v4, v5);
  *(v0 + 48) = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:v0 + 48];

  v9 = *(v0 + 48);
  if (!v8)
  {
    v29 = *(v0 + 328);
    v30 = *(v0 + 336);
    v31 = *(v0 + 320);
    v32 = v9;
    sub_2276622C0();

    swift_willThrow();
    (*(v29 + 8))(v30, v31);
    goto LABEL_10;
  }

  v10 = v9;
  sub_22766CC20();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9E0, &unk_22767B668);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = *(v0 + 328);
    v33 = *(v0 + 336);
    v35 = *(v0 + 320);
    v36 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51B20], v36);
    swift_willThrow();
    (*(v34 + 8))(v33, v35);
    goto LABEL_10;
  }

  v52 = *(v0 + 336);
  v44 = *(v0 + 304);
  v45 = *(v0 + 312);
  v11 = *(v0 + 288);
  v13 = *(v0 + 272);
  v12 = *(v0 + 280);
  v14 = *(v0 + 256);
  v15 = *(v0 + 264);
  v16 = *(v0 + 248);
  v17 = *(v0 + 208);
  v41 = *(v0 + 216);
  v42 = *(v0 + 200);
  v43 = *(v0 + 296);
  v47 = *(v0 + 192);
  v48 = *(v0 + 176);
  v49 = *(v0 + 184);
  v50 = *(v0 + 168);
  v51 = *(v0 + 160);
  v53 = *(v0 + 152);
  v18 = *(v0 + 88);
  v39 = *(v0 + 56);
  *(v0 + 368) = v39;
  sub_227662330();
  sub_2276623F0();
  v46 = *(v12 + 8);
  v46(v11, v13);
  (*(v14 + 16))(v15, v18 + OBJC_IVAR____TtC15SeymourServices20RecommendationSystem__journalPersonalizationRequests, v16);
  sub_227669730();
  (*(v14 + 8))(v15, v16);
  v40 = *(v0 + 448);
  sub_226E99364(0, &unk_28139D250, 0x277D85C90);
  sub_22766B3D0();
  *(v0 + 64) = MEMORY[0x277D84F90];
  sub_22717B7C4(&qword_28139D260, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8B0, &qword_227678490);
  sub_226E9CFD0(&qword_28139D2D0, &unk_27D7BC8B0, &qword_227678490, MEMORY[0x277D83970]);
  sub_22766CC80();
  (*(v17 + 104))(v41, *MEMORY[0x277D85268], v42);
  v19 = sub_22766CA20();
  *(v45 + v44[8]) = 10;
  (*(v12 + 16))(v45, v43, v13);
  *(v45 + v44[6]) = v19;
  *(v45 + v44[7]) = v40;
  v20 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v45 + v44[5]) = v20;
  v21 = v20;
  v22 = sub_22766BFD0();
  [v21 setDateFormat_];

  v46(v43, v13);
  sub_227668F40();
  *(v0 + 376) = sub_22717B7C4(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v23 = sub_22766D140();
  MEMORY[0x22AA98450](v23);

  v24 = *(v49 + 8);
  *(v0 + 384) = v24;
  *(v0 + 392) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v47, v48);
  sub_2272ECFAC(0x5F74736575716552, 0xE800000000000000, v52, v45);

  sub_227662720();
  sub_2276626F0();
  v25 = *(v51 + 8);
  *(v0 + 400) = v25;
  *(v0 + 408) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v50, v53);
  sub_22766C4F0();
  *(v0 + 416) = v26;
  v27 = swift_task_alloc();
  *(v0 + 424) = v27;
  *v27 = v0;
  v27[1] = sub_2271604E8;

  return sub_2271614F0(v39);
}

uint64_t sub_2271604E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_227160F10;
  }

  else
  {
    v4 = sub_227160650;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227160650(uint64_t a1)
{
  v2 = *(v1 + 432);
  v3 = *(v1 + 400);
  v4 = *(v1 + 168);
  v5 = *(v1 + 152);
  sub_227662720();
  sub_2276626F0();
  v3(v4, v5);
  sub_22766C4F0();
  v6 = [v2 data];
  if (!v6)
  {
    v21 = *(v1 + 432);
    v23 = *(v1 + 328);
    v22 = *(v1 + 336);
    v25 = *(v1 + 312);
    v24 = *(v1 + 320);
    v26 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51B28], v26);
    swift_willThrow();

    sub_22717B2F8(v25, type metadata accessor for TransportSerializableJournalRecorder);
    (*(v23 + 8))(v22, v24);
    goto LABEL_8;
  }

  v7 = *(v1 + 360);
  v8 = v6;
  sub_22766BEB0();

  v9 = sub_22766BE90();

  *(v1 + 72) = 0;
  v10 = [v7 dataWithJSONObject:v9 options:0 error:v1 + 72];

  v11 = *(v1 + 72);
  if (!v10)
  {
    v28 = *(v1 + 432);
    v30 = *(v1 + 328);
    v29 = *(v1 + 336);
    v32 = *(v1 + 312);
    v31 = *(v1 + 320);
    v33 = v11;
    sub_2276622C0();

    swift_willThrow();
    sub_22717B2F8(v32, type metadata accessor for TransportSerializableJournalRecorder);
    (*(v30 + 8))(v29, v31);
    goto LABEL_8;
  }

  v12 = *(v1 + 440);
  v13 = sub_227662590();
  v15 = v14;

  sub_226F5E0B4(v13, v15);
  sub_22717B7C4(&qword_28139B480, MEMORY[0x277D536B8], MEMORY[0x277D536B0]);
  sub_2276683F0();
  v16 = *(v1 + 432);
  if (v12)
  {
    v18 = *(v1 + 328);
    v17 = *(v1 + 336);
    v20 = *(v1 + 312);
    v19 = *(v1 + 320);

    sub_226EDC420(v13, v15);
    sub_22717B2F8(v20, type metadata accessor for TransportSerializableJournalRecorder);
    (*(v18 + 8))(v17, v19);
LABEL_8:

    v34 = *(v1 + 8);
    goto LABEL_9;
  }

  v45 = *(v1 + 384);
  v50 = *(v1 + 328);
  v36 = *(v1 + 312);
  v51 = *(v1 + 320);
  v52 = *(v1 + 336);
  v37 = *(v1 + 184);
  v38 = *(v1 + 192);
  v39 = *(v1 + 176);
  v48 = *(v1 + 136);
  v49 = *(v1 + 128);
  v43 = *(v1 + 144);
  v44 = *(v1 + 120);
  v46 = *(v1 + 112);
  v47 = *(v1 + 104);
  sub_227668F40();
  v40 = sub_22766D140();
  MEMORY[0x22AA98450](v40);

  v45(v38, v39);
  sub_2272ED408(0x65736E6F70736552, 0xE90000000000005FLL, v43, v36);

  (*(v37 + 56))(v44, 1, 1, v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9E8, &qword_22767B680);
  (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
  v42 = sub_2276666B0();
  (*(*(v42 - 8) + 56))(v47, 1, 1, v42);
  sub_227668990();

  sub_226EDC420(v13, v15);
  sub_226E97D1C(v47, &qword_27D7BB9C0, &qword_22767B650);
  sub_226E97D1C(v46, &qword_27D7BB9C8, &unk_22767B658);
  sub_226E97D1C(v44, &unk_27D7BB9D0, &qword_227671550);
  (*(v48 + 8))(v43, v49);
  sub_22717B2F8(v36, type metadata accessor for TransportSerializableJournalRecorder);
  (*(v50 + 8))(v52, v51);

  v34 = *(v1 + 8);
LABEL_9:

  return v34();
}

uint64_t sub_227160DC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227160F10()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  sub_22717B2F8(v0[39], type metadata accessor for TransportSerializableJournalRecorder);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227161098(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_227669890();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22716115C, 0, 0);
}

uint64_t sub_22716115C()
{
  sub_22766A7F0();
  sub_226E9DD3C("makePersonalizationInferenceRequest", 35, 2, &dword_226E8E000, 1, v0 + 2);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_227161224;
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  return sub_227166800(v4, v2, v3);
}

uint64_t sub_227161224()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2271613F8;
  }

  else
  {
    v2 = sub_227161338;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227161338()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271613F8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271614F0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_227669890();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271615B0, 0, 0);
}

uint64_t sub_2271615B0()
{
  v7 = *(v0 + 104);
  sub_22766A7F0();
  sub_226E9DD3C("enqueuePersonalizationInferenceRequest", 38, 2, &dword_226E8E000, 1, (v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v1[1] = vextq_s8(v7, v7, 8uLL);
  v2 = sub_22766A4E0();
  v3 = MEMORY[0x277D4F7C0];
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_22766A4D0();
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  v5 = sub_226E99364(0, &qword_281398A70, 0x277CEE4A0);
  *v4 = v0;
  v4[1] = sub_22716172C;

  return MEMORY[0x2821AEAF8](v0 + 96, &unk_22767B690, v1, 3, v0 + 56, sub_227171854, 0, v5);
}

uint64_t sub_22716172C()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  if (v0)
  {
    v3 = sub_227161918;
  }

  else
  {

    v3 = sub_227161850;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227161850()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[12];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_227161918()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];

  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227161A14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_227668F90();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_227668D90();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_227161B60;

  return sub_22715F258();
}

uint64_t sub_227161B60()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v2[12] = v6;
    *v6 = v3;
    v6[1] = sub_227161CE8;
    v7 = v2[10];
    v8 = v2[3];

    return sub_2271621B4(v7, v8);
  }
}

uint64_t sub_227161CE8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_227162144;
  }

  else
  {
    v2 = sub_227161DFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227161DFC()
{
  __swift_project_boxed_opaque_existential_0((v0[4] + 664), *(v0[4] + 688));
  sub_227668C40();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_227161EC4;
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[2];

  return sub_2272DDED4(v4, v3, v2);
}

uint64_t sub_227161EC4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2271620BC;
  }

  else
  {
    v5 = sub_227162034;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227162034()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2271620BC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227162144()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271621B4(uint64_t a1, uint64_t a2)
{
  v3[357] = v2;
  v3[351] = a2;
  v3[345] = a1;
  v4 = sub_22766B390();
  v3[363] = v4;
  v3[369] = *(v4 - 8);
  v3[375] = swift_task_alloc();
  v3[381] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  v3[387] = swift_task_alloc();
  v3[393] = swift_task_alloc();
  v3[399] = swift_task_alloc();
  v3[405] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v3[411] = swift_task_alloc();
  v3[417] = swift_task_alloc();
  v3[423] = swift_task_alloc();
  v5 = sub_227666D20();
  v3[429] = v5;
  v3[435] = *(v5 - 8);
  v3[441] = swift_task_alloc();
  v3[442] = swift_task_alloc();
  v3[443] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9550, &qword_22767B2D0);
  v3[444] = v6;
  v3[445] = *(v6 - 8);
  v3[446] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB990, &unk_22767B558);
  v3[447] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227162438, 0, 0);
}

uint64_t sub_227162438()
{
  v1 = v0[447];
  sub_227668C30();
  v2 = sub_227668D90();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[446];
    v5 = v0[357];
    sub_226E97D1C(v0[447], &unk_27D7BB990, &unk_22767B558);
    __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
    sub_22766AE00();
    v6 = swift_task_alloc();
    v0[448] = v6;
    *(v6 + 16) = "SeymourServices/RecommendationSystem.swift";
    *(v6 + 24) = 42;
    *(v6 + 32) = 2;
    *(v6 + 40) = 324;
    *(v6 + 48) = v4;
    v7 = swift_task_alloc();
    v0[449] = v7;
    v8 = sub_226E99364(0, &qword_2813989F0, 0x277CB8F30);
    *v7 = v0;
    v7[1] = sub_22716272C;

    return MEMORY[0x2822008A0](v0 + 339, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717B840, v6, v8);
  }

  else
  {
    (*(v3 + 32))(v0[345], v0[447], v2);
    sub_226EA9E3C(0, 0);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22716272C()
{
  v2 = *v1;
  *(*v1 + 3600) = v0;

  if (v0)
  {

    v3 = sub_227162C68;
  }

  else
  {
    v4 = v2[446];
    v5 = v2[445];
    v6 = v2[444];
    v2[451] = v2[339];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227162890;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227162890()
{
  v1 = [*(v0 + 3608) ams_DSID];
  v2 = *(v0 + 3608);
  if (v1)
  {

    v3 = [v2 ams_storefront];
    if (v3)
    {
      v4 = v3;
      v5 = sub_22766C000();
      v7 = v6;

      *(v0 + 3616) = v5;
      *(v0 + 3624) = v7;
      v8 = swift_task_alloc();
      *(v0 + 3632) = v8;
      *v8 = v0;
      v8[1] = sub_227162EDC;

      return sub_2271648AC();
    }

    v2 = *(v0 + 3608);
    v10 = MEMORY[0x277D51B38];
  }

  else
  {
    v10 = MEMORY[0x277D51B18];
  }

  v11 = sub_227665A50();
  sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
  v12 = swift_allocError();
  (*(*(v11 - 8) + 104))(v13, *v10, v11);
  swift_willThrow();

  sub_22766A680();
  v14 = v12;
  v15 = sub_22766B380();
  v16 = sub_22766C890();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_226E8E000, v15, v16, "[Inference] Error creating environment: %@", v17, 0xCu);
    sub_226E97D1C(v18, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  v21 = *(v0 + 3000);
  v22 = *(v0 + 2952);
  v23 = *(v0 + 2904);

  (*(v22 + 8))(v21, v23);
  swift_willThrow();
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_227162C68()
{
  (*(v0[445] + 8))(v0[446], v0[444]);
  v1 = v0[450];
  sub_22766A680();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_226E8E000, v3, v4, "[Inference] Error creating environment: %@", v5, 0xCu);
    sub_226E97D1C(v6, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v6, -1, -1);
    MEMORY[0x22AA9A450](v5, -1, -1);
  }

  v9 = v0[375];
  v10 = v0[369];
  v11 = v0[363];

  (*(v10 + 8))(v9, v11);
  swift_willThrow();
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_227162EDC(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 3704) = a1;

  v5 = swift_task_alloc();
  *(v3 + 3640) = v5;
  *v5 = v4;
  v5[1] = sub_227163048;
  v6 = *(v3 + 3544);

  return sub_227164F28(v6, v2);
}

uint64_t sub_227163048()
{
  *(*v1 + 3648) = v0;

  if (v0)
  {

    v2 = sub_227163B4C;
  }

  else
  {
    v2 = sub_227163164;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227163164()
{
  if (*(v0 + 3704) == 1)
  {

    swift_asyncLet_begin();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8D0, &qword_22767B2F8);
    swift_asyncLet_begin();

    swift_asyncLet_begin();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB940, qword_22767B408);
    swift_asyncLet_begin();
    v1 = *(v0 + 3384);

    return MEMORY[0x282200930](v0 + 656, v1, sub_2271634FC, v0 + 2624);
  }

  else
  {
    v12 = *(v0 + 3608);
    v2 = *(v0 + 3544);
    v3 = *(v0 + 3528);
    v4 = *(v0 + 3480);
    v5 = *(v0 + 3432);
    v6 = *(v0 + 3288);
    v7 = *(v0 + 3096);
    v8 = sub_2276638D0();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    (*(v4 + 16))(v3, v2, v5);
    v9 = sub_227666650();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_227668D40();

    (*(v4 + 8))(v2, v5);
    sub_226EA9E3C(0, 0);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2271634FC()
{
  v1[457] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 162, v1 + 327, sub_227163DAC, v1 + 334);
  }

  else
  {
    sub_226E93170(v1[423], v1[417], &unk_27D7BB920, &unk_227672480);

    return MEMORY[0x282200930](v1 + 242, v1 + 333, sub_2271635C8, v1 + 358);
  }
}

uint64_t sub_2271635C8()
{
  v1[458] = v0;
  if (v0)
  {
    sub_226E97D1C(v1[417], &unk_27D7BB920, &unk_227672480);

    return MEMORY[0x2822009F8](sub_227164144, 0, 0);
  }

  else
  {
    v2 = v1[443];
    v3 = v1[442];
    v4 = v1[435];
    v5 = v1[429];
    v1[459] = v1[333];
    (*(v4 + 16))(v3, v2, v5);

    v6 = v1[399];

    return MEMORY[0x282200928](v1 + 2, v6, sub_2271636C0, v1 + 388);
  }
}

uint64_t sub_2271636C0()
{
  sub_226E93170(*(v0 + 3192), *(v0 + 3144), &unk_27D7BB8C0, &qword_22767F780);

  return MEMORY[0x282200930](v0 + 1296, v0 + 2616, sub_227163740, v0 + 3152);
}

uint64_t sub_227163740()
{
  v1[460] = v0;
  if (v0)
  {
    v2 = v1[442];
    v3 = v1[435];
    v4 = v1[429];
    v5 = v1[417];
    v6 = v1[393];

    sub_226E97D1C(v6, &unk_27D7BB8C0, &qword_22767F780);
    v7 = *(v3 + 8);
    v1[461] = v7;
    v1[462] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v2, v4);
    sub_226E97D1C(v5, &unk_27D7BB920, &unk_227672480);
    v8 = sub_2271644FC;
  }

  else
  {
    v8 = sub_227163848;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227163848()
{

  sub_227668D40();

  return MEMORY[0x282200920](v0 + 1296, v0 + 2616, sub_227163910, v0 + 3392);
}

uint64_t sub_2271639E0()
{
  v1 = *(v0 + 3544);
  v2 = *(v0 + 3480);
  v3 = *(v0 + 3432);

  (*(v2 + 8))(v1, v3);

  sub_226EA9E3C(&unk_22767B5A0, *(v0 + 2856));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_227163B4C()
{
  v1 = *(v0 + 3648);
  sub_22766A680();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_226E8E000, v3, v4, "[Inference] Error creating environment: %@", v5, 0xCu);
    sub_226E97D1C(v6, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v6, -1, -1);
    MEMORY[0x22AA9A450](v5, -1, -1);
  }

  v9 = *(v0 + 3000);
  v10 = *(v0 + 2952);
  v11 = *(v0 + 2904);

  (*(v10 + 8))(v9, v11);
  swift_willThrow();
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_227163E7C()
{
  v1 = *(v0 + 3544);
  v2 = *(v0 + 3480);
  v3 = *(v0 + 3432);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 3656);
  v5 = *(v0 + 2856);
  sub_22766A680();
  v6 = v4;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226E8E000, v7, v8, "[Inference] Error creating environment: %@", v9, 0xCu);
    sub_226E97D1C(v10, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v13 = *(v0 + 3000);
  v14 = *(v0 + 2952);
  v15 = *(v0 + 2904);

  (*(v14 + 8))(v13, v15);
  swift_willThrow();
  sub_226EA9E3C(&unk_22767B570, v5);
  sub_226EA9E3C(&unk_22767B580, v5);
  sub_226EA9E3C(&unk_22767B590, v5);
  sub_226EA9E3C(&unk_22767B5A0, v5);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_227164234()
{
  v1 = *(v0 + 3544);
  v2 = *(v0 + 3480);
  v3 = *(v0 + 3432);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 3664);
  v5 = *(v0 + 2856);
  sub_22766A680();
  v6 = v4;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226E8E000, v7, v8, "[Inference] Error creating environment: %@", v9, 0xCu);
    sub_226E97D1C(v10, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v13 = *(v0 + 3000);
  v14 = *(v0 + 2952);
  v15 = *(v0 + 2904);

  (*(v14 + 8))(v13, v15);
  swift_willThrow();
  sub_226EA9E3C(&unk_22767B570, v5);
  sub_226EA9E3C(&unk_22767B580, v5);
  sub_226EA9E3C(&unk_22767B590, v5);
  sub_226EA9E3C(&unk_22767B5A0, v5);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2271645EC()
{
  v1 = *(v0 + 3688);
  v2 = *(v0 + 3544);
  v3 = *(v0 + 3432);

  v1(v2, v3);
  v4 = *(v0 + 3680);
  v5 = *(v0 + 2856);
  sub_22766A680();
  v6 = v4;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226E8E000, v7, v8, "[Inference] Error creating environment: %@", v9, 0xCu);
    sub_226E97D1C(v10, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v13 = *(v0 + 3000);
  v14 = *(v0 + 2952);
  v15 = *(v0 + 2904);

  (*(v14 + 8))(v13, v15);
  swift_willThrow();
  sub_226EA9E3C(&unk_22767B570, v5);
  sub_226EA9E3C(&unk_22767B580, v5);
  sub_226EA9E3C(&unk_22767B590, v5);
  sub_226EA9E3C(&unk_22767B5A0, v5);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2271648AC()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_227662750();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_227665AD0();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227164A8C, 0, 0);
}

uint64_t sub_227164A8C()
{
  v1 = v0[11];
  sub_227175A60();
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = "SeymourServices/RecommendationSystem.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 686;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_227164BA8;
  v4 = v0[14];
  v5 = v0[12];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717AE8C, v2, v5);
}

uint64_t sub_227164BA8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_227164DE0;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_227164CF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227164CF8(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  sub_227662740();
  v5 = sub_227665AA0();
  (*(v3 + 8))(v2, v4);
  (*(v1[13] + 8))(v1[14], v1[12]);

  v6 = v1[1];

  return v6(v5 & 1);
}

uint64_t sub_227164DE0()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_22766A680();
  v1 = sub_22766B380();
  v2 = sub_22766C870();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[17];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226E8E000, v1, v2, "[Inference] User subscription unavailable or not subscribed.", v5, 2u);
    MEMORY[0x22AA9A450](v5, -1, -1);
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_227164F28(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_227669890();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227164FEC, 0, 0);
}

uint64_t sub_227164FEC()
{
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationUserData", 28, 2, &dword_226E8E000, 1, (v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_2271650B4;
  v2 = *(v0 + 112);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return sub_227171938(v3, v4, v2);
}

uint64_t sub_2271650B4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_227165288;
  }

  else
  {
    v2 = sub_2271651C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271651C8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227165288()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227165380(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_227664EC0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227165440, 0, 0);
}

uint64_t sub_227165440()
{
  v1 = v0[4];
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  *v5 = v0;
  v5[1] = sub_2271655B8;
  v7 = v0[3];
  v8 = v0[4];

  return (v10)(v7, sub_22717B814, v8, v6, v2, v3);
}

uint64_t sub_2271655B8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22717B848, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2271656FC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227664EC0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271657BC, 0, 0);
}

uint64_t sub_2271657BC()
{
  v1 = v0[4];
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  *v5 = v0;
  v5[1] = sub_227165934;
  v7 = v0[3];
  v8 = v0[4];

  return (v10)(v7, sub_22717AD30, v8, v6, v2, v3);
}

uint64_t sub_227165934()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227165A78, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227165A78()
{
  v1 = *(v0 + 72);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 48) + 88))(*(v0 + 56), *(v0 + 40)) == *MEMORY[0x277D51188])
    {
      v3 = *(v0 + 24);

      v4 = sub_2276638D0();
      (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

      v5 = *(v0 + 8);
      goto LABEL_6;
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  swift_willThrow();

  v5 = *(v0 + 8);
LABEL_6:

  return v5();
}

uint64_t sub_227165C00(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_227165C94;

  return sub_227165ECC();
}

uint64_t sub_227165C94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227165DC8, 0, 0);
  }
}

uint64_t sub_227165DC8()
{
  v10 = v0;
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_2274CDADC(*(v1 + 16), 0);
    v4 = *(sub_227668EF0() - 8);
    sub_2274CEFBC(&v9, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    v6 = v5;
    sub_226EBB21C(v9);
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  **(v0 + 16) = v3;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_227165ECC()
{
  v1[8] = v0;
  v2 = sub_227669890();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227165F8C, 0, 0);
}

uint64_t sub_227165F8C()
{
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationAwardProgressReferences", 43, 2, &dword_226E8E000, 1, v0 + 2);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_227166054;
  v2 = v0[8];

  return sub_227175E68((v0 + 7), v2);
}

uint64_t sub_227166054()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_227165288;
  }

  else
  {
    v2 = sub_227166168;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227166168()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[7];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_227166230(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_2271662D0;

  return sub_22715D2C4(a1);
}

uint64_t sub_2271662D0()
{

  if (v0)
  {

    v1 = sub_227166488;
  }

  else
  {
    v1 = sub_2271663E8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2271663E8()
{
  v1 = *(v0 + 16);
  v2 = sub_227666650();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227166488()
{
  v1 = *(v0 + 16);
  v2 = sub_227666650();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227166528(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_227166548, 0, 0);
}

uint64_t sub_227166548()
{
  v1 = *(v0 + 32);
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 24);

  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB940, qword_22767B408);
  *v5 = v0;
  v5[1] = sub_2271666C4;
  v7 = *(v0 + 32);

  return (v9)(v0 + 16, sub_22717B170, v7, v6, v2, v3);
}

uint64_t sub_2271666C4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_226FA13B4;
  }

  else
  {

    v2 = sub_2271667E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227166800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[593] = a3;
  v3[587] = a2;
  v3[581] = a1;
  sub_2276627D0();
  v3[599] = swift_task_alloc();
  v4 = sub_227668F10();
  v3[605] = v4;
  v3[611] = *(v4 - 8);
  v3[617] = swift_task_alloc();
  v3[623] = swift_task_alloc();
  v5 = sub_227668DB0();
  v3[629] = v5;
  v3[635] = *(v5 - 8);
  v3[641] = swift_task_alloc();
  v3[647] = swift_task_alloc();
  v6 = sub_227667870();
  v3[653] = v6;
  v3[659] = *(v6 - 8);
  v3[665] = swift_task_alloc();
  v3[671] = swift_task_alloc();
  v3[677] = swift_task_alloc();
  v7 = sub_227668B30();
  v3[683] = v7;
  v3[689] = *(v7 - 8);
  v3[695] = swift_task_alloc();
  v3[701] = swift_task_alloc();
  v3[707] = swift_task_alloc();
  v8 = sub_227668670();
  v3[713] = v8;
  v3[719] = *(v8 - 8);
  v3[725] = swift_task_alloc();
  v3[731] = swift_task_alloc();
  v3[737] = swift_task_alloc();
  v9 = sub_227668650();
  v3[743] = v9;
  v3[749] = *(v9 - 8);
  v3[755] = swift_task_alloc();
  v3[761] = swift_task_alloc();
  v3[767] = swift_task_alloc();
  v10 = sub_227666D20();
  v3[773] = v10;
  v3[779] = *(v10 - 8);
  v3[785] = swift_task_alloc();
  v3[791] = swift_task_alloc();
  v3[797] = swift_task_alloc();
  v11 = sub_227666190();
  v3[803] = v11;
  v3[809] = *(v11 - 8);
  v3[815] = swift_task_alloc();
  v3[821] = swift_task_alloc();
  v3[827] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9550, &qword_22767B2D0);
  v3[833] = v12;
  v3[839] = *(v12 - 8);
  v3[845] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227166C88, 0, 0);
}

uint64_t sub_227166C88()
{
  v1 = v0[845];
  __swift_project_boxed_opaque_existential_0((v0[587] + 16), *(v0[587] + 40));
  sub_22766AE00();
  v2 = swift_task_alloc();
  v0[851] = v2;
  *(v2 + 16) = "SeymourServices/RecommendationSystem.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 369;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[857] = v3;
  v4 = sub_226E99364(0, &qword_2813989F0, 0x277CB8F30);
  *v3 = v0;
  v3[1] = sub_227166DE0;

  return MEMORY[0x2822008A0](v0 + 575, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717A848, v2, v4);
}

uint64_t sub_227166DE0()
{
  v2 = *v1;
  *(*v1 + 6904) = v0;

  if (v0)
  {

    v3 = sub_2271674D0;
  }

  else
  {
    v4 = v2[845];
    v5 = v2[839];
    v6 = v2[833];
    v2[869] = v2[575];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227166F44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227166F44()
{
  v1 = [*(v0 + 6952) ams_DSID];
  *(v0 + 7000) = v1;
  v2 = *(v0 + 6952);
  if (v1)
  {
    v3 = v1;
    v4 = [*(v0 + 6952) ams_storefront];
    if (v4)
    {
      v5 = v4;
      v6 = sub_22766C000();
      v8 = v7;
      *(v0 + 4536) = v6;
      *(v0 + 4544) = v7;

      *(v0 + 7048) = v8;

      swift_asyncLet_begin();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8D0, &qword_22767B2F8);
      swift_asyncLet_begin();

      swift_asyncLet_begin();

      swift_asyncLet_begin();

      swift_asyncLet_begin();

      swift_asyncLet_begin();

      swift_asyncLet_begin();
      v9 = *(v0 + 6616);

      return MEMORY[0x282200930](v0 + 656, v9, sub_2271676D4, v0 + 4608);
    }

    v2 = *(v0 + 6952);
    v12 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51B38], v12);
    swift_willThrow();
  }

  else
  {
    v10 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51B18], v10);
    swift_willThrow();
  }

  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2271674D0()
{
  (*(v0[839] + 8))(v0[845], v0[833]);
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);
  sub_226EA9E3C(0, 0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2271676D4()
{
  v1[887] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227168F84, 0, 0);
  }

  else
  {
    v2 = v1[827];
    v3 = v1[821];
    v4 = v1[809];
    v5 = v1[803];
    v6 = *(v4 + 16);
    v1[893] = v6;
    v1[899] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v3, v2, v5);
    v7 = v1[677];

    return MEMORY[0x282200930](v1 + 162, v7, sub_2271677B4, v1 + 624);
  }
}

uint64_t sub_2271677B4()
{
  v1[905] = v0;
  if (v0)
  {
    (*(v1[809] + 8))(v1[821], v1[803]);

    v2 = sub_227169384;
  }

  else
  {
    v2 = sub_227167854;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227167854()
{
  v1 = *(v0 + 5416);
  v2 = *(v0 + 5368);
  v3 = *(v0 + 5272);
  v4 = *(v0 + 5224);
  v5 = *(v3 + 16);
  *(v0 + 7288) = v5;
  *(v0 + 7336) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v4);
  *(v0 + 8488) = sub_227668F50();
  *(v0 + 8489) = sub_227668F60();

  return MEMORY[0x282200930](v0 + 1936, v0 + 4552, sub_227167910, v0 + 5376);
}

uint64_t sub_227167910()
{
  v1[923] = v0;
  if (v0)
  {
    v2 = v1[821];
    v3 = v1[809];
    v4 = v1[803];
    v5 = v1[671];
    v6 = v1[659];
    v7 = v1[653];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_227169784, 0, 0);
  }

  else
  {
    v1[929] = v1[569];

    v8 = v1[797];

    return MEMORY[0x282200930](v1 + 322, v8, sub_227167A2C, v1 + 720);
  }
}

uint64_t sub_227167A2C()
{
  v1[935] = v0;
  if (v0)
  {
    v2 = v1[821];
    v3 = v1[809];
    v4 = v1[803];
    v5 = v1[671];
    v6 = v1[659];
    v7 = v1[653];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_227169B84, 0, 0);
  }

  else
  {
    v8 = v1[797];
    v9 = v1[791];
    v10 = v1[779];
    v11 = v1[773];
    v12 = *(v10 + 16);
    v1[941] = v12;
    v1[947] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v9, v8, v11);
    v13 = v1[767];

    return MEMORY[0x282200930](v1 + 402, v13, sub_227167B84, v1 + 768);
  }
}

uint64_t sub_227167B84()
{
  v1[953] = v0;
  if (v0)
  {
    v17 = v1[821];
    v2 = v1[809];
    v3 = v1[803];
    v4 = v1[791];
    v5 = v1[779];
    v6 = v1[773];
    v7 = v1[671];
    v8 = v1[659];
    v9 = v1[653];

    (*(v5 + 8))(v4, v6);
    (*(v8 + 8))(v7, v9);
    (*(v2 + 8))(v17, v3);

    return MEMORY[0x2822009F8](sub_227169F84, 0, 0);
  }

  else
  {
    v10 = v1[767];
    v11 = v1[761];
    v12 = v1[749];
    v13 = v1[743];
    v14 = *(v12 + 16);
    v1[959] = v14;
    v1[965] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v11, v10, v13);
    v15 = v1[737];

    return MEMORY[0x282200930](v1 + 482, v15, sub_227167D10, v1 + 816);
  }
}

uint64_t sub_227167D10()
{
  v1[971] = v0;
  if (v0)
  {
    v2 = v1[809];
    v19 = v1[803];
    v20 = v1[821];
    v3 = v1[779];
    v4 = v1[773];
    v5 = v1[761];
    v6 = v1[749];
    v7 = v1[743];
    v17 = v1[791];
    v18 = v1[671];
    v8 = v1[659];
    v9 = v1[653];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v17, v4);
    (*(v8 + 8))(v18, v9);
    (*(v2 + 8))(v20, v19);

    return MEMORY[0x2822009F8](sub_22716A384, 0, 0);
  }

  else
  {
    v10 = v1[737];
    v11 = v1[731];
    v12 = v1[719];
    v13 = v1[713];
    v14 = *(v12 + 16);
    v1[977] = v14;
    v1[983] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v11, v10, v13);
    v15 = v1[707];

    return MEMORY[0x282200930](v1 + 2, v15, sub_227167EC0, v1 + 864);
  }
}

uint64_t sub_227167EC0()
{
  v1[989] = v0;
  if (v0)
  {
    v2 = v1[809];
    v17 = v1[803];
    v18 = v1[821];
    v3 = v1[779];
    v15 = v1[773];
    v16 = v1[791];
    v4 = v1[749];
    v5 = v1[743];
    v6 = v1[731];
    v7 = v1[719];
    v8 = v1[713];
    v14 = v1[671];
    v9 = v1[659];
    v12 = v1[761];
    v13 = v1[653];

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v12, v5);
    (*(v3 + 8))(v16, v15);
    (*(v9 + 8))(v14, v13);
    (*(v2 + 8))(v18, v17);
    v10 = sub_22716A784;
  }

  else
  {
    v10 = sub_227168024;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227168024()
{
  v1 = v0[707];
  v2 = v0[701];
  v3 = v0[689];
  v4 = v0[683];
  v5 = *(v3 + 16);
  v0[995] = v5;
  v0[1001] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v4);
  sub_227668DA0();
  v6 = v0[827];

  return MEMORY[0x282200930](v0 + 82, v6, sub_227168138, v0 + 912);
}

uint64_t sub_227168138()
{
  *(v1 + 8056) = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22716AB84, 0, 0);
  }

  else
  {
    (*(v1 + 7144))(*(v1 + 6520), *(v1 + 6616), *(v1 + 6424));
    v2 = *(v1 + 5416);

    return MEMORY[0x282200930](v1 + 1296, v2, sub_227168200, v1 + 7680);
  }
}

uint64_t sub_227168200()
{
  *(v1 + 8104) = v0;
  if (v0)
  {
    (*(*(v1 + 6472) + 8))(*(v1 + 6520), *(v1 + 6424));

    return MEMORY[0x2822009F8](sub_22716AFE4, 0, 0);
  }

  else
  {
    (*(v1 + 7288))(*(v1 + 5320), *(v1 + 5416), *(v1 + 5224));

    return MEMORY[0x282200930](v1 + 1936, v1 + 4552, sub_2271682EC, v1 + 8064);
  }
}

uint64_t sub_2271682EC()
{
  v1[1019] = v0;
  if (v0)
  {
    v2 = v1[815];
    v3 = v1[809];
    v4 = v1[803];
    v5 = v1[665];
    v6 = v1[659];
    v7 = v1[653];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_22716B444, 0, 0);
  }

  else
  {
    v1[1025] = v1[569];

    v8 = v1[797];

    return MEMORY[0x282200930](v1 + 322, v8, sub_227168408, v1 + 1056);
  }
}

uint64_t sub_227168408()
{
  *(v1 + 8248) = v0;
  if (v0)
  {
    v2 = *(v1 + 6520);
    v3 = *(v1 + 6472);
    v4 = *(v1 + 6424);
    v5 = *(v1 + 5320);
    v6 = *(v1 + 5272);
    v7 = *(v1 + 5224);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_22716B8A4, 0, 0);
  }

  else
  {
    (*(v1 + 7528))(*(v1 + 6280), *(v1 + 6376), *(v1 + 6184));
    v8 = *(v1 + 6136);

    return MEMORY[0x282200930](v1 + 3216, v8, sub_227168548, v1 + 8832);
  }
}

uint64_t sub_227168548()
{
  *(v1 + 8296) = v0;
  if (v0)
  {
    v12 = *(v1 + 6520);
    v2 = *(v1 + 6472);
    v3 = *(v1 + 6424);
    v4 = *(v1 + 6280);
    v5 = *(v1 + 6232);
    v6 = *(v1 + 6184);
    v7 = *(v1 + 5320);
    v8 = *(v1 + 5272);
    v9 = *(v1 + 5224);

    (*(v5 + 8))(v4, v6);
    (*(v8 + 8))(v7, v9);
    (*(v2 + 8))(v12, v3);

    return MEMORY[0x2822009F8](sub_22716BD04, 0, 0);
  }

  else
  {
    (*(v1 + 7672))(*(v1 + 6040), *(v1 + 6136), *(v1 + 5944));
    v10 = *(v1 + 5896);

    return MEMORY[0x282200930](v1 + 3856, v10, sub_2271686BC, v1 + 9216);
  }
}

uint64_t sub_2271686BC()
{
  *(v1 + 8344) = v0;
  if (v0)
  {
    v2 = *(v1 + 6472);
    v14 = *(v1 + 6424);
    v15 = *(v1 + 6520);
    v3 = *(v1 + 6232);
    v4 = *(v1 + 6184);
    v5 = *(v1 + 6040);
    v6 = *(v1 + 5992);
    v7 = *(v1 + 5944);
    v12 = *(v1 + 6280);
    v13 = *(v1 + 5320);
    v8 = *(v1 + 5272);
    v9 = *(v1 + 5224);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v12, v4);
    (*(v8 + 8))(v13, v9);
    (*(v2 + 8))(v15, v14);

    return MEMORY[0x2822009F8](sub_22716C164, 0, 0);
  }

  else
  {
    (*(v1 + 7816))(*(v1 + 5800), *(v1 + 5896), *(v1 + 5704));
    v10 = *(v1 + 5656);

    return MEMORY[0x282200930](v1 + 16, v10, sub_227168854, v1 + 9600);
  }
}

uint64_t sub_227168854()
{
  v1[1049] = v0;
  if (v0)
  {
    v2 = v1[809];
    v17 = v1[803];
    v18 = v1[815];
    v3 = v1[779];
    v15 = v1[773];
    v16 = v1[785];
    v4 = v1[749];
    v5 = v1[743];
    v6 = v1[725];
    v7 = v1[719];
    v8 = v1[713];
    v14 = v1[665];
    v9 = v1[659];
    v12 = v1[755];
    v13 = v1[653];

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v12, v5);
    (*(v3 + 8))(v16, v15);
    (*(v9 + 8))(v14, v13);
    (*(v2 + 8))(v18, v17);
    v10 = sub_22716C5C4;
  }

  else
  {
    v10 = sub_2271689B8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2271689B8()
{
  v1 = *(v0 + 8392);
  (*(v0 + 7960))(*(v0 + 5560), *(v0 + 5656), *(v0 + 5464));
  sub_227668F00();
  *(v0 + 8440) = v1;
  if (v1)
  {
    (*(*(v0 + 5080) + 8))(*(v0 + 5176), *(v0 + 5032));

    v2 = sub_22716CA24;
    v3 = *(v0 + 5416);
    v4 = v0 + 1296;
    v5 = v0 + 9984;
  }

  else
  {
    v6 = *(v0 + 5176);
    v7 = *(v0 + 5128);
    v8 = *(v0 + 5080);
    v9 = *(v0 + 5032);
    v10 = *(v0 + 4936);
    v11 = *(v0 + 4888);
    v14 = *(v0 + 4840);
    v15 = *(v0 + 4984);
    v12 = [*(v0 + 7000) stringValue];
    sub_22766C000();

    sub_227668F40();
    (*(v8 + 16))(v7, v6, v9);
    sub_227668F80();
    (*(v11 + 16))(v10, v15, v14);
    sub_227668F70();
    sub_227668840();
    (*(v11 + 8))(v15, v14);
    (*(v8 + 8))(v6, v9);
    v2 = sub_227168C04;
    v3 = *(v0 + 5416);
    v4 = v0 + 1296;
    v5 = v0 + 10320;
  }

  return MEMORY[0x282200920](v4, v3, v2, v5);
}

uint64_t sub_227168DA4()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227169148()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227169548()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227169948()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227169D48()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716A148()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716A548()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716A948()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716AB84()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716AC08, v0 + 918);
}

uint64_t sub_22716ADA8()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716AFE4()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716B068, v0 + 966);
}

uint64_t sub_22716B208()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716B444()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716B4C8, v0 + 1014);
}

uint64_t sub_22716B668()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716B8A4()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716B928, v0 + 1062);
}

uint64_t sub_22716BAC8()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716BD04()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716BD88, v0 + 1110);
}

uint64_t sub_22716BF28()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716C164()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716C1E8, v0 + 1158);
}

uint64_t sub_22716C388()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716C5C4()
{
  (*(v0[635] + 8))(v0[647], v0[629]);
  v1 = v0[677];

  return MEMORY[0x282200920](v0 + 162, v1, sub_22716C648, v0 + 1206);
}

uint64_t sub_22716C7E8()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716CBC4()
{
  v1 = *(v0 + 7000);

  v2 = *(v0 + 4696);
  sub_226EA9E3C(&unk_22767B328, v2);
  sub_226EA9E3C(&unk_22767B338, v2);
  sub_226EA9E3C(&unk_22767B348, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22716CE00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716CE9C(a1);
}

uint64_t sub_22716CE9C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_227669890();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22716CFD0, 0, 0);
}

uint64_t sub_22716CFD0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  sub_22766A7F0();
  sub_226E9DD3C("fetchRemoteForYouCanvas", 23, 2, &dword_226E8E000, 1, v0 + 2);
  v6 = __swift_project_boxed_opaque_existential_0((v5 + 624), *(v5 + 648));
  __swift_project_boxed_opaque_existential_0((*v6 + 16), *(*v6 + 40));
  sub_227289554(14, 0, 0, v2);
  sub_2272A4B68(v2, v1);
  v7 = *(v4 + 8);
  v0[16] = v7;
  v0[17] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *(v8 + 16) = "SeymourServices/RecommendationSystem.swift";
  *(v8 + 24) = 42;
  *(v8 + 32) = 2;
  *(v8 + 40) = 695;
  *(v8 + 48) = v1;
  v9 = swift_task_alloc();
  v0[19] = v9;
  v10 = sub_227666190();
  *v9 = v0;
  v9[1] = sub_22716D19C;
  v11 = v0[7];

  return MEMORY[0x2822008A0](v11, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717AED0, v8, v10);
}

uint64_t sub_22716D19C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_22716D3C0;
  }

  else
  {
    (*(v2 + 128))(*(v2 + 96), *(v2 + 72));
    v3 = sub_22716D2E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22716D2E4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22716D3C0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  (*(v0 + 128))(*(v0 + 96), *(v0 + 72));
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_227669930();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_227669920();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22716D4E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22716D578;

  return sub_227165ECC();
}

uint64_t sub_22716D578(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22717B80C, 0, 0);
  }
}

uint64_t sub_22716D6AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22716D740;

  return sub_2271648AC();
}

uint64_t sub_22716D740(char a1)
{
  v3 = *v1;
  v4 = *v1;

  v5 = swift_task_alloc();
  *(v3 + 40) = v5;
  *v5 = v4;
  v5[1] = sub_22716D8A8;
  v6 = *(v3 + 16);

  return sub_227164F28(v6, a1);
}

uint64_t sub_22716D8A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22716D99C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716DA38(a1);
}

uint64_t sub_22716DA38(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_227669890();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_227668830();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB930, &unk_22767B3F0);
  v2[19] = swift_task_alloc();
  v5 = sub_227664CA0();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = sub_227667500();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22716DCB0, 0, 0);
}

uint64_t sub_22716DCB0()
{
  v1 = v0[12];
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_22716DE18;
  v6 = v0[31];
  v7 = v0[29];
  v8 = v0[12];

  return (v10)(v6, sub_22717AD48, v8, v7, v2, v3);
}

uint64_t sub_22716DE18()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_22716ED88;
  }

  else
  {

    v2 = sub_22716DF34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22716DF34()
{
  v1 = *(v0 + 240);
  sub_226E93170(*(v0 + 248), v1, &qword_27D7B93D8, &qword_227673E10);
  v2 = sub_227668A00();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_226E97D1C(*(v0 + 240), &qword_27D7B93D8, &qword_227673E10);
LABEL_7:
    v12 = MEMORY[0x277D84F90];
    *(v0 + 296) = MEMORY[0x277D84F90];
    v13 = *(v0 + 96);
    sub_22766A7F0();
    sub_226E9DD3C("fetchPersonalizationUserHistoryData", 35, 2, &dword_226E8E000, 1, (v0 + 16));
    v14 = swift_task_alloc();
    *(v0 + 304) = v14;
    *v14 = v0;
    v14[1] = sub_22716E984;
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);

    return sub_22717296C(v15, v13 + 832, v16, v12);
  }

  v4 = *(v0 + 240);
  v5 = sub_2276689C0();
  v7 = v6;
  (*(v3 + 8))(v4, v2);
  *(v0 + 56) = v5;
  *(v0 + 64) = v7 & 1;
  *(v0 + 72) = 1;
  *(v0 + 80) = 1;
  sub_22717AD98();
  sub_22717ADEC();
  if ((sub_227663B20() & 1) == 0)
  {
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_0((*(v0 + 96) + 432), *(*(v0 + 96) + 456));
  sub_2276674E0();
  v8 = swift_task_alloc();
  *(v0 + 272) = v8;
  *v8 = v0;
  v8[1] = sub_22716E1DC;
  v9 = *(v0 + 224);
  v10 = MEMORY[0x277D84F90];

  return sub_2274FBDB4(v9, v10);
}

uint64_t sub_22716E1DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  (*(v3[27] + 8))(v3[28], v3[26]);
  if (v1)
  {
    v5 = sub_22716E884;
  }

  else
  {
    v5 = sub_22716E34C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22716E34C()
{
  v55 = v0;
  v1 = v0[35];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    v4 = sub_2274CDB04(*(v1 + 16), 0);
    sub_2274CEFD4(&v54, &v4[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v1);
    v6 = v5;
    v7 = v54;

    sub_226EBB21C(v7);
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v8 = v0[36];
  v54 = v4;
  sub_227178B00(&v54);
  if (v8)
  {
  }

  v10 = v54;
  v11 = v54[2];
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    v14 = v0[21];
    v48 = v54[2];
    v51 = (v14 + 32);
    v49 = v54;
    while (v13 < v10[2])
    {
      v15 = v0[19];
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v17 = *(v14 + 72);
      (*(v14 + 16))(v0[25], v10 + v16 + v17 * v13, v0[20]);
      sub_227664C50();
      v18 = sub_2276674C0();
      v19 = (*(*(v18 - 8) + 48))(v15, 1, v18);
      sub_226E97D1C(v15, &unk_27D7BB930, &unk_22767B3F0);
      if (v19 == 1)
      {
        v20 = *v51;
        (*v51)(v0[24], v0[25], v0[20]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1F828(0, *(v12 + 16) + 1, 1);
          v12 = v54;
        }

        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_226F1F828((v22 > 1), v23 + 1, 1);
          v12 = v54;
        }

        v24 = v0[24];
        v25 = v0[20];
        *(v12 + 16) = v23 + 1;
        result = v20(v12 + v16 + v23 * v17, v24, v25);
        v11 = v48;
        v10 = v49;
      }

      else
      {
        result = (*(v14 + 8))(v0[25], v0[20]);
      }

      if (v11 == ++v13)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_20:

  v26 = sub_2276671B0();
  result = sub_2273FC4C0(v26, v12);
  v52 = v28;
  v53 = v29 >> 1;
  v30 = (v29 >> 1) - v27;
  if (__OFSUB__(v29 >> 1, v27))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v30)
  {
    v31 = v27;
    v54 = MEMORY[0x277D84F90];
    result = sub_226F20128(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v47 = v0[21];
    v46 = v0[17];
    v32 = v53;
    v33 = v54;
    if (v31 > v53)
    {
      v32 = v31;
    }

    v50 = v32;
    while (v50 != v31)
    {
      v35 = v0[22];
      v34 = v0[23];
      v36 = v0[20];
      v37 = *(v47 + 16);
      v37(v34, v52 + *(v47 + 72) * v31, v36);
      v37(v35, v34, v36);
      sub_227668820();
      (*(v47 + 8))(v34, v36);
      v54 = v33;
      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_226F20128((v38 > 1), v39 + 1, 1);
        v33 = v54;
      }

      v40 = v0[18];
      v41 = v0[16];
      *(v33 + 16) = v39 + 1;
      result = (*(v46 + 32))(v33 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v39, v40, v41);
      if (v53 == ++v31)
      {
        swift_unknownObjectRelease();
        goto LABEL_32;
      }
    }

    goto LABEL_36;
  }

  swift_unknownObjectRelease();
  v33 = MEMORY[0x277D84F90];
LABEL_32:
  v0[37] = v33;
  v42 = v0[12];
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationUserHistoryData", 35, 2, &dword_226E8E000, 1, v0 + 2);
  v43 = swift_task_alloc();
  v0[38] = v43;
  *v43 = v0;
  v43[1] = sub_22716E984;
  v44 = v0[11];
  v45 = v0[12];

  return sub_22717296C(v44, v42 + 832, v45, v33);
}

uint64_t sub_22716E884()
{
  sub_226E97D1C(*(v0 + 248), &qword_27D7B93D8, &qword_227673E10);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22716E984()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_22716EC08;
  }

  else
  {
    v2 = sub_22716EAB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22716EAB8()
{
  v1 = v0[31];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_226E97D1C(v1, &qword_27D7B93D8, &qword_227673E10);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22716EC08()
{
  v1 = v0[31];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_226E97D1C(v1, &qword_27D7B93D8, &qword_227673E10);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22716ED88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22716EE78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716EF14(a1);
}

uint64_t sub_22716EF14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2276638D0();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB918, &unk_22767B3C8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_227669890();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22716F0B8, 0, 0);
}

uint64_t sub_22716F0B8(uint64_t a1)
{
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationUserLibraryData", 35, 2, &dword_226E8E000, 1, v1 + 2);
  v2 = swift_task_alloc();
  v1[19] = v2;
  *v2 = v1;
  v2[1] = sub_22716F180;
  v3 = v1[15];

  return sub_2271656FC(v3);
}

uint64_t sub_22716F180()
{

  if (v0)
  {

    v1 = sub_22716F4BC;
  }

  else
  {
    v1 = sub_22716F298;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22716F298()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  sub_226E93170(v0[15], v1, &unk_27D7BB920, &unk_227672480);
  v4 = 1;
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    (*(v8 + 32))(v5, v0[14], v7);
    (*(v8 + 16))(v6, v5, v7);
    sub_227667880();
    (*(v8 + 8))(v5, v7);
    v4 = 0;
  }

  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[13];
  v14 = sub_227667890();
  (*(*(v14 - 8) + 56))(v13, v4, 1, v14);
  sub_227668660();
  sub_226E97D1C(v11, &unk_27D7BB920, &unk_227672480);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v9 + 8))(v10, v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_22716F4BC()
{
  v1 = 1;
  (*(v0[10] + 56))(v0[15], 1, 1, v0[9]);
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[10];
  sub_226E93170(v0[15], v2, &unk_27D7BB920, &unk_227672480);
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    (*(v8 + 32))(v5, v0[14], v7);
    (*(v8 + 16))(v6, v5, v7);
    sub_227667880();
    (*(v8 + 8))(v5, v7);
    v1 = 0;
  }

  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[13];
  v14 = sub_227667890();
  (*(*(v14 - 8) + 56))(v13, v1, 1, v14);
  sub_227668660();
  sub_226E97D1C(v11, &unk_27D7BB920, &unk_227672480);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v9 + 8))(v10, v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_22716F700(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716F79C(a1);
}

uint64_t sub_22716F79C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  v2[13] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[14] = v3;
  v2[15] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[16] = v4;
  *v4 = v2;
  v4[1] = sub_22716F890;

  return sub_22715D2C4(v3);
}

uint64_t sub_22716F890()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22716FAD8;
  }

  else
  {
    v2 = sub_22716F9A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22716F9A4()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = sub_227666650();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_22717ACC0(v1, v2);
  v4 = v0[15];
  v5 = v0[12];
  sub_226E93170(v4, v0[13], &unk_27D7BB8C0, &qword_22767F780);
  v6 = *(v5 + 920);
  sub_227668B20();
  sub_226E97D1C(v4, &unk_27D7BB8C0, &qword_22767F780);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22716FAD8()
{
  swift_getErrorValue();
  v1 = sub_227665A50();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22717B7C4(&qword_28139B770, MEMORY[0x277D51B70], MEMORY[0x277D51B68]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D51B48], v1);
  v3 = sub_22766D290();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = *(v0 + 120);
  if (v3)
  {

    v5 = sub_227666650();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = *(v0 + 120);
    v7 = *(v0 + 96);
    sub_226E93170(v6, *(v0 + 104), &unk_27D7BB8C0, &qword_22767F780);
    v8 = *(v7 + 920);
    sub_227668B20();
    sub_226E97D1C(v6, &unk_27D7BB8C0, &qword_22767F780);
  }

  else
  {
    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22716FCFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_22716FD98(a1);
}

uint64_t sub_22716FD98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_227669890();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22716FE58, 0, 0);
}

uint64_t sub_22716FE58(uint64_t a1)
{
  v2 = v1[8];
  sub_22766A7F0();
  sub_226E9DD3C("fetchPersonalizationCatalogData", 31, 2, &dword_226E8E000, 1, v1 + 2);
  v3 = swift_task_alloc();
  v1[12] = v3;
  *v3 = v1;
  v3[1] = sub_22716FF24;
  v4 = v1[7];
  v5 = v1[8];

  return sub_22717324C(v4, v2 + 832, v5);
}

uint64_t sub_22716FF24()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22717B830;
  }

  else
  {
    v2 = sub_22717B838;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227170038(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A430();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227666650();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271701B8, 0, 0);
}

uint64_t sub_2271701B8(uint64_t a1)
{
  v3 = v1[12];
  v2 = v1[13];
  v5 = v1[10];
  v4 = v1[11];
  v6 = v1[8];
  v7 = v1[7];
  v9 = v1[2];
  v8 = v1[3];
  sub_22766A660();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v10 = v8[71];
  __swift_project_boxed_opaque_existential_0(v8 + 67, v8[70]);
  (*(v6 + 16))(v5, v9, v7);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v1[14] = v12;
  *(v12 + 16) = v8;
  (*(v6 + 32))(v12 + v11, v5, v7);
  v13 = *(v10 + 24);

  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  v1[15] = v14;
  *v14 = v1;
  v14[1] = sub_227170404;

  return v16();
}

uint64_t sub_227170404()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22717061C;
  }

  else
  {

    v2 = sub_227170520;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227170520()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_0((v0[3] + 792), *(v0[3] + 816));
  sub_2271D7EE8();
  swift_getObjectType();
  sub_22766A420();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22717061C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271706C8()
{
  v1 = *(v0 + 16);
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2271707F4;

  return v6(v2, v3);
}

uint64_t sub_2271707F4(char a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2271708F4, 0, 0);
}

uint64_t sub_2271708F4()
{
  if (sub_227669C10())
  {
    v1 = sub_227665A50();
    sub_22717B7C4(&qword_28139B778, MEMORY[0x277D51B70], MEMORY[0x277D51B78]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D51B40], v1);
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_227170A14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2273452EC(a1);
  if (!v3)
  {
    sub_22766A770();
    sub_22766B370();
    (*(v7 + 8))(v9, v6);
    v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_22756DD1C(a3, v10[1], *(v10 + 16), v10[3]);
  }
}

uint64_t sub_227170B5C(uint64_t a1)
{
  v1 = sub_22766A000();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_227669FF0();
  sub_2276699D0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_227170C54(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_227170C74, 0, 0);
}

uint64_t sub_227170C74()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_0((v0[4] + 176), *(v0[4] + 200));
  v2 = sub_226E9EF44();
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_226E99364(0, &qword_281398A70, 0x277CEE4A0);
  *v4 = v0;
  v4[1] = sub_227170D9C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x8000000227699D80, sub_22717B404, v3, v5);
}

uint64_t sub_227170D9C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_227170F20;
  }

  else
  {

    v2 = sub_227170EB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227170EB8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227170F20()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227170F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v28 = sub_22766B3B0();
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B3F0();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = sub_22766B3C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  (*(v13 + 104))(v15, *MEMORY[0x277D851B8], v12);
  v24 = sub_22766C980();
  (*(v13 + 8))(v15, v12);
  (*(v9 + 16))(v11, v25, v8);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v18 = v27;
  *(v17 + 16) = v26;
  *(v17 + 24) = v18;
  (*(v9 + 32))(v17 + v16, v11, v8);
  aBlock[4] = sub_22717B40C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_17;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_22766B3D0();
  v32 = MEMORY[0x277D84F90];
  sub_22717B7C4(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420, MEMORY[0x277D83970]);
  v20 = v28;
  sub_22766CC80();
  v21 = v24;
  MEMORY[0x22AA98C80](0, v7, v4, v19);
  _Block_release(v19);

  (*(v31 + 8))(v4, v20);
  (*(v29 + 8))(v7, v30);
}

void sub_22717141C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];
  v10 = sub_22766BE90();
  v11 = [v9 enqueueData_];

  (*(v6 + 16))(v8, a3, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_22717B47C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9F1D0;
  aBlock[3] = &block_descriptor_334;
  v14 = _Block_copy(aBlock);

  [v11 addFinishBlock_];
  _Block_release(v14);
}

uint64_t sub_227171644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2271716E4;

  return sub_227170C54(a3);
}

uint64_t sub_2271716E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_227171830, 0, 0);
  }
}

BOOL sub_227171854(uint64_t a1)
{
  swift_getErrorValue();
  v1 = sub_22766D280();
  v3 = v2;
  if (v1 == sub_22766C000() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_22766D190();

    if ((v6 & 1) == 0)
    {
      return 1;
    }
  }

  swift_getErrorValue();
  return sub_22766D270() != 1;
}

uint64_t sub_227171938(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 58) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  sub_2276629D0();
  *(v3 + 80) = swift_task_alloc();
  v4 = sub_22766B390();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  v6 = sub_2276666A0();
  *(v3 + 136) = v6;
  *(v3 + 144) = *(v6 - 8);
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227171AEC, 0, 0);
}

uint64_t sub_227171AEC()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 72) + 472), *(*(v0 + 72) + 496));
  v1 = sub_22766A330();
  v2 = 4u >> (v1 & 7);
  if (v1 > 2)
  {
    LOBYTE(v2) = 0;
  }

  *(v0 + 59) = v2 & 1;
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_227171BE8;

  return sub_227172390();
}

uint64_t sub_227171BE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v5 = *v3;
  v4[21] = a2;
  v4[22] = v2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227171D5C, 0, 0);
  }
}

uint64_t sub_227171D5C()
{
  v1 = *(v0 + 58);
  __swift_project_boxed_opaque_existential_0((*(v0 + 72) + 336), *(*(v0 + 72) + 360));
  v2 = sub_22766A2C0();
  v3 = sub_22715958C(v2);

  *(v0 + 184) = sub_226F44D54(v3);

  if (v1 == 1)
  {
    v4 = *(v0 + 128);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((*(v0 + 72) + 584), *(*(v0 + 72) + 608));
    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v5, v7);
    sub_226EDD55C(v4);
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *(v8 + 16) = "SeymourServices/RecommendationSystem.swift";
    *(v8 + 24) = 42;
    *(v8 + 32) = 2;
    *(v8 + 40) = 504;
    *(v8 + 48) = v4;
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *v9 = v0;
    v9[1] = sub_22717200C;
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);

    return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717AE5C, v8, v11);
  }

  else
  {
    sub_2276629B0();
    sub_227666CD0();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_22717200C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = sub_2271722E8;
  }

  else
  {
    v5 = v2[15];
    v4 = v2[16];
    v6 = v2[14];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227172188;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227172188(uint64_t a1)
{
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);
  v4 = *(v1 + 136);
  v5 = sub_227666680();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  *(v1 + 48) = v5;
  *(v1 + 56) = v7 & 1;
  *(v1 + 57) = 1;
  sub_227033D54();
  sub_227033DA8();
  sub_227663B30();
  sub_2276629B0();
  sub_227666CD0();

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_2271722E8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227172390()
{
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_227669890();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271724B8, 0, 0);
}

uint64_t sub_2271724B8(uint64_t a1)
{
  v2 = v1[12];
  v3 = v1[9];
  sub_22766A7F0();
  sub_226E9DD3C("queryLanguageCode", 17, 2, &dword_226E8E000, 1, v1 + 2);
  __swift_project_boxed_opaque_existential_0((v3 + 744), *(v3 + 768));
  sub_226FCFE28();
  v4 = swift_task_alloc();
  v1[16] = v4;
  *(v4 + 16) = "SeymourServices/RecommendationSystem.swift";
  *(v4 + 24) = 42;
  *(v4 + 32) = 2;
  *(v4 + 40) = 701;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  v1[17] = v5;
  *v5 = v1;
  v5[1] = sub_227172618;
  v6 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v1 + 7, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717AE74, v4, v6);
}

uint64_t sub_227172618()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  if (v0)
  {

    v4 = sub_22717284C;
  }

  else
  {
    v5 = v2[12];
    v6 = v2[10];
    v7 = v2[8];
    v2[19] = v2[7];
    v2[20] = v7;

    (*(v3 + 8))(v5, v6);
    v4 = sub_227172780;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227172780()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];
  v5 = v0[19];
  v6 = v0[20];

  return v4(v5, v6);
}

uint64_t sub_22717284C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22717296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_227172990, 0, 0);
}

uint64_t sub_227172990()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0(*(v0 + 32), *(*(v0 + 32) + 24));
  *(v0 + 112) = 20;
  *(v0 + 56) = sub_226F19410();
  *(v0 + 64) = sub_226F19464();
  sub_22766A130();
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 24);

  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB940, qword_22767B408);
  *v5 = v0;
  v5[1] = sub_227172BA0;
  v7 = *(v0 + 40);

  return v9(v0 + 16, sub_22717AE40, v7, v6, v2, v3);
}

uint64_t sub_227172BA0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_227172F7C;
  }

  else
  {

    v2 = sub_227172CBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227172CBC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = v2[70];
  v5 = v2[71];
  __swift_project_boxed_opaque_existential_0(v2 + 67, v4);
  v6 = swift_allocObject();
  v0[11] = v6;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v1;
  v7 = *(v5 + 24);

  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[12] = v8;
  v9 = sub_227668650();
  *v8 = v0;
  v8[1] = sub_227172E60;
  v10 = v0[3];

  return (v12)(v10, sub_226EDC5A0, v6, v9, v4, v5);
}

uint64_t sub_227172E60()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_227173158;
  }

  else
  {

    v2 = sub_22717306C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227172F7C()
{
  v1 = *(v0 + 32);

  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  *(v0 + 113) = 20;
  sub_22766A120();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22717306C()
{
  __swift_project_boxed_opaque_existential_0(*(v0 + 32), *(*(v0 + 32) + 24));
  *(v0 + 115) = 20;
  sub_22766A120();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227173158()
{
  v1 = *(v0 + 32);

  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  *(v0 + 114) = 20;
  sub_22766A120();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22717324C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_227173270, 0, 0);
}

uint64_t sub_227173270()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_0(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 72) = 21;
  *(v0 + 40) = sub_226F19410();
  *(v0 + 48) = sub_226F19464();
  sub_22766A130();
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = sub_227667870();
  *v5 = v0;
  v5[1] = sub_227173474;
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return (v10)(v8, sub_22717ACA4, v7, v6, v2, v3);
}

uint64_t sub_227173474()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22717367C;
  }

  else
  {

    v2 = sub_227173590;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227173590()
{
  __swift_project_boxed_opaque_existential_0(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 74) = 21;
  sub_22766A120();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22717367C()
{
  v1 = *(v0 + 24);

  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  *(v0 + 73) = 21;
  sub_22766A120();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22717376C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v106 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8F0, &qword_22767B368);
  MEMORY[0x28223BE20](v12 - 8);
  v129 = &v106 - v13;
  v131 = sub_227668F30();
  v125 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v122 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v121 = &v106 - v16;
  v134 = sub_227666B60();
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227662750();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v106 - v23;
  v130 = a2;
  v25 = *(a2 + 920);
  sub_227662720();
  if (sub_22766A110() < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    sub_22766C360();
    goto LABEL_6;
  }

  v119 = v8;
  v120 = v11;
  v114 = a3;
  sub_22766C510();
  sub_2276626D0();
  v26 = v19[1];
  v26(v21, v18);
  v27 = sub_2276626A0();
  v116 = v24;
  v118 = v18;
  v117 = v19 + 1;
  v115 = v26;
  v26(v24, v18);
  v28 = [v25 stringFromDate_];

  v127 = sub_22766C000();
  v30 = v29;

  v31 = a1[3];
  v124 = a1;
  v32 = __swift_project_boxed_opaque_existential_0(a1, v31);
  v33 = *v32;
  v34 = v32[1];
  LOBYTE(v27) = *(v32 + 16);
  v35 = v32[3];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v8 = swift_allocObject();
  v36 = v33;
  v37 = v34;

  sub_22766A070();
  *(v8 + 2) = v36;
  *(v8 + 3) = v37;
  v8[32] = v27;
  *(v8 + 5) = v35;
  swift_getKeyPath();
  v137[3] = MEMORY[0x277D837D0];
  v137[0] = v127;
  v137[1] = v30;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v38 = sub_22766C820();
  sub_226E93170(v137, v135, &unk_27D7BC990, &qword_227670A30);
  v39 = v136;
  if (v136)
  {
    v40 = __swift_project_boxed_opaque_existential_0(v135, v136);
    v41 = *(v39 - 8);
    v42 = MEMORY[0x28223BE20](v40);
    v44 = &v106 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44, v42);
    v45 = sub_22766D170();
    (*(v41 + 8))(v44, v39);
    __swift_destroy_boxed_opaque_existential_0(v135);
  }

  else
  {
    v45 = 0;
  }

  a1 = v128;
  v46 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v47 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v137, &unk_27D7BC990, &qword_227670A30);
  v19 = &qword_2813B2078;
  swift_beginAccess();
  v25 = v47;
  v11 = sub_22766A080();
  v49 = v48;
  MEMORY[0x22AA985C0]();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_33;
  }

LABEL_6:
  sub_22766C3A0();
  (v11)(v137, 0);
  swift_endAccess();

  v50 = sub_226EE010C(100);
  if (a1)
  {
    swift_setDeallocating();

    v51 = *v19;
    v52 = sub_22766A100();
    (*(*(v52 - 8) + 8))(&v8[v51], v52);
    return swift_deallocClassInstance();
  }

  v53 = v50;
  swift_setDeallocating();

  v54 = *v19;
  v55 = sub_22766A100();
  v56 = *(v55 - 8);
  v57 = *(v56 + 8);
  v111 = v55;
  v112 = v57;
  v110 = v56 + 8;
  v57(&v8[v54]);
  swift_deallocClassInstance();
  v11 = v53 + 56;
  v58 = 1 << v53[32];
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v53 + 7);
  a1 = ((v58 + 63) >> 6);
  v126 = v132 + 16;
  v127 = (v132 + 8);
  v8 = (v125 + 48);
  v109 = (v125 + 32);
  v128 = v53;

  v25 = 0;
  v113 = MEMORY[0x277D84F90];
  v61 = v133;
  v19 = v134;
LABEL_11:
  v62 = v25;
  if (!v60)
  {
    goto LABEL_13;
  }

  do
  {
    v25 = v62;
LABEL_16:
    (*(v132 + 16))(v61, *(v128 + 6) + *(v132 + 72) * (__clz(__rbit64(v60)) | (v25 << 6)), v19);
    v63 = v19;
    v64 = v129;
    sub_22717481C(v61, v130, v129);
    v60 &= v60 - 1;
    (*v127)(v61, v63);
    if ((*v8)(v64, 1, v131) != 1)
    {
      v65 = *v109;
      v66 = v64;
      v67 = v131;
      (*v109)(v121, v66, v131);
      v65(v122, v121, v67);
      v68 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_226EE040C(0, *(v113 + 2) + 1, 1, v113);
      }

      v61 = v133;
      v19 = v134;
      v70 = *(v113 + 2);
      v69 = *(v113 + 3);
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v108 = v70 + 1;
        v107 = v70;
        v73 = sub_226EE040C((v69 > 1), v70 + 1, 1, v113);
        v71 = v108;
        v70 = v107;
        v113 = v73;
      }

      v72 = v113;
      *(v113 + 2) = v71;
      v68(&v72[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v70], v122, v131);
      goto LABEL_11;
    }

    sub_226E97D1C(v64, &unk_27D7BB8F0, &qword_22767B368);
    v62 = v25;
    v61 = v133;
    v19 = v134;
  }

  while (v60);
  while (1)
  {
LABEL_13:
    v25 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v25 >= a1)
    {
      break;
    }

    v60 = *&v11[8 * v25];
    ++v62;
    if (v60)
    {
      goto LABEL_16;
    }
  }

  v74 = __swift_project_boxed_opaque_existential_0(v124, v124[3]);
  v75 = *v74;
  v76 = v74[1];
  v77 = *(v74 + 16);
  v78 = v74[3];
  v79 = swift_allocObject();
  v80 = v75;
  v81 = v76;

  sub_22766A070();
  *(v79 + 16) = v80;
  *(v79 + 24) = v81;
  *(v79 + 32) = v77;
  *(v79 + 40) = v78;
  v82 = sub_227284754(0);
  [v82 setResultType_];
  [v82 setFetchLimit_];
  [v82 setFetchOffset_];
  [v82 setIncludesSubentities_];
  sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
  v83 = sub_22766C9D0();
  v84 = v112;
  v134 = v83;

  swift_setDeallocating();
  v85 = v111;
  v84(v79 + qword_2813B2078, v111);
  swift_deallocClassInstance();
  v86 = __swift_project_boxed_opaque_existential_0(v124, v124[3]);
  v87 = *v86;
  v88 = v86[1];
  v89 = *(v86 + 16);
  v90 = v86[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v91 = swift_allocObject();
  v92 = v87;
  v93 = v88;

  sub_22766A070();
  *(v91 + 16) = v92;
  *(v91 + 24) = v93;
  *(v91 + 32) = v89;
  *(v91 + 40) = v90;
  v95 = sub_2272376B8(100);
  swift_setDeallocating();

  v112(v91 + qword_2813B2078, v85);
  swift_deallocClassInstance();
  v96 = v120;
  sub_22722AF04(v95, v120);

  v97 = v119;
  sub_226E93170(v96, v119, &qword_27D7BA3A8, &qword_22767B360);
  v98 = sub_227665030();
  v99 = *(v98 - 8);
  if ((*(v99 + 48))(v97, 1, v98) == 1)
  {
    sub_226E97D1C(v97, &qword_27D7BA3A8, &qword_22767B360);
    v100 = v116;
    sub_227662660();
  }

  else
  {
    v100 = v116;
    sub_227664FA0();
    (*(v99 + 8))(v97, v98);
  }

  v101 = v118;
  v102 = v115;
  sub_2276626F0();
  v104 = v103;
  v102(v100, v101);
  v105 = v104 / 86400.0;
  if (COERCE__INT64(fabs(v104 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v105 > -9.22337204e18)
  {
    if (v105 < 9.22337204e18)
    {
      sub_227667860();
      return sub_226E97D1C(v96, &qword_27D7BA3A8, &qword_22767B360);
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);

  (*v127)(v100, 0);

  __break(1u);
  return result;
}

uint64_t sub_22717481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22766B390();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227666B60();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = *(v9 + 16);
  v14(&v33 - v15, a1, v8, v13);
  v16 = *(a2 + 920);
  v37 = a3;
  v17 = v36;
  sub_227668F20();
  if (v17)
  {
    sub_22766A680();
    (v14)(v11, a1, v8);
    v18 = v17;
    v19 = sub_22766B380();
    v20 = sub_22766C8B0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v21 = 136315394;
      sub_22717B7C4(&qword_27D7BB360, MEMORY[0x277D52828], MEMORY[0x277D52840]);
      v22 = sub_22766D140();
      v24 = v23;
      (*(v9 + 8))(v11, v8);
      v25 = sub_226E97AE8(v22, v24, &v39);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_22766D250();
      v28 = sub_226E97AE8(v26, v27, &v39);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_226E8E000, v19, v20, "Failed to transform %s for personalization with error: %s", v21, 0x16u);
      v29 = v36;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v29, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    (*(v34 + 8))(v38, v35);
    v30 = 1;
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_227668F30();
  return (*(*(v31 - 8) + 56))(v37, v30, 1, v31);
}

uint64_t sub_227174C10(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v8 + 8))(v10, v7);
  v11 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8A0, &qword_227677F10);
  v12 = sub_227666650();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v19 = xmmword_227670CD0;
  *(v15 + 16) = xmmword_227670CD0;
  (*(v13 + 16))(v15 + v14, a3, v12);
  sub_227563C94(v15, v11[1], *(v11 + 16), v11[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 792), *(a2 + 816));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v17 = swift_allocObject();
    *(v17 + 16) = v19;
    *(v17 + 32) = sub_227666620();
    *(v17 + 40) = v18;
    sub_2272D7D58(0, v17, a1);
  }

  return result;
}

void sub_227174F10(void *a1, void *a2)
{
  v111 = a2;
  v3 = sub_22766A430();
  v109 = *(v3 - 8);
  v110 = v3;
  MEMORY[0x28223BE20](v3);
  v108 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v114 = v5;
  v115 = v6;
  MEMORY[0x28223BE20](v5);
  v116 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v112 = &v98 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v98 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v98 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v98 - v17;
  v19 = sub_227666650();
  v113 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = (v98.n128_u64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = &v98 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v98 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v98 - v29;
  v31 = v117;
  v32 = sub_22734441C(a1);
  if (!v31)
  {
    v104 = v24;
    v105 = a1;
    v101 = v27;
    v102 = v12;
    v103 = v21;
    v106 = v30;
    v107 = v19;
    v117 = 0;
    if (*(v32 + 2) < 2uLL)
    {
      v41 = v116;
      v42 = v32;
      sub_22766A660();
      v43 = v42;

      v44 = sub_22766B380();
      v45 = sub_22766C8B0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        v47 = *(v43 + 2);

        *(v46 + 4) = v47;

        _os_log_impl(&dword_226E8E000, v44, v45, "[RecommendationSystem] Found %ld onboarding survey result(s), deduplication not needed", v46, 0xCu);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v115 + 8))(v41, v114);
    }

    else
    {
      v33 = v18;
      v34 = v32;
      sub_226F75D68(v32, v18);
      v35 = v113;
      v36 = v18;
      v37 = v107;
      if ((*(v113 + 48))(v36, 1, v107) == 1)
      {

        sub_226E97D1C(v33, &unk_27D7BB8C0, &qword_22767F780);
        sub_22766A660();
        v38 = sub_22766B380();
        v39 = sub_22766C890();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_226E8E000, v38, v39, "[RecommendationSystem] Onboarding survey state deduplication unexpectedly returned nil", v40, 2u);
          MEMORY[0x22AA9A450](v40, -1, -1);
        }

        (*(v115 + 8))(v15, v114);
      }

      else
      {
        v48 = v106;
        v49 = (*(v35 + 32))(v106, v33, v37);
        MEMORY[0x28223BE20](v49);
        *(&v98 - 2) = v48;
        v50 = v117;
        v51 = sub_22735A88C(sub_22717B7A4, (&v98 - 2), v34);
        v52 = sub_2271597F4(v51);
        v53 = sub_226F3E6A8(v52);

        v54 = v105;
        sub_227345598(v53, v105);
        if (v50)
        {

          (*(v35 + 8))(v48, v37);
        }

        else
        {

          __swift_project_boxed_opaque_existential_0(v111 + 99, v111[102]);
          v55 = sub_227159AFC(v51);
          sub_2272D7D58(1, v55, v54);
          v116 = v51;
          v117 = 0;

          swift_getObjectType();
          v56 = v108;
          sub_22766A420();
          v57 = v110;
          sub_2276699D0();
          (*(v109 + 8))(v56, v57);
          v58 = v102;
          sub_22766A660();
          v59 = v101;
          v109 = *(v35 + 16);
          v110 = v35 + 16;
          (v109)(v101, v48, v37);
          v60 = sub_22766B380();
          v61 = sub_22766C8B0();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v118 = v111;
            *v62 = 136315138;
            sub_22717B7C4(&unk_27D7BBA40, MEMORY[0x277D52498], MEMORY[0x277D524B0]);
            v63 = sub_22766D140();
            v64 = v59;
            v66 = v65;
            v67 = *(v35 + 8);
            v67(v64, v37);
            v68 = sub_226E97AE8(v63, v66, &v118);

            *(v62 + 4) = v68;
            _os_log_impl(&dword_226E8E000, v60, v61, "[RecommendationSystem] Deduplicated onboarding survey results with winner: %s", v62, 0xCu);
            v69 = v111;
            __swift_destroy_boxed_opaque_existential_0(v111);
            MEMORY[0x22AA9A450](v69, -1, -1);
            MEMORY[0x22AA9A450](v62, -1, -1);

            v70 = &unk_227670000;
            v71 = v35 + 8;
          }

          else
          {

            v71 = v35 + 8;
            v67 = *(v35 + 8);
            v67(v59, v37);
            v70 = &unk_227670000;
          }

          v72 = v115 + 8;
          v105 = *(v115 + 8);
          (v105)(v58, v114);
          v73 = v104;
          v74 = v116 + 56;
          v75 = 1 << v116[32];
          v76 = -1;
          if (v75 < 64)
          {
            v76 = ~(-1 << v75);
          }

          v77 = v76 & *(v116 + 7);
          v78 = (v75 + 63) >> 6;

          v79 = 0;
          v80.n128_u64[0] = v70[278];
          v98 = v80;
          v111 = v71;
          v101 = v74;
          v102 = v71 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v81 = v103;
          v108 = v67;
          v115 = v72;
          while (v77)
          {
LABEL_28:
            v84 = v107;
            v85 = v109;
            (v109)(v73, *(v116 + 6) + *(v113 + 72) * (__clz(__rbit64(v77)) | (v79 << 6)), v107);
            v86 = v112;
            sub_22766A660();
            v85(v81, v73, v84);
            v87 = v81;
            v88 = sub_22766B380();
            v89 = sub_22766C8B0();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              v100 = v90;
              v103 = swift_slowAlloc();
              v118 = v103;
              *v90 = v98.n128_u32[0];
              sub_22717B7C4(&unk_27D7BBA40, MEMORY[0x277D52498], MEMORY[0x277D524B0]);
              v91 = sub_22766D140();
              v99 = v89;
              v93 = v92;
              v67 = v108;
              (v108)(v87, v84);
              v94 = sub_226E97AE8(v91, v93, &v118);

              v95 = v100;
              *(v100 + 1) = v94;
              v96 = v95;
              _os_log_impl(&dword_226E8E000, v88, v99, "[RecommendationSystem] Deleting duplicate onboarding survey result: %s", v95, 0xCu);
              v97 = v103;
              __swift_destroy_boxed_opaque_existential_0(v103);
              MEMORY[0x22AA9A450](v97, -1, -1);
              MEMORY[0x22AA9A450](v96, -1, -1);

              v82 = v112;
            }

            else
            {

              v67 = v108;
              (v108)(v87, v84);
              v82 = v86;
            }

            (v105)(v82, v114);
            v81 = v87;
            v77 &= v77 - 1;
            v73 = v104;
            v67(v104, v84);
            v74 = v101;
          }

          while (1)
          {
            v83 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              break;
            }

            if (v83 >= v78)
            {

              v67(v106, v107);
              return;
            }

            v77 = *&v74[8 * v83];
            ++v79;
            if (v77)
            {
              v79 = v83;
              goto LABEL_28;
            }
          }

          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_2271759B0(uint64_t a1)
{
  v1 = sub_227666620();
  v3 = v2;
  if (v1 == sub_227666620() && v3 == v4)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22766D190();

    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_227175A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = *__swift_project_boxed_opaque_existential_0((v0 + 704), *(v0 + 728));
  v9 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v8 + v9, &v19);
  if (v20)
  {
    sub_226E92AB8(&v19, v18);
    sub_226E91B50(v18, v17);
    v10 = swift_allocObject();
    sub_226E92AB8(v17, v10 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_226F099DC();
    v11 = swift_allocError();
    *v12 = 0;
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v2 + 16))(v4, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v13, v4, v1);
  v15 = (v14 + ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_227175D4C;
  v15[1] = 0;
  sub_227665AD0();
  sub_227669270();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_227175D4C(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 8))(v5, v6, v7);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227175E68(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_227175E88, 0, 0);
}

uint64_t sub_227175E88()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 40) + 96), *(*(v0 + 40) + 120));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_227175F28;

  return sub_226EB91E0();
}

uint64_t sub_227175F28(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_227176028, 0, 0);
}

uint64_t sub_227176028()
{
  v1 = v0[5];
  v2 = sub_22766C670();
  v0[8] = v2;

  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_226EDE35C;

  return sub_226EC9C54(v2);
}

uint64_t sub_2271760F4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_2271762E8;
  }

  else
  {

    v2 = sub_227176224;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227176224()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v5 = sub_22717A3A0(v4, v2);
  swift_bridgeObjectRelease_n();

  v6 = sub_226F450A4(v5);

  *v3 = v6;
  v7 = v0[1];

  return v7();
}

uint64_t sub_2271762E8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22717634C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v83 = a1;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB958, qword_22767B490);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v65 - v5;
  v6 = sub_227668630();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v76 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v65 - v9;
  v10 = sub_227664530();
  v81 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227667AE0();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227665FB0();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_227667AA0();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227663FA0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 296), *(a2 + 320));
  v26 = v82;
  result = sub_226EAF48C(v83, v25);
  if (!v26)
  {
    v68 = v18;
    v69 = v15;
    v70 = v21;
    v71 = v12;
    v72 = v10;
    v73 = v25;
    v74 = v23;
    v82 = v22;
    v28 = __swift_project_boxed_opaque_existential_0(v83, *(v83 + 3));
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v28 + 16);
    v32 = v28[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB960, &qword_227675B20);
    v33 = swift_allocObject();
    v34 = v29;
    v35 = v30;

    sub_22766A070();
    *(v33 + 16) = v34;
    *(v33 + 24) = v35;
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    KeyPath = swift_getKeyPath();
    sub_2273FC874(KeyPath);
    v38 = sub_226F3E6A8(v37);

    swift_setDeallocating();

    v39 = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v33 + v39, v40);
    swift_deallocClassInstance();
    sub_227663F60();
    sub_227665F60();
    sub_2276671B0();
    sub_227667AB0();
    v41 = v70;
    sub_227667A80();
    v42 = __swift_project_boxed_opaque_existential_0(v83, *(v83 + 3));
    sub_22742F870(v41, *v42, v42[1], *(v42 + 16), v42[3]);
    v83 = sub_227232EB8(100);
    v69 = v38;

    v43 = v83 + 56;
    v44 = 1 << v83[32];
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v83 + 7);
    v47 = (v44 + 63) >> 6;
    v48 = v81;
    v67 = v81 + 16;
    v68 = (v81 + 8);
    v49 = (v79 + 48);
    v65 = (v79 + 32);

    v50 = 0;
    v66 = MEMORY[0x277D84F90];
    v51 = v78;
    v52 = v71;
    for (i = v72; v46; i = v72)
    {
      v54 = v50;
LABEL_11:
      (*(v48 + 16))(v52, *(v83 + 6) + *(v48 + 72) * (__clz(__rbit64(v46)) | (v54 << 6)), i);
      sub_227176C50(v52, v69, v51);
      v46 &= v46 - 1;
      (*v68)(v52, i);
      if ((*v49)(v51, 1, v80) == 1)
      {
        sub_226E97D1C(v51, &qword_27D7BB958, qword_22767B490);
      }

      else
      {
        v55 = *v65;
        (*v65)(v75, v51, v80);
        v55(v76, v75, v80);
        v56 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_2273A694C(0, v56[2] + 1, 1, v56);
        }

        v58 = v56[2];
        v57 = v56[3];
        v59 = v58 + 1;
        v60 = v76;
        if (v58 >= v57 >> 1)
        {
          v62 = v56;
          v63 = v56[2];
          v66 = (v58 + 1);
          v64 = sub_2273A694C((v57 > 1), v59, 1, v62);
          v59 = v66;
          v58 = v63;
          v60 = v76;
          v56 = v64;
        }

        v56[2] = v59;
        v61 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v66 = v56;
        v55(v56 + v61 + *(v79 + 72) * v58, v60, v80);
      }

      v50 = v54;
      v48 = v81;
      v52 = v71;
    }

    while (1)
    {
      v54 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v54 >= v47)
      {

        sub_22717B2F8(v70, MEMORY[0x277D530D0]);
        (*(v74 + 8))(v73, v82);

        *v77 = v66;
        return result;
      }

      v46 = v43[v54];
      ++v50;
      if (v46)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    (*v68)(v52, i);

    __break(1u);
  }

  return result;
}

uint64_t sub_227176C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22766B390();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227664530();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = sub_2276644D0();
  sub_22718C70C(v15, v16, a2);

  v17 = *(v9 + 16);
  v17(v14, a1, v8);
  v38 = a3;
  v18 = v37;
  sub_2276685E0();
  if (v18)
  {
    sub_22766A680();
    v17(v11, a1, v8);
    v19 = v18;
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = v37;
      *v22 = 136315394;
      sub_22717B7C4(&qword_27D7B8C68, MEMORY[0x277D50978], MEMORY[0x277D50990]);
      v23 = sub_22766D140();
      v25 = v24;
      (*(v9 + 8))(v11, v8);
      v26 = sub_226E97AE8(v23, v25, &v40);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_22766D250();
      v29 = sub_226E97AE8(v27, v28, &v40);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_226E8E000, v20, v21, "Failed to transform %s for personalization with error: %s", v22, 0x16u);
      v30 = v37;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    (*(v35 + 8))(v39, v36);
    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = sub_227668630();
  return (*(*(v32 - 8) + 56))(v38, v31, 1, v32);
}

void sub_22717705C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v156 = a2;
  v136 = a3;
  v140 = sub_22766B390();
  v137 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v152 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB958, qword_22767B490);
  MEMORY[0x28223BE20](v6 - 8);
  v151 = &v125 - v7;
  v154 = sub_227668630();
  v138 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v135 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v134 = &v125 - v10;
  v157 = sub_227664530();
  v155 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v139 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v153 = &v125 - v13;
  MEMORY[0x28223BE20](v14);
  v146 = &v125 - v15;
  v16 = sub_227667AE0();
  MEMORY[0x28223BE20](v16 - 8);
  v145 = (&v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_227667AA0();
  MEMORY[0x28223BE20](v18 - 8);
  v148 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_227665FB0();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v144 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v147 = &v125 - v22;
  v142 = sub_227663FA0();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v158 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = a1;
  v24 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v24 + 16);
  v28 = v24[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v29 = swift_allocObject();
  v30 = v25;
  v31 = v26;

  sub_22766A070();
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  *(v29 + 32) = v27;
  *(v29 + 40) = v28;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9A0, &unk_2276795E0);
  v32 = swift_allocObject();
  v143 = xmmword_2276728D0;
  *(v32 + 16) = xmmword_2276728D0;
  *(v32 + 32) = sub_227664C10();
  *(v32 + 40) = v33;
  *(v32 + 48) = sub_227664C10();
  *(v32 + 56) = v34;
  v162[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v162[0] = v32;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v35 = sub_22766C820();
  sub_226E93170(v162, &v160, &unk_27D7BC990, &qword_227670A30);
  v36 = v161;
  if (v161)
  {
    v37 = __swift_project_boxed_opaque_existential_0(&v160, v161);
    v38 = *(v36 - 8);
    v39 = MEMORY[0x28223BE20](v37);
    v41 = &v125 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41, v39);
    v42 = sub_22766D170();
    (*(v38 + 8))(v41, v36);
    __swift_destroy_boxed_opaque_existential_0(&v160);
  }

  else
  {
    v42 = 0;
  }

  v43 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v162, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v44 = sub_22766A080();
  v46 = v45;
  MEMORY[0x22AA985C0]();
  if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v44(v162, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  sub_2273FC91C(KeyPath);
  if (v3)
  {

    swift_setDeallocating();

    v49 = qword_2813B2078;
    v50 = sub_22766A100();
    (*(*(v50 - 8) + 8))(v29 + v49, v50);
    swift_deallocClassInstance();
  }

  else
  {
    v130 = sub_226F3E6A8(v48);

    swift_setDeallocating();

    v51 = qword_2813B2078;
    v52 = sub_22766A100();
    v53 = *(v52 - 8);
    v54 = *(v53 + 8);
    v133 = v52;
    v132 = v54;
    v131 = (v53 + 8);
    v54(v29 + v51);
    swift_deallocClassInstance();
    v55 = v159;
    v56 = __swift_project_boxed_opaque_existential_0(v159, v159[3]);
    v57 = *v56;
    v58 = v56[1];
    v59 = *(v56 + 16);
    v60 = v56[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB960, &qword_227675B20);
    v61 = swift_allocObject();
    v62 = v57;
    v63 = v58;

    sub_22766A070();
    *(v61 + 16) = v62;
    *(v61 + 24) = v63;
    *(v61 + 32) = v59;
    *(v61 + 40) = v60;
    v64 = swift_getKeyPath();
    sub_2273FC874(v64);
    v65 = v130;
    v67 = sub_226F3E6A8(v66);

    swift_setDeallocating();

    v132(v61 + qword_2813B2078, v133);
    swift_deallocClassInstance();
    __swift_project_boxed_opaque_existential_0((v156 + 296), *(v156 + 320));
    sub_226EAF48C(v55, v158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9B0, &qword_227673180);
    v68 = *(sub_2276682D0() - 8);
    v69 = *(v68 + 72);
    v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = v143;
    v156 = 0;
    *(v71 + v70) = v67;
    swift_storeEnumTagMultiPayload();
    *(v71 + v70 + v69) = v65;
    swift_storeEnumTagMultiPayload();
    sub_226F4F620(v71);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v72 = v158;
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_227670CD0;
    sub_227663F60();
    *(v73 + v70) = v74;
    swift_storeEnumTagMultiPayload();
    sub_226F4F620(v73);
    swift_setDeallocating();
    sub_22717B2F8(v73 + v70, MEMORY[0x277D53468]);
    swift_deallocClassInstance();
    v75 = v147;
    sub_227665F80();
    v76 = v149;
    v77 = v150;
    (*(v149 + 16))(v144, v75, v150);
    sub_2276671B0();
    sub_227667AB0();
    v78 = v148;
    sub_227667A80();
    v79 = __swift_project_boxed_opaque_existential_0(v159, v159[3]);
    sub_22742F870(v78, *v79, v79[1], *(v79 + 16), v79[3]);
    v80 = v156;
    v81 = sub_227232EB8(100);
    v156 = v80;
    if (v80)
    {

      sub_22717B2F8(v78, MEMORY[0x277D530D0]);
      (*(v76 + 8))(v75, v77);
      (*(v141 + 8))(v72, v142);
    }

    else
    {
      v82 = v81;

      v83 = v82 + 56;
      v84 = 1 << v82[32];
      v85 = -1;
      if (v84 < 64)
      {
        v85 = ~(-1 << v84);
      }

      v86 = v85 & *(v82 + 7);
      v87 = (v84 + 63) >> 6;
      v88 = (v155 + 16);
      v89 = (v155 + 8);
      v131 = (v137 + 1);
      v145 = (v138 + 56);
      v137 = (v138 + 48);
      v126 = (v138 + 32);

      v90 = 0;
      v128 = MEMORY[0x277D84F90];
      *&v91 = 136315394;
      v127 = v91;
      v92 = v151;
      v93 = v146;
      *&v143 = v87;
      v159 = v82 + 56;
      v144 = v82;
      v132 = v88;
      v133 = v89;
      for (i = v157; v86; i = v157)
      {
        v95 = v90;
LABEL_17:
        v96 = *(v82 + 6) + *(v155 + 72) * (__clz(__rbit64(v86)) | (v95 << 6));
        v97 = *(v155 + 16);
        v97(v93, v96, i);
        v98 = v93;
        v97(v153, v93, i);
        v99 = v156;
        sub_2276685E0();
        if (v99)
        {
          v100 = v152;
          sub_22766A680();
          v101 = v139;
          v97(v139, v98, i);
          v102 = v99;
          v103 = sub_22766B380();
          v104 = sub_22766C8B0();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            v162[0] = v156;
            *v105 = v127;
            sub_22717B7C4(&qword_27D7B8C68, MEMORY[0x277D50978], MEMORY[0x277D50990]);
            v106 = sub_22766D140();
            v130 = v103;
            v107 = v106;
            v109 = v108;
            v110 = i;
            v129 = v104;
            v111 = *v133;
            (*v133)(v101, v110);
            v112 = sub_226E97AE8(v107, v109, v162);

            *(v105 + 4) = v112;
            *(v105 + 12) = 2080;
            swift_getErrorValue();
            v113 = sub_22766D250();
            v115 = sub_226E97AE8(v113, v114, v162);

            *(v105 + 14) = v115;
            v116 = v130;
            _os_log_impl(&dword_226E8E000, v130, v129, "Failed to transform %s for personalization with error: %s", v105, 0x16u);
            v117 = v156;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v117, -1, -1);
            MEMORY[0x22AA9A450](v105, -1, -1);

            (*v131)(v152, v140);
          }

          else
          {

            v119 = i;
            v111 = *v133;
            (*v133)(v101, v119);
            (*v131)(v100, v140);
          }

          v92 = v151;
          v118 = v154;
          (*v145)(v151, 1, 1, v154);
          v156 = 0;
          v93 = v146;
        }

        else
        {
          v156 = 0;
          v118 = v154;
          (*v145)(v92, 0, 1, v154);
          v111 = *v133;
        }

        v83 = v159;
        v86 &= v86 - 1;
        v111(v93, v157);
        if ((*v137)(v92, 1, v118) == 1)
        {
          sub_226E97D1C(v92, &qword_27D7BB958, qword_22767B490);
          v90 = v95;
        }

        else
        {
          v120 = *v126;
          (*v126)(v134, v92, v118);
          v120(v135, v134, v118);
          v121 = v120;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v128 = sub_2273A694C(0, *(v128 + 2) + 1, 1, v128);
          }

          v123 = *(v128 + 2);
          v122 = *(v128 + 3);
          if (v123 >= v122 >> 1)
          {
            v128 = sub_2273A694C((v122 > 1), v123 + 1, 1, v128);
          }

          v124 = v128;
          *(v128 + 2) = v123 + 1;
          v121(&v124[((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v123], v135, v154);
          v90 = v95;
          v92 = v151;
        }

        v82 = v144;
        v87 = v143;
      }

      while (1)
      {
        v95 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          break;
        }

        if (v95 >= v87)
        {

          sub_22717B2F8(v148, MEMORY[0x277D530D0]);
          (*(v149 + 8))(v147, v150);
          (*(v141 + 8))(v158, v142);

          *v136 = v128;
          return;
        }

        v86 = v83[v95];
        ++v90;
        if (v86)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_227178508(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = sub_22766AE90();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_227665D10();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_227662750();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227178680, 0, 0);
}

uint64_t sub_227178680()
{
  __swift_project_boxed_opaque_existential_0((v0[4] + 256), *(v0[4] + 280));
  v1 = sub_227666350();
  sub_227662740();
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_227178748;
  v3 = v0[13];

  return sub_2273A75C8(v1, v3);
}

uint64_t sub_227178748()
{
  v2 = *v1;
  v3 = *v1;
  v2[15] = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271788FC, 0, 0);
  }

  else
  {

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_2271788FC()
{
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v4 = (*(*(v0 + 72) + 88))(*(v0 + 80), *(v0 + 64));
    if (v4 == *MEMORY[0x277D51DE8] || v4 == *MEMORY[0x277D51DF0])
    {
      goto LABEL_9;
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  v2 = (v0 + 24);
  v6 = *(v0 + 120);

  *(v0 + 24) = v6;
  v7 = v6;
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 48) + 88))(*(v0 + 56), *(v0 + 40)) == *MEMORY[0x277D4FB00])
    {
LABEL_9:

      v8 = *(v0 + 8);
      goto LABEL_12;
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  swift_willThrow();

  v8 = *(v0 + 8);
LABEL_12:

  return v8();
}

void sub_227178B00(void *a1)
{
  v2 = *(sub_227664CA0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2271178C8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_227178BA8(v5);
  *a1 = v3;
}

void sub_227178BA8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227664CA0();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227664CA0() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_227179074(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_227178CD4(0, v2, 1, a1);
  }
}

void sub_227178CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_227662750();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_227664CA0();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_227664C90();
      v32 = v59;
      sub_227664C90();
      v62 = sub_2276626B0();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_227179074(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_227662750();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_227664CA0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_2271171D0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_227179C74(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2271171D0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_227117144(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_227664C90();
      v34 = v159;
      sub_227664C90();
      LODWORD(v149) = sub_2276626B0();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_227664C90();
        v46 = v159;
        sub_227664C90();
        LOBYTE(v162) = sub_2276626B0() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_2273A4F9C(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_2273A4F9C((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_227179C74(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2271171D0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_227117144(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_227664C90();
    v120 = v159;
    sub_227664C90();
    LODWORD(v162) = sub_2276626B0();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_227179C74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_227662750();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_227664CA0();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_227664C90();
            v48 = v66;
            sub_227664C90();
            v68 = sub_2276626B0();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_227664C90();
        v28 = v66;
        sub_227664C90();
        v68 = sub_2276626B0();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_227117384(&v75, &v74, &v73);
}

uint64_t sub_22717A350@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227667710();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_22717A3A0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v36 = sub_227668EF0();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_22766CD20();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v45 = MEMORY[0x277D84F90];
    sub_226F20188(0, v6 & ~(v6 >> 63), 0);
    v40 = v45;
    if (v39)
    {
      result = sub_22766CCD0();
    }

    else
    {
      result = sub_22766CC90();
      v8 = *(a1 + 36);
    }

    v42 = result;
    v43 = v8;
    v44 = v39 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v34 = v6;
      v35 = v38 + 32;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v32 = a1 + 56;
      v33 = v10;
      v30 = v2;
      v31 = a1 + 64;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v42;
        v14 = v43;
        v15 = v44;
        sub_2274DD7DC(v42, v43, v44, a1);

        sub_227668E90();
        v16 = v40;
        v45 = v40;
        v18 = *(v40 + 16);
        v17 = *(v40 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_226F20188((v17 > 1), v18 + 1, 1);
          v16 = v45;
        }

        *(v16 + 16) = v18 + 1;
        v19 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v40 = v16;
        result = (*(v38 + 32))(v16 + v19 + *(v38 + 72) * v18, v5, v36);
        if (v39)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB980, &qword_2276794C0);
          v11 = sub_22766C6A0();
          sub_22766CD70();
          result = v11(v41, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_226EB526C(v42, v43, v44);
            return v40;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v20 = 1 << *(a1 + 32);
          if (v13 >= v20)
          {
            goto LABEL_38;
          }

          v21 = v13 >> 6;
          v22 = *(v32 + 8 * (v13 >> 6));
          if (((v22 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v14)
          {
            goto LABEL_40;
          }

          v23 = v22 & (-2 << (v13 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v31 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                result = sub_226EB526C(v13, v14, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_33;
              }
            }

            result = sub_226EB526C(v13, v14, 0);
          }

LABEL_33:
          v29 = *(a1 + 36);
          v42 = v20;
          v43 = v29;
          v44 = 0;
          v6 = v34;
          if (v9 == v34)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

char *sub_22717A800@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_22734441C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22717A860(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716CE00(a1);
}

uint64_t sub_22717A8FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716D4E4(a1);
}

uint64_t sub_22717A998(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22716D6AC(a1, v1);
}

uint64_t sub_22717AA34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716D99C(a1);
}

uint64_t sub_22717AAD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716EE78(a1);
}

uint64_t sub_22717AB6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716F700(a1);
}

uint64_t sub_22717AC08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716FCFC(a1);
}

uint64_t sub_22717ACC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22717AD98()
{
  result = qword_28139B470;
  if (!qword_28139B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B470);
  }

  return result;
}

unint64_t sub_22717ADEC()
{
  result = qword_28139B468;
  if (!qword_28139B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B468);
  }

  return result;
}

char *sub_22717AEA4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_226EB16F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22717AF00(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_227165380(a1, v1);
}

uint64_t sub_22717AF9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_227165C00(a1);
}

uint64_t sub_22717B038(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_227166230(a1);
}

uint64_t sub_22717B0D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227166528(a1, v1);
}

char *sub_22717B18C(void *a1)
{
  __swift_project_boxed_opaque_existential_0((v1 + 880), *(v1 + 904));
  v3 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  return (v3)(a1);
}

uint64_t sub_22717B214(uint64_t a1)
{
  v4 = *(sub_227668F90() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22715F6A4(a1, v6, v1 + v5);
}

uint64_t sub_22717B2F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22717B358(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_227171644(a1, v5, v4);
}

void sub_22717B40C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_22717141C(v2, v3, v4);
}

uint64_t sub_22717B47C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  return sub_22766C430();
}

uint64_t sub_22717B5D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271706A8(a1, v1);
}

uint64_t sub_22717B6C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_22717B7C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22717B84C()
{
  v1 = sub_227669A70();
  v19 = *(v1 - 8);
  v2 = v19;
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v16 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v23 = v5;
  v7 = *MEMORY[0x277D4EC18];
  v21 = *(v2 + 104);
  v21(v4, v7, v1);
  v15 = v2 + 104;
  swift_allocObject();
  v22 = v0;
  swift_weakInit();
  v20 = sub_227665100();
  swift_unknownObjectRetain_n();
  sub_227669EC0();

  v14 = *(v19 + 8);
  v14(v4, v1);
  swift_unknownObjectRelease();
  v23 = v5;
  v21(v4, *MEMORY[0x277D4E690], v1);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA50, &qword_22767B740);
  v18 = sub_22717CB10();
  v17 = sub_22717CB94();
  v13[1] = ObjectType;
  sub_227669ED0();

  v13[0] = v1;
  v8 = v14;
  v14(v4, v1);
  swift_unknownObjectRelease();
  v23 = v5;
  v9 = v1;
  v10 = v21;
  v21(v4, *MEMORY[0x277D4EC58], v9);
  swift_allocObject();
  swift_weakInit();
  sub_227669EC0();

  v11 = v13[0];
  v8(v4, v13[0]);
  swift_unknownObjectRelease();
  v23 = v5;
  v10(v4, *MEMORY[0x277D4E798], v11);
  swift_allocObject();
  swift_weakInit();
  sub_227669ED0();

  v8(v4, v11);
  return swift_unknownObjectRelease();
}

uint64_t sub_22717BC9C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v3[7] = *a2;
  return MEMORY[0x2822009F8](sub_22717BCC4, 0, 0);
}

uint64_t sub_22717BCC4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[8] = *(Strong + 40);

    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_22717BE10;
    v3 = v0[7];
    v4 = v0[5];

    return sub_2271DEC38(v4, v3);
  }

  else
  {
    v6 = v0[5];
    v7 = sub_227665100();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22717BE10()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22717BF4C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22717BF4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22717BFB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_22717BFD0, 0, 0);
}

uint64_t sub_22717BFD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 40);
    *(v0 + 64) = v2;

    v3 = v2[13];
    v4 = v2[14];
    __swift_project_boxed_opaque_existential_0(v2 + 10, v3);
    v9 = (*(v4 + 24) + **(v4 + 24));
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA50, &qword_22767B740);
    *v5 = v0;
    v5[1] = sub_22717C1B8;

    return v9(v0 + 40, sub_2271DEA24, 0, v6, v3, v4);
  }

  else
  {
    **(v0 + 48) = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22717C1B8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22717BF4C;
  }

  else
  {
    v2 = sub_22717C2CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22717C2CC()
{

  **(v0 + 48) = *(v0 + 40);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22717C338(uint64_t a1, void *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v3[7] = *a2;
  return MEMORY[0x2822009F8](sub_22717C360, 0, 0);
}

uint64_t sub_22717C360()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[8] = *(Strong + 40);

    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_22717C4A0;

    return sub_2271DFCB0();
  }

  else
  {
    v4 = v0[5];
    v5 = sub_227665100();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22717C4A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22717C5F0, 0, 0);
  }
}

uint64_t sub_22717C5F0()
{
  v1 = v0[11];
  sub_2271DF5E0(v0[7], v0[10], v0[5]);

  if (!v1)
  {
    v3 = v0[5];
    v4 = sub_227665100();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_22717C6DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22717C6FC, 0, 0);
}

uint64_t sub_22717C6FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 56) = *(Strong + 40);

    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_22717C810;
    v3 = MEMORY[0x277D84F90];

    return sub_2271DD124(v3);
  }

  else
  {
    **(v0 + 40) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22717C810(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_22700162C;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_22717C940;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22717C964()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22717C9C8(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22717BC9C(a1, a2, v2);
}

uint64_t sub_22717CA74(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22717BFB0(a1, v1);
}

unint64_t sub_22717CB10()
{
  result = qword_281398DA0;
  if (!qword_281398DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBA50, &qword_22767B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DA0);
  }

  return result;
}

unint64_t sub_22717CB94()
{
  result = qword_281398D98;
  if (!qword_281398D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBA50, &qword_22767B740);
    sub_22717CC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D98);
  }

  return result;
}

unint64_t sub_22717CC18()
{
  result = qword_28139B858;
  if (!qword_28139B858)
  {
    sub_227665100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B858);
  }

  return result;
}

uint64_t sub_22717CC70(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_22717C338(a1, a2, v2);
}

uint64_t sub_22717CD1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22717C6DC(a1, v1);
}

unint64_t sub_22717CDB8()
{
  v1 = v0;
  v2 = sub_227667DF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9558, &qword_227674778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22767B770;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_22766C4E0();
  *(inited + 56) = 1701605234;
  *(inited + 64) = 0xE400000000000000;
  v7 = *(v0 + 16);
  v24[25] = *(v0 + 8);
  v25 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA58, &unk_22767B7C0);
  sub_227663AD0();
  *(inited + 72) = sub_22766C750();
  *(inited + 80) = 0x774F656369766564;
  *(inited + 88) = 0xEB0000000072656ELL;
  v8 = type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent(0);
  (*(v3 + 16))(v5, v1 + *(v8 + 24), v2);
  v9 = (*(v3 + 88))(v5, v2);
  if (v9 == *MEMORY[0x277D53370] || v9 == *MEMORY[0x277D53378] || v9 != *MEMORY[0x277D53380] && v9 != *MEMORY[0x277D53360] && v9 != *MEMORY[0x277D53368])
  {
    (*(v3 + 8))(v5, v2);
  }

  v10 = sub_22766BFD0();

  *(inited + 96) = v10;
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x8000000227699F70;
  sub_227668DC0();
  *(inited + 120) = sub_22766C750();
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  v11 = *(v1 + *(v8 + 32));
  if (v11)
  {
    swift_getErrorValue();
    sub_22766D2C0();
    v12 = sub_22766BFD0();

    *(inited + 144) = v12;
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    swift_getErrorValue();
    sub_22766D2D0();
  }

  else
  {
    v13 = sub_22766BFD0();

    *(inited + 144) = v13;
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
  }

  v14 = sub_22766BFD0();

  *(inited + 168) = v14;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x8000000227696560;
  if (v11)
  {
    swift_getErrorValue();
    v15 = sub_22766D260();
    if (v15)
    {
      v16 = v15;
      swift_getErrorValue();
      sub_22766D2C0();
    }

    v18 = sub_22766BFD0();

    *(inited + 192) = v18;
    *(inited + 200) = 0xD000000000000015;
    *(inited + 208) = 0x8000000227696580;
    swift_getErrorValue();
    v19 = sub_22766D260();
    if (v19)
    {
      v20 = v19;
      swift_getErrorValue();
      sub_22766D2D0();
    }
  }

  else
  {
    v17 = sub_22766BFD0();

    *(inited + 192) = v17;
    *(inited + 200) = 0xD000000000000015;
    *(inited + 208) = 0x8000000227696580;
  }

  v21 = sub_22766BFD0();

  *(inited + 216) = v21;
  v22 = sub_227148D24(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9560, &qword_227674780);
  swift_arrayDestroy();
  return v22;
}

uint64_t type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent(uint64_t a1)
{
  result = qword_27D7BBA60;
  if (!qword_27D7BBA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22717D3C0(uint64_t a1)
{
  sub_22717D474(319);
  if (v1 <= 0x3F)
  {
    sub_227667DF0();
    if (v2 <= 0x3F)
    {
      sub_22717D524(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22717D474(uint64_t a1)
{
  if (!qword_27D7BBA70)
  {
    sub_22717D4D0();
    v1 = sub_227663B70();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7BBA70);
    }
  }
}

unint64_t sub_22717D4D0()
{
  result = qword_27D7BBA78;
  if (!qword_27D7BBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BBA78);
  }

  return result;
}

void sub_22717D524(uint64_t a1)
{
  if (!qword_27D7BBA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA3C0, &qword_2276709C0);
    v1 = sub_22766CB90();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7BBA80);
    }
  }
}

uint64_t sub_22717D588(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E96C50(v4);

    v6 = sub_227669290();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_226E9F7B0, v7);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_22717D764(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB428, &qword_22767A998);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  v10 = qword_2813B2078;
  swift_beginAccess();
  v11 = sub_226ED811C(v7 + v10, v6, v5);
  if (v11)
  {
    if (v11 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_5;
  }

  v12 = sub_226EB0E3C(0);
  if (v1)
  {
LABEL_5:

    return;
  }

  v13 = v12;
  [v12 setResultType_];
  sub_226ED9864();
  v14 = sub_22766C9E0();
  v15 = sub_226EDAB24(v14);

  sub_226EDAB78(v15, v9);
}

void *static ScoreSummary.representativeSamples()()
{
  v13 = sub_227663C10();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F05E24();
  v3 = sub_22766CFA0();
  v31 = &unk_283A93AF8;
  v32[0] = v3;
  v32[1] = v32;
  v32[2] = &v31;
  v29 = &unk_283A93B48;
  v30 = &unk_283A93B20;
  v32[3] = &v30;
  v32[4] = &v29;
  v27 = &unk_283A93B98;
  v28 = &unk_283A93B70;
  v32[5] = &v28;
  v32[6] = &v27;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA88, &qword_22767B878);
  v23 = v22;
  v24 = v22;
  v25 = v22;
  v26 = v22;
  v15 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v16 = sub_226F5BF60(&qword_27D7BBA90, &qword_27D7BBA88, &qword_22767B878);
  v17 = v16;
  v18 = v16;
  v19 = v16;
  v20 = v16;
  v4 = sub_2276638E0();

  v5 = *(v4 + 16);
  if (v5)
  {
    v14 = MEMORY[0x277D84F90];
    result = sub_226F201A8(0, v5, 0);
    v7 = 0;
    v8 = v14;
    v9 = v4 + 56;
    while (v7 < *(v4 + 16))
    {
      sub_227663BF0();
      v14 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_226F201A8((v10 > 1), v11 + 1, 1);
        v8 = v14;
      }

      ++v7;
      *(v8 + 16) = v11 + 1;
      result = (*(v0 + 32))(v8 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v11, v2, v13);
      v9 += 32;
      if (v5 == v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22717DC48(void *a1)
{
  [a1 elapsedSeconds];
  [a1 personalScore];
  [a1 communityLowerScore];
  [a1 communityLowerMiddleScore];
  [a1 communityUpperMiddleScore];
  [a1 communityUpperScore];
  sub_227663BF0();
}

unint64_t sub_22717DD4C(uint64_t a1)
{
  result = sub_22717DD74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22717DD74()
{
  result = qword_27D7BBA98;
  if (!qword_27D7BBA98)
  {
    sub_227663C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BBA98);
  }

  return result;
}

id sub_22717DDCC(void *a1)
{
  v2 = sub_227663C00();
  v3 = 0x7FFFFFFFLL;
  if (v2 < 0x7FFFFFFF)
  {
    v3 = v2;
  }

  if (v3 <= 0xFFFFFFFF80000000)
  {
    v4 = 0xFFFFFFFF80000000;
  }

  else
  {
    v4 = v3;
  }

  [a1 setElapsedSeconds_];
  sub_227663BE0();
  [a1 setPersonalScore_];
  sub_227663BA0();
  [a1 setCommunityLowerScore_];
  sub_227663BC0();
  [a1 setCommunityLowerMiddleScore_];
  sub_227663BD0();
  [a1 setCommunityUpperMiddleScore_];
  sub_227663BB0();

  return [a1 setCommunityUpperScore_];
}

uint64_t sub_22717DFA0(uint64_t a1)
{
  v3 = sub_227663480();
  MEMORY[0x28223BE20](v3);
  v36 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - v7;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v30[1] = v1;
    v43 = MEMORY[0x277D84F90];
    v37 = v6;
    sub_226F1F568(0, v9, 0);
    v11 = v37;
    v41 = a1 + 56;
    v42 = v43;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v34 = v11 + 8;
    v35 = v11 + 16;
    v32 = v9;
    v33 = v11 + 32;
    v31 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      if ((*(v41 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v38 = v13;
      v39 = *(a1 + 36);
      v40 = v12 >> 6;
      v15 = *(v11 + 72);
      v16 = v36;
      (*(v11 + 16))(v36, *(a1 + 48) + v15 * v12, v3);
      sub_227663470();
      v11 = v37;
      (*(v37 + 8))(v16, v3);
      v17 = v42;
      v43 = v42;
      v18 = v8;
      v19 = a1;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F1F568((v20 > 1), v21 + 1, 1);
        v11 = v37;
        v17 = v43;
      }

      *(v17 + 16) = v21 + 1;
      v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v42 = v17;
      result = (*(v11 + 32))(v17 + v22 + v21 * v15, v18, v3);
      v14 = 1 << *(v19 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v23 = *(v41 + 8 * v40);
      if ((v23 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v19;
      if (v39 != *(v19 + 36))
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v12 & 0x3F));
      if (v24)
      {
        v14 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v8 = v18;
      }

      else
      {
        v25 = v40 << 6;
        v26 = v40 + 1;
        v27 = (v31 + 8 * v40);
        v8 = v18;
        while (v26 < (v14 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_226EB526C(v12, v39, 0);
            v14 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v39, 0);
LABEL_19:
        v11 = v37;
      }

      v13 = v38 + 1;
      v12 = v14;
      if (v38 + 1 == v32)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_22717E35C(uint64_t a1)
{
  v47 = sub_227663480();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v41 = &v40 - v7;
  v8 = *(a1 + 16);
  v52 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v9 = a1 + 56;
  v10 = v52;
  v11 = -1;
  v12 = -1 << *(a1 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(a1 + 56);
  v14 = (63 - v12) >> 6;
  v48 = a1;
  v49 = v2;
  v45 = v8;
  if (v8)
  {
    v43 = v2 + 8;
    v44 = v2 + 16;

    v15 = 0;
    v16 = 0;
    while (v13)
    {
      v17 = v10;
LABEL_11:
      v19 = v49;
      v20 = *(a1 + 48) + *(v49 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v21 = v46;
      v22 = v47;
      (*(v49 + 16))(v46, v20, v47);
      v23 = sub_2276633E0();
      v50 = v24;
      v51 = v23;
      (*(v19 + 8))(v21, v22);
      v10 = v17;
      v52 = v17;
      v25 = *(v17 + 16);
      if (v25 >= *(v17 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      ++v15;
      v13 &= v13 - 1;
      *(v10 + 16) = v25 + 1;
      v26 = v10 + 16 * v25;
      v27 = v50;
      *(v26 + 32) = v51;
      *(v26 + 40) = v27;
      a1 = v48;
      if (v15 == v45)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        goto LABEL_29;
      }

      v13 = *(v9 + 8 * v18);
      ++v16;
      if (v13)
      {
        v17 = v10;
        v16 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = 0;
LABEL_16:
    v28 = v49;
    v50 = v49 + 16;
    v45 = v49 + 8;
    v46 = (v49 + 32);
    if (!v13)
    {
      goto LABEL_18;
    }

    do
    {
      v51 = v10;
LABEL_22:
      v30 = *(a1 + 48) + *(v28 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v31 = v42;
      v32 = v47;
      (*(v28 + 16))(v42, v30, v47);
      v33 = v41;
      (*(v28 + 32))(v41, v31, v32);
      v34 = sub_2276633E0();
      v36 = v35;
      (*(v28 + 8))(v33, v32);
      v10 = v51;
      v52 = v51;
      v37 = *(v51 + 16);
      if (v37 >= *(v51 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      v13 &= v13 - 1;
      *(v10 + 16) = v37 + 1;
      v38 = v10 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      a1 = v48;
      v28 = v49;
    }

    while (v13);
LABEL_18:
    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v14)
      {

        return v10;
      }

      v13 = *(v9 + 8 * v29);
      ++v16;
      if (v13)
      {
        v51 = v10;
        v16 = v29;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_22717E740@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_22707B578(a1);
  if (!v3)
  {
    v8 = result;
    sub_22707FCE8(a1);
    sub_22707D144(a1);
    v9 = sub_22707FF94(a1);
    sub_2270801E0(a1);
    __swift_project_boxed_opaque_existential_0((a2 + 712), *(a2 + 736));
    v10 = sub_22717E35C(v9);
    sub_2272D752C(1, v10, a1);

    v11 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[3];
    v40 = *(v11 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE600, &qword_2276711C8);
    v15 = swift_allocObject();
    v16 = v12;
    v17 = v13;

    sub_22766A070();
    *(v15 + 16) = v16;
    *(v15 + 24) = v17;
    *(v15 + 32) = v40;
    *(v15 + 40) = v14;
    v18 = qword_2813B2078;
    swift_beginAccess();
    v19 = sub_227542588(v15 + v18, v40, v14);
    if (v19)
    {
      if (v19 != 1)
      {
        swift_willThrow();

        swift_setDeallocating();
        v30 = qword_2813B2078;
        v31 = sub_22766A100();
        (*(*(v31 - 8) + 8))(v15 + v30, v31);
        return swift_deallocClassInstance();
      }
    }

    else
    {
      v34 = sub_2272846C4(0);
      [v34 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v41 = v34;
      v35 = sub_22766C9E0();
      v38 = sub_226EDAB24(v35);

      sub_226EDAB78(v38, v17);
    }

    v20 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[3];
    v24 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A8, &qword_227677A20);
    v25 = swift_allocObject();
    v26 = v21;
    v27 = v22;

    sub_22766A070();
    *(v25 + 16) = v26;
    *(v25 + 24) = v27;
    *(v25 + 32) = v24;
    *(v25 + 40) = v23;
    v28 = qword_2813B2078;
    swift_beginAccess();
    v29 = sub_227542540(v25 + v28, v24, v23);
    if (!v29)
    {
      v36 = sub_22723D128(0);
      [v36 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v37 = sub_22766C9E0();
      v39 = sub_226EDAB24(v37);

      sub_226EDAB78(v39, v27);

      goto LABEL_10;
    }

    if (v29 == 1)
    {

LABEL_10:
      sub_2274B2754(v8);

      *a3 = v9;
      return result;
    }

    swift_willThrow();

    swift_setDeallocating();
    v32 = qword_2813B2078;
    v33 = sub_22766A100();
    (*(*(v33 - 8) + 8))(v25 + v32, v33);
    return swift_deallocClassInstance();
  }

  return result;
}

void sub_22717ED2C(uint64_t *a1, uint64_t a2)
{
  v33 = sub_227669B90();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_227663480();
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v30 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v29 = &v24 - v9;
  v10 = *a1;
  v11 = *(a2 + 736);
  v34 = a2;
  __swift_project_boxed_opaque_existential_0((a2 + 712), v11);
  sub_2271D7EE8();
  v12 = *(v10 + 56);
  v25 = v10 + 56;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v27 = (v4 + 8);
  v28 = v6 + 16;
  v31 = v6;
  v26 = v6 + 8;
  v35 = v10;

  v17 = 0;
  while (v15)
  {
    v18 = v17;
LABEL_9:
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v20 = v31;
    v21 = v29;
    (*(v31 + 16))(v29, *(v35 + 48) + *(v31 + 72) * (v19 | (v18 << 6)), v38);
    v37 = *(v34 + 544);
    ObjectType = swift_getObjectType();
    sub_227663470();
    v22 = v32;
    sub_227669B80();
    v23 = v33;
    sub_2276699D0();
    (*v27)(v22, v23);
    (*(v20 + 8))(v21, v38);
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return;
    }

    v15 = *(v25 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id *sub_22717F068@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_227663180();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276625E0();
  result = sub_22707F154(a1, v11);
  if (!v3)
  {
    v13 = result;
    v14 = sub_22707B7C4(result, a1);
    v27 = v13;
    v28 = a1;
    v31 = a2;
    v32 = v14;
    v26 = a3;
    v34 = 0;
    v15 = v14 + 56;
    v16 = 1 << v14[32];
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 7);
    v19 = (v16 + 63) >> 6;
    v29 = v8 + 16;
    v30 = (v8 + 8);

    v20 = 0;
    for (i = 0; v18; v20 = v22)
    {
      v22 = v20;
LABEL_9:
      (*(v8 + 16))(v10, *(v32 + 6) + *(v8 + 72) * (__clz(__rbit64(v18)) | (v22 << 6)), v7);
      sub_22717F32C(&v34, v10, &v33);
      v18 &= v18 - 1;
      (*v30)(v10, v7);
      i = v33;
      v34 = v33;
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v23 = v32;

        v25 = v27;
        v24 = v28;
        sub_22707984C(v27, v28);
        sub_22707BC10(v25, v24);

        sub_2274B2754(v23);

        *v26 = i;
        return result;
      }

      v18 = *&v15[8 * v22];
      ++v20;
      if (v18)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    result = (*v30)(v10, v7);
    __break(1u);
  }

  return result;
}

uint64_t sub_22717F32C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v45 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v41 - v8;
  v9 = sub_2276624A0();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227663180();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766B390();
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v44 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v46 = *a1;
  sub_22766A6C0();
  v20 = *(v12 + 16);
  v48 = a2;
  v20(v14, a2, v11);
  v21 = sub_22766B380();
  v22 = sub_22766C8B0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v15;
    v24 = v23;
    v41 = swift_slowAlloc();
    v53 = v41;
    *v24 = 141558274;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2080;
    sub_227186290(&qword_28139BD48, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCC0]);
    v25 = sub_22766D140();
    v43 = v3;
    v27 = v26;
    (*(v12 + 8))(v14, v11);
    v28 = sub_226E97AE8(v25, v27, &v53);
    v4 = v43;

    *(v24 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v21, v22, "Deleting expired entry: %{mask.hash}s", v24, 0x16u);
    v29 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v24, -1, -1);

    v30 = *(v47 + 8);
    v31 = v19;
    v32 = v42;
    v30(v31, v42);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
    v30 = *(v47 + 8);
    v30(v19, v15);
    v32 = v15;
  }

  v33 = v49;
  sub_227663160();
  v35 = v51;
  v34 = v52;
  if ((*(v51 + 48))(v33, 1, v52) == 1)
  {
    result = sub_226E97D1C(v33, &unk_27D7BB570, &unk_227670FC0);
    v37 = v46;
LABEL_11:
    *v45 = v37;
    return result;
  }

  (*(v35 + 32))(v50, v33, v34);
  v38 = v44;
  sub_22766A6C0();
  sub_22766B370();
  v30(v38, v32);
  v39 = sub_227125FB4();
  if (v4)
  {

    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  result = (*(v35 + 8))(v50, v34);
  if (v40 < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = v46 + v40;
    if (!__CFADD__(v46, v40))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22717F88C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, objc_class *a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  LODWORD(v110) = a6;
  v103 = a4;
  v104 = a5;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  result = sub_227393794(a3 & 1);
  if (!v7)
  {
    v100 = v17;
    v101 = result;
    v95 = v15;
    v96 = v13;
    v97 = v12;
    v98 = a2;
    v94 = a7;
    v102 = 0;
    v18 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v18 + 16);
    v22 = v18[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v23 = swift_allocObject();
    v24 = v19;
    v25 = v20;

    sub_22766A070();
    *(v23 + 16) = v24;
    *(v23 + 24) = v25;
    *(v23 + 32) = v21;
    *(v23 + 40) = v22;
    swift_getKeyPath();
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v109 = v99;
    v107 = v103;
    v108 = v104;
    v26 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v27 = sub_22766C820();
    sub_226ED25F8(&v107, v105);
    v28 = v106;
    if (v106)
    {
      v29 = __swift_project_boxed_opaque_existential_0(v105, v106);
      v30 = *(v28 - 8);
      v31 = MEMORY[0x28223BE20](v29);
      v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v33, v31);
      v34 = sub_22766D170();
      (*(v30 + 8))(v33, v28);
      __swift_destroy_boxed_opaque_existential_0(v105);
    }

    else
    {
      v34 = 0;
    }

    v35 = objc_opt_self();
    v36 = [v35 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v37 = [objc_allocWithZone(v104) initWithLeftExpression:v27 rightExpression:v36 modifier:0 type:4 options:0];

    sub_226E97D1C(&v107, &unk_27D7BC990, &qword_227670A30);
    v38 = qword_2813B2078;
    swift_beginAccess();
    v39 = v37;
    v40 = sub_22766A080();
    v42 = v41;
    MEMORY[0x22AA985C0]();
    if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v40(&v107, 0);
    swift_endAccess();

    swift_getKeyPath();
    v43 = sub_227663450();
    v109 = MEMORY[0x277D83B88];
    v107 = v43;

    v110 = v26;
    v44 = sub_22766C820();
    sub_226ED25F8(&v107, v105);
    v45 = v106;
    if (v106)
    {
      v46 = __swift_project_boxed_opaque_existential_0(v105, v106);
      v103 = &v93;
      v47 = v38;
      v48 = v35;
      v49 = *(v45 - 8);
      v50 = MEMORY[0x28223BE20](v46);
      v52 = &v93 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v52, v50);
      v53 = sub_22766D170();
      (*(v49 + 8))(v52, v45);
      v35 = v48;
      v38 = v47;
      __swift_destroy_boxed_opaque_existential_0(v105);
    }

    else
    {
      v53 = 0;
    }

    v54 = [v35 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v55 = [objc_allocWithZone(v104) initWithLeftExpression:v44 rightExpression:v54 modifier:0 type:4 options:0];

    sub_226E97D1C(&v107, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v56 = v55;
    v57 = sub_22766A080();
    v59 = v58;
    MEMORY[0x22AA985C0]();
    if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v57(&v107, 0);
    swift_endAccess();

    swift_getKeyPath();
    v109 = v99;
    v107 = v101;
    v108 = v100;

    v60 = sub_22766C820();
    sub_226ED25F8(&v107, v105);
    v61 = v106;
    if (v106)
    {
      v62 = __swift_project_boxed_opaque_existential_0(v105, v106);
      v110 = v38;
      v63 = *(v61 - 8);
      v64 = MEMORY[0x28223BE20](v62);
      v66 = &v93 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v63 + 16))(v66, v64);
      v67 = sub_22766D170();
      (*(v63 + 8))(v66, v61);
      __swift_destroy_boxed_opaque_existential_0(v105);
    }

    else
    {
      v67 = 0;
    }

    v68 = [v35 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v69 = [objc_allocWithZone(v104) initWithLeftExpression:v60 rightExpression:v68 modifier:0 type:4 options:0];

    sub_226E97D1C(&v107, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v70 = v69;
    v71 = sub_22766A080();
    v73 = v72;
    MEMORY[0x22AA985C0]();
    if (*((*v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v71(&v107, 0);
    swift_endAccess();

    v74 = v102;
    v75 = sub_2272328B8(100);
    if (v74)
    {
      swift_setDeallocating();

      v76 = qword_2813B2078;
      v77 = sub_22766A100();
      (*(*(v77 - 8) + 8))(v23 + v76, v77);
      return swift_deallocClassInstance();
    }

    else
    {
      v78 = v75;
      swift_setDeallocating();

      v79 = qword_2813B2078;
      v80 = sub_22766A100();
      (*(*(v80 - 8) + 8))(v23 + v79, v80);
      swift_deallocClassInstance();
      v81 = v95;
      sub_22766A6C0();

      v82 = sub_22766B380();
      v83 = sub_22766C8B0();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v107 = v85;
        *v84 = 141558274;
        *(v84 + 4) = 1752392040;
        *(v84 + 12) = 2080;
        sub_227663480();
        sub_227186290(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
        v86 = sub_22766C610();
        v88 = sub_226E97AE8(v86, v87, &v107);

        *(v84 + 14) = v88;
        _os_log_impl(&dword_226E8E000, v82, v83, "Cancel - Found bundle requests: %{mask.hash}s", v84, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x22AA9A450](v85, -1, -1);
        MEMORY[0x22AA9A450](v84, -1, -1);
      }

      (*(v96 + 8))(v81, v97);
      __swift_project_boxed_opaque_existential_0((v98 + 496), *(v98 + 520));
      sub_2276696A0();
      v89 = v107;
      v90 = v108;

      v91 = sub_227185914(v78, v89, v90);

      swift_bridgeObjectRelease_n();
      v92 = sub_226F40934(v91);

      *v94 = v92;
    }
  }

  return result;
}

void sub_2271804AC(uint64_t a1, uint64_t a2)
{

  sub_2273CAE98(a1, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v4 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_22718622C();
  sub_227669240();
}

uint64_t sub_227180570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a1;
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85C8, &qword_227679600);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = v4[75];
  v17 = v4[76];
  __swift_project_boxed_opaque_existential_0(v4 + 72, v16);
  v18 = swift_allocObject();
  v18[2] = v29;
  v18[3] = a2;
  v18[4] = v4;

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  sub_226ECF5D8(sub_2271860CC, v18, v16, v19, v17, v11);

  v20 = *__swift_project_boxed_opaque_existential_0(v4 + 12, v4[15]);
  v33[3] = type metadata accessor for AssetCancellationHandler();
  v33[4] = &off_283A96BC0;
  v33[0] = v20;
  sub_226E91B50(v33, v32);
  v21 = swift_allocObject();
  sub_226E92AB8(v32, v21 + 16);

  __swift_destroy_boxed_opaque_existential_0(v33);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2271860EC;
  *(v22 + 24) = v21;
  v23 = v30;
  (*(v7 + 16))(v30, v11, v6);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  (*(v7 + 32))(v25 + v24, v23, v6);
  v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_227186134;
  v26[1] = v22;
  sub_227669270();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_227180938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v39 = a1;
  v40 = a4;
  v38 = a5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, *(a1 + 24));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  swift_getKeyPath();
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v41[0] = a2;
  v41[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226ED25F8(v41, v42);
  v16 = v43;
  if (v43)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v42, v43);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v41, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = v24;
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v41, 0);
  swift_endAccess();

  __swift_project_boxed_opaque_existential_0((v40 + 176), *(v40 + 200));
  v29 = v44;
  v30 = sub_2272322B8(100);
  if (v29)
  {
  }

  v32 = sub_22707488C(v30, v39);

  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = sub_2274CD768(*(v32 + 16), 0);
    v35 = *(sub_2276639B0() - 8);
    sub_2274CDD80(v41, &v34[(*(v35 + 80) + 32) & ~*(v35 + 80)], v33, v32);
    v37 = v36;
    result = sub_226EBB21C(v41[0]);
    if (v37 == v33)
    {

      *v38 = v34;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    *v38 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227180DD0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  v10 = *(v7 + 8);
  v10(v9, v6);
  if (a1)
  {
    if (a1 == 1)
    {
      return sub_227180FDC(a2);
    }

    else
    {
      sub_22766A6C0();
      sub_22766B370();
      v10(v9, v6);
      v12 = v3[75];
      v13 = v3[76];
      __swift_project_boxed_opaque_existential_0(v3 + 72, v12);
      return sub_226ECF5D8(sub_2271825B8, 0, v12, MEMORY[0x277D84D38], v13, a2);
    }
  }

  else
  {
    *(swift_allocObject() + 16) = 0;
    return sub_227669280();
  }
}

uint64_t sub_227180FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v22[0] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  v13 = *(v10 + 8);
  v13(v12, v9);
  sub_22766A6C0();
  sub_22766B370();
  v13(v12, v9);
  v14 = v2[75];
  v15 = v2[76];
  __swift_project_boxed_opaque_existential_0(v2 + 72, v14);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
  sub_226ECF5D8(sub_227186014, v2, v14, v16, v15, v8);

  v17 = v22[0];
  (*(v4 + 16))(v22[0], v8, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v17, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227185188;
  v20[1] = 0;
  sub_227669270();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_227181320@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  v10 = *(v7 + 8);
  v10(v9, v6);
  if (a1)
  {
    if (a1 == 1)
    {
      sub_22766A6C0();
      sub_22766B370();
      v10(v9, v6);
      v11 = v3[75];
      v12 = v3[76];
      __swift_project_boxed_opaque_existential_0(v3 + 72, v11);

      sub_226ECF5D8(sub_227181860, v3, v11, MEMORY[0x277D84D38], v12, a2);
    }

    else
    {
      return sub_22718153C(a2);
    }
  }

  else
  {
    *(swift_allocObject() + 16) = 0;
    return sub_227669280();
  }
}

uint64_t sub_22718153C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  v12 = *(v9 + 8);
  v12(v11, v8);
  sub_22766A6C0();
  sub_22766B370();
  v12(v11, v8);
  v13 = *(v2 + 75);
  v14 = *(v2 + 76);
  __swift_project_boxed_opaque_existential_0(v2 + 72, v13);
  sub_226ECF5D8(sub_2271825B8, 0, v13, MEMORY[0x277D84D38], v14, v7);
  v16 = v22;
  v15 = v23;
  (*(v3 + 16))(v22, v7, v23);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v17, v16, v15);
  v19 = (v18 + ((v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_227185CBC;
  v19[1] = v2;

  sub_227669270();
  return (*(v3 + 8))(v7, v15);
}

uint64_t sub_22718187C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v70 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = v71[8];
  MEMORY[0x28223BE20](v11);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  MEMORY[0x28223BE20](v16);
  v62 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  v68 = *(v18 - 8);
  v69 = v18;
  v67 = *(v68 + 64);
  MEMORY[0x28223BE20](v18);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v64 = &v57 - v21;
  v65 = *a1;
  sub_227181F1C(v10);
  v22 = swift_allocObject();
  *(v22 + 16) = nullsub_1;
  *(v22 + 24) = 0;
  (*(v5 + 16))(v7, v10, v4);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v5 + 32))(v25 + v23, v7, v4);
  v26 = (v25 + v24);
  *v26 = sub_227185CEC;
  v26[1] = v22;
  v59 = v15;
  sub_227669270();
  (*(v5 + 8))(v10, v4);
  v27 = swift_allocObject();
  v27[2] = 0xD00000000000002ALL;
  v27[3] = 0x8000000227695BD0;
  v27[4] = 129;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_226F323BC;
  *(v28 + 24) = v27;
  v30 = v71;
  v29 = v72;
  v60 = v71[2];
  v31 = v61;
  v60(v61, v15, v72);
  v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v58 = v32;
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v30[4];
  v35(v34 + v32, v31, v29);
  v36 = (v34 + v33);
  *v36 = sub_226F323DC;
  v36[1] = v28;
  v37 = v62;
  sub_227669270();
  v38 = v72;
  v39 = v71[1];
  v40 = v59;
  v39(v59, v72);
  v60(v40, v37, v38);
  v41 = swift_allocObject();
  v35(v41 + v58, v40, v38);
  v42 = (v41 + v33);
  v43 = v63;
  *v42 = sub_227185D44;
  v42[1] = v43;

  v44 = v64;
  sub_227669270();
  v39(v37, v38);
  v45 = swift_allocObject();
  *(v45 + 16) = v65;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_227185D74;
  *(v46 + 24) = v45;
  v47 = v68;
  v48 = v69;
  v49 = v66;
  v50 = v44;
  (*(v68 + 16))(v66, v44, v69);
  v51 = v47;
  v52 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v53 = (v67 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v51 + 32))(v54 + v52, v49, v48);
  v55 = (v54 + v53);
  *v55 = sub_227185D90;
  v55[1] = v46;
  sub_227669270();
  return (*(v51 + 8))(v50, v48);
}

uint64_t sub_227181F1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v5);
  v7 = v40 - v6;
  MEMORY[0x28223BE20](v8);
  v42 = v40 - v9;
  MEMORY[0x28223BE20](v10);
  v43 = v40 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = *(v2 + 75);
  v17 = *(v2 + 76);
  __swift_project_boxed_opaque_existential_0(v2 + 72, v16);

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  v40[0] = v7;
  sub_226ECF5D8(sub_226FBDF28, v2, v16, v50, v17, v7);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_227185D98;
  *(v18 + 24) = v2;
  v19 = v3;
  v20 = v3 + 16;
  v21 = *(v3 + 16);
  v49 = v20;
  v22 = v41;
  v21(v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v41);
  v23 = v19;
  v24 = *(v19 + 80);
  v40[1] = v24;
  v25 = (v24 + 16) & ~v24;
  v48 = v25;
  v26 = (v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v47 = *(v23 + 32);
  v47(v27 + v25, v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v28 = (v27 + v26);
  *v28 = sub_227086814;
  v28[1] = v18;

  v29 = v42;
  sub_227669270();
  v30 = *(v23 + 8);
  v45 = v23 + 8;
  v46 = v30;
  v31 = v40[0];
  v30(v40[0], v22);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_227185DC4;
  *(v32 + 24) = v2;
  v21(v31, v29, v22);
  v33 = swift_allocObject();
  v47(v33 + v48, v31, v22);
  v34 = (v33 + v26);
  *v34 = sub_227087D64;
  v34[1] = v32;

  v35 = v43;
  sub_227669270();
  v46(v29, v22);
  v36 = v35;
  v21(v29, v35, v22);
  v37 = swift_allocObject();
  v47(v37 + v48, v29, v22);
  v38 = (v37 + v26);
  *v38 = sub_227185DC8;
  v38[1] = v2;

  sub_227669270();
  return (v46)(v36, v22);
}