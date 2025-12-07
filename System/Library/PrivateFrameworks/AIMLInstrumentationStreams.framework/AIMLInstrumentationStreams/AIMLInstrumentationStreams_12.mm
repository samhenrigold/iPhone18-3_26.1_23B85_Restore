uint64_t sub_23C65E398(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23C65E41C()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_27E1FBF50);
  __swift_project_value_buffer(v0, qword_27E1FBF50);
  sub_23C588EAC();
  sub_23C871B54();
  return sub_23C871664();
}

uint64_t sub_23C65E4B0()
{
  if (qword_27E1F8348 != -1)
  {
    swift_once();
  }

  v0 = sub_23C871654();
  __swift_project_value_buffer(v0, qword_27E1FBF50);
  v1 = sub_23C871634();
  v2 = sub_23C871AC4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23C56D000, v1, v2, "checking for data vault entitlements", v3, 2u);
    MEMORY[0x23EED8240](v3, -1, -1);
  }

  v4 = xpc_copy_entitlement_for_self();
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  swift_unknownObjectRetain();
  v6 = sub_23C871634();
  v7 = sub_23C871AC4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = xpc_dictionary_get_count(v5);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_23C56D000, v6, v7, "Got entitlement dictionary with %ld entries", v8, 0xCu);
    MEMORY[0x23EED8240](v8, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v10 = sub_23C8717E4();
  sub_23C65E6A4(&v11, (v10 + 32), v5);

  swift_unknownObjectRelease();
  return v11;
}

void sub_23C65E6A4(uint64_t *__return_ptr a1@<X8>, char *key@<X0>, xpc_object_t xdict@<X2>)
{
  if (key)
  {
    v4 = xpc_dictionary_get_BOOL(xdict, key);
    if (qword_27E1F8348 != -1)
    {
      swift_once();
    }

    v5 = sub_23C871654();
    __swift_project_value_buffer(v5, qword_27E1FBF50);
    v6 = sub_23C871634();
    v7 = sub_23C871AC4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_23C56D000, v6, v7, "Found value %{BOOL}d for data vault entitlement", v8, 8u);
      MEMORY[0x23EED8240](v8, -1, -1);
    }
  }

  else
  {
    LOBYTE(v4) = 2;
  }

  *a1 = v4;
}

uint64_t sub_23C65E7BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1F96A8, qword_23C873C40);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_23C871784();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_23C65E890(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    if (qword_27E1F8348 != -1)
    {
      swift_once();
    }

    v4 = sub_23C871654();
    __swift_project_value_buffer(v4, qword_27E1FBF50);
    v5 = sub_23C871634();
    v6 = sub_23C871AC4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23C56D000, v5, v6, "Releasing Sandbox extension to SiriSELF data vault", v7, 2u);
      MEMORY[0x23EED8240](v7, -1, -1);
    }

    return MEMORY[0x282204FA0](v3);
  }

  return result;
}

uint64_t sub_23C65E9A4()
{
  if (qword_27E1F8348 != -1)
  {
    swift_once();
  }

  v1 = sub_23C871654();
  v0[20] = __swift_project_value_buffer(v1, qword_27E1FBF50);
  v2 = sub_23C871634();
  v3 = sub_23C871AC4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C56D000, v2, v3, "Starting vending sandbox extension for Unified Message Stream", v4, 2u);
    MEMORY[0x23EED8240](v4, -1, -1);
  }

  v5 = objc_allocWithZone(MEMORY[0x277D552D8]);
  v6 = sub_23C871774();
  v7 = [v5 initWithMachServiceName_];
  v0[21] = v7;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23C65EBD0;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF68, &unk_23C87D0C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23C65E7BC;
  v0[13] = &block_descriptor_1;
  v0[14] = v8;
  [v7 vendSandboxExtensionWithResource:1 readonly:1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23C65EBD0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_23C65EFD0;
  }

  else
  {
    v2 = sub_23C65ECE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_23C65ECE0()
{
  v25 = v0;
  sub_23C8717E4();
  v1 = sandbox_extension_consume();

  if (v1 < 0)
  {
    v8 = MEMORY[0x23EED6F60](v2);
    result = strerror(v8);
    if (result)
    {

      v9 = sub_23C871764();
      v11 = v10;

      v12 = sub_23C871634();
      v13 = sub_23C871AD4();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24 = v15;
        *v14 = 67109378;
        *(v14 + 4) = MEMORY[0x23EED6F60](v15);
        *(v14 + 8) = 2080;
        if (v11)
        {
          v16 = v9;
        }

        else
        {
          v16 = 0;
        }

        if (v11)
        {
          v17 = v11;
        }

        else
        {
          v17 = 0xE000000000000000;
        }

        v18 = sub_23C63C388(v16, v17, &v24);

        *(v14 + 10) = v18;
        _os_log_impl(&dword_23C56D000, v12, v13, "Error consuming sandbox extension: %d %s", v14, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x23EED8240](v15, -1, -1);
        MEMORY[0x23EED8240](v14, -1, -1);
      }

      v19 = *(v0 + 168);
      v20 = MEMORY[0x23EED6F60]();
      if (v11)
      {
        v21 = v11;
      }

      else
      {
        v9 = 0;
        v21 = 0xE000000000000000;
      }

      sub_23C65F058();
      swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v9;
      *(v22 + 16) = v21;
      swift_willThrow();

      v23 = *(v0 + 8);

      return v23();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v3 = sub_23C871634();
    v4 = sub_23C871AC4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_23C56D000, v3, v4, "Sandbox extension vended and consumed successfully. Handle: %lld", v5, 0xCu);
      MEMORY[0x23EED8240](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6(v1);
  }

  return result;
}

uint64_t sub_23C65EFD0(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_23C65F058()
{
  result = qword_27E1FBF70;
  if (!qword_27E1FBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBF70);
  }

  return result;
}

uint64_t sub_23C65F0AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23C65F0F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23C65F1AC()
{
  v1 = *v0;
  sub_23C871D14();
  MEMORY[0x23EED7100](0xD00000000000003CLL, 0x800000023C8ACBD0);
  swift_beginAccess();
  v2 = v1[10];
  v3 = v1[14];
  sub_23C8716D4();
  swift_getWitnessTable();
  sub_23C871FE4();
  MEMORY[0x23EED7100](0xD000000000000015, 0x800000023C8ACC10);
  type metadata accessor for UndirectedUnweightedGraph(0, v2, v1[13], v3);
  swift_getWitnessTable();
  sub_23C871FE4();
  MEMORY[0x23EED7100](0xD000000000000020, 0x800000023C8ACC30);
  swift_beginAccess();
  sub_23C8716D4();
  swift_getWitnessTable();
  sub_23C871FE4();
  MEMORY[0x23EED7100](0xD00000000000001ALL, 0x800000023C8ACC60);
  swift_beginAccess();
  sub_23C871924();
  sub_23C8716D4();
  swift_getWitnessTable();
  sub_23C871FE4();
  MEMORY[0x23EED7100](0x202020202020200ALL, 0xEA00000000002920);
  return 0;
}

void *sub_23C65F45C()
{

  return v0;
}

uint64_t sub_23C65F494()
{
  sub_23C65F45C();

  return swift_deallocClassInstance();
}

uint64_t static InstrumentationStreamsFactoryBridge.construct(filter:startTime:endTime:maxEvents:lastN:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23C662788;

  return sub_23C6607D4(a1, a2, a3, a4, a5);
}

uint64_t sub_23C65F788(void *a1, uint64_t a2, uint64_t a3, void *aBlock, double a5, double a6)
{
  v6[2] = a1;
  v6[3] = _Block_copy(aBlock);
  v12 = a1;
  v13 = swift_task_alloc();
  v6[4] = v13;
  *v13 = v6;
  v13[1] = sub_23C662784;

  return sub_23C6607D4(v12, a2, a3, a5, a6);
}

uint64_t static InstrumentationStreamsFactoryBridge.construct(filter:startTime:endTime:maxEvents:lastN:storageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_23C662788;

  return sub_23C660DB0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23C65FB24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, double a6, double a7)
{
  v7[2] = a1;
  v14 = sub_23C8709E4();
  v7[3] = v14;
  v7[4] = *(v14 - 8);
  v15 = swift_task_alloc();
  v7[5] = v15;
  v7[6] = _Block_copy(a5);
  sub_23C8709C4();
  v16 = a1;
  v17 = swift_task_alloc();
  v7[7] = v17;
  *v17 = v7;
  v17[1] = sub_23C66277C;

  return sub_23C660DB0(v16, a2, a3, v15, a6, a7);
}

uint64_t static InstrumentationStreamsFactoryBridge.construct(filter:startTimeRelativeToNow:)(uint64_t a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C662788;

  return sub_23C6613E8(a1, a2);
}

uint64_t sub_23C65FEEC(void *a1, void *aBlock, double a3)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_23C65FFBC;
  v8.n128_f64[0] = a3;

  return (sub_23C6613E8)(v6, v8);
}

uint64_t sub_23C65FFBC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_23C8709A4();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t static InstrumentationStreamsFactoryBridge.construct(filter:startTimeRelativeToNow:storageURL:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C611704;
  v8.n128_f64[0] = a3;

  return (sub_23C661A1C)(a1, a2, v8);
}

uint64_t sub_23C6603B8(void *a1, uint64_t a2, const void *a3, double a4)
{
  v4[2] = a1;
  v8 = sub_23C8709E4();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v4[6] = _Block_copy(a3);
  sub_23C8709C4();
  v10 = a1;
  v11 = swift_task_alloc();
  v4[7] = v11;
  *v11 = v4;
  v11[1] = sub_23C660508;
  v12.n128_f64[0] = a4;

  return (sub_23C661A1C)(v10, v9, v12);
}

uint64_t sub_23C660508(void *a1)
{
  v4 = *v2;
  v5 = *v2;

  v6 = v4[6];
  v7 = v4[2];
  (*(v4[4] + 8))(v4[5], v4[3]);

  if (v1)
  {
    v8 = sub_23C8709A4();

    (v6)[2](v6, 0, v8);
    _Block_release(v6);
  }

  else
  {
    (v6)[2](v6, a1, 0);
    _Block_release(v6);
  }

  v9 = v5[1];

  return v9();
}

id InstrumentationStreamsFactoryBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InstrumentationStreamsFactoryBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstrumentationStreamsFactoryBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InstrumentationStreamsFactoryBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InstrumentationStreamsFactoryBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23C6607D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  *(v5 + 72) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  *(v5 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C6608B4, 0, 0);
}

uint64_t sub_23C6608B4()
{
  v1 = *(v0 + 112);
  v2 = sub_23C8709E4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  type metadata accessor for UnifiedSourceStream();
  v3 = swift_allocObject();
  *(v0 + 136) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  v4 = sub_23C65E4B0();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_23C660BF4;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 168) = 1;
    *(v0 + 144) = 0;

    return MEMORY[0x2822009F8](sub_23C660A00, 0, 0);
  }
}

uint64_t sub_23C660A00()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  *(v2 + 16) = *(v0 + 144);
  *(v2 + 24) = v1;
  v26 = v6 < 0;
  v25 = v6 & ~(v6 >> 63);
  v24 = v7 < 0;
  v11 = v7 & ~(v7 >> 63);
  v12 = v8 < 0.0;
  if (v8 >= 0.0)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v9 < 0.0;
  if (v9 >= 0.0)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0.0;
  }

  sub_23C60C610(v5, v3 + *(v4 + 56), &qword_27E1FB650, &qword_23C87B020);
  *v3 = v2;
  *(v3 + 8) = v10;
  *(v3 + 16) = v15;
  *(v3 + 24) = v14;
  *(v3 + 32) = v13;
  *(v3 + 40) = v12;
  *(v3 + 48) = v11;
  *(v3 + 56) = v24;
  *(v3 + 64) = v25;
  *(v3 + 72) = v26;
  v16 = (v3 + *(v4 + 60));
  *v16 = 0;
  v16[1] = 0;
  v17 = v10;
  *(v0 + 40) = v4;
  *(v0 + 48) = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_23C5855B0(v3, boxed_opaque_existential_1, &qword_27E1FB648, &qword_23C87B018);
  v19 = type metadata accessor for InstrumentationStreamsProviderBridge();
  v20 = objc_allocWithZone(v19);
  sub_23C5A9638(v0 + 16, v20 + OBJC_IVAR___ISStreamsProvider_provider);
  *(v0 + 56) = v20;
  *(v0 + 64) = v19;
  v21 = objc_msgSendSuper2((v0 + 56), sel_init);
  sub_23C585C34(v3, &qword_27E1FB648, &qword_23C87B018);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_23C660BF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_23C660D20;
  }

  else
  {
    *(v4 + 168) = 0;
    *(v4 + 144) = a1;
    v5 = sub_23C660A00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C660D20()
{
  v1 = *(v0 + 112);

  sub_23C585C34(v1, &qword_27E1FB650, &qword_23C87B020);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C660DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 96) = a2;
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  *(v6 + 72) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C660E94, 0, 0);
}

uint64_t sub_23C660E94()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = sub_23C8709E4();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v2, v1, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  type metadata accessor for UnifiedSourceStream();
  v5 = swift_allocObject();
  *(v0 + 144) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 256;
  v6 = sub_23C65E4B0();
  if (v6 == 2 || (v6 & 1) == 0)
  {
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_23C66122C;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 176) = 1;
    *(v0 + 152) = 0;

    return MEMORY[0x2822009F8](sub_23C661038, 0, 0);
  }
}

uint64_t sub_23C661038()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  *(v2 + 16) = *(v0 + 152);
  *(v2 + 24) = v1;
  v26 = v6 < 0;
  v25 = v6 & ~(v6 >> 63);
  v24 = v7 < 0;
  v11 = v7 & ~(v7 >> 63);
  v12 = v8 < 0.0;
  if (v8 >= 0.0)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v9 < 0.0;
  if (v9 >= 0.0)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0.0;
  }

  sub_23C60C610(v5, v3 + *(v4 + 56), &qword_27E1FB650, &qword_23C87B020);
  *v3 = v2;
  *(v3 + 8) = v10;
  *(v3 + 16) = v15;
  *(v3 + 24) = v14;
  *(v3 + 32) = v13;
  *(v3 + 40) = v12;
  *(v3 + 48) = v11;
  *(v3 + 56) = v24;
  *(v3 + 64) = v25;
  *(v3 + 72) = v26;
  v16 = (v3 + *(v4 + 60));
  *v16 = 0;
  v16[1] = 0;
  v17 = v10;
  *(v0 + 40) = v4;
  *(v0 + 48) = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_23C5855B0(v3, boxed_opaque_existential_1, &qword_27E1FB648, &qword_23C87B018);
  v19 = type metadata accessor for InstrumentationStreamsProviderBridge();
  v20 = objc_allocWithZone(v19);
  sub_23C5A9638(v0 + 16, v20 + OBJC_IVAR___ISStreamsProvider_provider);
  *(v0 + 56) = v20;
  *(v0 + 64) = v19;
  v21 = objc_msgSendSuper2((v0 + 56), sel_init);
  sub_23C585C34(v3, &qword_27E1FB648, &qword_23C87B018);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_23C66122C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_23C661358;
  }

  else
  {
    *(v4 + 176) = 0;
    *(v4 + 152) = a1;
    v5 = sub_23C661038;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C661358()
{
  v1 = *(v0 + 120);

  sub_23C585C34(v1, &qword_27E1FB650, &qword_23C87B020);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C6613E8(uint64_t a1, double a2)
{
  *(v2 + 120) = a2;
  *(v2 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  *(v2 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C661488, 0, 0);
}

uint64_t sub_23C661488()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v3 = sub_23C8709E4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  *(v0 + 136) = v4;
  *(v0 + 40) = v4;
  *(v0 + 48) = &off_284F30100;
  *(v0 + 144) = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v5 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow_];
  [v5 timeIntervalSinceReferenceDate];
  *(v0 + 152) = v6;

  type metadata accessor for UnifiedSourceStream();
  v7 = swift_allocObject();
  *(v0 + 160) = v7;
  *(v7 + 16) = 0;
  *(v7 + 24) = 256;
  v8 = sub_23C65E4B0();
  if (v8 == 2 || (v8 & 1) == 0)
  {
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_23C661860;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 192) = 1;
    *(v0 + 168) = 0;

    return MEMORY[0x2822009F8](sub_23C66163C, 0, 0);
  }
}

uint64_t sub_23C66163C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  *(v2 + 16) = *(v0 + 168);
  *(v2 + 24) = v1;
  *(v2 + 25) = 0;
  sub_23C5855B0(v6, v5 + *(v4 + 56), &qword_27E1FB650, &qword_23C87B020);
  *v5 = v2;
  *(v5 + 8) = v7;
  *(v5 + 16) = v3;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  v8 = (v5 + *(v4 + 60));
  *v8 = 0;
  v8[1] = 0;
  v9 = v7;
  sub_23C585C34(v6, &qword_27E1FB650, &qword_23C87B020);
  v10 = *(v0 + 40);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  *(v0 + 80) = v4;
  *(v0 + 88) = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_23C60C610(v13, boxed_opaque_existential_1, &qword_27E1FB648, &qword_23C87B018);
  v15 = type metadata accessor for InstrumentationStreamsProviderBridge();
  v16 = objc_allocWithZone(v15);
  sub_23C5A9638(v0 + 56, v16 + OBJC_IVAR___ISStreamsProvider_provider);
  *(v0 + 96) = v16;
  *(v0 + 104) = v15;
  v17 = objc_msgSendSuper2((v0 + 96), sel_init);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t sub_23C661860(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_23C66198C;
  }

  else
  {
    *(v4 + 192) = 0;
    *(v4 + 168) = a1;
    v5 = sub_23C66163C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C66198C()
{
  v1 = *(v0 + 128);

  sub_23C585C34(v1, &qword_27E1FB650, &qword_23C87B020);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C661A1C(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 128) = a2;
  *(v3 + 120) = a3;
  *(v3 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C661AC0, 0, 0);
}

uint64_t sub_23C661AC0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = sub_23C8709E4();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  *(v0 + 144) = v6;
  *(v0 + 40) = v6;
  *(v0 + 48) = &off_284F30100;
  *(v0 + 152) = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v7 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow_];
  [v7 timeIntervalSinceReferenceDate];
  *(v0 + 160) = v8;

  type metadata accessor for UnifiedSourceStream();
  v9 = swift_allocObject();
  *(v0 + 168) = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = 256;
  v10 = sub_23C65E4B0();
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    *v11 = v0;
    v11[1] = sub_23C661EE4;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 200) = 1;
    *(v0 + 176) = 0;

    return MEMORY[0x2822009F8](sub_23C661CC0, 0, 0);
  }
}

uint64_t sub_23C661CC0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  *(v2 + 16) = *(v0 + 176);
  *(v2 + 24) = v1;
  *(v2 + 25) = 0;
  sub_23C5855B0(v6, v5 + *(v4 + 56), &qword_27E1FB650, &qword_23C87B020);
  *v5 = v2;
  *(v5 + 8) = v7;
  *(v5 + 16) = v3;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  v8 = (v5 + *(v4 + 60));
  *v8 = 0;
  v8[1] = 0;
  v9 = v7;
  sub_23C585C34(v6, &qword_27E1FB650, &qword_23C87B020);
  v10 = *(v0 + 40);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  *(v0 + 80) = v4;
  *(v0 + 88) = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_23C60C610(v13, boxed_opaque_existential_1, &qword_27E1FB648, &qword_23C87B018);
  v15 = type metadata accessor for InstrumentationStreamsProviderBridge();
  v16 = objc_allocWithZone(v15);
  sub_23C5A9638(v0 + 56, v16 + OBJC_IVAR___ISStreamsProvider_provider);
  *(v0 + 96) = v16;
  *(v0 + 104) = v15;
  v17 = objc_msgSendSuper2((v0 + 96), sel_init);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t sub_23C661EE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_23C662010;
  }

  else
  {
    *(v4 + 200) = 0;
    *(v4 + 176) = a1;
    v5 = sub_23C661CC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C662010()
{
  v1 = *(v0 + 136);

  sub_23C585C34(v1, &qword_27E1FB650, &qword_23C87B020);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C6620C4()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23C662190;

  return sub_23C6603B8(v2, v4, v5, v3);
}

uint64_t sub_23C662190()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23C662284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23C662780;

  return sub_23C664C44(v2, v3, v4);
}

uint64_t sub_23C662344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C662780;

  return sub_23C664D2C(a1, v4, v5, v6);
}

uint64_t sub_23C662410()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23C662780;

  return sub_23C65FEEC(v2, v4, v3);
}

uint64_t sub_23C6624D4()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_23C662780;

  return sub_23C65FB24(v2, v5, v6, v7, v8, v3, v4);
}

uint64_t sub_23C6625C0()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23C662780;

  return sub_23C65F788(v2, v5, v6, v7, v3, v4);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x23EED8240);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_23C66278C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF80, &unk_23C87D2F0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB668, &qword_23C87B0B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v10 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR___ISStreamsProvider_provider), v9);
  (*(v10 + 128))(v9, v10);
  type metadata accessor for TimestampedEventBridge();
  sub_23C66298C();
  sub_23C870BC4();
  v11 = sub_23C870B84();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v11;
}

unint64_t sub_23C66298C()
{
  result = qword_27E1FB678;
  if (!qword_27E1FB678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1FB668, &qword_23C87B0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB678);
  }

  return result;
}

uint64_t sub_23C662C20(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v8 = *(v1 + OBJC_IVAR___ISStreamsProvider_provider + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR___ISStreamsProvider_provider), v7);
  (*(v8 + 136))(v7, v8, a1);
  v9 = sub_23C870BE4();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_23C662EA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v5 = (v0 + OBJC_IVAR___ISStreamsProvider_provider);
  v6 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v6);
  InstrumentationStreamsProviderProtocol.eventGraphs()(v6, v7);
  v8 = sub_23C870BE4();
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_23C6630E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v5 = (v0 + OBJC_IVAR___ISStreamsProvider_provider);
  v6 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v6);
  InstrumentationStreamsProviderProtocol.connectedComponentGroups(windowLength:)(v6, v7);
  v8 = sub_23C870BE4();
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_23C663344()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6C0, &qword_23C87B180);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  v5 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v6 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR___ISStreamsProvider_provider), v5);
  (*(v6 + 144))(v5, v6);
  v7 = sub_23C870BE4();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_23C6635A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF90, qword_23C87D300);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  v5 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v6 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR___ISStreamsProvider_provider), v5);
  (*(v6 + 152))(v5, v6);
  v7 = sub_23C870BE4();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_23C663804(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C66382C, 0, 0);
}

uint64_t sub_23C66382C()
{
  v1 = *(v0 + 2);
  v2 = (*(v0 + 4) + OBJC_IVAR___ISStreamsProvider_provider);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v4);
  v5 = *(v1 + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v6 = swift_task_alloc();
  *(v0 + 5) = v6;
  *v6 = v0;
  v6[1] = sub_23C66390C;
  v7 = v0[3];

  return InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:windowLength:)(v5, v4, v3, v7);
}

uint64_t sub_23C66390C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_23C663BA4(void *a1, void *aBlock, void *a3, double a4)
{
  *(v4 + 32) = a3;
  *(v4 + 24) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a3;

  return MEMORY[0x2822009F8](sub_23C663C38, 0, 0);
}

uint64_t sub_23C663C38()
{
  v1 = *(v0 + 2);
  v2 = (*(v0 + 4) + OBJC_IVAR___ISStreamsProvider_provider);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v4);
  v5 = *(v1 + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v6 = swift_task_alloc();
  *(v0 + 6) = v6;
  *v6 = v0;
  v6[1] = sub_23C663D18;
  v7 = v0[3];

  return InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:windowLength:)(v5, v4, v3, v7);
}

uint64_t sub_23C663D18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_23C663ED8;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_23C663E40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C663E40()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23C663ED8()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = sub_23C8709A4();
  (v2)[2](v2, 0, v4);

  _Block_release(v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23C663F84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23C663FA4, 0, 0);
}

uint64_t sub_23C663FA4()
{
  v1 = v0[2];
  v2 = (v0[3] + OBJC_IVAR___ISStreamsProvider_provider);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v4);
  v5 = *(v1 + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_23C66407C;

  return InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:)(v5, v4, v3);
}

uint64_t sub_23C66407C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_23C664304(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_23C664390, 0, 0);
}

uint64_t sub_23C664390()
{
  v1 = v0[2];
  v2 = (v0[3] + OBJC_IVAR___ISStreamsProvider_provider);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v4);
  v5 = *(v1 + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_23C664468;

  return InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:)(v5, v4, v3);
}

uint64_t sub_23C664468(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_23C664628;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_23C664590;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C664590()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23C664628()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = sub_23C8709A4();
  (v2)[2](v2, 0, v4);

  _Block_release(v2);
  v5 = *(v0 + 8);

  return v5();
}

id InstrumentationStreamsProviderBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InstrumentationStreamsProviderBridge.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InstrumentationStreamsProviderBridge();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t dispatch thunk of InstrumentationStreamsProviderBridge.searchForEventGraph(componentIdentifier:windowLength:)(uint64_t a1, double a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x90);
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C58898C;
  v8.n128_f64[0] = a2;

  return v10(a1, v8);
}

uint64_t dispatch thunk of InstrumentationStreamsProviderBridge.searchForEventGraph(componentIdentifier:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x98);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C6655CC;

  return v7(a1);
}

uint64_t sub_23C664B90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23C662780;

  return sub_23C664304(v2, v3, v4);
}

uint64_t sub_23C664C44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23C662780;

  return v6();
}

uint64_t sub_23C664D2C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23C662190;

  return v7();
}

uint64_t sub_23C664E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_23C6650D0(a3, v23 - v10);
  v12 = sub_23C8719A4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23C665140(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23C871994();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23C871934();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23C8717E4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_23C665140(a3);

    return v21;
  }

LABEL_8:
  sub_23C665140(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_23C6650D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C665140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C6651A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C6652A0;

  return v6(a1);
}

uint64_t sub_23C6652A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23C665398(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C662780;

  return sub_23C6651A8(a1, v4);
}

uint64_t sub_23C665450(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C662190;

  return sub_23C6651A8(a1, v4);
}

uint64_t sub_23C665508()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23C662190;

  return sub_23C663BA4(v2, v5, v4, v3);
}

uint64_t sub_23C6655D0@<X0>(char a2@<W1>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  LODWORD(v57) = a8;
  v56 = a7;
  v47 = a6;
  v48 = a5;
  v54 = a9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB628, &unk_23C87AF70);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v46 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v26 = swift_allocObject();
  v50 = v26;
  *(v26 + 16) = MEMORY[0x277D84F90];
  v49 = v26 + 16;
  if (a2)
  {
    v27 = sub_23C870AE4();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  }

  else
  {
    sub_23C870A54();
    v28 = sub_23C870AE4();
    (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
  }

  if (a4)
  {
    v29 = 1;
  }

  else
  {
    sub_23C870A54();
    v29 = 0;
  }

  v30 = sub_23C870AE4();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v23, v29, 1, v30);
  sub_23C60D7E8(v25, v20);
  v51 = v23;
  sub_23C60D7E8(v23, v17);
  v32 = v48;
  if (v47)
  {
    v32 = 0;
  }

  v48 = v32;
  v33 = v56;
  if (v57)
  {
    v33 = 0;
  }

  v57 = v33;
  v34 = *(v31 + 48);
  v35 = 0;
  if (v34(v20, 1, v30) != 1)
  {
    v35 = sub_23C870A84();
    (*(v31 + 8))(v20, v30);
  }

  if (v34(v17, 1, v30) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_23C870A84();
    (*(v31 + 8))(v17, v30);
  }

  v37 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v38 = [v37 initWithStartDate:v35 endDate:v36 maxEvents:v48 lastN:v57 reversed:0];

  sub_23C8714C4();
  sub_23C666050();

  v39 = v38;
  sub_23C871544();

  __swift_project_boxed_opaque_existential_0(v58, v58[3]);

  sub_23C871684();

  __swift_destroy_boxed_opaque_existential_0(v58);
  v40 = v51;
  swift_beginAccess();
  v41 = type metadata accessor for AnteroEvent(0);

  v42 = v52;
  sub_23C8718B4();

  sub_23C60D8B0();
  v43 = v55;
  v44 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v44, v41);

  (*(v53 + 8))(v42, v43);
  sub_23C585C34(v40, &unk_27E2054F0, &unk_23C874DF0);
  sub_23C585C34(v25, &unk_27E2054F0, &unk_23C874DF0);
}

uint64_t sub_23C665C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9290, &unk_23C8734D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_23C871414();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_23C871374();
  v12 = objc_allocWithZone(type metadata accessor for AnteroEvent(0));
  AnteroEvent.init(telemetryEvent:writeTimestamp:)(v9, v6);
  v13 = swift_beginAccess();
  MEMORY[0x23EED7170](v13);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23C8718D4();
  }

  sub_23C871904();
  return swift_endAccess();
}

uint64_t sub_23C665E6C()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15TelemetryStream_logger;
  v2 = sub_23C871654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TelemetryStream(uint64_t a1)
{
  result = qword_27E1FBF98;
  if (!qword_27E1FBF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C665F5C(uint64_t a1)
{
  result = sub_23C871654();
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

unint64_t sub_23C666050()
{
  result = qword_27E1FBFA8;
  if (!qword_27E1FBFA8)
  {
    sub_23C8714C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBFA8);
  }

  return result;
}

uint64_t sub_23C6660B0(uint64_t a1)
{
  v3 = sub_23C870B74();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_23C871C34();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v47 = MEMORY[0x277D84F90];
    sub_23C592B60(0, v7 & ~(v7 >> 63), 0);
    v42 = v47;
    if (v41)
    {
      result = sub_23C871BE4();
    }

    else
    {
      result = sub_23C871BB4();
      v9 = *(a1 + 36);
    }

    v44 = result;
    v45 = v9;
    v46 = v41 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v37 = v7;
      v38 = v40 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v35 = a1 + 56;
      v36 = v11;
      v33[1] = v1;
      v34 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v44;
        v15 = v45;
        v16 = v46;
        sub_23C648EFC(v44, v45, v46, a1);
        v18 = v17;
        sub_23C870E24();

        v19 = v42;
        v47 = v42;
        v21 = *(v42 + 16);
        v20 = *(v42 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_23C592B60((v20 > 1), v21 + 1, 1);
          v19 = v47;
        }

        *(v19 + 16) = v21 + 1;
        v22 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v42 = v19;
        result = (*(v40 + 32))(v19 + v22 + *(v40 + 72) * v21, v6, v39);
        if (v41)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          if (sub_23C871C04())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDA0, &qword_23C87BE78);
          v12 = sub_23C871A04();
          sub_23C871C84();
          result = v12(v43, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_23C606430(v44, v45, v46);
            return v42;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v23 = 1 << *(a1 + 32);
          if (v14 >= v23)
          {
            goto LABEL_38;
          }

          v24 = v14 >> 6;
          v25 = *(v35 + 8 * (v14 >> 6));
          if (((v25 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v15)
          {
            goto LABEL_40;
          }

          v26 = v25 & (-2 << (v14 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v34 + 8 * v24);
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                result = sub_23C606430(v14, v15, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_33;
              }
            }

            result = sub_23C606430(v14, v15, 0);
          }

LABEL_33:
          v32 = *(a1 + 36);
          v44 = v23;
          v45 = v32;
          v46 = 0;
          v7 = v37;
          if (v10 == v37)
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

uint64_t sub_23C6664A0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v32 = a1;
  v7 = sub_23C870B74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 24);
  v34 = v15;
  *(v4 + 24) = 0x8000000000000000;
  v17 = sub_23C5FFB04(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
LABEL_19:
    sub_23C8718D4();
    goto LABEL_10;
  }

  v21 = v16;
  if (v15[3] >= v20)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23C6439A0();
      v15 = v34;
    }
  }

  else
  {
    sub_23C63DCF8(v20, isUniquelyReferenced_nonNull_native);
    v15 = v34;
    v22 = sub_23C5FFB04(a2);
    if ((v21 & 1) != (v23 & 1))
    {
      result = sub_23C872064();
      __break(1u);
      return result;
    }

    v17 = v22;
  }

  *(v4 + 24) = v15;
  if ((v21 & 1) == 0)
  {
    (*(v8 + 16))(v13, a2, v7);
    sub_23C642888(v17, v13, MEMORY[0x277D84F90], v15);
  }

  v24 = (v15[7] + 8 * v17);

  MEMORY[0x23EED7170](v25);
  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_19;
  }

LABEL_10:
  sub_23C871904();
  swift_endAccess();
  (*(v8 + 16))(v11, a2, v7);
  swift_beginAccess();
  v26 = *(v4 + 16);
  if (*(v26 + 16))
  {

    v27 = sub_23C5FFB04(a2);
    v28 = 0.0;
    if (v29)
    {
      v28 = *(*(v26 + 56) + 8 * v27);
    }
  }

  else
  {
    v28 = 0.0;
  }

  if (v28 > a3)
  {
    a3 = v28;
  }

  swift_beginAccess();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_23C5942CC(v11, v30, a3);
  (*(v8 + 8))(v11, v7);
  *(v4 + 16) = v33;
  return swift_endAccess();
}

uint64_t sub_23C6667C8(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 24);
  *(v4 + 24) = 0x8000000000000000;
  v9 = sub_23C5FFA08(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (!v13)
  {
    v15 = v10;
    if (v8[3] < v14)
    {
      sub_23C63D158(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_23C5FFA08(a2);
      if ((v15 & 1) == (v16 & 1))
      {
        goto LABEL_6;
      }

      sub_23C870E34();
      v9 = sub_23C872064();
      __break(1u);
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = v9;
      sub_23C64329C();
      v9 = v27;
      *(v4 + 24) = v8;
      if (v15)
      {
LABEL_8:
        v19 = (v8[7] + 8 * v9);

        MEMORY[0x23EED7170](v20);
        if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

LABEL_7:
      v17 = v9;
      sub_23C64BCC4();
      v18 = a2;
      v9 = v17;
      goto LABEL_8;
    }

LABEL_6:
    *(v4 + 24) = v8;
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  sub_23C8718D4();
LABEL_9:
  sub_23C871904();
  swift_endAccess();
  swift_beginAccess();
  v21 = *(v4 + 16);
  if (*(v21 + 16))
  {

    v22 = sub_23C5FFA08(a2);
    v23 = 0.0;
    if (v24)
    {
      v23 = *(*(v21 + 56) + 8 * v22);
    }
  }

  else
  {
    v23 = 0.0;
  }

  if (v23 > a3)
  {
    a3 = v23;
  }

  swift_beginAccess();
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_23C593F08(a2, v25, a3);
  *(v4 + 16) = v28;
  return swift_endAccess();
}

uint64_t sub_23C666A00(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = v3;
  v7 = type metadata accessor for EventTypeIdPair(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 24);
  v33 = v14;
  *(v4 + 24) = 0x8000000000000000;
  v16 = sub_23C5FFA4C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  if (v14[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 24) = v14;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_23C6434EC();
      v14 = v33;
      *(v4 + 24) = v33;
      if (v20)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_23C60C5AC(a2, v12);
    sub_23C642830(v16, v12, MEMORY[0x277D84F90], v14);
    goto LABEL_9;
  }

  sub_23C63D550(v19, isUniquelyReferenced_nonNull_native);
  v14 = v33;
  v21 = sub_23C5FFA4C(a2);
  if ((v20 & 1) != (v22 & 1))
  {
    result = sub_23C872064();
    __break(1u);
    return result;
  }

  v16 = v21;
  *(v4 + 24) = v14;
  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v23 = (v14[7] + 8 * v16);

  MEMORY[0x23EED7170](v24);
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_19:
    sub_23C8718D4();
  }

  sub_23C871904();
  swift_endAccess();
  sub_23C60C5AC(a2, v10);
  swift_beginAccess();
  v25 = *(v4 + 16);
  if (*(v25 + 16))
  {

    v26 = sub_23C5FFA4C(a2);
    v27 = 0.0;
    if (v28)
    {
      v27 = *(*(v25 + 56) + 8 * v26);
    }
  }

  else
  {
    v27 = 0.0;
  }

  if (v27 > a3)
  {
    a3 = v27;
  }

  swift_beginAccess();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_23C594158(v10, v29, a3);
  sub_23C668C40(v10);
  *(v4 + 16) = v32;
  return swift_endAccess();
}

uint64_t sub_23C666CD0(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 24);
  *(v5 + 24) = 0x8000000000000000;
  v12 = sub_23C5FF898(a2, a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (!v16)
  {
    v18 = v13;
    if (v11[3] < v17)
    {
      sub_23C63EFBC(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_23C5FF898(a2, a3);
      if ((v18 & 1) == (v19 & 1))
      {
        goto LABEL_6;
      }

      v12 = sub_23C872064();
      __break(1u);
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = v12;
      sub_23C644420();
      v12 = v29;
      *(v5 + 24) = v11;
      if (v18)
      {
LABEL_8:
        v21 = (v11[7] + 8 * v12);
        v22 = a1;
        MEMORY[0x23EED7170]();
        if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

LABEL_7:
      v20 = v12;
      sub_23C64BCC8();

      v12 = v20;
      goto LABEL_8;
    }

LABEL_6:
    *(v5 + 24) = v11;
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  sub_23C8718D4();
LABEL_9:
  sub_23C871904();
  swift_endAccess();
  swift_beginAccess();
  v23 = *(v5 + 16);
  if (*(v23 + 16))
  {

    v24 = sub_23C5FF898(a2, a3);
    v25 = 0.0;
    if (v26)
    {
      v25 = *(*(v23 + 56) + 8 * v24);
    }
  }

  else
  {
    v25 = 0.0;
  }

  if (v25 > a4)
  {
    a4 = v25;
  }

  swift_beginAccess();
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_23C594770(a2, a3, v27, a4);
  *(v5 + 16) = v30;
  return swift_endAccess();
}

void sub_23C666F2C(unint64_t a1, void *a2, double a3)
{
  v5 = v3;
  if (a1 >> 62)
  {
    v8 = sub_23C871C34();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v3[6];
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3[6] = v11;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v3[3];
  v38[0] = v13;
  v5[3] = 0x8000000000000000;
  sub_23C5FFA08(a2);
  v15 = *(v13 + 16);
  v16 = (v14 & 1) == 0;
  v10 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = v14;
  if (*(v13 + 24) < v17)
  {
    sub_23C63D158(v17, isUniquelyReferenced_nonNull_native);
    v13 = v38[0];
    sub_23C5FFA08(a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

    sub_23C870E34();
    sub_23C872064();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_9:
    v5[3] = v13;
    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_24:
  sub_23C64329C();
  v5[3] = v38[0];
  if ((v4 & 1) == 0)
  {
LABEL_10:
    sub_23C64BCC4();
    v19 = a2;
  }

LABEL_11:

  sub_23C6360C8(v20);
  swift_endAccess();
  swift_beginAccess();
  v21 = v5[5];

  v22 = sub_23C6323B8(a2, v21);

  if (v22)
  {
  }

  else
  {
    v23 = v5[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C874E20;
    *(inited + 32) = a2;
    v25 = a2;

    v26 = MEMORY[0x277D84FA0];
    do
    {
      while (1)
      {

        v26 = sub_23C64913C(v27, v26);

        v38[0] = v26;

        v28 = sub_23C649230(inited, v23);

        inited = sub_23C6495EC(v28, v38);

        if (inited >> 62)
        {
          break;
        }

        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }
      }
    }

    while (sub_23C871C34());
LABEL_18:

    sub_23C5916F4(v26);
    v30 = v29;
    v38[0] = v29;
    MEMORY[0x28223BE20](v29);
    v36[2] = v5;
    v36[3] = v38;
    sub_23C63246C(sub_23C668C9C, v36, v26);
  }

  v31 = v5[5];

  v32 = sub_23C6323B8(a2, v31);
  if (v32)
  {
    v33 = v32;

    swift_beginAccess();
    v34 = v33;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v5[2];
    v5[2] = 0x8000000000000000;
    sub_23C593F08(v34, v35, a3);

    v5[2] = v37;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23C6672DC()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_27E1FBFB0);
  __swift_project_value_buffer(v0, qword_27E1FBFB0);
  sub_23C588EAC();
  sub_23C871B54();
  return sub_23C871664();
}

void sub_23C6673A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

        sub_23C6675A4(a1, a2, v20, a3);
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

void *sub_23C667514(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_23C6673A8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_23C6675A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEA0, &qword_23C87BFE8);
  result = sub_23C871CF4();
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
    result = sub_23C871B24();
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

uint64_t sub_23C667798(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEC0, &qword_23C87C020);
  result = sub_23C871CF4();
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
    result = sub_23C8720E4();
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

void *sub_23C667984(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v165 = a4;
  v170 = a3;
  v190 = a2;
  v196[3] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v5 - 8);
  v166 = &v159 - v6;
  v164 = type metadata accessor for EventTypeIdPair(0);
  v7 = MEMORY[0x28223BE20](v164);
  v163 = (&v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v162 = (&v159 - v9);
  v174 = sub_23C870B74();
  v10 = *(v174 - 8);
  v11 = MEMORY[0x28223BE20](v174);
  v13 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v169 = &v159 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBFC8, &qword_23C87D420);
  inited = swift_initStackObject();
  v16 = MEMORY[0x277D84F90];
  *(inited + 16) = sub_23C595CB8(MEMORY[0x277D84F90]);
  v17 = inited + 16;
  v18 = sub_23C595DA8(v16);
  v171 = inited;
  *(inited + 24) = v18;
  v192 = (inited + 24);
  if (a1 >> 62)
  {
    goto LABEL_102;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v187 = v17;
  if (v19)
  {
    while (1)
    {
      v183 = a1 & 0xC000000000000001;
      v172 = a1 + 32;
      v173 = a1 & 0xFFFFFFFFFFFFFF8;
      v161 = (v10 + 48);
      v159 = (v10 + 32);
      v168 = (v10 + 8);
      v10 = 0;
      v186 = xmmword_23C874E20;
      v20 = MEMORY[0x277D84FA0];
      *(&v21 + 1) = 5;
      v180 = xmmword_23C87AC80;
      *&v21 = 136315906;
      v167 = v21;
      v160 = v13;
      v179 = a1;
      v182 = v19;
      while (1)
      {
        if (v183)
        {
          v23 = MEMORY[0x23EED7610](v10, a1);
          v24 = __OFADD__(v10++, 1);
          if (v24)
          {
            goto LABEL_100;
          }
        }

        else
        {
          if (v10 >= *(v173 + 16))
          {
            goto LABEL_101;
          }

          v23 = *(v172 + 8 * v10);

          v24 = __OFADD__(v10++, 1);
          if (v24)
          {
            goto LABEL_100;
          }
        }

        v191 = v10;
        v25 = *(v23 + 16);
        v26 = *(v23 + 24);
        v27 = OrderedEvent.linkedComponentIdentifiers()();
        v189 = v28;

        if (v27)
        {
          break;
        }

        v65 = *(v23 + 24);
        v66 = sub_23C870CA4();

        if (v66)
        {
          objc_opt_self();
          v67 = swift_dynamicCastObjCClass();
          if (v67 && (v68 = [v67 requestId]) != 0)
          {
            v69 = v68;
            objc_allocWithZone(sub_23C870E34());
            v13 = v69;
            v70 = sub_23C870E04();
            if (v70)
            {
              v71 = v70;
              sub_23C63534C(v23, v70, v25);

              goto LABEL_6;
            }
          }

          else
          {
            v13 = v66;
          }
        }

        v111 = sub_23C870CA4();
        if (!v111)
        {
          goto LABEL_139;
        }

        v112 = v111;
        ObjCClassFromObject = swift_getObjCClassFromObject();

        v114 = [ObjCClassFromObject joinability];
        if (v114 > 2)
        {
          v117 = v174;
          if ((v114 - 3) > 1)
          {
            goto LABEL_98;
          }

          v118 = sub_23C870CF4();
          if (!v118)
          {
            goto LABEL_140;
          }

          v119 = v118;
          v13 = v169;
          sub_23C870D94();

          sub_23C6664A0(v23, v13, v25);

          (*v168)(v13, v117);
        }

        else
        {
          if (v114 == 1)
          {
            v120 = sub_23C870CA4();
            if (!v120)
            {
              goto LABEL_142;
            }

            v121 = v120;
            v13 = [v120 getComponentId];

            if (!v13)
            {
              goto LABEL_91;
            }

            v188 = v23;
            v122 = v166;
            sub_23C871AB4();
            v123 = v174;
            if ((*v161)(v122, 1, v174) == 1)
            {

              sub_23C5FE4E4(v122);

              goto LABEL_6;
            }

            v124 = v160;
            v189 = *v159;
            v189(v160, v122, v123);
            result = sub_23C870CA4();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v126 = result;

            ObjectType = swift_getObjectType();
            v128 = v163;
            v189(v163 + *(v164 + 20), v124, v123);
            *v128 = ObjectType;
            v129 = v162;
            sub_23C668BDC(v128, v162);
            v13 = v188;
            sub_23C666A00(v188, v129, v25);

            sub_23C668C40(v129);
            goto LABEL_74;
          }

          if (v114 != 2)
          {
            goto LABEL_98;
          }

          v115 = sub_23C870D04();
          if (!v115)
          {
LABEL_91:

            goto LABEL_6;
          }

          v116 = v115;
          sub_23C6667C8(v23, v115, v25);
        }

LABEL_6:
        v10 = v191;
        if (v191 == v182)
        {
          goto LABEL_103;
        }
      }

      v188 = v23;
      v29 = *(v190 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
      v30 = swift_initStackObject();
      *(v30 + 16) = v186;
      *(v30 + 32) = v27;

      v181 = v27;
      v31 = v27;
      v32 = v20;
      do
      {
        while (1)
        {

          v32 = sub_23C64913C(v33, v32);

          v196[0] = v32;

          v34 = sub_23C649230(v30, v29);

          v30 = sub_23C6495EC(v34, v196);

          if (v30 >> 62)
          {
            break;
          }

          if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }
        }
      }

      while (sub_23C871C34());
LABEL_19:

      v35 = *(v190 + 32);
      v36 = swift_initStackObject();
      *(v36 + 16) = v186;
      v37 = v189;
      *(v36 + 32) = v189;

      v13 = v37;
      v38 = v20;
      do
      {
        while (1)
        {

          v38 = sub_23C64913C(v39, v38);

          v196[0] = v38;

          v40 = sub_23C649230(v36, v35);

          v36 = sub_23C6495EC(v40, v196);

          if (v36 >> 62)
          {
            break;
          }

          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }
        }
      }

      while (sub_23C871C34());
LABEL_24:

      sub_23C631F00(v38, v32);
      v42 = v41;
      v43 = swift_initStackObject();
      *(v43 + 16) = v180;
      *(v43 + 32) = v31;
      *(v43 + 40) = v13;
      v44 = v31;
      v45 = v13;
      v46 = sub_23C64913C(v43, v42);
      swift_setDeallocating();
      v47 = swift_arrayDestroy();
      v184 = v44;
      v185 = v45;
      if ((v46 & 0xC000000000000001) != 0)
      {
        break;
      }

      v72 = *(v46 + 32);
      v73 = v72 & 0x3F;
      v10 = 1;
      v74 = (1 << v72) + 63;
      v75 = v74 >> 6;
      if (v73 <= 0xD)
      {
        goto LABEL_49;
      }

      v13 = 8 * (v74 >> 6);

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v130 = swift_slowAlloc();

        v51 = sub_23C667514(v130, v75, v46, sub_23C667374);
        swift_bridgeObjectRelease_n();
        MEMORY[0x23EED8240](v130, -1, -1);
        v17 = v187;
        v84 = v188;
        v20 = MEMORY[0x277D84FA0];
LABEL_68:
        v88 = sub_23C6660B0(v51);

        if (*(v88 + 16) <= 1uLL)
        {

          v22 = v184;
          v13 = v185;
          sub_23C6361F0(v84, v22, v13, v25);
        }

        else
        {
          if (qword_27E1F8350 != -1)
          {
            swift_once();
          }

          v89 = sub_23C871654();
          __swift_project_value_buffer(v89, qword_27E1FBFB0);
          v90 = v184;
          v91 = v185;
          v13 = v90;
          v92 = v91;

          v93 = sub_23C871634();
          v94 = sub_23C871AD4();
          if (os_log_type_enabled(v93, v94))
          {
            LODWORD(v178) = v94;
            v185 = v93;
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            v196[0] = v184;
            *v95 = v167;
            v97 = sub_23C870CA4();

            if (!v97)
            {
              goto LABEL_141;
            }

            v98 = [v97 qualifiedMessageName];

            v99 = sub_23C871784();
            v101 = v100;

            v102 = sub_23C63C388(v99, v101, v196);

            *(v95 + 4) = v102;
            *(v95 + 12) = 2112;
            *(v95 + 14) = v13;
            *(v95 + 22) = 2112;
            *(v95 + 24) = v92;
            v103 = v189;
            *v96 = v181;
            v96[1] = v103;
            *(v95 + 32) = 2080;
            v104 = v13;
            v105 = v92;
            v106 = MEMORY[0x23EED71B0](v88, v174);
            v108 = v107;

            v109 = sub_23C63C388(v106, v108, v196);

            *(v95 + 34) = v109;
            v13 = v185;
            _os_log_impl(&dword_23C56D000, v185, v178, "Not ingesting linking event because it joins two ORCHESTRATOR Component Identifiers:\n%s\nwith links from %@\nto %@ joins into\nthese ORCH IDs: %s", v95, 0x2Au);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB640, &unk_23C87AF80);
            swift_arrayDestroy();
            MEMORY[0x23EED8240](v96, -1, -1);
            v110 = v184;
            swift_arrayDestroy();
            MEMORY[0x23EED8240](v110, -1, -1);
            MEMORY[0x23EED8240](v95, -1, -1);

            v17 = v187;
            a1 = v179;
LABEL_74:
            v20 = MEMORY[0x277D84FA0];
            goto LABEL_6;
          }

          swift_bridgeObjectRelease_n();
        }

        a1 = v179;
        goto LABEL_6;
      }

      v10 = 1;
LABEL_49:
      v175 = &v159;
      v176 = v75;
      MEMORY[0x28223BE20](v47);
      v177 = &v159 - ((v76 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v177, v76);
      v77 = 0;
      v17 = 0;
      a1 = v46 + 56;
      v78 = 1 << *(v46 + 32);
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      else
      {
        v79 = -1;
      }

      v80 = v79 & *(v46 + 56);
      v81 = (v78 + 63) >> 6;
LABEL_53:
      v178 = v77;
LABEL_54:
      if (v80)
      {
        v82 = __clz(__rbit64(v80));
        v80 &= v80 - 1;
        goto LABEL_61;
      }

      v83 = v17;
      v20 = MEMORY[0x277D84FA0];
      v84 = v188;
      while (1)
      {
        v17 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (v17 >= v81)
        {
          v51 = sub_23C6675A4(v177, v176, v178, v46);
          v17 = v187;
          goto LABEL_68;
        }

        v85 = *(a1 + 8 * v17);
        ++v83;
        if (v85)
        {
          v82 = __clz(__rbit64(v85));
          v80 = (v85 - 1) & v85;
LABEL_61:
          v13 = v82 | (v17 << 6);
          v10 = *(*(v46 + 48) + 8 * v13);
          v86 = sub_23C870DF4();

          if (v86 == 1)
          {
            v87 = v178;
            *&v177[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
            v24 = __OFADD__(v87, 1);
            v77 = v87 + 1;
            if (!v24)
            {
              goto LABEL_53;
            }

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
          }

          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      v19 = sub_23C871C34();
      v187 = v17;
      if (!v19)
      {
        goto LABEL_103;
      }
    }

    v20 = MEMORY[0x277D84FA0];
    v196[0] = MEMORY[0x277D84FA0];
    sub_23C871BF4();
    v48 = sub_23C871C64();
    v17 = v187;
    if (v48)
    {
      v49 = v48;
      sub_23C870E34();
      v50 = v49;
      v51 = v20;
LABEL_29:
      v194 = v50;
      swift_dynamicCast();
      v52 = sub_23C870DF4();
      v53 = v195;
      if (v52 != 1)
      {

        goto LABEL_28;
      }

      v54 = *(v51 + 16);
      if (*(v51 + 24) <= v54)
      {
        sub_23C64EF1C(v54 + 1);
      }

      v51 = v196[0];
      v55 = sub_23C871B24();
      v56 = v51 + 56;
      v57 = -1 << *(v51 + 32);
      v58 = v55 & ~v57;
      v59 = v58 >> 6;
      if (((-1 << v58) & ~*(v51 + 56 + 8 * (v58 >> 6))) != 0)
      {
        v60 = __clz(__rbit64((-1 << v58) & ~*(v51 + 56 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_42;
      }

      v61 = 0;
      v62 = (63 - v57) >> 6;
      while (++v59 != v62 || (v61 & 1) == 0)
      {
        v63 = v59 == v62;
        if (v59 == v62)
        {
          v59 = 0;
        }

        v61 |= v63;
        v64 = *(v56 + 8 * v59);
        if (v64 != -1)
        {
          v60 = __clz(__rbit64(~v64)) + (v59 << 6);
LABEL_42:
          *(v56 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
          *(*(v51 + 48) + 8 * v60) = v53;
          ++*(v51 + 16);
LABEL_28:
          v50 = sub_23C871C64();
          if (!v50)
          {
            goto LABEL_67;
          }

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_98:
    }

    v51 = v20;
LABEL_67:

    v84 = v188;
    goto LABEL_68;
  }

LABEL_103:
  v131 = sub_23C608CF4();
  v132 = v131;
  if (v131 >> 62)
  {
    v133 = sub_23C871C34();
    if (v133)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v133 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v133)
    {
LABEL_105:
      if (v133 < 1)
      {
        __break(1u);
        goto LABEL_138;
      }

      v134 = v132 & 0xC000000000000001;
      swift_beginAccess();
      swift_beginAccess();
      v135 = 0;
      v188 = v132 & 0xC000000000000001;
      do
      {
        if (v134)
        {
          v136 = MEMORY[0x23EED7610](v135, v132);
        }

        else
        {
          v136 = *(v132 + 8 * v135 + 32);
        }

        v137 = v136;
        v138 = *v192;
        if (*(*v192 + 16))
        {

          v139 = sub_23C5FFA08(v137);
          if (v140)
          {
            v191 = *(*(v138 + 56) + 8 * v139);
          }

          else
          {
            v191 = 0;
          }
        }

        else
        {
          v191 = 0;
        }

        v141 = *v17;
        if (*(*v17 + 16))
        {

          v142 = sub_23C5FFA08(v137);
          v144 = 0.0;
          if (v143)
          {
            v144 = *(*(v141 + 56) + 8 * v142);
          }

          LODWORD(v189) = v143 ^ 1;
        }

        else
        {
          LODWORD(v189) = 1;
          v144 = 0.0;
        }

        swift_beginAccess();
        v145 = sub_23C5FFA08(v137);
        if (v146)
        {
          v147 = v145;
          v148 = v133;
          v149 = v132;
          v150 = v192;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v152 = *v150;
          v193 = *v150;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_23C64329C();
            v152 = v193;
          }

          sub_23C64157C(v147, v152);

          *v150 = v152;
          v132 = v149;
          v133 = v148;
          v17 = v187;
          v134 = v188;
        }

        swift_endAccess();
        swift_beginAccess();
        v153 = sub_23C5FFA08(v137);
        v154 = v191;
        if (v155)
        {
          v156 = v153;
          v157 = swift_isUniquelyReferenced_nonNull_native();
          v158 = *v17;
          v193 = *v17;
          if (!v157)
          {
            sub_23C642FE0();
            v158 = v193;
          }

          sub_23C6413F0(v156, v158);
          *v17 = v158;
        }

        swift_endAccess();
        if (v154)
        {
          if ((v189 & 1) == 0)
          {
            sub_23C666F2C(v154, v137, v144);
          }
        }

        else
        {
        }

        ++v135;
      }

      while (v133 != v135);
    }
  }
}

uint64_t sub_23C668BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventTypeIdPair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C668C40(uint64_t a1)
{
  v2 = type metadata accessor for EventTypeIdPair(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TimestampedOrderedEvent.json(humanReadable:)(Swift::Bool humanReadable)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23C8717C4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (humanReadable)
  {
    v7 = objc_opt_self();
    TimestampedOrderedEvent.dictionaryRepresentation()();
    v8 = sub_23C8716A4();

    v19[0] = 0;
    v9 = [v7 dataWithJSONObject:v8 options:2 error:v19];

    v10 = v19[0];
    if (!v9)
    {
      v17 = v10;
      sub_23C8709B4();

      swift_willThrow();
      goto LABEL_8;
    }

    v11 = sub_23C870A34();
    v13 = v12;
  }

  else
  {
    sub_23C870964();
    swift_allocObject();
    v9 = sub_23C870954();
    v19[0] = v1;
    type metadata accessor for TimestampedOrderedEvent();
    sub_23C668EC4();
    v11 = sub_23C870944();
    v13 = v14;

    if (v2)
    {
      goto LABEL_8;
    }
  }

  sub_23C8717B4();
  v15 = sub_23C8717A4();
  if (!v16)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v15;
  v9 = v16;
  sub_23C595090(v11, v13);
LABEL_8:
  v15 = v6;
  v16 = v9;
LABEL_10:
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t sub_23C668EC4()
{
  result = qword_27E1F98B8;
  if (!qword_27E1F98B8)
  {
    type metadata accessor for TimestampedOrderedEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F98B8);
  }

  return result;
}

uint64_t sub_23C668F94()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_2814FAED8);
  __swift_project_value_buffer(v0, qword_2814FAED8);
  sub_23C588EAC();
  sub_23C871B54();
  return sub_23C871664();
}

uint64_t TimestampedOrderedEvent.__allocating_init(timestamp:orderedEvent:)(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t TimestampedOrderedEvent.init(timestamp:orderedEvent:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

NSObject *TimestampedOrderedEvent.init(biomeStoreEvent:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v86 = &v77 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v77 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v77 - v13;
  v15 = sub_23C870B74();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v81 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  v24 = [a1 eventBody];
  if (!v24)
  {
    v25 = a1;
LABEL_12:

    type metadata accessor for TimestampedOrderedEvent();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v25 = v24;
  v84 = v12;
  v85 = v7;
  v82 = v16;
  v83 = v15;
  v26 = [v24 anyEventType];
  v27 = [v25 eventData];
  if (v27)
  {
    v28 = v27;
    v29 = sub_23C870A34();
    v30 = a1;
    v32 = v31;

    v33 = sub_23C870A14();
    v34 = v32;
    a1 = v30;
    sub_23C595090(v29, v34);
  }

  else
  {
    v33 = 0;
  }

  v35 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithAnyEventType:v26 payload:v33];

  v36 = [v35 unwrap];
  if (!v36)
  {
LABEL_11:

    goto LABEL_12;
  }

  v80 = v36;
  [a1 timestamp];
  v2[2].isa = v37;
  v38 = [v25 logicalTimestamp];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 timestampInNanoseconds];
    v41 = v85;
    if (v40 <= 0)
    {
      if (qword_27E1F8358 != -1)
      {
        swift_once();
      }

      v47 = sub_23C871654();
      __swift_project_value_buffer(v47, qword_2814FAED8);
      v79 = v39;
      v48 = sub_23C871634();
      v78 = sub_23C871AD4();
      if (os_log_type_enabled(v48, v78))
      {
        v49 = swift_slowAlloc();
        v77 = a1;
        v50 = v49;
        *v49 = 134217984;
        v51 = v79;
        *(v49 + 4) = [v79 timestampInNanoseconds];

        _os_log_impl(&dword_23C56D000, v48, v78, "Failed to convert timestamp in BMSiriSELFProcessedEvent: %lld", v50, 0xCu);
        v52 = v50;
        a1 = v77;
        MEMORY[0x23EED8240](v52, -1, -1);
      }

      else
      {

        v48 = v79;
      }
    }

    else if (([v39 timestampInNanoseconds] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }

    v53 = [v39 clockIdentifier];
    if (v53)
    {
      v54 = v53;
      sub_23C870B54();

      v79 = v2;
      v46 = v82;
      v55 = *(v82 + 32);
      v56 = v23;
      v44 = v83;
      v55(v14, v56, v83);
      (*(v46 + 56))(v14, 0, 1, v44);
      v55(v21, v14, v44);
      v41 = v85;
      v2 = v79;
    }

    else
    {
      v46 = v82;
      v44 = v83;
      (*(v82 + 56))(v14, 1, 1, v83);
      sub_23C870B64();
      if ((*(v46 + 48))(v14, 1, v44) != 1)
      {
        sub_23C5FE4E4(v14);
      }
    }

    v57 = objc_allocWithZone(sub_23C870DE4());
    v43 = sub_23C870DB4();

    v45 = v84;
  }

  else
  {
    sub_23C870B64();
    v42 = objc_allocWithZone(sub_23C870DE4());
    v43 = sub_23C870DB4();
    v44 = v83;
    v45 = v84;
    v46 = v82;
    v41 = v85;
  }

  v58 = v43;
  v59 = [v25 messageUuid];
  v60 = v86;
  if (v59)
  {
    v61 = v59;
    sub_23C870B54();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  (*(v46 + 56))(v60, v62, 1, v44);
  sub_23C5AD03C(v60, v45);
  sub_23C5ACF58(v45, v41);
  v63 = objc_allocWithZone(sub_23C870D74());
  v64 = v80;
  v2[3].isa = sub_23C870CE4();
  v65 = [v25 clusterRepresentativeId];
  if (v65)
  {
    v66 = v65;
    [v65 componentName];
    v67 = [v66 uuid];
    if (v67)
    {
      v68 = v81;
      v69 = v67;
      sub_23C870B54();

      v70 = a1;
      v71 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v72 = sub_23C870B24();
      [v71 initWithNSUUID_];

      v73 = objc_allocWithZone(sub_23C870E34());
      a1 = v70;
      v74 = v84;
      sub_23C870E04();

      v75 = v68;
      v45 = v74;
      (*(v82 + 8))(v75, v83);
    }

    else
    {
    }
  }

  sub_23C870D64();

  sub_23C5FE4E4(v45);
  return v2;
}

uint64_t TimestampedOrderedEvent.init(rawEvent:)(void *a1)
{
  v2 = v1;
  v4 = sub_23C870C54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 timestamp];
  *(v1 + 16) = v8;
  v9 = [a1 eventBody];
  if (!v9)
  {
    if (qword_27E1F8358 != -1)
    {
      swift_once();
    }

    v14 = sub_23C871654();
    __swift_project_value_buffer(v14, qword_2814FAED8);
    v15 = sub_23C871634();
    v16 = sub_23C871AD4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23C56D000, v15, v16, "Empty message body", v17, 2u);
      MEMORY[0x23EED8240](v17, -1, -1);
    }

    goto LABEL_26;
  }

  v10 = v9;
  sub_23C870C44();

  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277D552A8])
  {
    if (qword_27E1F8358 != -1)
    {
      swift_once();
    }

    v18 = sub_23C871654();
    __swift_project_value_buffer(v18, qword_2814FAED8);
    v19 = sub_23C871634();
    v20 = sub_23C871AD4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23C56D000, v19, v20, "Unknown event body type", v21, 2u);
      MEMORY[0x23EED8240](v21, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    goto LABEL_26;
  }

  (*(v5 + 96))(v7, v4);
  v11 = *v7;
  if ([*v7 anyEventType] != 6)
  {
    if (qword_27E1F8358 != -1)
    {
      swift_once();
    }

    v22 = sub_23C871654();
    __swift_project_value_buffer(v22, qword_2814FAED8);
    v23 = sub_23C871634();
    v24 = sub_23C871AD4();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_25;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Not an ordered any event, skipping";
    goto LABEL_24;
  }

  sub_23C870D74();
  v11 = v11;
  v12 = sub_23C870C94();
  if (!v12)
  {
    if (qword_27E1F8358 != -1)
    {
      swift_once();
    }

    v27 = sub_23C871654();
    __swift_project_value_buffer(v27, qword_2814FAED8);
    v23 = sub_23C871634();
    v24 = sub_23C871AD4();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_25;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Failed to convert ordered any event to ordered event";
LABEL_24:
    _os_log_impl(&dword_23C56D000, v23, v24, v26, v25, 2u);
    MEMORY[0x23EED8240](v25, -1, -1);
LABEL_25:

LABEL_26:
    type metadata accessor for TimestampedOrderedEvent();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = v12;

  *(v2 + 24) = v13;
  return v2;
}

uint64_t sub_23C669CA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x456465726564726FLL;
  }

  else
  {
    v3 = 0x6D617473656D6974;
  }

  if (v2)
  {
    v4 = 0xE900000000000070;
  }

  else
  {
    v4 = 0xEC000000746E6576;
  }

  if (*a2)
  {
    v5 = 0x456465726564726FLL;
  }

  else
  {
    v5 = 0x6D617473656D6974;
  }

  if (*a2)
  {
    v6 = 0xEC000000746E6576;
  }

  else
  {
    v6 = 0xE900000000000070;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23C872014();
  }

  return v8 & 1;
}

uint64_t sub_23C669D58()
{
  sub_23C8720F4();
  sub_23C871804();

  return sub_23C872124();
}

uint64_t sub_23C669DE8(uint64_t a1)
{
  sub_23C871804();
}

uint64_t sub_23C669E64(uint64_t a1)
{
  sub_23C8720F4();
  sub_23C871804();

  return sub_23C872124();
}

uint64_t sub_23C669EF0@<X0>(char *a2@<X8>)
{
  v3 = sub_23C871EC4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_23C669F50(uint64_t *a1@<X8>)
{
  v2 = 0x6D617473656D6974;
  if (*v1)
  {
    v2 = 0x456465726564726FLL;
  }

  v3 = 0xE900000000000070;
  if (*v1)
  {
    v3 = 0xEC000000746E6576;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23C669F9C()
{
  if (*v0)
  {
    return 0x456465726564726FLL;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t sub_23C669FE4@<X0>(char *a3@<X8>)
{
  v4 = sub_23C871EC4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_23C66A048(uint64_t a1)
{
  v2 = sub_23C66A77C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C66A084(uint64_t a1)
{
  v2 = sub_23C66A77C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23C66A0C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBFD0, &qword_23C87D428);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C66A77C();
  sub_23C872154();
  v12 = 0;
  sub_23C871F84();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v10[15] = 1;
    sub_23C870D74();
    sub_23C66A864(&qword_27E1FBFE0, 255, MEMORY[0x277D566D8], MEMORY[0x277D566E0]);
    sub_23C871F94();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TimestampedOrderedEvent.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  TimestampedOrderedEvent.init(from:)(a1);
  return v2;
}

uint64_t TimestampedOrderedEvent.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBFE8, &qword_23C87D430);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C66A77C();
  sub_23C872144();
  if (v2)
  {
    type metadata accessor for TimestampedOrderedEvent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = 0;
    sub_23C871F14();
    *(v1 + 16) = v8;
    sub_23C870D74();
    v11 = 1;
    sub_23C66A864(&qword_27E1FBFF0, 255, MEMORY[0x277D566D8], MEMORY[0x277D566F0]);
    sub_23C871F24();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t static TimestampedOrderedEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_23C870D74();
  return sub_23C870D24() & 1;
}

BOOL static TimestampedOrderedEvent.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  sub_23C870D74();
  return sub_23C870D14() & 1;
}

uint64_t TimestampedOrderedEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL sub_23C66A610(uint64_t *a1, uint64_t *a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  sub_23C870D74();
  return sub_23C870D14() & 1;
}

uint64_t sub_23C66A670@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23C870D34();
  *a1 = result;
  return result;
}

uint64_t sub_23C66A6A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TimestampedOrderedEvent();
  v5 = swift_allocObject();
  result = TimestampedOrderedEvent.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_23C66A71C(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  sub_23C870D74();
  return sub_23C870D24() & 1;
}

unint64_t sub_23C66A77C()
{
  result = qword_27E1FBFD8;
  if (!qword_27E1FBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBFD8);
  }

  return result;
}

uint64_t sub_23C66A864(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_23C66A9BC()
{
  result = qword_27E1FC008;
  if (!qword_27E1FC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FC008);
  }

  return result;
}

unint64_t sub_23C66AA14()
{
  result = qword_27E1FC010;
  if (!qword_27E1FC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FC010);
  }

  return result;
}

unint64_t sub_23C66AA6C()
{
  result = qword_27E1FC018;
  if (!qword_27E1FC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FC018);
  }

  return result;
}

uint64_t Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.getter()
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);
  sub_23C870F54();
  if (v2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

void *sub_23C66AB78@<X0>(_DWORD *a1@<X8>)
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);
  result = sub_23C870F54();
  v3 = v4;
  if (v5)
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_23C66AC3C(int *a1)
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);
  return sub_23C870F74();
}

uint64_t Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.setter(int a1)
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);
  return sub_23C870F74();
}

void (*Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  v4[1] = qword_27E1FC038;
  v4[2] = sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);
  sub_23C870F54();
  v5 = *(v4 + 6);
  if (*(v4 + 28))
  {
    v5 = 0;
  }

  *(v4 + 8) = v5;
  return sub_23C66AEB4;
}

void sub_23C66AEB4(uint64_t *a1)
{
  v1 = *a1;
  *(*a1 + 24) = *(*a1 + 32);
  sub_23C870F74();

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasToolKitPrototoolKitProtoVersion.getter()
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1FC038;
  v1 = sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);

  return MEMORY[0x28217E180](v0, v1);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearToolKitPrototoolKitProtoVersion()()
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1FC038;
  v1 = sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);

  MEMORY[0x28217E190](v0, v1);
}

uint64_t sub_23C66B040()
{
  v0 = sub_23C870FA4();
  __swift_allocate_value_buffer(v0, qword_27E1FC020);
  __swift_project_value_buffer(v0, qword_27E1FC020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFE0, &qword_23C889BC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23C873D10;
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1FC038;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFE8, &qword_23C889BC8);
  *(v1 + 64) = sub_23C717068();
  *(v1 + 32) = v2;

  return sub_23C870F94();
}

uint64_t sub_23C66B168()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFE8, &qword_23C889BC8);
  swift_allocObject();
  result = sub_23C870F44();
  qword_27E1FC038 = result;
  return result;
}

uint64_t ToolKitProtoExtensions_ToolKitProtoVersion.getter()
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }
}

uint64_t sub_23C66B22C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC040);
  __swift_project_value_buffer(v0, qword_27E1FC040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875590;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RuntimePlatform_UNSPECIFIED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RuntimePlatform_PHONE";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RuntimePlatform_PAD";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RuntimePlatform_MACINTOSH";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RuntimePlatform_WATCH";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RuntimePlatform_TV";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RuntimePlatform_VISION";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C66B5AC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC058);
  __swift_project_value_buffer(v0, qword_27E1FC058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "custom";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C66B7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFA0, &qword_23C889B80);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1FAB28, &unk_23C889C40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAB28, &unk_23C889C40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FEFA0, &qword_23C889B80);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEFA0, &qword_23C889B80);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEFA0, &qword_23C889B80);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEFA0, &qword_23C889B80);
    return sub_23C585C34(v32, &qword_27E1FEFA0, &qword_23C889B80);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEFA0, &qword_23C889B80);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAB28, &unk_23C889C40);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C66BDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFD8, &qword_23C889BB8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1FAB28, &unk_23C889C40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAB28, &unk_23C889C40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEFD8, &qword_23C889BB8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDA90, type metadata accessor for ToolKitProtoTypeIdentifier.Custom, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Custom);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEFD8, &qword_23C889BB8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEFD8, &qword_23C889BB8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEFD8, &qword_23C889BB8);
    return sub_23C585C34(v32, &qword_27E1FEFD8, &qword_23C889BB8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEFD8, &qword_23C889BB8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAB28, &unk_23C889C40);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoTypeIdentifier.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FAB28, &unk_23C889C40);
  v11 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C66C72C(v3, a1, a2, a3);
  }

  else
  {
    sub_23C66C4F4(v3, a1, a2, a3);
  }

  result = sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for ToolKitProtoTypeIdentifier(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C66C4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAB28, &unk_23C889C40);
  v11 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAB28, &unk_23C889C40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  __break(1u);
  return result;
}

uint64_t sub_23C66C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAB28, &unk_23C889C40);
  v11 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAB28, &unk_23C889C40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_23C716EF0(&qword_27E1FDA90, type metadata accessor for ToolKitProtoTypeIdentifier.Custom, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Custom);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  __break(1u);
  return result;
}

uint64_t sub_23C66CA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB30, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C66CAB4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);

  return sub_23C8711F4();
}

uint64_t sub_23C66CB20(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);

  return sub_23C871204();
}

uint64_t sub_23C66CBF0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC080);
  __swift_project_value_buffer(v0, qword_27E1FC080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23C87D6D0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "none_p";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "number";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "decimal";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "string";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "date";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dateComponents";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "url";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "dictionary";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "attributedString";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "measurement";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "currencyAmount";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "paymentMethod";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "placemark";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "person";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "file";
  *(v37 + 8) = 4;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "app";
  *(v39 + 1) = 3;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "searchableItem";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 23;
          goto LABEL_23;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 24;
          goto LABEL_23;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 25;
          goto LABEL_23;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 26;
          goto LABEL_23;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 27;
          goto LABEL_23;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 28;
          goto LABEL_23;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 29;
          goto LABEL_23;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 30;
          goto LABEL_23;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 31;
          goto LABEL_23;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 32;
          goto LABEL_23;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 33;
          goto LABEL_23;
        case 12:
          sub_23C66D6A8(a1, v5, a2, a3);
          break;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 34;
          goto LABEL_23;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 35;
          goto LABEL_23;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 36;
          goto LABEL_23;
        case 16:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 37;
          goto LABEL_23;
        case 17:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 38;
          goto LABEL_23;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 39;
          goto LABEL_23;
        case 19:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 40;
LABEL_23:
          sub_23C66D45C(v11, v12, v13, v14, v15);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C66D45C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v20 = a2;
  sub_23C5855B0(v12, v10, &qword_27E1FEBC8, &qword_23C889840);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_23C585C34(v10, &qword_27E1FEBC8, &qword_23C889840);
  if (v15 == 1)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v16 = v20;
  if (*v20 != 41)
  {
    sub_23C871054();
  }

  v17 = v21;
  result = sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  *v16 = v17;
  return result;
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(*v3)
  {
    case 0x17u:
      result = sub_23C66D9E4(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x18u:
      result = sub_23C66DB34(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x19u:
      result = sub_23C66DC84(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Au:
      result = sub_23C66DDD4(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Bu:
      result = sub_23C66DF24(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Cu:
      result = sub_23C66E074(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Du:
      result = sub_23C66E1C4(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Eu:
      result = sub_23C66E314(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Fu:
      result = sub_23C66E464(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x20u:
      result = sub_23C66E5B4(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x21u:
      result = sub_23C66E704(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x22u:
      result = sub_23C66E8D0(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x23u:
      result = sub_23C66EA20(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x24u:
      result = sub_23C66EB70(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x25u:
      result = sub_23C66ECC0(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x26u:
      result = sub_23C66EE10(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x27u:
      result = sub_23C66EF60(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x28u:
      result = sub_23C66F0B0(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x29u:
      goto LABEL_5;
    default:
      result = sub_23C66E854(v3, a1, a2, a3);
      if (!v4)
      {
LABEL_5:
        type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
        result = sub_23C870F14();
      }

      break;
  }

  return result;
}

uint64_t sub_23C66D9E4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 23)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66DB34(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 24)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66DC84(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 25)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66DDD4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 26)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66DF24(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 27)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E074(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 28)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E1C4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 29)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E314(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 30)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E464(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 31)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E5B4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 32)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E704(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 33)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_23C66E854(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result - 23 < 0x13)
  {
    __break(1u);
  }

  else
  {
    sub_23C70BFFC();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C66E8D0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 34)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66EA20(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 35)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66EB70(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 36)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66ECC0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 37)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66EE10(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 38)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66EF60(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 39)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66F0B0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 40)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66F24C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_23C8720F4();
  a1(0);
  sub_23C716EF0(a2, a3, a4);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C66F354(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB28, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C66F3F4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);

  return sub_23C8711F4();
}

uint64_t sub_23C66F460(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);

  return sub_23C871204();
}

uint64_t sub_23C66F4E0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC098);
  __swift_project_value_buffer(v0, qword_27E1FC098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_23C8755B0;
  v4 = v51 + v3;
  v5 = v51 + v3 + v1[14];
  *(v51 + v3) = 0;
  *v5 = "MeasurementUnitType_UNSPECIFIED";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v51 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "MeasurementUnitType_LENGTH";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MeasurementUnitType_MASS";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MeasurementUnitType_TEMPERATURE";
  *(v13 + 1) = 31;
  v13[16] = 2;
  v8();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MeasurementUnitType_VOLUME";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "MeasurementUnitType_SPEED";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "MeasurementUnitType_ENERGY";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "MeasurementUnitType_DURATION";
  *(v21 + 1) = 28;
  v21[16] = 2;
  v8();
  v22 = v51 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MeasurementUnitType_ACCELERATION";
  *(v22 + 8) = 32;
  *(v22 + 16) = 2;
  v8();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MeasurementUnitType_ANGLE";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v8();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "MeasurementUnitType_AREA";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v8();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "MeasurementUnitType_CONCENTRATION_MASS";
  *(v28 + 1) = 38;
  v28[16] = 2;
  v8();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "MeasurementUnitType_DISPERSION";
  *(v30 + 1) = 30;
  v30[16] = 2;
  v8();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "MeasurementUnitType_ELECTRIC_CHARGE";
  *(v32 + 1) = 35;
  v32[16] = 2;
  v8();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "MeasurementUnitType_ELECTRIC_CURRENT";
  *(v34 + 1) = 36;
  v34[16] = 2;
  v8();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "MeasurementUnitType_ELECTRIC_POTENTIAL_DIFFERENCE";
  *(v36 + 1) = 49;
  v36[16] = 2;
  v8();
  v37 = v51 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "MeasurementUnitType_ELECTRIC_RESISTANCE";
  *(v37 + 8) = 39;
  *(v37 + 16) = 2;
  v8();
  v38 = (v51 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "MeasurementUnitType_FREQUENCY";
  *(v39 + 1) = 29;
  v39[16] = 2;
  v8();
  v40 = (v51 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "MeasurementUnitType_FUEL_EFFICIENCY";
  *(v41 + 1) = 35;
  v41[16] = 2;
  v8();
  v42 = (v51 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "MeasurementUnitType_ILLUMINANCE";
  *(v43 + 1) = 31;
  v43[16] = 2;
  v8();
  v44 = (v51 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "MeasurementUnitType_INFORMATION_STORAGE";
  *(v45 + 1) = 39;
  v45[16] = 2;
  v8();
  v46 = (v51 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "MeasurementUnitType_POWER";
  *(v47 + 1) = 25;
  v47[16] = 2;
  v8();
  v48 = (v51 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "MeasurementUnitType_PRESSURE";
  *(v49 + 1) = 28;
  v49[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C66FC30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD000000000000016;
  *a5 = 0x800000023C8ACF90;
  return result;
}

uint64_t sub_23C66FCC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC0C0);
  __swift_project_value_buffer(v0, qword_27E1FC0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C66FF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB20, type metadata accessor for ToolKitProtoTypeIdentifier.Custom, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Custom);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C670038(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDA90, type metadata accessor for ToolKitProtoTypeIdentifier.Custom, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Custom);

  return sub_23C8711F4();
}

uint64_t sub_23C6700A4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDA90, type metadata accessor for ToolKitProtoTypeIdentifier.Custom, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Custom);

  return sub_23C871204();
}

uint64_t sub_23C67013C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC0D8);
  __swift_project_value_buffer(v0, qword_27E1FC0D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23C87D6E0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mailAccount";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mailAddressee";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "mailMessage";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mailbox";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "intentMessage";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "messageGroup";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "messageParticipants";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "uniqueEntity";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "intentUpdatableEntity";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "urlRepresentable";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "visualSearch";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "visualSearchOcr";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "assistantSchema";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "updatableEntity";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "persistentFileIdentifiable";
  *(v36 + 1) = 26;
  v36[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoSystemTypeProtocol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
          goto LABEL_5;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 4;
          goto LABEL_5;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_5;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 7;
          goto LABEL_5;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_5;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 9;
          goto LABEL_5;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 10;
          goto LABEL_5;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 11;
          goto LABEL_5;
        case 10:
          sub_23C670DB4(v5, a1, a2, a3);
          break;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 12;
          goto LABEL_5;
        case 12:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 14:
          sub_23C671364(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_23C670A2C(v11, v12, v13, v14, &qword_27E1FAC50, &qword_23C878FD8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind, v15);
          break;
        case 16:
          sub_23C671920(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C670A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v37 = a8;
  v35 = a7;
  v36 = a6;
  v38 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v32 - v17;
  v19 = sub_23C870E84();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  v21 = v39;
  sub_23C871094();
  v39 = v21;
  if (v21)
  {
    return sub_23C585C34(v18, &qword_27E1FEBC8, &qword_23C889840);
  }

  v32[1] = a4;
  v33 = v12;
  v34 = a5;
  sub_23C5855B0(v18, v16, &qword_27E1FEBC8, &qword_23C889840);
  v22 = (*(v20 + 48))(v16, 1, v19);
  sub_23C585C34(v16, &qword_27E1FEBC8, &qword_23C889840);
  if (v22 == 1)
  {
    return sub_23C585C34(v18, &qword_27E1FEBC8, &qword_23C889840);
  }

  v24 = v33;
  v25 = v34;
  v26 = v36;
  sub_23C5855B0(v38, v33, v34, v36);
  v27 = v35(0);
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v24, 1, v27);
  sub_23C585C34(v24, v25, v26);
  if (v29 != 1)
  {
    v30 = v39;
    sub_23C871054();
    if (v30)
    {
      return sub_23C585C34(v18, &qword_27E1FEBC8, &qword_23C889840);
    }
  }

  sub_23C585C34(v18, &qword_27E1FEBC8, &qword_23C889840);
  v31 = v38;
  sub_23C585C34(v38, v34, v26);
  swift_storeEnumTagMultiPayload();
  return (*(v28 + 56))(v31, 0, 1, v27);
}

uint64_t sub_23C670DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFC0, &qword_23C889BA0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1FAC50, &qword_23C878FD8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC50, &qword_23C878FD8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FEFC0, &qword_23C889BA0);
      v31 = v39;
      sub_23C716FA0(v17, v39, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDAB8, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEFC0, &qword_23C889BA0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEFC0, &qword_23C889BA0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEFC0, &qword_23C889BA0);
    return sub_23C585C34(v32, &qword_27E1FEFC0, &qword_23C889BA0);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v32, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEFC0, &qword_23C889BA0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC50, &qword_23C878FD8);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C671364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFC8, &qword_23C889BA8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1FAC50, &qword_23C878FD8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC50, &qword_23C878FD8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEFC8, &qword_23C889BA8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDAD0, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEFC8, &qword_23C889BA8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEFC8, &qword_23C889BA8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEFC8, &qword_23C889BA8);
    return sub_23C585C34(v32, &qword_27E1FEFC8, &qword_23C889BA8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEFC8, &qword_23C889BA8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC50, &qword_23C878FD8);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C671920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFD0, &qword_23C889BB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1FAC50, &qword_23C878FD8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC50, &qword_23C878FD8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E1FEFD0, &qword_23C889BB0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDAE8, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEFD0, &qword_23C889BB0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEFD0, &qword_23C889BB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEFD0, &qword_23C889BB0);
    return sub_23C585C34(v32, &qword_27E1FEFD0, &qword_23C889BB0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEFD0, &qword_23C889BB0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC50, &qword_23C878FD8);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoSystemTypeProtocol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FAC50, &qword_23C878FD8);
  v11 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C674008(v3, a1, a2, a3);
        goto LABEL_22;
      case 2u:
        sub_23C67448C(v3, a1, a2, a3);
        goto LABEL_22;
      case 3u:
        result = sub_23C672244(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 4u:
        result = sub_23C672490(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 5u:
        result = sub_23C6726DC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 6u:
        result = sub_23C672928(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 7u:
        result = sub_23C672B74(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 8u:
        result = sub_23C672DC0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 9u:
        result = sub_23C67300C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xAu:
        result = sub_23C673258(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        result = sub_23C6734A4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xCu:
        result = sub_23C673924(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xDu:
        result = sub_23C673B70(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_23C673DBC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_23C674240(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C6736F0(v3, a1, a2, a3);
LABEL_22:
        result = sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
  return sub_23C870F14();
}

uint64_t sub_23C672244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 3)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C672490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 4)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6726DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 5)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C672928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 6)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C672B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 7)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C672DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 8)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C67300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 9)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C673258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 10)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6734A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 11)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6736F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC50, &qword_23C878FD8);
  v11 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC50, &qword_23C878FD8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    sub_23C716EF0(&qword_27E1FDAB8, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C673924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 12)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C673B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C673DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C674008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC50, &qword_23C878FD8);
  v11 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC50, &qword_23C878FD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    sub_23C716EF0(&qword_27E1FDAD0, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C674240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C67448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC50, &qword_23C878FD8);
  v11 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC50, &qword_23C878FD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    sub_23C716EF0(&qword_27E1FDAE8, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C674774(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB18, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C674814(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);

  return sub_23C8711F4();
}

uint64_t sub_23C674880(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);

  return sub_23C871204();
}

uint64_t sub_23C674900()
{
  result = MEMORY[0x23EED7100](0xD000000000000016, 0x800000023C8AF1D0);
  qword_27E1FC0F0 = 0xD00000000000001ALL;
  *algn_27E1FC0F8 = 0x800000023C8ACFB0;
  return result;
}

uint64_t sub_23C674AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB10, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C674B60(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDAB8, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return sub_23C8711F4();
}

uint64_t sub_23C674BCC(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDAB8, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return sub_23C871204();
}

uint64_t sub_23C674C48()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8ADBD0);
  qword_27E1FC118 = 0xD00000000000001ALL;
  unk_27E1FC120 = 0x800000023C8ACFB0;
  return result;
}

uint64_t sub_23C674E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB08, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C674EA8(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDAD0, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return sub_23C8711F4();
}

uint64_t sub_23C674F14(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDAD0, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return sub_23C871204();
}

uint64_t sub_23C674F94()
{
  result = MEMORY[0x23EED7100](0xD00000000000001BLL, 0x800000023C8AF1B0);
  qword_27E1FC140 = 0xD00000000000001ALL;
  *algn_27E1FC148 = 0x800000023C8ACFB0;
  return result;
}

uint64_t sub_23C67515C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB00, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6751FC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDAE8, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return sub_23C8711F4();
}

uint64_t sub_23C675268(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDAE8, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return sub_23C871204();
}

uint64_t sub_23C6753C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAF8, type metadata accessor for ToolKitProtoTypeDefinition, &protocol conformance descriptor for ToolKitProtoTypeDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C675468(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDB00, type metadata accessor for ToolKitProtoTypeDefinition, &protocol conformance descriptor for ToolKitProtoTypeDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6754D4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDB00, type metadata accessor for ToolKitProtoTypeDefinition, &protocol conformance descriptor for ToolKitProtoTypeDefinition);

  return sub_23C871204();
}

uint64_t sub_23C675550()
{
  result = MEMORY[0x23EED7100](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27E1FC180 = 0xD000000000000016;
  *algn_27E1FC188 = 0x800000023C8ACFD0;
  return result;
}

uint64_t sub_23C6755E8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC190);
  __swift_project_value_buffer(v0, qword_27E1FC190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entity";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "enumeration";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDefinition.Version1.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_23C6764B8(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_23C676A74(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_23C67594C(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C675EFC(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C67594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFA0, &qword_23C889B80);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1FAB08, &qword_23C878EE0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAB08, &qword_23C878EE0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FEFA0, &qword_23C889B80);
      v31 = v39;
      sub_23C716FA0(v17, v39, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEFA0, &qword_23C889B80);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEFA0, &qword_23C889B80);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEFA0, &qword_23C889B80);
    return sub_23C585C34(v32, &qword_27E1FEFA0, &qword_23C889B80);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v32, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEFA0, &qword_23C889B80);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAB08, &qword_23C878EE0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C675EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFA8, &qword_23C889B88);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1FAB08, &qword_23C878EE0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAB08, &qword_23C878EE0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEFA8, &qword_23C889B88);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDB28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEFA8, &qword_23C889B88);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEFA8, &qword_23C889B88);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEFA8, &qword_23C889B88);
    return sub_23C585C34(v32, &qword_27E1FEFA8, &qword_23C889B88);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEFA8, &qword_23C889B88);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAB08, &qword_23C878EE0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6764B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFB0, &qword_23C889B90);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1FAB08, &qword_23C878EE0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAB08, &qword_23C878EE0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E1FEFB0, &qword_23C889B90);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDB60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEFB0, &qword_23C889B90);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEFB0, &qword_23C889B90);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEFB0, &qword_23C889B90);
    return sub_23C585C34(v32, &qword_27E1FEFB0, &qword_23C889B90);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEFB0, &qword_23C889B90);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAB08, &qword_23C878EE0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C676A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFB8, &qword_23C889B98);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1FAB08, &qword_23C878EE0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAB08, &qword_23C878EE0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E1FEFB8, &qword_23C889B98);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDB98, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEFB8, &qword_23C889B98);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEFB8, &qword_23C889B98);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEFB8, &qword_23C889B98);
    return sub_23C585C34(v32, &qword_27E1FEFB8, &qword_23C889B98);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEFB8, &qword_23C889B98);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAB08, &qword_23C878EE0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoTypeDefinition.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E1FAB08, &qword_23C878EE0);
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C677670(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6778A8(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C677438(v3, a1, a2, a3);
  }

  else
  {
    sub_23C677204(v3, a1, a2, a3);
  }

  result = sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C677204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAB08, &qword_23C878EE0);
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAB08, &qword_23C878EE0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_23C677438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAB08, &qword_23C878EE0);
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAB08, &qword_23C878EE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    sub_23C716EF0(&qword_27E1FDB28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_23C677670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAB08, &qword_23C878EE0);
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAB08, &qword_23C878EE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    sub_23C716EF0(&qword_27E1FDB60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_23C6778A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAB08, &qword_23C878EE0);
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAB08, &qword_23C878EE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    sub_23C716EF0(&qword_27E1FDB98, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_23C677B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C677C3C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);

  return sub_23C8711F4();
}

uint64_t sub_23C677CA8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);

  return sub_23C871204();
}

uint64_t sub_23C677D28()
{
  if (qword_27E1F83E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC180;
  v2 = *algn_27E1FC188;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x797469746E452ELL, 0xE700000000000000);

  qword_27E1FC1A8 = v1;
  unk_27E1FC1B0 = v2;
  return result;
}

uint64_t sub_23C677DF4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC1B8);
  __swift_project_value_buffer(v0, qword_27E1FC1B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "properties";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "runtimeRequirements";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "displayRepresentation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sampleInvocations";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "systemProtocols";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "runtimeFlags";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "coercions";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          v11 = v4;
          if (result == 5)
          {
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
          }

          else
          {
            type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
            sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_23C70ACAC();
          sub_23C871064();
        }

        else if (result == 8)
        {
          v11 = v4;
          type metadata accessor for ToolKitProtoCoercionDefinition(0);
          sub_23C716EF0(&qword_27E1FD518, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);
          goto LABEL_5;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v11 = v4;
          type metadata accessor for ToolKitProtoRuntimeRequirement(0);
          sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
          goto LABEL_5;
        }

        sub_23C67850C(a1, v5, a2, a3);
      }

      else if (result == 1)
      {
        sub_23C678458(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        v11 = v4;
        type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
        sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
LABEL_5:
        v4 = v11;
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C678458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C67850C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C678900(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
      sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_23C8712F4();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
      sub_23C8712F4();
    }

    sub_23C678B1C(v3, a1, a2, a3);
    if (*(v3[2] + 16))
    {
      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
      sub_23C8712F4();
    }

    if (*(v3[3] + 16))
    {
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);
      sub_23C8712F4();
    }

    if (*(v3[4] + 16))
    {
      sub_23C70ACAC();
      sub_23C871234();
    }

    if (*(v3[5] + 16))
    {
      type metadata accessor for ToolKitProtoCoercionDefinition(0);
      sub_23C716EF0(&qword_27E1FD518, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);
      sub_23C8712F4();
    }

    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C678900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  sub_23C5855B0(a1 + *(v12 + 40), v7, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C678B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  sub_23C5855B0(a1 + *(v12 + 44), v7, &qword_27E1FBAF8, &qword_23C87B960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBAF8, &qword_23C87B960);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_23C678D84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 44);
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v9;
  *(a2 + 2) = v9;
  *(a2 + 3) = v9;
  *(a2 + 4) = v9;
  *(a2 + 5) = v9;
  return result;
}

uint64_t sub_23C678EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAE8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C678F50(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDB28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity);

  return sub_23C8711F4();
}

uint64_t sub_23C678FBC(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDB28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity);

  return sub_23C871204();
}

uint64_t sub_23C67903C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC1D0);
  __swift_project_value_buffer(v0, qword_27E1FC1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RuntimeFlags_UNSPECIFIED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RuntimeFlags_TRANSIENT_APP_ENTITY";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C679260()
{
  if (qword_27E1F83F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC1A8;
  v2 = qword_27E1FC1B0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x747265706F72502ELL, 0xE900000000000079);

  qword_27E1FC1E8 = v1;
  unk_27E1FC1F0 = v2;
  return result;
}

uint64_t sub_23C679330()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC1F8);
  __swift_project_value_buffer(v0, qword_27E1FC1F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_23C679618(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C679618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_23C8712C4(), !v4))
    {
      result = sub_23C6797A8(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6797A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C679A10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C679AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAE0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C679B90(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return sub_23C8711F4();
}

uint64_t sub_23C679BFC(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return sub_23C871204();
}

uint64_t sub_23C679C7C()
{
  if (qword_27E1F83E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC180;
  v2 = *algn_27E1FC188;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6172656D756E452ELL, 0xEC0000006E6F6974);

  qword_27E1FC210 = v1;
  *algn_27E1FC218 = v2;
  return result;
}

uint64_t sub_23C679D50()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC220);
  __swift_project_value_buffer(v0, qword_27E1FC220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "cases";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "runtimeRequirements";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "kind";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "systemProtocols";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        break;
      }

      if (result == 4)
      {
        sub_23C67A32C(a1, v5, a2, a3);
        goto LABEL_5;
      }

      if (result != 5)
      {
        if (result != 6)
        {
          goto LABEL_5;
        }

        v11 = v4;
        type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
        sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);
LABEL_16:
        v4 = v11;
        goto LABEL_19;
      }

      sub_23C70AD00();
      sub_23C8710A4();
LABEL_5:
      result = sub_23C871044();
    }

    if (result == 1)
    {
      sub_23C67A278(a1, v5, a2, a3);
      goto LABEL_5;
    }

    if (result != 2)
    {
      if (result != 3)
      {
        goto LABEL_5;
      }

      v11 = v4;
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
      goto LABEL_16;
    }

    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
    sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
LABEL_19:
    sub_23C871194();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_23C67A278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C67A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C67A628(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
      sub_23C8712F4();
    }

    if (*(*(v3 + 8) + 16))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
      sub_23C8712F4();
    }

    sub_23C67A844(v3, a1, a2, a3);
    if (*(v3 + 16))
    {
      sub_23C70AD00();
      sub_23C871254();
    }

    if (*(*(v3 + 24) + 16))
    {
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);
      sub_23C8712F4();
    }

    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C67A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  sub_23C5855B0(a1 + *(v12 + 32), v7, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C67A844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  sub_23C5855B0(a1 + *(v12 + 36), v7, &qword_27E1FBAF8, &qword_23C87B960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBAF8, &qword_23C87B960);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_23C67AAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 36);
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_23C67ABD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAD8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C67AC78(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDB60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return sub_23C8711F4();
}

uint64_t sub_23C67ACE4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDB60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return sub_23C871204();
}

uint64_t sub_23C67AD64()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC238);
  __swift_project_value_buffer(v0, qword_27E1FC238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Kind_UNKNOWN";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Kind_APP_ENUM";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Kind_ACTION_ENUM";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C67AFD4()
{
  if (qword_27E1F8420 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC210;
  v2 = *algn_27E1FC218;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x657361432ELL, 0xE500000000000000);

  qword_27E1FC250 = v1;
  *algn_27E1FC258 = v2;
  return result;
}

uint64_t sub_23C67B09C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC260);
  __swift_project_value_buffer(v0, qword_27E1FC260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C67B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C67B3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C67B6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAD0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C67B758(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return sub_23C8711F4();
}

uint64_t sub_23C67B7C4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return sub_23C871204();
}

uint64_t sub_23C67B870()
{
  if (qword_27E1F83E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC180;
  v2 = *algn_27E1FC188;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x79726575512ELL, 0xE600000000000000);

  qword_27E1FC278 = v1;
  unk_27E1FC280 = v2;
  return result;
}

uint64_t sub_23C67B938()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC288);
  __swift_project_value_buffer(v0, qword_27E1FC288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C67BB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_23C8711A4();
}

uint64_t sub_23C67BC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF0, &unk_23C889C60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FEDF0, &unk_23C889C60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEDF0, &unk_23C889C60);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t sub_23C67BF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAC8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C67BFF8(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDB98, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query);

  return sub_23C8711F4();
}

uint64_t sub_23C67C064(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDB98, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query);

  return sub_23C871204();
}

uint64_t sub_23C67C0E4()
{
  if (qword_27E1F8448 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC278;
  v2 = qword_27E1FC280;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8AF0C0);

  qword_27E1FC2A0 = v1;
  *algn_27E1FC2A8 = v2;
  return result;
}

uint64_t sub_23C67C1B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC2B0);
  __swift_project_value_buffer(v0, qword_27E1FC2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "comparison";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "stringSearch";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "idSearch";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "all";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "suggested";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sampleInvocations";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "searchableItem";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "valid";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_23C67CA28(a1, v5, a2, a3);
          }

          else if (result == 8)
          {
            sub_23C67CADC(a1, v5, a2, a3);
          }
        }

        else
        {
          if (result != 5)
          {
            v11 = v4;
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
LABEL_21:
            v4 = v11;
            sub_23C871194();
            goto LABEL_5;
          }

          sub_23C67C974(a1, v5, a2, a3);
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_23C67C80C(a1, v5, a2, a3);
        }

        else
        {
          sub_23C67C8C0(a1, v5, a2, a3);
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = v4;
          type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
          sub_23C716EF0(&qword_27E1FD558, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);
          goto LABEL_21;
        }

        if (result == 2)
        {
          sub_23C67C758(a1, v5, a2, a3);
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}