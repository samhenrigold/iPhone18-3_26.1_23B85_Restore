uint64_t _s31TextToSpeechVoiceBankingSupport010TTSVBCloudD8SampleMOC11findOrFetch8sampleID05voiceN03mocACSgSS_10Foundation4UUIDVSo22NSManagedObjectContextCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_233297B40;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2331527DC();
  *(v7 + 32) = 0x4449656C706D6173;
  *(v7 + 40) = 0xE800000000000000;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  strcpy((v7 + 112), "voice.voiceID");
  *(v7 + 126) = -4864;

  v10 = sub_23328CE4C();
  *(v7 + 176) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v7 + 184) = sub_233152824();
  *(v7 + 152) = v10;
  v11 = sub_23328DDCC();
  v12 = type metadata accessor for TTSVBCloudVoiceSampleMO();
  static DSO<>.findOrFetch(in:matching:)(a4, v11, v12, &protocol witness table for TTSVBCloudVoiceSampleMO);
  v14 = v13;

  return v14;
}

uint64_t sub_2332251B0(uint64_t a1, uint64_t a2)
{
  result = sub_233225208(&qword_27DDE2A30, a2, type metadata accessor for TTSVBCloudVoiceSampleMO, MEMORY[0x277D85378]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_233225208(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2332252BC()
{
  result = *MEMORY[0x277CE6828];
  if (*MEMORY[0x277CE6828])
  {
    result = sub_23328DA9C();
    qword_280D3AC30 = result;
    qword_280D3AC28 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23322557C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_23328D6EC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = a3();
  return sub_23328D6FC();
}

uint64_t sub_2332256A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23328D6EC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_280D3AC20 != -1)
  {
    swift_once();
  }

  return sub_23328D6DC();
}

id sub_2332257A4()
{
  v0 = sub_23328D6EC();
  __swift_allocate_value_buffer(v0, qword_27DDFB0A8);
  __swift_project_value_buffer(v0, qword_27DDFB0A8);
  result = AXLogTemp();
  if (result)
  {
    return sub_23328D6FC();
  }

  __break(1u);
  return result;
}

uint64_t sub_23322582C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_23328D6EC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2332258C4()
{
  v0 = sub_23328D6EC();
  __swift_allocate_value_buffer(v0, qword_27DDFB0C8);
  __swift_project_value_buffer(v0, qword_27DDFB0C8);
  return sub_23328D6DC();
}

uint64_t sub_233225968(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_23328D6EC();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static TTSVBLog.liveSpeech.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D6EC();
  v3 = __swift_project_value_buffer(v2, qword_27DDFB0C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TTSVBLog.liveSpeech.setter(uint64_t a1)
{
  if (qword_27DDFB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D6EC();
  v3 = __swift_project_value_buffer(v2, qword_27DDFB0C8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TTSVBLog.liveSpeech.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DDFB0C0 != -1)
  {
    swift_once();
  }

  v1 = sub_23328D6EC();
  __swift_project_value_buffer(v1, qword_27DDFB0C8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_233225C04@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D6EC();
  v3 = __swift_project_value_buffer(v2, qword_27DDFB0C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233225CC4(uint64_t a1)
{
  if (qword_27DDFB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D6EC();
  v3 = __swift_project_value_buffer(v2, qword_27DDFB0C8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t TTSVBVoiceStatus.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x646573756150;
      }

      if (a1 == 7)
      {
        return 0x7964616552;
      }

      return 0x6E776F6E6B6E55;
    }

    if (a1 == 4)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0x676E696E69617254;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x616974696E696E55;
      }

      if (a1 == 1)
      {
        return 0xD000000000000016;
      }

      return 0x6E776F6E6B6E55;
    }

    if (a1 == 2)
    {
      return 0xD000000000000016;
    }

    else
    {
      return 0xD000000000000014;
    }
  }
}

uint64_t TTSVBVoiceStatus.localizedTitle.getter(uint64_t a1)
{
  v1 = sub_23328D95C();
  v2 = TTSVBSupportLocString(v1);

  v3 = sub_23328D98C();
  return v3;
}

uint64_t sub_2332261B0()
{
  v1 = *v0;
  sub_23328E61C();
  MEMORY[0x23839C380](v1);
  return sub_23328E66C();
}

uint64_t sub_2332261F8(uint64_t a1)
{
  v2 = *v1;
  sub_23328E61C();
  MEMORY[0x23839C380](v2);
  return sub_23328E66C();
}

uint64_t sub_233226244(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSVBVoiceStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233226288()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08A58);
  __swift_project_value_buffer(v3, qword_27DE08A58);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_2332263FC()
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
  v7 = (*(*v2 + 336) + **(*v2 + 336));
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23322660C;

  return v7(v4);
}

uint64_t sub_23322660C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2332279CC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2332267E4(uint64_t a1)
{
  v2 = sub_233226D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233226820(uint64_t a1)
{
  v2 = sub_233226D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23322685C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33D0, qword_23329D8E0);
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
  v14 = _s18DeleteModelCommandVMa(0);
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
  sub_233226D20();
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
    sub_233226E34(v16, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_233226D74(v16);
}

uint64_t _s18DeleteModelCommandVMa(uint64_t a1)
{
  result = qword_27DDFB670;
  if (!qword_27DDFB670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_233226D20()
{
  result = qword_27DDFB368[0];
  if (!qword_27DDFB368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFB368);
  }

  return result;
}

uint64_t sub_233226D74(uint64_t a1)
{
  v2 = _s18DeleteModelCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_233226DD0()
{
  result = qword_27DDE2D40;
  if (!qword_27DDE2D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE2D00, &qword_23329AB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2D40);
  }

  return result;
}

uint64_t sub_233226E34(uint64_t a1, uint64_t a2)
{
  v4 = _s18DeleteModelCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233226F20()
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
  v7 = (*(*v2 + 336) + **(*v2 + 336));
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_233227130;

  return v7(v4);
}

uint64_t sub_233227130()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_233227308, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_233227308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2332273A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233227590(&qword_27DDE33D8, &unk_23329D918);
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23322749C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFB360 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A58);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233227590(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s18DeleteModelCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2332275D4()
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

void sub_233227848(uint64_t a1)
{
  sub_2331D6598(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2332278C8()
{
  result = qword_27DDFB780[0];
  if (!qword_27DDFB780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFB780);
  }

  return result;
}

unint64_t sub_233227920()
{
  result = qword_27DDFB890;
  if (!qword_27DDFB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFB890);
  }

  return result;
}

unint64_t sub_233227978()
{
  result = qword_27DDFB898[0];
  if (!qword_27DDFB898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFB898);
  }

  return result;
}

uint64_t sub_2332279D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08A70);
  __swift_project_value_buffer(v3, qword_27DE08A70);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s27GenerateTrainingDataCommandVMa(uint64_t a1)
{
  result = qword_27DDFBBB0;
  if (!qword_27DDFBBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_233227B98()
{
  sub_23328D20C();
  v1 = sub_23328CC9C();
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = swift_task_alloc();
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[14] = *v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v0[15] = v0[3];
  _s27GenerateTrainingDataCommandVMa(0);
  sub_23328D5CC();
  v0[16] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  v0[17] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  sub_23328D5CC();
  v5 = *(*v3 + 504) + **(*v3 + 504);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_233227E88;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_233227E88()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_233228050;
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v3 = sub_233227FEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_233227FEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233228050()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2332280E4()
{
  v1 = 0x4449656C61636F6CLL;
  v2 = 0x44496563696F76;
  if (*v0 != 2)
  {
    v2 = 0x6F43657361726870;
  }

  if (*v0)
  {
    v1 = 0x7954747069726373;
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

uint64_t sub_23322816C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_233229918(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2332281A0(uint64_t a1)
{
  v2 = sub_2332290C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2332281DC(uint64_t a1)
{
  v2 = sub_2332290C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233228218@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23328D53C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23328D4DC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v32 = 0x53552D6E65;
  v33 = 0xE500000000000000;
  sub_23328D3BC();
  v10 = sub_23328D3CC();
  v11 = *(v10 - 8);
  v31 = *(v11 + 56);
  v29 = v11 + 56;
  v27 = v10;
  v31(v9, 0, 1, v10);
  v12 = sub_23328D42C();
  v13 = *(v12 - 8);
  v30 = *(v13 + 56);
  v28 = v13 + 56;
  v26 = v12;
  v30(v6, 1, 1, v12);
  sub_23328D4CC();
  sub_23328D52C();
  v25 = a1;
  sub_23328D5EC();
  TrainingDataCommandVMa = _s27GenerateTrainingDataCommandVMa(0);
  v23 = *(TrainingDataCommandVMa + 20);
  v24 = TrainingDataCommandVMa;
  v15 = TrainingDataCommandVMa;
  v32 = 0x746C7561666564;
  v33 = 0xE700000000000000;
  sub_23328D3BC();
  v16 = v10;
  v17 = v31;
  v31(v9, 0, 1, v16);
  v18 = v30;
  v30(v6, 1, 1, v12);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v23 = *(v15 + 24);
  sub_23328D3BC();
  v19 = v27;
  v17(v9, 0, 1, v27);
  v20 = v26;
  v18(v6, 1, 1, v26);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5BC();
  sub_23328D3BC();
  v31(v9, 0, 1, v19);
  v30(v6, 1, 1, v20);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5DC();
}

uint64_t sub_2332286BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v46 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  v45 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v45 - v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v45 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v45 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3418, &unk_23329DB90);
  v53 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v63 = &v45 - v7;
  v8 = sub_23328D53C();
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23328D4DC();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - v17;
  v19 = _s27GenerateTrainingDataCommandVMa(0) - 8;
  v70 = v19;
  MEMORY[0x28223BE20](v19);
  v74 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = 0x53552D6E65;
  v73 = 0xE500000000000000;
  sub_23328D3BC();
  v68 = sub_23328D3CC();
  v21 = *(v68 - 8);
  v62 = *(v21 + 56);
  v22 = v21 + 56;
  v62(v18, 0, 1, v68);
  v66 = v22;
  v67 = sub_23328D42C();
  v23 = *(v67 - 8);
  v24 = *(v23 + 56);
  v61 = v23 + 56;
  v24(v15, 1, 1, v67);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v65 = *(v19 + 28);
  v72 = 0x746C7561666564;
  v73 = 0xE700000000000000;
  sub_23328D3BC();
  v25 = v68;
  v26 = v62;
  v62(v18, 0, 1, v68);
  v27 = v67;
  v60 = v24;
  v24(v15, 1, 1, v67);
  v59 = v12;
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v28 = *(v70 + 32);
  sub_23328D3BC();
  v26(v18, 0, 1, v25);
  v24(v15, 1, 1, v27);
  sub_23328D4CC();
  sub_23328D52C();
  v47 = v28;
  sub_23328D5BC();
  v29 = *(v70 + 36);
  sub_23328D3BC();
  v30 = v71;
  v26(v18, 0, 1, v68);
  v60(v15, 1, 1, v67);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_2332290C0();
  v31 = v64;
  v32 = v63;
  sub_23328E68C();
  if (v31)
  {
    v38 = v74;
    __swift_destroy_boxed_opaque_existential_0(v71);
    v44 = v38;
  }

  else
  {
    v70 = v29;
    v34 = v54;
    v33 = v55;
    LOBYTE(v72) = 0;
    sub_233229170(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70);
    sub_23328E41C();
    v35 = *(v33 + 40);
    v35(v74, v56, v57);
    LOBYTE(v72) = 1;
    sub_23328E41C();
    v35(&v74[v65], v34, v57);
    LOBYTE(v72) = 2;
    sub_233229170(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570);
    v36 = v51;
    v37 = v52;
    sub_23328E41C();
    (*(v48 + 40))(&v74[v47], v36, v37);
    LOBYTE(v72) = 3;
    sub_233229170(&qword_27DDE3430, &qword_27DDE3410, &qword_23329DB80);
    v40 = v49;
    v41 = v50;
    v42 = v58;
    sub_23328E41C();
    (*(v53 + 8))(v32, v42);
    v43 = v74;
    (*(v45 + 40))(&v74[v70], v40, v41);
    sub_2332291C4(v43, v46);
    __swift_destroy_boxed_opaque_existential_0(v71);
    v44 = v43;
  }

  return sub_233229114(v44);
}

unint64_t sub_2332290C0()
{
  result = qword_27DDFB928[0];
  if (!qword_27DDFB928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFB928);
  }

  return result;
}

uint64_t sub_233229114(uint64_t a1)
{
  TrainingDataCommandVMa = _s27GenerateTrainingDataCommandVMa(0);
  (*(*(TrainingDataCommandVMa - 8) + 8))(a1, TrainingDataCommandVMa);
  return a1;
}

uint64_t sub_233229170(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2332291C4(uint64_t a1, uint64_t a2)
{
  TrainingDataCommandVMa = _s27GenerateTrainingDataCommandVMa(0);
  (*(*(TrainingDataCommandVMa - 8) + 16))(a2, a1, TrainingDataCommandVMa);
  return a2;
}

uint64_t sub_23322925C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233227B78();
}

uint64_t sub_23322931C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233229A88(&qword_27DDE3478, &unk_23329DBA0);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_233229418@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFB920 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A70);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

void sub_233229550(uint64_t a1)
{
  sub_23322961C();
  if (v1 <= 0x3F)
  {
    sub_23322966C(319, &qword_27DDE3460, &qword_27DDE1A90, &unk_233290970);
    if (v2 <= 0x3F)
    {
      sub_23322966C(319, &qword_27DDE3468, &qword_27DDE3470, &qword_2332A2200);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23322961C()
{
  if (!qword_27DDE3458)
  {
    v0 = sub_23328D60C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3458);
    }
  }
}

void sub_23322966C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23328D60C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s27GenerateTrainingDataCommandV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s27GenerateTrainingDataCommandV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_233229814()
{
  result = qword_27DDFBCC0[0];
  if (!qword_27DDFBCC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFBCC0);
  }

  return result;
}

unint64_t sub_23322986C()
{
  result = qword_27DDFBDD0;
  if (!qword_27DDFBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFBDD0);
  }

  return result;
}

unint64_t sub_2332298C4()
{
  result = qword_27DDFBDD8[0];
  if (!qword_27DDFBDD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFBDD8);
  }

  return result;
}

uint64_t sub_233229918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954747069726373 && a2 == 0xEA00000000006570 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496563696F76 && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43657361726870 && a2 == 0xEB00000000746E75)
  {

    return 3;
  }

  else
  {
    v6 = sub_23328E54C();

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

uint64_t sub_233229A88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s27GenerateTrainingDataCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233229ACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08A88);
  __swift_project_value_buffer(v3, qword_27DE08A88);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_233229C1C()
{
  v1[2] = v0;
  v2 = sub_23328D1EC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233229CDC, 0, 0);
}

uint64_t sub_233229CDC()
{
  sub_23328D20C();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_233237A1C();
  v5 = *v4;
  v0[6] = *v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3480, &qword_23329DDF0);
  sub_23328D54C();
  v6 = sub_23328D1DC();
  (*(v2 + 8))(v1, v3);
  v9 = (*(*v5 + 264) + **(*v5 + 264));
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_233229ECC;

  return v9(v6 & 1);
}

uint64_t sub_233229ECC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23322B1D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23322A044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_23322A0C8(uint64_t a1)
{
  v2 = sub_23322A51C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23322A104(uint64_t a1)
{
  v2 = sub_23322A51C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23322A140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3480, &qword_23329DDF0);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3490, qword_23329DDF8);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_23328D47C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _s16CloudSyncCommandVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D3CC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_23328D46C();
  sub_23328D1EC();
  sub_23322AE10(&qword_27DDE3488, MEMORY[0x277CE66D8], MEMORY[0x277CE66D0]);
  sub_23328D56C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23322A51C();
  v17 = v24;
  sub_23328E68C();
  if (!v17)
  {
    v18 = v22;
    sub_23322A5CC();
    sub_23328E41C();
    (*(v23 + 8))(v8, v6);
    (*(v18 + 40))(v15, v5, v3);
    sub_23322A630(v15, v21);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23322A570(v15);
}

uint64_t _s16CloudSyncCommandVMa(uint64_t a1)
{
  result = qword_27DDFC170;
  if (!qword_27DDFC170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23322A51C()
{
  result = qword_27DDFBE68[0];
  if (!qword_27DDFBE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFBE68);
  }

  return result;
}

uint64_t sub_23322A570(uint64_t a1)
{
  v2 = _s16CloudSyncCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23322A5CC()
{
  result = qword_27DDE3498;
  if (!qword_27DDE3498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3480, &qword_23329DDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3498);
  }

  return result;
}

uint64_t sub_23322A630(uint64_t a1, uint64_t a2)
{
  v4 = _s16CloudSyncCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23322A724()
{
  v1[2] = v0;
  v2 = sub_23328D1EC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23322A7E4, 0, 0);
}

uint64_t sub_23322A7E4()
{
  sub_23328D20C();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_233237A1C();
  v5 = *v4;
  v0[6] = *v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3480, &qword_23329DDF0);
  sub_23328D54C();
  v6 = sub_23328D1DC();
  (*(v2 + 8))(v1, v3);
  v9 = (*(*v5 + 264) + **(*v5 + 264));
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23322A9D4;

  return v9(v6 & 1);
}

uint64_t sub_23322A9D4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23322AB38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23322AB38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23322ABE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23322AE10(&qword_27DDE34A0, _s16CloudSyncCommandVMa, &unk_23329DE30);
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23322AD08@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFBE60 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A88);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23322AE10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23322AE58()
{
  v0 = sub_23328D47C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_23328D3CC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_23328D46C();
  sub_23328D1EC();
  sub_23322AE10(&qword_27DDE3488, MEMORY[0x277CE66D8], MEMORY[0x277CE66D0]);
  return sub_23328D56C();
}

void sub_23322AFF4(uint64_t a1)
{
  sub_23322B060(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23322B060(uint64_t a1)
{
  if (!qword_27DDE34C8)
  {
    sub_23328D1EC();
    v1 = sub_23328D5AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDE34C8);
    }
  }
}

unint64_t sub_23322B0CC()
{
  result = qword_27DDFC280[0];
  if (!qword_27DDFC280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC280);
  }

  return result;
}

unint64_t sub_23322B124()
{
  result = qword_27DDFC390;
  if (!qword_27DDFC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFC390);
  }

  return result;
}

unint64_t sub_23322B17C()
{
  result = qword_27DDFC398[0];
  if (!qword_27DDFC398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC398);
  }

  return result;
}

uint64_t sub_23322B1D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08AA0);
  __swift_project_value_buffer(v3, qword_27DE08AA0);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s16DeleteAllCommandVMa(uint64_t a1)
{
  result = qword_27DDFC730;
  if (!qword_27DDFC730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23322B390()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 24) = *v1;
  _s16DeleteAllCommandVMa(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  *(v0 + 49) = (*(v0 + 48) & 1) == 0;
  v5 = (*(*v2 + 352) + **(*v2 + 352));
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_23322B570;

  return v5(v0 + 49);
}

uint64_t sub_23322B570()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23322B6B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23322B6CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (v4 & 1) == 0 && (_s16DeleteAllCommandVMa(0), sub_23328D54C(), v3 != 1) || (_s16DeleteAllCommandVMa(0), result = sub_23328D54C(), v2 == 1) && (result = sub_23328D54C(), (v1))
  {
    sub_23328D4AC();
    sub_23322C27C(&qword_27DDE2D30, MEMORY[0x277CEEA40], MEMORY[0x277CEEA48]);
    swift_allocError();
    sub_23328D4BC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23322B814()
{
  if (*v0)
  {
    return 0x736563696F76;
  }

  else
  {
    return 0x736C65646F6DLL;
  }
}

uint64_t sub_23322B840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736563696F76 && a2 == 0xE600000000000000)
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

uint64_t sub_23322B914(uint64_t a1)
{
  v2 = sub_23322BDD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23322B950(uint64_t a1)
{
  v2 = sub_23322BDD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23322B98C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v30 = &v25 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE34D0, qword_23329E078);
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v25 - v6;
  v8 = sub_23328D4DC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = _s16DeleteAllCommandVMa(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D3CC();
  v17 = *(*(v16 - 8) + 56);
  v17(v11, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D58C();
  v18 = *(v13 + 28);
  v17(v11, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D58C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23322BDD8();
  v19 = v32;
  sub_23328E68C();
  if (!v19)
  {
    v32 = v18;
    v20 = v26;
    v34 = 0;
    sub_233126AC4();
    v21 = v28;
    sub_23328E41C();
    v22 = v30;
    v30 = *(v20 + 40);
    (v30)(v15, v22, v21);
    v33 = 1;
    v23 = v31;
    sub_23328E41C();
    (*(v27 + 8))(v7, v23);
    (v30)(&v15[v32], v29, v21);
    sub_23322BE88(v15, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23322BE2C(v15);
}

unint64_t sub_23322BDD8()
{
  result = qword_27DDFC428[0];
  if (!qword_27DDFC428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC428);
  }

  return result;
}

uint64_t sub_23322BE2C(uint64_t a1)
{
  v2 = _s16DeleteAllCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23322BE88(uint64_t a1, uint64_t a2)
{
  v4 = _s16DeleteAllCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23322BF7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23322B370();
}

uint64_t sub_23322C050(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23322C27C(&qword_27DDE34D8, _s16DeleteAllCommandVMa, &unk_23329E0B0);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23322C174@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFC420 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08AA0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23322C27C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23322C2C4()
{
  v0 = sub_23328D4DC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D3CC();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  sub_23328D4CC();
  sub_23328D58C();
  v5(v3, 1, 1, v4);
  sub_23328D4CC();
  return sub_23328D58C();
}

void sub_23322C488(uint64_t a1)
{
  sub_23316E7B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23322C508()
{
  result = qword_27DDFC840[0];
  if (!qword_27DDFC840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC840);
  }

  return result;
}

unint64_t sub_23322C560()
{
  result = qword_27DDFC950;
  if (!qword_27DDFC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFC950);
  }

  return result;
}

unint64_t sub_23322C5B8()
{
  result = qword_27DDFC958[0];
  if (!qword_27DDFC958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC958);
  }

  return result;
}

uint64_t sub_23322C60C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08AB8);
  __swift_project_value_buffer(v3, qword_27DE08AB8);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s25ImportTrainingDataCommandVMa(uint64_t a1)
{
  result = qword_27DDFCCF0;
  if (!qword_27DDFCCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23322C7B4()
{
  v1[6] = v0;
  v2 = sub_23328D23C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23322C874, 0, 0);
}

uint64_t sub_23322C874()
{
  sub_23328D20C();
  v1 = v0[8];
  v2 = v0[9];
  v14 = v0[7];
  v3 = sub_23328CE8C();
  v0[10] = v3;
  v0[11] = *(v3 - 8);
  v16 = swift_task_alloc();
  v0[12] = v16;
  v4 = sub_233237A1C();
  v5 = *v4;
  v0[13] = *v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v6 = v0[3];
  v13 = v0[2];
  v0[14] = v6;
  _s25ImportTrainingDataCommandVMa(0);
  sub_23328D5CC();
  v7 = v0[4];
  v8 = v0[5];
  v0[15] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  sub_23328D5CC();
  v9 = sub_23328CC9C();
  v0[16] = v9;
  v0[17] = *(v9 - 8);
  v10 = swift_task_alloc();
  v0[18] = v10;
  MEMORY[0x23839AF80]();
  (*(v1 + 8))(v2, v14);
  v15 = (*(*v5 + 288) + **(*v5 + 288));
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_23322CBB0;

  return v15(v16, v13, v6, v7, v8, v10);
}

uint64_t sub_23322CBB0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);

  if (v0)
  {
    v3 = sub_23322CE58;
  }

  else
  {

    v3 = sub_23322CD80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23322CD80(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  sub_23328D30C();
  sub_23328CE3C();
  sub_23328D27C();

  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_23322CE58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23322CED0()
{
  v1 = 1635017060;
  if (*v0 != 1)
  {
    v1 = 0x4449656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23322CF1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23322E42C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23322CF44(uint64_t a1)
{
  v2 = sub_23322DC04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23322CF80(uint64_t a1)
{
  v2 = sub_23322DC04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23322CFBC@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_23328D53C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23328D4DC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  sub_23328D3BC();
  v16 = sub_23328D3CC();
  v9 = *(*(v16 - 8) + 56);
  v9(v8, 0, 1, v16);
  v15 = v9;
  v10 = sub_23328D42C();
  v11 = *(*(v10 - 8) + 56);
  v11(v5, 1, 1, v10);
  v14 = v11;
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v13[1] = *(_s25ImportTrainingDataCommandVMa(0) + 20);
  sub_23328D3BC();
  v9(v8, 0, 1, v16);
  v11(v5, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D23C();
  sub_23322E0A8(&qword_27DDE3508, MEMORY[0x277CE66E8], MEMORY[0x277CE66E0]);
  sub_23328D5FC();
  v18 = 0x53552D6E65;
  v19 = 0xE500000000000000;
  sub_23328D3BC();
  v15(v8, 0, 1, v16);
  v14(v5, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5EC();
}

uint64_t sub_23322D3B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v39 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v39 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x28223BE20](v3);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v39 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3510, qword_23329E2F8);
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v55 = &v39 - v8;
  v9 = sub_23328D53C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23328D4DC();
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - v16;
  v59 = _s25ImportTrainingDataCommandVMa(0) - 8;
  MEMORY[0x28223BE20](v59);
  v62 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v19 = sub_23328D3CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v58 = v20 + 56;
  v52 = v19;
  v21(v17, 0, 1, v19);
  v53 = v21;
  v22 = sub_23328D42C();
  v50 = *(*(v22 - 8) + 56);
  v51 = v22;
  v50(v14, 1, 1, v22);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v23 = *(v59 + 28);
  sub_23328D3BC();
  v21(v17, 0, 1, v19);
  v24 = v14;
  v25 = v14;
  v26 = v50;
  v50(v24, 1, 1, v22);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D23C();
  sub_23322E0A8(&qword_27DDE3508, MEMORY[0x277CE66E8], MEMORY[0x277CE66E0]);
  v40 = v23;
  v27 = v62;
  sub_23328D5FC();
  v28 = *(v59 + 32);
  v60 = 0x53552D6E65;
  v61 = 0xE500000000000000;
  sub_23328D3BC();
  v53(v17, 0, 1, v52);
  v26(v25, 1, 1, v51);
  v29 = v28;
  sub_23328D4CC();
  sub_23328D52C();
  v30 = v56;
  sub_23328D5EC();
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_23322DC04();
  v31 = v55;
  v32 = v57;
  sub_23328E68C();
  if (!v32)
  {
    v33 = v47;
    LOBYTE(v60) = 0;
    sub_233229170(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70);
    v34 = v46;
    sub_23328E41C();
    v59 = *(v33 + 40);
    (v59)(v27, v48, v34);
    LOBYTE(v60) = 1;
    sub_233229170(&qword_27DDE3518, &qword_27DDE3500, &qword_23329E2E8);
    v35 = v43;
    sub_23328E41C();
    v47 = v33 + 40;
    (*(v41 + 40))(&v62[v40], v44, v35);
    LOBYTE(v60) = 2;
    v36 = v42;
    v37 = v49;
    sub_23328E41C();
    (*(v45 + 8))(v31, v37);
    v27 = v62;
    (v59)(&v62[v29], v36, v34);
    sub_23322DCB4(v27, v39);
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  return sub_23322DC58(v27);
}

unint64_t sub_23322DC04()
{
  result = qword_27DDFC9E8[0];
  if (!qword_27DDFC9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC9E8);
  }

  return result;
}

uint64_t sub_23322DC58(uint64_t a1)
{
  v2 = _s25ImportTrainingDataCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23322DCB4(uint64_t a1, uint64_t a2)
{
  v4 = _s25ImportTrainingDataCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23322DDA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23322C7B4();
}

uint64_t sub_23322DE7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23322E0A8(&qword_27DDE3520, _s25ImportTrainingDataCommandVMa, &unk_23329E330);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23322DFA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFC9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08AB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23322E0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23322E0F4()
{
  v0 = sub_23328D23C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  sub_23328D5CC();
  sub_23328D21C();
  return (*(v1 + 8))(v3, v0);
}

void sub_23322E234(uint64_t a1)
{
  sub_23322961C();
  if (v1 <= 0x3F)
  {
    sub_23322E2BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23322E2BC(uint64_t a1)
{
  if (!qword_27DDE3548)
  {
    sub_23328D23C();
    v1 = sub_23328D60C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDE3548);
    }
  }
}

unint64_t sub_23322E328()
{
  result = qword_27DDFCE00[0];
  if (!qword_27DDFCE00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFCE00);
  }

  return result;
}

unint64_t sub_23322E380()
{
  result = qword_27DDFCF10;
  if (!qword_27DDFCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFCF10);
  }

  return result;
}

unint64_t sub_23322E3D8()
{
  result = qword_27DDFCF18[0];
  if (!qword_27DDFCF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFCF18);
  }

  return result;
}

uint64_t sub_23322E42C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23322E544()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08AD0);
  __swift_project_value_buffer(v3, qword_27DE08AD0);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s25ExportVoicePackageCommandVMa(uint64_t a1)
{
  result = qword_27DDFD2B0;
  if (!qword_27DDFD2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23322E6EC()
{
  v0 = sub_23328D53C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23328D4DC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_23328E24C();

  v18 = 0xD000000000000025;
  v19 = 0x80000002332ABC70;
  v8 = sub_23328CC9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328CB8C();
  v12 = sub_23328CC6C();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x23839B7E0](v12, v14);

  v15 = sub_23328D3CC();
  sub_233231400(&qword_27DDE2D20, MEMORY[0x277CEEA28], MEMORY[0x277CEEA30]);
  sub_23328E57C();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = sub_23328D42C();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5BC();
}

uint64_t sub_23322EA78()
{
  sub_23328D20C();
  v1 = sub_23328CC9C();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v4 = swift_task_alloc();
  v0[8] = _s25ExportVoicePackageCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  if (v0[3])
  {

    sub_23328CB7C();
    swift_bridgeObjectRelease_n();
    (*(v2 + 56))(v4, 0, 1, v1);
    (*(v2 + 32))(v3, v4, v1);
  }

  else
  {
    (*(v2 + 56))(v4, 1, 1, v1);
    sub_23328CB8C();
    if ((*(v2 + 48))(v4, 1, v1) != 1)
    {
      sub_233121E04(v4, &qword_27DDE19A0, &unk_233290360);
    }
  }

  v5 = v0[4];

  v6 = sub_233237A1C();
  v0[9] = v6;
  v7 = *v6;
  v0[10] = *v6;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *(v8 + 16) = v5;
  v9 = *(*v7 + 192);

  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_23322EDF4;

  return v12(sub_23322FC20, v8);
}

uint64_t sub_23322EDF4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_23322F2E0;
  }

  else
  {
    v4 = sub_23322EF4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23322EF4C()
{
  v1 = *(v0 + 72);
  v2 = *v1;
  *(v0 + 120) = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v3 = *(v0 + 144);
  sub_23328D54C();
  v4 = *(v0 + 145);
  v9 = (*(*v2 + 312) + **(*v2 + 312));
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_23322F0FC;
  v6 = *(v0 + 104);
  v7 = *(v0 + 56);

  return v9(v6, v7, v3, v4);
}

uint64_t sub_23322F0FC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_23322F360;
  }

  else
  {

    v2 = sub_23322F260;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23322F260()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23322F2E0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23322F360()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23322F3E0(uint64_t *a1, uint64_t a2)
{
  v4 = _s25ExportVoicePackageCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (v58)
  {
    goto LABEL_2;
  }

  v51 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3580, &unk_23329E820);
  v56 = v47;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v47 - v9;
  v11 = *(type metadata accessor for TTSVBVoice(0) + 20);
  v12 = sub_23328CE8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v52 = a1;
  v14(v47 - v9, a1 + v11, v12);
  v48 = v12;
  v49 = v13;
  v15 = 1;
  (*(v13 + 56))(v47 - v9, 0, 1, v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v57 = *(v16 - 8);
  v17 = *(v57 + 56);
  v18 = v17(v47 - v9, 0, 1, v16);
  v55 = v47;
  MEMORY[0x28223BE20](v18);
  v19 = v47 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  v53 = a2;
  if (v59)
  {

    sub_23328CE2C();
    swift_bridgeObjectRelease_n();
    v15 = 0;
  }

  v17(v47 - v9, v15, 1, v16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3588, &qword_23329E830);
  v54 = v47;
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v47 - v21;
  v24 = *(v23 + 56);
  sub_233121D34(v10, v47 - v21, &qword_27DDE3580, &unk_23329E820);
  sub_233121D34(v19, &v22[v24], &qword_27DDE3580, &unk_23329E820);
  v25 = *(v57 + 48);
  v26 = v25(v22, 1, v16);
  if (v26 == 1)
  {
    sub_233121E04(v19, &qword_27DDE3580, &unk_23329E820);
    sub_233121E04(v10, &qword_27DDE3580, &unk_23329E820);
    if (v25(&v22[v24], 1, v16) == 1)
    {
      sub_233121E04(v22, &qword_27DDE3580, &unk_23329E820);
      v5 = 1;
      return v5 & 1;
    }

    goto LABEL_11;
  }

  MEMORY[0x28223BE20](v26);
  v27 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233121D34(v22, v27, &qword_27DDE3580, &unk_23329E820);
  if (v25(&v22[v24], 1, v16) == 1)
  {
    sub_233121E04(v19, &qword_27DDE3580, &unk_23329E820);
    sub_233121E04(v10, &qword_27DDE3580, &unk_23329E820);
    sub_233121E04(v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27DDE19B0, &qword_233290370);
LABEL_11:
    sub_233121E04(v22, &qword_27DDE3588, &qword_23329E830);
LABEL_12:
    v28 = *v52;
    v29 = v52[1];
    sub_23328D5CC();
    if (!v59)
    {
      v5 = 0;
      return v5 & 1;
    }

    if (v28 != v58 || v59 != v29)
    {
      v5 = sub_23328E54C();

      return v5 & 1;
    }

    goto LABEL_2;
  }

  v47[3] = v47;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3590, &qword_23329E838);
  v47[2] = v47;
  MEMORY[0x28223BE20](v30 - 8);
  v32 = v47 - v31;
  v34 = *(v33 + 56);
  sub_233154860(v27, v47 - v31);
  sub_233154860(&v22[v24], &v32[v34]);
  v35 = v48;
  v36 = *(v49 + 48);
  v37 = v36(v32, 1, v48);
  if (v37 == 1)
  {
    sub_233121E04(v19, &qword_27DDE3580, &unk_23329E820);
    sub_233121E04(v10, &qword_27DDE3580, &unk_23329E820);
    if (v36(&v32[v34], 1, v35) == 1)
    {
      sub_233121E04(v32, &qword_27DDE19B0, &qword_233290370);
      v38 = 1;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  MEMORY[0x28223BE20](v37);
  v57 = v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233121D34(v32, v57, &qword_27DDE19B0, &qword_233290370);
  v40 = v36(&v32[v34], 1, v35);
  if (v40 == 1)
  {
    sub_233121E04(v19, &qword_27DDE3580, &unk_23329E820);
    sub_233121E04(v10, &qword_27DDE3580, &unk_23329E820);
    (*(v49 + 8))(v57, v35);
LABEL_23:
    sub_233121E04(v32, &qword_27DDE3590, &qword_23329E838);
    v38 = 0;
    goto LABEL_25;
  }

  v47[0] = v47;
  v47[1] = v47;
  v41 = v49;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = v47 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 32))(v44, &v32[v34], v35, v42);
  sub_2332319F8();
  v45 = v35;
  v38 = sub_23328D90C();
  v46 = *(v41 + 8);
  v46(v44, v45);
  sub_233121E04(v19, &qword_27DDE3580, &unk_23329E820);
  sub_233121E04(v10, &qword_27DDE3580, &unk_23329E820);
  v46(v57, v45);
  sub_233121E04(v32, &qword_27DDE19B0, &qword_233290370);
LABEL_25:
  sub_233121E04(v22, &qword_27DDE3580, &unk_23329E820);
  if ((v38 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_2:
  v5 = 1;
  return v5 & 1;
}

uint64_t sub_23322FC28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  if (v1)
  {

    _s25ExportVoicePackageCommandVMa(0);
    sub_23328D5CC();

    sub_23328D4AC();
    sub_233231400(&qword_27DDE2D30, MEMORY[0x277CEEA40], MEMORY[0x277CEEA48]);
    swift_allocError();
    sub_23328D4BC();
    return swift_willThrow();
  }

  else
  {
    sub_23328D5CC();
    _s25ExportVoicePackageCommandVMa(0);
    sub_23328D5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    return sub_23328D55C();
  }
}

uint64_t sub_23322FDB4()
{
  v1 = *v0;
  v2 = 0x44496563696F76;
  v3 = 0x74757074756FLL;
  v4 = 0x73736572706D6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D614E6563696F76;
  if (v1 != 1)
  {
    v5 = 0x6563696F566C6C61;
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

uint64_t sub_23322FE74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2332317EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23322FEA8(uint64_t a1)
{
  v2 = sub_233230F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23322FEE4(uint64_t a1)
{
  v2 = sub_233230F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23322FF20@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_23328D47C();
  MEMORY[0x28223BE20](v1 - 8);
  v26 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23328D41C();
  MEMORY[0x28223BE20](v3 - 8);
  v25 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23328D53C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23328D4DC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  sub_23328D3BC();
  v13 = sub_23328D3CC();
  v14 = *(v13 - 8);
  v23 = *(v14 + 56);
  v24 = v14 + 56;
  v21 = v13;
  v23(v12, 0, 1, v13);
  v15 = sub_23328D42C();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5BC();
  v20[1] = *(_s25ExportVoicePackageCommandVMa(0) + 20);
  sub_23328D3BC();
  v17 = v23;
  v23(v12, 0, 1, v13);
  v16(v9, 1, 1, v15);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5BC();
  sub_23328D3BC();
  v18 = v21;
  v17(v12, 0, 1, v21);
  sub_23328D4CC();
  sub_23328D58C();
  sub_23322E6EC();
  sub_23328D40C();
  sub_23328D3BC();
  v17(v12, 0, 1, v18);
  sub_23328D4CC();
  sub_23328D45C();
  sub_23328D59C();
  sub_23328D3BC();
  v17(v12, 0, 1, v18);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_233230410@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v60 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = &v60 - v5;
  MEMORY[0x28223BE20](v6);
  v68 = &v60 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v60 - v10;
  MEMORY[0x28223BE20](v11);
  v72 = &v60 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3550, qword_23329E590);
  v70 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v82 = &v60 - v13;
  v14 = sub_23328D47C();
  MEMORY[0x28223BE20](v14 - 8);
  v81 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_23328D41C();
  MEMORY[0x28223BE20](v16 - 8);
  v80 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_23328D53C();
  MEMORY[0x28223BE20](v18 - 8);
  v77 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23328D4DC();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v60 - v25;
  v27 = _s25ExportVoicePackageCommandVMa(0) - 8;
  v86 = v27;
  MEMORY[0x28223BE20](v27);
  v85 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v29 = sub_23328D3CC();
  v30 = *(v29 - 8);
  v78 = *(v30 + 56);
  v79 = v30 + 56;
  v75 = v29;
  v78(v26, 0, 1, v29);
  v31 = sub_23328D42C();
  v76 = *(*(v31 - 8) + 56);
  (v76)(v23, 1, 1, v31);
  sub_23328D4CC();
  sub_23328D52C();
  v32 = v23;
  sub_23328D5BC();
  v33 = *(v27 + 28);
  sub_23328D3BC();
  v34 = v78;
  v78(v26, 0, 1, v29);
  (v76)(v32, 1, 1, v31);
  sub_23328D4CC();
  sub_23328D52C();
  v76 = v33;
  v35 = v85;
  sub_23328D5BC();
  v36 = v86;
  v37 = *(v86 + 32);
  sub_23328D3BC();
  v38 = v75;
  v39 = v34;
  v34(v26, 0, 1, v75);
  sub_23328D4CC();
  v77 = v37;
  sub_23328D58C();
  v63 = *(v36 + 36);
  v40 = v35;
  sub_23322E6EC();
  v41 = *(v36 + 40);
  sub_23328D40C();
  sub_23328D3BC();
  v39(v26, 0, 1, v38);
  sub_23328D4CC();
  sub_23328D45C();
  v61 = v41;
  sub_23328D59C();
  v42 = *(v86 + 44);
  sub_23328D3BC();
  v43 = v83;
  v39(v26, 0, 1, v38);
  sub_23328D4CC();
  v44 = v40;
  sub_23328D58C();
  v45 = v43;
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  sub_233230F5C();
  v46 = v82;
  v47 = v84;
  sub_23328E68C();
  if (v47)
  {
    v48 = v40;
  }

  else
  {
    v86 = v42;
    v49 = v69;
    v50 = v71;
    v92 = 0;
    sub_23315246C(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570, MEMORY[0x277CEEA68]);
    sub_23328E41C();
    v51 = *(v50 + 40);
    v51(v44, v72, v73);
    v91 = 1;
    sub_23328E41C();
    v51(&v76[v85], v49, v73);
    v90 = 2;
    v52 = sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0, MEMORY[0x277CEEA58]);
    v53 = v67;
    sub_23328E41C();
    v81 = v51;
    v84 = v52;
    v71 = v50 + 40;
    v54 = *(v66 + 40);
    v54(&v77[v85], v68, v53);
    v89 = 3;
    v55 = v65;
    sub_23328E41C();
    v80 = v54;
    v81(v85 + v63, v55, v73);
    v88 = 4;
    v57 = v64;
    sub_23328E41C();
    v58 = v70;
    v80(v85 + v61, v57, v53);
    v87 = 5;
    v59 = v74;
    sub_23328E41C();
    (*(v58 + 8))(v46, v59);
    v48 = v85;
    v80(v85 + v86, v62, v53);
    sub_23323100C(v48, v60);
  }

  __swift_destroy_boxed_opaque_existential_0(v45);
  return sub_233230FB0(v48);
}

unint64_t sub_233230F5C()
{
  result = qword_27DDFCFA8[0];
  if (!qword_27DDFCFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFCFA8);
  }

  return result;
}

uint64_t sub_233230FB0(uint64_t a1)
{
  v2 = _s25ExportVoicePackageCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23323100C(uint64_t a1, uint64_t a2)
{
  v4 = _s25ExportVoicePackageCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233231100()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23322EA58();
}

uint64_t sub_2332311D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233231400(&qword_27DDE3558, _s25ExportVoicePackageCommandVMa, &unk_23329E5C8);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_2332312F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFCFA0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08AD0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233231400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2332314A4(uint64_t a1)
{
  sub_233231530(319);
  if (v1 <= 0x3F)
  {
    sub_23316E7B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_233231530(uint64_t a1)
{
  if (!qword_27DDE3460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE1A90, &unk_233290970);
    v1 = sub_23328D60C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDE3460);
    }
  }
}

uint64_t _s25ExportVoicePackageCommandV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s25ExportVoicePackageCommandV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2332316E8()
{
  result = qword_27DDFD3C0[0];
  if (!qword_27DDFD3C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFD3C0);
  }

  return result;
}

unint64_t sub_233231740()
{
  result = qword_27DDFD4D0;
  if (!qword_27DDFD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFD4D0);
  }

  return result;
}

unint64_t sub_233231798()
{
  result = qword_27DDFD4D8[0];
  if (!qword_27DDFD4D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFD4D8);
  }

  return result;
}

uint64_t sub_2332317EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496563696F76 && a2 == 0xE700000000000000;
  if (v4 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6563696F76 && a2 == 0xE900000000000065 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563696F566C6C61 && a2 == 0xE900000000000073 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xE800000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002332ABD40 == a2)
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

unint64_t sub_2332319F8()
{
  result = qword_27DDE3598;
  if (!qword_27DDE3598)
  {
    sub_23328CE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3598);
  }

  return result;
}

uint64_t sub_233231A44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08AE8);
  __swift_project_value_buffer(v3, qword_27DE08AE8);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s12SpeakCommandVMa(uint64_t a1)
{
  result = qword_27DDFD870;
  if (!qword_27DDFD870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233231C14()
{
  sub_23328D20C();
  v3 = sub_233237A1C();
  v4 = *v3;
  v0[9] = *v3;
  _s12SpeakCommandVMa(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  if (v0[3])
  {
    sub_23328D9DC();
    swift_task_alloc();
    sub_23328D9CC();
    v5 = sub_23328D92C();
    v7 = v6;
  }

  else
  {
    sub_23328D5CC();
    v8 = v0[5];
    if (v8)
    {
      v5 = v0[4];
    }

    else
    {
      v5 = 0;
    }

    if (v8)
    {
      v7 = v0[5];
    }

    else
    {
      v7 = 0xE000000000000000;
    }
  }

  v0[10] = v7;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = sub_23328CE8C();
    v0[11] = v10;
    v0[12] = *(v10 - 8);
    v11 = swift_task_alloc();
    v0[13] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    sub_23328D5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
    sub_23328D5CC();
    v12 = v0[6];
    v13 = v0[7];
    v0[14] = v13;
    v15 = (*(*v4 + 480) + **(*v4 + 480));
    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_233232010;

    return v15(v11, v5, v7, v12, v13);
  }

  else
  {

    sub_23328D4AC();
    sub_233233888(&qword_27DDE2D30, MEMORY[0x277CEEA40], MEMORY[0x277CEEA48]);
    swift_allocError();
    sub_23328D4BC();
    swift_willThrow();

    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_233232010()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);

  if (v0)
  {
    v3 = sub_233232228;
  }

  else
  {

    v3 = sub_2332321C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2332321C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233232228()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2332322B8()
{
  _s12SpeakCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  if (*(v0 + 24) || (sub_23328D5CC(), *(v0 + 24)))
  {

    sub_23328D5CC();
    if (!*(v0 + 24) || (, sub_23328D5CC(), !*(v0 + 24)))
    {
      v1 = *(v0 + 8);
      goto LABEL_8;
    }
  }

  sub_23328D4AC();
  sub_233233888(&qword_27DDE2D30, MEMORY[0x277CEEA40], MEMORY[0x277CEEA48]);
  swift_allocError();
  sub_23328D4BC();
  swift_willThrow();
  v1 = *(v0 + 8);
LABEL_8:

  return v1();
}

uint64_t sub_233232478()
{
  v1 = 25705;
  v2 = 1701603686;
  if (*v0 != 2)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x657361726870;
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

uint64_t sub_2332324D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_233233AC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2332324FC(uint64_t a1)
{
  v2 = sub_2332333E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233232538(uint64_t a1)
{
  v2 = sub_2332333E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233232574()
{
  v0 = sub_23328D53C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23328D4DC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  sub_23328D3BC();
  v8 = sub_23328D3CC();
  v9 = *(v8 - 8);
  v22 = *(v9 + 56);
  v23 = v9 + 56;
  v22(v7, 0, 1, v8);
  v10 = sub_23328D42C();
  v11 = *(v10 - 8);
  v24 = *(v11 + 56);
  v21 = v11 + 56;
  v19 = v10;
  v24(v4, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v25 = _s12SpeakCommandVMa(0);
  v18 = *(v25 + 20);
  sub_23328D3BC();
  v12 = v8;
  v13 = v8;
  v20 = v8;
  v14 = v22;
  v22(v7, 0, 1, v12);
  v15 = v24;
  v24(v4, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v18 = *(v25 + 24);
  sub_23328D3BC();
  v14(v7, 0, 1, v13);
  v16 = v19;
  v15(v4, 1, 1, v19);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v26 = 0x53552D6E65;
  v27 = 0xE500000000000000;
  sub_23328D3BC();
  v14(v7, 0, 1, v20);
  v24(v4, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5EC();
}

uint64_t sub_2332329F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v50 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE35A0, qword_23329E848);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v49 - v7;
  v8 = sub_23328D53C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D4DC();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v49 - v18;
  v74 = (_s12SpeakCommandVMa(0) - 8);
  MEMORY[0x28223BE20](v74);
  v66 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v21 = sub_23328D3CC();
  v22 = *(v21 - 8);
  v62 = *(v22 + 56);
  v23 = v22 + 56;
  v71 = v21;
  v62(v19, 0, 1, v21);
  v69 = v23;
  v61 = sub_23328D42C();
  v70 = *(*(v61 - 8) + 56);
  v70(v16, 1, 1, v61);
  v68 = v13;
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v65 = v74[7];
  sub_23328D3BC();
  v24 = v21;
  v25 = v62;
  v62(v19, 0, 1, v24);
  v26 = v16;
  v27 = v16;
  v28 = v61;
  v29 = v70;
  v70(v26, 1, 1, v61);
  sub_23328D4CC();
  v60 = v10;
  sub_23328D52C();
  v30 = v66;
  sub_23328D5DC();
  v31 = v74[8];
  sub_23328D3BC();
  v25(v19, 0, 1, v71);
  v29(v27, 1, 1, v28);
  sub_23328D4CC();
  sub_23328D52C();
  v51 = v31;
  sub_23328D5DC();
  v32 = v74[9];
  v72 = 0x53552D6E65;
  v73 = 0xE500000000000000;
  sub_23328D3BC();
  v25(v19, 0, 1, v71);
  v70(v27, 1, 1, v28);
  sub_23328D4CC();
  sub_23328D52C();
  v33 = v63;
  sub_23328D5EC();
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_2332333E4();
  v34 = v64;
  sub_23328E68C();
  if (v34)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    v48 = v30;
  }

  else
  {
    v74 = v32;
    v35 = v58;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v37 = *(v36 - 8);
    MEMORY[0x28223BE20](v36);
    v39 = &v49 - v38;
    LOBYTE(v72) = 0;
    sub_233229170(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80);
    v40 = v59;
    sub_23328E41C();
    v41 = v66;
    (*(v37 + 40))(v66, v39, v36);
    LOBYTE(v72) = 1;
    sub_233229170(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570);
    v42 = v56;
    v43 = v57;
    sub_23328E41C();
    v71 = *(v54 + 40);
    v71(v41 + v65, v42, v43);
    LOBYTE(v72) = 2;
    sub_23328E41C();
    v71(v41 + v51, v55, v43);
    LOBYTE(v72) = 3;
    sub_233229170(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70);
    v45 = v52;
    v46 = v53;
    v47 = v67;
    sub_23328E41C();
    (*(v35 + 8))(v47, v40);
    (*(v49 + 40))(v74 + v41, v45, v46);
    sub_233233494(v41, v50);
    __swift_destroy_boxed_opaque_existential_0(v33);
    v48 = v41;
  }

  return sub_233233438(v48);
}

unint64_t sub_2332333E4()
{
  result = qword_27DDFD568[0];
  if (!qword_27DDFD568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFD568);
  }

  return result;
}

uint64_t sub_233233438(uint64_t a1)
{
  v2 = _s12SpeakCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233233494(uint64_t a1, uint64_t a2)
{
  v4 = _s12SpeakCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233233588()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233231BF4();
}

uint64_t sub_23323365C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233233888(&qword_27DDE35A8, _s12SpeakCommandVMa, &unk_23329E880);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_233233780@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFD560 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08AE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233233888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_233233914(uint64_t a1)
{
  sub_2331D6598(319);
  if (v1 <= 0x3F)
  {
    sub_233231530(319);
    if (v2 <= 0x3F)
    {
      sub_23322961C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2332339C4()
{
  result = qword_27DDFD980[0];
  if (!qword_27DDFD980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFD980);
  }

  return result;
}

unint64_t sub_233233A1C()
{
  result = qword_27DDFDA90;
  if (!qword_27DDFDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFDA90);
  }

  return result;
}

unint64_t sub_233233A74()
{
  result = qword_27DDFDA98[0];
  if (!qword_27DDFDA98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFDA98);
  }

  return result;
}

uint64_t sub_233233AC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657361726870 && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23328E54C();

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

uint64_t sub_233233C1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08B00);
  __swift_project_value_buffer(v3, qword_27DE08B00);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_233233D9C()
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
  v7 = (*(*v2 + 408) + **(*v2 + 408));
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23322660C;

  return v7(v4);
}

uint64_t sub_233233FAC(uint64_t a1)
{
  v2 = sub_2332344E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233233FE8(uint64_t a1)
{
  v2 = sub_2332344E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233234024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE35D0, qword_23329EAC0);
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
  v14 = _s23SyncModelFuturesCommandVMa(0);
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
  sub_2332344E8();
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
    sub_233234598(v16, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23323453C(v16);
}

uint64_t _s23SyncModelFuturesCommandVMa(uint64_t a1)
{
  result = qword_27DDFDE30;
  if (!qword_27DDFDE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2332344E8()
{
  result = qword_27DDFDB28[0];
  if (!qword_27DDFDB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFDB28);
  }

  return result;
}

uint64_t sub_23323453C(uint64_t a1)
{
  v2 = _s23SyncModelFuturesCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233234598(uint64_t a1, uint64_t a2)
{
  v4 = _s23SyncModelFuturesCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233234684()
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
  v7 = (*(*v2 + 408) + **(*v2 + 408));
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_233227130;

  return v7(v4);
}

uint64_t sub_2332348C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233234AB8(&qword_27DDE35D8, &unk_23329EAF8);
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_2332349C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFDB20 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08B00);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233234AB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s23SyncModelFuturesCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233234AFC()
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

unint64_t sub_233234D84()
{
  result = qword_27DDFDF40[0];
  if (!qword_27DDFDF40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFDF40);
  }

  return result;
}

unint64_t sub_233234DDC()
{
  result = qword_27DDFE050;
  if (!qword_27DDFE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFE050);
  }

  return result;
}

unint64_t sub_233234E34()
{
  result = qword_27DDFE058[0];
  if (!qword_27DDFE058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFE058);
  }

  return result;
}

uint64_t sub_233234E88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08B18);
  __swift_project_value_buffer(v3, qword_27DE08B18);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_233235004()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  v0[3] = *v1;
  v3 = sub_23328CE8C();
  v4 = *(v3 - 8);
  v5 = swift_task_alloc();
  v0[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v6 = sub_23328CE3C();
  v8 = v7;
  v0[5] = v7;
  (*(v4 + 8))(v5, v3);
  v11 = (*(*v2 + 368) + **(*v2 + 368));
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_233235260;

  return v11(v6, v8);
}

uint64_t sub_233235260()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2332353E8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2332353E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23323544C(uint64_t a1)
{
  v2 = sub_233235988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233235488(uint64_t a1)
{
  v2 = sub_233235988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2332354C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3600, qword_23329ED50);
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
  v14 = _s25CancelTrainingTaskCommandVMa(0);
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
  sub_233235988();
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
    sub_233235A38(v16, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2332359DC(v16);
}

uint64_t _s25CancelTrainingTaskCommandVMa(uint64_t a1)
{
  result = qword_27DDFE3F0;
  if (!qword_27DDFE3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_233235988()
{
  result = qword_27DDFE0E8[0];
  if (!qword_27DDFE0E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFE0E8);
  }

  return result;
}

uint64_t sub_2332359DC(uint64_t a1)
{
  v2 = _s25CancelTrainingTaskCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233235A38(uint64_t a1, uint64_t a2)
{
  v4 = _s25CancelTrainingTaskCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233235B04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233234FE4();
}

uint64_t sub_233235BC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233235DB4(&qword_27DDE3608, &unk_23329ED88);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_233235CC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFE0E0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08B18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233235DB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s25CancelTrainingTaskCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233235DF8()
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

unint64_t sub_233236080()
{
  result = qword_27DDFE500[0];
  if (!qword_27DDFE500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFE500);
  }

  return result;
}

unint64_t sub_2332360D8()
{
  result = qword_27DDFE610;
  if (!qword_27DDFE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFE610);
  }

  return result;
}

unint64_t sub_233236130()
{
  result = qword_27DDFE618[0];
  if (!qword_27DDFE618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFE618);
  }

  return result;
}

uint64_t sub_233236184()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08B30);
  __swift_project_value_buffer(v3, qword_27DE08B30);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s25ExportTrainingDataCommandVMa(uint64_t a1)
{
  result = qword_27DDFE9B0;
  if (!qword_27DDFE9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233236350()
{
  sub_23328D20C();
  v1 = sub_23328CC9C();
  *(v0 + 24) = v1;
  *(v0 + 32) = *(v1 - 8);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = sub_233237A1C();
  v4 = *v3;
  *(v0 + 48) = *v3;
  v5 = sub_23328CE8C();
  *(v0 + 56) = v5;
  *(v0 + 64) = *(v5 - 8);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  _s25ExportTrainingDataCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v7 = *(v0 + 96);
  v8 = sub_233125D98();
  v11 = (*(*v4 + 304) + **(*v4 + 304));
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_233236614;

  return v11(v2, v6, v8 & 1, v7);
}

uint64_t sub_233236614()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v2[11] = v0;

  v4 = (v3 + 8);
  v5 = v2[9];
  v6 = v2[7];
  if (v0)
  {
    (*v4)(v2[9], v2[7]);

    v7 = sub_233236860;
  }

  else
  {
    v9 = v2[4];
    v8 = v2[5];
    v10 = v2[3];

    (*v4)(v5, v6);
    (*(v9 + 8))(v8, v10);

    v7 = sub_2332367FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2332367FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233236860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2332368D0()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_233236904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002332ABD40 == a2)
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

uint64_t sub_2332369E0(uint64_t a1)
{
  v2 = sub_233237374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233236A1C(uint64_t a1)
{
  v2 = sub_233237374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233236A58()
{
  v0 = sub_23328D53C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23328D4DC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_23328D3BC();
  v8 = sub_23328D3CC();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_23328D42C();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  _s25ExportTrainingDataCommandVMa(0);
  sub_23328D3BC();
  v9(v7, 0, 1, v8);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_233236D08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v34 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3630, qword_23329EFD8);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v33 - v4;
  v5 = sub_23328D53C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23328D4DC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = _s25ExportTrainingDataCommandVMa(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v17 = sub_23328D3CC();
  v39 = *(*(v17 - 8) + 56);
  (v39)(v12, 0, 1, v17);
  v18 = sub_23328D42C();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v19 = *(v14 + 28);
  sub_23328D3BC();
  (v39)(v12, 0, 1, v17);
  v20 = v41;
  sub_23328D4CC();
  sub_23328D58C();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_233237374();
  v21 = v40;
  v22 = v42;
  sub_23328E68C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    v32 = v16;
  }

  else
  {
    v42 = v16;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v39 = &v33;
    v24 = *(v23 - 8);
    MEMORY[0x28223BE20](v23);
    v26 = &v33 - v25;
    v44 = 0;
    sub_23315246C(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80, MEMORY[0x277CEEA68]);
    v27 = v38;
    sub_23328E41C();
    (*(v24 + 40))(v42, v26, v23);
    v43 = 1;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0, MEMORY[0x277CEEA58]);
    v29 = v35;
    v28 = v36;
    sub_23328E41C();
    (*(v37 + 8))(v21, v27);
    v31 = v42;
    (*(v33 + 40))(&v42[v19], v29, v28);
    sub_233237424(v31, v34);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v32 = v31;
  }

  return sub_2332373C8(v32);
}

unint64_t sub_233237374()
{
  result = qword_27DDFE6A8[0];
  if (!qword_27DDFE6A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFE6A8);
  }

  return result;
}

uint64_t sub_2332373C8(uint64_t a1)
{
  v2 = _s25ExportTrainingDataCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233237424(uint64_t a1, uint64_t a2)
{
  v4 = _s25ExportTrainingDataCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2332374F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233236330();
}

uint64_t sub_2332375B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_2332377A0(&qword_27DDE3638, &unk_23329F010);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_2332376AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFE6A0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08B30);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2332377A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s25ExportTrainingDataCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_233237828(uint64_t a1)
{
  sub_2331D6598(319);
  if (v1 <= 0x3F)
  {
    sub_23316E7B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2332378C0()
{
  result = qword_27DDFEAC0[0];
  if (!qword_27DDFEAC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFEAC0);
  }

  return result;
}

unint64_t sub_233237918()
{
  result = qword_27DDFEBD0;
  if (!qword_27DDFEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFEBD0);
  }

  return result;
}

unint64_t sub_233237970()
{
  result = qword_27DDFEBD8[0];
  if (!qword_27DDFEBD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFEBD8);
  }

  return result;
}

uint64_t sub_2332379C4()
{
  type metadata accessor for VoiceBankingCommand.Helper();
  result = swift_initStaticObject();
  qword_27DDFEC68 = result;
  return result;
}

void *sub_2332379F0()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t *sub_233237A1C()
{
  if (qword_27DDFEC60 != -1)
  {
    swift_once();
  }

  return &qword_27DDFEC68;
}

uint64_t static VoiceBankingCommand.Helper.shared.getter()
{
  type metadata accessor for VoiceBankingCommand.Helper();

  return swift_initStaticObject();
}

uint64_t sub_233237A9C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for TTSVBService();
    v1 = TTSVBService.__allocating_init()();
    *(v0 + 16) = v1;
  }

  return v1;
}

id sub_233237B04()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for SpeechSynth()) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_233237B6C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TTSVBAccessManager();
    v4 = TTSVBAccessManager.__allocating_init()();
    v5 = *(v0 + 32);
    *(v3 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_233237BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(a1);
  return sub_2332574E0(v4, type metadata accessor for TTSVBPath);
}

uint64_t sub_233237C8C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3660, qword_23329F278);
  *v1 = v0;
  v1[1] = sub_233237D7C;
  v3 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x696F566863746566, 0xED00002928736563, sub_23325459C, v3, v2);
}

uint64_t sub_233237D7C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_233257C78;
  }

  else
  {
    v2 = sub_2331BE6DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233237E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3758, &qword_23329F8B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_233237A9C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  TTSVBService.fetchVoices(completion:)();
}

uint64_t sub_233237FE8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *(type metadata accessor for TTSVBVoice(0) - 8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v6 = (*(*v2 + 184) + **(*v2 + 184));
  v4 = swift_task_alloc();
  v3[7] = v4;
  *v4 = v3;
  v4[1] = sub_233238168;

  return v6();
}

uint64_t sub_233238168(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2332382C0, 0, 0);
  }
}

void sub_2332382C0()
{
  v1 = v0[8];
  v15 = *(v1 + 16);
  if (v15)
  {
    v2 = 0;
    v3 = v0[4];
    v4 = MEMORY[0x277D84F90];
    while (v2 < *(v1 + 16))
    {
      v5 = v0[6];
      v6 = v0[2];
      v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v8 = *(v3 + 72);
      sub_233257478(v0[8] + v7 + v8 * v2, v5, type metadata accessor for TTSVBVoice);
      v9 = v6(v5);
      v10 = v0[6];
      if (v9)
      {
        sub_233257410(v10, v0[5], type metadata accessor for TTSVBVoice);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2331229AC(0, *(v4 + 16) + 1, 1);
        }

        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_2331229AC((v11 > 1), v12 + 1, 1);
        }

        v13 = v0[5];
        *(v4 + 16) = v12 + 1;
        sub_233257410(v13, v4 + v7 + v12 * v8, type metadata accessor for TTSVBVoice);
      }

      else
      {
        sub_2332574E0(v10, type metadata accessor for TTSVBVoice);
      }

      if (v15 == ++v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_14:

    v14 = v0[1];

    v14(v4);
  }
}

void sub_2332384C4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTSVBInstalledVoiceModel(0);
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
      sub_233257478(a3 + v14 + v15 * v12, v11, type metadata accessor for TTSVBInstalledVoiceModel);
      v16 = a1(v11);
      if (v3)
      {
        sub_2332574E0(v11, type metadata accessor for TTSVBInstalledVoiceModel);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_233257410(v11, v23, type metadata accessor for TTSVBInstalledVoiceModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2331B4014(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2331B4014((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_233257410(v23, v13 + v14 + v19 * v15, type metadata accessor for TTSVBInstalledVoiceModel);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_2332574E0(v11, type metadata accessor for TTSVBInstalledVoiceModel);
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

uint64_t sub_233238770()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A58, &qword_233299B60);
  *v1 = v0;
  v1[1] = sub_233237D7C;
  v3 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x646F4D6863746566, 0xED00002928736C65, sub_233254F0C, v3, v2);
}

uint64_t sub_233238860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3750, &qword_23329F8B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_233237A9C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  TTSVBService.fetchVoiceModels(completion:)();
}

uint64_t sub_2332389B8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *(type metadata accessor for TTSVBVoiceModel(0) - 8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v6 = (*(*v2 + 200) + **(*v2 + 200));
  v4 = swift_task_alloc();
  v3[7] = v4;
  *v4 = v3;
  v4[1] = sub_233238B38;

  return v6();
}

uint64_t sub_233238B38(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_233238C90, 0, 0);
  }
}

void sub_233238C90()
{
  v1 = v0[8];
  v15 = *(v1 + 16);
  if (v15)
  {
    v2 = 0;
    v3 = v0[4];
    v4 = MEMORY[0x277D84F90];
    while (v2 < *(v1 + 16))
    {
      v5 = v0[6];
      v6 = v0[2];
      v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v8 = *(v3 + 72);
      sub_233257478(v0[8] + v7 + v8 * v2, v5, type metadata accessor for TTSVBVoiceModel);
      v9 = v6(v5);
      v10 = v0[6];
      if (v9)
      {
        sub_233257410(v10, v0[5], type metadata accessor for TTSVBVoiceModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2331B4058(0, *(v4 + 16) + 1, 1);
        }

        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_2331B4058((v11 > 1), v12 + 1, 1);
        }

        v13 = v0[5];
        *(v4 + 16) = v12 + 1;
        sub_233257410(v13, v4 + v7 + v12 * v8, type metadata accessor for TTSVBVoiceModel);
      }

      else
      {
        sub_2332574E0(v10, type metadata accessor for TTSVBVoiceModel);
      }

      if (v15 == ++v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_14:

    v14 = v0[1];

    v14(v4);
  }
}

uint64_t sub_233238EB4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CD8, &qword_23329A918);
  *v1 = v0;
  v1[1] = sub_233237D7C;
  v3 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000016, 0x80000002332AC270, sub_233254F14, v3, v2);
}

uint64_t sub_233238F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3748, &qword_23329F898);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_233237A9C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  TTSVBService.fetchInstalledVoiceModels(completion:)();
}

uint64_t sub_233239114()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A20, &qword_233290630);
  *v1 = v0;
  v1[1] = sub_2332391FC;
  v3 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000028, 0x80000002332AB590, sub_233254F1C, v3, v2);
}

uint64_t sub_2332391FC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2332229A8;
  }

  else
  {
    v2 = sub_23319D5B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233239310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_233237A9C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  TTSVBService.fetchPersonalVoiceSystemRepresentation(completion:)();
}

uint64_t sub_233239468(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_233239488, 0, 0);
}

uint64_t sub_233239488()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3668, qword_23329F2C8);
  *v2 = v0;
  v2[1] = sub_233239594;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x80000002332AC290, sub_233254F24, v1, v3);
}

uint64_t sub_233239594()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2332396B0;
  }

  else
  {

    v2 = sub_2331BE6DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2332396B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233239714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3740, &qword_23329F888);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_233237A9C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  TTSVBService.fetchTrainingMetadata(voiceID:completion:)();
}

uint64_t sub_233239874(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v14);
  v16 = (&v20 - v15);
  sub_233121D34(a1, &v20 - v15, a3, a4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v16, v13, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v17 = swift_allocError();
    sub_233257478(v13, v18, type metadata accessor for TTSVBError);
    v21 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    sub_23328DC8C();
    return sub_2332574E0(v13, type metadata accessor for TTSVBError);
  }

  else
  {
    v21 = *v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    return sub_23328DC9C();
  }
}

id sub_233239A74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  sub_23328CC7C();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v4 = result;
    MEMORY[0x28223BE20](result);
    v5 = &v10 - v1;
    sub_233121D34(v2, v5, &qword_27DDE19A0, &unk_233290360);
    v6 = sub_23328CC9C();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v8 = sub_23328CBCC();
      (*(v7 + 8))(v5, v6);
    }

    sub_233145024(MEMORY[0x277D84F90]);
    v9 = sub_23328D87C();

    [v4 openSensitiveURL:v8 withOptions:v9];

    return sub_233121E04(v2, &qword_27DDE19A0, &unk_233290360);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_233239C90(uint64_t a1, char a2)
{
  *(v3 + 376) = a2;
  v5 = type metadata accessor for TTSVBVoiceSample(0);
  *(v3 + 248) = v5;
  *(v3 + 256) = *(v5 - 8);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  v8 = (*(*v2 + 232) + **(*v2 + 232));
  v6 = swift_task_alloc();
  *(v3 + 360) = v6;
  *v6 = v3;
  v6[1] = sub_233239E94;

  return v8(a1);
}

uint64_t sub_233239E94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23323A078, 0, 0);
  }
}

uint64_t sub_23323A078(uint64_t a1)
{
  v143 = v1;
  if (*(v1 + 376) != 1)
  {
    v138 = *(v1 + 368);
    v35 = *(v138 + 16);
    v137 = v35;
    if (v35)
    {
      v37 = *(v1 + 248);
      v36 = *(v1 + 256);
      v38 = v138 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v133 = *(v1 + 344);
      v39 = *(v36 + 72);
      v40 = *(v138 + 16);
      v132 = v39;
      do
      {
        sub_233257478(v38, *(v1 + 344), type metadata accessor for TTSVBVoiceSample);
        if (TTSVBVoiceSample.hasVoiceRecording.getter())
        {
          v135 = v40;
          v43 = *(v1 + 344);
          sub_23328D30C();
          v141 = 0;
          v142 = 0xE000000000000000;
          sub_23328E24C();
          v44 = v142;
          *(v1 + 48) = v141;
          *(v1 + 56) = v44;
          MEMORY[0x23839B7E0](0x5B20656C706D6153, 0xEB000000003D4449);
          MEMORY[0x23839B7E0](*v43, *(v133 + 8));
          MEMORY[0x23839B7E0](0x3D44495020, 0xE500000000000000);
          *(v1 + 184) = *(v43 + v37[11]);
          v45 = sub_23328E51C();
          MEMORY[0x23839B7E0](v45);

          MEMORY[0x23839B7E0](0x3D44495320, 0xE500000000000000);
          *(v1 + 192) = *(v43 + v37[12]);
          v46 = sub_23328E51C();
          MEMORY[0x23839B7E0](v46);

          MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332AC430);
          MEMORY[0x23839B7E0](*(v43 + v37[10]), *(v43 + v37[10] + 8));
          MEMORY[0x23839B7E0](0xD00000000000001ALL, 0x80000002332AC450);
          sub_23328DCDC();
          MEMORY[0x23839B7E0](0x3D6C617574634120, 0xE800000000000000);
          sub_23328DCDC();
          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC470);
          v47 = TTSVBVoiceSample.hasVoiceRecording.getter();
          v48 = (v47 & 1) == 0;
          if (v47)
          {
            v49 = 1702195828;
          }

          else
          {
            v49 = 0x65736C6166;
          }

          if (v48)
          {
            v50 = 0xE500000000000000;
          }

          else
          {
            v50 = 0xE400000000000000;
          }

          MEMORY[0x23839B7E0](v49, v50);

          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC490);
          MEMORY[0x23839B7E0](*(v43 + v37[8]), *(v43 + v37[8] + 8));
          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC4B0);
          v51 = (v43 + v37[16]);
          if (v51[1])
          {
            v52 = *v51;
            v53 = v51[1];
          }

          else
          {
            v53 = 0xE600000000000000;
            v52 = 0x3E656E6F6E3CLL;
          }

          v54 = *(v1 + 344);

          MEMORY[0x23839B7E0](v52, v53);

          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC4D0);
          *(v1 + 200) = *(v54 + v37[17]);
          v55 = sub_23328E51C();
          MEMORY[0x23839B7E0](v55);

          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC4F0);
          sub_23328DCFC();
          MEMORY[0x23839B7E0](0x6873657268542820, 0xEC0000003D646C6FLL);
          sub_23328DCFC();
          MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332AC510);
          sub_23328DCFC();
          MEMORY[0x23839B7E0](0x6873657268542820, 0xEC0000003D646C6FLL);
          sub_23328DCFC();
          MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332AC530);
          if (TTSVBVoiceSample.hasVoiceRecording.getter())
          {
            TTSVBVoiceSample.trainingValidity.getter(&v141);
            v56 = TTSVBVoiceSampleTrainingValidity.stringValue.getter();
            v58 = v57;
          }

          else
          {
            v58 = 0xE300000000000000;
            v56 = 4271950;
          }

          v59 = *(v1 + 344);
          MEMORY[0x23839B7E0](v56, v58);

          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC550);
          MEMORY[0x23839B7E0](*(v59 + v37[9]), *(v59 + v37[9] + 8));
          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC570);
          MEMORY[0x23839B7E0](*(v59 + v37[7]), *(v59 + v37[7] + 8));
          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC590);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
          v60 = swift_task_alloc();
          sub_233121D34(v59 + v37[5], v60, &qword_27DDE19A0, &unk_233290360);
          v61 = sub_23328CC9C();
          v62 = *(v61 - 8);
          if ((*(v62 + 48))(v60, 1, v61) == 1)
          {
            sub_233121E04(v60, &qword_27DDE19A0, &unk_233290360);
            v41 = 0xE600000000000000;
            v42 = 0x3E656E6F6E3CLL;
          }

          else
          {
            v42 = sub_23328CC6C();
            v41 = v63;
            (*(v62 + 8))(v60, v61);
          }

          v40 = v135;

          MEMORY[0x23839B7E0](v42, v41);

          MEMORY[0x23839B7E0](10, 0xE100000000000000);
          sub_23328D27C();

          v35 = v137;
          v39 = v132;
        }

        sub_2332574E0(*(v1 + 344), type metadata accessor for TTSVBVoiceSample);
        v38 += v39;
        --v40;
      }

      while (v40);
    }

    sub_23328D30C();
    sub_23328D27C();

    sub_23328D30C();
    sub_23328D27C();

    sub_23328D30C();
    v141 = 0;
    v142 = 0xE000000000000000;
    sub_23328E24C();

    v141 = 0xD000000000000021;
    v142 = 0x80000002332AC340;
    if (v35)
    {
      v65 = 0;
      v66 = *(v1 + 256);
      v67 = MEMORY[0x277D84F90];
      while (v65 < *(v138 + 16))
      {
        v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v69 = *(v66 + 72);
        sub_233257478(*(v1 + 368) + v68 + v69 * v65, *(v1 + 336), type metadata accessor for TTSVBVoiceSample);
        v70 = TTSVBVoiceSample.hasVoiceRecording.getter();
        v71 = *(v1 + 336);
        if (v70)
        {
          sub_233257410(v71, *(v1 + 320), type metadata accessor for TTSVBVoiceSample);
          v139 = v67;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2331B409C(0, *(v67 + 16) + 1, 1);
            v67 = v139;
          }

          v73 = *(v67 + 16);
          v72 = *(v67 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_2331B409C((v72 > 1), v73 + 1, 1);
            v67 = v139;
          }

          v74 = *(v1 + 320);
          *(v67 + 16) = v73 + 1;
          result = sub_233257410(v74, v67 + v68 + v73 * v69, type metadata accessor for TTSVBVoiceSample);
        }

        else
        {
          result = sub_2332574E0(v71, type metadata accessor for TTSVBVoiceSample);
        }

        if (v137 == ++v65)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

    else
    {
      v67 = MEMORY[0x277D84F90];
LABEL_52:
      v75 = *(v67 + 16);

      *(v1 + 160) = v75;
      v76 = sub_23328E51C();
      MEMORY[0x23839B7E0](v76);

      sub_23328D27C();

      sub_23328D30C();
      v141 = 0;
      v142 = 0xE000000000000000;
      sub_23328E24C();
      v77 = v142;
      *(v1 + 16) = v141;
      *(v1 + 24) = v77;
      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332AC370);
      v78 = v137;
      if (v137)
      {
        v79 = *(v1 + 328);
        v80 = *(v1 + 256);
        v81 = *(*(v1 + 248) + 24);
        v82 = *(v1 + 368) + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v83 = *(v80 + 72);
        v84 = 0.0;
        do
        {
          v85 = *(v1 + 328);
          sub_233257478(v82, v85, type metadata accessor for TTSVBVoiceSample);
          v86 = *(v79 + v81);
          sub_2332574E0(v85, type metadata accessor for TTSVBVoiceSample);
          v84 = v84 + v86;
          v82 += v83;
          --v78;
        }

        while (v78);
      }

      sub_23328DCDC();
      sub_23328D27C();

      sub_23328D30C();
      v141 = 0;
      v142 = 0xE000000000000000;
      sub_23328E24C();
      v87 = v142;
      *(v1 + 32) = v141;
      *(v1 + 40) = v87;
      result = MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332AC3A0);
      v88 = v137;
      if (!v137)
      {
        v91 = MEMORY[0x277D84F90];
LABEL_67:
        v100 = *(v91 + 16);
        if (v100)
        {
          v101 = *(v1 + 304);
          v102 = *(v1 + 256);
          v103 = *(*(v1 + 248) + 24);
          v104 = v91 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
          v105 = *(v102 + 72);
          v106 = 0.0;
          do
          {
            v107 = *(v1 + 304);
            sub_233257478(v104, v107, type metadata accessor for TTSVBVoiceSample);
            v108 = *(v101 + v103);
            sub_2332574E0(v107, type metadata accessor for TTSVBVoiceSample);
            v106 = v106 + v108;
            v104 += v105;
            --v100;
          }

          while (v100);

          v88 = v137;
        }

        else
        {
        }

        sub_23328DCDC();
        sub_23328D27C();

        sub_23328D30C();
        v141 = 0;
        v142 = 0xE000000000000000;
        sub_23328E24C();

        v141 = 0xD000000000000021;
        v142 = 0x80000002332AC3D0;
        if (!v88)
        {
          v111 = MEMORY[0x277D84F90];
LABEL_85:
          v118 = *(v111 + 16);

          *(v1 + 168) = v118;
          v119 = sub_23328E51C();
          MEMORY[0x23839B7E0](v119);

          sub_23328D27C();

          sub_23328D30C();
          v141 = 0;
          v142 = 0xE000000000000000;
          sub_23328E24C();

          v141 = 0xD000000000000021;
          v142 = 0x80000002332AC400;
          if (!v88)
          {
            v122 = MEMORY[0x277D84F90];
LABEL_98:

            v129 = *(v122 + 16);

            *(v1 + 176) = v129;
            v130 = sub_23328E51C();
            MEMORY[0x23839B7E0](v130);

            sub_23328D27C();

            goto LABEL_99;
          }

          v120 = 0;
          v121 = *(v1 + 256);
          v122 = MEMORY[0x277D84F90];
          while (v120 < *(v138 + 16))
          {
            v123 = (*(v121 + 80) + 32) & ~*(v121 + 80);
            v124 = *(v121 + 72);
            sub_233257478(*(v1 + 368) + v123 + v124 * v120, *(v1 + 272), type metadata accessor for TTSVBVoiceSample);
            if ((TTSVBVoiceSample.hasVoiceRecording.getter() & 1) == 0 || (TTSVBVoiceSample.trainingValidity.getter(&v140), TTSVBVoiceSampleTrainingValidity.isValid.getter()))
            {
              result = sub_2332574E0(*(v1 + 272), type metadata accessor for TTSVBVoiceSample);
            }

            else
            {
              sub_233257410(*(v1 + 272), *(v1 + 264), type metadata accessor for TTSVBVoiceSample);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v139 = v122;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_2331B409C(0, *(v122 + 16) + 1, 1);
                v122 = v139;
              }

              v127 = *(v122 + 16);
              v126 = *(v122 + 24);
              if (v127 >= v126 >> 1)
              {
                sub_2331B409C((v126 > 1), v127 + 1, 1);
                v122 = v139;
              }

              v128 = *(v1 + 264);
              *(v122 + 16) = v127 + 1;
              result = sub_233257410(v128, v122 + v123 + v127 * v124, type metadata accessor for TTSVBVoiceSample);
              v88 = v137;
            }

            if (v88 == ++v120)
            {
              goto LABEL_98;
            }
          }

LABEL_105:
          __break(1u);
          return result;
        }

        v109 = 0;
        v110 = *(v1 + 256);
        v111 = MEMORY[0x277D84F90];
        while (v109 < *(v138 + 16))
        {
          v112 = (*(v110 + 80) + 32) & ~*(v110 + 80);
          v113 = *(v110 + 72);
          sub_233257478(*(v1 + 368) + v112 + v113 * v109, *(v1 + 288), type metadata accessor for TTSVBVoiceSample);
          if ((TTSVBVoiceSample.hasVoiceRecording.getter() & 1) != 0 && (TTSVBVoiceSample.trainingValidity.getter(&v140), TTSVBVoiceSampleTrainingValidity.isValid.getter()))
          {
            sub_233257410(*(v1 + 288), *(v1 + 280), type metadata accessor for TTSVBVoiceSample);
            v114 = swift_isUniquelyReferenced_nonNull_native();
            v139 = v111;
            if ((v114 & 1) == 0)
            {
              sub_2331B409C(0, *(v111 + 16) + 1, 1);
              v111 = v139;
            }

            v116 = *(v111 + 16);
            v115 = *(v111 + 24);
            if (v116 >= v115 >> 1)
            {
              sub_2331B409C((v115 > 1), v116 + 1, 1);
              v111 = v139;
            }

            v117 = *(v1 + 280);
            *(v111 + 16) = v116 + 1;
            result = sub_233257410(v117, v111 + v112 + v116 * v113, type metadata accessor for TTSVBVoiceSample);
            v88 = v137;
          }

          else
          {
            result = sub_2332574E0(*(v1 + 288), type metadata accessor for TTSVBVoiceSample);
          }

          if (v88 == ++v109)
          {
            goto LABEL_85;
          }
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v89 = 0;
      v90 = *(v1 + 256);
      v91 = MEMORY[0x277D84F90];
      while (v89 < *(v138 + 16))
      {
        v92 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v93 = *(v90 + 72);
        sub_233257478(*(v1 + 368) + v92 + v93 * v89, *(v1 + 312), type metadata accessor for TTSVBVoiceSample);
        TTSVBVoiceSample.trainingValidity.getter(&v139);
        v94 = TTSVBVoiceSampleTrainingValidity.isValid.getter();
        v95 = *(v1 + 312);
        if (v94)
        {
          sub_233257410(v95, *(v1 + 296), type metadata accessor for TTSVBVoiceSample);
          v96 = swift_isUniquelyReferenced_nonNull_native();
          v141 = v91;
          if ((v96 & 1) == 0)
          {
            sub_2331B409C(0, *(v91 + 16) + 1, 1);
            v91 = v141;
          }

          v98 = *(v91 + 16);
          v97 = *(v91 + 24);
          if (v98 >= v97 >> 1)
          {
            sub_2331B409C((v97 > 1), v98 + 1, 1);
            v91 = v141;
          }

          v99 = *(v1 + 296);
          *(v91 + 16) = v98 + 1;
          result = sub_233257410(v99, v91 + v92 + v98 * v93, type metadata accessor for TTSVBVoiceSample);
          v88 = v137;
        }

        else
        {
          result = sub_2332574E0(v95, type metadata accessor for TTSVBVoiceSample);
        }

        if (v88 == ++v89)
        {
          goto LABEL_67;
        }
      }
    }

    __break(1u);
    goto LABEL_104;
  }

  v2 = *(v1 + 368);
  sub_23328D30C();
  *(v1 + 208) = &unk_284878EA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  sub_23328D8FC();
  sub_23328D27C();

  v3 = *(v2 + 16);
  if (v3)
  {
    v136 = *(v1 + 352);
    v5 = *(v1 + 248);
    v4 = *(v1 + 256);
    v6 = *(v1 + 368) + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    v134 = v7;
    do
    {
      sub_233257478(v6, *(v1 + 352), type metadata accessor for TTSVBVoiceSample);
      if (TTSVBVoiceSample.hasVoiceRecording.getter())
      {
        v13 = *(v1 + 352);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_23329F250;
        v15 = *(v136 + 8);
        *(v14 + 32) = *v13;
        *(v14 + 40) = v15;
        v141 = 34;
        v142 = 0xE100000000000000;
        v16 = (v13 + v5[10]);
        v17 = *v16;
        v18 = v16[1];

        MEMORY[0x23839B7E0](v17, v18);
        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        *(v14 + 48) = 34;
        *(v14 + 56) = 0xE100000000000000;
        *(v1 + 216) = *(v13 + v5[11]);
        *(v14 + 64) = sub_23328E51C();
        *(v14 + 72) = v19;
        *(v1 + 224) = *(v13 + v5[12]);
        *(v14 + 80) = sub_23328E51C();
        *(v14 + 88) = v20;
        *(v1 + 64) = 0;
        *(v1 + 72) = 0xE000000000000000;
        sub_23328DCDC();
        v21 = *(v1 + 72);
        *(v14 + 96) = *(v1 + 64);
        *(v14 + 104) = v21;
        *(v1 + 80) = 0;
        *(v1 + 88) = 0xE000000000000000;
        sub_23328DCDC();
        v22 = *(v1 + 88);
        *(v14 + 112) = *(v1 + 80);
        *(v14 + 120) = v22;
        v141 = 0;
        v142 = 0xE000000000000000;
        if (TTSVBVoiceSample.hasVoiceRecording.getter())
        {
          v23 = 49;
        }

        else
        {
          v23 = 48;
        }

        MEMORY[0x23839B7E0](v23, 0xE100000000000000);
        v24 = v142;
        *(v14 + 128) = v141;
        *(v14 + 136) = v24;
        v141 = 34;
        v142 = 0xE100000000000000;
        MEMORY[0x23839B7E0](*(v13 + v5[8]), *(v13 + v5[8] + 8));
        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        *(v14 + 144) = 34;
        *(v14 + 152) = 0xE100000000000000;
        v141 = 34;
        v142 = 0xE100000000000000;
        v25 = (v13 + v5[16]);
        v26 = v25[1];
        if (v26)
        {
          v27 = *v25;
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          v28 = v25[1];
        }

        else
        {
          v28 = 0xE000000000000000;
        }

        MEMORY[0x23839B7E0](v27, v28);

        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        v29 = v142;
        *(v14 + 160) = v141;
        *(v14 + 168) = v29;
        *(v1 + 232) = *(v13 + v5[17]);
        *(v14 + 176) = sub_23328E51C();
        *(v14 + 184) = v30;
        *(v1 + 96) = 0;
        *(v1 + 104) = 0xE000000000000000;
        sub_23328DCFC();
        v31 = *(v1 + 104);
        *(v14 + 192) = *(v1 + 96);
        *(v14 + 200) = v31;
        *(v1 + 112) = 0;
        *(v1 + 120) = 0xE000000000000000;
        sub_23328DCFC();
        v32 = *(v1 + 120);
        *(v14 + 208) = *(v1 + 112);
        *(v14 + 216) = v32;
        *(v1 + 128) = 0;
        *(v1 + 136) = 0xE000000000000000;
        sub_23328DCFC();
        v33 = *(v1 + 136);
        *(v14 + 224) = *(v1 + 128);
        *(v14 + 232) = v33;
        *(v1 + 144) = 0;
        *(v1 + 152) = 0xE000000000000000;
        sub_23328DCFC();
        v34 = *(v1 + 152);
        *(v14 + 240) = *(v1 + 144);
        *(v14 + 248) = v34;
        v141 = 34;
        v142 = 0xE100000000000000;
        if (TTSVBVoiceSample.hasVoiceRecording.getter())
        {
          v8 = TTSVBVoiceSample.description.getter();
          v10 = v9;
        }

        else
        {
          v10 = 0xE300000000000000;
          v8 = 4271950;
        }

        v11 = *(v1 + 352);
        MEMORY[0x23839B7E0](v8, v10);

        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        v12 = v142;
        *(v14 + 256) = v141;
        *(v14 + 264) = v12;
        v141 = 34;
        v142 = 0xE100000000000000;
        MEMORY[0x23839B7E0](*(v11 + v5[9]), *(v11 + v5[9] + 8));
        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        *(v14 + 272) = 34;
        *(v14 + 280) = 0xE100000000000000;
        v141 = 34;
        v142 = 0xE100000000000000;
        MEMORY[0x23839B7E0](*(v11 + v5[7]), *(v11 + v5[7] + 8));
        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        *(v14 + 288) = 34;
        *(v14 + 296) = 0xE100000000000000;
        sub_23328D30C();
        *(v1 + 240) = v14;
        sub_23328D8FC();

        sub_23328D27C();

        v7 = v134;
      }

      sub_2332574E0(*(v1 + 352), type metadata accessor for TTSVBVoiceSample);
      v6 += v7;
      --v3;
    }

    while (v3);
  }

LABEL_99:

  v131 = *(v1 + 8);

  return v131();
}

uint64_t sub_23323B7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_23323B7E4, 0, 0);
}

uint64_t sub_23323B7E4(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[3];
  sub_23328D30C();
  sub_23328E24C();

  MEMORY[0x23839B7E0](v6, v5);
  MEMORY[0x23839B7E0](0x656C61636F6C2820, 0xEC000000203A4449);
  MEMORY[0x23839B7E0](v4, v2);
  MEMORY[0x23839B7E0](41, 0xE100000000000000);
  sub_23328D27C();

  v7 = swift_task_alloc();
  v1[8] = v7;
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v2;
  v8 = swift_task_alloc();
  v1[9] = v8;
  v9 = sub_23328CE8C();
  *v8 = v1;
  v8[1] = sub_23323B9C8;
  v10 = v1[2];

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD00000000000001CLL, 0x80000002332AC5D0, sub_233254F2C, v7, v9);
}

uint64_t sub_23323B9C8()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23319D8B0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23323BB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a6;
  sub_233237A9C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  TTSVBService.createVoice(named:localeID:_:)();
}

uint64_t sub_23323BC88(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B8, &unk_233299B20);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  sub_233121D34(a1, &v19 - v6, &qword_27DDE19B8, &unk_233299B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v7, v4, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_233257478(v4, v9, type metadata accessor for TTSVBError);
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
    sub_23328DC8C();
    return sub_2332574E0(v4, type metadata accessor for TTSVBError);
  }

  else
  {
    v11 = sub_23328CE8C();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    v14 = MEMORY[0x28223BE20](v11);
    v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(v12 + 32))(&v19 - v15, v7, v11, v14);
    sub_23328D30C();
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_23328E24C();

    v19 = 0xD00000000000001BLL;
    v20 = 0x80000002332AE610;
    v16 = sub_23328CE3C();
    MEMORY[0x23839B7E0](v16);

    sub_23328D27C();

    v18 = MEMORY[0x28223BE20](v17);
    (*(v12 + 16))(&v19 - v15, &v19 - v15, v11, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
    sub_23328DC9C();
    return (*(v12 + 8))(&v19 - v15, v11);
  }
}

uint64_t sub_23323C01C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_23323C040, 0, 0);
}

uint64_t sub_23323C040(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  sub_23328D30C();
  sub_23328E24C();

  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v4, v5);

  sub_23328D27C();

  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  v7 = swift_task_alloc();
  *(v1 + 32) = v7;
  *v7 = v1;
  v7[1] = sub_23323C1E8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x80000002332AC620, sub_233254F3C, v6, v8);
}

uint64_t sub_23323C1E8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_23323C304;
  }

  else
  {

    v2 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23323C304()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23323C368(uint64_t a1)
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
  TTSVBService.updateTCCCloudKitAccess(allowed:completion:)();
}

uint64_t sub_23323C4C8(uint64_t a1)
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

uint64_t sub_23323C720(uint64_t a1)
{
  sub_23328D30C();
  sub_23328D27C();

  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23323C82C;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD00000000000001ALL, 0x80000002332AC680, sub_233254F48, v3, v4);
}

uint64_t sub_23323C82C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_233257C80;
  }

  else
  {
    v2 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23323C940(uint64_t a1)
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
  TTSVBService.initializeCloudKitSchema(completion:)();
}

uint64_t sub_23323CA98(uint64_t a1)
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

uint64_t sub_23323CCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23323CCF8, 0, 0);
}

uint64_t sub_23323CCF8(uint64_t a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 16);
  if (v2)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    v5 = 0x3E6C696E3CLL;
  }

  if (v2)
  {
    v6 = *(v1 + 32);
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v13 = *(v1 + 40);
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000029, 0x80000002332AC6A0);
  sub_23328CE8C();
  sub_233254F90(&qword_27DDE2830, MEMORY[0x28220C048], MEMORY[0x28220C0E0]);
  v7 = sub_23328E51C();
  MEMORY[0x23839B7E0](v7);

  MEMORY[0x23839B7E0](0xD000000000000013, 0x80000002332AC6D0);

  MEMORY[0x23839B7E0](v5, v6);

  MEMORY[0x23839B7E0](0x61506C65646F4D20, 0xEB000000003D6874);
  v8 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v8);

  sub_23328D27C();

  v9 = swift_task_alloc();
  *(v1 + 56) = v9;
  v9[1] = vextq_s8(v13, v13, 8uLL);
  v9[2].i64[0] = v3;
  v9[2].i64[1] = v2;
  v9[3].i64[0] = v4;
  v10 = swift_task_alloc();
  *(v1 + 64) = v10;
  *v10 = v1;
  v10[1] = sub_23323CF88;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000036, 0x80000002332AC6F0, sub_233254F50, v9, v11);
}

uint64_t sub_23323CF88()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_233189E74;
  }

  else
  {

    v2 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23323D0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[1] = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  sub_233237A9C();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  TTSVBService.importModel(fromDirectory:overrideLocaleID:addingToVoice:completion:)();
}

uint64_t sub_23323D228(uint64_t a1)
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

uint64_t sub_23323D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_23323D48C, 0, 0);
}

uint64_t sub_23323D48C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v12 = *(v1 + 56);
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000018, 0x80000002332AC730);
  MEMORY[0x23839B7E0](v5, v4);
  MEMORY[0x23839B7E0](0x6C61636F6C282027, 0xEE0027203A444965);
  MEMORY[0x23839B7E0](v3, v2);
  MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AC750);
  v6 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v6);

  sub_23328D27C();

  v7 = swift_task_alloc();
  *(v1 + 72) = v7;
  v7[1] = vextq_s8(v12, v12, 8uLL);
  v7[2].i64[0] = v5;
  v7[2].i64[1] = v4;
  v7[3].i64[0] = v3;
  v7[3].i64[1] = v2;
  v8 = swift_task_alloc();
  *(v1 + 80) = v8;
  v9 = sub_23328CE8C();
  *v8 = v1;
  v8[1] = sub_23323D6B8;
  v10 = *(v1 + 16);

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD00000000000003ELL, 0x80000002332AC770, sub_233254F60, v7, v9);
}

uint64_t sub_23323D6B8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23323D7F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23323D7F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23323D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[0] = a6;
  v16[1] = a7;
  sub_233237A9C();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  (*(v9 + 16))(v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  TTSVBService.importTrainingData(fromDirectory:creatingVoiceName:localeID:completion:)();
}

uint64_t sub_23323D9DC(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B8, &unk_233299B20);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  sub_233121D34(a1, v19 - v6, &qword_27DDE19B8, &unk_233299B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v7, v4, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_233257478(v4, v9, type metadata accessor for TTSVBError);
    v19[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
    sub_23328DC8C();
    return sub_2332574E0(v4, type metadata accessor for TTSVBError);
  }

  else
  {
    v11 = sub_23328CE8C();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    v14 = MEMORY[0x28223BE20](v11);
    v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(v12 + 32))(v19 - v15, v7, v11, v14);
    sub_23328D30C();
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000036, 0x80000002332AE560);
    v16 = sub_23328CE3C();
    MEMORY[0x23839B7E0](v16);

    sub_23328D27C();

    v18 = MEMORY[0x28223BE20](v17);
    (*(v12 + 16))(v19 - v15, v19 - v15, v11, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
    sub_23328DC9C();
    return (*(v12 + 8))(v19 - v15, v11);
  }
}

uint64_t sub_23323DD90(uint64_t a1)
{
  sub_23328D30C();
  sub_23328D27C();

  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23323C82C;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD00000000000001FLL, 0x80000002332AC7E0, sub_233254F78, v3, v4);
}

uint64_t sub_23323DE9C(uint64_t a1)
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
  TTSVBService.repairDatastoreFromFilesystem(completion:)();
}

uint64_t sub_23323DFF4(uint64_t a1)
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

uint64_t sub_23323E22C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23323E258, 0, 0);
}

uint64_t sub_23323E258(uint64_t a1)
{
  v2 = *(v1 + 65);
  v3 = *(v1 + 64);
  v10 = *(v1 + 24);
  sub_23328D30C();
  sub_23328E24C();

  v4 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v4);

  sub_23328D27C();

  v5 = swift_task_alloc();
  *(v1 + 40) = v5;
  v5[1] = vextq_s8(v10, v10, 8uLL);
  v5[2].i8[0] = v3;
  v5[2].i8[1] = v2;
  v6 = swift_task_alloc();
  *(v1 + 48) = v6;
  v7 = sub_23328CC9C();
  *v6 = v1;
  v6[1] = sub_23323E404;
  v8 = *(v1 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000045, 0x80000002332AC830, sub_233254F80, v5, v7);
}

uint64_t sub_23323E404()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_233257C94, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23323E540(uint64_t a1)
{
  sub_233237A9C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.exportTrainingData(voiceID:shouldCompressResult:includeEntireScript:completion:)();
}

uint64_t sub_23323E6B8(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  sub_233121D34(a1, &v19 - v6, &qword_27DDE19A8, &qword_233299A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v7, v4, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_233257478(v4, v9, type metadata accessor for TTSVBError);
    v19 = v8;
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
    (*(v12 + 32))(&v19 - v15, v7, v11, v14);
    sub_23328D30C();
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_23328E24C();

    v19 = 0xD000000000000018;
    v20 = 0x80000002332AE520;
    v16 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v16);

    sub_23328D27C();

    v18 = MEMORY[0x28223BE20](v17);
    (*(v12 + 16))(&v19 - v15, &v19 - v15, v11, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
    sub_23328DC9C();
    return (*(v12 + 8))(&v19 - v15, v11);
  }
}

uint64_t sub_23323EA4C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 472) = a2;
  *(v5 + 480) = v4;
  *(v5 + 765) = a4;
  *(v5 + 764) = a3;
  *(v5 + 464) = a1;
  *(v5 + 488) = *(type metadata accessor for TTSVBInstalledVoiceModel(0) - 8);
  *(v5 + 496) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3670, &qword_23329F320);
  *(v5 + 504) = v6;
  *(v5 + 512) = *(v6 - 8);
  *(v5 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3678, &qword_23329F328);
  *(v5 + 528) = swift_task_alloc();
  *(v5 + 536) = swift_task_alloc();
  *(v5 + 544) = type metadata accessor for TTSVBPath(0);
  *(v5 + 552) = swift_task_alloc();
  v7 = type metadata accessor for TTSVBVoice(0);
  *(v5 + 560) = v7;
  *(v5 + 568) = *(v7 - 8);
  *(v5 + 576) = swift_task_alloc();
  *(v5 + 584) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3680, &qword_23329F330);
  *(v5 + 592) = swift_task_alloc();
  *(v5 + 600) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23323ECC8, 0, 0);
}

uint64_t sub_23323ECC8()
{
  v1 = [objc_opt_self() defaultManager];
  v0[76] = v1;
  sub_23328CC6C();
  v2 = sub_23328D95C();

  v3 = [v1 fileExistsAtPath_];

  v71 = v0;
  if (!v3)
  {
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD00000000000003ELL, 0x80000002332AC880);
    v18 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v18);

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
    swift_allocError();
LABEL_12:
    sub_23328D1CC();
    swift_willThrow();

LABEL_13:

    v30 = v71[1];
    goto LABEL_14;
  }

  v4 = v0[58];
  v5 = *(v4 + 16);
  v0[77] = v5;
  if (!v5)
  {
    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
    swift_allocError();
    goto LABEL_12;
  }

  v6 = v0[73];
  v7 = v0[71];
  sub_23328D30C();
  sub_23328E24C();

  v0[41] = v5;
  v8 = v6;
  v9 = sub_23328E51C();
  MEMORY[0x23839B7E0](v9);

  MEMORY[0x23839B7E0](0x73286563696F7620, 0xEC0000005B203A29);
  v72 = MEMORY[0x277D84F90];
  sub_23312676C(0, v5, 0);
  v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11 = *(v7 + 72);
  do
  {
    v12 = v71[73];
    sub_233257478(v10, v12, type metadata accessor for TTSVBVoice);
    v13 = *v12;
    v14 = *(v8 + 8);

    sub_2332574E0(v12, type metadata accessor for TTSVBVoice);
    v16 = *(v72 + 16);
    v15 = *(v72 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_23312676C((v15 > 1), v16 + 1, 1);
    }

    *(v72 + 16) = v16 + 1;
    v17 = v72 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;
    v10 += v11;
    --v5;
  }

  while (v5);
  v19 = v71[58];
  v71[54] = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  v20 = sub_23328D8FC();
  v22 = v21;

  MEMORY[0x23839B7E0](v20, v22);

  MEMORY[0x23839B7E0](0x206F74205DLL, 0xE500000000000000);
  v23 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v23);

  sub_23328D27C();

  sub_23328C8BC();
  swift_allocObject();
  v71[78] = sub_23328C8AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3690, &qword_23329F338);
  sub_23328C87C();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_233297B30;
  sub_23328C86C();
  swift_task_alloc();
  v71[53] = v24;
  sub_233254F90(&qword_27DDE3698, MEMORY[0x28220B498], MEMORY[0x28220B4B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36A0, &qword_23329F340);
  sub_23315246C(&qword_27DDE36A8, &qword_27DDE36A0, &qword_23329F340, MEMORY[0x277D83970]);
  sub_23328E14C();
  sub_23328C88C();

  v71[3] = 0;
  v71[4] = 0;
  v71[2] = v19;
  v25 = v71[75];
  v26 = v71[74];

  sub_2332422FC(v26);
  sub_233121D9C(v26, v25, &qword_27DDE3680, &qword_23329F330);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36B0, &unk_23329F348);
  v28 = (*(*(v27 - 8) + 48))(v25, 1, v27);
  if (v28 == 1)
  {
    v29 = v71[76];

    v30 = v71[1];
LABEL_14:

    return v30();
  }

  v32 = v71[75];
  v33 = *v32;
  sub_233257410(v32 + *(v27 + 48), v71[72], type metadata accessor for TTSVBVoice);
  sub_23328D30C();
  v71[13] = 0;
  v71[14] = 0xE000000000000000;
  sub_23328E24C();

  v71[11] = 0xD000000000000010;
  v71[12] = 0x80000002332AC8E0;
  v34 = v33 + 1;
  if (__OFADD__(v33, 1))
  {
    __break(1u);
  }

  v35 = v71[77];
  v36 = v71[76];
  v37 = v71[72];
  v71[50] = v34;
  v38 = sub_23328E51C();
  MEMORY[0x23839B7E0](v38);

  MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
  v71[49] = v35;
  v39 = sub_23328E51C();
  MEMORY[0x23839B7E0](v39);

  MEMORY[0x23839B7E0](8250, 0xE200000000000000);
  v40 = *v37;
  v41 = v37[1];
  MEMORY[0x23839B7E0](*v37, v41);
  sub_23328D27C();

  v42 = sub_23328CC9C();
  v71[79] = v42;
  v69 = v42;
  v43 = *(v42 - 8);
  v44 = v43;
  v71[80] = v43;
  v71[81] = *(v43 + 64);
  v45 = swift_task_alloc();
  v71[82] = v45;
  v71[21] = 0;
  v71[22] = 0xE000000000000000;
  sub_23328E24C();

  v71[19] = v40;
  v71[20] = v41;
  MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332AC900);
  sub_23328CBEC();

  sub_23328CC6C();
  v46 = sub_23328D95C();

  v47 = [v36 fileExistsAtPath_];

  if (v47)
  {
    v48 = v71[76];
    v49 = sub_23328CBCC();
    v71[57] = 0;
    LODWORD(v48) = [v48 removeItemAtURL:v49 error:v71 + 57];

    v50 = v71[57];
    if (!v48)
    {
LABEL_23:
      v57 = v71[76];
      v58 = v71[72];
      v59 = v50;

      sub_23328CA7C();

      swift_willThrow();

      (*(v44 + 8))(v45, v69);

      sub_2332574E0(v58, type metadata accessor for TTSVBVoice);
      goto LABEL_13;
    }

    v51 = v50;
  }

  v52 = v71[76];
  v53 = sub_23328CBCC();
  v71[45] = 0;
  LODWORD(v52) = [v52 createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:0 error:v71 + 45];

  v50 = v71[45];
  if (!v52)
  {
    goto LABEL_23;
  }

  v54 = v50;
  sub_23328D30C();
  v71[27] = 0;
  v71[28] = 0xE000000000000000;
  sub_23328E24C();

  v71[25] = 0xD00000000000002BLL;
  v71[26] = 0x80000002332AC920;
  v55 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v55);

  sub_23328D27C();

  sub_233254FD8(&qword_27DDE1998, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
  v71[83] = sub_23328C89C();
  v71[84] = v56;
  v71[85] = swift_task_alloc();
  sub_23328CBEC();
  sub_23328CCEC();
  v70 = v71[72];
  v60 = v71[70];
  v61 = v71[60];
  sub_23328D30C();
  v71[31] = 0;
  v71[32] = 0xE000000000000000;
  sub_23328E24C();

  v71[29] = 0xD00000000000001ALL;
  v71[30] = 0x80000002332AC950;
  v62 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v62);

  sub_23328D27C();

  sub_23328D30C();
  sub_23328D27C();

  v63 = swift_task_alloc();
  v71[86] = v63;
  v64 = *(v60 + 20);
  *(v71 + 190) = v64;
  v68 = (*(*v61 + 304) + **(*v61 + 304));
  v65 = swift_task_alloc();
  v71[87] = v65;
  *v65 = v71;
  v65[1] = sub_23323FCEC;
  v66 = *(v71 + 765);
  v67 = *(v71 + 764);

  return v68(v63, v70 + v64, v67, v66);
}

uint64_t sub_23323FCEC()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_233241BFC;
  }

  else
  {
    v2 = sub_23323FE2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23323FE2C()
{
  v1 = *(v0 + 608);
  v2 = swift_task_alloc();
  sub_23328CBEC();
  v3 = sub_23328CBCC();
  v4 = sub_23328CBCC();
  *(v0 + 448) = 0;
  LODWORD(v1) = [v1 moveItemAtURL:v3 toURL:v4 error:v0 + 448];

  v5 = *(v0 + 448);
  if (v1)
  {
    v6 = *(v0 + 688);
    v7 = *(v0 + 632);
    v8 = *(*(v0 + 640) + 8);
    v9 = v5;
    v8(v2, v7);
    v8(v6, v7);
  }

  else
  {
    v10 = *(v0 + 688);
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    v13 = v5;
    v14 = sub_23328CA7C();

    swift_willThrow();
    v15 = *(v11 + 8);
    v15(v2, v12);
    v15(v10, v12);

    sub_23328D30C();
    *(v0 + 280) = 0;
    *(v0 + 288) = 0xE000000000000000;
    sub_23328E24C();
    v16 = *(v0 + 288);
    *(v0 + 264) = *(v0 + 280);
    *(v0 + 272) = v16;
    MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332AC990);
    *(v0 + 352) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
    sub_23328E30C();
    sub_23328D25C();
  }

  v17 = *(v0 + 760);
  v18 = *(v0 + 608);
  v19 = *(v0 + 576);
  v20 = *(v0 + 552);
  sub_23328D30C();
  sub_23328D27C();

  v21 = swift_task_alloc();
  v22 = sub_23328CE8C();
  *(v0 + 712) = v22;
  v23 = *(v22 - 8);
  *(v0 + 720) = v23;
  (*(v23 + 16))(v20, v19 + v17, v22);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v21);
  sub_2332574E0(v20, type metadata accessor for TTSVBPath);
  sub_23328CC6C();
  v24 = sub_23328D95C();

  v25 = [v18 fileExistsAtPath_];

  if (!v25)
  {
    v36 = *(v0 + 640);
    v37 = *(v0 + 632);
    sub_23328D30C();
    sub_23328D27C();

    v34 = *(v36 + 8);
    v34(v21, v37);
    goto LABEL_8;
  }

  v26 = *(v0 + 608);
  v27 = swift_task_alloc();
  sub_23328CBEC();
  v28 = sub_23328CBCC();
  v29 = sub_23328CBCC();
  *(v0 + 416) = 0;
  v30 = [v26 copyItemAtURL:v28 toURL:v29 error:v0 + 416];

  v31 = *(v0 + 416);
  v32 = *(v0 + 640);
  v33 = *(v0 + 632);
  if (v30)
  {
    v34 = *(v32 + 8);
    v35 = v31;
    v34(v27, v33);
    v34(v21, v33);

LABEL_8:

    goto LABEL_10;
  }

  v38 = v31;
  v39 = sub_23328CA7C();

  swift_willThrow();
  v34 = *(v32 + 8);
  v34(v27, v33);
  v34(v21, v33);

  sub_23328D30C();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  sub_23328E24C();
  v40 = *(v0 + 64);
  *(v0 + 72) = *(v0 + 56);
  *(v0 + 80) = v40;
  MEMORY[0x23839B7E0](0xD000000000000025, 0x80000002332ACAE0);
  *(v0 + 440) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  sub_23328E30C();
  sub_23328D25C();

LABEL_10:
  *(v0 + 728) = v34;
  v43 = (*(**(v0 + 480) + 216) + **(**(v0 + 480) + 216));
  v41 = swift_task_alloc();
  *(v0 + 736) = v41;
  *v41 = v0;
  v41[1] = sub_2332404C4;

  return v43();
}

uint64_t sub_2332404C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 744) = v1;

  if (v1)
  {

    v5 = sub_23324215C;
  }

  else
  {
    *(v4 + 752) = a1;
    v5 = sub_23324061C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23324061C()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 576);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_2332384C4(sub_233255020, v4, v1);
  v6 = v5;
  v119 = v2;

  if (*(v6 + 16))
  {
    v7 = *(v0 + 608);
    v8 = swift_task_alloc();
    sub_23328CBEC();
    v9 = sub_23328CBCC();
    *(v0 + 336) = 0;
    LODWORD(v7) = [v7 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v0 + 336];

    v10 = *(v0 + 336);
    v123 = v8;
    if (!v7)
    {
      v42 = *(v0 + 728);
      v43 = *(v0 + 664);
      v44 = *(v0 + 656);
      v133 = *(v0 + 680);
      v45 = *(v0 + 632);
      v122 = *(v0 + 672);
      v126 = *(v0 + 608);
      v46 = *(v0 + 576);
      v47 = v10;

      sub_23328CA7C();

      swift_willThrow();
      sub_233121870(v43, v122);

      v42(v123, v45);
      v42(v133, v45);
      v42(v44, v45);

LABEL_34:

      goto LABEL_35;
    }

    v120 = *(v0 + 720);
    v11 = v10;

    v12 = 0;
    for (i = v6; ; v6 = i)
    {
      v13 = *(v6 + 16);
      if (v12 == v13)
      {
        v14 = 1;
      }

      else
      {
        if (v12 >= v13)
        {
          goto LABEL_44;
        }

        v15 = *(v0 + 528);
        v16 = *(v0 + 520);
        v17 = v6 + ((*(*(v0 + 488) + 80) + 32) & ~*(*(v0 + 488) + 80)) + *(*(v0 + 488) + 72) * v12;
        v18 = *(*(v0 + 504) + 48);
        *v16 = v12;
        sub_233257478(v17, v16 + v18, type metadata accessor for TTSVBInstalledVoiceModel);
        sub_233121D9C(v16, v15, &qword_27DDE3670, &qword_23329F320);
        v14 = 0;
        ++v12;
      }

      v19 = *(v0 + 536);
      v20 = *(v0 + 528);
      v22 = *(v0 + 504);
      v21 = *(v0 + 512);
      (*(v21 + 56))(v20, v14, 1, v22);
      sub_233121D9C(v20, v19, &qword_27DDE3678, &qword_23329F328);
      if ((*(v21 + 48))(v19, 1, v22) == 1)
      {
        break;
      }

      v23 = *(v0 + 536);
      v24 = *v23;
      sub_233257410(v23 + *(*(v0 + 504) + 48), *(v0 + 496), type metadata accessor for TTSVBInstalledVoiceModel);
      v25 = swift_task_alloc();
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      sub_23328D30C();
      *(v0 + 184) = 0;
      *(v0 + 192) = 0xE000000000000000;
      sub_23328E24C();

      *(v0 + 296) = 0xD000000000000010;
      *(v0 + 304) = 0x80000002332ACA70;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }

      v132 = *(v0 + 608);
      v137 = v12;
      v125 = *(v0 + 712);
      *(v0 + 368) = v24 + 1;
      v26 = sub_23328E51C();
      MEMORY[0x23839B7E0](v26);

      MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
      *(v0 + 376) = *(v6 + 16);
      v27 = sub_23328E51C();
      MEMORY[0x23839B7E0](v27);

      MEMORY[0x23839B7E0](8250, 0xE200000000000000);
      swift_getKeyPath();
      v28 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v29 = sub_23328CE3C();
      v31 = v30;
      (*(v120 + 8))(v28, v125);
      MEMORY[0x23839B7E0](v29, v31);

      sub_23328D27C();

      v32 = swift_task_alloc();
      sub_23328CB9C();
      sub_23328CBEC();

      v33 = sub_23328CBCC();
      v34 = sub_23328CBCC();
      *(v0 + 384) = 0;
      LODWORD(v28) = [v132 copyItemAtURL:v33 toURL:v34 error:v0 + 384];

      v35 = *(v0 + 384);
      v36 = *(v0 + 728);
      v37 = *(v0 + 632);
      v38 = *(v0 + 496);
      if (v28)
      {
        v36(v32, *(v0 + 632));
        v36(v25, v37);
        sub_2332574E0(v38, type metadata accessor for TTSVBInstalledVoiceModel);
      }

      else
      {
        v39 = v35;
        v40 = sub_23328CA7C();

        swift_willThrow();
        v36(v32, v37);

        sub_23328D30C();
        *(v0 + 120) = 0;
        *(v0 + 128) = 0xE000000000000000;
        sub_23328E24C();
        v41 = *(v0 + 128);
        *(v0 + 136) = *(v0 + 120);
        *(v0 + 144) = v41;
        MEMORY[0x23839B7E0](0xD00000000000001ELL, 0x80000002332ACA90);
        *(v0 + 408) = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
        sub_23328E30C();
        sub_23328D25C();

        v36(v25, v37);
        sub_2332574E0(v38, type metadata accessor for TTSVBInstalledVoiceModel);
        v119 = 0;
      }

      v12 = v137;

      v8 = v123;
    }

    v48 = *(v0 + 728);
    v49 = *(v0 + 632);
    swift_bridgeObjectRelease_n();
    v48(v8, v49);
  }

  else
  {

    sub_23328D30C();
    sub_23328D27C();
  }

  if (*(v0 + 764) == 1)
  {
    v50 = swift_task_alloc();
    sub_23328CBFC();
    sub_23328D30C();
    sub_23328D27C();

    sub_23328D1AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_23329B0B0;
    *(v51 + 32) = 25389;
    *(v51 + 40) = 0xE200000000000000;
    *(v51 + 48) = 31277;
    *(v51 + 56) = 0xE200000000000000;
    *(v51 + 64) = 26157;
    *(v51 + 72) = 0xE200000000000000;
    *(v51 + 80) = sub_23328CC6C();
    *(v51 + 88) = v52;
    *(v51 + 96) = 17197;
    *(v51 + 104) = 0xE200000000000000;
    *(v51 + 112) = sub_23328CC6C();
    *(v51 + 120) = v53;
    *(v51 + 128) = 46;
    *(v51 + 136) = 0xE100000000000000;
    sub_23328D15C();
    if (v119)
    {
      v54 = *(v0 + 728);
      v55 = *(v0 + 672);
      v56 = *(v0 + 664);
      v134 = *(v0 + 656);
      v57 = *(v0 + 632);
      v58 = v50;
      v59 = *(v0 + 608);
      v127 = *(v0 + 680);
      v129 = *(v0 + 576);

      sub_233121870(v56, v55);

      v54(v58, v57);
      v54(v127, v57);
      v60 = v57;
      v46 = v129;
      v54(v134, v60);

LABEL_33:

      goto LABEL_34;
    }

    v95 = *(v0 + 608);

    sub_23328D30C();
    *(v0 + 312) = 0;
    *(v0 + 320) = 0xE000000000000000;
    sub_23328E24C();

    *(v0 + 40) = 0xD000000000000027;
    *(v0 + 48) = 0x80000002332ACA40;
    v96 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v96);

    sub_23328D27C();

    v97 = sub_23328CBCC();
    *(v0 + 344) = 0;
    v98 = [v95 removeItemAtURL:v97 error:v0 + 344];

    v99 = *(v0 + 344);
    v100 = *(v0 + 728);
    v130 = *(v0 + 680);
    v101 = *(v0 + 672);
    v102 = *(v0 + 664);
    v103 = *(v0 + 656);
    v104 = *(v0 + 632);
    if (!v98)
    {
      v124 = *(v0 + 608);
      v128 = v50;
      v106 = *(v0 + 576);
      v135 = *(v0 + 656);
      v107 = v99;

      sub_23328CA7C();

      v46 = v106;
      swift_willThrow();
      sub_233121870(v102, v101);

      v100(v128, v104);
      v100(v130, v104);
      v100(v135, v104);
      goto LABEL_33;
    }

    v105 = v99;
    sub_233121870(v102, v101);
    v100(v50, v104);
    v100(v130, v104);
    v100(v103, v104);

    v119 = 0;
  }

  else
  {
    v61 = *(v0 + 728);
    v62 = *(v0 + 680);
    v63 = *(v0 + 656);
    v64 = *(v0 + 632);
    sub_233121870(*(v0 + 664), *(v0 + 672));
    v61(v62, v64);
    v61(v63, v64);
  }

  v65 = *(v0 + 576);

  sub_2332574E0(v65, type metadata accessor for TTSVBVoice);
  v66 = *(v0 + 600);
  v67 = *(v0 + 592);
  sub_2332422FC(v67);
  sub_233121D9C(v67, v66, &qword_27DDE3680, &qword_23329F330);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36B0, &unk_23329F348);
  if ((*(*(v68 - 8) + 48))(v66, 1, v68) == 1)
  {
    v69 = *(v0 + 608);

    v70 = *(v0 + 8);
LABEL_36:

    return v70();
  }

  v71 = *(v0 + 600);
  v72 = *v71;
  sub_233257410(v71 + *(v68 + 48), *(v0 + 576), type metadata accessor for TTSVBVoice);
  sub_23328D30C();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  sub_23328E24C();

  *(v0 + 88) = 0xD000000000000010;
  *(v0 + 96) = 0x80000002332AC8E0;
  if (__OFADD__(v72, 1))
  {
    goto LABEL_45;
  }

  v73 = *(v0 + 616);
  v138 = *(v0 + 608);
  v74 = *(v0 + 576);
  *(v0 + 400) = v72 + 1;
  v75 = sub_23328E51C();
  MEMORY[0x23839B7E0](v75);

  MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
  *(v0 + 392) = v73;
  v76 = sub_23328E51C();
  MEMORY[0x23839B7E0](v76);

  MEMORY[0x23839B7E0](8250, 0xE200000000000000);
  v77 = *v74;
  v78 = v74[1];
  MEMORY[0x23839B7E0](*v74, v78);
  sub_23328D27C();

  v79 = sub_23328CC9C();
  *(v0 + 632) = v79;
  v80 = *(v79 - 8);
  v81 = v80;
  *(v0 + 640) = v80;
  *(v0 + 648) = *(v80 + 64);
  v82 = swift_task_alloc();
  *(v0 + 656) = v82;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  sub_23328E24C();

  *(v0 + 152) = v77;
  *(v0 + 160) = v78;
  MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332AC900);
  sub_23328CBEC();

  sub_23328CC6C();
  v83 = sub_23328D95C();

  v84 = [v138 fileExistsAtPath_];

  if (v84)
  {
    v85 = *(v0 + 608);
    v86 = sub_23328CBCC();
    *(v0 + 456) = 0;
    LODWORD(v85) = [v85 removeItemAtURL:v86 error:v0 + 456];

    v87 = *(v0 + 456);
    if (!v85)
    {
LABEL_39:
      v109 = *(v0 + 608);
      v46 = *(v0 + 576);
      v110 = v87;

      sub_23328CA7C();

      swift_willThrow();

      (*(v81 + 8))(v82, v79);
      goto LABEL_35;
    }

    v88 = v87;
  }

  v89 = *(v0 + 608);
  v90 = sub_23328CBCC();
  *(v0 + 360) = 0;
  LODWORD(v89) = [v89 createDirectoryAtURL:v90 withIntermediateDirectories:1 attributes:0 error:v0 + 360];

  v87 = *(v0 + 360);
  if (!v89)
  {
    goto LABEL_39;
  }

  v91 = v87;
  sub_23328D30C();
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  sub_23328E24C();

  *(v0 + 200) = 0xD00000000000002BLL;
  *(v0 + 208) = 0x80000002332AC920;
  v92 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v92);

  sub_23328D27C();

  sub_233254FD8(&qword_27DDE1998, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
  *(v0 + 664) = sub_23328C89C();
  *(v0 + 672) = v93;
  if (v119)
  {
    v94 = *(v0 + 608);
    v46 = *(v0 + 576);

    (*(v81 + 8))(v82, v79);

LABEL_35:

    sub_2332574E0(v46, type metadata accessor for TTSVBVoice);

    v70 = *(v0 + 8);
    goto LABEL_36;
  }

  *(v0 + 680) = swift_task_alloc();
  sub_23328CBEC();
  sub_23328CCEC();
  v131 = *(v0 + 576);
  v111 = *(v0 + 560);
  v112 = *(v0 + 480);
  sub_23328D30C();
  *(v0 + 248) = 0;
  *(v0 + 256) = 0xE000000000000000;
  sub_23328E24C();

  *(v0 + 232) = 0xD00000000000001ALL;
  *(v0 + 240) = 0x80000002332AC950;
  v113 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v113);

  sub_23328D27C();

  sub_23328D30C();
  sub_23328D27C();

  v114 = swift_task_alloc();
  *(v0 + 688) = v114;
  v115 = *(v111 + 20);
  *(v0 + 760) = v115;
  v136 = (*(*v112 + 304) + **(*v112 + 304));
  v116 = swift_task_alloc();
  *(v0 + 696) = v116;
  *v116 = v0;
  v116[1] = sub_23323FCEC;
  v117 = *(v0 + 765);
  v118 = *(v0 + 764);

  return v136(v114, v131 + v115, v118, v117);
}

uint64_t sub_233241BFC()
{
  v1 = *(v0 + 704);

  sub_23328D30C();
  *(v0 + 280) = 0;
  *(v0 + 288) = 0xE000000000000000;
  sub_23328E24C();
  v2 = *(v0 + 288);
  *(v0 + 264) = *(v0 + 280);
  *(v0 + 272) = v2;
  MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332AC990);
  *(v0 + 352) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  sub_23328E30C();
  sub_23328D25C();

  v3 = *(v0 + 760);
  v4 = *(v0 + 608);
  v5 = *(v0 + 576);
  v6 = *(v0 + 552);
  sub_23328D30C();
  sub_23328D27C();

  v7 = swift_task_alloc();
  v8 = sub_23328CE8C();
  *(v0 + 712) = v8;
  v9 = *(v8 - 8);
  *(v0 + 720) = v9;
  (*(v9 + 16))(v6, v5 + v3, v8);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v7);
  sub_2332574E0(v6, type metadata accessor for TTSVBPath);
  sub_23328CC6C();
  v10 = sub_23328D95C();

  v11 = [v4 fileExistsAtPath_];

  if (!v11)
  {
    v22 = *(v0 + 640);
    v23 = *(v0 + 632);
    sub_23328D30C();
    sub_23328D27C();

    v20 = *(v22 + 8);
    v20(v7, v23);
    goto LABEL_5;
  }

  v12 = *(v0 + 608);
  v13 = swift_task_alloc();
  sub_23328CBEC();
  v14 = sub_23328CBCC();
  v15 = sub_23328CBCC();
  *(v0 + 416) = 0;
  v16 = [v12 copyItemAtURL:v14 toURL:v15 error:v0 + 416];

  v17 = *(v0 + 416);
  v18 = *(v0 + 640);
  v19 = *(v0 + 632);
  if (v16)
  {
    v20 = *(v18 + 8);
    v21 = v17;
    v20(v13, v19);
    v20(v7, v19);

LABEL_5:

    goto LABEL_7;
  }

  v24 = v17;
  v25 = sub_23328CA7C();

  swift_willThrow();
  v20 = *(v18 + 8);
  v20(v13, v19);
  v20(v7, v19);

  sub_23328D30C();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  sub_23328E24C();
  v26 = *(v0 + 64);
  *(v0 + 72) = *(v0 + 56);
  *(v0 + 80) = v26;
  MEMORY[0x23839B7E0](0xD000000000000025, 0x80000002332ACAE0);
  *(v0 + 440) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  sub_23328E30C();
  sub_23328D25C();

LABEL_7:
  *(v0 + 728) = v20;
  v29 = (*(**(v0 + 480) + 216) + **(**(v0 + 480) + 216));
  v27 = swift_task_alloc();
  *(v0 + 736) = v27;
  *v27 = v0;
  v27[1] = sub_2332404C4;

  return v29();
}

uint64_t sub_23324215C()
{
  v1 = v0[91];
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[79];
  v5 = v0[76];
  v6 = v0[72];
  sub_233121870(v0[83], v0[84]);

  v1(v2, v4);
  v1(v3, v4);

  sub_2332574E0(v6, type metadata accessor for TTSVBVoice);

  v7 = v0[1];

  return v7();
}

void sub_2332422FC(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36B0, &unk_23329F348);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v4;
      v12 = *(type metadata accessor for TTSVBVoice(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      sub_233257478(v13, v7 + v14, type metadata accessor for TTSVBVoice);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_233121D9C(v7, a1, &qword_27DDE36B0, &unk_23329F348);
        (*(v17 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2332424EC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v2 = sub_23328CE8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBInstalledVoiceModel.subscript.getter();

  type metadata accessor for TTSVBVoice(0);
  v6 = sub_23328CE5C();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_23324261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[20] = type metadata accessor for TTSVBPath(0);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36B8, &qword_23329F3A8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233242730, 0, 0);
}

uint64_t sub_233242730()
{
  v1 = [objc_opt_self() defaultManager];
  *(v0 + 200) = v1;
  *(v0 + 488) = 0;
  sub_23328CC6C();
  v2 = sub_23328D95C();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:v0 + 488];

  if (v3)
  {
    v4 = sub_23328CC9C();
    *(v0 + 208) = v4;
    v5 = *(v4 - 8);
    v6 = v5;
    *(v0 + 216) = v5;
    *(v0 + 224) = *(v5 + 64);
    v7 = swift_task_alloc();
    *(v0 + 232) = v7;
    sub_23328CC6C();
    v8 = sub_23328DACC();
    *(v0 + 489) = v8 & 1;

    if (v8)
    {
      sub_23328CBDC();
      v9 = sub_23328CBCC();
      *(v0 + 120) = 0;
      v10 = [v1 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v0 + 120];

      v11 = *(v0 + 120);
      v69 = v6;
      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v14 = v11;
        v15 = sub_23328CA7C();

        swift_willThrow();
      }

      sub_23328D30C();
      sub_23328D27C();

      sub_23328D1AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_23329F260;
      *(v16 + 32) = 30765;
      *(v16 + 40) = 0xE200000000000000;
      *(v16 + 48) = 31277;
      *(v16 + 56) = 0xE200000000000000;
      *(v16 + 64) = 26157;
      *(v16 + 72) = 0xE200000000000000;
      *(v16 + 80) = sub_23328CC6C();
      *(v16 + 88) = v17;
      *(v16 + 96) = 17197;
      *(v16 + 104) = 0xE200000000000000;
      *(v16 + 112) = sub_23328CC6C();
      *(v16 + 120) = v18;
      sub_23328D15C();

LABEL_14:
      v21 = *(v0 + 192);
      sub_23328D30C();
      sub_23328E24C();

      v22 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v22);

      sub_23328D27C();

      v23 = type metadata accessor for TTSVBVoice(0);
      *(v0 + 240) = v23;
      v68 = *(v23 - 8);
      v24 = *(v68 + 56);
      v24(v21, 1, 1, v23);
      v25 = swift_task_alloc();
      sub_23328CBEC();
      v65 = v4;
      v26 = sub_23328CCAC();
      v28 = v27;
      sub_23328C85C();
      swift_allocObject();
      sub_23328C84C();
      sub_233254FD8(&qword_27DDE1990, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
      v63 = v26;
      v64 = v28;
      sub_23328C83C();
      v58 = *(v0 + 184);
      v59 = *(v0 + 192);
      v60 = *(v0 + 176);

      v24(v58, 0, 1, v23);
      sub_2332550EC(v58, v59);
      sub_23328D30C();
      sub_23328E24C();
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      MEMORY[0x23839B7E0](0xD000000000000019, 0x80000002332ACD60);
      sub_233121D34(v59, v60, &qword_27DDE36B8, &qword_23329F3A8);
      result = (*(v68 + 48))(v60, 1, v23);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v61 = *(v0 + 176);
        sub_23328E30C();
        sub_2332574E0(v61, type metadata accessor for TTSVBVoice);
        sub_23328D27C();

        sub_233121870(v63, v64);
        v62 = *(v69 + 8);
        v62(v25, v65);

        *(v0 + 248) = v62;
        v29 = *(v0 + 144);
        if (v29)
        {
          v30 = *(v0 + 136);
        }

        else
        {
          v35 = *(v0 + 192);
          if ((*(v68 + 48))(v35, 1, v23))
          {
            v36 = swift_task_alloc();
            sub_23328CBDC();
            v30 = sub_23328CB9C();
            v29 = v37;
            v62(v36, v65);

            if (sub_23328DACC())
            {
              v38 = sub_23328DA4C();
              v39 = sub_233255050(v38, v30, v29);
              v41 = v40;
              v43 = v42;
              v45 = v44;

              v30 = MEMORY[0x23839B770](v39, v41, v43, v45);
              v29 = v46;
            }
          }

          else
          {
            v30 = *v35;
            v29 = v35[1];
          }
        }

        *(v0 + 256) = v29;
        v31 = *(v0 + 192);

        sub_23328D30C();
        sub_23328E24C();

        MEMORY[0x23839B7E0](v30, v29);
        sub_23328D27C();

        v32 = *(v68 + 48);
        *(v0 + 264) = v32;
        *(v0 + 272) = (v68 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if (v32(v31, 1, v23))
        {
          v33 = 0xE500000000000000;
          v34 = 0x53552D6E65;
        }

        else
        {
          v47 = (*(v0 + 192) + *(v23 + 24));
          v34 = *v47;
          v33 = v47[1];
        }

        *(v0 + 280) = v33;
        sub_23328D30C();
        sub_23328E24C();

        MEMORY[0x23839B7E0](v34, v33);
        sub_23328D27C();

        v48 = sub_23328CE8C();
        *(v0 + 288) = v48;
        v49 = *(v48 - 8);
        *(v0 + 296) = v49;
        *(v0 + 304) = *(v49 + 64);
        *(v0 + 312) = swift_task_alloc();
        v50 = swift_task_alloc();
        *(v0 + 320) = v50;
        sub_23328CBEC();
        sub_23328CC6C();
        v51 = sub_23328D95C();

        v52 = [v1 fileExistsAtPath_];

        sub_23328D30C();
        v53 = *(v0 + 152);
        if (v52)
        {
          sub_23328E24C();
          MEMORY[0x23839B7E0](0xD00000000000002FLL, 0x80000002332ACD30);
          MEMORY[0x23839B7E0](v30, v29);
          MEMORY[0x23839B7E0](0x656C61636F4C2027, 0xEC000000273D4449);
          MEMORY[0x23839B7E0](v34, v33);
          MEMORY[0x23839B7E0](39, 0xE100000000000000);
          sub_23328D27C();

          v54 = swift_task_alloc();
          *(v0 + 328) = v54;
          v66 = (*(*v53 + 288) + **(*v53 + 288));
          v55 = swift_task_alloc();
          *(v0 + 336) = v55;
          *v55 = v0;
          v55[1] = sub_233243818;

          return v66(v54, v30, v29, v34, v33, v50);
        }

        else
        {
          sub_23328E24C();
          MEMORY[0x23839B7E0](0xD000000000000031, 0x80000002332ACC50);
          MEMORY[0x23839B7E0](v30, v29);
          MEMORY[0x23839B7E0](0x656C61636F4C2027, 0xEC000000273D4449);
          MEMORY[0x23839B7E0](v34, v33);
          MEMORY[0x23839B7E0](39, 0xE100000000000000);
          sub_23328D27C();

          v56 = swift_task_alloc();
          *(v0 + 352) = v56;
          v67 = (*(*v53 + 256) + **(*v53 + 256));
          v57 = swift_task_alloc();
          *(v0 + 360) = v57;
          *v57 = v0;
          v57[1] = sub_23324456C;

          return v67(v56, v30, v29, v34, v33);
        }
      }

      return result;
    }

    if (*(v0 + 488))
    {
      v69 = v6;
      (*(v6 + 16))(v7, *(v0 + 128), v4);
      goto LABEL_14;
    }

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();
  }

  else
  {
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000032, 0x80000002332ACB40);
    v13 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v13);

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0], MEMORY[0x277CE66C8]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_233243818()
{
  *(*v1 + 344) = v0;

  if (v0)
  {

    v2 = sub_233245B90;
  }

  else
  {
    v2 = sub_233243990;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233243990()
{
  v1 = *(v0 + 200);
  (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 328), *(v0 + 288));

  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  sub_23328CBEC();
  sub_23328CC6C();
  v3 = sub_23328D95C();

  LODWORD(v1) = [v1 fileExistsAtPath_];

  sub_23328D30C();
  if (v1)
  {
    v4 = *(v0 + 312);
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v85 = *(v0 + 208);
    v89 = *(v0 + 248);
    v91 = *(v0 + 200);
    v7 = *(v0 + 168);
    sub_23328D27C();

    v8 = sub_23328CBCC();
    (*(v5 + 16))(v7, v4, v6);
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    TTSVBPath.url.getter(v9);
    sub_2332574E0(v7, type metadata accessor for TTSVBPath);
    v10 = sub_23328CBCC();
    v89(v9, v85);

    *(v0 + 112) = 0;
    v11 = [v91 copyItemAtURL:v8 toURL:v10 error:v0 + 112];

    v12 = *(v0 + 112);
    if (!v11)
    {
      v59 = *(v0 + 296);
      v80 = *(v0 + 320);
      v81 = *(v0 + 288);
      v60 = *(v0 + 248);
      v94 = *(v0 + 489);
      v61 = *(v0 + 232);
      v62 = *(v0 + 208);
      v90 = *(v0 + 200);
      v83 = *(v0 + 312);
      v86 = *(v0 + 192);
      v63 = v12;

      sub_23328CA7C();

      swift_willThrow();
      v60(v2, v62);
      v60(v80, v62);
      (*(v59 + 8))(v83, v81);

      sub_233121E04(v86, &qword_27DDE36B8, &qword_23329F3A8);
      sub_23324604C(v94, v61, v90);

      v60(v61, v62);

      v58 = *(v0 + 8);
      goto LABEL_15;
    }

    v13 = v12;
  }

  else
  {
    sub_23328D27C();
  }

  v14 = *(v0 + 200);
  v15 = swift_task_alloc();
  *(v0 + 384) = v15;
  sub_23328CBEC();
  v16 = sub_23328CBCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_233297B30;
  v18 = *MEMORY[0x277CBE868];
  *(v17 + 32) = *MEMORY[0x277CBE868];
  type metadata accessor for URLResourceKey(0);
  v19 = v18;
  v20 = sub_23328DBDC();

  *(v0 + 88) = 0;
  v21 = [v14 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:v20 options:4 error:v0 + 88];

  v22 = *(v0 + 88);
  if (v21)
  {
    v23 = sub_23328DBFC();
    v24 = v22;
  }

  else
  {
    v25 = v22;
    v26 = sub_23328CA7C();

    swift_willThrow();
    v23 = MEMORY[0x277D84F90];
  }

  *(v0 + 392) = v23;
  v27 = *(v23 + 16);
  *(v0 + 400) = v27;
  if (!v27)
  {
    v48 = *(v0 + 320);
    v93 = *(v0 + 312);
    v49 = *(v0 + 288);
    v50 = *(v0 + 296);
    v51 = *(v0 + 248);
    v52 = *(v0 + 208);

    sub_23328D30C();
    sub_23328D27C();

    v51(v15, v52);
    v51(v2, v52);
    v51(v48, v52);
    (*(v50 + 8))(v93, v49);
    goto LABEL_13;
  }

  *(v0 + 408) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C0, &qword_23329F3B8) - 8) + 64);
  *(v0 + 416) = swift_task_alloc();
  v28 = swift_task_alloc();
  if (!*(v23 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v29 = v28;
  v30 = *(v0 + 208);
  v31 = *(v0 + 216);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
  v34 = *(v33 - 8);
  v35 = swift_task_alloc();
  v36 = *(v33 + 48);
  *v35 = 0;
  (*(v31 + 16))(&v35[v36], v23 + v32, v30);
  sub_233121D9C(v35, v29, &qword_27DDE36C8, qword_23329F3C0);
  (*(v34 + 56))(v29, 0, 1, v33);

  v37 = *(v0 + 416);
  *(v0 + 424) = 1;
  sub_233121D9C(v29, v37, &qword_27DDE36C0, &qword_23329F3B8);

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
  v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
  v40 = *(v0 + 416);
  if (v39 == 1)
  {
    v41 = *(v0 + 384);
    v42 = *(v0 + 376);
    v43 = *(v0 + 320);
    v92 = *(v0 + 312);
    v44 = *(v0 + 288);
    v45 = *(v0 + 296);
    v46 = *(v0 + 248);
    v47 = *(v0 + 208);

    v46(v41, v47);
    v46(v42, v47);
    v46(v43, v47);
    (*(v45 + 8))(v92, v44);

LABEL_13:
    v53 = *(v0 + 489);
    v54 = *(v0 + 232);
    v56 = *(v0 + 200);
    v55 = *(v0 + 208);
    v57 = *(v0 + 192);
    v82 = *(v0 + 248);

    sub_233121E04(v57, &qword_27DDE36B8, &qword_23329F3A8);
    sub_23324604C(v53, v54, v56);

    v82(v54, v55);

    v58 = *(v0 + 8);
LABEL_15:

    return v58();
  }

  v65 = *(v0 + 216);
  v66 = swift_task_alloc();
  *(v0 + 432) = v66;
  v67 = *v40;
  v95 = v66;
  (*(v65 + 32))();
  sub_23328D30C();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  sub_23328E24C();

  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000002332ACCC0;
  v68 = v67 + 1;
  if (__OFADD__(v67, 1))
  {
LABEL_26:
    __break(1u);
  }

  v69 = *(v0 + 392);
  v70 = *(v0 + 296);
  v87 = *(v0 + 264);
  v84 = *(v0 + 240);
  v71 = *(v0 + 192);
  *(v0 + 96) = v68;
  v72 = sub_23328E51C();
  MEMORY[0x23839B7E0](v72);

  MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
  *(v0 + 104) = *(v69 + 16);
  v73 = sub_23328E51C();
  MEMORY[0x23839B7E0](v73);

  sub_23328D27C();

  v74 = swift_task_alloc();
  *(v0 + 440) = v74;
  (*(v70 + 16))();
  if (v87(v71, 1, v84))
  {
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v77 = (*(v0 + 192) + *(*(v0 + 240) + 24));
    v75 = *v77;
    v76 = v77[1];
  }

  *(v0 + 448) = v76;
  v78 = *(**(v0 + 152) + 280);
  v88 = (v78 + *v78);
  v79 = swift_task_alloc();
  *(v0 + 456) = v79;
  *v79 = v0;
  v79[1] = sub_2332452C0;

  return v88(v74, v75, v76, v95);
}

uint64_t sub_23324456C()
{
  *(*v1 + 368) = v0;

  if (v0)
  {

    v2 = sub_233245CF4;
  }

  else
  {
    v2 = sub_2332446E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2332446E4()
{
  v1 = *(v0 + 200);
  (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 352), *(v0 + 288));

  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  sub_23328CBEC();
  sub_23328CC6C();
  v3 = sub_23328D95C();

  LODWORD(v1) = [v1 fileExistsAtPath_];

  sub_23328D30C();
  if (v1)
  {
    v4 = *(v0 + 312);
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v85 = *(v0 + 208);
    v89 = *(v0 + 248);
    v91 = *(v0 + 200);
    v7 = *(v0 + 168);
    sub_23328D27C();

    v8 = sub_23328CBCC();
    (*(v5 + 16))(v7, v4, v6);
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    TTSVBPath.url.getter(v9);
    sub_2332574E0(v7, type metadata accessor for TTSVBPath);
    v10 = sub_23328CBCC();
    v89(v9, v85);

    *(v0 + 112) = 0;
    v11 = [v91 copyItemAtURL:v8 toURL:v10 error:v0 + 112];

    v12 = *(v0 + 112);
    if (!v11)
    {
      v59 = *(v0 + 296);
      v80 = *(v0 + 320);
      v81 = *(v0 + 288);
      v60 = *(v0 + 248);
      v94 = *(v0 + 489);
      v61 = *(v0 + 232);
      v62 = *(v0 + 208);
      v90 = *(v0 + 200);
      v83 = *(v0 + 312);
      v86 = *(v0 + 192);
      v63 = v12;

      sub_23328CA7C();

      swift_willThrow();
      v60(v2, v62);
      v60(v80, v62);
      (*(v59 + 8))(v83, v81);

      sub_233121E04(v86, &qword_27DDE36B8, &qword_23329F3A8);
      sub_23324604C(v94, v61, v90);

      v60(v61, v62);

      v58 = *(v0 + 8);
      goto LABEL_15;
    }

    v13 = v12;
  }

  else
  {
    sub_23328D27C();
  }

  v14 = *(v0 + 200);
  v15 = swift_task_alloc();
  *(v0 + 384) = v15;
  sub_23328CBEC();
  v16 = sub_23328CBCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_233297B30;
  v18 = *MEMORY[0x277CBE868];
  *(v17 + 32) = *MEMORY[0x277CBE868];
  type metadata accessor for URLResourceKey(0);
  v19 = v18;
  v20 = sub_23328DBDC();

  *(v0 + 88) = 0;
  v21 = [v14 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:v20 options:4 error:v0 + 88];

  v22 = *(v0 + 88);
  if (v21)
  {
    v23 = sub_23328DBFC();
    v24 = v22;
  }

  else
  {
    v25 = v22;
    v26 = sub_23328CA7C();

    swift_willThrow();
    v23 = MEMORY[0x277D84F90];
  }

  *(v0 + 392) = v23;
  v27 = *(v23 + 16);
  *(v0 + 400) = v27;
  if (!v27)
  {
    v48 = *(v0 + 320);
    v93 = *(v0 + 312);
    v49 = *(v0 + 288);
    v50 = *(v0 + 296);
    v51 = *(v0 + 248);
    v52 = *(v0 + 208);

    sub_23328D30C();
    sub_23328D27C();

    v51(v15, v52);
    v51(v2, v52);
    v51(v48, v52);
    (*(v50 + 8))(v93, v49);
    goto LABEL_13;
  }

  *(v0 + 408) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C0, &qword_23329F3B8) - 8) + 64);
  *(v0 + 416) = swift_task_alloc();
  v28 = swift_task_alloc();
  if (!*(v23 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v29 = v28;
  v30 = *(v0 + 208);
  v31 = *(v0 + 216);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
  v34 = *(v33 - 8);
  v35 = swift_task_alloc();
  v36 = *(v33 + 48);
  *v35 = 0;
  (*(v31 + 16))(&v35[v36], v23 + v32, v30);
  sub_233121D9C(v35, v29, &qword_27DDE36C8, qword_23329F3C0);
  (*(v34 + 56))(v29, 0, 1, v33);

  v37 = *(v0 + 416);
  *(v0 + 424) = 1;
  sub_233121D9C(v29, v37, &qword_27DDE36C0, &qword_23329F3B8);

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
  v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
  v40 = *(v0 + 416);
  if (v39 == 1)
  {
    v41 = *(v0 + 384);
    v42 = *(v0 + 376);
    v43 = *(v0 + 320);
    v92 = *(v0 + 312);
    v44 = *(v0 + 288);
    v45 = *(v0 + 296);
    v46 = *(v0 + 248);
    v47 = *(v0 + 208);

    v46(v41, v47);
    v46(v42, v47);
    v46(v43, v47);
    (*(v45 + 8))(v92, v44);

LABEL_13:
    v53 = *(v0 + 489);
    v54 = *(v0 + 232);
    v56 = *(v0 + 200);
    v55 = *(v0 + 208);
    v57 = *(v0 + 192);
    v82 = *(v0 + 248);

    sub_233121E04(v57, &qword_27DDE36B8, &qword_23329F3A8);
    sub_23324604C(v53, v54, v56);

    v82(v54, v55);

    v58 = *(v0 + 8);
LABEL_15:

    return v58();
  }

  v65 = *(v0 + 216);
  v66 = swift_task_alloc();
  *(v0 + 432) = v66;
  v67 = *v40;
  v95 = v66;
  (*(v65 + 32))();
  sub_23328D30C();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  sub_23328E24C();

  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000002332ACCC0;
  v68 = v67 + 1;
  if (__OFADD__(v67, 1))
  {
LABEL_26:
    __break(1u);
  }

  v69 = *(v0 + 392);
  v70 = *(v0 + 296);
  v87 = *(v0 + 264);
  v84 = *(v0 + 240);
  v71 = *(v0 + 192);
  *(v0 + 96) = v68;
  v72 = sub_23328E51C();
  MEMORY[0x23839B7E0](v72);

  MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
  *(v0 + 104) = *(v69 + 16);
  v73 = sub_23328E51C();
  MEMORY[0x23839B7E0](v73);

  sub_23328D27C();

  v74 = swift_task_alloc();
  *(v0 + 440) = v74;
  (*(v70 + 16))();
  if (v87(v71, 1, v84))
  {
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v77 = (*(v0 + 192) + *(*(v0 + 240) + 24));
    v75 = *v77;
    v76 = v77[1];
  }

  *(v0 + 448) = v76;
  v78 = *(**(v0 + 152) + 280);
  v88 = (v78 + *v78);
  v79 = swift_task_alloc();
  *(v0 + 456) = v79;
  *v79 = v0;
  v79[1] = sub_2332452C0;

  return v88(v74, v75, v76, v95);
}

uint64_t sub_2332452C0()
{
  v2 = *v1;
  v2[58] = v0;

  v3 = v2[55];
  if (v0)
  {
    v4 = v2[36];
    v5 = v2[37];
    v6 = *(v5 + 8);
    v2[59] = v6;
    v2[60] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);

    v7 = sub_233245E58;
  }

  else
  {
    (*(v2[37] + 8))();

    v7 = sub_233245494;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_233245494()
{
  (*(v0 + 248))(*(v0 + 432), *(v0 + 208));

  v1 = *(v0 + 424);
  v2 = *(v0 + 400);
  v3 = swift_task_alloc();
  if (v1 == v2)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = *(v0 + 400);
  }

  else
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
    }

    v6 = *(v0 + 392);
    if (v1 >= *(v6 + 16))
    {
      goto LABEL_19;
    }

    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    v5 = v1 + 1;
    v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
    v11 = *(v10 - 8);
    v12 = swift_task_alloc();
    v13 = *(v10 + 48);
    *v12 = v1;
    (*(v8 + 16))(&v12[v13], v9, v7);
    sub_233121D9C(v12, v3, &qword_27DDE36C8, qword_23329F3C0);
    (*(v11 + 56))(v3, 0, 1, v10);
  }

  *(v0 + 424) = v5;
  v14 = *(v0 + 416);
  sub_233121D9C(v3, v14, &qword_27DDE36C0, &qword_23329F3B8);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    v16 = *(v0 + 384);
    v17 = *(v0 + 376);
    v19 = *(v0 + 312);
    v18 = *(v0 + 320);
    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 248);
    v23 = *(v0 + 208);

    v22(v16, v23);
    v22(v17, v23);
    v22(v18, v23);
    (*(v21 + 8))(v19, v20);

    v24 = *(v0 + 208);
    v25 = *(v0 + 248);
    v26 = *(v0 + 489);
    v27 = *(v0 + 232);
    v29 = *(v0 + 192);
    v28 = *(v0 + 200);

    sub_233121E04(v29, &qword_27DDE36B8, &qword_23329F3A8);
    sub_23324604C(v26, v27, v28);

    v25(v27, v24);

    v30 = *(v0 + 8);

    return v30();
  }

  v32 = *(v0 + 416);
  v33 = *(v0 + 216);
  v34 = swift_task_alloc();
  *(v0 + 432) = v34;
  v35 = *v32;
  (*(v33 + 32))();
  sub_23328D30C();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  sub_23328E24C();

  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000002332ACCC0;
  v36 = v35 + 1;
  if (__OFADD__(v35, 1))
  {
    goto LABEL_18;
  }

  v37 = *(v0 + 392);
  v38 = *(v0 + 296);
  v48 = v34;
  v50 = *(v0 + 264);
  v49 = *(v0 + 240);
  v39 = *(v0 + 192);
  *(v0 + 96) = v36;
  v40 = sub_23328E51C();
  MEMORY[0x23839B7E0](v40);

  MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
  *(v0 + 104) = *(v37 + 16);
  v41 = sub_23328E51C();
  MEMORY[0x23839B7E0](v41);

  sub_23328D27C();

  v42 = swift_task_alloc();
  *(v0 + 440) = v42;
  (*(v38 + 16))();
  if (v50(v39, 1, v49))
  {
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v45 = (*(v0 + 192) + *(*(v0 + 240) + 24));
    v43 = *v45;
    v44 = v45[1];
  }

  *(v0 + 448) = v44;
  v46 = *(**(v0 + 152) + 280);
  v51 = (v46 + *v46);
  v47 = swift_task_alloc();
  *(v0 + 456) = v47;
  *v47 = v0;
  v47[1] = sub_2332452C0;

  return v51(v42, v43, v44, v48);
}

uint64_t sub_233245B90()
{
  v1 = *(v0 + 248);
  v8 = *(v0 + 489);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v1(*(v0 + 320), v3);

  sub_233121E04(v5, &qword_27DDE36B8, &qword_23329F3A8);
  sub_23324604C(v8, v2, v4);

  v1(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_233245CF4()
{
  v1 = *(v0 + 248);
  v8 = *(v0 + 489);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v1(*(v0 + 320), v3);

  sub_233121E04(v5, &qword_27DDE36B8, &qword_23329F3A8);
  sub_23324604C(v8, v2, v4);

  v1(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_233245E58()
{
  v11 = *(v0 + 472);
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v10 = *(v0 + 288);
  v5 = *(v0 + 248);
  v14 = *(v0 + 489);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  v12 = *(v0 + 192);
  v13 = *(v0 + 200);
  v5(*(v0 + 432), v7);
  v5(v2, v7);
  v5(v1, v7);
  v5(v4, v7);
  v11(v3, v10);

  sub_233121E04(v12, &qword_27DDE36B8, &qword_23329F3A8);
  sub_23324604C(v14, v6, v13);

  v5(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

void sub_23324604C(uint64_t a1, uint64_t a2, void *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    sub_23328D30C();
    sub_23328E24C();

    v10[1] = 0x80000002332AE4F0;
    v4 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v4);

    sub_23328D27C();

    v5 = sub_23328CBCC();
    v10[0] = 0;
    LODWORD(a3) = [a3 removeItemAtURL:v5 error:v10];

    v6 = v10[0];
    if (a3)
    {

      v7 = v6;
    }

    else
    {
      v8 = v10[0];
      v9 = sub_23328CA7C();

      swift_willThrow();
    }
  }
}

uint64_t sub_2332461E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_233246200, 0, 0);
}

uint64_t sub_233246200(uint64_t a1)
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

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000015, 0x80000002332ACDC0, sub_23325515C, v3, v5);
}

uint64_t sub_233246394()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_233257C90;
  }

  else
  {

    v2 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2332464B0(uint64_t a1)
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
  TTSVBService.deleteVoice(withID:completion:)();
}

uint64_t sub_233246610(uint64_t a1)
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

uint64_t sub_233246848(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_233246868, 0, 0);
}

uint64_t sub_233246868(uint64_t a1)
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

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000015, 0x80000002332ACDE0, sub_233255164, v3, v5);
}

uint64_t sub_2332469FC(uint64_t a1)
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
  TTSVBService.deleteModel(withID:completion:)();
}

uint64_t sub_233246B5C(uint64_t a1)
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

uint64_t sub_233246D94()
{
  *(v0 + 160) = type metadata accessor for TTSVBPath(0);
  *(v0 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233246E24, 0, 0);
}

uint64_t sub_233246E24(uint64_t a1)
{
  v2 = *(v1 + 168);
  sub_23328D30C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26E0, &unk_23329B9C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297B30;
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD00000000000002FLL;
  *(v3 + 40) = 0x80000002332ACE00;
  sub_23328D26C();

  v36 = sub_23328CC9C();
  v35 = *(v36 - 8);
  v5 = swift_task_alloc();
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v5);
  sub_2332574E0(v2, type metadata accessor for TTSVBPath);
  v6 = [objc_opt_self() defaultManager];
  sub_23328CC6C();
  v7 = sub_23328D95C();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    v9 = *(v1 + 168);
    v34 = v5;
    sub_23328D30C();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_233297B30;
    sub_23328E24C();

    swift_storeEnumTagMultiPayload();
    v11 = swift_task_alloc();
    TTSVBPath.url.getter(v11);
    sub_2332574E0(v9, type metadata accessor for TTSVBPath);
    v12 = sub_23328CC6C();
    v14 = v13;
    v15 = *(v35 + 8);
    v15(v11, v36);
    MEMORY[0x23839B7E0](v12, v14);

    *(v10 + 56) = v4;
    *(v10 + 32) = 0xD000000000000014;
    *(v10 + 40) = 0x80000002332ACEF0;
    sub_23328D26C();

    sub_23328D1AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_233297630;
    *(v16 + 32) = 6713901;
    *(v16 + 40) = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    v17 = swift_task_alloc();
    TTSVBPath.url.getter(v17);
    sub_2332574E0(v9, type metadata accessor for TTSVBPath);
    v18 = sub_23328CC6C();
    v20 = v19;
    v33 = v15;
    v15(v17, v36);
    *(v16 + 48) = v18;
    *(v16 + 56) = v20;

    sub_23328D15C();

    v21 = *(v1 + 168);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_233297630;
    *(v22 + 32) = 6713901;
    *(v22 + 40) = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    v23 = swift_task_alloc();
    TTSVBPath.url.getter(v23);
    sub_2332574E0(v21, type metadata accessor for TTSVBPath);
    v24 = sub_23328CC6C();
    v26 = v25;
    v33(v23, v36);
    *(v22 + 48) = v24;
    *(v22 + 56) = v26;

    sub_23328D15C();

    v5 = v34;
    v4 = MEMORY[0x277D837D0];
  }

  sub_23328D30C();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_233297B30;
  *(v27 + 56) = v4;
  *(v27 + 32) = 0xD000000000000030;
  *(v27 + 40) = 0x80000002332ACE30;
  sub_23328D26C();

  sub_23328D1AC();
  sub_23328D15C();
  sub_23328D15C();
  sub_23328D30C();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_233297B30;
  v29 = MEMORY[0x277D837D0];
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 32) = 0xD000000000000015;
  *(v28 + 40) = 0x80000002332ACE90;
  sub_23328D26C();

  sub_23328D15C();
  sub_23328D30C();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_233297B30;
  *(v30 + 56) = v29;
  *(v30 + 32) = 0xD000000000000010;
  *(v30 + 40) = 0x80000002332ACED0;
  sub_23328D26C();

  sub_23328D15C();
  (*(v35 + 8))(v5, v36);

  v31 = *(v1 + 8);

  return v31();
}