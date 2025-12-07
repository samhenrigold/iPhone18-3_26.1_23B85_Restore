uint64_t sub_2724B5E70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2724B5EA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2724B5EE8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2724B5F2C()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2724B5F74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2724B9134(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280898898, &qword_272755E00);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2724B91D4, v2, 0);
}

uint64_t sub_2724B91D4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = OBJC_IVAR___vp_services_Model_Manager_Impl_mCounter;
  v5 = *(v2 + OBJC_IVAR___vp_services_Model_Manager_Impl_mCounter);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  v7 = OBJC_IVAR___vp_services_Model_Manager_Impl_mEventObservers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v2 + v7);
  *(v2 + v7) = 0x8000000000000000;
  sub_2724BBD60(sub_2724BC274, v6, v5, isUniquelyReferenced_nonNull_native);
  *(v2 + v7) = v25;
  swift_endAccess();
  v9 = *(v2 + v4);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  v12 = v0[7];
  *(v2 + v4) = v11;
  v13 = OBJC_IVAR___vp_services_Model_Manager_Impl_mInferenceTask;
  if (!*(v12 + OBJC_IVAR___vp_services_Model_Manager_Impl_mInferenceTask))
  {
    v15 = v0[7];
    v14 = v0[8];
    v16 = sub_27275302C();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v17 = sub_2724BC514(&qword_28133BFC8, type metadata accessor for vp_services_Model_Manager_Impl, &unk_272755DD0);
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v17;
    v18[4] = v15;
    swift_retain_n();
    *(v12 + v13) = sub_2724B9FA8(0, 0, v14, &unk_272755E10, v18);
  }

  if (qword_28133C420 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v19 = sub_272752FCC();
  __swift_project_value_buffer(v19, qword_28133C4F8);
  v20 = sub_272752FBC();
  v21 = sub_27275305C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v5;
    _os_log_impl(&dword_2724B4000, v20, v21, "ModelManagerMonitor:: added observer[%ld]", v22, 0xCu);
    MEMORY[0x2743CCC50](v22, -1, -1);
  }

  v23 = v0[1];

  return v23(v5);
}

uint64_t sub_2724B94C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v6 = sub_272752F8C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808988A0, &qword_272755E30);
  v4[12] = swift_task_alloc();
  v7 = sub_272752FAC();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2724B9624, a4, 0);
}

uint64_t sub_2724B9624()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  (*(v2 + 16))(v1, *(v0 + 56) + OBJC_IVAR___vp_services_Model_Manager_Impl_mInferenceMonitor, v3);
  v4 = sub_272752F6C();
  (*(v2 + 8))(v1, v3);
  *(v0 + 40) = v4;
  v5 = sub_2724BC514(&qword_28133BFC8, type metadata accessor for vp_services_Model_Manager_Impl, &unk_272755DD0);
  v6 = OBJC_IVAR___vp_services_Model_Manager_Impl_mEventObservers;
  *(v0 + 128) = v5;
  *(v0 + 136) = v6;
  swift_beginAccess();
  *(v0 + 160) = *MEMORY[0x277D29E10];
  v7 = sub_272752F5C();
  v8 = sub_2724BC514(&qword_28133BFC0, MEMORY[0x277D29E00], MEMORY[0x277D29E08]);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_2724B97D8;
  v10 = *(v0 + 96);

  return MEMORY[0x282200308](v10, v7, v8);
}

uint64_t sub_2724B97D8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    if (*(v2 + 56))
    {
      swift_getObjectType();
      v3 = sub_272752FFC();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_2724B9D3C;
    v7 = v3;
  }

  else
  {
    v6 = sub_2724B9944;
    v7 = *(v2 + 56);
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v7, v5);
}

uint64_t sub_2724B9944()
{
  v33 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:

    v4 = *(v0 + 8);

    return v4();
  }

  (*(v3 + 32))(*(v0 + 88), v1, v2);
  if (sub_27275304C())
  {
    (*(*(v0 + 72) + 8))(*(v0 + 88), *(v0 + 64));
    goto LABEL_4;
  }

  v6 = *(*(v0 + 56) + *(v0 + 136));
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = -1;
  v11 = -1 << *(*(*(v0 + 56) + *(v0 + 136)) + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & v7;
  v13 = (63 - v11) >> 6;
  v29 = *(*(v0 + 56) + *(v0 + 136));

  v17 = 0;
  while (v12)
  {
LABEL_16:
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);
    v31 = *(*(v29 + 56) + ((v17 << 10) | (16 * __clz(__rbit64(v12)))));
    (*(v21 + 104))(v19, *(v0 + 160), v20);

    v30 = sub_272752F7C();
    (*(v21 + 8))(v19, v20);
    if (qword_28133C420 != -1)
    {
      swift_once();
    }

    v22 = sub_272752FCC();
    __swift_project_value_buffer(v22, qword_28133C4F8);
    v23 = sub_272752FBC();
    v24 = sub_27275305C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = v30 & 1;
      _os_log_impl(&dword_2724B4000, v23, v24, "ModelManagerMonitor::register calling observer with inferencesRunning  = %{BOOL}d", v25, 8u);
      MEMORY[0x2743CCC50](v25, -1, -1);
    }

    v12 &= v12 - 1;

    v32 = v30 & 1;
    v31(&v32);
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return MEMORY[0x282200308](v14, v15, v16);
    }

    if (v18 >= v13)
    {
      break;
    }

    v12 = *(v8 + 8 * v18);
    ++v17;
    if (v12)
    {
      v17 = v18;
      goto LABEL_16;
    }
  }

  (*(*(v0 + 72) + 8))(*(v0 + 88), *(v0 + 64));

  v26 = sub_272752F5C();
  v27 = sub_2724BC514(&qword_28133BFC0, MEMORY[0x277D29E00], MEMORY[0x277D29E08]);
  v28 = swift_task_alloc();
  *(v0 + 144) = v28;
  *v28 = v0;
  v28[1] = sub_2724B97D8;
  v14 = *(v0 + 96);
  v15 = v26;
  v16 = v27;

  return MEMORY[0x282200308](v14, v15, v16);
}

uint64_t sub_2724B9D3C()
{
  v1 = v0[7];
  v0[6] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808988A8, &qword_272755E38);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2724B9DD4, v1, 0);
}

uint64_t sub_2724B9DD4()
{

  if (qword_28133C420 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_272752FCC();
  __swift_project_value_buffer(v2, qword_28133C4F8);
  v3 = v1;
  v4 = sub_272752FBC();
  v5 = sub_27275305C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2724B4000, v4, v5, "ModelManagerMonitor:: exception while executing Task...%@", v8, 0xCu);
    sub_2724BC55C(v9, &qword_2808988B0, &qword_272755E40);
    MEMORY[0x2743CCC50](v9, -1, -1);
    MEMORY[0x2743CCC50](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2724B9FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280898898, &qword_272755E00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2724BC334(a3, v25 - v10);
  v12 = sub_27275302C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2724BC55C(v11, &qword_280898898, &qword_272755E00);
  }

  else
  {
    sub_27275301C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_272752FFC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_272752FEC() + 32;
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

      sub_2724BC55C(a3, &qword_280898898, &qword_272755E00);

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

  sub_2724BC55C(a3, &qword_280898898, &qword_272755E00);
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

uint64_t sub_2724BA42C(const void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = _Block_copy(a1);
  v3[3] = _Block_copy(a2);
  v6 = swift_allocObject();
  v3[4] = v6;
  *(v6 + 16) = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2724BA524;

  return sub_2724B9134(sub_2724BC9A8, v6);
}

uint64_t sub_2724BA524(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v7 = *v1;

  (*(v4 + 16))(v4, a1);
  _Block_release(*(v3 + 24));
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2724BA698(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2724BA6B8, v1, 0);
}

uint64_t sub_2724BA6B8()
{
  v1 = v0[9];
  v2 = OBJC_IVAR___vp_services_Model_Manager_Impl_mEventObservers;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    sub_2724BB838(v0[8]);
    if (v3)
    {
      if (qword_28133C420 != -1)
      {
        swift_once();
      }

      v4 = sub_272752FCC();
      __swift_project_value_buffer(v4, qword_28133C4F8);
      v5 = sub_272752FBC();
      v6 = sub_27275305C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = v0[8];
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        *(v8 + 4) = v7;
        _os_log_impl(&dword_2724B4000, v5, v6, "ModelManagerMonitor:: removing observer[%ld]", v8, 0xCu);
        MEMORY[0x2743CCC50](v8, -1, -1);
      }

      v9 = v0[8];

      swift_beginAccess();
      v10 = sub_2724BB8E8(v9);
      v12 = v11;
      swift_endAccess();
      sub_2724BC1B4(v10, v12);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2724BA9E4(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_2724BAAA0;

  return sub_2724BA698(a1);
}

uint64_t sub_2724BAAA0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  (*(v2 + 16))(v2);
  _Block_release(*(v1 + 24));
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2724BABE8()
{
  if (*(v0 + OBJC_IVAR___vp_services_Model_Manager_Impl_mInferenceTask))
  {

    sub_27275303C();
  }

  v1 = OBJC_IVAR___vp_services_Model_Manager_Impl_mInferenceMonitor;
  v2 = sub_272752FAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for vp_services_Model_Manager_Impl(uint64_t a1)
{
  result = qword_28133C4B8;
  if (!qword_28133C4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2724BAD14()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_272752F9C();
  *&v1[OBJC_IVAR___vp_services_Model_Manager_Impl_mInferenceTask] = 0;
  v2 = OBJC_IVAR___vp_services_Model_Manager_Impl_mEventObservers;
  *&v1[v2] = sub_2724BC024(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR___vp_services_Model_Manager_Impl_mCounter] = 0;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_2724BAE3C(uint64_t a1)
{
  result = sub_272752FAC();
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

uint64_t sub_2724BAF08()
{
  v0 = sub_272752FCC();
  __swift_allocate_value_buffer(v0, qword_28133C4F8);
  __swift_project_value_buffer(v0, qword_28133C4F8);
  sub_2724BC228();
  sub_27275306C();
  return sub_272752FDC();
}

uint64_t sub_2724BAFA0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2724BB098;

  return v6(a1);
}

uint64_t sub_2724BB098()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2724BB190(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2724BC9D8;

  return v6();
}

uint64_t sub_2724BB278(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2724BB360;

  return v7();
}

uint64_t sub_2724BB360()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2724BB454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280898898, &qword_272755E00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2724BC334(a3, v23 - v10);
  v12 = sub_27275302C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2724BC55C(v11, &qword_280898898, &qword_272755E00);
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

  sub_27275301C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_272752FFC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_272752FEC() + 32;
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

    sub_2724BC55C(a3, &qword_280898898, &qword_272755E00);

    return v21;
  }

LABEL_8:
  sub_2724BC55C(a3, &qword_280898898, &qword_272755E00);
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

uint64_t sub_2724BB740(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2724BC9DC;

  return v6(a1);
}

unint64_t sub_2724BB838(uint64_t a1)
{
  v2 = sub_2727530CC();

  return sub_2724BB87C(a1, v2);
}

unint64_t sub_2724BB87C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2724BB8E8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2724BB838(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2724BBEC0();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_2724BBBF0(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_2724BB97C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280898890, &qword_272755DF8);
  result = sub_27275309C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_2727530CC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2724BBBF0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27275307C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_2727530CC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2724BBD60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2724BB838(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2724BB97C(v16, a4 & 1);
      result = sub_2724BB838(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2727530BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2724BBEC0();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void *sub_2724BBEC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280898890, &qword_272755DF8);
  v2 = *v0;
  v3 = sub_27275308C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2724BC024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280898890, &qword_272755DF8);
  v3 = sub_2727530AC();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_2724BB838(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_2724BB838(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2724BC1B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
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

unint64_t sub_2724BC228()
{
  result = qword_28133BFB8;
  if (!qword_28133BFB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28133BFB8);
  }

  return result;
}

uint64_t sub_2724BC2A0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2724BC9D8;

  return sub_2724B94C0(v3, v4, v5, v2);
}

uint64_t sub_2724BC334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280898898, &qword_272755E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2724BC3A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2724BC9D8;

  return sub_2724BAFA0(a1, v4);
}

uint64_t sub_2724BC45C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2724BB360;

  return sub_2724BAFA0(a1, v4);
}

uint64_t sub_2724BC514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2724BC55C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2724BC5BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2724BB360;

  return sub_2724BA9E4(v2, v3, v4);
}

uint64_t sub_2724BC670()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2724BC9D8;

  return sub_2724BB190(v2, v3, v4);
}

uint64_t sub_2724BC730(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2724BC9D8;

  return sub_2724BB278(a1, v4, v5, v6);
}

uint64_t sub_2724BC7FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2724BC9D8;

  return sub_2724BB740(a1, v4);
}

uint64_t sub_2724BC8B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2724BC9D8;

  return sub_2724BA42C(v2, v3, v4);
}

uint64_t objectdestroy_33Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t VoiceProcessorGetVersion()
{
  v0 = [[VPContext allocWithZone:?]];
  VoiceProcessorVersion = GetVoiceProcessorVersion(&v0->_context, 0, 0, 0, 0);
  if (v0)
  {
    CFRelease(v0);
  }

  return VoiceProcessorVersion;
}

void sub_2724BCA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__VPContext const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__VPContext const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_2724BCB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__VPContext const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void sub_2724BD5F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2724BD614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  CADeprecated::CAMutex::Locker::~Locker(va);
  JUMPOUT(0x2724BD620);
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_26;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_11;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_26:
        LOBYTE(v11) = LOBYTE(valuePtr);
        if (!Value)
        {
          LOBYTE(v11) = 0;
        }

        v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
        v13.i64[0] = Value != 0;
        v13.i64[1] = v12 << 63 >> 63;
        break;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_19:
        if (v10)
        {
          v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_37;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_11:
        v9 = *&valuePtr;
        goto LABEL_35;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_23;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_34;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_34:
        v9 = LODWORD(valuePtr);
        goto LABEL_35;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_23:
        v9 = valuePtr;
LABEL_35:
        v11 = v9 | 0x100000000;
        if (!v8)
        {
          v11 = 0;
        }

LABEL_37:
        v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_2727562B0);
        break;
      default:
        LOBYTE(v11) = 0;
        v13 = 0uLL;
        break;
    }

    v14 = vandq_s8(vshlq_u64(v13, xmmword_2727562C0), xmmword_2727562D0);
    v7 = v14.i64[0] | v11 | v14.i64[1];
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      v5 = CFBooleanGetValue(a1);
      v6 = 0x100000000;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = v6 | v5;
  }

  return v7 & 0xFFFFFFFFFFLL;
}

void vp::Decorator_Assembler_Template<VoiceProcessorBase>::add_decorator(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v3 = a1[1];
    v4 = a1[2];
    if (v3 >= v4)
    {
      v6 = (v3 - *a1) >> 5;
      if ((v6 + 1) >> 59)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v7 = v4 - *a1;
      v8 = v7 >> 4;
      if (v7 >> 4 <= (v6 + 1))
      {
        v8 = v6 + 1;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v9 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      if (v9)
      {
        if (!(v9 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = 32 * v6;
      std::__function::__value_func<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>::__value_func[abi:ne200100](v10, a2);
      v5 = v10 + 32;
      v18 = (v10 + 32);
      v11 = *a1;
      v12 = a1[1];
      v13 = v10 + *a1 - v12;
      if (v12 != *a1)
      {
        v14 = *a1;
        v15 = v13;
        do
        {
          v16 = std::__function::__value_func<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>::__value_func[abi:ne200100](v15, v14);
          v14 += 32;
          v15 = v16 + 32;
        }

        while (v14 != v12);
        do
        {
          std::__function::__value_func<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>::~__value_func[abi:ne200100](v11);
          v11 += 32;
        }

        while (v11 != v12);
      }

      v17 = *a1;
      *a1 = v13;
      *(a1 + 1) = v18;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      v5 = std::__function::__value_func<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>::__value_func[abi:ne200100](v3, a2) + 32;
    }

    a1[1] = v5;
  }
}

uint64_t std::__function::__value_func<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t applesauce::CF::convert_as<BOOL,0>(const __CFBoolean *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
    v4 = 1;
  }

  else
  {
    v5 = CFNumberGetTypeID();
    if (v5 == CFGetTypeID(a1))
    {
      v3 = applesauce::CF::details::number_convert_as<BOOL>(a1);
      v4 = HIBYTE(v3);
    }

    else
    {
      LOBYTE(v3) = 0;
      v4 = 0;
    }
  }

  return v3 | (v4 << 8);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

std::__shared_weak_count ***std::unique_ptr<VPStrategyManager>::~unique_ptr[abi:ne200100](std::__shared_weak_count ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    VPStrategyManager::~VPStrategyManager(v2);
    MEMORY[0x2743CBFA0]();
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

vp::Context *vp::Context::Context(vp::Context *this, const Context *a2)
{
  *this = a2->m_os;
  mCFObject = a2->m_os_release_type.mObject.mCFObject;
  if (mCFObject)
  {
    CFRetain(a2->m_os_release_type.mObject.mCFObject);
  }

  *(this + 1) = mCFObject;
  *(this + 8) = *&a2->m_is_internal_build;
  if (*(&a2->m_tuning_resources_path.__pn_.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, a2->m_tuning_resources_path.__pn_.__rep_.__l.__data_, a2->m_tuning_resources_path.__pn_.__rep_.__l.__size_);
  }

  else
  {
    v5 = *a2->m_tuning_resources_path.__pn_.__rep_.__s.__data_;
    *(this + 5) = *(&a2->m_tuning_resources_path.__pn_.__rep_.__l + 2);
    *(this + 24) = v5;
  }

  if (*(&a2[1].m_os + 7) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *&a2->m_tuning_resources_path.var0, a2->var0);
  }

  else
  {
    v6 = *&a2->m_tuning_resources_path.var0;
    *(this + 8) = *&a2[1].m_os;
    *(this + 3) = v6;
  }

  if (a2[1].m_tuning_resources_path.__pn_.__rep_.__s.__data_[7] < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, a2[1].m_os_release_type.mObject.mCFObject, *&a2[1].m_is_internal_build);
  }

  else
  {
    v7 = *&a2[1].m_os_release_type.mObject.mCFObject;
    *(this + 11) = a2[1].m_tuning_resources_path.__pn_.__rep_.__l.__data_;
    *(this + 72) = v7;
  }

  *(this + 48) = a2[1].m_tuning_resources_path.__pn_.__rep_.__l.__size_;
  if (SHIBYTE(a2[1].var0) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(&a2[1].m_tuning_resources_path.__pn_.__rep_.__l + 2), *&a2[1].m_tuning_resources_path.var0);
  }

  else
  {
    v8 = *(&a2[1].m_tuning_resources_path.__pn_.__rep_.__l + 1);
    *(this + 15) = a2[1].var0;
    *(this + 104) = v8;
  }

  v9 = *&a2[2].m_os;
  v10 = *&a2[2].m_is_internal_build;
  *(this + 153) = *&a2[2].m_tuning_resources_path.__pn_.__rep_.__s.__data_[1];
  *(this + 8) = v9;
  *(this + 9) = v10;
  v11 = *&a2[2].m_tuning_resources_path.var0;
  if (v11)
  {
    CFRetain(*&a2[2].m_tuning_resources_path.var0);
  }

  *(this + 22) = v11;
  *(this + 184) = a2[2].var0;
  return this;
}

void sub_2724BDEAC(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  applesauce::CF::StringRef::~StringRef(v2);
  _Unwind_Resume(a1);
}

uint64_t vp::Decorator_Assembler_Template<VoiceProcessorBase>::add_decorator<vp::decorators::CPU_Profiler,vp::Context const&,vp::Decorator_Assembler_Product &,std::shared_ptr<caulk::concurrent::messenger> &>(vp::Context const&,vp::Decorator_Assembler_Product &,std::shared_ptr<caulk::concurrent::messenger> &)::{lambda(vp::decorators::CPU_Profiler)#1}::~add_decorator(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  vp::Context::~Context((a1 + 8));
  return a1;
}

void vp::Context::~Context(vp::Context *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

void _ZNSt3__110__function6__funcIZN2vp28Decorator_Assembler_TemplateI18VoiceProcessorBaseE13add_decoratorINS2_10decorators12CPU_ProfilerEJRKNS2_7ContextERNS2_27Decorator_Assembler_ProductERNS_10shared_ptrIN5caulk10concurrent9messengerEEEEEEvDpOT0_EUlT_E_NS_9allocatorISO_EEFNS_10unique_ptrIS4_NS_14default_deleteIS4_EEEESU_EEclEOSU_(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  vp::Context::Context(v5, (a1 + 16));
  v4 = *(a1 + 216);
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_2724BE408(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2724BE514()
{
  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  JUMPOUT(0x2724BE50CLL);
}

void _ZNSt3__110__function6__funcIZN2vp28Decorator_Assembler_TemplateI18VoiceProcessorBaseE13add_decoratorINS2_10decorators12CPU_ProfilerEJRKNS2_7ContextERNS2_27Decorator_Assembler_ProductERNS_10shared_ptrIN5caulk10concurrent9messengerEEEEEEvDpOT0_EUlT_E_NS_9allocatorISO_EEFNS_10unique_ptrIS4_NS_14default_deleteIS4_EEEESU_EE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp28Decorator_Assembler_TemplateI18VoiceProcessorBaseE13add_decoratorINS2_10decorators12CPU_ProfilerEJRKNS2_7ContextERNS2_27Decorator_Assembler_ProductERNS_10shared_ptrIN5caulk10concurrent9messengerEEEEEEvDpOT0_EUlT_E_NS_9allocatorISO_EEFNS_10unique_ptrIS4_NS_14default_deleteIS4_EEEESU_EE7destroyB8ne200100Ev((a1 + 8));

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp28Decorator_Assembler_TemplateI18VoiceProcessorBaseE13add_decoratorINS2_10decorators12CPU_ProfilerEJRKNS2_7ContextERNS2_27Decorator_Assembler_ProductERNS_10shared_ptrIN5caulk10concurrent9messengerEEEEEEvDpOT0_EUlT_E_NS_9allocatorISO_EEFNS_10unique_ptrIS4_NS_14default_deleteIS4_EEEESU_EE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  vp::Context::~Context((a1 + 8));
}

vp::Context *_ZNKSt3__110__function6__funcIZN2vp28Decorator_Assembler_TemplateI18VoiceProcessorBaseE13add_decoratorINS2_10decorators12CPU_ProfilerEJRKNS2_7ContextERNS2_27Decorator_Assembler_ProductERNS_10shared_ptrIN5caulk10concurrent9messengerEEEEEEvDpOT0_EUlT_E_NS_9allocatorISO_EEFNS_10unique_ptrIS4_NS_14default_deleteIS4_EEEESU_EE7__cloneEPNS0_6__baseISV_EE(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_2881AFA50;
  a2[1] = v4;
  result = vp::Context::Context((a2 + 2), (a1 + 16));
  v6 = *(a1 + 224);
  a2[27] = *(a1 + 216);
  a2[28] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp28Decorator_Assembler_TemplateI18VoiceProcessorBaseE13add_decoratorINS2_10decorators12CPU_ProfilerEJRKNS2_7ContextERNS2_27Decorator_Assembler_ProductERNS_10shared_ptrIN5caulk10concurrent9messengerEEEEEEvDpOT0_EUlT_E_NS_9allocatorISO_EEFNS_10unique_ptrIS4_NS_14default_deleteIS4_EEEESU_EED0Ev(void *a1)
{
  *a1 = &unk_2881AFA50;
  v2 = a1[28];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  vp::Context::~Context((a1 + 2));

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp28Decorator_Assembler_TemplateI18VoiceProcessorBaseE13add_decoratorINS2_10decorators12CPU_ProfilerEJRKNS2_7ContextERNS2_27Decorator_Assembler_ProductERNS_10shared_ptrIN5caulk10concurrent9messengerEEEEEEvDpOT0_EUlT_E_NS_9allocatorISO_EEFNS_10unique_ptrIS4_NS_14default_deleteIS4_EEEESU_EED1Ev(void *a1)
{
  *a1 = &unk_2881AFA50;
  v2 = a1[28];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  vp::Context::~Context((a1 + 2));
  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

uint64_t std::__function::__value_func<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void _ZNSt3__110__function6__funcIZN2vp28Decorator_Assembler_TemplateI18VoiceProcessorBaseE13add_decoratorINS2_10decorators17Xcode_InstrumentsEJRNS2_27Decorator_Assembler_ProductEEEEvDpOT0_EUlT_E_NS_9allocatorISF_EEFNS_10unique_ptrIS4_NS_14default_deleteIS4_EEEESL_EEclEOSL_(void x0_0, vp **a1)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  operator new();
}

void sub_2724BEE10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNKSt3__110__function6__funcIZN2vp28Decorator_Assembler_TemplateI18VoiceProcessorBaseE13add_decoratorINS2_10decorators17Xcode_InstrumentsEJRNS2_27Decorator_Assembler_ProductEEEEvDpOT0_EUlT_E_NS_9allocatorISF_EEFNS_10unique_ptrIS4_NS_14default_deleteIS4_EEEESL_EE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881AFA08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void vp::v10::create(vp::v10 *this, const vp::Context *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  if (CFStringCreateWithBytes(0, "com.apple.coreaudio", 19, 0x8000100u, 0))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
}

void sub_2724C0F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    _Block_object_dispose(&a20, 8);
    MEMORY[0x2743CBFA0](v26, 0xA1C40069AE433);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void (****std::unique_ptr<vp::vx::Voice_Processor_Interface,vp::Allocator_Delete<vp::vx::Voice_Processor_Interface>>::reset[abi:ne200100](void (****result)(void)))(void)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (**v1)(v1);
    return ((*v2[1])[3])(v2[1], v1, v2[2], v2[3]);
  }

  return result;
}

unsigned int *boost::container::flat_map<unsigned int,std::unique_ptr<vp::Service>,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<std::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::priv_subscript(char *a1, unsigned int a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v6 = v3;
  if (v4)
  {
    v6 = v3;
    v7 = *(a1 + 2);
    do
    {
      if (v7 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v8 = v7 >> 1;
      v9 = &v6[4 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 4;
      v7 += ~(v7 >> 1);
      if (v11 >= a2)
      {
        v7 = v8;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v7);
  }

  v12 = v3 + 16 * v4;
  if (v6 == v12)
  {
    v41 = a2;
    v42 = 0;
    if (v3 <= v6)
    {
      v39 = 0;
      v14 = v12;
      goto LABEL_27;
    }

LABEL_59:
    v34 = "this->priv_in_range_or_end(hint)";
    v35 = 879;
    v36 = "flat_tree.hpp";
    v37 = "insert_unique";
    goto LABEL_64;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v6 > a2)
  {
    v41 = a2;
    v42 = 0;
    if (v3 <= v6 && v6 <= v12)
    {
      v39 = 0;
      v14 = v6;
      if (*v6 <= a2)
      {
        v40 = v12;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::priv_insert_unique_prepare(v6, &v40, &v41, &v39))
        {
          goto LABEL_49;
        }

LABEL_30:
        v18 = v39;
        v19 = *(a1 + 1);
        if (v19 > v39)
        {
          goto LABEL_61;
        }

        v20 = *(a1 + 2);
        if (!v19 && v20)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v21 = v19 + 16 * v20;
        if (v39 > v21)
        {
LABEL_61:
          v34 = "this->priv_in_range_or_end(position)";
          v35 = 1862;
          v36 = "vector.hpp";
          v37 = "emplace";
        }

        else
        {
          v22 = *(a1 + 3);
          if (v22 >= v20)
          {
            if (v22 == v20)
            {
              boost::container::vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,vp::Allocator<void>,void>,boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>*,boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>>(&v38, a1, v39, &v41);
            }

            else
            {
              if (v21 == v39)
              {
                *v21 = v41;
                v31 = v42;
                v42 = 0;
                *(v21 + 8) = v31;
                *(a1 + 2) = v20 + 1;
              }

              else
              {
                v23 = v21 - 16;
                *v21 = *(v21 - 16);
                v24 = *(v21 - 8);
                *(v21 - 8) = 0;
                *(v21 + 8) = v24;
                *(a1 + 2) = v20 + 1;
                if ((v21 - 16) != v18)
                {
                  v25 = (v21 - 16);
                  do
                  {
                    v26 = *(v25 - 4);
                    v25 -= 4;
                    *v23 = v26;
                    v27 = *(v23 - 8);
                    *(v23 - 8) = 0;
                    v28 = *(v23 + 8);
                    *(v23 + 8) = v27;
                    if (v28)
                    {
                      (*(*v28 + 8))(v28);
                    }

                    v23 = v25;
                  }

                  while (v25 != v18);
                }

                *v18 = v41;
                v29 = v42;
                v42 = 0;
                v30 = *(v18 + 1);
                *(v18 + 1) = v29;
                if (v30)
                {
                  (*(*v30 + 8))(v30);
                }
              }

              v38 = v18;
            }

            goto LABEL_52;
          }

          v34 = "this->m_holder.capacity() >= this->m_holder.m_size";
          v35 = 2821;
          v36 = "vector.hpp";
          v37 = "priv_insert_forward_range";
        }

LABEL_64:
        __assert_rtn(v37, v36, v35, v34);
      }

LABEL_27:
      v39 = v6;
      if (v14 != v3)
      {
        if (!v14)
        {
          __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
        }

        v16 = *(v14 - 16);
        v15 = (v14 - 16);
        v17 = v16 > a2;
        if (v16 >= a2)
        {
          if (!v17)
          {
            v39 = v15;
            goto LABEL_49;
          }

          v40 = v15;
          if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::priv_insert_unique_prepare(v3, &v40, &v41, &v39))
          {
LABEL_49:
            if (!*(a1 + 1) && v39)
            {
              __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
            }

            v38 = v39;
LABEL_52:
            v32 = v42;
            v42 = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }

            v6 = v38;
            if (!v38)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            return v6 + 2;
          }
        }
      }

      goto LABEL_30;
    }

    goto LABEL_59;
  }

  return v6 + 2;
}

void sub_2724C1600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,vp::Allocator<void>,void>,boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>*,boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>>(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0xFFFFFFFFFFFFFFFLL;
  if (v4 == 0xFFFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0xFFFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 60)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  result = (*(**a2 + 16))(*a2, 16 * v9, 8);
  v16 = result;
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  v19 = v17 + 16 * v18;
  v20 = result;
  if (v17 != a3)
  {
    v21 = *(a2 + 1);
    v20 = result;
    do
    {
      *v20 = *v21;
      v22 = *(v21 + 8);
      *(v21 + 8) = 0;
      *(v20 + 8) = v22;
      v21 += 16;
      v20 += 16;
    }

    while (v21 != a3);
  }

  *v20 = *a4;
  v23 = *(a4 + 8);
  *(a4 + 8) = 0;
  *(v20 + 8) = v23;
  if (v19 != a3)
  {
    v24 = (v20 + 24);
    v25 = a3;
    do
    {
      *(v24 - 2) = *v25;
      v26 = *(v25 + 8);
      *(v25 + 8) = 0;
      *v24 = v26;
      v24 += 2;
      v25 += 16;
    }

    while (v25 != v19);
  }

  if (v17)
  {
    if (v18)
    {
      v27 = (v17 + 8);
      do
      {
        v28 = *v27;
        *v27 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        v27 += 2;
        --v18;
      }

      while (v18);
    }

    result = boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 1));
  }

  v29 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v29;
  *(a2 + 3) = v9;
  *a1 = v16 + a3 - v14;
  return result;
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_2881C63E8;
  exception[1] = this;
}

void *boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

const char *boost::container::exception::what(boost::container::exception *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return "unknown boost::container exception";
  }
}

void boost::container::out_of_range::~out_of_range(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>*,true>,unsigned int>(&v10, &v9, *a2, *a3);
  v7 = v10;
  *a4 = v10;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a3 < *v7;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>*,true>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 4;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[4 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 4;
        *a2 = v7 + 4;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void vp::services::Legacy_Wireless_Charging_Detector_Impl::~Legacy_Wireless_Charging_Detector_Impl(vp::services::Legacy_Wireless_Charging_Detector_Impl *this)
{
  vp::services::Legacy_Wireless_Charging_Detector_Impl::~Legacy_Wireless_Charging_Detector_Impl(this);

  JUMPOUT(0x2743CBFA0);
}

{
  StopVPWirelessChargingMatStateListener();
}

void sub_2724C1B34(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2724C1B24);
}

CFPropertyListRef vp::services::User_Defaults_Impl::get_object@<X0>(CFStringRef *a1@<X1>, CFStringRef *a2@<X2>, void *a3@<X8>)
{
  result = CFPreferencesCopyAppValue(*a2, *a1);
  *a3 = result;
  return result;
}

void vp::services::User_Defaults_Impl::get_all_keys(CFStringRef *a1@<X1>, void *a2@<X8>)
{
  v4 = CFPreferencesCopyKeyList(*a1, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_25;
  }

  v6 = CFGetTypeID(v4);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_25:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(v5))
  {
    Count = CFArrayGetCount(v5);
    v22 = 0uLL;
    v23 = 0;
    if (Count << 32)
    {
      if (!(Count >> 61))
      {
        v28 = &v22;
        std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](Count);
      }

LABEL_37:
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    if (Count < 1)
    {
LABEL_23:
      v25 = v22;
      v26 = v23;
      v23 = 0;
      v22 = 0uLL;
      v17 = 1;
      LOBYTE(v27) = 1;
      v2 = *(&v25 + 1);
    }

    else
    {
      v9 = 0;
      v10 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        v12 = ValueAtIndex;
        if (!ValueAtIndex)
        {
          break;
        }

        CFRetain(ValueAtIndex);
        v2 = CFGetTypeID(v12);
        if (v2 != CFStringGetTypeID())
        {
          CFRelease(v12);
          break;
        }

        v13 = *(&v22 + 1);
        if (*(&v22 + 1) >= v23)
        {
          v14 = (*(&v22 + 1) - v22) >> 3;
          if ((v14 + 1) >> 61)
          {
            goto LABEL_37;
          }

          v15 = (v23 - v22) >> 2;
          if (v15 <= v14 + 1)
          {
            v15 = v14 + 1;
          }

          if (v23 - v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          v28 = &v22;
          if (v16)
          {
            std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v16);
          }

          *&v25 = 0;
          *(&v25 + 1) = 8 * v14;
          v27 = 0;
          **(&v25 + 1) = v12;
          v26 = 8 * v14 + 8;
          std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(&v22, &v25);
          v2 = *(&v22 + 1);
          std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(&v25);
        }

        else
        {
          **(&v22 + 1) = v12;
          v2 = v13 + 8;
        }

        *(&v22 + 1) = v2;
        if (v10 == ++v9)
        {
          goto LABEL_23;
        }
      }

      v17 = 0;
      LOBYTE(v27) = 0;
      LOBYTE(v25) = 0;
    }

    v24 = &v22;
    std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&v24);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (v17)
    {
      *&v22 = a2;
      BYTE8(v22) = 0;
      v18 = v2 - v25;
      if (v2 != v25)
      {
        if (!((v18 >> 3) >> 61))
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v18 >> 3);
        }

        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      *&v22 = &v25;
      std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&v22);
      goto LABEL_35;
    }
  }

  else
  {
    LOBYTE(v25) = 0;
    LOBYTE(v27) = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_35:
  *&v25 = &v19;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&v25);
  CFRelease(v5);
}

void sub_2724C1ECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](va);
  __clang_call_terminate(a1);
}

void std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CFTypeRef vp::services::User_Defaults_Impl::get_default_app_id@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    this = CFRetain(*(this + 2));
  }

  *a2 = v3;
  return this;
}

void vp::services::User_Defaults_Impl::~User_Defaults_Impl(vp::services::User_Defaults_Impl *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t vp::services::Legacy_Smart_Cover_Detector_Impl::is_smart_cover_attached(vp::services::Legacy_Smart_Cover_Detector_Impl *this)
{
  v3 = 0;
  IsAttached = GetVPSmartCoverIsAttached(&v3);
  return (IsAttached == 0) & v3;
}

void vp::services::Power_Log_Impl::log_speaker_amp_power(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if ((a2 & 0x100000000) != 0)
  {
    v5 = *&a2;
    applesauce::CF::StringRef::from_get(v31, @"Avg Watts Measured");
    valuePtr = v5;
    cf = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v6 = v37;
    if (v37 >= v38)
    {
      v7 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const,applesauce::CF::NumberRef const>(&v36, v31, &cf);
    }

    else
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const,applesauce::CF::NumberRef const,void,0>(v37, v31[0], &cf);
      v7 = v6 + 16;
    }

    v37 = v7;
    v8 = vp::get_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      log_context_info = vp::get_log_context_info(&__p, a1, "vp::services::Power_Log_Impl]", 28);
      v11 = v34;
      v12 = v33;
      v13 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if ((v11 & 0x80u) == 0)
        {
          v14 = v11;
        }

        else
        {
          v14 = v12;
        }

        p_p = __p;
        if ((v34 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        if (v14)
        {
          v16 = " ";
        }

        else
        {
          v16 = "";
        }

        *buf = 136315650;
        *&buf[4] = p_p;
        v41 = 2080;
        v42 = v16;
        v43 = 2048;
        v44 = v5;
        _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%s%saverage measured power is %f watts", buf, 0x20u);
      }

      if (v34 < 0)
      {
        operator delete(__p);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v31[0])
    {
      CFRelease(v31[0]);
    }
  }

  if ((a3 & 0x100000000) != 0)
  {
    applesauce::CF::StringRef::from_get(v31, @"Avg Watts Modelled");
    valuePtr = *&a3;
    cf = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    if (!cf)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    v17 = v37;
    if (v37 >= v38)
    {
      v18 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const,applesauce::CF::NumberRef const>(&v36, v31, &cf);
    }

    else
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const,applesauce::CF::NumberRef const,void,0>(v37, v31[0], &cf);
      v18 = v17 + 16;
    }

    v37 = v18;
    v19 = vp::get_log(v18);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = vp::get_log_context_info(&__p, a1, "vp::services::Power_Log_Impl]", 28);
      v22 = v34;
      v23 = v33;
      v24 = vp::get_log(v21);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        if ((v22 & 0x80u) == 0)
        {
          v25 = v22;
        }

        else
        {
          v25 = v23;
        }

        v26 = __p;
        if ((v34 & 0x80u) == 0)
        {
          v26 = &__p;
        }

        if (v25)
        {
          v27 = " ";
        }

        else
        {
          v27 = "";
        }

        *buf = 136315650;
        *&buf[4] = v26;
        v41 = 2080;
        v42 = v27;
        v43 = 2048;
        v44 = *&a3;
        _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEFAULT, "%s%saverage modelled power is %f watts", buf, 0x20u);
      }

      if (v34 < 0)
      {
        operator delete(__p);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v31[0])
    {
      CFRelease(v31[0]);
    }
  }

  if (v36 != v37)
  {
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v36);
    *buf = CFDictionaryRef;
    PLLogRegisteredEvent();
    CFRelease(CFDictionaryRef);
  }

  *buf = &v36;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_2724C263C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void **buf, int a26, __int16 a27, uint64_t a28, __int16 a29, uint64_t a30)
{
  if (a2)
  {
    applesauce::CF::NumberRef::~NumberRef(&a17);
    applesauce::CF::StringRef::~StringRef(&a9);
    buf = &__p;
    std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&buf);
    v32 = __cxa_begin_catch(exception_object);
    v33 = vp::get_log(v32);
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

    if (v34)
    {
      log_context_info = vp::get_log_context_info(&__p, v30, "vp::services::Power_Log_Impl]", 28);
      v36 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a23 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724C258CLL);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::StringRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_2724C28D0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const,applesauce::CF::NumberRef const,void,0>(void *result, CFTypeRef cf, const void **a3)
{
  v5 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v5 = cf;
  v6 = *a3;
  if (v6)
  {
    result = CFRetain(v6);
  }

  v5[1] = v6;
  return result;
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const,applesauce::CF::NumberRef const>(void *a1, CFTypeRef *a2, const void **a3)
{
  v3 = (a1[1] - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v7);
  }

  v14 = 0;
  v15 = 16 * v3;
  std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const,applesauce::CF::NumberRef const,void,0>((16 * v3), *a2, a3);
  v16 = (16 * v3 + 16);
  v8 = a1[1];
  v9 = (16 * v3 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v14);
  return v13;
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(char **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  keys = 0;
  v33 = 0;
  v34 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v30 = 0;
  v31 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v4 = *a1;
  v3 = a1[1];
  v5 = keys;
  v6 = values;
  v28 = v3;
  if (v4 != v3)
  {
    v27 = v2;
    v7 = v33;
    v8 = v34;
    v10 = v30;
    v9 = v31;
    do
    {
      v11 = *v4;
      if (!*v4 || !*(v4 + 1))
      {
        keys = v5;
        values = v6;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v7 >= v8)
      {
        v12 = v7 - v5;
        v13 = (v7 - v5) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v5) >> 2 > v14)
        {
          v14 = (v8 - v5) >> 2;
        }

        if (v8 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v5, v12);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = *(v4 + 1);
      if (v10 >= v9)
      {
        v18 = v10 - v6;
        v19 = (v10 - v6) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v6) >> 2 > v20)
        {
          v20 = (v9 - v6) >> 2;
        }

        if (v9 - v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v6, v18);
        if (v6)
        {
          operator delete(v6);
        }

        v6 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v4 += 16;
    }

    while (v4 != v28);
    v33 = v7;
    v34 = v8;
    v31 = v9;
    keys = v5;
    values = v6;
    v30 = v10;
    v2 = v27;
  }

  v23 = CFDictionaryCreate(0, v5, v6, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_2724C2D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(void *a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_2724C2FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(va);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(void ****a1, int a2)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v32, (*a1)[2]);
    v6 = (*a1 + 1);
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v33;
      do
      {
        if (v8 >= v34)
        {
          v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v32, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7 + 56);
          *(v7 + 56) = 0;
          v7[8] = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
          v8 += 16;
        }

        v33 = v8;
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v32, ((*a1)[1] - **a1) >> 4);
    v4 = **a1;
    v5 = (*a1)[1];
    while (v4 != v5)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v32, v4);
      v4 += 16;
    }
  }

  for (i = v33; v32 != v33; i = v33)
  {
    v15 = *(i - 16);
    v13 = i - 16;
    v14 = v15;
    LOBYTE(v30) = v15;
    v16 = *(v13 + 8);
    v31 = v16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    *v13 = 0;
    *(v13 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v30);
    v17 = v33;
    v18 = v33 - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v33 - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((v17 - 8), *(v17 - 16));
    v33 = v18;
    if (v15 == 1)
    {
      v24 = *v16;
      if (*v16 == v16 + 1)
      {
        v14 = 1;
      }

      else
      {
        do
        {
          if (v18 >= v34)
          {
            v18 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v32, (v24 + 56));
          }

          else
          {
            *v18 = v24[56];
            *(v18 + 8) = *(v24 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24 + 56);
            v24[56] = 0;
            *(v24 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
            v18 += 16;
          }

          v33 = v18;
          v25 = *(v24 + 1);
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = *(v24 + 2);
              v11 = *v26 == v24;
              v24 = v26;
            }

            while (!v11);
          }

          v24 = v26;
        }

        while (v26 != v16 + 1);
        v16 = v31;
        v14 = v30;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v16[1]);
      *v16 = v16 + 1;
      v16[2] = 0;
      v16[1] = 0;
    }

    else if (v14 == 2)
    {
      v19 = *v16;
      v20 = v16[1];
      if (*v16 != v20)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v32, v19);
          v19 += 16;
        }

        while (v19 != v20);
        v19 = *v16;
        v20 = v16[1];
      }

      if (v20 != v19)
      {
        v21 = v20 - 16;
        v22 = v21;
        do
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
          v23 = *v22;
          v22 -= 16;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v21 + 1, v23);
          v11 = v21 == v19;
          v21 = v22;
        }

        while (!v11);
      }

      v16[1] = v19;
      v14 = 2;
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v14);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v27 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v29 = *v27;
        goto LABEL_53;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_56;
      }

      v27 = *a1;
      v28 = **a1;
      if (v28)
      {
        v27[1] = v28;
        v29 = v28;
LABEL_53:
        operator delete(v29);
        goto LABEL_54;
      }
    }

LABEL_55:
    operator delete(v27);
    goto LABEL_56;
  }

  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy((*a1)[1]);
    goto LABEL_54;
  }

  if (a2 == 2)
  {
    v30 = *a1;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v30);
LABEL_54:
    v27 = *a1;
    goto LABEL_55;
  }

LABEL_56:
  v30 = &v32;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v30);
}

uint64_t *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2724C3550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    result = v4 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v17 = v8 + 16;
  v9 = a1[1];
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v15);
  return v14;
}

void sub_2724C36EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(unsigned __int8 *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*(a1 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1 + 56);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 8, a1[56]);
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](unsigned __int8 ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v8 = *v7;
        v7 -= 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 1, v8);
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v7 += 16;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    v12 = 1;
    v8 = v6;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      v9 = *v8;
      v8 += 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 1, v9);
      v6 = v8;
    }

    while (v8 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((i - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((i - 8), *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 16;
      v5 = v2 - 16;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
        v6 = *v5;
        v5 -= 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v4 + 1, v6);
        v7 = v4 == v3;
        v4 = v5;
      }

      while (!v7);
    }
  }

  return a1;
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::serializer(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_2724C3B3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(void (****a1)(void), uint64_t ***a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  if (v9 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            v10 = (**a1)[1];
            goto LABEL_262;
          }

LABEL_318:
          __assert_rtn("dump", "serializer.hpp", 363, "false");
        }

        (***a1)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, a2[1]);
        v10 = ***a1;
LABEL_155:

        return v10();
      }

      v28 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v28)();
          v51 = a2[1];
          v53 = *v51;
          v52 = v51[1];
          if (v53 != v52 - 16)
          {
            do
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v53, 0, a4, a5);
              (***a1)();
              v53 += 16;
              v54 = a2[1];
              v52 = v54[1];
            }

            while (v53 != v52 - 16);
            v53 = *v54;
          }

          if (v53 == v52)
          {
            __assert_rtn("dump", "serializer.hpp", 229, "not val.m_value.array->empty()");
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v52 - 16, 0, a4, a5);
          goto LABEL_140;
        }

        v28[1]();
        v29 = a5 + a4;
        v30 = a1 + 76;
        v31 = *(a1 + 631);
        if ((v31 & 0x80000000) != 0)
        {
          v32 = a1[77];
          if (v32 < v29)
          {
            goto LABEL_292;
          }
        }

        else if (v29 > v31)
        {
          v32 = *(a1 + 631);
LABEL_292:
          std::string::resize((a1 + 76), 2 * v32, 32);
        }

        v80 = a2[1];
        v82 = *v80;
        v81 = v80[1];
        if (v82 != v81 - 16)
        {
          do
          {
            v83 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v83 = *v30;
            }

            ((**a1)[1])(*a1, v83, (a5 + a4));
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v82, 1, a4, (a5 + a4));
            ((**a1)[1])(*a1, ",\n", 2);
            v82 += 16;
            v84 = a2[1];
            v81 = v84[1];
          }

          while (v82 != v81 - 16);
          v82 = *v84;
        }

        if (v82 == v81)
        {
          __assert_rtn("dump", "serializer.hpp", 208, "not val.m_value.array->empty()");
        }

        v85 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v85 = *v30;
        }

        ((**a1)[1])(*a1, v85, (a5 + a4));
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, a2[1][1] - 16, 1, a4, (a5 + a4));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v30 = *v30;
        }

        ((**a1)[1])(*a1, v30, a5);
LABEL_140:
        v10 = ***a1;
        goto LABEL_155;
      }

      v39 = v28[1];
      goto LABEL_52;
    }

    if (*a2)
    {
      v11 = **a1;
      if (!a2[1][2])
      {
        v39 = *(v11 + 8);
LABEL_52:

        return v39();
      }

      if (!a3)
      {
        (*v11)();
        v42 = a2[1];
        v43 = *v42;
        if (v42[2] != 1)
        {
          v44 = 0;
          do
          {
            (***a1)(*a1, 34);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v43 + 4);
            ((**a1)[1])(*a1, ":", 2);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v43 + 56, 0, a4, a5);
            (***a1)();
            v45 = v43[1];
            v46 = v43;
            if (v45)
            {
              do
              {
                v43 = v45;
                v45 = *v45;
              }

              while (v45);
            }

            else
            {
              do
              {
                v43 = v46[2];
                v47 = *v43 == v46;
                v46 = v43;
              }

              while (!v47);
            }

            ++v44;
            v42 = a2[1];
          }

          while (v44 < v42[2] - 1);
        }

        v48 = (v42 + 1);
        if (v43 == v48)
        {
          __assert_rtn("dump", "serializer.hpp", 166, "i != val.m_value.object->cend()");
        }

        v49 = v43[1];
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          v86 = v43;
          do
          {
            v50 = v86[2];
            v47 = *v50 == v86;
            v86 = v50;
          }

          while (!v47);
        }

        if (v50 != v48)
        {
          __assert_rtn("dump", "serializer.hpp", 167, "std::next(i) == val.m_value.object->cend()");
        }

        (***a1)(*a1, 34);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v43 + 4);
        ((**a1)[1])(*a1, ":", 2);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v43 + 56, 0, a4, a5);
        goto LABEL_154;
      }

      (*(v11 + 8))();
      v12 = a5 + a4;
      v13 = a1 + 76;
      v14 = *(a1 + 631);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = a1[77];
        if (v15 < v12)
        {
          goto LABEL_290;
        }
      }

      else if (v12 > v14)
      {
        v15 = *(a1 + 631);
LABEL_290:
        std::string::resize((a1 + 76), 2 * v15, 32);
      }

      v71 = a2[1];
      v72 = *v71;
      if (v71[2] == 1)
      {
        v73 = *v71;
      }

      else
      {
        v74 = 0;
        do
        {
          v75 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v75 = *v13;
          }

          ((**a1)[1])(*a1, v75, (a5 + a4));
          (***a1)();
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v72 + 4);
          ((**a1)[1])(*a1, ": ", 3);
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v72 + 56, 1, a4, (a5 + a4));
          ((**a1)[1])(*a1, ",\n", 2);
          v76 = v72[1];
          if (v76)
          {
            do
            {
              v73 = v76;
              v76 = *v76;
            }

            while (v76);
          }

          else
          {
            do
            {
              v73 = v72[2];
              v47 = *v73 == v72;
              v72 = v73;
            }

            while (!v47);
          }

          ++v74;
          v71 = a2[1];
          v72 = v73;
        }

        while (v74 < v71[2] - 1);
      }

      v77 = (v71 + 1);
      if (v73 == v77)
      {
        __assert_rtn("dump", "serializer.hpp", 138, "i != val.m_value.object->cend()");
      }

      v78 = v73[1];
      if (v78)
      {
        do
        {
          v79 = v78;
          v78 = *v78;
        }

        while (v78);
      }

      else
      {
        v87 = v73;
        do
        {
          v79 = v87[2];
          v47 = *v79 == v87;
          v87 = v79;
        }

        while (!v47);
      }

      if (v79 != v77)
      {
        __assert_rtn("dump", "serializer.hpp", 139, "std::next(i) == val.m_value.object->cend()");
      }

      v88 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v88 = *v13;
      }

      ((**a1)[1])(*a1, v88, (a5 + a4));
      (***a1)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v73 + 4);
      ((**a1)[1])(*a1, ": ", 3);
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v73 + 56, 1, a4, (a5 + a4));
      (***a1)();
      v64 = (**a1)[1];
LABEL_153:
      v64();
LABEL_154:
      v10 = ***a1;
      goto LABEL_155;
    }

    goto LABEL_43;
  }

  if (*a2 <= 6u)
  {
    if (v9 == 5)
    {
      v16 = a2[1];
      if (v16)
      {
        v20 = a1 + 2;
        if ((v16 & 0x8000000000000000) != 0)
        {
          *v20 = 45;
          v16 = -v16;
          v55 = 1;
          if (v16 >= 0xA)
          {
            v56 = v16;
            while (1)
            {
              if (v56 <= 0x63)
              {
                ++v55;
                goto LABEL_195;
              }

              if (v56 <= 0x3E7)
              {
                v55 += 2;
                goto LABEL_195;
              }

              if (v56 >> 4 <= 0x270)
              {
                break;
              }

              v55 += 4;
              v19 = v56 >= 0x186A0;
              v56 /= 0x2710uLL;
              if (!v19)
              {
                goto LABEL_195;
              }
            }

            v55 += 3;
          }
        }

        else
        {
          if (v16 < 0xA)
          {
            goto LABEL_31;
          }

          v55 = 1;
          v57 = a2[1];
          while (v57 > 0x63)
          {
            if (v57 <= 0x3E7)
            {
              v55 += 2;
              goto LABEL_196;
            }

            if (v57 >> 4 <= 0x270)
            {
              v55 += 3;
              goto LABEL_196;
            }

            v55 += 4;
            v19 = v57 >= 0x186A0;
            v57 /= 0x2710uLL;
            if (!v19)
            {
              goto LABEL_196;
            }
          }
        }

LABEL_195:
        ++v55;
LABEL_196:
        if (v55 < 0x3F)
        {
          v21 = v20 + v55;
          if (v16 >= 0x64)
          {
            do
            {
              v90 = v16 / 0x64;
              *(v21 - 1) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (v16 % 0x64)];
              v21 -= 2;
              v125 = v16 >> 4;
              v16 /= 0x64uLL;
            }

            while (v125 > 0x270);
            goto LABEL_201;
          }

          goto LABEL_200;
        }

LABEL_284:
        __assert_rtn("dump_integer", "serializer.hpp", 726, "n_chars < number_buffer.size() - 1");
      }
    }

    else
    {
      if (v9 != 6)
      {
        goto LABEL_318;
      }

      v16 = a2[1];
      if (v16)
      {
        if (v16 >= 0xA)
        {
          v17 = 1;
          v18 = a2[1];
          while (1)
          {
            if (v18 <= 0x63)
            {
              ++v17;
              goto LABEL_164;
            }

            if (v18 <= 0x3E7)
            {
              v17 += 2;
              goto LABEL_164;
            }

            if (v18 >> 4 <= 0x270)
            {
              break;
            }

            v17 += 4;
            v19 = v18 >= 0x186A0;
            v18 /= 0x2710uLL;
            if (!v19)
            {
              goto LABEL_164;
            }
          }

          v17 += 3;
LABEL_164:
          if (v17 < 0x3F)
          {
            v21 = a1 + v17 + 16;
            if (v16 >= 0x64)
            {
              do
              {
                v90 = v16 / 0x64;
                *(v21 - 1) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (v16 % 0x64)];
                v21 -= 2;
                v91 = v16 >> 4;
                v16 /= 0x64uLL;
              }

              while (v91 > 0x270);
              goto LABEL_201;
            }

LABEL_200:
            v90 = v16;
LABEL_201:
            if (v90 >= 0xA)
            {
              *(v21 - 1) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * v90];
LABEL_205:
              v126 = *a1;
LABEL_261:
              v10 = (*v126)[1];
              goto LABEL_262;
            }

            LOBYTE(v16) = v90;
LABEL_204:
            *(v21 - 1) = v16 | 0x30;
            goto LABEL_205;
          }

          goto LABEL_284;
        }

LABEL_31:
        v21 = a1 + 17;
        goto LABEL_204;
      }
    }

    v34 = ***a1;
    goto LABEL_58;
  }

  if (v9 == 7)
  {
    v33 = *(a2 + 1);
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_43:
      v10 = (**a1)[1];
      goto LABEL_262;
    }

    if ((*&v33 & 0x8000000000000000) != 0)
    {
      v33 = -v33;
      v38 = (a1 + 17);
      *(a1 + 16) = 45;
    }

    else
    {
      v38 = a1 + 2;
    }

    if (v33 == 0.0)
    {
      *v38 = 11824;
      *(v38 + 2) = 48;
LABEL_260:
      v126 = *a1;
      goto LABEL_261;
    }

    if ((a1 + 10) - v38 <= 16)
    {
      __assert_rtn("to_chars", "to_chars.hpp", 1082, "last - first >= std::numeric_limits<FloatType>::max_digits10");
    }

    if (v33 <= 0.0)
    {
      __assert_rtn("grisu2", "to_chars.hpp", 890, "value > 0");
    }

    v155 = ((a1 + 10) - v38);
    v65 = *&v33 & 0xFFFFFFFFFFFFFLL;
    if (*&v33 >> 52)
    {
      v69 = (*&v33 >> 52) - 1075;
      v67 = 2 * (v65 | 0x10000000000000);
      v68 = (2 * (*&v33 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
      v66 = (*&v33 >> 52) - 1076;
      v70 = (*&v33 >> 52) - 1076;
      if (*&v33 >> 53 && !v65)
      {
        v70 = (*&v33 >> 52) - 1077;
        v65 = 0x10000000000000;
        v89 = 0x3FFFFFFFFFFFFFLL;
        goto LABEL_172;
      }

      v65 |= 0x10000000000000uLL;
    }

    else
    {
      v66 = 4294966221;
      v67 = 2 * *&v33;
      v68 = (2 * (*&v33 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v69 = 4294966222;
      v70 = -1075;
    }

    v89 = v67 - 1;
LABEL_172:
    v92 = nlohmann::detail::dtoa_impl::diyfp::normalize(v68, v66);
    v94 = v93;
    v95 = v70 - v93;
    if (v70 - v93 < 0)
    {
      v153 = "delta >= 0";
      v154 = 162;
    }

    else
    {
      v96 = v89 << v95;
      if ((v89 << v95) >> v95 == v89)
      {
        v97 = v92;
        v98 = nlohmann::detail::dtoa_impl::diyfp::normalize(v65, v69);
        if (v94 != v99)
        {
          __assert_rtn("grisu2", "to_chars.hpp", 828, "m_plus.e == v.e");
        }

        if (v94 <= -1501)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 466, "e >= -1500");
        }

        if (v94 >= 1501)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 467, "e <= 1500");
        }

        v100 = 78913 * (-61 - v94) / 0x40000;
        if (v94 < -61)
        {
          ++v100;
        }

        if (v100 <= -315)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 472, "index >= 0");
        }

        v101 = ((v100 + 307 + (((v100 + 307) >> 28) & 7)) << 16) >> 19;
        if (v101 >= 0x4F)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 473, "static_cast<std::size_t>(index) < kCachedPowers.size()");
        }

        v102 = (&nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * v101);
        v103 = v102[1];
        if (v103 + v94 <= -125)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 476, "kAlpha <= cached.e + e + 64");
        }

        if (v103 + v94 >= -95)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 477, "kGamma >= cached.e + e + 64");
        }

        v104 = *v102;
        v105 = nlohmann::detail::dtoa_impl::diyfp::mul(v98, v94, *v102);
        v107 = v106;
        v108 = nlohmann::detail::dtoa_impl::diyfp::mul(v96, v94, v104);
        v110 = v109;
        v111 = nlohmann::detail::dtoa_impl::diyfp::mul(v97, v94, v104);
        v113 = v112;
        if (v112 <= -61)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 601, "M_plus.e >= kAlpha");
        }

        if (v112 >= -31)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 602, "M_plus.e <= kGamma");
        }

        v114 = v111 - 1;
        v115 = nlohmann::detail::dtoa_impl::diyfp::sub(v111 - 1, v112, v108 + 1, v110);
        v116 = nlohmann::detail::dtoa_impl::diyfp::sub(v114, v113, v105, v107);
        v117 = -v113;
        v118 = v114 >> -v113;
        if (!v118)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 623, "p1 > 0");
        }

        v119 = v116;
        v120 = HIDWORD(v103);
        v121 = (1 << v117) - 1;
        v122 = v121 & v114;
        if (v118 <= 0x3B9AC9FF)
        {
          if (v118 <= 0x5F5E0FF)
          {
            if (v118 <= 0x98967F)
            {
              if (v118 <= 0xF423F)
              {
                v127 = v118 >> 5;
                v128 = v118 >> 4;
                if (v118 <= 9)
                {
                  v129 = 1;
                }

                else
                {
                  v129 = 10;
                }

                if (v118 <= 9)
                {
                  v130 = 1;
                }

                else
                {
                  v130 = 2;
                }

                if (v118 <= 0x63)
                {
                  v131 = v130;
                }

                else
                {
                  v131 = 3;
                }

                if (v118 <= 0x63)
                {
                  v132 = v129;
                }

                else
                {
                  v132 = 100;
                }

                if (v118 <= 0x3E7)
                {
                  v133 = v131;
                }

                else
                {
                  v133 = 4;
                }

                if (v118 <= 0x3E7)
                {
                  v134 = v132;
                }

                else
                {
                  v134 = 1000;
                }

                if (v128 <= 0x270)
                {
                  v135 = v133;
                }

                else
                {
                  v135 = 5;
                }

                if (v128 <= 0x270)
                {
                  v136 = v134;
                }

                else
                {
                  v136 = 10000;
                }

                if (v127 <= 0xC34)
                {
                  v124 = v135;
                }

                else
                {
                  v124 = 6;
                }

                if (v127 > 0xC34)
                {
                  v123 = 100000;
                }

                else
                {
                  v123 = v136;
                }
              }

              else
              {
                v123 = 1000000;
                v124 = 7;
              }
            }

            else
            {
              v123 = 10000000;
              v124 = 8;
            }
          }

          else
          {
            v123 = 100000000;
            v124 = 9;
          }
        }

        else
        {
          v123 = 1000000000;
          v124 = 10;
        }

        v137 = 0;
        v138 = -v124;
        v139 = v124 - 1;
        do
        {
          v140 = v118 / v123;
          if (v118 / v123 >= 0xA)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 659, "d <= 9");
          }

          v118 = v118 % v123;
          v141 = v137 + 1;
          *(v38 + v137) = v140 | 0x30;
          if ((v118 << v117) + v122 <= v115)
          {
            nlohmann::detail::dtoa_impl::grisu2_round(v38, (v137 + 1), v119, v115, (v118 << v117) + v122, v123 << v117);
            LODWORD(v145) = v141;
            goto LABEL_249;
          }

          v123 /= 0xAu;
          --v139;
          ++v137;
        }

        while (v138 + v141);
        if (v122 <= v115)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 746, "p2 > delta");
        }

        v142 = -1;
        do
        {
          if (v122 >= 0x199999999999999ALL)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 757, "p2 <= (std::numeric_limits<std::uint64_t>::max)() / 10");
          }

          v143 = (10 * v122) >> v117;
          if (v143 >= 0xA)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 766, "d <= 9");
          }

          *(v38 + v141) = v143 | 0x30;
          v122 = (10 * v122) & v121;
          v144 = 5 * v115;
          v145 = (v141 + 1);
          v115 *= 10;
          v119 *= 10;
          ++v142;
          ++v141;
        }

        while (v122 > 2 * v144);
        v139 = ~v142;
        nlohmann::detail::dtoa_impl::grisu2_round(v38, v145, v119, v115, v122, 1 << v117);
LABEL_249:
        if (v145 >= 18)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1092, "len <= std::numeric_limits<FloatType>::max_digits10");
        }

        if (v155 <= 0x15)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1100, "last - first >= 2 + (-kMinExp - 1) + std::numeric_limits<FloatType>::max_digits10");
        }

        if (v155 == 22)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1101, "last - first >= std::numeric_limits<FloatType>::max_digits10 + 6");
        }

        v146 = v139 - v120;
        v147 = v139 - v120 + v145;
        if (v139 - v120 < 0 || v147 > 15)
        {
          if ((v147 - 16) >= 0xFFFFFFF1)
          {
            if ((v146 & 0x80000000) == 0)
            {
              __assert_rtn("format_buffer", "to_chars.hpp", 1006, "k > n");
            }

            v148 = v38 + v147;
            memmove(v148 + 1, v148, v145 - v147);
            *v148 = 46;
          }

          else if (v147 != 0 && v147 < 0xFFFFFFFD)
          {
            if (v145 != 1)
            {
              memmove(v38 + 2, v38 + 1, v145 - 1);
              *(v38 + 1) = 46;
              v38 = (v38 + v145);
            }

            *(v38 + 1) = 101;
            if (v147 <= -999)
            {
              __assert_rtn("append_exponent", "to_chars.hpp", 926, "e > -1000");
            }

            if (v147 >= 1001)
            {
              __assert_rtn("append_exponent", "to_chars.hpp", 927, "e < 1000");
            }

            v149 = v147 - 1;
            if (v147 >= 1)
            {
              v150 = 43;
            }

            else
            {
              v150 = 45;
            }

            if (v149 < 0)
            {
              v149 = 1 - v147;
            }

            *(v38 + 2) = v150;
            if (v149 > 9)
            {
              if (v149 > 0x63)
              {
                *(v38 + 3) = v149 / 0x64u + 48;
                LOBYTE(v149) = v149 % 0x64u;
                v152 = v149 / 0xAu;
                v151 = v38 + 5;
                *(v38 + 4) = (v149 / 0xAu) | 0x30;
              }

              else
              {
                v152 = v149 / 0xAu;
                v151 = v38 + 4;
                *(v38 + 3) = (v149 / 0xAu) | 0x30;
              }

              LOBYTE(v149) = v149 - 10 * v152;
            }

            else
            {
              v151 = v38 + 4;
              *(v38 + 3) = 48;
            }

            *v151 = v149 | 0x30;
          }

          else
          {
            memmove(v38 + -v147 + 2, v38, v145);
            *v38 = 11824;
            memset(v38 + 2, 48, -v147);
          }
        }

        else
        {
          memset(v38 + v145, 48, v146);
          *(v38 + v147) = 12334;
        }

        goto LABEL_260;
      }

      v153 = "((x.f << delta) >> delta) == x.f";
      v154 = 163;
    }

    __assert_rtn("normalize_to", "to_chars.hpp", v154, v153);
  }

  if (v9 != 8)
  {
    if (v9 != 9)
    {
      goto LABEL_318;
    }

    v10 = (**a1)[1];
LABEL_262:

    return v10();
  }

  v22 = (**a1)[1];
  if (a3)
  {
    v22();
    v23 = (a5 + a4);
    v24 = a1 + 76;
    v25 = *(a1 + 631);
    if ((v25 & 0x80000000) != 0)
    {
      v58 = a1[77];
      if (v58 >= v23)
      {
        v26 = *a1;
LABEL_94:
        v27 = *v24;
        goto LABEL_95;
      }
    }

    else
    {
      if (v23 <= v25)
      {
        v26 = *a1;
        v27 = a1 + 76;
LABEL_95:
        ((*v26)[1])(v26, v27, v23);
        ((**a1)[1])(*a1, "bytes: [", 10);
        v59 = a2[1][1];
        v60 = *a2[1];
        if (v60 != v59)
        {
          for (; v60 != v59 - 1; v59 = a2[1][1])
          {
            v61 = *v60++;
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v61);
            ((**a1)[1])(*a1, ", ", 2);
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v59 - 1));
        }

        ((**a1)[1])(*a1, "],\n", 3);
        v62 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v62 = *v24;
        }

        ((**a1)[1])(*a1, v62, v23);
        ((**a1)[1])(*a1, "subtype: ", 11);
        v63 = a2[1];
        if (*(v63 + 25) == 1)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v63 + 24));
        }

        else
        {
          ((**a1)[1])(*a1, "null", 4);
        }

        (***a1)(*a1, 10);
        v64 = (**a1)[1];
        goto LABEL_153;
      }

      v58 = *(a1 + 631);
    }

    std::string::resize((a1 + 76), 2 * v58, 32);
    v26 = *a1;
    v27 = a1 + 76;
    if ((*(a1 + 631) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v22();
  v35 = a2[1][1];
  v36 = *a2[1];
  if (v36 != v35)
  {
    while (v36 != v35 - 1)
    {
      v37 = *v36++;
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v37);
      (***a1)(*a1, 44);
      v35 = a2[1][1];
    }

    nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v35 - 1));
  }

  ((**a1)[1])(*a1, "],subtype:", 12);
  v41 = a2[1];
  if (*(v41 + 25) != 1)
  {
    v10 = (**a1)[1];
    goto LABEL_262;
  }

  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v41 + 24));
  v34 = ***a1;
LABEL_58:

  return v34();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t **a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a2 + 23);
  }

  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v2 >> 63;
  v13 = result + 90;
  do
  {
    if (v12)
    {
      v14 = *a2;
    }

    else
    {
      v14 = a2;
    }

    v15 = *(v14 + v9);
    if (v7)
    {
      v6 = v15 & 0x3F | (v6 << 6);
    }

    else
    {
      v6 = (0xFFu >> nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15]) & v15;
    }

    v16 = 16 * v7 + nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15] + 256;
    if (v16 >= 0x190)
    {
      __assert_rtn("decode", "serializer.hpp", 892, "index < 400");
    }

    v7 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v16];
    if (v7 == 1)
    {
      v18 = v5[158];
      if ((v18 - 1) >= 2)
      {
        if (!v18)
        {
          v42 = 3;
          *__str = 0;
          snprintf(__str, 3uLL, "%.2X", v15);
          exception = __cxa_allocate_exception(0x20uLL);
          std::to_string(&v35, v9);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v36, "invalid UTF-8 byte at index ", &v35);
          v27 = std::string::append(&v36, ": 0x", 4uLL);
          v28 = *&v27->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v28;
          v27->__r_.__value_.__l.__size_ = 0;
          v27->__r_.__value_.__r.__words[2] = 0;
          v27->__r_.__value_.__r.__words[0] = 0;
          if (v42 >= 0)
          {
            v29 = __str;
          }

          else
          {
            v29 = *__str;
          }

          if (v42 >= 0)
          {
            v30 = v42;
          }

          else
          {
            v30 = v41;
          }

          v31 = std::string::append(&v37, v29, v30);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v39 = v31->__r_.__value_.__r.__words[2];
          v38 = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::type_error::create(exception, 316, &v38);
        }

        __assert_rtn("dump_escaped", "serializer.hpp", 562, "false");
      }

      v9 -= v10 != 0;
      if (v18 == 1)
      {
        v19 = v13 + v11;
        v8 = v11 + 3;
        *v19 = -16401;
        *(v19 + 2) = -67;
        if ((v11 - 497) > 0xC)
        {
          v7 = 0;
          v10 = 0;
          v11 += 3;
          goto LABEL_46;
        }

        v21 = *(**v5 + 8);
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v7)
    {
      if (v6 <= 11)
      {
        switch(v6)
        {
          case 8:
            v17 = 25180;
            goto LABEL_41;
          case 9:
            v17 = 29788;
            goto LABEL_41;
          case 10:
            v17 = 28252;
            goto LABEL_41;
        }
      }

      else if (v6 > 33)
      {
        if (v6 == 34)
        {
          v17 = 8796;
          goto LABEL_41;
        }

        if (v6 == 92)
        {
          v17 = 23644;
          goto LABEL_41;
        }
      }

      else
      {
        if (v6 == 12)
        {
          v17 = 26204;
          goto LABEL_41;
        }

        if (v6 == 13)
        {
          v17 = 29276;
LABEL_41:
          *(v13 + v8) = v17;
          v11 = v8 + 2;
          goto LABEL_42;
        }
      }

      if (v6 > 0x1F)
      {
        if ((v2 & 0x80u) == 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v23 + v9);
      }

      else
      {
        result = snprintf((v13 + v8), 7uLL, "\\u%04x", v6);
        v11 = v8 + 6;
      }

LABEL_42:
      if ((v11 - 500) <= 0xC)
      {
        v21 = *(**v5 + 8);
LABEL_44:
        result = v21();
        v7 = 0;
        v11 = 0;
        v10 = 0;
        v8 = 0;
        goto LABEL_46;
      }

LABEL_45:
      v7 = 0;
      v10 = 0;
      v8 = v11;
      goto LABEL_46;
    }

    if ((v2 & 0x80u) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *(v13 + v8++) = *(v20 + v9);
    ++v10;
LABEL_46:
    ++v9;
    v2 = *(a2 + 23);
    v12 = v2 >> 63;
    v22 = a2[1];
    if ((v2 & 0x80000000) == 0)
    {
      v22 = *(a2 + 23);
    }
  }

  while (v9 < v22);
  if (v7)
  {
    v25 = v5[158];
    switch(v25)
    {
      case 1:
        (*(**v5 + 8))(*v5, v13, v11);
        v24 = *(**v5 + 8);
        break;
      case 2:
        v24 = *(**v5 + 8);
        break;
      case 0:
        v42 = 3;
        *__str = 0;
        v33 = *a2;
        if ((v2 & 0x80000000) == 0)
        {
          v33 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v33 + v22 - 1));
        v34 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        nlohmann::detail::type_error::create(v34, 316, &v38);
      default:
        __assert_rtn("dump_escaped", "serializer.hpp", 625, "false");
    }

LABEL_57:

    return v24();
  }

  else if (v8)
  {
    v24 = *(**v5 + 8);
    goto LABEL_57;
  }

  return result;
}

void sub_2724C5DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      if (*(v37 - 81) < 0)
      {
        operator delete(*(v37 - 104));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(void *a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  if (a2 < 0xA)
  {
    v2 = 1;
LABEL_8:
    v5 = a2 | 0x30;
    goto LABEL_9;
  }

  if (a2 >= 0x64)
  {
    *(a1 + 17) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (a2 - 100 * ((41 * a2) >> 12))];
    v2 = 3;
    a2 = (41 * a2) >> 12;
    goto LABEL_8;
  }

  v4 = &nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * a2];
  *(a1 + 17) = v4[1];
  v5 = *v4;
  v2 = 2;
LABEL_9:
  *(a1 + 16) = v5;
  return (*(**a1 + 8))(*a1, a1 + 2, v2);
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::sub(unint64_t a1, int a2, unint64_t a3, int a4)
{
  if (a2 != a4)
  {
    v6 = "x.e == y.e";
    v7 = 66;
LABEL_6:
    __assert_rtn("sub", "to_chars.hpp", v7, v6);
  }

  v4 = a1 >= a3;
  result = a1 - a3;
  if (!v4)
  {
    v6 = "x.f >= y.f";
    v7 = 67;
    goto LABEL_6;
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_round(uint64_t this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 545, "len >= 1");
  }

  if (a3 > a4)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 546, "dist <= delta");
  }

  if (a4 < a5)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 547, "rest <= delta");
  }

  if (!a6)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 548, "ten_k > 0");
  }

  v6 = a3 - a5;
  if (a3 > a5 && a4 - a5 >= a6)
  {
    v7 = this - 1;
    v8 = a6 + a5;
    v9 = a4 - (a6 + a5);
    do
    {
      if (v8 >= a3 && v6 <= v8 - a3)
      {
        break;
      }

      v10 = *(v7 + a2);
      if (v10 == 48)
      {
        __assert_rtn("grisu2_round", "to_chars.hpp", 573, "buf[len - 1] != '0'");
      }

      *(v7 + a2) = v10 - 1;
      if (v8 >= a3)
      {
        break;
      }

      v6 -= a6;
      v8 += a6;
      v11 = v9 >= a6;
      v9 -= a6;
    }

    while (v11);
  }

  return this;
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::normalize(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    __assert_rtn("normalize", "to_chars.hpp", 143, "x.f != 0");
  }

  for (; (result & 0x8000000000000000) == 0; a2 = (a2 - 1) | a2 & 0xFFFFFFFF00000000)
  {
    result *= 2;
  }

  return result;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void nlohmann::detail::type_error::create(nlohmann::detail::exception *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "type_error");
  nlohmann::detail::exception::name(&v14, __p, v4);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a1, v4, v11);
  *a1 = &unk_2881C1800;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2724C62F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void nlohmann::detail::type_error::~type_error(std::exception *this)
{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

void nlohmann::detail::exception::~exception(std::exception *this)
{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);

  std::exception::~exception(this);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void nlohmann::detail::exception::name(std::string *a1, uint64_t a2, int a3)
{
  std::operator+<char>();
  v5 = std::string::append(&v13, ".", 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v14, p_p, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v15, "] ", 2uLL);
  *a1 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_2724C66B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

nlohmann::detail::exception *nlohmann::detail::exception::exception(nlohmann::detail::exception *this, int a2, const char *a3)
{
  *this = &unk_2881C1828;
  *(this + 2) = a2;
  std::runtime_error::runtime_error(this + 1, a3);
  return this;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__shared_ptr_emplace<nlohmann::detail::output_string_adapter<char,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881C1768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::vector<void const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 2;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void vp::services::Personal_Audio_Impl::get_personal_media_preset(vp::services::Personal_Audio_Impl **a1@<X1>, applesauce::CF::DictionaryRef *a2@<X8>)
{
  if (objc_opt_class())
  {
    v8 = vp::services::Personal_Audio_Impl::parse_route_uid(*a1, v4);
    v5 = [MEMORY[0x277D3A1D0] sharedInstance];
    v6 = [v5 personalMediaConfigurationForRouteUID:v8];
    v7 = [v6 preset];

    applesauce::CF::DictionaryRef::from_ns_noexcept(a2, v7);
  }

  else
  {
    *a2 = 0;
  }
}

id vp::services::Personal_Audio_Impl::parse_route_uid(vp::services::Personal_Audio_Impl *this, NSString *a2)
{
  v2 = this;
  v3 = [(vp::services::Personal_Audio_Impl *)v2 componentsSeparatedByString:@"-"];
  v4 = [v3 objectAtIndexedSubscript:0];

  return v4;
}

void applesauce::CF::DictionaryRef::from_ns_noexcept(applesauce::CF::DictionaryRef *this, NSDictionary *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFDictionaryGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_2724C6D88(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::services::Personal_Audio_Impl::get_personal_media_preset(applesauce::CF::DictionaryRef *a1@<X8>)
{
  if (objc_opt_class())
  {
    v2 = [MEMORY[0x277D3A1D0] sharedInstance];
    v6 = [v2 personalMediaConfiguration];

    v3 = [v6 presetAdjustments];
    v4 = *MEMORY[0x277D3A1E8];
    v5 = [v3 objectForKey:v4];
    applesauce::CF::DictionaryRef::from_ns_noexcept(a1, v5);
  }

  else
  {
    *a1 = 0;
  }
}

unint64_t vp::services::Personal_Audio_Impl::is_personal_media_enabled(uint64_t a1, vp::services::Personal_Audio_Impl **a2)
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v4 = vp::services::Personal_Audio_Impl::parse_route_uid(*a2, v3);
  v5 = [MEMORY[0x277D3A1D0] sharedInstance];
  v6 = [v5 personalMediaEnabledForRouteUID:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277D3A1D0] sharedInstance];
    v8 = ([v7 accommodationTypesForRouteUID:v4] >> 1) & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

unint64_t vp::services::Personal_Audio_Impl::is_personal_media_enabled(vp::services::Personal_Audio_Impl *this)
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v1 = [MEMORY[0x277D3A1D0] sharedInstance];
  v2 = [v1 personalMediaEnabled];

  if (v2)
  {
    v3 = [MEMORY[0x277D3A1D0] sharedInstance];
    v2 = ([v3 personalAudioAccommodationTypes] >> 1) & 1;
  }

  return v2;
}

uint64_t vp::services::Orientation_Impl::unregister_ui_orientation_listener(vp::services::Orientation_Impl *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = CAUnregisterUIOrientation();
  v3 = v2;
  if (!v2)
  {
    return 1;
  }

  v5 = vp::get_log(v2);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::services::Orientation_Impl]", 30);
    v8 = v15;
    v9 = __p[1];
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if ((v8 & 0x80u) == 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      v12 = __p[0];
      if ((v8 & 0x80u) == 0)
      {
        v12 = __p;
      }

      *buf = 136315650;
      v17 = v12;
      if (v11)
      {
        v13 = " ";
      }

      else
      {
        v13 = "";
      }

      v18 = 2080;
      v19 = v13;
      v20 = 1024;
      v21 = v3;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%s%sfailed to unregister UI orientation listener with status %u", buf, 0x1Cu);
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_2724C7190(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2724C7180);
  }

  j___Unwind_Resume(a1);
}

void sub_2724C71A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  j___Unwind_Resume(a1);
}

BOOL vp::services::Orientation_Impl::register_ui_orientation_listener(uint64_t a1, uint64_t *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3321888768;
  v27 = ___ZN2vp8services16Orientation_Impl32register_ui_orientation_listenerEN5caulk16inplace_functionIFv13CAOrientationELm32ELm8ENS2_23inplace_function_detail6vtableEEE_block_invoke;
  v28 = &__block_descriptor_80_ea8_40c95_ZTSN5caulk16inplace_functionIFv13CAOrientationELm32ELm8ENS_23inplace_function_detail6vtableEEE_e8_v12__0i8l;
  v3 = *a2;
  v29 = a1;
  v30 = v3;
  (*(v3 + 8))(v31, a2 + 1);
  v4 = CARegisterUIOrientation();
  v5 = v4;
  v6 = v4 == 0;
  if (v4)
  {
    v8 = vp::get_log(v4);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      log_context_info = vp::get_log_context_info(__p, a1, "vp::services::Orientation_Impl]", 30);
      v11 = v18;
      v12 = __p[1];
      v13 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        if ((v11 & 0x80u) == 0)
        {
          v14 = v11;
        }

        else
        {
          v14 = v12;
        }

        v15 = __p[0];
        if ((v11 & 0x80u) == 0)
        {
          v15 = __p;
        }

        *buf = 136315650;
        v20 = v15;
        if (v14)
        {
          v16 = " ";
        }

        else
        {
          v16 = "";
        }

        v21 = 2080;
        v22 = v16;
        v23 = 1024;
        v24 = v5;
        _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_ERROR, "%s%sfailed to register UI orientation listener with status %u", buf, 0x1Cu);
      }

      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  (*(v30 + 24))(v31);
  return v6;
}

void sub_2724C73AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a2)
  {
    (*(a23 + 24))(v23 + 48, a2, a3, a4, a5, a6, a7, a8);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2724C7264);
  }

  JUMPOUT(0x2724C739CLL);
}

uint64_t ___ZN2vp8services16Orientation_Impl32register_ui_orientation_listenerEN5caulk16inplace_functionIFv13CAOrientationELm32ELm8ENS2_23inplace_function_detail6vtableEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = vp::get_log(a1);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = CFStringCreateWithCAOrientation();
    v8 = vp::get_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      log_context_info = vp::get_log_context_info(__p, v4, "vp::services::Orientation_Impl]", 30);
      v11 = v19;
      v12 = __p[1];
      v13 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        if ((v11 & 0x80u) == 0)
        {
          v14 = v11;
        }

        else
        {
          v14 = v12;
        }

        v15 = __p[0];
        if ((v11 & 0x80u) == 0)
        {
          v15 = __p;
        }

        *buf = 136315650;
        v21 = v15;
        if (v14)
        {
          v16 = " ";
        }

        else
        {
          v16 = "";
        }

        v22 = 2080;
        v23 = v16;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_INFO, "%s%sUI orientation changed to %@", buf, 0x20u);
      }

      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    CFRelease(v7);
  }

  *buf = v2;
  return (**(a1 + 40))(a1 + 48, buf);
}

uint64_t __copy_helper_block_ea8_40c95_ZTSN5caulk16inplace_functionIFv13CAOrientationELm32ELm8ENS_23inplace_function_detail6vtableEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 40) = v2;
  return (*(v2 + 8))(a1 + 48, a2 + 48);
}

uint64_t vp::services::Orientation_Impl::unregister_device_orientation_listener(vp::services::Orientation_Impl *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = CAUnregisterDeviceOrientation();
  v3 = v2;
  if (!v2)
  {
    return 1;
  }

  v5 = vp::get_log(v2);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::services::Orientation_Impl]", 30);
    v8 = v15;
    v9 = __p[1];
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if ((v8 & 0x80u) == 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      v12 = __p[0];
      if ((v8 & 0x80u) == 0)
      {
        v12 = __p;
      }

      *buf = 136315650;
      v17 = v12;
      if (v11)
      {
        v13 = " ";
      }

      else
      {
        v13 = "";
      }

      v18 = 2080;
      v19 = v13;
      v20 = 1024;
      v21 = v3;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%s%sfailed to unregister device orientation listener with status %u", buf, 0x1Cu);
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_2724C7744(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2724C7734);
  }

  j___Unwind_Resume_0(a1);
}

void sub_2724C7754(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  j___Unwind_Resume_0(a1);
}

BOOL vp::services::Orientation_Impl::register_device_orientation_listener(uint64_t a1, uint64_t *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3321888768;
  v27 = ___ZN2vp8services16Orientation_Impl36register_device_orientation_listenerEN5caulk16inplace_functionIFv13CAOrientationELm32ELm8ENS2_23inplace_function_detail6vtableEEE_block_invoke;
  v28 = &__block_descriptor_80_ea8_40c95_ZTSN5caulk16inplace_functionIFv13CAOrientationELm32ELm8ENS_23inplace_function_detail6vtableEEE_e8_v12__0i8l;
  v3 = *a2;
  v29 = a1;
  v30 = v3;
  (*(v3 + 8))(v31, a2 + 1);
  v4 = CARegisterDeviceOrientation();
  v5 = v4;
  v6 = v4 == 0;
  if (v4)
  {
    v8 = vp::get_log(v4);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      log_context_info = vp::get_log_context_info(__p, a1, "vp::services::Orientation_Impl]", 30);
      v11 = v18;
      v12 = __p[1];
      v13 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        if ((v11 & 0x80u) == 0)
        {
          v14 = v11;
        }

        else
        {
          v14 = v12;
        }

        v15 = __p[0];
        if ((v11 & 0x80u) == 0)
        {
          v15 = __p;
        }

        *buf = 136315650;
        v20 = v15;
        if (v14)
        {
          v16 = " ";
        }

        else
        {
          v16 = "";
        }

        v21 = 2080;
        v22 = v16;
        v23 = 1024;
        v24 = v5;
        _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_ERROR, "%s%sfailed to register device orientation listener with status %u", buf, 0x1Cu);
      }

      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  (*(v30 + 24))(v31);
  return v6;
}

void sub_2724C7960(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a2)
  {
    (*(a23 + 24))(v23 + 48, a2, a3, a4, a5, a6, a7, a8);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2724C7818);
  }

  JUMPOUT(0x2724C7950);
}

uint64_t ___ZN2vp8services16Orientation_Impl36register_device_orientation_listenerEN5caulk16inplace_functionIFv13CAOrientationELm32ELm8ENS2_23inplace_function_detail6vtableEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = vp::get_log(a1);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = CFStringCreateWithCAOrientation();
    v8 = vp::get_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      log_context_info = vp::get_log_context_info(__p, v4, "vp::services::Orientation_Impl]", 30);
      v11 = v19;
      v12 = __p[1];
      v13 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        if ((v11 & 0x80u) == 0)
        {
          v14 = v11;
        }

        else
        {
          v14 = v12;
        }

        v15 = __p[0];
        if ((v11 & 0x80u) == 0)
        {
          v15 = __p;
        }

        *buf = 136315650;
        v21 = v15;
        if (v14)
        {
          v16 = " ";
        }

        else
        {
          v16 = "";
        }

        v22 = 2080;
        v23 = v16;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_INFO, "%s%sdevice orientation changed to %@", buf, 0x20u);
      }

      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    CFRelease(v7);
  }

  *buf = v2;
  return (**(a1 + 40))(a1 + 48, buf);
}

uint64_t vp::services::Mobile_Gestalt_Impl::copy_answer@<X0>(int a1@<W1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  if (a1 == 1)
  {
    v3 = *a2;
    v4 = @"meicxSe0OZJaae1hEiOV5Q";
    return vp::services::Mobile_Gestalt_Impl::copy_answer<__CFString const*>(a3, v4, v3);
  }

  if (!a1)
  {
    v3 = *a2;
    v4 = @"jxx29Cq5bGHDnkcha4y/Rw";
    return vp::services::Mobile_Gestalt_Impl::copy_answer<__CFString const*>(a3, v4, v3);
  }

  *a3 = 0;
  return result;
}

uint64_t vp::services::Mobile_Gestalt_Impl::copy_answer<__CFString const*>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = MGCopyAnswer();
  *a1 = result;
  return result;
}

void sub_2724C7BC8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x2724C7BBCLL);
}

void vp::services::Core_Media_Impl::get_fig_capture_speaker_interference_mitigation_cf_notification_key(void *a1@<X8>)
{
  v2 = *MEMORY[0x277CF3BB8];
  if (*MEMORY[0x277CF3BB8] && (CFRetain(*MEMORY[0x277CF3BB8]), v3 = CFGetTypeID(v2), v3 != CFStringGetTypeID()))
  {
    *a1 = 0;
    CFRelease(v2);
  }

  else
  {
    *a1 = v2;
  }
}

void ___ZL27getSTMediaStatusDomainClassv_block_invoke(uint64_t a1)
{
  v5 = 0;
  if (SystemStatusLibraryCore(&v5))
  {
    if (v5)
    {
      free(v5);
    }

    *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STMediaStatusDomain");
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      getSTMediaStatusDomainClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
      return;
    }

    v2 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSTMediaStatusDomainClass()_block_invoke"];
    [v2 handleFailureInFunction:v4 file:@"System_Status_Impl.hpp" lineNumber:30 description:{@"Unable to find class %s", "STMediaStatusDomain"}];
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SystemStatusLibrary()"];
    [v2 handleFailureInFunction:v3 file:@"System_Status_Impl.hpp" lineNumber:25 description:{@"%s", v5}];
  }

  __break(1u);
}

uint64_t SystemStatusLibraryCore(char **a1)
{
  if (!SystemStatusLibraryCore(char **)::frameworkLibrary)
  {
    SystemStatusLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  return SystemStatusLibraryCore(char **)::frameworkLibrary;
}

uint64_t ___ZL23SystemStatusLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SystemStatusLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

uint64_t vp::services::System_Status_Impl::Media_Status_Domain::observe_camera_capture_attributions(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZNK2vp8services18System_Status_Impl19Media_Status_Domain35observe_camera_capture_attributionsENSt3__18functionIFvNS3_6vectorINS0_13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS_9AllocatorIS8_EEEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c137_ZTSNSt3__18functionIFvNS_6vectorIN2vp8services13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS2_9AllocatorIS6_EEEEEEE_e33_v16__0__STMediaStatusDomainData_8l;
  std::__function::__value_func<void ()(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)>::__value_func[abi:ne200100](v6, a2);
  v3 = _Block_copy(aBlock);
  [*(a1 + 8) observeDataWithBlock:v3];

  return std::__function::__value_func<void ()(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)>::~__value_func[abi:ne200100](v6);
}

void sub_2724C8058(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZNK2vp8services18System_Status_Impl19Media_Status_Domain35observe_camera_capture_attributionsENSt3__18functionIFvNS3_6vectorINS0_13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS_9AllocatorIS8_EEEEEEE_block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  default_resource = std::pmr::get_default_resource(v3);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(std::pmr *)v3 cameraAttributions];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) activityAttribution];
        v9 = [v8 attributedEntity];
        v10 = [v9 bundleIdentifier];
        applesauce::CF::StringRef::from_get(&cf, v10);
        v11 = v19;
        if (v19 >= v20)
        {
          v19 = std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__emplace_back_slow_path<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>(&v18, &cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          *v19 = cf;
          cf = 0;
          v19 = v11 + 1;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v5);
  }

  memset(v13, 0, 24);
  v13[3] = default_resource;
  std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__init_with_size[abi:ne200100]<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution*,vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution*>(v13, v18, v19, v19 - v18);
  v12 = *(a1 + 56);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, v13);
  cf = v13;
  std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__destroy_vector::operator()[abi:ne200100](&cf);
  cf = &v18;
  std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__destroy_vector::operator()[abi:ne200100](&cf);
}

void sub_2724C8274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25)
{
  a25 = &a21;
  std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__destroy_vector::operator()[abi:ne200100](&a25);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__emplace_back_slow_path<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>(uint64_t a1, void *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (v2 - *a1) >> 3;
  v5 = v4 + 1;
  if ((v4 + 1) >> 61)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 2 > v5)
  {
    v5 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {
    v10 = std::pmr::polymorphic_allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>::allocate[abi:ne200100](a1 + 24, v9);
    v3 = *a1;
    v2 = *(a1 + 8);
    v11 = (v2 - *a1) >> 3;
  }

  else
  {
    v10 = 0;
    v11 = v4;
  }

  v12 = (v10 + 8 * v4);
  v13 = &v12[-v11];
  *v12 = *a2;
  v14 = v12 + 1;
  *a2 = 0;
  *&v15 = v14;
  *(&v15 + 1) = v10 + 8 * v9;
  v22 = v15;
  if (v3 != v2)
  {
    v16 = v13;
    v17 = v3;
    do
    {
      *v16++ = *v17;
      *v17++ = 0;
    }

    while (v17 != v2);
    do
    {
      v18 = *v3++;
      std::pmr::polymorphic_allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>::destroy[abi:ne200100]<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>(v18);
    }

    while (v3 != v2);
  }

  v19 = *a1;
  *a1 = v13;
  v20 = *(a1 + 16);
  *(a1 + 8) = v22;
  if (v19)
  {
    std::allocator_traits<vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::deallocate[abi:ne200100](*(a1 + 24), v19, (v20 - v19) >> 3);
  }

  return v14;
}

void *std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__init_with_size[abi:ne200100]<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution*,vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution*>(void *result, CFTypeRef *a2, CFTypeRef *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >> 61)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    result = std::pmr::polymorphic_allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>::allocate[abi:ne200100]((result + 3), a4);
    v8 = result;
    *v7 = result;
    v7[1] = result;
    v7[2] = &result[a4];
    while (a2 != a3)
    {
      v9 = *a2;
      if (*a2)
      {
        result = CFRetain(*a2);
      }

      *v8++ = v9;
      ++a2;
    }

    v7[1] = v8;
  }

  return result;
}

uint64_t **std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        v7 = *(v3 - 8);
        v3 -= 8;
        std::pmr::polymorphic_allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>::destroy[abi:ne200100]<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>(v7);
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    v8 = v5[3];
    v9 = (v5[2] - v4) >> 3;

    return std::allocator_traits<vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::deallocate[abi:ne200100](v8, v4, v9);
  }

  return result;
}

void vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution::~Camera_Capture_Attribution(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::pmr::polymorphic_allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>::destroy[abi:ne200100]<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t std::pmr::polymorphic_allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *(**a1 + 16);

  return v3();
}

void vp::services::System_Status_Impl::Media_Status_Domain::get_camera_capture_attributions(id *this@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = SystemStatusLibraryCore(0);
  if (!v4)
  {
    v5 = vp::get_log(0);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      log_context_info = vp::get_log_context_info(__p, this, "vp::services::System_Status_Impl::Media_Status_Domain]", 53);
      v8 = v29;
      v9 = __p[1];
      v10 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if ((v8 & 0x80u) == 0)
        {
          v11 = v8;
        }

        else
        {
          v11 = v9;
        }

        v12 = __p[0];
        if ((v8 & 0x80u) == 0)
        {
          v12 = __p;
        }

        if (v11)
        {
          v13 = " ";
        }

        else
        {
          v13 = "";
        }

        *buf = 136315394;
        v32 = v12;
        v33 = 2080;
        v34 = v13;
        _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%s%sSystemStatus framework is unavailable and camera status indicator will not function", buf, 0x16u);
      }

      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = std::pmr::get_default_resource(v4);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [this[1] data];
  v15 = [v14 cameraAttributions];

  v16 = [v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v16)
  {
    v17 = 0;
    v18 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * i) activityAttribution];
        v21 = [v20 attributedEntity];
        v22 = [v21 bundleIdentifier];
        applesauce::CF::StringRef::from_get(__p, v22);
        if (v17 >= a2[2])
        {
          v17 = std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__emplace_back_slow_path<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>(a2, __p);
          v23 = __p[0];
          a2[1] = v17;
          if (v23)
          {
            CFRelease(v23);
          }
        }

        else
        {
          *v17++ = __p[0];
          __p[0] = 0;
          a2[1] = v17;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v16);
  }
}

void sub_2724C8A3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::services::System_Status_Impl::Media_Status_Domain::~Media_Status_Domain(id *this)
{

  JUMPOUT(0x2743CBFA0);
}

{
}

void vp::services::System_Status_Impl::~System_Status_Impl(id *this)
{

  JUMPOUT(0x2743CBFA0);
}

{
}

void vp::services::Control_Center_Impl::get_automatic_mic_mode_is_enabled_notification(vp::services::Control_Center_Impl *this@<X0>, void *a2@<X8>)
{
  if (*(this + 16) == 1)
  {
    v3 = *MEMORY[0x277CE5820];
    if (*MEMORY[0x277CE5820])
    {
      CFRetain(*MEMORY[0x277CE5820]);
      v4 = CFGetTypeID(v3);
      if (v4 != CFStringGetTypeID())
      {
        *a2 = 0;
        CFRelease(v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
}

vp *vp::services::Control_Center_Impl::get_automatic_mic_mode_is_enabled_for_bundle_id(vp *a1, const __CFString **a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = vp::get_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v7 = &v32;
    log_context_info = vp::get_log_context_info(&v32, a1, "vp::services::Control_Center_Impl]", 33);
    v9 = v34;
    v10 = v33;
    v11 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if ((v9 & 0x80u) == 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = v10;
      }

      if ((v9 & 0x80u) != 0)
      {
        v7 = v32;
      }

      if (v12)
      {
        v13 = " ";
      }

      else
      {
        v13 = "";
      }

      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(__p, *a2);
      if (v31 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315650;
      v36 = v7;
      v37 = 2080;
      v38 = v13;
      v39 = 2080;
      v40 = v14;
      _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_INFO, "%s%sgetting automatic mic mode is enabled for bundle ID %s", buf, 0x20u);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v34 < 0)
    {
      operator delete(v32);
    }
  }

  if (*(a1 + 16) == 1)
  {
    v6 = AVAUVoiceIOIsAutoChatFlavorEnabledForBundleID();
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  v16 = vp::get_log(v6);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

  if (v17)
  {
    v18 = &v32;
    v19 = vp::get_log_context_info(&v32, a1, "vp::services::Control_Center_Impl]", 33);
    v20 = v34;
    v21 = v33;
    v22 = vp::get_log(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      if ((v20 & 0x80u) == 0)
      {
        v23 = v20;
      }

      else
      {
        v23 = v21;
      }

      if ((v20 & 0x80u) != 0)
      {
        v18 = v32;
      }

      if (v23)
      {
        v24 = " ";
      }

      else
      {
        v24 = "";
      }

      if (v15)
      {
        v25 = "enabled";
      }

      else
      {
        v25 = "disabled";
      }

      if (!*a2)
      {
        v29 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v29, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(__p, *a2);
      if (v31 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      *buf = 136315906;
      v36 = v18;
      v37 = 2080;
      v38 = v24;
      v39 = 2080;
      v40 = v25;
      v41 = 2080;
      v42 = v26;
      _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_INFO, "%s%sautomatic mic mode is %s for bundle ID %s", buf, 0x2Au);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v34 < 0)
    {
      operator delete(v32);
    }
  }

  return v15;
}

void sub_2724C8F44(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    __cxa_free_exception(v20);

    if (a19 < 0)
    {
      operator delete(__p);
    }

    v23 = __cxa_begin_catch(a1);
    v24 = vp::get_log(v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Control_Center_Impl]", 33);
      v27 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724C8E90);
  }

  _Unwind_Resume(a1);
}

void *applesauce::CF::convert_to<std::string,0>(uint64_t a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return applesauce::CF::details::CFString_get_value<true>(a1, a2);
}

void *applesauce::CF::details::CFString_get_value<true>(uint64_t a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(theString);
    maxBufLen = 0;
    v10.location = 0;
    v10.length = Length;
    CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    std::string::basic_string[abi:ne200100](a1, maxBufLen, 0);
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v11.location = 0;
    v11.length = Length;
    return CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
  }
}

void sub_2724C92A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100](void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__b + 23) = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  *(__b + __len) = 0;
  return __b;
}

void vp::services::Control_Center_Impl::set_supported_chat_flavors_for_bundle_id(vp *a1, const __CFString **a2, uint64_t a3, unint64_t a4)
{
  buf[7] = *MEMORY[0x277D85DE8];
  v6 = vp::get_log(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

  if (v7)
  {
    operator new();
  }

  vp::services::Control_Center_Impl::convert_chat_flavors(buf, a3, a4);
  AVAUVoiceIOSetSupportedChatFlavorsForBundleID();
  if (buf[0])
  {
    CFRelease(buf[0]);
  }
}

void sub_2724C96B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    __cxa_free_exception(v25);

    if (a18 < 0)
    {
      operator delete(__p);
    }

    if (a24 < 0)
    {
      operator delete(a19);
    }

    v28 = __cxa_begin_catch(a1);
    v29 = vp::get_log(v28);
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

    if (v30)
    {
      log_context_info = vp::get_log_context_info(&a19, v24, "vp::services::Control_Center_Impl]", 33);
      v32 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a10);
      }

      if (a24 < 0)
      {
        operator delete(a19);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724C9640);
  }

  _Unwind_Resume(a1);
}

char *vp::reflect_value_name_tag<vp::services::Control_Center::Chat_Flavor,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::services::Control_Center::Chat_Flavor)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

void vp::services::Control_Center_Impl::convert_chat_flavors(__CFArray **a1, uint64_t a2, unint64_t capacity)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], capacity, MEMORY[0x277CBF128]);
  if (capacity)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      valuePtr = *(a2 + 4 * v7);
      v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      cf = v9;
      if (!v9)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      CFArrayAppendValue(Mutable, v9);
      CFRelease(cf);
      v7 = v8++;
    }

    while (v7 < capacity);
  }

  *a1 = Mutable;
  if (Mutable)
  {
    v10 = CFGetTypeID(Mutable);
    if (v10 != CFArrayGetTypeID())
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
    }
  }
}

void sub_2724C9A38(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

char *vp::detail::reflect_value_name<(vp::services::Control_Center::Chat_Flavor)0,128ul>(int a1)
{
  result = "vp::services::Control_Center::Chat_Flavor::Standard]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::services::Control_Center::Chat_Flavor::Wide_Spectrum]";
      break;
    case 2:
      result = "vp::services::Control_Center::Chat_Flavor::Voice_Isolation]";
      break;
    case 3:
      result = "(vp::services::Control_Center::Chat_Flavor)3]";
      break;
    case 4:
      result = "(vp::services::Control_Center::Chat_Flavor)4]";
      break;
    case 5:
      result = "(vp::services::Control_Center::Chat_Flavor)5]";
      break;
    case 6:
      result = "(vp::services::Control_Center::Chat_Flavor)6]";
      break;
    case 7:
      result = "(vp::services::Control_Center::Chat_Flavor)7]";
      break;
    case 8:
      result = "(vp::services::Control_Center::Chat_Flavor)8]";
      break;
    case 9:
      result = "(vp::services::Control_Center::Chat_Flavor)9]";
      break;
    case 10:
      result = "(vp::services::Control_Center::Chat_Flavor)10]";
      break;
    case 11:
      result = "(vp::services::Control_Center::Chat_Flavor)11]";
      break;
    case 12:
      result = "(vp::services::Control_Center::Chat_Flavor)12]";
      break;
    case 13:
      result = "(vp::services::Control_Center::Chat_Flavor)13]";
      break;
    case 14:
      result = "(vp::services::Control_Center::Chat_Flavor)14]";
      break;
    case 15:
      result = "(vp::services::Control_Center::Chat_Flavor)15]";
      break;
    case 16:
      result = "(vp::services::Control_Center::Chat_Flavor)16]";
      break;
    case 17:
      result = "(vp::services::Control_Center::Chat_Flavor)17]";
      break;
    case 18:
      result = "(vp::services::Control_Center::Chat_Flavor)18]";
      break;
    case 19:
      result = "(vp::services::Control_Center::Chat_Flavor)19]";
      break;
    case 20:
      result = "(vp::services::Control_Center::Chat_Flavor)20]";
      break;
    case 21:
      result = "(vp::services::Control_Center::Chat_Flavor)21]";
      break;
    case 22:
      result = "(vp::services::Control_Center::Chat_Flavor)22]";
      break;
    case 23:
      result = "(vp::services::Control_Center::Chat_Flavor)23]";
      break;
    case 24:
      result = "(vp::services::Control_Center::Chat_Flavor)24]";
      break;
    case 25:
      result = "(vp::services::Control_Center::Chat_Flavor)25]";
      break;
    case 26:
      result = "(vp::services::Control_Center::Chat_Flavor)26]";
      break;
    case 27:
      result = "(vp::services::Control_Center::Chat_Flavor)27]";
      break;
    case 28:
      result = "(vp::services::Control_Center::Chat_Flavor)28]";
      break;
    case 29:
      result = "(vp::services::Control_Center::Chat_Flavor)29]";
      break;
    case 30:
      result = "(vp::services::Control_Center::Chat_Flavor)30]";
      break;
    case 31:
      result = "(vp::services::Control_Center::Chat_Flavor)31]";
      break;
    case 32:
      result = "(vp::services::Control_Center::Chat_Flavor)32]";
      break;
    case 33:
      result = "(vp::services::Control_Center::Chat_Flavor)33]";
      break;
    case 34:
      result = "(vp::services::Control_Center::Chat_Flavor)34]";
      break;
    case 35:
      result = "(vp::services::Control_Center::Chat_Flavor)35]";
      break;
    case 36:
      result = "(vp::services::Control_Center::Chat_Flavor)36]";
      break;
    case 37:
      result = "(vp::services::Control_Center::Chat_Flavor)37]";
      break;
    case 38:
      result = "(vp::services::Control_Center::Chat_Flavor)38]";
      break;
    case 39:
      result = "(vp::services::Control_Center::Chat_Flavor)39]";
      break;
    case 40:
      result = "(vp::services::Control_Center::Chat_Flavor)40]";
      break;
    case 41:
      result = "(vp::services::Control_Center::Chat_Flavor)41]";
      break;
    case 42:
      result = "(vp::services::Control_Center::Chat_Flavor)42]";
      break;
    case 43:
      result = "(vp::services::Control_Center::Chat_Flavor)43]";
      break;
    case 44:
      result = "(vp::services::Control_Center::Chat_Flavor)44]";
      break;
    case 45:
      result = "(vp::services::Control_Center::Chat_Flavor)45]";
      break;
    case 46:
      result = "(vp::services::Control_Center::Chat_Flavor)46]";
      break;
    case 47:
      result = "(vp::services::Control_Center::Chat_Flavor)47]";
      break;
    case 48:
      result = "(vp::services::Control_Center::Chat_Flavor)48]";
      break;
    case 49:
      result = "(vp::services::Control_Center::Chat_Flavor)49]";
      break;
    case 50:
      result = "(vp::services::Control_Center::Chat_Flavor)50]";
      break;
    case 51:
      result = "(vp::services::Control_Center::Chat_Flavor)51]";
      break;
    case 52:
      result = "(vp::services::Control_Center::Chat_Flavor)52]";
      break;
    case 53:
      result = "(vp::services::Control_Center::Chat_Flavor)53]";
      break;
    case 54:
      result = "(vp::services::Control_Center::Chat_Flavor)54]";
      break;
    case 55:
      result = "(vp::services::Control_Center::Chat_Flavor)55]";
      break;
    case 56:
      result = "(vp::services::Control_Center::Chat_Flavor)56]";
      break;
    case 57:
      result = "(vp::services::Control_Center::Chat_Flavor)57]";
      break;
    case 58:
      result = "(vp::services::Control_Center::Chat_Flavor)58]";
      break;
    case 59:
      result = "(vp::services::Control_Center::Chat_Flavor)59]";
      break;
    case 60:
      result = "(vp::services::Control_Center::Chat_Flavor)60]";
      break;
    case 61:
      result = "(vp::services::Control_Center::Chat_Flavor)61]";
      break;
    case 62:
      result = "(vp::services::Control_Center::Chat_Flavor)62]";
      break;
    case 63:
      result = "(vp::services::Control_Center::Chat_Flavor)63]";
      break;
    case 64:
      result = "(vp::services::Control_Center::Chat_Flavor)64]";
      break;
    case 65:
      result = "(vp::services::Control_Center::Chat_Flavor)65]";
      break;
    case 66:
      result = "(vp::services::Control_Center::Chat_Flavor)66]";
      break;
    case 67:
      result = "(vp::services::Control_Center::Chat_Flavor)67]";
      break;
    case 68:
      result = "(vp::services::Control_Center::Chat_Flavor)68]";
      break;
    case 69:
      result = "(vp::services::Control_Center::Chat_Flavor)69]";
      break;
    case 70:
      result = "(vp::services::Control_Center::Chat_Flavor)70]";
      break;
    case 71:
      result = "(vp::services::Control_Center::Chat_Flavor)71]";
      break;
    case 72:
      result = "(vp::services::Control_Center::Chat_Flavor)72]";
      break;
    case 73:
      result = "(vp::services::Control_Center::Chat_Flavor)73]";
      break;
    case 74:
      result = "(vp::services::Control_Center::Chat_Flavor)74]";
      break;
    case 75:
      result = "(vp::services::Control_Center::Chat_Flavor)75]";
      break;
    case 76:
      result = "(vp::services::Control_Center::Chat_Flavor)76]";
      break;
    case 77:
      result = "(vp::services::Control_Center::Chat_Flavor)77]";
      break;
    case 78:
      result = "(vp::services::Control_Center::Chat_Flavor)78]";
      break;
    case 79:
      result = "(vp::services::Control_Center::Chat_Flavor)79]";
      break;
    case 80:
      result = "(vp::services::Control_Center::Chat_Flavor)80]";
      break;
    case 81:
      result = "(vp::services::Control_Center::Chat_Flavor)81]";
      break;
    case 82:
      result = "(vp::services::Control_Center::Chat_Flavor)82]";
      break;
    case 83:
      result = "(vp::services::Control_Center::Chat_Flavor)83]";
      break;
    case 84:
      result = "(vp::services::Control_Center::Chat_Flavor)84]";
      break;
    case 85:
      result = "(vp::services::Control_Center::Chat_Flavor)85]";
      break;
    case 86:
      result = "(vp::services::Control_Center::Chat_Flavor)86]";
      break;
    case 87:
      result = "(vp::services::Control_Center::Chat_Flavor)87]";
      break;
    case 88:
      result = "(vp::services::Control_Center::Chat_Flavor)88]";
      break;
    case 89:
      result = "(vp::services::Control_Center::Chat_Flavor)89]";
      break;
    case 90:
      result = "(vp::services::Control_Center::Chat_Flavor)90]";
      break;
    case 91:
      result = "(vp::services::Control_Center::Chat_Flavor)91]";
      break;
    case 92:
      result = "(vp::services::Control_Center::Chat_Flavor)92]";
      break;
    case 93:
      result = "(vp::services::Control_Center::Chat_Flavor)93]";
      break;
    case 94:
      result = "(vp::services::Control_Center::Chat_Flavor)94]";
      break;
    case 95:
      result = "(vp::services::Control_Center::Chat_Flavor)95]";
      break;
    case 96:
      result = "(vp::services::Control_Center::Chat_Flavor)96]";
      break;
    case 97:
      result = "(vp::services::Control_Center::Chat_Flavor)97]";
      break;
    case 98:
      result = "(vp::services::Control_Center::Chat_Flavor)98]";
      break;
    case 99:
      result = "(vp::services::Control_Center::Chat_Flavor)99]";
      break;
    case 100:
      result = "(vp::services::Control_Center::Chat_Flavor)100]";
      break;
    case 101:
      result = "(vp::services::Control_Center::Chat_Flavor)101]";
      break;
    case 102:
      result = "(vp::services::Control_Center::Chat_Flavor)102]";
      break;
    case 103:
      result = "(vp::services::Control_Center::Chat_Flavor)103]";
      break;
    case 104:
      result = "(vp::services::Control_Center::Chat_Flavor)104]";
      break;
    case 105:
      result = "(vp::services::Control_Center::Chat_Flavor)105]";
      break;
    case 106:
      result = "(vp::services::Control_Center::Chat_Flavor)106]";
      break;
    case 107:
      result = "(vp::services::Control_Center::Chat_Flavor)107]";
      break;
    case 108:
      result = "(vp::services::Control_Center::Chat_Flavor)108]";
      break;
    case 109:
      result = "(vp::services::Control_Center::Chat_Flavor)109]";
      break;
    case 110:
      result = "(vp::services::Control_Center::Chat_Flavor)110]";
      break;
    case 111:
      result = "(vp::services::Control_Center::Chat_Flavor)111]";
      break;
    case 112:
      result = "(vp::services::Control_Center::Chat_Flavor)112]";
      break;
    case 113:
      result = "(vp::services::Control_Center::Chat_Flavor)113]";
      break;
    case 114:
      result = "(vp::services::Control_Center::Chat_Flavor)114]";
      break;
    case 115:
      result = "(vp::services::Control_Center::Chat_Flavor)115]";
      break;
    case 116:
      result = "(vp::services::Control_Center::Chat_Flavor)116]";
      break;
    case 117:
      result = "(vp::services::Control_Center::Chat_Flavor)117]";
      break;
    case 118:
      result = "(vp::services::Control_Center::Chat_Flavor)118]";
      break;
    case 119:
      result = "(vp::services::Control_Center::Chat_Flavor)119]";
      break;
    case 120:
      result = "(vp::services::Control_Center::Chat_Flavor)120]";
      break;
    case 121:
      result = "(vp::services::Control_Center::Chat_Flavor)121]";
      break;
    case 122:
      result = "(vp::services::Control_Center::Chat_Flavor)122]";
      break;
    case 123:
      result = "(vp::services::Control_Center::Chat_Flavor)123]";
      break;
    case 124:
      result = "(vp::services::Control_Center::Chat_Flavor)124]";
      break;
    case 125:
      result = "(vp::services::Control_Center::Chat_Flavor)125]";
      break;
    case 126:
      result = "(vp::services::Control_Center::Chat_Flavor)126]";
      break;
    case 127:
      result = "(vp::services::Control_Center::Chat_Flavor)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::services::Control_Center::Chat_Flavor)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void vp::services::Control_Center_Impl::set_hidden_chat_flavors_for_bundle_id(vp *a1, const __CFString **a2, uint64_t a3, unint64_t a4)
{
  buf[7] = *MEMORY[0x277D85DE8];
  v6 = vp::get_log(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

  if (v7)
  {
    operator new();
  }

  vp::services::Control_Center_Impl::convert_chat_flavors(buf, a3, a4);
  AVAUVoiceIOSetHiddenChatFlavorsForBundleID();
  if (buf[0])
  {
    CFRelease(buf[0]);
  }
}

void sub_2724CA4A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    __cxa_free_exception(v25);

    if (a18 < 0)
    {
      operator delete(__p);
    }

    if (a24 < 0)
    {
      operator delete(a19);
    }

    v28 = __cxa_begin_catch(a1);
    v29 = vp::get_log(v28);
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

    if (v30)
    {
      log_context_info = vp::get_log_context_info(&a19, v24, "vp::services::Control_Center_Impl]", 33);
      v32 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a10);
      }

      if (a24 < 0)
      {
        operator delete(a19);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CA430);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Control_Center_Impl::set_voice_processing_bypassed_for_bundle_id(vp *a1, const __CFString **a2, uint64_t a3)
{
  v3 = a3;
  v34 = *MEMORY[0x277D85DE8];
  v6 = vp::get_log(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

  if (v7)
  {
    v8 = v24;
    log_context_info = vp::get_log_context_info(v24, a1, "vp::services::Control_Center_Impl]", 33);
    v10 = v25;
    v11 = v24[1];
    v12 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      if ((v10 & 0x80u) == 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      if ((v10 & 0x80u) != 0)
      {
        v8 = v24[0];
      }

      if (v13)
      {
        v14 = " ";
      }

      else
      {
        v14 = "";
      }

      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(__p, *a2);
      v15 = v23;
      v16 = __p[0];
      std::to_string(&v21, v3);
      v17 = __p;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v21;
      }

      else
      {
        v18 = v21.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v27 = v8;
      v28 = 2080;
      v29 = v14;
      v30 = 2080;
      v31 = v17;
      v32 = 2080;
      v33 = v18;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_INFO, "%s%ssetting bypass for bundle ID %s to %s", buf, 0x2Au);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }

  return AVAUVoiceIOSetVoiceProcessingBypassedForBundleID();
}

void sub_2724CA888(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    __cxa_free_exception(v23);

    if (a21 < 0)
    {
      operator delete(__p);
    }

    v25 = __cxa_begin_catch(a1);
    v26 = vp::get_log(v25);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

    if (v27)
    {
      log_context_info = vp::get_log_context_info(&__p, v21, "vp::services::Control_Center_Impl]", 33);
      v29 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a10);
      }

      if (a21 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CA810);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Control_Center_Impl::remove_active_chat_flavor_for_bundle_id(vp *a1, const __CFString **a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = vp::get_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = v18;
    log_context_info = vp::get_log_context_info(v18, a1, "vp::services::Control_Center_Impl]", 33);
    v8 = v19;
    v9 = v18[1];
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if ((v8 & 0x80u) == 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      if ((v8 & 0x80u) != 0)
      {
        v6 = v18[0];
      }

      if (v11)
      {
        v12 = " ";
      }

      else
      {
        v12 = "";
      }

      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(__p, *a2);
      if (v17 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315650;
      v21 = v6;
      v22 = 2080;
      v23 = v12;
      v24 = 2080;
      v25 = v13;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_INFO, "%s%sremoving active chat flavor for bundle ID %s", buf, 0x20u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  return AVAUVoiceIORemoveActiveChatFlavorForBundleID();
}

void sub_2724CABFC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    __cxa_free_exception(v21);

    if (a19 < 0)
    {
      operator delete(__p);
    }

    v23 = __cxa_begin_catch(a1);
    v24 = vp::get_log(v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Control_Center_Impl]", 33);
      v27 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CAB8CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Control_Center_Impl::set_active_chat_flavor_for_bundle_id(uint64_t a1, const __CFString **a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = vp::reflect_value_name_tag<vp::services::Control_Center::Chat_Flavor,128ul>(a3);
  v7 = v6;
  v8 = vp::get_log(v5);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

  if (v9)
  {
    log_context_info = vp::get_log_context_info(v25, a1, "vp::services::Control_Center_Impl]", 33);
    v11 = v26;
    v12 = v25[1];
    v13 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if ((v11 & 0x80u) == 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = v12;
      }

      if ((v11 & 0x80u) == 0)
      {
        v15 = v25;
      }

      else
      {
        v15 = v25[0];
      }

      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v17 = __p;
      applesauce::CF::convert_to<std::string,0>(__p, *a2);
      if (v24 < 0)
      {
        v17 = __p[0];
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v7 >= 0x17)
      {
        operator new();
      }

      v22 = v7;
      if (v7)
      {
        memmove(&__dst, v5, v7);
      }

      *(&__dst + v7) = 0;
      p_dst = &__dst;
      if (v22 < 0)
      {
        p_dst = __dst;
      }

      *buf = 136315906;
      v28 = v15;
      v29 = 2080;
      v30 = v16;
      v31 = 2080;
      v32 = v17;
      v33 = 2080;
      v34 = p_dst;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_INFO, "%s%ssetting active chat flavor for bundle ID %s to %s", buf, 0x2Au);
      if (v22 < 0)
      {
        operator delete(__dst);
      }

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  return AVAUVoiceIOSetActiveChatFlavorForBundleID();
}

void sub_2724CB028(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    __cxa_free_exception(v22);

    if (a21 < 0)
    {
      operator delete(__p);
    }

    v24 = __cxa_begin_catch(a1);
    v25 = vp::get_log(v24);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      log_context_info = vp::get_log_context_info(&__p, a9, "vp::services::Control_Center_Impl]", 33);
      v28 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a10);
      }

      if (a21 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CAFA8);
  }

  _Unwind_Resume(a1);
}

void vp::services::Control_Center_Impl::get_notification_dictionary_bundle_id_key(void *a1@<X8>)
{
  v2 = *MEMORY[0x277CE5828];
  if (*MEMORY[0x277CE5828] && (CFRetain(*MEMORY[0x277CE5828]), v3 = CFGetTypeID(v2), v3 != CFStringGetTypeID()))
  {
    *a1 = 0;
    CFRelease(v2);
  }

  else
  {
    *a1 = v2;
  }
}

void vp::services::Control_Center_Impl::get_preferred_chat_flavor_notification(void *a1@<X8>)
{
  v2 = *MEMORY[0x277CE5830];
  if (*MEMORY[0x277CE5830] && (CFRetain(*MEMORY[0x277CE5830]), v3 = CFGetTypeID(v2), v3 != CFStringGetTypeID()))
  {
    *a1 = 0;
    CFRelease(v2);
  }

  else
  {
    *a1 = v2;
  }
}

vp *vp::services::Control_Center_Impl::get_preferred_chat_flavor_for_bundle_id(vp *a1, const __CFString **a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = vp::get_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = &v29;
    log_context_info = vp::get_log_context_info(&v29, a1, "vp::services::Control_Center_Impl]", 33);
    v8 = v31;
    v9 = v30;
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if ((v8 & 0x80u) == 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      if ((v8 & 0x80u) != 0)
      {
        v6 = v29;
      }

      if (v11)
      {
        v12 = " ";
      }

      else
      {
        v12 = "";
      }

      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(__p, *a2);
      if (v28 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315650;
      v33 = v6;
      v34 = 2080;
      v35 = v12;
      v36 = 2080;
      v37 = v13;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_INFO, "%s%sgetting preferred chat flavor for bundle ID %s", buf, 0x20u);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v31 < 0)
    {
      operator delete(v29);
    }
  }

  v14 = AVAUVoiceIOGetPreferredChatFlavorForBundleID();
  v15 = v14;
  if (v14 >= 3)
  {
    v17 = vp::get_log(v14);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);

    if (v18)
    {
      v19 = vp::get_log_context_info(&v29, a1, "vp::services::Control_Center_Impl]", 33);
      v20 = v31;
      v21 = v30;
      v22 = vp::get_log(v19);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        if ((v20 & 0x80u) == 0)
        {
          v23 = v20;
        }

        else
        {
          v23 = v21;
        }

        v24 = v29;
        if ((v20 & 0x80u) == 0)
        {
          v24 = &v29;
        }

        *buf = 136315650;
        v33 = v24;
        if (v23)
        {
          v25 = " ";
        }

        else
        {
          v25 = "";
        }

        v34 = 2080;
        v35 = v25;
        v36 = 1024;
        LODWORD(v37) = v15;
        _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_FAULT, "%s%shandling unknown chat flavor %u", buf, 0x1Cu);
      }

      if (v31 < 0)
      {
        operator delete(v29);
      }
    }

    return 0;
  }

  return v15;
}

void sub_2724CB598(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    __cxa_free_exception(v21);

    if (a19 < 0)
    {
      operator delete(__p);
    }

    v23 = __cxa_begin_catch(a1);
    v24 = vp::get_log(v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Control_Center_Impl]", 33);
      v27 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CB550);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Control_Center_Impl::initialize_listeners_for_bundle_id(vp *a1, const __CFString **a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = vp::get_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = v18;
    log_context_info = vp::get_log_context_info(v18, a1, "vp::services::Control_Center_Impl]", 33);
    v8 = v19;
    v9 = v18[1];
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if ((v8 & 0x80u) == 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      if ((v8 & 0x80u) != 0)
      {
        v6 = v18[0];
      }

      if (v11)
      {
        v12 = " ";
      }

      else
      {
        v12 = "";
      }

      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(__p, *a2);
      if (v17 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315650;
      v21 = v6;
      v22 = 2080;
      v23 = v12;
      v24 = 2080;
      v25 = v13;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_INFO, "%s%sinitializing listeners for bundle ID %s", buf, 0x20u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  return AVAUVoiceIOInitializeListenersForBundleID();
}

void sub_2724CB8F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    __cxa_free_exception(v21);

    if (a19 < 0)
    {
      operator delete(__p);
    }

    v23 = __cxa_begin_catch(a1);
    v24 = vp::get_log(v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Control_Center_Impl]", 33);
      v27 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CB880);
  }

  _Unwind_Resume(a1);
}

void vp::services::Audio_Statistics_Impl::copy_configuration(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_211);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    v4 = AudioStatisticsLibraryLoader(void)::libSym(a1);
    v5 = v4;
    if (v4)
    {
      v6 = CFGetTypeID(v4);
      if (v6 != CFDictionaryGetTypeID())
      {
        *a2 = 0;
        CFRelease(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_2724CBBAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

uint64_t vp::services::Audio_Statistics_Impl::get_audio_service_type(vp::services::Audio_Statistics_Impl *this, uint64_t a2)
{
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_211);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    return AudioStatisticsLibraryLoader(void)::libSym(a2);
  }

  else
  {
    return 0xFFFFLL;
  }
}

void sub_2724CC094(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2724CC098);
  }

  __clang_call_terminate(a1);
}

void vp::services::Audio_Statistics_Impl::report_event(vp::services::Audio_Statistics_Impl *this, const vp::services::Audio_Statistics::Event *a2, uint64_t a3)
{
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = *(a2 + 2);
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_211);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    AudioStatisticsLibraryLoader(void)::libSym(a3, v4, v5, v6);
  }
}

void sub_2724CC160(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Statistics_Impl]", 35);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CC114);
  }

  _Unwind_Resume(a1);
}

void vp::services::Audio_Statistics_Impl::report_event(vp::services::Audio_Statistics_Impl *this, const vp::services::Audio_Statistics::Event *a2)
{
  v2 = *(a2 + 1);
  v3 = *a2;
  v4 = *(a2 + 2);
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_211);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    AudioStatisticsLibraryLoader(void)::libSym(v2, v3, v4);
  }
}

void sub_2724CC370(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Statistics_Impl]", 35);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CC324);
  }

  _Unwind_Resume(a1);
}

void vp::services::Audio_Issue_Detector_Impl::set_downlink_route_specific_gain_adjustment(vp::services::Audio_Issue_Detector_Impl *this, float a2)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_181);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(a2);
  }
}

void sub_2724CC584(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Issue_Detector_Impl]", 39);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CC534);
  }

  _Unwind_Resume(a1);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

void vp::services::Audio_Issue_Detector_Impl::set_downlink_volume(vp::services::Audio_Issue_Detector_Impl *this, float a2)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_181);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(a2);
  }
}

void sub_2724CC954(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Issue_Detector_Impl]", 39);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CC904);
  }

  _Unwind_Resume(a1);
}

void vp::services::Audio_Issue_Detector_Impl::set_uplink_mute(vp::services::Audio_Issue_Detector_Impl *this, uint64_t a2)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_181);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(a2);
  }
}

void sub_2724CCB48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Issue_Detector_Impl]", 39);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CCAFCLL);
  }

  _Unwind_Resume(a1);
}

void sub_2724CCDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, __int16 a27, uint64_t a28)
{
  if (a2)
  {
    if (__p)
    {
      a24 = __p;
      operator delete(__p);
    }

    v30 = __cxa_begin_catch(exception_object);
    v31 = vp::get_log(v30);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

    if (v32)
    {
      log_context_info = vp::get_log_context_info(&a17, v28, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
      v34 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a22 < 0)
      {
        operator delete(a17);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CCD54);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::services::Audio_Issue_Detector_Impl::Client::analyze(vp *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v32 = *MEMORY[0x277D85DE8];
  if ((a2 - 1) > 2)
  {
    v11 = 51;
  }

  else
  {
    v11 = dword_272756978[a2 - 1];
  }

  v12 = *(a1 + 1);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_181);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    a1 = AudioIssueDetectorLibraryLoader(void)::libSym(v12, v11, a3, a4, a5, a6);
    v13 = a1;
    if (!a1)
    {
      return 1;
    }
  }

  else
  {
    v13 = -1;
  }

  v15 = vp::get_log(a1);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

  if (v16)
  {
    log_context_info = vp::get_log_context_info(__p, v10, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
    v18 = v25;
    v19 = __p[1];
    v20 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      if ((v18 & 0x80u) == 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = v19;
      }

      v22 = __p[0];
      if ((v18 & 0x80u) == 0)
      {
        v22 = __p;
      }

      *buf = 136315650;
      v27 = v22;
      if (v21)
      {
        v23 = " ";
      }

      else
      {
        v23 = "";
      }

      v28 = 2080;
      v29 = v23;
      v30 = 1024;
      v31 = v13;
      _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_ERROR, "%s%sfailed to analyze buffer due to error - %u", buf, 0x1Cu);
    }

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}