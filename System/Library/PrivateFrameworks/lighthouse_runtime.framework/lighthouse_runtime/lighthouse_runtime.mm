uint64_t sub_2771BA5B0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2771BA630()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2771BA6B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2771BA6E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = type metadata accessor for PluginContext(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 24);
    v8 = sub_2771CA944();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2771BA848()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2771BA8C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for PluginContext(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 24);
    v8 = sub_2771CA944();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2771BAA20()
{
  v1 = (type metadata accessor for PluginContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_2771CA944();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_2771BAB4C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2771CA944();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2771BABF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2771CA944();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2771BACA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2771BACE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2771BAD1C()
{
  MEMORY[0x277CA8C70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2771BAD54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2771BAD94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2771BADD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2771BAE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a4(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void *sub_2771BAEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_2771CB4A8;
}

uint64_t sub_2771BAFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 24) + **(a5 + 24));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_2771BB108;

  return v11(a1, a4, a5);
}

uint64_t sub_2771BB108()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2771BB1FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2771BB21C, 0, 0);
}

uint64_t sub_2771BB21C()
{
  v4 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2771BB310;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_2771BB310()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t GenericReporter.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2771BB45C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2771BB9C4;

  return sub_2771BB1FC(a1);
}

void *sub_2771BB514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_2771BAEB0(a1, *(*v3 + 80), a2, a3);
  v3[3] = v4;
  return v3;
}

void *sub_2771BB550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GenericReporter(0, *(v4 + 80), *(v4 + 88), a4);
  v8 = swift_allocObject();
  v8[2] = sub_2771BAEB0(a1, *(*v8 + 80), a2, a3);
  v8[3] = v9;
  return v8;
}

uint64_t dispatch thunk of Reporter.report(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2771BB9C4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of GenericReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2771BB108;

  return v6(a1);
}

uint64_t sub_2771BB8A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2771BB9C4;

  return sub_2771BAFDC(a1, v1 + v7, v4, v5, v6);
}

uint64_t sub_2771BB9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a4(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void *sub_2771BBA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v9 + 32))(&v13[v12], v11, a4);
  return &unk_2771CB580;
}

uint64_t sub_2771BBB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(a7 + 40) + **(a7 + 40));
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_2771BB108;

  return v14(a1, a2, a6, a7);
}

uint64_t sub_2771BBCD0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2771BBCF4, 0, 0);
}

uint64_t sub_2771BBCF4()
{
  v5 = (*(v0[4] + 16) + **(v0[4] + 16));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2771BBDE8;
  v2 = v0[2];
  v3 = v0[3];

  return v5(v2, v3);
}

uint64_t sub_2771BBDE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t GenericWorker.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2771BBF34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2771BB9C4;

  return sub_2771BBCD0(a1, a2);
}

void *sub_2771BBFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_2771BBA64(a1, *(*v3 + 80), *(*v3 + 88), a2, a3);
  v3[3] = v4;
  return v3;
}

void *sub_2771BC034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 96);
  v11[0] = *(v3 + 80);
  v11[1] = v7;
  type metadata accessor for GenericWorker(0, v11);
  v8 = swift_allocObject();
  v8[2] = sub_2771BBA64(a1, *(*v8 + 80), *(*v8 + 88), a2, a3);
  v8[3] = v9;
  return v8;
}

uint64_t dispatch thunk of Worker.doWork(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2771BB9C4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GenericWorker.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2771BB108;

  return v8(a1, a2);
}

uint64_t sub_2771BC3D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = (*(*(v8 - 8) + 80) + 48) & ~*(*(v8 - 8) + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2771BB9C4;

  return sub_2771BBB98(a1, a2, v2 + v10, v6, v7, v8, v9);
}

uint64_t *LighthouseRuntimeProcessor.__allocating_init(task:plugin:enforceDiagnosticCheck:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_allocObject();
  return LighthouseRuntimeProcessor.init(task:plugin:enforceDiagnosticCheck:)(a1, a2, v3);
}

uint64_t *LighthouseRuntimeProcessor.init(task:plugin:enforceDiagnosticCheck:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v4;
  v4[3] = 0;
  if ((a3 & 1) != 0 && (static LighthouseRuntimeProcessor.isDiagnosticsSubmissionAllowed()() & 1) == 0)
  {
    (*(*(*(v7 + 80) - 8) + 8))(a2);

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v10 = v7 + 80;
    v8 = *(v7 + 80);
    v9 = *(v10 + 8);
    v15[0] = swift_getAssociatedTypeWitness();
    v15[1] = swift_getAssociatedTypeWitness();
    v15[2] = swift_getAssociatedConformanceWitness();
    v15[3] = swift_getAssociatedConformanceWitness();
    type metadata accessor for LighthouseRuntime(0, v15);
    v11 = a1;
    sub_2771C5EA8(a1);

    v13 = LighthouseRuntime.setLighthousePlugin<A>(_:)(a2, v8, v9, v12);

    (*(*(v8 - 8) + 8))(a2, v8);
    v4[2] = v13;
  }

  return v4;
}

uint64_t LighthouseRuntimeProcessor.process()@<X0>(void *a1@<X8>)
{
  v2 = sub_2771CAB84();
  MEMORY[0x28223BE20](v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for PluginContext(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2771C0210(v7);
  result = sub_2771BE59C(v7, &qword_280A683D0, &unk_2771CB5A0);
  *a1 = 1;
  return result;
}

uint64_t LighthouseRuntimeProcessor.process(withContext:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2771CAB84();
  MEMORY[0x28223BE20](v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v12 - v8;
  sub_2771BDDB0(a1, v12 - v8);
  v10 = type metadata accessor for PluginContext(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_2771C0210(v9);
  result = sub_2771BE59C(v9, &qword_280A683D0, &unk_2771CB5A0);
  *a2 = 1;
  return result;
}

uint64_t LighthouseRuntimeProcessor.processAsync(withContext:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_2771CAB84();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8);
  v3[10] = v5;
  v3[11] = *(v5 + 64);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771BCCCC, 0, 0);
}

uint64_t sub_2771BCCCC()
{
  v1 = v0[5];
  v2 = v0[12];
  v3 = v0[13];
  if (*(v1 + 24))
  {
    sub_2771BDF9C();
    swift_allocError();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[10];
    v7 = v0[6];
    v8 = v0[4];
    v9 = sub_2771CABA4();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    sub_2771BE534(v8, v2, &qword_280A683D0, &unk_2771CB5A0);
    v11 = (*(v6 + 80) + 56) & ~*(v6 + 80);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = *(v7 + 80);
    v12[5] = *(v7 + 88);
    v12[6] = v10;
    sub_2771BDE14(v2, v12 + v11);
    v13 = sub_2771BD518(0, 0, v3, &unk_2771CB5C8, v12);
    v0[14] = v13;
    *(v1 + 24) = v13;

    v14 = swift_task_alloc();
    v0[15] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    v0[16] = v15;
    *v14 = v0;
    v14[1] = sub_2771BCF60;
    v16 = MEMORY[0x277D84950];
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v15, v13, v17, v15, v16);
  }
}

uint64_t sub_2771BCF60()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2771BD120;
  }

  else
  {
    v2 = sub_2771BD074;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2771BD074()
{
  **(v0 + 24) = 1;
  *(*(v0 + 40) + 24) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771BD120()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = v1;
  v3 = swift_dynamicCast();
  v4 = *(v0 + 136);
  if (v3)
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = *(v0 + 24);

    *v8 = 2;
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v9 = *(v0 + 24);

    *v9 = v4;
  }

  *(*(v0 + 40) + 24) = 0;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2771BD250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_2771BD270, 0, 0);
}

uint64_t sub_2771BD270()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[7] = *(Strong + 16);

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2771BD378;
    v3 = v0[6];

    return sub_2771C051C(1000, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2771BD378()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2771BD4B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2771BD4B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771BD518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_2771BE534(a3, v23 - v10, &qword_280A683E0, &qword_2771CBC60);
  v12 = sub_2771CABA4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2771BE59C(v11, &qword_280A683E0, &qword_2771CBC60);
  }

  else
  {
    sub_2771CAB94();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2771CAB74();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2771CAB14() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2771BE59C(a3, &qword_280A683E0, &qword_2771CBC60);

      return v21;
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

  sub_2771BE59C(a3, &qword_280A683E0, &qword_2771CBC60);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall LighthouseRuntimeProcessor.stop()()
{
  if (*(v0 + 24))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CABC4();
  }
}

id static LighthouseRuntimeProcessor.isDiagnosticsSubmissionAllowed()()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting_];

    return (v2 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LighthouseRuntimeProcessor.deinit()
{

  return v0;
}

uint64_t LighthouseRuntimeProcessor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id LighthouseRuntimeProcessorResult.mlrTaskResult.getter()
{
  v1 = *v0;
  if (*v0 == 3)
  {
    v2 = &unk_28864E310;
  }

  else if (v1 == 2)
  {
    v2 = &unk_28864E2D0;
  }

  else
  {
    if (v1 != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683F0, &qword_2771CB5D0);
      inited = swift_initStackObject();
      *(inited + 32) = 0x746C75736572;
      *(inited + 16) = xmmword_2771CB590;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = 0x6572756C696166;
      *(inited + 56) = 0xE700000000000000;
      *(inited + 64) = 0x726F727265;
      *(inited + 72) = 0xE500000000000000;
      v5 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683F8, &qword_2771CB5D8);
      *(inited + 80) = sub_2771CAB04();
      *(inited + 88) = v6;
      v3 = sub_2771BE120(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68400, &qword_2771CB5E0);
      swift_arrayDestroy();
      goto LABEL_9;
    }

    v2 = &unk_28864E290;
  }

  v3 = sub_2771BE120(v2);
  sub_2771BE59C(v2 + 32, &qword_280A68400, &qword_2771CB5E0);
LABEL_9:
  sub_2771BDB10(v3);

  v7 = objc_allocWithZone(MEMORY[0x277D25408]);
  v8 = sub_2771CAAC4();

  v9 = [v7 initWithJSONResult:v8 unprivatizedVector:0];

  return v9;
}

unint64_t sub_2771BDB10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68408, &qword_2771CB758);
    v2 = sub_2771CAD04();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_2771BE4D8(&v22, v24);
        sub_2771BE4D8(v24, v25);
        sub_2771BE4D8(v25, &v23);
        result = sub_2771C5B54(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_2771BE4D8(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_2771BE4D8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2771BDDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2771BDE14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2771BDE84(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2771BB108;

  return sub_2771BD250(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_2771BDF9C()
{
  result = qword_280A683E8;
  if (!qword_280A683E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A683E8);
  }

  return result;
}

unint64_t sub_2771BDFF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68408, &qword_2771CB758);
    v3 = sub_2771CAD04();
    v4 = a1 + 32;

    while (1)
    {
      sub_2771BE534(v4, &v13, &qword_280A68410, &qword_2771CB760);
      v5 = v13;
      v6 = v14;
      result = sub_2771C5B54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2771BE4D8(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2771BE120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280A68418, &qword_2771CB768);
    v3 = sub_2771CAD04();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2771C5B54(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LighthouseProcessorTaskAlreadyRunning(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LighthouseProcessorTaskAlreadyRunning(_WORD *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_18lighthouse_runtime32LighthouseRuntimeProcessorResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2771BE3DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2771BE438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_2771BE498(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

_OWORD *sub_2771BE4D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2771BE534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2771BE59C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2771BE62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a4(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void *sub_2771BE698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_2771CB828;
}

uint64_t sub_2771BE7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 24) + **(a5 + 24));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_2771BB108;

  return v11(a1, a4, a5);
}

uint64_t sub_2771BE8F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2771BE914, 0, 0);
}

uint64_t sub_2771BE914()
{
  v4 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2771BB310;
  v2 = v0[2];

  return v4(v2);
}

uint64_t GenericDataProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2771BEA60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2771BB9C4;

  return sub_2771BE8F4(a1);
}

void *sub_2771BEAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_2771BE698(a1, *(*v3 + 80), a2, a3);
  v3[3] = v4;
  return v3;
}

void *sub_2771BEB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GenericDataProvider(0, *(v4 + 80), *(v4 + 88), a4);
  v8 = swift_allocObject();
  v8[2] = sub_2771BE698(a1, *(*v8 + 80), a2, a3);
  v8[3] = v9;
  return v8;
}

uint64_t dispatch thunk of DataProvider.loadData()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2771BB108;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of GenericDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2771BB9C4;

  return v6(a1);
}

uint64_t sub_2771BEE44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2771BB9C4;

  return sub_2771BE7C4(a1, v1 + v7, v4, v5, v6);
}

void *LighthouseRuntime.__allocating_init(_:)(void *a1)
{
  v2 = sub_2771C5EA8(a1);

  return v2;
}

void *LighthouseRuntime.setLighthousePlugin<A>(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_2771C5EFC(a1, a2, a3[1], a4);
  v7 = a3[3];

  sub_2771C5F90(a1, a2, v7);

  v9 = sub_2771C6030(a1, a2, a3[2], v8);

  return v9;
}

uint64_t sub_2771BEFF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107116;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x737365636F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x64616F6C7075;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107116;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x64616F6C7075;
    if (a2 != 3)
    {
      v6 = 0x64656873696E6966;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x737365636F7270;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_2771CAD54();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2771BF168(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6174614464616F6CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74726F706572;
    }

    else
    {
      v4 = 0x6E75526C61746F74;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEC000000656D6974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6B726F576F64;
    }

    else
    {
      v4 = 0x6174614464616F6CLL;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x74726F706572;
  if (a2 != 2)
  {
    v8 = 0x6E75526C61746F74;
    v7 = 0xEC000000656D6974;
  }

  if (a2)
  {
    v2 = 0x6B726F576F64;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2771CAD54();
  }

  return v11 & 1;
}

uint64_t sub_2771BF2AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v6 - v2;
  v4 = type metadata accessor for PluginContext(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68550, &qword_2771CBCA8);
  swift_allocObject();
  result = sub_2771CAE14();
  qword_280A684A0 = result;
  return result;
}

uint64_t static PluginContext.$current.getter()
{
  if (qword_280A68340 != -1)
  {
    swift_once();
  }
}

uint64_t static PluginContext.current.getter()
{
  if (qword_280A68340 != -1)
  {
    swift_once();
  }

  return sub_2771CAE24();
}

uint64_t PluginContext.init(MLHostContext:parameters:attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;
  v6 = type metadata accessor for PluginContext(0);
  result = sub_2771CA934();
  *(a4 + *(v6 + 28)) = a1;
  return result;
}

uint64_t PluginContext.parameters.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PluginContext.attachments.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PluginContext.correlationID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PluginContext(0) + 24);
  v4 = sub_2771CA944();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PluginContext.correlationID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginContext(0) + 24);
  v4 = sub_2771CA944();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

id PluginContext.mlhostContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginContext(0) + 28));

  return v1;
}

uint64_t LighthouseRuntimeError.hashValue.getter()
{
  v1 = *v0;
  sub_2771CADA4();
  MEMORY[0x277CA8760](v1);
  return sub_2771CADC4();
}

uint64_t sub_2771BF758()
{
  v1 = *v0;
  sub_2771CADA4();
  MEMORY[0x277CA8760](v1);
  return sub_2771CADC4();
}

uint64_t sub_2771BF7CC(uint64_t a1)
{
  v2 = *v1;
  sub_2771CADA4();
  MEMORY[0x277CA8760](v2);
  return sub_2771CADC4();
}

lighthouse_runtime::LHRStates_optional __swiftcall LHRStates.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2771CAD14();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LHRStates.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 0x737365636F7270;
  v4 = 0x64616F6C7075;
  if (v1 != 3)
  {
    v4 = 0x64656873696E6966;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684107116;
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

uint64_t sub_2771BF910()
{
  sub_2771CADA4();
  sub_2771CAB24();

  return sub_2771CADC4();
}

uint64_t sub_2771BF9E4(uint64_t a1)
{
  sub_2771CAB24();
}

uint64_t sub_2771BFAA4(uint64_t a1)
{
  sub_2771CADA4();
  sub_2771CAB24();

  return sub_2771CADC4();
}

void sub_2771BFB80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE700000000000000;
  v6 = 0x737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x64616F6C7075;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107116;
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

const char *LRSignpostName.staticString.getter()
{
  v1 = "LoadData";
  v2 = "Report";
  if (*v0 != 2)
  {
    v2 = "TotalRuntime";
  }

  if (*v0)
  {
    v1 = "DoWork";
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

lighthouse_runtime::LRSignpostName_optional __swiftcall LRSignpostName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2771CAD14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LRSignpostName.rawValue.getter()
{
  v1 = 0x6174614464616F6CLL;
  v2 = 0x74726F706572;
  if (*v0 != 2)
  {
    v2 = 0x6E75526C61746F74;
  }

  if (*v0)
  {
    v1 = 0x6B726F576F64;
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

uint64_t sub_2771BFD64()
{
  sub_2771CADA4();
  sub_2771CAB24();

  return sub_2771CADC4();
}

uint64_t sub_2771BFE28(uint64_t a1)
{
  sub_2771CAB24();
}

uint64_t sub_2771BFED8(uint64_t a1)
{
  sub_2771CADA4();
  sub_2771CAB24();

  return sub_2771CADC4();
}

void sub_2771BFFA4(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6174614464616F6CLL;
  v4 = 0xE600000000000000;
  v5 = 0x74726F706572;
  if (*v1 != 2)
  {
    v5 = 0x6E75526C61746F74;
    v4 = 0xEC000000656D6974;
  }

  if (*v1)
  {
    v3 = 0x6B726F576F64;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

const char *sub_2771C0024()
{
  v1 = "LoadData";
  v2 = "Report";
  if (*v0 != 2)
  {
    v2 = "TotalRuntime";
  }

  if (*v0)
  {
    v1 = "DoWork";
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

void createSignposter(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_allocWithZone(MEMORY[0x277D24458]);
  v5 = sub_2771CAAF4();
  v6 = [v4 initWithName_];

  v7 = objc_allocWithZone(MEMORY[0x277D24450]);
  v8 = v6;
  v9 = sub_2771CAAF4();
  v10 = [v7 initWithName:v9 subsystem:v8];

  [v10 setSignpostPersisted_];

  sub_2771CA9E4();
}

void *LighthouseRuntime.init(_:)(void *a1)
{
  v2 = sub_2771C5C84(a1);

  return v2;
}

void sub_2771C0210(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v20 - v9;
  sub_2771BE534(a1, &v20 - v9, &qword_280A683D0, &unk_2771CB5A0);
  v11 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(v4 + 80);
  *(v12 + 24) = *(v5 + 88);
  *(v12 + 40) = *(v4 + 104);
  *(v12 + 48) = v2;
  sub_2771BDE14(v10, v12 + v11);
  objc_allocWithZone(type metadata accessor for AsyncOperation());

  v13 = AsyncOperation.init(_:)(&unk_2771CB850, v12);
  v14 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A684A8, &qword_2771CB858);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2771CB830;
  *(v15 + 32) = v13;
  sub_2771C61F4();
  v16 = v13;
  v17 = sub_2771CAB44();

  [v14 addOperations:v17 waitUntilFinished:1];

  v18 = *&v16[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_error];
  if (v18)
  {
    swift_willThrow();
    v19 = v18;
  }
}

uint64_t sub_2771C047C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2771BB108;

  return sub_2771C051C(1000, a2);
}

uint64_t sub_2771C051C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  v4 = sub_2771CAA04();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for PluginContext(0);
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v3[17] = *(v6 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = sub_2771CA9C4();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771C0750, 0, 0);
}

uint64_t sub_2771C0750()
{
  *(v0 + 200) = qword_280A684B8;
  sub_2771CA9B4();
  v1 = sub_2771CA9D4();
  v2 = sub_2771CACA4();
  if (sub_2771CACB4())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, v1, v2, v4, "TotalRuntime", "", v3, 2u);
    MEMORY[0x277CA8BF0](v3, -1, -1);
  }

  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 112);
  v12 = *(v0 + 64);

  (*(v8 + 16))(v5, v6, v7);
  sub_2771CAA34();
  swift_allocObject();
  *(v0 + 208) = sub_2771CAA24();
  v13 = *(v8 + 8);
  *(v0 + 216) = v13;
  *(v0 + 224) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v6, v7);
  sub_2771BE534(v12, v11, &qword_280A683D0, &unk_2771CB5A0);
  v14 = *(v10 + 48);
  if (v14(v11, 1, v9) == 1)
  {
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    sub_2771C4504(*(v0 + 152));
    if (v14(v16, 1, v15) != 1)
    {
      sub_2771BE59C(*(v0 + 112), &qword_280A683D0, &unk_2771CB5A0);
    }
  }

  else
  {
    sub_2771C6324(*(v0 + 112), *(v0 + 152));
  }

  v17 = *(v0 + 152);
  v18 = *(v0 + 120);
  *(v0 + 232) = *(*(v0 + 72) + qword_280A684C0);
  *(v0 + 42) = 0;
  *(v0 + 240) = *(v17 + *(v18 + 28));
  sub_2771CA974();
  sub_2771C6240();
  v19 = sub_2771CAB74();
  *(v0 + 248) = v19;
  *(v0 + 256) = v20;

  return MEMORY[0x2822009F8](sub_2771C0A00, v19, v20);
}

uint64_t sub_2771C0A00()
{
  *(v0 + 264) = sub_2771C6298();
  sub_2771CA954();

  return MEMORY[0x2822009F8](sub_2771C0AB8, 0, 0);
}

uint64_t sub_2771C0AB8()
{
  v1 = sub_2771CA924();
  v3 = v2;
  v33 = v1;
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  v4 = objc_opt_self();
  v5 = sub_2771CAAC4();
  *(v0 + 48) = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v0 + 48];

  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = sub_2771CA914();
    v10 = v9;

    sub_2771CA8E4();
    swift_allocObject();
    sub_2771CA8D4();
    sub_2771C65D4();
    sub_2771CA8C4();
    v14 = *(v0 + 56);
    sub_2771C6628(v8, v10);

    v15 = *(v0 + 32);
    if (*(v0 + 40))
    {
      v15 = v14;
    }

    if (*(v0 + 24))
    {
      v13 = v15;
    }

    else
    {
      v13 = *(v0 + 16);
    }
  }

  else
  {
    v11 = v7;
    v12 = sub_2771CA8F4();

    swift_willThrow();
    v13 = *(v0 + 56);
  }

  if (qword_280A68348 != -1)
  {
    swift_once();
  }

  v16 = sub_2771CAA74();
  __swift_project_value_buffer(v16, qword_280A69280);
  v17 = sub_2771CAA54();
  v18 = sub_2771CAC24();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v13;
    _os_log_impl(&dword_2771B9000, v17, v18, "Running task with timeout %llu", v19, 0xCu);
    MEMORY[0x277CA8BF0](v19, -1, -1);
  }

  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v25 = *(v0 + 72);
  v24 = *(v0 + 80);

  sub_2771BDDB0(v20, v21);
  v26 = (*(v23 + 80) + 48) & ~*(v23 + 80);
  v27 = (v22 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v0 + 288) = v28;
  *(v28 + 16) = *(v24 + 80);
  *(v28 + 24) = *(v24 + 88);
  *(v28 + 40) = *(v24 + 104);
  sub_2771C6324(v21, v28 + v26);
  *(v28 + v27) = v25;
  v29 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v33;
  v29[1] = v3;

  v30 = swift_task_alloc();
  *(v0 + 296) = v30;
  v30[2] = &unk_2771CB870;
  v30[3] = v28;
  v30[4] = v13;
  v31 = swift_task_alloc();
  *(v0 + 304) = v31;
  *v31 = v0;
  v31[1] = sub_2771C0ED4;

  return MEMORY[0x282200740](v31);
}

uint64_t sub_2771C0ED4()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_2771C102C;
  }

  else
  {

    v2 = sub_2771C1150;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2771C102C()
{
  v1 = *(v0 + 152);

  sub_2771C6578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2771C1150()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];

  v1 = sub_2771CA9D4();
  sub_2771CAA14();
  v2 = sub_2771CAC94();

  if (sub_2771CACB4())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);

    sub_2771CAA44();

    if ((*(v4 + 88))(v3, v5) == *MEMORY[0x277D85B00])
    {
      v6 = 0;
      v7 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      format = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nenableTelemetry=YES";
      v7 = 2;
      v6 = 1;
    }

    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v23 = *(v0 + 216);
    v13 = *(v0 + 176);
    v22 = *(v0 + 160);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24[0] = v15;
    *v14 = v7;
    *(v14 + 1) = v6;
    *(v14 + 2) = 2082;
    v16 = sub_2771C55AC(v12, v11, v24);

    *(v14 + 4) = v16;
    v17 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, v1, v2, v17, "TotalRuntime", format, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x277CA8BF0](v15, -1, -1);
    MEMORY[0x277CA8BF0](v14, -1, -1);

    v23(v13, v22);
  }

  else
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);

    v8(v9, v10);
  }

  *(v0 + 43) = 4;
  v18 = *(v0 + 248);
  v19 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_2771C13E0, v18, v19);
}

uint64_t sub_2771C13E0()
{
  sub_2771CA954();

  return MEMORY[0x2822009F8](sub_2771C1484, 0, 0);
}

uint64_t sub_2771C1484()
{
  v1 = *(v0 + 152);

  sub_2771C6578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2771C157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771C1620, 0, 0);
}

uint64_t sub_2771C1620()
{
  if (qword_280A68340 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v10 = *(v0 + 3);
  sub_2771BDDB0(v0[3], v1);
  v4 = type metadata accessor for PluginContext(0);
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[1] = vextq_s8(v10, v10, 8uLL);
  v5[2].i64[0] = v3;
  v5[2].i64[1] = v2;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_2771C17D0;
  v7 = v0[7];
  v8 = v0[2];

  return MEMORY[0x282200908](v8, v7, &unk_2771CBCA0, v5, 0, 0, 0xD00000000000002ALL, 0x80000002771CC100);
}

uint64_t sub_2771C17D0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(*v1 + 80) = v0;

  sub_2771BE59C(v2, &qword_280A683D0, &unk_2771CB5A0);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2771C1974, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2771C1974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771C19D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = *a2;
  v7 = *(*a2 + 88);
  v5[6] = v7;
  v8 = sub_2771CACC4();
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v9 = sub_2771CAA04();
  v5[12] = v9;
  v5[13] = *(v9 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v10 = *(v6 + 80);
  v5[19] = v10;
  v11 = sub_2771CACC4();
  v5[20] = v11;
  v5[21] = *(v11 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  v12 = sub_2771CA9C4();
  v5[25] = v12;
  v5[26] = *(v12 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771C1D28, 0, 0);
}

uint64_t sub_2771C1D28()
{
  sub_2771CABD4();
  *(v0 + 288) = qword_280A684B8;
  sub_2771CA9B4();
  v1 = sub_2771CA9D4();
  v2 = sub_2771CACA4();
  if (sub_2771CACB4())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, v1, v2, v4, "LoadData", "", v3, 2u);
    MEMORY[0x277CA8BF0](v3, -1, -1);
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);

  v11 = *(v8 + 16);
  *(v0 + 296) = v11;
  *(v0 + 304) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v5, v6, v7);
  *(v0 + 312) = sub_2771CAA34();
  swift_allocObject();
  *(v0 + 320) = sub_2771CAA24();
  v12 = *(v8 + 8);
  *(v0 + 328) = v12;
  *(v0 + 336) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v6, v7);
  *(v0 + 344) = *(v10 + qword_280A684C0);
  *(v0 + 472) = 1;
  *(v0 + 352) = *(v9 + *(type metadata accessor for PluginContext(0) + 28));
  sub_2771CA974();
  sub_2771C6240();
  v14 = sub_2771CAB74();
  *(v0 + 360) = v14;
  *(v0 + 368) = v13;

  return MEMORY[0x2822009F8](sub_2771C203C, v14, v13);
}

uint64_t sub_2771C203C()
{
  *(v0 + 376) = sub_2771C6298();
  sub_2771CA954();

  return MEMORY[0x2822009F8](sub_2771C20C0, 0, 0);
}

uint64_t sub_2771C20C0()
{
  v29 = v0;
  v1 = *(v0[2] + 16);
  v0[48] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[49] = v2;
    *v2 = v0;
    v2[1] = sub_2771C250C;
    v3 = v0[22];

    return sub_2771BE8F4(v3);
  }

  else
  {
    v5 = v0[22];
    v6 = v0[20];
    v7 = v0[21];
    (*(v0[23] + 56))(v5, 1, 1, v0[19]);
    (*(v7 + 8))(v5, v6);

    v8 = sub_2771CA9D4();
    sub_2771CAA14();
    v9 = sub_2771CAC94();

    if (sub_2771CACB4())
    {
      v11 = v0[13];
      v10 = v0[14];
      v12 = v0[12];

      sub_2771CAA44();

      if ((*(v11 + 88))(v10, v12) == *MEMORY[0x277D85B00])
      {
        v13 = 0;
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[13] + 8))(v0[14], v0[12]);
        v14 = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nerrorMessage=%{public, signpost.telemetry:string2, name=errorMessage,public}s\nenableTelemetry=YES";
        v13 = 2;
      }

      v27 = v0[41];
      v18 = v0[33];
      v26 = v0[25];
      v20 = v0[4];
      v19 = v0[5];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = v13;
      *(v21 + 1) = v13;
      *(v21 + 2) = 2082;
      *(v21 + 4) = sub_2771C55AC(v20, v19, v28);
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_2771C55AC(0xD000000000000014, 0x80000002771CC150, v28);
      v23 = sub_2771CA9A4();
      _os_signpost_emit_with_name_impl(&dword_2771B9000, v8, v9, v23, "LoadData", v14, v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277CA8BF0](v22, -1, -1);
      MEMORY[0x277CA8BF0](v21, -1, -1);

      v27(v18, v26);
    }

    else
    {
      v15 = v0[41];
      v16 = v0[33];
      v17 = v0[25];

      v15(v16, v17);
    }

    sub_2771C7524();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2771C250C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_2771C406C;
  }

  else
  {

    v2 = sub_2771C2628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2771C2628()
{
  v40 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  (*(v2 + 56))(v3, 0, 1, v4);
  (*(v2 + 32))(v1, v3, v4);

  v5 = sub_2771CA9D4();
  sub_2771CAA14();
  v6 = sub_2771CAC94();

  if (sub_2771CACB4())
  {
    v38 = v6;
    v7 = *(v0 + 144);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);

    sub_2771CAA44();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
    {
      v10 = 0;
      v11 = 0;
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 104) + 8))(*(v0 + 144), *(v0 + 96));
      v12 = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nenableTelemetry=YES";
      v11 = 2;
      v10 = 1;
    }

    v37 = *(v0 + 328);
    v16 = *(v0 + 256);
    v36 = *(v0 + 200);
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39 = v20;
    *v19 = v11;
    *(v19 + 1) = v10;
    *(v19 + 2) = 2082;
    *(v19 + 4) = sub_2771C55AC(v18, v17, &v39);
    v21 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, v5, v38, v21, "LoadData", v12, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x277CA8BF0](v20, -1, -1);
    MEMORY[0x277CA8BF0](v19, -1, -1);

    v37(v16, v36);
  }

  else
  {
    v13 = *(v0 + 328);
    v14 = *(v0 + 256);
    v15 = *(v0 + 200);

    v13(v14, v15);
  }

  v22 = *(v0 + 400);
  sub_2771CABD4();
  if (v22)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 152));

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    sub_2771CA9B4();
    v25 = sub_2771CA9D4();
    v26 = sub_2771CACA4();
    if (sub_2771CACB4())
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = sub_2771CA9A4();
      _os_signpost_emit_with_name_impl(&dword_2771B9000, v25, v26, v28, "DoWork", "", v27, 2u);
      MEMORY[0x277CA8BF0](v27, -1, -1);
    }

    v29 = *(v0 + 328);
    v30 = *(v0 + 296);
    v31 = *(v0 + 272);
    v32 = *(v0 + 248);
    v33 = *(v0 + 200);

    v30(v31, v32, v33);
    swift_allocObject();
    *(v0 + 408) = sub_2771CAA24();
    v29(v32, v33);
    *(v0 + 473) = 2;
    v34 = *(v0 + 360);
    v35 = *(v0 + 368);

    return MEMORY[0x2822009F8](sub_2771C2AF4, v34, v35);
  }
}

uint64_t sub_2771C2AF4()
{
  sub_2771CA954();

  return MEMORY[0x2822009F8](sub_2771C2B6C, 0, 0);
}

uint64_t sub_2771C2B6C()
{
  v33 = v0;
  v1 = *(v0[2] + 24);
  v0[52] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[53] = v2;
    *v2 = v0;
    v2[1] = sub_2771C2FE8;
    v3 = v0[24];
    v4 = v0[9];

    return sub_2771BBCD0(v4, v3);
  }

  else
  {
    v6 = v0[9];
    v7 = v0[7];
    v8 = v0[8];
    (*(v0[10] + 56))(v6, 1, 1, v0[6]);
    (*(v8 + 8))(v6, v7);

    v9 = sub_2771CA9D4();
    sub_2771CAA14();
    v10 = sub_2771CAC94();

    if (sub_2771CACB4())
    {
      v11 = v0[15];
      v12 = v0[12];
      v13 = v0[13];

      sub_2771CAA44();

      if ((*(v13 + 88))(v11, v12) == *MEMORY[0x277D85B00])
      {
        v14 = 0;
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[13] + 8))(v0[15], v0[12]);
        v15 = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nerrorMessage=%{public, signpost.telemetry:string2, name=errorMessage,public}s\nenableTelemetry=YES";
        v14 = 2;
      }

      v31 = v0[41];
      v19 = v0[30];
      v30 = v0[25];
      v21 = v0[4];
      v20 = v0[5];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = v14;
      *(v22 + 1) = v14;
      *(v22 + 2) = 2082;
      *(v22 + 4) = sub_2771C55AC(v21, v20, v32);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_2771C55AC(0xD000000000000015, 0x80000002771CC130, v32);
      v24 = sub_2771CA9A4();
      _os_signpost_emit_with_name_impl(&dword_2771B9000, v9, v10, v24, "LoadData", v15, v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277CA8BF0](v23, -1, -1);
      MEMORY[0x277CA8BF0](v22, -1, -1);

      v31(v19, v30);
    }

    else
    {
      v16 = v0[41];
      v17 = v0[30];
      v18 = v0[25];

      v16(v17, v18);
    }

    v25 = v0[23];
    v26 = v0[24];
    v27 = v0[19];
    sub_2771C7524();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();

    (*(v25 + 8))(v26, v27);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_2771C2FE8()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_2771C41D0;
  }

  else
  {
    v2 = sub_2771C311C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2771C311C()
{
  v46 = v0;
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  (*(v2 + 56))(v3, 0, 1, v4);
  (*(v2 + 32))(v1, v3, v4);

  v5 = sub_2771CA9D4();
  sub_2771CAA14();
  v6 = sub_2771CAC94();

  if (sub_2771CACB4())
  {
    v44 = v6;
    v7 = *(v0 + 136);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);

    sub_2771CAA44();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
    {
      v10 = 0;
      v11 = 0;
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 104) + 8))(*(v0 + 136), *(v0 + 96));
      v12 = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nenableTelemetry=YES";
      v11 = 2;
      v10 = 1;
    }

    v43 = *(v0 + 328);
    v16 = *(v0 + 232);
    v42 = *(v0 + 200);
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v45 = v20;
    *v19 = v11;
    *(v19 + 1) = v10;
    *(v19 + 2) = 2082;
    *(v19 + 4) = sub_2771C55AC(v18, v17, &v45);
    v21 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, v5, v44, v21, "DoWork", v12, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x277CA8BF0](v20, -1, -1);
    MEMORY[0x277CA8BF0](v19, -1, -1);

    v43(v16, v42);
  }

  else
  {
    v13 = *(v0 + 328);
    v14 = *(v0 + 232);
    v15 = *(v0 + 200);

    v13(v14, v15);
  }

  v22 = *(v0 + 432);
  sub_2771CABD4();
  if (v22)
  {
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = *(v0 + 152);
    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    v28 = *(v0 + 48);

    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    sub_2771CA9B4();
    v31 = sub_2771CA9D4();
    v32 = sub_2771CACA4();
    if (sub_2771CACB4())
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_2771CA9A4();
      _os_signpost_emit_with_name_impl(&dword_2771B9000, v31, v32, v34, "Report", "", v33, 2u);
      MEMORY[0x277CA8BF0](v33, -1, -1);
    }

    v35 = *(v0 + 328);
    v36 = *(v0 + 296);
    v37 = *(v0 + 272);
    v38 = *(v0 + 224);
    v39 = *(v0 + 200);

    v36(v37, v38, v39);
    swift_allocObject();
    *(v0 + 440) = sub_2771CAA24();
    v35(v38, v39);
    *(v0 + 474) = 3;
    v40 = *(v0 + 360);
    v41 = *(v0 + 368);

    return MEMORY[0x2822009F8](sub_2771C3614, v40, v41);
  }
}

uint64_t sub_2771C3614()
{
  sub_2771CA954();

  return MEMORY[0x2822009F8](sub_2771C368C, 0, 0);
}

uint64_t sub_2771C368C()
{
  v40 = v0;
  v1 = *(v0[2] + 32);
  v0[56] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[57] = v2;
    *v2 = v0;
    v2[1] = sub_2771C3B2C;
    v3 = v0[11];

    return sub_2771BB1FC(v3);
  }

  else
  {

    v5 = sub_2771CA9D4();
    sub_2771CAA14();
    v6 = sub_2771CAC94();

    if (sub_2771CACB4())
    {
      v37 = v6;
      v7 = v0[16];
      v9 = v0[12];
      v8 = v0[13];

      sub_2771CAA44();

      log = v5;
      if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
      {
        v10 = 0;
        v11 = 0;
        format = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[13] + 8))(v0[16], v0[12]);
        format = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nenableTelemetry=YES";
        v11 = 2;
        v10 = 1;
      }

      v32 = v0[41];
      v18 = v0[27];
      v19 = v0[23];
      v34 = v0[19];
      v36 = v0[24];
      v20 = v0[10];
      v31 = v0[11];
      v21 = v0[5];
      v29 = v0[25];
      v30 = v0[6];
      v22 = v0[4];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = v11;
      *(v23 + 1) = v10;
      *(v23 + 2) = 2082;
      *(v23 + 4) = sub_2771C55AC(v22, v21, &v39);
      v25 = sub_2771CA9A4();
      _os_signpost_emit_with_name_impl(&dword_2771B9000, log, v37, v25, "Report", format, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x277CA8BF0](v24, -1, -1);
      MEMORY[0x277CA8BF0](v23, -1, -1);

      v32(v18, v29);
      (*(v20 + 8))(v31, v30);
      (*(v19 + 8))(v36, v34);
    }

    else
    {
      v33 = v0[41];
      v12 = v0[27];
      v13 = v0[25];
      v38 = v0[24];
      v14 = v0[23];
      v35 = v0[19];
      v15 = v0[10];
      v16 = v0[11];
      v17 = v0[6];

      v33(v12, v13);
      (*(v15 + 8))(v16, v17);
      (*(v14 + 8))(v38, v35);
    }

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_2771C3B2C()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_2771C4354;
  }

  else
  {
    v2 = sub_2771C3C60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2771C3C60()
{
  v37 = v0;

  v1 = sub_2771CA9D4();
  sub_2771CAA14();
  v2 = sub_2771CAC94();

  if (sub_2771CACB4())
  {
    v34 = v2;
    v3 = v0[16];
    v5 = v0[12];
    v4 = v0[13];

    sub_2771CAA44();

    log = v1;
    if ((*(v4 + 88))(v3, v5) == *MEMORY[0x277D85B00])
    {
      v6 = 0;
      v7 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[13] + 8))(v0[16], v0[12]);
      format = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nenableTelemetry=YES";
      v7 = 2;
      v6 = 1;
    }

    v29 = v0[41];
    v14 = v0[27];
    v15 = v0[23];
    v31 = v0[19];
    v33 = v0[24];
    v16 = v0[10];
    v28 = v0[11];
    v17 = v0[5];
    v26 = v0[25];
    v27 = v0[6];
    v18 = v0[4];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v36 = v20;
    *v19 = v7;
    *(v19 + 1) = v6;
    *(v19 + 2) = 2082;
    *(v19 + 4) = sub_2771C55AC(v18, v17, &v36);
    v21 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, log, v34, v21, "Report", format, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x277CA8BF0](v20, -1, -1);
    MEMORY[0x277CA8BF0](v19, -1, -1);

    v29(v14, v26);
    (*(v16 + 8))(v28, v27);
    (*(v15 + 8))(v33, v31);
  }

  else
  {
    v30 = v0[41];
    v8 = v0[27];
    v9 = v0[25];
    v35 = v0[24];
    v10 = v0[23];
    v32 = v0[19];
    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[6];

    v30(v8, v9);
    (*(v11 + 8))(v12, v13);
    (*(v10 + 8))(v35, v32);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_2771C406C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771C41D0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2771C4354()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2771C4504@<X0>(unint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(sub_2771CA994());
  v3 = sub_2771CA984();
  v4 = LighthouseRuntime.parameters.getter();
  v5 = LighthouseRuntime.attachments.getter();
  *a1 = v4;
  a1[1] = v5;
  v6 = type metadata accessor for PluginContext(0);
  result = sub_2771CA934();
  *(a1 + *(v6 + 28)) = v3;
  return result;
}

unint64_t LighthouseRuntime.parameters.getter()
{
  v1 = *(v0 + qword_2815AED28);
  if (v1)
  {
    v2 = [v1 parameters];
    v3 = [v2 dictionaryRepresentation];

    v4 = sub_2771CAAD4();
    v5 = sub_2771C47FC(v4);

    if (v5)
    {
      return v5;
    }
  }

  v7 = MEMORY[0x277D84F90];

  return sub_2771BDFF0(v7);
}

uint64_t LighthouseRuntime.attachments.getter()
{
  v1 = *(v0 + qword_2815AED28);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = [v1 attachments];
  v3 = [v2 attachmentURLs];

  sub_2771CA904();
  v4 = sub_2771CAB54();

  return v4;
}

uint64_t LighthouseRuntime.deinit()
{

  v1 = qword_280A684B8;
  v2 = sub_2771CA9F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t LighthouseRuntime.__deallocating_deinit()
{
  LighthouseRuntime.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_2771C47FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68408, &qword_2771CB758);
    v2 = sub_2771CAD04();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_2771C71D4(*(a1 + 48) + 40 * v12, v27);
        sub_2771C7230(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_2771C71D4(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2771C7230(v25 + 8, v20);
        sub_2771BE59C(v24, &qword_280A68528, &qword_2771CBC50);
        v21 = v18;
        sub_2771BE4D8(v20, v22);
        v13 = v21;
        sub_2771BE4D8(v22, v23);
        sub_2771BE4D8(v23, &v21);
        result = sub_2771C5B54(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_2771BE4D8(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_2771BE4D8(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_2771BE59C(v24, &qword_280A68528, &qword_2771CBC50);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2771C4AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v19 - v9;
  sub_2771BE534(a1, v19 - v9, &qword_280A683E0, &qword_2771CBC60);
  v11 = sub_2771CABA4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2771BE59C(v10, &qword_280A683E0, &qword_2771CBC60);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_2771CAB74();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2771CAB94();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_2771C4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771C4D68, 0, 0);
}

uint64_t sub_2771C4D68()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_2771CABA4();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  sub_2771C4AD8(v1, &unk_2771CBC70, v7);
  sub_2771BE59C(v1, &qword_280A683E0, &qword_2771CBC60);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  sub_2771C4AD8(v1, &unk_2771CBC80, v8);
  sub_2771BE59C(v1, &qword_280A683E0, &qword_2771CBC60);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68538, &qword_2771CBC88);
  *v9 = v0;
  v9[1] = sub_2771C4F64;

  return MEMORY[0x2822004D0](v0 + 9, 0, 0, v10);
}

uint64_t sub_2771C4F64()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2771C5128;
  }

  else
  {
    v2 = sub_2771C5078;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2771C5078()
{
  if (*(v0 + 72))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CAC04();

    v1 = *(v0 + 8);

    v1();
  }
}

uint64_t sub_2771C5128()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
  sub_2771CAC04();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771C51CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2771BB9C4;

  return v8(a1);
}

uint64_t sub_2771C52E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (is_mul_ok(v3, 0xF4240uLL))
  {
    v4 = 1000000 * v3;
    v5 = swift_task_alloc();
    *(v1 + 24) = v5;
    *v5 = v1;
    v5[1] = sub_2771C5398;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_2771C5398()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2771C54C8, 0, 0);
  }
}

uint64_t sub_2771C54C8()
{
  sub_2771C7410();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771C5550(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_2771C559C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_2771C55AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2771C5678(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2771C7230(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2771C5678(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2771C5784(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2771CACF4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2771C5784(uint64_t a1, unint64_t a2)
{
  v3 = sub_2771C57D0(a1, a2);
  sub_2771C5900(&unk_28864E268);
  return v3;
}

void *sub_2771C57D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2771C59EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2771CACF4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2771CAB34();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2771C59EC(v10, 0);
        result = sub_2771CACE4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2771C5900(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2771C5A60(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2771C59EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68530, &qword_2771CBC58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2771C5A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68530, &qword_2771CBC58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_2771C5B54(uint64_t a1, uint64_t a2)
{
  sub_2771CADA4();
  sub_2771CAB24();
  v4 = sub_2771CADC4();

  return sub_2771C5BCC(a1, a2, v4);
}

unint64_t sub_2771C5BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2771CAD54())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2771C5C84(void *a1)
{
  v2 = v1;
  v4 = sub_2771CA9F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  *(v2 + qword_2815AED28) = a1;
  v9 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v10 = a1;
  v2[5] = [v9 init];
  v11 = objc_allocWithZone(MEMORY[0x277D24458]);
  v12 = sub_2771CAAF4();
  v13 = [v11 initWithName_];

  v14 = objc_allocWithZone(MEMORY[0x277D24450]);
  v15 = v13;
  v16 = sub_2771CAAF4();
  v17 = [v14 initWithName:v16 subsystem:v15];

  [v17 setSignpostPersisted_];
  sub_2771CA9E4();

  (*(v5 + 32))(v2 + qword_280A684B8, v8, v4);
  sub_2771CA974();
  *(v2 + qword_280A684C0) = sub_2771CA964();
  return v2;
}

void *sub_2771C5EA8(void *a1)
{
  v3 = *(v1 + 96);
  v5[0] = *(v1 + 80);
  v5[1] = v3;
  type metadata accessor for LighthouseRuntime(0, v5);
  swift_allocObject();
  return sub_2771C5C84(a1);
}

void *sub_2771C5EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for GenericDataProvider(0, *(*v5 + 80), *(*v5 + 96), a4);
  v5[2] = sub_2771BEB38(a1, a2, a3, v9);

  return v5;
}

void *sub_2771C5F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 96);
  v10[0] = *(*v4 + 80);
  v10[1] = v8;
  type metadata accessor for GenericWorker(0, v10);
  v4[3] = sub_2771BC034(a1, a2, a3);

  return v4;
}

void *sub_2771C6030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for GenericReporter(0, *(*v5 + 88), *(*v5 + 104), a4);
  v5[4] = sub_2771BB550(a1, a2, a3, v9);

  return v5;
}

uint64_t type metadata accessor for PluginContext(uint64_t a1)
{
  result = qword_2815AEC98;
  if (!qword_2815AEC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2771C6110()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2771BB9C4;

  return sub_2771C047C(v4, v0 + v3);
}

unint64_t sub_2771C61F4()
{
  result = qword_280A684B0;
  if (!qword_280A684B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A684B0);
  }

  return result;
}

unint64_t sub_2771C6240()
{
  result = qword_280A684C8;
  if (!qword_280A684C8)
  {
    sub_2771CA974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684C8);
  }

  return result;
}

unint64_t sub_2771C6298()
{
  result = qword_280A684D0;
  if (!qword_280A684D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684D0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2771C6324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2771C6388(uint64_t a1)
{
  v4 = *(type metadata accessor for PluginContext(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2771BB9C4;

  return sub_2771C157C(a1, v1 + v5, v7, v9, v10);
}

uint64_t sub_2771C64B4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2771BB9C4;

  return sub_2771C4CC8(a1, a2, v6, v7, v8);
}

uint64_t sub_2771C6578(uint64_t a1)
{
  v2 = type metadata accessor for PluginContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2771C65D4()
{
  result = qword_280A684D8;
  if (!qword_280A684D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684D8);
  }

  return result;
}

uint64_t sub_2771C6628(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2771C6680()
{
  result = qword_280A684E0;
  if (!qword_280A684E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684E0);
  }

  return result;
}

unint64_t sub_2771C66D8()
{
  result = qword_280A684E8;
  if (!qword_280A684E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684E8);
  }

  return result;
}

unint64_t sub_2771C6730()
{
  result = qword_280A684F0;
  if (!qword_280A684F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684F0);
  }

  return result;
}

unint64_t sub_2771C6788()
{
  result = qword_280A684F8;
  if (!qword_280A684F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684F8);
  }

  return result;
}

unint64_t sub_2771C67E0()
{
  result = qword_280A68500;
  if (!qword_280A68500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A68508, &qword_2771CBA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68500);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2771C6890()
{
  result = qword_280A68510;
  if (!qword_280A68510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68510);
  }

  return result;
}

unint64_t sub_2771C68E8()
{
  result = qword_280A68518;
  if (!qword_280A68518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68518);
  }

  return result;
}

unint64_t sub_2771C693C(uint64_t a1)
{
  result = sub_2771C6964();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2771C6964()
{
  result = qword_280A68520;
  if (!qword_280A68520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68520);
  }

  return result;
}

void sub_2771C69E0(uint64_t a1)
{
  sub_2771C6A94();
  if (v1 <= 0x3F)
  {
    sub_2771C6AF8(319);
    if (v2 <= 0x3F)
    {
      sub_2771CA944();
      if (v3 <= 0x3F)
      {
        sub_2771CA994();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2771C6A94()
{
  if (!qword_2815AEC08)
  {
    v0 = sub_2771CAAE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2815AEC08);
    }
  }
}

void sub_2771C6AF8(uint64_t a1)
{
  if (!qword_2815AEC10[0])
  {
    sub_2771CA904();
    v1 = sub_2771CAB64();
    if (!v2)
    {
      atomic_store(v1, qword_2815AEC10);
    }
  }
}

uint64_t getEnumTagSinglePayload for LighthouseRuntimeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseRuntimeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LHRStates(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LHRStates(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LRSignpostName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LRSignpostName(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2771C6F6C(uint64_t a1)
{
  result = sub_2771CA9F4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of LighthouseRuntime.processAsync(withTimeoutInMilliseconds:withContext:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 256) + **(*v2 + 256));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2771BB108;

  return v8(a1, a2);
}

uint64_t sub_2771C7230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2771C7290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2771BB9C4;

  return sub_2771C51CC(a1, v4, v5, v6);
}

uint64_t sub_2771C735C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2771BB9C4;

  return sub_2771C52C4(a1, v4, v5, v6);
}

unint64_t sub_2771C7410()
{
  result = qword_280A68540;
  if (!qword_280A68540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68540);
  }

  return result;
}

uint64_t sub_2771C7464(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2771BB9C4;

  return sub_2771C19D8(a1, v4, v5, v7, v6);
}

unint64_t sub_2771C7524()
{
  result = qword_280A68548;
  if (!qword_280A68548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68548);
  }

  return result;
}

uint64_t Dictionary<>.toObject<A>()@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = objc_opt_self();
  v8 = sub_2771CAAC4();
  v18[0] = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_2771CA914();
    v13 = v12;

    sub_2771CA8E4();
    swift_allocObject();
    sub_2771CA8D4();
    sub_2771CA8C4();
    sub_2771C6628(v11, v13);

    v16 = 0;
  }

  else
  {
    v14 = v10;
    v15 = sub_2771CA8F4();

    swift_willThrow();
    v16 = 1;
  }

  return (*(*(a3 - 8) + 56))(a5, v16, 1, a3);
}

unint64_t sub_2771C775C()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_2771C7794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001CLL && 0x80000002771CC1C0 == a2;
  if (v6 || (sub_2771CAD54() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002771CC1E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2771CAD54();

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

uint64_t sub_2771C788C(uint64_t a1)
{
  v2 = sub_2771C7CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2771C78C8(uint64_t a1)
{
  v2 = sub_2771C7CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LighthouseRuntimeParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68558, &qword_2771CBCB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v10[0] = *(v1 + 16);
  v11 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2771C7CDC();
  sub_2771CADE4();
  v13 = 0;
  v8 = v10[1];
  sub_2771CAD44();
  if (!v8)
  {
    v12 = 1;
    sub_2771CAD44();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t LighthouseRuntimeParams.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68568, &qword_2771CBCB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2771C7CDC();
  sub_2771CADD4();
  if (!v2)
  {
    v20 = 0;
    v10 = sub_2771CAD34();
    v18 = v11;
    v12 = v10;
    v19 = 1;
    v14 = sub_2771CAD34();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    *(a2 + 8) = v18 & 1;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2771C7CDC()
{
  result = qword_280A68560;
  if (!qword_280A68560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68560);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2771C7D44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2771C7D64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_2771C7DB8()
{
  result = qword_280A68570;
  if (!qword_280A68570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68570);
  }

  return result;
}

unint64_t sub_2771C7E10()
{
  result = qword_280A68578;
  if (!qword_280A68578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68578);
  }

  return result;
}

unint64_t sub_2771C7E68()
{
  result = qword_280A68580;
  if (!qword_280A68580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68580);
  }

  return result;
}

uint64_t sub_2771C7F00()
{
  v0 = sub_2771CAA74();
  __swift_allocate_value_buffer(v0, qword_280A69280);
  __swift_project_value_buffer(v0, qword_280A69280);
  return sub_2771CAA64();
}

id AsyncOperation.init(_:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v18 = sub_2771CAC54();
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2771CAC44();
  MEMORY[0x28223BE20](v7, v8);
  v9 = sub_2771CAAB4();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v17 = OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_lockQueue;
  v11 = sub_2771C8238();
  v16[1] = "processTimeoutInMiliseconds";
  v16[2] = v11;
  sub_2771CAAA4();
  v22 = MEMORY[0x277D84F90];
  sub_2771C9610(&qword_280A68598, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A685A0, &qword_2771CBEA0);
  sub_2771C9658(&qword_280A685A8, &qword_280A685A0, &qword_2771CBEA0);
  sub_2771CACD4();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v18);
  *&v2[v17] = sub_2771CAC84();
  *&v2[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task] = 0;
  *&v2[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_error] = 0;
  v2[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation__isExecuting] = 0;
  v2[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation__isFinished] = 0;
  v12 = &v2[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_action];
  v13 = v20;
  *v12 = v19;
  v12[1] = v13;
  v14 = type metadata accessor for AsyncOperation();
  v21.receiver = v2;
  v21.super_class = v14;
  return objc_msgSendSuper2(&v21, sel_init);
}

unint64_t sub_2771C8238()
{
  result = qword_280A68590;
  if (!qword_280A68590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A68590);
  }

  return result;
}

uint64_t sub_2771C84EC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  sub_2771CAC74();

  return v5;
}

void sub_2771C867C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v14[1] = a3;
  v5 = v4;
  v15 = a1;
  v6 = sub_2771CAA94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2771CAAF4();
  [v4 willChangeValueForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A685D8, &qword_2771CBEF8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2771CBE80;
  sub_2771CAA84();
  v19 = v12;
  sub_2771C9610(&qword_280A685E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A685E8, &qword_2771CBF00);
  sub_2771C9658(&qword_280A685F0, &qword_280A685E8, &qword_2771CBF00);
  sub_2771CACD4();
  v17 = v5;
  v18 = v15;
  sub_2771CAC64();
  (*(v7 + 8))(v10, v6);
  v13 = sub_2771CAAF4();
  [v5 didChangeValueForKey_];
}

id sub_2771C88F4()
{
  if ([v0 isCancelled])
  {
    [v0 setExecuting_];
    v1 = sel_setFinished_;
    v2 = v0;
    v3 = 1;
  }

  else
  {
    [v0 setFinished_];
    [v0 setExecuting_];
    v1 = sel_main;
    v2 = v0;
  }

  return [v2 v1];
}

uint64_t sub_2771C8A48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = sub_2771CABA4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v8 = sub_2771C9164(0, 0, v4, &unk_2771CBEB0, v7);
  sub_2771BE59C(v4, &qword_280A683E0, &qword_2771CBC60);
  *(v0 + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task) = v8;
}

uint64_t sub_2771C8BBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_action);
    v0[7] = *(Strong + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_action + 8);

    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2771C8D24;

    return v6();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2771C8D24()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2771C8ECC;
  }

  else
  {
    v2 = sub_2771C8E38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2771C8E38()
{

  v1 = *(v0 + 48);
  [v1 setExecuting_];
  [v1 setFinished_];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2771C8ECC()
{

  if (qword_280A68348 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_2771CAA74();
  __swift_project_value_buffer(v2, qword_280A69280);
  v3 = v1;
  v4 = sub_2771CAA54();
  v5 = sub_2771CAC34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2771B9000, v4, v5, "Error while running async operation. %@", v7, 0xCu);
    sub_2771BE59C(v8, &qword_280A685F8, &qword_2771CBF08);
    MEMORY[0x277CA8BF0](v8, -1, -1);
    MEMORY[0x277CA8BF0](v7, -1, -1);
  }

  v11 = v0[9];
  v12 = v0[6];

  v13 = *(v12 + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_error);
  *(v12 + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_error) = v11;

  v14 = v0[6];
  [v14 setExecuting_];
  [v14 setFinished_];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2771C90B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2771BB108;

  return sub_2771C8B9C(a1, v4, v5, v6);
}

uint64_t sub_2771C9164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_2771C96DC(a3, v23 - v10);
  v12 = sub_2771CABA4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2771BE59C(v11, &qword_280A683E0, &qword_2771CBC60);
  }

  else
  {
    sub_2771CAB94();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2771CAB74();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2771CAB14() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
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

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id sub_2771C9414(SEL *a1)
{
  if (*&v1[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CABC4();
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for AsyncOperation();
  return objc_msgSendSuper2(&v4, *a1);
}

id AsyncOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2771C9610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2771C9658(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2771C96DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t waitForTaskCompletion<A>(withTimeoutInMilliseconds:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2771C9808, 0, 0);
}

uint64_t sub_2771C9808()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_2771C9904;
  v6 = *(v0 + 16);

  return MEMORY[0x282200740](v6);
}

uint64_t sub_2771C9904()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2771C9A40, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2771C9A40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771C9AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v20 - v10;
  sub_2771C96DC(a1, v20 - v10);
  v12 = sub_2771CABA4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2771CA510(v11);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_2771CAB74();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2771CAB94();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v5;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_2771C9C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_2771CACC4();
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771C9D54, 0, 0);
}

uint64_t sub_2771C9D54()
{
  v1 = v0[9];
  v2 = v0[7];
  v13 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_2771CABA4();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v4;
  v7[6] = v3;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A683D8, &qword_2771CBC90);
  v8 = sub_2771CAC14();
  sub_2771C9AA4(v1, &unk_2771CBFC8, v7, v8);
  sub_2771CA510(v1);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v13;
  sub_2771C9AA4(v1, &unk_2771CBFE0, v9, v8);
  sub_2771CA510(v1);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_2771C9F64;
  v11 = v0[8];

  return MEMORY[0x2822004D0](v11, 0, 0, v8);
}

uint64_t sub_2771C9F64()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2771CA1B4;
  }

  else
  {
    v2 = sub_2771CA078;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2771CA078()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v1 - 8);
  result = (*(v3 + 48))(v2, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CAC04();

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_2771CA1B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
  sub_2771CAC04();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771CA264(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2771BB108;

  return sub_2771C9C80(a1, a2, v7, v9, v8, v6);
}

uint64_t sub_2771CA33C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2771BB108;

  return v8(a1);
}

uint64_t sub_2771CA434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2771BB9C4;

  return sub_2771CA33C(a1, v4, v5, v6);
}

uint64_t sub_2771CA510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2771CA598(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (is_mul_ok(v3, 0xF4240uLL))
  {
    v4 = 1000000 * v3;
    v5 = swift_task_alloc();
    *(v1 + 24) = v5;
    *v5 = v1;
    v5[1] = sub_2771CA64C;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_2771CA64C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2771CA77C, 0, 0);
  }
}

uint64_t sub_2771CA77C()
{
  sub_2771C7410();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771CA804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2771BB9C4;

  return sub_2771CA578(a1, v4, v5, v6);
}