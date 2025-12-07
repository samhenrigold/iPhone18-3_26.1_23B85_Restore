void sub_2329A5828(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_2329A5838(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2329A5848()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2329A5890()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2329A58EC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2329A5934()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2329A5984()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2329A59C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A59FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5A4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2329A5A9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2329A5AE4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2329A5B54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5B8C()
{
  MEMORY[0x23838B560](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5BC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2329A5C24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2329A5C64()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2329A5D28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5D60()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5D98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5DD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2329A5E64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2329A5F3C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2329A6030()
{
  v0 = sub_2329D2E14();
  __swift_allocate_value_buffer(v0, qword_2814DA990);
  v1 = __swift_project_value_buffer(v0, qword_2814DA990);
  v2 = sub_2329A8F40();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_2329A60BC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_2329A94F8();

  v1 = sub_2329D3384();

  [v0 addSuiteNamed_];

  qword_2814DA9B0 = v0;
}

uint64_t sub_2329A614C()
{
  type metadata accessor for NDFDaemonConfiguration();
  v0 = swift_allocObject();
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD20, &qword_2329D4560);
  swift_allocObject();
  v2 = v1;
  v0[2] = sub_2329D2FF4();
  swift_allocObject();
  v3 = v2;
  v0[3] = sub_2329D2FF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD28, &qword_2329D4568);
  swift_allocObject();
  v4 = v3;
  v0[4] = sub_2329D2FF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD30, &qword_2329D4570);
  swift_allocObject();
  v5 = v4;
  v0[5] = sub_2329D2FF4();
  swift_allocObject();
  v6 = v5;
  v0[6] = sub_2329D2FF4();
  swift_allocObject();
  v7 = v6;
  v0[7] = sub_2329D2FF4();
  swift_allocObject();
  v8 = v7;
  v0[8] = sub_2329D2FF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD38, &qword_2329D4578);
  swift_allocObject();
  v9 = v8;
  v0[9] = sub_2329D2FF4();
  swift_allocObject();
  v0[10] = sub_2329D2FF4();
  swift_allocObject();
  v0[11] = sub_2329D2FF4();
  if (qword_2814DA988 != -1)
  {
    swift_once();
  }

  v10 = sub_2329D2E14();
  __swift_project_value_buffer(v10, qword_2814DA990);
  v11 = sub_2329D2DF4();
  v12 = sub_2329D3634();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2329A4000, v11, v12, "Initialized NDF Daemon Configuration", v13, 2u);
    MEMORY[0x23838B4F0](v13, -1, -1);
  }

  result = (*(*v0 + 408))();
  qword_2814DAC08 = v0;
  return result;
}

uint64_t *sub_2329A65F4()
{
  if (qword_2814DA980 != -1)
  {
    swift_once();
  }

  return &qword_2814DAC08;
}

uint64_t sub_2329A6644()
{
  if (qword_2814DA980 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2329A66A0(char a1)
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD20, &qword_2329D4560);
  swift_allocObject();
  v2 = v1;
  return sub_2329D2FF4();
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

uint64_t sub_2329A67AC()
{

  sub_2329D3014();

  return v1;
}

uint64_t sub_2329A67F0(char a1)
{

  sub_2329D3024();
}

uint64_t (*sub_2329A6834(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 16);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A68C0(char a1)
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD20, &qword_2329D4560);
  swift_allocObject();
  v2 = v1;
  return sub_2329D2FF4();
}

uint64_t sub_2329A6984()
{

  sub_2329D3014();

  return v1;
}

uint64_t sub_2329A69C8(char a1)
{

  sub_2329D3024();
}

uint64_t (*sub_2329A6A0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 24);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A6A90(double a1)
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD28, &qword_2329D4568);
  swift_allocObject();
  v2 = v1;
  return sub_2329D2FF4();
}

double sub_2329A6B54()
{

  sub_2329D3014();

  return v1;
}

uint64_t sub_2329A6B98(double a1)
{

  sub_2329D3024();
}

uint64_t (*sub_2329A6BDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 32);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A6C70(uint64_t a1)
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD30, &qword_2329D4570);
  swift_allocObject();
  v2 = v1;
  return sub_2329D2FF4();
}

uint64_t sub_2329A6D30()
{

  sub_2329D3014();

  return v1;
}

uint64_t sub_2329A6D74(uint64_t a1)
{

  sub_2329D3024();
}

uint64_t (*sub_2329A6DB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 40);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A6E44(uint64_t a1)
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD30, &qword_2329D4570);
  swift_allocObject();
  v2 = v1;
  return sub_2329D2FF4();
}

uint64_t sub_2329A6F04()
{

  sub_2329D3014();

  return v1;
}

uint64_t sub_2329A6F48(uint64_t a1)
{

  sub_2329D3024();
}

uint64_t (*sub_2329A6F8C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 48);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A7010(double a1)
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD28, &qword_2329D4568);
  swift_allocObject();
  v2 = v1;
  return sub_2329D2FF4();
}

double sub_2329A70D4()
{

  sub_2329D3014();

  return v1;
}

uint64_t sub_2329A7118(double a1)
{

  sub_2329D3024();
}

uint64_t (*sub_2329A715C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 56);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A71F0(double a1)
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD28, &qword_2329D4568);
  swift_allocObject();
  v2 = v1;
  return sub_2329D2FF4();
}

double sub_2329A72B4()
{

  sub_2329D3014();

  return v1;
}

uint64_t sub_2329A72F8(double a1)
{

  sub_2329D3024();
}

uint64_t (*sub_2329A733C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 64);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A73D0(uint64_t a1)
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD38, &qword_2329D4578);
  swift_allocObject();
  v2 = v1;
  return sub_2329D2FF4();
}

uint64_t sub_2329A748C()
{

  sub_2329D3014();

  return v1;
}

uint64_t sub_2329A74D0(uint64_t a1)
{

  sub_2329D3024();
}

uint64_t (*sub_2329A7514(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 72);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A7598;
}

uint64_t sub_2329A75A4(uint64_t a1)
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD30, &qword_2329D4570);
  swift_allocObject();
  v2 = v1;
  return sub_2329D2FF4();
}

uint64_t sub_2329A7664()
{

  sub_2329D3014();

  return v1;
}

uint64_t sub_2329A76A8(uint64_t a1)
{

  sub_2329D3024();
}

uint64_t (*sub_2329A76EC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 80);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A7778(uint64_t a1)
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD38, &qword_2329D4578);
  swift_allocObject();
  v2 = v1;
  return sub_2329D2FF4();
}

uint64_t sub_2329A7838()
{

  sub_2329D3014();

  return v1;
}

uint64_t sub_2329A787C(uint64_t a1)
{

  sub_2329D3024();
}

uint64_t (*sub_2329A78C0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 88);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

void sub_2329A7944(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

void sub_2329A79A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2329D4530;
  v3 = (*(*v0 + 208))();
  v4 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  v5 = sub_2329D33C4();
  v7 = v6;
  if (qword_2814DA988 != -1)
  {
    swift_once();
  }

  v8 = sub_2329D2E14();
  __swift_project_value_buffer(v8, qword_2814DA990);
  v9 = sub_2329D2DF4();
  v10 = sub_2329D3634();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2329A4000, v9, v10, " \t========== [ Begin NDF Daemon Configuration Dump ] ========== ", v11, 2u);
    MEMORY[0x23838B4F0](v11, -1, -1);
  }

  v12 = sub_2329D2DF4();
  v13 = sub_2329D3634();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2329A4000, v12, v13, " \t[Cleanup task parameters]", v14, 2u);
    MEMORY[0x23838B4F0](v14, -1, -1);
  }

  v15 = sub_2329D2DF4();
  v16 = sub_2329D3634();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 4) = 1;
    *(v17 + 8) = 1024;
    *(v17 + 10) = (*(*v1 + 160))() & 1;

    _os_log_impl(&dword_2329A4000, v15, v16, " \t\t should schedule cleanup task: %{BOOL}d, will schedule task: %{BOOL}d", v17, 0xEu);
    MEMORY[0x23838B4F0](v17, -1, -1);
  }

  else
  {
  }

  v18 = sub_2329D2DF4();
  v19 = sub_2329D3634();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v66 = v21;
    *v20 = 136315138;
    v22 = sub_2329A8630(v5, v7, &v66);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_2329A4000, v18, v19, " \t\t stale record cleanup threshold: %ss", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23838B4F0](v21, -1, -1);
    MEMORY[0x23838B4F0](v20, -1, -1);
  }

  else
  {
  }

  v23 = *(*v1 + 232);
  v24 = v23();
  if (v24 >= 1)
  {

    v25 = sub_2329D2DF4();
    v26 = sub_2329D3634();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v23();

      _os_log_impl(&dword_2329A4000, v25, v26, " \t\t (Override present)cleanup activity interval: %llds", v27, 0xCu);
      MEMORY[0x23838B4F0](v27, -1, -1);
    }

    else
    {
    }
  }

  v28 = (*v1 + 256);
  v29 = *v28;
  if ((*v28)(v24) >= 1)
  {

    v30 = sub_2329D2DF4();
    v31 = sub_2329D3634();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v29();

      _os_log_impl(&dword_2329A4000, v30, v31, " \t\t (Override present)cleanup activity delay: %llds", v32, 0xCu);
      MEMORY[0x23838B4F0](v32, -1, -1);
    }

    else
    {
    }
  }

  v33 = sub_2329D2DF4();
  v34 = sub_2329D3634();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2329A4000, v33, v34, " \t[Daemon lifecycle parameters]", v35, 2u);
    MEMORY[0x23838B4F0](v35, -1, -1);
  }

  v36 = sub_2329D2DF4();
  v37 = sub_2329D3634();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = (*(*v1 + 280))();
    _os_log_impl(&dword_2329A4000, v36, v37, " \t\t daemon time to live: %fs", v38, 0xCu);
    MEMORY[0x23838B4F0](v38, -1, -1);
  }

  v39 = sub_2329D2DF4();
  v40 = sub_2329D3634();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = (*(*v1 + 304))();
    _os_log_impl(&dword_2329A4000, v39, v40, " \t\t clean exit interval: %fs", v41, 0xCu);
    MEMORY[0x23838B4F0](v41, -1, -1);
  }

  v42 = sub_2329D2DF4();
  v43 = sub_2329D3634();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = (*(*v1 + 328))();

    _os_log_impl(&dword_2329A4000, v42, v43, " \t\t timer leeway: %lds", v44, 0xCu);
    MEMORY[0x23838B4F0](v44, -1, -1);
  }

  else
  {
  }

  v45 = sub_2329D2DF4();
  v46 = sub_2329D3634();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2329A4000, v45, v46, " \t[CoreData/CloudKit parameters]", v47, 2u);
    MEMORY[0x23838B4F0](v47, -1, -1);
  }

  v48 = sub_2329D2DF4();
  v49 = sub_2329D3634();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = (*(*v1 + 352))();

    _os_log_impl(&dword_2329A4000, v48, v49, " \t\t CloudKit operation memory threshold: %lld bytes", v50, 0xCu);
    MEMORY[0x23838B4F0](v50, -1, -1);
  }

  else
  {
  }

  v51 = sub_2329D2DF4();
  v52 = sub_2329D3634();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = (*(*v1 + 376))();

    _os_log_impl(&dword_2329A4000, v51, v52, " \t\t persistent store connection pool size: %ld", v53, 0xCu);
    MEMORY[0x23838B4F0](v53, -1, -1);
  }

  else
  {
  }

  v54 = sub_2329D2DF4();
  v55 = sub_2329D3634();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v66 = v57;
    *v56 = 136315138;
    v58 = (*(*v1 + 184))();
    v59 = (v58 & 1) == 0;
    if (v58)
    {
      v60 = 0x64656C62616E65;
    }

    else
    {
      v60 = 0x64656C6261736964;
    }

    if (v59)
    {
      v61 = 0xE800000000000000;
    }

    else
    {
      v61 = 0xE700000000000000;
    }

    v62 = sub_2329A8630(v60, v61, &v66);

    *(v56 + 4) = v62;
    _os_log_impl(&dword_2329A4000, v54, v55, " \t\t DB Telemetry submission %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x23838B4F0](v57, -1, -1);
    MEMORY[0x23838B4F0](v56, -1, -1);
  }

  oslog = sub_2329D2DF4();
  v63 = sub_2329D3634();
  if (os_log_type_enabled(oslog, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_2329A4000, oslog, v63, " \t========== [ End NDF Configuration Dump ] ========== ", v64, 2u);
    MEMORY[0x23838B4F0](v64, -1, -1);
  }
}

void *sub_2329A855C()
{

  return v0;
}

uint64_t sub_2329A85C4()
{
  sub_2329A855C();

  return swift_deallocClassInstance();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2329A8630(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2329A8748(v11, 0, 0, 1, a1, a2);
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
    sub_2329A8C48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

unint64_t sub_2329A8748(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2329A8854(a5, a6);
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
    result = sub_2329D3804();
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

void *sub_2329A8854(uint64_t a1, unint64_t a2)
{
  v3 = sub_2329A88A0(a1, a2);
  sub_2329A89D0(&unk_284800568);
  return v3;
}

void *sub_2329A88A0(uint64_t a1, unint64_t a2)
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

  v6 = sub_2329A8ABC(v5, 0);
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

  result = sub_2329D3804();
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
        v10 = sub_2329D3444();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2329A8ABC(v10, 0);
        result = sub_2329D37A4();
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

uint64_t sub_2329A89D0(uint64_t result)
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

  result = sub_2329A8B30(result, v11, 1, v3);
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

void *sub_2329A8ABC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBDF20, &unk_2329D51B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2329A8B30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBDF20, &unk_2329D51B0);
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

uint64_t sub_2329A8C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_2329A8EC4()
{
  v0 = sub_2329D2E14();
  __swift_allocate_value_buffer(v0, qword_2814DAC18);
  __swift_project_value_buffer(v0, qword_2814DAC18);
  sub_2329A92B4();

  sub_2329D33F4();
  return sub_2329D2E04();
}

uint64_t sub_2329A9078(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_2329D2E14();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_2329A92B4();

  a3(v6);

  return sub_2329D2E04();
}

uint64_t sub_2329A9130(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_2329D2E14();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_2329A91A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2329D2E14();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2329A9278()
{
  v0 = sub_2329D30B4();
  sub_2329D30A4();
  sub_2329D3094();
  return v0;
}

uint64_t sub_2329A9520()
{
  v0 = sub_2329D2DD4();
  __swift_allocate_value_buffer(v0, qword_27DDBEAE8);
  __swift_project_value_buffer(v0, qword_27DDBEAE8);
  return sub_2329D2DB4();
}

uint64_t sub_2329A9598()
{
  if (qword_27DDBE2C0 != -1)
  {
    swift_once();
  }

  v0 = sub_2329D2DD4();

  return __swift_project_value_buffer(v0, qword_27DDBEAE8);
}

uint64_t sub_2329A95FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDBE2C0 != -1)
  {
    swift_once();
  }

  v2 = sub_2329D2DD4();
  v3 = __swift_project_value_buffer(v2, qword_27DDBEAE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2329A96A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A8FA8();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2329A9714@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v4 = sub_2329D2E14();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t *sub_2329A97C0()
{
  if (qword_2814DA8F0 != -1)
  {
    swift_once();
  }

  return &qword_2814DABD8;
}

uint64_t sub_2329A985C(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3, void *a4)
{
  v6 = a2(a1);
  v8 = *v6;
  v7 = v6[1];
  *a3 = v8;
  *a4 = v7;
}

uint64_t *sub_2329A98A4()
{
  if (qword_2814DA958 != -1)
  {
    swift_once();
  }

  return &qword_2814DABF0;
}

uint64_t sub_2329A991C(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_2329A99AC(uint64_t a1)
{
  v79[4] = *MEMORY[0x277D85DE8];
  v3 = sub_2329D2CF4();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = (&v71 - v9);
  if (!*MEMORY[0x277CBECB0])
  {
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v76 = v8;
  v77 = v1;
  v75 = v7;
  sub_2329D33B4();
  v10 = sub_2329D3384();

  if (!*MEMORY[0x277CBECB8])
  {
    goto LABEL_30;
  }

  sub_2329D33B4();
  v11 = sub_2329D3384();

  v12 = sub_2329D2CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDD0, &qword_2329D48B8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2329D46B0;
  v14 = *MEMORY[0x277CBE878];
  *(v13 + 32) = *MEMORY[0x277CBE878];
  *(v13 + 40) = v10;
  *(v13 + 48) = v11;
  type metadata accessor for URLResourceKey();
  v15 = v14;
  v16 = v10;
  v17 = v11;
  v18 = sub_2329D3474();

  v79[0] = 0;
  v19 = [v12 resourceValuesForKeys:v18 error:v79];

  v20 = v79[0];
  if (v19)
  {
    v71 = a1;
    sub_2329BF1B0(&qword_27DDBDDD8, type metadata accessor for URLResourceKey, &unk_2329D4AA4);
    v21 = sub_2329D3354();
    v22 = v20;

    if (*(v21 + 16))
    {
      v23 = sub_2329BB3D8(v15);
      v24 = v74;
      v25 = v76;
      if ((v26 & 1) != 0 && (sub_2329A8C48(*(v21 + 56) + 32 * v23, v79), swift_dynamicCast()))
      {
        v27 = v78;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
      v24 = v74;
      v25 = v76;
    }

    v44 = *(v21 + 16);
    v73 = v12;
    if (v44 && (v45 = sub_2329BB3D8(v16), (v46 & 1) != 0) && (sub_2329A8C48(*(v21 + 56) + 32 * v45, v79), swift_dynamicCast()))
    {
      v47 = v78;
    }

    else
    {
      v47 = 0;
    }

    v48 = v17;
    v49 = *(v21 + 16);
    v72 = v16;
    if (v49 && (v50 = sub_2329BB3D8(v17), (v51 & 1) != 0))
    {
      sub_2329A8C48(*(v21 + 56) + 32 * v50, v79);

      if (swift_dynamicCast())
      {
        v52 = v78;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v52 = 0;
LABEL_23:
    v53 = v75;
    v54 = v47;
    v55 = v27 & v47 & v52;
    (*(v25 + 16))(v24, v71, v75);
    v56 = v27;
    v57 = sub_2329D2DF4();
    v58 = sub_2329D3634();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      LODWORD(v76) = v54;
      v60 = v59;
      v61 = swift_slowAlloc();
      LODWORD(v75) = v56;
      v62 = v24;
      v63 = v61;
      v79[0] = v61;
      *v60 = 136316162;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v64 = sub_2329D38B4();
      v77 = v48;
      v65 = v64;
      v66 = v53;
      v68 = v67;
      (*(v25 + 8))(v62, v66);
      v69 = sub_2329A8630(v65, v68, v79);

      *(v60 + 4) = v69;
      *(v60 + 12) = 1024;
      *(v60 + 14) = v55;
      *(v60 + 18) = 1024;
      *(v60 + 20) = v75;
      *(v60 + 24) = 1024;
      *(v60 + 26) = v76;
      *(v60 + 30) = 1024;
      *(v60 + 32) = v52;
      _os_log_impl(&dword_2329A4000, v57, v58, "Checking backup exclusion flags on %s, all: %{BOOL}d (excludedFromBackup: %{BOOL}d, excludedFromCloudBackup: %{BOOL}d, excludedFromUnencryptedBackup: %{BOOL}d)", v60, 0x24u);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x23838B4F0](v63, -1, -1);
      MEMORY[0x23838B4F0](v60, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v24, v53);
    }

    return v55;
  }

  v28 = v79[0];
  v29 = sub_2329D2C84();

  swift_willThrow();
  v30 = v75;
  v31 = v76;
  (*(v76 + 16))(v6, a1, v75);
  v32 = v29;
  v33 = sub_2329D2DF4();
  v34 = sub_2329D3614();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v79[0] = v77;
    *v35 = 136315394;
    sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v36 = sub_2329D38B4();
    v38 = v37;
    (*(v31 + 8))(v6, v30);
    v39 = sub_2329A8630(v36, v38, v79);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2112;
    v40 = v29;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v41;
    v42 = v74;
    *v74 = v41;
    _os_log_impl(&dword_2329A4000, v33, v34, "An error occurred while getting URL resource values on %s: %@", v35, 0x16u);
    sub_2329BFB8C(v42, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v42, -1, -1);
    v43 = v77;
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x23838B4F0](v43, -1, -1);
    MEMORY[0x23838B4F0](v35, -1, -1);
  }

  else
  {

    (*(v31 + 8))(v6, v30);
  }

  return 0;
}

uint64_t sub_2329AA184(uint64_t a1)
{
  v101[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2329D2CF4();
  v100 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v98 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v88 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v88 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v96 = &v88 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v88 - v13;
  v15 = sub_2329D2CA4();
  v16 = sub_2329D34C4();
  v17 = *MEMORY[0x277CBE878];
  v101[0] = 0;
  v18 = [v15 setResourceValue:v16 forKey:v17 error:v101];

  v19 = v101[0];
  v99 = v15;
  if (v18)
  {
    v91 = v10;
    v20 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
    v97 = *(v100 + 16);
    v95 = v100 + 16;
    v97(v14, a1, v2);
    v21 = v19;
    v93 = v20;
    v22 = sub_2329D2DF4();
    v23 = sub_2329D3604();
    v24 = os_log_type_enabled(v22, v23);
    v92 = v7;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v101[0] = v26;
      *v25 = 136315138;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v27 = sub_2329D38B4();
      v29 = v28;
      v94 = *(v100 + 8);
      v94(v14, v2);
      v30 = sub_2329A8630(v27, v29, v101);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_2329A4000, v22, v23, "Successfully set backup exclusion flag on %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23838B4F0](v26, -1, -1);
      v31 = v25;
      v15 = v99;
      MEMORY[0x23838B4F0](v31, -1, -1);
    }

    else
    {

      v94 = *(v100 + 8);
      v94(v14, v2);
    }

    v35 = sub_2329D34C4();
    result = *MEMORY[0x277CBECB0];
    if (*MEMORY[0x277CBECB0])
    {
      sub_2329D33B4();
      v37 = sub_2329D3384();

      v101[0] = 0;
      v38 = [v15 setResourceValue:v35 forKey:v37 error:v101];

      v39 = v101[0];
      if (!v38)
      {
LABEL_15:
        v64 = v39;
        v33 = sub_2329D2C84();

        swift_willThrow();
        v34 = v97;
        goto LABEL_16;
      }

      v40 = v96;
      v97(v96, a1, v2);
      v41 = v39;
      v42 = sub_2329D2DF4();
      v43 = sub_2329D3604();
      v44 = os_log_type_enabled(v42, v43);
      v90 = a1;
      if (v44)
      {
        v45 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v101[0] = v89;
        *v45 = 136315138;
        sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v46 = sub_2329D38B4();
        v48 = v47;
        v94(v40, v2);
        v49 = sub_2329A8630(v46, v48, v101);
        a1 = v90;

        *(v45 + 4) = v49;
        _os_log_impl(&dword_2329A4000, v42, v43, "Successfully set cloud backup exclusion flag on %s", v45, 0xCu);
        v50 = v89;
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x23838B4F0](v50, -1, -1);
        MEMORY[0x23838B4F0](v45, -1, -1);
      }

      else
      {

        v94(v40, v2);
      }

      v51 = sub_2329D34C4();
      result = *MEMORY[0x277CBECB8];
      v15 = v99;
      if (*MEMORY[0x277CBECB8])
      {
        sub_2329D33B4();
        v52 = sub_2329D3384();

        v101[0] = 0;
        v53 = [v15 setResourceValue:v51 forKey:v52 error:v101];

        v39 = v101[0];
        if (v53)
        {
          v54 = v91;
          v97(v91, a1, v2);
          v55 = v39;
          v56 = sub_2329D2DF4();
          v57 = sub_2329D3604();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v101[0] = v59;
            *v58 = 136315138;
            sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v60 = sub_2329D38B4();
            v62 = v61;
            v94(v54, v2);
            v63 = sub_2329A8630(v60, v62, v101);

            *(v58 + 4) = v63;
            _os_log_impl(&dword_2329A4000, v56, v57, "Successfully set unencrypted backup exclusion flag on %s", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v59);
            MEMORY[0x23838B4F0](v59, -1, -1);
            MEMORY[0x23838B4F0](v58, -1, -1);
          }

          else
          {

            v94(v54, v2);
          }

          v78 = v92;
          v97(v92, v90, v2);
          v79 = sub_2329D2DF4();
          v80 = sub_2329D3634();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v101[0] = v82;
            *v81 = 136315138;
            sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v83 = sub_2329D38B4();
            v84 = v78;
            v86 = v85;
            v94(v84, v2);
            v87 = sub_2329A8630(v83, v86, v101);

            *(v81 + 4) = v87;
            _os_log_impl(&dword_2329A4000, v79, v80, "Successfully set all backup exclusion flags on %s", v81, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v82);
            MEMORY[0x23838B4F0](v82, -1, -1);
            MEMORY[0x23838B4F0](v81, -1, -1);
          }

          else
          {

            v94(v78, v2);
          }

          return 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v32 = v101[0];
  v33 = sub_2329D2C84();

  swift_willThrow();
  v34 = *(v100 + 16);
LABEL_16:
  v65 = v98;
  v34(v98, a1, v2);
  v66 = v33;
  v67 = sub_2329D2DF4();
  v68 = sub_2329D3614();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v101[0] = v71;
    *v69 = 136315394;
    sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v72 = sub_2329D38B4();
    v74 = v73;
    (*(v100 + 8))(v65, v2);
    v75 = sub_2329A8630(v72, v74, v101);

    *(v69 + 4) = v75;
    *(v69 + 12) = 2112;
    v76 = v33;
    v77 = _swift_stdlib_bridgeErrorToNSError();
    *(v69 + 14) = v77;
    *v70 = v77;
    _os_log_impl(&dword_2329A4000, v67, v68, "An error occurred while setting URL resource values on %s: %@", v69, 0x16u);
    sub_2329BFB8C(v70, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v70, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x23838B4F0](v71, -1, -1);
    MEMORY[0x23838B4F0](v69, -1, -1);
  }

  else
  {

    (*(v100 + 8))(v65, v2);
  }

  return 0;
}

uint64_t sub_2329AACE0@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v126[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2329D2C94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDC0, &qword_2329D48A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v108 - v6;
  v8 = sub_2329D2CF4();
  v125 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v112 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v116 = &v108 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v111 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v121 = &v108 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v120 = &v108 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v108 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v108 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v108 - v25;
  v27 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v28 = sub_2329D3484();

  if (*(v28 + 16))
  {
    v122 = v21;

    v114 = *(v125 + 56);
    v115 = v125 + 56;
    v114(v7, 1, 1, v8);
    (*(v2 + 104))(v4, *MEMORY[0x277CC91D8], v1);
    v29 = v122;
    sub_2329D2CE4();
    sub_2329A945C();

    sub_2329D2CB4();

    sub_2329A9484();

    v118 = v24;
    sub_2329D2CB4();

    v30 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
    v119 = *(v125 + 16);
    v31 = v120;
    (v119)(v120, v29, v8);
    v113 = v30;
    v32 = sub_2329D2DF4();
    v33 = sub_2329D3604();
    v34 = os_log_type_enabled(v32, v33);
    v117 = v26;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v126[0] = v36;
      *v35 = 136315138;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v37 = sub_2329D38B4();
      v39 = v38;
      v120 = *(v125 + 8);
      (v120)(v31, v8);
      v40 = sub_2329A8630(v37, v39, v126);
      v29 = v122;

      *(v35 + 4) = v40;
      _os_log_impl(&dword_2329A4000, v32, v33, "Private store directory: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x23838B4F0](v36, -1, -1);
      MEMORY[0x23838B4F0](v35, -1, -1);
    }

    else
    {

      v120 = *(v125 + 8);
      (v120)(v31, v8);
    }

    v47 = v8;
    v48 = [objc_opt_self() defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDC8, &qword_2329D48B0);
    v49 = (*(v125 + 80) + 32) & ~*(v125 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2329D4530;
    v51 = v119;
    (v119)(v50 + v49, v29, v8);
    v110 = v49;
    v52 = v121;
    v51(v121, v50 + v49, v8);
    sub_2329D2CD4();
    v53 = sub_2329D3384();

    LOBYTE(v49) = [v48 fileExistsAtPath_];

    if (v49)
    {
      v54 = v116;
      v51(v116, v52, v8);
      v55 = sub_2329D2DF4();
      v56 = sub_2329D3604();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v119 = v57;
        v124 = swift_slowAlloc();
        v126[0] = v124;
        *v57 = 136315138;
        sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        LODWORD(v113) = v56;
        v58 = sub_2329D38B4();
        v109 = v48;
        v59 = v58;
        v61 = v60;
        v62 = v120;
        (v120)(v54, v8);
        v63 = sub_2329A8630(v59, v61, v126);
        v64 = v117;

        v65 = v119;
        *(v119 + 1) = v63;
        v48 = v109;
        _os_log_impl(&dword_2329A4000, v55, v113, "Database directory already exists %s", v65, 0xCu);
        v66 = v124;
        __swift_destroy_boxed_opaque_existential_0(v124);
        MEMORY[0x23838B4F0](v66, -1, -1);
        MEMORY[0x23838B4F0](v65, -1, -1);

        v62(v121, v8);
        v29 = v122;
        v67 = v123;
      }

      else
      {

        v62 = v120;
        (v120)(v54, v8);
        v62(v52, v8);
        v29 = v122;
        v67 = v123;
        v64 = v117;
      }

      goto LABEL_25;
    }

    v68 = sub_2329D2CA4();
    v126[0] = 0;
    v69 = [v48 createDirectoryAtURL:v68 withIntermediateDirectories:1 attributes:0 error:v126];

    if (!v69)
    {
      v109 = v48;
      v86 = v126[0];

      v87 = sub_2329D2C84();

      swift_willThrow();
      v88 = v112;
      (v119)(v112, v52, v8);
      v89 = v87;
      v90 = sub_2329D2DF4();
      v91 = sub_2329D3614();

      v92 = os_log_type_enabled(v90, v91);
      v93 = v117;
      if (v92)
      {
        v94 = swift_slowAlloc();
        LODWORD(v119) = v91;
        v95 = v94;
        v96 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v126[0] = v124;
        *v95 = 136315394;
        sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v97 = sub_2329D38B4();
        v99 = v98;
        v100 = v120;
        (v120)(v88, v47);
        v101 = sub_2329A8630(v97, v99, v126);

        *(v95 + 4) = v101;
        *(v95 + 12) = 2112;
        v102 = v87;
        v103 = _swift_stdlib_bridgeErrorToNSError();
        *(v95 + 14) = v103;
        *v96 = v103;
        _os_log_impl(&dword_2329A4000, v90, v119, "Failed to create database directory %s: %@", v95, 0x16u);
        sub_2329BFB8C(v96, &qword_27DDBE070, &unk_2329D4750);
        MEMORY[0x23838B4F0](v96, -1, -1);
        v104 = v124;
        __swift_destroy_boxed_opaque_existential_0(v124);
        MEMORY[0x23838B4F0](v104, -1, -1);
        MEMORY[0x23838B4F0](v95, -1, -1);

        v100(v121, v47);
        v100(v122, v47);
        v100(v118, v47);
        v100(v117, v47);
      }

      else
      {

        v105 = v120;
        (v120)(v88, v47);
        v105(v52, v47);
        v105(v29, v47);
        v105(v118, v47);
        v105(v93, v47);
      }

      v106 = v123;
      v107 = 1;
      return (v114)(v106, v107, 1, v47);
    }

    v70 = v126[0];
    v71 = v118;
    v72 = sub_2329A99AC(v118);
    v64 = v117;
    if (v72)
    {
      (v119)(v111, v71, v8);
      v73 = sub_2329D2DF4();
      v74 = sub_2329D3634();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v119 = v75;
        v124 = swift_slowAlloc();
        v126[0] = v124;
        *v75 = 136315138;
        sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v76 = v111;
        v77 = sub_2329D38B4();
        v109 = v48;
        v78 = v77;
        v79 = v64;
        v81 = v80;
        v82 = v76;
        v62 = v120;
        (v120)(v82, v47);
        v83 = sub_2329A8630(v78, v81, v126);
        v64 = v79;

        v84 = v119;
        *(v119 + 1) = v83;
        v48 = v109;
        _os_log_impl(&dword_2329A4000, v73, v74, "Backup exclusion flag already set on %s", v84, 0xCu);
        v85 = v124;
        __swift_destroy_boxed_opaque_existential_0(v124);
        MEMORY[0x23838B4F0](v85, -1, -1);
        MEMORY[0x23838B4F0](v84, -1, -1);

        v62(v121, v47);
        v29 = v122;
        v67 = v123;
LABEL_25:

        swift_setDeallocating();
        v62((v50 + v110), v47);
        swift_deallocClassInstance();
        v62(v118, v47);
        v62(v64, v47);
        (*(v125 + 32))(v67, v29, v47);
        v106 = v67;
        v107 = 0;
        return (v114)(v106, v107, 1, v47);
      }

      v62 = v120;
      (v120)(v111, v47);
      v62(v52, v47);
    }

    else
    {
      sub_2329AA184(v71);
      sub_2329A99AC(v71);
      v62 = v120;
      (v120)(v52, v8);
    }

    v67 = v123;
    goto LABEL_25;
  }

  v41 = v123;

  v42 = sub_2329D2DF4();
  v43 = sub_2329D3614();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2329A4000, v42, v43, "Failed to find user Library directory", v44, 2u);
    MEMORY[0x23838B4F0](v44, -1, -1);
  }

  v45 = *(v125 + 56);

  return v45(v41, 1, 1, v8);
}

void sub_2329ABC10(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___ckManagedObjectModel);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___ckManagedObjectModel) = a1;
  sub_2329A5828(v2);
}

void (*sub_2329ABC28(void **a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_2329ABBC8();
  return sub_2329ABC70;
}

void *sub_2329ABCD8(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = a2(v4);
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;
    v11 = v8;
    a3(v10);
  }

  a4(v7);
  return v8;
}

id sub_2329ABD60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDC0, &qword_2329D48A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v47 - v3;
  v5 = sub_2329D2CF4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  sub_2329AACE0(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2329BFB8C(v4, &qword_27DDBDDC0, &qword_2329D48A8);
    v15 = sub_2329D2DF4();
    v16 = sub_2329D3614();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2329A4000, v15, v16, "Unable to get private store database directory", v17, 2u);
      MEMORY[0x23838B4F0](v17, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    sub_2329A9434();

    v50 = v14;
    sub_2329D2CB4();

    v19 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v20 = sub_2329D2CA4();
    v21 = [v19 initWithURL_];

    v22 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
    (*(v6 + 16))(v9, v12, v5);
    v48 = a1;
    v49 = v22;
    v23 = sub_2329D2DF4();
    v24 = sub_2329D3634();
    v25 = os_log_type_enabled(v23, v24);
    v51 = v12;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v47 = v6;
      v27 = v26;
      v28 = swift_slowAlloc();
      v52 = v28;
      *v27 = 136315138;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v29 = sub_2329D38B4();
      v31 = v30;
      v32 = *(v47 + 8);
      v32(v9, v5);
      v33 = sub_2329A8630(v29, v31, &v52);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_2329A4000, v23, v24, "Database URL is: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23838B4F0](v28, -1, -1);
      MEMORY[0x23838B4F0](v27, -1, -1);

      v34 = v32;
    }

    else
    {

      v34 = *(v6 + 8);
      v34(v9, v5);
    }

    [v21 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
    sub_2329BFB44(0, &qword_2814DA820, 0x277CCABB0);
    v35 = sub_2329D3714();
    [v21 setOption:v35 forKey:*MEMORY[0x277CBE280]];

    v36 = *(**sub_2329A65F4() + 376);

    v36(v37);

    v38 = sub_2329D35D4();
    [v21 setOption:v38 forKey:*MEMORY[0x277CBE218]];

    v39 = sub_2329D3714();
    [v21 setOption:v39 forKey:*MEMORY[0x277CBE270]];

    v40 = (*(*v48 + 312))();
    [v21 setCloudKitContainerOptions_];

    v18 = v21;
    v41 = sub_2329D2DF4();
    v42 = sub_2329D3634();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v18;
      *v44 = v18;
      v45 = v18;
      _os_log_impl(&dword_2329A4000, v41, v42, "Successfully created persistent store description %@", v43, 0xCu);
      sub_2329BFB8C(v44, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v44, -1, -1);
      MEMORY[0x23838B4F0](v43, -1, -1);
    }

    v34(v51, v5);
    v34(v50, v5);
  }

  return v18;
}

void sub_2329AC408(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateStoreDescription);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateStoreDescription) = a1;
  sub_2329A5828(v2);
}

void (*sub_2329AC420(void **a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_2329ABC90();
  return sub_2329AC468;
}

id sub_2329AC488()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___privateCloudKitContainerOptions;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___privateCloudKitContainerOptions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___privateCloudKitContainerOptions);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
    [v4 setUseZoneWidePCS_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2329AC510()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions);
  }

  else
  {
    v4 = v0;
    if (qword_2814DA958 != -1)
    {
      swift_once();
    }

    v5 = objc_allocWithZone(MEMORY[0x277CBE498]);
    v6 = sub_2329D3384();
    v7 = [v5 initWithContainerIdentifier_];

    sub_2329A94D0();

    v8 = sub_2329D3384();

    [v7 setApsConnectionMachServiceName_];

    [v7 setDatabaseScope_];
    [v7 setUseDeviceToDeviceEncryption_];
    v9 = *(**sub_2329A65F4() + 352);

    v9(v10);

    v11 = sub_2329D3924();
    [v7 setOperationMemoryThresholdBytes_];

    v12 = objc_opt_self();
    v13 = sub_2329AC488();
    [v12 setContainerOptions:v13 onCloudKitContainerOptions:v7];

    v14 = v7;
    v15 = sub_2329D2DF4();
    v16 = sub_2329D35F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      v19 = *(v4 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___privateCloudKitContainerOptions);
      *(v17 + 4) = v19;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v14;
      *v18 = v19;
      v18[1] = v14;
      v20 = v14;
      v21 = v19;
      _os_log_impl(&dword_2329A4000, v15, v16, "Set CKContainerOptions %@ on to NSPersistentCloudKitContainerOptions %@", v17, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE070, &unk_2329D4750);
      swift_arrayDestroy();
      MEMORY[0x23838B4F0](v18, -1, -1);
      MEMORY[0x23838B4F0](v17, -1, -1);
    }

    v22 = v14;
    v23 = sub_2329D2DF4();
    v24 = sub_2329D3634();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_2329A4000, v23, v24, "Finished creating persistent cloud kit container options %@", v25, 0xCu);
      sub_2329BFB8C(v26, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v26, -1, -1);
      MEMORY[0x23838B4F0](v25, -1, -1);
    }

    v28 = *(v4 + v1);
    *(v4 + v1) = v22;
    v3 = v22;

    v2 = 0;
  }

  v29 = v2;
  return v3;
}

void (*sub_2329AC8FC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2329AC510();
  return sub_2329AC944;
}

void sub_2329AC944(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions) = v2;
}

id sub_2329AC95C()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = v0;
    v5 = (*(*v0 + 240))();
    if (v5)
    {
      v6 = v5;
      v7 = (*(*v0 + 264))();
      if (v7)
      {
        v8 = v7;
        v9 = objc_allocWithZone(MEMORY[0x277CBE470]);
        v10 = v6;
        v11 = sub_2329D3384();
        v12 = [v9 initWithName:v11 managedObjectModel:v10];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_2329D46C0;
        *(v13 + 32) = v8;
        sub_2329BFB44(0, &qword_2814D9E28, 0x277CBE4E0);
        v3 = v12;
        v14 = v8;
        v15 = sub_2329D3474();

        [v3 setPersistentStoreDescriptions_];

LABEL_11:
        v21 = *(v4 + v1);
        *(v4 + v1) = v3;
        v22 = v3;
        sub_2329A5828(v21);
        goto LABEL_12;
      }

      v16 = sub_2329D2DF4();
      v19 = sub_2329D3614();
      if (os_log_type_enabled(v16, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2329A4000, v16, v19, "Unable to create private store description for persistent cloud kit container", v20, 2u);
        MEMORY[0x23838B4F0](v20, -1, -1);
      }
    }

    else
    {
      v16 = sub_2329D2DF4();
      v17 = sub_2329D3614();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2329A4000, v16, v17, "Unable to create managed object model for persistent cloud kit container", v18, 2u);
        MEMORY[0x23838B4F0](v18, -1, -1);
      }
    }

    v3 = 0;
    goto LABEL_11;
  }

LABEL_12:
  sub_2329A5838(v2);
  return v3;
}

void sub_2329ACC2C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer) = a1;
  sub_2329A5828(v2);
}

void (*sub_2329ACC44(id *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_2329AC95C();
  return sub_2329ACC8C;
}

id sub_2329ACCAC(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext;
  v4 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext);
  v5 = v4;
  if (v4 == 1)
  {
    if (*(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded) == 1)
    {
      v6 = (*(*v2 + 336))(a1);
      if (v6)
      {
        v7 = v6;
        v5 = [v6 newBackgroundContext];

        if (v5)
        {
          [v5 setAutomaticallyMergesChangesFromParent_];
          [v5 setMergePolicy_];
          [v5 setUndoManager_];
LABEL_12:
          v12 = *(v2 + v3);
          *(v2 + v3) = v5;
          v13 = v5;
          sub_2329A5828(v12);
          goto LABEL_13;
        }
      }

      v8 = sub_2329D2DF4();
      v9 = sub_2329D3614();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Failed to create new background MOC";
        goto LABEL_10;
      }
    }

    else
    {
      v8 = sub_2329D2DF4();
      v9 = sub_2329D3614();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "PSC is not loaded, return";
LABEL_10:
        _os_log_impl(&dword_2329A4000, v8, v9, v11, v10, 2u);
        MEMORY[0x23838B4F0](v10, -1, -1);
      }
    }

    v5 = 0;
    goto LABEL_12;
  }

LABEL_13:
  sub_2329A5838(v4);
  return v5;
}

void sub_2329ACE90(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext) = a1;
  sub_2329A5828(v2);
}

void (*sub_2329ACEA8(id *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_2329ACCAC(a1);
  return sub_2329ACEF0;
}

void sub_2329ACF10(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v5 + *a3);
  *(v5 + *a3) = *a1;
  if (a2)
  {
    v8 = v4;
    a4(v6);
  }

  else
  {

    a4(v6);
  }
}

uint64_t sub_2329ACFA0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2329ACFE0(a1);
  return v2;
}

uint64_t sub_2329ACFE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2329D2E14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v9 = sub_2329A8FA8();
  v10 = *(v5 + 16);
  v10(v2 + v8, v9, v4);
  sub_2329D2DC4();
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___ckManagedObjectModel) = 1;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateStoreDescription) = 1;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___privateCloudKitContainerOptions) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer) = 1;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext) = 1;
  v10(v7, v2 + v8, v4);
  v11 = sub_2329D2DF4();
  v12 = sub_2329D3634();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2329A4000, v11, v12, "Initializing persistenceController", v13, 2u);
    MEMORY[0x23838B4F0](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_relayController) = a1;

  sub_2329AF8F0();
  v14 = (*(*v2 + 392))();
  v15 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded;
  if (*(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded) == 1)
  {
    (*(*v2 + 400))(v14);

    v16 = sub_2329D2DF4();
    v17 = sub_2329D3634();
    if (!os_log_type_enabled(v16, v17))
    {

      goto LABEL_10;
    }

    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 1) = *(v2 + v15);

    v19 = "Successfully initialized PSC, loaded: %{BOOL}d";
    v20 = v17;
    v21 = v16;
    v22 = v18;
    v23 = 8;
    goto LABEL_8;
  }

  v16 = sub_2329D2DF4();
  v24 = sub_2329D3614();
  if (os_log_type_enabled(v16, v24))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "PSC is not loaded, return";
    v20 = v24;
    v21 = v16;
    v22 = v18;
    v23 = 2;
LABEL_8:
    _os_log_impl(&dword_2329A4000, v21, v20, v19, v22, v23);
    MEMORY[0x23838B4F0](v18, -1, -1);
  }

LABEL_10:

  return v2;
}

uint64_t sub_2329AD48C()
{
  (*(*v0 + 408))();
  v1 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentAuthorID;
  v4 = sub_2329D2DD4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_2329A5828(*(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___ckManagedObjectModel));
  sub_2329A5828(*(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateStoreDescription));

  sub_2329A5828(*(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer));
  sub_2329A5828(*(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext));
  return v0;
}

uint64_t sub_2329AD5D8()
{
  sub_2329AD48C();

  return swift_deallocClassInstance();
}

void sub_2329AD630()
{
  v1 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = (*(*v0 + 336))();
  if (v2)
  {
    v3 = v2;
    v4 = sub_2329D2DF4();
    v5 = sub_2329D3634();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2329A4000, v4, v5, "Loading PSC", v6, 2u);
      MEMORY[0x23838B4F0](v6, -1, -1);
    }

    v40[0] = 0;
    if ([v3 load_])
    {
      v7 = v40[0];

      *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded) = 1;
      return;
    }

    v11 = v40[0];
    v12 = sub_2329D2C84();

    swift_willThrow();
    v40[0] = v12;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
    sub_2329BFB44(0, &qword_27DDBDD50, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v14 = [v39 domain];
      v15 = sub_2329D33B4();
      v17 = v16;

      if (v15 == sub_2329D33B4() && v17 == v18)
      {

        goto LABEL_14;
      }

      v19 = sub_2329D38D4();

      if (v19)
      {
LABEL_14:

        v20 = [v39 code];
        if (v20 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else
        {
          v21 = v20;
          if (v20 <= 0x7FFFFFFF)
          {
            v22 = v39;
            v23 = sub_2329D2DF4();
            v24 = sub_2329D3614();

            v25 = os_log_type_enabled(v23, v24);
            if (v21 == 4618)
            {
              if (v25)
              {
                v26 = swift_slowAlloc();
                v27 = swift_slowAlloc();
                *v26 = 138412290;
                *(v26 + 4) = v22;
                *v27 = v22;
                v37 = v22;
                v29 = "I/O error opening/creating .shm index file for SQLite: %@";
                goto LABEL_28;
              }
            }

            else if (v21 == 13)
            {
              if (v25)
              {
                v26 = swift_slowAlloc();
                v27 = swift_slowAlloc();
                *v26 = 138412290;
                *(v26 + 4) = v22;
                *v27 = v22;
                v28 = v22;
                v29 = "Error writing main DB or temporary file when disk is full: %@";
LABEL_28:
                _os_log_impl(&dword_2329A4000, v23, v24, v29, v26, 0xCu);
                sub_2329BFB8C(v27, &qword_27DDBE070, &unk_2329D4750);
                MEMORY[0x23838B4F0](v27, -1, -1);
                MEMORY[0x23838B4F0](v26, -1, -1);
              }
            }

            else if (v25)
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              *v26 = 138412290;
              *(v26 + 4) = v22;
              *v27 = v22;
              v38 = v22;
              v29 = "Other NSSQLiteErrorDomain error, %@";
              goto LABEL_28;
            }

            swift_willThrow();
            return;
          }
        }

        __break(1u);
      }
    }

    v30 = v12;
    v31 = sub_2329D2DF4();
    v32 = sub_2329D3614();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v12;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_2329A4000, v31, v32, "Other load() error, %@", v33, 0xCu);
      sub_2329BFB8C(v34, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v34, -1, -1);
      MEMORY[0x23838B4F0](v33, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v8 = sub_2329D2DF4();
    v9 = sub_2329D3614();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2329A4000, v8, v9, "Unable to initialize persistent store container!!", v10, 2u);
      MEMORY[0x23838B4F0](v10, -1, -1);
    }
  }
}

void sub_2329ADBD8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2329D2DF4();
  v4 = sub_2329D3634();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2329A4000, v3, v4, "Setting up persistent store notifications", v5, 2u);
    MEMORY[0x23838B4F0](v5, -1, -1);
  }

  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  v8 = *MEMORY[0x277CBE260];
  v9 = (*(*v2 + 336))();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 persistentStoreCoordinator];

    sub_2329BFB44(0, &qword_2814D9E30, 0x277CBE4D8);
    v12 = sub_2329D38C4();
  }

  else
  {
    v12 = 0;
  }

  v23 = sub_2329BC9C8;
  v24 = v2;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_2329ADEF8;
  v22 = &block_descriptor;
  v13 = _Block_copy(&v19);

  v14 = [v7 addObserverForName:v8 object:v12 queue:0 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v15 = [v6 defaultCenter];
  v16 = *MEMORY[0x277CBE1F0];
  v23 = sub_2329BC9E4;
  v24 = v2;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_2329ADEF8;
  v22 = &block_descriptor_3;
  v17 = _Block_copy(&v19);

  v18 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

uint64_t sub_2329ADEF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2329D2C34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2329D2C14();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_2329ADFEC(uint64_t a1)
{
  v2 = sub_2329D2D84();
  v3 = *(v2 - 8);
  v173 = v2;
  v174 = v3;
  MEMORY[0x28223BE20](v2);
  v172 = v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE60, &qword_2329D4918);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v171 = v162 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v162 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v170 = v162 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v162 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v162 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v162 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v162 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v162 - v28;
  v30 = sub_2329D2C24();
  if (v30)
  {
    v31 = v30;
    MEMORY[0x28223BE20](v30);
    v162[-2] = a1;
    v168 = v33;
    v169 = v32;
    nullsub_1();
    v175 = sub_2329D33B4();
    v176 = v34;
    sub_2329D3774();
    if (*(v31 + 16) && (v35 = sub_2329BB46C(v177), (v36 & 1) != 0))
    {
      sub_2329A8C48(*(v31 + 56) + 32 * v35, v178);
      sub_2329BFA2C(v177);

      sub_2329BFB44(0, &qword_2814D9E20, 0x277CBE480);
      if (swift_dynamicCast())
      {
        v167 = v175;
        v37 = [v175 endDate];
        v165 = v37;
        if (v37)
        {
          v38 = v37;
          sub_2329D2D64();

          v39 = 0;
        }

        else
        {
          v39 = 1;
        }

        v40 = v173;
        v41 = v174 + 56;
        v42 = 1;
        v166 = *(v174 + 56);
        v166(v29, v39, 1, v173);
        sub_2329BFB8C(v29, &qword_27DDBDE60, &qword_2329D4918);
        v43 = [v167 endDate];
        if (v43)
        {
          v44 = v43;
          sub_2329D2D64();

          v42 = 0;
        }

        v166(v24, v42, 1, v40);
        sub_2329BFA80(v24, v27, &qword_27DDBDE60, &qword_2329D4918);
        v45 = v174;
        v163 = *(v174 + 48);
        v162[1] = v174 + 48;
        v46 = v163(v27, 1, v40);
        v164 = v41;
        if (v46 == 1)
        {
          sub_2329BFB8C(v27, &qword_27DDBDE60, &qword_2329D4918);
          v47 = 0;
          v48 = v167;
        }

        else
        {
          v48 = v167;
          v49 = [v167 startDate];
          v50 = v172;
          sub_2329D2D64();

          sub_2329D2D34();
          v47 = v51;
          v52 = *(v45 + 8);
          v52(v50, v40);
          v52(v27, v40);
          v45 = v174;
        }

        v53 = [v48 type];
        if (v53 == 2)
        {
          if (v165)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
            v95 = swift_allocObject();
            v96 = MEMORY[0x277D839F8];
            *(v95 + 16) = xmmword_2329D4530;
            v97 = MEMORY[0x277D83A80];
            *(v95 + 56) = v96;
            *(v95 + 64) = v97;
            *(v95 + 32) = v47;
            v98 = sub_2329D33C4();
            v100 = v99;
            v60 = v48;
            v101 = sub_2329D2DF4();
            v102 = sub_2329D35F4();

            if (os_log_type_enabled(v101, v102))
            {
              v103 = v98;
              v174 = v100;
              v104 = swift_slowAlloc();
              v170 = swift_slowAlloc();
              v177[0] = v170;
              *v104 = 136315906;
              if ([v60 succeeded])
              {
                v105 = 0x73736563637573;
              }

              else
              {
                v105 = 0x6572756C696166;
              }

              v106 = sub_2329A8630(v105, 0xE700000000000000, v177);

              *(v104 + 4) = v106;
              *(v104 + 12) = 2048;
              v107 = [v60 startDate];
              v108 = v172;
              sub_2329D2D64();

              sub_2329D2D24();
              v110 = v109;
              v111 = *(v45 + 8);
              v111(v108, v173);
              *(v104 + 14) = v110;
              *(v104 + 22) = 2048;
              v112 = [v60 endDate];
              if (v112)
              {
                v113 = v112;
                sub_2329D2D64();

                v114 = 0;
              }

              else
              {
                v114 = 1;
              }

              v146 = v173;
              v166(v8, v114, 1, v173);
              v147 = v171;
              sub_2329BFA80(v8, v171, &qword_27DDBDE60, &qword_2329D4918);
              if (v163(v147, 1, v146) == 1)
              {
                sub_2329BFB8C(v147, &qword_27DDBDE60, &qword_2329D4918);
                v148 = 0;
              }

              else
              {
                sub_2329D2D24();
                v148 = v149;
                v111(v147, v146);
              }

              *(v104 + 24) = v148;
              *(v104 + 32) = 2080;
              v150 = sub_2329A8630(v103, v174, v177);

              *(v104 + 34) = v150;
              _os_log_impl(&dword_2329A4000, v101, v102, "ContainerExport ended with %s - %f -> %f (%s)", v104, 0x2Au);
              v151 = v170;
              swift_arrayDestroy();
              MEMORY[0x23838B4F0](v151, -1, -1);
              MEMORY[0x23838B4F0](v104, -1, -1);
            }

            else
            {
            }

            if ([v60 succeeded])
            {
              goto LABEL_89;
            }

            v60 = v60;
            v115 = sub_2329D2DF4();
            v141 = sub_2329D3614();

            if (os_log_type_enabled(v115, v141))
            {
              v142 = swift_slowAlloc();
              v143 = swift_slowAlloc();
              *v142 = 138412290;
              v152 = [v60 error];
              if (v152)
              {
                v152 = _swift_stdlib_bridgeErrorToNSError();
                v153 = v152;
              }

              else
              {
                v153 = 0;
              }

              *(v142 + 4) = v152;
              *v143 = v153;
              v161 = "Export error: %@";
              goto LABEL_87;
            }

            goto LABEL_80;
          }

          v60 = v48;
          v119 = sub_2329D2DF4();
          v120 = sub_2329D35F4();

          if (!os_log_type_enabled(v119, v120))
          {
            goto LABEL_49;
          }

          v121 = swift_slowAlloc();
          *v121 = 134217984;
          v127 = [v60 startDate];
          v128 = v172;
          sub_2329D2D64();

          sub_2329D2D24();
          v130 = v129;
          (*(v174 + 8))(v128, v173);
          *(v121 + 4) = v130;
          v126 = "ContainerExport started on: %f";
        }

        else
        {
          if (v53 != 1)
          {
            if (v53)
            {
              v60 = v48;
              v115 = sub_2329D2DF4();
              v116 = sub_2329D3634();
              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                *v117 = 134217984;
                *(v117 + 4) = [v60 type];

                _os_log_impl(&dword_2329A4000, v115, v116, "Unknown persistent CloudKit container event type: %ld", v117, 0xCu);
                v118 = v117;
LABEL_88:
                MEMORY[0x23838B4F0](v118, -1, -1);

                goto LABEL_89;
              }

LABEL_89:
              return;
            }

            if (v165)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
              v54 = swift_allocObject();
              v55 = MEMORY[0x277D839F8];
              *(v54 + 16) = xmmword_2329D4530;
              v56 = MEMORY[0x277D83A80];
              *(v54 + 56) = v55;
              *(v54 + 64) = v56;
              *(v54 + 32) = v47;
              v57 = sub_2329D33C4();
              v59 = v58;
              v60 = v48;
              v61 = sub_2329D2DF4();
              v62 = sub_2329D35F4();

              if (os_log_type_enabled(v61, v62))
              {
                LODWORD(v171) = v62;
                v63 = v57;
                v174 = v59;
                v64 = swift_slowAlloc();
                v170 = swift_slowAlloc();
                v177[0] = v170;
                *v64 = 136315906;
                if ([v60 succeeded])
                {
                  v65 = 0x73736563637573;
                }

                else
                {
                  v65 = 0x6572756C696166;
                }

                v66 = sub_2329A8630(v65, 0xE700000000000000, v177);

                *(v64 + 4) = v66;
                *(v64 + 12) = 2048;
                v67 = [v60 startDate];
                v68 = v172;
                sub_2329D2D64();

                sub_2329D2D24();
                v70 = v69;
                v71 = *(v45 + 8);
                v71(v68, v173);
                *(v64 + 14) = v70;
                *(v64 + 22) = 2048;
                v72 = [v60 endDate];
                if (v72)
                {
                  v73 = v72;
                  sub_2329D2D64();

                  v74 = 0;
                }

                else
                {
                  v74 = 1;
                }

                v154 = v173;
                v166(v18, v74, 1, v173);
                sub_2329BFA80(v18, v21, &qword_27DDBDE60, &qword_2329D4918);
                if (v163(v21, 1, v154) == 1)
                {
                  sub_2329BFB8C(v21, &qword_27DDBDE60, &qword_2329D4918);
                  v155 = 0;
                }

                else
                {
                  sub_2329D2D24();
                  v155 = v156;
                  v71(v21, v154);
                }

                *(v64 + 24) = v155;
                *(v64 + 32) = 2080;
                v157 = sub_2329A8630(v63, v174, v177);

                *(v64 + 34) = v157;
                _os_log_impl(&dword_2329A4000, v61, v171, "ContainerSetup ended with %s - %f -> %f (%s)", v64, 0x2Au);
                v158 = v170;
                swift_arrayDestroy();
                MEMORY[0x23838B4F0](v158, -1, -1);
                MEMORY[0x23838B4F0](v64, -1, -1);
              }

              else
              {
              }

              if ([v60 succeeded])
              {
                goto LABEL_89;
              }

              v60 = v60;
              v115 = sub_2329D2DF4();
              v141 = sub_2329D3614();

              if (os_log_type_enabled(v115, v141))
              {
                v142 = swift_slowAlloc();
                v143 = swift_slowAlloc();
                *v142 = 138412290;
                v159 = [v60 error];
                if (v159)
                {
                  v159 = _swift_stdlib_bridgeErrorToNSError();
                  v160 = v159;
                }

                else
                {
                  v160 = 0;
                }

                *(v142 + 4) = v159;
                *v143 = v160;
                v161 = "Setup error: %@";
LABEL_87:
                _os_log_impl(&dword_2329A4000, v115, v141, v161, v142, 0xCu);
                sub_2329BFB8C(v143, &qword_27DDBE070, &unk_2329D4750);
                MEMORY[0x23838B4F0](v143, -1, -1);
                v118 = v142;
                goto LABEL_88;
              }

              goto LABEL_80;
            }

            v60 = v48;
            v119 = sub_2329D2DF4();
            v120 = sub_2329D35F4();

            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              *v121 = 134217984;
              v131 = [v60 startDate];
              v132 = v172;
              sub_2329D2D64();

              sub_2329D2D24();
              v134 = v133;
              (*(v174 + 8))(v132, v173);
              *(v121 + 4) = v134;
              v126 = "ContainerSetup started on: %f";
              goto LABEL_48;
            }

LABEL_49:

            return;
          }

          if (v165)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
            v75 = swift_allocObject();
            v76 = MEMORY[0x277D839F8];
            *(v75 + 16) = xmmword_2329D4530;
            v77 = MEMORY[0x277D83A80];
            *(v75 + 56) = v76;
            *(v75 + 64) = v77;
            *(v75 + 32) = v47;
            v78 = sub_2329D33C4();
            v80 = v79;
            v60 = v48;
            v81 = sub_2329D2DF4();
            v82 = sub_2329D35F4();

            if (os_log_type_enabled(v81, v82))
            {
              LODWORD(v171) = v82;
              v83 = v78;
              v174 = v80;
              v84 = swift_slowAlloc();
              v167 = swift_slowAlloc();
              v177[0] = v167;
              *v84 = 136315906;
              if ([v60 succeeded])
              {
                v85 = 0x73736563637573;
              }

              else
              {
                v85 = 0x6572756C696166;
              }

              v86 = sub_2329A8630(v85, 0xE700000000000000, v177);

              *(v84 + 4) = v86;
              *(v84 + 12) = 2048;
              v87 = [v60 startDate];
              v88 = v172;
              sub_2329D2D64();

              sub_2329D2D24();
              v90 = v89;
              v91 = *(v45 + 8);
              v91(v88, v173);
              *(v84 + 14) = v90;
              *(v84 + 22) = 2048;
              v92 = [v60 endDate];
              if (v92)
              {
                v93 = v92;
                sub_2329D2D64();

                v94 = 0;
              }

              else
              {
                v94 = 1;
              }

              v135 = v170;
              v136 = v173;
              v166(v13, v94, 1, v173);
              sub_2329BFA80(v13, v135, &qword_27DDBDE60, &qword_2329D4918);
              if (v163(v135, 1, v136) == 1)
              {
                sub_2329BFB8C(v135, &qword_27DDBDE60, &qword_2329D4918);
                v137 = 0;
              }

              else
              {
                sub_2329D2D24();
                v137 = v138;
                v91(v135, v136);
              }

              *(v84 + 24) = v137;
              *(v84 + 32) = 2080;
              v139 = sub_2329A8630(v83, v174, v177);

              *(v84 + 34) = v139;
              _os_log_impl(&dword_2329A4000, v81, v171, "ContainerImport ended with %s - %f -> %f (%s)", v84, 0x2Au);
              v140 = v167;
              swift_arrayDestroy();
              MEMORY[0x23838B4F0](v140, -1, -1);
              MEMORY[0x23838B4F0](v84, -1, -1);
            }

            else
            {
            }

            if ([v60 succeeded])
            {
              goto LABEL_89;
            }

            v60 = v60;
            v115 = sub_2329D2DF4();
            v141 = sub_2329D3614();

            if (os_log_type_enabled(v115, v141))
            {
              v142 = swift_slowAlloc();
              v143 = swift_slowAlloc();
              *v142 = 138412290;
              v144 = [v60 error];
              if (v144)
              {
                v144 = _swift_stdlib_bridgeErrorToNSError();
                v145 = v144;
              }

              else
              {
                v145 = 0;
              }

              *(v142 + 4) = v144;
              *v143 = v145;
              v161 = "Import error: %@";
              goto LABEL_87;
            }

LABEL_80:

            return;
          }

          v60 = v48;
          v119 = sub_2329D2DF4();
          v120 = sub_2329D35F4();

          if (!os_log_type_enabled(v119, v120))
          {
            goto LABEL_49;
          }

          v121 = swift_slowAlloc();
          *v121 = 134217984;
          v122 = [v60 startDate];
          v123 = v172;
          sub_2329D2D64();

          sub_2329D2D24();
          v125 = v124;
          (*(v174 + 8))(v123, v173);
          *(v121 + 4) = v125;
          v126 = "ContainerImport started on: %f";
        }

LABEL_48:
        _os_log_impl(&dword_2329A4000, v119, v120, v126, v121, 0xCu);
        MEMORY[0x23838B4F0](v121, -1, -1);

        goto LABEL_89;
      }
    }

    else
    {

      sub_2329BFA2C(v177);
    }
  }
}

void sub_2329AF41C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277CBE260] object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x277CBE1F0] object:0];
}

uint64_t sub_2329AF4E4(void *a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded);
  v4 = sub_2329D2DF4();
  if (v3 == 1)
  {
    v5 = sub_2329D35F4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2329A4000, v4, v5, "Preparing to save persistent store...", v6, 2u);
      MEMORY[0x23838B4F0](v6, -1, -1);
    }

    if ([a1 hasChanges])
    {
      sub_2329D2D94();
      v7 = sub_2329D3384();

      [a1 setTransactionAuthor_];

      v29[0] = 0;
      v8 = [a1 save_];
      if (v8)
      {
        v9 = v29[0];
        v10 = sub_2329D2DF4();
        v11 = sub_2329D3634();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_2329A4000, v10, v11, "Persistent store save complete", v12, 2u);
          MEMORY[0x23838B4F0](v12, -1, -1);
        }
      }

      else
      {
        v19 = v29[0];
        v20 = sub_2329D2C84();

        swift_willThrow();
        v21 = v20;
        v22 = sub_2329D2DF4();
        v23 = sub_2329D3614();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v29[0] = v25;
          *v24 = 136315138;
          swift_getErrorValue();
          v26 = sub_2329D3914();
          v28 = sub_2329A8630(v26, v27, v29);

          *(v24 + 4) = v28;
          _os_log_impl(&dword_2329A4000, v22, v23, "Error saving to persistent store: %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x23838B4F0](v25, -1, -1);
          MEMORY[0x23838B4F0](v24, -1, -1);
        }

        else
        {
        }
      }

      [a1 setTransactionAuthor_];
      return v8;
    }

    else
    {
      v16 = sub_2329D2DF4();
      v17 = sub_2329D3634();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2329A4000, v16, v17, "No changes found, skipping save", v18, 2u);
        MEMORY[0x23838B4F0](v18, -1, -1);
      }

      return 1;
    }
  }

  else
  {
    v13 = sub_2329D3614();
    if (os_log_type_enabled(v4, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2329A4000, v4, v13, "PSC is not loaded yet", v14, 2u);
      MEMORY[0x23838B4F0](v14, -1, -1);
    }

    return 0;
  }
}

void sub_2329AF8F0()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_2329D3384();
  v4 = [v2 dataForKey_];

  if (v4)
  {
    v5 = sub_2329D2D14();
    v7 = v6;

    sub_2329BFB44(0, &qword_2814DA838, 0x277CCAAC8);
    sub_2329BFB44(0, &qword_2814D9E38, 0x277CBE4C0);
    v11 = sub_2329D3644();
    sub_2329BE828(v5, v7);

    v12 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken);
    *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken) = v11;
  }

  else
  {
    v8 = sub_2329D2DF4();
    v9 = sub_2329D3634();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2329A4000, v8, v9, "No persisted history token was found", v10, 2u);
      MEMORY[0x23838B4F0](v10, -1, -1);
    }

    v12 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken);
    *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken) = 0;
  }
}

void sub_2329AFBF0(void *a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = objc_opt_self();
    v31[0] = 0;
    v4 = a1;
    v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:v31];
    v6 = v31[0];
    if (v5)
    {
      v7 = sub_2329D2D14();
      v9 = v8;

      v10 = [objc_opt_self() standardUserDefaults];
      v11 = sub_2329D2D04();
      v12 = sub_2329D3384();
      [v10 setObject:v11 forKey:v12];

      v13 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken);
      *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken) = a1;
      v14 = v4;

      v15 = sub_2329D2DF4();
      v16 = sub_2329D35F4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2329A4000, v15, v16, "Persisted updated history token", v17, 2u);
        MEMORY[0x23838B4F0](v17, -1, -1);
      }

      sub_2329BE828(v7, v9);
    }

    else
    {
      v20 = v6;
      v21 = sub_2329D2C84();

      swift_willThrow();
      v22 = v21;
      v23 = sub_2329D2DF4();
      v24 = sub_2329D3614();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31[0] = v26;
        *v25 = 136315138;
        swift_getErrorValue();
        v27 = sub_2329D3914();
        v29 = sub_2329A8630(v27, v28, v31);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_2329A4000, v23, v24, "Failed to persist history token: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x23838B4F0](v26, -1, -1);
        MEMORY[0x23838B4F0](v25, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    oslog = sub_2329D2DF4();
    v18 = sub_2329D3614();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2329A4000, oslog, v18, "Cannot store a nil history token", v19, 2u);
      MEMORY[0x23838B4F0](v19, -1, -1);
    }
  }
}

void sub_2329AFFCC()
{
  v6 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2329D3384();
  [v6 removeObjectForKey_];

  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken);
  *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken) = 0;

  v3 = sub_2329D2DF4();
  v4 = sub_2329D3634();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2329A4000, v3, v4, "Removed history token", v5, 2u);
    MEMORY[0x23838B4F0](v5, -1, -1);
  }
}

void sub_2329B00F4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v44 - v5;
  v6 = sub_2329D2C34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  (*(v7 + 16))(v9, a1, v6);
  v47 = v10;
  v11 = sub_2329D2DF4();
  v12 = sub_2329D3604();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    sub_2329BF1B0(&qword_27DDBDDA0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v15 = sub_2329D38B4();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = sub_2329A8630(v15, v17, aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2329A4000, v11, v12, "Persistent store remote change: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23838B4F0](v14, -1, -1);
    MEMORY[0x23838B4F0](v13, -1, -1);
  }

  else
  {

    v19 = (*(v7 + 8))(v9, v6);
  }

  v20 = (*(*v2 + 360))(v19);
  if (v20)
  {
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = MEMORY[0x277D84F90];
    v23 = (v22 + 16);
    v24 = *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken);
    v45 = v24;
    v25 = sub_2329D2DF4();
    v26 = sub_2329D35F4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2329A4000, v25, v26, "Ready to process persistent store remote change transactions", v27, 2u);
      MEMORY[0x23838B4F0](v27, -1, -1);
    }

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v21;
    v29[4] = v23;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_2329BE8C8;
    *(v30 + 24) = v29;
    aBlock[4] = sub_2329BFCF8;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2329B08FC;
    aBlock[3] = &block_descriptor_108;
    v31 = _Block_copy(aBlock);
    v32 = v21;

    [v32 performBlockAndWait:v31];
    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
    }

    else if (!(*v23 >> 62))
    {
      if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_10:

        v33 = sub_2329D2DF4();
        v34 = sub_2329D3634();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 134217984;
          swift_beginAccess();
          if (*v23 >> 62)
          {
            v36 = sub_2329D3864();
          }

          else
          {
            v36 = *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v38 = v45;
          v37 = v46;
          *(v35 + 4) = v36;

          _os_log_impl(&dword_2329A4000, v33, v34, "Sending updates for %ld devices", v35, 0xCu);
          MEMORY[0x23838B4F0](v35, -1, -1);
        }

        else
        {

          v38 = v45;
          v37 = v46;
        }

        v41 = sub_2329D3504();
        (*(*(v41 - 8) + 56))(v37, 1, 1, v41);
        v42 = swift_allocObject();
        v42[2] = 0;
        v42[3] = 0;
        v42[4] = v2;
        v42[5] = v22;
        v42[6] = v24;
        v43 = v38;

        sub_2329B0D4C(0, 0, v37, &unk_2329D4870, v42);

        goto LABEL_21;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (sub_2329D3864() >= 1)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  v32 = sub_2329D2DF4();
  v39 = sub_2329D3614();
  if (os_log_type_enabled(v32, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2329A4000, v32, v39, "Failed to get current MOC", v40, 2u);
    MEMORY[0x23838B4F0](v40, -1, -1);
  }

LABEL_21:
}

uint64_t sub_2329B080C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2329D3864();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2329D3864();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2329BBA04(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2329BC100(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2329B0924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_2329B0948, 0, 0);
}

uint64_t sub_2329B0948()
{
  v1 = v0[6];
  v2 = *(v0[5] + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_relayController);
  swift_beginAccess();
  v3 = *(v1 + 16);
  v0[8] = v3;
  v4 = *(*v2 + 96);

  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2329B0A98;

  return v7(v3);
}

uint64_t sub_2329B0A98()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2329B0BD4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2329B0BD4()
{
  v1 = v0[10];

  v2 = v1;
  v3 = sub_2329D2DF4();
  v4 = sub_2329D3614();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2329A4000, v3, v4, "Failed to send remote device updates: %@", v6, 0xCu);
    sub_2329BFB8C(v7, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v7, -1, -1);
    MEMORY[0x23838B4F0](v6, -1, -1);
  }

  v10 = v0[10];
  v11 = v0[7];

  sub_2329AFBF0(v11);
  v12 = v0[1];

  return v12();
}

uint64_t sub_2329B0D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2329BF474(a3, v25 - v10, &qword_27DDBDD98, &qword_2329D4860);
  v12 = sub_2329D3504();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2329BFB8C(v11, &qword_27DDBDD98, &qword_2329D4860);
  }

  else
  {
    sub_2329D34F4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2329D34D4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2329D33E4() + 32;
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

      sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);

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

  sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);
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

unint64_t sub_2329B104C()
{
  v1 = (*(v0->isa + 45))();
  if (v1)
  {
    v2 = v1;
    v16 = MEMORY[0x277D84F90];
    v3 = swift_allocObject();
    v3[2] = v0;
    v3[3] = &v16;
    v3[4] = v2;
    v4 = swift_allocObject();
    v5 = v4;
    *(v4 + 16) = sub_2329BF8A8;
    *(v4 + 24) = v3;
    aBlock[4] = sub_2329BFCF8;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2329B08FC;
    aBlock[3] = &block_descriptor_145;
    v6 = _Block_copy(aBlock);

    v7 = v2;

    [v7 performBlockAndWait_];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v0 = sub_2329D2DF4();
      v5 = sub_2329D35F4();
      if (!os_log_type_enabled(v0, v5))
      {
LABEL_7:

        swift_beginAccess();
        v10 = v16;

        return v10;
      }

      isEscapingClosureAtFileLocation = swift_slowAlloc();
      *isEscapingClosureAtFileLocation = 134217984;
      swift_beginAccess();
      if (!(v16 >> 62))
      {
        v9 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        *(isEscapingClosureAtFileLocation + 4) = v9;
        _os_log_impl(&dword_2329A4000, v0, v5, "Fetched %ld device records", isEscapingClosureAtFileLocation, 0xCu);
        MEMORY[0x23838B4F0](isEscapingClosureAtFileLocation, -1, -1);
        goto LABEL_7;
      }
    }

    v9 = sub_2329D3864();
    goto LABEL_6;
  }

  v11 = sub_2329D2DF4();
  v12 = sub_2329D3614();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2329A4000, v11, v12, "Failed to get current MOC", v13, 2u);
    MEMORY[0x23838B4F0](v13, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void sub_2329B1354(uint64_t a1, void *a2, void *a3)
{
  v258 = a3;
  v252 = a2;
  v296 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE60, &qword_2329D4918);
  MEMORY[0x28223BE20](v4 - 8);
  v267 = &v241 - v5;
  v272 = sub_2329D2D84();
  v273 = *(v272 - 8);
  v6 = MEMORY[0x28223BE20](v272);
  v251 = &v241 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v261 = &v241 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD90, &qword_2329D4858);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v244 = &v241 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v250 = &v241 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v241 - v15;
  MEMORY[0x28223BE20](v14);
  v283 = &v241 - v17;
  v288 = sub_2329D2DD4();
  v264 = *(v288 - 8);
  v18 = MEMORY[0x28223BE20](v288);
  v241 = &v241 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v243 = &v241 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v249 = &v241 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v280 = &v241 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v285 = &v241 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v241 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v282 = &v241 - v32;
  MEMORY[0x28223BE20](v31);
  *&v281 = &v241 - v33;
  type metadata accessor for NDFNetworkDevice();
  v34 = [swift_getObjCClassFromMetadata() entityName];
  if (!v34)
  {
    sub_2329D33B4();
    v34 = sub_2329D3384();
  }

  v35 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  [v35 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE100, &qword_2329D48D8);
  v36 = swift_allocObject();
  v260 = xmmword_2329D4530;
  *(v36 + 16) = xmmword_2329D4530;
  v37 = sub_2329C002C();
  v39 = *v37;
  v38 = v37[1];
  v40 = MEMORY[0x277D837D0];
  *(v36 + 56) = MEMORY[0x277D837D0];
  *(v36 + 32) = v39;
  *(v36 + 40) = v38;

  v41 = sub_2329D3474();

  [v35 setPropertiesToGroupBy_];

  v42 = swift_allocObject();
  *(v42 + 16) = v260;
  v44 = *v37;
  v43 = v37[1];
  v287 = v37;
  *(v42 + 56) = v40;
  *(v42 + 32) = v44;
  *(v42 + 40) = v43;

  v45 = sub_2329D3474();

  [v35 setPropertiesToFetch_];

  *&v294 = 0;
  v242 = v35;
  v46 = [v35 execute_];
  v47 = v294;
  v48 = &unk_2814DA000;
  if (!v46)
  {
    v79 = v294;
    v80 = sub_2329D2C84();

    swift_willThrow();
    v81 = v80;
    v82 = sub_2329D2DF4();
    v83 = sub_2329D3614();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      v86 = v80;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v87;
      *v85 = v87;
      _os_log_impl(&dword_2329A4000, v82, v83, "Failed to fetch list of unique device identifiers: %@", v84, 0xCu);
      sub_2329BFB8C(v85, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v85, -1, -1);
      MEMORY[0x23838B4F0](v84, -1, -1);
    }

    else
    {
    }

    return;
  }

  v49 = v46;
  v275 = v16;
  v257 = sub_2329BFB44(0, &qword_2814D9E70, 0x277CBEAC0);
  v50 = sub_2329D3484();
  v51 = v47;

  v53 = v50;
  v269 = a1;
  if (v50 >> 62)
  {
    goto LABEL_150;
  }

  v54 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v55 = v283;
  v271 = v30;
  if (v54)
  {
    if (v54 < 1)
    {
      __break(1u);
    }

    v56 = 0;
    v286 = v53 & 0xC000000000000001;
    v284 = v48[381];
    v57 = (v264 + 56);
    v58 = (v264 + 48);
    v279 = (v264 + 32);
    v277 = (v264 + 16);
    v276 = (v264 + 8);
    v274 = MEMORY[0x277D84F90];
    *&v52 = 138412290;
    v278 = v52;
    v289 = v53;
    while (1)
    {
      if (v286)
      {
        v59 = MEMORY[0x23838AD30](v56);
      }

      else
      {
        v59 = *(v53 + 8 * v56 + 32);
      }

      v60 = v59;
      v61 = sub_2329D2DF4();
      v62 = sub_2329D35F4();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = v278;
        *(v63 + 4) = v60;
        *v64 = v60;
        v65 = v60;
        _os_log_impl(&dword_2329A4000, v61, v62, "Result dict %@", v63, 0xCu);
        sub_2329BFB8C(v64, &qword_27DDBE070, &unk_2329D4750);
        v66 = v64;
        v55 = v283;
        MEMORY[0x23838B4F0](v66, -1, -1);
        v30 = v271;
        MEMORY[0x23838B4F0](v63, -1, -1);
      }

      v67 = v287[1];
      *&v292 = *v287;
      *(&v292 + 1) = v67;

      v68 = [v60 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v68)
      {
        sub_2329D3734();
        swift_unknownObjectRelease();
      }

      else
      {
        v292 = 0u;
        v293 = 0u;
      }

      v294 = v292;
      v295 = v293;
      if (*(&v293 + 1))
      {
        v69 = v30;
        v70 = v288;
        v71 = swift_dynamicCast();
        (*v57)(v55, v71 ^ 1u, 1, v70);
        if ((*v58)(v55, 1, v70) != 1)
        {
          v72 = *v279;
          v73 = v281;
          (*v279)(v281, v55, v70);
          (*v277)(v282, v73, v70);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v274 = sub_2329BAF0C(0, v274[2] + 1, 1, v274);
          }

          v75 = v274[2];
          v74 = v274[3];
          if (v75 >= v74 >> 1)
          {
            v274 = sub_2329BAF0C((v74 > 1), v75 + 1, 1, v274);
          }

          v76 = v264;
          v77 = v288;
          (*(v264 + 8))(v281, v288);
          v78 = v274;
          v274[2] = v75 + 1;
          v72(v78 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v75, v282, v77);
          v30 = v69;
          v55 = v283;
          goto LABEL_11;
        }

        v30 = v69;
      }

      else
      {

        sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
        (*v57)(v55, 1, 1, v288);
      }

      sub_2329BFB8C(v55, &qword_27DDBDD90, &qword_2329D4858);
LABEL_11:
      v53 = v289;
      if (v54 == ++v56)
      {
        goto LABEL_31;
      }
    }
  }

  v274 = MEMORY[0x277D84F90];
LABEL_31:

  v88 = v269;
  v289 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v89 = sub_2329D2DF4();
  v90 = sub_2329D3634();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v294 = v92;
    *v91 = 134218242;
    v93 = v274;
    *(v91 + 4) = v274[2];
    *(v91 + 12) = 2080;

    v95 = MEMORY[0x23838A9E0](v94, v288);
    v97 = v96;

    v98 = sub_2329A8630(v95, v97, &v294);
    v30 = v271;

    *(v91 + 14) = v98;
    _os_log_impl(&dword_2329A4000, v89, v90, "Found %ld unique device identifiers: %s", v91, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x23838B4F0](v92, -1, -1);
    MEMORY[0x23838B4F0](v91, -1, -1);

    v99 = v275;
    v100 = v285;
  }

  else
  {

    v99 = v275;
    v100 = v285;
    v93 = v274;
  }

  *v252 = MEMORY[0x277D84F90];

  v256 = v93[2];
  if (!v256)
  {
    goto LABEL_144;
  }

  v255 = sub_2329BFB44(0, &qword_2814D9E78, 0x277CCAC30);
  v254 = v93 + ((*(v264 + 80) + 32) & ~*(v264 + 80));
  v263 = v264 + 16;
  *&v278 = v264 + 8;
  v284 = (v264 + 56);
  v279 = (v264 + 48);
  v276 = (v264 + 32);
  v265 = (v273 + 56);
  v259 = (v273 + 48);
  v248 = (v273 + 32);
  v247 = (v273 + 16);
  v246 = (v273 + 8);
  v274 = v93;

  v101 = 0;
  v268 = 0;
  *&v102 = 136315138;
  v245 = v102;
  *(&v102 + 1) = 3;
  v253 = xmmword_2329D46C0;
  *&v102 = 138412290;
  v281 = v102;
  v48 = v288;
  while (1)
  {
    if (v101 >= v274[2])
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      v239 = v53;
      v240 = sub_2329D3864();
      v53 = v239;
      v54 = v240;
      goto LABEL_6;
    }

    v103 = *(v264 + 72);
    v286 = v101;
    v104 = *(v264 + 16);
    v104(v30, &v254[v103 * v101], v48);
    v262 = v104;
    v104(v100, v30, v48);
    v105 = sub_2329D2DF4();
    v106 = sub_2329D3604();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = v48;
      v108 = v100;
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *&v294 = v110;
      *v109 = v245;
      sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v111 = sub_2329D38B4();
      v113 = v112;
      v277 = *v278;
      (v277)(v108, v107);
      v114 = sub_2329A8630(v111, v113, &v294);
      v30 = v271;

      *(v109 + 4) = v114;
      _os_log_impl(&dword_2329A4000, v105, v106, "Fetching %s...", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v110);
      MEMORY[0x23838B4F0](v110, -1, -1);
      MEMORY[0x23838B4F0](v109, -1, -1);
    }

    else
    {

      v277 = *v278;
      (v277)(v100, v48);
    }

    sub_2329BFFD4();
    v115 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v116 = sub_2329D3384();

    v117 = [v115 initWithEntityName_];

    [v117 setResultType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
    v118 = swift_allocObject();
    *(v118 + 16) = v253;
    v273 = sub_2329C01E0();
    v119 = objc_allocWithZone(MEMORY[0x277CCAC98]);

    v120 = sub_2329D3384();

    v121 = [v119 initWithKey:v120 ascending:0];

    *(v118 + 32) = v121;
    sub_2329BFB44(0, &qword_2814D9E68, 0x277CCAC98);
    v122 = sub_2329D3474();

    [v117 setSortDescriptors_];

    [v117 setFetchLimit_];
    v123 = v287[1];
    *&v294 = *v287;
    *(&v294 + 1) = v123;

    MEMORY[0x23838A970](0x4025203D3D20, 0xE600000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
    v124 = swift_allocObject();
    *(v124 + 16) = v260;
    v125 = sub_2329D2D94();
    v127 = v126;
    *(v124 + 56) = MEMORY[0x277D837D0];
    *(v124 + 64) = sub_2329BF8B4();
    *(v124 + 32) = v125;
    *(v124 + 40) = v127;
    v128 = sub_2329D35E4();

    [v117 setPredicate_];

    v266 = v117;
    v129 = v268;
    v130 = sub_2329D36E4();
    v268 = v129;
    if (v129)
    {
      break;
    }

    v53 = v130;
    if (v130 >> 62)
    {
      v216 = v130;
      v217 = sub_2329D3864();
      v53 = v216;
      v30 = v217;
    }

    else
    {
      v30 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v100 = v285;
    v131 = v286;
    v48 = v288;
    if (v30)
    {
      if (v30 >= 1)
      {
        v132 = 0;
        v282 = (v53 & 0xC000000000000001);
        v283 = v53;
        while (1)
        {
          if (v282)
          {
            v137 = MEMORY[0x23838AD30](v132);
          }

          else
          {
            v137 = *(v53 + 8 * v132 + 32);
          }

          v138 = v137;
          v139 = sub_2329D2DF4();
          v140 = sub_2329D3604();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            *v141 = v281;
            *(v141 + 4) = v138;
            *v142 = v138;
            v143 = v138;
            _os_log_impl(&dword_2329A4000, v139, v140, "fetched entity: %@", v141, 0xCu);
            sub_2329BFB8C(v142, &qword_27DDBE070, &unk_2329D4750);
            MEMORY[0x23838B4F0](v142, -1, -1);
            v144 = v141;
            v48 = v288;
            MEMORY[0x23838B4F0](v144, -1, -1);
          }

          v145 = v287[1];
          *&v292 = *v287;
          *(&v292 + 1) = v145;

          v146 = [v138 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v146)
          {
            sub_2329D3734();
            swift_unknownObjectRelease();
          }

          else
          {
            v292 = 0u;
            v293 = 0u;
          }

          v294 = v292;
          v295 = v293;
          if (!*(&v293 + 1))
          {
            sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
            (*v284)(v99, 1, 1, v48);
LABEL_62:
            sub_2329BFB8C(v99, &qword_27DDBDD90, &qword_2329D4858);
            goto LABEL_78;
          }

          v147 = swift_dynamicCast();
          v148 = *v284;
          (*v284)(v99, v147 ^ 1u, 1, v48);
          v149 = *v279;
          if ((*v279)(v99, 1, v48) == 1)
          {
            goto LABEL_62;
          }

          v150 = v99;
          v151 = v88;
          v152 = *v276;
          (*v276)(v280, v150, v48);
          v153 = sub_2329C0080();
          v155 = *v153;
          v154 = *(v153 + 1);
          *&v292 = v155;
          *(&v292 + 1) = v154;

          v156 = [v138 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v156)
          {
            sub_2329D3734();
            swift_unknownObjectRelease();
          }

          else
          {
            v292 = 0u;
            v293 = 0u;
          }

          v294 = v292;
          v295 = v293;
          if (!*(&v293 + 1))
          {
            break;
          }

          if (swift_dynamicCast())
          {
            LODWORD(v270) = v290;
            v157 = *(v273 + 1);
            *&v292 = *v273;
            *(&v292 + 1) = v157;

            v158 = [v138 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v158)
            {
              sub_2329D3734();
              swift_unknownObjectRelease();
            }

            else
            {
              v292 = 0u;
              v293 = 0u;
            }

            v162 = v267;
            v163 = v272;
            v294 = v292;
            v295 = v293;
            if (*(&v293 + 1))
            {
              v164 = swift_dynamicCast();
              (*v265)(v162, v164 ^ 1u, 1, v163);
              if ((*v259)(v162, 1, v163) != 1)
              {
                v169 = v261;
                (*v248)(v261, v162, v163);
                (*v247)(v251, v169, v163);
                v48 = v288;
                v262(v249, v280, v288);
                v170 = objc_allocWithZone(sub_2329D2FA4());
                v270 = sub_2329D2F94();
                v171 = sub_2329C0054();
                v173 = *v171;
                v172 = *(v171 + 1);
                *&v292 = v173;
                *(&v292 + 1) = v172;

                v174 = [v138 __swift_objectForKeyedSubscript_];
                swift_unknownObjectRelease();
                if (v174)
                {
                  sub_2329D3734();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v292 = 0u;
                  v293 = 0u;
                }

                v294 = v292;
                v295 = v293;
                if (*(&v293 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    sub_2329D2E74();
                  }
                }

                else
                {
                  sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
                }

                v175 = sub_2329C00A8();
                v177 = *v175;
                v176 = v175[1];
                *&v292 = v177;
                *(&v292 + 1) = v176;

                v178 = [v138 __swift_objectForKeyedSubscript_];
                swift_unknownObjectRelease();
                if (v178)
                {
                  sub_2329D3734();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v292 = 0u;
                  v293 = 0u;
                }

                v179 = v250;
                v294 = v292;
                v295 = v293;
                if (*(&v293 + 1))
                {
                  v180 = swift_dynamicCast();
                  v148(v179, v180 ^ 1u, 1, v48);
                  v181 = v149(v179, 1, v48);
                  v100 = v285;
                  if (v181 != 1)
                  {
                    v182 = v243;
                    v152(v243, v179, v48);
                    v183 = v244;
                    v262(v244, v182, v48);
                    v148(v183, 0, 1, v48);
                    sub_2329D2EC4();
                    (v277)(v182, v48);
                    v88 = v151;
LABEL_95:
                    v184 = sub_2329C0120();
                    v186 = *v184;
                    v185 = *(v184 + 1);
                    *&v292 = v186;
                    *(&v292 + 1) = v185;

                    v187 = [v138 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    v99 = v275;
                    if (v187)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v292 = 0u;
                      v293 = 0u;
                    }

                    v294 = v292;
                    v295 = v293;
                    if (*(&v293 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        sub_2329D2EA4();
                      }
                    }

                    else
                    {
                      sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v188 = sub_2329C0150();
                    v190 = *v188;
                    v189 = v188[1];
                    *&v292 = v190;
                    *(&v292 + 1) = v189;

                    v191 = [v138 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v191)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v292 = 0u;
                      v293 = 0u;
                    }

                    v294 = v292;
                    v295 = v293;
                    if (*(&v293 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v192 = v290;
                        v193 = v291;
                        sub_2329BF908(v290, v291);
                        sub_2329D2F54();
                        v194 = v193;
                        v48 = v288;
                        sub_2329BE828(v192, v194);
                      }
                    }

                    else
                    {
                      sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v195 = sub_2329C0180();
                    v197 = *v195;
                    v196 = v195[1];
                    *&v292 = v197;
                    *(&v292 + 1) = v196;

                    v198 = [v138 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v198)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v292 = 0u;
                      v293 = 0u;
                    }

                    v294 = v292;
                    v295 = v293;
                    if (*(&v293 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v199 = v290;
                        v200 = v291;
                        sub_2329BF908(v290, v291);
                        sub_2329D2F74();
                        v201 = v200;
                        v48 = v288;
                        sub_2329BE828(v199, v201);
                      }
                    }

                    else
                    {
                      sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v202 = sub_2329C0004();
                    v204 = *v202;
                    v203 = v202[1];
                    *&v292 = v204;
                    *(&v292 + 1) = v203;

                    v205 = [v138 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v205)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v292 = 0u;
                      v293 = 0u;
                    }

                    v294 = v292;
                    v295 = v293;
                    if (*(&v293 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        sub_2329D2F04();
                      }
                    }

                    else
                    {
                      sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v206 = sub_2329C00D0();
                    v208 = *v206;
                    v207 = *(v206 + 1);
                    *&v292 = v208;
                    *(&v292 + 1) = v207;

                    v209 = [v138 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v209)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v292 = 0u;
                      v293 = 0u;
                    }

                    v294 = v292;
                    v295 = v293;
                    if (*(&v293 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        sub_2329D2F34();
                      }
                    }

                    else
                    {
                      sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v210 = sub_2329C00F8();
                    v212 = *v210;
                    v211 = v210[1];
                    *&v292 = v212;
                    *(&v292 + 1) = v211;

                    v213 = [v138 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v213)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v292 = 0u;
                      v293 = 0u;
                    }

                    v294 = v292;
                    v295 = v293;
                    if (*(&v293 + 1))
                    {
                      v214 = swift_dynamicCast();
                      if (v214)
                      {
                        v214 = sub_2329D2EE4();
                      }
                    }

                    else
                    {
                      v214 = sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v215 = v252;
                    MEMORY[0x23838A9B0](v214);
                    if (*((*v215 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v215 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_2329D34A4();
                    }

                    sub_2329D34B4();

                    (*v246)(v261, v272);
                    (v277)(v280, v48);
                    goto LABEL_48;
                  }
                }

                else
                {
                  sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
                  v148(v179, 1, 1, v48);
                  v100 = v285;
                }

                sub_2329BFB8C(v179, &qword_27DDBDD90, &qword_2329D4858);
                v88 = v151;
                goto LABEL_95;
              }

              v48 = v288;
              (v277)(v280, v288);
            }

            else
            {
              v165 = v272;
              v48 = v288;
              v277(v280);
              sub_2329BFB8C(&v294, &unk_27DDBE0F0, &qword_2329D4890);
              (*v265)(v162, 1, 1, v165);
            }

            v159 = v162;
            v160 = &qword_27DDBDE60;
            v161 = &qword_2329D4918;
            goto LABEL_76;
          }

          (v277)(v280, v48);
LABEL_77:
          v88 = v151;
          v99 = v275;
LABEL_78:
          v100 = v285;
          v166 = v138;
          v167 = sub_2329D2DF4();
          v168 = sub_2329D3614();

          if (os_log_type_enabled(v167, v168))
          {
            v133 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            *v133 = v281;
            *(v133 + 4) = v166;
            *v134 = v166;
            v135 = v166;
            _os_log_impl(&dword_2329A4000, v167, v168, "Unable to extract timestamp or device ID or device role from record %@", v133, 0xCu);
            sub_2329BFB8C(v134, &qword_27DDBE070, &unk_2329D4750);
            MEMORY[0x23838B4F0](v134, -1, -1);
            v136 = v133;
            v48 = v288;
            MEMORY[0x23838B4F0](v136, -1, -1);
          }

          else
          {
          }

LABEL_48:
          ++v132;
          v131 = v286;
          v53 = v283;
          if (v30 == v132)
          {
            goto LABEL_36;
          }
        }

        (v277)(v280, v48);
        v159 = &v294;
        v160 = &unk_27DDBE0F0;
        v161 = &qword_2329D4890;
LABEL_76:
        sub_2329BFB8C(v159, v160, v161);
        goto LABEL_77;
      }

      goto LABEL_149;
    }

LABEL_36:
    v101 = v131 + 1;

    v30 = v271;
    (v277)(v271, v48);
    if (v101 == v256)
    {

LABEL_144:
      [v258 reset];

      goto LABEL_145;
    }
  }

  v218 = v241;
  v219 = v30;
  v220 = v30;
  v221 = v288;
  v262(v241, v219, v288);
  v222 = v268;
  v223 = v268;
  v224 = sub_2329D2DF4();
  v225 = sub_2329D3614();

  if (os_log_type_enabled(v224, v225))
  {
    v226 = v218;
    v227 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    *&v294 = v229;
    *v227 = 136315394;
    sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v230 = sub_2329D38B4();
    v232 = v231;
    v233 = v226;
    v234 = v277;
    (v277)(v233, v221);
    v235 = sub_2329A8630(v230, v232, &v294);

    *(v227 + 4) = v235;
    *(v227 + 12) = 2112;
    v236 = v222;
    v237 = _swift_stdlib_bridgeErrorToNSError();
    *(v227 + 14) = v237;
    *v228 = v237;
    _os_log_impl(&dword_2329A4000, v224, v225, "Failed to fetch network device with identifier %s: %@", v227, 0x16u);
    sub_2329BFB8C(v228, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v228, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v229);
    MEMORY[0x23838B4F0](v229, -1, -1);
    MEMORY[0x23838B4F0](v227, -1, -1);

    v234(v271, v221);

    return;
  }

  v238 = v277;
  (v277)(v218, v221);
  v238(v220, v221);
LABEL_145:
}

id sub_2329B38C8(void *a1, uint64_t a2)
{
  v78 = a2;
  v3 = sub_2329D3044();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD90, &qword_2329D4858);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v70 - v6;
  v7 = sub_2329D2D84();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2329D2DD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v15 = a1;
  v16 = sub_2329D2DF4();
  v17 = sub_2329D3634();

  v18 = os_log_type_enabled(v16, v17);
  v80 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v72 = v14;
    v21 = v20;
    v71 = swift_slowAlloc();
    v81 = v71;
    *v19 = 136315394;
    sub_2329D2F14();
    sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_2329D38B4();
    v70 = v10;
    v24 = v23;
    (*(v80 + 8))(v13, v10);
    v25 = sub_2329A8630(v22, v24, &v81);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    *v21 = v15;
    v26 = v15;
    _os_log_impl(&dword_2329A4000, v16, v17, "Creating record for device identifier %s: %@", v19, 0x16u);
    sub_2329BFB8C(v21, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v21, -1, -1);
    v27 = v71;
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x23838B4F0](v27, -1, -1);
    v28 = v19;
    v11 = v80;
    MEMORY[0x23838B4F0](v28, -1, -1);

    v29 = v70;
  }

  else
  {

    v29 = v10;
  }

  type metadata accessor for NDFNetworkDevice();
  v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v31 = [v30 initWithContext_];
  [v31 setRecordVersion_];
  sub_2329D2F84();
  v32 = sub_2329D2D44();
  (*(v76 + 8))(v9, v77);
  [v31 setTimestamp_];

  sub_2329D2F14();
  v33 = sub_2329D2DA4();
  v34 = *(v11 + 8);
  v34(v13, v29);
  [v31 setDeviceIdentifier_];

  [v31 setDeviceRole_];
  v35 = sub_2329D2F44();
  v37 = 0;
  v38 = v29;
  if (v36 >> 60 != 15)
  {
    v39 = v35;
    v40 = v36;
    v37 = sub_2329D2D04();
    sub_2329BE814(v39, v40);
  }

  [v31 setNwSignatureIPv4_];

  v41 = sub_2329D2F64();
  if (v42 >> 60 == 15)
  {
    v43 = 0;
  }

  else
  {
    v44 = v41;
    v45 = v42;
    v43 = sub_2329D2D04();
    sub_2329BE814(v44, v45);
  }

  v46 = v79;
  [v31 setNwSignatureIPv6_];

  sub_2329D2E94();
  if (v47)
  {
    v48 = sub_2329D3384();
  }

  else
  {
    v48 = 0;
  }

  [v31 setNwObscuredSSID_];

  sub_2329D2EB4();
  if ((*(v80 + 48))(v46, 1, v38) == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_2329D2DA4();
    v34(v46, v38);
  }

  [v31 setHomeKitGroupIdentifier_];

  v50 = sub_2329D2EF4();
  if ((v50 & 0x10000) != 0)
  {
    v51 = v73;
    v52 = v74;
    v53 = v75;
    (*(v74 + 104))(v73, *MEMORY[0x277D6B330], v75);
    v54 = sub_2329D2E24();
    (*(v52 + 8))(v51, v53);
    LOWORD(v50) = v54;
  }

  [v31 setDesignatedDeviceReachability_];
  v55 = sub_2329D2F24();
  if ((v55 & 0x10000) != 0)
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  [v31 setNwNATCount_];
  v57 = sub_2329D2ED4();
  if (v58)
  {
    v59 = 0;
  }

  else
  {
    v59 = v57;
  }

  [v31 setNwNetworkProperties_];
  sub_2329D2E64();
  if (v60)
  {
    v61 = sub_2329D3384();

    [v31 setDeviceModel_];
  }

  else
  {
    v62 = sub_2329D2DF4();
    v63 = sub_2329D3614();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2329A4000, v62, v63, "No device model found in payload, falling back to local lookup", v64, 2u);
      MEMORY[0x23838B4F0](v64, -1, -1);
    }

    v65 = MobileGestalt_get_current_device();
    if (v65)
    {
      v66 = v65;
      v61 = MobileGestalt_copy_productType_obj();
      [v31 setDeviceModel_];
    }

    else
    {
      v61 = sub_2329D2DF4();
      v67 = sub_2329D3614();
      if (os_log_type_enabled(v61, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_2329A4000, v61, v67, "Unable to access MobileGestalt, cannot populate device model", v68, 2u);
        MEMORY[0x23838B4F0](v68, -1, -1);
      }
    }
  }

  return v31;
}

uint64_t sub_2329B40E0(void *a1)
{
  v3 = (*(*v1 + 360))();
  if (!v3)
  {
    v12 = sub_2329D2DF4();
    v13 = sub_2329D3614();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2329A4000, v12, v13, "Failed to get current MOC", v14, 2u);
      MEMORY[0x23838B4F0](v14, -1, -1);
    }

    return 0;
  }

  v4 = v3;
  v16 = 0;
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = a1;
  v5[4] = v4;
  v5[5] = &v16;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2329BC9EC;
  *(v6 + 24) = v5;
  aBlock[4] = sub_2329BC9F8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329B08FC;
  aBlock[3] = &block_descriptor_9;
  v7 = _Block_copy(aBlock);

  v8 = a1;
  v9 = v4;

  [v9 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    v11 = v16;

    return v11;
  }

  __break(1u);
  return result;
}

void sub_2329B4318(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v37 = a4;
  v7 = sub_2329D2DD4();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2;
  v11 = sub_2329D2DF4();
  v12 = sub_2329D3634();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v35 = a3;
    v14 = v13;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v14 = 136315394;
    sub_2329D2F14();
    sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_2329D38B4();
    v17 = v16;
    (*(v36 + 8))(v9, v7);
    v18 = sub_2329A8630(v15, v17, &v38);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    v19 = v33;
    *v33 = v10;
    v20 = v10;
    _os_log_impl(&dword_2329A4000, v11, v12, "Creating record for device identifier %s: %@", v14, 0x16u);
    sub_2329BFB8C(v19, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v19, -1, -1);
    v21 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x23838B4F0](v21, -1, -1);
    v22 = v14;
    a3 = v35;
    MEMORY[0x23838B4F0](v22, -1, -1);
  }

  v23 = sub_2329B38C8(v10, a3);
  v24 = sub_2329D2DF4();
  v25 = sub_2329D35F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_2329A4000, v24, v25, "Saving new record... %@", v26, 0xCu);
    sub_2329BFB8C(v27, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v27, -1, -1);
    MEMORY[0x23838B4F0](v26, -1, -1);
  }

  v29 = (*(*a1 + 416))(a3);
  *v37 = v29 & 1;
  if ((v29 & 1) == 0)
  {
    v30 = sub_2329D2DF4();
    v31 = sub_2329D3614();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2329A4000, v30, v31, "Failed to save record", v32, 2u);
      MEMORY[0x23838B4F0](v32, -1, -1);
    }
  }

  [a3 reset];
}

uint64_t sub_2329B4740(uint64_t a1)
{
  v3 = (*(*v1 + 360))();
  if (!v3)
  {
    v11 = sub_2329D2DF4();
    v12 = sub_2329D3614();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2329A4000, v11, v12, "Failed to get current MOC", v13, 2u);
      MEMORY[0x23838B4F0](v13, -1, -1);
    }

    return 0;
  }

  v4 = v3;
  v15 = 0;
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = a1;
  v5[4] = v4;
  v5[5] = &v15;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2329BCA20;
  *(v6 + 24) = v5;
  aBlock[4] = sub_2329BFCF8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329B08FC;
  aBlock[3] = &block_descriptor_19;
  v7 = _Block_copy(aBlock);

  v8 = v4;

  [v8 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    v10 = v15;

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2329B497C()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = (*(*v0 + 336))();
  if (!v1)
  {
    v8 = sub_2329D2DF4();
    v9 = sub_2329D3614();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2329A4000, v8, v9, "Failed to get persistent container", v10, 2u);
      MEMORY[0x23838B4F0](v10, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v20[0] = 0;
  if (![v1 initializeCloudKitSchemaWithOptions:4 error:v20])
  {
    v11 = v20[0];
    v12 = sub_2329D2C84();

    swift_willThrow();
    v13 = v12;
    v14 = sub_2329D2DF4();
    v15 = sub_2329D3614();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v12;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_2329A4000, v14, v15, "Error initializing CloudKit schema: %@", v16, 0xCu);
      sub_2329BFB8C(v17, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v17, -1, -1);
      MEMORY[0x23838B4F0](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v3 = v20[0];
  v4 = sub_2329D2DF4();
  v5 = sub_2329D3634();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2329A4000, v4, v5, "Finished initializing CloudKit schema", v6, 2u);
    MEMORY[0x23838B4F0](v6, -1, -1);
  }

  return 1;
}

uint64_t sub_2329B4C58()
{
  v1 = (*(*v0 + 360))();
  if (!v1)
  {
    v10 = sub_2329D2DF4();
    v11 = sub_2329D3614();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2329A4000, v10, v11, "Failed to get current MOC", v12, 2u);
      MEMORY[0x23838B4F0](v12, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v14 = 0;
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v0;
  v3[4] = &v14;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2329BCE90;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2329BFCF8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329B08FC;
  aBlock[3] = &block_descriptor_29;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  [v6 performBlockAndWait_];

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v14;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_2329B4E80(void *a1, uint64_t a2, _BYTE *a3)
{
  v31 = a3;
  v5 = sub_2329D2E34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2329D2D84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NDFNetworkDevice();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  [v13 setRecordVersion_];
  sub_2329D2D74();
  v14 = sub_2329D2D44();
  (*(v10 + 8))(v12, v9);
  [v13 setTimestamp_];

  (*(v6 + 104))(v8, *MEMORY[0x277D6B2D0], v5);
  LOWORD(v12) = sub_2329D2E24();
  (*(v6 + 8))(v8, v5);
  [v13 setDeviceRole_];
  v15 = MobileGestalt_get_current_device();
  if (v15)
  {
    v16 = v15;
    v17 = MobileGestalt_copy_productType_obj();
    [v13 setDeviceModel_];
  }

  else
  {
    v17 = sub_2329D2DF4();
    v18 = sub_2329D3634();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2329A4000, v17, v18, "Unable to access MobileGestalt", v19, 2u);
      MEMORY[0x23838B4F0](v19, -1, -1);
    }
  }

  v20 = v13;
  v21 = sub_2329D2DF4();
  v22 = sub_2329D35F4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_2329A4000, v21, v22, "Saving new record... %@", v23, 0xCu);
    sub_2329BFB8C(v24, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v24, -1, -1);
    MEMORY[0x23838B4F0](v23, -1, -1);
  }

  v26 = (*(*a2 + 416))(a1);
  *v31 = v26 & 1;
  if ((v26 & 1) == 0)
  {
    v27 = sub_2329D2DF4();
    v28 = sub_2329D3614();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2329A4000, v27, v28, "Failed to save record", v29, 2u);
      MEMORY[0x23838B4F0](v29, -1, -1);
    }
  }

  [a1 reset];
}

uint64_t sub_2329B52E8()
{
  v1 = (*(*v0 + 360))();
  if (!v1)
  {
    v10 = sub_2329D2DF4();
    v11 = sub_2329D3614();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2329A4000, v10, v11, "Failed to get current MOC", v12, 2u);
      MEMORY[0x23838B4F0](v12, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v14 = 0;
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v0;
  v3[4] = &v14;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2329BCEDC;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2329BFCF8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329B08FC;
  aBlock[3] = &block_descriptor_39;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  [v6 performBlockAndWait_];

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v14;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2329B5510()
{
  v1 = (*(*v0 + 360))();
  if (!v1)
  {
    v11 = sub_2329D2DF4();
    v12 = sub_2329D3614();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2329A4000, v11, v12, "Failed to get current MOC", v13, 2u);
      MEMORY[0x23838B4F0](v13, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2329BD500;
  *(v5 + 24) = v4;
  v14[4] = sub_2329BFCF8;
  v14[5] = v5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2329B08FC;
  v14[3] = &block_descriptor_52;
  v6 = _Block_copy(v14);

  v7 = v2;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v3 + 16);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2329B577C()
{
  v1 = (*(*v0 + 360))();
  if (!v1)
  {
    v11 = sub_2329D2DF4();
    v12 = sub_2329D3614();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2329A4000, v11, v12, "Failed to get current MOC", v13, 2u);
      MEMORY[0x23838B4F0](v13, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2329BD8A4;
  *(v5 + 24) = v4;
  v14[4] = sub_2329BFCF8;
  v14[5] = v5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2329B08FC;
  v14[3] = &block_descriptor_63;
  v6 = _Block_copy(v14);
  v7 = v2;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v3 + 16);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2329B59E8()
{
  v0 = sub_2329B104C();

  v1 = sub_2329D2DF4();
  v2 = sub_2329D3634();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    if (v0 >> 62)
    {
      v4 = sub_2329D3864();
    }

    else
    {
      v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v3 + 4) = v4;

    _os_log_impl(&dword_2329A4000, v1, v2, "fetchLatestNetworkDeviceEntries fetched %ld results", v3, 0xCu);
    MEMORY[0x23838B4F0](v3, -1, -1);
  }

  else
  {
  }

  v5 = sub_2329D2DF4();
  v6 = sub_2329D3604();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = sub_2329D2FA4();
    v10 = MEMORY[0x23838A9E0](v0, v9);
    v12 = v11;

    v13 = sub_2329A8630(v10, v12, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_2329A4000, v5, v6, "results: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23838B4F0](v8, -1, -1);
    MEMORY[0x23838B4F0](v7, -1, -1);
  }

  else
  {
  }

  return 1;
}

BOOL sub_2329B5C10(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2329D2DF4();
  v4 = sub_2329D3634();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2329A4000, v3, v4, "Preparing to clean up stale NetworkDevice records", v5, 2u);
    MEMORY[0x23838B4F0](v5, -1, -1);
  }

  v6 = (*(*v2 + 360))();
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_2329BE6B0;
    *(v8 + 24) = v7;
    v15[4] = sub_2329BFCF8;
    v15[5] = v8;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_2329B08FC;
    v15[3] = &block_descriptor_73;
    v9 = _Block_copy(v15);

    v10 = v6;

    [v10 performBlockAndWait_];

    _Block_release(v9);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return v6 != 0;
    }

    __break(1u);
  }

  v11 = sub_2329D2DF4();
  v12 = sub_2329D3614();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2329A4000, v11, v12, "Failed to get current MOC", v13, 2u);
    MEMORY[0x23838B4F0](v13, -1, -1);
  }

  return v6 != 0;
}

uint64_t sub_2329B5E9C()
{
  v1 = v0;
  v2 = sub_2329D2DD4();
  v92 = *(v2 - 8);
  *&v93 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD58, &qword_2329D4760);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v79 - v8;
  v10 = sub_2329D2DF4();
  v11 = sub_2329D3634();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2329A4000, v10, v11, "=== Submitting NDF DB Telemetry ===", v12, 2u);
    MEMORY[0x23838B4F0](v12, -1, -1);
  }

  v13 = sub_2329BA0D4();
  if (*(v13 + 16) && (v14 = sub_2329BB4B0(0x6365526C61746F74, 0xEC0000007364726FLL), (v15 & 1) != 0) && (sub_2329A8C48(*(v13 + 56) + 32 * v14, &aBlock), swift_dynamicCast()))
  {
    v16 = v94;
    if (!*(v13 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
    if (!*(v13 + 16))
    {
      goto LABEL_13;
    }
  }

  v17 = sub_2329BB4B0(0x6552657571696E75, 0xED00007364726F63);
  if ((v18 & 1) == 0 || (sub_2329A8C48(*(v13 + 56) + 32 * v17, &aBlock), !swift_dynamicCast()))
  {
LABEL_13:
    v19 = 0;
    if (*(v13 + 16))
    {
      goto LABEL_14;
    }

LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

  v19 = v94;
  if (!*(v13 + 16))
  {
    goto LABEL_17;
  }

LABEL_14:
  v20 = sub_2329BB4B0(0x6F72476C61746F74, 0xEB00000000737075);
  if ((v21 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_2329A8C48(*(v13 + 56) + 32 * v20, &aBlock);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v22 = v94;
LABEL_18:
  v89 = v1;
  v23 = sub_2329D2DF4();
  v24 = sub_2329D3634();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218496;
    *(v25 + 4) = v16;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v19;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v22;
    _os_log_impl(&dword_2329A4000, v23, v24, "Submit DB stats - Total: %ld, Unique: %ld, Groups: %ld", v25, 0x20u);
    MEMORY[0x23838B4F0](v25, -1, -1);
  }

  v26 = sub_2329D3384();
  v27 = swift_allocObject();
  v27[2] = v16;
  v27[3] = v19;
  v27[4] = v22;
  v99 = sub_2329BF6FC;
  v100 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v96 = 1107296256;
  v97 = sub_2329BA880;
  v98 = &block_descriptor_135;
  v28 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v28);

  if (!*(v13 + 16))
  {
    goto LABEL_51;
  }

  v29 = sub_2329BB4B0(0x61745370756F7267, 0xEA00000000007374);
  if ((v30 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_2329A8C48(*(v13 + 56) + 32 * v29, &aBlock);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD60, &qword_2329D4768);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  result = v94;
  if (!*(v94 + 16))
  {
LABEL_51:

    return 1;
  }

  v32 = 0;
  v88 = v94;
  v33 = v94 + 64;
  v34 = 1 << *(v94 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v94 + 64);
  v82 = (v34 + 63) >> 6;
  v84 = v92 + 32;
  v85 = v92 + 16;
  v90 = (v92 + 8);
  v81 = MEMORY[0x277D84F90];
  v37 = &qword_27DDBDD68;
  v86 = v9;
  v87 = v7;
  v83 = v94 + 64;
  while (v36)
  {
    v38 = v32;
LABEL_39:
    v41 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v42 = v41 | (v38 << 6);
    v43 = v88;
    v44 = v91;
    v45 = v92;
    v46 = v93;
    (*(v92 + 16))(v91, *(v88 + 48) + *(v92 + 72) * v42, v93);
    v47 = *(*(v43 + 56) + 8 * v42);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, &qword_2329D4770);
    v49 = v37;
    v50 = *(v48 + 48);
    v51 = *(v45 + 32);
    v7 = v87;
    v51(v87, v44, v46);
    *&v7[v50] = v47;
    v37 = v49;
    (*(*(v48 - 8) + 56))(v7, 0, 1, v48);

    v9 = v86;
    v33 = v83;
LABEL_40:
    sub_2329BFA80(v7, v9, &qword_27DDBDD58, &qword_2329D4760);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, &qword_2329D4770);
    if ((*(*(v52 - 8) + 48))(v9, 1, v52) == 1)
    {

      v66 = *(v81 + 2);
      if (v66)
      {
        v67 = v81 + 40;
        *&v65 = 134218240;
        v93 = v65;
        v92 = v66;
        do
        {
          v71 = *(v67 - 1);
          v72 = *v67;
          v73 = sub_2329D2DF4();
          v74 = sub_2329D3634();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = v93;
            *(v75 + 4) = v71;
            *(v75 + 12) = 2048;
            *(v75 + 14) = v72;
            _os_log_impl(&dword_2329A4000, v73, v74, "Submit groupwise DB stats - Total: %ld, Unique: %ld", v75, 0x16u);
            MEMORY[0x23838B4F0](v75, -1, -1);
          }

          v67 += 16;

          v68 = sub_2329D3384();
          v69 = swift_allocObject();
          *(v69 + 16) = v71;
          *(v69 + 24) = v72;
          v99 = sub_2329BF4DC;
          v100 = v69;
          aBlock = MEMORY[0x277D85DD0];
          v96 = 1107296256;
          v97 = sub_2329BA880;
          v98 = &block_descriptor_129;
          v70 = _Block_copy(&aBlock);

          AnalyticsSendEventLazy();
          _Block_release(v70);

          --v66;
        }

        while (v66);

        v76 = sub_2329D2DF4();
        v77 = sub_2329D35F4();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 134217984;
          *(v78 + 4) = v92;

          _os_log_impl(&dword_2329A4000, v76, v77, "Submitted %ld groups to CA", v78, 0xCu);
          MEMORY[0x23838B4F0](v78, -1, -1);
        }

        else
        {
        }
      }

      goto LABEL_51;
    }

    v53 = *&v9[*(v52 + 48)];
    if (*(v53 + 16) && (v54 = sub_2329BB4B0(0x6365526C61746F74, 0xEC0000007364726FLL), (v55 & 1) != 0) && *(v53 + 16) && (v56 = *(*(v53 + 56) + 8 * v54), v57 = sub_2329BB4B0(0x6552657571696E75, 0xED00007364726F63), (v58 & 1) != 0))
    {
      v80 = *(*(v53 + 56) + 8 * v57);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_2329BB0E4(0, *(v81 + 2) + 1, 1, v81);
      }

      v60 = *(v81 + 2);
      v59 = *(v81 + 3);
      if (v60 >= v59 >> 1)
      {
        v81 = sub_2329BB0E4((v59 > 1), v60 + 1, 1, v81);
      }

      v61 = v81;
      *(v81 + 2) = v60 + 1;
      v62 = &v61[16 * v60];
      v63 = v80;
      *(v62 + 4) = v56;
      *(v62 + 5) = v63;
    }

    else
    {
    }

    result = (*v90)(v9, v93);
  }

  if (v82 <= v32 + 1)
  {
    v39 = v32 + 1;
  }

  else
  {
    v39 = v82;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v82)
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, &qword_2329D4770);
      (*(*(v64 - 8) + 56))(v7, 1, 1, v64);
      v36 = 0;
      v32 = v40;
      goto LABEL_40;
    }

    v36 = *(v33 + 8 * v38);
    ++v32;
    if (v36)
    {
      v32 = v38;
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

void sub_2329B69A4(uint64_t a1, void *a2)
{
  v201 = a2;
  v218 = a1;
  v225 = *MEMORY[0x277D85DE8];
  v217 = sub_2329D2D84();
  v186 = *(v217 - 8);
  v2 = MEMORY[0x28223BE20](v217);
  v4 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v191 = &v185 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v198 = &v185 - v8;
  MEMORY[0x28223BE20](v7);
  v215 = &v185 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD90, &qword_2329D4858);
  MEMORY[0x28223BE20](v10 - 8);
  v219 = (&v185 - v11);
  v12 = sub_2329D2DD4();
  v207 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v204 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v190 = &v185 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v197 = &v185 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v214 = &v185 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v210 = &v185 - v22;
  MEMORY[0x28223BE20](v21);
  v209 = (&v185 - v23);
  type metadata accessor for NDFNetworkDevice();
  v24 = [swift_getObjCClassFromMetadata() entityName];
  if (!v24)
  {
    sub_2329D33B4();
    v24 = sub_2329D3384();
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  [v25 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE100, &qword_2329D48D8);
  v26 = swift_allocObject();
  v216 = xmmword_2329D4530;
  *(v26 + 16) = xmmword_2329D4530;
  v27 = sub_2329C002C();
  v29 = *v27;
  v28 = v27[1];
  v30 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 32) = v29;
  *(v26 + 40) = v28;

  v31 = sub_2329D3474();

  [v25 setPropertiesToGroupBy_];

  v32 = swift_allocObject();
  *(v32 + 16) = v216;
  v34 = *v27;
  v33 = v27[1];
  *&v216 = v27;
  *(v32 + 56) = v30;
  *(v32 + 32) = v34;
  *(v32 + 40) = v33;

  v35 = sub_2329D3474();

  [v25 setPropertiesToFetch_];

  *&v223 = 0;
  v188 = v25;
  v36 = [v25 execute_];
  v37 = v223;
  if (!v36)
  {
    v66 = v223;
    v67 = sub_2329D2C84();

    swift_willThrow();
    v68 = v67;
    v69 = sub_2329D2DF4();
    v70 = sub_2329D3614();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      v73 = v67;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 4) = v74;
      *v72 = v74;
      _os_log_impl(&dword_2329A4000, v69, v70, "Failed to fetch list of deviceIDs: (%@)", v71, 0xCu);
      sub_2329BFB8C(v72, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v72, -1, -1);
      MEMORY[0x23838B4F0](v71, -1, -1);
    }

    else
    {
    }

    return;
  }

  v38 = v36;
  sub_2329BFB44(0, &qword_2814D9E70, 0x277CBEAC0);
  v39 = sub_2329D3484();
  v40 = v37;

  v42 = v39;
  if (v39 >> 62)
  {
LABEL_71:
    v183 = v42;
    v184 = sub_2329D3864();
    v42 = v183;
    v43 = v184;
  }

  else
  {
    v43 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v199 = v4;
  if (v43)
  {
    if (v43 < 1)
    {
      __break(1u);
    }

    v44 = 0;
    v212 = v42 & 0xC000000000000001;
    v211 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
    v45 = (v207 + 56);
    v206 = (v207 + 48);
    v208 = (v207 + 32);
    v203 = (v207 + 16);
    v202 = (v207 + 8);
    v46 = MEMORY[0x277D84F90];
    *&v41 = 138412290;
    v205 = v41;
    v213 = v42;
    while (1)
    {
      if (v212)
      {
        v47 = MEMORY[0x23838AD30](v44);
      }

      else
      {
        v47 = *(v42 + 8 * v44 + 32);
      }

      v48 = v47;
      v49 = sub_2329D2DF4();
      v50 = sub_2329D3604();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = v12;
        v53 = v46;
        v54 = swift_slowAlloc();
        *v51 = v205;
        *(v51 + 4) = v48;
        *v54 = v48;
        v55 = v48;
        _os_log_impl(&dword_2329A4000, v49, v50, "Result dict %@", v51, 0xCu);
        sub_2329BFB8C(v54, &qword_27DDBE070, &unk_2329D4750);
        v56 = v54;
        v46 = v53;
        v12 = v52;
        MEMORY[0x23838B4F0](v56, -1, -1);
        MEMORY[0x23838B4F0](v51, -1, -1);
      }

      v57 = *(v216 + 8);
      *&v221 = *v216;
      *(&v221 + 1) = v57;

      v58 = [v48 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v58)
      {
        sub_2329D3734();
        swift_unknownObjectRelease();
      }

      else
      {
        v221 = 0u;
        v222 = 0u;
      }

      v223 = v221;
      v224 = v222;
      if (*(&v222 + 1))
      {
        v59 = v219;
        v60 = swift_dynamicCast();
        (*v45)(v59, v60 ^ 1u, 1, v12);
        if ((*v206)(v59, 1, v12) != 1)
        {
          v61 = *v208;
          v62 = v209;
          (*v208)(v209, v219, v12);
          (*v203)(v210, v62, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_2329BAF0C(0, v46[2] + 1, 1, v46);
          }

          v64 = v46[2];
          v63 = v46[3];
          if (v64 >= v63 >> 1)
          {
            v46 = sub_2329BAF0C((v63 > 1), v64 + 1, 1, v46);
          }

          v65 = v207;
          (*(v207 + 8))(v209, v12);
          v46[2] = v64 + 1;
          v61((v46 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64), v210, v12);
          goto LABEL_11;
        }
      }

      else
      {

        sub_2329BFB8C(&v223, &unk_27DDBE0F0, &qword_2329D4890);
        (*v45)(v219, 1, 1, v12);
      }

      sub_2329BFB8C(v219, &qword_27DDBDD90, &qword_2329D4858);
LABEL_11:
      v42 = v213;
      if (v43 == ++v44)
      {
        goto LABEL_31;
      }
    }
  }

  v46 = MEMORY[0x277D84F90];
LABEL_31:

  v212 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v75 = sub_2329D2DF4();
  v76 = sub_2329D3634();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v223 = v78;
    *v77 = 134218242;
    *(v77 + 4) = v46[2];
    *(v77 + 12) = 2080;

    v80 = MEMORY[0x23838A9E0](v79, v12);
    v82 = v81;

    v83 = sub_2329A8630(v80, v82, &v223);

    *(v77 + 14) = v83;
    _os_log_impl(&dword_2329A4000, v75, v76, "Ready to process %ld deviceIDs: %s", v77, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x23838B4F0](v78, -1, -1);
    MEMORY[0x23838B4F0](v77, -1, -1);
  }

  v84 = v217;
  v85 = v214;
  v86 = v198;
  v87 = *(**sub_2329A65F4() + 208);

  v87(v88);

  sub_2329D2D54();
  v192 = v46[2];
  if (!v192)
  {
LABEL_59:
    [v201 reset];

    (*(v186 + 8))(v215, v84);
    goto LABEL_67;
  }

  v195 = sub_2329BFB44(0, &qword_2814D9E78, 0x277CCAC30);
  v194 = v46 + ((*(v207 + 80) + 32) & ~*(v207 + 80));
  v210 = (v207 + 16);
  v209 = (v186 + 16);
  v211 = (v186 + 8);
  v219 = (v207 + 8);

  v4 = 0;
  *&v89 = 136315394;
  v189 = v89;
  *(&v89 + 1) = 4;
  v193 = xmmword_2329D46D0;
  *&v89 = 136315650;
  v187 = v89;
  *&v89 = 134218498;
  v185 = v89;
  v90 = v197;
  v200 = v46;
  while (1)
  {
    if (v4 >= v46[2])
    {
      __break(1u);
      goto LABEL_71;
    }

    v93 = *(v207 + 16);
    v93(v85, &v194[*(v207 + 72) * v4], v12);
    v206 = v93;
    v93(v90, v85, v12);
    *&v205 = *v209;
    (v205)(v86, v215, v84);
    v94 = sub_2329D2DF4();
    v95 = sub_2329D3604();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&v223 = v97;
      *v96 = v189;
      sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v98 = sub_2329D38B4();
      v100 = v99;
      v213 = *v219;
      v213(v90, v12);
      v101 = sub_2329A8630(v98, v100, &v223);

      *(v96 + 4) = v101;
      *(v96 + 12) = 2080;
      sub_2329BF1B0(&qword_2814DA7D8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v102 = sub_2329D38B4();
      v104 = v103;
      v208 = *v211;
      v208(v86, v217);
      v105 = sub_2329A8630(v102, v104, &v223);

      *(v96 + 14) = v105;
      _os_log_impl(&dword_2329A4000, v94, v95, "Cleaning up records for %s created before %s", v96, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23838B4F0](v97, -1, -1);
      v106 = v96;
      v46 = v200;
      MEMORY[0x23838B4F0](v106, -1, -1);
    }

    else
    {

      v208 = *v211;
      v208(v86, v84);
      v213 = *v219;
      v213(v90, v12);
    }

    sub_2329BFFD4();
    v107 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v108 = sub_2329D3384();

    v109 = [v107 initWithEntityName_];

    *&v223 = 0;
    *(&v223 + 1) = 0xE000000000000000;
    sub_2329D37B4();
    v111 = *v216;
    v110 = *(v216 + 8);

    *&v223 = v111;
    *(&v223 + 1) = v110;
    MEMORY[0x23838A970](0x41204025203D3D20, 0xEB0000000020444ELL);
    v112 = sub_2329C01E0();
    v113 = *v112;
    v114 = *(v112 + 1);

    MEMORY[0x23838A970](v113, v114);

    MEMORY[0x23838A970](0x4025203C20, 0xE500000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
    v115 = swift_allocObject();
    *(v115 + 16) = v193;
    v116 = sub_2329D2DA4();
    *(v115 + 56) = sub_2329BFB44(0, &qword_2814DA828, 0x277CCAD78);
    *(v115 + 64) = sub_2329BF858(&qword_27DDBDE48, &qword_2814DA828, 0x277CCAD78);
    *(v115 + 32) = v116;
    v117 = sub_2329D2D44();
    *(v115 + 96) = sub_2329BFB44(0, &qword_2814DA830, 0x277CBEAA8);
    *(v115 + 104) = sub_2329BF858(&qword_27DDBDE50, &qword_2814DA830, 0x277CBEAA8);
    *(v115 + 72) = v117;
    v118 = sub_2329D35E4();

    [v109 setPredicate_];

    v119 = objc_allocWithZone(MEMORY[0x277CBE360]);
    v203 = v109;
    v120 = [v119 initWithFetchRequest_];
    [v120 setResultType_];
    *&v223 = 0;
    v121 = [v201 executeRequest:v120 error:&v223];
    v122 = v223;
    v123 = v204;
    v202 = v120;
    if (!v121)
    {
      v130 = v223;
      v131 = sub_2329D2C84();

      swift_willThrow();
      v85 = v214;
      v84 = v217;
      goto LABEL_55;
    }

    v124 = v121;
    objc_opt_self();
    v125 = swift_dynamicCastObjCClass();
    if (!v125)
    {
      v172 = v122;

      v173 = sub_2329D2DF4();
      v174 = sub_2329D3614();
      v175 = os_log_type_enabled(v173, v174);
      v176 = v214;
      v177 = v217;
      if (v175)
      {
        v178 = v120;
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_2329A4000, v173, v174, "Unable to cast NSBatchDeleteResult", v179, 2u);
        MEMORY[0x23838B4F0](v179, -1, -1);
      }

      else
      {
      }

      v213(v176, v12);
      v208(v215, v177);
      goto LABEL_67;
    }

    v126 = v125;
    v127 = v122;
    v128 = [v126 result];
    v129 = v214;
    v84 = v217;
    if (v128)
    {
      sub_2329D3734();
      swift_unknownObjectRelease();
    }

    else
    {
      v221 = 0u;
      v222 = 0u;
    }

    v132 = v191;
    v133 = v190;
    v223 = v221;
    v224 = v222;
    if (!*(&v222 + 1))
    {

      sub_2329BFB8C(&v223, &unk_27DDBE0F0, &qword_2329D4890);
      goto LABEL_64;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v196 = v124;
    v134 = v220;
    v206(v133, v129, v12);
    (v205)(v132, v215, v84);
    v135 = sub_2329D2DF4();
    v136 = sub_2329D3634();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v223 = v138;
      *v137 = v185;
      *(v137 + 4) = v134;
      *(v137 + 12) = 2080;
      sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v139 = sub_2329D38B4();
      v141 = v140;
      v213(v133, v12);
      v142 = sub_2329A8630(v139, v141, &v223);

      *(v137 + 14) = v142;
      *(v137 + 22) = 2080;
      sub_2329BF1B0(&qword_2814DA7D8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v143 = sub_2329D38B4();
      v145 = v144;
      v208(v132, v217);
      v146 = sub_2329A8630(v143, v145, &v223);

      *(v137 + 24) = v146;
      _os_log_impl(&dword_2329A4000, v135, v136, "Completed batch deletion of %ld device records for %s older than %s", v137, 0x20u);
      swift_arrayDestroy();
      v147 = v138;
      v84 = v217;
      MEMORY[0x23838B4F0](v147, -1, -1);
      MEMORY[0x23838B4F0](v137, -1, -1);
    }

    else
    {

      v208(v132, v84);
      v213(v133, v12);
    }

    v148 = v196;
    *&v223 = 0;
    v149 = [v201 save_];
    v150 = v223;
    v85 = v214;
    v123 = v204;
    v46 = v200;
    if (!v149)
    {
      v151 = v150;
      v131 = sub_2329D2C84();

      swift_willThrow();
LABEL_55:
      v206(v123, v85, v12);
      v152 = v199;
      (v205)(v199, v215, v84);
      v153 = v131;
      v154 = sub_2329D2DF4();
      v155 = v123;
      v156 = sub_2329D3614();

      if (os_log_type_enabled(v154, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *&v223 = v206;
        *v157 = v187;
        sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v159 = sub_2329D38B4();
        v161 = v160;
        v213(v204, v12);
        v162 = sub_2329A8630(v159, v161, &v223);

        *(v157 + 4) = v162;
        *(v157 + 12) = 2080;
        sub_2329BF1B0(&qword_2814DA7D8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v163 = sub_2329D38B4();
        v165 = v164;
        v208(v199, v217);
        v166 = sub_2329A8630(v163, v165, &v223);
        v46 = v200;

        *(v157 + 14) = v166;
        *(v157 + 22) = 2112;
        v167 = v131;
        v168 = _swift_stdlib_bridgeErrorToNSError();
        *(v157 + 24) = v168;
        *v158 = v168;
        _os_log_impl(&dword_2329A4000, v154, v156, "Failed to batch delete device records matching %s older than %s: %@", v157, 0x20u);
        sub_2329BFB8C(v158, &qword_27DDBE070, &unk_2329D4750);
        v169 = v158;
        v85 = v214;
        MEMORY[0x23838B4F0](v169, -1, -1);
        v170 = v206;
        swift_arrayDestroy();
        MEMORY[0x23838B4F0](v170, -1, -1);
        v171 = v157;
        v84 = v217;
        MEMORY[0x23838B4F0](v171, -1, -1);

        v213(v85, v12);
      }

      else
      {

        v208(v152, v84);
        v91 = v155;
        v92 = v213;
        v213(v91, v12);
        v92(v85, v12);
      }

      goto LABEL_36;
    }

    v213(v214, v12);

LABEL_36:
    v90 = v197;
    ++v4;
    v86 = v198;
    if (v192 == v4)
    {

      goto LABEL_59;
    }
  }

LABEL_64:
  v180 = sub_2329D2DF4();
  v181 = sub_2329D3614();
  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    *v182 = 0;
    _os_log_impl(&dword_2329A4000, v180, v181, "Unable to cast Int from NSBatchDeleteResult", v182, 2u);
    MEMORY[0x23838B4F0](v182, -1, -1);
  }

  v213(v129, v12);
  v208(v215, v84);
LABEL_67:
}

uint64_t sub_2329B85FC()
{
  v1 = (*(*v0 + 360))();
  if (!v1)
  {
    v10 = sub_2329D2DF4();
    v11 = sub_2329D3614();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2329A4000, v10, v11, "Failed to get current MOC", v12, 2u);
      MEMORY[0x23838B4F0](v12, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v14 = MEMORY[0x277D84F90];
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = &v14;
  v3[4] = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2329BE6B8;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2329BFCF8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329B08FC;
  aBlock[3] = &block_descriptor_83;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  [v6 performBlockAndWait_];

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v14;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_2329B8830(void *a1, uint64_t *a2, uint64_t a3)
{
  v97 = a3;
  v102 = a2;
  v92 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD70, &qword_2329D4778);
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x28223BE20](v3);
  v105 = &v86 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD90, &qword_2329D4858);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v86 - v6;
  v7 = sub_2329D2DD4();
  v94 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v106 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2329BFFD4();
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v10 = sub_2329D3384();

  v11 = [v9 initWithEntityName_];
  v91 = v11;

  [v11 setResultType_];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE100, &qword_2329D48D8);
  v13 = swift_allocObject();
  v104 = xmmword_2329D4530;
  *(v13 + 16) = xmmword_2329D4530;
  v14 = objc_opt_self();
  v15 = [v14 expressionForEvaluatedObject];
  v16 = sub_2329BFB44(0, &qword_27DDBDE08, 0x277CCA9C0);
  *(v13 + 56) = v16;
  *(v13 + 32) = v15;
  v17 = sub_2329D3384();
  v18 = sub_2329D3474();

  v19 = [v14 expressionForFunction:v17 arguments:v18];

  v20 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v21 = sub_2329D3384();
  [v20 setName_];

  v90 = v19;
  [v20 setExpression_];
  [v20 setExpressionResultType_];
  v98 = v12;
  v22 = swift_allocObject();
  *(v22 + 16) = v104;
  v23 = swift_allocObject();
  *(v23 + 16) = v104;
  sub_2329C002C();

  v24 = sub_2329D3384();

  v25 = [v14 expressionForKeyPath_];

  *(v23 + 56) = v16;
  *(v23 + 32) = v25;
  v26 = sub_2329D3384();
  v27 = sub_2329D3474();

  v28 = [v14 expressionForFunction:v26 arguments:v27];

  *(v22 + 56) = v16;
  *(v22 + 32) = v28;
  v29 = sub_2329D3384();
  v30 = sub_2329D3474();

  v31 = [v14 expressionForFunction:v29 arguments:v30];

  v32 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v33 = sub_2329D3384();
  [v32 setName_];

  v34 = v91;
  v89 = v31;
  [v32 setExpression_];
  [v32 setExpressionResultType_];
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2329D46B0;
  v36 = sub_2329C00A8();
  v37 = *v36;
  v38 = v36[1];
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 32) = v37;
  *(v35 + 40) = v38;
  v39 = sub_2329BFB44(0, &qword_27DDBDE10, 0x277CBE410);
  *(v35 + 64) = v20;
  *(v35 + 120) = v39;
  *(v35 + 88) = v39;
  *(v35 + 96) = v32;
  v88 = v20;
  v40 = v32;
  v41 = v36;

  v42 = sub_2329D3474();

  [v34 setPropertiesToFetch_];

  v43 = swift_allocObject();
  *(v43 + 16) = v104;
  v45 = *v36;
  v44 = v36[1];
  *(v43 + 56) = MEMORY[0x277D837D0];
  v46 = v92;
  *(v43 + 32) = v45;
  *(v43 + 40) = v44;

  v47 = sub_2329D3474();

  [v34 setPropertiesToGroupBy_];

  sub_2329BFB44(0, &qword_2814D9E70, 0x277CBEAC0);
  v48 = sub_2329D36E4();
  v49 = v48;
  v50 = v94;
  v87 = v40;
  if (v48 >> 62)
  {
    v81 = v48;
    v51 = sub_2329D3864();
    v49 = v81;
    v52 = v103;
    if (v51)
    {
      goto LABEL_3;
    }

LABEL_40:

LABEL_41:
    v82 = v90;
    v83 = v89;
    v84 = v87;
    v85 = v88;
    [v46 reset];

    return;
  }

  v51 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = v103;
  if (!v51)
  {
    goto LABEL_40;
  }

LABEL_3:
  if (v51 >= 1)
  {
    v53 = v50;
    v54 = 0;
    v96 = v49 & 0xC000000000000001;
    v95 = (v53 + 7);
    *&v104 = v53 + 6;
    v93 = (v53 + 4);
    v55 = (v53 + 2);
    v94 = v53 + 1;
    v56 = MEMORY[0x277D837D0];
    v98 = v49;
    v99 = v41;
    v97 = v51;
    while (1)
    {
      if (v96)
      {
        v57 = MEMORY[0x23838AD30](v54);
      }

      else
      {
        v57 = *(v49 + 8 * v54 + 32);
      }

      v58 = v57;
      v59 = v41[1];
      *&v108 = *v41;
      *(&v108 + 1) = v59;

      v60 = [v58 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v60)
      {
        sub_2329D3734();
        swift_unknownObjectRelease();
      }

      else
      {
        v108 = 0u;
        v109 = 0u;
      }

      v110 = v108;
      v111 = v109;
      if (*(&v109 + 1))
      {
        v61 = swift_dynamicCast();
        (*v95)(v52, v61 ^ 1u, 1, v7);
        if ((*v104)(v52, 1, v7) != 1)
        {
          (*v93)(v106, v52, v7);
          goto LABEL_17;
        }
      }

      else
      {
        sub_2329BFB8C(&v110, &unk_27DDBE0F0, &qword_2329D4890);
        (*v95)(v52, 1, 1, v7);
      }

      v62 = sub_2329A9598();
      (*v55)(v106, v62, v7);
      if ((*v104)(v52, 1, v7) != 1)
      {
        sub_2329BFB8C(v52, &qword_27DDBDD90, &qword_2329D4858);
      }

LABEL_17:
      strcpy(&v108, "total_records");
      HIWORD(v108) = -4864;
      v63 = [v58 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v63)
      {
        sub_2329D3734();
        swift_unknownObjectRelease();
      }

      else
      {
        v108 = 0u;
        v109 = 0u;
      }

      v110 = v108;
      v111 = v109;
      if (*(&v109 + 1))
      {
        sub_2329BFB44(0, &qword_2814DA820, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v64 = v107;
          v65 = [v107 integerValue];

          goto LABEL_25;
        }
      }

      else
      {
        sub_2329BFB8C(&v110, &unk_27DDBE0F0, &qword_2329D4890);
      }

      v65 = 0;
LABEL_25:
      strcpy(&v108, "device_count");
      BYTE13(v108) = 0;
      HIWORD(v108) = -5120;
      v66 = v56;
      v67 = [v58 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v67)
      {
        sub_2329D3734();
        swift_unknownObjectRelease();
      }

      else
      {
        v108 = 0u;
        v109 = 0u;
      }

      v110 = v108;
      v111 = v109;
      if (!*(&v109 + 1))
      {
        sub_2329BFB8C(&v110, &unk_27DDBE0F0, &qword_2329D4890);
LABEL_32:
        v70 = v101;
        v71 = v106;
        v69 = 0;
        goto LABEL_33;
      }

      sub_2329BFB44(0, &qword_2814DA820, 0x277CCABB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_32;
      }

      v68 = v107;
      v69 = [v107 integerValue];

      v70 = v101;
      v71 = v106;
LABEL_33:
      v72 = *(v70 + 48);
      v73 = *(v70 + 64);
      v74 = v105;
      (*v55)(v105, v71, v7);
      *(v74 + v72) = v65;
      *(v74 + v73) = v69;
      v75 = v102;
      v76 = *v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v75 = v76;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v76 = sub_2329BB1E8(0, v76[2] + 1, 1, v76);
        *v75 = v76;
      }

      v52 = v103;
      v79 = v76[2];
      v78 = v76[3];
      if (v79 >= v78 >> 1)
      {
        *v75 = sub_2329BB1E8((v78 > 1), v79 + 1, 1, v76);
      }

      ++v54;

      (*v94)(v106, v7);
      v80 = *v75;
      *(v80 + 16) = v79 + 1;
      sub_2329BFA80(v105, v80 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v79, &qword_27DDBDD70, &qword_2329D4778);
      v49 = v98;
      v41 = v99;
      v56 = v66;
      if (v97 == v54)
      {

        v46 = v92;
        v34 = v91;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

void sub_2329B9674()
{
  v1 = sub_2329D2DD4();
  v83 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v77 - v6;
  MEMORY[0x28223BE20](v5);
  v82 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD58, &qword_2329D4760);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = &v77 - v13;
  v90 = v0;
  v86 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v14 = sub_2329D2DF4();
  v15 = sub_2329D3634();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2329A4000, v14, v15, "=== NDF Database Telemetry Stats ===", v16, 2u);
    MEMORY[0x23838B4F0](v16, -1, -1);
  }

  v17 = sub_2329BA0D4();
  if (*(v17 + 16) && (v18 = sub_2329BB4B0(0x6365526C61746F74, 0xEC0000007364726FLL), (v19 & 1) != 0) && (sub_2329A8C48(*(v17 + 56) + 32 * v18, v96), swift_dynamicCast()))
  {
    v20 = v95;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v17 + 16);
  v89 = v7;
  if (v21 && (v22 = sub_2329BB4B0(0x6552657571696E75, 0xED00007364726F63), (v23 & 1) != 0) && (sub_2329A8C48(*(v17 + 56) + 32 * v22, v96), swift_dynamicCast()))
  {
    v24 = v95;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v17 + 16);
  v94 = v4;
  if (v25 && (v26 = sub_2329BB4B0(0x6F72476C61746F74, 0xEB00000000737075), (v27 & 1) != 0) && (sub_2329A8C48(*(v17 + 56) + 32 * v26, v96), swift_dynamicCast()))
  {
    v28 = v95;
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_2329D2DF4();
  v30 = sub_2329D35F4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134218496;
    *(v31 + 4) = v20;
    *(v31 + 12) = 2048;
    *(v31 + 14) = v24;
    *(v31 + 22) = 2048;
    *(v31 + 24) = v28;
    _os_log_impl(&dword_2329A4000, v29, v30, "Total: %ld, Unique: %ld, Groups: %ld", v31, 0x20u);
    MEMORY[0x23838B4F0](v31, -1, -1);
  }

  if (*(v17 + 16) && (v32 = sub_2329BB4B0(0x61745370756F7267, 0xEA00000000007374), (v33 & 1) != 0))
  {
    sub_2329A8C48(*(v17 + 56) + 32 * v32, v96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD60, &qword_2329D4768);
    if (swift_dynamicCast())
    {
      v34 = v95;

      v35 = sub_2329D2DF4();
      v36 = sub_2329D35F4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = *(v34 + 16);

        _os_log_impl(&dword_2329A4000, v35, v36, "FETCHED device stats: %ld groups", v37, 0xCu);
        MEMORY[0x23838B4F0](v37, -1, -1);
      }

      else
      {
      }

      v39 = v89;
      v40 = 0;
      v80 = v34;
      v41 = *(v34 + 64);
      v78 = v34 + 64;
      v42 = 1 << *(v34 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & v41;
      v77 = (v42 + 63) >> 6;
      v91 = (v83 + 32);
      v92 = (v83 + 16);
      v81 = (v83 + 8);
      *&v38 = 136315650;
      v79 = v38;
      v85 = v12;
      while (v44)
      {
        v46 = v40;
LABEL_42:
        v49 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v50 = v49 | (v46 << 6);
        v51 = v80;
        v52 = v83;
        (*(v83 + 16))(v82, *(v80 + 48) + *(v83 + 72) * v50, v1);
        v53 = *(*(v51 + 56) + 8 * v50);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD68, &qword_2329D4770);
        v55 = *(v54 + 48);
        v12 = v85;
        (*(v52 + 32))();
        *&v12[v55] = v53;
        (*(*(v54 - 8) + 56))(v12, 0, 1, v54);

        v48 = v46;
        v39 = v89;
LABEL_43:
        v56 = v84;
        sub_2329BFA80(v12, v84, &qword_27DDBDD58, &qword_2329D4760);
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD68, &qword_2329D4770);
        if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
        {

          return;
        }

        v93 = v48;
        v58 = *(v56 + *(v57 + 48));
        (*v91)(v39, v56, v1);
        if (*(v58 + 16))
        {
          v59 = sub_2329BB4B0(0x6365526C61746F74, 0xEC0000007364726FLL);
          v60 = v94;
          if (v61)
          {
            v62 = *(*(v58 + 56) + 8 * v59);
          }

          else
          {
            v62 = 0;
          }

          v63 = *(v58 + 16);
          v87 = v62;
          if (v63 && (v64 = sub_2329BB4B0(0x6552657571696E75, 0xED00007364726F63), (v65 & 1) != 0))
          {
            v88 = *(*(v58 + 56) + 8 * v64);
          }

          else
          {
            v88 = 0;
          }
        }

        else
        {
          v87 = 0;
          v88 = 0;
          v60 = v94;
        }

        (*v92)(v60, v39, v1);
        v66 = sub_2329D2DF4();
        v67 = sub_2329D3604();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v96[0] = v69;
          *v68 = v79;
          sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v70 = sub_2329D38B4();
          v71 = v1;
          v73 = v72;
          v74 = *v81;
          (*v81)(v94, v71);
          v75 = sub_2329A8630(v70, v73, v96);
          v1 = v71;
          v39 = v89;

          *(v68 + 4) = v75;
          *(v68 + 12) = 2048;
          *(v68 + 14) = v87;
          *(v68 + 22) = 2048;
          *(v68 + 24) = v88;
          _os_log_impl(&dword_2329A4000, v66, v67, "HomeID: %s, Total Records: %ld, Unique Devices: %ld", v68, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x23838B4F0](v69, -1, -1);
          MEMORY[0x23838B4F0](v68, -1, -1);

          v74(v39, v1);
          v12 = v85;
        }

        else
        {

          v45 = *v81;
          (*v81)(v60, v1);
          v45(v39, v1);
        }

        v40 = v93;
      }

      if (v77 <= v40 + 1)
      {
        v47 = v40 + 1;
      }

      else
      {
        v47 = v77;
      }

      v48 = v47 - 1;
      while (1)
      {
        v46 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v46 >= v77)
        {
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD68, &qword_2329D4770);
          (*(*(v76 - 8) + 56))(v12, 1, 1, v76);
          v44 = 0;
          goto LABEL_43;
        }

        v44 = *(v78 + 8 * v46);
        ++v40;
        if (v44)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
    }
  }

  else
  {
  }
}

unint64_t sub_2329BA0D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD70, &qword_2329D4778);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v74 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v73 = v63 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v80 = v63 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v75 = v63 - v9;
  MEMORY[0x28223BE20](v8);
  v72 = v63 - v10;
  v11 = sub_2329B5510();
  v12 = sub_2329B577C();
  v13 = sub_2329B85FC();
  v14 = *(v13 + 16);
  v81 = sub_2329BE1B4(MEMORY[0x277D84F90]);
  v15 = *(v13 + 16);
  if (v15)
  {
    v64 = v14;
    v65 = v12;
    v66 = v11;
    v71 = *(v0 + 48);
    v70 = *(v0 + 64);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD78, &qword_2329D4780);
    v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v63[1] = v13;
    v17 = v13 + v16;
    v67 = *(v1 + 72);
    v18 = v75;
    v68 = v0;
    while (1)
    {
      v78 = v15;
      v77 = v17;
      v19 = v72;
      sub_2329BF474(v17, v72, &qword_27DDBDD70, &qword_2329D4778);
      v20 = *(v19 + v71);
      v79 = *(v19 + v70);
      v21 = *(v0 + 48);
      v22 = *(v0 + 64);
      v23 = v0;
      v24 = sub_2329D2DD4();
      v25 = *(v24 - 8);
      (*(v25 + 32))(v18, v19, v24);
      *(v18 + v21) = v20;
      *(v18 + v22) = v79;
      sub_2329BF474(v18, v80, &qword_27DDBDD70, &qword_2329D4778);
      v26 = v73;
      sub_2329BF474(v18, v73, &qword_27DDBDD70, &qword_2329D4778);
      v27 = *(v26 + *(v23 + 48));
      v28 = v74;
      sub_2329BF474(v18, v74, &qword_27DDBDD70, &qword_2329D4778);
      v29 = *(v28 + *(v23 + 64));
      v76 = v25;
      v30 = *(v25 + 8);
      v30(v28, v24);
      v31 = v24;
      v79 = v30;
      v30(v26, v24);
      v32 = sub_2329D3894();

      v33 = sub_2329BB4B0(0x6365526C61746F74, 0xEC0000007364726FLL);
      if (v34)
      {
        break;
      }

      *(v32 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v33;
      v35 = v32[6] + 16 * v33;
      strcpy(v35, "totalRecords");
      *(v35 + 13) = 0;
      *(v35 + 14) = -5120;
      *(v32[7] + 8 * v33) = v27;
      v36 = v32[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_22;
      }

      v32[2] = v38;
      v39 = sub_2329BB4B0(0x6552657571696E75, 0xED00007364726F63);
      v41 = v40;

      if (v41)
      {
        goto LABEL_23;
      }

      *(v32 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v39;
      v42 = v32[6] + 16 * v39;
      strcpy(v42, "uniqueRecords");
      *(v42 + 14) = -4864;
      *(v32[7] + 8 * v39) = v29;
      v43 = v32[2];
      v37 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v37)
      {
        goto LABEL_24;
      }

      v32[2] = v44;
      v45 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v45;
      v47 = v80;
      v49 = sub_2329BB528(v80);
      v50 = *(v45 + 16);
      v51 = (v48 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_25;
      }

      v53 = v48;
      if (*(v45 + 24) >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2329BBE80();
        }
      }

      else
      {
        sub_2329BBAA4(v52, isUniquelyReferenced_nonNull_native);
        v54 = sub_2329BB528(v47);
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_27;
        }

        v49 = v54;
      }

      v18 = v75;
      v56 = v82;
      v81 = v82;
      if (v53)
      {
        *(v82[7] + 8 * v49) = v32;
      }

      else
      {
        v82[(v49 >> 6) + 8] |= 1 << v49;
        (*(v76 + 16))(v56[6] + *(v76 + 72) * v49, v47, v31);
        *(v56[7] + 8 * v49) = v32;
        v57 = v56[2];
        v37 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v37)
        {
          goto LABEL_26;
        }

        v56[2] = v58;
      }

      v79(v47, v31);
      sub_2329BFB8C(v18, &qword_27DDBDD70, &qword_2329D4778);
      v17 = v77 + v67;
      v15 = v78 - 1;
      v0 = v68;
      if (v78 == 1)
      {

        v11 = v66;
        v12 = v65;
        v14 = v64;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_2329D3904();
    __break(1u);
  }

  else
  {

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD80, &qword_2329D4788);
    inited = swift_initStackObject();
    strcpy((inited + 32), "totalRecords");
    v60 = MEMORY[0x277D83B88];
    *(inited + 16) = xmmword_2329D46E0;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v11;
    *(inited + 72) = v60;
    strcpy((inited + 80), "uniqueRecords");
    *(inited + 94) = -4864;
    *(inited + 96) = v12;
    *(inited + 120) = v60;
    *(inited + 128) = 0x6F72476C61746F74;
    *(inited + 136) = 0xEB00000000737075;
    *(inited + 144) = v14;
    *(inited + 168) = v60;
    *(inited + 176) = 0x61745370756F7267;
    *(inited + 184) = 0xEA00000000007374;
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD60, &qword_2329D4768);
    *(inited + 192) = v81;
    v61 = sub_2329BE39C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD88, &qword_2329D4790);
    swift_arrayDestroy();
    return v61;
  }

  return result;
}

id sub_2329BA880(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2329BFB44(0, &qword_27DDBDE28, 0x277D82BB8);
    v4 = sub_2329D3344();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2329BA924(uint64_t a1, id *a2)
{
  result = sub_2329D3394();
  *a2 = 0;
  return result;
}

uint64_t sub_2329BA99C(uint64_t a1, id *a2)
{
  v3 = sub_2329D33A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2329BAA1C@<X0>(uint64_t *a2@<X8>)
{
  sub_2329D33B4();
  v3 = sub_2329D3384();

  *a2 = v3;
  return result;
}

uint64_t sub_2329BAA60()
{
  v0 = sub_2329D33B4();
  v1 = MEMORY[0x23838A9A0](v0);

  return v1;
}

uint64_t sub_2329BAA9C(uint64_t a1)
{
  sub_2329D33B4();
  sub_2329D3414();
}

uint64_t sub_2329BAAF0(uint64_t a1)
{
  sub_2329D33B4();
  sub_2329D3934();
  sub_2329D3414();
  v1 = sub_2329D3954();

  return v1;
}

uint64_t sub_2329BAB64@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2329D3384();

  *a2 = v3;
  return result;
}

uint64_t sub_2329BABAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2329D33B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2329BABD8(uint64_t a1)
{
  v2 = sub_2329BF1B0(&qword_27DDBDDD8, type metadata accessor for URLResourceKey, &unk_2329D4AA4);
  v3 = sub_2329BF1B0(&qword_27DDBDE88, type metadata accessor for URLResourceKey, &unk_2329D49F8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2329BAC94(void *a1, uint64_t *a2)
{
  v2 = sub_2329D33B4();
  v4 = v3;
  if (v2 == sub_2329D33B4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2329D38D4();
  }

  return v7 & 1;
}

uint64_t sub_2329BAD1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2329BAE14;

  return v6(a1);
}

uint64_t sub_2329BAE14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_2329BAF0C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE58, &qword_2329D4910);
  v10 = *(sub_2329D2DD4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_2329D2DD4() - 8);
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

char *sub_2329BB0E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE20, &qword_2329D48E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2329BB1E8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE18, &qword_2329D48E0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD70, &qword_2329D4778) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD70, &qword_2329D4778) - 8);
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

unint64_t sub_2329BB3D8(uint64_t a1)
{
  sub_2329D33B4();
  sub_2329D3934();
  sub_2329D3414();
  v2 = sub_2329D3954();

  return sub_2329BB5C0(a1, v2);
}

unint64_t sub_2329BB46C(uint64_t a1)
{
  v2 = sub_2329D3754();

  return sub_2329BB6C4(a1, v2);
}

unint64_t sub_2329BB4B0(uint64_t a1, uint64_t a2)
{
  sub_2329D3934();
  sub_2329D3414();
  v4 = sub_2329D3954();

  return sub_2329BB78C(a1, a2, v4);
}

unint64_t sub_2329BB528(uint64_t a1)
{
  sub_2329D2DD4();
  sub_2329BF1B0(&qword_27DDBDDE8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_2329D3364();

  return sub_2329BB844(a1, v2);
}

unint64_t sub_2329BB5C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2329D33B4();
      v8 = v7;
      if (v6 == sub_2329D33B4() && v8 == v9)
      {
        break;
      }

      v11 = sub_2329D38D4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2329BB6C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2329BFAE8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23838ACB0](v9, a1);
      sub_2329BFA2C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2329BB78C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2329D38D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2329BB844(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2329D2DD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2329BF1B0(&qword_27DDBDDF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2329D3374();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_2329BBA04(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2329D3864();
LABEL_9:
  result = sub_2329D37F4();
  *v2 = result;
  return result;
}

uint64_t sub_2329BBAA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2329D2DD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDE0, &qword_2329D48C0);
  v39 = v4;
  result = sub_2329D3884();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2329BF1B0(&qword_27DDBDDE8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2329D3364();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
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

void sub_2329BBE80()
{
  v1 = v0;
  v33 = sub_2329D2DD4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDE0, &qword_2329D48C0);
  v3 = *v0;
  v4 = sub_2329D3874();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

uint64_t sub_2329BC100(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2329D3864();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2329D3864();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2329BF368();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDB0, &qword_2329D48A0);
            v9 = sub_2329BC280(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2329D2FA4();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2329BC280(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23838AD30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2329BC300;
  }

  __break(1u);
  return result;
}

id sub_2329BC308()
{
  v0 = sub_2329D2CF4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v52 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  type metadata accessor for NDFDaemonPersistenceController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  if (qword_2814DA8F0 != -1)
  {
    swift_once();
  }

  v12 = sub_2329D3384();
  v13 = sub_2329D3384();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (!v14)
  {
    v34 = v11;
    v35 = sub_2329D2DF4();
    v36 = sub_2329D3614();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&dword_2329A4000, v35, v36, "Failed to find a MOM file in the bundle %@", v37, 0xCu);
      sub_2329BFB8C(v38, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v38, -1, -1);
      MEMORY[0x23838B4F0](v37, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_2329D2CC4();

  v15 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v16 = sub_2329D2CA4();
  v17 = [v15 initWithContentsOfURL_];

  v18 = *(v1 + 16);
  if (!v17)
  {
    v18(v7, v9, v0);
    v40 = sub_2329D2DF4();
    v41 = sub_2329D3614();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57 = v43;
      *v42 = 136315138;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v44 = sub_2329D38B4();
      v56 = v11;
      v46 = v45;
      v47 = *(v1 + 8);
      v47(v7);
      v48 = sub_2329A8630(v44, v46, &v57);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_2329A4000, v40, v41, "Failed to allocate managed object model from %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x23838B4F0](v43, -1, -1);
      MEMORY[0x23838B4F0](v42, -1, -1);

      (v47)(v9, v0);
    }

    else
    {

      v50 = *(v1 + 8);
      v50(v7, v0);
      v50(v9, v0);
    }

    return 0;
  }

  v56 = v11;
  v18(v4, v9, v0);
  v19 = v17;
  v20 = sub_2329D2DF4();
  v21 = sub_2329D3634();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = v0;
    v24 = swift_slowAlloc();
    v54 = v24;
    v55 = swift_slowAlloc();
    v57 = v55;
    *v22 = 138412546;
    *(v22 + 4) = v19;
    *v24 = v17;
    *(v22 + 12) = 2080;
    sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v25 = v19;
    v53 = v20;
    v26 = sub_2329D38B4();
    v28 = v27;
    v29 = *(v1 + 8);
    v29(v4, v23);
    v30 = sub_2329A8630(v26, v28, &v57);

    *(v22 + 14) = v30;
    v31 = v53;
    _os_log_impl(&dword_2329A4000, v53, v21, "Successfully created managed object model %@ from %s", v22, 0x16u);
    v32 = v54;
    sub_2329BFB8C(v54, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v32, -1, -1);
    v33 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x23838B4F0](v33, -1, -1);
    MEMORY[0x23838B4F0](v22, -1, -1);

    v29(v9, v23);
  }

  else
  {

    v49 = *(v1 + 8);
    v49(v4, v0);
    v49(v9, v0);
  }

  return v17;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2329BCA20()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v37 = v0[5];
  v4 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;

  v5 = sub_2329D2DF4();
  LOBYTE(v6) = sub_2329D35F4();
  v7 = v1 >> 62;
  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_6;
  }

  v8 = swift_slowAlloc();
  *v8 = 134217984;
  if (v7)
  {
    goto LABEL_34;
  }

  v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v8 + 4) = v9;
    v10 = v8;

    _os_log_impl(&dword_2329A4000, v5, v6, "Creating %ld NDF device records...", v10, 0xCu);
    MEMORY[0x23838B4F0](v10, -1, -1);
LABEL_6:

    v36 = v1 >> 62;
    if (v7)
    {
      v8 = sub_2329D3864();
      v6 = v8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    if (v6 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_34:
    v34 = v4;
    v35 = v8;
    v9 = sub_2329D3864();
    v8 = v35;
    v4 = v34;
  }

  v11 = 0;
  v41 = v1 & 0xC000000000000001;
  v39 = v3;
  v40 = v2;
  v38 = v6;
  do
  {
    if (v41)
    {
      v12 = MEMORY[0x23838AD30](v11, v1);
    }

    else
    {
      v12 = *(v1 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = sub_2329B38C8(v12, v3);
    v15 = sub_2329D2DF4();
    v16 = sub_2329D35F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v4;
      v19 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v19 = v14;
      v20 = v1;
      v21 = v14;
      _os_log_impl(&dword_2329A4000, v15, v16, "New record: %@", v17, 0xCu);
      sub_2329BFB8C(v19, &qword_27DDBE070, &unk_2329D4750);
      v22 = v19;
      v4 = v18;
      MEMORY[0x23838B4F0](v22, -1, -1);
      v23 = v17;
      v3 = v39;
      v2 = v40;
      MEMORY[0x23838B4F0](v23, -1, -1);
      v14 = v13;
      v13 = v15;
      v15 = v21;
      v1 = v20;
      v6 = v38;
    }

    ++v11;
  }

  while (v6 != v11);
LABEL_17:

  v24 = sub_2329D2DF4();
  v25 = sub_2329D35F4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    v27 = v36;
    if (v36)
    {
      v28 = sub_2329D3864();
    }

    else
    {
      v28 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v28;

    _os_log_impl(&dword_2329A4000, v24, v25, "Saving %ld new records...", v26, 0xCu);
    MEMORY[0x23838B4F0](v26, -1, -1);
  }

  else
  {

    v27 = v36;
  }

  if ((*(*v2 + 416))(v3))
  {
    if (v27)
    {
      v29 = sub_2329D3864();
    }

    else
    {
      v29 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v30 = sub_2329D2DF4();
    v31 = sub_2329D3614();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2329A4000, v30, v31, "Failed to save records, resetting created count", v32, 2u);
      MEMORY[0x23838B4F0](v32, -1, -1);
    }

    v29 = 0;
  }

  *v37 = v29;

  return [v3 reset];
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2329BCEDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  sub_2329BFFD4();
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v5 = sub_2329D3384();

  v31 = [v4 initWithEntityName_];

  [v31 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2329D46C0;
  sub_2329C01E0();
  v7 = objc_allocWithZone(MEMORY[0x277CCAC98]);

  v8 = sub_2329D3384();

  v9 = [v7 initWithKey:v8 ascending:0];

  *(v6 + 32) = v9;
  sub_2329BFB44(0, &qword_2814D9E68, 0x277CCAC98);
  v10 = sub_2329D3474();

  [v31 setSortDescriptors_];

  sub_2329BFB44(0, &qword_2814D9E70, 0x277CBEAC0);
  v11 = sub_2329D36E4();

  v12 = sub_2329D2DF4();
  v13 = sub_2329D35F4();
  v14 = v11 >> 62;
  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_6;
  }

  v10 = swift_slowAlloc();
  *v10 = 134217984;
  if (v14)
  {
    goto LABEL_26;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2329D3864())
  {
    *(v10 + 1) = i;

    _os_log_impl(&dword_2329A4000, v12, v13, "Fetched %ld results", v10, 0xCu);
    MEMORY[0x23838B4F0](v10, -1, -1);
LABEL_6:

    if (v14)
    {
      v13 = sub_2329D3864();
      if (!v13)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    if (v13 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_26:
    ;
  }

  v29 = v3;
  v30 = v2;
  if ((v11 & 0xC000000000000001) != 0)
  {
    for (j = 0; j != v13; ++j)
    {
      v19 = MEMORY[0x23838AD30](j, v11);
      swift_unknownObjectRetain();
      v20 = sub_2329D2DF4();
      v21 = sub_2329D3634();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v20, v21))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v19;
        *v18 = v19;
        swift_unknownObjectRetain();
        _os_log_impl(&dword_2329A4000, v20, v21, "  %@", v17, 0xCu);
        sub_2329BFB8C(v18, &qword_27DDBE070, &unk_2329D4750);
        MEMORY[0x23838B4F0](v18, -1, -1);
        MEMORY[0x23838B4F0](v17, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v22 = 32;
    do
    {
      v23 = *(v11 + v22);
      v24 = sub_2329D2DF4();
      v25 = sub_2329D3634();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v23;
        *v27 = v23;
        v28 = v23;
        _os_log_impl(&dword_2329A4000, v24, v25, "  %@", v26, 0xCu);
        sub_2329BFB8C(v27, &qword_27DDBE070, &unk_2329D4750);
        MEMORY[0x23838B4F0](v27, -1, -1);
        MEMORY[0x23838B4F0](v26, -1, -1);
        v23 = v24;
        v24 = v28;
      }

      v22 += 8;
      --v13;
    }

    while (v13);
  }

  v3 = v29;
  v2 = v30;
LABEL_22:
  *v3 = 1;
  [v2 reset];
}