void static Bootstrap.startApplication(supportedServices:)(uint64_t a1)
{
  sub_1DAED172C();
  sub_1DAED171C();
  qword_1EE00AD18 = a1;

  if (qword_1EE00AC58 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE011B70);
  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED200C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    sub_1DAECE1DC();
    sub_1DAECE1AC();
    v7 = sub_1DAECDFEC();
    v9 = v8;

    v10 = sub_1DAD6482C(v7, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Preferences: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E127F100](v6, -1, -1);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  v11 = sub_1DAED250C();
  v12 = MEMORY[0x1E127E170]();
  type metadata accessor for Application();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v14)
  {
    sub_1DAED1CEC();
    v14 = sub_1DAED1CBC();
  }

  type metadata accessor for AppDelegate(0);
  v15 = swift_getObjCClassFromMetadata();
  v16 = NSStringFromClass(v15);
  if (!v16)
  {
    sub_1DAED1CEC();
    delegateClassNamea = sub_1DAED1CBC();

    v16 = delegateClassNamea;
  }

  delegateClassName = v16;
  UIApplicationMain(v11, v12, v14, v16);
}

uint64_t sub_1DAD63C34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1DAECEDDC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t type metadata accessor for AppDelegate(uint64_t a1)
{
  result = qword_1EE00B440;
  if (!qword_1EE00B440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD63D94(uint64_t a1)
{
  result = sub_1DAED18CC();
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

char *sub_1DAD63EA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08890, &qword_1DAEDD970);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_lastDataProtectionValue;
  v8 = *MEMORY[0x1E69859A0];
  v9 = sub_1DAED18CC();
  (*(*(v9 - 8) + 104))(&v0[v7], v8, v9);
  *&v0[OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_dataProtectionMonitorSubscription] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_memoryWarningSimulationSubscription] = 0;
  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for AppDelegate(0);
  v23.receiver = v0;
  v23.super_class = v10;
  v11 = objc_msgSendSuper2(&v23, sel_init);
  sub_1DAECE1DC();
  v12 = v11;
  sub_1DAECE1AC();
  v13 = sub_1DAECE0FC();

  v22 = v13;
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v14 = sub_1DAED20EC();
  v21 = v14;
  v15 = sub_1DAED20AC();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08898, &qword_1DAED8240);
  sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240, MEMORY[0x1E695BED8]);
  sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
  sub_1DAECEFBC();
  sub_1DAD64398(v3, &unk_1ECC07D20, &unk_1DAED57D0);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1DAD64B94(&qword_1EE00AC30, &qword_1ECC08890, &qword_1DAEDD970, MEMORY[0x1E695BE98]);
  v16 = v20;
  v17 = sub_1DAECF00C();

  (*(v19 + 8))(v6, v16);
  *&v12[OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_memoryWarningSimulationSubscription] = v17;

  return v12;
}

uint64_t sub_1DAD6429C()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DAD642F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DAD64398(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1DAD643F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08688, &unk_1DAED6CC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1DAD6446C(uint64_t result)
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

  result = sub_1DADC5A30(result, v11, 1, v3);
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

void *sub_1DAD64558(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DAD643F8(v5, 0);
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

  result = sub_1DAED25BC();
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
        v10 = sub_1DAED1DEC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DAD643F8(v10, 0);
        result = sub_1DAED255C();
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

void *sub_1DAD64688(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DAD64558(a1, a2);
  sub_1DAD6446C(&unk_1F56AF960);
  return v3;
}

unint64_t sub_1DAD646D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DAD64688(a5, a6);
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
    result = sub_1DAED25BC();
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

unint64_t sub_1DAD6482C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DAD646D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1DAD642F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_1DAD648F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DAD6495C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAD649C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAD64B94(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1DAD64BE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1DAD64C18()
{
  type metadata accessor for ServiceFacade();
  memset(v1, 0, sizeof(v1));
  v2 = 0;
  swift_allocObject();
  result = sub_1DAD64C94(0, v1);
  qword_1EE011BD8 = result;
  return result;
}

void *sub_1DAD64C94(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DAECE23C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + 16) = 0u;
  v10 = v2 + 16;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  sub_1DAD650B0();
  *(v2 + 200) = a1;
  _s14WidgetRenderer12ViewDecodersC018registerArchivablecD0yyFZ_0();
  v11 = sub_1DAECE30C();
  *(v2 + 184) = sub_1DAECE2FC();
  if (a1)
  {
    v12 = sub_1DAECE39C();
    (*(v7 + 104))(v9, *MEMORY[0x1E6994098], v6);
    v13 = sub_1DAECE38C();
    v14 = MEMORY[0x1E6994170];
    v3[21] = v12;
    v3[22] = v14;
    v3[18] = v13;
  }

  else
  {
    sub_1DAECE3BC();
    sub_1DAECE3AC();
    sub_1DAD657D8(&v37, v2 + 144);
  }

  sub_1DAED114C();
  sub_1DAD648F8((v3 + 18), &v37);
  sub_1DAED113C();
  v15 = [objc_opt_self() mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;

  v20 = v3[23];
  v38 = v11;
  v39 = MEMORY[0x1E6994130];
  *&v37 = v20;
  type metadata accessor for WidgetSceneForegroundContentLimiter();
  swift_allocObject();
  v21 = v20;
  v3[24] = sub_1DAD65D20(3, &v37, v17, v19);
  v22 = type metadata accessor for DataProtectionSuspensionMonitor();
  v23 = objc_allocWithZone(v22);

  v25 = sub_1DAD66228(v24);
  v3[16] = v22;
  v3[17] = sub_1DAD88900(qword_1EE00ADE8, type metadata accessor for DataProtectionSuspensionMonitor, &unk_1DAEDB900);
  v3[13] = v25;
  sub_1DAED140C();
  v3[12] = sub_1DAED13FC();
  v26 = qword_1EE00AD18;
  if (sub_1DAD6749C(0, qword_1EE00AD18))
  {
    sub_1DAD85DAC(a2, &v37);
    v27 = type metadata accessor for WidgetServices();
    v28 = swift_allocObject();

    sub_1DAD85E40(v29, &v37);
    v38 = v27;
    v39 = &off_1F56B0650;
    *&v37 = v28;
    swift_beginAccess();
    sub_1DAD94438(&v37, v10, &qword_1ECC08380, &unk_1DAED6590);
    swift_endAccess();
  }

  else
  {
  }

  v30 = sub_1DAD6749C(1, v26);

  if (v30)
  {
    v31 = type metadata accessor for ActivityServices();
    swift_allocObject();

    sub_1DADDE1D8(v32);
    v34 = v33;

    v38 = v31;
    v39 = &off_1F56B0628;

    *&v37 = v34;
    sub_1DAD64398(a2, &qword_1ECC08138, &qword_1DAED6448);
    swift_beginAccess();
    sub_1DAD94438(&v37, v10 + 40, &unk_1ECC0A170, &qword_1DAED6440);
    swift_endAccess();
  }

  else
  {
    sub_1DAD64398(a2, &qword_1ECC08138, &qword_1DAED6448);
  }

  return v3;
}

void sub_1DAD650B0()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v0 = sub_1DAED20DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAED208C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DAED0A3C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v6 = sub_1DAECE0CC();

  if (v6)
  {
    v7 = sub_1DAD84C40();
    v31[1] = "tyArchiveServiceStore-";
    v31[2] = v7;
    sub_1DAED0A1C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DAD88900(&qword_1EE00AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
    sub_1DAD64B94(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480, MEMORY[0x1E69E6328]);
    sub_1DAED23CC();
    (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v0);
    v8 = sub_1DAED210C();
    v9 = qword_1ECC08128;
    qword_1ECC08128 = v8;
    v10 = v8;

    out_token = -1;
    v11 = swift_allocObject();
    *(v11 + 16) = 60;
    v12 = (v11 + 16);
    v13 = swift_allocObject();
    v13[2] = 0xD000000000000025;
    v13[3] = 0x80000001DAEE0AE0;
    v13[4] = v11;
    aBlock[4] = sub_1DADDE6D8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DADDD0EC;
    aBlock[3] = &block_descriptor_54;
    v14 = _Block_copy(aBlock);

    LODWORD(v15) = notify_register_dispatch("com.apple.chrono.widgetrenderer.start", &out_token, v10, v14);
    _Block_release(v14);

    if (v15)
    {
      if (qword_1EE00AC58 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (qword_1EE00AC58 != -1)
      {
        swift_once();
      }

      v22 = sub_1DAECEDEC();
      __swift_project_value_buffer(v22, qword_1EE011B70);
      v15 = sub_1DAECEDCC();
      v23 = sub_1DAED203C();
      if (os_log_type_enabled(v15, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_1DAD6482C(0xD000000000000025, 0x80000001DAEE0AE0, aBlock);
        _os_log_impl(&dword_1DAD61000, v15, v23, "%{public}s: Waiting", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x1E127F100](v25, -1, -1);
        MEMORY[0x1E127F100](v24, -1, -1);
      }

      swift_beginAccess();
      if (*v12 < 1)
      {
LABEL_13:
        notify_cancel(out_token);
        v17 = sub_1DAECEDCC();
        v27 = sub_1DAED203C();
        if (os_log_type_enabled(v17, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v33 = v29;
          *v28 = 136446210;
          *(v28 + 4) = sub_1DAD6482C(0xD000000000000025, 0x80000001DAEE0AE0, &v33);
          _os_log_impl(&dword_1DAD61000, v17, v27, "%{public}s: Done waiting; startup continues", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          MEMORY[0x1E127F100](v29, -1, -1);
          v21 = v28;
          goto LABEL_15;
        }

LABEL_16:

        v30 = qword_1ECC08128;
        qword_1ECC08128 = 0;

        return;
      }

      while (1)
      {
        sleep(1u);
        v26 = *v12 - 1;
        if (__OFSUB__(*v12, 1))
        {
          break;
        }

        *v12 = v26;
        if (v26 <= 0)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_once();
LABEL_4:
    v16 = sub_1DAECEDEC();
    __swift_project_value_buffer(v16, qword_1EE011B70);
    v17 = sub_1DAECEDCC();
    v18 = sub_1DAED201C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_1DAD6482C(0xD000000000000025, 0x80000001DAEE0AE0, aBlock);
      *(v19 + 12) = 1026;
      *(v19 + 14) = v15;
      _os_log_impl(&dword_1DAD61000, v17, v18, "%{public}s: %{public}u", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E127F100](v20, -1, -1);
      v21 = v19;
LABEL_15:
      MEMORY[0x1E127F100](v21, -1, -1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }
}

uint64_t sub_1DAD65798()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD657D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1DAD65818(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t _s14WidgetRenderer12ViewDecodersC018registerArchivablecD0yyFZ_0()
{
  if (qword_1EE00AC48 != -1)
  {
    swift_once();
  }

  v0 = sub_1DAECEDEC();
  __swift_project_value_buffer(v0, qword_1EE011B40);
  v1 = sub_1DAECEDCC();
  v2 = sub_1DAED203C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DAD61000, v1, v2, "Registering custom view decoders...", v3, 2u);
    MEMORY[0x1E127F100](v3, -1, -1);
  }

  sub_1DAED159C();
  sub_1DAD65CB4(&unk_1EE00AB10, MEMORY[0x1E6985738], MEMORY[0x1E6985730]);
  sub_1DAECFC8C();
  sub_1DAED168C();
  sub_1DAD65CB4(&qword_1EE00AB08, MEMORY[0x1E69857B8], MEMORY[0x1E69857B0]);
  sub_1DAECFC8C();
  sub_1DAED1A6C();
  sub_1DAD65CB4(&qword_1EE00AAC0, MEMORY[0x1E6985AA0], MEMORY[0x1E6985A98]);
  sub_1DAECFC8C();
  sub_1DAED1B3C();
  sub_1DAD65CB4(&qword_1EE00AAB0, MEMORY[0x1E6985AF8], MEMORY[0x1E6985AF0]);
  sub_1DAECFC8C();
  sub_1DAED147C();
  sub_1DAD65CB4(&qword_1EE00AB30, MEMORY[0x1E69856B0], MEMORY[0x1E69856A8]);
  sub_1DAECF2BC();
  sub_1DAED16BC();
  sub_1DAD65CB4(&qword_1EE00AB00, MEMORY[0x1E69857D0], MEMORY[0x1E69857C8]);
  sub_1DAECFC8C();
  sub_1DAED193C();
  sub_1DAD65CB4(&qword_1EE00AAC8, MEMORY[0x1E6985A50], MEMORY[0x1E6985A48]);
  sub_1DAECF2BC();
  sub_1DAECE41C();
  sub_1DAECE6DC();
  sub_1DAED146C();
  sub_1DAED145C();
  sub_1DAECECDC();
  return sub_1DAECECCC();
}

uint64_t sub_1DAD65B78()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE011B40);
  __swift_project_value_buffer(v0, qword_1EE011B40);
  if (qword_1EE00A830 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE011B28;
  return sub_1DAECEDFC();
}

uint64_t sub_1DAD65C04()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011B28 = result;
  return result;
}

unint64_t sub_1DAD65C68()
{
  result = qword_1EE00A820;
  if (!qword_1EE00A820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE00A820);
  }

  return result;
}

uint64_t sub_1DAD65CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD65D20(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  *(v5 + 16) = MEMORY[0x1E69E7CD0];
  *(v5 + 24) = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v10 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v11 = MEMORY[0x1E69E7CC8];
  *(v5 + 32) = v10;
  *(v5 + 40) = v11;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 48) = sub_1DAD65FA4(a1, a3, a4);
  if (qword_1ECC07A10 != -1)
  {
    swift_once();
  }

  v12 = 72;
  if (byte_1ECC08A90)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v5 + 56) = v12;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *(v5 + 64);
  v15 = *(v5 + 72);
  *(v5 + 64) = sub_1DAE022E8;
  *(v5 + 72) = v13;

  sub_1DAD660D8(v14, v15);

  sub_1DAD660E8(a2, v19);
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v18[3] = type metadata accessor for WidgetSceneForegroundContentLimiter();
    v18[4] = sub_1DAD66158(&qword_1EE00B7E8, v16, type metadata accessor for WidgetSceneForegroundContentLimiter, &unk_1DAED7524);
    v18[0] = v5;

    sub_1DAECE34C();
    sub_1DAD64398(a2, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_1DAD64398(a2, &qword_1ECC0A9E0, &qword_1DAED7570);
    sub_1DAD64398(v19, &qword_1ECC0A9E0, &qword_1DAED7570);
  }

  return v5;
}

uint64_t sub_1DAD65F6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_1DAD65FA4(uint64_t a1, double a2, double a3)
{
  v4 = a2 * a3;
  v5 = a1;
  if (qword_1EE00AC50 != -1)
  {
    swift_once();
  }

  v6 = v4 * v5;
  v7 = sub_1DAECEDEC();
  __swift_project_value_buffer(v7, qword_1EE011B58);
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED203C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349568;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2050;
    *(v10 + 14) = v6;
    *(v10 + 22) = 2050;
    *(v10 + 24) = v4;
    _os_log_impl(&dword_1DAD61000, v8, v9, "Max content area for effective unit count [%{public}ld]: %{public}f [for reference 1 unit area is: %{public}f]", v10, 0x20u);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  return v6;
}

uint64_t sub_1DAD660D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DAD660E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9E0, &qword_1DAED7570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD66158(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1DAD66228(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAED18CC();
  v5 = MEMORY[0x1EEE9AC00](v4);
  *&v1[OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor____lazy_storage___maxUnlockedProtectionLevelPublisher] = 0;
  v7 = OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor__maxUnlockedProtectionLevelPublisher;
  (*(v8 + 104))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69859A0], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09BC8, &qword_1DAEDB940);
  swift_allocObject();
  *&v1[v7] = sub_1DAECEEAC();
  v1[OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_lock_isSuspended] = 0;
  v9 = OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09BD0, &qword_1DAEDB948);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v2[v9] = v10;
  *&v2[OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_subscriptions] = MEMORY[0x1E69E7CD0];
  v11 = &v2[OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_innerProtectionMonitor];
  v12 = sub_1DAED114C();
  v13 = MEMORY[0x1E6993EA8];
  *(v11 + 3) = v12;
  *(v11 + 4) = v13;
  *v11 = a1;
  v14 = type metadata accessor for DataProtectionSuspensionMonitor();
  v21.receiver = v2;
  v21.super_class = v14;

  v15 = objc_msgSendSuper2(&v21, sel_init);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 defaultCenter];
  [v18 addObserver:v17 selector:sel_applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

  v19 = [v16 defaultCenter];
  [v19 addObserver:v17 selector:sel_applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  sub_1DAD66494();

  return v17;
}

uint64_t sub_1DAD66494()
{
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_innerProtectionMonitor, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DAED126C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08870, &qword_1DAED6488);
  sub_1DAD64B94(&qword_1EE00AC08, &unk_1ECC08870, &qword_1DAED6488, MEMORY[0x1E695BED8]);
  sub_1DAECF00C();

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();
}

uint64_t sub_1DAD665EC()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

void sub_1DAD6662C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1DAD66680();
  }
}

uint64_t sub_1DAD66680()
{
  v1 = v0;
  v2 = sub_1DAED18CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_innerProtectionMonitor, v28);
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1DAED127C();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v27 = v11;
  sub_1DAD669E8(v11, v8);
  if (qword_1EE00AC70 != -1)
  {
    swift_once();
  }

  v12 = sub_1DAECEDEC();
  __swift_project_value_buffer(v12, qword_1EE011BA0);
  (*(v3 + 16))(v5, v8, v2);
  v13 = sub_1DAECEDCC();
  v14 = sub_1DAED203C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    v28[0] = v26[0];
    *v15 = 136446210;
    sub_1DAD66C74(&unk_1EE00AAD0, MEMORY[0x1E69859D8]);
    v16 = sub_1DAED287C();
    v26[1] = v1;
    v17 = v2;
    v19 = v18;
    v20 = v5;
    v21 = *(v3 + 8);
    v21(v20, v17);
    v22 = sub_1DAD6482C(v16, v19, v28);
    v2 = v17;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_1DAD61000, v13, v14, "Data protection level resolved to %{public}s", v15, 0xCu);
    v23 = v26[0];
    __swift_destroy_boxed_opaque_existential_1Tm(v26[0]);
    MEMORY[0x1E127F100](v23, -1, -1);
    MEMORY[0x1E127F100](v15, -1, -1);
  }

  else
  {

    v24 = v5;
    v21 = *(v3 + 8);
    v21(v24, v2);
  }

  sub_1DAECEE8C();
  v21(v8, v2);
  return (v21)(v27, v2);
}

uint64_t sub_1DAD669E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAED18CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_lock);
  v17 = v2;
  v14 = sub_1DAD66CB8;
  v15 = &v16;

  os_unfair_lock_lock(v9 + 4);
  sub_1DAD66BE8(v19);
  os_unfair_lock_unlock(v9 + 4);
  v10 = v19[0];

  v11 = *(v6 + 104);
  v11(v8, *MEMORY[0x1E69859A0], v5);
  sub_1DAD66C74(&qword_1EE00AAE0, MEMORY[0x1E69859C8]);
  sub_1DAED1E4C();
  sub_1DAED1E4C();
  (*(v6 + 8))(v8, v5);
  if (*v19 == v18 || !v10)
  {
    return (*(v6 + 16))(a2, a1, v5);
  }

  else
  {
    return v11(a2, *MEMORY[0x1E6985998], v5);
  }
}

void *sub_1DAD66BE8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1DAD66C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD66C74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAED18CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1DAD66CF4(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_1DAD66DBC(void *a1)
{
  BSDispatchQueueAssertMain();
  v2 = [a1 role];
  v3 = sub_1DAD66F04(v2);

  v4 = [a1 role];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCE88]) initWithName:0 sessionRole:v4];

  if (v3)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  [v5 setDelegateClass_];
  return v5;
}

uint64_t sub_1DAD66F04(uint64_t a1)
{
  v1 = sub_1DAED216C();
  v2 = sub_1DAED1CEC();
  v4 = v3;
  if (v2 == sub_1DAED1CEC() && v4 == v5)
  {

LABEL_5:
    v7 = type metadata accessor for ListItemSceneDelegate(0);
    goto LABEL_6;
  }

  v6 = sub_1DAED289C();

  if (v6)
  {
    goto LABEL_5;
  }

  v10 = sub_1DAED213C();
  v11 = sub_1DAED1CEC();
  v13 = v12;
  if (v11 == sub_1DAED1CEC() && v13 == v14)
  {

LABEL_13:
    v7 = type metadata accessor for ActivityBannerSceneDelegate(0);
    goto LABEL_6;
  }

  v15 = sub_1DAED289C();

  if (v15)
  {
    goto LABEL_13;
  }

  v16 = sub_1DAED214C();
  v17 = sub_1DAED1CEC();
  v19 = v18;
  if (v17 == sub_1DAED1CEC() && v19 == v20)
  {

LABEL_18:
    v7 = type metadata accessor for AmbientSceneDelegate(0);
    goto LABEL_6;
  }

  v21 = sub_1DAED289C();

  if (v21)
  {
    goto LABEL_18;
  }

  v22 = sub_1DAED217C();
  v23 = sub_1DAED1CEC();
  v25 = v24;
  if (v23 == sub_1DAED1CEC() && v25 == v26)
  {

LABEL_23:
    v7 = type metadata accessor for AmbientCompactSceneDelegate(0);
    goto LABEL_6;
  }

  v27 = sub_1DAED289C();

  if (v27)
  {
    goto LABEL_23;
  }

  v28 = sub_1DAED218C();
  v29 = sub_1DAED1CEC();
  v31 = v30;
  if (v29 == sub_1DAED1CEC() && v31 == v32)
  {

LABEL_28:
    v7 = type metadata accessor for JindoActivitySceneDelegate(0);
    goto LABEL_6;
  }

  v33 = sub_1DAED289C();

  if (v33)
  {
    goto LABEL_28;
  }

  v34 = sub_1DAED215C();
  v35 = sub_1DAED1CEC();
  v37 = v36;
  if (v35 == sub_1DAED1CEC() && v37 == v38)
  {
  }

  else
  {
    v39 = sub_1DAED289C();

    if ((v39 & 1) == 0)
    {
      v40 = sub_1DAED1CEC();
      v42 = v41;
      if (v40 == sub_1DAED1CEC() && v42 == v43)
      {
      }

      else
      {
        v44 = sub_1DAED289C();

        if ((v44 & 1) == 0)
        {
          return 0;
        }
      }

      v8 = type metadata accessor for WidgetSceneDelegate();
      if (sub_1DAD6749C(0, qword_1EE00AD18))
      {
        return v8;
      }

      return 0;
    }
  }

  v7 = type metadata accessor for CarPlayActivitySceneDelegate(0);
LABEL_6:
  v8 = v7;
  if (!sub_1DAD6749C(1, qword_1EE00AD18))
  {
    return 0;
  }

  return v8;
}

id sub_1DAD67340()
{
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter] = 0;
  v1 = &v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_layerSnapshotter] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration] = 0;
  v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_invalidateAfterSnapshot] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector] = 0;
  v2 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneDiffActionKey;
  sub_1DAD674D4(0, &qword_1EE005468, 0x1E696AEC0);
  *&v0[v2] = sub_1DAED22AC();
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_confirmationActionSubscribers] = MEMORY[0x1E69E7CD0];
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_controlSubscription] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_configurationChangedSubscription] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_originalBackgroundColor] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WidgetSceneDelegate();
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL sub_1DAD6749C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_1DAD674D4(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1DAD675AC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v192 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v192 - v9;
  BSDispatchQueueAssertMain();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    v14 = [v12 nullableWidget];
    if (v14)
    {
      v193 = v8;
      v194 = v7;

      v15 = qword_1EE005478;
      v16 = v13;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = qword_1EE005480;
      [v17 setObject:v2 forKey:v12];

      v18 = objc_allocWithZone(type metadata accessor for _UserInterfaceStyleSceneComponentProvider(0));
      v192 = v16;
      v19 = sub_1DAD696BC(v192);
      if (qword_1EE005F98 != -1)
      {
        swift_once();
      }

      [v12 _registerSceneComponent:v19 forKey:qword_1EE011820];
      v199 = v19;
      sub_1DAD690DC();
      v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
      v20 = swift_allocObject();
      v196 = xmmword_1DAED64D0;
      *(v20 + 16) = xmmword_1DAED64D0;
      *(v20 + 32) = v2;
      v21 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E8, qword_1DAED6798);
      v22 = sub_1DAED1E6C();

      if (qword_1EE008AE0 != -1)
      {
        swift_once();
      }

      [v12 _registerSceneActionsHandlerArray:v22 forKey:qword_1EE0119D0];

      v23 = [objc_allocWithZone(type metadata accessor for WidgetWindow()) initWithWindowScene_];
      v24 = *&v21[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window];
      *&v21[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window] = v23;
      v25 = v23;

      v26 = objc_opt_self();
      v27 = v25;
      v28 = [v26 systemBackgroundColor];
      [v27 setBackgroundColor_];

      v198 = v27;
      [v27 makeKeyAndVisible];
      if (qword_1EE00B438 != -1)
      {
        swift_once();
      }

      v195 = v21;
      v200 = v12;
      v29 = qword_1EE011BD8;
      swift_beginAccess();
      sub_1DAD6495C(v29 + 16, &aBlock, &qword_1ECC08380, &unk_1DAED6590);
      if (v204)
      {
        v30 = __swift_project_boxed_opaque_existential_1(&aBlock, v204);
        sub_1DAD648F8(*v30 + 64, v209);
        __swift_project_boxed_opaque_existential_1(v209, v209[3]);
        v208 = sub_1DAED11CC();
        sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
        v31 = sub_1DAED20EC();
        v207 = v31;
        v32 = sub_1DAED20AC();
        (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
        sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
        sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
        sub_1DAECEFBC();
        sub_1DAD64398(v6, &unk_1ECC07D20, &unk_1DAED57D0);

        __swift_destroy_boxed_opaque_existential_1Tm(v209);
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        v33 = swift_allocObject();
        v34 = v195;
        swift_unknownObjectWeakInit();
        v35 = swift_allocObject();
        v36 = v200;
        *(v35 + 16) = v33;
        *(v35 + 24) = v36;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_1DADE6494;
        *(v37 + 24) = v35;
        sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0, MEMORY[0x1E695BE98]);
        v38 = v192;
        v39 = v194;
        v40 = sub_1DAECF00C();

        (*(v193 + 8))(v10, v39);
        *&v34[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_configurationChangedSubscription] = v40;

        *&v34[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter] = *(qword_1EE011BD8 + 192);

        v41 = [objc_allocWithZone(MEMORY[0x1E6994560]) init];
        v42 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector;
        v43 = *&v34[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector];
        *&v34[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector] = v41;
        v44 = v41;

        if (v44)
        {
          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v46 = swift_allocObject();
          *(v46 + 16) = v45;
          *(v46 + 24) = v36;
          v205 = sub_1DADE649C;
          v206 = v46;
          aBlock = MEMORY[0x1E69E9820];
          v202 = 1107296256;
          v203 = sub_1DAD6EA40;
          v204 = &block_descriptor_185;
          v47 = _Block_copy(&aBlock);
          v48 = v38;

          [v44 observeCanAppearInSecureEnvironmentWithBlock_];
          _Block_release(v47);
        }

        v49 = *&v34[v42];
        if (v49)
        {
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v51 = swift_allocObject();
          *(v51 + 16) = v50;
          *(v51 + 24) = v36;
          v205 = sub_1DADE64E4;
          v206 = v51;
          aBlock = MEMORY[0x1E69E9820];
          v202 = 1107296256;
          v203 = sub_1DAD6EA40;
          v204 = &block_descriptor_192;
          v52 = _Block_copy(&aBlock);
          v53 = v38;
          v54 = v49;

          [v54 observeColorSchemeWithBlock_];
          _Block_release(v52);
        }

        v55 = [v36 _alwaysOnEnvironment];
        if (v55)
        {
          v56 = v55;
          [v55 setShouldDeferWakeAnimationStart_];
        }

        v57 = [v36 _backlightSceneEnvironment];
        v58 = v57;
        if (v57)
        {
          [v57 setSupportsAlwaysOn_];
          sub_1DAD674D4(0, &unk_1EE00AA00, 0x1E698E528);
          if ([v58 isKindOfClass_])
          {
            objc_opt_self();
            v59 = swift_dynamicCastObjCClass();
            if (v59)
            {
              [v59 setOptsOutOfProcessAssertions_];
            }
          }
        }

        v194 = v58;
        v60 = *&v34[v42];
        if (v60)
        {
          v61 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v62 = swift_allocObject();
          v63 = v200;
          *(v62 + 16) = v61;
          *(v62 + 24) = v63;
          v205 = sub_1DADE64EC;
          v206 = v62;
          aBlock = MEMORY[0x1E69E9820];
          v202 = 1107296256;
          v203 = sub_1DAD6EA40;
          v204 = &block_descriptor_199;
          v64 = _Block_copy(&aBlock);
          v65 = v38;
          v66 = v60;

          [v66 observeSupportsLowLuminanceWithBlock_];
          _Block_release(v64);

          v67 = *&v34[v42];
          if (v67)
          {
            v68 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v69 = swift_allocObject();
            v70 = v200;
            *(v69 + 16) = v68;
            *(v69 + 24) = v70;
            v205 = sub_1DADE6534;
            v206 = v69;
            aBlock = MEMORY[0x1E69E9820];
            v202 = 1107296256;
            v203 = sub_1DAD6EA40;
            v204 = &block_descriptor_206;
            v71 = _Block_copy(&aBlock);
            v72 = v65;
            v73 = v67;

            [v73 observeTintingParametersWithBlock_];
            _Block_release(v71);

            v74 = *&v34[v42];
            if (v74)
            {
              v75 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v76 = swift_allocObject();
              v77 = v200;
              *(v76 + 16) = v75;
              *(v76 + 24) = v77;
              v205 = sub_1DADE653C;
              v206 = v76;
              aBlock = MEMORY[0x1E69E9820];
              v202 = 1107296256;
              v203 = sub_1DAD6EA40;
              v204 = &block_descriptor_213;
              v78 = _Block_copy(&aBlock);
              v79 = v72;
              v80 = v74;

              [v80 observeShowsWidgetLabelWithBlock_];
              _Block_release(v78);

              v81 = *&v34[v42];
              if (v81)
              {
                v82 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v83 = swift_allocObject();
                v84 = v200;
                *(v83 + 16) = v82;
                *(v83 + 24) = v84;
                v205 = sub_1DAD6EE0C;
                v206 = v83;
                aBlock = MEMORY[0x1E69E9820];
                v202 = 1107296256;
                v203 = sub_1DAD6EA40;
                v204 = &block_descriptor_220;
                v85 = _Block_copy(&aBlock);
                v86 = v79;
                v87 = v81;

                [v87 observeVisibilityWithBlock_];
                _Block_release(v85);

                v88 = *&v34[v42];
                if (v88)
                {
                  v89 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v90 = swift_allocObject();
                  v91 = v200;
                  *(v90 + 16) = v89;
                  *(v90 + 24) = v91;
                  v205 = sub_1DADE6584;
                  v206 = v90;
                  aBlock = MEMORY[0x1E69E9820];
                  v202 = 1107296256;
                  v203 = sub_1DAD6EA40;
                  v204 = &block_descriptor_227;
                  v92 = _Block_copy(&aBlock);
                  v93 = v86;
                  v94 = v88;

                  [v94 observeWidgetPriorityWithBlock_];
                  _Block_release(v92);

                  v95 = *&v34[v42];
                  if (v95)
                  {
                    v96 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v97 = swift_allocObject();
                    v98 = v200;
                    *(v97 + 16) = v96;
                    *(v97 + 24) = v98;
                    v205 = sub_1DADE658C;
                    v206 = v97;
                    aBlock = MEMORY[0x1E69E9820];
                    v202 = 1107296256;
                    v203 = sub_1DAD6EA40;
                    v204 = &block_descriptor_234;
                    v99 = _Block_copy(&aBlock);
                    v100 = v93;
                    v101 = v95;

                    [v101 observeInteractionDisabledWithBlock_];
                    _Block_release(v99);

                    v102 = *&v34[v42];
                    if (v102)
                    {
                      v103 = swift_allocObject();
                      swift_unknownObjectWeakInit();
                      v104 = swift_allocObject();
                      v105 = v200;
                      *(v104 + 16) = v103;
                      *(v104 + 24) = v105;
                      v205 = sub_1DADE6594;
                      v206 = v104;
                      aBlock = MEMORY[0x1E69E9820];
                      v202 = 1107296256;
                      v203 = sub_1DAD6EA40;
                      v204 = &block_descriptor_241;
                      v106 = _Block_copy(&aBlock);
                      v107 = v100;
                      v108 = v102;

                      [v108 observeRenderSchemeWithBlock_];
                      _Block_release(v106);

                      v109 = *&v34[v42];
                      if (v109)
                      {
                        v110 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v111 = swift_allocObject();
                        v112 = v200;
                        *(v111 + 16) = v110;
                        *(v111 + 24) = v112;
                        v205 = sub_1DADE659C;
                        v206 = v111;
                        aBlock = MEMORY[0x1E69E9820];
                        v202 = 1107296256;
                        v203 = sub_1DAD6EA40;
                        v204 = &block_descriptor_248;
                        v113 = _Block_copy(&aBlock);
                        v114 = v107;
                        v115 = v109;

                        [v115 observeSupportedColorSchemesWithBlock_];
                        _Block_release(v113);

                        v116 = *&v34[v42];
                        if (v116)
                        {
                          v117 = swift_allocObject();
                          swift_unknownObjectWeakInit();
                          v118 = swift_allocObject();
                          v119 = v200;
                          *(v118 + 16) = v117;
                          *(v118 + 24) = v119;
                          v205 = sub_1DADE65A4;
                          v206 = v118;
                          aBlock = MEMORY[0x1E69E9820];
                          v202 = 1107296256;
                          v203 = sub_1DAD6EA40;
                          v204 = &block_descriptor_255;
                          v120 = _Block_copy(&aBlock);
                          v121 = v114;
                          v122 = v116;

                          [v122 observeSupportedRenderSchemesWithBlock_];
                          _Block_release(v120);

                          v123 = *&v34[v42];
                          if (v123)
                          {
                            v124 = swift_allocObject();
                            swift_unknownObjectWeakInit();
                            v125 = swift_allocObject();
                            v126 = v200;
                            *(v125 + 16) = v124;
                            *(v125 + 24) = v126;
                            v205 = sub_1DADE65AC;
                            v206 = v125;
                            aBlock = MEMORY[0x1E69E9820];
                            v202 = 1107296256;
                            v203 = sub_1DAD6EA40;
                            v204 = &block_descriptor_262;
                            v127 = _Block_copy(&aBlock);
                            v128 = v121;
                            v129 = v123;

                            [v129 observeClipBehaviorWithBlock_];
                            _Block_release(v127);

                            v130 = *&v34[v42];
                            if (v130)
                            {
                              v131 = swift_allocObject();
                              swift_unknownObjectWeakInit();
                              v132 = swift_allocObject();
                              v132[2] = v131;
                              v132[3] = v128;
                              v132[4] = v200;
                              v205 = sub_1DADE65B4;
                              v206 = v132;
                              aBlock = MEMORY[0x1E69E9820];
                              v202 = 1107296256;
                              v203 = sub_1DAE093BC;
                              v204 = &block_descriptor_269;
                              v133 = _Block_copy(&aBlock);
                              v134 = v128;
                              v135 = v130;

                              [v135 observeDisplayConfigurationWithBlock_];
                              _Block_release(v133);

                              v136 = *&v34[v42];
                              if (v136)
                              {
                                v137 = swift_allocObject();
                                swift_unknownObjectWeakInit();
                                v138 = swift_allocObject();
                                v139 = v200;
                                *(v138 + 16) = v137;
                                *(v138 + 24) = v139;
                                v205 = sub_1DADE65C0;
                                v206 = v138;
                                aBlock = MEMORY[0x1E69E9820];
                                v202 = 1107296256;
                                v203 = sub_1DAD6EA40;
                                v204 = &block_descriptor_276;
                                v140 = _Block_copy(&aBlock);
                                v141 = v134;
                                v142 = v136;

                                [v142 observeProximityWithBlock_];
                                _Block_release(v140);

                                v143 = *&v34[v42];
                                if (v143)
                                {
                                  v144 = swift_allocObject();
                                  swift_unknownObjectWeakInit();
                                  v145 = swift_allocObject();
                                  v146 = v200;
                                  *(v145 + 16) = v144;
                                  *(v145 + 24) = v146;
                                  v205 = sub_1DADE65C8;
                                  v206 = v145;
                                  aBlock = MEMORY[0x1E69E9820];
                                  v202 = 1107296256;
                                  v203 = sub_1DAD6EA40;
                                  v204 = &block_descriptor_283;
                                  v147 = _Block_copy(&aBlock);
                                  v148 = v141;
                                  v149 = v143;

                                  [v149 observeSupportedProximitiesWithBlock_];
                                  _Block_release(v147);

                                  v150 = *&v34[v42];
                                  if (v150)
                                  {
                                    v151 = swift_allocObject();
                                    swift_unknownObjectWeakInit();
                                    v152 = swift_allocObject();
                                    v153 = v200;
                                    *(v152 + 16) = v151;
                                    *(v152 + 24) = v153;
                                    v205 = sub_1DADE65D0;
                                    v206 = v152;
                                    aBlock = MEMORY[0x1E69E9820];
                                    v202 = 1107296256;
                                    v203 = sub_1DAD6EA40;
                                    v204 = &block_descriptor_290;
                                    v154 = _Block_copy(&aBlock);
                                    v155 = v148;
                                    v156 = v150;

                                    [v156 observeSeparateLayersWithBlock_];
                                    _Block_release(v154);

                                    v157 = *&v34[v42];
                                    if (v157)
                                    {
                                      v158 = swift_allocObject();
                                      swift_unknownObjectWeakInit();
                                      v159 = swift_allocObject();
                                      v160 = v200;
                                      *(v159 + 16) = v158;
                                      *(v159 + 24) = v160;
                                      v205 = sub_1DADE6618;
                                      v206 = v159;
                                      aBlock = MEMORY[0x1E69E9820];
                                      v202 = 1107296256;
                                      v203 = sub_1DAD6EA40;
                                      v204 = &block_descriptor_297;
                                      v161 = _Block_copy(&aBlock);
                                      v162 = v155;
                                      v163 = v157;

                                      [v163 observeIdealizedDateComponentsWithBlock_];
                                      _Block_release(v161);
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
            }
          }
        }

        v164 = swift_allocObject();
        *(v164 + 16) = v196;
        *(v164 + 32) = v34;
        v165 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09AE0, &unk_1DAED67B0);
        v166 = sub_1DAED1E6C();

        [v38 _registerSettingsDiffActionArray_forKey_];

        if (qword_1EE005E48 != -1)
        {
          swift_once();
        }

        v167 = sub_1DAECEDEC();
        __swift_project_value_buffer(v167, qword_1EE011748);
        v168 = v38;
        v169 = v165;
        v170 = sub_1DAECEDCC();
        v171 = sub_1DAED203C();

        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          aBlock = v173;
          *v172 = 136446210;
          v174 = *&v169[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
          if (v174)
          {
            v175 = (v174 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
            v177 = *v175;
            v176 = v175[1];
          }

          else
          {
            v177 = sub_1DAD8CE78(v200);
            v176 = v190;
          }

          v191 = sub_1DAD6482C(v177, v176, &aBlock);

          *(v172 + 4) = v191;
          _os_log_impl(&dword_1DAD61000, v170, v171, "[%{public}s] Connect", v172, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v173);
          MEMORY[0x1E127F100](v173, -1, -1);
          MEMORY[0x1E127F100](v172, -1, -1);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v178 = sub_1DAECEDEC();
      __swift_project_value_buffer(v178, qword_1EE011748);
      v179 = v13;
      v200 = sub_1DAECEDCC();
      v180 = sub_1DAED202C();

      if (os_log_type_enabled(v200, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        aBlock = v182;
        *v181 = 136446210;
        v183 = [v12 _FBSScene];
        v184 = [v183 identifier];

        v185 = sub_1DAED1CEC();
        v187 = v186;

        v188 = sub_1DAD6482C(v185, v187, &aBlock);

        *(v181 + 4) = v188;
        _os_log_impl(&dword_1DAD61000, v200, v180, "[%{public}s]: Nil widget received from client - widget scene will be inert.", v181, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v182);
        MEMORY[0x1E127F100](v182, -1, -1);
        MEMORY[0x1E127F100](v181, -1, -1);
      }

      else
      {

        v189 = v200;
      }
    }
  }
}

uint64_t sub_1DAD69004()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for _UserInterfaceStyleSceneComponentProvider(uint64_t a1)
{
  result = qword_1EE005F70;
  if (!qword_1EE005F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1DAD690DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC089C8, &qword_1DAED7468);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v39[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v39[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39[-v9];
  v11 = sub_1DAECF0AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v39[-v15];
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v39[-v18];
  result = *(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__observer);
  if (result)
  {
    [result userInterfaceStyle];
    sub_1DAECF09C();
    v21 = OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__colorScheme;
    swift_beginAccess();
    v22 = *(v12 + 16);
    v47 = v19;
    v44 = v22;
    v22(v10, v19, v11);
    v42 = *(v12 + 56);
    v42(v10, 0, 1, v11);
    v23 = *(v1 + 48);
    v43 = v21;
    sub_1DAD69C4C(v0 + v21, v3);
    sub_1DAD69C4C(v10, &v3[v23]);
    v24 = *(v12 + 48);
    if (v24(v3, 1, v11) == 1)
    {
      sub_1DAD64398(v10, &qword_1ECC08370, &unk_1DAED6580);
      v25 = v24(&v3[v23], 1, v11);
      v26 = v47;
      if (v25 == 1)
      {
        sub_1DAD64398(v3, &qword_1ECC08370, &unk_1DAED6580);
        return (*(v12 + 8))(v26, v11);
      }
    }

    else
    {
      sub_1DAD69C4C(v3, v48);
      if (v24(&v3[v23], 1, v11) != 1)
      {
        v33 = &v3[v23];
        v34 = v41;
        (*(v12 + 32))(v41, v33, v11);
        sub_1DAE00A48();
        v40 = sub_1DAED1CAC();
        v35 = *(v12 + 8);
        v35(v34, v11);
        sub_1DAD64398(v10, &qword_1ECC08370, &unk_1DAED6580);
        v35(v48, v11);
        sub_1DAD64398(v3, &qword_1ECC08370, &unk_1DAED6580);
        v26 = v47;
        if (v40)
        {
          return (*(v12 + 8))(v26, v11);
        }

LABEL_8:
        v27 = v46;
        v28 = v44;
        v44(v46, v26, v11);
        v29 = 1;
        v42(v27, 0, 1, v11);
        v30 = v43;
        swift_beginAccess();
        sub_1DAD69CBC(v27, v0 + v30);
        swift_endAccess();
        v31 = v45;
        v28(v45, v26, v11);
        v32 = (*(v12 + 88))(v31, v11);
        if (v32 != *MEMORY[0x1E697DBB8])
        {
          if (v32 == *MEMORY[0x1E697DBA8])
          {
            v29 = 2;
          }

          else
          {
            (*(v12 + 8))(v31, v11);
            v29 = 1;
          }
        }

        v36 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v37 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__traitOverrides);
        *(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__traitOverrides) = v36;

        if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene))
        {
          objc_opt_self();
          v38 = swift_dynamicCastObjCClass();
          if (v38)
          {
            [v38 _componentDidUpdateTraitOverrides_];
          }
        }

        return (*(v12 + 8))(v26, v11);
      }

      sub_1DAD64398(v10, &qword_1ECC08370, &unk_1DAED6580);
      (*(v12 + 8))(v48, v11);
      v26 = v47;
    }

    sub_1DAD64398(v3, &qword_1ECC089C8, &qword_1DAED7468);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

char *sub_1DAD696BC(void *a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__observer;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__observer] = 0;
  v4 = OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__traitOverrides] = 0;
  v5 = OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__colorScheme;
  v6 = sub_1DAECF0AC();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__environmentSubscriber] = 0;
  *&v1[v4] = a1;
  *&v1[v3] = 0;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for _UserInterfaceStyleSceneComponentProvider(0);
  v7 = a1;
  v8 = objc_msgSendSuper2(&v18, sel_init);
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v9 = v8;
  v10 = sub_1DAED20EC();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = objc_allocWithZone(MEMORY[0x1E69DEBD8]);
  v17[4] = sub_1DAE00B20;
  v17[5] = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DAD69AE8;
  v17[3] = &block_descriptor_5;
  v13 = _Block_copy(v17);

  v14 = [v12 initWithChangesDeliveredOnQueue:v10 toBlock:v13];
  _Block_release(v13);

  v15 = *&v9[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__observer];
  *&v9[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__observer] = v14;

  return v9;
}

uint64_t sub_1DAD698D0()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

id sub_1DAD69960()
{
  result = [objc_opt_self() weakToStrongObjectsMapTable];
  qword_1EE005480 = result;
  return result;
}

void sub_1DAD6999C(uint64_t a1)
{
  sub_1DAD69A3C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DAD69A3C(uint64_t a1)
{
  if (!qword_1EE00ABA0)
  {
    sub_1DAECF0AC();
    v1 = sub_1DAED233C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE00ABA0);
    }
  }
}

uint64_t sub_1DAD69A94()
{
  sub_1DAD674D4(0, &qword_1EE005468, 0x1E696AEC0);
  result = sub_1DAED22AC();
  qword_1EE011820 = result;
  return result;
}

void sub_1DAD69AE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1DAD69B5C(uint64_t a1, const char *a2)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAECEDEC();
  __swift_project_value_buffer(v3, qword_1EE0117F0);
  oslog = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }
}

uint64_t sub_1DAD69C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD69CBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD69D98()
{
  sub_1DAD674D4(0, &qword_1EE005468, 0x1E696AEC0);
  result = sub_1DAED22AC();
  qword_1EE0119D0 = result;
  return result;
}

void sub_1DAD69DF8()
{
  BSDispatchQueueAssert();
  sub_1DAD92868();
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue_connection);
  if (v1)
  {
    v2 = v1;
    if ([v2 remoteTarget])
    {
      sub_1DAED238C();
      swift_unknownObjectRelease();

      sub_1DAD64398(v7, &qword_1ECC0A3A0, &qword_1DAEDFE30);
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      sub_1DAD64398(v7, &qword_1ECC0A3A0, &qword_1DAEDFE30);
      if (qword_1EE005E90 != -1)
      {
        swift_once();
      }

      v3 = sub_1DAECEDEC();
      __swift_project_value_buffer(v3, qword_1EE0117F0);
      v4 = sub_1DAECEDCC();
      v5 = sub_1DAED203C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1DAD61000, v4, v5, "Activating connection", v6, 2u);
        MEMORY[0x1E127F100](v6, -1, -1);
      }

      [v2 activate];
    }
  }
}

id sub_1DAD6A06C()
{
  v0[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_validationState] = 0;
  v1 = &v0[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugText];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_animationsPaused] = 0;
  v0[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_isSnapshotting] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView] = [objc_allocWithZone(type metadata accessor for DebugView()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DebugOverlayViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1DAD6A148()
{
  *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView] = 0;
  v1 = &v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPaused] = 0;
  v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshotting] = 0;
  v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplay] = 0;
  v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationState] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DebugView();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1DAD6A390(void *a1)
{
  v3 = [a1 _appearState];
  [v1 addChildViewController_];
  if (!v3)
  {
    [a1 beginAppearanceTransition:1 animated:0];
  }

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  [v5 addSubview_];

  if (!v3)
  {
    [a1 endAppearanceTransition];
  }

  return [a1 didMoveToParentViewController_];
}

unint64_t sub_1DAD6A49C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1DAD674D4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1DAED228C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void sub_1DAD6A568(void *a1, void *a2, void *a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__invalidated] = 0;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription] = 0;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber] = 0;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener] = 0;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__entryContentTypeChangedListener] = 0;
  a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__needsVCRebuild] = 0;
  a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_hasBeenActive] = 0;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController] = 0;
  v8 = &a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_delegate];
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction] = 0;
  v9 = sub_1DAD8CE78(a1);
  v11 = v10;
  v12 = &a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
  *v12 = v9;
  v12[1] = v10;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene] = a1;
  *(v8 + 1) = &off_1F56B0808;
  v50 = a2;
  swift_unknownObjectWeakAssign();
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_window] = a3;

  v13 = a1;
  v14 = a3;
  v51 = v13;
  v15 = [v13 widget];
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v16 = sub_1DAECEDEC();
  __swift_project_value_buffer(v16, qword_1EE011748);

  v17 = v15;
  v18 = sub_1DAECEDCC();
  v19 = sub_1DAED203C();

  v48 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v52 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1DAD6482C(v9, v11, &v52);
    *(v20 + 12) = 2082;
    v22 = [v17 _loggingIdentifierWithoutMetrics];
    v23 = sub_1DAED1CEC();
    v25 = v24;

    v26 = sub_1DAD6482C(v23, v25, &v52);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_1DAD61000, v18, v19, "[%{public}s] Scene created with widget: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v21, -1, -1);
    MEMORY[0x1E127F100](v20, -1, -1);
  }

  v27 = [objc_allocWithZone(type metadata accessor for ZStackContainerViewController()) init];
  v28 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_rootViewController;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_rootViewController] = v27;
  [v14 setRootViewController_];
  v29 = [v14 rootViewController];
  if (!v29)
  {
LABEL_8:
    v32 = [objc_allocWithZone(type metadata accessor for DebugOverlayViewController()) init];
    v33 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController;
    *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController] = v32;
    v34 = [v32 view];
    if (v34)
    {
      v35 = v34;

      [v14 bounds];
      [v35 setFrame_];

      v36 = *&a4[v33];
      v37 = [v51 areAnimationsPaused];
      v36[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_animationsPaused] = v37;
      v38 = *&v36[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView];
      v38[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPaused] = v37;
      [v38 setNeedsLayout];

      v39 = *&a4[v33];
      v40 = *&a4[v28];
      v41 = v39;
      sub_1DAD6A390(v41);
      v42 = [v40 view];
      if (v42)
      {
        v43 = v42;
        v44 = [v41 view];
        if (v44)
        {
          v45 = v44;
          [v43 bringSubviewToFront_];

          v46 = [objc_allocWithZone(MEMORY[0x1E6994560]) init];
          *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_sceneSettingsDiffInspector] = v46;
          v53.receiver = a4;
          v53.super_class = ObjectType;
          v47 = objc_msgSendSuper2(&v53, sel_init);
          sub_1DAD6AAC0(v51);

          return;
        }

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  v31 = [v29 view];

  if (v31)
  {
    [v14 bounds];
    [v31 setFrame_];

    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1DAD6AAC0(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = *&v1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_sceneSettingsDiffInspector];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v63 = sub_1DAE0C764;
  v64 = v7;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAE093BC;
  v62 = &block_descriptor_6;
  v8 = _Block_copy(&v59);
  v9 = v2;
  v10 = a1;

  [v5 observeFrameWithBlock_];
  _Block_release(v8);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = sub_1DAE0C73C;
  v12[5] = v4;
  v63 = sub_1DAE0C76C;
  v64 = v12;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_15;
  v13 = _Block_copy(&v59);
  v14 = v10;

  [v5 observeContentTypeWithBlock_];
  _Block_release(v13);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = sub_1DAE0C73C;
  v16[5] = v4;
  v63 = sub_1DAE0C778;
  v64 = v16;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_22_0;
  v17 = _Block_copy(&v59);
  v18 = v14;

  [v5 observeWidgetWithBlock_];
  _Block_release(v17);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v18;
  v20[4] = sub_1DAE0C73C;
  v20[5] = v4;
  v63 = sub_1DAE0C81C;
  v64 = v20;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_29;
  v21 = _Block_copy(&v59);
  v22 = v18;

  [v5 observeMetricsWithBlock_];
  _Block_release(v21);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_1DAE0C878;
  v64 = v23;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_33;
  v24 = _Block_copy(&v59);

  [v5 observeWidgetConfigurationIdentifierBlock_];
  _Block_release(v24);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v22;
  v63 = sub_1DAE0C880;
  v64 = v26;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_40;
  v27 = _Block_copy(&v59);
  v28 = v22;

  [v5 observeVisibleEntryShouldSnapshotWithBlock_];
  _Block_release(v27);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;
  v63 = sub_1DAE0C888;
  v64 = v30;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_47;
  v31 = _Block_copy(&v59);
  v32 = v28;

  [v5 observeContentPausedWithBlock_];
  _Block_release(v31);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v32;
  v63 = sub_1DAE0C890;
  v64 = v34;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_54_0;
  v35 = _Block_copy(&v59);
  v36 = v32;

  [v5 observeInlineTextParametersWithBlock_];
  _Block_release(v35);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;
  v63 = sub_1DAD6F3FC;
  v64 = v38;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_61;
  v39 = _Block_copy(&v59);
  v40 = v36;

  [v5 observeAnimationsPausedWithBlock_];
  _Block_release(v39);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_1DAE0C898;
  v64 = v41;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_65;
  v42 = _Block_copy(&v59);

  [v5 observeCanAppearInSecureEnvironmentWithBlock_];
  _Block_release(v42);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v40;
  v63 = sub_1DAE0C8A0;
  v64 = v44;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_72;
  v45 = _Block_copy(&v59);
  v46 = v40;

  [v5 observePrefersUnredactedContentInLowLuminanceEnvironmentWithBlock_];
  _Block_release(v45);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = v46;
  v63 = sub_1DAE0C8A8;
  v64 = v48;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_79;
  v49 = _Block_copy(&v59);
  v50 = v46;

  [v5 observeWantsBaseContentTouchEventsWithBlock_];
  _Block_release(v49);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v50;
  v63 = sub_1DAE0C8B0;
  v64 = v52;
  v59 = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1DAD6EA40;
  v62 = &block_descriptor_86;
  v53 = _Block_copy(&v59);
  v54 = v50;

  [v5 observeRenderingScaleWithBlock_];
  _Block_release(v53);
  [v54 renderingScale];
  if (v55 > 0.0 && *&v9[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController])
  {

    [v54 renderingScale];
    v57 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v57;
    LOBYTE(v60) = 0;
    sub_1DAECEF4C();
  }
}

uint64_t sub_1DAD6B568()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD6B5EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v25 - v10;
  v27 = a1;
  v12 = [a1 visibility];
  if (v12)
  {
    v13 = v12;
    [v13 isSettled];
    [v13 isFocal];
    [v13 visibleBounds];
    sub_1DAECE52C();

    v14 = sub_1DAECE55C();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v14 = sub_1DAECE55C();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  sub_1DAD6495C(v11, v7, &qword_1ECC07CD0, &qword_1DAED6560);
  sub_1DAECE55C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v7, 1, v14);
  sub_1DAD64398(v7, &qword_1ECC07CD0, &qword_1DAED6560);
  v18 = v17 == 1;
  v19 = v1;
  if (!v18 && !*(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene))
  {
    sub_1DAD64398(v11, &qword_1ECC07CD0, &qword_1DAED6560);
    (*(v15 + 56))(v11, 1, 1, v14);
  }

  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController))
  {
    v20 = v26;
    sub_1DAD6495C(v11, v26, &qword_1ECC07CD0, &qword_1DAED6560);
    swift_unknownObjectRetain();
    sub_1DAD6D8C0(v20);
    swift_unknownObjectRelease();
    sub_1DAD64398(v20, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  if (![v27 widgetPriority])
  {
    v22 = v16(v11, 1, v14) ? 0 : sub_1DAECE51C();
    v23 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
    v24 = *(v19 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
    if (v24)
    {
      if (!*(v24 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController) || (swift_getKeyPath(), swift_getKeyPath(), , sub_1DAECEF3C(), , , , (v22 & 1) != v29) && (v24 = *(v19 + v23)) != 0)
      {
        if (*(v24 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v28 = v22 & 1;

          sub_1DAECEF4C();
        }
      }
    }
  }

  return sub_1DAD64398(v11, &qword_1ECC07CD0, &qword_1DAED6560);
}

uint64_t sub_1DAD6BA44(char a1, void *a2)
{
  v5 = sub_1DAED09DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DAED0A3C();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v2;
  aBlock[4] = sub_1DAD6F914;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_163;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = v2;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v18);
}

uint64_t sub_1DAD6BD28()
{

  return swift_deallocObject();
}

void sub_1DAD6BD68(uint64_t a1)
{
  v26 = a1;
  v2 = sub_1DAECE55C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07CD8, &unk_1DAED5790);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_visibility;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1DAD6495C(v1 + v14, v13, &qword_1ECC07CD0, &qword_1DAED6560);
  sub_1DAD6495C(v26, &v13[v15], &qword_1ECC07CD0, &qword_1DAED6560);
  v16 = *(v3 + 48);
  if (v16(v13, 1, v2) == 1)
  {
    if (v16(&v13[v15], 1, v2) == 1)
    {
      sub_1DAD64398(v13, &qword_1ECC07CD0, &qword_1DAED6560);
      return;
    }
  }

  else
  {
    sub_1DAD6495C(v13, v9, &qword_1ECC07CD0, &qword_1DAED6560);
    if (v16(&v13[v15], 1, v2) != 1)
    {
      v20 = v24;
      (*(v3 + 32))(v24, &v13[v15], v2);
      sub_1DAE3B004(qword_1EE005EC0, MEMORY[0x1E6994460], MEMORY[0x1E6994468]);
      LODWORD(v26) = sub_1DAED1CAC();
      v21 = *(v3 + 8);
      v21(v20, v2);
      v21(v9, v2);
      sub_1DAD64398(v13, &qword_1ECC07CD0, &qword_1DAED6560);
      if (v26)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v3 + 8))(v9, v2);
  }

  sub_1DAD64398(v13, &unk_1ECC07CD8, &unk_1DAED5790);
LABEL_7:
  v17 = v25;
  sub_1DAD6495C(v1 + v14, v25, &qword_1ECC07CD0, &qword_1DAED6560);
  v18 = v16(v17, 1, v2);
  sub_1DAD64398(v17, &qword_1ECC07CD0, &qword_1DAED6560);
  if (v18 == 1)
  {
    v19 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession);
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
LABEL_9:
    sub_1DAD6C79C(v19);
    return;
  }

  swift_beginAccess();
  if (v16((v1 + v14), 1, v2))
  {
    swift_endAccess();
  }

  else
  {
    v22 = sub_1DAECE53C();
    swift_endAccess();
    if (v22)
    {
      v19 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession);
      *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession) = 1;
      goto LABEL_9;
    }
  }
}

void sub_1DAD6C1C4(uint64_t a1)
{
  v39 = a1;
  v2 = sub_1DAECE55C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07CD8, &unk_1DAED5790);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
  swift_beginAccess();
  v13 = *(v9 + 56);
  sub_1DAD6495C(v39, v11, &qword_1ECC07CD0, &qword_1DAED6560);
  v38 = v12;
  v39 = v1;
  sub_1DAD6495C(v1 + v12, &v11[v13], &qword_1ECC07CD0, &qword_1DAED6560);
  v14 = *(v3 + 48);
  if (v14(v11, 1, v2) == 1)
  {
    if (v14(&v11[v13], 1, v2) == 1)
    {
      sub_1DAD64398(v11, &qword_1ECC07CD0, &qword_1DAED6560);
      return;
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v11, v7, &qword_1ECC07CD0, &qword_1DAED6560);
  if (v14(&v11[v13], 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
LABEL_6:
    sub_1DAD64398(v11, &unk_1ECC07CD8, &unk_1DAED5790);
    v15 = v39;
    goto LABEL_7;
  }

  v27 = v37;
  (*(v3 + 32))(v37, &v11[v13], v2);
  sub_1DAD7D898(qword_1EE005EC0, MEMORY[0x1E6994460], MEMORY[0x1E6994468]);
  v28 = sub_1DAED1CAC();
  v29 = *(v3 + 8);
  v29(v27, v2);
  v29(v7, v2);
  sub_1DAD64398(v11, &qword_1ECC07CD0, &qword_1DAED6560);
  v15 = v39;
  if (v28)
  {
    return;
  }

LABEL_7:
  v16 = v14;
  v17 = v2;
  if (qword_1EE005E88 != -1)
  {
    swift_once();
  }

  v18 = sub_1DAECEDEC();
  __swift_project_value_buffer(v18, qword_1EE0117D8);

  v19 = sub_1DAECEDCC();
  v20 = sub_1DAED203C();
  if (!os_log_type_enabled(v19, v20))
  {

    v26 = v38;
    goto LABEL_19;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v40[0] = v22;
  *v21 = 136446466;
  v23 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
  v24 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

  v25 = sub_1DAD6482C(v23, v24, v40);

  *(v21 + 4) = v25;
  *(v21 + 12) = 1026;
  v26 = v38;
  swift_beginAccess();
  if (v16(v15 + v26, 1, v17))
  {
    swift_endAccess();
LABEL_17:
    v31 = 0;
    goto LABEL_18;
  }

  v30 = sub_1DAECE53C();
  swift_endAccess();
  if ((v30 & 1) == 0)
  {
    goto LABEL_17;
  }

  v31 = 1;
LABEL_18:
  *(v21 + 14) = v31;

  _os_log_impl(&dword_1DAD61000, v19, v20, "[%{public}s] Visibility did change: %{BOOL,public}d", v21, 0x12u);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  MEMORY[0x1E127F100](v22, -1, -1);
  MEMORY[0x1E127F100](v21, -1, -1);

LABEL_19:
  if (*(v15 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) == 1)
  {
    sub_1DAD648F8(v15 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v41);
    v32 = v42;
    v33 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    swift_beginAccess();
    if (v16(v15 + v26, 1, v17))
    {
      v34 = 0;
    }

    else
    {
      v34 = sub_1DAECE53C();
    }

    swift_endAccess();
    v35 = *(v33 + 136);
    v36 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
    v35(v34 & 1, v36, v32, v33);

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }
}

void sub_1DAD6C79C(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08850, &qword_1DAED7280);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v38 - v4;
  v6 = sub_1DAED12CC();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v42 = sub_1DAECDCEC();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09958, &unk_1DAEDA888);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_1DAED11EC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession);
  if (v20 != v2)
  {
    v40 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession;
    v21 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
    swift_beginAccess();
    sub_1DAD6495C(v1 + v21, v15, &qword_1ECC09958, &unk_1DAEDA888);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_1DAD64398(v15, &qword_1ECC09958, &unk_1DAEDA888);
      goto LABEL_15;
    }

    (*(v17 + 32))(v19, v15, v16);
    if (!v20)
    {
      v29 = sub_1DAD6EAB8();
      (*(v17 + 8))(v19, v16, v29);
      goto LABEL_15;
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v39 = v1;
      sub_1DAD648F8(Strong + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v46);
      v24 = v47;
      v23 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v25 = (*(v23 + 16))(v24, v23);
      sub_1DAED0C5C();

      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      if (*(&v50 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        sub_1DAED1A3C();
        __swift_destroy_boxed_opaque_existential_1Tm(&v49);
        v26 = v41;
        v27 = v42;
        v28 = (*(v41 + 48))(v10, 1, v42);
        v1 = v39;
        if (v28 != 1)
        {
          (*(v26 + 32))(v12, v10, v27);
LABEL_14:
          sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder, &v49);
          __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
          v30 = sub_1DAED122C();
          (*(v26 + 8))(v12, v42);
          (*(v17 + 8))(v19, v16);
          *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry) = v30;

          __swift_destroy_boxed_opaque_existential_1Tm(&v49);
LABEL_15:
          v31 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
          swift_beginAccess();
          sub_1DAD6495C(v1 + v31, v5, &qword_1ECC08850, &qword_1DAED7280);
          v33 = v44;
          v32 = v45;
          if ((*(v44 + 48))(v5, 1, v45) == 1)
          {
            sub_1DAD64398(v5, &qword_1ECC08850, &qword_1DAED7280);
            return;
          }

          (*(v33 + 32))(v43, v5, v32);
          v34 = v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
          swift_beginAccess();
          if (*(v34 + 24))
          {
            sub_1DAD648F8(v34, &v49);
            if (*(&v50 + 1))
            {
LABEL_19:
              sub_1DAD648F8(&v49, v46);
              if (*(&v50 + 1))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(&v49);
              }

              __swift_project_boxed_opaque_existential_1(v46, v47);
              v35 = v43;
              sub_1DAED115C();
              (*(v33 + 8))(v35, v32);
              v36 = v46;
LABEL_25:
              __swift_destroy_boxed_opaque_existential_1Tm(v36);
              return;
            }
          }

          else
          {
            v37 = *(v34 + 16);
            v49 = *v34;
            v50 = v37;
            v51 = *(v34 + 32);
            if (*(&v37 + 1))
            {
              goto LABEL_19;
            }
          }

          (*(v33 + 8))(v43, v32);
          if (!*(&v50 + 1))
          {
            return;
          }

          v36 = &v49;
          goto LABEL_25;
        }

LABEL_12:
        sub_1DAECDC3C();
        if ((*(v26 + 48))(v10, 1, v27) != 1)
        {
          sub_1DAD64398(v10, &qword_1ECC07CE8, &qword_1DAED6F60);
        }

        goto LABEL_14;
      }

      sub_1DAD64398(&v49, &unk_1ECC08880, &unk_1DAED6F50);
      v1 = v39;
    }

    v26 = v41;
    v27 = v42;
    (*(v41 + 56))(v10, 1, 1, v42);
    goto LABEL_12;
  }
}

void sub_1DAD6CF04()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v64 - v3;
  v5 = sub_1DAECDCEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - v13;
  BSDispatchQueueAssertMain();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated))
  {

    return;
  }

  v69 = Strong;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__hasBeenVisiblySettledForCurrentVisibilitySession) == 1)
  {
    BSDispatchQueueAssertMain();
    v16 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer;
    [*(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer) invalidate];
    v17 = *(v0 + v16);
    *(v0 + v16) = 0;

    v18 = sub_1DADC5180(v4);
    if ((*(v6 + 48))(v4, 1, v5, v18) == 1)
    {

      sub_1DAD64398(v4, &qword_1ECC07CE8, &qword_1DAED6F60);
      return;
    }

    (*(v6 + 32))(v14, v4, v5);
    sub_1DAECDCDC();
    sub_1DADB40C4(&qword_1EE00A6F0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v27 = sub_1DAED1C9C();
    v68 = *(v6 + 8);
    (v68)(v11, v5);
    if (v27)
    {
      sub_1DAECDC8C();
      if (qword_1EE005E60 != -1)
      {
        v67 = v28;
        swift_once();
        v28 = v67;
      }

      v29 = v28 + 5.0;
      v30 = sub_1DAECEDEC();
      __swift_project_value_buffer(v30, qword_1EE011778);
      (*(v6 + 16))(v8, v14, v5);

      v31 = sub_1DAECEDCC();
      v32 = sub_1DAED203C();

      if (os_log_type_enabled(v31, v32))
      {
        v66 = v32;
        *&v67 = v6 + 8;
        v33 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        aBlock[0] = v65;
        *v33 = 136446722;
        v34 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
        v35 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier + 8);

        v36 = sub_1DAD6482C(v34, v35, aBlock);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2050;
        *(v33 + 14) = v29;
        *(v33 + 22) = 2082;
        if (qword_1EE00A700 != -1)
        {
          swift_once();
        }

        v37 = qword_1EE00A708;
        v38 = sub_1DAECDC5C();
        v39 = [v37 stringFromDate_];

        v40 = sub_1DAED1CEC();
        v42 = v41;

        v43 = v68;
        (v68)(v8, v5);
        v44 = sub_1DAD6482C(v40, v42, aBlock);

        *(v33 + 24) = v44;
        _os_log_impl(&dword_1DAD61000, v31, v66, "[%{public}s] Scheduling staleness check in %{public}fs: roughly %{public}s", v33, 0x20u);
        v45 = v65;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v45, -1, -1);
        MEMORY[0x1E127F100](v33, -1, -1);
      }

      else
      {

        v43 = v68;
        (v68)(v8, v5);
      }

      v56 = objc_allocWithZone(MEMORY[0x1E698E660]);
      v57 = sub_1DAED1CBC();
      v58 = [v56 initWithIdentifier_];

      v59 = *(v1 + v16);
      *(v1 + v16) = v58;
      v60 = v58;

      if (v60)
      {
        sub_1DAD84C40();
        v61 = sub_1DAED20EC();
        v62 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = sub_1DAE0CFC8;
        aBlock[5] = v62;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DAD69AE8;
        aBlock[3] = &block_descriptor_7;
        v63 = _Block_copy(aBlock);

        [v60 scheduleWithFireInterval:v61 leewayInterval:v63 queue:v29 handler:15.0];

        _Block_release(v63);

LABEL_32:
        (v43)(v14, v5);
        return;
      }
    }

    else
    {
      if (qword_1EE005E60 != -1)
      {
        swift_once();
      }

      v47 = sub_1DAECEDEC();
      __swift_project_value_buffer(v47, qword_1EE011778);

      v48 = sub_1DAECEDCC();
      v49 = sub_1DAED203C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v50 = 136446210;
        v52 = v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier;
        v53 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
        v54 = *(v52 + 8);

        v55 = sub_1DAD6482C(v53, v54, aBlock);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_1DAD61000, v48, v49, "[%{public}s] Widget is visible and effectively stale, reloading content.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x1E127F100](v51, -1, -1);
        MEMORY[0x1E127F100](v50, -1, -1);
      }

      v43 = v68;
      sub_1DADC551C(0);
    }

    goto LABEL_32;
  }

  if (qword_1EE005E60 != -1)
  {
    swift_once();
  }

  v19 = sub_1DAECEDEC();
  __swift_project_value_buffer(v19, qword_1EE011778);

  v68 = sub_1DAECEDCC();
  v20 = sub_1DAED203C();

  if (os_log_type_enabled(v68, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v23 = v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier;
    v24 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
    v25 = *(v23 + 8);

    v26 = sub_1DAD6482C(v24, v25, aBlock);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1DAD61000, v68, v20, "[%{public}s] Ignoring staleness check - not visibly settled for current view session yet.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1E127F100](v22, -1, -1);
    MEMORY[0x1E127F100](v21, -1, -1);
  }

  else
  {

    v46 = v68;
  }
}

uint64_t sub_1DAD6D888()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1DAD6D8C0(uint64_t a1)
{
  v85 = sub_1DAECE55C();
  v3 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v5 = &v72[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v72[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v72[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v72[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v72[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v72[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07CD8, &unk_1DAED5790);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v72[-v25];
  BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated))
  {
    return;
  }

  v27 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__visibility;
  swift_beginAccess();
  v28 = *(v24 + 48);
  v77 = a1;
  sub_1DAD6E2C8(a1, v26);
  v76 = v1;
  v78 = v27;
  sub_1DAD6E2C8(v1 + v27, &v26[v28]);
  v29 = *(v3 + 48);
  if (v29(v26, 1, v85) == 1)
  {
    if (v29(&v26[v28], 1, v85) == 1)
    {
      sub_1DAD64398(v26, &qword_1ECC07CD0, &qword_1DAED6560);
      return;
    }
  }

  else
  {
    sub_1DAD6E2C8(v26, v23);
    v75 = v29;
    if (v29(&v26[v28], 1, v85) != 1)
    {
      v37 = &v26[v28];
      v38 = v85;
      (*(v3 + 32))(v5, v37, v85);
      sub_1DADB40C4(qword_1EE005EC0, MEMORY[0x1E6994460], MEMORY[0x1E6994468]);
      v73 = sub_1DAED1CAC();
      v74 = v3 + 48;
      v39 = *(v3 + 8);
      v39(v5, v38);
      v39(v23, v38);
      sub_1DAD64398(v26, &qword_1ECC07CD0, &qword_1DAED6560);
      v30 = v77;
      v29 = v75;
      v31 = v76;
      if (v73)
      {
        return;
      }

      goto LABEL_8;
    }

    (*(v3 + 8))(v23, v85);
    v29 = v75;
  }

  sub_1DAD64398(v26, &unk_1ECC07CD8, &unk_1DAED5790);
  v30 = v77;
  v31 = v76;
LABEL_8:
  v32 = v3;
  v33 = v78;
  swift_beginAccess();
  sub_1DAD6EA48(v30, v31 + v33);
  swift_endAccess();
  sub_1DAD6E2C8(v31 + v33, v20);
  LODWORD(v33) = v29(v20, 1, v85);
  sub_1DAD64398(v20, &qword_1ECC07CD0, &qword_1DAED6560);
  if (v33 == 1)
  {
    *(v31 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
    v34 = v84;
  }

  else
  {
    v35 = v79;
    sub_1DAD6E2C8(v31 + v78, v79);
    v36 = v29(v35, 1, v85);
    v34 = v84;
    if (v36)
    {
      sub_1DAD64398(v35, &qword_1ECC07CD0, &qword_1DAED6560);
    }

    else
    {
      v40 = sub_1DAECE53C();
      sub_1DAD64398(v35, &qword_1ECC07CD0, &qword_1DAED6560);
      if (v40)
      {
        *(v31 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__hasBeenVisiblySettledForCurrentVisibilitySession) = 1;
      }
    }
  }

  if (qword_1EE005E60 != -1)
  {
    swift_once();
  }

  v41 = sub_1DAECEDEC();
  __swift_project_value_buffer(v41, qword_1EE011778);
  sub_1DAD6E2C8(v30, v34);

  v42 = sub_1DAECEDCC();
  v43 = sub_1DAED203C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = v31;
    v45 = v29;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v86[0] = v47;
    *v46 = 136446466;
    v48 = v44 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier;
    v49 = *(v44 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
    v50 = *(v48 + 8);

    v51 = sub_1DAD6482C(v49, v50, v86);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2082;
    v52 = v34;
    v53 = v80;
    sub_1DAD6E2C8(v52, v80);
    v75 = v45;
    if (v45(v53, 1, v85) == 1)
    {
      sub_1DAD64398(v53, &qword_1ECC07CD0, &qword_1DAED6560);
      v54 = 0xEB00000000656C62;
      v55 = 0x6973697620746F6ELL;
    }

    else
    {
      v55 = sub_1DAECE50C();
      v54 = v56;
      (*(v32 + 8))(v53, v85);
    }

    sub_1DAD64398(v84, &qword_1ECC07CD0, &qword_1DAED6560);
    v57 = sub_1DAD6482C(v55, v54, v86);

    *(v46 + 14) = v57;
    _os_log_impl(&dword_1DAD61000, v42, v43, "[%{public}s] Effective widget visibility changed to: %{public}s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v47, -1, -1);
    MEMORY[0x1E127F100](v46, -1, -1);

    v30 = v77;
    v29 = v75;
    v31 = v76;
  }

  else
  {

    sub_1DAD64398(v34, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  Strong = swift_weakLoadStrong();
  v59 = v82;
  if (Strong)
  {
    v60 = Strong;
    sub_1DAD6E2C8(v30, v82);
    v61 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
    swift_beginAccess();
    v62 = v29;
    v63 = v83;
    sub_1DAD6E2C8(v60 + v61, v83);
    swift_beginAccess();
    sub_1DAD6EA48(v59, v60 + v61);
    swift_endAccess();
    sub_1DAD6C1C4(v63);

    v64 = v63;
    v29 = v62;
    sub_1DAD64398(v64, &qword_1ECC07CD0, &qword_1DAED6560);
    sub_1DAD64398(v59, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  v65 = *(v31 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator);
  if (v65)
  {
    sub_1DAD6E2C8(v30, v59);
    v66 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_visibility;
    swift_beginAccess();
    v67 = v83;
    sub_1DAD6E2C8(v65 + v66, v83);
    swift_beginAccess();

    sub_1DAD6EA48(v59, v65 + v66);
    swift_endAccess();
    sub_1DAD6BD68(v67);

    sub_1DAD64398(v67, &qword_1ECC07CD0, &qword_1DAED6560);
    sub_1DAD64398(v59, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  if ((*(v31 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__hasBeenVisiblySettledForCurrentVisibilitySession) & 1) != 0 || (v68 = v81, sub_1DAD6E2C8(v31 + v78, v81), v69 = v29(v68, 1, v85), sub_1DAD64398(v68, &qword_1ECC07CD0, &qword_1DAED6560), v69 == 1))
  {
    BSDispatchQueueAssertMain();
    v70 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer;
    [*(v31 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer) invalidate];
    v71 = *(v31 + v70);
    *(v31 + v70) = 0;

    sub_1DAD6CF04();
  }
}

uint64_t sub_1DAD6E2C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAD6E338(void *a1, void *a2, void *a3, id a4)
{
  v9 = [a4 animationFence];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v10 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v4;
  v13 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v14 = *&v11[v13];
  type metadata accessor for SecureHostingController(0);
  sub_1DAD8E1BC(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
  v15 = v14;
  v16 = v11;
  if (sub_1DAECF9AC())
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {

      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    [v17 setNeedsSynchronousUpdate_];
    swift_unknownObjectRelease();
  }

LABEL_9:
  v4 = v12;
LABEL_10:
  v18 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector);
  if (v18)
  {
    v19 = a2 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    if (a3)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = a3;
      }
    }

    else
    {
      v20 = 0;
    }

    v56 = a3;
    if (!a1)
    {
      __break(1u);
      goto LABEL_45;
    }

    v22 = v18;
    v23 = a2;
    v24 = a1;
    v25 = [a1 settings];
    objc_opt_self();
    v26 = [objc_allocWithZone(MEMORY[0x1E6994558]) initWithPreviousSettings:v20 currentSettings:swift_dynamicCastObjCClassUnconditional() transitionContext:a4];

    v27 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
    if (v27 && *(v27 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController))
    {
      v28 = v22;
      v29 = v23;
      v23 = v26;

      sub_1DAD6EF34(v30, v28, v29, v23);

      v22 = v23;
    }

    else
    {
      v29 = v26;
      [v22 inspectDiff:v23 withContext:v29];
    }

    a1 = v24;
    a3 = v56;
  }

  v31 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
  if (!v31)
  {
    return;
  }

  v32 = v31;
  if (a4)
  {
    v33 = [a4 actions];
    if (v33)
    {
      v34 = v33;
      sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
      sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0, MEMORY[0x1E69E81B8]);
      v35 = sub_1DAED1F6C();

      v36 = sub_1DADAF3F0(v35);

      if (v36)
      {
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();

        if (v37)
        {
          if (qword_1EE005E48 != -1)
          {
            swift_once();
          }

          v38 = sub_1DAECEDEC();
          __swift_project_value_buffer(v38, qword_1EE011748);
          v39 = v32;
          v40 = sub_1DAECEDCC();
          v41 = sub_1DAED203C();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v58 = v55;
            *v42 = 136446210;
            v43 = &v39[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
            v57 = v39;
            v44 = a1;
            v45 = *v43;
            v46 = v43[1];

            v47 = sub_1DAD6482C(v45, v46, &v58);
            a1 = v44;
            v39 = v57;

            *(v42 + 4) = v47;
            _os_log_impl(&dword_1DAD61000, v40, v41, "[%{public}s] Received launch request", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v55);
            MEMORY[0x1E127F100](v55, -1, -1);
            MEMORY[0x1E127F100](v42, -1, -1);
          }

          v48 = *&v39[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
          if (v48)
          {
            v49 = v48;
            sub_1DAEA0A10();
          }
        }
      }
    }
  }

  if (a2)
  {
    if (a3)
    {
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        v51 = a3;
      }
    }

    else
    {
      v50 = 0;
    }

    if (a1)
    {
      v52 = a2;
      v53 = [a1 settings];
      objc_opt_self();
      v54 = [objc_allocWithZone(MEMORY[0x1E6994558]) initWithPreviousSettings:v50 currentSettings:swift_dynamicCastObjCClassUnconditional() transitionContext:a4];

      [*&v32[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_sceneSettingsDiffInspector] inspectDiff:v52 withContext:v54];
      goto LABEL_42;
    }

LABEL_45:
    __break(1u);
    return;
  }

LABEL_42:
}

uint64_t sub_1DAD6EA48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1DAD6EAB8()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry))
  {
    sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);

    sub_1DAED123C();

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    *(v0 + v1) = 0;
  }

  return result;
}

void sub_1DAD6EB64(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, &v27);

      *(v11 + 4) = v19;
      *(v11 + 12) = 2082;
      v20 = [v7 visibility];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 description];

        v23 = sub_1DAED1CEC();
        v25 = v24;
      }

      else
      {
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = sub_1DAD6482C(v23, v25, &v27);

      *(v11 + 14) = v26;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget visibility changed to: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    sub_1DAD6B5EC(v7);
  }
}

void sub_1DAD6EEE0(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1DAEC7848();
}

id sub_1DAD6EF34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  BSDispatchQueueAssertMain();
  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch;
  *(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch) = 1;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons;
  swift_beginAccess();
  v10 = MEMORY[0x1E69E7CC0];
  *(a1 + v9) = MEMORY[0x1E69E7CC0];

  result = [a2 inspectDiff:a3 withContext:a4];
  *(a1 + v8) = 0;
  if (*(*(a1 + v9) + 16))
  {

    v12 = sub_1DAECEDCC();
    v13 = sub_1DAED203C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v21);
      *(v14 + 12) = 2082;

      v17 = MEMORY[0x1E127DB00](v16, &type metadata for LiveWidgetViewChangeReason);
      v19 = v18;

      v20 = sub_1DAD6482C(v17, v19, &v21);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v12, v13, "[%{public}s] Ending batch update with reasons: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v15, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);
    }

    LOBYTE(v21) = 21;
    sub_1DAD8EC1C(&v21);
    *(a1 + v9) = v10;
  }

  return result;
}

void sub_1DAD6F154(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446466;
      v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v15 = sub_1DAD6482C(v13, v14, &v20);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1026;
      *(v11 + 14) = [v8 areAnimationsPaused];

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget animations paused changed to: %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    if (*&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController])
    {

      v16 = [v8 areAnimationsPaused];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v20) = v16;
      sub_1DAECEF4C();
    }

    v17 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController];
    v18 = [v8 areAnimationsPaused];
    v17[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_animationsPaused] = v18;
    v19 = *&v17[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView];
    v19[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPaused] = v18;
    [v19 setNeedsLayout];
  }
}

uint64_t sub_1DAD6F45C()
{
  BSDispatchQueueAssert();
  sub_1DAD69DF8();
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue_connection);
  if (v1)
  {
    v2 = v1;
    if ([v2 remoteTarget])
    {
      sub_1DAED238C();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9A8, &qword_1DAEDF138);
      if (swift_dynamicCast())
      {

        return v11;
      }
    }

    else
    {
      sub_1DAD64398(v14, &qword_1ECC0A3A0, &qword_1DAEDFE30);
    }

    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v7 = sub_1DAECEDEC();
    __swift_project_value_buffer(v7, qword_1EE0117F0);
    v8 = sub_1DAECEDCC();
    v9 = sub_1DAED202C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DAD61000, v8, v9, "Failed to cast connection to server interface protocol", v10, 2u);
      MEMORY[0x1E127F100](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v3 = sub_1DAECEDEC();
    __swift_project_value_buffer(v3, qword_1EE0117F0);
    v2 = sub_1DAECEDCC();
    v4 = sub_1DAED202C();
    if (os_log_type_enabled(v2, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DAD61000, v2, v4, "Failed to establish a connection", v5, 2u);
      MEMORY[0x1E127F100](v5, -1, -1);
    }
  }

  return 0;
}

void *sub_1DAD6F6C8(char a1, void *a2, uint64_t a3)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAECEDEC();
  __swift_project_value_buffer(v6, qword_1EE0117F0);
  v7 = a2;
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED200C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 67240450;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2114;
    *(v10 + 10) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1DAD61000, v8, v9, "Set visibly settled %{BOOL,public}d for session: %{public}@", v10, 0x12u);
    sub_1DAD64398(v11, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  v13 = *(a3 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v13 + 16));
  v14 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v15 = *(a3 + v14);

  v16 = sub_1DADB7CF0(v7, v15);

  if (v16)
  {
    v17 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
    swift_beginAccess();
    *(v16 + v17) = a1 & 1;
  }

  os_unfair_lock_unlock(*(v13 + 16));
  result = sub_1DAD6F45C();
  if (result)
  {
    v19 = result;
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [v19 setVisiblySettled:v20 forSession:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DAD6F920(uint64_t a1)
{
  if (!qword_1EE00BE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC09EC0, &qword_1DAED7970);
    v1 = sub_1DAED089C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE00BE20);
    }
  }
}

void sub_1DAD6F984(uint64_t a1)
{
  if (!qword_1EE00BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08EC8, qword_1DAED82E8);
    v1 = sub_1DAED233C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE00BDE8);
    }
  }
}

void sub_1DAD6F9E8(uint64_t a1)
{
  sub_1DAD6F984(319);
  if (v1 <= 0x3F)
  {
    sub_1DAECEDEC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAD6FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1DAD6FB3C(char *a1)
{
  v97 = sub_1DAED09DC();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1DAED0A3C();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1DAED14BC();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1DAED14CC();
  v6 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v82 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v82 - v14;
  v104 = sub_1DAECF8EC();
  v100 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v98 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v82 - v17;
  v18 = sub_1DAED157C();
  v84 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v1;
  BSDispatchQueueAssert();
  if (qword_1EE005E90 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v21 = sub_1DAECEDEC();
    __swift_project_value_buffer(v21, qword_1EE0117F0);
    v22 = sub_1DAECEDCC();
    v23 = sub_1DAED203C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DAD61000, v22, v23, "Received initial connection initialization", v24, 2u);
      MEMORY[0x1E127F100](v24, -1, -1);
    }

    v25 = v104;
    v91 = swift_allocBox();
    v99 = v26;
    sub_1DAECF8DC();
    sub_1DAECDACC();
    swift_allocObject();
    sub_1DAECDABC();
    v102 = a1;
    v27 = [a1 systemEnvironment];
    v28 = sub_1DAECDC1C();
    v30 = v29;

    sub_1DAD649C4(&qword_1EE00AB20, 255, MEMORY[0x1E6985700], MEMORY[0x1E6985720]);
    sub_1DAECDAAC();
    sub_1DAD70BB4(v28, v30);

    v31 = v98;
    sub_1DAECF8DC();
    v32 = v10;
    sub_1DAED151C();
    (*(v100 + 8))(v31, v25);
    v33 = v87;
    v6[2](v83, v10, v87);
    sub_1DAD649C4(&qword_1EE005738, 255, MEMORY[0x1E69856E8], MEMORY[0x1E69856F0]);
    v10 = v86;
    sub_1DAED1E3C();
    sub_1DAD649C4(&qword_1EE005740, 255, MEMORY[0x1E69856D8], MEMORY[0x1E69856E0]);
    v34 = v85;
    v35 = v89;
    sub_1DAED234C();
    v88[1](v10, v35);
    v36 = v32;
    v37 = v100;
    (v6[1])(v36, v33);
    (*(v84 + 8))(v20, v18);
    v38 = *(v37 + 48);
    v39 = 1;
    v40 = v104;
    v41 = v38(v34, 1, v104);
    v42 = v103;
    if (v41 != 1)
    {
      (*(v37 + 32))(v103, v34, v40);
      v39 = 0;
    }

    (*(v37 + 56))(v42, v39, 1, v40);
    v43 = v38(v42, 1, v40);
    v44 = v102;
    v45 = v90;
    if (v43 == 1)
    {
      (*(v37 + 16))(v90, v99, v40);
      if (v38(v42, 1, v40) != 1)
      {
        sub_1DAD64398(v42, &unk_1ECC0A990, &qword_1DAEDE2D0);
      }
    }

    else
    {
      (*(v37 + 32))(v90, v42, v40);
    }

    (*(v37 + 40))(v99, v45, v40);
    v90 = swift_allocObject();
    *(v90 + 2) = MEMORY[0x1E69E7CC8];
    v46 = *&v101[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
    os_unfair_lock_lock(*(v46 + 16));
    v47 = [v44 extensions];
    v48 = sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
    sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
    v20 = sub_1DAED1F6C();

    aBlock[0] = sub_1DADBDB00(MEMORY[0x1E69E7CC0]);
    v89 = v46;
    v103 = v48;
    if ((v20 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAED1F9C();
      v50 = v107[4];
      v49 = v107[5];
      v51 = v107[6];
      a1 = v107[7];
      v6 = v107[8];
    }

    else
    {
      v52 = -1 << *(v20 + 32);
      v49 = (v20 + 56);
      v51 = ~v52;
      v53 = -v52;
      v54 = v53 < 64 ? ~(-1 << v53) : -1;
      v6 = (v54 & *(v20 + 56));

      a1 = 0;
      v50 = v20;
    }

    v88 = v51;
    v18 = (v51 + 64) >> 6;
    if (v50 < 0)
    {
      break;
    }

LABEL_17:
    v55 = a1;
    v56 = v6;
    v57 = a1;
    if (v6)
    {
LABEL_21:
      v10 = ((v56 - 1) & v56);
      v58 = *(*(v50 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));
      if (v58)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v18)
      {
        goto LABEL_27;
      }

      v56 = v49[v57];
      ++v55;
      if (v56)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v59 = sub_1DAED24BC();
    if (!v59)
    {
      break;
    }

    v105 = v59;
    swift_dynamicCast();
    v58 = v107[0];
    v57 = a1;
    v10 = v6;
    if (!v107[0])
    {
      break;
    }

LABEL_25:
    v107[0] = v58;
    sub_1DADBDBF8(aBlock, v107);

    a1 = v57;
    v6 = v10;
    if ((v50 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_27:
  sub_1DAD70B20(v50);

  v60 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity;
  v61 = v101;
  *&v101[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity] = aBlock[0];

  sub_1DAEB3B14(v62);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A960, &unk_1DAEDF100);
  *&v61[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection] = sub_1DAED100C();

  v63 = v90;
  *(v90 + 2) = *&v61[v60];

  v64 = v102;
  v65 = [v102 configurations];
  sub_1DAD674D4(0, &unk_1EE005588, 0x1E6994378);
  v66 = sub_1DAED1C1C();

  v67 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_configurationsByHostIdentifier;
  swift_beginAccess();
  *&v61[v67] = v66;

  v68 = v100;
  v69 = v98;
  v70 = v104;
  (*(v100 + 16))(v98, v99, v104);
  v71 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_systemEnvironment;
  swift_beginAccess();
  (*(v68 + 40))(&v61[v71], v69, v70);
  swift_endAccess();
  os_unfair_lock_unlock(*(v89 + 16));
  v72 = *&v61[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_hasReceivedInitializationPayload];

  os_unfair_lock_lock((v72 + 20));
  *(v72 + 16) = 1;
  os_unfair_lock_unlock((v72 + 20));

  v73 = swift_allocObject();
  v74 = v91;
  v73[2] = v61;
  v73[3] = v74;
  v73[4] = v63;
  v73[5] = v64;
  aBlock[4] = sub_1DAD7A9B8;
  aBlock[5] = v73;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_112_0;
  v75 = _Block_copy(aBlock);
  v76 = v61;

  v77 = v64;
  v78 = v92;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v105 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  v79 = v94;
  v80 = v97;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v78, v79, v75);
  _Block_release(v75);
  (*(v96 + 8))(v79, v80);
  (*(v93 + 8))(v78, v95);

  return result;
}

uint64_t sub_1DAD70B28()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD70B60()
{

  return swift_deallocObject();
}

double sub_1DAD70BB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

void sub_1DAD70C08()
{
  v70 = sub_1DAED0DDC();
  v1 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v79 = v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(v0 + 104);
  v71 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 80), v3);
  v4 = sub_1DAED11BC();
  if (v4)
  {
    v5 = v4;

    v7 = 0;
    v8 = sub_1DADC0624(v6);

    if (v8 >> 62)
    {
LABEL_27:
      v9 = sub_1DAED247C();
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_4:
        v64[1] = v5;
        v10 = 0;
        v11 = v8 & 0xC000000000000001;
        v69 = v8 & 0xFFFFFFFFFFFFFF8;
        v65 = (v1 + 8);
        v81 = MEMORY[0x1E69E7CC0];
        v12 = &selRef__registerSceneActionsHandlerArray_forKey_;
        v13 = &selRef__registerSceneActionsHandlerArray_forKey_;
        v68 = v8;
        v67 = v9;
        v66 = v8 & 0xC000000000000001;
        while (1)
        {
          if (v11)
          {
            v14 = MEMORY[0x1E127E1F0](v10, v8);
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v10 >= *(v69 + 16))
            {
              goto LABEL_26;
            }

            v14 = *(v8 + 8 * v10 + 32);
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          v80 = v15;
          v16 = v14;
          v1 = [v14 v12[371]];
          v17 = [v1 v13[271]];
          if (v17)
          {
            v5 = v17;
          }

          else
          {
            v18 = v1;
            v77 = v16;
            v19 = [v16 metrics];
            v20 = v79;
            v76 = v18;
            sub_1DAED0DAC();
            v21 = v71;
            sub_1DAD80BE4(0x6769666E6F63, 0xE600000000000000, v87);
            v22 = *(v21 + 56);
            v23 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
            v24 = *(v23 + 16);

            os_unfair_lock_lock(v24);
            sub_1DAD72328(v22, v20, 0x6769666E6F63, 0xE600000000000000, v85);
            if (v7)
            {

              os_unfair_lock_unlock(*(v23 + 16));
              __break(1u);
              return;
            }

            os_unfair_lock_unlock(*(v23 + 16));

            v25 = v88;
            v26 = __swift_project_boxed_opaque_existential_1(v87, v88);
            v75 = v64;
            v27 = *(v25 - 8);
            v28 = *(v27 + 64);
            v29 = MEMORY[0x1EEE9AC00](v26);
            v30 = v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
            v31 = *(v27 + 16);
            v31(v30, v29);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78 = 0;
            if (isUniquelyReferenced_nonNull_native)
            {
              v33 = v81;
            }

            else
            {
              isUniquelyReferenced_nonNull_native = sub_1DAD71488(0, v81[2] + 1, 1, v81);
              v33 = isUniquelyReferenced_nonNull_native;
            }

            v35 = v33[2];
            v34 = v33[3];
            if (v35 >= v34 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1DAD71488((v34 > 1), v35 + 1, 1, v33);
              v81 = isUniquelyReferenced_nonNull_native;
            }

            else
            {
              v81 = v33;
            }

            v36 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
            v37 = (v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
            (v31)(v37, v30, v25, v36);
            v38 = *v37;
            v74 = type metadata accessor for WidgetArchiveEntryAssertion(0);
            v83 = v74;
            v73 = sub_1DAD8878C(qword_1EE008420, type metadata accessor for WidgetArchiveEntryAssertion, &unk_1DAED7160);
            v84 = v73;
            *&v82 = v38;
            v39 = v81;
            v81[2] = v35 + 1;
            sub_1DAD657D8(&v82, &v39[5 * v35 + 4]);
            (*(v27 + 8))(v30, v25);
            v5 = v86;
            v40 = __swift_project_boxed_opaque_existential_1(v85, v86);
            v75 = v64;
            v41 = *(v5 - 1);
            v42 = *(v41 + 64);
            v43 = MEMORY[0x1EEE9AC00](v40);
            v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
            v45 = v64 - v44;
            v46 = *(v41 + 16);
            v46(v64 - v44, v43);
            v1 = v39[2];
            v47 = v39[3];
            v72 = (v1 + 1);
            if (v1 >= v47 >> 1)
            {
              v81 = sub_1DAD71488((v47 > 1), v1 + 1, 1, v81);
            }

            v48 = (*v65)(v79, v70);
            v49 = MEMORY[0x1EEE9AC00](v48);
            v50 = (v64 - v44);
            (v46)(v50, v45, v5, v49);
            v51 = *v50;
            v83 = v74;
            v84 = v73;
            v52 = v81;
            v81[2] = v72;
            v81 = v52;
            *&v82 = v51;
            sub_1DAD657D8(&v82, &v52[5 * v1 + 4]);
            (*(v41 + 8))(v45, v5);
            __swift_destroy_boxed_opaque_existential_1Tm(v85);
            __swift_destroy_boxed_opaque_existential_1Tm(v87);
            v8 = v68;
            v7 = v78;
            v9 = v67;
            v11 = v66;
            v12 = &selRef__registerSceneActionsHandlerArray_forKey_;
            v13 = &selRef__registerSceneActionsHandlerArray_forKey_;
          }

          ++v10;
          if (v80 == v9)
          {

            goto LABEL_29;
          }
        }
      }
    }

    v81 = MEMORY[0x1E69E7CC0];
LABEL_29:
    if (qword_1EE00AC58 != -1)
    {
      swift_once();
    }

    v53 = sub_1DAECEDEC();
    __swift_project_value_buffer(v53, qword_1EE011B70);
    v54 = sub_1DAECEDCC();
    v55 = sub_1DAED203C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134349056;
      *(v56 + 4) = v81[2];
      _os_log_impl(&dword_1DAD61000, v54, v55, "Acquired %{public}ld timeline and placeholder assertions.", v56, 0xCu);
      MEMORY[0x1E127F100](v56, -1, -1);
    }

    v57 = v71;
    v58 = *(v71 + 288);
    v59 = *(v58 + 16);

    os_unfair_lock_lock(v59);
    v60 = *(v57 + 296);
    *(v57 + 296) = v81;
    v61 = *(v58 + 16);

    os_unfair_lock_unlock(v61);

    v62 = *(v60 + 16);
    if (v62)
    {
      v63 = v60 + 32;
      do
      {
        sub_1DAD648F8(v63, v87);
        __swift_project_boxed_opaque_existential_1(v87, v88);
        sub_1DAED144C();
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        v63 += 40;
        --v62;
      }

      while (v62);
    }
  }
}

void *sub_1DAD71488(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A808, &qword_1DAEDED38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A810, &unk_1DAEDED40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1DAD715D0()
{
  result = qword_1EE009328[0];
  if (!qword_1EE009328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE009328);
  }

  return result;
}

unint64_t sub_1DAD7164C()
{
  result = qword_1EE005B08;
  if (!qword_1EE005B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097C0, &qword_1DAEDA2A0);
    sub_1DAE38EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B08);
  }

  return result;
}

unint64_t sub_1DAD716DC()
{
  result = qword_1EE005B20;
  if (!qword_1EE005B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097C8, &qword_1DAEDA448);
    sub_1DAD71798();
    sub_1DAD7305C(&qword_1EE00BF18, type metadata accessor for SystemURLActionViewModifier, &unk_1DAED909C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B20);
  }

  return result;
}

unint64_t sub_1DAD71798()
{
  result = qword_1EE0059A8;
  if (!qword_1EE0059A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097A8, &qword_1DAEDA288);
    sub_1DAD71850();
    sub_1DAD64B94(&qword_1EE0058F0, &qword_1ECC097B8, &qword_1DAEDA298, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0059A8);
  }

  return result;
}

unint64_t sub_1DAD71850()
{
  result = qword_1EE005AD0;
  if (!qword_1EE005AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097A0, &qword_1DAEDA280);
    sub_1DAD64B94(&qword_1EE0058F0, &qword_1ECC097B8, &qword_1DAEDA298, MEMORY[0x1E697FDF8]);
    sub_1DAD71948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AD0);
  }

  return result;
}

uint64_t sub_1DAD71908@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LiveWidgetEntryViewModel(0);
  result = sub_1DAECEE4C();
  *a2 = result;
  return result;
}

unint64_t sub_1DAD71948()
{
  result = qword_1EE00C098[0];
  if (!qword_1EE00C098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE00C098);
  }

  return result;
}

double sub_1DAD71A08(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43 = a4;
  v41 = a3;
  v49 = sub_1DAED09DC();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0A3C();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1DAED09CC();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_1DAED0A6C();
  v53 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v40 - v13;
  v40 = sub_1DAED09EC();
  v14 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DAECF8EC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_projectBox();
  swift_beginAccess();
  (*(v18 + 16))(v20, v21, v17);
  sub_1DAECEE6C();
  (*(v18 + 8))(v20, v17);
  v22 = v41;
  swift_beginAccess();
  aBlock[0] = *(v22 + 16);

  sub_1DAECEE6C();

  v23 = a1;
  v24 = [v43 configurations];
  sub_1DAD674D4(0, &unk_1EE005588, 0x1E6994378);
  v25 = sub_1DAED1C1C();

  aBlock[0] = v25;
  sub_1DAECEE6C();

  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v26 = v40;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E7F88], v40);
  v43 = sub_1DAED211C();
  (*(v14 + 8))(v16, v26);
  sub_1DAED0A4C();
  *v9 = 250;
  v27 = v44;
  v28 = v46;
  (*(v44 + 104))(v9, *MEMORY[0x1E69E7F38], v46);
  v29 = v42;
  sub_1DAED0A5C();
  (*(v27 + 8))(v9, v28);
  v30 = *(v53 + 8);
  v53 += 8;
  v31 = v45;
  v30(v11, v45);
  v32 = swift_allocObject();
  *(v32 + 16) = v23;
  aBlock[4] = sub_1DADC7DD4;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_118;
  v33 = _Block_copy(aBlock);
  v34 = v23;
  v35 = v47;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v54 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  v37 = v48;
  v36 = v49;
  sub_1DAED23CC();
  v38 = v43;
  MEMORY[0x1E127DD10](v29, v35, v37, v33);
  _Block_release(v33);

  (*(v52 + 8))(v37, v36);
  (*(v50 + 8))(v35, v51);
  v30(v29, v31);

  return result;
}

uint64_t type metadata accessor for InteractiveWidgetSetupViewModifier(uint64_t a1)
{
  result = qword_1EE00C268;
  if (!qword_1EE00C268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD72224(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DAECEDEC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAD722E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAD72328(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v103 = a4;
  v98 = a5;
  v9 = sub_1DAECEDEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1DAED0DDC();
  v12 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105 - 8);
  v92 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087A0, &unk_1DAED71E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v84 - v17;
  v100 = sub_1DAED18CC();
  v107 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v91 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v102 = &v84 - v23;
  v24 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v93 = v24;
  v106 = a1;
  v25 = *(a1 + v24);
  v26 = *(v25 + 16);
  v96 = a3;
  if (v26)
  {

    v27 = sub_1DAD805B0(a2);
    if (v28)
    {
      v97 = v5;
      v29 = *(*(v25 + 56) + 8 * v27);
      swift_retain_n();

      goto LABEL_14;
    }
  }

  v88 = v10;
  v89 = v9;
  v99 = v12;
  v30 = (v106 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider);
  __swift_project_boxed_opaque_existential_1((v106 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider), *(v106 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider + 24));
  v104 = a2;
  v31 = sub_1DAED0DBC();
  v32 = [v31 extensionIdentity];

  sub_1DAED134C();
  if (v5)
  {

    v33 = v107;
    v34 = v100;
    (*(v107 + 56))(v18, 1, 1, v100);
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_1DAED133C();
    v35 = (*(v33 + 48))(v18, 1, v34);
    v97 = 0;
    if (v35 != 1)
    {
      sub_1DAD64398(v18, &qword_1ECC087A0, &unk_1DAED71E0);
    }

    v36 = v104;
    v37 = v99;
    v38 = v107;
    v39 = v102;
  }

  else
  {
    v97 = 0;

    v38 = v107;
    v34 = v100;
    (*(v107 + 56))(v18, 0, 1, v100);
    v39 = v102;
    (*(v38 + 32))(v102, v18, v34);
    v36 = v104;
    v37 = v99;
  }

  v87 = sub_1DAED0C7C();
  v40 = *(v37 + 16);
  v84 = v37 + 16;
  v85 = v40;
  v40(v101, v36, v105);
  v41 = v90;
  (*(v38 + 16))(v90, v39, v34);
  v42 = v106;
  __swift_project_boxed_opaque_existential_1((v106 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory), *(v106 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory + 24));
  v43 = sub_1DAED0DBC();
  v44 = [v43 extensionIdentity];

  sub_1DAED12FC();
  sub_1DAD648F8(v42 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore_descriptorObserver, v108);
  sub_1DAED0C2C();
  v45 = sub_1DAED0C1C();
  type metadata accessor for WidgetArchiveEntry(0);
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  v47 = OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_archiveLastModifiedDate;
  v48 = sub_1DAECDCEC();
  (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
  *(v46 + OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_assertions) = MEMORY[0x1E69E7CC0];
  *(v46 + 16) = v45;
  v49 = v45;
  v87 = v46;

  v86 = v49;
  sub_1DAED0B9C();
  __swift_project_boxed_opaque_existential_1((v42 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor), *(v42 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24));
  v50 = v91;
  sub_1DAED127C();
  sub_1DAD722E0(&qword_1EE00AAF0, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
  LOBYTE(v45) = sub_1DAED1C9C();
  v51 = *(v107 + 8);
  v107 += 8;
  v52 = v50;
  v53 = v105;
  v51(v52, v34);
  v54 = v41;
  v55 = v104;
  v91 = v51;
  v51(v54, v34);
  swift_beginAccess();
  *(v46 + 24) = v45 & 1;
  v56 = v92;
  v85(v92, v55, v53);
  v57 = sub_1DAECEDCC();
  v58 = sub_1DAED203C();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v108[0] = v60;
    *v59 = 136446210;
    v61 = sub_1DAED0D8C();
    v63 = v62;
    v64 = v99;
    (*(v99 + 8))(v56, v53);
    v65 = sub_1DAD6482C(v61, v63, v108);
    v66 = v104;

    *(v59 + 4) = v65;
    _os_log_impl(&dword_1DAD61000, v57, v58, "Adding entry: %{public}s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x1E127F100](v60, -1, -1);
    MEMORY[0x1E127F100](v59, -1, -1);

    v12 = v64;
    v9 = v89;
    v10 = v88;
  }

  else
  {

    v12 = v99;
    (*(v99 + 8))(v56, v53);
    v9 = v89;
    v10 = v88;
    v66 = v55;
  }

  v67 = v93;
  v68 = v106;
  swift_beginAccess();
  v29 = v87;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v109 = *(v68 + v67);
  *(v68 + v67) = 0x8000000000000000;
  sub_1DAD7FBFC(v29, v66, isUniquelyReferenced_nonNull_native);
  *(v68 + v67) = v109;
  swift_endAccess();

  (v91)(v102, v100);
  a2 = v66;
LABEL_14:
  v70 = v106;
  v71 = sub_1DAD80684(a2);
  v72 = v94;
  (*(v10 + 16))(v94, v70 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__logger, v9, v71);
  v107 = type metadata accessor for WidgetArchiveEntryAssertion(0);
  v73 = swift_allocObject();
  v104 = OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_assertion;
  *(v73 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_assertion) = 0;
  *(v73 + 16) = v29;
  (*(v10 + 32))(v73 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v72, v9);
  v74 = (v73 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_reason);
  v75 = v103;
  *v74 = v96;
  v74[1] = v75;
  v102 = sub_1DAED0D5C();
  v76 = swift_allocObject();
  swift_weakInit();
  v77 = v101;
  v78 = v105;
  (*(v12 + 16))(v101, a2, v105);
  v79 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v80 = swift_allocObject();
  *(v80 + 2) = v70;
  *(v80 + 3) = v29;
  *(v80 + 4) = v76;
  (*(v12 + 32))(&v80[v79], v77, v78);
  swift_retain_n();

  *(v73 + v104) = sub_1DAED0D6C();

  v81 = OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_assertions;
  swift_beginAccess();

  MEMORY[0x1E127DAD0](v82);
  if (*((*(v29 + v81) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v29 + v81) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DAED1E9C();
  }

  sub_1DAED1EBC();
  swift_endAccess();

  v83 = v98;
  v98[3] = v107;
  v83[4] = sub_1DAD722E0(&qword_1EE008418, type metadata accessor for WidgetArchiveEntryAssertion, &unk_1DAED7188);

  *v83 = v73;
}

uint64_t sub_1DAD72F50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DAD72F88()
{
  v1 = sub_1DAED0DDC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DAD7305C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD730A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAD7312C(uint64_t a1, uint64_t a2)
{
  v281 = a2;
  v3 = sub_1DAED0DDC();
  v269 = *(v3 - 8);
  v270 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v265 = &v241 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v258 = &v241 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v252 = &v241 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v246 = &v241 - v10;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B0, qword_1DAEDCBF0);
  MEMORY[0x1EEE9AC00](v251);
  v253 = &v241 - v11;
  v12 = sub_1DAECDCEC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v250 = &v241 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v268 = &v241 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v256 = &v241 - v18;
  v19 = sub_1DAECDBFC();
  v260 = *(v19 - 8);
  v261 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v264 = &v241 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v249 = &v241 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v272 = &v241 - v24;
  v25 = sub_1DAED18CC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v247 = &v241 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v262 = &v241 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v277 = &v241 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087A0, &unk_1DAED71E0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v241 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v241 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v248 = &v241 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v254 = &v241 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v255 = &v241 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v257 = (&v241 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v241 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v295 = 0;
  v293 = 0u;
  v294 = 0u;
  v292 = 0;
  v290 = 0u;
  v291 = 0u;
  v271 = v13;
  v50 = *(v13 + 56);
  v289 = 0uLL;
  v280 = &v241 - v51;
  v50();
  v276 = v48;
  v278 = v12;
  v266 = v50;
  v267 = (v13 + 56);
  (v50)(v48, 1, 1, v12);
  v263 = v26;
  v52 = v26[7];
  v273 = v37;
  v52(v37, 1, 1, v25);
  v274 = v34;
  v259 = v25;
  v52(v34, 1, 1, v25);
  v275 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock;
  v53 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v54 = v53[2];

  os_unfair_lock_lock(v54);
  v55 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v279 = a1;
  v56 = *(a1 + v55);
  v57 = v281;
  if (*(v56 + 16))
  {

    v58 = sub_1DAD805B0(v57);
    if (v59)
    {
      v243 = v53;
      v244 = v55;
      v60 = *(*(v56 + 56) + 8 * v58);

      v61 = v276;
      sub_1DAD64398(v276, &qword_1ECC07CE8, &qword_1DAED6F60);

      v62 = OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_archiveLastModifiedDate;
      swift_beginAccess();
      sub_1DAD6495C(v60 + v62, v61, &qword_1ECC07CE8, &qword_1DAED6F60);
      swift_beginAccess();
      v63 = *(v60 + 16);
      sub_1DAED0C5C();

      sub_1DAD64398(&v293, &unk_1ECC08880, &unk_1DAED6F50);
      v293 = v284;
      v294 = v285;
      v295 = v286;
      __swift_project_boxed_opaque_existential_1((v279 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor), *(v279 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24));
      v242 = v52;
      v64 = v277;
      sub_1DAED127C();
      v245 = v60;
      v65 = *(v60 + 16);
      v66 = v262;
      sub_1DAED0B9C();

      v67 = v273;
      sub_1DAD64398(v273, &qword_1ECC087A0, &unk_1DAED71E0);
      v68 = v263[2];
      v69 = v259;
      v68(v67, v64, v259);
      v70 = v67;
      v71 = v274;
      v72 = v242;
      v242(v70, 0, 1, v69);
      sub_1DAD64398(v71, &qword_1ECC087A0, &unk_1DAED71E0);
      v68(v71, v66, v69);
      v72(v71, 0, 1, v69);
      sub_1DAD722E0(&qword_1EE00AAF0, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
      if (sub_1DAED1C9C())
      {
        *&v284 = 0;
        *(&v284 + 1) = 0xE000000000000000;
        sub_1DAED256C();
        MEMORY[0x1E127DA50](91, 0xE100000000000000);
        v73 = sub_1DAED0D8C();
        MEMORY[0x1E127DA50](v73);

        MEMORY[0x1E127DA50](0xD00000000000003DLL, 0x80000001DAEE18F0);
        sub_1DAD722E0(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
        v74 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v74);

        MEMORY[0x1E127DA50](0xD00000000000004CLL, 0x80000001DAEE1930);
        v75 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v75);

        MEMORY[0x1E127DA50](41, 0xE100000000000000);
        v76 = v284;
        v77 = *(v245 + 16);

        sub_1DAED0BCC();

        v78 = sub_1DAECEDCC();
        v79 = sub_1DAED201C();

        v80 = v78;
        if (os_log_type_enabled(v78, v79))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *&v284 = v82;
          *v81 = 136446210;
          v83 = sub_1DAD6482C(v76, *(&v76 + 1), &v284);

          *(v81 + 4) = v83;
          _os_log_impl(&dword_1DAD61000, v80, v79, "%{public}s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v82);
          MEMORY[0x1E127F100](v82, -1, -1);
          MEMORY[0x1E127F100](v81, -1, -1);
        }

        else
        {
        }

        v102 = v263[1];
        v102(v66, v69);
        v102(v64, v69);
        os_unfair_lock_unlock(v243[2]);

LABEL_16:
        sub_1DAD64398(v276, &qword_1ECC07CE8, &qword_1DAED6F60);
        sub_1DAD64398(&v290, &unk_1ECC08880, &unk_1DAED6F50);
        sub_1DAD64398(&v293, &unk_1ECC08880, &unk_1DAED6F50);
        v103 = &qword_1ECC087A0;
        v104 = &unk_1DAED71E0;
        sub_1DAD64398(v274, &qword_1ECC087A0, &unk_1DAED71E0);
        v105 = v273;
LABEL_39:
        sub_1DAD64398(v105, v103, v104);
        sub_1DAD64398(v280, &qword_1ECC07CE8, &qword_1DAED6F60);
        return;
      }

      v84 = v263[1];
      v84(v66, v69);
      v84(v64, v69);
      v53 = v243;
      v55 = v244;
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(v53[2]);

  v85 = v279;
  v86 = *(v279 + 24);
  ObjectType = swift_getObjectType();
  sub_1DAED0DEC();
  v277 = 0;
  v262 = ObjectType;
  v88 = v257;
  sub_1DAECDBEC();
  sub_1DAD84E40(v88, v280);
  sub_1DAD6495C(&v293, &v284, &unk_1ECC08880, &unk_1DAED6F50);
  v89 = *(&v285 + 1);
  sub_1DAD64398(&v284, &unk_1ECC08880, &unk_1DAED6F50);
  if (v89)
  {
    v90 = v255;
    sub_1DAD6495C(v276, v255, &qword_1ECC07CE8, &qword_1DAED6F60);
    v91 = v271;
    v92 = v271 + 48;
    v93 = v278;
    v257 = *(v271 + 48);
    if (v257(v90, 1) == 1)
    {
      sub_1DAD64398(v90, &qword_1ECC07CE8, &qword_1DAED6F60);
      goto LABEL_21;
    }

    v244 = v55;
    v245 = v86;
    v94 = v256;
    v95 = v93;
    v242 = *(v91 + 32);
    (v242)(v256, v90, v93);
    v96 = *(v91 + 16);
    v97 = v254;
    v255 = v91 + 16;
    v243 = v96;
    (v96)(v254, v94, v93);
    (v266)(v97, 0, 1, v93);
    v98 = *(v251 + 48);
    v99 = v253;
    sub_1DAD6495C(v97, v253, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD6495C(v280, v99 + v98, &qword_1ECC07CE8, &qword_1DAED6F60);
    v100 = v257;
    v101 = v257;
    if ((v257)(v99, 1, v95) == 1)
    {
      sub_1DAD64398(v97, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (v100(v99 + v98, 1, v95) == 1)
      {
        v251 = v92;
        sub_1DAD64398(v99, &qword_1ECC07CE8, &qword_1DAED6F60);
        goto LABEL_45;
      }
    }

    else
    {
      v106 = v98;
      v107 = v248;
      sub_1DAD6495C(v99, v248, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (v101(v99 + v106, 1, v95) != 1)
      {
        v251 = v92;
        v181 = v99 + v106;
        v182 = v268;
        (v242)(v268, v181, v95);
        sub_1DAD722E0(&qword_1EE00BCF8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v183 = v95;
        v184 = sub_1DAED1CAC();
        v185 = v107;
        v108 = *(v271 + 8);
        v108(v182, v183);
        sub_1DAD64398(v254, &qword_1ECC07CE8, &qword_1DAED6F60);
        v108(v185, v183);
        sub_1DAD64398(v253, &qword_1ECC07CE8, &qword_1DAED6F60);
        v85 = v279;
        if (v184)
        {
LABEL_45:
          v186 = v269;
          v187 = v246;
          (*(v269 + 16))(v246, v281, v270);
          (v243)(v250, v256, v278);
          v189 = v260;
          v188 = v261;
          v190 = v249;
          v191 = v272;
          (*(v260 + 16))(v249, v272, v261);
          v192 = sub_1DAECEDCC();
          v193 = sub_1DAED203C();
          if (os_log_type_enabled(v192, v193))
          {
            LODWORD(v281) = v193;
            v194 = swift_slowAlloc();
            v279 = swift_slowAlloc();
            v282[0] = v279;
            *v194 = 136446978;
            v195 = sub_1DAED0D8C();
            v197 = v196;
            (*(v186 + 8))(v187, v270);
            v198 = sub_1DAD6482C(v195, v197, v282);

            *(v194 + 4) = v198;
            *(v194 + 12) = 2082;
            sub_1DAD722E0(&qword_1EE00BCF0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
            v199 = v250;
            v200 = v278;
            v201 = sub_1DAED287C();
            v203 = v202;
            v204 = *(v271 + 8);
            v204(v199, v200);
            v205 = sub_1DAD6482C(v201, v203, v282);

            *(v194 + 14) = v205;
            *(v194 + 22) = 2082;
            v206 = v280;
            swift_beginAccess();
            v207 = (v257)(v206, 1, v200);
            v277 = v204;
            if (v207)
            {
              v208 = 7104878;
              v209 = 0xE300000000000000;
              v210 = v261;
            }

            else
            {
              v229 = v268;
              (v243)(v268, v206, v200);
              v230 = sub_1DAECDC2C();
              v209 = v231;
              v232 = v229;
              v210 = v261;
              v204(v232, v200);
              v208 = v230;
            }

            v233 = sub_1DAD6482C(v208, v209, v282);

            *(v194 + 24) = v233;
            *(v194 + 32) = 2082;
            sub_1DAD722E0(&qword_1EE00BD10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v234 = v249;
            v235 = sub_1DAED287C();
            v237 = v236;
            v238 = *(v260 + 8);
            v238(v234, v210);
            v239 = sub_1DAD6482C(v235, v237, v282);

            *(v194 + 34) = v239;
            _os_log_impl(&dword_1DAD61000, v192, v281, "Ignoring reloading contents for key because it's the exact same as we already have loaded: %{public}s (cachedLastModifiedDate: %{public}s, lastModifiedDate: %{public}s, url: %{public}s", v194, 0x2Au);
            v240 = v279;
            swift_arrayDestroy();
            MEMORY[0x1E127F100](v240, -1, -1);
            MEMORY[0x1E127F100](v194, -1, -1);

            (v277)(v256, v278);
            v238(v272, v210);
          }

          else
          {

            v226 = *(v189 + 8);
            v226(v190, v188);
            v227 = *(v271 + 8);
            v228 = v278;
            v227(v250, v278);
            (*(v186 + 8))(v187, v270);
            v227(v256, v228);
            v226(v191, v188);
          }

          goto LABEL_16;
        }

        goto LABEL_20;
      }

      sub_1DAD64398(v254, &qword_1ECC07CE8, &qword_1DAED6F60);
      (*(v271 + 8))(v107, v95);
    }

    sub_1DAD64398(v99, &qword_1ECC087B0, qword_1DAEDCBF0);
    v108 = *(v271 + 8);
    v85 = v279;
LABEL_20:
    v55 = v244;
    v108(v256, v278);
  }

LABEL_21:
  v109 = v281;
  v110 = v277;
  sub_1DAED0DFC();
  if (!v110)
  {
    v267 = 0;
    sub_1DAD64398(&v290, &unk_1ECC08880, &unk_1DAED6F50);
    v290 = v284;
    v291 = v285;
    v292 = v286;
    v163 = v269;
    v162 = v270;
    v164 = v252;
    (*(v269 + 16))(v252, v109, v270);
    v165 = sub_1DAECEDCC();
    v166 = sub_1DAED203C();
    v167 = os_log_type_enabled(v165, v166);
    v168 = v278;
    if (v167)
    {
      LODWORD(v277) = v166;
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v283 = v170;
      *v169 = 136446722;
      v171 = sub_1DAED0D8C();
      v173 = v172;
      (*(v163 + 8))(v164, v162);
      v174 = sub_1DAD6482C(v171, v173, &v283);

      *(v169 + 4) = v174;
      *(v169 + 12) = 2082;
      v175 = v274;
      swift_beginAccess();
      v176 = v263;
      v177 = v263[6];
      v178 = v259;
      if (v177(v175, 1, v259))
      {
        v179 = 0xE300000000000000;
        v180 = 7104878;
      }

      else
      {
        v211 = v176[2];
        v270 = v170;
        v212 = v247;
        v211(v247, v175, v178);
        v180 = sub_1DAED189C();
        v179 = v213;
        v214 = v212;
        v170 = v270;
        (v176[1])(v214, v178);
      }

      v215 = sub_1DAD6482C(v180, v179, &v283);

      *(v169 + 14) = v215;
      *(v169 + 22) = 2082;
      v216 = v273;
      swift_beginAccess();
      if (v177(v216, 1, v178))
      {
        v217 = v216;
        v218 = 0xE300000000000000;
        v130 = v278;
        v158 = v267;
        v219 = 7104878;
      }

      else
      {
        v220 = v263;
        v221 = v247;
        (v263[2])(v247, v216, v178);
        v222 = v216;
        v219 = sub_1DAED189C();
        v218 = v223;
        v224 = v221;
        v217 = v222;
        (v220[1])(v224, v178);
        v130 = v278;
        v158 = v267;
      }

      v225 = sub_1DAD6482C(v219, v218, &v283);

      *(v169 + 24) = v225;
      _os_log_impl(&dword_1DAD61000, v165, v277, "Content load successful for key: %{public}s with data protection level of entry [%{public}s] (system protection level: %{public}s)", v169, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v170, -1, -1);
      MEMORY[0x1E127F100](v169, -1, -1);

      (*(v260 + 8))(v272, v261);
      sub_1DAD64398(v276, &qword_1ECC07CE8, &qword_1DAED6F60);
      sub_1DAD64398(v274, &qword_1ECC087A0, &unk_1DAED71E0);
      sub_1DAD64398(v217, &qword_1ECC087A0, &unk_1DAED71E0);
      v85 = v279;
    }

    else
    {

      (*(v163 + 8))(v164, v162);
      (*(v260 + 8))(v272, v261);
      sub_1DAD64398(v276, &qword_1ECC07CE8, &qword_1DAED6F60);
      sub_1DAD64398(v274, &qword_1ECC087A0, &unk_1DAED71E0);
      sub_1DAD64398(v273, &qword_1ECC087A0, &unk_1DAED71E0);
      v158 = v267;
      v130 = v168;
    }

    goto LABEL_37;
  }

  (*(v260 + 8))(v272, v261);
  sub_1DAD64398(v276, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD64398(v274, &qword_1ECC087A0, &unk_1DAED71E0);
  sub_1DAD64398(v273, &qword_1ECC087A0, &unk_1DAED71E0);
  v277 = v110;
  v111 = v278;
  v112 = v280;
  sub_1DAD64398(v280, &qword_1ECC07CE8, &qword_1DAED6F60);
  (v266)(v112, 1, 1, v111);
  v113 = *(v85 + v275);
  v114 = *(v113 + 16);

  os_unfair_lock_lock(v114);
  v115 = *(v85 + v55);
  if (!*(v115 + 16))
  {
    goto LABEL_26;
  }

  v116 = sub_1DAD805B0(v281);
  if ((v117 & 1) == 0)
  {

LABEL_26:
    v119 = 0;
    goto LABEL_27;
  }

  v118 = *(*(v115 + 56) + 8 * v116);

  v119 = *(v118 + 25);

LABEL_27:
  os_unfair_lock_unlock(*(v113 + 16));

  swift_getErrorValue();
  v120 = sub_1DADBBC8C(v287, v288);
  v122 = v121;
  v123 = v264;
  sub_1DAED0DEC();
  v267 = 0;
  *&v284 = 0;
  *(&v284 + 1) = 0xE000000000000000;
  sub_1DAED256C();

  *&v284 = 0x727520676E697355;
  *(&v284 + 1) = 0xEB0000000060206CLL;
  sub_1DAD722E0(&qword_1EE00BD10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v124 = v261;
  v125 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v125);

  MEMORY[0x1E127DA50](0x202E2E2E2060, 0xE600000000000000);
  MEMORY[0x1E127DA50](v120, v122);

  v126 = *(&v284 + 1);
  v276 = v284;
  (*(v260 + 8))(v123, v124);
  v127 = v265;
  v128 = v269;
  v129 = *(v269 + 16);
  v130 = v278;
  if (v119)
  {
    v131 = v270;
    v129(v265, v281, v270);

    v132 = sub_1DAECEDCC();
    v133 = sub_1DAED201C();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = v131;
      v135 = v127;
      v136 = v128;
      v137 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      *&v284 = v274;
      *v137 = 136446466;
      sub_1DAD722E0(&qword_1EE0057D0, MEMORY[0x1E6993D98], MEMORY[0x1E6993DB0]);
      v138 = sub_1DAED287C();
      v140 = v139;
      (*(v136 + 8))(v135, v134);
      v141 = sub_1DAD6482C(v138, v140, &v284);

      *(v137 + 4) = v141;
      *(v137 + 12) = 2082;
      v142 = v276;
      *(v137 + 14) = sub_1DAD6482C(v276, v126, &v284);
      _os_log_impl(&dword_1DAD61000, v132, v133, "Content load failed: unable to find or unarchive file for key: %{public}s. The session may still produce one shortly. Error: %{public}s", v137, 0x16u);
      v143 = v274;
      swift_arrayDestroy();
      v130 = v278;
      MEMORY[0x1E127F100](v143, -1, -1);
      MEMORY[0x1E127F100](v137, -1, -1);
    }

    else
    {

      (*(v128 + 8))(v127, v131);
      v142 = v276;
    }

    *&v284 = 0;
    *(&v284 + 1) = 0xE000000000000000;
    sub_1DAED256C();

    *&v284 = 0xD000000000000030;
    *(&v284 + 1) = 0x80000001DAEE18B0;
  }

  else
  {
    v144 = v278;
    v145 = v258;
    v146 = v270;
    v129(v258, v281, v270);

    v147 = sub_1DAECEDCC();
    v148 = sub_1DAED203C();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = v145;
      v151 = swift_slowAlloc();
      *&v284 = v151;
      *v149 = 136446466;
      v152 = sub_1DAED0D8C();
      v154 = v153;
      (*(v128 + 8))(v150, v270);
      v155 = sub_1DAD6482C(v152, v154, &v284);

      *(v149 + 4) = v155;
      *(v149 + 12) = 2082;
      v142 = v276;
      *(v149 + 14) = sub_1DAD6482C(v276, v126, &v284);
      _os_log_impl(&dword_1DAD61000, v147, v148, "Content load failed: initial search for an existing archive was not found; session will be creating the content on demand: %{public}s: %{public}s", v149, 0x16u);
      swift_arrayDestroy();
      v156 = v278;
      MEMORY[0x1E127F100](v151, -1, -1);
      v157 = v149;
      v130 = v156;
      MEMORY[0x1E127F100](v157, -1, -1);
    }

    else
    {

      (*(v128 + 8))(v145, v146);
      v142 = v276;
      v130 = v144;
    }

    *&v284 = 0;
    *(&v284 + 1) = 0xE000000000000000;
    sub_1DAED256C();
    MEMORY[0x1E127DA50](0xD000000000000031, 0x80000001DAEE1870);
  }

  MEMORY[0x1E127DA50](v142, v126);

  v289 = v284;
  v85 = v279;
  v158 = v267;
LABEL_37:
  v159 = *(v85 + v275);
  v160 = *(v159 + 16);

  os_unfair_lock_lock(v160);
  sub_1DAD85040(v85, v281, &v290, v280, &v289);
  if (!v158)
  {

    os_unfair_lock_unlock(*(v159 + 16));

    v161 = v268;
    sub_1DAECDCDC();
    sub_1DAD85694(v161);
    (*(v271 + 8))(v161, v130);
    v103 = &unk_1ECC08880;
    v104 = &unk_1DAED6F50;
    sub_1DAD64398(&v290, &unk_1ECC08880, &unk_1DAED6F50);
    v105 = &v293;
    goto LABEL_39;
  }

  os_unfair_lock_unlock(*(v159 + 16));
  __break(1u);
}

double sub_1DAD751C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_1DAD75204(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1DAD6495C(a1, &v10 - v5, &unk_1ECC09EC0, &qword_1DAED7970);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL;
  swift_beginAccess();
  sub_1DAD752E0(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1DAD752E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD75350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_1DAECDBFC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v40 = a1;
  sub_1DAD6495C(a1, v11, &unk_1ECC09EC0, &qword_1DAED7970);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DAD64398(v11, &unk_1ECC09EC0, &qword_1DAED7970);
    if (qword_1EE00BE80 != -1)
    {
      swift_once();
    }

    v19 = sub_1DAECEDEC();
    __swift_project_value_buffer(v19, qword_1EE011C08);
    v20 = sub_1DAECEDCC();
    v21 = sub_1DAED203C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DAD61000, v20, v21, "WidgetURLPreferenceKey has no url", v22, 2u);
      MEMORY[0x1E127F100](v22, -1, -1);
    }
  }

  else
  {
    v39 = a2;
    (*(v13 + 32))(v18, v11, v12);
    if (qword_1EE00BE80 != -1)
    {
      swift_once();
    }

    v23 = sub_1DAECEDEC();
    __swift_project_value_buffer(v23, qword_1EE011C08);
    (*(v13 + 16))(v15, v18, v12);
    v24 = sub_1DAECEDCC();
    v25 = sub_1DAED203C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v26;
      v38 = swift_slowAlloc();
      v42 = v38;
      *v26 = 136642819;
      sub_1DADB17F4(&qword_1EE00BD10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v27 = sub_1DAED287C();
      v29 = v28;
      v30 = *(v13 + 8);
      v30(v15, v12);
      v31 = sub_1DAD6482C(v27, v29, &v42);

      v32 = v37;
      *(v37 + 1) = v31;
      v33 = v32;
      _os_log_impl(&dword_1DAD61000, v24, v25, "Assigning url from preference key change: %{sensitive}s", v32, 0xCu);
      v34 = v38;
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1E127F100](v34, -1, -1);
      MEMORY[0x1E127F100](v33, -1, -1);

      v30(v18, v12);
    }

    else
    {

      v35 = *(v13 + 8);
      v35(v15, v12);
      v35(v18, v12);
    }
  }

  sub_1DAD6495C(v40, v8, &unk_1ECC09EC0, &qword_1DAED7970);
  sub_1DAD6495C(v8, v41, &unk_1ECC09EC0, &qword_1DAED7970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80);
  sub_1DAED088C();
  return sub_1DAD64398(v8, &unk_1ECC09EC0, &qword_1DAED7970);
}

void sub_1DAD758B4()
{
  v1 = v0;
  v2 = type metadata accessor for LiveWidgetEntryView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = *(v0 + 8);
  if (*(v15 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce) != 1 || *(v15 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) == 1)
  {
    v37[0] = 1;
    sub_1DAD8EC1C(v37);
  }

  v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v15 + v16, v14, &unk_1ECC07D30, &unk_1DAED57E0);
  v17 = sub_1DAD75EB4();
  sub_1DAD64398(v14, &unk_1ECC07D30, &unk_1DAED57E0);
  v35 = *(v1 + 16);
  v36 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097E8, &qword_1DAEDA4C0);
  sub_1DAED078C();
  sub_1DAD76078(v1, v7);
  sub_1DAD76078(v1, v4);
  v18 = sub_1DAECEDCC();
  v19 = sub_1DAED203C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136446466;
    v22 = *(v7 + 1);

    sub_1DAD760DC(v7, type metadata accessor for LiveWidgetEntryView);
    v23 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
    v24 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

    v25 = sub_1DAD6482C(v23, v24, &v36);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    v26 = *(v4 + 1);
    v27 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v26 + v27, v11, &unk_1ECC07D30, &unk_1DAED57E0);
    v28 = v34;
    sub_1DAD6495C(v11, v34, &unk_1ECC07D30, &unk_1DAED57E0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1DAD64398(v11, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD760DC(v4, type metadata accessor for LiveWidgetEntryView);
        sub_1DAD64398(v28, &unk_1ECC07D30, &unk_1DAED57E0);
        v30 = 0xEB00000000726564;
        v31 = 0x6C6F686563616C50;
      }

      else
      {
        sub_1DAD64398(v28, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD64398(v11, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD760DC(v4, type metadata accessor for LiveWidgetEntryView);
        v30 = 0xE500000000000000;
        v31 = 0x7974706D45;
      }
    }

    else
    {
      sub_1DAD64398(v11, &unk_1ECC07D30, &unk_1DAED57E0);
      sub_1DAD760DC(v4, type metadata accessor for LiveWidgetEntryView);
      sub_1DAD64398(v28, &unk_1ECC07D30, &unk_1DAED57E0);
      v30 = 0xE400000000000000;
      v31 = 1702259020;
    }

    v32 = sub_1DAD6482C(v31, v30, &v36);

    *(v20 + 14) = v32;
    _os_log_impl(&dword_1DAD61000, v18, v19, "[%{public}s] Cached [%{public}s] view assigned.", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v21, -1, -1);
    MEMORY[0x1E127F100](v20, -1, -1);
  }

  else
  {

    sub_1DAD760DC(v4, type metadata accessor for LiveWidgetEntryView);
    sub_1DAD760DC(v7, type metadata accessor for LiveWidgetEntryView);
  }
}

uint64_t type metadata accessor for _RootContentViewModel(uint64_t a1)
{
  result = qword_1EE006B80;
  if (!qword_1EE006B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LiveWidgetEntryView(uint64_t a1)
{
  result = qword_1EE009318;
  if (!qword_1EE009318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DebugOverlayObserver(uint64_t a1)
{
  result = qword_1EE006D70;
  if (!qword_1EE006D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD75EB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097F0, &qword_1DAEDA4C8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - v3);
  v5 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1DAD6495C(v1, &v13 - v9, &unk_1ECC07D30, &unk_1DAED57E0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    return *v10;
  }

  sub_1DAD79914(v10, v7, type metadata accessor for DefaultWidgetLiveViewEntry);
  DefaultWidgetLiveViewEntry.view.getter(v4);
  sub_1DADB6E28();
  v11 = sub_1DAED087C();
  sub_1DAD760DC(v7, type metadata accessor for DefaultWidgetLiveViewEntry);
  return v11;
}

uint64_t sub_1DAD76078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveWidgetEntryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD760DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LiveWidgetEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v213 = a1;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09688, &qword_1DAED9E58);
  MEMORY[0x1EEE9AC00](v211);
  v212 = &v165 - v2;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09690, &qword_1DAED9E60);
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v165 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v208 = &v165 - v5;
  v6 = type metadata accessor for DebugInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v207 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for LiveWidgetEntryView(0);
  v204 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v216 = v8;
  v205 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1DAED0DDC();
  v199 = *(v200 - 1);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v173 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v165 - v13;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09698, &qword_1DAED9E68);
  MEMORY[0x1EEE9AC00](v166);
  v16 = &v165 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096A0, &qword_1DAED9E70);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v165 - v19;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096A8, &qword_1DAED9E78) - 8;
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v165 - v21;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096B0, &qword_1DAED9E80) - 8;
  MEMORY[0x1EEE9AC00](v171);
  v168 = &v165 - v22;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096B8, &qword_1DAED9E88) - 8;
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v165 - v23;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096C0, &qword_1DAED9E90) - 8;
  MEMORY[0x1EEE9AC00](v175);
  v174 = &v165 - v24;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096C8, &qword_1DAED9E98) - 8;
  MEMORY[0x1EEE9AC00](v177);
  v165 = &v165 - v25;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096D0, &qword_1DAED9EA0);
  MEMORY[0x1EEE9AC00](v178);
  v180 = &v165 - v26;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096D8, &qword_1DAED9EA8);
  MEMORY[0x1EEE9AC00](v179);
  v182 = &v165 - v27;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096E0, &qword_1DAED9EB0);
  MEMORY[0x1EEE9AC00](v181);
  v215 = &v165 - v28;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096E8, &qword_1DAED9EB8);
  MEMORY[0x1EEE9AC00](v184);
  v185 = &v165 - v29;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096F0, &qword_1DAED9EC0);
  MEMORY[0x1EEE9AC00](v183);
  v187 = &v165 - v30;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096F8, &qword_1DAED9EC8);
  MEMORY[0x1EEE9AC00](v186);
  v189 = &v165 - v31;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09700, &qword_1DAED9ED0);
  MEMORY[0x1EEE9AC00](v188);
  v191 = &v165 - v32;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09708, &qword_1DAED9ED8);
  MEMORY[0x1EEE9AC00](v190);
  v194 = &v165 - v33;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09710, &qword_1DAED9EE0);
  MEMORY[0x1EEE9AC00](v193);
  v195 = &v165 - v34;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09718, &qword_1DAED9EE8);
  MEMORY[0x1EEE9AC00](v192);
  v196 = &v165 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09720, &qword_1DAED9EF0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v197 = (&v165 - v37);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09728, &qword_1DAED9EF8);
  MEMORY[0x1EEE9AC00](v201);
  v203 = &v165 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09730, &unk_1DAED9F00);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v202 = &v165 - v40;
  v221 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084C8, &qword_1DAED68A8);
  sub_1DAED077C();
  sub_1DAD78018();
  sub_1DAD78F54();
  KeyPath = swift_getKeyPath();
  v42 = *(v1 + 8);
  v176 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(v42 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v221);
  v43 = v222;
  v44 = v223;
  __swift_project_boxed_opaque_existential_1(&v221, v222);
  v45 = (*(v44 + 16))(v43, v44);
  v46 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v221);
  v47 = &v16[*(v166 + 36)];
  *v47 = KeyPath;
  v47[1] = v46;
  v48 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v42 + v48, v14, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAE386F4();
  sub_1DAED047C();
  v49 = v165;
  sub_1DAD64398(v14, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD64398(v16, &qword_1ECC09698, &qword_1DAED9E68);
  v50 = swift_getKeyPath();
  v51 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09758, &qword_1DAED9F90) + 36)];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09760, &qword_1DAED9F98);
  sub_1DAD6495C(v42 + v48, v51 + *(v52 + 28), &qword_1ECC07CE8, &qword_1DAED6F60);
  *v51 = v50;
  v53 = swift_getKeyPath();
  v54 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  swift_beginAccess();
  v55 = &v20[*(v18 + 44)];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09768, &unk_1DAED9FD0);
  sub_1DAD6495C(v42 + v54, v55 + *(v56 + 28), &qword_1ECC08360, &unk_1DAED6570);
  *v55 = v53;
  v57 = swift_getKeyPath();
  v58 = v42 + v48;
  v59 = v173;
  sub_1DAD6495C(v58, v173, &qword_1ECC07CE8, &qword_1DAED6F60);
  v60 = sub_1DAECDCEC();
  LOBYTE(v54) = (*(*(v60 - 8) + 48))(v59, 1, v60) != 1;
  sub_1DAD64398(v59, &qword_1ECC07CE8, &qword_1DAED6F60);
  v61 = v167;
  sub_1DAD7C48C(v20, v167, &qword_1ECC096A0, &qword_1DAED9E70);
  v62 = v61 + *(v169 + 44);
  *v62 = v57;
  *(v62 + 8) = v54;
  v63 = swift_getKeyPath();
  v64 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  swift_beginAccess();
  v65 = *(v42 + v64);
  v66 = v61;
  v67 = v168;
  sub_1DAD7C48C(v66, v168, &qword_1ECC096A8, &qword_1DAED9E78);
  v68 = (v67 + *(v171 + 44));
  *v68 = v63;
  v68[1] = v65;
  v69 = swift_getKeyPath();
  v70 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
  swift_beginAccess();
  LOBYTE(v70) = *(v42 + v70);
  v71 = v170;
  sub_1DAD7C48C(v67, v170, &qword_1ECC096B0, &qword_1DAED9E80);
  v72 = v71 + *(v172 + 44);
  *v72 = v69;
  *(v72 + 8) = v70;
  v73 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v65;
  sub_1DAECEF3C();

  LOBYTE(v70) = v221;
  v75 = v174;
  sub_1DAD7C48C(v71, v174, &qword_1ECC096B8, &qword_1DAED9E88);
  v76 = v75 + *(v175 + 44);
  *v76 = v73;
  *(v76 + 8) = v70;
  v77 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  LOBYTE(v70) = v221;
  sub_1DAD7C48C(v75, v49, &qword_1ECC096C0, &qword_1DAED9E90);
  v78 = v49 + *(v177 + 44);
  *v78 = v77;
  *(v78 + 8) = v70;
  if (*(v217 + 56))
  {
    v219 = *(v217 + 56);
    v220 = 0;
  }

  else
  {
    sub_1DAD78BD8(&v221);
    v219 = v221;
    LOBYTE(v220) = BYTE8(v221);
    HIBYTE(v220) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B58, &qword_1DAEDA160);
  sub_1DAD78E78();
  sub_1DAECFB1C();
  v79 = v221;
  v80 = BYTE8(v221);
  v81 = BYTE9(v221);
  v82 = sub_1DAED091C();
  v84 = v83;
  v85 = v49;
  v86 = v180;
  sub_1DAD7C48C(v85, v180, &qword_1ECC096C8, &qword_1DAED9E98);
  v87 = v86 + *(v178 + 36);
  *v87 = v79;
  *(v87 + 8) = v80;
  *(v87 + 9) = v81;
  *(v87 + 16) = v82;
  *(v87 + 24) = v84;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  LOBYTE(v82) = v221;
  v88 = v182;
  sub_1DAD7C48C(v86, v182, &qword_1ECC096D0, &qword_1DAED9EA0);
  *(v88 + *(v179 + 36)) = v82;
  v89 = v176;
  sub_1DAD648F8(v42 + v176, &v221);
  v90 = v222;
  v91 = v223;
  __swift_project_boxed_opaque_existential_1(&v221, v222);
  v92 = (*(v91 + 16))(v90, v91);
  v93 = v198;
  sub_1DAED0C3C();

  v94 = sub_1DAED0DCC();
  v199 = *(v199 + 8);
  v95 = v200;
  (v199)(v93, v200);
  __swift_destroy_boxed_opaque_existential_1Tm(&v221);
  v96 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v97 = [*(v42 + v96) backgroundViewPolicy] != 1;
  type metadata accessor for DebugOverlayObserver(0);
  swift_allocObject();
  sub_1DAD79620();
  sub_1DAD7305C(&qword_1EE006D80, type metadata accessor for DebugOverlayObserver, &unk_1DAED810C);
  v98 = sub_1DAECF21C();
  v100 = v99;
  v101 = v88;
  v102 = v215;
  sub_1DAD7C48C(v101, v215, &qword_1ECC096D8, &qword_1DAED9EA8);
  v103 = v102 + *(v181 + 36);
  *v103 = v94;
  *(v103 + 8) = v97;
  *(v103 + 16) = v98;
  *(v103 + 24) = v100;
  sub_1DAD648F8(v42 + v89, &v221);
  v104 = v222;
  v105 = v223;
  __swift_project_boxed_opaque_existential_1(&v221, v222);
  v106 = (*(v105 + 16))(v104, v105);
  sub_1DAED0C3C();

  v107 = sub_1DAED0DCC();
  (v199)(v93, v95);
  __swift_destroy_boxed_opaque_existential_1Tm(&v221);
  v108 = 1;
  if ((*(v217 + 48) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    v108 = v221;
  }

  v109 = v185;
  sub_1DAD7C48C(v215, v185, &qword_1ECC096E0, &qword_1DAED9EB0);
  v110 = v109 + *(v184 + 36);
  *v110 = v107;
  *(v110 + 8) = v108;
  v111 = swift_getKeyPath();
  v112 = v109;
  v113 = v187;
  sub_1DAD7C48C(v112, v187, &qword_1ECC096E8, &qword_1DAED9EB8);
  v114 = v113 + *(v183 + 36);
  *v114 = v111;
  *(v114 + 8) = 1;
  v115 = v217;
  v116 = v205;
  sub_1DAD76078(v217, v205);
  v117 = (*(v204 + 80) + 16) & ~*(v204 + 80);
  v118 = swift_allocObject();
  v200 = type metadata accessor for LiveWidgetEntryView;
  sub_1DAD79914(v116, v118 + v117, type metadata accessor for LiveWidgetEntryView);
  v119 = v189;
  sub_1DAD7C48C(v113, v189, &qword_1ECC096F0, &qword_1DAED9EC0);
  v120 = (v119 + *(v186 + 36));
  *v120 = sub_1DAD75858;
  v120[1] = v118;
  v120[2] = 0;
  v120[3] = 0;
  v121 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDateDidChangePublisher;
  swift_beginAccess();
  v214 = v42;
  v122 = *(v42 + v121);
  v215 = v122;
  v123 = v115;
  sub_1DAD76078(v115, v116);
  v124 = swift_allocObject();
  sub_1DAD79914(v116, v124 + v117, type metadata accessor for LiveWidgetEntryView);
  v125 = v191;
  sub_1DAD7C48C(v119, v191, &qword_1ECC096F8, &qword_1DAED9EC8);
  v126 = v188;
  *(v125 + *(v188 + 52)) = v122;
  v127 = (v125 + *(v126 + 56));
  *v127 = sub_1DAE388F0;
  v127[1] = v124;
  v128 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponentsDidChangePublisher;
  v129 = v214;
  swift_beginAccess();
  v204 = *(v129 + v128);
  v130 = v204;
  sub_1DAD76078(v123, v116);
  v131 = swift_allocObject();
  v132 = v200;
  sub_1DAD79914(v116, v131 + v117, v200);
  v133 = v194;
  sub_1DAD7C48C(v125, v194, &qword_1ECC09700, &qword_1DAED9ED0);
  v134 = v190;
  *(v133 + *(v190 + 52)) = v130;
  v135 = (v133 + *(v134 + 56));
  *v135 = sub_1DAE38F54;
  v135[1] = v131;
  v136 = v214;
  v137 = *(v214 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);
  sub_1DAD76078(v123, v116);
  v138 = swift_allocObject();
  sub_1DAD79914(v116, v138 + v117, v132);
  v139 = v133;
  v140 = v195;
  sub_1DAD7C48C(v139, v195, &qword_1ECC09708, &qword_1DAED9ED8);
  v141 = v193;
  *(v140 + *(v193 + 52)) = v137;
  v142 = (v140 + *(v141 + 56));
  *v142 = sub_1DADC22AC;
  v142[1] = v138;
  v143 = *(v206 + 36);
  v144 = v196;
  v145 = &v196[*(v192 + 36)];
  v146 = *(type metadata accessor for InteractiveWidgetSetupViewModifier(0) + 24);
  v147 = sub_1DAECEDEC();
  (*(*(v147 - 8) + 16))(&v145[v146], v123 + v143, v147);
  v148 = v136;
  v218 = v136;
  v149 = off_1F56B54F8;
  v150 = type metadata accessor for LiveWidgetEntryViewModel(0);
  swift_retain_n();

  *v145 = v149();
  *(v145 + 1) = v151;
  v216 = v150;
  LOBYTE(v123) = (off_1F56B5500)();

  v145[16] = v123 & 1;
  sub_1DAD7C48C(v140, v144, &qword_1ECC09710, &qword_1DAED9EE0);
  v152 = v207;
  sub_1DAD79AF4(v207);
  v153 = v197;
  sub_1DAE377C8(v152, v197);
  sub_1DAD760DC(v152, type metadata accessor for DebugInfo);
  sub_1DAD64398(v144, &qword_1ECC09718, &qword_1DAED9EE8);
  v154 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  swift_beginAccess();
  v155 = v203;
  sub_1DAE374D8(*(v148 + v154));
  sub_1DAD64398(v153, &qword_1ECC09720, &qword_1DAED9EF0);
  sub_1DAD7305C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel, &protocol conformance descriptor for LiveWidgetEntryViewModel);
  sub_1DAECF22C();
  swift_getKeyPath();
  v156 = v208;
  sub_1DAECF23C();

  v157 = v209;
  sub_1DAD6495C(v156, &v209[*(v210 + 36)], &qword_1ECC091C0, &qword_1DAED8E80);
  sub_1DAD6495C(v155, v157, &qword_1ECC09728, &qword_1DAED9EF8);
  sub_1DAD6495C(v157, v212, &qword_1ECC09690, &qword_1DAED9E60);
  swift_storeEnumTagMultiPayload();
  sub_1DAE38958();
  sub_1DAE38A14();
  v158 = v202;
  sub_1DAECFB1C();
  sub_1DAD64398(v157, &qword_1ECC09690, &qword_1DAED9E60);
  sub_1DAD64398(v156, &qword_1ECC091C0, &qword_1DAED8E80);
  sub_1DAD64398(v155, &qword_1ECC09728, &qword_1DAED9EF8);
  v159 = sub_1DAECF21C();
  v161 = v160;
  v162 = v213;
  sub_1DAD7C48C(v158, v213, &qword_1ECC09730, &unk_1DAED9F00);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09790, &qword_1DAEDA270);
  v164 = (v162 + *(result + 36));
  *v164 = v159;
  v164[1] = v161;
  return result;
}

uint64_t sub_1DAD77BB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF6DC();
  *a1 = result;
  return result;
}

uint64_t sub_1DAD77CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF4BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAD77D24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF69C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAD77D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF6BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAD77DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF5DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAD77E80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF76C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAD77F38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF54C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAD77F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL;
  swift_beginAccess();
  return sub_1DAD6495C(v3 + v4, a2, &unk_1ECC09EC0, &qword_1DAED7970);
}

void sub_1DAD78018()
{
  v1 = sub_1DAECDCEC();
  v97 = *(v1 - 8);
  v98 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v92 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v91 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v91 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v91 - v9;
  v11 = type metadata accessor for LiveWidgetEntryView(0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v91 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v91 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v91 - v28;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v30 = sub_1DAECE06C();

  if ((v30 & 1) != 0 || MEMORY[0x1E127E800]("_logBodyEvaluation()"))
  {
    sub_1DAD76078(v0, v29);
    sub_1DAD76078(v0, v26);
    sub_1DAD76078(v0, v23);
    v31 = v99;
    sub_1DAD76078(v0, v99);
    v32 = sub_1DAECEDCC();
    v33 = sub_1DAED203C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v101 = v93;
      *v34 = 136446978;
      v35 = *(v29 + 1);

      sub_1DAD760DC(v29, type metadata accessor for LiveWidgetEntryView);
      v36 = *(v35 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v37 = *(v35 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v38 = sub_1DAD6482C(v36, v37, &v101);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2050;
      v39 = *(v26 + 1);
      v40 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
      swift_beginAccess();
      v41 = *(v39 + v40);
      sub_1DAD760DC(v26, type metadata accessor for LiveWidgetEntryView);
      *(v34 + 14) = v41;
      *(v34 + 22) = 2082;
      v42 = *(v23 + 1);
      v43 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
      swift_beginAccess();
      sub_1DAD6495C(v42 + v43, v10, &unk_1ECC07D30, &unk_1DAED57E0);
      v44 = v95;
      sub_1DAD6495C(v10, v95, &unk_1ECC07D30, &unk_1DAED57E0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v47 = v97;
        v46 = v98;
        if (EnumCaseMultiPayload == 1)
        {
          sub_1DAD64398(v10, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD760DC(v23, type metadata accessor for LiveWidgetEntryView);
          sub_1DAD64398(v44, &unk_1ECC07D30, &unk_1DAED57E0);
          v48 = 0xEB00000000726564;
          v49 = 0x6C6F686563616C50;
        }

        else
        {
          sub_1DAD64398(v44, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD64398(v10, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD760DC(v23, type metadata accessor for LiveWidgetEntryView);
          v48 = 0xE500000000000000;
          v49 = 0x7974706D45;
        }
      }

      else
      {
        sub_1DAD64398(v10, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD760DC(v23, type metadata accessor for LiveWidgetEntryView);
        sub_1DAD64398(v44, &unk_1ECC07D30, &unk_1DAED57E0);
        v48 = 0xE400000000000000;
        v49 = 1702259020;
        v47 = v97;
        v46 = v98;
      }

      v71 = v99;
      v72 = sub_1DAD6482C(v49, v48, &v101);

      *(v34 + 24) = v72;
      *(v34 + 32) = 2082;
      v73 = *(v71 + 8);
      v74 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
      swift_beginAccess();
      v75 = v96;
      sub_1DAD6495C(v73 + v74, v96, &qword_1ECC07CE8, &qword_1DAED6F60);
      if ((*(v47 + 48))(v75, 1, v46))
      {
        v76 = 1701736302;
        sub_1DAD64398(v75, &qword_1ECC07CE8, &qword_1DAED6F60);
        v77 = 0xE400000000000000;
      }

      else
      {
        v78 = v92;
        (*(v47 + 16))(v92, v75, v46);
        sub_1DAD64398(v75, &qword_1ECC07CE8, &qword_1DAED6F60);
        if (qword_1EE00A700 != -1)
        {
          swift_once();
        }

        v79 = qword_1EE00A708;
        v80 = sub_1DAECDC5C();
        v81 = [v79 stringFromDate_];

        v76 = sub_1DAED1CEC();
        v77 = v82;

        (*(v47 + 8))(v78, v46);
      }

      sub_1DAD760DC(v71, type metadata accessor for LiveWidgetEntryView);
      v83 = sub_1DAD6482C(v76, v77, &v101);

      *(v34 + 34) = v83;
      _os_log_impl(&dword_1DAD61000, v32, v33, "[%{public}s] Rendering view: %{public}lld - with content: %{public}s and referenceDate %{public}s", v34, 0x2Au);
      v84 = v93;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v84, -1, -1);
      MEMORY[0x1E127F100](v34, -1, -1);

      return;
    }

    sub_1DAD760DC(v26, type metadata accessor for LiveWidgetEntryView);

    sub_1DAD760DC(v31, type metadata accessor for LiveWidgetEntryView);
    sub_1DAD760DC(v23, type metadata accessor for LiveWidgetEntryView);
    v50 = v29;
LABEL_13:
    sub_1DAD760DC(v50, type metadata accessor for LiveWidgetEntryView);
    return;
  }

  sub_1DAD76078(v0, v18);
  sub_1DAD76078(v0, v15);
  v51 = v93;
  sub_1DAD76078(v0, v93);
  v52 = sub_1DAECEDCC();
  v53 = sub_1DAED200C();
  if (!os_log_type_enabled(v52, v53))
  {
    sub_1DAD760DC(v15, type metadata accessor for LiveWidgetEntryView);

    sub_1DAD760DC(v51, type metadata accessor for LiveWidgetEntryView);
    v50 = v18;
    goto LABEL_13;
  }

  v54 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v100[0] = v55;
  *v54 = 136446722;
  v56 = *(v18 + 1);

  sub_1DAD760DC(v18, type metadata accessor for LiveWidgetEntryView);
  v57 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
  v58 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

  v59 = sub_1DAD6482C(v57, v58, v100);

  *(v54 + 4) = v59;
  *(v54 + 12) = 2050;
  v60 = *(v15 + 1);
  v61 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  swift_beginAccess();
  v62 = *(v60 + v61);
  sub_1DAD760DC(v15, type metadata accessor for LiveWidgetEntryView);
  *(v54 + 14) = v62;
  *(v54 + 22) = 2082;
  v63 = *(v51 + 8);
  v64 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  v65 = v63 + v64;
  v66 = v91;
  sub_1DAD6495C(v65, v91, &qword_1ECC07CE8, &qword_1DAED6F60);
  v68 = v97;
  v67 = v98;
  if ((*(v97 + 48))(v66, 1, v98))
  {
    v69 = 1701736302;
    sub_1DAD64398(v66, &qword_1ECC07CE8, &qword_1DAED6F60);
    v70 = 0xE400000000000000;
  }

  else
  {
    v85 = v92;
    (*(v68 + 16))(v92, v66, v67);
    sub_1DAD64398(v66, &qword_1ECC07CE8, &qword_1DAED6F60);
    if (qword_1EE00A700 != -1)
    {
      swift_once();
    }

    v86 = qword_1EE00A708;
    v87 = sub_1DAECDC5C();
    v88 = [v86 stringFromDate_];

    v69 = sub_1DAED1CEC();
    v70 = v89;

    (*(v68 + 8))(v85, v67);
    v51 = v93;
  }

  sub_1DAD760DC(v51, type metadata accessor for LiveWidgetEntryView);
  v90 = sub_1DAD6482C(v69, v70, v100);

  *(v54 + 24) = v90;
  _os_log_impl(&dword_1DAD61000, v52, v53, "[%{public}s] Rendering view: %{public}lld with referenceDate %{public}s", v54, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1E127F100](v55, -1, -1);
  MEMORY[0x1E127F100](v54, -1, -1);
}

void *sub_1DAD78BD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DAECF0AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  v9 = v25;
  if (v25 && (v10 = v26, v25(&v25, v8), sub_1DAD660D8(v9, v10), v25))
  {
    v23 = v25;
    v24 = 0;
    result = sub_1DAECFB1C();
    v12 = v25;
    v13 = v26;
  }

  else
  {
    v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
    swift_beginAccess();
    if (*(v2 + v14) == 1)
    {
      v15 = sub_1DAED064C();
    }

    else
    {
      v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
      swift_beginAccess();
      (*(v5 + 16))(v7, v2 + v16, v4);
      v17 = (*(v5 + 88))(v7, v4);
      if (v17 == *MEMORY[0x1E697DBB8])
      {
        v15 = sub_1DAED066C();
      }

      else if (v17 == *MEMORY[0x1E697DBA8])
      {
        v15 = sub_1DAED063C();
      }

      else
      {
        v18 = sub_1DAED060C();
        (*(v5 + 8))(v7, v4);
        v15 = v18;
      }
    }

    v19 = v15;
    v20 = 1;
    result = sub_1DAECFB1C();
    v12 = v21;
    v13 = v22;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  return result;
}

unint64_t sub_1DAD78E78()
{
  result = qword_1EE005928;
  if (!qword_1EE005928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B58, &qword_1DAEDA160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005928);
  }

  return result;
}

uint64_t type metadata accessor for DebugInfo(uint64_t a1)
{
  result = qword_1EE005F58;
  if (!qword_1EE005F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1DAD78F54()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09808, &qword_1DAEDA4E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v26 - v3);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09810, &qword_1DAEDA4E8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = (&v26 - v5);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09748, &qword_1DAED9F50);
  MEMORY[0x1EEE9AC00](v30);
  v28 = (&v26 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09740, &qword_1DAED9F48);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = sub_1DAD79424(v1);
  v12 = v1[1];
  v13 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  swift_beginAccess();
  v14 = *(v12 + v13);
  if (v14 && [v14 filterStyle] == 7 && (sub_1DAD648F8(v12 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v32), v27 = v4, v15 = v33, v16 = v34, __swift_project_boxed_opaque_existential_1(v32, v33), v4 = v27, v17 = (*(v16 + 16))(v15, v16), v18 = sub_1DAED0B8C(), v17, __swift_destroy_boxed_opaque_existential_1Tm(v32), v18) && (v19 = objc_msgSend(v18, sel_preferredBackgroundStyle), v18, !v19))
  {
    v21 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation;
    swift_beginAccess();
    if (*(v12 + v21) == 1)
    {
      v31 = v11;

      v22 = sub_1DAED091C();
      v23 = v28;
      *v28 = v22;
      *(v23 + 8) = v24;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09818, &qword_1DAEDA4F0);
      sub_1DAE37DD8(&v31, (v23 + *(v25 + 44)));

      sub_1DAD6495C(v23, v6, &qword_1ECC09748, &qword_1DAED9F50);
      swift_storeEnumTagMultiPayload();
      sub_1DAD64B94(&qword_1EE005808, &qword_1ECC09748, &qword_1DAED9F50, MEMORY[0x1E6981880]);
      sub_1DAECFB1C();
      sub_1DAD64398(v23, &qword_1ECC09748, &qword_1DAED9F50);
    }

    else
    {
      *v6 = v11;
      swift_storeEnumTagMultiPayload();
      sub_1DAD64B94(&qword_1EE005808, &qword_1ECC09748, &qword_1DAED9F50, MEMORY[0x1E6981880]);

      sub_1DAECFB1C();
    }

    sub_1DAD6495C(v10, v4, &qword_1ECC09740, &qword_1DAED9F48);
    swift_storeEnumTagMultiPayload();
    sub_1DAE38838();
    sub_1DAECFB1C();

    return sub_1DAD64398(v10, &qword_1ECC09740, &qword_1DAED9F48);
  }

  else
  {
    *v4 = v11;
    swift_storeEnumTagMultiPayload();
    sub_1DAE38838();
    return sub_1DAECFB1C();
  }
}

uint64_t sub_1DAD79424(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = a1[1];
  v6 = a1[3];
  if (*(v5 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated))
  {
    v10 = a1[2];
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097E8, &qword_1DAEDA4C0);
    sub_1DAED077C();
    result = v12;
    if (!v12)
    {
      v10 = sub_1DAED064C();
      return sub_1DAED087C();
    }
  }

  else
  {
    v10 = a1[2];
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097E8, &qword_1DAEDA4C0);
    sub_1DAED077C();
    result = v12;
    if (!v12)
    {
      if (*(v5 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce) != 1 || *(v5 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) == 1)
      {
        LOBYTE(v10) = 1;
        sub_1DAD8EC1C(&v10);
      }

      v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
      swift_beginAccess();
      sub_1DAD6495C(v5 + v8, v4, &unk_1ECC07D30, &unk_1DAED57E0);
      v9 = sub_1DAD75EB4();
      sub_1DAD64398(v4, &unk_1ECC07D30, &unk_1DAED57E0);
      return v9;
    }
  }

  return result;
}

uint64_t sub_1DAD795DC()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAD79620()
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v15 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC14WidgetRendererP33_F99F790B2CEECA46DDAC66C73F34FEEC20DebugOverlayObserver__enabled;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v11 = sub_1DAECDFFC();

  v17 = v11 & 1;
  sub_1DAECEEFC();
  (*(v7 + 32))(v0 + v10, v9, v6);
  sub_1DAECE1AC();
  v12 = sub_1DAECE00C();

  v18 = v12;
  swift_beginAccess();
  sub_1DAECEF0C();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08898, &qword_1DAED8240);
  sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240, MEMORY[0x1E695BED8]);
  sub_1DAECF01C();

  v13 = v16;
  (*(v1 + 16))(v15, v5, v16);
  swift_beginAccess();
  sub_1DAECEF1C();
  swift_endAccess();
  (*(v1 + 8))(v5, v13);
  return v0;
}

uint64_t sub_1DAD79914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t (*sub_1DAD7997C())(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1DAEA8570;
}

uint64_t sub_1DAD79A38()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD79A7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAD79AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09678, &qword_1DAED9DF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v58 - v9;
  v11 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v70);
  v12 = v71;
  v13 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v14 = (*(v13 + 16))(v12, v13);
  sub_1DAED0C3C();

  v15 = sub_1DAED0DDC();
  v16 = *(*(v15 - 8) + 56);
  v60 = v10;
  v16(v10, 0, 1, v15);
  v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__placeholderSource;
  swift_beginAccess();
  v59 = v17;
  sub_1DAD6495C(v2 + v17, v67, &unk_1ECC07D90, &unk_1DAED5840);
  v18 = v68;
  v61 = v7;
  if (v68)
  {
    v19 = v11;
    v20 = v69;
    v21 = __swift_project_boxed_opaque_existential_1(v67, v68);
    v58[1] = v58;
    v22 = *(v18 - 8);
    v23 = MEMORY[0x1EEE9AC00](v21);
    v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    sub_1DAD64398(v67, &unk_1ECC07D90, &unk_1DAED5840);
    v26 = (*(v20 + 16))(v18, v20);
    (*(v22 + 8))(v25, v18);
    sub_1DAED0C3C();

    v11 = v19;
    v16(v7, 0, 1, v15);
  }

  else
  {
    sub_1DAD64398(v67, &unk_1ECC07D90, &unk_1DAED5840);
    v16(v7, 1, 1, v15);
  }

  sub_1DAD648F8(v2 + v11, v67);
  v27 = v68;
  v28 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v29 = (*(v28 + 16))(v27, v28);
  sub_1DAED0C5C();

  v30 = v65;
  if (v65)
  {
    v31 = __swift_project_boxed_opaque_existential_1(v64, v65);
    v32 = *(v30 - 8);
    v33 = MEMORY[0x1EEE9AC00](v31);
    v35 = v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v35, v33);
    sub_1DAD64398(v64, &unk_1ECC08880, &unk_1DAED6F50);
    sub_1DAED1A3C();
    (*(v32 + 8))(v35, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
  }

  else
  {
    sub_1DAD64398(v64, &unk_1ECC08880, &unk_1DAED6F50);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    v36 = sub_1DAECDCEC();
    (*(*(v36 - 8) + 56))(v63, 1, 1, v36);
  }

  sub_1DAD648F8(v2 + v11, v67);
  v37 = v68;
  v38 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v39 = (*(v38 + 16))(v37, v38);
  v40 = sub_1DAED0BBC();
  v42 = v41;

  sub_1DAD6495C(v2 + v59, v64, &unk_1ECC07D90, &unk_1DAED5840);
  v43 = v65;
  if (v65)
  {
    v44 = v66;
    v45 = __swift_project_boxed_opaque_existential_1(v64, v65);
    v46 = *(v43 - 8);
    v47 = MEMORY[0x1EEE9AC00](v45);
    v49 = v58 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v49, v47);
    sub_1DAD64398(v64, &unk_1ECC07D90, &unk_1DAED5840);
    v50 = (*(v44 + 16))(v43, v44);
    (*(v46 + 8))(v49, v43);
    v51 = sub_1DAED0BBC();
    v43 = v52;
  }

  else
  {
    sub_1DAD64398(v64, &unk_1ECC07D90, &unk_1DAED5840);
    v51 = 0;
  }

  v53 = v62;
  sub_1DAD7C48C(v60, v62, &qword_1ECC09678, &qword_1DAED9DF8);
  v54 = type metadata accessor for DebugInfo(0);
  sub_1DAD7C48C(v61, v53 + v54[5], &qword_1ECC09678, &qword_1DAED9DF8);
  sub_1DAD7C48C(v63, v53 + v54[6], &qword_1ECC07CE8, &qword_1DAED6F60);
  v55 = (v53 + v54[7]);
  *v55 = v40;
  v55[1] = v42;
  v56 = (v53 + v54[8]);
  *v56 = v51;
  v56[1] = v43;
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  return __swift_destroy_boxed_opaque_existential_1Tm(v70);
}

unint64_t sub_1DAD7A244()
{
  result = qword_1EE00BE58;
  if (!qword_1EE00BE58)
  {
    sub_1DAECF32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE58);
  }

  return result;
}

uint64_t sub_1DAD7A29C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DebugOverlayObserver(0);
  result = sub_1DAECEE4C();
  *a2 = result;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *sub_1DAD7A2E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a6@<X8>)
{
  v43 = a4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D88, &qword_1DAED8148);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v40 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D90, &qword_1DAED8150);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v40 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (LOBYTE(v64[0]) == 1)
  {
    v14 = sub_1DAED091C();
    v16 = v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DA0, &qword_1DAED81A8) + 36);
    v42 = a6;
    v18 = &v13[v17];
    *v18 = sub_1DAED091C();
    v18[1] = v19;
    v20 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DB8, &qword_1DAED81C0) + 44);
    v40 = v11;
    sub_1DAE16DA8(a2, a3 & 1, v20);
    v21 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DA8, &qword_1DAED81B0) + 36));
    *v21 = v14;
    v21[1] = v16;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D98, &qword_1DAED81A0);
    (*(*(v41 - 8) + 16))(v13, a1, v41);
    v22 = sub_1DAED090C();
    v24 = v23;
    sub_1DAE17378(a2, a3 & 1, &v47);
    v25 = v51;
    v26 = v52;
    v59 = v51;
    v60 = v52;
    v27 = v53;
    v28 = v54;
    v61 = v53;
    v62 = v54;
    v29 = v49;
    v30 = v50;
    v57 = v49;
    v58 = v50;
    v31 = v47;
    v32 = v48;
    v55 = v47;
    v56 = v48;
    *&v63 = v22;
    *(&v63 + 1) = v24;
    v33 = &v13[*(v45 + 36)];
    v34 = v63;
    *(v33 + 7) = v54;
    *(v33 + 8) = v34;
    *(v33 + 6) = v61;
    v35 = v58;
    *(v33 + 2) = v57;
    *(v33 + 3) = v35;
    v36 = v60;
    *(v33 + 4) = v59;
    *(v33 + 5) = v36;
    v37 = v56;
    *v33 = v55;
    *(v33 + 1) = v37;
    v64[4] = v25;
    v64[5] = v26;
    v64[6] = v27;
    v64[7] = v28;
    v64[0] = v31;
    v64[1] = v32;
    v64[2] = v29;
    v64[3] = v30;
    v65 = v22;
    v66 = v24;
    sub_1DAD6495C(&v55, &v46, &qword_1ECC08DB0, &qword_1DAED81B8);
    sub_1DAD64398(v64, &qword_1ECC08DB0, &qword_1DAED81B8);
    sub_1DAD6495C(v13, v40, &qword_1ECC08D90, &qword_1DAED8150);
    swift_storeEnumTagMultiPayload();
    sub_1DAD7A754();
    sub_1DAD64B94(&qword_1EE005900, &qword_1ECC08D98, &qword_1DAED81A0, MEMORY[0x1E697FDF8]);
    sub_1DAECFB1C();
    return sub_1DAD64398(v13, &qword_1ECC08D90, &qword_1DAED8150);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D98, &qword_1DAED81A0);
    (*(*(v39 - 8) + 16))(v11, a1, v39);
    swift_storeEnumTagMultiPayload();
    sub_1DAD7A754();
    sub_1DAD64B94(&qword_1EE005900, &qword_1ECC08D98, &qword_1DAED81A0, MEMORY[0x1E697FDF8]);
    return sub_1DAECFB1C();
  }
}

unint64_t sub_1DAD7A754()
{
  result = qword_1EE005A58;
  if (!qword_1EE005A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08D90, &qword_1DAED8150);
    sub_1DADBD100();
    sub_1DAD64B94(&qword_1EE0059D0, &qword_1ECC08DB0, &qword_1DAED81B8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A58);
  }

  return result;
}

uint64_t sub_1DAD7A80C(unint64_t *a1)
{
  sub_1DAEB3B14(*a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A960, &unk_1DAEDF100);
  sub_1DAED100C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2A8, &qword_1DAEDD820);
  v1 = sub_1DAED11DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DAED6200;
  v5 = (v4 + v3);
  *v5 = 0xD000000000000014;
  v5[1] = 0x80000001DAEDEE90;
  (*(v2 + 104))(v5, *MEMORY[0x1E6993EB0], v1);
  sub_1DADBE4FC(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v5, v1);
  swift_deallocClassInstance();

  return sub_1DAED135C();
}

uint64_t sub_1DAD7A9C4()
{
  v1 = OBJC_IVAR____TtC14WidgetRendererP33_F99F790B2CEECA46DDAC66C73F34FEEC20DebugOverlayObserver__enabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t InteractiveWidgetSetupViewModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1DAECF32C();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InteractiveWidgetSetupViewModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09230, &qword_1DAED91B0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  sub_1DAD7AED8(v1, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1DAD7AF3C(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09238, &qword_1DAED91B8);
  v16 = sub_1DAD64B94(&qword_1EE00BE50, &qword_1ECC09238, &qword_1DAED91B8, MEMORY[0x1E697FDF8]);
  sub_1DAED04DC();

  if (*(v1 + 16) == 1)
  {
    sub_1DAECF2FC();
    v17 = v21;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1DAD7A244();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
    sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0, MEMORY[0x1E69E6328]);
    v18 = v21;
    sub_1DAED23CC();
    v17 = v18;
  }

  v24 = v15;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1DAED05BC();
  (*(v22 + 8))(v5, v17);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1DAD7ADE4()
{
  v1 = type metadata accessor for InteractiveWidgetSetupViewModifier(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v2)
  {
  }

  v3 = *(v1 + 24);
  v4 = sub_1DAECEDEC();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);

  return swift_deallocObject();
}

uint64_t sub_1DAD7AED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveWidgetSetupViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD7AF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveWidgetSetupViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DAD7AFA0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v97 = v86 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v98 = v86 - v7;
  v8 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController;
  v9 = *&v1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v9)
  {
    if (a1)
    {
      type metadata accessor for WidgetSceneContentViewController(0);
      v10 = v9;
      v11 = a1;
      v12 = sub_1DAED228C();

      if (v12)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v13 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription;
  if (*&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription])
  {

    sub_1DAECEE2C();
  }

  v92 = v13;
  *&v2[v13] = 0;

  v14 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber;
  if (*&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber])
  {

    sub_1DAECEE2C();
  }

  v93 = v14;
  *&v2[v14] = 0;

  v15 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener;
  if (*&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener])
  {

    sub_1DAECEE2C();
  }

  v94 = v15;
  *&v2[v15] = 0;

  p_cb = (&OBJC_PROTOCOL____UISceneBSActionResponding + 64);
  if (a1)
  {
    v17 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x288);
    v18 = a1;
    v17();
    v19 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_rootViewController];
    sub_1DAE006B8(v18);

    v20 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController];
    v21 = &v20[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugText];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = v20;

    v23 = *&v22[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView];
    v24 = &v23[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = v23;

    [v25 setNeedsLayout];

    p_cb = &OBJC_PROTOCOL____UISceneBSActionResponding.cb;
  }

  v26 = *&v2[v8];
  if (v26)
  {
    v27 = *&v2[v8];
    v28 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel;
    v29 = v26;
    v30 = *&v26[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
    v31 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
    swift_beginAccess();
    LOBYTE(v30) = *(v30 + v31);
    v32 = v29;
    sub_1DADB4574(v30);
    sub_1DADB48A4();
    v33 = *&v2[*(p_cb + 411)];
    v34 = v32;
    v35 = v33;
    sub_1DAD6A390(v34);
    v36 = [v35 view];
    if (v36)
    {
      v37 = v36;
      v38 = [v34 view];
      if (v38)
      {
        v39 = v38;
        [v37 sendSubviewToBack_];

        v40 = [v34 view];
        if (v40)
        {
          [*&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_window] bounds];
          [v40 setFrame_];

          v41 = [v34 view];
          v96 = v34;

          if (v41)
          {
            v42 = v28;
            [v41 setNeedsLayout];

            v43 = v96;
            v44 = [v96 view];

            if (v44)
            {
              [v44 layoutIfNeeded];

              v45 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController];
              v91 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
              v46 = v91;
              v47 = v45;
              [v46 contentType];
              v48 = NSStringFromCHSWidgetContentType();
              v49 = sub_1DAED1CEC();
              v51 = v50;

              v52 = &v47[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugText];
              *v52 = v49;
              v52[1] = v51;

              v53 = *&v47[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView];
              v54 = &v53[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText];
              *v54 = v49;
              v54[1] = v51;

              v55 = v53;

              [v55 setNeedsLayout];

              v95 = v42;
              sub_1DAD648F8(*(v27 + v42) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v102);
              v56 = v103;
              v57 = v104;
              __swift_project_boxed_opaque_existential_1(v102, v103);
              v58 = *(v57 + 16);

              v59 = v58(v56, v57);
              v60 = sub_1DAED0C0C();

              __swift_destroy_boxed_opaque_existential_1Tm(v102);
              v102[0] = v60;
              sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
              v61 = sub_1DAED20EC();
              v101 = v61;
              v88 = sub_1DAED20AC();
              v62 = *(v88 - 8);
              v87 = *(v62 + 56);
              v89 = v62 + 56;
              v63 = v97;
              v87(v97, 1, 1, v88);
              v86[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
              v90 = MEMORY[0x1E695BED8];
              sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
              v86[2] = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
              v64 = v27;
              v86[0] = v27;
              v65 = v98;
              sub_1DAECEFBC();
              sub_1DAD64398(v63, &unk_1ECC07D20, &unk_1DAED57D0);

              v66 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v67 = swift_allocObject();
              *(v67 + 16) = sub_1DADC505C;
              *(v67 + 24) = v66;
              v86[1] = sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0, MEMORY[0x1E695BE98]);
              v68 = v100;
              v69 = sub_1DAECF00C();

              v99 = *(v99 + 8);
              (v99)(v65, v68);
              *&v2[v92] = v69;

              v102[0] = *(*(v64 + v95) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
              sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF88]);
              v102[0] = sub_1DAECEF6C();
              v70 = sub_1DAED20EC();
              v101 = v70;
              v87(v63, 1, 1, v88);
              sub_1DAECEFBC();
              sub_1DAD64398(v63, &unk_1ECC07D20, &unk_1DAED57D0);

              v71 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v72 = swift_allocObject();
              *(v72 + 16) = v71;
              v73 = v96;
              *(v72 + 24) = v96;
              v74 = swift_allocObject();
              *(v74 + 16) = sub_1DAE0C914;
              *(v74 + 24) = v72;
              v75 = v73;
              v76 = sub_1DAECF00C();

              (v99)(v65, v68);
              *&v2[v93] = v76;

              v77 = v95;
              v78 = v86[0];
              v102[0] = *(*(v86[0] + v95) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryWillChangePublisher);
              swift_allocObject();
              swift_unknownObjectWeakInit();

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083D0, qword_1DAED6780);
              sub_1DAD64B94(&qword_1EE005C88, &unk_1ECC083D0, qword_1DAED6780, v90);
              v79 = sub_1DAECF00C();

              *&v2[v94] = v79;

              v80 = *(v78 + v77);

              v81 = *(v80 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);

              v102[0] = v81;
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v82 = sub_1DAECF00C();

              *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__entryContentTypeChangedListener] = v82;

              sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
              v83 = swift_allocObject();
              v84 = v91;
              *(v83 + 16) = v91;
              *(v83 + 24) = 0;
              *(v83 + 32) = 1;
              *(v83 + 40) = v2;
              v85 = v84;
              v2;
              sub_1DAED22FC();

              sub_1DAE09A30();

              return;
            }

LABEL_26:
            __break(1u);
            return;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }
}

uint64_t sub_1DAD7BBE4()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DAD7BC1C()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD7BC58()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for _InProcessActivityInstanceView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1DADF7140(*v2, *(v2 + 8), *(v2 + 16));

  v3 = v1[8];
  v4 = sub_1DAED182C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = v1 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));
  v4 = sub_1DAECFF0C();
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = v2[8];
  v6 = sub_1DAECEDEC();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for LiveWidgetEntryView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  v4 = sub_1DAECEDEC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for ActivityView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_1DAECEDEC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

unint64_t sub_1DAD7C1DC()
{
  result = qword_1EE007CF8[0];
  if (!qword_1EE007CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE007CF8);
  }

  return result;
}

const char *sub_1DAD7C264(char a1)
{
  result = "BackgroundAbsentCheck";
  switch(a1)
  {
    case 1:
      result = "AnimatedTransition";
      break;
    case 2:
      result = "InteractiveWidgets";
      break;
    case 3:
      result = "PrefetchRemoteSnapshots2";
      break;
    case 4:
      result = "InteractiveSystemSmall";
      break;
    case 5:
      result = "FirstPartyContentMargins";
      break;
    case 6:
      result = "InteractiveWatchOS";
      break;
    case 7:
      result = "AnimatedTransitionWatchOS";
      break;
    case 8:
      result = "RelevanceDuringTimelineReload";
      break;
    case 9:
      result = "ContextualWidgets";
      break;
    case 10:
      result = "ControlsBuildAndRunHack";
      break;
    case 11:
      result = "IntelligentWidgets";
      break;
    case 12:
      result = "RemoteControls";
      break;
    case 13:
      result = "ReverseRemoteWidgetSource";
      break;
    case 14:
      result = "FFGatedWidgets";
      break;
    case 15:
      result = "CorrectDominoContentMargins";
      break;
    case 16:
      result = "ForceLayerSeparation";
      break;
    case 17:
      result = "GlassPrototype";
      break;
    case 18:
      result = "WidgetExtensionRunQOSUtility";
      break;
    case 19:
      result = "UIIntelligence";
      break;
    default:
      return result;
  }

  return result;
}

id sub_1DAD7C428()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40)) + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1DAD7C48C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1DAD7C4F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080D8, &qword_1DAED6260);
  v6 = sub_1DAED277C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_1DAED227C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

double sub_1DAD7C75C()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
  sub_1DAD7CAF4();
  v3 = sub_1DAED1F6C();

  v27 = v0;
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_1DAED242C();
    sub_1DAED1F9C();
    v3 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v26 = 0;
  v11 = (v5 + 64) >> 6;
LABEL_9:
  while (2)
  {
    v12 = v6;
    v13 = v7;
    do
    {
      if (v3 < 0)
      {
        if (!sub_1DAED24BC())
        {
          goto LABEL_24;
        }

        swift_dynamicCast();
        v16 = v28;
        v6 = v12;
        v7 = v13;
        if (!v28)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v14 = v12;
        v15 = v13;
        v6 = v12;
        if (!v13)
        {
          while (1)
          {
            v6 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v6 >= v11)
            {
              goto LABEL_24;
            }

            v15 = *(v4 + 8 * v6);
            ++v14;
            if (v15)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

LABEL_15:
        v7 = (v15 - 1) & v15;
        v16 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v15)))));
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (!v17)
      {

        goto LABEL_9;
      }

      v18 = [v17 _FBSScene];
      v19 = [v18 settings];

      LODWORD(v18) = [v19 isForeground];
      v12 = v6;
      v13 = v7;
    }

    while (!v18);
    if (!__OFADD__(v26++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  sub_1DAD70B20(v3);
  if (qword_1EE00AC50 == -1)
  {
    goto LABEL_25;
  }

LABEL_29:
  swift_once();
LABEL_25:
  v21 = sub_1DAECEDEC();
  __swift_project_value_buffer(v21, qword_1EE011B58);

  v22 = sub_1DAECEDCC();
  v23 = sub_1DAED203C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134349312;
    *(v24 + 4) = v26;
    *(v24 + 12) = 2050;
    *(v24 + 14) = [*(v27 + 32) count];

    _os_log_impl(&dword_1DAD61000, v22, v23, "Foreground scene count: %{public}ld (with content: %{public}ld)", v24, 0x16u);
    MEMORY[0x1E127F100](v24, -1, -1);
  }

  else
  {
  }

  return result;
}

unint64_t sub_1DAD7CAF4()
{
  result = qword_1EE00A890;
  if (!qword_1EE00A890)
  {
    sub_1DAD674D4(255, qword_1EE00A898, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00A890);
  }

  return result;
}

uint64_t sub_1DAD7CB5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAD7CBB4()
{
  v1 = *&v0[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v1)
  {
    v12 = v1;
    if ([v12 _appearState] != 2)
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v2 = sub_1DAECEDEC();
      __swift_project_value_buffer(v2, qword_1EE011748);
      v3 = v0;
      v4 = sub_1DAECEDCC();
      v5 = sub_1DAED203C();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v13 = v7;
        *v6 = 136446210;
        v8 = &v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v9 = *&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v10 = *(v8 + 1);

        v11 = sub_1DAD6482C(v9, v10, &v13);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] Will appear", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x1E127F100](v7, -1, -1);
        MEMORY[0x1E127F100](v6, -1, -1);
      }

      [v12 beginAppearanceTransition:1 animated:0];
      [v12 endAppearanceTransition];
    }
  }
}

char *sub_1DAD7CD98(NSObject *a1)
{
  v2 = v1;
  if (qword_1EE005478 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v4 = [qword_1EE005480 objectForKey_];
    if (!v4)
    {
      goto LABEL_27;
    }

    v5 = v4;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      swift_unknownObjectRelease();
LABEL_27:
      __break(1u);
LABEL_28:
      result = swift_unknownObjectRelease();
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    result = [qword_1EE005480 objectForKey_];
    if (!result)
    {
      goto LABEL_29;
    }

    v7 = result;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_28;
    }

    v8 = *&v7[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window];
    if (!v8)
    {
      goto LABEL_30;
    }

    v9 = v8;
    swift_unknownObjectRelease();
    v10 = objc_allocWithZone(type metadata accessor for WidgetSceneConnection());
    v11 = a1;
    sub_1DAD6A568(v11, v5, v9, v10);
    v13 = v12;
    v14 = [v11 _FBSScene];
    v15 = [v14 settings];

    [v15 frame];
    v17 = v16;
    v19 = v18;

    v20 = [v11 widget];
    [v20 family];

    CHSWidgetFamilyIsAccessory();
    if (qword_1EE00AC50 != -1)
    {
      swift_once();
    }

    v21 = v17 * v19;
    v22 = sub_1DAECEDEC();
    __swift_project_value_buffer(v22, qword_1EE011B58);
    v23 = v11;

    a1 = sub_1DAECEDCC();
    v24 = sub_1DAED203C();

    if (!os_log_type_enabled(a1, v24))
    {
      break;
    }

    v46 = v13;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48[0] = v26;
    *v25 = 136446978;
    v27 = [v23 _FBSScene];
    v28 = [v27 identifier];

    v29 = sub_1DAED1CEC();
    v31 = v30;

    v32 = sub_1DAD6482C(v29, v31, v48);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2050;
    *(v25 + 14) = v21;
    *(v25 + 22) = 2082;
    swift_beginAccess();
    v33 = 0;
    v34 = *(v2 + 40);
    v35 = 1 << *(v34 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & *(v34 + 64);
    v38 = (v35 + 63) >> 6;
    for (i = 0.0; v37; i = i + *(*(v34 + 56) + ((v40 << 9) | (8 * v41))))
    {
      v40 = v33;
LABEL_19:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
    }

    while (1)
    {
      v40 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
        v42 = sub_1DAED1F3C();
        v44 = sub_1DAD6482C(v42, v43, v48);

        *(v25 + 24) = v44;
        *(v25 + 32) = 2050;
        *(v25 + 34) = *(v2 + 48);
        _os_log_impl(&dword_1DAD61000, a1, v24, "Add new foreground content: %{public}s, effectiveAreaConsumed=%{public}f, totalConsumed=%{public}s, maxAreaAllowed=%{public}f", v25, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v26, -1, -1);
        MEMORY[0x1E127F100](v25, -1, -1);

        goto LABEL_23;
      }

      v37 = *(v34 + 64 + 8 * v40);
      ++v33;
      if (v37)
      {
        v33 = v40;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_23:
  [*(v2 + 32) addObject_];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_1DAD80D9C(v23, isUniquelyReferenced_nonNull_native, v21);
  *(v2 + 40) = v47;
  swift_endAccess();
  return v13;
}

uint64_t type metadata accessor for WidgetRendererSession(uint64_t a1)
{
  result = qword_1EE008100;
  if (!qword_1EE008100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD7D2C8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v21 = 45;
  v22 = 0xE100000000000000;
  v20[2] = &v21;

  v4 = sub_1DAD8D150(sub_1DAD8D254, v20, v3, v2);
  if ((v5 & 1) == 0)
  {
    v6 = sub_1DAD8D2CC(v4, v3, v2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v3 = MEMORY[0x1E127DA00](v6, v8, v10, v12);
    v2 = v13;
  }

  v14 = NSStringFromCHSWidgetContentType();
  if (!v14)
  {
    sub_1DAED1CEC();
    v14 = sub_1DAED1CBC();
  }

  v15 = [*(a1 + 32) _loggingIdentifierWithMetrics_prefix_];

  v16 = sub_1DAED1CEC();
  v18 = v17;

  v21 = v16;
  v22 = v18;
  MEMORY[0x1E127DA50](45, 0xE100000000000000);
  MEMORY[0x1E127DA50](v3, v2);

  MEMORY[0x1E127DA50](41, 0xE100000000000000);
  return v21;
}

uint64_t sub_1DAD7D43C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DAED289C() & 1;
  }
}

void sub_1DAD7D4B8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DAECE20C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  sub_1DAD7D898(&qword_1EE00A6B8, MEMORY[0x1E6993FA8], MEMORY[0x1E6993FB8]);
  v9 = sub_1DAED1CAC();
  v29 = *(v4 + 8);
  v29(v6, v3);
  if ((v9 & 1) == 0)
  {
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v10 = sub_1DAECEDEC();
    __swift_project_value_buffer(v10, qword_1EE0117D8);

    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED203C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v13 = 136446466;
      HIDWORD(v26) = v12;
      v28 = v8;
      v14 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v15 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v16 = sub_1DAD6482C(v14, v15, v30);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v28(v6, v2 + v7, v3);
      v17 = sub_1DAECE1EC();
      v19 = v18;
      v29(v6, v3);
      v20 = sub_1DAD6482C(v17, v19, v30);
      v8 = v28;

      *(v13 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v11, BYTE4(v26), "[%{public}s] Task priority did change: %{public}s", v13, 0x16u);
      v21 = v27;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v21, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) == 1)
    {
      sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v30);
      v22 = v31;
      v23 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v8(v6, v2 + v7, v3);
      v24 = *(v23 + 144);
      v25 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
      v24(v6, v25, v22, v23);

      v29(v6, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }
  }
}

uint64_t sub_1DAD7D898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAD7D8E0(void *a1)
{
  v2 = v1;
  v4 = [a1 widgetConfigurationIdentifier];
  if (!v4)
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v24 = sub_1DAECEDEC();
    __swift_project_value_buffer(v24, qword_1EE011748);
    v25 = a1;
    v26 = v1;
    v27 = sub_1DAECEDCC();
    v28 = sub_1DAED200C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v211[0] = v30;
      *v29 = 136446210;
      v31 = *&v26[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v31)
      {
        v32 = (v31 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v34 = *v32;
        v33 = v32[1];
      }

      else
      {
        v60 = v2;
        v61 = v25;
        v34 = sub_1DAD8CE78(v61);
        v33 = v62;

        v2 = v60;
      }

      v63 = sub_1DAD6482C(v34, v33, v211);

      *(v29 + 4) = v63;
      _os_log_impl(&dword_1DAD61000, v27, v28, "[%{public}s] config validation: Can't validate configuration against scene settings, no widgetConfigurationIdentifier", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1E127F100](v30, -1, -1);
      MEMORY[0x1E127F100](v29, -1, -1);
    }

    v64 = 1;
    goto LABEL_100;
  }

  v5 = v4;
  v6 = sub_1DAED1CEC();
  v8 = v7;

  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE011BD8;
  swift_beginAccess();
  sub_1DAD6495C(v9 + 16, v209, &qword_1ECC08380, &unk_1DAED6590);
  if (!v210)
  {
    __break(1u);
    return;
  }

  v10 = __swift_project_boxed_opaque_existential_1(v209, v210);
  sub_1DAD648F8(*v10 + 64, v211);

  __swift_destroy_boxed_opaque_existential_1Tm(v209);
  __swift_project_boxed_opaque_existential_1(v211, v211[3]);
  v11 = sub_1DAED11AC();
  v208 = v8;
  if (!v11)
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v35 = sub_1DAECEDEC();
    __swift_project_value_buffer(v35, qword_1EE011748);
    v36 = a1;
    v37 = v1;
    v38 = v1;

    v39 = sub_1DAECEDCC();
    v40 = sub_1DAED200C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v209[0] = v42;
      *v41 = 136446466;
      v43 = *&v38[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v43)
      {
        v44 = (v43 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v46 = *v44;
        v45 = v44[1];
      }

      else
      {
        v65 = v36;
        v46 = sub_1DAD8CE78(v65);
        v45 = v66;
      }

      v67 = sub_1DAD6482C(v46, v45, v209);

      *(v41 + 4) = v67;
      *(v41 + 12) = 2082;
      v68 = sub_1DAD6482C(v6, v208, v209);

      *(v41 + 14) = v68;
      _os_log_impl(&dword_1DAD61000, v39, v40, "[%{public}s] config validation: Can't validate configuration against scene settings, widgetConfigurationIdentifier '%{public}s' not found in any CHSConfiguredWidgetDescriptor", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v42, -1, -1);
      MEMORY[0x1E127F100](v41, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v211);
    v64 = 1;
    v2 = v37;
    goto LABEL_100;
  }

  v205 = v6;
  v203 = v9;
  v12 = v11;
  v206 = [v11 container];
  v13 = [a1 metrics];
  v14 = [v13 _stringKeyRepresentation];

  v15 = sub_1DAED1CEC();
  v17 = v16;

  v207 = v12;
  v18 = [v12 metrics];
  v19 = [v18 _stringKeyRepresentation];

  v20 = sub_1DAED1CEC();
  v22 = v21;

  v204 = v2;
  if (v15 == v20 && v17 == v22)
  {

    v23 = 0;
  }

  else
  {
    v47 = sub_1DAED289C();

    v23 = 0;
    if ((v47 & 1) == 0)
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v48 = sub_1DAECEDEC();
      __swift_project_value_buffer(v48, qword_1EE011748);
      v49 = a1;
      v50 = v2;

      v51 = v207;
      v52 = sub_1DAECEDCC();
      v53 = sub_1DAED201C();

      if (os_log_type_enabled(v52, v53))
      {
        v202 = v53;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v209[0] = v55;
        *v54 = 136446978;
        v56 = *&v50[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        v201 = v55;
        if (v56)
        {
          v57 = (v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v59 = *v57;
          v58 = v57[1];
        }

        else
        {
          v69 = v49;
          v59 = sub_1DAD8CE78(v69);
          v58 = v70;
        }

        v71 = sub_1DAD6482C(v59, v58, v209);

        *(v54 + 4) = v71;
        *(v54 + 12) = 2080;
        v72 = [v49 metrics];
        v73 = [v72 _stringKeyRepresentation];

        v74 = sub_1DAED1CEC();
        v76 = v75;

        v77 = sub_1DAD6482C(v74, v76, v209);

        *(v54 + 14) = v77;
        *(v54 + 22) = 2080;
        *(v54 + 24) = sub_1DAD6482C(v205, v208, v209);
        *(v54 + 32) = 2080;
        v78 = [v51 metrics];
        v79 = [v78 _stringKeyRepresentation];

        v80 = sub_1DAED1CEC();
        v82 = v81;

        v83 = sub_1DAD6482C(v80, v82, v209);

        *(v54 + 34) = v83;
        _os_log_impl(&dword_1DAD61000, v52, v202, "[%{public}s] config validation found error: Metrics\n%s don't match CHSConfiguredWidgetDescriptor metrics id %s\n%s.", v54, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v201, -1, -1);
        MEMORY[0x1E127F100](v54, -1, -1);

        v23 = 1;
        v2 = v204;
      }

      else
      {

        v23 = 1;
      }
    }
  }

  v84 = v207;
  v85 = [v207 supportedRenderSchemes];
  sub_1DAD674D4(0, &unk_1EE005598, 0x1E6994420);
  v86 = sub_1DAED1E7C();

  v87 = [a1 renderScheme];
  v209[0] = v87;
  MEMORY[0x1EEE9AC00](v87);
  v200[2] = v209;
  v88 = sub_1DAD8DD18(sub_1DAD8DCB0, v200, v86);

  if ((v88 & 1) == 0)
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v89 = sub_1DAECEDEC();
    __swift_project_value_buffer(v89, qword_1EE011748);
    v90 = a1;
    v91 = v2;
    v92 = v208;

    v93 = sub_1DAECEDCC();
    v94 = sub_1DAED201C();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v209[0] = v97;
      *v95 = 136446722;
      v98 = *&v91[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v98)
      {
        v99 = (v98 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v101 = *v99;
        v100 = v99[1];
      }

      else
      {
        v102 = v90;
        v101 = sub_1DAD8CE78(v102);
        v100 = v103;

        v92 = v208;
      }

      v104 = sub_1DAD6482C(v101, v100, v209);

      *(v95 + 4) = v104;
      *(v95 + 12) = 2114;
      v105 = [v90 renderScheme];
      *(v95 + 14) = v105;
      *v96 = v105;
      *(v95 + 22) = 2082;
      *(v95 + 24) = sub_1DAD6482C(v205, v92, v209);
      _os_log_impl(&dword_1DAD61000, v93, v94, "[%{public}s] config validation found error: Requested render scheme %{public}@ not in matching CHSConfiguredWidgetDescriptor id %{public}s.", v95, 0x20u);
      sub_1DAD64398(v96, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v96, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v97, -1, -1);
      MEMORY[0x1E127F100](v95, -1, -1);

      v23 = 1;
      v2 = v204;
    }

    else
    {

      v23 = 1;
    }

    v84 = v207;
  }

  v106 = [a1 colorScheme];
  v107 = [v84 supportedColorSchemes];
  if (v106 == 2 || (v107) && (v106 == 1 || (v107 & 2) != 0))
  {
LABEL_55:
    v119 = v206;
    if (v206)
    {
      goto LABEL_59;
    }

    goto LABEL_67;
  }

  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v108 = sub_1DAECEDEC();
  __swift_project_value_buffer(v108, qword_1EE011748);
  v109 = a1;
  v110 = v2;

  v111 = sub_1DAECEDCC();
  v112 = sub_1DAED201C();

  if (!os_log_type_enabled(v111, v112))
  {

    v23 = 1;
    goto LABEL_55;
  }

  v113 = swift_slowAlloc();
  v114 = swift_slowAlloc();
  v209[0] = v114;
  *v113 = 136446722;
  v115 = *&v110[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v115)
  {
    v116 = (v115 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
    v118 = *v116;
    v117 = v116[1];
  }

  else
  {
    v120 = v109;
    v118 = sub_1DAD8CE78(v120);
    v117 = v121;
  }

  v122 = sub_1DAD6482C(v118, v117, v209);

  *(v113 + 4) = v122;
  *(v113 + 12) = 2082;
  [v109 colorScheme];
  v123 = NSStringFromCHSColorScheme();
  v124 = sub_1DAED1CEC();
  v126 = v125;

  v127 = sub_1DAD6482C(v124, v126, v209);

  *(v113 + 14) = v127;
  *(v113 + 22) = 2082;
  *(v113 + 24) = sub_1DAD6482C(v205, v208, v209);
  _os_log_impl(&dword_1DAD61000, v111, v112, "[%{public}s] config validation found error: Requested color scheme %{public}s not in matching CHSConfiguredWidgetDescriptor id %{public}s.", v113, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1E127F100](v114, -1, -1);
  MEMORY[0x1E127F100](v113, -1, -1);

  v23 = 1;
  v2 = v204;
  v84 = v207;
  v119 = v206;
  if (v206)
  {
LABEL_59:
    v128 = v119;
    if (([v128 canAppearInSecureEnvironment] & 1) != 0 || (objc_msgSend(a1, sel_canAppearInSecureEnvironment) & 1) == 0)
    {
    }

    else
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v129 = sub_1DAECEDEC();
      __swift_project_value_buffer(v129, qword_1EE011748);
      v130 = a1;
      v131 = v2;

      v132 = sub_1DAECEDCC();
      v133 = sub_1DAED201C();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v209[0] = v135;
        *v134 = 136446466;
        v136 = *&v131[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        if (v136)
        {
          v137 = (v136 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v139 = *v137;
          v138 = v137[1];
        }

        else
        {
          v197 = v130;
          v139 = sub_1DAD8CE78(v197);
          v138 = v198;
        }

        v199 = sub_1DAD6482C(v139, v138, v209);

        *(v134 + 4) = v199;
        *(v134 + 12) = 2082;
        *(v134 + 14) = sub_1DAD6482C(v205, v208, v209);
        _os_log_impl(&dword_1DAD61000, v132, v133, "[%{public}s] config validation found error: scene 'canAppearInSecureEnvironment' but CHSConfiguredWidgetDescriptor id %{public}s says it can't.", v134, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v135, -1, -1);
        MEMORY[0x1E127F100](v134, -1, -1);

        v23 = 1;
        v2 = v204;
        v84 = v207;
      }

      else
      {

        v23 = 1;
      }
    }
  }

LABEL_67:
  v140 = [a1 _FBSScene];
  v141 = [v140 settings];

  v142 = [v141 displayConfiguration];
  if (v142)
  {
    v143 = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithDisplayConfiguration_];
    v144 = [v84 displayProperties];
    sub_1DAD674D4(0, &qword_1EE005540, 0x1E69943A0);
    v145 = sub_1DAED228C();

    if (v145)
    {
    }

    else
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v146 = sub_1DAECEDEC();
      __swift_project_value_buffer(v146, qword_1EE011748);
      v147 = a1;
      v148 = v2;

      v149 = sub_1DAECEDCC();
      v150 = sub_1DAED201C();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v209[0] = v152;
        *v151 = 136446466;
        v153 = *&v148[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        if (v153)
        {
          v154 = (v153 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v156 = *v154;
          v155 = v154[1];
        }

        else
        {
          v157 = v147;
          v156 = sub_1DAD8CE78(v157);
          v155 = v158;
        }

        v159 = sub_1DAD6482C(v156, v155, v209);

        *(v151 + 4) = v159;
        *(v151 + 12) = 2082;
        *(v151 + 14) = sub_1DAD6482C(v205, v208, v209);
        _os_log_impl(&dword_1DAD61000, v149, v150, "[%{public}s] config validation found error: Requested CHSWidgetDisplayProperties not in matching CHSConfiguredWidgetDescriptor id %{public}s.", v151, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v152, -1, -1);
        MEMORY[0x1E127F100](v151, -1, -1);

        v23 = 1;
        v2 = v204;
        v84 = v207;
      }

      else
      {

        v23 = 1;
        v2 = v204;
      }
    }
  }

  v160 = [a1 supportsLowLuminance];
  if (v160 != [v84 supportsLowLuminance])
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v161 = sub_1DAECEDEC();
    __swift_project_value_buffer(v161, qword_1EE011748);
    v162 = a1;
    v163 = v2;

    v164 = sub_1DAECEDCC();
    v165 = sub_1DAED201C();

    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v209[0] = v167;
      *v166 = 136446722;
      v168 = *&v163[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v168)
      {
        v169 = (v168 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v171 = *v169;
        v170 = v169[1];
      }

      else
      {
        v172 = v162;
        v171 = sub_1DAD8CE78(v172);
        v170 = v173;
      }

      v174 = sub_1DAD6482C(v171, v170, v209);

      *(v166 + 4) = v174;
      *(v166 + 12) = 1026;
      v175 = [v162 supportsLowLuminance];

      *(v166 + 14) = v175;
      *(v166 + 18) = 2082;
      *(v166 + 20) = sub_1DAD6482C(v205, v208, v209);
      _os_log_impl(&dword_1DAD61000, v164, v165, "[%{public}s] config validation found error: Request for supportsLowLuminance (%{BOOL,public}d) not in matching CHSConfiguredWidgetDescriptor id %{public}s.", v166, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v167, -1, -1);
      MEMORY[0x1E127F100](v166, -1, -1);

      v23 = 1;
      v2 = v204;
      v84 = v207;
    }

    else
    {

      v23 = 1;
    }
  }

  v176 = [a1 showsWidgetLabel];
  if (v176 == [v84 showsWidgetLabel])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v211);
    if (v23)
    {
      v64 = 2;
    }

    else
    {
      v64 = 0;
    }
  }

  else
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v177 = sub_1DAECEDEC();
    __swift_project_value_buffer(v177, qword_1EE011748);
    v178 = a1;
    v179 = v2;

    v180 = sub_1DAECEDCC();
    v181 = sub_1DAED201C();

    if (os_log_type_enabled(v180, v181))
    {
      v182 = v2;
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v209[0] = v184;
      *v183 = 136446722;
      v185 = *&v179[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v185)
      {
        v186 = (v185 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v188 = *v186;
        v187 = v186[1];
      }

      else
      {
        v189 = v178;
        v188 = sub_1DAD8CE78(v189);
        v187 = v190;
      }

      v191 = sub_1DAD6482C(v188, v187, v209);

      *(v183 + 4) = v191;
      *(v183 + 12) = 1026;
      v192 = [v178 showsWidgetLabel];

      *(v183 + 14) = v192;
      *(v183 + 18) = 2082;
      v193 = sub_1DAD6482C(v205, v208, v209);

      *(v183 + 20) = v193;
      _os_log_impl(&dword_1DAD61000, v180, v181, "[%{public}s] config validation found error: Request for showsWidgetLabel (%{BOOL,public}d) not in matching CHSConfiguredWidgetDescriptor id %{public}s.", v183, 0x1Cu);
      v64 = 2;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v184, -1, -1);
      MEMORY[0x1E127F100](v183, -1, -1);

      __swift_destroy_boxed_opaque_existential_1Tm(v211);
      v2 = v182;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v211);
      v64 = 2;
    }
  }

LABEL_100:
  v194 = *&v2[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v194)
  {
    v195 = *(v194 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController);
    *(v195 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_validationState) = v64;
    v196 = *(v195 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView);
    v196[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationState] = v64;
    [v196 setNeedsLayout];
  }
}