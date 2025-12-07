uint64_t VoiceBankingCommand.Helper.DeletionType.hashValue.getter()
{
  v1 = *v0;
  sub_23328E61C();
  MEMORY[0x23839C380](v1);
  return sub_23328E66C();
}

uint64_t sub_233247944(_BYTE *a1)
{
  v2[2] = v1;
  v3 = *v1;
  if (*a1 == 1)
  {
    v8 = (*(v3 + 200) + **(v3 + 200));
    v4 = swift_task_alloc();
    v2[3] = v4;
    *v4 = v2;
    v4[1] = sub_233247B4C;
    v5 = v8;
  }

  else
  {
    v9 = (*(v3 + 184) + **(v3 + 184));
    v6 = swift_task_alloc();
    v2[12] = v6;
    *v6 = v2;
    v6[1] = sub_233248320;
    v5 = v9;
  }

  return v5();
}

uint64_t sub_233247B4C(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_233247C80, 0, 0);
  }
}

void sub_233247C80()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v0[5] = v2;
  if (v2)
  {
    v0[6] = 0;
    if (*(v1 + 16))
    {
      v3 = v0[2];
      type metadata accessor for TTSVBVoiceModel(0);
      v4 = sub_23328CE8C();
      v0[7] = v4;
      v5 = *(v4 - 8);
      v0[8] = v5;
      v6 = swift_task_alloc();
      v0[9] = v6;
      (*(v5 + 16))();
      v9 = (*(*v3 + 336) + **(*v3 + 336));
      v7 = swift_task_alloc();
      v0[10] = v7;
      *v7 = v0;
      v7[1] = sub_233247EF4;

      v9(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v8 = v0[1];

    v8();
  }
}

uint64_t sub_233247EF4()
{
  v2 = *v1;
  v2[11] = v0;

  v3 = v2[8];
  if (v0)
  {
    (*(v3 + 8))(v2[9], v2[7]);

    v4 = sub_233248AF4;
  }

  else
  {
    (*(v3 + 8))();

    v4 = sub_233248084;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_233248084()
{
  v1 = v0[6] + 1;
  if (v1 == v0[5])
  {

    v2 = v0[1];

    v2();
  }

  else
  {
    v0[6] = v1;
    if (v1 >= *(v0[4] + 16))
    {
      __break(1u);
    }

    else
    {
      v3 = v0[2];
      type metadata accessor for TTSVBVoiceModel(0);
      v4 = sub_23328CE8C();
      v0[7] = v4;
      v5 = *(v4 - 8);
      v0[8] = v5;
      v6 = swift_task_alloc();
      v0[9] = v6;
      (*(v5 + 16))();
      v8 = (*(*v3 + 336) + **(*v3 + 336));
      v7 = swift_task_alloc();
      v0[10] = v7;
      *v7 = v0;
      v7[1] = sub_233247EF4;

      v8(v6);
    }
  }
}

uint64_t sub_233248320(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_233248454, 0, 0);
  }
}

void sub_233248454()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = 0;
    if (*(v1 + 16))
    {
      v3 = v0[2];
      type metadata accessor for TTSVBVoice(0);
      v4 = sub_23328CE8C();
      v0[16] = v4;
      v5 = *(v4 - 8);
      v0[17] = v5;
      v6 = swift_task_alloc();
      v0[18] = v6;
      (*(v5 + 16))();
      v9 = (*(*v3 + 328) + **(*v3 + 328));
      v7 = swift_task_alloc();
      v0[19] = v7;
      *v7 = v0;
      v7[1] = sub_2332486C8;

      v9(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v8 = v0[1];

    v8();
  }
}

uint64_t sub_2332486C8()
{
  v2 = *v1;
  v2[20] = v0;

  v3 = v2[17];
  if (v0)
  {
    (*(v3 + 8))(v2[18], v2[16]);

    v4 = sub_233248B58;
  }

  else
  {
    (*(v3 + 8))();

    v4 = sub_233248858;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_233248858()
{
  v1 = v0[15] + 1;
  if (v1 == v0[14])
  {

    v2 = v0[1];

    v2();
  }

  else
  {
    v0[15] = v1;
    if (v1 >= *(v0[13] + 16))
    {
      __break(1u);
    }

    else
    {
      v3 = v0[2];
      type metadata accessor for TTSVBVoice(0);
      v4 = sub_23328CE8C();
      v0[16] = v4;
      v5 = *(v4 - 8);
      v0[17] = v5;
      v6 = swift_task_alloc();
      v0[18] = v6;
      (*(v5 + 16))();
      v8 = (*(*v3 + 328) + **(*v3 + 328));
      v7 = swift_task_alloc();
      v0[19] = v7;
      *v7 = v0;
      v7[1] = sub_2332486C8;

      v8(v6);
    }
  }
}

uint64_t sub_233248AF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233248B58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static VoiceBankingCommand.Helper.TrainingMode.bestTrainingModeForDevice()@<X0>(char *a1@<X8>)
{
  result = TTSVBIsPersonalVoiceVersion2Enabled();
  if (result && (result = TTSVBDeviceSupportsV2Voices()(), (result & 1) != 0))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t VoiceBankingCommand.Helper.TrainingMode.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_23328E37C();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t VoiceBankingCommand.Helper.TrainingMode.rawValue.getter()
{
  v1 = 0x6C616974726170;
  if (*v0 != 1)
  {
    v1 = 6369904;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t sub_233248CC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616974726170;
  if (v2 != 1)
  {
    v4 = 6369904;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1819047270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6C616974726170;
  if (*a2 != 1)
  {
    v8 = 6369904;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1819047270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_233248DB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1769300333;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1634627435;
    }

    else
    {
      v4 = 1769300333;
    }

    v3 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x6C61746E6963616DLL;
    v3 = 0xE90000000000006BLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E6F6870797267;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x726568746FLL;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE400000000000000;
    v6 = 0xE400000000000000;
    v7 = 1634627435;
    v8 = a2 == 0;
  }

  else
  {
    v2 = 0x6C61746E6963616DLL;
    v5 = 0xE90000000000006BLL;
    v6 = 0xE700000000000000;
    v7 = 0x6E6F6870797267;
    if (a2 != 3)
    {
      v7 = 0x726568746FLL;
      v6 = 0xE500000000000000;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v3 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_233248F14()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_233248FA8(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_233249028(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

void sub_2332490C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6C616974726170;
  if (v2 != 1)
  {
    v5 = 6369904;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1819047270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_233249124(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 75) = a7;
  *(v8 + 74) = a6;
  *(v8 + 32) = a5;
  *(v8 + 40) = v7;
  *(v8 + 73) = a4;
  *(v8 + 72) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x2822009F8](sub_233249158, 0, 0);
}

uint64_t sub_233249158(uint64_t a1)
{
  v22 = *(v1 + 75);
  v26 = *(v1 + 74);
  v24 = *(v1 + 40);
  v25 = *(v1 + 32);
  v2 = *(v1 + 73);
  v3 = *(v1 + 72);
  v20 = *(v1 + 72);
  v4 = *(v1 + 24);
  v21 = v4;
  v23 = *(v1 + 16);
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332ACF10);
  v5 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v5);

  MEMORY[0x23839B7E0](0x6E696E6961727420, 0xEE003D65646F4D67);
  v6 = TTSVBSiriTTSTrainerTaskModeStringForMode(v4);
  v7 = sub_23328D98C();
  v9 = v8;

  MEMORY[0x23839B7E0](v7, v9);

  MEMORY[0x23839B7E0](0xD000000000000012, 0x80000002332A8C20);
  if (v3)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v3)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v10, v11);

  MEMORY[0x23839B7E0](0xD000000000000010, 0x80000002332ACF40);
  if (v2)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v2)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v12, v13);

  MEMORY[0x23839B7E0](0xD00000000000001ELL, 0x80000002332ACF60);
  if (v22)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v22)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v14, v15);

  sub_23328D27C();

  v16 = swift_task_alloc();
  *(v1 + 48) = v16;
  *(v16 + 16) = v24;
  *(v16 + 24) = v23;
  *(v16 + 32) = v21;
  *(v16 + 40) = v20;
  *(v16 + 41) = v2;
  *(v16 + 48) = v25;
  *(v16 + 56) = v26 & 1;
  *(v16 + 57) = v22;
  v17 = swift_task_alloc();
  *(v1 + 56) = v17;
  *v17 = v1;
  v17[1] = sub_2332494A4;
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v17, 0, 0, 0xD000000000000071, 0x80000002332ACF80, sub_23325516C, v16, v18);
}

uint64_t sub_2332494A4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2332495C0;
  }

  else
  {

    v2 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2332495C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233249624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v16 = a7;
  v15[0] = a5;
  v15[1] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_233237A9C();
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  TTSVBService.trainModel(withID:mode:startImmediately:skipValidation:overrideMinimumPhraseCount:useUserRecordingsForTraining:completion:)();
}

uint64_t sub_2332497BC(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - v6;
  sub_233121D34(a1, v11 - v6, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v7, v4, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_233257478(v4, v9, type metadata accessor for TTSVBError);
    v11[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v4, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_2332499F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_233249A18, 0, 0);
}

uint64_t sub_233249A18(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  sub_23328D30C();
  sub_23328D27C();

  v5 = swift_task_alloc();
  v1[5] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v1[6] = v6;
  *v6 = v1;
  v6[1] = sub_233249B54;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001BLL, 0x80000002332AD030, sub_2332551AC, v5, v7);
}

uint64_t sub_233249B54()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2332396B0;
  }

  else
  {

    v2 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233249C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  sub_233237A9C();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  (*(v8 + 32))(v12 + v11, v10, v7);

  TTSVBService.cancelTrainingTask(taskID:completion:)();
}

uint64_t sub_233249DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_233121D34(a1, &v15 - v10, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v11, v8, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v12 = swift_allocError();
    sub_233257478(v8, v13, type metadata accessor for TTSVBError);
    v15 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v8, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_23328E24C();

    v15 = 0xD000000000000027;
    v16 = 0x80000002332AE460;
    MEMORY[0x23839B7E0](a2, a3);
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23324A094(uint64_t a1)
{
  sub_23328D30C();
  sub_23328D27C();

  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23323C82C;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000016, 0x80000002332AD080, sub_2332551B8, v3, v4);
}

uint64_t sub_23324A1A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_233237A9C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  TTSVBService.discardTrainingTasks(completion:)();
}

uint64_t sub_23324A2F8(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - v6;
  sub_233121D34(a1, v11 - v6, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v7, v4, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_233257478(v4, v9, type metadata accessor for TTSVBError);
    v11[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v4, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23324A530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23324A558, 0, 0);
}

uint64_t sub_23324A558()
{
  v1 = v0[5] == 0x746C7561666564 && v0[6] == 0xE700000000000000;
  if (v1 || (sub_23328E54C() & 1) != 0)
  {
    v2 = TTSVBSiriTrainingScriptTypeDefault;
LABEL_7:
    v3 = *v2;
LABEL_8:
    v0[7] = v3;
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_task_alloc();
    v0[8] = v6;
    v6[2] = v5;
    v6[3] = v4;
    v6[4] = v3;
    v7 = v3;
    v8 = swift_task_alloc();
    v0[9] = v8;
    v9 = sub_23328CC9C();
    *v8 = v0;
    v8[1] = sub_23324A81C;
    v10 = v0[2];

    return MEMORY[0x2822008A0](v10, 0, 0, 0xD00000000000002CLL, 0x80000002332AD0A0, sub_2332551C0, v6, v9);
  }

  if (v0[5] == 0x74726F6873 && v0[6] == 0xE500000000000000 || (sub_23328E54C() & 1) != 0)
  {
    v2 = TTSVBSiriTrainingScriptTypeShortPhrases;
    goto LABEL_7;
  }

  v12 = v0[5];
  v11 = v0[6];
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000001BLL, 0x80000002332AE3E0);
  MEMORY[0x23839B7E0](v12, v11);
  MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332AE400);
  sub_23328D1BC();
  sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
  v13 = swift_allocError();
  sub_23328D1CC();
  v3 = v13;
  swift_willThrow();
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_23324A81C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23324A99C;
  }

  else
  {

    v2 = sub_23324A938;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23324A938()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23324A99C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23324AA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTSVBVoiceBankingManager();
  v8 = TTSVBVoiceBankingManager.__allocating_init()();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  (*(v10 + 16))(&v16 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  TTSVBVoiceBankingManager.getTrainingMetadataDownloadingIfNeeded(localeID:scriptType:_:)(a2, a3, a4, sub_233257660, v15);
}

uint64_t sub_23324AB84(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  sub_233121D34(a1, v18 - v6, &qword_27DDE19A8, &qword_233299A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v7, v4, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_233257478(v4, v9, type metadata accessor for TTSVBError);
    v18[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
    sub_23328DC8C();
    return sub_2332574E0(v4, type metadata accessor for TTSVBError);
  }

  else
  {
    v11 = sub_23328CC9C();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    v14 = MEMORY[0x28223BE20](v11);
    v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    v16 = (*(v12 + 32))(v18 - v15, v7, v11, v14);
    v17 = MEMORY[0x28223BE20](v16);
    (*(v12 + 16))(v18 - v15, v18 - v15, v11, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
    sub_23328DC9C();
    return (*(v12 + 8))(v18 - v15, v11);
  }
}

uint64_t sub_23324AE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_23328CC9C();
  v5[2] = v10;
  v5[3] = *(v10 - 8);
  v11 = swift_task_alloc();
  v5[4] = v11;
  v14 = (*(*v4 + 384) + **(*v4 + 384));
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = sub_23324B048;

  return v14(v11, a1, a2, a3, a4);
}

uint64_t sub_23324B048()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23324B2B8;
  }

  else
  {
    v2 = sub_23324B15C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23324B15C()
{
  v1 = v0[6];
  sub_23328D9DC();
  swift_task_alloc();
  sub_23328D9CC();
  sub_23328D91C();
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  if (v1)
  {
    (*(v3 + 8))(v0[4], v0[2]);
  }

  else
  {

    sub_23328D30C();
    sub_23328D27C();

    (*(v3 + 8))(v2, v4);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_23324B2B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23324B31C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23324B33C, 0, 0);
}

uint64_t sub_23324B33C(uint64_t a1)
{
  v7 = v1[1];
  sub_23328D30C();
  sub_23328E24C();

  v2 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v2);

  sub_23328D27C();

  v3 = swift_task_alloc();
  v1[2].i64[0] = v3;
  v3[1] = vextq_s8(v7, v7, 8uLL);
  v4 = swift_task_alloc();
  v1[2].i64[1] = v4;
  *v4 = v1;
  v4[1] = sub_233246394;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x80000002332AD100, sub_2332551CC, v3, v5);
}

uint64_t sub_23324B4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_233237A9C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  TTSVBService.synchronizeFileBackedFuturesForModelID(_:completion:)();
}

uint64_t sub_23324B630(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - v6;
  sub_233121D34(a1, v11 - v6, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v7, v4, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_233257478(v4, v9, type metadata accessor for TTSVBError);
    v11[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v4, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23324B888()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23324B964;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v1, 0, 0, 0x41657A796C616E61, 0xEF29287373656363, sub_2332551D4, v2, v3);
}

uint64_t sub_23324B964()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_23324BE90;
  }

  else
  {
    v2 = sub_23324BA78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23324BA78(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_23328D30C();
  sub_23328E24C();

  v3 = sub_233237B6C();
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

  if (v5)
  {
    v6 = 7562585;
  }

  else
  {
    v6 = 28494;
  }

  if (v5)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  MEMORY[0x23839B7E0](v6, v7);

  sub_23328D27C();

  sub_23328D30C();
  sub_23328E24C();

  v8 = *(v2 + 32);
  v9 = *((*v4 & *v8) + 0x118);
  v10 = v8;
  v11 = v9();

  v12 = TTSVBTCCCloudKitAccess.rawValue.getter(v11);
  MEMORY[0x23839B7E0](v12);

  sub_23328D27C();

  sub_23328D30C();
  sub_23328E24C();

  v13 = *(v2 + 32);
  v14 = *((*v4 & *v13) + 0x130);
  v15 = v13;
  v16 = v14();

  if (v16)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v17, v18);

  sub_23328D27C();

  sub_23328D30C();
  sub_23328E24C();

  v19 = *(v2 + 32);
  v20 = *((*MEMORY[0x277D85000] & *v19) + 0x138);
  v21 = v19;
  v22 = v20();

  if (v22)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v23, v24);

  sub_23328D27C();

  v25 = *(v1 + 8);

  return v25();
}

void sub_23324BEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = sub_233237B6C();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  (*((*MEMORY[0x277D85000] & *v6) + 0x128))(sub_233257C84, v8);
}

void sub_23324C040()
{
  v139 = *MEMORY[0x277D85DE8];
  v119 = _s6HelperC9StoreInfoVMa(0);
  v128 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v120 = v104 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v130);
  v129 = v104 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for TTSVBDataStore(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_23328CC9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = v104 - v7;
  v9 = sub_23328D95C();
  v10 = sub_23328D95C();
  v11 = [v3 URLForResource:v9 withExtension:v10];

  MEMORY[0x28223BE20](v12);
  if (!v11)
  {
    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();

    return;
  }

  v121 = v3;
  sub_23328CC4C();

  (*(v5 + 32))(v104 - v7, v104 - v7, v4);
  v13 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v14 = sub_23328CBCC();
  v15 = [v13 initWithContentsOfURL_];

  v16 = v4;
  if (!v15)
  {
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_23328E24C();

    v137 = 0xD00000000000002BLL;
    v138 = 0x80000002332AD1D0;
    v19 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v19);

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();

    (*(v5 + 8))(v8, v4);
    return;
  }

  v17 = v132;
  static TTSVBDataStore.applyVoicebankingAttributesToMom(_:)(v15);
  v18 = v121;
  if (v17)
  {
    (*(v5 + 8))(v8, v16);

    return;
  }

  v104[0] = 0;
  v107 = v8;
  v20 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v21 = v15;
  v22 = sub_23328D95C();
  v116 = [v20 initWithName:v22 managedObjectModel:v21];

  v106 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36D0, qword_23329F428);
  v127 = v128[9];
  v23 = (*(v128 + 80) + 32) & ~*(v128 + 80);
  v24 = swift_allocObject();
  v128 = v104;
  v104[1] = v24;
  v25 = (v24 + v23);
  MEMORY[0x28223BE20](v24);
  v26 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v131 = v5;
  v27 = v16;
  v28 = v129;
  v29 = swift_storeEnumTagMultiPayload();
  v126 = v104;
  MEMORY[0x28223BE20](v29);
  TTSVBPath.url.getter(v104 - v26);
  v132 = type metadata accessor for TTSVBPath;
  sub_2332574E0(v28, type metadata accessor for TTSVBPath);
  sub_23328CBEC();
  v30 = *(v131 + 8);
  v131 += 8;
  v31 = v27;
  v109 = v27;
  v30(v104 - v26, v27);
  v32 = v119;
  sub_23328CBFC();
  v33 = (v30)(v104 - v26, v31);
  v128 = v104;
  *v25 = 0x6C61636F4CLL;
  v25[1] = 0xE500000000000000;
  v34 = (v25 + *(v32 + 24));
  *v34 = 0x6C61636F4CLL;
  v34[1] = 0xE500000000000000;
  v35 = (v25 + v127);
  MEMORY[0x28223BE20](v33);
  v37 = swift_storeEnumTagMultiPayload();
  v130 = v104;
  MEMORY[0x28223BE20](v37);
  v36 = v104 - v26;
  TTSVBPath.url.getter(v104 - v26);
  sub_2332574E0(v28, v132);
  sub_23328CBEC();
  v38 = v104 - v26;
  v39 = v25;
  v40 = v127;
  v41 = v109;
  v30(v38, v109);
  sub_23328CBFC();
  v105 = v30;
  v30(v36, v41);
  v42 = 0;
  v43 = 0;
  *v35 = 0x64756F6C43;
  v35[1] = 0xE500000000000000;
  v44 = (v35 + *(v32 + 24));
  *v44 = 0x64756F6C43;
  v44[1] = 0xE500000000000000;
  v45 = v120;
  v46 = &v120[*(v32 + 20)];
  v47 = &v120[*(v32 + 24)];
  v48 = 0x80000002332AD200;
  v110 = "Could not load datastore: ";
  v49 = *MEMORY[0x277CBE240];
  v50 = *MEMORY[0x277CBE2E8];
  v114 = *MEMORY[0x277CCA1A0];
  v113 = v49;
  v112 = v50;
  v108 = v46;
  v128 = 0x80000002332AD200;
  v129 = v47;
  v111 = xmmword_233297620;
  v122 = v39;
  while (1)
  {
    v115 = v42;
    sub_233257478(v39 + v43 * v40, v45, _s6HelperC9StoreInfoVMa);
    sub_23328D30C();
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_23328E24C();

    v137 = 0xD000000000000011;
    v138 = v48;
    MEMORY[0x23839B7E0](*v45, v45[1]);
    MEMORY[0x23839B7E0](0x203A4C52552027, 0xE700000000000000);
    v51 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v51);

    sub_23328D27C();

    v52 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v53 = sub_23328CBCC();
    v54 = [v52 initWithURL_];

    v55 = sub_23328D95C();
    sub_2332574E0(v45, _s6HelperC9StoreInfoVMa);
    [v54 setConfiguration_];

    [v54 setOption:v114 forKey:v113];
    [v54 setType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2320, &qword_233297640);
    v56 = swift_allocObject();
    *(v56 + 16) = v111;
    *(v56 + 32) = v54;
    sub_233144EEC(0, &qword_280D39B78, 0x277CBE4E0);
    v118 = v54;
    v57 = sub_23328DBDC();

    v58 = v116;
    [v116 setPersistentStoreDescriptions_];

    v137 = 0;
    v59 = [v58 load_];
    v60 = v137;
    v61 = v121;
    if (!v59)
    {
      swift_setDeallocating();
      v97 = v60;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v98 = sub_23328CA7C();

      swift_willThrow();
      v137 = 0;
      v138 = 0xE000000000000000;
      sub_23328E24C();

      v137 = 0xD00000000000001ALL;
      v138 = 0x80000002332AD220;
      v99 = sub_23328CA6C();
      v100 = [v99 debugDescription];

      v101 = sub_23328D98C();
      v103 = v102;

      MEMORY[0x23839B7E0](v101, v103);

      sub_23328D1BC();
      sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
      swift_allocError();
      sub_23328D1CC();
      swift_willThrow();

      v105(v107, v109);
      return;
    }

    v62 = v137;
    v130 = [v58 viewContext];
    v63 = [v58 managedObjectModel];
    sub_23328D30C();
    sub_23328D27C();

    v117 = v63;
    v64 = [v63 entities];
    sub_233144EEC(0, &qword_280D39B98, 0x277CBE408);
    v65 = sub_23328DBFC();

    if (v65 >> 62)
    {
      break;
    }

    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = v128;
    if (v66)
    {
      goto LABEL_12;
    }

LABEL_8:

    v42 = 1;
    v43 = 1;
    v45 = v120;
    if (v115)
    {

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      v105(v107, v109);
      return;
    }
  }

  v66 = sub_23328E19C();
  v48 = v128;
  if (!v66)
  {
    goto LABEL_8;
  }

LABEL_12:
  v67 = 0;
  v125 = v65 & 0xFFFFFFFFFFFFFF8;
  v126 = (v65 & 0xC000000000000001);
  v123 = v66;
  v124 = v65;
  while (1)
  {
    if (v126)
    {
      v69 = MEMORY[0x23839BFC0](v67, v65);
      v68 = &selRef_mainQueue;
      v70 = (v67 + 1);
      if (__OFADD__(v67, 1))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v68 = &selRef_mainQueue;
      if (v67 >= *(v125 + 16))
      {
        goto LABEL_31;
      }

      v69 = *(v65 + 8 * v67 + 32);
      v70 = (v67 + 1);
      if (__OFADD__(v67, 1))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }
    }

    v132 = v70;
    v71 = [v69 v68[225]];
    if (!v71)
    {
      goto LABEL_32;
    }

    v72 = v71;
    v73 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

    [v73 setResultType_];
    v137 = 0;
    v74 = [v130 countForFetchRequest:v73 error:&v137];
    v75 = v137;
    if (v137)
    {
      break;
    }

    v76 = v74;
    sub_23328D30C();
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_23328E24C();

    v137 = 2108704;
    v138 = 0xE300000000000000;
    v77 = [v69 v68[225]];
    if (!v77)
    {
      goto LABEL_33;
    }

    v78 = v77;
    v79 = sub_23328D98C();
    v81 = v80;

    v135 = v79;
    v136 = v81;
    v133 = 32;
    v134 = 0xE100000000000000;
    sub_23311A294();
    v82 = sub_23328E09C();
    v84 = v83;

    MEMORY[0x23839B7E0](v82, v84);

    MEMORY[0x23839B7E0](10272, 0xE200000000000000);
    v135 = v76;
    v85 = sub_23328E51C();
    MEMORY[0x23839B7E0](v85);

    MEMORY[0x23839B7E0](0x636E6174736E6920, 0xED00002929732865);
    sub_23328D27C();

    ++v67;
    v39 = v122;
    v40 = v127;
    v48 = v128;
    v65 = v124;
    if (v132 == v123)
    {
      goto LABEL_8;
    }
  }

  swift_willThrow();
  v137 = 0;
  v138 = 0xE000000000000000;
  v86 = v75;
  sub_23328E24C();

  v137 = 0xD000000000000020;
  v138 = 0x80000002332AD260;
  v87 = [v69 v68[225]];
  if (v87)
  {
    v88 = v87;

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v89 = sub_23328D98C();
    v91 = v90;

    MEMORY[0x23839B7E0](v89, v91);

    MEMORY[0x23839B7E0](8238, 0xE200000000000000);
    v92 = sub_23328CA6C();
    v93 = [v92 debugDescription];

    v94 = sub_23328D98C();
    v96 = v95;

    MEMORY[0x23839B7E0](v94, v96);

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();

    v105(v107, v109);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23324D31C(uint64_t a1, void *a2, void *a3)
{
  v4[6] = a1;
  v4[7] = v3;
  v5 = a2[1];
  v4[8] = *a2;
  v4[9] = v5;
  v6 = a3[1];
  v4[10] = *a3;
  v4[11] = v6;
  return MEMORY[0x2822009F8](sub_23324D34C, 0, 0);
}

uint64_t sub_23324D34C(uint64_t a1)
{
  v3 = v1[5].i64[0];
  v2 = v1[5].i64[1];
  v4 = v1[4].i64[0];
  v5 = v1[4].i64[1];
  v13 = v1[3];
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000027, 0x80000002332AD290);
  v6 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v6);

  MEMORY[0x23839B7E0](0x3D656372756F7320, 0xE800000000000000);
  v1[1].i64[0] = v4;
  v1[1].i64[1] = v5;
  sub_233144FD0();
  v7 = sub_23328E51C();
  MEMORY[0x23839B7E0](v7);

  MEMORY[0x23839B7E0](0x3D74656772617420, 0xE800000000000000);
  v1[2].i64[0] = v3;
  v1[2].i64[1] = v2;
  v8 = sub_23328E51C();
  MEMORY[0x23839B7E0](v8);

  sub_23328D27C();

  v9 = swift_task_alloc();
  v1[6].i64[0] = v9;
  v9[1] = vextq_s8(v13, v13, 8uLL);
  v9[2].i64[0] = v4;
  v9[2].i64[1] = v5;
  v9[3].i64[0] = v3;
  v9[3].i64[1] = v2;
  v10 = swift_task_alloc();
  v1[6].i64[1] = v10;
  *v10 = v1;
  v10[1] = sub_23324D5AC;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000036, 0x80000002332AD2C0, sub_233255228, v9, v11);
}

uint64_t sub_23324D5AC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23324D6C8;
  }

  else
  {

    v2 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23324D6C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23324D72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[1] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  sub_233237A9C();
  v19[4] = a4;
  v19[5] = a5;
  v19[2] = a6;
  v19[3] = a7;
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v15, v12);
  TTSVBService.createSupplementaryModelForVoice(voiceID:sourceVersion:targetVersion:completion:)();
}

uint64_t sub_23324D8B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23324D8D8, 0, 0);
}

uint64_t sub_23324D8D8(uint64_t a1)
{
  v7 = v1[1];
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000033, 0x80000002332AD300);
  v2 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v2);

  sub_23328D27C();

  v3 = swift_task_alloc();
  v1[2].i64[0] = v3;
  v3[1] = vextq_s8(v7, v7, 8uLL);
  v4 = swift_task_alloc();
  v1[2].i64[1] = v4;
  *v4 = v1;
  v4[1] = sub_23324DA70;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000027, 0x80000002332AD340, sub_233255258, v3, v5);
}

uint64_t sub_23324DA70()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23319D5D4;
  }

  else
  {

    v2 = sub_23319D898;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23324DB8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_233237A9C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  TTSVBService.synthesizeAudioSamplesForVoice(withID:completion:)();
}

uint64_t sub_23324DCEC(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - v6;
  sub_233121D34(a1, v11 - v6, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v7, v4, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_233257478(v4, v9, type metadata accessor for TTSVBError);
    v11[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v4, type metadata accessor for TTSVBError);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23324DEE8(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23324DF0C, 0, 0);
}

uint64_t sub_23324DF0C()
{
  sub_23328D1FC();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_233297630;
  *(v2 + 32) = 25389;
  *(v2 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332AD370);
  v3 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AD3A0);
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v2);

  if (v1 == 1)
  {
    sub_23328D30C();
    sub_23328D27C();
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_233297630;
    *(v4 + 32) = 25389;
    *(v4 + 40) = 0xE200000000000000;
    sub_23328E24C();

    v5 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v5);

    *(v4 + 48) = 0xD00000000000001BLL;
    *(v4 + 56) = 0x80000002332AD3C0;
    sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23324E16C(uint64_t a1, char a2)
{
  *(v2 + 80) = a2;
  *(v2 + 56) = a1;
  *(v2 + 64) = type metadata accessor for TTSVBPath(0);
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23324E230, 0, 0);
}

uint64_t sub_23324E230()
{
  sub_23328D20C();
  v66 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_233297630;
  *(v1 + 32) = 25389;
  *(v1 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000030, 0x80000002332AD410);
  v2 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AD450);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v1);

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297630;
  *(v3 + 32) = 25389;
  *(v3 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000030, 0x80000002332AD470);
  v4 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AD4B0);
  *(v3 + 48) = 0;
  *(v3 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v3);

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_233297630;
  *(v5 + 32) = 25389;
  *(v5 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000003ALL, 0x80000002332AD4D0);
  v6 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v6);

  MEMORY[0x23839B7E0](0xD000000000000027, 0x80000002332AD510);
  *(v5 + 48) = 0;
  *(v5 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v5);

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_233297630;
  *(v7 + 32) = 25389;
  *(v7 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000003FLL, 0x80000002332AD540);
  v8 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v8);

  MEMORY[0x23839B7E0](0xD00000000000002CLL, 0x80000002332AD580);
  *(v7 + 48) = 0;
  *(v7 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v7);

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_233297630;
  *(v9 + 32) = 25389;
  *(v9 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000036, 0x80000002332AD5B0);
  v10 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v10);

  MEMORY[0x23839B7E0]();
  *(v9 + 48) = 0;
  *(v9 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v9);

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_233297630;
  *(v11 + 32) = 25389;
  *(v11 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000033, 0x80000002332AD620);
  v12 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v12);

  MEMORY[0x23839B7E0](0xD00000000000001ELL, 0x80000002332AD660);
  *(v11 + 48) = 0;
  *(v11 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v11);

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_233297630;
  *(v13 + 32) = 25389;
  *(v13 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000034, 0x80000002332AD680);
  v14 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v14);

  MEMORY[0x23839B7E0]();
  *(v13 + 48) = 0;
  *(v13 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v13);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_233297630;
  *(v15 + 32) = 25389;
  *(v15 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000039, 0x80000002332AD6F0);
  v16 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v16);

  MEMORY[0x23839B7E0](0xD000000000000026, 0x80000002332AD730);
  *(v15 + 48) = 0;
  *(v15 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v15);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_233297630;
  *(v17 + 32) = 25389;
  *(v17 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002DLL, 0x80000002332AD760);
  v18 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v18);

  MEMORY[0x23839B7E0]();
  *(v17 + 48) = 0;
  *(v17 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v17);

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_233297630;
  *(v19 + 32) = 25389;
  *(v19 + 40) = 0xE200000000000000;
  sub_23328E24C();

  v20 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v20);

  MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332AD7D0);
  *(v19 + 48) = 0xD00000000000001ELL;
  *(v19 + 56) = 0x80000002332AD7B0;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v19);

  if (v66 == 1)
  {
    sub_23328D30C();
    sub_23328D27C();
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_233297630;
    *(v21 + 32) = 25389;
    *(v21 + 40) = 0xE200000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD00000000000004FLL, 0x80000002332AD7F0);
    v22 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v22);

    MEMORY[0x23839B7E0](0xD00000000000002FLL, 0x80000002332AD840);
    *(v21 + 48) = 0;
    *(v21 + 56) = 0xE000000000000000;
    sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v21);

    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_233297630;
    *(v23 + 32) = 25389;
    *(v23 + 40) = 0xE200000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000062, 0x80000002332AD870);
    v24 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v24);

    MEMORY[0x23839B7E0](0xD000000000000038, 0x80000002332AD8E0);
    *(v23 + 48) = 0;
    *(v23 + 56) = 0xE000000000000000;
    sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v23);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_233297630;
  *(v25 + 32) = 25389;
  *(v25 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000030, 0x80000002332AD920);
  v26 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v26);

  MEMORY[0x23839B7E0](0xD00000000000001BLL, 0x80000002332AD960);
  *(v25 + 48) = 0;
  *(v25 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v25);

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_233297630;
  *(v27 + 32) = 25389;
  *(v27 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002BLL, 0x80000002332AD980);
  v28 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v28);

  MEMORY[0x23839B7E0](0xD000000000000016, 0x80000002332AD9B0);
  *(v27 + 48) = 0;
  *(v27 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v27);

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_233297630;
  *(v29 + 32) = 25389;
  *(v29 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000031, 0x80000002332AD9D0);
  v30 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v30);

  MEMORY[0x23839B7E0](0xD00000000000001CLL, 0x80000002332ADA10);
  *(v29 + 48) = 0;
  *(v29 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v29);

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_233297630;
  *(v31 + 32) = 25389;
  *(v31 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000035, 0x80000002332ADA30);
  v32 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v32);

  MEMORY[0x23839B7E0](0xD00000000000001ELL, 0x80000002332ADA70);
  *(v31 + 48) = 0;
  *(v31 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v31);

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_233297630;
  *(v33 + 32) = 25389;
  *(v33 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000033, 0x80000002332ADA90);
  v34 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v34);

  MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332ADAD0);
  *(v33 + 48) = 0;
  *(v33 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v33);

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_233297630;
  *(v35 + 32) = 25389;
  *(v35 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002ELL, 0x80000002332ADB00);
  v36 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v36);

  MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332ADB30);
  *(v35 + 48) = 0;
  *(v35 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v35);

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_233297630;
  *(v37 + 32) = 25389;
  *(v37 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000032, 0x80000002332ADB60);
  v38 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v38);

  MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332ADBA0);
  *(v37 + 48) = 0;
  *(v37 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v37);

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_233297630;
  *(v39 + 32) = 25389;
  *(v39 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000028, 0x80000002332ADBD0);
  v40 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v40);

  MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332ADC00);
  *(v39 + 48) = 0;
  *(v39 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v39);

  v41 = sub_23328CC9C();
  v68 = *(v41 - 8);
  v69 = v41;
  v42 = swift_task_alloc();
  strcpy((v0 + 16), "VoicePackages");
  *(v0 + 30) = -4864;
  v43 = sub_23328CB3C();
  v44 = *(v43 - 8);
  v45 = swift_task_alloc();
  v67 = *MEMORY[0x277CC91E0];
  v65 = *(v44 + 104);
  v65();
  sub_23311A294();
  sub_23328CC8C();
  v64 = *(v44 + 8);
  v64(v45, v43);

  v46 = [objc_opt_self() defaultManager];
  v47 = sub_23328CBCC();
  *(v0 + 48) = 0;
  v48 = [v46 createDirectoryAtURL:v47 withIntermediateDirectories:1 attributes:0 error:v0 + 48];

  v49 = *(v0 + 48);
  if (v48)
  {
    v50 = *(v0 + 72);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_233297630;
    *(v51 + 32) = 25389;
    *(v51 + 40) = 0xE200000000000000;
    v52 = v49;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD00000000000004DLL, 0x80000002332ADC20);
    v53 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v53);

    *(v51 + 48) = 0;
    *(v51 + 56) = 0xE000000000000000;
    sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v51);

    v54 = swift_task_alloc();
    swift_storeEnumTagMultiPayload();
    TTSVBPath.url.getter(v54);
    sub_2332574E0(v50, type metadata accessor for TTSVBPath);
    v55 = swift_task_alloc();
    *(v0 + 32) = 0xD00000000000001ALL;
    *(v0 + 40) = 0x80000002332ADC70;
    v56 = swift_task_alloc();
    (v65)(v56, v67, v43);
    sub_23328CC8C();
    v64(v56, v43);

    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_233297630;
    *(v57 + 32) = 25389;
    *(v57 + 40) = 0xE200000000000000;
    sub_23328E24C();

    v58 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v58);

    MEMORY[0x23839B7E0](2564135, 0xE300000000000000);
    v59 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v59);

    MEMORY[0x23839B7E0](39, 0xE100000000000000);
    *(v57 + 48) = 0xD000000000000010;
    *(v57 + 56) = 0x80000002332ADC90;
    sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v57);

    v60 = *(v68 + 8);
    v60(v55, v69);
    v60(v54, v69);
    v60(v42, v69);
  }

  else
  {
    v62 = v49;
    sub_23328CA7C();

    swift_willThrow();
    (*(v68 + 8))(v42, v69);
  }

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_23324F66C(uint64_t a1)
{
  v42 = v1;
  v2 = v1;
  sub_23328D30C();
  sub_23328D27C();

  v36 = sub_23328CC9C();
  v37 = *(v36 - 8);
  v35 = swift_task_alloc();
  v38 = *sub_2331DEBE8();
  v3 = swift_task_alloc();
  v4 = v38;
  sub_23328CBBC();
  sub_23328E24C();

  v39 = 0xD000000000000015;
  v40 = 0x80000002332ADD20;
  v5 = sub_23328CE1C();
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  sub_23328CE0C();
  v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v9 = sub_23328D95C();
  [v8 setDateFormat_];

  v10 = sub_23328CD9C();
  v11 = [v8 stringFromDate_];

  v12 = sub_23328D98C();
  v14 = v13;

  (*(v6 + 8))(v7, v5);
  MEMORY[0x23839B7E0](v12, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E20, qword_23329F460);
  inited = swift_initStackObject();
  v16 = *MEMORY[0x277CCA180];
  *(inited + 32) = *MEMORY[0x277CCA180];
  *(inited + 16) = xmmword_233297B30;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 511;
  v17 = v16;
  v18 = sub_2331E2E64(inited);
  swift_setDeallocating();
  sub_233121E04(inited + 32, &qword_27DDE2E28, &qword_23329B310);
  v39 = 0;
  v40 = 0;
  v41 = -1;
  _TTSVBFileManager.getOrCreateDirectory(in:named:attributes:problem:)(v3, 0xD000000000000015, 0x80000002332ADD20, v18, &v39, v35);
  v33 = *(v2 + 88);

  v34 = *(v37 + 8);
  v34(v3, v36);

  sub_23328D30C();
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_23328E24C();

  v39 = 0xD000000000000029;
  v40 = 0x80000002332ADD60;
  v19 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v19);

  sub_23328D27C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23329F260;
  strcpy((v20 + 32), "voicebanking");
  *(v20 + 45) = 0;
  *(v20 + 46) = -5120;
  *(v20 + 48) = 0x65736F6E67616964;
  *(v20 + 56) = 0xE800000000000000;
  *(v20 + 64) = 0xD00000000000001ALL;
  *(v20 + 72) = 0x80000002332ADD90;
  *(v20 + 80) = 0x6C72752D2DLL;
  *(v20 + 88) = 0xE500000000000000;
  *(v20 + 96) = sub_23328CC6C();
  *(v20 + 104) = v21;
  if (v33)
  {
    v22 = 0x6B636975712D2DLL;
  }

  else
  {
    v22 = 0x6975712D6F6E2D2DLL;
  }

  if (v33)
  {
    v23 = 0xE700000000000000;
  }

  else
  {
    v23 = 0xEA00000000006B63;
  }

  *(v20 + 112) = v22;
  *(v20 + 120) = v23;
  sub_233255260(0xD000000000000014, 0x80000002332ADDB0, v20);

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23329F260;
  strcpy((v24 + 32), "voicebanking");
  *(v24 + 45) = 0;
  *(v24 + 46) = -5120;
  *(v24 + 48) = 0x65736F6E67616964;
  *(v24 + 56) = 0xE800000000000000;
  *(v24 + 64) = 0xD000000000000016;
  *(v24 + 72) = 0x80000002332ADDD0;
  *(v24 + 80) = 0x6C72752D2DLL;
  *(v24 + 88) = 0xE500000000000000;
  *(v24 + 96) = sub_23328CC6C();
  *(v24 + 104) = v25;
  *(v24 + 112) = v22;
  *(v24 + 120) = v23;
  sub_233255260(0xD000000000000014, 0x80000002332ADDB0, v24);

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_233297630;
  *(v26 + 32) = 25389;
  *(v26 + 40) = 0xE200000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_23328E24C();

  v39 = 0xD000000000000012;
  v40 = 0x80000002332ADDF0;
  v27 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v27);

  MEMORY[0x23839B7E0](0x207A672E7261742ELL, 0xEB0000000020432DLL);
  v28 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v28);

  MEMORY[0x23839B7E0](11808, 0xE200000000000000);
  v29 = v40;
  *(v26 + 48) = v39;
  *(v26 + 56) = v29;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v26);

  sub_23328D30C();
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_23328E24C();

  v39 = 0xD000000000000015;
  v40 = 0x80000002332ADE10;
  v30 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v30);

  MEMORY[0x23839B7E0](0x7A672E7261742ELL, 0xE700000000000000);
  sub_23328D27C();

  v34(v35, v36);

  v31 = *(v2 + 8);

  return v31();
}

uint64_t sub_23324FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36D8, &qword_23329F478);
  v6[10] = swift_task_alloc();
  v7 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v10 = (*(*v5 + 216) + **(*v5 + 216));
  v8 = swift_task_alloc();
  v6[14] = v8;
  *v8 = v6;
  v8[1] = sub_23325001C;

  return v10();
}

uint64_t sub_23325001C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 128) = a1;

    return MEMORY[0x2822009F8](sub_233250180, 0, 0);
  }
}

uint64_t sub_233250180()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[4];
  *(swift_task_alloc() + 16) = v5;
  sub_233250B6C(sub_23325554C, v1, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_233121E04(v0[10], &qword_27DDE36D8, &qword_23329F478);
    sub_23328E24C();

    sub_23328CE8C();
    sub_233254F90(&qword_27DDE2830, MEMORY[0x28220C048], MEMORY[0x28220C0E0]);
    v6 = sub_23328E51C();
    MEMORY[0x23839B7E0](v6);

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[13];
    v11 = v0[7];
    v10 = v0[8];
    v13 = v0[5];
    v12 = v0[6];
    v31 = v12;
    v30 = v13;
    sub_233257410(v0[10], v9, type metadata accessor for TTSVBInstalledVoiceModel);
    sub_23328D30C();
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000013, 0x80000002332ADE60);
    MEMORY[0x23839B7E0](v13, v12);
    MEMORY[0x23839B7E0](0x4D6563696F562027, 0xEE005B3D6C65646FLL);
    swift_getKeyPath();
    TTSVBInstalledVoiceModel.subscript.getter();

    MEMORY[0x23839B7E0](v0[2], v0[3]);

    MEMORY[0x23839B7E0](2108704, 0xE300000000000000);
    swift_getKeyPath();
    v14 = sub_23328CE8C();
    v15 = *(v14 - 8);
    v16 = swift_task_alloc();
    TTSVBInstalledVoiceModel.subscript.getter();

    v17 = sub_23328CE3C();
    v19 = v18;
    (*(v15 + 8))(v16, v14);
    MEMORY[0x23839B7E0](v17, v19);

    MEMORY[0x23839B7E0](0x656C61636F6C205DLL, 0xE90000000000003DLL);
    MEMORY[0x23839B7E0](v11, v10);
    sub_23328D27C();

    sub_23328D30C();
    sub_23328E24C();

    v20 = sub_23328CC9C();
    v21 = *(v20 - 8);
    v22 = swift_task_alloc();
    TTSVBInstalledVoiceModel.assetDataURL.getter();
    v23 = sub_23328CC6C();
    v25 = v24;
    (*(v21 + 8))(v22, v20);
    MEMORY[0x23839B7E0](v23, v25);

    sub_23328D27C();

    swift_unownedRetainStrong();
    swift_unownedRetain();
    v26 = swift_unownedRetain();

    v27 = swift_task_alloc();
    v0[17] = v27;
    v27[2] = v26;
    v27[3] = v11;
    v27[4] = v10;
    v27[5] = v30;
    v27[6] = v31;
    v27[7] = v9;
    v28 = swift_task_alloc();
    v0[18] = v28;
    *v28 = v0;
    v28[1] = sub_2332507E0;
    v29 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v28, 0, 0, 0xD00000000000002ELL, 0x80000002332ADEA0, sub_23325557C, v27, v29);
  }
}

uint64_t sub_2332507E0()
{
  *(*v1 + 152) = v0;

  swift_unownedRelease();
  if (v0)
  {

    v2 = sub_2332509D4;
  }

  else
  {
    swift_unownedRelease();

    v2 = sub_233250944;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233250944()
{
  sub_2332574E0(*(v0 + 104), type metadata accessor for TTSVBInstalledVoiceModel);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2332509D4()
{
  v1 = *(v0 + 104);
  swift_unownedRelease();
  sub_2332574E0(v1, type metadata accessor for TTSVBInstalledVoiceModel);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_233250A6C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v2 = sub_23328CE8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBInstalledVoiceModel.subscript.getter();

  v6 = sub_23328CE5C();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_233250B6C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_233257478(v12, v10, type metadata accessor for TTSVBInstalledVoiceModel);
      v14 = a1(v10);
      if (v3)
      {
        return sub_2332574E0(v10, type metadata accessor for TTSVBInstalledVoiceModel);
      }

      if (v14)
      {
        break;
      }

      sub_2332574E0(v10, type metadata accessor for TTSVBInstalledVoiceModel);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_233257410(v10, v18, type metadata accessor for TTSVBInstalledVoiceModel);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_233250D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  v22 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  swift_unownedRetainStrong();
  v15 = sub_233237B04();

  v23 = 0x3D676E616C5C1BLL;
  v24 = 0xE700000000000000;
  MEMORY[0x23839B7E0](a3, a4);
  MEMORY[0x23839B7E0](92, 0xE100000000000000);

  MEMORY[0x23839B7E0](a5, a6);

  v16 = v23;
  v17 = v24;
  (*(v12 + 16))(v14, v21, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v18, v14, v11);
  sub_233250F2C(v16, v17, v22, sub_233257240, v19);
}

void sub_233250F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_23328CC9C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBInstalledVoiceModel.assetDataURL.getter();
  sub_23328CC6C();
  (*(v10 + 8))(v12, v9);
  v13 = objc_allocWithZone(MEMORY[0x277D603F0]);
  v14 = sub_23328D95C();

  v15 = [v13 initWithPath_];

  v16 = [objc_allocWithZone(MEMORY[0x277D60400]) initWithVoiceAsset:v15 resourceAsset:0];
  v17 = *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriVoice);
  *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriVoice) = v16;
  v18 = v16;

  if (v18)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D60408]) initWithVoice_];

    v20 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriSynth;
    v21 = *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriSynth);
    *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriSynth) = v19;

    v22 = [objc_allocWithZone(MEMORY[0x277D603F8]) init];
    v23 = sub_23328D95C();
    [v22 setText_];

    [v22 setSolutionType_];
    [v22 setType_];
    [v22 setUseCache_];
    v24 = *(v6 + v20);
    if (v24)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = a5;
      aBlock[4] = sub_23325558C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2331889C4;
      aBlock[3] = &block_descriptor_8;
      v26 = _Block_copy(aBlock);
      v27 = v24;

      v28 = [v27 startTaskWithRequest:v22 completion:v26];

      _Block_release(v26);
      v22 = v28;
      v15 = v27;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_233251254(void *a1)
{
  sub_23328D30C();
  sub_23328E24C();

  v2 = 0xD000000000000011;
  if (a1)
  {
    v2 = sub_23328D98C();
    v4 = v3;
  }

  else
  {
    v4 = 0x80000002332ADEF0;
  }

  MEMORY[0x23839B7E0](v2, v4);

  sub_23328D27C();

  v5 = *sub_233165CA0();
  v6 = a1;
  v7 = v5;
  NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.setter(a1);
}

void sub_233251360(uint64_t a1)
{
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000035, 0x80000002332ADF10);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  sub_23328D27C();

  v3 = *sub_233165CA0();
  NSUserDefaults.ttsvb_internalPhraseCountOverride.setter(a1, 0);
}

uint64_t sub_23325144C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 288) = a8;
  *(v9 + 296) = v8;
  *(v9 + 59) = v11;
  *(v9 + 272) = a6;
  *(v9 + 280) = a7;
  *(v9 + 256) = a4;
  *(v9 + 264) = a5;
  *(v9 + 240) = a2;
  *(v9 + 248) = a3;
  *(v9 + 232) = a1;
  return MEMORY[0x2822009F8](sub_233251488, 0, 0);
}

uint64_t sub_233251488()
{
  v2 = v0[35];
  if (v2)
  {
    v134 = 0;
    v3 = v0 + 34;
    v133 = 2;
    v4 = v2;
  }

  else
  {
    v4 = v0[31];
    v3 = v0 + 30;
    swift_bridgeObjectRetain_n();
    v133 = 1;
    v134 = 1284;
  }

  v140 = *v3;
  swift_bridgeObjectRetain_n();
  v5 = [objc_opt_self() _speechVoicesIncludingSiriAndSuperCompact];
  sub_233144EEC(0, &qword_27DDE3728, 0x277CB84A8);
  v6 = sub_23328DBFC();

  v138 = v4;
  v139 = v6;
  v7 = v6 >> 62;
  if (v2)
  {
    if (v7)
    {
      goto LABEL_207;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
    {
      v9 = 0;
      while (1)
      {
        if ((v139 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x23839BFC0](v9, v139);
        }

        else
        {
          if (v9 >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_198;
          }

          v10 = *(v139 + 8 * v9 + 32);
        }

        v1 = v10;
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v12 = [v10 identifier];
        v13 = sub_23328D98C();
        v15 = v14;

        *(v137 + 112) = v13;
        *(v137 + 120) = v15;
        *(v137 + 128) = v140;
        *(v137 + 136) = v138;
        sub_23311A294();
        LOBYTE(v12) = sub_23328E0AC();

        if (v12)
        {

          goto LABEL_73;
        }

        ++v9;
        if (v11 == i)
        {
          goto LABEL_208;
        }
      }

      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      ;
    }

LABEL_208:

    sub_23328E24C();

    v4 = v138;
    MEMORY[0x23839B7E0](v140, v138);
    goto LABEL_232;
  }

  LOBYTE(v16) = v134;
  v17 = BYTE1(v134) != 5 || v134 == 0;
  if (v17)
  {
    v18 = v134 >> 8;
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  v136 = v18;
  v142 = MEMORY[0x277D84F90];
  if (v7)
  {
    goto LABEL_211;
  }

  for (j = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23328E19C())
  {
    v20 = MEMORY[0x277D84F90];
    v135 = j;
    if (!j)
    {
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_212;
      }

LABEL_77:
      if ((v20 & 0x4000000000000000) != 0)
      {
        goto LABEL_212;
      }

      if (*(v20 + 16))
      {
        goto LABEL_117;
      }

LABEL_79:

      v20 = MEMORY[0x277D84F90];
      v143 = MEMORY[0x277D84F90];
      if (!j)
      {
        goto LABEL_117;
      }

      v46 = 0;
      v47 = v139 & 0xC000000000000001;
      v48 = v139 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v47)
        {
          v49 = MEMORY[0x23839BFC0](v46, v139);
        }

        else
        {
          if (v46 >= *(v48 + 16))
          {
            goto LABEL_204;
          }

          v49 = *(v139 + 8 * v46 + 32);
        }

        v1 = v49;
        v50 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_203;
        }

        v51 = [v49 language];
        sub_23328D98C();

        LOBYTE(v51) = sub_23328DABC();

        if ((v51 & 1) == 0)
        {
          goto LABEL_81;
        }

        if (v136 != 5)
        {
          v52 = v47;
          v53 = [v1 identifier];
          sub_23328D98C();

          sub_23328D98C();
          v54 = sub_23328DABC();

          if (v54)
          {

            v55 = 0xE400000000000000;
            v56 = 1769300333;
          }

          else if (sub_23328DABC())
          {

            v55 = 0xE400000000000000;
            v56 = 1634627435;
          }

          else
          {
            sub_23328D98C();
            v57 = sub_23328DABC();

            if (v57)
            {

              v56 = 0x6C61746E6963616DLL;
              v55 = 0xE90000000000006BLL;
            }

            else
            {
              sub_23328D98C();
              v58 = sub_23328DABC();

              if (v58)
              {
                v56 = 0x6E6F6870797267;
              }

              else
              {
                v56 = 0x726568746FLL;
              }

              if (v58)
              {
                v55 = 0xE700000000000000;
              }

              else
              {
                v55 = 0xE500000000000000;
              }
            }
          }

          v47 = v52;
          if (v136)
          {
            v48 = v139 & 0xFFFFFFFFFFFFFF8;
            if (v136 == 1)
            {
              v59 = 0xE400000000000000;
              if (v56 != 1634627435)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v59 = 0xE500000000000000;
              if (v56 != 0x726568746FLL)
              {
                goto LABEL_110;
              }
            }
          }

          else
          {
            v59 = 0xE400000000000000;
            v48 = v139 & 0xFFFFFFFFFFFFFF8;
            if (v56 != 1769300333)
            {
              goto LABEL_110;
            }
          }

          if (v55 != v59)
          {
LABEL_110:
            v60 = sub_23328E54C();

            if ((v60 & 1) == 0)
            {
              goto LABEL_81;
            }

            goto LABEL_111;
          }
        }

LABEL_111:
        if (v16 || !sub_233254680())
        {
          sub_23328E2BC();
          sub_23328E2EC();
          sub_23328E2FC();
          sub_23328E2CC();
          goto LABEL_82;
        }

LABEL_81:

LABEL_82:
        ++v46;
        if (v50 == v135)
        {
          v20 = v143;
          goto LABEL_117;
        }
      }
    }

    v21 = 0;
    do
    {
      if ((v139 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x23839BFC0](v21, v139);
      }

      else
      {
        if (v21 >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_200;
        }

        v22 = *(v139 + 8 * v21 + 32);
      }

      v1 = v22;
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_199;
      }

      v24 = [v22 language];
      v25 = sub_23328D98C();
      v27 = v26;

      if (v25 == v140 && v4 == v27)
      {
        goto LABEL_43;
      }

      v29 = sub_23328E54C();

      if (v29)
      {
        goto LABEL_44;
      }

      if ((sub_23328DABC() & 1) == 0)
      {
        goto LABEL_70;
      }

      *(v137 + 64) = v140;
      *(v137 + 72) = v4;
      *(v137 + 80) = 7236963;
      *(v137 + 88) = 0xE300000000000000;
      *(v137 + 96) = 26746;
      *(v137 + 104) = 0xE200000000000000;
      v132 = sub_23311A294();
      v131 = MEMORY[0x277D837D0];
      v30 = sub_23328E06C();
      v32 = v31;
      v33 = [v1 language];
      v34 = sub_23328D98C();
      v36 = v35;

      if (v34 == v30 && v36 == v32)
      {

        j = v135;
LABEL_43:

        goto LABEL_44;
      }

      v42 = sub_23328E54C();

      j = v135;
      if ((v42 & 1) == 0)
      {
        goto LABEL_70;
      }

LABEL_44:
      if (v136 != 5)
      {
        v37 = [v1 identifier];
        sub_23328D98C();

        sub_23328D98C();
        v38 = sub_23328DABC();

        if (v38)
        {

          v39 = 0xE400000000000000;
          v40 = 1769300333;
        }

        else if (sub_23328DABC())
        {

          v39 = 0xE400000000000000;
          v40 = 1634627435;
        }

        else
        {
          sub_23328D98C();
          v41 = sub_23328DABC();

          if (v41)
          {

            v40 = 0x6C61746E6963616DLL;
            v39 = 0xE90000000000006BLL;
          }

          else
          {
            sub_23328D98C();
            v43 = sub_23328DABC();

            if (v43)
            {
              v40 = 0x6E6F6870797267;
            }

            else
            {
              v40 = 0x726568746FLL;
            }

            if (v43)
            {
              v39 = 0xE700000000000000;
            }

            else
            {
              v39 = 0xE500000000000000;
            }
          }
        }

        j = v135;
        if (v136)
        {
          if (v136 == 1)
          {
            v44 = 0xE400000000000000;
            if (v40 != 1634627435)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v44 = 0xE500000000000000;
            if (v40 != 0x726568746FLL)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          v44 = 0xE400000000000000;
          if (v40 != 1769300333)
          {
            goto LABEL_69;
          }
        }

        if (v39 != v44)
        {
LABEL_69:
          v45 = sub_23328E54C();

          if ((v45 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_27;
        }
      }

LABEL_27:
      if (v16 || !sub_233254680())
      {
        sub_23328E2BC();
        sub_23328E2EC();
        sub_23328E2FC();
        sub_23328E2CC();
        goto LABEL_29;
      }

LABEL_70:

LABEL_29:
      ++v21;
    }

    while (v23 != j);
    v20 = v142;
    if ((v142 & 0x8000000000000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_212:
    if (!sub_23328E19C())
    {
      goto LABEL_79;
    }

LABEL_117:

    if (v20 >> 62)
    {
      v61 = sub_23328E19C();
      if (v61)
      {
        goto LABEL_119;
      }

LABEL_215:

      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332AE2B0);
      MEMORY[0x23839B7E0](v140, v4);
      MEMORY[0x23839B7E0](0x7974696C61757120, 0xE90000000000003ALL);
      if (v16)
      {
        v107 = 0x6669636570736E55;
      }

      else
      {
        v107 = 0x6D6F437265707553;
      }

      if (v16)
      {
        v108 = 0xEB00000000646569;
      }

      else
      {
        v108 = 0xEC00000074636170;
      }

      MEMORY[0x23839B7E0](v107, v108);

      MEMORY[0x23839B7E0](0x3A6570797420, 0xE600000000000000);
      v109 = 0xE500000000000000;
      v110 = 0x726568746FLL;
      if (v136 != 4)
      {
        v110 = 0x6669636570736E55;
        v109 = 0xEB00000000646569;
      }

      v111 = 1634627435;
      if (!v136)
      {
        v111 = 1769300333;
      }

      if (v136 <= 3u)
      {
        v112 = v111;
      }

      else
      {
        v112 = v110;
      }

      if (v136 <= 3u)
      {
        v113 = 0xE400000000000000;
      }

      else
      {
        v113 = v109;
      }

      MEMORY[0x23839B7E0](v112, v113);

LABEL_232:
      sub_23328D1BC();
      sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
      v114 = swift_allocError();
      sub_23328D1CC();
      swift_willThrow();
      v16 = v137;
      if (!v114)
      {
        goto LABEL_244;
      }

      sub_2332555CC(v140, v4, v134, v133);
      sub_23328E24C();
      *(v137 + 144) = 0;
      *(v137 + 152) = 0xE000000000000000;
      MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332ADF50);
      *(v137 + 40) = v140;
      *(v137 + 48) = v4;
      *(v137 + 56) = v134;
      *(v137 + 58) = v133;
      sub_23328E30C();
      sub_2332555CC(v140, v4, v134, v133);
      MEMORY[0x23839B7E0](0x3D726F727245202ELL, 0xE800000000000000);
      *(v137 + 224) = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
      sub_23328E30C();
      sub_23328D1BC();
      sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
      swift_allocError();
      sub_23328D1CC();
      swift_willThrow();

      v115 = *(v137 + 8);

      return v115();
    }

    v61 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v61)
    {
      goto LABEL_215;
    }

LABEL_119:
    if (!v16 || v136 != 5)
    {
      if (v20 >> 62)
      {
        if (sub_23328E19C() > 1)
        {
          goto LABEL_146;
        }

LABEL_133:
        v66 = v20 & 0xC000000000000001;
      }

      else
      {
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
        {
          goto LABEL_133;
        }

LABEL_146:
        sub_23328E24C();
        MEMORY[0x23839B7E0](0xD000000000000024, 0x80000002332AE280);
        MEMORY[0x23839B7E0](v140, v4);
        MEMORY[0x23839B7E0](0x7974696C61757120, 0xE90000000000003DLL);
        if (v16)
        {
          v69 = 0x6669636570736E55;
        }

        else
        {
          v69 = 0x6D6F437265707553;
        }

        if (v16)
        {
          v70 = 0xEB00000000646569;
        }

        else
        {
          v70 = 0xEC00000074636170;
        }

        MEMORY[0x23839B7E0](v69, v70);

        MEMORY[0x23839B7E0](0x3D6570797420, 0xE600000000000000);
        v71 = 0xE500000000000000;
        v72 = 0x726568746FLL;
        if (v136 != 4)
        {
          v72 = 0x6669636570736E55;
          v71 = 0xEB00000000646569;
        }

        v73 = 1634627435;
        if (!v136)
        {
          v73 = 1769300333;
        }

        if (v136 <= 3u)
        {
          v74 = v73;
        }

        else
        {
          v74 = v72;
        }

        if (v136 <= 3u)
        {
          v75 = 0xE400000000000000;
        }

        else
        {
          v75 = v71;
        }

        MEMORY[0x23839B7E0](v74, v75);

        MEMORY[0x23839B7E0](10, 0xE100000000000000);
        v1 = 0;
        v76 = v20 & 0xC000000000000001;
        do
        {
          if (v76)
          {
            v77 = MEMORY[0x23839BFC0](v1, v20);
          }

          else
          {
            if (v1 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_206;
            }

            v77 = *(v20 + 8 * v1 + 32);
          }

          v78 = v77;
          v79 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_205;
          }

          *(v137 + 216) = v79;
          v80 = sub_23328E51C();
          MEMORY[0x23839B7E0](v80);

          MEMORY[0x23839B7E0](2107694, 0xE300000000000000);
          v81 = [v78 description];
          v82 = sub_23328D98C();
          v84 = v83;

          MEMORY[0x23839B7E0](v82, v84);

          MEMORY[0x23839B7E0](10, 0xE100000000000000);
          MEMORY[0x23839B7E0](8224, 0xE200000000000000);

          ++v1;
          v17 = v79 == v61;
          v4 = v138;
        }

        while (!v17);
        if (v76)
        {
          v85 = MEMORY[0x23839BFC0](0, v20);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_249:
            v1 = MEMORY[0x23839BFC0](0, v20);

            goto LABEL_144;
          }

          v85 = *(v20 + 32);
        }

        v86 = v85;
        v87 = [v85 description];
        v88 = sub_23328D98C();
        v90 = v89;

        MEMORY[0x23839B7E0](v88, v90);

        MEMORY[0x23839B7E0](0xD000000000000027, 0x80000002332AE1F0);

        sub_23328D30C();
        v61 = 0xE000000000000000;
        sub_23328D28C();

        v66 = v20 & 0xC000000000000001;
      }

      v16 = v137;
      if (v66)
      {
        v116 = MEMORY[0x23839BFC0](0, v20);
        goto LABEL_242;
      }

      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_241;
      }

      __break(1u);
      goto LABEL_178;
    }

    v1 = 0;
    v144 = MEMORY[0x277D84F90];
    v62 = v20 & 0xC000000000000001;
    do
    {
      if (v62)
      {
        v63 = MEMORY[0x23839BFC0](v1, v20);
      }

      else
      {
        if (v1 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_202;
        }

        v63 = *(v20 + 8 * v1 + 32);
      }

      v64 = v63;
      v65 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_201;
      }

      if ([v63 isDefault])
      {
        sub_23328E2BC();
        sub_23328E2EC();
        sub_23328E2FC();
        sub_23328E2CC();
      }

      else
      {
      }

      ++v1;
      v4 = v138;
    }

    while (v65 != v61);
    v61 = v144;
    LODWORD(v16) = v144 < 0 || (v144 & 0x4000000000000000) != 0;
    if (v16 != 1)
    {
      break;
    }

    v67 = sub_23328E19C();
    if (!v67)
    {
      goto LABEL_239;
    }

LABEL_139:

    if (v67 == 1)
    {
      if ((v144 & 0xC000000000000001) == 0)
      {
        if (*(v144 + 16))
        {
          v68 = *(v144 + 32);
          goto LABEL_143;
        }

        __break(1u);
LABEL_253:
        v100 = MEMORY[0x23839BFC0](0, v61);
        goto LABEL_193;
      }

LABEL_251:
      v68 = MEMORY[0x23839BFC0](0, v61);
LABEL_143:
      v1 = v68;

LABEL_144:
      v16 = v137;
      goto LABEL_243;
    }

LABEL_178:
    v142 = 0xD00000000000002BLL;
    v145 = 0x80000002332AE1C0;
    MEMORY[0x23839B7E0](v140, v4);
    result = MEMORY[0x23839B7E0](10, 0xE100000000000000);
    if (v16)
    {
      result = sub_23328E19C();
      v92 = result;
    }

    else
    {
      v92 = *(v61 + 16);
    }

    v4 = v61 & 0xC000000000000001;
    if (!v92)
    {
LABEL_190:
      v144 = 0xD000000000000027;
      v145 = 0x80000002332AE1F0;
      if (v4)
      {
        goto LABEL_253;
      }

      if (!*(v61 + 16))
      {
        __break(1u);
        return result;
      }

      v100 = *(v61 + 32);
LABEL_193:
      v101 = v100;
      v102 = [v100 description];
      v103 = sub_23328D98C();
      v105 = v104;

      MEMORY[0x23839B7E0](v103, v105);

      MEMORY[0x23839B7E0](v144, v145);

      sub_23328D30C();
      sub_23328D28C();

      if (v4)
      {
        v106 = MEMORY[0x23839BFC0](0, v61);
      }

      else
      {
        v106 = *(v61 + 32);
      }

      v1 = v106;

LABEL_73:
      v16 = v137;
      v4 = v138;
      goto LABEL_243;
    }

    v1 = 0;
    while (1)
    {
      if (v4)
      {
        v93 = MEMORY[0x23839BFC0](v1, v61);
      }

      else
      {
        if (v1 >= *(v61 + 16))
        {
          goto LABEL_210;
        }

        v93 = *(v61 + 8 * v1 + 32);
      }

      v94 = v93;
      v16 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v142 = 8224;
      v145 = 0xE200000000000000;
      *(v137 + 208) = v16;
      v95 = sub_23328E51C();
      MEMORY[0x23839B7E0](v95);

      MEMORY[0x23839B7E0](2107694, 0xE300000000000000);
      v96 = [v94 description];
      v97 = sub_23328D98C();
      v99 = v98;

      MEMORY[0x23839B7E0](v97, v99);

      MEMORY[0x23839B7E0](10, 0xE100000000000000);
      MEMORY[0x23839B7E0](8224, 0xE200000000000000);

      ++v1;
      if (v16 == v92)
      {
        goto LABEL_190;
      }
    }

    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    ;
  }

  v67 = *(v144 + 16);
  if (v67)
  {
    goto LABEL_139;
  }

LABEL_239:

  v61 = sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000026, 0x80000002332AE220);
  MEMORY[0x23839B7E0](v140, v138);
  MEMORY[0x23839B7E0](0xD000000000000028, 0x80000002332AE250);
  sub_23328D28C();

  if (v62)
  {
    goto LABEL_249;
  }

  v16 = v137;
  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_251;
  }

LABEL_241:
  v116 = *(v20 + 32);
LABEL_242:
  v1 = v116;

LABEL_243:
  v16[38] = v1;
LABEL_244:
  v117 = v16[37];
  sub_2332555CC(v140, v4, v134, v133);
  sub_2332555CC(v140, v4, v134, v133);
  v118 = v1;
  sub_23328D30C();
  sub_23328E24C();

  v119 = [v118 identifier];

  v120 = sub_23328D98C();
  v122 = v121;

  MEMORY[0x23839B7E0](v120, v122);

  sub_23328D27C();

  sub_23328D30C();
  sub_23328D27C();

  v123 = sub_23328CC9C();
  v16[39] = v123;
  v124 = *(v123 - 8);
  v16[40] = v124;
  v16[41] = *(v124 + 64);
  v125 = swift_task_alloc();
  v16[42] = v125;
  v141 = (*(*v117 + 384) + **(*v117 + 384));
  v126 = swift_task_alloc();
  v16[43] = v126;
  *v126 = v16;
  v126[1] = sub_233252E3C;
  v127 = v16[32];
  v128 = v16[33];
  v129 = v16[30];
  v130 = v16[31];

  return v141(v125, v129, v130, v127, v128);
}

uint64_t sub_233252E3C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_23325371C;
  }

  else
  {
    v2 = sub_233252F50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233252F50()
{
  v56 = v0;
  v1 = *(v0 + 352);
  sub_23328D9DC();
  swift_task_alloc();
  sub_23328D9CC();
  v2 = sub_23328D91C();
  if (v1)
  {
    v4 = *(v0 + 304);
    (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));

LABEL_5:

    v38 = *(v0 + 8);
    goto LABEL_6;
  }

  v5 = v3;
  v50 = v2;

  v6 = swift_task_alloc();
  v52 = *sub_2331DEBE8();
  v7 = swift_task_alloc();
  v8 = v52;
  sub_23328CBBC();
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_23328E24C();
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  MEMORY[0x23839B7E0](0xD000000000000012, 0x80000002332ADFC0);
  sub_23328CD0C();
  sub_23328DCDC();
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v53 = 0;
  v54 = 0;
  v55 = -1;
  _TTSVBFileManager.getOrCreateDirectory(in:named:attributes:problem:)(v7, v9, v10, 0, &v53, v6);
  v11 = *(v0 + 312);
  v12 = *(v0 + 320);
  v49 = v5;

  v48 = *(v12 + 8);
  v48(v7, v11);

  sub_23328D30C();
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_23328E24C();

  v53 = 0xD00000000000001ALL;
  v54 = 0x80000002332ADFE0;
  v13 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v13);

  sub_23328D27C();

  v14 = swift_task_alloc();
  *(v0 + 176) = 0xD000000000000012;
  *(v0 + 184) = 0x80000002332A8B70;
  v15 = sub_23328CB3C();
  v16 = *(v15 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 104))(v17, *MEMORY[0x277CC91E0], v15);
  sub_23311A294();
  sub_23328CC8C();
  (*(v16 + 8))(v17, v15);

  v18 = [objc_opt_self() defaultManager];
  sub_23328CC6C();
  v19 = sub_23328D95C();

  [v18 createFileAtPath:v19 contents:0 attributes:0];

  sub_233144EEC(0, &qword_27DDE29D8, 0x277CCA9F8);
  v20 = swift_task_alloc();
  v21 = *(v12 + 16);
  v21(v20, v14, v11);
  v22 = sub_23318BF18(v20);
  v24 = *(v0 + 320);
  v23 = *(v0 + 328);
  v25 = *(v0 + 312);
  v46 = *(v0 + 304);
  v47 = v14;
  v44 = *(v0 + 59);
  v42 = *(v0 + 288);
  v45 = v22;

  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v0 + 192) = v50;
  *(v0 + 200) = v49;
  v51 = swift_task_alloc();
  v21(v51, v6, v25);
  v27 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v28 = (v23 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v42;
  *(v30 + 24) = v44 & 1;
  *(v30 + 32) = v41;
  v43 = *(v24 + 32);
  v43(v30 + v27, v51, v25);
  *(v30 + v28) = v46;
  *(v30 + v29) = v45;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v31 = v46;

  v32 = v45;

  sub_23328E03C();

  [v32 closeFile];
  swift_beginAccess();
  v33 = *(v26 + 16);
  v34 = *(v0 + 336);
  v36 = *(v0 + 304);
  v35 = *(v0 + 312);
  if (v33)
  {
    swift_willThrow();
    v37 = v33;

    v48(v47, v35);
    v48(v6, v35);
    v48(v34, v35);

    goto LABEL_5;
  }

  v40 = *(v0 + 232);

  v48(v47, v35);
  v48(v34, v35);
  v43(v40, v6, v35);

  v38 = *(v0 + 8);
LABEL_6:

  return v38();
}

uint64_t sub_23325371C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23325378C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v82 = a7;
  v87 = *MEMORY[0x277D85DE8];
  v14 = sub_23328D19C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a5 & 1) == 0)
  {
    swift_beginAccess();
    if (*(a6 + 16) >= a4)
    {
      *a3 = 1;
      return;
    }
  }

  v79 = a8;
  v80 = v15;
  v81 = a6;
  v78 = a3;
  v18 = sub_23328D9DC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_23328D9CC();
  v21 = sub_23328D99C();
  v23 = v22;
  v24 = *(v19 + 8);
  v24(&v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  if (v23 >> 60 != 15)
  {
    v77 = v24;
    v25 = objc_opt_self();
    v26 = sub_23328CCBC();
    v85 = 0;
    v27 = [v25 JSONObjectWithData:v26 options:0 error:&v85];

    v28 = v21;
    if (!v27)
    {
      v55 = v85;
      v56 = sub_23328CA7C();

      swift_willThrow();
      sub_23312185C(v28, v23);

      return;
    }

    v29 = v85;
    sub_23328E0DC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_23312185C(v21, v23);
      return;
    }

    v30 = v83;
    if (v83[2] && (v31 = sub_233144260(0x636E617265747475, 0xEE00656D616E5F65), (v32 & 1) != 0) && (sub_23311B0C0(v30[7] + 32 * v31, &v85), (swift_dynamicCast() & 1) != 0))
    {
      if (v30[2])
      {
        v75 = v83;
        v76 = v84;
        v33 = sub_233144260(0x7364726F77, 0xE500000000000000);
        v34 = v76;
        if (v35)
        {
          sub_23311B0C0(v30[7] + 32 * v33, &v85);
          if (swift_dynamicCast())
          {
            v71 = a9;
            v73 = v83;
            v74 = v84;
            v72 = sub_23328D30C();
            v85 = 0;
            v86 = 0xE000000000000000;
            sub_23328E24C();

            v85 = 0xD000000000000016;
            v86 = 0x80000002332AE120;
            MEMORY[0x23839B7E0](v75, v34);
            MEMORY[0x23839B7E0](0x786574206661632ELL, 0xEA00000000003D74);
            MEMORY[0x23839B7E0](v73, v74);
            sub_23328D27C();

            v68 = sub_23328CC9C();
            v69 = &v64;
            v67 = *(v68 - 8);
            MEMORY[0x28223BE20](v68);
            v72 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
            v85 = v75;
            v86 = v76;

            MEMORY[0x23839B7E0](1717658414, 0xE400000000000000);
            v70 = v86;
            v37 = sub_23328CB3C();
            v66 = &v64;
            v65 = v37;
            v38 = *(v37 - 8);
            v75 = v28;
            v39 = v38;
            v40 = MEMORY[0x28223BE20](v37);
            v42 = &v64 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v39 + 104))(v42, *MEMORY[0x277CC91E0], v40);
            sub_23311A294();
            sub_23328CC8C();
            (*(v39 + 8))(v42, v65);

            v43 = v72;
            v70 = sub_23328CC6C();
            v82 = v44;
            (*(v67 + 8))(v43, v68);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_233297630;
            *(v45 + 32) = 25389;
            *(v45 + 40) = 0xE200000000000000;
            v85 = 0;
            v86 = 0xE000000000000000;
            sub_23328E24C();
            MEMORY[0x23839B7E0](0xD00000000000002CLL, 0x80000002332AE140);
            MEMORY[0x23839B7E0](v73, v74);
            MEMORY[0x23839B7E0](0x6E6564692D2D2022, 0xEF20726569666974);
            v46 = [v79 identifier];
            v79 = sub_23328D98C();
            v48 = v47;

            MEMORY[0x23839B7E0](v79, v48);

            MEMORY[0x23839B7E0](0x757074756F2D2D20, 0xEA00000000002074);
            MEMORY[0x23839B7E0](v70, v82);
            v49 = v86;
            *(v45 + 48) = v85;
            *(v45 + 56) = v49;
            v50 = objc_allocWithZone(sub_23328D1AC());
            v51 = sub_23328D14C();
            sub_23328D16C();

            v52 = v17;
            v53 = v75;
            (*(v80 + 8))(v52, v14);
            v85 = v53;
            v86 = v23;
            sub_2332571F8();
            v54 = sub_23328DDEC();
            MEMORY[0x28223BE20](v54);
            sub_23328D9CC();
            v57 = sub_23328D99C();
            v59 = v58;
            v77(&v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
            if (v59 >> 60 == 15)
            {
              __break(1u);
            }

            else
            {

              v85 = v57;
              v86 = v59;
              sub_23328DDEC();
              sub_233121870(v85, v86);
              sub_23312185C(v75, v23);
              v60 = v81;
              swift_beginAccess();
              v61 = *(v60 + 16);
              v62 = __OFADD__(v61, 1);
              v63 = v61 + 1;
              if (v62)
              {
                __break(1u);
              }

              *(v60 + 16) = v63;
            }

            return;
          }
        }
      }

      sub_23312185C(v28, v23);
    }

    else
    {
      sub_23312185C(v28, v23);
    }
  }
}

uint64_t sub_2332541C4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_233254298;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_233254298()
{

  return MEMORY[0x2822009F8](sub_233254394, 0, 0);
}

uint64_t sub_2332543A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3718, &qword_23329F850);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_233237A9C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  TTSVBService.sendMockUserNotification(completion:)();
}

uint64_t VoiceBankingCommand.Helper.deinit()
{

  return v0;
}

uint64_t VoiceBankingCommand.Helper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_2332545FC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_233254680()
{
  v1 = v0;
  v2 = [v0 identifier];
  sub_23328D98C();

  sub_23328D98C();
  v3 = sub_23328DABC();

  if (v3)
  {

    goto LABEL_9;
  }

  if ((sub_23328DABC() & 1) == 0)
  {
    sub_23328D98C();
    v4 = sub_23328DABC();

    if ((v4 & 1) == 0)
    {
      sub_23328D98C();
      sub_23328DABC();
    }
  }

  v5 = sub_23328E54C();

  if (v5)
  {
LABEL_9:
    v6 = [v0 identifier];
    sub_23328D98C();

    sub_23328D98C();
    MEMORY[0x23839B7E0](46, 0xE100000000000000);
    MEMORY[0x23839B7E0](0x6D75696D657270, 0xE700000000000000);
    v7 = sub_23328DABC();

    if (v7)
    {

      return 3;
    }

    sub_23328D98C();
    MEMORY[0x23839B7E0](46, 0xE100000000000000);
    MEMORY[0x23839B7E0](0x6465636E61686E65, 0xE800000000000000);
    v9 = sub_23328DABC();

    if (v9)
    {

      return 2;
    }

    sub_23328D98C();
    MEMORY[0x23839B7E0](46, 0xE100000000000000);
    MEMORY[0x23839B7E0](0x746361706D6F63, 0xE700000000000000);
    v10 = sub_23328DABC();

    if (v10)
    {

      return 1;
    }

    sub_23328D98C();
    MEMORY[0x23839B7E0](46, 0xE100000000000000);
    MEMORY[0x23839B7E0](0x6F632D7265707573, 0xED0000746361706DLL);
    v11 = sub_23328DABC();

    if (v11)
    {
      return 0;
    }

    goto LABEL_20;
  }

  result = [v0 quality];
  if (result != 1)
  {
    result = [v0 quality];
    if (result != 2)
    {
LABEL_20:
      sub_23328E24C();

      v12 = [v1 identifier];
      v13 = sub_23328D98C();
      v15 = v14;

      MEMORY[0x23839B7E0](v13, v15);

      sub_23328D1BC();
      sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
      swift_allocError();
      sub_23328D1CC();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_233254B6C()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_233254C40(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_233254D00(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

unint64_t sub_233254DD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_233257C1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_233254E00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1769300333;
  v5 = 0xE90000000000006BLL;
  v6 = 0x6C61746E6963616DLL;
  v7 = 0xE700000000000000;
  v8 = 0x6E6F6870797267;
  if (v2 != 3)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1634627435;
    v3 = 0xE400000000000000;
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

unint64_t sub_233254E90@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_233257C68(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_233254F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_233254FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_233255050(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23328DA6C();

    return sub_23328DB0C();
  }

  return result;
}

uint64_t sub_2332550EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36B8, &qword_23329F3A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s6HelperC9StoreInfoVMa(uint64_t a1)
{
  result = qword_27DDFF040;
  if (!qword_27DDFF040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233255260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D19C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D30C();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_23328E24C();

  v18 = 0x6E69747563657845;
  v19 = 0xEB00000000203A67;
  MEMORY[0x23839B7E0](a1, a2);
  MEMORY[0x23839B7E0](32, 0xE100000000000000);
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  v10 = sub_23328D8FC();
  MEMORY[0x23839B7E0](v10);

  sub_23328D27C();

  v11 = objc_allocWithZone(sub_23328D1AC());

  v12 = sub_23328D14C();
  sub_23328D16C();

  if (sub_23328D17C())
  {
    sub_23328D30C();
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_23328E24C();

    v18 = 0xD000000000000028;
    v19 = 0x80000002332AE380;
    v17 = sub_23328D17C();
    v13 = sub_23328E51C();
    MEMORY[0x23839B7E0](v13);

    MEMORY[0x23839B7E0](8238, 0xE200000000000000);
    v14 = sub_23328D18C();
    MEMORY[0x23839B7E0](v14);

    sub_23328D25C();
  }

  return (*(v7 + 8))(v9, v6);
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2332555CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

void sub_2332555E4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = *(sub_23328CC9C() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_23325378C(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_2332556C8()
{
  result = qword_27DDE36F0;
  if (!qword_27DDE36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE36F0);
  }

  return result;
}

unint64_t sub_23325571C()
{
  result = qword_27DDE36F8;
  if (!qword_27DDE36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE36F8);
  }

  return result;
}

unint64_t sub_233255774()
{
  result = qword_27DDE3700;
  if (!qword_27DDE3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3700);
  }

  return result;
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchVoices()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23322400C;

  return v4();
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchVoices(matching:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23322400C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchModels()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23322400C;

  return v4();
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchModels(matching:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 208) + **(*v2 + 208));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_233223D00;

  return v8(a1, a2);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchInstalledModels()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23322400C;

  return v4();
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchTrainingMetadata(voiceID:)(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23322400C;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.createVoice(named:localeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 256) + **(*v5 + 256));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_233127268;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.importModel(addingToVoice:overrideLocaleID:modelPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 280) + **(*v4 + 280));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_233127268;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.importTrainingData(creatingVoiceNamed:localeID:dataDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 288) + **(*v6 + 288));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_233127268;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.deleteVoice(voiceID:)(uint64_t a1)
{
  v6 = (*(*v1 + 328) + **(*v1 + 328));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_233127268;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.deleteModel(modelID:)(uint64_t a1)
{
  v6 = (*(*v1 + 336) + **(*v1 + 336));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_233127268;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.deleteAll(type:)(uint64_t a1)
{
  v6 = (*(*v1 + 352) + **(*v1 + 352));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_233127268;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.trainModel(voiceID:mode:startImmediately:skipValidation:overrideMinimumPhraseCount:useUserRecordingsForTraining:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v18 = (*(*v7 + 360) + **(*v7 + 360));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_233127268;

  return v18(a1, a2, a3, a4, a5, a6 & 1, a7);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.cancelTrainingTask(taskID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 368) + **(*v2 + 368));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_233127268;

  return v8(a1, a2);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.discardTrainingTasks()()
{
  v4 = (*(*v0 + 376) + **(*v0 + 376));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233127268;

  return v4();
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchScriptMetadataURL(localeID:scriptType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 384) + **(*v5 + 384));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_233127268;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.synthesizeAudioSamplesForVoice(withID:)(uint64_t a1)
{
  v6 = (*(*v1 + 440) + **(*v1 + 440));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_233126374;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.generateTrainingData(localeID:scriptType:voiceID:overridePhraseCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(*v8 + 504) + **(*v8 + 504));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_233127268;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.sendMockUserNotification()()
{
  v4 = (*(*v0 + 512) + **(*v0 + 512));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233126374;

  return v4();
}

uint64_t sub_233256FC8(uint64_t a1)
{
  result = sub_23328CC9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_233257088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 19))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 18);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2332570D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 18) = -a2;
    }
  }

  return result;
}

uint64_t sub_233257130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3718, &qword_23329F850);
  sub_23328D30C();
  sub_23328D27C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3718, &qword_23329F850);
  return sub_23328DC9C();
}

unint64_t sub_2332571F8()
{
  result = qword_27DDE3720;
  if (!qword_27DDE3720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3720);
  }

  return result;
}

uint64_t sub_233257240(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  if (a1)
  {
    v2 = a1;
    sub_23328D30C();
    sub_23328E24C();

    v3 = sub_23328CA6C();
    v4 = [v3 debugDescription];

    v5 = sub_23328D98C();
    v7 = v6;

    MEMORY[0x23839B7E0](v5, v7);

    sub_23328D25C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC8C();
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_233257410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_233257478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2332574E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2332575D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_2332576B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_233249DEC(a1, v3, v4);
}

uint64_t getEnumTagSinglePayload for SpeechVoiceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechVoiceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_233257B6C()
{
  result = qword_27DDFF0D8[0];
  if (!qword_27DDFF0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFF0D8);
  }

  return result;
}

unint64_t sub_233257BC8()
{
  result = qword_27DDFF360[0];
  if (!qword_27DDFF360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFF360);
  }

  return result;
}

unint64_t sub_233257C1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23328E37C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_233257C68(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_233257CB8()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x7461506563696F76;
  v4 = 0x6E6964726F636572;
  if (v1 != 4)
  {
    v4 = 0x736C65646F6DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0x656C61636F6CLL;
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

uint64_t sub_233257D64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23325D1AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_233257D8C(uint64_t a1)
{
  v2 = sub_2332580C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233257DC8(uint64_t a1)
{
  v2 = sub_2332580C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233257E04(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3760, &qword_23329FAA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2332580C8();
  sub_23328E69C();
  v17 = 0;
  sub_23328E48C();
  if (!v2)
  {
    v9 = _s13LisVoicesJsonVMa(0);
    v16 = 1;
    sub_23328CE8C();
    sub_23325C038(&qword_27DDE1F80, MEMORY[0x28220C058], MEMORY[0x28220C0C0]);
    sub_23328E4DC();
    v15 = 2;
    sub_23328E48C();
    v14 = 3;
    sub_23328E48C();
    v13 = 4;
    sub_23328E48C();
    v12 = *(v3 + *(v9 + 36));
    v11[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3768, &qword_23329FAA8);
    sub_2332586A0(&qword_27DDE3770, &qword_27DDE3778, &unk_2332A0AA0, MEMORY[0x277D83948]);
    sub_23328E4DC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2332580C8()
{
  result = qword_27DDFF478;
  if (!qword_27DDFF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFF478);
  }

  return result;
}

uint64_t sub_23325811C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3780, &unk_23329FAB0);
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = v31 - v6;
  v8 = _s13LisVoicesJsonVMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2332580C8();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  v32 = a2;
  v12 = v5;
  v41 = 0;
  v13 = v10;
  *v10 = sub_23328E3CC();
  v10[1] = v14;
  v15 = sub_23328CE8C();
  v31[1] = v31;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 1;
  sub_23325C038(&qword_27DDE21D0, MEMORY[0x28220C058], MEMORY[0x28220C0D8]);
  sub_23328E41C();
  v19 = v8[5];
  v31[0] = v16;
  (*(v16 + 32))(v13 + v19, v18, v15);
  v39 = 2;
  v20 = v33;
  v21 = sub_23328E3CC();
  v22 = (v13 + v8[6]);
  *v22 = v21;
  v22[1] = v23;
  v38 = 3;
  v24 = sub_23328E3CC();
  v25 = (v13 + v8[7]);
  *v25 = v24;
  v25[1] = v26;
  v37 = 4;
  v27 = sub_23328E3CC();
  v28 = (v13 + v8[8]);
  *v28 = v27;
  v28[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3768, &qword_23329FAA8);
  v36 = 5;
  sub_2332586A0(&qword_27DDE3788, &qword_27DDE3790, &unk_2332A0A78, MEMORY[0x277D83978]);
  sub_23328E41C();
  (*(v12 + 8))(v7, v20);
  *(v13 + v8[9]) = v35;
  sub_23325BF70(v13, v32, _s13LisVoicesJsonVMa);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return sub_23325BFD8(v13, _s13LisVoicesJsonVMa);
}

uint64_t sub_2332586A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3768, &qword_23329FAA8);
    sub_23325873C(a2, _s14ListModelsJsonVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23325873C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2332587B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08B48);
  __swift_project_value_buffer(v3, qword_27DE08B48);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_233258908()
{
  v1[18] = v0;
  v1[19] = type metadata accessor for TTSVBPath(0);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v2 = type metadata accessor for TTSVBVoice(0);
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v3 = _s13LisVoicesJsonVMa(0);
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v4 = type metadata accessor for TTSVBVoiceModel(0);
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = *(_s14ListModelsJsonVMa(0) - 8);
  v1[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233258B5C, 0, 0);
}

uint64_t sub_233258B5C()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 312) = *v1;
  v3 = *(*v2 + 184);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = sub_233258D74;

  return v6();
}

uint64_t sub_233258D74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23325B83C, 0, 0);
  }

  else
  {
    v6 = (*(**(v3 + 312) + 200) + **(**(v3 + 312) + 200));
    v4 = swift_task_alloc();
    *(v3 + 344) = v4;
    *v4 = v3;
    v4[1] = sub_233258F74;

    return v6();
  }
}

uint64_t sub_233258F74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_23325B944;
  }

  else
  {
    v4 = sub_233259088;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_233259088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v282 = v0;
  if (*(v0 + 368) != 1)
  {
    result = *(v0 + 41);
    v217 = *(result + 16);
    if (!v217)
    {
LABEL_62:

      sub_23328D30C();
      sub_23328D27C();

LABEL_68:

      v208 = *(v0 + 1);
      goto LABEL_69;
    }

    v45 = 0;
    v219 = *(v0 + 26);
    v216 = *(v0 + 27);
    v215 = result + ((*(v216 + 80) + 32) & ~*(v216 + 80));
    v220 = *(v0 + 35);
    v223 = *(v0 + 34);
    v213 = *(v0 + 41);
    v214 = *(v0 + 28);
    v46 = *(v0 + 45);
    v284 = *(v0 + 33);
    while (v45 < *(result + 16))
    {
      v47 = *(v0 + 28);
      v48 = *(v0 + 23);
      v218 = v45;
      sub_23325BF70(v215 + *(v216 + 72) * v45, v47, type metadata accessor for TTSVBVoice);
      v251 = sub_2331DEBE8();
      v301 = *v251;
      v49 = *v251;
      v50 = *(v219 + 20);
      v51 = sub_23328CE8C();
      v294 = v50;
      v297 = (*(v51 - 8) + 16);
      v287 = v47;
      v290 = *v297;
      (*v297)(v48, v47 + v50, v51);
      swift_storeEnumTagMultiPayload();
      v261 = sub_23328CC9C();
      v52 = *(v261 - 8);
      v53 = swift_task_alloc();
      v54 = v49;
      TTSVBPath.url.getter(v53);
      sub_23325BFD8(v48, type metadata accessor for TTSVBPath);
      v55 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v53);
      if (v46)
      {

        v253 = 0;
      }

      else
      {
        v253 = v55;
      }

      v56 = *(v0 + 22);
      v259 = *(v52 + 8);
      v259(v53, v261);

      v57 = *v251;
      v290(v56, v47 + v294, v51);
      swift_storeEnumTagMultiPayload();
      v58 = swift_task_alloc();
      v59 = v57;
      TTSVBPath.url.getter(v58);
      sub_23325BFD8(v56, type metadata accessor for TTSVBPath);
      v225 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v58);
      v60 = *(v0 + 21);
      v259(v58, v261);

      v302 = *v251;
      v61 = *v251;
      v290(v60, v47 + v294, v51);
      swift_storeEnumTagMultiPayload();
      v62 = swift_task_alloc();
      v63 = v61;
      TTSVBPath.url.getter(v62);
      sub_23325BFD8(v60, type metadata accessor for TTSVBPath);
      v226 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v62);
      v64 = *(v0 + 28);
      v65 = *(v0 + 25);
      v268 = *(v0 + 44);
      v259(v62, v261);

      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4DF0);
      v264 = v64;
      MEMORY[0x23839B7E0](*v64, *(v214 + 8));
      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E10);
      v66 = sub_23328CE3C();
      MEMORY[0x23839B7E0](v66);

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E30);
      MEMORY[0x23839B7E0](*(v64 + *(v219 + 24)), *(v64 + *(v219 + 24) + 8));
      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E50);
      v290(v65, v47 + v294, v51);
      swift_storeEnumTagMultiPayload();
      v67 = swift_task_alloc();
      TTSVBPath.url.getter(v67);
      sub_23325BFD8(v65, type metadata accessor for TTSVBPath);
      v274 = v51;
      v68 = sub_23328CC6C();
      v70 = v69;
      v259(v67, v261);
      MEMORY[0x23839B7E0](v68, v70);

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E70);
      *(v282 + 12) = v253;
      v71 = sub_23328CA4C();
      v254 = *(v71 - 8);
      v72 = swift_task_alloc();
      v73 = sub_23328CA1C();
      v74 = *(v73 - 8);
      v75 = swift_task_alloc();
      v241 = *MEMORY[0x277CC8DE0];
      v236 = *(v74 + 104);
      v236();
      v233 = sub_23328CA3C();
      v76 = *(v233 - 8);
      v77 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      v230 = *(v76 + 8);
      v230(v77, v233);
      v229 = *(v74 + 8);
      v229(v75, v73);

      sub_23312599C();
      sub_23325C038(&qword_27DDE1B30, MEMORY[0x28220BA50], MEMORY[0x28220BA48]);
      sub_233125A3C();
      v248 = v71;
      sub_23328E0CC();
      v228 = *(v254 + 8);
      v228(v72, v71);

      MEMORY[0x23839B7E0](*(v282 + 2), *(v282 + 3));

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E90);
      v290(v65, v287 + v294, v274);
      swift_storeEnumTagMultiPayload();
      v78 = swift_task_alloc();
      TTSVBPath.url.getter(v78);
      sub_23325BFD8(v65, type metadata accessor for TTSVBPath);
      v79 = sub_23328CC6C();
      v81 = v80;
      v259(v78, v261);
      MEMORY[0x23839B7E0](v79, v81);
      v0 = v282;

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4EB0);
      *(v282 + 13) = v225;
      v82 = swift_task_alloc();
      v83 = swift_task_alloc();
      (v236)(v83, v241, v73);
      v84 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      v230(v84, v233);
      v229(v83, v73);

      sub_23328E0CC();
      v228(v82, v248);

      MEMORY[0x23839B7E0](*(v0 + 4), *(v0 + 5));

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4ED0);
      v290(v65, v287 + v294, v274);
      swift_storeEnumTagMultiPayload();
      v85 = swift_task_alloc();
      TTSVBPath.url.getter(v85);
      sub_23325BFD8(v65, type metadata accessor for TTSVBPath);
      v86 = sub_23328CC6C();
      v88 = v87;
      v259(v85, v261);
      MEMORY[0x23839B7E0](v86, v88);

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4EF0);
      *(v282 + 14) = v226;
      v89 = swift_task_alloc();
      v90 = swift_task_alloc();
      (v236)(v90, v241, v73);
      v91 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      v230(v91, v233);
      v227 = v73;
      v229(v90, v73);

      sub_23328E0CC();
      v228(v89, v248);

      MEMORY[0x23839B7E0](*(v0 + 6), *(v0 + 7));

      MEMORY[0x23839B7E0](657930, 0xE300000000000000);
      MEMORY[0x23839B7E0](0, 0xE000000000000000);

      v92 = swift_task_alloc();
      *(v92 + 16) = v264;

      v46 = 0;
      sub_23325BA58(sub_23325C080, v92, v268);
      v94 = v93;

      v224 = *(v94 + 16);
      if (v224)
      {
        result = MEMORY[0x23839B7E0](0x203A736C65646F4DLL, 0xEA00000000000A0ALL);
        v95 = 0;
        v221 = v94 + ((*(v223 + 80) + 32) & ~*(v223 + 80));
        v222 = v94;
        while (v95 < *(v94 + 16))
        {
          v110 = *(v0 + 35);
          v111 = *(v0 + 20);
          v278 = v95;
          sub_23325BF70(v221 + *(v223 + 72) * v95, v110, type metadata accessor for TTSVBVoiceModel);
          v112 = *v251;
          sub_23325BF70(v110, v111, type metadata accessor for TTSVBVoiceModel);
          swift_storeEnumTagMultiPayload();
          v113 = swift_task_alloc();
          v114 = v112;
          TTSVBPath.url.getter(v113);
          sub_23325BFD8(v111, type metadata accessor for TTSVBPath);
          v275 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v113);
          v115 = *(v0 + 35);
          v116 = *(v0 + 25);
          v259(v113, v261);

          sub_23328E24C();
          MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332A4F10);
          MEMORY[0x23839B7E0](*v115, *(v220 + 8));
          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4F40);
          v117 = sub_23328CE3C();
          MEMORY[0x23839B7E0](v117);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4F70);
          v118 = sub_23328CE3C();
          MEMORY[0x23839B7E0](v118);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4FA0);
          sub_23325BF70(v115, v116, type metadata accessor for TTSVBVoiceModel);
          swift_storeEnumTagMultiPayload();
          v119 = swift_task_alloc();
          TTSVBPath.url.getter(v119);
          sub_23325BFD8(v116, type metadata accessor for TTSVBPath);
          v120 = sub_23328CC6C();
          v122 = v121;
          v259(v119, v261);
          MEMORY[0x23839B7E0](v120, v122);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4FD0);
          MEMORY[0x23839B7E0](*(v115 + v284[14]), *(v115 + v284[14] + 8));
          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5000);
          v123 = TTSVBVoiceModel.primarySpeakingLocales.getter();
          v124 = *(v123 + 16);
          if (v124)
          {
            v304 = MEMORY[0x277D84F90];
            sub_23312676C(0, v124, 0);
            v125 = v304;
            v126 = sub_23328CF0C();
            v127 = 0;
            v128 = *(v126 - 8);
            v298 = v123 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
            do
            {
              v129 = swift_task_alloc();
              (*(v128 + 16))(v129, v298 + *(v128 + 72) * v127, v126);
              v130 = sub_23328CEAC();
              v132 = v131;
              (*(v128 + 8))(v129, v126);

              v134 = *(v304 + 16);
              v133 = *(v304 + 24);
              if (v134 >= v133 >> 1)
              {
                sub_23312676C((v133 > 1), v134 + 1, 1);
              }

              ++v127;
              *(v304 + 16) = v134 + 1;
              v135 = v304 + 16 * v134;
              *(v135 + 32) = v130;
              *(v135 + 40) = v132;
            }

            while (v124 != v127);

            v0 = v282;
          }

          else
          {

            v125 = MEMORY[0x277D84F90];
          }

          v136 = *(v0 + 35);
          v137 = MEMORY[0x23839B960](v125, MEMORY[0x277D837D0]);
          v139 = v138;

          MEMORY[0x23839B7E0](v137, v139);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5030);
          v140 = sub_23328CD6C();
          v141 = *(v140 - 8);
          v142 = swift_task_alloc();
          sub_23328CD5C();
          v143 = sub_23328CD3C();
          v144 = *(v143 - 8);
          v145 = swift_task_alloc();
          sub_23328CD1C();
          v146 = sub_23328CDEC();
          v148 = v147;
          v291 = v143;
          v269 = *(v144 + 8);
          v269(v145, v143);
          v299 = v140;
          v265 = *(v141 + 8);
          v265(v142, v140);

          MEMORY[0x23839B7E0](v146, v148);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5060);
          MEMORY[0x23839B7E0](*(v136 + v284[8]), *(v136 + v284[8] + 8));
          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5090);
          v149 = (v136 + v284[9]);
          if (v149[1])
          {
            v150 = *v149;
            v151 = v149[1];
          }

          else
          {
            v151 = 0xE500000000000000;
            v150 = 0x3E6C696E3CLL;
          }

          v152 = *(v282 + 35);

          MEMORY[0x23839B7E0](v150, v151);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A50C0);
          v153 = (v152 + v284[10]);
          if (v153[1])
          {
            v154 = *v153;
            v155 = v153[1];
          }

          else
          {
            v155 = 0xE500000000000000;
            v154 = 0x3E6C696E3CLL;
          }

          v156 = *(v282 + 35);

          MEMORY[0x23839B7E0](v154, v155);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A50F0);
          v157 = (v156 + v284[11]);
          if (v157[1])
          {
            v158 = *v157;
            v159 = v157[1];
          }

          else
          {
            v159 = 0xE500000000000000;
            v158 = 0x3E6C696E3CLL;
          }

          v160 = *(v282 + 35);

          MEMORY[0x23839B7E0](v158, v159);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5120);
          MEMORY[0x23839B7E0](*(v160 + v284[12]), *(v160 + v284[12] + 8));
          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5150);
          MEMORY[0x23839B7E0](*(v160 + v284[17]), *(v160 + v284[17] + 8));
          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5180);
          v161 = *(v160 + v284[13]);
          v162 = TTSVBVoiceStatus.description.getter(v161);
          MEMORY[0x23839B7E0](v162);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A51B0);
          v163 = TTSVBVoiceTrainingStatus.description.getter(*(v160 + v284[15]));
          MEMORY[0x23839B7E0](v163);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A51E0);
          v164 = *(v282 + 35);
          v165 = 1.0;
          if (v161 != 7)
          {
            v165 = *(v164 + v284[16]);
          }

          v282[15] = v165;
          v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A00, &unk_2332905E0);
          v167 = *(v166 - 8);
          v168 = swift_task_alloc();
          sub_23328CF0C();
          swift_task_alloc();
          sub_23328CEEC();
          sub_23312678C();
          sub_23328CA8C();

          sub_2331267E0();
          sub_23328D86C();
          (*(v167 + 8))(v168, v166);

          MEMORY[0x23839B7E0](*(v282 + 8), *(v282 + 9));

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5210);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
          v169 = swift_task_alloc();
          sub_23312712C(v164 + v284[18], v169);
          v170 = sub_23328CE1C();
          v171 = *(v170 - 8);
          if ((*(v171 + 48))(v169, 1, v170) == 1)
          {
            sub_233126838(v169);
            v96 = 0x3E656E6F6E3CLL;
            v97 = 0xE600000000000000;
          }

          else
          {
            v172 = swift_task_alloc();
            sub_23328CD5C();
            v173 = swift_task_alloc();
            sub_23328CD1C();
            v96 = sub_23328CDEC();
            v97 = v174;
            v269(v173, v291);
            v265(v172, v299);

            (*(v171 + 8))(v169, v170);
          }

          v0 = v282;
          v98 = *(v282 + 35);

          MEMORY[0x23839B7E0](v96, v97);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5240);
          *(swift_task_alloc() + 16) = v98;
          v99 = v98;
          v46 = 0;
          v100 = sub_233125BDC(sub_23325C7F4);
          v102 = v101;

          if (v102)
          {
            v103 = v100;
          }

          else
          {
            v103 = 0x3E656E6F4E3CLL;
          }

          if (v102)
          {
            v104 = v102;
          }

          else
          {
            v104 = 0xE600000000000000;
          }

          MEMORY[0x23839B7E0](v103, v104);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5270);
          if (*(v99 + v284[19]))
          {
            v105 = 7562585;
          }

          else
          {
            v105 = 28494;
          }

          if (*(v99 + v284[19]))
          {
            v106 = 0xE300000000000000;
          }

          else
          {
            v106 = 0xE200000000000000;
          }

          MEMORY[0x23839B7E0](v105, v106);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A52A0);
          *(v282 + 16) = v275;
          v107 = swift_task_alloc();
          v108 = swift_task_alloc();
          (v236)(v108, v241, v227);
          v109 = swift_task_alloc();
          sub_23328CA2C();
          sub_23328C82C();
          v230(v109, v233);
          v229(v108, v227);

          sub_23328E0CC();
          v228(v107, v248);
          v95 = v278 + 1;

          MEMORY[0x23839B7E0](*(v282 + 10), *(v282 + 11));

          MEMORY[0x23839B7E0](657930, 0xE300000000000000);
          MEMORY[0x23839B7E0](0, 0xE000000000000000);

          result = sub_23325BFD8(v99, type metadata accessor for TTSVBVoiceModel);
          v94 = v222;
          if (v278 + 1 == v224)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

LABEL_12:

      sub_23325BFD8(*(v0 + 28), type metadata accessor for TTSVBVoice);
      v45 = v218 + 1;
      result = v213;
      if (v218 + 1 == v217)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v1 = *(v0 + 44);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v235 = *(v0 + 37);
    v232 = *(v0 + 36);
    v5 = *(v0 + 33);
    v4 = *(v0 + 34);
    v300 = MEMORY[0x277D84F90];
    sub_23325C894(0, v2, 0);
    v296 = v300;
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v231 = *(v4 + 72);
    do
    {
      v283 = v6;
      v286 = v2;
      v7 = *(v0 + 36);
      sub_23325BF70(v6, v7, type metadata accessor for TTSVBVoiceModel);
      v277 = *v7;
      v293 = *(v232 + 8);
      v8 = v5[5];
      v9 = sub_23328CE8C();
      v10 = *(v9 - 8);
      v11 = swift_task_alloc();
      v12 = *(v10 + 16);
      v280 = v11;
      v12(v11, v7 + v8, v9);
      v13 = v5[6];
      v273 = swift_task_alloc();
      v12(v273, v7 + v13, v9);
      v14 = (v7 + v5[14]);
      v271 = *v14;
      v289 = v14[1];
      v15 = v5[7];
      v16 = sub_23328CE1C();
      v17 = *(v16 - 8);
      v267 = swift_task_alloc();
      (*(v17 + 16))(v267, v7 + v15, v16);
      v18 = v5[9];
      v19 = (v7 + v5[8]);
      v20 = v19[1];
      v263 = *v19;
      v21 = *(v7 + v18 + 8);
      v258 = *(v7 + v18);
      v22 = v5[11];
      v23 = (v7 + v5[10]);
      v24 = v23[1];
      v252 = *v23;
      v247 = *(v7 + v22);
      v25 = (v7 + v5[12]);
      v26 = v25[1];
      v243 = *v25;
      v27 = (v7 + v5[17]);
      v28 = v27[1];
      v238 = *v27;
      v29 = *(v7 + v5[13]);
      v30 = *(v7 + v5[15]);
      v245 = *(v7 + v22 + 8);

      v240 = v26;
      v31 = v28;

      v260 = v20;

      v256 = v21;

      v250 = v24;

      v32 = TTSVBVoiceTrainingStatus.description.getter(v30);
      v34 = v33;
      v35 = *(v0 + 36);
      v36 = 1.0;
      if (v29 != 7)
      {
        v36 = *(v35 + v5[16]);
      }

      v0 = v282;
      v37 = *(v282 + 38);
      v38 = v5[18];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
      v39 = swift_task_alloc();
      sub_23312712C(v35 + v38, v39);
      sub_233267C90(v277, v293, v280, v273, v271, v289, v267, v263, v37, v36, v260, v258, v256, v252, v250, v247, v245, v243, v240, v238, v31, v29, v32, v34, v39, *(v35 + v5[19]));
      sub_23325BFD8(v35, type metadata accessor for TTSVBVoiceModel);

      v40 = v296;
      v42 = *(v296 + 16);
      v41 = *(v296 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_23325C894((v41 > 1), v42 + 1, 1);
        v40 = v296;
      }

      v43 = *(v282 + 38);
      *(v40 + 16) = v42 + 1;
      v296 = v40;
      sub_23325C968(v43, v40 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v42, _s14ListModelsJsonVMa);
      v6 = v283 + v231;
      v2 = v286 - 1;
    }

    while (v286 != 1);
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v296 = MEMORY[0x277D84F90];
  }

  v175 = *(v0 + 41);
  v176 = *(v175 + 16);
  if (v176)
  {
    v244 = *(v0 + 32);
    v242 = *(v0 + 31);
    v288 = *(v0 + 30);
    v239 = *(v0 + 29);
    v177 = *(v0 + 27);
    v237 = *(v0 + 26);
    v303 = v3;
    sub_23325C850(0, v176, 0);
    v178 = v303;
    v179 = v175 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
    v234 = *(v177 + 72);
    v292 = *(v0 + 45);
    do
    {
      v285 = v176;
      v180 = *(v0 + 32);
      v272 = v180;
      v276 = v178;
      v181 = *(v0 + 29);
      v182 = *(v0 + 25);
      v266 = *(v0 + 24);
      v281 = v179;
      sub_23325BF70(v179, v181, type metadata accessor for TTSVBVoice);
      v279 = *v181;
      v295 = *(v239 + 8);
      v183 = *(v237 + 20);
      v249 = v183;
      v184 = v288[5];
      v185 = sub_23328CE8C();
      v246 = *(*(v185 - 8) + 16);
      v246(v180 + v184, v181 + v183, v185);
      v186 = (v181 + *(v237 + 24));
      v270 = *v186;
      v262 = v186[1];
      v246(v182, v181 + v183, v185);
      swift_storeEnumTagMultiPayload();
      v187 = sub_23328CC9C();
      v188 = *(v187 - 8);
      v189 = swift_task_alloc();

      TTSVBPath.url.getter(v189);
      sub_23325BFD8(v182, type metadata accessor for TTSVBPath);
      v257 = sub_23328CC6C();
      v255 = v190;
      v191 = *(v188 + 8);
      v191(v189, v187);
      v246(v266, v181 + v249, v185);
      swift_storeEnumTagMultiPayload();
      v192 = swift_task_alloc();
      TTSVBPath.url.getter(v192);
      sub_23325BFD8(v266, type metadata accessor for TTSVBPath);
      v193 = sub_23328CC6C();
      v195 = v194;
      v191(v192, v187);
      v178 = v276;
      v196 = swift_task_alloc();
      *(v196 + 16) = v181;

      sub_23325BCE4(sub_23325C8D8, v196, v296);
      v198 = v197;

      *v272 = v279;
      *(v244 + 8) = v295;
      v199 = (v272 + v288[6]);
      *v199 = v270;
      v199[1] = v262;
      v200 = (v272 + v288[7]);
      *v200 = v257;
      v200[1] = v255;
      v201 = (v272 + v288[8]);
      *v201 = v193;
      v201[1] = v195;
      *(v272 + v288[9]) = v198;

      sub_23325BFD8(v181, type metadata accessor for TTSVBVoice);
      v203 = *(v276 + 16);
      v202 = *(v276 + 24);
      if (v203 >= v202 >> 1)
      {
        sub_23325C850((v202 > 1), v203 + 1, 1);
        v178 = v276;
      }

      v204 = *(v282 + 32);
      *(v178 + 16) = v203 + 1;
      sub_23325C968(v204, v178 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v203, _s13LisVoicesJsonVMa);
      v179 = v281 + v234;
      v176 = v285 - 1;
      v0 = v282;
    }

    while (v285 != 1);
    v205 = v292;
  }

  else
  {
    v205 = *(v0 + 45);
    v178 = MEMORY[0x277D84F90];
  }

  sub_23328C8BC();
  swift_allocObject();
  sub_23328C8AC();
  sub_23328C87C();
  swift_task_alloc();
  sub_23328C86C();
  sub_23328C88C();

  *(v0 + 17) = v178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3798, &qword_23329FAD0);
  sub_23325C9D0();
  v206 = sub_23328C89C();
  if (!v205)
  {
    v209 = v206;
    v210 = v207;
    sub_23328D30C();
    sub_23328D9DC();
    swift_task_alloc();
    sub_23328D9CC();
    sub_23328D9AC();
    v212 = v211;

    if (v212)
    {

      sub_23328D27C();
      v0 = v282;

      sub_233121870(v209, v210);
      goto LABEL_68;
    }

    goto LABEL_74;
  }

  v208 = *(v0 + 1);
LABEL_69:

  return v208();
}

uint64_t sub_23325B83C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23325B944()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23325BA58(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTSVBVoiceModel(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_23325BF70(a3 + v14 + v15 * v12, v11, type metadata accessor for TTSVBVoiceModel);
      v16 = a1(v11);
      if (v3)
      {
        sub_23325BFD8(v11, type metadata accessor for TTSVBVoiceModel);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_23325C968(v11, v23, type metadata accessor for TTSVBVoiceModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2331B4058(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2331B4058((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_23325C968(v23, v13 + v14 + v19 * v15, type metadata accessor for TTSVBVoiceModel);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_23325BFD8(v11, type metadata accessor for TTSVBVoiceModel);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_23325BCE4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = _s14ListModelsJsonVMa(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_23325BF70(a3 + v14 + v15 * v12, v11, _s14ListModelsJsonVMa);
      v16 = a1(v11);
      if (v3)
      {
        sub_23325BFD8(v11, _s14ListModelsJsonVMa);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_23325C968(v11, v23, _s14ListModelsJsonVMa);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23325C894(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_23325C894((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_23325C968(v23, v13 + v14 + v19 * v15, _s14ListModelsJsonVMa);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_23325BFD8(v11, _s14ListModelsJsonVMa);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_23325BF70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23325BFD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23325C038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23325C0B0(uint64_t a1)
{
  v2 = sub_23325CAA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23325C0EC(uint64_t a1)
{
  v2 = sub_23325CAA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23325C128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE37B0, qword_23329FAD8);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_23328D4DC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _s17ListVoicesCommandVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D3CC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D58C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23325CAA4();
  v17 = v24;
  sub_23328E68C();
  if (!v17)
  {
    v18 = v22;
    sub_233126AC4();
    sub_23328E41C();
    (*(v23 + 8))(v8, v6);
    (*(v18 + 40))(v15, v5, v3);
    sub_23325BF70(v15, v21, _s17ListVoicesCommandVMa);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23325BFD8(v15, _s17ListVoicesCommandVMa);
}

uint64_t sub_23325C49C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233258908();
}

uint64_t sub_23325C528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23325873C(&qword_27DDE37B8, _s17ListVoicesCommandVMa, &unk_23329FB60);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23325C604@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFF470 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08B48);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23325C6C4()
{
  v0 = sub_23328D4DC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_23328D3CC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_23325C7F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TTSVBVoiceModel(0);
  sub_23328CD8C();
  sub_23328E6BC();
  result = sub_23328E6AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_23325C850(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23325CFD0(a1, a2, a3, *v3, &qword_27DDE37E8, &qword_23329FEB0, _s13LisVoicesJsonVMa);
  *v3 = result;
  return result;
}

void *sub_23325C894(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23325CFD0(a1, a2, a3, *v3, &qword_27DDE37F0, &qword_23329FEB8, _s14ListModelsJsonVMa);
  *v3 = result;
  return result;
}

uint64_t sub_23325C908(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  type metadata accessor for TTSVBVoice(0);
  return sub_23328CE5C() & 1;
}

uint64_t sub_23325C968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23325C9D0()
{
  result = qword_27DDE37A0;
  if (!qword_27DDE37A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3798, &qword_23329FAD0);
    sub_23325873C(&qword_27DDE37A8, _s13LisVoicesJsonVMa, &unk_23329FB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE37A0);
  }

  return result;
}

unint64_t sub_23325CAA4()
{
  result = qword_27DDFF480[0];
  if (!qword_27DDFF480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFF480);
  }

  return result;
}

void sub_23325CC88(uint64_t a1)
{
  sub_23328CE8C();
  if (v1 <= 0x3F)
  {
    sub_23325CD20(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23325CD20(uint64_t a1)
{
  if (!qword_27DDE37E0)
  {
    _s14ListModelsJsonVMa(255);
    v1 = sub_23328DC5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDE37E0);
    }
  }
}

unint64_t sub_23325CDC4()
{
  result = qword_27DDFF9B0[0];
  if (!qword_27DDFF9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFF9B0);
  }

  return result;
}

unint64_t sub_23325CE1C()
{
  result = qword_27DDFFBC0[0];
  if (!qword_27DDFFBC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFFBC0);
  }

  return result;
}

unint64_t sub_23325CE74()
{
  result = qword_27DDFFCD0;
  if (!qword_27DDFFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFFCD0);
  }

  return result;
}

unint64_t sub_23325CECC()
{
  result = qword_27DDFFCD8[0];
  if (!qword_27DDFFCD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFFCD8);
  }

  return result;
}

unint64_t sub_23325CF24()
{
  result = qword_27DDFFD60;
  if (!qword_27DDFFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFFD60);
  }

  return result;
}

unint64_t sub_23325CF7C()
{
  result = qword_27DDFFD68[0];
  if (!qword_27DDFFD68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFFD68);
  }

  return result;
}

void *sub_23325CFD0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_23325D1AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461506563696F76 && a2 == 0xE900000000000068 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6964726F636572 && a2 == 0xEE00687461507367 || (sub_23328E54C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23325D3A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08B60);
  __swift_project_value_buffer(v3, qword_27DE08B60);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23325D51C()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  v0[3] = *v1;
  v3 = sub_23328CE8C();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[6] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v7 = (*(*v2 + 328) + **(*v2 + 328));
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23322660C;

  return v7(v4);
}

uint64_t sub_23325D72C(uint64_t a1)
{
  v2 = sub_23325DC68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23325D768(uint64_t a1)
{
  v2 = sub_23325DC68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23325D7A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE37F8, qword_23329FEC0);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = sub_23328D53C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23328D4DC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = _s18DeleteVoiceCommandVMa(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v17 = sub_23328D3CC();
  (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  v18 = sub_23328D42C();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23325DC68();
  v19 = v27;
  sub_23328E68C();
  if (!v19)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v27 = &v25;
    v21 = *(v20 - 8);
    MEMORY[0x28223BE20](v20);
    v23 = &v25 - v22;
    sub_233226DD0();
    sub_23328E41C();
    (*(v26 + 8))(v5, v3);
    (*(v21 + 40))(v16, v23, v20);
    sub_23325DD18(v16, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23325DCBC(v16);
}

uint64_t _s18DeleteVoiceCommandVMa(uint64_t a1)
{
  result = qword_27DE00100;
  if (!qword_27DE00100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23325DC68()
{
  result = qword_27DDFFDF8[0];
  if (!qword_27DDFFDF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFFDF8);
  }

  return result;
}

uint64_t sub_23325DCBC(uint64_t a1)
{
  v2 = _s18DeleteVoiceCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23325DD18(uint64_t a1, uint64_t a2)
{
  v4 = _s18DeleteVoiceCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23325DE04()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  v0[3] = *v1;
  v3 = sub_23328CE8C();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[6] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v7 = (*(*v2 + 328) + **(*v2 + 328));
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_233227130;

  return v7(v4);
}

uint64_t sub_23325E048(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23325E238(&qword_27DDE3800, &unk_23329FEF8);
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23325E144@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFFDF0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08B60);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23325E238(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s18DeleteVoiceCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23325E27C()
{
  v0 = sub_23328D53C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23328D4DC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  sub_23328D3BC();
  v8 = sub_23328D3CC();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_23328D42C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  return sub_23328D5FC();
}

unint64_t sub_23325E504()
{
  result = qword_27DE00210[0];
  if (!qword_27DE00210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE00210);
  }

  return result;
}

unint64_t sub_23325E55C()
{
  result = qword_27DE00320;
  if (!qword_27DE00320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE00320);
  }

  return result;
}

unint64_t sub_23325E5B4()
{
  result = qword_27DE00328[0];
  if (!qword_27DE00328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE00328);
  }

  return result;
}

uint64_t sub_23325E608()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08B78);
  __swift_project_value_buffer(v3, qword_27DE08B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE38B8, &unk_2332A08A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_233297630;
  v5 = _s27DiagnoseRootSubtasksCommandVMa(0);
  v6 = sub_233261858(&qword_27DDE3878, _s27DiagnoseRootSubtasksCommandVMa, &unk_2332A0338);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = _s30DiagnoseNonRootSubtasksCommandVMa(0);
  v8 = sub_233261858(&qword_27DDE38A0, _s30DiagnoseNonRootSubtasksCommandVMa, &unk_2332A0478);
  *(v4 + 48) = v7;
  *(v4 + 56) = v8;
  v9 = sub_23328D4DC();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_23328D50C();
}

uint64_t sub_23325E82C()
{
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 24) = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v3 = *(v0 + 48);
  v6 = (*(*v2 + 472) + **(*v2 + 472));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_23325E998;

  return v6(v3);
}

uint64_t sub_23325E998()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_233262690, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23325EAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63697571 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23325EB6C(uint64_t a1)
{
  v2 = sub_23325EFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23325EBA8(uint64_t a1)
{
  v2 = sub_23325EFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23325EBE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3828, &qword_2332A0138);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_23328D4DC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = _s15DiagnoseCommandVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v16 = sub_23328D3CC();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  sub_23328D4CC();
  sub_23328D58C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23325EFDC();
  v17 = v25;
  sub_23328E68C();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v19 = v15;
  }

  else
  {
    v18 = v23;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0, MEMORY[0x277CEEA58]);
    sub_23328E41C();
    (*(v24 + 8))(v8, v6);
    (*(v18 + 40))(v15, v5, v3);
    sub_233260398(v15, v22, _s15DiagnoseCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v19 = v15;
  }

  return sub_233260338(v19, _s15DiagnoseCommandVMa);
}

unint64_t sub_23325EFDC()
{
  result = qword_27DE003C8;
  if (!qword_27DE003C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE003C8);
  }

  return result;
}

uint64_t sub_23325F050()
{
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 24) = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v3 = *(v0 + 48);
  v6 = (*(*v2 + 472) + **(*v2 + 472));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_23325F1BC;

  return v6(v3);
}

uint64_t sub_23325F1BC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23325F2F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23325F2F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23325F35C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233261858(&qword_27DDE3840, _s15DiagnoseCommandVMa, &unk_2332A0190);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23325F45C()
{
  v0 = sub_23328D4DC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  sub_23328D3BC();
  v4 = sub_23328D3CC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_23325F5AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08B90);
  __swift_project_value_buffer(v3, qword_27DE08B90);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23325F748()
{
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 40) = *v1;
  v3 = sub_23328CC9C();
  *(v0 + 48) = v3;
  *(v0 + 56) = *(v3 - 8);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  sub_23328CB7C();

  _s27DiagnoseRootSubtasksCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v5 = *(v0 + 88);
  v8 = (*(*v2 + 456) + **(*v2 + 456));
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_23325F964;

  return v8(v4, v5);
}

uint64_t sub_23325F964()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23319D8B0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_23325FB3C()
{
  if (*v0)
  {
    return 0x6B63697571;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_23325FB70(uint64_t a1)
{
  v2 = sub_2332602E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23325FBAC(uint64_t a1)
{
  v2 = sub_2332602E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23325FBE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v39 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v38 - v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3830, &qword_2332A0148);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v49 = &v38 - v4;
  v5 = sub_23328D47C();
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D41C();
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D53C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23328D4DC();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - v15;
  v17 = _s27DiagnoseRootSubtasksCommandVMa(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D3CC();
  v22 = *(*(v21 - 8) + 56);
  v22(v16, 1, 1, v21);
  v23 = sub_23328D42C();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v24 = *(v18 + 28);
  sub_23328D40C();
  sub_23328D3BC();
  v22(v16, 0, 1, v21);
  v25 = v20;
  sub_23328D4CC();
  sub_23328D45C();
  v26 = v50;
  sub_23328D59C();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2332602E4();
  v27 = v49;
  v28 = v51;
  sub_23328E68C();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
    v37 = v25;
  }

  else
  {
    v30 = v42;
    v29 = v43;
    v53 = 0;
    sub_23315246C(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70, MEMORY[0x277CEEA68]);
    v31 = v44;
    sub_23328E41C();
    v32 = *(v29 + 40);
    v51 = v25;
    v32(v25, v45, v46);
    v52 = 1;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0, MEMORY[0x277CEEA58]);
    v34 = v40;
    v33 = v41;
    sub_23328E41C();
    (*(v30 + 8))(v27, v31);
    v36 = v51;
    (*(v38 + 40))(v51 + v24, v34, v33);
    sub_233260398(v36, v39, _s27DiagnoseRootSubtasksCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v37 = v36;
  }

  return sub_233260338(v37, _s27DiagnoseRootSubtasksCommandVMa);
}

unint64_t sub_2332602E4()
{
  result = qword_27DE003D0;
  if (!qword_27DE003D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE003D0);
  }

  return result;
}

uint64_t sub_233260338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_233260398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_233260400()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23325F728();
}

uint64_t sub_23326048C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233261858(&qword_27DDE3868, _s27DiagnoseRootSubtasksCommandVMa, &unk_2332A02D0);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_2332605D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08BA8);
  __swift_project_value_buffer(v3, qword_27DE08BA8);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_233260770()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 40) = *v1;
  v3 = sub_23328CC9C();
  *(v0 + 48) = v3;
  *(v0 + 56) = *(v3 - 8);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  sub_23328CB7C();

  _s30DiagnoseNonRootSubtasksCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v5 = *(v0 + 88);
  v8 = (*(*v2 + 464) + **(*v2 + 464));
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_2332609D8;

  return v8(v4, v5);
}

uint64_t sub_2332609D8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_233260B90, 0, 0);
  }

  else
  {

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_233260B90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233260BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63697571 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_233260CCC(uint64_t a1)
{
  v2 = sub_233261774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233260D08(uint64_t a1)
{
  v2 = sub_233261774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233260D44(void (*a1)(void))
{
  v16 = a1;
  v1 = sub_23328D47C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23328D41C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23328D53C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23328D4DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_23328D3CC();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v13 = sub_23328D42C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v16(0);
  sub_23328D40C();
  sub_23328D3BC();
  v12(v10, 0, 1, v11);
  sub_23328D4CC();
  sub_23328D45C();
  return sub_23328D59C();
}

uint64_t sub_233261078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v39 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v38 - v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3838, qword_2332A0158);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v49 = &v38 - v4;
  v5 = sub_23328D47C();
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D41C();
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D53C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23328D4DC();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - v15;
  v17 = _s30DiagnoseNonRootSubtasksCommandVMa(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D3CC();
  v22 = *(*(v21 - 8) + 56);
  v22(v16, 1, 1, v21);
  v23 = sub_23328D42C();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v24 = *(v18 + 28);
  sub_23328D40C();
  sub_23328D3BC();
  v22(v16, 0, 1, v21);
  v25 = v20;
  sub_23328D4CC();
  sub_23328D45C();
  v26 = v50;
  sub_23328D59C();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_233261774();
  v27 = v49;
  v28 = v51;
  sub_23328E68C();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
    v37 = v25;
  }

  else
  {
    v30 = v42;
    v29 = v43;
    v53 = 0;
    sub_23315246C(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70, MEMORY[0x277CEEA68]);
    v31 = v44;
    sub_23328E41C();
    v32 = *(v29 + 40);
    v51 = v25;
    v32(v25, v45, v46);
    v52 = 1;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0, MEMORY[0x277CEEA58]);
    v34 = v40;
    v33 = v41;
    sub_23328E41C();
    (*(v30 + 8))(v27, v31);
    v36 = v51;
    (*(v38 + 40))(v51 + v24, v34, v33);
    sub_233260398(v36, v39, _s30DiagnoseNonRootSubtasksCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v37 = v36;
  }

  return sub_233260338(v37, _s30DiagnoseNonRootSubtasksCommandVMa);
}

unint64_t sub_233261774()
{
  result = qword_27DE003D8[0];
  if (!qword_27DE003D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE003D8);
  }

  return result;
}

uint64_t sub_233261858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_233261B70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233127268;

  return sub_233260750();
}

uint64_t sub_233261C44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233261858(&qword_27DDE3890, _s30DiagnoseNonRootSubtasksCommandVMa, &unk_2332A0410);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_233261D8C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_23328D51C();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

void sub_233261EEC(uint64_t a1)
{
  sub_233261FA8(319, &qword_27DDE1A68, MEMORY[0x277D839B0], MEMORY[0x277CEEA50]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_233261FA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_14Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_23326223C(uint64_t a1)
{
  sub_233261FA8(319, &qword_27DDE3458, MEMORY[0x277D837D0], MEMORY[0x277CEEA60]);
  if (v1 <= 0x3F)
  {
    sub_233261FA8(319, &qword_27DDE1A68, MEMORY[0x277D839B0], MEMORY[0x277CEEA50]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23326233C()
{
  result = qword_27DE00E10[0];
  if (!qword_27DE00E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE00E10);
  }

  return result;
}

unint64_t sub_233262394()
{
  result = qword_27DE01020[0];
  if (!qword_27DE01020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01020);
  }

  return result;
}

unint64_t sub_2332623EC()
{
  result = qword_27DE01230[0];
  if (!qword_27DE01230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01230);
  }

  return result;
}

unint64_t sub_233262444()
{
  result = qword_27DE01340;
  if (!qword_27DE01340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE01340);
  }

  return result;
}

unint64_t sub_23326249C()
{
  result = qword_27DE01348[0];
  if (!qword_27DE01348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01348);
  }

  return result;
}

unint64_t sub_2332624F4()
{
  result = qword_27DE013D0;
  if (!qword_27DE013D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE013D0);
  }

  return result;
}

unint64_t sub_23326254C()
{
  result = qword_27DE013D8[0];
  if (!qword_27DE013D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE013D8);
  }

  return result;
}

unint64_t sub_2332625A4()
{
  result = qword_27DE01460;
  if (!qword_27DE01460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE01460);
  }

  return result;
}

unint64_t sub_2332625FC()
{
  result = qword_27DE01468[0];
  if (!qword_27DE01468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01468);
  }

  return result;
}

uint64_t sub_233262698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08BC0);
  __swift_project_value_buffer(v3, qword_27DE08BC0);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_233262800()
{
  v27 = v0;
  sub_23328D20C();
  sub_23328D30C();
  sub_23328D24C();

  v22 = objc_opt_self();
  v1 = [v22 supportedLocales];
  v2 = sub_23328CF0C();
  v0[51] = v2;
  sub_233263810();
  v3 = sub_23328DD2C();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_233263BEC(*(v3 + 16), 0);
    sub_23326606C(v26, &v5[(*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)], v4, v3);
    v24 = v6;
    v7 = v26[0];

    v8 = sub_233113BBC(v7);
    if (v24 != v4)
    {
      __break(1u);
      return MEMORY[0x282200938](v8);
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v26[0] = v5;
  sub_233263B48(v26);
  v0[52] = 0;

  v9 = v26[0];
  v10 = *(v2 - 8);
  v11 = v10;
  v0[53] = v10;
  v0[54] = *(v10 + 64);
  v12 = swift_task_alloc();
  v13 = *(v9 + 16);
  if (v13)
  {
    v15 = *(v11 + 16);
    v14 = v11 + 16;
    v16 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v23 = *(v14 + 56);
    v25 = v15;
    do
    {
      v25(v12, v16, v2);
      sub_23328D30C();
      v26[0] = 8224;
      v26[1] = 0xE200000000000000;
      v17 = sub_23328CEAC();
      v19 = v18;
      (*(v14 - 8))(v12, v2);
      MEMORY[0x23839B7E0](v17, v19);

      sub_23328D27C();

      v16 += v23;
      --v13;
    }

    while (v13);
  }

  sub_23328D30C();
  sub_23328D24C();

  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_233262C98;
  v20 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE38C8, &qword_2332A08B8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_23326385C;
  v0[21] = &block_descriptor_9;
  v0[22] = v20;
  [v22 _fetchSupportedForcedOfflineLocalesWithCompletion_];
  v8 = (v0 + 2);

  return MEMORY[0x282200938](v8);
}

uint64_t sub_233262C98()
{

  return MEMORY[0x2822009F8](sub_233262D78, 0, 0);
}

uint64_t sub_233262D78()
{
  v44 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  *(v0 + 440) = v1;
  if (!v2)
  {
    goto LABEL_8;
  }

  if (!*(v2 + 16))
  {

LABEL_8:
    v5 = v1;
    sub_23328D30C();
    sub_23328E24C();

    v42 = 0xD00000000000002ELL;
    v43 = 0x80000002332AE850;
    swift_getErrorValue();
    v6 = v1;
    v7 = sub_23328E5BC();
    v9 = v8;

    MEMORY[0x23839B7E0](v7, v9);

    MEMORY[0x23839B7E0](32, 0xE100000000000000);
    sub_23328D27C();

    v10 = *(v0 + 416);
    goto LABEL_9;
  }

  v3 = *(v0 + 416);
  v42 = v2;

  sub_233263B48(&v42);
  if (v3)
  {
  }

  v28 = v42;
  v29 = swift_task_alloc();
  v30 = *(v28 + 16);
  if (v30)
  {
    v31 = *(v0 + 424);
    v32 = *(v31 + 16);
    v31 += 16;
    v33 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v40 = *(v31 + 56);
    v41 = v32;
    v34 = (v31 - 8);
    do
    {
      v35 = *(v0 + 408);
      v41(v29, v33, v35);
      sub_23328D30C();
      v42 = 8224;
      v43 = 0xE200000000000000;
      v36 = sub_23328CEAC();
      v38 = v37;
      (*v34)(v29, v35);
      MEMORY[0x23839B7E0](v36, v38);

      sub_23328D27C();

      v33 += v40;
      --v30;
    }

    while (v30);
  }

  v10 = 0;
LABEL_9:
  sub_23328D30C();
  sub_23328D24C();

  v11 = sub_233266384(&unk_284879DA0);
  *(v0 + 448) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE38D0, qword_2332A08C0);
  swift_arrayDestroy();
  v12 = *(v11 + 32);
  *(v0 + 480) = v12;
  v13 = -1;
  v14 = -1 << v12;
  v15 = *(v11 + 64);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  *(v0 + 456) = v10;
  v16 = v13 & v15;
  if (v16)
  {
    v17 = 0;
    v18 = *(v0 + 448);
LABEL_16:
    *(v0 + 464) = v16;
    *(v0 + 472) = v17;
    v21 = __clz(__rbit64(v16)) | (v17 << 6);
    v22 = (*(v18 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v18 + 56) + 8 * v21);

    sub_23328D30C();
    *(v0 + 352) = 0x3D6B7361542020;
    *(v0 + 360) = 0xE700000000000000;
    MEMORY[0x23839B7E0](v23, v24);

    sub_23328D27C();

    v26 = objc_opt_self();
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 392;
    *(v0 + 88) = sub_2332632F0;
    v27 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2BF0, &unk_23329A720);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2331C8A84;
    *(v0 + 232) = &block_descriptor_3_0;
    *(v0 + 240) = v27;
    [v26 installedLanguagesForTaskHint:v25 completion:v0 + 208];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v19 = 0;
    v20 = ((63 - v14) >> 6) - 1;
    v18 = *(v0 + 448);
    while (v20 != v19)
    {
      v17 = v19 + 1;
      v16 = *(v18 + 8 * v19++ + 72);
      if (v16)
      {
        goto LABEL_16;
      }
    }

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_2332632F0()
{

  return MEMORY[0x2822009F8](sub_2332633D0, 0, 0);
}

uint64_t sub_2332633D0()
{
  v1 = *(v0 + 392);
  v2 = *(v1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
    v3 = swift_allocObject();
    v4 = _swift_stdlib_malloc_size(v3);
    v5 = v4 - 32;
    if (v4 < 32)
    {
      v5 = v4 - 17;
    }

    v3[2] = v2;
    v3[3] = 2 * (v5 >> 4);
    v6 = sub_233265F14((v0 + 272), v3 + 4, v2, v1);
    v7 = *(v0 + 272);

    v8 = sub_233113BBC(v7);
    if (v6 != v2)
    {
LABEL_27:
      __break(1u);
      return MEMORY[0x282200938](v8);
    }

    v9 = *(v0 + 456);
    *(v0 + 400) = v3;
    sub_233263ADC((v0 + 400));
    if (v9)
    {
    }

    v12 = *(v0 + 400);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;

        sub_23328D30C();
        *(v0 + 368) = 538976288;
        *(v0 + 376) = 0xE400000000000000;
        MEMORY[0x23839B7E0](v15, v16);

        sub_23328D27C();

        v14 += 2;
        --v13;
      }

      while (v13);
    }

    v11 = 0;
  }

  else
  {

    sub_23328D30C();
    sub_23328D27C();

    v11 = *(v0 + 456);
  }

  v18 = *(v0 + 464);
  v17 = *(v0 + 472);
  *(v0 + 456) = v11;
  v19 = (v18 - 1) & v18;
  if (v19)
  {
    v20 = *(v0 + 448);
LABEL_20:
    *(v0 + 464) = v19;
    *(v0 + 472) = v17;
    v22 = __clz(__rbit64(v19)) | (v17 << 6);
    v23 = (*(v20 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = *(*(v20 + 56) + 8 * v22);

    sub_23328D30C();
    *(v0 + 352) = 0x3D6B7361542020;
    *(v0 + 360) = 0xE700000000000000;
    MEMORY[0x23839B7E0](v24, v25);

    sub_23328D27C();

    v27 = objc_opt_self();
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 392;
    *(v0 + 88) = sub_2332632F0;
    v28 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2BF0, &unk_23329A720);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2331C8A84;
    *(v0 + 232) = &block_descriptor_3_0;
    *(v0 + 240) = v28;
    [v27 installedLanguagesForTaskHint:v26 completion:v0 + 208];
    v8 = v0 + 80;

    return MEMORY[0x282200938](v8);
  }

  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v20 = *(v0 + 448);
    if (v21 >= (((1 << *(v0 + 480)) + 63) >> 6))
    {
      break;
    }

    v19 = *(v20 + 8 * v21 + 64);
    ++v17;
    if (v19)
    {
      v17 = v21;
      goto LABEL_20;
    }
  }

  v29 = *(v0 + 8);

  return v29();
}

unint64_t sub_233263810()
{
  result = qword_27DDE38C0;
  if (!qword_27DDE38C0)
  {
    sub_23328CF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38C0);
  }

  return result;
}

uint64_t sub_23326385C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = 0;
  if (a2)
  {
    sub_23328CF0C();
    v6 = sub_23328DBFC();
  }

  v7 = *(*(v5 + 64) + 40);
  *v7 = v6;
  v7[1] = a3;
  v8 = a3;

  return MEMORY[0x282200948](v5);
}

uint64_t sub_2332638E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_2332627E4();
}

uint64_t sub_233263970(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233266484();
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_233263A1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE014F0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08BC0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233263ADC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23326635C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_233263CE8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_233263B48(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_233266370(v2);
  }

  v3 = v2[2];
  v4 = *(sub_23328CF0C() - 8);
  v6[0] = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6[1] = v3;
  result = sub_233263DE0(v6);
  *a1 = v2;
  return result;
}

void *sub_233263BEC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2420, &qword_23329D710);
  v4 = *(sub_23328CF0C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_233263CE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23328E50C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23328DC3C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2332642F0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_233263F0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_233263DE0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23328E50C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23328CF0C();
        v6 = sub_23328DC3C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23328CF0C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2332648CC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_233263FDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_233263F0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_23328E54C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_233263FDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    result = sub_23328CF0C();
    v7 = result;
    v8 = *(result - 8);
    v9 = v8[2];
    v8 += 2;
    v11 = v8[6];
    v10 = v8[7];
    v49 = v9;
    v50 = v11;
    v47 = (v8 - 1);
    v48 = v8;
    v12 = v6 + v10 * (v4 - 1);
    v44 = -v10;
    v45 = (v8 + 2);
    v13 = v5 - v4;
    v46 = v6;
    v38 = v10;
    v14 = v6 + v10 * v4;
LABEL_6:
    v42 = v12;
    v43 = v4;
    v40 = v14;
    v41 = v13;
    v16 = v13;
    while (1)
    {
      v51 = v16;
      v52 = &v37;
      v17 = v50;
      v18 = MEMORY[0x28223BE20](result);
      v19 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = v49;
      v21 = (v49)(v19, v14, v7, v18);
      v22 = MEMORY[0x28223BE20](v21);
      v20(v19, v12, v7, v22);
      v23 = sub_23328CEAC();
      v24 = v7;
      v26 = v25;
      if (v23 == sub_23328CEAC() && v26 == v27)
      {

        v15 = *v47;
        (*v47)(v19, v24);
        result = (v15)(v19, v24);
        v7 = v24;
LABEL_5:
        v4 = v43 + 1;
        v12 = v42 + v38;
        v13 = v41 - 1;
        v14 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_23328E54C();

      v30 = *v47;
      (*v47)(v19, v24);
      result = (v30)(v19, v24);
      v7 = v24;
      v31 = v51;
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v32 = MEMORY[0x28223BE20](result);
      v34 = &v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *v45;
      (*v45)(v34, v14, v7, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = (v35)(v12, v34, v7);
      v12 += v44;
      v14 += v44;
      v36 = __CFADD__(v31, 1);
      v16 = v31 + 1;
      if (v36)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2332642F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_233173C84(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_233265534((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_23328E54C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_23328E54C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_233173D7C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_233173D7C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_233265534((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_233173C84(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_233173BF8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_23328E54C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2332648CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v150 = result;
  v159 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_112:
    v5 = *v150;
    if (!*v150)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_114:
      v170 = v9;
      v139 = *(v9 + 2);
      if (v139 >= 2)
      {
        while (1)
        {
          v140 = v9;
          v9 = *v159;
          if (!*v159)
          {
            goto LABEL_148;
          }

          v141 = *(v140 + 16 * v139);
          v142 = v140 + 16 * (v139 - 1);
          v144 = *(v142 + 32);
          v143 = *(v142 + 40);
          v145 = sub_23328CF0C();
          sub_23326575C(&v9[*(*(v145 - 8) + 72) * v141], &v9[*(*(v145 - 8) + 72) * v144], &v9[*(*(v145 - 8) + 72) * v143], v5);
          if (v6)
          {
          }

          if (v143 < v141)
          {
            goto LABEL_137;
          }

          v9 = v140;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_233173C84(v140);
          }

          if (v139 - 2 >= *(v9 + 2))
          {
            goto LABEL_138;
          }

          v146 = &v9[16 * v139];
          *v146 = v141;
          *(v146 + 1) = v143;
          v170 = v9;
          result = sub_233173BF8(v139 - 1);
          v9 = v170;
          v139 = *(v170 + 2);
          if (v139 <= 1)
          {
          }
        }
      }
    }

LABEL_144:
    result = sub_233173C84(v9);
    v9 = result;
    goto LABEL_114;
  }

  v148 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v157 = v9;
    if (v8 + 1 < v7)
    {
      v160 = v7;
      v169 = *v159;
      v12 = sub_23328CF0C();
      v168 = &v147;
      v13 = *(v12 - 8);
      v14 = v13;
      v15 = *(v13 + 72);
      v158 = v11;
      v16 = *(v13 + 64);
      v17 = MEMORY[0x28223BE20](v12);
      v18 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v152 = v14;
      v19 = *(v14 + 16);
      v20 = (v19)(v18, v17);
      v167 = &v147;
      v151 = v10;
      v164 = v15;
      v162 = v16;
      v21 = MEMORY[0x28223BE20](v20);
      v163 = v12;
      v155 = v19;
      v156 = v14 + 16;
      (v19)(v18, v21);
      v22 = sub_23328CEAC();
      v24 = v23;
      v26 = v22 == sub_23328CEAC() && v24 == v25;
      v149 = v6;
      if (v26)
      {
        LODWORD(v161) = 0;
      }

      else
      {
        LODWORD(v161) = sub_23328E54C();
      }

      v27 = v152 + 8;
      v28 = *(v152 + 8);
      v29 = v163;
      (v28)(&v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v163);
      v153 = v28;
      v154 = v27;
      result = (v28)(v18, v29);
      v30 = (v151 + 2);
      v31 = v164 * (v151 + 2);
      v5 = v169 + v31;
      v9 = v157;
      v32 = v158;
      v33 = v164 * v158;
      v34 = v169 + v164 * v158;
      do
      {
        v36 = v30;
        v39 = v32;
        v41 = v33;
        v40 = v31;
        v168 = v30;
        if (v30 >= v160)
        {
          break;
        }

        v169 = v31;
        v166 = &v147;
        v167 = v32;
        v42 = v162;
        v43 = MEMORY[0x28223BE20](result);
        v44 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
        v45 = v155;
        v46 = (v155)(v44, v5, v29, v43);
        v165 = &v147;
        v47 = MEMORY[0x28223BE20](v46);
        v45(v44, v34, v29, v47);
        v48 = sub_23328CEAC();
        v50 = v49;
        v52 = v48 == sub_23328CEAC() && v50 == v51;
        v35 = v52 ? 0 : sub_23328E54C();
        v36 = v168;

        v29 = v163;
        v37 = v153;
        (v153)(v44, v163);
        result = (v37)(v44, v29);
        v38 = v161 ^ v35;
        v30 = (v36 + 1);
        v5 += v164;
        v34 += v164;
        v39 = v167;
        v32 = v167 + 1;
        v33 = v41 + v164;
        v40 = v169;
        v31 = v169 + v164;
        v9 = v157;
      }

      while ((v38 & 1) == 0);
      v6 = v149;
      if ((v161 & 1) == 0)
      {
        v11 = v36;
LABEL_36:
        v10 = v151;
        goto LABEL_37;
      }

      v5 = v151;
      if (v36 < v151)
      {
        goto LABEL_141;
      }

      if (v151 < v36)
      {
        v167 = (v152 + 32);
        v53 = v151 * v164;
        do
        {
          if (v5 != v39)
          {
            v56 = *v159;
            if (!*v159)
            {
              goto LABEL_147;
            }

            v166 = &v147;
            v57 = MEMORY[0x28223BE20](result);
            v59 = &v147 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
            v165 = *v167;
            (v165)(v59, v56 + v53, v163, v57);
            v169 = v40;
            if (v53 < v41 || v56 + v53 >= v40 + v56)
            {
              v54 = v163;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v54 = v163;
              if (v53 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v165)(v56 + v41, v59, v54);
            v9 = v157;
            v40 = v169;
          }

          ++v5;
          v41 -= v164;
          v40 = (v40 - v164);
          v53 += v164;
        }

        while (v5 < v39--);
        v11 = v168;
        goto LABEL_36;
      }

      v11 = v36;
      v10 = v151;
    }

LABEL_37:
    v60 = v159[1];
    if (v11 < v60)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_140;
      }

      if (v11 - v10 < v148)
      {
        break;
      }
    }

LABEL_61:
    if (v11 < v10)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v158 = v11;
    if ((result & 1) == 0)
    {
      result = sub_233173D7C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v89 = *(v9 + 2);
    v88 = *(v9 + 3);
    v90 = v89 + 1;
    if (v89 >= v88 >> 1)
    {
      result = sub_233173D7C((v88 > 1), v89 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v90;
    v91 = &v9[16 * v89];
    v92 = v158;
    *(v91 + 4) = v10;
    *(v91 + 5) = v92;
    v93 = *v150;
    if (!*v150)
    {
      goto LABEL_149;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v95 = *(v9 + 4);
          v96 = *(v9 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_81:
          if (v98)
          {
            goto LABEL_128;
          }

          v111 = &v9[16 * v90];
          v113 = *v111;
          v112 = *(v111 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_131;
          }

          v117 = &v9[16 * v94 + 32];
          v119 = *v117;
          v118 = *(v117 + 1);
          v105 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v105)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v115, v120))
          {
            goto LABEL_135;
          }

          if (v115 + v120 >= v97)
          {
            if (v97 < v120)
            {
              v94 = v90 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v121 = &v9[16 * v90];
        v123 = *v121;
        v122 = *(v121 + 1);
        v105 = __OFSUB__(v122, v123);
        v115 = v122 - v123;
        v116 = v105;
LABEL_95:
        if (v116)
        {
          goto LABEL_130;
        }

        v124 = &v9[16 * v94];
        v126 = *(v124 + 4);
        v125 = *(v124 + 5);
        v105 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v105)
        {
          goto LABEL_133;
        }

        if (v127 < v115)
        {
          goto LABEL_3;
        }

LABEL_102:
        v132 = v94 - 1;
        if (v94 - 1 >= v90)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v133 = *v159;
        if (!*v159)
        {
          goto LABEL_146;
        }

        v134 = *&v9[16 * v132 + 32];
        v135 = &v9[16 * v94 + 32];
        v5 = *v135;
        v136 = *(v135 + 8);
        v137 = sub_23328CF0C();
        sub_23326575C(v133 + *(*(v137 - 8) + 72) * v134, (v133 + *(*(v137 - 8) + 72) * v5), (v133 + *(*(v137 - 8) + 72) * v136), v93);
        if (v6)
        {
        }

        if (v136 < v134)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_233173C84(v9);
        }

        if (v132 >= *(v9 + 2))
        {
          goto LABEL_125;
        }

        v138 = &v9[16 * v132];
        *(v138 + 4) = v134;
        *(v138 + 5) = v136;
        v170 = v9;
        result = sub_233173BF8(v94);
        v9 = v170;
        v90 = *(v170 + 2);
        if (v90 <= 1)
        {
          goto LABEL_3;
        }
      }

      v99 = &v9[16 * v90 + 32];
      v100 = *(v99 - 64);
      v101 = *(v99 - 56);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_126;
      }

      v104 = *(v99 - 48);
      v103 = *(v99 - 40);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_127;
      }

      v106 = &v9[16 * v90];
      v108 = *v106;
      v107 = *(v106 + 1);
      v105 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v105)
      {
        goto LABEL_129;
      }

      v105 = __OFADD__(v97, v109);
      v110 = v97 + v109;
      if (v105)
      {
        goto LABEL_132;
      }

      if (v110 >= v102)
      {
        v128 = &v9[16 * v94 + 32];
        v130 = *v128;
        v129 = *(v128 + 1);
        v105 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v105)
        {
          goto LABEL_136;
        }

        if (v97 < v131)
        {
          v94 = v90 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v8 = v158;
    v7 = v159[1];
    if (v158 >= v7)
    {
      goto LABEL_112;
    }
  }

  if (__OFADD__(v10, v148))
  {
    goto LABEL_142;
  }

  if (&v10[v148] >= v60)
  {
    v61 = v159[1];
  }

  else
  {
    v61 = &v10[v148];
  }

  if (v61 < v10)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v11 == v61)
  {
    goto LABEL_61;
  }

  v149 = v6;
  v62 = *v159;
  result = sub_23328CF0C();
  v63 = result;
  v64 = *(result - 8);
  v65 = v64[2];
  v165 = v64 + 2;
  v166 = v65;
  v67 = v64[8];
  v66 = v64[9];
  v162 = v62;
  v163 = (v64 + 1);
  v68 = v62 + v66 * (v11 - 1);
  v160 = -v66;
  v161 = (v64 + 4);
  v151 = v10;
  v152 = v66;
  v69 = &v10[-v11];
  v70 = v62 + v11 * v66;
  v153 = v61;
  v164 = v67;
LABEL_50:
  v158 = v11;
  v154 = v70;
  v155 = v69;
  v5 = v69;
  v156 = v68;
  while (1)
  {
    v167 = v5;
    v169 = &v147;
    v72 = MEMORY[0x28223BE20](result);
    v5 = &v147 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = v166;
    v74 = (v166)(v5, v70, v63, v72);
    v168 = &v147;
    v75 = MEMORY[0x28223BE20](v74);
    (v73)(v5, v68, v63, v75);
    v76 = v63;
    v77 = sub_23328CEAC();
    v79 = v78;
    if (v77 == sub_23328CEAC() && v79 == v80)
    {

      v71 = *v163;
      (*v163)(v5, v76);
      result = v71(v5, v76);
      v63 = v76;
LABEL_48:
      v67 = v164;
LABEL_49:
      v11 = v158 + 1;
      v68 = v156 + v152;
      v69 = v155 - 1;
      v70 = v154 + v152;
      if ((v158 + 1) == v153)
      {
        v11 = v153;
        v6 = v149;
        v9 = v157;
        v10 = v151;
        goto LABEL_61;
      }

      goto LABEL_50;
    }

    v82 = sub_23328E54C();

    v83 = *v163;
    (*v163)(v5, v76);
    result = v83(v5, v76);
    v63 = v76;
    if ((v82 & 1) == 0)
    {
      goto LABEL_48;
    }

    v67 = v164;
    v84 = v167;
    if (!v162)
    {
      break;
    }

    v85 = MEMORY[0x28223BE20](result);
    v86 = *v161;
    (*v161)(&v147 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v70, v63, v85);
    swift_arrayInitWithTakeFrontToBack();
    result = v86(v68, &v147 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v63);
    v68 += v160;
    v70 += v160;
    v87 = __CFADD__(v84, 1);
    v5 = v84 + 1;
    if (v87)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}