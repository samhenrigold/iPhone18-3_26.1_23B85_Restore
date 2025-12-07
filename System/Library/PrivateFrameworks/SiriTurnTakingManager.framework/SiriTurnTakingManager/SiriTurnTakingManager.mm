id TTClient.init()()
{
  v1 = v0;
  v2 = type metadata accessor for NeuralCombiner();
  swift_allocObject();
  v3 = sub_269462DA0();
  v4 = &v0[OBJC_IVAR____TtC21SiriTurnTakingManager8TTClient_nc];
  v4[3] = v2;
  v4[4] = &off_2879FCF38;
  *v4 = v3;
  __swift_project_boxed_opaque_existential_1(v4, v2);
  v5 = sub_2694655C0();
  v17 = &unk_2879FD5C8;
  v18 = &off_2879FD5E8;
  v6 = swift_allocObject();
  *&v16 = v6;
  *(v6 + 56) = v5 & 1;
  *(v6 + 64) = sub_26946532C();
  v7 = type metadata accessor for SELFLogger();
  v8 = swift_allocObject();
  v9 = type metadata accessor for SelfEmitter();
  v10 = swift_allocObject();
  v8[5] = v9;
  v8[6] = &off_2879FD810;
  v8[2] = v10;
  *(v6 + 40) = v7;
  *(v6 + 48) = &off_2879FD7B0;
  *(v6 + 16) = v8;
  sub_2694657CC(&v16, &v1[OBJC_IVAR____TtC21SiriTurnTakingManager8TTClient_overrideSystem]);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v11[5] = v9;
  v11[6] = &off_2879FD810;
  v11[2] = v12;
  v13 = &v1[OBJC_IVAR____TtC21SiriTurnTakingManager8TTClient_selfLogger];
  *(v13 + 3) = v7;
  *(v13 + 4) = &off_2879FD7B0;
  *v13 = v11;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TTClient();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_269462D60()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_269462DA0()
{
  v1 = v0;
  *(v0 + 16) = 0;
  type metadata accessor for NCAssetPathGetter();
  v2 = swift_allocObject();
  sub_269463050();
  *(v1 + 72) = v2;
  *(v1 + 80) = 0;
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v3 = sub_2694847EC();
  __swift_project_value_buffer(v3, qword_2813286A0);
  v4 = sub_2694847DC();
  sub_269484ADC();
  v5 = OUTLINED_FUNCTION_5();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_7();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_12(v7);
    OUTLINED_FUNCTION_2();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_1();
    MEMORY[0x26D63EF60](v14);
  }

  v15 = type metadata accessor for SELFLogger();
  v16 = swift_allocObject();
  v17 = type metadata accessor for SelfEmitter();
  v18 = swift_allocObject();
  v16[5] = v17;
  v16[6] = &off_2879FD810;
  v16[2] = v18;
  *(v1 + 48) = v15;
  *(v1 + 56) = &off_2879FD7B0;
  *(v1 + 24) = v16;
  v19 = [objc_opt_self() sharedInstance];
  sub_269484BBC();
  swift_unknownObjectRelease();
  sub_269463554(0, &qword_281327DC8, 0x277D014E8);
  v20 = swift_dynamicCast();
  v21 = v34;
  if (!v20)
  {
    v21 = 0;
  }

  *(v1 + 64) = v21;
  v22 = *(v1 + 72);
  v23 = v22[4];
  v24 = v22[5];
  if ((v24 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  v27 = v22[2];
  v26 = v22[3];

  if (v25)
  {

    sub_2694648B0(v27, v26, v23, v24);
  }

  else
  {
    sub_2694648B0(v27, v26, 0, 0xE000000000000000);
  }

  v28 = sub_2694847DC();
  sub_269484ADC();
  v29 = OUTLINED_FUNCTION_6();
  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_7();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11(&dword_269461000, v31, v32, "loadModelFromTrial completed");
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  return v1;
}

uint64_t sub_269463050()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  sub_2694630A0();
  return v0;
}

void sub_2694630A0()
{
  v1 = sub_26948487C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock[-1] - v6;
  v8 = [objc_opt_self() sharedHandler];
  sub_269484BBC();
  swift_unknownObjectRelease();
  sub_269463554(0, &qword_281327DB8, 0x277D014F0);
  if (swift_dynamicCast())
  {
    v9 = aBlock[6];
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v11 = swift_allocObject();
    v11[2] = v0;
    v11[3] = v9;
    v11[4] = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2694636C4;
    *(v12 + 24) = v11;
    aBlock[4] = sub_2694636D0;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269463600;
    aBlock[3] = &block_descriptor_84;
    v13 = _Block_copy(aBlock);

    v14 = v9;
    v15 = v10;

    [v14 getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion:v13];
    _Block_release(v13);
    sub_26948486C();
    if (qword_281328198 != -1)
    {
      swift_once();
    }

    v16 = sub_26948480C();
    v17 = __swift_project_value_buffer(v16, qword_2813286E0);
    MEMORY[0x26D63E460](v5, v17);
    v18 = *(v2 + 8);
    v18(v5, v1);
    sub_269484AFC();
    v18(v7, v1);
    if (sub_26948481C())
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v19 = sub_2694847EC();
      __swift_project_value_buffer(v19, qword_2813286A0);
      v20 = sub_2694847DC();
      sub_269484AEC();
      v21 = OUTLINED_FUNCTION_6();
      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_7();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11(&dword_269461000, v23, v24, "Timed out waiting to get asset path with getNeuralCombinerConfigFile api");
        OUTLINED_FUNCTION_4();
        MEMORY[0x26D63EF60]();
      }

      sub_2694822FC(0xD000000000000016, 0x8000000269486B40, 1701736302, 0xE400000000000000);
    }
  }

  else
  {
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v25 = sub_2694847EC();
    __swift_project_value_buffer(v25, qword_2813286A0);
    v14 = sub_2694847DC();
    v26 = sub_269484AEC();
    if (os_log_type_enabled(v14, v26))
    {
      OUTLINED_FUNCTION_7();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27(&dword_269461000, v27, v28, "NCAssetPathGetter - Error trying to fetch config from CSAttSiriMitigationAssetProvider");
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }
  }
}

uint64_t sub_2694634DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269463524()
{

  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_269463554(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_269463600(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = sub_2694848FC();
  v8 = v7;
  v9 = sub_2694848FC();
  v11 = v10;

  v12 = a4;
  v5(v6, v8, v9, v11, v12);
}

void sub_2694636F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, id a5, void *a6, void *a7, void *a8)
{
  if (a5)
  {
    v14 = a5;
    if (qword_281327EE0 != -1)
    {
      swift_once();
    }

    v15 = sub_2694847EC();
    __swift_project_value_buffer(v15, qword_2813286A0);
    v16 = a5;
    v17 = sub_2694847DC();
    v18 = sub_269484AEC();

    if (os_log_type_enabled(v17, v18))
    {
      buf = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *buf = 136315138;
      v19 = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E58, &qword_269485620);
      v20 = sub_26948494C();
      v22 = a3;
      v23 = sub_269463C18(v20, v21, aBlock);

      *(buf + 4) = v23;
      a3 = v22;
      _os_log_impl(&dword_269461000, v17, v18, "fetching bnnsIr from MitigationAssetProvider with error: %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x26D63EF60](v44, -1, -1);
      MEMORY[0x26D63EF60](buf, -1, -1);
    }

    else
    {
    }
  }

  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v24 = sub_2694847EC();
  __swift_project_value_buffer(v24, qword_2813286A0);

  v25 = sub_2694847DC();
  v26 = sub_269484ADC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v45 = a1;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315394;
    if (a2)
    {
      v29 = v45;
    }

    else
    {
      v29 = 0;
    }

    if (a2)
    {
      v30 = a2;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v31 = sub_269463C18(v29, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    if (a4)
    {
      v32 = a3;
    }

    else
    {
      v32 = 0;
    }

    if (a4)
    {
      v33 = a4;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v34 = sub_269463C18(v32, v33, aBlock);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_269461000, v25, v26, "Completion block of getNeuralCombinerConfigFile invoked and configPath, bnnsIrPath is cached - %s %s", v27, 0x16u);
    swift_arrayDestroy();
    v35 = v28;
    a1 = v45;
    MEMORY[0x26D63EF60](v35, -1, -1);
    MEMORY[0x26D63EF60](v27, -1, -1);
  }

  if (a2)
  {
    v36 = a1;
  }

  else
  {
    v36 = 0;
  }

  if (a2)
  {
    v37 = a2;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  a6[2] = v36;
  a6[3] = v37;

  if (a4)
  {
    v38 = a3;
  }

  else
  {
    v38 = 0;
  }

  if (a4)
  {
    v39 = a4;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  a6[4] = v38;
  a6[5] = v39;

  v40 = swift_allocObject();
  *(v40 + 16) = a6;
  *(v40 + 24) = a8;
  aBlock[4] = sub_269464044;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26946404C;
  aBlock[3] = &block_descriptor_90;
  v41 = _Block_copy(aBlock);

  v42 = a8;

  [a7 shouldRunCAROverrideWithCompletion_];
  _Block_release(v41);
}

uint64_t sub_269463B70()
{

  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void *sub_269463BA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FB0, qword_269486450);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_269463C18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_269463E44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_269464C8C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

void *sub_269463CDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_269463D2C(a1, a2);
  sub_269463F44(&unk_2879FC6B8);
  return v3;
}

void *sub_269463D2C(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2694849BC())
  {
    result = sub_269463BA8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_269484C0C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_269484C3C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_269463E44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_269463CDC(a5, a6);
    *a1 = v9;
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
    result = sub_269484C3C();
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

uint64_t sub_269463F44(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2694640A4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26946404C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_2694640A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FB0, qword_269486450);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t OUTLINED_FUNCTION_15_0()
{

  return sub_26946F0D0(v0 - 128, v0 - 192);
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_269484D5C();
}

void sub_269464214(char a1, uint64_t a2, NSObject *a3)
{
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v6 = sub_2694847EC();
  __swift_project_value_buffer(v6, qword_2813286A0);
  v7 = sub_2694847DC();
  v8 = sub_269484ADC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_269461000, v7, v8, "Completion block of shouldRunCAROverride invoked and config value is cached - %{BOOL}d", v9, 8u);
    MEMORY[0x26D63EF60](v9, -1, -1);
  }

  *(a2 + 48) = a1 & 1;

  dispatch_group_leave(a3);
}

uint64_t sub_26946437C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_269464414()
{

  OUTLINED_FUNCTION_2_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_269464448()
{
  sub_2694645DC(v0 + OBJC_IVAR____TtC21SiriTurnTakingManager15AnnounceMatcher_announceTaskCache, &qword_280318060, &qword_269486538);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_2_6()
{

  JUMPOUT(0x26D63EF60);
}

uint64_t sub_2694645DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26946463C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_269464694()
{
  sub_2694646C8();

  return MEMORY[0x2821FE8D8](v0, 81, 7);
}

uint64_t sub_2694646C8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return v0;
}

uint64_t sub_269464700()
{
  sub_269464734();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_269464734()
{

  return v0;
}

void OUTLINED_FUNCTION_7_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, a1);
  *(v1 + *(v2 + 60)) = 0;
  return result;
}

unint64_t OUTLINED_FUNCTION_12_0(char a1)
{
  v2 = sub_26946D5A4(a1);
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0Tm((v1 - 192));

  return sub_269463C18(v2, v4, (v1 - 144));
}

void OUTLINED_FUNCTION_12_1()
{

  JUMPOUT(0x26D63EF60);
}

unint64_t OUTLINED_FUNCTION_12_2()
{

  return sub_269480E90(v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_3(uint64_t a1)
{

  return sub_2694645DC(a1, v1, v2);
}

void sub_2694648B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v68 = a1;
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v8 = sub_2694847EC();
  __swift_project_value_buffer(v8, qword_2813286A0);

  v9 = sub_2694847DC();
  v10 = sub_269484ADC();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_26();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_9();
    v12 = swift_slowAlloc();
    v70[0] = v12;
    *v11 = 136315138;
    v19 = OUTLINED_FUNCTION_24(v12, v13, v70, v14, v15, v16, v17, v18, v66, v68);
    *(v11 + 4) = sub_269463C18(v19, v20, v21);
    _os_log_impl(&dword_269461000, v9, v10, "using config path - %s for loading NC", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v22 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v23 = objc_allocWithZone(MEMORY[0x277D5C310]);

  if (v22)
  {

    v40 = OUTLINED_FUNCTION_24(v32, v33, v34, v35, v36, v37, v38, v39, v66, v68);
    v42 = sub_26946990C(v40, v41, a3, a4);
  }

  else
  {
    v49 = OUTLINED_FUNCTION_24(v24, v25, v26, v27, v28, v29, v30, v31, v66, v68);
    v42 = sub_269465210(v49, v50);
  }

  v43 = *(v5 + 16);
  *(v5 + 16) = v42;

  if (*(v5 + 16))
  {
    v44 = sub_2694847DC();
    sub_269484ADC();
    v45 = OUTLINED_FUNCTION_6();
    if (os_log_type_enabled(v45, v46))
    {
      OUTLINED_FUNCTION_7();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11(&dword_269461000, v47, v48, "Loaded NC model succesfully");
LABEL_16:
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }
  }

  else
  {

    v44 = sub_2694847DC();
    v51 = sub_269484AEC();

    if (os_log_type_enabled(v44, v51))
    {
      OUTLINED_FUNCTION_26();
      v52 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v53 = swift_slowAlloc();
      v70[0] = v53;
      *v52 = 136315138;
      v60 = OUTLINED_FUNCTION_24(v53, v54, v70, v55, v56, v57, v58, v59, v67, v69);
      *(v52 + 4) = sub_269463C18(v60, v61, v62);
      _os_log_impl(&dword_269461000, v44, v51, "error initializing model (SLUresMitigator) using config path - %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      goto LABEL_16;
    }
  }

  v63 = sub_2694848EC();
  v64 = sub_2694848EC();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v63, v64, 0);

  *(v5 + 80) = AppBooleanValue != 0;
}

void OUTLINED_FUNCTION_6_1()
{

  JUMPOUT(0x26D63EF60);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 + 32);
  v12 = *(v9 + 24);
  v13 = *(v9 + 16);
  v14 = *a3;
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = v14;
  *(v8 + 24) = 0;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 72) = a8;
  *(v8 + 80) = v13;
  *(v8 + 88) = v12;
  *(v8 + 56) = a7;
  *(v8 + 64) = v11;

  return type metadata accessor for TTCandidate(0);
}

uint64_t sub_269464C8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_4_2()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D63EF60);
}

uint64_t sub_269464DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_2694848FC();
  v5 = v4;

  v2(v3, v5);
}

void sub_269464E64(uint64_t a1, unint64_t a2, uint64_t a3, NSObject *a4)
{
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v8 = sub_2694847EC();
  __swift_project_value_buffer(v8, qword_2813286A0);

  v9 = sub_2694847DC();
  v10 = sub_269484ADC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_269463C18(a1, a2, &v13);
    _os_log_impl(&dword_269461000, v9, v10, "Completion block of getAllowPhrasesListOverrideFile invoked and configPath is cached - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x26D63EF60](v12, -1, -1);
    MEMORY[0x26D63EF60](v11, -1, -1);
  }

  *(a3 + 16) = a1;
  *(a3 + 24) = a2;

  dispatch_group_leave(a4);
}

uint64_t OUTLINED_FUNCTION_13_2@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  type metadata accessor for TTCandidate(0);

  return sub_26948478C();
}

uint64_t OUTLINED_FUNCTION_13_4(uint64_t a1)
{

  return sub_2694645DC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_1_0()
{
  v1 = *(v0 - 168);
  __swift_project_boxed_opaque_existential_1((v0 - 192), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return sub_26948434C();
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_22()
{
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
}

void OUTLINED_FUNCTION_22_0()
{

  JUMPOUT(0x26D63EF60);
}

id sub_269465210(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = sub_2694848EC();
  }

  else
  {
    v3 = 0;
  }

  v8[0] = 0;
  v4 = [v2 initWithConfig:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_2694842AC();

    swift_willThrow();
  }

  return v4;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_26946532C()
{
  active = type metadata accessor for ConcurrentActiveRequestMatcher();
  v1 = [objc_allocWithZone(active) init];
  v2 = sub_269465648(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = v2[2];
  v3 = v2[3];
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = OUTLINED_FUNCTION_0_2(v3);
  }

  v29 = active;
  v30 = &off_2879FDAF8;
  *&v28 = v1;
  v2[2] = v5;
  OUTLINED_FUNCTION_9_0(&v28, &v2[5 * v4]);
  v6 = type metadata accessor for ShortcutMatcher();
  [objc_allocWithZone(v6) init];
  OUTLINED_FUNCTION_3_1();
  if (v8)
  {
    v2 = OUTLINED_FUNCTION_0_2(v7);
  }

  v29 = v6;
  v30 = &off_2879FD798;
  *&v28 = v1;
  v2[2] = v5;
  OUTLINED_FUNCTION_9_0(&v28, &v2[5 * v4]);
  v9 = type metadata accessor for LASOverrideMatcher();
  [objc_allocWithZone(v9) init];
  OUTLINED_FUNCTION_3_1();
  if (v8)
  {
    v2 = OUTLINED_FUNCTION_0_2(v10);
  }

  v29 = v9;
  v30 = &off_2879FE4D0;
  *&v28 = v1;
  v2[2] = v5;
  OUTLINED_FUNCTION_9_0(&v28, &v2[5 * v4]);
  v11 = type metadata accessor for UniversalCommandMatcher();
  [objc_allocWithZone(v11) init];
  OUTLINED_FUNCTION_3_1();
  if (v8)
  {
    v2 = OUTLINED_FUNCTION_0_2(v12);
  }

  v29 = v11;
  v30 = &off_2879FE4B8;
  *&v28 = v1;
  v2[2] = v5;
  OUTLINED_FUNCTION_9_0(&v28, &v2[5 * v4]);
  v13 = type metadata accessor for AllowListMatcher();
  v14 = [objc_allocWithZone(v13) init];
  v16 = v2[2];
  v15 = v2[3];
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    v26 = OUTLINED_FUNCTION_4_1(v15);
    v2 = sub_269465648(v26, v16 + 1, 1, v2);
  }

  v29 = v13;
  v30 = &off_2879FD820;
  *&v28 = v14;
  v2[2] = v17;
  v18 = OUTLINED_FUNCTION_9_0(&v28, &v2[5 * v16]);
  v19 = type metadata accessor for AnnounceMatcher(v18);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC21SiriTurnTakingManager15AnnounceMatcher_announceTaskCache;
  v22 = sub_26948438C();
  __swift_storeEnumTagSinglePayload(v20 + v21, 1, 1, v22);
  v23 = v2[3];
  v24 = v16 + 2;
  if (v24 > (v23 >> 1))
  {
    v27 = OUTLINED_FUNCTION_4_1(v23);
    v2 = sub_269465648(v27, v24, 1, v2);
  }

  v29 = v19;
  v30 = &off_2879FDB10;
  *&v28 = v20;
  v2[2] = v24;
  sub_2694657CC(&v28, &v2[5 * v17 + 4]);
  return v2;
}

id sub_2694655F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcurrentActiveRequestMatcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

void *sub_269465648(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317ED0, &qword_2694857C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317ED8, &qword_2694857C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2694657CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_269465808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShortcutMatcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

void *OUTLINED_FUNCTION_0_2@<X0>(unint64_t a1@<X8>)
{

  return sub_269465648((a1 > 1), v2, 1, v1);
}

id sub_269465930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LASOverrideMatcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2694659AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalCommandMatcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *sub_269465A28()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC21SiriTurnTakingManager16AllowListMatcher_allowedUtterances] = MEMORY[0x277D84FA0];
  v2 = OBJC_IVAR____TtC21SiriTurnTakingManager16AllowListMatcher_allowListAssetPathGetter;
  type metadata accessor for AllowListAssetPathGetter();
  OUTLINED_FUNCTION_2_4();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  sub_269465BD0();
  *&v1[v2] = v3;
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_281327EE0);
  }

  v4 = sub_2694847EC();
  __swift_project_value_buffer(v4, qword_2813286A0);
  v5 = sub_2694847DC();
  v6 = sub_269484ADC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269461000, v5, v6, "fetching allow list path from CSAttSiriMitigationAssetProvider", v7, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v12.receiver = v1;
  v12.super_class = type metadata accessor for AllowListMatcher();
  v8 = objc_msgSendSuper2(&v12, sel_init);
  v9 = *(*&v8[OBJC_IVAR____TtC21SiriTurnTakingManager16AllowListMatcher_allowListAssetPathGetter] + 16);
  v10 = v8;

  sub_269466034(v9);

  return v10;
}

void sub_269465BD0()
{
  v1 = sub_26948487C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock[-1] - v6;
  v8 = [objc_opt_self() sharedHandler];
  sub_269484BBC();
  swift_unknownObjectRelease();
  sub_269465FF0();
  if (swift_dynamicCast())
  {
    v9 = aBlock[6];
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    OUTLINED_FUNCTION_2_4();
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    *(v11 + 24) = v10;
    aBlock[4] = sub_269464E5C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269464DF0;
    aBlock[3] = &block_descriptor_1;
    v12 = _Block_copy(aBlock);

    v13 = v10;

    [v9 getAllowPhrasesListOverrideFileWithCompletion_];
    _Block_release(v12);
    sub_26948486C();
    if (qword_281327FB0 != -1)
    {
      swift_once();
    }

    v14 = sub_26948480C();
    v15 = __swift_project_value_buffer(v14, qword_2813286B8);
    MEMORY[0x26D63E460](v5, v15);
    v16 = *(v2 + 8);
    v16(v5, v1);
    sub_269484AFC();
    v16(v7, v1);
    if (sub_26948481C())
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_281327EE0);
      }

      v17 = sub_2694847EC();
      __swift_project_value_buffer(v17, qword_2813286A0);
      v18 = sub_2694847DC();
      v19 = sub_269484AEC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_269461000, v18, v19, "Timed out waiting to get asset path with getAllowPhrasesListOverrideFile api", v20, 2u);
        OUTLINED_FUNCTION_6_1();
      }
    }
  }

  else
  {
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_281327EE0);
    }

    v21 = sub_2694847EC();
    __swift_project_value_buffer(v21, qword_2813286A0);
    v13 = sub_2694847DC();
    v22 = sub_269484AEC();
    if (os_log_type_enabled(v13, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_269461000, v13, v22, "AllowListAssetPathGetter - Error trying to fetch config from CSAttSiriMitigationAssetProvider", v23, 2u);
      OUTLINED_FUNCTION_6_1();
    }
  }
}

uint64_t sub_269465FB4()
{

  OUTLINED_FUNCTION_2_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

unint64_t sub_269465FF0()
{
  result = qword_281327DB8;
  if (!qword_281327DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281327DB8);
  }

  return result;
}

void sub_269466034(uint64_t a1)
{
  v2 = v1;
  v29[0] = sub_2694848DC();
  v29[1] = v13;
  v14 = sub_269466374();
  v15 = MEMORY[0x26D63E780](10, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v14);

  v16 = v15[2];
  if (v16)
  {
    v29[0] = MEMORY[0x277D84F90];
    sub_2694664C8(0, v16, 0);
    v17 = 0;
    v18 = v29[0];
    v19 = v15 + 7;
    while (v17 < v15[2])
    {
      v20 = *(v19 - 3);
      v21 = *(v19 - 2);
      v22 = *(v19 - 1);
      v23 = *v19;

      a1 = MEMORY[0x26D63E540](v20, v21, v22, v23);
      v25 = v24;

      v29[0] = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2694664C8((v26 > 1), v27 + 1, 1);
        v18 = v29[0];
      }

      ++v17;
      *(v18 + 16) = v27 + 1;
      v28 = v18 + 16 * v27;
      *(v28 + 32) = a1;
      *(v28 + 40) = v25;
      v19 += 4;
      if (v16 == v17)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
    OUTLINED_FUNCTION_0(&qword_281327EE0);
    v4 = sub_2694847EC();
    __swift_project_value_buffer(v4, qword_2813286A0);
    v5 = v15;

    v6 = sub_2694847DC();
    v7 = sub_269484AEC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v8 = 136315394;
      v29[2] = v15;
      v9 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E58, &qword_269485620);
      v10 = sub_26948494C();
      v12 = sub_269463C18(v10, v11, v29);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_269463C18(a1, v16, v29);
      _os_log_impl(&dword_269461000, v6, v7, "Error %s when reading file %s", v8, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_15:
    *(v2 + OBJC_IVAR____TtC21SiriTurnTakingManager16AllowListMatcher_allowedUtterances) = sub_2694664E8(v18);
  }
}

unint64_t sub_269466374()
{
  result = qword_281327E20;
  if (!qword_281327E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281327E20);
  }

  return result;
}

void *sub_2694663C8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318048, &unk_269486440);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26946C92C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2694664C8(void *a1, int64_t a2, char a3)
{
  result = sub_2694663C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2694664E8(uint64_t a1)
{
  result = MEMORY[0x26D63E680](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_2694665A8(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_2694665A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_269484DCC();
  sub_26948499C();
  v8 = sub_269484DEC();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_269484D5C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2694666F4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

void sub_2694666F4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_269476A60(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_269476E14(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_269484DCC();
      sub_26948499C();
      v16 = sub_269484DEC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_269484D5C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_269476CBC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_269484D6C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t type metadata accessor for AnnounceMatcher(uint64_t a1)
{
  result = qword_281328280;
  if (!qword_281328280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26946693C()
{

  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_269466978()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_269466A14()
{
  v1 = sub_2694842EC();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_269466CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E40, &unk_269485610);
    v9 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_269466D54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E40, &unk_269485610);
    v8 = v5 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269466F6C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2694670FC(unsigned __int8 a1)
{
  sub_269484DCC();
  MEMORY[0x26D63E9B0](a1);
  return sub_269484DEC();
}

uint64_t sub_269467160(uint64_t a1)
{
  v2 = *v1;
  sub_269484DCC();
  MEMORY[0x26D63E9B0](v2);
  return sub_269484DEC();
}

uint64_t sub_2694671B4()
{
  v0 = sub_26948480C();
  __swift_allocate_value_buffer(v0, qword_2813286E0);
  *__swift_project_value_buffer(v0, qword_2813286E0) = 500;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

void *sub_269467244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v11 = type metadata accessor for TTCandidate(0);
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + 48);
  v40 = v4;
  __swift_project_boxed_opaque_existential_1((v4 + 24), v14);
  v41 = a2;
  v42 = a3;
  v43 = a4;
  sub_269471CE8(a2, a3, a4);
  v15 = 0;
  v38 = a1;
  v39 = *(a1 + 16);
  v16 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v39 == v15)
    {
      __swift_project_boxed_opaque_existential_1((v40 + 24), *(v40 + 48));
      sub_269472FE4(v41, v42, v43);
      return v16;
    }

    sub_269469A68(v38 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v15, v13);
    sub_269467774(v13, v41, v42, v43, &v49);
    if (v6)
    {
      sub_269469ACC(v13);

      return v16;
    }

    v44 = 0;
    v47 = v49;
    v48[0] = v50[0];
    *(v48 + 14) = *(v50 + 14);
    v18 = *v13;
    v17 = v13[1];
    v19 = v13;
    swift_isUniquelyReferenced_nonNull_native();
    v51 = v16;
    v20 = sub_269480E90(v18, v17);
    if (__OFADD__(v16[2], (v21 & 1) == 0))
    {
      break;
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E60, &qword_269485628);
    if (sub_269484C5C())
    {
      v24 = sub_269480E90(v18, v17);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_18;
      }

      v22 = v24;
    }

    if (v23)
    {
      v16 = v51;
      v26 = v51[7] + 40 * v22;
      v27 = *(v26 + 30);
      v28 = *(v26 + 16);
      v45 = *v26;
      v46[0] = v28;
      *(v46 + 14) = v27;
      *(v26 + 30) = *(v48 + 14);
      v29 = v48[0];
      *v26 = v47;
      *(v26 + 16) = v29;
      sub_269469CF0(&v45);
    }

    else
    {
      v16 = v51;
      v51[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v16[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v17;
      v31 = v16[7] + 40 * v22;
      v32 = v48[0];
      *v31 = v47;
      *(v31 + 16) = v32;
      *(v31 + 30) = *(v48 + 14);
      v33 = v16[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_17;
      }

      v16[2] = v35;
    }

    v13 = v19;
    sub_269469ACC(v19);
    ++v15;
    v6 = v44;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_269484D7C();
  __break(1u);
  return result;
}

uint64_t sub_269467584(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 3:
      OUTLINED_FUNCTION_21();
      goto LABEL_3;
    case 4:
      break;
    default:
LABEL_3:
      v1 = sub_269484D5C();
      break;
  }

  return v1 & 1;
}

id sub_26946767C(uint64_t a1, void *a2)
{
  if ((sub_269467584(a1) & 1) == 0)
  {
    return [a2 invocationType];
  }

  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v3 = sub_2694847EC();
  __swift_project_value_buffer(v3, qword_2813286A0);
  v4 = sub_2694847DC();
  v5 = sub_269484ADC();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_7();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_27(&dword_269461000, v6, v7, "using invocation type as followup when invocationtype is announce as a workaround until model is ready to consume announce invocation type");
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
}

void sub_269467774(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X8>)
{
  v365 = a5;
  v6 = v5;
  v367 = a3;
  v357 = a2;
  v364 = v6;
  v359 = *v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E40, &unk_269485610);
  MEMORY[0x28223BE20](v9 - 8);
  v369 = &v350 - v10;
  v368 = type metadata accessor for TTCandidate(0);
  MEMORY[0x28223BE20](v368);
  v376 = (&v350 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v360 = v13;
  OUTLINED_FUNCTION_13();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v350 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v352 = v18;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v351 = v20;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v362 = v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v374 = v24;
  OUTLINED_FUNCTION_13();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v350 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = (&v350 - v29);
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v31 = sub_2694847EC();
  v32 = __swift_project_value_buffer(v31, qword_2813286A0);
  sub_269469A68(a1, v30);
  v389 = a1;
  sub_269469A68(a1, v28);

  v33 = sub_2694847DC();
  v34 = sub_269484ADC();

  v35 = os_log_type_enabled(v33, v34);
  v366 = a4;
  v354 = v17;
  if (v35)
  {
    OUTLINED_FUNCTION_9();
    v36 = swift_slowAlloc();
    v375 = swift_slowAlloc();
    aBlock[0] = v375;
    *v36 = 136315650;
    v361 = v32;
    v38 = *v30;
    v37 = v30[1];

    sub_269469ACC(v30);
    v39 = sub_269463C18(v38, v37, aBlock);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    v40 = OUTLINED_FUNCTION_15();
    v32 = v361;
    *(v36 + 14) = sub_269463C18(v40, v41, v42);
    *(v36 + 22) = 2080;
    v43 = *(v28 + 9);
    v44 = *(v28 + 10);

    sub_269469ACC(v28);
    v45 = sub_269463C18(v43, v44, aBlock);

    *(v36 + 24) = v45;
    _os_log_impl(&dword_269461000, v33, v34, "invoking NC for  candidate with tcuId - %s, trpCandidateId %s and utterance - %s", v36, 0x20u);
    swift_arrayDestroy();
    v46 = OUTLINED_FUNCTION_1();
    MEMORY[0x26D63EF60](v46);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  else
  {

    sub_269469ACC(v28);
    sub_269469ACC(v30);
  }

  v47 = swift_allocObject();
  v375 = v47;
  *(v47 + 16) = -1082130432;
  v363 = (v47 + 16);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  v49 = v48 + 16;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  v353 = (v50 + 16);
  v371 = v50;
  *(v50 + 24) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v356 = v51 + 16;
  v372 = v51;
  *(v51 + 20) = 1;
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v355 = v52 + 16;
  v373 = v52;
  *(v52 + 20) = 1;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v358 = v53 + 16;
  v54 = v369;
  v55 = v389;
  sub_269469B28(v389 + *(v368 + 56), v369);
  v56 = sub_26948478C();
  if (__swift_getEnumTagSinglePayload(v54, 1, v56) == 1)
  {
    sub_2694645DC(v54, &qword_280317E40, &unk_269485610);
    v57 = 0;
  }

  else
  {
    v58 = sub_26948476C();
    (*(*(v56 - 8) + 8))(v54, v56);
    v57 = v58 ^ 1u;
  }

  v59 = v374;
  v60 = v55[4];
  v61 = v376;
  if (v60)
  {
    v368 = v48 + 16;
    v369 = v57;
    v376 = v60;
    v62 = sub_2694847DC();
    sub_269484ADC();
    v63 = OUTLINED_FUNCTION_6();
    v65 = os_log_type_enabled(v63, v64);
    v66 = &property descriptor for TTManagerRequest.trpCandidateId;
    v370 = v53;
    if (v65)
    {
      v67 = swift_slowAlloc();
      v68 = v376;
      v69 = v48;
      v70 = v67;
      v71 = swift_slowAlloc();
      *v70 = 138413570;
      v72 = [v68 invocationType];
      *(v70 + 4) = v72;
      *v71 = v72;
      *(v70 + 12) = 2048;
      [v68 spkrIdScore];
      *(v70 + 14) = v73;
      *(v70 + 22) = 2048;
      [v68 aftmScore];
      *(v70 + 24) = v74;
      *(v70 + 32) = 2048;
      [v68 odldScore];
      *(v70 + 34) = v75;
      *(v70 + 42) = 2048;
      [v68 lrnnScore];
      *(v70 + 44) = v76;
      *(v70 + 52) = 2048;
      v53 = v370;
      [v68 conversationalOdldScore];
      *(v70 + 54) = v77;
      OUTLINED_FUNCTION_19();
      _os_log_impl(v78, v79, v80, v81, v70, 0x3Eu);
      sub_2694645DC(v71, &qword_280317E50, &qword_269485F30);
      v59 = v374;
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      v48 = v69;
      v66 = &property descriptor for TTManagerRequest.trpCandidateId;
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }

    v82 = v376;
    v83 = [v376 v66[21]];
    v84 = v389;
    v85 = sub_26946767C(v389, v82);
    if (v85)
    {
      v361 = v85;
      v86 = v364[8];
      if (v86)
      {
        v87 = [v86 getIsAssetMagusSupported];
      }

      else
      {
        v87 = 0;
      }

      v55 = v362;
      v100 = sub_26946985C(v83);
      if (((sub_269467584(v389) | v100) & 1) != 0 && (v87 & 1) == 0)
      {
        v374 = v48;
        sub_269469A68(v389, v55);

        v101 = sub_2694847DC();
        v102 = sub_269484ADC();

        if (os_log_type_enabled(v101, v102))
        {
          OUTLINED_FUNCTION_9();
          v103 = v55;
          v55 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v362 = v83;
          aBlock[0] = v104;
          *v55 = 136315650;
          v105 = TTCandidate.description.getter();
          v107 = v106;
          sub_269469ACC(v103);
          v108 = sub_269463C18(v105, v107, aBlock);

          *(v55 + 4) = v108;
          *(v55 + 6) = 2080;
          v109 = OUTLINED_FUNCTION_15();
          v112 = sub_269463C18(v109, v110, v111);
          OUTLINED_FUNCTION_14(v112);
          v55[3] = 0xBFF0000000000000;
          _os_log_impl(&dword_269461000, v101, v102, "Setting NC result for candidate - %s, trpCandidateId: %s to mitigated because magus is not supported. Score - %f", v55, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
          v113 = OUTLINED_FUNCTION_1();
          MEMORY[0x26D63EF60](v113);
        }

        else
        {

          sub_269469ACC(v55);
        }

        v201 = 0;
        *v365 = -1082130432;
        OUTLINED_FUNCTION_17();
        goto LABEL_105;
      }

      [v376 lrnnScore];
      if (v114 == -1.0)
      {
        v115 = sub_2694847DC();
        LOBYTE(v55) = sub_269484ADC();
        v116 = OUTLINED_FUNCTION_6();
        if (os_log_type_enabled(v116, v117))
        {
          OUTLINED_FUNCTION_7();
          v118 = swift_slowAlloc();
          v362 = v83;
          v119 = v48;
          v120 = v118;
          *v118 = 0;
          OUTLINED_FUNCTION_19();
          _os_log_impl(v121, v122, v123, v124, v120, 2u);
          v48 = v119;
          v83 = v362;
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
        }

        if ((v100 & 1) == 0 && (sub_269467584(v389) & 1) == 0)
        {
          v291 = sub_2694847DC();
          sub_269484ADC();
          v292 = OUTLINED_FUNCTION_5();
          if (os_log_type_enabled(v292, v293))
          {
            OUTLINED_FUNCTION_7();
            v294 = swift_slowAlloc();
            OUTLINED_FUNCTION_12(v294);
            OUTLINED_FUNCTION_2();
            _os_log_impl(v295, v296, v297, v298, v299, v300);
            v301 = OUTLINED_FUNCTION_1();
            MEMORY[0x26D63EF60](v301);
          }

          v201 = 0;
          v302 = -1082130432;
          goto LABEL_90;
        }

        v125 = sub_2694847DC();
        sub_269484ADC();
        v126 = OUTLINED_FUNCTION_5();
        if (os_log_type_enabled(v126, v127))
        {
          OUTLINED_FUNCTION_7();
          v128 = swift_slowAlloc();
          OUTLINED_FUNCTION_12(v128);
          OUTLINED_FUNCTION_2();
          _os_log_impl(v129, v130, v131, v132, v133, v134);
          v135 = OUTLINED_FUNCTION_1();
          MEMORY[0x26D63EF60](v135);
        }

        v136 = sub_2694847DC();
        sub_269484ADC();
        v137 = OUTLINED_FUNCTION_5();
        if (os_log_type_enabled(v137, v138))
        {
          OUTLINED_FUNCTION_7();
          v139 = swift_slowAlloc();
          OUTLINED_FUNCTION_12(v139);
          OUTLINED_FUNCTION_2();
          _os_log_impl(v140, v141, v142, v143, v144, v145);
          v146 = OUTLINED_FUNCTION_1();
          MEMORY[0x26D63EF60](v146);
        }
      }

      v147 = [objc_allocWithZone(MEMORY[0x277D5C320]) initWithDefaults];
      if (!v147)
      {
        v204 = sub_2694847DC();
        sub_269484AEC();
        v205 = OUTLINED_FUNCTION_5();
        if (os_log_type_enabled(v205, v206))
        {
          OUTLINED_FUNCTION_7();
          v207 = swift_slowAlloc();
          OUTLINED_FUNCTION_12(v207);
          OUTLINED_FUNCTION_2();
          _os_log_impl(v208, v209, v210, v211, v212, v213);
          v214 = OUTLINED_FUNCTION_1();
          MEMORY[0x26D63EF60](v214);
        }

        sub_269469BC0();
        swift_allocError();
        *v215 = 3;
        swift_willThrow();

        v216 = v361;
        goto LABEL_87;
      }

      v148 = v147;
      v374 = v48;
      v149 = v361;
      [v147 setInputOrigin_];
      sub_269463554(0, &qword_281327DA8, 0x277CCABB0);
      v150 = v376;
      [v376 spkrIdScore];
      v151 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v151, sel_setSpeakerIDScore_);

      [v150 aftmScore];
      v152 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v152, sel_setAcousticFTMScores_);

      [v150 odldScore];
      v153 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v153, sel_setNldaScore_);

      [v150 lrnnScore];
      v154 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v154, sel_setLrnnScore_);

      [v150 lrnnThreshold];
      v155 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v155, sel_setLrnnThreshold_);

      [v150 lrnnScale];
      v156 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v156, sel_setExternalLrnnScale_);

      [v150 lrnnOffset];
      v157 = sub_269484B2C();
      OUTLINED_FUNCTION_20(v157, sel_setExternalLrnnOffset_);

      [v150 conversationalOdldScore];
      v158 = sub_269484B2C();
      [v148 setConversationalNldaScore_];

      v159 = sub_269484ABC();
      LOBYTE(v157) = sub_269484A7C();

      [v148 setIsConversational_];
      v160 = v148;
      v161 = v53;
      v162 = v83;
      v163 = v149;
      v164 = sub_2694847DC();
      v165 = sub_269484ADC();
      v350 = v163;

      v166 = v162;
      v167 = v161;
      v360 = v160;

      v168 = os_log_type_enabled(v164, v165);
      v362 = v166;
      if (v168)
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        *v169 = 138412546;
        v171 = v360;
        *(v169 + 4) = v360;
        *(v169 + 12) = 2112;
        v172 = v350;
        *(v169 + 14) = v350;
        v173 = v361;
        *v170 = v148;
        v170[1] = v173;
        v174 = v171;
        v175 = v172;
        _os_log_impl(&dword_269461000, v164, v165, "inputFeats - %@ - derivedInvocationType - %@", v169, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E50, &qword_269485F30);
        swift_arrayDestroy();
        v166 = v362;
        OUTLINED_FUNCTION_4();
        MEMORY[0x26D63EF60]();
        v176 = OUTLINED_FUNCTION_1();
        MEMORY[0x26D63EF60](v176);
      }

      v177 = v364[2];
      if (v177)
      {
        v361 = v32;
        v178 = swift_allocObject();
        v180 = v374;
        v179 = v375;
        v178[2] = v167;
        v178[3] = v179;
        v182 = v371;
        v181 = v372;
        v178[4] = v180;
        v178[5] = v182;
        v183 = v373;
        v178[6] = v181;
        v178[7] = v183;
        v178[8] = v359;
        aBlock[4] = sub_269469C14;
        v385 = v178;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2694697F0;
        aBlock[3] = &block_descriptor;
        v184 = _Block_copy(aBlock);
        v359 = v385;
        v185 = v360;
        v186 = v177;

        v187 = v370;

        v360 = v186;
        [v186 processInputFeats:v185 completion:v184];
        _Block_release(v184);
        v359 = v185;

        OUTLINED_FUNCTION_10(v358, aBlock);
        if (*(v187 + 16) != 1)
        {
          v231 = v352;
          sub_269469A68(v389, v352);
          v232 = v366;

          v233 = sub_2694847DC();
          v234 = sub_269484ACC();

          if (os_log_type_enabled(v233, v234))
          {
            LODWORD(v389) = v234;
            v235 = swift_slowAlloc();
            v388[0] = swift_slowAlloc();
            *v235 = 136316674;
            v236 = *v231;
            v237 = v371;

            v238 = sub_269469ACC(v231);
            OUTLINED_FUNCTION_28(v238, v239, v388);
            OUTLINED_FUNCTION_25();

            *(v235 + 4) = v236;
            *(v235 + 12) = 2080;
            v240 = sub_269463C18(v367, v232, v388);
            v241 = OUTLINED_FUNCTION_14(v240);
            v242 = v363;
            v243 = OUTLINED_FUNCTION_8(v241, &v381);
            *(v235 + 24) = *v242;
            *(v235 + 32) = 2080;
            v244 = v368;
            OUTLINED_FUNCTION_8(v243, &v380);
            if (*v244)
            {
              v245 = 0x657461676974694DLL;
            }

            else
            {
              v245 = 0x64657463656C6553;
            }

            if (*v244)
            {
              v246 = 0xE900000000000064;
            }

            else
            {
              v246 = 0xE800000000000000;
            }

            v247 = sub_269463C18(v245, v246, v388);

            *(v235 + 34) = v247;
            *(v235 + 42) = 2080;
            v249 = v353;
            OUTLINED_FUNCTION_8(v248, &v379);
            v250 = *(v237 + 24);
            if (v250)
            {
              v251 = *v249;
            }

            else
            {
              v250 = 0xE300000000000000;
              v251 = 7104878;
            }

            v313 = v376;

            v317 = sub_269463C18(v251, v250, v388);

            *(v235 + 44) = v317;
            *(v235 + 52) = 2048;
            OUTLINED_FUNCTION_10(v356, &v378);
            v318 = *(v372 + 16);
            v319 = *(v372 + 20);

            v320 = v318;
            if (v319)
            {
              v320 = 0.0;
            }

            *(v235 + 54) = v320;
            *(v235 + 62) = 2048;
            OUTLINED_FUNCTION_10(v355, &v377);
            v321 = *(v373 + 16);
            v322 = *(v373 + 20);

            v323 = v321;
            if (v322)
            {
              v323 = 0.0;
            }

            *(v235 + 64) = v323;
            OUTLINED_FUNCTION_23();
            _os_log_impl(v324, v325, v326, v327, v328, 0x48u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_4();
            MEMORY[0x26D63EF60]();
            v329 = OUTLINED_FUNCTION_1();
            MEMORY[0x26D63EF60](v329);

            v312 = v374;
            v314 = v362;
            v315 = v368;
          }

          else
          {
            v312 = v180;

            sub_269469ACC(v231);
            v313 = v376;
            v314 = v362;
            v315 = v368;
          }

          v330 = AFIsInternalInstall();
          v331 = v359;
          if (v330 && (sub_26946985C(v314) & 1) != 0 && *(v364 + 80) == 1)
          {
            swift_beginAccess();
            *v315 = 0;
            v332 = sub_2694847DC();
            sub_269484ADC();
            v333 = OUTLINED_FUNCTION_5();
            if (os_log_type_enabled(v333, v334))
            {
              OUTLINED_FUNCTION_7();
              v335 = swift_slowAlloc();
              OUTLINED_FUNCTION_12(v335);
              OUTLINED_FUNCTION_2();
              _os_log_impl(v336, v337, v338, v339, v340, v341);
              v342 = OUTLINED_FUNCTION_1();
              MEMORY[0x26D63EF60](v342);
            }

            v343 = v314;
            v313 = v350;
          }

          else
          {
            v343 = v350;
            v332 = v331;
            v331 = v314;
          }

          v344 = v363;
          OUTLINED_FUNCTION_10(v363, v388);
          v345 = *v344;
          v346 = OUTLINED_FUNCTION_10(v315, v387);
          LODWORD(v389) = *(v312 + 16);
          OUTLINED_FUNCTION_8(v346, v386);
          v347 = *(v371 + 24);
          v376 = *(v371 + 16);
          OUTLINED_FUNCTION_10(v356, v383);
          v348 = *(v372 + 16);
          v349 = *(v372 + 20);
          OUTLINED_FUNCTION_10(v355, &v382);
          v201 = *(v373 + 16);
          LOBYTE(v55) = *(v373 + 20);

          v203 = v365;
          *v365 = v345;
          *(v203 + 4) = v389;
          *(v203 + 1) = v376;
          *(v203 + 2) = v347;
          v203[6] = v348;
          *(v203 + 28) = v349;
          goto LABEL_105;
        }

        v188 = v351;
        sub_269469A68(v389, v351);
        v189 = sub_2694847DC();
        sub_269484AEC();
        v190 = OUTLINED_FUNCTION_6();
        if (os_log_type_enabled(v190, v191))
        {
          OUTLINED_FUNCTION_26();
          v192 = swift_slowAlloc();
          OUTLINED_FUNCTION_9();
          v193 = swift_slowAlloc();
          v388[0] = v193;
          *v192 = 136315138;
          v194 = *v188;

          v195 = sub_269469ACC(v188);
          OUTLINED_FUNCTION_28(v195, v196, v388);
          OUTLINED_FUNCTION_25();

          *(v192 + 4) = v194;
          OUTLINED_FUNCTION_19();
          _os_log_impl(v197, v198, v199, v200, v192, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v193);
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
        }

        else
        {

          sub_269469ACC(v188);
        }

        v308 = v366;
        v309 = v362;
        v310 = v350;
        OUTLINED_FUNCTION_29();
        sub_269473558(v357, v367, v308);
        sub_269469BC0();
        swift_allocError();
        *v311 = 1;
        swift_willThrow();

        goto LABEL_86;
      }

      v217 = v354;
      sub_269469A68(v389, v354);
      v218 = sub_2694847DC();
      sub_269484AEC();
      v219 = OUTLINED_FUNCTION_6();
      if (os_log_type_enabled(v219, v220))
      {
        OUTLINED_FUNCTION_26();
        v221 = v217;
        v222 = swift_slowAlloc();
        OUTLINED_FUNCTION_9();
        v223 = swift_slowAlloc();
        aBlock[0] = v223;
        *v222 = 136315138;
        v224 = *v221;

        v225 = sub_269469ACC(v221);
        OUTLINED_FUNCTION_28(v225, v226, aBlock);
        OUTLINED_FUNCTION_25();

        *(v222 + 4) = v224;
        v166 = v362;
        OUTLINED_FUNCTION_19();
        _os_log_impl(v227, v228, v229, v230, v222, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v223);
        OUTLINED_FUNCTION_4();
        MEMORY[0x26D63EF60]();
        OUTLINED_FUNCTION_4();
        MEMORY[0x26D63EF60]();
      }

      else
      {

        sub_269469ACC(v217);
      }

      v303 = v364[9];
      sub_2694630A0();
      v304 = v303[2];
      v305 = v303[3];
      v55 = v303[4];
      v306 = v303[5];

      sub_2694648B0(v304, v305, v55, v306);

      if (sub_26946985C(v166) & 1) != 0 || (sub_269467584(v389))
      {
        OUTLINED_FUNCTION_29();
        sub_269473558(v357, v367, v366);
        sub_269469BC0();
        swift_allocError();
        *v307 = 0;
        swift_willThrow();

LABEL_86:
        v216 = v360;
LABEL_87:

        return;
      }

      v201 = 0;
      v302 = 1065353216;
LABEL_90:
      v316 = v365;
      *v365 = v302;
      *(v316 + 4) = 0;
      OUTLINED_FUNCTION_22();
LABEL_105:
      LOBYTE(v57) = v369;
      goto LABEL_106;
    }

    sub_269469A68(v84, v59);

    v88 = sub_2694847DC();
    LOBYTE(v55) = sub_269484AEC();

    if (os_log_type_enabled(v88, v55))
    {
      OUTLINED_FUNCTION_9();
      v57 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v374 = v48;
      aBlock[0] = v89;
      *v57 = 136315650;
      v362 = v83;
      v90 = *v59;

      v91 = sub_269469ACC(v59);
      OUTLINED_FUNCTION_28(v91, v92, aBlock);
      OUTLINED_FUNCTION_25();

      *(v57 + 4) = v90;
      *(v57 + 12) = 2080;
      v93 = OUTLINED_FUNCTION_15();
      *(v57 + 14) = sub_269463C18(v93, v94, v95);
      *(v57 + 22) = 2048;
      *(v57 + 24) = 0xBFF0000000000000;
      OUTLINED_FUNCTION_19();
      _os_log_impl(v96, v97, v98, v99, v57, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      LOBYTE(v57) = v369;
    }

    else
    {

      sub_269469ACC(v59);

      LOBYTE(v57) = v369;
    }

    v201 = 0;
    v202 = v365;
    *v365 = -1082130432;
    *(v202 + 4) = 0;
  }

  else
  {
    if ((v55[11] & 1) == 0)
    {
      switch(*(v55 + 16))
      {
        case 1:

          goto LABEL_62;
        case 3:
          OUTLINED_FUNCTION_21();
          break;
        default:
          break;
      }

      v252 = sub_269484D5C();

      v61 = v376;
      if (v252)
      {
LABEL_62:
        v253 = v57;
        v254 = v55;
        v55 = v360;
        sub_269469A68(v254, v360);
        v255 = v366;

        v256 = sub_2694847DC();
        v257 = sub_269484ADC();

        if (os_log_type_enabled(v256, v257))
        {
          OUTLINED_FUNCTION_9();
          v258 = swift_slowAlloc();
          LODWORD(v376) = v257;
          v259 = v258;
          v389 = swift_slowAlloc();
          aBlock[0] = v389;
          *v259 = 136315650;
          v369 = v253;
          v260 = *v55;
          v261 = v55[1];

          sub_269469ACC(v55);
          v253 = sub_269463C18(v260, v261, aBlock);

          *(v259 + 4) = v253;
          LOBYTE(v253) = v369;
          *(v259 + 12) = 2080;
          v262 = sub_269463C18(v367, v255, aBlock);
          *(v259 + 14) = v262;
          *(v259 + 22) = 2048;
          v263 = v363;
          OUTLINED_FUNCTION_8(v262, v388);
          *(v259 + 24) = *v263;
          _os_log_impl(&dword_269461000, v256, v376, "FlexibleFollowup: siri intended info is nil - Rejecting Candidate - %s, trpCandidateId %s. Score - %f, mitigationDecision:Rejected", v259, 0x20u);
          LOBYTE(v55) = v389;
          swift_arrayDestroy();
          v264 = OUTLINED_FUNCTION_1();
          MEMORY[0x26D63EF60](v264);
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
        }

        else
        {

          v265 = sub_269469ACC(v55);
          v263 = v363;
        }

        OUTLINED_FUNCTION_8(v265, aBlock);
        v290 = *v263;

        v201 = 0;
        *v365 = v290;
        OUTLINED_FUNCTION_17();
        LOBYTE(v57) = v253;
        goto LABEL_106;
      }
    }

    v370 = v53;
    v266 = v61;
    sub_269469A68(v55, v61);
    v267 = v366;

    LOBYTE(v55) = v375;

    v268 = sub_2694847DC();
    v269 = sub_269484ADC();

    LODWORD(v389) = v269;
    v270 = v269;
    v271 = v268;
    if (os_log_type_enabled(v268, v270))
    {
      v55 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v55 = 136315906;
      v368 = v48 + 16;
      v272 = *v266;
      v273 = v266[1];
      v374 = v48;

      sub_269469ACC(v266);
      v274 = sub_269463C18(v272, v273, aBlock);

      *(v55 + 4) = v274;
      *(v55 + 6) = 2080;
      v275 = sub_269463C18(v367, v267, aBlock);
      OUTLINED_FUNCTION_14(v275);
      v276 = v363;
      OUTLINED_FUNCTION_10(v363, v387);
      *(v55 + 3) = *v276;
      *(v55 + 16) = 2080;
      OUTLINED_FUNCTION_10(v368, v386);
      if (*v368)
      {
        v277 = 0x657461676974694DLL;
      }

      else
      {
        v277 = 0x64657463656C6553;
      }

      if (*v368)
      {
        v278 = 0xE900000000000064;
      }

      else
      {
        v278 = 0xE800000000000000;
      }

      v279 = sub_269463C18(v277, v278, aBlock);
      v280 = v57;

      *(v55 + 34) = v279;
      v57 = v374;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v281, v282, v283, v284, v285, 0x2Au);
      swift_arrayDestroy();
      v48 = v57;
      LOBYTE(v57) = v280;
      v49 = v368;
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      v286 = OUTLINED_FUNCTION_1();
      MEMORY[0x26D63EF60](v286);
    }

    else
    {

      sub_269469ACC(v266);
      v276 = v363;
    }

    OUTLINED_FUNCTION_10(v276, aBlock);
    v287 = *v276;
    OUTLINED_FUNCTION_10(v49, v388);
    v288 = *(v48 + 16);

    v201 = 0;
    v289 = v365;
    *v365 = v287;
    *(v289 + 4) = v288;
  }

  OUTLINED_FUNCTION_22();
LABEL_106:
  v203[8] = v201;
  *(v203 + 36) = v55;
  *(v203 + 37) = v57 & 1;
}

uint64_t sub_269469618(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a3 + 16);
  v14 = a1 == 0;
  swift_beginAccess();
  *(a2 + 16) = v14;
  if (a1)
  {
    [a1 score];
    v16 = v15;
    swift_beginAccess();
    *v13 = v16;
    v17 = [a1 didMitigate];
  }

  else
  {
    swift_beginAccess();
    v17 = 0;
    *v13 = -1082130432;
  }

  swift_beginAccess();
  *(a4 + 16) = v17;
  if (a1)
  {
    v18 = sub_269469C28(a1);
    v20 = v19;
    swift_beginAccess();
    *(a5 + 16) = v18;
    *(a5 + 24) = v20;

    [a1 threshold];
    v22 = v21;
  }

  else
  {
    swift_beginAccess();
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;

    v22 = 0;
  }

  swift_beginAccess();
  *(a6 + 16) = v22;
  *(a6 + 20) = a1 == 0;
  if (a1)
  {
    [a1 speakerIDThreshold];
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  result = swift_beginAccess();
  *(a7 + 16) = v24;
  *(a7 + 20) = a1 == 0;
  return result;
}

void sub_2694697F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_26946985C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v3 = v2;
  if (a1)
  {
    if (!v2)
    {
      v5 = 0;
      return v5 & 1;
    }

    sub_269463554(0, &qword_281327DA8, 0x277CCABB0);
    v4 = a1;
    v5 = sub_269484B3C();

    v3 = v4;
  }

  else
  {
    if (!v2)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

id sub_26946990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = sub_2694848EC();

    if (a4)
    {
LABEL_3:
      v7 = sub_2694848EC();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v12[0] = 0;
  v8 = [v4 initWithConfig:v6 bnnsIrPath:v7 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_2694842AC();

    swift_willThrow();
  }

  return v8;
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

uint64_t sub_269469A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269469ACC(uint64_t a1)
{
  v2 = type metadata accessor for TTCandidate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269469B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E40, &unk_269485610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269469BC0()
{
  result = qword_280317E48;
  if (!qword_280317E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317E48);
  }

  return result;
}

uint64_t sub_269469C28(void *a1)
{
  v1 = [a1 assetVersion];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2694848FC();

  return v3;
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

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269469D34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 38))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269469D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NCError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NCError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_269469F70()
{
  result = qword_280317E68;
  if (!qword_280317E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317E68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2048;
  return result;
}

void OUTLINED_FUNCTION_17()
{
  *(v0 + 4) = 1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
}

id OUTLINED_FUNCTION_20(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

unint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_269463C18(v3, v4, a3);
}

uint64_t sub_26946A0E0()
{
  v0 = sub_2694847EC();
  __swift_allocate_value_buffer(v0, qword_2813286A0);
  __swift_project_value_buffer(v0, qword_2813286A0);
  sub_26946A174();
  sub_269484B4C();
  return sub_2694847FC();
}

unint64_t sub_26946A174()
{
  result = qword_281327DA0;
  if (!qword_281327DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281327DA0);
  }

  return result;
}

uint64_t sub_26946A208(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707274 && a2 == 0xE500000000000000;
  if (v4 || (sub_269484D5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144756374 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_269484D5C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26946A30C(char a1)
{
  sub_269484DCC();
  MEMORY[0x26D63E9B0](a1 & 1);
  return sub_269484DEC();
}

uint64_t sub_26946A360(char a1)
{
  if (a1)
  {
    return 0x61746144756374;
  }

  else
  {
    return 0x6449707274;
  }
}

uint64_t sub_26946A3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26946A208(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26946A400@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26946A2CC();
  *a1 = result;
  return result;
}

uint64_t sub_26946A428(uint64_t a1)
{
  v2 = sub_26946CC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26946A464(uint64_t a1)
{
  v2 = sub_26946CC34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26946A4A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EE0, &qword_2694858E0);
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26946CC34();
  sub_269484E0C();
  v15 = 0;
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5_0();
  sub_269484D0C();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EF0, &qword_2694858E8);
    sub_26946CD98(&qword_280317EF8, sub_26946CC88, MEMORY[0x277D83948]);
    sub_269484D3C();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_26946A658(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F20, &qword_269485900);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26946CC34();
  sub_269484DFC();
  if (!v1)
  {
    sub_269484CBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EF0, &qword_2694858E8);
    sub_26946CD98(&qword_280317F28, sub_26946CE10, MEMORY[0x277D83978]);
    sub_269484CEC();
    v5 = OUTLINED_FUNCTION_7_0();
    v6(v5);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return OUTLINED_FUNCTION_6_0();
}

uint64_t sub_26946A860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
  if (v4 || (sub_269484D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6353746C75736572 && a2 == 0xEB0000000065726FLL;
    if (v6 || (sub_269484D5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676974694D646964 && a2 == 0xEB00000000657461;
      if (v7 || (sub_269484D5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
        if (v8 || (sub_269484D5C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_269484D5C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26946AA18(char a1)
{
  result = 0x6449756374;
  switch(a1)
  {
    case 1:
      result = 0x6353746C75736572;
      break;
    case 2:
      result = 0x676974694D646964;
      break;
    case 3:
      result = 0x636E617265747475;
      break;
    case 4:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26946AAC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F18, &qword_2694858F8);
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26946CCDC();
  sub_269484E0C();
  v10[15] = 0;
  OUTLINED_FUNCTION_5_0();
  sub_269484D0C();
  if (!v1)
  {
    v10[14] = 1;
    sub_269484D2C();
    v10[13] = 2;
    sub_269484D1C();
    v10[12] = 3;
    OUTLINED_FUNCTION_5_0();
    sub_269484CFC();
    v10[11] = 4;
    OUTLINED_FUNCTION_5_0();
    sub_269484CFC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_26946AC7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F08, &qword_2694858F0);
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26946CCDC();
  sub_269484DFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v35[0]) = 0;
  OUTLINED_FUNCTION_2_0();
  v11 = sub_269484CBC();
  v13 = v12;
  LOBYTE(v35[0]) = 1;
  OUTLINED_FUNCTION_2_0();
  sub_269484CDC();
  v15 = v14;
  LOBYTE(v35[0]) = 2;
  OUTLINED_FUNCTION_2_0();
  LODWORD(v29) = sub_269484CCC();
  LOBYTE(v35[0]) = 3;
  OUTLINED_FUNCTION_2_0();
  v28 = sub_269484CAC();
  v30 = v16;
  v42 = 4;
  v17 = sub_269484CAC();
  v27 = v29 & 1;
  v18 = *(v7 + 8);
  v29 = v17;
  v20 = v19;
  v18(v10, v5);
  *&v31 = v11;
  *(&v31 + 1) = v13;
  LODWORD(v32) = v15;
  v21 = v27;
  BYTE4(v32) = v27;
  v22 = v28;
  v23 = v30;
  *(&v32 + 1) = v28;
  *&v33 = v30;
  *(&v33 + 1) = v29;
  v34 = v20;
  sub_26946CD30(&v31, v35);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v35[0] = v11;
  v35[1] = v13;
  v36 = v15;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v29;
  v41 = v20;
  result = sub_26946CD68(v35);
  v25 = v32;
  *a2 = v31;
  *(a2 + 16) = v25;
  *(a2 + 32) = v33;
  *(a2 + 48) = v34;
  return result;
}

uint64_t sub_26946AF34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26946A658(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_26946AF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26946A860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26946AFB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26946AA10();
  *a1 = result;
  return result;
}

uint64_t sub_26946AFDC(uint64_t a1)
{
  v2 = sub_26946CCDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26946B018(uint64_t a1)
{
  v2 = sub_26946CCDC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26946B054@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26946AC7C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

BOOL sub_26946B0BC()
{
  v0 = sub_2694848EC();
  v1 = sub_2694848EC();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  if (AppBooleanValue)
  {
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v3 = sub_2694847EC();
    __swift_project_value_buffer(v3, qword_2813286A0);
    v4 = sub_2694847DC();
    v5 = sub_269484ADC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "MHLogger - com.apple.voicetrigger 'AttentiveSiri AudioLogging Enabled' is enabled";
LABEL_10:
      _os_log_impl(&dword_269461000, v4, v5, v7, v6, 2u);
      MEMORY[0x26D63EF60](v6, -1, -1);
    }
  }

  else
  {
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v8 = sub_2694847EC();
    __swift_project_value_buffer(v8, qword_2813286A0);
    v4 = sub_2694847DC();
    v5 = sub_269484ADC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "MHLogger - com.apple.voicetrigger 'AttentiveSiri AudioLogging Enabled' is not set/present";
      goto LABEL_10;
    }
  }

  return AppBooleanValue != 0;
}

void sub_26946B270(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EA0, &qword_2694857A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269485720;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_26946CA20();
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v7 = objc_allocWithZone(MEMORY[0x277CBEAA8]);

  v8 = [v7 init];
  [v8 timeIntervalSince1970];
  v10 = v9;
  v11 = v9;

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = sub_269484D4C();
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v12;
  *(v4 + 80) = v13;
  sub_26948491C();
  sub_269463554(0, &qword_280317EB0, 0x277CBEBC0);
  v14 = sub_26946B478(0xD000000000000037, 0x8000000269486BE0);
  v15 = sub_2694848EC();
  v16 = [v14 URLByAppendingPathComponent_];

  if (v16)
  {

    sub_2694842CC();

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_26946B478(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2694848EC();

  v4 = [v2 initFileURLWithPath_];

  return v4;
}

uint64_t sub_26946B4EC(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for TTCandidate(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v45 = &v44 - v8;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v48 = OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_ttCandidates;
  v49 = a1;
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v46 = v13;
  v47 = a1 + 64;
  if (v12)
  {
LABEL_4:
    v56 = v16;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = v18 | (v15 << 6);
    v20 = (*(v49 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v49 + 56) + 40 * v19;
    v24 = *v23;
    v53 = *(v23 + 4);
    v25 = *(v23 + 8);
    v54 = *(v23 + 16);
    v55 = v25;
    v26 = *(v50 + v48);
    v27 = *(v26 + 16);

    for (i = 0; ; ++i)
    {
      if (v27 == i)
      {
        v51 = 0;
        v52 = 0;
LABEL_20:
        v16 = v56;
        if (v53 == 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = sub_269484D5C();
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v53 = v32;
        if ((result & 1) == 0)
        {
          result = sub_26946C6D0(0, *(v16 + 16) + 1, 1, v16);
          v16 = result;
        }

        v34 = *(v16 + 16);
        v33 = *(v16 + 24);
        if (v34 >= v33 >> 1)
        {
          result = sub_26946C6D0((v33 > 1), v34 + 1, 1, v16);
          v16 = result;
        }

        v35 = v53 & 1;
        *(v16 + 16) = v34 + 1;
        v36 = v16 + 56 * v34;
        *(v36 + 32) = v21;
        *(v36 + 40) = v22;
        *(v36 + 48) = v24;
        *(v36 + 52) = v35;
        v37 = v58;
        *(v36 + 53) = v57;
        *(v36 + 55) = v37;
        v38 = v51;
        *(v36 + 56) = v52;
        *(v36 + 64) = v38;
        v39 = v54;
        *(v36 + 72) = v55;
        *(v36 + 80) = v39;
        v13 = v46;
        v9 = v47;
        if (!v12)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (i >= *(v26 + 16))
      {
        break;
      }

      sub_269469A68(v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, v7);
      v29 = *v7 == v21 && v7[1] == v22;
      if (v29 || (sub_269484D5C() & 1) != 0)
      {
        v30 = v45;
        sub_26946CA74(v7, v45);
        v31 = *(v30 + 72);
        v51 = *(v30 + 80);
        v52 = v31;

        sub_269469ACC(v30);
        goto LABEL_20;
      }

      result = sub_269469ACC(v7);
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v13)
      {

        v41 = *(v50 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId);
        v40 = *(v50 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId + 8);
        v42 = *(v50 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId);
        v43 = *(v50 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId + 8);

        sub_26946B904(v41, v40, v16, v42, v43);
      }

      v12 = *(v9 + 8 * v17);
      ++v15;
      if (v12)
      {
        v56 = v16;
        v15 = v17;
        goto LABEL_9;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26946B904(void (*a1)(void, void), uint64_t a2, uint64_t (*a3)(), uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v65 = a4;
  v75 = a2;
  v76 = a3;
  v74 = a1;
  v6 = sub_26948482C();
  OUTLINED_FUNCTION_0_1();
  v73 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v71 = v10 - v9;
  v72 = sub_26948485C();
  OUTLINED_FUNCTION_0_1();
  v70 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v69 = v14 - v13;
  v15 = sub_26948483C();
  OUTLINED_FUNCTION_0_1();
  v64 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v68 = sub_2694842EC();
  OUTLINED_FUNCTION_0_1();
  v66 = v21;
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v58 - v27;
  v29 = sub_26948493C();
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_3();
  v30 = sub_26948425C();
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_3();
  result = sub_26946B0BC();
  if (result)
  {
    v62 = v6;
    v63 = v28;
    sub_26948429C();
    swift_allocObject();
    v32 = sub_26948428C();
    sub_26948424C();
    sub_26948426C();
    aBlock = v74;
    v78 = v75;
    v79 = v76;
    sub_26946C514();
    v33 = sub_26948427C();
    if (!v5)
    {
      v35 = v33;
      v36 = v34;
      v76 = v32;
      sub_26948492C();
      v37 = sub_26948490C();
      if (v38)
      {
        v39 = v63;
        v59 = v37;
        v61 = v35;
        v58 = v38;
        sub_26946B270(v65, v67);
        v75 = 0;
        sub_2694842BC();
        sub_2694842DC();

        v40 = v66;
        v41 = *(v66 + 8);
        v67 = v66 + 8;
        v74 = v41;
        v65 = v36;
        v42 = v68;
        v41(v26, v68);
        sub_269463554(0, &qword_280317E78, 0x277D85C78);
        v43 = v64;
        (*(v64 + 104))(v20, *MEMORY[0x277D851C8], v15);
        v60 = sub_269484B1C();
        (*(v43 + 8))(v20, v15);
        (*(v40 + 16))(v26, v39, v42);
        v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v45 = swift_allocObject();
        v46 = v58;
        *(v45 + 16) = v59;
        *(v45 + 24) = v46;
        (*(v40 + 32))(v45 + v44, v26, v42);
        v81 = sub_26946C5C0;
        v82 = v45;
        aBlock = MEMORY[0x277D85DD0];
        v78 = 1107296256;
        v79 = sub_26946C4AC;
        v80 = &block_descriptor_0;
        v47 = _Block_copy(&aBlock);
        v48 = v69;
        sub_26948484C();
        v83 = MEMORY[0x277D84F90];
        sub_26946C9D8(&qword_280317E80, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E88, &unk_269485790);
        sub_26946C624();
        v49 = v71;
        v50 = v62;
        sub_269484BCC();
        v51 = v60;
        MEMORY[0x26D63E6E0](0, v48, v49, v47);
        _Block_release(v47);

        sub_26946C568(v61, v65);

        (*(v73 + 8))(v49, v50);
        (*(v70 + 8))(v48, v72);
        v74(v63, v42);
      }

      else
      {
        if (qword_281327EE0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v52 = sub_2694847EC();
        __swift_project_value_buffer(v52, qword_2813286A0);
        v53 = sub_2694847DC();
        v54 = sub_269484AEC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_269461000, v53, v54, "error serializing ncData to json string", v55, 2u);
          MEMORY[0x26D63EF60](v55, -1, -1);
        }

        v56 = OUTLINED_FUNCTION_6_0();
        sub_26946C568(v56, v57);
      }
    }
  }

  return result;
}

uint64_t sub_26946BFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v5 = sub_26948493C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2694842EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v13 = sub_2694847EC();
  v14 = __swift_project_value_buffer(v13, qword_2813286A0);
  (*(v10 + 16))(v12, a3, v9);

  v38 = a2;
  v36 = v14;
  v15 = sub_2694847DC();
  v16 = v38;
  v17 = v15;
  v18 = sub_269484ADC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v5;
    v20 = v19;
    v33 = swift_slowAlloc();
    v34 = a3;
    v39[0] = v33;
    *v20 = 136315394;
    v32 = v18;
    v21 = v37;
    *(v20 + 4) = sub_269463C18(v37, v16, v39);
    *(v20 + 12) = 2080;
    sub_26946C9D8(&qword_280317E98, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v22 = sub_269484D4C();
    v23 = v8;
    v24 = v6;
    v26 = v25;
    (*(v10 + 8))(v12, v9);
    v27 = sub_269463C18(v22, v26, v39);
    v6 = v24;
    v8 = v23;

    *(v20 + 14) = v27;
    v16 = v38;
    _os_log_impl(&dword_269461000, v17, v32, "writing to file with json %s at %s", v20, 0x16u);
    v28 = v33;
    swift_arrayDestroy();
    MEMORY[0x26D63EF60](v28, -1, -1);
    v29 = v20;
    v5 = v35;
    MEMORY[0x26D63EF60](v29, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v21 = v37;
  }

  v39[0] = v21;
  v39[1] = v16;
  sub_26948492C();
  sub_269466374();
  sub_269484B9C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26946C4AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_26946C514()
{
  result = qword_280317E70;
  if (!qword_280317E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317E70);
  }

  return result;
}

uint64_t sub_26946C568(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_26946C5C0()
{
  v1 = *(sub_2694842EC() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_26946BFF8(v2, v3, v4);
}

unint64_t sub_26946C624()
{
  result = qword_280317E90;
  if (!qword_280317E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280317E88, &unk_269485790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317E90);
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

char *sub_26946C6D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EB8, &qword_2694857A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26946C820(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 48);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || &v16[48 * v11] <= v15)
    {
      memmove(v15, v16, 48 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26946C92C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_0(a3, result);
  }

  return result;
}

char *sub_26946C94C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_0(a3, result);
  }

  return result;
}

uint64_t sub_26946C970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E50, &qword_269485F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26946C9D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26946CA20()
{
  result = qword_280317EA8;
  if (!qword_280317EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317EA8);
  }

  return result;
}

uint64_t sub_26946CA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTCandidate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26946CAF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26946CB34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26946CBA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26946CBE4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26946CC34()
{
  result = qword_280317EE8;
  if (!qword_280317EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317EE8);
  }

  return result;
}

unint64_t sub_26946CC88()
{
  result = qword_280317F00;
  if (!qword_280317F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F00);
  }

  return result;
}

unint64_t sub_26946CCDC()
{
  result = qword_280317F10;
  if (!qword_280317F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F10);
  }

  return result;
}

uint64_t sub_26946CD98(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280317EF0, &qword_2694858E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26946CE10()
{
  result = qword_280317F30;
  if (!qword_280317F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NCTCUData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NCMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NCData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26946D0B4()
{
  result = qword_280317F38;
  if (!qword_280317F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F38);
  }

  return result;
}

unint64_t sub_26946D10C()
{
  result = qword_280317F40;
  if (!qword_280317F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F40);
  }

  return result;
}

unint64_t sub_26946D164()
{
  result = qword_280317F48;
  if (!qword_280317F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F48);
  }

  return result;
}

unint64_t sub_26946D1BC()
{
  result = qword_280317F50;
  if (!qword_280317F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F50);
  }

  return result;
}

unint64_t sub_26946D214()
{
  result = qword_280317F58;
  if (!qword_280317F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F58);
  }

  return result;
}

unint64_t sub_26946D26C()
{
  result = qword_280317F60;
  if (!qword_280317F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F60);
  }

  return result;
}

uint64_t TTClientError.hashValue.getter()
{
  v1 = *v0;
  sub_269484DCC();
  MEMORY[0x26D63E9B0](v1);
  return sub_269484DEC();
}

unint64_t sub_26946D364()
{
  result = qword_280317F68;
  if (!qword_280317F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TTClientError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26946D50C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26946D54C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26946D5A4(char a1)
{
  result = 0x74756374726F6873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = OUTLINED_FUNCTION_11_0();
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26946D694(uint64_t a1, uint64_t a2)
{
  v2 = sub_269484C9C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26946D6E0(char a1)
{
  result = 0x657461676974696DLL;
  switch(a1)
  {
    case 1:
      result = 0x74694D746F6E6F64;
      break;
    case 2:
      result = OUTLINED_FUNCTION_2_1();
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26946D784@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26946D5A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26946D7D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26946D694(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26946D804@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26946D6E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26946D830(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = type metadata accessor for TTCandidate(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x277D84F98];
  v84 = MEMORY[0x277D84F98];
  v14 = v4[3];
  v77 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v14);
  v74 = a2;
  v75 = a3;
  v76 = a4;
  sub_269473AF0(a2, a3, a4);
  v15 = *(a1 + 16);
  v68 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v72 = *(v10 + 72);
    v73 = v12;
    while (1)
    {
      sub_269469A68(v17, v12);
      LODWORD(v78) = sub_26946DEC4(v12, v74, v75, v76);
      v19 = v18;
      if (v16)
      {

        v13 = v84;
      }

      v21 = *v12;
      v20 = v12[1];

      swift_isUniquelyReferenced_nonNull_native();
      *&v81 = v13;
      v22 = sub_269480E90(v21, v20);
      if (__OFADD__(*(v13 + 16), (v23 & 1) == 0))
      {
        break;
      }

      v24 = v22;
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F70, &qword_269485CB8);
      if (sub_269484C5C())
      {
        v26 = sub_269480E90(v21, v20);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_49;
        }

        v24 = v26;
      }

      v13 = v81;
      if (v25)
      {
        v28 = *(v81 + 56) + 16 * v24;
        *v28 = v78;
        v10 = v19;
        *(v28 + 8) = v19;
      }

      else
      {
        *(v81 + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v29 = (*(v13 + 48) + 16 * v24);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v13 + 56) + 16 * v24;
        *v30 = v78;
        *(v30 + 8) = v19;
        v31 = *(v13 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_48;
        }

        v10 = v19;
        *(v13 + 16) = v33;
      }

      v84 = v13;
      v12 = v73;
      sub_269469ACC(v73);
      v17 += v72;
      v16 = 1;
      if (!--v15)
      {
        goto LABEL_14;
      }
    }

LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_14:
    v34 = v77;
    __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    sub_2694745C0(v74, v75, v76, v13);
    if (v34[5])
    {
LABEL_42:
      v65 = v84;
      if (v68)
      {
      }

      return v65;
    }

    v67 = v10;
    v35 = v13 + 64;
    v36 = 1 << *(v13 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v13 + 64);
    v39 = (v36 + 63) >> 6;
    v77 = 0x8000000269486C90;
    v78 = "reservedForTests";
    OUTLINED_FUNCTION_13_0();
    v75 = v40;
    v76 = v41;
    OUTLINED_FUNCTION_13_0();
    v74 = v42;

    v43 = 0;
    v70 = v13 + 64;
    v69 = v39;
    if (v38)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v39)
      {

        goto LABEL_42;
      }

      v38 = *(v35 + 8 * v44);
      ++v43;
      if (v38)
      {
        v43 = v44;
        do
        {
LABEL_22:
          v73 = ((v38 - 1) & v38);
          v45 = (v43 << 10) | (16 * __clz(__rbit64(v38)));
          v46 = *(v13 + 56);
          v47 = (*(v13 + 48) + v45);
          v48 = v47[1];
          v71 = *v47;
          v49 = *(v46 + v45 + 8);
          v50 = *(v49 + 16);
          v51 = v49 + 32;
          v72 = v48;

          v52 = 0;
          v53 = MEMORY[0x277D84F90];
          while (v50 != v52)
          {
            if (v52 >= *(v49 + 16))
            {
              __break(1u);
              goto LABEL_46;
            }

            sub_26946EC94(v51, &v81);
            v54 = *&v82[8];
            __swift_project_boxed_opaque_existential_1(&v81, *&v82[8]);
            switch((*(*(&v54 + 1) + 16))(v54, *(&v54 + 1)))
            {
              case 4u:
                OUTLINED_FUNCTION_11_0();
                goto LABEL_28;
              case 5u:

                goto LABEL_29;
              default:
LABEL_28:
                v55 = sub_269484D5C();

                if (v55)
                {
LABEL_29:
                  sub_26946F018(&v81);
                }

                else
                {
                  v79 = v81;
                  v80[0] = *v82;
                  *(v80 + 9) = *&v82[9];
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v83 = v53;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_26947B2AC(0, *(v53 + 16) + 1, 1);
                    v53 = v83;
                  }

                  v58 = *(v53 + 16);
                  v57 = *(v53 + 24);
                  if (v58 >= v57 >> 1)
                  {
                    v62 = OUTLINED_FUNCTION_4_1(v57);
                    sub_26947B2AC(v62, v58 + 1, 1);
                    v53 = v83;
                  }

                  *(v53 + 16) = v58 + 1;
                  v59 = (v53 + 48 * v58);
                  v60 = v79;
                  v61 = v80[0];
                  *(v59 + 57) = *(v80 + 9);
                  v59[2] = v60;
                  v59[3] = v61;
                }

                v51 += 48;
                ++v52;
                break;
            }
          }

          v64 = sub_26946EB84(&v81, v71, v72);
          if (*(v63 + 8))
          {
            *(v63 + 8) = v53;
          }

          else
          {
          }

          (v64)(&v81, 0);
          v35 = v70;
          v39 = v69;
          v38 = v73;
        }

        while (v38);
      }
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_269484D7C();
  __break(1u);
  return result;
}

uint64_t sub_26946DEC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = a4;
  v104 = a3;
  v103 = a2;
  v5 = type metadata accessor for TTCandidate(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v98 - v9);
  if (qword_281327EE0 != -1)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v11 = sub_2694847EC();
    v12 = __swift_project_value_buffer(v11, qword_2813286A0);
    sub_269469A68(a1, v10);
    sub_269469A68(a1, v8);
    v116 = v12;
    v13 = sub_2694847DC();
    v14 = sub_269484ADC();
    v15 = os_log_type_enabled(v13, v14);
    v109 = a1;
    if (v15)
    {
      v16 = swift_slowAlloc();
      *&v117 = swift_slowAlloc();
      *v16 = 136315394;
      v17 = *v10;
      v18 = v10[1];

      sub_269469ACC(v10);
      v19 = sub_269463C18(v17, v18, &v117);
      a1 = v109;

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v20 = *(v8 + 9);
      v21 = *(v8 + 10);

      sub_269469ACC(v8);
      v22 = sub_269463C18(v20, v21, &v117);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_269461000, v13, v14, "processing overrides on tcu candidate with id -%s and utterance - %s", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_269469ACC(v8);
      sub_269469ACC(v10);
    }

    v10 = v112[6];
    v111 = v10[2];
    if (!v111)
    {
      v114 = MEMORY[0x277D84F90];
      goto LABEL_67;
    }

    v113 = 0;
    v23 = 0;
    v24 = (v10 + 4);
    OUTLINED_FUNCTION_13_0();
    v115 = v25;
    v102 = 0x8000000269486C90;
    v101 = 0x8000000269486CD0;
    OUTLINED_FUNCTION_13_0();
    v100 = v26;
    v99 = 0x8000000269486D10;
    v106 = 0x8000000269486860;
    v114 = MEMORY[0x277D84F90];
    *&v27 = 136315138;
    v107 = v27;
    *&v27 = 136315394;
    v98 = v27;
    v28 = 0;
    v110 = v10;
LABEL_7:
    if (v28 < v10[2])
    {
      break;
    }

    __break(1u);
LABEL_79:
    swift_once();
  }

  sub_26946F0D0(v24, v120);
  OUTLINED_FUNCTION_15_0();
  v29 = sub_2694847DC();
  v30 = sub_269484ADC();
  if (os_log_type_enabled(v29, v30))
  {
    v108 = 0;
    v31 = v115;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v119[0] = v33;
    *v32 = v107;
    v34 = OUTLINED_FUNCTION_1_0();
    v35(v34);
    OUTLINED_FUNCTION_10_0();
    v37 = v36 + 7;
    a1 = v109;
    switch(v38)
    {
      case 1:
        v37 = v36 - 5;
        v39 = &v122;
        goto LABEL_18;
      case 2:
        v37 = v36 - 7;
        v39 = &v123;
        goto LABEL_18;
      case 3:
        v37 = 0xD000000000000017;
        v39 = &v124;
        goto LABEL_18;
      case 4:
        v37 = 0x65636E756F6E6E61;
        goto LABEL_16;
      case 5:
        break;
      case 6:
        v37 = v36 - 7;
        v39 = &v125;
LABEL_18:
        v31 = *(v39 - 32);
        break;
      default:
        v37 = 0x74756374726F6873;
LABEL_16:
        v31 = 0xEF7265686374614DLL;
        break;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v117);
    v40 = sub_269463C18(v37, v31, v119);

    *(v32 + 4) = v40;
    _os_log_impl(&dword_269461000, v29, v30, "Running TTM Override %s ..", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

    v23 = v108;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v117);
  }

  v41 = v121;
  v42 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  v43 = v23;
  v44 = (*(v42 + 8))(a1, v41, v42);
  if (v23)
  {
    if ((v113 & 0x100000000) != 0)
    {
    }

    else
    {
      v62 = v23;
      __swift_project_boxed_opaque_existential_1(v112, v112[3]);
      sub_269474B64(v103, v104, v105);
      OUTLINED_FUNCTION_15_0();
      v63 = sub_2694847DC();
      v64 = sub_269484ADC();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v119[0] = v66;
        *v65 = v107;
        v67 = OUTLINED_FUNCTION_1_0();
        a1 = v109;
        v69 = v68(v67);
        v70 = OUTLINED_FUNCTION_12_0(v69);

        *(v65 + 4) = v70;
        _os_log_impl(&dword_269461000, v63, v64, "%s resulted in error", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v117);
      }
    }

    v23 = 0;
    v45 = 2;
    HIDWORD(v113) = 1;
  }

  else
  {
    v45 = v44;
    OUTLINED_FUNCTION_15_0();
    v118[24] = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_26946C7E8(0, *(v114 + 2) + 1, 1, v114);
    }

    v47 = *(v114 + 2);
    v46 = *(v114 + 3);
    if (v47 >= v46 >> 1)
    {
      v84 = OUTLINED_FUNCTION_4_1(v46);
      v114 = sub_26946C7E8(v84, v47 + 1, 1, v114);
    }

    v48 = v114;
    *(v114 + 2) = v47 + 1;
    v49 = &v48[48 * v47];
    v50 = v117;
    v51 = *v118;
    *(v49 + 57) = *&v118[9];
    *(v49 + 2) = v50;
    *(v49 + 3) = v51;
    OUTLINED_FUNCTION_15_0();
    v52 = sub_2694847DC();
    v53 = sub_269484ACC();
    if (os_log_type_enabled(v52, v53))
    {
      v108 = v28;
      v54 = swift_slowAlloc();
      v119[0] = swift_slowAlloc();
      *v54 = v98;
      v55 = OUTLINED_FUNCTION_1_0();
      v57 = v56(v55);
      v58 = OUTLINED_FUNCTION_12_0(v57);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      v59 = 0xE800000000000000;
      v60 = 0x657461676974696DLL;
      a1 = v109;
      switch(v45)
      {
        case 1u:
          v60 = 0x74694D746F6E6F64;
          v61 = 1952540521;
          goto LABEL_36;
        case 2u:
          v60 = OUTLINED_FUNCTION_2_1();
          v61 = 1684632178;
LABEL_36:
          v59 = v61 | 0xED00006500000000;
          break;
        case 3u:
          v60 = 0xD000000000000017;
          v59 = v106;
          break;
        default:
          break;
      }

      v71 = sub_269463C18(v60, v59, v119);

      *(v54 + 14) = v71;
      _os_log_impl(&dword_269461000, v52, v53, "%s returned %s", v54, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();

      v28 = v108;
      v23 = 0;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v117);
    }
  }

  ++v28;
  v72 = v121;
  v73 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  v8 = 0xED00006574616769;
  switch((*(v73 + 16))(v72, v73))
  {
    case 1u:
    case 2u:
    case 6u:
      OUTLINED_FUNCTION_10_0();
      goto LABEL_44;
    case 3u:
      OUTLINED_FUNCTION_7_1();
      goto LABEL_44;
    case 4u:
      OUTLINED_FUNCTION_11_0();
      goto LABEL_44;
    case 5u:

      goto LABEL_45;
    default:
LABEL_44:
      OUTLINED_FUNCTION_10_0();
      v74 = sub_269484D5C();

      if (v74)
      {
LABEL_45:
        if (*(v112 + 40) == 1)
        {
          v75 = 0xED00006574616769;
          v76 = 0x74694D746F6E6F64;
          switch(v45)
          {
            case 1u:
              goto LABEL_49;
            case 2u:
              v75 = 0xED00006564697272;
              v76 = OUTLINED_FUNCTION_2_1();
              goto LABEL_49;
            case 3u:
              v76 = OUTLINED_FUNCTION_7_1();
LABEL_49:
              v77 = OUTLINED_FUNCTION_8_1(v76, v75);

              if ((v77 & 1) == 0)
              {
                goto LABEL_50;
              }

              goto LABEL_75;
            default:

LABEL_75:
              __swift_destroy_boxed_opaque_existential_0Tm(v120);
              break;
          }

          return 0;
        }

LABEL_60:
        v10 = v110;
        __swift_destroy_boxed_opaque_existential_0Tm(v120);
        v24 += 40;
        if (v111 == v28)
        {
          if (v113)
          {
            v85 = sub_2694847DC();
            v86 = sub_269484ACC();
            if (os_log_type_enabled(v85, v86))
            {
              *swift_slowAlloc() = 0;
              OUTLINED_FUNCTION_27(&dword_269461000, v87, v88, "OverridesContainer returned a result of mitigate");
              OUTLINED_FUNCTION_6_1();
            }

            return 0;
          }

LABEL_67:
          v89 = sub_2694847DC();
          v90 = sub_269484ACC();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = 2;
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&dword_269461000, v89, v90, "OverridesContainer returned a result of donot Override", v92, 2u);
            OUTLINED_FUNCTION_6_1();
          }

          else
          {

            return 2;
          }

          return v91;
        }

        goto LABEL_7;
      }

LABEL_50:
      v78 = v45;
      switch(v45)
      {
        case 0u:
          goto LABEL_53;
        case 1u:

          goto LABEL_71;
        case 2u:
          OUTLINED_FUNCTION_2_1();
          goto LABEL_53;
        case 3u:
          OUTLINED_FUNCTION_7_1();
LABEL_53:
          v79 = v78;
          v80 = sub_269484D5C();

          if ((v80 & 1) == 0)
          {
            v81 = 0x74694D746F6E6F64;
            switch(v79)
            {
              case 0:

                v82 = 1;
                goto LABEL_59;
              case 1:
                goto LABEL_58;
              case 2:
                v8 = 0xED00006564697272;
                v81 = OUTLINED_FUNCTION_2_1();
                goto LABEL_58;
              case 3:
                v8 = v106;
                v81 = 0xD000000000000017;
LABEL_58:
                v83 = OUTLINED_FUNCTION_8_1(v81, v8);

                v82 = v83 | v113;
LABEL_59:
                LODWORD(v113) = v82;
                goto LABEL_60;
              default:
                goto LABEL_80;
            }
          }

LABEL_71:
          v93 = sub_2694847DC();
          v94 = sub_269484ACC();
          if (os_log_type_enabled(v93, v94))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_27(&dword_269461000, v95, v96, "OverridesContainer returned a result of donot Mitigate");
            OUTLINED_FUNCTION_6_1();
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v120);
          v91 = 1;
          break;
        default:
LABEL_80:
          JUMPOUT(0);
      }

      return v91;
  }
}

uint64_t (*sub_26946EB84(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_26946ECCC(v6, a2, a3);
  return sub_26946EBF8;
}

void sub_26946EBF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_26946EC44(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void (*sub_26946ECCC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_26946EFE4(v6);
  v6[9] = sub_26946EDC4(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26946ED64;
}

void sub_26946ED64(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_26946EDC4(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v9;
  v9[3] = a3;
  v9[4] = v4;
  v9[2] = a2;
  v10 = *v4;
  v11 = sub_269480E90(a2, a3);
  *(v9 + 48) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F70, &qword_269485CB8);
  if (sub_269484C5C())
  {
    v15 = sub_269480E90(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_269484D7C();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[5] = v13;
  if (v14)
  {
    v17 = (*(*v5 + 56) + 16 * v13);
    v18 = *v17;
    v19 = *(v17 + 1);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  *v9 = v18;
  v9[1] = v19;
  return sub_26946EF10;
}

void sub_26946EF10(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = *(*a1 + 48);
  if (v5)
  {
    v7 = v3[5];
    v8 = *v3[4];
    if (v6)
    {
      v9 = v8[7] + 16 * v7;
      *v9 = v4;
      *(v9 + 8) = v5;
    }

    else
    {
      sub_26946EC44(v7, v3[2], v3[3], v4, v5, v8);
    }
  }

  else if ((*a1)[6])
  {
    sub_26946F07C(*(*v3[4] + 48) + 16 * v3[5]);
    sub_269484C6C();
  }

  free(v3);
}

uint64_t (*sub_26946EFE4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26946F00C;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_26946F0D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26946F140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26946F180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26946F1DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26946F21C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26946F274(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26946F2FC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26946F3D8()
{
  result = qword_280317F78;
  if (!qword_280317F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317F78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, uint64_t a2)
{

  return sub_269484D5C();
}

uint64_t sub_26946F470(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2694843DC();
  v4 = *(v36 - 1);
  v5 = MEMORY[0x28223BE20](v36);
  v32 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v32 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = (&v32 - v10);
  if (qword_281327EE0 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v34 = v9;
  v35 = v2;
  v12 = sub_2694847EC();
  v33 = __swift_project_value_buffer(v12, qword_2813286A0);
  v9 = sub_2694847DC();
  v13 = sub_269484ADC();
  if (os_log_type_enabled(v9, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_269461000, v9, v13, "Running shortcuts override", v14, 2u);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  v15 = 0;
  v16 = *(a1 + 40);
  a1 = *(v16 + 16);
  v17 = v4 + 16;
  v37 = (v4 + 8);
  v2 = v36;
  while (1)
  {
    if (a1 == v15)
    {
      return 2;
    }

    if (v15 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v18 = *(v4 + 16);
    v19 = v17;
    v18(v11, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v2);
    v9 = v11;
    if (sub_26946F84C())
    {
      break;
    }

    ++v15;
    (*v37)(v11, v2);
    v17 = v19;
  }

  v21 = v34;
  v18(v34, v11, v2);
  v22 = sub_2694847DC();
  v23 = sub_269484ADC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v33 = v24;
    v36 = swift_slowAlloc();
    v38 = v36;
    *v24 = 136315138;
    v18(v32, v21, v2);
    v25 = sub_26948494C();
    v27 = v26;
    v28 = *v37;
    (*v37)(v21, v2);
    v29 = sub_269463C18(v25, v27, &v38);

    v30 = v33;
    *(v33 + 4) = v29;
    _os_log_impl(&dword_269461000, v22, v23, "Parse: %s is shortcut; recommending .donotMitigate", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();

    v28(v11, v2);
  }

  else
  {

    v31 = *v37;
    (*v37)(v21, v2);
    v31(v11, v2);
  }

  return 1;
}

BOOL sub_26946F84C()
{
  sub_26946FC0C();
  sub_26948453C();

  sub_2694704C8(v28, v26);
  if (v27)
  {
    v0 = sub_26948460C();
    if (OUTLINED_FUNCTION_2_2(v0, v1))
    {
      v2 = v24[0];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_269470538(v26);
    v2 = 0;
  }

  sub_2694704C8(v28, v26);
  if (v27)
  {
    v3 = sub_2694846CC();
    if (OUTLINED_FUNCTION_2_2(v3, v4))
    {
      v5 = v24[0];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_269470538(v26);
    v5 = 0;
  }

  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v6 = sub_2694847EC();
  __swift_project_value_buffer(v6, qword_2813286A0);
  sub_2694704C8(v28, v26);

  v7 = sub_2694847DC();
  v8 = sub_269484ADC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v9 = 136315906;
    if (v2 | v5)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v2 | v5)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = sub_269463C18(v10, v11, &v25);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_2694704C8(v26, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F80, qword_2694867F0);
    v13 = sub_26948494C();
    v15 = v14;
    sub_269470538(v26);
    v16 = sub_269463C18(v13, v15, &v25);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v24[0] = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F88, &qword_269485E50);
    v17 = sub_26948494C();
    v19 = sub_269463C18(v17, v18, &v25);

    *(v9 + 24) = v19;
    *(v9 + 32) = 2080;
    v24[0] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F90, &qword_269485E58);
    v20 = sub_26948494C();
    v22 = sub_269463C18(v20, v21, &v25);

    *(v9 + 34) = v22;
    _os_log_impl(&dword_269461000, v7, v8, "isShortcutIntent: %s where task is %s; as runTask %s as execTask %s", v9, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  else
  {

    sub_269470538(v26);
  }

  sub_269470538(v28);
  return (v2 | v5) != 0;
}

id sub_26946FBC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShortcutMatcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26946FC0C()
{
  v1 = sub_2694843DC();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x28223BE20](v1);
  v61 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26948446C();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26948444C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  v12 = sub_2694843AC();
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v60 - v16;
  v60 = v0;
  v17 = sub_2694843BC();
  v18 = 0;
  v19 = *(v17 + 16);
  while (1)
  {
    if (v19 == v18)
    {

      if (qword_281327EE0 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }

    if (v18 >= *(v17 + 16))
    {
      __break(1u);
LABEL_29:
      swift_once();
LABEL_9:
      v24 = sub_2694847EC();
      __swift_project_value_buffer(v24, qword_2813286A0);
      v25 = sub_2694847DC();
      v26 = sub_269484AEC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_269461000, v25, v26, "Failed to parse userParse. Returning nil intent", v27, 2u);
        MEMORY[0x26D63EF60](v27, -1, -1);
      }

      return 0;
    }

    (*(v6 + 16))(v9, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v5);
    if (sub_2694843EC())
    {
      break;
    }

    ++v18;
    (*(v6 + 8))(v9, v5);
  }

  (*(v6 + 32))(v11, v9, v5);
  v20 = v65;
  sub_26948442C();
  (*(v6 + 8))(v11, v5);
  v21 = v64;
  sub_26948445C();
  (*(v66 + 8))(v20, v67);
  v22 = v69;
  v23 = v68;
  (*(v69 + 32))(v70, v21, v68);
  v67 = sub_2694844FC();
  v30 = MEMORY[0x26D63E100]();
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v31 = sub_2694847EC();
  v32 = __swift_project_value_buffer(v31, qword_2813286A0);
  v34 = v61;
  v33 = v62;
  v35 = v63;
  (*(v62 + 16))(v61, v60, v63);

  v66 = v32;
  v36 = sub_2694847DC();
  v37 = sub_269484ADC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v72[0] = v65;
    *v38 = 136315394;
    v39 = sub_26948472C();
    v40 = MEMORY[0x26D63E620](v30, v39);
    v42 = v34;
    v43 = sub_269463C18(v40, v41, v72);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    sub_2694843BC();
    v44 = MEMORY[0x26D63E620]();
    v46 = v45;

    (*(v33 + 8))(v42, v63);
    v47 = sub_269463C18(v44, v46, v72);

    *(v38 + 14) = v47;
    _os_log_impl(&dword_269461000, v36, v37, "tasks are %s where userDialogActs are %s", v38, 0x16u);
    v48 = v65;
    swift_arrayDestroy();
    v22 = v69;
    MEMORY[0x26D63EF60](v48, -1, -1);
    MEMORY[0x26D63EF60](v38, -1, -1);
  }

  else
  {

    (*(v33 + 8))(v34, v35);
  }

  if (!sub_269484008(v30))
  {

    v57 = sub_2694847DC();
    v58 = sub_269484AEC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_269461000, v57, v58, "NL Parse has no tasks. Returning nil intent", v59, 2u);
      MEMORY[0x26D63EF60](v59, -1, -1);
    }

    (*(v22 + 8))(v70, v23);
    return 0;
  }

  sub_26948402C(0, (v30 & 0xC000000000000001) == 0, v30);
  if ((v30 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x26D63E800](0, v30);
  }

  else
  {
    v28 = *(v30 + 32);
  }

  v49 = sub_2694847DC();
  v50 = sub_269484ADC();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v71 = v28;
    v72[0] = v52;
    *v51 = 136315138;
    sub_26948472C();

    v53 = sub_26948494C();
    v55 = v23;
    v56 = sub_269463C18(v53, v54, v72);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_269461000, v49, v50, "firstTask is %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x26D63EF60](v52, -1, -1);
    MEMORY[0x26D63EF60](v51, -1, -1);

    (*(v22 + 8))(v70, v55);
  }

  else
  {

    (*(v22 + 8))(v70, v23);
  }

  return v28;
}

uint64_t sub_2694704C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F80, qword_2694867F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269470538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F80, qword_2694867F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269470690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26948436C();
  sub_269463554(0, &qword_281327DD8, 0x277D5AA68);
  sub_26948435C();
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

void sub_269470744(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v5);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_2();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_50();
  sub_2694842FC();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2694645DC(v2, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v15 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v15, qword_2813286A0);

    v16 = sub_2694847DC();
    sub_269484AEC();

    if (OUTLINED_FUNCTION_59())
    {
      OUTLINED_FUNCTION_31();
      v17 = OUTLINED_FUNCTION_16_0();
      v50 = v17;
      OUTLINED_FUNCTION_27_0(4.8149e-34);
      v18 = OUTLINED_FUNCTION_50();
      *(v13 + 4) = sub_269463C18(v18, v19, v20);
      OUTLINED_FUNCTION_42();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    v27 = OUTLINED_FUNCTION_55();
    v28(v27);
    v29 = objc_opt_self();
    v30 = sub_26948431C();
    v31 = [v29 derivedIdentifierForComponentName:37 fromSourceIdentifier:v30];

    if (v31)
    {
      sub_26948432C();

      v32 = OUTLINED_FUNCTION_14_0();
      v33(v32);
      v26 = 0;
      goto LABEL_10;
    }

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v34 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v34, qword_2813286A0);
    v35 = OUTLINED_FUNCTION_52();
    v36(v35);
    v37 = sub_2694847DC();
    v38 = sub_269484AEC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_31();
      v49 = v4;
      v50 = OUTLINED_FUNCTION_30();
      v40 = v50;
      *v39 = 136315138;
      v48 = sub_26948430C();
      v42 = v41;
      v43 = *(v9 + 8);
      v43(v13, v7);
      v44 = sub_269463C18(v48, v42, &v50);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_269461000, v37, v38, "error generating derived indeitifier for TTM from request UUID - %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      v4 = v49;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_22_0();

      v45 = OUTLINED_FUNCTION_14_0();
      (v43)(v45);
    }

    else
    {

      v46 = *(v9 + 8);
      v46(v13, v7);
      v47 = OUTLINED_FUNCTION_14_0();
      (v46)(v47);
    }
  }

  v26 = 1;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v4, v26, 1, v7);
  OUTLINED_FUNCTION_29_0();
}

void sub_269470B24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_0();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v7);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_2();
  v15 = v13 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  sub_269476360(v6, v2);
  OUTLINED_FUNCTION_3_2(v2);
  if (!v22)
  {
    (*(v11 + 32))(v21, v2, v9);
    v31 = [objc_allocWithZone(MEMORY[0x277D5B098]) init];
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MEMORY[0x277D5B0A0]) init];
      if (v33)
      {
        v34 = v33;
        sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
        v55 = v4;
        v35 = *(v11 + 16);
        v36 = OUTLINED_FUNCTION_39();
        v35(v36);
        v37 = sub_269470FF4(v19);
        [v34 setTtmId_];

        (v35)(v19, v55, v9);
        v38 = sub_269470FF4(v19);
        [v34 setTrpId_];

        [v32 setEventMetadata_];
        (*(v11 + 8))(v21, v9);
        goto LABEL_22;
      }

      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v47 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v47, qword_2813286A0);
      v48 = sub_2694847DC();
      v49 = sub_269484AEC();
      if (OUTLINED_FUNCTION_37(v49))
      {
        *OUTLINED_FUNCTION_36() = 0;
        OUTLINED_FUNCTION_43();
        _os_log_impl(v50, v51, v52, v53, v54, 2u);
        OUTLINED_FUNCTION_6_1();
      }
    }

    else
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v39 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v39, qword_2813286A0);
      v40 = sub_2694847DC();
      v41 = sub_269484AEC();
      if (OUTLINED_FUNCTION_37(v41))
      {
        *OUTLINED_FUNCTION_36() = 0;
        OUTLINED_FUNCTION_42();
        _os_log_impl(v42, v43, v44, v45, v46, 2u);
        OUTLINED_FUNCTION_12_1();
      }
    }

    (*(v11 + 8))(v21, v9);
    goto LABEL_22;
  }

  sub_2694645DC(v2, &qword_280317F98, &qword_269485F18);
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v23 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v23, qword_2813286A0);
  (*(v11 + 16))(v15, v4, v9);
  v24 = sub_2694847DC();
  v25 = sub_269484AEC();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_31();
    v26 = OUTLINED_FUNCTION_16_0();
    v56 = v26;
    *v4 = 136315138;
    sub_2694763D0();
    v27 = sub_269484D4C();
    v29 = v28;
    (*(v11 + 8))(v15, v9);
    v30 = sub_269463C18(v27, v29, &v56);

    *(v4 + 4) = v30;
    _os_log_impl(&dword_269461000, v24, v25, "cannot generate ttmClient event with nil ttmID and trpID - %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_12_1();
  }

  else
  {

    (*(v11 + 8))(v15, v9);
  }

LABEL_22:
  OUTLINED_FUNCTION_29_0();
}

id sub_269470FF4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26948431C();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_26948434C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_2694710AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v5);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = sub_26948434C();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_0();
  v48 = v11;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = 0;
  v54 = MEMORY[0x277D84F90];
  v16 = *(v4 + OBJC_IVAR____TtC21SiriTurnTakingManager17TTManagerResponse_ttResults);
  v17 = (v16 + 32);
  v46 = (v18 + 16);
  v47 = (v18 + 32);
  v19 = (v18 + 8);
  v49 = v16;
  v50 = *(v16 + 16);
  while (v50 != v15)
  {
    if (v15 >= *(v49 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v20 = *v17;
    v21 = v17[1];
    *&v53[9] = *(v17 + 25);
    v52 = v20;
    *v53 = v21;
    v22 = objc_allocWithZone(MEMORY[0x277D5B130]);
    sub_2694762B0(&v52, v51);
    v23 = [v22 init];
    if (!v23)
    {
      sub_26947630C(&v52);

      if (qword_281327EE0 == -1)
      {
LABEL_10:
        v29 = sub_2694847EC();
        OUTLINED_FUNCTION_13_1(v29, qword_2813286A0);
        v30 = sub_2694847DC();
        v31 = sub_269484AEC();
        if (OUTLINED_FUNCTION_49(v31))
        {
          v32 = OUTLINED_FUNCTION_36();
          *v32 = 0;
          OUTLINED_FUNCTION_18_0();
          _os_log_impl(v33, v34, v35, v36, v32, 2u);
          OUTLINED_FUNCTION_6_1();
        }

        break;
      }

LABEL_20:
      OUTLINED_FUNCTION_0_0();
      swift_once();
      goto LABEL_10;
    }

    v24 = v23;
    v25 = v52;
    sub_2694762B0(&v52, v51);
    sub_2694842FC();
    sub_26947630C(&v52);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {

      sub_2694645DC(v8, &qword_280317F98, &qword_269485F18);
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v37 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v37, qword_2813286A0);
      sub_2694762B0(&v52, v51);
      v38 = sub_2694847DC();
      sub_269484AEC();
      sub_26947630C(&v52);
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_31();
        v39 = OUTLINED_FUNCTION_24_0();
        v51[0] = v39;
        *v9 = 136315138;
        v40 = sub_269463C18(v25, *(&v25 + 1), v51);
        sub_26947630C(&v52);
        *(v9 + 4) = v40;
        OUTLINED_FUNCTION_18_0();
        _os_log_impl(v41, v42, v43, v44, v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_11_1();
      }

      else
      {

        sub_26947630C(&v52);
      }

      break;
    }

    (*v47)(v14, v8, v9);
    sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
    v26 = v48;
    (*v46)(v48, v14, v9);
    v27 = sub_269470FF4(v26);
    [v24 setTcuId_];

    [v24 setDecision_];
    sub_26947630C(&v52);
    v28 = v24;
    MEMORY[0x26D63E600]();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_269484A5C();
    }

    OUTLINED_FUNCTION_32();
    sub_269484A6C();

    (*v19)(v14, v9);
    v17 += 3;
    ++v15;
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_269471554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_51();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v8);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_32();
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v4);
  if (v11)
  {
    sub_2694645DC(v4, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v12 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v12, qword_2813286A0);

    v13 = sub_2694847DC();
    sub_269484AEC();
    OUTLINED_FUNCTION_44();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_31();
      v14 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v14);
      OUTLINED_FUNCTION_27_0(4.8149e-34);
      v15 = OUTLINED_FUNCTION_32();
      *(v3 + 4) = sub_269463C18(v15, v16, v17);
      OUTLINED_FUNCTION_7_2(&dword_269461000, v18, v19, "error converting trpID %s to UUID");
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    v20 = OUTLINED_FUNCTION_9_1();
    v21(v20);
    v22 = OUTLINED_FUNCTION_57(objc_allocWithZone(MEMORY[0x277D5B118]));
    v23 = v22;
    if (v22)
    {
      v24 = v22;
      sub_2694710AC(v6, v25, v26);
      if (v27)
      {
        sub_269463554(0, &qword_281327DE0, 0x277D5B130);
        v28 = sub_269484A3C();
      }

      else
      {
        v28 = 0;
      }

      [v24 setResults_];

      v5 = v44;
      v7 = &property descriptor for TTManagerRequest.trpCandidateId;
    }

    v29 = [objc_allocWithZone(MEMORY[0x277D5B110]) v7[54]];
    [v29 setEnded_];
    sub_269470B24(v5, v3);
    if (v30)
    {
      v31 = v30;
      [v30 setTtmRequestContext_];
      OUTLINED_FUNCTION_48();
      v32 = OUTLINED_FUNCTION_32();
      sub_269470690(v32, v33, v31);
    }

    else
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v34 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v34, qword_2813286A0);
      v35 = sub_2694847DC();
      v36 = sub_269484AEC();
      if (OUTLINED_FUNCTION_20_0(v36))
      {
        *OUTLINED_FUNCTION_36() = 0;
        OUTLINED_FUNCTION_54();
        _os_log_impl(v37, v38, v39, v40, v41, 2u);
        OUTLINED_FUNCTION_22_0();
      }

      else
      {
      }
    }

    v42 = OUTLINED_FUNCTION_34();
    v43(v42);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2694718B0(char *a1)
{
  v1 = *a1;
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v2 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v2, qword_2813286A0);
  v3 = sub_2694847DC();
  v4 = sub_269484AEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_31();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    sub_26947625C();
    swift_allocError();
    *v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_269461000, v3, v4, "Neural Combiner failure reason %@", v5, 0xCu);
    sub_2694645DC(v6, &qword_280317E50, &qword_269485F30);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_6_1();
  }

  return 4 * ((v1 & 0xFE) == 2);
}

void sub_2694719E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_0();
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v10);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_3();
  v13 = *v7;
  OUTLINED_FUNCTION_14_0();
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v4);
  if (v14)
  {
    sub_2694645DC(v4, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v15 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v15, qword_2813286A0);

    v16 = sub_2694847DC();
    sub_269484AEC();
    OUTLINED_FUNCTION_44();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_31();
      v17 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v17);
      OUTLINED_FUNCTION_27_0(4.8149e-34);
      v18 = OUTLINED_FUNCTION_14_0();
      *(v3 + 4) = sub_269463C18(v18, v19, v20);
      OUTLINED_FUNCTION_7_2(&dword_269461000, v21, v22, "error converting trpID %s to UUID");
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    v23 = OUTLINED_FUNCTION_9_1();
    v24(v23);
    v25 = OUTLINED_FUNCTION_57(objc_allocWithZone(MEMORY[0x277D5B120]));
    v26 = v25;
    if (v25)
    {
      v43 = v13;
      [v25 setReason_];
    }

    v27 = [objc_allocWithZone(MEMORY[0x277D5B110]) (v5 + 2936)];
    [v27 setFailed_];
    sub_269470B24(v9, v3);
    if (v28)
    {
      v29 = v28;
      [v28 setTtmRequestContext_];
      OUTLINED_FUNCTION_48();
      v30 = OUTLINED_FUNCTION_14_0();
      sub_269470690(v30, v31, v29);
    }

    else
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v32 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v32, qword_2813286A0);
      v33 = sub_2694847DC();
      v34 = sub_269484AEC();
      if (OUTLINED_FUNCTION_20_0(v34))
      {
        v35 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_38(v35);
        OUTLINED_FUNCTION_5_2();
        _os_log_impl(v36, v37, v38, v39, v40, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      else
      {
      }
    }

    v41 = OUTLINED_FUNCTION_34();
    v42(v41);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_269471D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_0();
  v46 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v11);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = sub_26948434C();
  OUTLINED_FUNCTION_0_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_14_0();
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v14);
  if (v19)
  {
    sub_2694645DC(v14, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v20 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v20, qword_2813286A0);

    v21 = sub_2694847DC();
    sub_269484AEC();
    OUTLINED_FUNCTION_44();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_31();
      v22 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v22);
      OUTLINED_FUNCTION_27_0(4.8149e-34);
      v23 = OUTLINED_FUNCTION_14_0();
      *(v3 + 4) = sub_269463C18(v23, v24, v25);
      OUTLINED_FUNCTION_7_2(&dword_269461000, v26, v27, "error converting trpID %s to UUID");
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    (*(v17 + 32))(v3, v14, v15);
    v28 = OUTLINED_FUNCTION_57(objc_allocWithZone(*v8));
    v29 = v28;
    if (v28)
    {
      [v28 setExists_];
    }

    v30 = [objc_allocWithZone(*v6) v14 + 2936];
    [v30 setStartedOrChanged_];
    sub_269470B24(v10, v3);
    if (v31)
    {
      v32 = v31;
      [v31 *v46];
      OUTLINED_FUNCTION_48();
      v33 = OUTLINED_FUNCTION_14_0();
      sub_269470690(v33, v34, v32);
    }

    else
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v35 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v35, qword_2813286A0);
      v36 = sub_2694847DC();
      v37 = sub_269484AEC();
      if (OUTLINED_FUNCTION_20_0(v37))
      {
        v38 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_38(v38);
        OUTLINED_FUNCTION_5_2();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      else
      {
      }
    }

    v44 = OUTLINED_FUNCTION_34();
    v45(v44);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_269472028(_BYTE *a1)
{
  if (*a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_26947203C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v4);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v5);
  v62 = &v54 - v6;
  v7 = sub_26948434C();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_0();
  v58 = v9;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v10);
  v61 = &v54 - v11;
  v12 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  v13 = a1 + 64;
  OUTLINED_FUNCTION_8_2();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v57 = (v19 + 16);
  v59 = (v19 + 32);
  v60 = (v19 + 8);
  v63 = a1;

  v20 = 0;
  v56 = v18;
  if (!v16)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v55 = v12;
LABEL_7:
    v22 = __clz(__rbit64(v16)) | (v20 << 6);
    v23 = (*(v63 + 48) + 16 * v22);
    v12 = *v23;
    v2 = v23[1];
    v24 = *(v63 + 56) + 40 * v22;
    v25 = *v24;
    v26 = *(v24 + 4);
    v27 = *(v24 + 37);

    v28 = v62;
    sub_2694842FC();
    if (__swift_getEnumTagSinglePayload(v28, 1, v7) == 1)
    {

      sub_2694645DC(v28, &qword_280317F98, &qword_269485F18);
      if (qword_281327EE0 != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    v29 = v61;
    (*v59)(v61, v28, v7);
    v30 = [objc_allocWithZone(MEMORY[0x277D5B0C8]) init];
    if (!v30)
    {
      break;
    }

    v31 = v30;
    sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
    v1 = v7;
    v32 = v58;
    (*v57)(v58, v29, v1);
    v33 = sub_269470FF4(v32);
    [v31 setTcuId_];

    LODWORD(v34) = v25;
    [v31 setNeuralCombinerScore_];
    [v31 setRecommendation_];
    if (v27)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    [v31 setMode_];
    v2 = v31;
    MEMORY[0x26D63E600]();
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_269484A5C();
    }

    v16 &= v16 - 1;
    sub_269484A6C();

    (*v60)(v29, v1);
    v12 = v65;
    v7 = v1;
    v18 = v56;
    if (!v16)
    {
LABEL_3:
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v18)
        {

          return v12;
        }

        v16 = *(v13 + 8 * v21);
        ++v20;
        if (v16)
        {
          v55 = v12;
          v20 = v21;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_30:
      OUTLINED_FUNCTION_0_0();
      swift_once();
LABEL_18:
      v36 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v36, qword_2813286A0);

      v37 = sub_2694847DC();
      sub_269484AEC();

      if (OUTLINED_FUNCTION_58())
      {
        OUTLINED_FUNCTION_31();
        v38 = OUTLINED_FUNCTION_24_0();
        v64 = v38;
        *v1 = 136315138;
        v39 = sub_269463C18(v12, v2, &v64);

        *(v1 + 4) = v39;
        OUTLINED_FUNCTION_5_2();
        _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_11_1();
      }

      else
      {
      }

      return 0;
    }
  }

  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v45 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v45, qword_2813286A0);
  v46 = sub_2694847DC();
  v47 = sub_269484AEC();
  if (OUTLINED_FUNCTION_37(v47))
  {
    *OUTLINED_FUNCTION_36() = 0;
    OUTLINED_FUNCTION_43();
    _os_log_impl(v48, v49, v50, v51, v52, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  (*v60)(v61, v7);
  return 0;
}

void *sub_269472590(unint64_t a1, uint64_t a2)
{
  v4 = a1;
  v78 = a1;
  v79 = a2;
  sub_269466374();
  v5 = &v78;
  v6 = sub_269484B8C();
  v7 = *(v6 + 16);
  if (v7 <= 1)
  {

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v8 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v8, qword_2813286A0);

    v2 = sub_2694847DC();
    sub_269484AEC();
    OUTLINED_FUNCTION_44();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_103;
    }

    OUTLINED_FUNCTION_31();
    v78 = OUTLINED_FUNCTION_16_0();
    *v6 = 136315138;
    v9 = OUTLINED_FUNCTION_14_0();
    *(v6 + 4) = sub_269463C18(v9, v10, v11);
    OUTLINED_FUNCTION_7_2(&dword_269461000, v12, v13, "The assertVersion=%s doesn't follow semantic version scheme");
    OUTLINED_FUNCTION_4_2();
    goto LABEL_32;
  }

  v14 = objc_allocWithZone(MEMORY[0x277D5ACA0]);
  v15 = [v14 init];
  if (!v15)
  {

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v27 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v27, qword_2813286A0);
    v2 = sub_2694847DC();
    v28 = sub_269484AEC();
    if (!OUTLINED_FUNCTION_49(v28))
    {
      goto LABEL_103;
    }

    v29 = OUTLINED_FUNCTION_36();
    *v29 = 0;
    OUTLINED_FUNCTION_18_0();
    _os_log_impl(v30, v31, v32, v33, v29, 2u);
LABEL_32:
    OUTLINED_FUNCTION_6_1();
    goto LABEL_103;
  }

  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_87;
  }

  v2 = v15;
  v5 = *(v6 + 32);
  v3 = *(v6 + 40);
  v16 = HIBYTE(v3) & 0xF;
  v17 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v18 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_82;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
LABEL_87:

    v21 = sub_269475770(v5, v3, 10);

    if ((v21 & 0x100000000) == 0)
    {
      goto LABEL_88;
    }

LABEL_82:

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v44 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v44, qword_2813286A0);

    v45 = sub_2694847DC();
    v46 = sub_269484AEC();

    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_102;
    }

    goto LABEL_100;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v78 = *(v6 + 32);
    v79 = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v5 == 43)
    {
      if (v16)
      {
        if (v16 != 1)
        {
          OUTLINED_FUNCTION_53();
          while (1)
          {
            OUTLINED_FUNCTION_15_1();
            if (!v23 & v22)
            {
              break;
            }

            OUTLINED_FUNCTION_46();
            if (!v23)
            {
              break;
            }

            v21 = v39 + v38;
            if (__CFADD__(v39, v38))
            {
              break;
            }

            OUTLINED_FUNCTION_45();
            if (v23)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }
    }

    else
    {
      if (v5 != 45)
      {
        if (v16)
        {
          while (1)
          {
            OUTLINED_FUNCTION_15_1();
            if (!v23 & v22)
            {
              break;
            }

            OUTLINED_FUNCTION_46();
            if (!v23)
            {
              break;
            }

            v21 = v43 + v42;
            if (__CFADD__(v43, v42))
            {
              break;
            }

            OUTLINED_FUNCTION_45();
            if (v23)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

      if (v16)
      {
        if (v16 != 1)
        {
          OUTLINED_FUNCTION_53();
          while (1)
          {
            OUTLINED_FUNCTION_15_1();
            if (!v23 & v22)
            {
              break;
            }

            OUTLINED_FUNCTION_46();
            if (!v23)
            {
              break;
            }

            v21 = v35 - v34;
            if (v35 < v34)
            {
              break;
            }

            OUTLINED_FUNCTION_45();
            if (v23)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
    }

    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    OUTLINED_FUNCTION_0_0();
    swift_once();
    goto LABEL_107;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    goto LABEL_111;
  }

  for (i = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_269484C3C())
  {
    v20 = *i;
    if (v20 == 43)
    {
      if (v17 < 1)
      {
        goto LABEL_114;
      }

      if (v17 != 1)
      {
        v21 = 0;
        if (!i)
        {
          goto LABEL_71;
        }

        while (1)
        {
          OUTLINED_FUNCTION_15_1();
          if (!v23 & v22)
          {
            break;
          }

          OUTLINED_FUNCTION_46();
          if (!v23)
          {
            break;
          }

          v21 = v37 + v36;
          if (__CFADD__(v37, v36))
          {
            break;
          }

          OUTLINED_FUNCTION_45();
          if (v23)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else if (v20 == 45)
    {
      if (v17 < 1)
      {
        __break(1u);
        goto LABEL_113;
      }

      if (v17 != 1)
      {
        v21 = 0;
        if (!i)
        {
          goto LABEL_71;
        }

        while (1)
        {
          OUTLINED_FUNCTION_15_1();
          if (!v23 & v22)
          {
            break;
          }

          OUTLINED_FUNCTION_46();
          if (!v23)
          {
            break;
          }

          v21 = v25 - v24;
          if (v25 < v24)
          {
            break;
          }

          OUTLINED_FUNCTION_45();
          if (v23)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else if (v17)
    {
      v21 = 0;
      if (!i)
      {
LABEL_71:
        v26 = 0;
        goto LABEL_81;
      }

      while (1)
      {
        v40 = *i - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v21;
        if ((v41 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        v21 = v41 + v40;
        if (__CFADD__(v41, v40))
        {
          break;
        }

        ++i;
        if (!--v17)
        {
          goto LABEL_71;
        }
      }
    }

LABEL_80:
    v21 = 0;
    v26 = 1;
LABEL_81:
    LOBYTE(v77) = v26;
    if (v26)
    {
      goto LABEL_82;
    }

LABEL_88:
    if (*(v6 + 16) >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_111:
    ;
  }

  v47 = *(v6 + 48);
  v48 = *(v6 + 56);

  v49 = sub_269472D04(v47, v48);
  if ((v49 & 0x100000000) != 0)
  {

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v55 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v55, qword_2813286A0);

    v45 = sub_2694847DC();
    v56 = sub_269484AEC();

    if (!os_log_type_enabled(v45, v56))
    {
      goto LABEL_102;
    }

LABEL_100:
    v57 = OUTLINED_FUNCTION_31();
    v58 = OUTLINED_FUNCTION_30();
    v78 = v58;
    *v57 = 136315138;
    v59 = OUTLINED_FUNCTION_14_0();
    *(v57 + 4) = sub_269463C18(v59, v60, v61);
    OUTLINED_FUNCTION_43();
    _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    OUTLINED_FUNCTION_22_0();
    goto LABEL_101;
  }

  v50 = v49;
  if (v7 == 2)
  {
LABEL_94:
    [v2 setMajor_];
    [v2 setMinor_];
    if (v7 == 4)
    {
      if (*(v6 + 16) < 4uLL)
      {
        goto LABEL_117;
      }

      v53 = *(v6 + 80);
      v54 = *(v6 + 88);

      sub_269476174(v53, v54, v2);
    }

    else
    {
    }
  }

  else
  {
    if (*(v6 + 16) < 3uLL)
    {
      goto LABEL_116;
    }

    v51 = *(v6 + 64);
    v4 = *(v6 + 72);

    v52 = sub_269472D04(v51, v4);
    if ((v52 & 0x100000000) == 0)
    {
      [v2 setPatch_];
      goto LABEL_94;
    }

    if (qword_281327EE0 != -1)
    {
      goto LABEL_118;
    }

LABEL_107:
    v68 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v68, qword_2813286A0);

    v45 = sub_2694847DC();
    sub_269484AEC();

    if (OUTLINED_FUNCTION_58())
    {
      OUTLINED_FUNCTION_31();
      v78 = OUTLINED_FUNCTION_24_0();
      *v4 = 136315138;
      v69 = *(v6 + 64);
      v70 = *(v6 + 72);

      v71 = sub_269463C18(v69, v70, &v78);

      *(v4 + 4) = v71;
      OUTLINED_FUNCTION_5_2();
      _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
      OUTLINED_FUNCTION_4_2();
LABEL_101:
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }

LABEL_102:

LABEL_103:
    return 0;
  }

  return v2;
}

unint64_t sub_269472D04(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v26 = 0;
    LOBYTE(v25) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v25;
    return v26 | ((v25 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_269475770(result, a2, 10);

    v25 = (v7 >> 32) & 1;
LABEL_63:
    v26 = v7;
    if (v25)
    {
      v26 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_269484C3C();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v7) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if ((v16 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v7) = v16 + v15;
              if (__CFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v21 + v20;
            if (__CFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v7) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if ((v10 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v10 - v9;
            if (v10 < v9)
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v25) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v27;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v24 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v24 + v23;
          if (__CFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v27 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if ((v13 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v13 - v12;
          if (v13 < v12)
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v27 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if ((v19 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v7) = v19 + v18;
        if (__CFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

void sub_269472FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v71 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v12);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_3();
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v4);
  if (!v18)
  {
    v69 = v10;
    v70 = v3;
    (*(v16 + 32))(v3, v4, v14);
    v25 = [objc_allocWithZone(MEMORY[0x277D5B0B0]) init];
    v10 = v6 + 64;
    OUTLINED_FUNCTION_8_2();
    v28 = v27 & v26;
    v30 = (v29 + 63) >> 6;

    v31 = 0;
    if (v28)
    {
      while (1)
      {
        v3 = v31;
LABEL_12:
        v32 = *(v6 + 56) + 40 * (__clz(__rbit64(v28)) | (v3 << 6));
        v33 = *(v32 + 16);
        if (v33)
        {
          break;
        }

        v28 &= v28 - 1;

        v31 = v3;
        if (!v28)
        {
          goto LABEL_9;
        }
      }

      v63 = *(v32 + 8);

      v64 = [objc_allocWithZone(MEMORY[0x277D5A798]) init];
      v65 = v64;
      if (v64)
      {
        v66 = v64;
        v67 = sub_269472590(v63, v33);

        [v66 setAssetVersion_];
      }

      else
      {
      }

      v3 = v70;
      v34 = v25;
      v68 = v25;
      [v68 setAsset_];

LABEL_16:
      OUTLINED_FUNCTION_19_0();
      while (v37)
      {
LABEL_21:
        OUTLINED_FUNCTION_33();
        if ((*(v39 + 28) & 1) == 0)
        {
          LODWORD(v40) = *(v39 + 24);
          [v34 setNeuralCombinerThreshold_];
LABEL_23:
          OUTLINED_FUNCTION_19_0();
          while (v43)
          {
LABEL_28:
            OUTLINED_FUNCTION_33();
            if ((*(v45 + 36) & 1) == 0)
            {
              LODWORD(v46) = *(v45 + 32);
              [v34 setSpeakerIdThreshold_];
LABEL_30:
              if (v34)
              {
                v47 = v34;
                if (sub_26947203C(v6))
                {
                  sub_269463554(0, &qword_281327DB0, 0x277D5B0C8);
                  v48 = sub_269484A3C();
                }

                else
                {
                  v48 = 0;
                }

                [v47 setResults_];
              }

              v49 = [objc_allocWithZone(MEMORY[0x277D5B0A8]) init];
              [v49 setEnded_];
              sub_269470B24(v71, v3);
              if (v50)
              {
                v51 = v50;
                [v50 setTtmNeuralCombinerRequestContext_];
                OUTLINED_FUNCTION_48();
                sub_269470690(v69, v8, v51);
              }

              else
              {
                if (qword_281327EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_0();
                  swift_once();
                }

                v52 = sub_2694847EC();
                OUTLINED_FUNCTION_13_1(v52, qword_2813286A0);
                v53 = sub_2694847DC();
                v54 = sub_269484AEC();
                if (OUTLINED_FUNCTION_20_0(v54))
                {
                  v55 = OUTLINED_FUNCTION_36();
                  OUTLINED_FUNCTION_38(v55);
                  OUTLINED_FUNCTION_5_2();
                  _os_log_impl(v56, v57, v58, v59, v60, 2u);
                  OUTLINED_FUNCTION_11_1();
                }

                else
                {
                }
              }

              v61 = OUTLINED_FUNCTION_34();
              v62(v61);
              goto LABEL_43;
            }
          }

          while (1)
          {
            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_50;
            }

            if (v44 >= v42)
            {
              goto LABEL_30;
            }

            ++v41;
            if (*(v10 + 8 * v44))
            {
              goto LABEL_28;
            }
          }
        }
      }

      while (1)
      {
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v38 >= v36)
        {
          goto LABEL_23;
        }

        ++v35;
        if (*(v10 + 8 * v38))
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_9:
      while (1)
      {
        v3 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v3 >= v30)
        {

          v34 = v25;
          v3 = v70;
          goto LABEL_16;
        }

        v28 = *(v10 + 8 * v3);
        ++v31;
        if (v28)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_2694645DC(v4, &qword_280317F98, &qword_269485F18);
  if (qword_281327EE0 != -1)
  {
LABEL_51:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v19 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v19, qword_2813286A0);

  v20 = sub_2694847DC();
  sub_269484AEC();
  OUTLINED_FUNCTION_44();
  if (OUTLINED_FUNCTION_40())
  {
    OUTLINED_FUNCTION_31();
    v21 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v21);
    OUTLINED_FUNCTION_27_0(4.8149e-34);
    *(v3 + 4) = sub_269463C18(v10, v8, v22);
    OUTLINED_FUNCTION_7_2(&dword_269461000, v23, v24, "error converting trpID %s to UUID");
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_12_1();
  }

LABEL_43:
  OUTLINED_FUNCTION_29_0();
}

void sub_269473558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_0();
  v81 = v3;
  v82 = v4;
  v80 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  v15 = OUTLINED_FUNCTION_17_0(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_2();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - v20;
  sub_26948434C();
  OUTLINED_FUNCTION_0_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_2();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v78 - v29;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v31);
  v33 = &v78 - v32;
  v83 = v13;
  v84 = v11;
  v35 = v34;
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v21);
  if (v47)
  {
    sub_2694645DC(v21, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v36 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v36, qword_2813286A0);
    v37 = v84;

    v38 = sub_2694847DC();
    sub_269484AEC();

    if (OUTLINED_FUNCTION_40())
    {
      v39 = OUTLINED_FUNCTION_31();
      v40 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_26_0(v40);
      *v39 = 136315138;
      *(v39 + 4) = sub_269463C18(v83, v37, &v85);
      OUTLINED_FUNCTION_18_0();
      _os_log_impl(v41, v42, v43, v44, v39, 0xCu);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v78 = v23;
    v45 = v33;
    v46 = *(v23 + 32);
    v79 = v45;
    v46();
    sub_2694842FC();
    OUTLINED_FUNCTION_3_2(v18);
    if (v47)
    {
      sub_2694645DC(v18, &qword_280317F98, &qword_269485F18);
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v48 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v48, qword_2813286A0);

      v49 = sub_2694847DC();
      sub_269484AEC();

      if (OUTLINED_FUNCTION_58())
      {
        OUTLINED_FUNCTION_31();
        v50 = OUTLINED_FUNCTION_24_0();
        v85 = v50;
        *v7 = 136315138;
        *(v7 + 4) = sub_269463C18(v9, v7, &v85);
        OUTLINED_FUNCTION_5_2();
        _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_11_1();
      }

      (*(v78 + 8))(v79, v35);
    }

    else
    {
      (v46)(v30, v18, v35);
      v56 = [objc_allocWithZone(MEMORY[0x277D5B0B8]) init];
      v57 = v56;
      v58 = v78;
      if (v56)
      {
        [v56 setReason_];
        sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
        v59 = OUTLINED_FUNCTION_50();
        v60(v59);
        v61 = v57;
        v62 = sub_269470FF4(v27);
        [v61 setTcuId_];
      }

      v63 = [objc_allocWithZone(MEMORY[0x277D5B0A8]) init];
      [v63 setFailed_];
      v64 = v79;
      sub_269470B24(v82, v79);
      if (v65)
      {
        v66 = v65;
        [v65 setTtmNeuralCombinerRequestContext_];
        __swift_project_boxed_opaque_existential_1((v81 + 16), *(v81 + 40));
        sub_269470690(v83, v84, v66);

        v67 = *(v58 + 8);
        v67(v30, v35);
        v67(v64, v35);
      }

      else
      {
        if (qword_281327EE0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v68 = sub_2694847EC();
        OUTLINED_FUNCTION_13_1(v68, qword_2813286A0);
        v69 = sub_2694847DC();
        v70 = sub_269484AEC();
        if (OUTLINED_FUNCTION_20_0(v70))
        {
          v71 = OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_38(v71);
          OUTLINED_FUNCTION_5_2();
          _os_log_impl(v72, v73, v74, v75, v76, 2u);
          OUTLINED_FUNCTION_11_1();
        }

        v77 = *(v58 + 8);
        v77(v30, v35);
        v77(v79, v35);
      }
    }
  }

  OUTLINED_FUNCTION_29_0();
}