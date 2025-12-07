uint64_t sub_1BF155D44()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);
  sub_1BF104180(*(v0 + 56), *(v0 + 25) & 1);

  return MEMORY[0x1EEE6DFA0](sub_1BF155DB4, v1, 0);
}

uint64_t sub_1BF155DB4()
{
  OUTLINED_FUNCTION_5();
  sub_1BF105358(*(v0 + 56), *(v0 + 25));
  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_1BF155E10()
{
  v1[9] = v0;
  v2 = *v0;
  v1[10] = *v0;
  v1[11] = *(v2 + 80);
  OUTLINED_FUNCTION_2_3();
  v1[12] = v3;
  v1[13] = OUTLINED_FUNCTION_24();
  v4 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_68(v4);
  v1[14] = OUTLINED_FUNCTION_24();
  v1[15] = *(v2 + 88);
  v1[16] = swift_getAssociatedTypeWitness();
  v1[17] = OUTLINED_FUNCTION_24();
  v1[18] = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[19] = AssociatedTypeWitness;
  v1[20] = *(AssociatedTypeWitness - 8);
  v1[21] = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](sub_1BF156024, v0, 0);
}

uint64_t sub_1BF156024()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 128);
  sub_1BF17B20C();
  v4 = v2;
  sub_1BF17A32C();
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  v5 = 1;
  *(v0 + 192) = 1;
  do
  {
    OUTLINED_FUNCTION_8_33();
    sub_1BF17AF0C();
    if (__swift_getEnumTagSinglePayload(v3, 1, v1) == 1)
    {
      v15 = OUTLINED_FUNCTION_19_16();
      v16(v15);
      if (v4 == 1 && (v5 & 1) != 0 && (v17 = *(v0 + 176), *(v0 + 192) != 1))
      {
        v18 = OUTLINED_FUNCTION_5_43();
        OUTLINED_FUNCTION_20_18(v18);
        *v19 = v17;
      }

      else
      {
      }

      OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_22_15();

      __asm { BRAA            X3, X16 }
    }

    v6 = OUTLINED_FUNCTION_10_32();
    v7(v6);
    v4 = sub_1BF1550A8();
    v8 = type metadata accessor for NetworkActivitySession();
    OUTLINED_FUNCTION_15_21(v8);

    v9 = *(v1 + 8);
    v1 += 8;
    v9(v2, v3);
    v5 = 0;
    v10 = *(v0 + 64);
    *(v0 + 184) = v10;
  }

  while (!v10);
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_22_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BF156228()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);
  *(v0 + 48) = sub_1BF10358C();
  *(v0 + 56) = v2;
  *(v0 + 195) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BF15629C, v1, 0);
}

uint64_t sub_1BF15629C()
{
  v5 = *(v1 + 195);
  if (v5 == 254)
  {
    v6 = 0;
  }

  else
  {
    if (v5 == 255)
    {

      v6 = 0;
      goto LABEL_14;
    }

    if (v5)
    {
      v0 = *(v1 + 48);
      v7 = v0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v1 + 176);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BF0A6CE4();
        v9 = v26;
      }

      v3 = *(v9 + 16);
      if (v3 >= *(v9 + 24) >> 1)
      {
        sub_1BF0A6CE4();
        v9 = v27;
      }

      v2 = *(v1 + 195);

      sub_1BF105358(v0, v2);
      *(v9 + 16) = v3 + 1;
      *(v9 + 8 * v3 + 32) = v0;
      v6 = *(v1 + 194);
      *(v1 + 176) = v9;
      *(v1 + 192) = 0;
      goto LABEL_13;
    }

    v6 = *(v1 + 194);
  }

LABEL_13:
  *(v1 + 193) = 1;
  do
  {
LABEL_14:
    OUTLINED_FUNCTION_8_33();
    sub_1BF17AF0C();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      v19 = OUTLINED_FUNCTION_19_16();
      v20(v19);
      if (v0 == 1 && (v6 & 1) != 0 && (v21 = *(v1 + 176), *(v1 + 192) != 1))
      {
        v22 = OUTLINED_FUNCTION_5_43();
        OUTLINED_FUNCTION_20_18(v22);
        *v23 = v21;
      }

      else
      {
      }

      OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_22_15();

      __asm { BRAA            X3, X16 }
    }

    v10 = OUTLINED_FUNCTION_10_32();
    v11(v10);
    LODWORD(v0) = sub_1BF1550A8();
    v12 = type metadata accessor for NetworkActivitySession();
    OUTLINED_FUNCTION_15_21(v12);

    v13 = *(v4 + 8);
    v4 += 8;
    v13(v2, v3);
    v6 = 0;
    v14 = *(v1 + 64);
    *(v1 + 184) = v14;
  }

  while (!v14);
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_22_15();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t ParentNetworkActivitySession.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ParentNetworkActivitySession.__deallocating_deinit()
{
  ParentNetworkActivitySession.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t ParentNetworkActivitySession.didActivate(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1BF00974C(0);
  v6 = OUTLINED_FUNCTION_68(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  if (qword_1EBDCAFD0 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EBDCAFD0);
  }

  v11 = sub_1BF1797FC();
  __swift_project_value_buffer(v11, qword_1EBDCBC28);

  v12 = sub_1BF1797DC();
  v13 = sub_1BF17ACDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *&v24[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = v2[14];
    v16 = *(v15 + 136);
    v17 = *(v15 + 144);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v18 = sub_1BF01A7AC(v16, v17, v24);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1BF01A7AC(*(a1 + 136), *(a1 + 144), v24);
    _os_log_impl(&dword_1BEFE0000, v12, v13, "Child network activity was activated, parentActivity=%s, childActivity=%s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v19 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  v20 = *(v4 + 96);
  v24[0] = *(v4 + 80);
  v24[1] = v20;
  v21 = type metadata accessor for ParentNetworkActivitySession(255, v24);
  OUTLINED_FUNCTION_2_61(v21);
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_21_16(v22);
  OUTLINED_FUNCTION_9_1();
  sub_1BF089AC0();
}

uint64_t sub_1BF15682C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF10DA70;

  return sub_1BF1556B0(v1);
}

uint64_t ParentNetworkActivitySession.didComplete(_:with:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v4;
  sub_1BF00974C(0);
  v10 = OUTLINED_FUNCTION_68(v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  if (qword_1EBDCAFD0 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EBDCAFD0);
  }

  v15 = sub_1BF1797FC();
  __swift_project_value_buffer(v15, qword_1EBDCBC28);

  v16 = a3 & 1;
  sub_1BF104FB4(a2, a3 & 1);
  v17 = sub_1BF1797DC();
  v18 = sub_1BF17ACDC();

  sub_1BF104FC0(a2, v16);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 136315650;
    v21 = v4[14];
    v37 = v14;
    v38 = v20;
    v36 = v8;
    v23 = *(v21 + 136);
    v22 = *(v21 + 144);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v24 = sub_1BF01A7AC(v23, v22, &v38);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1BF01A7AC(*(a1 + 136), *(a1 + 144), &v38);
    *(v19 + 22) = 2080;
    *&v39[0] = a2;
    BYTE8(v39[0]) = v16;
    sub_1BF104FB4(a2, v16);
    sub_1BF105080(0, v25, v26, v27);
    v28 = sub_1BF17A13C();
    v30 = sub_1BF01A7AC(v28, v29, &v38);
    v8 = v36;

    *(v19 + 24) = v30;
    v14 = v37;
    _os_log_impl(&dword_1BEFE0000, v17, v18, "Child network activity was completed, parentActivity=%s, childActivity=%s, result=%s", v19, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v31 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v31);
  v32 = *(v8 + 96);
  v39[0] = *(v8 + 80);
  v39[1] = v32;
  v33 = type metadata accessor for ParentNetworkActivitySession(255, v39);
  OUTLINED_FUNCTION_2_61(v33);
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_21_16(v34);
  OUTLINED_FUNCTION_9_1();
  sub_1BF089AC0();
}

uint64_t sub_1BF156B9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF146918;

  return sub_1BF1557D0(v1);
}

uint64_t sub_1BF156C50()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6(v4);

  return sub_1BF155588(v6, v7, v8, v2, v1);
}

uint64_t sub_1BF156CF8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6(v1);

  return sub_1BF15682C();
}

uint64_t sub_1BF156D94()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6(v1);

  return sub_1BF156B9C();
}

uint64_t sub_1BF156E30(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1BF156F3C(id result, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1BF104FB4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1BF156F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF156F90(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4)
{
  a2(&v7);
  result = v7;
  if (!v7)
  {
    (*(a4 + 48))(&v8, a1);
    return v8;
  }

  return result;
}

uint64_t Container.__allocating_init(bundleAssemblies:assemblies:singletonPool:environment:)()
{
  v0 = swift_allocObject();
  Container.init(bundleAssemblies:assemblies:singletonPool:environment:)();
  return v0;
}

TeaFoundation::Container::TestSuite_optional __swiftcall Container.TestSuite.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF17B57C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Container.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TeaFoundation9Container_identifier;
  sub_1BF1794FC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Container.environment.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t Container.environment.setter(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
  result = OUTLINED_FUNCTION_1_61(v2 + OBJC_IVAR____TtC13TeaFoundation9Container_environment, a2);
  *(v2 + v4) = v3;
  return result;
}

uint64_t Container.__allocating_init(bundleAssemblies:assemblies:singletonPool:environment:containerLock:)()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_11_24();
  Container.init(bundleAssemblies:assemblies:singletonPool:environment:containerLock:)();
  return v0;
}

uint64_t Container.init(bundleAssemblies:assemblies:singletonPool:environment:containerLock:)()
{
  OUTLINED_FUNCTION_6_40();
  v3 = v2;
  v15 = *v4;
  v16 = *v5;
  sub_1BF1794EC();
  v6 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_environment) = 3;
  v7 = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_definitions) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_erasedDefinitions) = v7;
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_lazyRegistrations) = MEMORY[0x1E69E7CC0];
  type metadata accessor for ContainerStore();
  v8 = swift_allocObject();
  sub_1BF1794FC();
  v9 = sub_1BEFE5BB4();
  *(v8 + 16) = OUTLINED_FUNCTION_15_22(v9);
  type metadata accessor for ContainerStoreWrapper();
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v10 = sub_1BEFE5F7C(v8, 0);
  OUTLINED_FUNCTION_10_33(v10, OBJC_IVAR____TtC13TeaFoundation9Container_containerStore);
  type metadata accessor for Pool();
  swift_allocObject();

  v12 = sub_1BEFE63A8(v11);
  OUTLINED_FUNCTION_10_33(v12, OBJC_IVAR____TtC13TeaFoundation9Container_pool);
  type metadata accessor for CallbackStore();
  OUTLINED_FUNCTION_58();
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v7;
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore) = v13;
  swift_beginAccess();
  *(v0 + v6) = v15;
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_containerLock) = v16;
  sub_1BEFE652C(v3, v1);

  return v0;
}

uint64_t sub_1BF1574A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 8))(*(a2 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore), a3, a4, v7, v8);
}

uint64_t Container.deinit()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation9Container_identifier;
  sub_1BF1794FC();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t Container.__deallocating_deinit()
{
  Container.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF15764C()
{

  swift_weakDestroy();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1BF15768C()
{
  result = qword_1EBDCC768;
  if (!qword_1EBDCC768)
  {
    sub_1BEFF9030(255, &qword_1EBDCC770, &type metadata for Container.TestSuite, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC768);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Container.TestSuite(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for Container.Environment(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Container.Environment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t (*sub_1BF1579F4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1BF1579E8(a3);
  sub_1BF0F428C();
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x1BFB53020](a2, a3);
  }

  *a1 = v7;
  return sub_1BF157A80;
}

uint64_t sub_1BF157A88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF156F90(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t CodingKey.pathSegment.getter(uint64_t a1, uint64_t a2)
{
  sub_1BF17BCDC();
  if (v2)
  {
    v3 = sub_1BF17BCBC();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {
      return 0;
    }

    v10 = 46;
    v7 = sub_1BF17BCBC();
    MEMORY[0x1BFB52000](v7);
  }

  else
  {
    v10 = 91;
    v8 = sub_1BF17B6FC();
    MEMORY[0x1BFB52000](v8);

    MEMORY[0x1BFB52000](93, 0xE100000000000000);
  }

  return v10;
}

uint64_t Array<A>.path.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v2 = v17;
    v4 = a1 + 32;
    do
    {
      sub_1BEFE6A78(v4, v14);
      v5 = v15;
      v6 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v7 = CodingKey.pathSegment.getter(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1(v14);
      v17 = v2;
      v10 = *(v2 + 16);
      if (v10 >= *(v2 + 24) >> 1)
      {
        sub_1BF00DD60();
        v2 = v17;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v14[0] = v2;
  sub_1BF02027C();
  sub_1BF01B738();
  v12 = sub_1BF179F7C();

  return v12;
}

uint64_t sub_1BF157D34(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1, a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return SyncValue.value.setter();
}

uint64_t SyncValue.value.setter()
{
  OUTLINED_FUNCTION_0_81();
  v5 = *(v1 + *(v4 + 96));
  UnfairLock.lock()();
  v6 = *(*v0 + 88);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v7 - 8);
  (*(v8 + 24))(v0 + v6, v2, v7);
  swift_endAccess();
  os_unfair_lock_unlock(*(v5 + 16));
  return (*(v8 + 8))(v2, v7);
}

void (*SyncValue.value.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *(*v1 + 80);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  SyncValue.value.getter();
  return sub_1BF157FD0;
}

void sub_1BF157FD0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    SyncValue.value.setter();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SyncValue.value.setter();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SyncValue.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  SyncValue.init(_:)();
  return v0;
}

uint64_t sub_1BF158128(uint64_t a1, void (*a2)(_BYTE *))
{
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15[-v10];
  v13 = *(v12 + 88);
  swift_beginAccess();
  (*(v5 + 16))(v7, a1 + v13, v4);
  a2(v7);
  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v13, v11, v4);
  return swift_endAccess();
}

uint64_t SyncValue.modify(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + *(*v2 + 96));
  v8[4] = a2;
  v8[5] = v4;
  v8[3] = a1;
  v5 = type metadata accessor for UnfairLock();
  v6 = *(v3 + 80);

  Lock.sync<A>(_:)(sub_1BF15862C, v8, v5, v6, &protocol witness table for UnfairLock);
}

uint64_t sub_1BF158380@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = *(*a1 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - v11;
  v14 = *(v13 + 88);
  swift_beginAccess();
  v15 = *(v6 + 16);
  v15(v8, a1 + v14, v5);
  a2(v8);
  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  (*(v6 + 40))(a1 + v14, v12, v5);
  swift_endAccess();
  return (v15)(v18, a1 + v14, v5);
}

uint64_t SyncValue.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t SyncValue.__deallocating_deinit()
{
  SyncValue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Scope.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

unint64_t sub_1BF1586FC()
{
  result = qword_1EBDCC778;
  if (!qword_1EBDCC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Scope(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _TeaJSONDecoder.__allocating_init()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_allocObject();
  _TeaJSONDecoder.init()();
  return v0;
}

uint64_t sub_1BF15884C()
{
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF158880(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_61(v2 + 16, a2);
  *(v2 + 16) = a1;
}

id sub_1BF1588BC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 40);
  *(a1 + 16) = v5;
  return sub_1BF01730C(v3, v4, v5);
}

uint64_t sub_1BF15894C@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v3;
  a1[1] = v4;
  return sub_1BF009984(v3, v4);
}

uint64_t static JSONDecoder.KeyDecodingStrategy.custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  OUTLINED_FUNCTION_58();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_1BF16184C;
  a3[1] = v6;
  v7 = *MEMORY[0x1E6967F00];
  sub_1BF178C7C();
  OUTLINED_FUNCTION_12();
  (*(v8 + 104))(a3, v7);
}

void sub_1BF158A80(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  sub_1BF0B6010(a1, &v10);
  if (v11)
  {
    sub_1BEFE87B0(&v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v5 = sub_1BF17BCBC();
    v6 = a2(v5);
    v8 = v7;

    a3[3] = &type metadata for _JSONKey;
    a3[4] = sub_1BF02A58C();
    v9 = swift_allocObject();
    *a3 = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    *(v9 + 32) = 0;
    *(v9 + 40) = 1;
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static _TeaJSONDecoder.KeyDecodingStrategy.custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  OUTLINED_FUNCTION_58();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  OUTLINED_FUNCTION_58();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BF161854;
  *(v7 + 24) = v6;
  *a3 = sub_1BF161C3C;
  a3[1] = v7;
  v8 = *MEMORY[0x1E6967F00];
  sub_1BF178C7C();
  OUTLINED_FUNCTION_12();
  (*(v9 + 104))(a3, v8);
}

uint64_t sub_1BF158C38(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BF17DEF0;
  *(v6 + 56) = &type metadata for _JSONKey;
  *(v6 + 64) = sub_1BF02A58C();
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = 0;
  *(v7 + 40) = 1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  a3(v10, v6);

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v8 = sub_1BF17BCBC();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

double sub_1BF158D90@<D0>(uint64_t a1@<X8>)
{
  sub_1BF1588BC(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

void sub_1BF158DD4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_1BF01730C(v4[0], v1, v2);
  sub_1BF027CE0(v4, v3);
}

double sub_1BF158E20@<D0>(_OWORD *a1@<X8>)
{
  sub_1BF15894C(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BF158E5C(uint64_t *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  sub_1BF009984(v4[0], v1);
  return sub_1BF0223FC(v4, v2);
}

float sub_1BF158EA8(uint64_t a1, uint64_t a2)
{
  sub_1BF054138(sub_1BF158F20, 0, a1, a2, MEMORY[0x1E69E6448], &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1BF158F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF030BB8(a1, a2, &v9);

  v8 = v9;
  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  *(a3 + 4) = !v6;
  return result;
}

unint64_t sub_1BF158FA0@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    LOBYTE(v5) = 1;
LABEL_66:
    *a3 = v7;
    a3[1] = v5 & 1;
    return result;
  }

  v8 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0757C0(v8, a2);
    v10 = v28;

    LODWORD(v5) = (v10 >> 8) & 1;
LABEL_63:
    if (v5)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      LOBYTE(v7) = v10;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          LOBYTE(v10) = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_61;
              }

              v19 = (10 * v10);
              if (v19 != 10 * v10)
              {
                goto LABEL_61;
              }

              v10 = v19 + v18;
              if ((v19 + v18) != v10)
              {
                goto LABEL_61;
              }

              ++v17;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        LOBYTE(v10) = 0;
        if (result)
        {
          while (1)
          {
            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_61;
            }

            v24 = (10 * v10);
            if (v24 != 10 * v10)
            {
              goto LABEL_61;
            }

            v10 = v24 + v23;
            if ((v24 + v23) != v10)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v10) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LOBYTE(v10) = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = (10 * v10);
            if (v13 != 10 * v10)
            {
              goto LABEL_61;
            }

            v10 = v13 - v12;
            if ((v13 - v12) != v10)
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v30 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LOBYTE(v10) = 0;
        v25 = v29;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = (10 * v10);
          if (v27 != 10 * v10)
          {
            break;
          }

          v10 = v27 + v26;
          if ((v27 + v26) != v10)
          {
            break;
          }

          ++v25;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LOBYTE(v10) = 0;
        v14 = v29 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = (10 * v10);
          if (v16 != 10 * v10)
          {
            break;
          }

          v10 = v16 - v15;
          if ((v16 - v15) != v10)
          {
            break;
          }

          ++v14;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LOBYTE(v10) = 0;
      v20 = v29 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = (10 * v10);
        if (v22 != 10 * v10)
        {
          break;
        }

        v10 = v22 + v21;
        if ((v22 + v21) != v10)
        {
          break;
        }

        ++v20;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_1BF1592DC@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    LOBYTE(v5) = 1;
LABEL_66:
    *a3 = v7;
    *(a3 + 2) = v5 & 1;
    return result;
  }

  v8 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF075C98(v8, a2);
    v10 = v28;

    LODWORD(v5) = HIWORD(v10) & 1;
LABEL_63:
    if (v5)
    {
      LOWORD(v7) = 0;
    }

    else
    {
      LOWORD(v7) = v10;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          LOWORD(v10) = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_61;
              }

              v19 = (10 * v10);
              if (v19 != 10 * v10)
              {
                goto LABEL_61;
              }

              v10 = v19 + v18;
              if ((v19 + v18) != v10)
              {
                goto LABEL_61;
              }

              ++v17;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        LOWORD(v10) = 0;
        if (result)
        {
          while (1)
          {
            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_61;
            }

            v24 = (10 * v10);
            if (v24 != 10 * v10)
            {
              goto LABEL_61;
            }

            v10 = v24 + v23;
            if ((v24 + v23) != v10)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOWORD(v10) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LOWORD(v10) = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = (10 * v10);
            if (v13 != 10 * v10)
            {
              goto LABEL_61;
            }

            v10 = v13 - v12;
            if ((v13 - v12) != v10)
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v30 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LOWORD(v10) = 0;
        v25 = v29;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = (10 * v10);
          if (v27 != 10 * v10)
          {
            break;
          }

          v10 = v27 + v26;
          if ((v27 + v26) != v10)
          {
            break;
          }

          ++v25;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LOWORD(v10) = 0;
        v14 = v29 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = (10 * v10);
          if (v16 != 10 * v10)
          {
            break;
          }

          v10 = v16 - v15;
          if ((v16 - v15) != v10)
          {
            break;
          }

          ++v14;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LOWORD(v10) = 0;
      v20 = v29 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = (10 * v10);
        if (v22 != 10 * v10)
        {
          break;
        }

        v10 = v22 + v21;
        if ((v22 + v21) != v10)
        {
          break;
        }

        ++v20;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1BF159630()
{
  OUTLINED_FUNCTION_0_82();
  result = OUTLINED_FUNCTION_3_49(v1, v2, v3, &v5);
  if (!v0)
  {
    return v5;
  }

  return result;
}

unint64_t sub_1BF159668@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    LOBYTE(v5) = 1;
LABEL_66:
    *a3 = v7;
    a3[1] = v5 & 1;
    return result;
  }

  v8 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0765AC(v8, a2);
    v10 = v22;

    LODWORD(v5) = (v10 >> 8) & 1;
LABEL_63:
    if (v5)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      LOBYTE(v7) = v10;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          LOBYTE(v10) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v10) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v10 = (10 * v10) + v16;
              if ((v10 >> 8))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        LOBYTE(v10) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v10) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v10 = (10 * v10) + v19;
            if ((v10 >> 8))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v10) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LOBYTE(v10) = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v10) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v10 = (10 * v10) - v12;
            if ((v10 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v24 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v23[0] = result;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LOBYTE(v10) = 0;
        v20 = v23;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          if (((10 * v10) & 0xF00) != 0)
          {
            break;
          }

          v10 = (10 * v10) + v21;
          if ((v10 >> 8))
          {
            break;
          }

          ++v20;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LOBYTE(v10) = 0;
        v13 = v23 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          if (((10 * v10) & 0xF00) != 0)
          {
            break;
          }

          v10 = (10 * v10) - v14;
          if ((v10 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LOBYTE(v10) = 0;
      v17 = v23 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        if (((10 * v10) & 0xF00) != 0)
        {
          break;
        }

        v10 = (10 * v10) + v18;
        if ((v10 >> 8))
        {
          break;
        }

        ++v17;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1BF1599BC()
{
  OUTLINED_FUNCTION_0_82();
  result = OUTLINED_FUNCTION_3_49(v1, v2, v3, &v5);
  if (!v0)
  {
    return v5;
  }

  return result;
}

unint64_t sub_1BF1599F4@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    LOBYTE(v5) = 1;
LABEL_66:
    *a3 = v7;
    *(a3 + 2) = v5 & 1;
    return result;
  }

  v8 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF076A48(v8, a2);
    v10 = v22;

    LODWORD(v5) = HIWORD(v10) & 1;
LABEL_63:
    if (v5)
    {
      LOWORD(v7) = 0;
    }

    else
    {
      LOWORD(v7) = v10;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          LOWORD(v10) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v10) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v10 = (10 * v10) + v16;
              if ((v10 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        LOWORD(v10) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v10) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v10 = (10 * v10) + v19;
            if ((v10 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOWORD(v10) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LOWORD(v10) = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v10) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v10 = (10 * v10) - v12;
            if ((v10 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v24 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v23[0] = result;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LOWORD(v10) = 0;
        v20 = v23;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          if (((10 * v10) & 0xF0000) != 0)
          {
            break;
          }

          v10 = (10 * v10) + v21;
          if ((v10 & 0x10000) != 0)
          {
            break;
          }

          ++v20;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LOWORD(v10) = 0;
        v13 = v23 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          if (((10 * v10) & 0xF0000) != 0)
          {
            break;
          }

          v10 = (10 * v10) - v14;
          if ((v10 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LOWORD(v10) = 0;
      v17 = v23 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        if (((10 * v10) & 0xF0000) != 0)
        {
          break;
        }

        v10 = (10 * v10) + v18;
        if ((v10 & 0x10000) != 0)
        {
          break;
        }

        ++v17;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_1BF159D48@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    LOBYTE(v5) = 1;
LABEL_66:
    *a3 = v7;
    *(a3 + 4) = v5 & 1;
    return result;
  }

  v8 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF076EF8(v8, a2);
    v10 = v28;

    v5 = HIDWORD(v10) & 1;
LABEL_63:
    if (v5)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      LODWORD(v7) = v10;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          LODWORD(v10) = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_61;
              }

              v19 = 10 * v10;
              if ((v19 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v10) = v19 + v18;
              if (__CFADD__(v19, v18))
              {
                goto LABEL_61;
              }

              ++v17;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        LODWORD(v10) = 0;
        if (result)
        {
          while (1)
          {
            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_61;
            }

            v24 = 10 * v10;
            if ((v24 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v10) = v24 + v23;
            if (__CFADD__(v24, v23))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v10) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LODWORD(v10) = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = 10 * v10;
            if ((v13 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v10) = v13 - v12;
            if (v13 < v12)
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v30 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LODWORD(v10) = 0;
        v25 = v29;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v10;
          if ((v27 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v10) = v27 + v26;
          if (__CFADD__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LODWORD(v10) = 0;
        v14 = v29 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v16 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v10) = v16 - v15;
          if (v16 < v15)
          {
            break;
          }

          ++v14;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LODWORD(v10) = 0;
      v20 = v29 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v10;
        if ((v22 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v10) = v22 + v21;
        if (__CFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

void sub_1BF15A024(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t, unint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  v7 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    v22 = 0;
    v21 = 1;
LABEL_78:
    *a4 = v22;
    *(a4 + 8) = v21 & 1;
    return;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v12 = a3(a1, a2, 10);
    v21 = v24;

LABEL_75:
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v12;
    }

    goto LABEL_78;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v7 >= 1)
      {
        if (v7 != 1)
        {
          v12 = 0;
          if (v10)
          {
            OUTLINED_FUNCTION_8_34();
            while (1)
            {
              OUTLINED_FUNCTION_15();
              if (!v14 && v13)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_15_23();
              if (!v14)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_11_25();
              if (v13)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_44();
              if (v14)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      goto LABEL_84;
    }

    if (v11 != 45)
    {
      if (v7)
      {
        v12 = 0;
        if (v10)
        {
          while (1)
          {
            OUTLINED_FUNCTION_9_30();
            if (!v14 && v13)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v12, v19))
            {
              goto LABEL_73;
            }

            v13 = __CFADD__(10 * v12, v20);
            v12 = 10 * v12 + v20;
            if (v13)
            {
              goto LABEL_73;
            }

            if (v18 == 1)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_73:
      v12 = 0;
      v16 = 1;
      goto LABEL_74;
    }

    if (v7 >= 1)
    {
      if (v7 != 1)
      {
        v12 = 0;
        if (v10)
        {
          OUTLINED_FUNCTION_8_34();
          while (1)
          {
            OUTLINED_FUNCTION_15();
            if (!v14 && v13)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_15_23();
            if (!v14)
            {
              goto LABEL_73;
            }

            v13 = 10 * v12 >= v15;
            v12 = 10 * v12 - v15;
            if (!v13)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_44();
            if (v14)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_63:
        v16 = 0;
LABEL_74:
        v21 = v16;
        goto LABEL_75;
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v6)
      {
        v12 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_15();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_15_23();
          if (!v14)
          {
            break;
          }

          OUTLINED_FUNCTION_11_25();
          if (v13)
          {
            break;
          }

          OUTLINED_FUNCTION_44();
          if (v14)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        v12 = 0;
        OUTLINED_FUNCTION_4_42();
        while (1)
        {
          OUTLINED_FUNCTION_15();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_15_23();
          if (!v14)
          {
            break;
          }

          v13 = 10 * v12 >= v17;
          v12 = 10 * v12 - v17;
          if (!v13)
          {
            break;
          }

          OUTLINED_FUNCTION_44();
          if (v14)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_83;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      v12 = 0;
      OUTLINED_FUNCTION_4_42();
      while (1)
      {
        OUTLINED_FUNCTION_15();
        if (!v14 && v13)
        {
          break;
        }

        OUTLINED_FUNCTION_15_23();
        if (!v14)
        {
          break;
        }

        OUTLINED_FUNCTION_11_25();
        if (v13)
        {
          break;
        }

        OUTLINED_FUNCTION_44();
        if (v14)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_85:
  __break(1u);
}

unint64_t sub_1BF15A2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  v12 = *(v5 + 40);
  result = sub_1BF018248(a2, a3, &v33);
  if (!v6)
  {
    v28 = v11;
    v29 = a2;
    v30 = v12;
    v14 = v33;
    v15 = v33 >> 61;
    if (v33 >> 61)
    {
      v21 = v33;
      sub_1BF05350C();
      swift_allocError();
      v23 = v22;
      *v22 = v30;
      v24 = *(a3 + 16);
      v22[4] = v24;
      v22[5] = *(a3 + 24);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22 + 1);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_0, v29, v24);
      v23[6] = 0x7463656A626FLL;
      v23[7] = 0xE600000000000000;
      v26 = 0xE500000000000000;
      v27 = 0x7961727261;
      switch(v15)
      {
        case 2:
          v26 = 0xE600000000000000;
          v27 = 0x676E69727473;
          break;
        case 3:
          v26 = 0xE600000000000000;
          v27 = 0x7265626D756ELL;
          break;
        case 4:
          if (v21 == 0x8000000000000000)
          {
            v26 = 0xE400000000000000;
            v27 = 1702195828;
          }

          else if (v21 == 0x8000000000000008)
          {
            v26 = 0xE500000000000000;
            v27 = 0x65736C6166;
          }

          else
          {
            v26 = 0xE400000000000000;
            v27 = 1819047278;
          }

          break;
        default:
          break;
      }

      v23[8] = v27;
      v23[9] = v26;
      *(v23 + 80) = 11;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v20 = v21;
    }

    else
    {
      sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BF17DEF0;
      v17 = *(a3 + 16);
      *(inited + 56) = v17;
      *(inited + 64) = *(a3 + 24);
      v18 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(*(v17 - 8) + 16))(v18, a2, v17);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF02967C(inited);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01730C(v9, v10, v28);
      type metadata accessor for JSONKeyedDecodingContainer(0, a4, a5, v19);
      swift_getWitnessTable();
      sub_1BF17B64C();
      v20 = v14;
    }

    return sub_1BF017214(v20);
  }

  return result;
}

id sub_1BF15A618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  result = sub_1BF018248(a1, a2, &v28);
  if (!v4)
  {
    v27 = v12;
    if (v28 >> 61 == 1)
    {
      v25 = *((v28 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = v28;
      sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BF17DEF0;
      v15 = *(a2 + 16);
      *(inited + 56) = v15;
      *(inited + 64) = *(a2 + 24);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, a1, v15);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF02967C(inited);
      sub_1BF017214(v26);
      a3[3] = &type metadata for JSONUnkeyedDecodingContainer;
      a3[4] = sub_1BF029920();
      v17 = swift_allocObject();
      *a3 = v17;
      *(v17 + 56) = v27;
      *(v17 + 64) = 0;
      *(v17 + 16) = v25;
      *(v17 + 24) = v8;
      *(v17 + 32) = v9;
      *(v17 + 40) = v10;
      *(v17 + 48) = v11;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      return sub_1BF01730C(v9, v10, v11);
    }

    else
    {
      v18 = v28;
      sub_1BF05350C();
      swift_allocError();
      v20 = v19;
      *v19 = v12;
      v21 = *(a2 + 16);
      v19[4] = v21;
      v19[5] = *(a2 + 24);
      v22 = __swift_allocate_boxed_opaque_existential_0(v19 + 1);
      (*(*(v21 - 8) + 16))(v22, a1, v21);
      v23 = 0x7961727261;
      v24 = 0xE500000000000000;
      v20[6] = 0x7961727261;
      v20[7] = 0xE500000000000000;
      switch(v12)
      {
        case 1:
          break;
        case 2:
          v24 = 0xE600000000000000;
          v23 = 0x676E69727473;
          break;
        case 3:
          v24 = 0xE600000000000000;
          v23 = 0x7265626D756ELL;
          break;
        case 4:
          if (v18 == 0x8000000000000000)
          {
            v24 = 0xE400000000000000;
            v23 = 1702195828;
          }

          else if (v18 == 0x8000000000000008)
          {
            v24 = 0xE500000000000000;
            v23 = 0x65736C6166;
          }

          else
          {
            v24 = 0xE400000000000000;
            v23 = 1819047278;
          }

          break;
        default:
          v24 = 0xE600000000000000;
          v23 = 0x7463656A626FLL;
          break;
      }

      v20[8] = v23;
      v20[9] = v24;
      *(v20 + 80) = 11;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      return sub_1BF017214(v18);
    }
  }

  return result;
}

id sub_1BF15A950@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v14 = v1[3];
  v5 = *(v1 + 32);
  v6 = v1[5];
  if (qword_1EBDCAFE8 != -1)
  {
    swift_once();
  }

  v7 = 0x8000000000000010;
  __swift_project_boxed_opaque_existential_1(qword_1EBDCC780, qword_1EBDCC798);
  sub_1BF17BCBC();
  if (*(v3 + 16))
  {
    v8 = sub_1BF014CA8();
    v10 = v9;

    if (v10)
    {
      v7 = *(*(v3 + 56) + 8 * v8);
      sub_1BF01716C(v7);
    }
  }

  else
  {
  }

  sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17DEF0;
  sub_1BEFE6A78(qword_1EBDCC780, inited + 32);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF02967C(inited);
  a1[3] = &type metadata for _JSONDecoder;
  a1[4] = sub_1BF0172B8();
  v12 = swift_allocObject();
  *a1 = v12;
  *(v12 + 48) = v6;
  *(v12 + 56) = v4;
  *(v12 + 16) = v7;
  *(v12 + 24) = v15;
  *(v12 + 32) = v14;
  *(v12 + 40) = v5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return sub_1BF01730C(v15, v14, v5);
}

id sub_1BF15AB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v18 = v3[1];
  v20 = v3[3];
  v19 = *(v3 + 32);
  v7 = v3[5];
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_1BF17BCBC();
  if (*(v6 + 16))
  {
    v10 = sub_1BF014CA8();
    v12 = v11;

    v13 = 0x8000000000000010;
    if (v12)
    {
      v13 = *(*(v6 + 56) + 8 * v10);
      sub_1BF01716C(v13);
    }
  }

  else
  {

    v13 = 0x8000000000000010;
  }

  sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17DEF0;
  *(inited + 56) = v9;
  *(inited + 64) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF02967C(inited);
  a3[3] = &type metadata for _JSONDecoder;
  a3[4] = sub_1BF0172B8();
  v16 = swift_allocObject();
  *a3 = v16;
  *(v16 + 48) = v7;
  *(v16 + 56) = v18;
  *(v16 + 16) = v13;
  *(v16 + 24) = v21;
  *(v16 + 32) = v20;
  *(v16 + 40) = v19;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return sub_1BF01730C(v21, v20, v19);
}

uint64_t sub_1BF15AF7C()
{
  result = sub_1BF17B9FC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15AFCC()
{
  result = sub_1BF17B9DC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15B0CC()
{
  result = sub_1BF17BA0C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15B11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

BOOL sub_1BF15B1B8(unint64_t a1)
{
  sub_1BF02A3D8(&v6);
  if (!v1)
  {
    v3 = v6;
    v4 = 0x8000000000000010;
    v2 = v6 == 0x8000000000000010;
    if (v6 != 0x8000000000000010)
    {
      sub_1BF01716C(v6);
      v4 = v3;
    }

    sub_1BF017214(v4);
    sub_1BF017214(0x8000000000000010);
    sub_1BF017214(v4);
  }

  return v2;
}

void sub_1BF15B248(unint64_t a1)
{
  sub_1BF02A3D8(&v10);
  if (!v2)
  {
    v3 = v10;
    v4 = v10 >> 61;
    if (v10 >> 61 != 4 || v10 != 0x8000000000000000 && v10 != 0x8000000000000008)
    {
      v5 = *(v1 + 48);
      v6 = v5 - 1;
      if (__OFSUB__(v5, 1))
      {
        __break(1u);
      }

      else
      {
        *(v1 + 48) = v6;
        sub_1BF05350C();
        swift_allocError();
        v8 = 0xE600000000000000;
        v9 = 0x7463656A626FLL;
        switch(v4)
        {
          case 1:
            v8 = 0xE500000000000000;
            v9 = 0x7961727261;
            break;
          case 2:
            v9 = 0x676E69727473;
            break;
          case 3:
            v9 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v8 = 0xE400000000000000;
              v9 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v8 = 0xE500000000000000;
              v9 = 0x65736C6166;
            }

            else
            {
              v8 = 0xE400000000000000;
              v9 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v7 = *(v1 + 40);
        *(v7 + 8) = v6;
        *(v7 + 16) = 0x6E61656C6F6F62;
        *(v7 + 24) = 0xE700000000000000;
        *(v7 + 32) = v9;
        *(v7 + 40) = v8;
        *(v7 + 80) = 12;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF017214(v3);
      }
    }
  }
}

void sub_1BF15B3F4(unint64_t a1)
{
  sub_1BF02A3D8(&v10);
  if (!v2)
  {
    v3 = v10;
    v4 = v10 >> 61;
    if (v10 >> 61 == 2)
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF017214(v3);
    }

    else
    {
      v5 = *(v1 + 48);
      v6 = v5 - 1;
      if (__OFSUB__(v5, 1))
      {
        __break(1u);
      }

      else
      {
        *(v1 + 48) = v6;
        sub_1BF05350C();
        swift_allocError();
        v8 = 0xE600000000000000;
        v9 = 0x7463656A626FLL;
        switch(v4)
        {
          case 1:
            v8 = 0xE500000000000000;
            v9 = 0x7961727261;
            break;
          case 2:
            v9 = 0x676E69727473;
            break;
          case 3:
            v9 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v8 = 0xE400000000000000;
              v9 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v8 = 0xE500000000000000;
              v9 = 0x65736C6166;
            }

            else
            {
              v8 = 0xE400000000000000;
              v9 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v7 = *(v1 + 40);
        *(v7 + 8) = v6;
        *(v7 + 16) = 0x676E69727473;
        *(v7 + 24) = 0xE600000000000000;
        *(v7 + 32) = v9;
        *(v7 + 40) = v8;
        *(v7 + 80) = 12;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF017214(v3);
      }
    }
  }
}

void sub_1BF15B598(unint64_t a1)
{
  sub_1BF02A3D8(&v14);
  if (!v2)
  {
    v3 = v14;
    v4 = v14 >> 61;
    if (v14 >> 61 == 3)
    {
      v6 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      swift_bridgeObjectRetain_n();
      sub_1BF052280(v6, v5);
      if ((v7 & 1) == 0)
      {
        sub_1BF017214(v3);

        return;
      }

      sub_1BF05350C();
      swift_allocError();
      *v8 = *(v1 + 40);
      *(v8 + 8) = v6;
      *(v8 + 16) = v5;
      *(v8 + 80) = 13;
      swift_willThrow();
    }

    else
    {
      v9 = *(v1 + 48);
      v10 = v9 - 1;
      if (__OFSUB__(v9, 1))
      {
        __break(1u);
        return;
      }

      *(v1 + 48) = v10;
      sub_1BF05350C();
      swift_allocError();
      v12 = 0xE600000000000000;
      v13 = 0x7463656A626FLL;
      switch(v4)
      {
        case 1:
          v12 = 0xE500000000000000;
          v13 = 0x7961727261;
          break;
        case 2:
          v13 = 0x676E69727473;
          break;
        case 3:
          v13 = 0x7265626D756ELL;
          break;
        case 4:
          if (v3 == 0x8000000000000000)
          {
            v12 = 0xE400000000000000;
            v13 = 1702195828;
          }

          else if (v3 == 0x8000000000000008)
          {
            v12 = 0xE500000000000000;
            v13 = 0x65736C6166;
          }

          else
          {
            v12 = 0xE400000000000000;
            v13 = 1819047278;
          }

          break;
        default:
          break;
      }

      *v11 = *(v1 + 40);
      *(v11 + 8) = v10;
      *(v11 + 16) = 0x7265626D756ELL;
      *(v11 + 24) = 0xE600000000000000;
      *(v11 + 32) = v13;
      *(v11 + 40) = v12;
      *(v11 + 80) = 12;
      swift_willThrow();
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF017214(v3);
  }
}

void sub_1BF15B79C(unint64_t a1)
{
  sub_1BF02A3D8(&v13);
  if (!v2)
  {
    v3 = v13;
    v4 = v13 >> 61;
    if (v13 >> 61 == 3)
    {
      v6 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      swift_bridgeObjectRetain_n();
      if ((sub_1BF030B4C(v6, v5) & 0x100000000) == 0)
      {
        sub_1BF017214(v3);

        return;
      }

      sub_1BF05350C();
      swift_allocError();
      *v12 = *(v1 + 40);
      *(v12 + 8) = v6;
      *(v12 + 16) = v5;
      *(v12 + 80) = 13;
      swift_willThrow();
    }

    else
    {
      v7 = *(v1 + 48);
      v8 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
        return;
      }

      *(v1 + 48) = v8;
      sub_1BF05350C();
      swift_allocError();
      v10 = 0xE600000000000000;
      v11 = 0x7463656A626FLL;
      switch(v4)
      {
        case 1:
          v10 = 0xE500000000000000;
          v11 = 0x7961727261;
          break;
        case 2:
          v11 = 0x676E69727473;
          break;
        case 3:
          v11 = 0x7265626D756ELL;
          break;
        case 4:
          if (v3 == 0x8000000000000000)
          {
            v10 = 0xE400000000000000;
            v11 = 1702195828;
          }

          else if (v3 == 0x8000000000000008)
          {
            v10 = 0xE500000000000000;
            v11 = 0x65736C6166;
          }

          else
          {
            v10 = 0xE400000000000000;
            v11 = 1819047278;
          }

          break;
        default:
          break;
      }

      *v9 = *(v1 + 40);
      *(v9 + 8) = v8;
      *(v9 + 16) = 0x7265626D756ELL;
      *(v9 + 24) = 0xE600000000000000;
      *(v9 + 32) = v11;
      *(v9 + 40) = v10;
      *(v9 + 80) = 12;
      swift_willThrow();
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF017214(v3);
  }
}

void sub_1BF15B9A0(unint64_t a1)
{
  sub_1BF02A3D8(v43);
  if (!v2)
  {
    v3 = v43[0];
    v4 = v43[0] >> 61;
    if (v43[0] >> 61 == 3)
    {
      v4 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = HIBYTE(v5) & 0xF;
      v7 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v43[0] = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v43[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                v28 = 0;
                v29 = v43 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  v31 = 10 * v28;
                  if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                  {
                    break;
                  }

                  v28 = v31 + v30;
                  if (__OFADD__(v31, v30))
                  {
                    break;
                  }

                  ++v29;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v4 != 45)
          {
            if (v6)
            {
              v35 = 0;
              v36 = v43;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  break;
                }

                v35 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  break;
                }

                v36 = (v36 + 1);
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v6)
          {
            if (--v6)
            {
              v20 = 0;
              v21 = v43 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  break;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  break;
                }

                v20 = v23 - v22;
                if (__OFSUB__(v23, v22))
                {
                  break;
                }

                ++v21;
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = sub_1BF17B2FC();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                v24 = 0;
                if (v9)
                {
                  v25 = v9 + 1;
                  while (1)
                  {
                    v26 = *v25 - 48;
                    if (v26 > 9)
                    {
                      goto LABEL_71;
                    }

                    v27 = 10 * v24;
                    if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                    {
                      goto LABEL_71;
                    }

                    v24 = v27 + v26;
                    if (__OFADD__(v27, v26))
                    {
                      goto LABEL_71;
                    }

                    ++v25;
                    if (!--v6)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              v32 = 0;
              if (v9)
              {
                while (1)
                {
                  v33 = *v9 - 48;
                  if (v33 > 9)
                  {
                    goto LABEL_71;
                  }

                  v34 = 10 * v32;
                  if ((v32 * 10) >> 64 != (10 * v32) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v32 = v34 + v33;
                  if (__OFADD__(v34, v33))
                  {
                    goto LABEL_71;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v6) = 1;
LABEL_72:
            v44 = v6;
            v39 = v6;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v39)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v40 = *(v1 + 40);
              *(v40 + 8) = v4;
              *(v40 + 16) = v5;
              *(v40 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v3);
              return;
            }

LABEL_82:
            sub_1BF017214(v3);

            return;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              v11 = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_71;
                  }

                  v14 = 10 * v11;
                  if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v11 = v14 - v13;
                  if (__OFSUB__(v14, v13))
                  {
                    goto LABEL_71;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v6) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v15 = *(v1 + 48);
      v5 = v15 - 1;
      if (!__OFSUB__(v15, 1))
      {
        *(v1 + 48) = v5;
        sub_1BF05350C();
        swift_allocError();
        v17 = *(v1 + 40);
        v18 = 0xE600000000000000;
        v19 = 0x7463656A626FLL;
        switch(v4)
        {
          case 1:
            v18 = 0xE500000000000000;
            v19 = 0x7961727261;
            break;
          case 2:
            v19 = 0x676E69727473;
            break;
          case 3:
            v19 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v18 = 0xE400000000000000;
              v19 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v18 = 0xE500000000000000;
              v19 = 0x65736C6166;
            }

            else
            {
              v18 = 0xE400000000000000;
              v19 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v16 = v17;
        *(v16 + 8) = v5;
        *(v16 + 16) = 0x7265626D756ELL;
        *(v16 + 24) = 0xE600000000000000;
        *(v16 + 32) = v19;
        *(v16 + 40) = v18;
        *(v16 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF0750D8(v4, v5);
    v42 = v41;

    if (v42)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15BE58(unint64_t a1)
{
  sub_1BF02A3D8(v43);
  if (!v2)
  {
    v3 = v43[0];
    v4 = v43[0] >> 61;
    if (v43[0] >> 61 == 3)
    {
      v4 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = HIBYTE(v5) & 0xF;
      v7 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v43[0] = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v43[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                LOBYTE(v28) = 0;
                v29 = v43 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  v31 = (10 * v28);
                  if (v31 != 10 * v28)
                  {
                    break;
                  }

                  v28 = v31 + v30;
                  if ((v31 + v30) != v28)
                  {
                    break;
                  }

                  ++v29;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v4 != 45)
          {
            if (v6)
            {
              LOBYTE(v35) = 0;
              v36 = v43;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = (10 * v35);
                if (v38 != 10 * v35)
                {
                  break;
                }

                v35 = v38 + v37;
                if ((v38 + v37) != v35)
                {
                  break;
                }

                v36 = (v36 + 1);
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v6)
          {
            if (--v6)
            {
              LOBYTE(v20) = 0;
              v21 = v43 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  break;
                }

                v23 = (10 * v20);
                if (v23 != 10 * v20)
                {
                  break;
                }

                v20 = v23 - v22;
                if ((v23 - v22) != v20)
                {
                  break;
                }

                ++v21;
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = sub_1BF17B2FC();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                LOBYTE(v24) = 0;
                if (v9)
                {
                  v25 = v9 + 1;
                  while (1)
                  {
                    v26 = *v25 - 48;
                    if (v26 > 9)
                    {
                      goto LABEL_71;
                    }

                    v27 = (10 * v24);
                    if (v27 != 10 * v24)
                    {
                      goto LABEL_71;
                    }

                    v24 = v27 + v26;
                    if ((v27 + v26) != v24)
                    {
                      goto LABEL_71;
                    }

                    ++v25;
                    if (!--v6)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              LOBYTE(v32) = 0;
              if (v9)
              {
                while (1)
                {
                  v33 = *v9 - 48;
                  if (v33 > 9)
                  {
                    goto LABEL_71;
                  }

                  v34 = (10 * v32);
                  if (v34 != 10 * v32)
                  {
                    goto LABEL_71;
                  }

                  v32 = v34 + v33;
                  if ((v34 + v33) != v32)
                  {
                    goto LABEL_71;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v6) = 1;
LABEL_72:
            v44 = v6;
            v39 = v6;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v39)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v40 = *(v1 + 40);
              *(v40 + 8) = v4;
              *(v40 + 16) = v5;
              *(v40 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v3);
              return;
            }

LABEL_82:
            sub_1BF017214(v3);

            return;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              LOBYTE(v11) = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_71;
                  }

                  v14 = (10 * v11);
                  if (v14 != 10 * v11)
                  {
                    goto LABEL_71;
                  }

                  v11 = v14 - v13;
                  if ((v14 - v13) != v11)
                  {
                    goto LABEL_71;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v6) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v15 = *(v1 + 48);
      v5 = v15 - 1;
      if (!__OFSUB__(v15, 1))
      {
        *(v1 + 48) = v5;
        sub_1BF05350C();
        swift_allocError();
        v17 = *(v1 + 40);
        v18 = 0xE600000000000000;
        v19 = 0x7463656A626FLL;
        switch(v4)
        {
          case 1:
            v18 = 0xE500000000000000;
            v19 = 0x7961727261;
            break;
          case 2:
            v19 = 0x676E69727473;
            break;
          case 3:
            v19 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v18 = 0xE400000000000000;
              v19 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v18 = 0xE500000000000000;
              v19 = 0x65736C6166;
            }

            else
            {
              v18 = 0xE400000000000000;
              v19 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v16 = v17;
        *(v16 + 8) = v5;
        *(v16 + 16) = 0x7265626D756ELL;
        *(v16 + 24) = 0xE600000000000000;
        *(v16 + 32) = v19;
        *(v16 + 40) = v18;
        *(v16 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF0757C0(v4, v5);
    v42 = v41;

    if ((v42 & 0x100) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15C334(unint64_t a1)
{
  sub_1BF02A3D8(v43);
  if (!v2)
  {
    v3 = v43[0];
    v4 = v43[0] >> 61;
    if (v43[0] >> 61 == 3)
    {
      v4 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = HIBYTE(v5) & 0xF;
      v7 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v43[0] = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v43[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                LOWORD(v28) = 0;
                v29 = v43 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  v31 = (10 * v28);
                  if (v31 != 10 * v28)
                  {
                    break;
                  }

                  v28 = v31 + v30;
                  if ((v31 + v30) != v28)
                  {
                    break;
                  }

                  ++v29;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v4 != 45)
          {
            if (v6)
            {
              LOWORD(v35) = 0;
              v36 = v43;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = (10 * v35);
                if (v38 != 10 * v35)
                {
                  break;
                }

                v35 = v38 + v37;
                if ((v38 + v37) != v35)
                {
                  break;
                }

                v36 = (v36 + 1);
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v6)
          {
            if (--v6)
            {
              LOWORD(v20) = 0;
              v21 = v43 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  break;
                }

                v23 = (10 * v20);
                if (v23 != 10 * v20)
                {
                  break;
                }

                v20 = v23 - v22;
                if ((v23 - v22) != v20)
                {
                  break;
                }

                ++v21;
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = sub_1BF17B2FC();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                LOWORD(v24) = 0;
                if (v9)
                {
                  v25 = v9 + 1;
                  while (1)
                  {
                    v26 = *v25 - 48;
                    if (v26 > 9)
                    {
                      goto LABEL_71;
                    }

                    v27 = (10 * v24);
                    if (v27 != 10 * v24)
                    {
                      goto LABEL_71;
                    }

                    v24 = v27 + v26;
                    if ((v27 + v26) != v24)
                    {
                      goto LABEL_71;
                    }

                    ++v25;
                    if (!--v6)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              LOWORD(v32) = 0;
              if (v9)
              {
                while (1)
                {
                  v33 = *v9 - 48;
                  if (v33 > 9)
                  {
                    goto LABEL_71;
                  }

                  v34 = (10 * v32);
                  if (v34 != 10 * v32)
                  {
                    goto LABEL_71;
                  }

                  v32 = v34 + v33;
                  if ((v34 + v33) != v32)
                  {
                    goto LABEL_71;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v6) = 1;
LABEL_72:
            v44 = v6;
            v39 = v6;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v39)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v40 = *(v1 + 40);
              *(v40 + 8) = v4;
              *(v40 + 16) = v5;
              *(v40 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v3);
              return;
            }

LABEL_82:
            sub_1BF017214(v3);

            return;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              LOWORD(v11) = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_71;
                  }

                  v14 = (10 * v11);
                  if (v14 != 10 * v11)
                  {
                    goto LABEL_71;
                  }

                  v11 = v14 - v13;
                  if ((v14 - v13) != v11)
                  {
                    goto LABEL_71;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v6) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v15 = *(v1 + 48);
      v5 = v15 - 1;
      if (!__OFSUB__(v15, 1))
      {
        *(v1 + 48) = v5;
        sub_1BF05350C();
        swift_allocError();
        v17 = *(v1 + 40);
        v18 = 0xE600000000000000;
        v19 = 0x7463656A626FLL;
        switch(v4)
        {
          case 1:
            v18 = 0xE500000000000000;
            v19 = 0x7961727261;
            break;
          case 2:
            v19 = 0x676E69727473;
            break;
          case 3:
            v19 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v18 = 0xE400000000000000;
              v19 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v18 = 0xE500000000000000;
              v19 = 0x65736C6166;
            }

            else
            {
              v18 = 0xE400000000000000;
              v19 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v16 = v17;
        *(v16 + 8) = v5;
        *(v16 + 16) = 0x7265626D756ELL;
        *(v16 + 24) = 0xE600000000000000;
        *(v16 + 32) = v19;
        *(v16 + 40) = v18;
        *(v16 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF075C98(v4, v5);
    v42 = v41;

    if ((v42 & 0x10000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15C810(unint64_t a1)
{
  sub_1BF02A3D8(v43);
  if (!v2)
  {
    v3 = v43[0];
    v4 = v43[0] >> 61;
    if (v43[0] >> 61 == 3)
    {
      v4 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = HIBYTE(v5) & 0xF;
      v7 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v43[0] = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v43[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                v28 = 0;
                v29 = v43 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  v31 = 10 * v28;
                  if (v31 != v31)
                  {
                    break;
                  }

                  v28 = v31 + v30;
                  if (__OFADD__(v31, v30))
                  {
                    break;
                  }

                  ++v29;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v4 != 45)
          {
            if (v6)
            {
              v35 = 0;
              v36 = v43;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = 10 * v35;
                if (v38 != v38)
                {
                  break;
                }

                v35 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  break;
                }

                v36 = (v36 + 1);
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v6)
          {
            if (--v6)
            {
              v20 = 0;
              v21 = v43 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  break;
                }

                v23 = 10 * v20;
                if (v23 != v23)
                {
                  break;
                }

                v20 = v23 - v22;
                if (__OFSUB__(v23, v22))
                {
                  break;
                }

                ++v21;
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = sub_1BF17B2FC();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                v24 = 0;
                if (v9)
                {
                  v25 = v9 + 1;
                  while (1)
                  {
                    v26 = *v25 - 48;
                    if (v26 > 9)
                    {
                      goto LABEL_71;
                    }

                    v27 = 10 * v24;
                    if (v27 != v27)
                    {
                      goto LABEL_71;
                    }

                    v24 = v27 + v26;
                    if (__OFADD__(v27, v26))
                    {
                      goto LABEL_71;
                    }

                    ++v25;
                    if (!--v6)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              v32 = 0;
              if (v9)
              {
                while (1)
                {
                  v33 = *v9 - 48;
                  if (v33 > 9)
                  {
                    goto LABEL_71;
                  }

                  v34 = 10 * v32;
                  if (v34 != v34)
                  {
                    goto LABEL_71;
                  }

                  v32 = v34 + v33;
                  if (__OFADD__(v34, v33))
                  {
                    goto LABEL_71;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v6) = 1;
LABEL_72:
            v44 = v6;
            v39 = v6;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v39)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v40 = *(v1 + 40);
              *(v40 + 8) = v4;
              *(v40 + 16) = v5;
              *(v40 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v3);
              return;
            }

LABEL_82:
            sub_1BF017214(v3);

            return;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              v11 = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_71;
                  }

                  v14 = 10 * v11;
                  if (v14 != v14)
                  {
                    goto LABEL_71;
                  }

                  v11 = v14 - v13;
                  if (__OFSUB__(v14, v13))
                  {
                    goto LABEL_71;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v6) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v15 = *(v1 + 48);
      v5 = v15 - 1;
      if (!__OFSUB__(v15, 1))
      {
        *(v1 + 48) = v5;
        sub_1BF05350C();
        swift_allocError();
        v17 = *(v1 + 40);
        v18 = 0xE600000000000000;
        v19 = 0x7463656A626FLL;
        switch(v4)
        {
          case 1:
            v18 = 0xE500000000000000;
            v19 = 0x7961727261;
            break;
          case 2:
            v19 = 0x676E69727473;
            break;
          case 3:
            v19 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v18 = 0xE400000000000000;
              v19 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v18 = 0xE500000000000000;
              v19 = 0x65736C6166;
            }

            else
            {
              v18 = 0xE400000000000000;
              v19 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v16 = v17;
        *(v16 + 8) = v5;
        *(v16 + 16) = 0x7265626D756ELL;
        *(v16 + 24) = 0xE600000000000000;
        *(v16 + 32) = v19;
        *(v16 + 40) = v18;
        *(v16 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF076170(v4, v5);
    v42 = v41;

    if ((v42 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15CC8C(unint64_t a1)
{
  sub_1BF02A3D8(v43);
  if (!v2)
  {
    v3 = v43[0];
    v4 = v43[0] >> 61;
    if (v43[0] >> 61 == 3)
    {
      v4 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = HIBYTE(v5) & 0xF;
      v7 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v43[0] = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v43[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                v28 = 0;
                v29 = v43 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  v31 = 10 * v28;
                  if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                  {
                    break;
                  }

                  v28 = v31 + v30;
                  if (__OFADD__(v31, v30))
                  {
                    break;
                  }

                  ++v29;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v4 != 45)
          {
            if (v6)
            {
              v35 = 0;
              v36 = v43;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  break;
                }

                v35 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  break;
                }

                v36 = (v36 + 1);
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v6)
          {
            if (--v6)
            {
              v20 = 0;
              v21 = v43 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  break;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  break;
                }

                v20 = v23 - v22;
                if (__OFSUB__(v23, v22))
                {
                  break;
                }

                ++v21;
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = sub_1BF17B2FC();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                v24 = 0;
                if (v9)
                {
                  v25 = v9 + 1;
                  while (1)
                  {
                    v26 = *v25 - 48;
                    if (v26 > 9)
                    {
                      goto LABEL_71;
                    }

                    v27 = 10 * v24;
                    if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                    {
                      goto LABEL_71;
                    }

                    v24 = v27 + v26;
                    if (__OFADD__(v27, v26))
                    {
                      goto LABEL_71;
                    }

                    ++v25;
                    if (!--v6)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              v32 = 0;
              if (v9)
              {
                while (1)
                {
                  v33 = *v9 - 48;
                  if (v33 > 9)
                  {
                    goto LABEL_71;
                  }

                  v34 = 10 * v32;
                  if ((v32 * 10) >> 64 != (10 * v32) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v32 = v34 + v33;
                  if (__OFADD__(v34, v33))
                  {
                    goto LABEL_71;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v6) = 1;
LABEL_72:
            v44 = v6;
            v39 = v6;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v39)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v40 = *(v1 + 40);
              *(v40 + 8) = v4;
              *(v40 + 16) = v5;
              *(v40 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v3);
              return;
            }

LABEL_82:
            sub_1BF017214(v3);

            return;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              v11 = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_71;
                  }

                  v14 = 10 * v11;
                  if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v11 = v14 - v13;
                  if (__OFSUB__(v14, v13))
                  {
                    goto LABEL_71;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v6) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v15 = *(v1 + 48);
      v5 = v15 - 1;
      if (!__OFSUB__(v15, 1))
      {
        *(v1 + 48) = v5;
        sub_1BF05350C();
        swift_allocError();
        v17 = *(v1 + 40);
        v18 = 0xE600000000000000;
        v19 = 0x7463656A626FLL;
        switch(v4)
        {
          case 1:
            v18 = 0xE500000000000000;
            v19 = 0x7961727261;
            break;
          case 2:
            v19 = 0x676E69727473;
            break;
          case 3:
            v19 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v18 = 0xE400000000000000;
              v19 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v18 = 0xE500000000000000;
              v19 = 0x65736C6166;
            }

            else
            {
              v18 = 0xE400000000000000;
              v19 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v16 = v17;
        *(v16 + 8) = v5;
        *(v16 + 16) = 0x7265626D756ELL;
        *(v16 + 24) = 0xE600000000000000;
        *(v16 + 32) = v19;
        *(v16 + 40) = v18;
        *(v16 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF0750D8(v4, v5);
    v42 = v41;

    if (v42)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15D144(unint64_t a1)
{
  sub_1BF02A3D8(v37);
  if (!v2)
  {
    v3 = v37[0];
    v4 = v37[0] >> 61;
    if (v37[0] >> 61 == 3)
    {
      v4 = *((v37[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v37[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = HIBYTE(v5) & 0xF;
      v7 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v37[0] = *((v37[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v37[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                LOBYTE(v25) = 0;
                v26 = v37 + 1;
                while (1)
                {
                  v27 = *v26 - 48;
                  if (v27 > 9)
                  {
                    break;
                  }

                  if (((10 * v25) & 0xF00) != 0)
                  {
                    break;
                  }

                  v25 = (10 * v25) + v27;
                  if ((v25 >> 8))
                  {
                    break;
                  }

                  ++v26;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v4 != 45)
          {
            if (v6)
            {
              LOBYTE(v30) = 0;
              v31 = v37;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                if (((10 * v30) & 0xF00) != 0)
                {
                  break;
                }

                v30 = (10 * v30) + v32;
                if ((v30 >> 8))
                {
                  break;
                }

                v31 = (v31 + 1);
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v6)
          {
            if (--v6)
            {
              LOBYTE(v19) = 0;
              v20 = v37 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                if (((10 * v19) & 0xF00) != 0)
                {
                  break;
                }

                v19 = (10 * v19) - v21;
                if ((v19 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v20;
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = sub_1BF17B2FC();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                LOBYTE(v22) = 0;
                if (v9)
                {
                  v23 = v9 + 1;
                  while (1)
                  {
                    v24 = *v23 - 48;
                    if (v24 > 9)
                    {
                      goto LABEL_71;
                    }

                    if (((10 * v22) & 0xF00) != 0)
                    {
                      goto LABEL_71;
                    }

                    v22 = (10 * v22) + v24;
                    if ((v22 >> 8))
                    {
                      goto LABEL_71;
                    }

                    ++v23;
                    if (!--v6)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              LOBYTE(v28) = 0;
              if (v9)
              {
                while (1)
                {
                  v29 = *v9 - 48;
                  if (v29 > 9)
                  {
                    goto LABEL_71;
                  }

                  if (((10 * v28) & 0xF00) != 0)
                  {
                    goto LABEL_71;
                  }

                  v28 = (10 * v28) + v29;
                  if ((v28 >> 8))
                  {
                    goto LABEL_71;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v6) = 1;
LABEL_72:
            v38 = v6;
            v33 = v6;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v33)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v34 = *(v1 + 40);
              *(v34 + 8) = v4;
              *(v34 + 16) = v5;
              *(v34 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v3);
              return;
            }

LABEL_82:
            sub_1BF017214(v3);

            return;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              LOBYTE(v11) = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_71;
                  }

                  if (((10 * v11) & 0xF00) != 0)
                  {
                    goto LABEL_71;
                  }

                  v11 = (10 * v11) - v13;
                  if ((v11 & 0xFFFFFF00) != 0)
                  {
                    goto LABEL_71;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v6) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v14 = *(v1 + 48);
      v5 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        *(v1 + 48) = v5;
        sub_1BF05350C();
        swift_allocError();
        v16 = *(v1 + 40);
        v17 = 0xE600000000000000;
        v18 = 0x7463656A626FLL;
        switch(v4)
        {
          case 1:
            v17 = 0xE500000000000000;
            v18 = 0x7961727261;
            break;
          case 2:
            v18 = 0x676E69727473;
            break;
          case 3:
            v18 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v17 = 0xE400000000000000;
              v18 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v17 = 0xE500000000000000;
              v18 = 0x65736C6166;
            }

            else
            {
              v17 = 0xE400000000000000;
              v18 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v15 = v16;
        *(v15 + 8) = v5;
        *(v15 + 16) = 0x7265626D756ELL;
        *(v15 + 24) = 0xE600000000000000;
        *(v15 + 32) = v18;
        *(v15 + 40) = v17;
        *(v15 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF0765AC(v4, v5);
    v36 = v35;

    if ((v36 & 0x100) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15D638(unint64_t a1)
{
  sub_1BF02A3D8(v37);
  if (!v2)
  {
    v3 = v37[0];
    v4 = v37[0] >> 61;
    if (v37[0] >> 61 == 3)
    {
      v4 = *((v37[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v37[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = HIBYTE(v5) & 0xF;
      v7 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v37[0] = *((v37[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v37[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                LOWORD(v25) = 0;
                v26 = v37 + 1;
                while (1)
                {
                  v27 = *v26 - 48;
                  if (v27 > 9)
                  {
                    break;
                  }

                  if (((10 * v25) & 0xF0000) != 0)
                  {
                    break;
                  }

                  v25 = (10 * v25) + v27;
                  if ((v25 & 0x10000) != 0)
                  {
                    break;
                  }

                  ++v26;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v4 != 45)
          {
            if (v6)
            {
              LOWORD(v30) = 0;
              v31 = v37;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                if (((10 * v30) & 0xF0000) != 0)
                {
                  break;
                }

                v30 = (10 * v30) + v32;
                if ((v30 & 0x10000) != 0)
                {
                  break;
                }

                v31 = (v31 + 1);
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v6)
          {
            if (--v6)
            {
              LOWORD(v19) = 0;
              v20 = v37 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                if (((10 * v19) & 0xF0000) != 0)
                {
                  break;
                }

                v19 = (10 * v19) - v21;
                if ((v19 & 0xFFFF0000) != 0)
                {
                  break;
                }

                ++v20;
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = sub_1BF17B2FC();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                LOWORD(v22) = 0;
                if (v9)
                {
                  v23 = v9 + 1;
                  while (1)
                  {
                    v24 = *v23 - 48;
                    if (v24 > 9)
                    {
                      goto LABEL_71;
                    }

                    if (((10 * v22) & 0xF0000) != 0)
                    {
                      goto LABEL_71;
                    }

                    v22 = (10 * v22) + v24;
                    if ((v22 & 0x10000) != 0)
                    {
                      goto LABEL_71;
                    }

                    ++v23;
                    if (!--v6)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              LOWORD(v28) = 0;
              if (v9)
              {
                while (1)
                {
                  v29 = *v9 - 48;
                  if (v29 > 9)
                  {
                    goto LABEL_71;
                  }

                  if (((10 * v28) & 0xF0000) != 0)
                  {
                    goto LABEL_71;
                  }

                  v28 = (10 * v28) + v29;
                  if ((v28 & 0x10000) != 0)
                  {
                    goto LABEL_71;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v6) = 1;
LABEL_72:
            v38 = v6;
            v33 = v6;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v33)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v34 = *(v1 + 40);
              *(v34 + 8) = v4;
              *(v34 + 16) = v5;
              *(v34 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v3);
              return;
            }

LABEL_82:
            sub_1BF017214(v3);

            return;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              LOWORD(v11) = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_71;
                  }

                  if (((10 * v11) & 0xF0000) != 0)
                  {
                    goto LABEL_71;
                  }

                  v11 = (10 * v11) - v13;
                  if ((v11 & 0xFFFF0000) != 0)
                  {
                    goto LABEL_71;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v6) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v14 = *(v1 + 48);
      v5 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        *(v1 + 48) = v5;
        sub_1BF05350C();
        swift_allocError();
        v16 = *(v1 + 40);
        v17 = 0xE600000000000000;
        v18 = 0x7463656A626FLL;
        switch(v4)
        {
          case 1:
            v17 = 0xE500000000000000;
            v18 = 0x7961727261;
            break;
          case 2:
            v18 = 0x676E69727473;
            break;
          case 3:
            v18 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v17 = 0xE400000000000000;
              v18 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v17 = 0xE500000000000000;
              v18 = 0x65736C6166;
            }

            else
            {
              v17 = 0xE400000000000000;
              v18 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v15 = v16;
        *(v15 + 8) = v5;
        *(v15 + 16) = 0x7265626D756ELL;
        *(v15 + 24) = 0xE600000000000000;
        *(v15 + 32) = v18;
        *(v15 + 40) = v17;
        *(v15 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF076A48(v4, v5);
    v36 = v35;

    if ((v36 & 0x10000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15DB2C(unint64_t a1)
{
  sub_1BF02A3D8(v43);
  if (!v2)
  {
    v3 = v43[0];
    v4 = v43[0] >> 61;
    if (v43[0] >> 61 == 3)
    {
      v4 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = HIBYTE(v5) & 0xF;
      v7 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v43[0] = *((v43[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v43[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                v28 = 0;
                v29 = v43 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  v31 = 10 * v28;
                  if ((v31 & 0xFFFFFFFF00000000) != 0)
                  {
                    break;
                  }

                  v28 = v31 + v30;
                  if (__CFADD__(v31, v30))
                  {
                    break;
                  }

                  ++v29;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v4 != 45)
          {
            if (v6)
            {
              v35 = 0;
              v36 = v43;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = 10 * v35;
                if ((v38 & 0xFFFFFFFF00000000) != 0)
                {
                  break;
                }

                v35 = v38 + v37;
                if (__CFADD__(v38, v37))
                {
                  break;
                }

                v36 = (v36 + 1);
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v6)
          {
            if (--v6)
            {
              v20 = 0;
              v21 = v43 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  break;
                }

                v23 = 10 * v20;
                if ((v23 & 0xFFFFFFFF00000000) != 0)
                {
                  break;
                }

                v20 = v23 - v22;
                if (v23 < v22)
                {
                  break;
                }

                ++v21;
                if (!--v6)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = sub_1BF17B2FC();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                v24 = 0;
                if (v9)
                {
                  v25 = v9 + 1;
                  while (1)
                  {
                    v26 = *v25 - 48;
                    if (v26 > 9)
                    {
                      goto LABEL_71;
                    }

                    v27 = 10 * v24;
                    if ((v27 & 0xFFFFFFFF00000000) != 0)
                    {
                      goto LABEL_71;
                    }

                    v24 = v27 + v26;
                    if (__CFADD__(v27, v26))
                    {
                      goto LABEL_71;
                    }

                    ++v25;
                    if (!--v6)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              v32 = 0;
              if (v9)
              {
                while (1)
                {
                  v33 = *v9 - 48;
                  if (v33 > 9)
                  {
                    goto LABEL_71;
                  }

                  v34 = 10 * v32;
                  if ((v34 & 0xFFFFFFFF00000000) != 0)
                  {
                    goto LABEL_71;
                  }

                  v32 = v34 + v33;
                  if (__CFADD__(v34, v33))
                  {
                    goto LABEL_71;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v6) = 1;
LABEL_72:
            v44 = v6;
            v39 = v6;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v39)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v40 = *(v1 + 40);
              *(v40 + 8) = v4;
              *(v40 + 16) = v5;
              *(v40 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v3);
              return;
            }

LABEL_82:
            sub_1BF017214(v3);

            return;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              v11 = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_71;
                  }

                  v14 = 10 * v11;
                  if ((v14 & 0xFFFFFFFF00000000) != 0)
                  {
                    goto LABEL_71;
                  }

                  v11 = v14 - v13;
                  if (v14 < v13)
                  {
                    goto LABEL_71;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v6) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v15 = *(v1 + 48);
      v5 = v15 - 1;
      if (!__OFSUB__(v15, 1))
      {
        *(v1 + 48) = v5;
        sub_1BF05350C();
        swift_allocError();
        v17 = *(v1 + 40);
        v18 = 0xE600000000000000;
        v19 = 0x7463656A626FLL;
        switch(v4)
        {
          case 1:
            v18 = 0xE500000000000000;
            v19 = 0x7961727261;
            break;
          case 2:
            v19 = 0x676E69727473;
            break;
          case 3:
            v19 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v18 = 0xE400000000000000;
              v19 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v18 = 0xE500000000000000;
              v19 = 0x65736C6166;
            }

            else
            {
              v18 = 0xE400000000000000;
              v19 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v16 = v17;
        *(v16 + 8) = v5;
        *(v16 + 16) = 0x7265626D756ELL;
        *(v16 + 24) = 0xE600000000000000;
        *(v16 + 32) = v19;
        *(v16 + 40) = v18;
        *(v16 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF076EF8(v4, v5);
    v42 = v41;

    if ((v42 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15DFA8(void (*a1)(unint64_t, unint64_t, uint64_t))
{
  sub_1BF02A3D8(v34);
  if (!v2)
  {
    v4 = v34[0];
    v5 = v34[0] >> 61;
    if (v34[0] >> 61 == 3)
    {
      v5 = *((v34[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v34[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = HIBYTE(v6) & 0xF;
      v8 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v6) & 0xF;
      }

      else
      {
        v9 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (!v9)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_84;
      }

      if ((v6 & 0x1000000000000000) == 0)
      {
        if ((v6 & 0x2000000000000000) != 0)
        {
          v34[0] = *((v34[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v34[1] = v6 & 0xFFFFFFFFFFFFFFLL;
          if (v5 == 43)
          {
            if (v7)
            {
              if (v7 != 1)
              {
                OUTLINED_FUNCTION_22_16();
                while (1)
                {
                  OUTLINED_FUNCTION_15();
                  if (!v14 && v13)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_14_26();
                  if (!v14)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_10_34();
                  if (v13)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_44();
                  if (v14)
                  {
                    goto LABEL_83;
                  }
                }
              }

              goto LABEL_82;
            }

LABEL_98:
            __break(1u);
            return;
          }

          if (v5 != 45)
          {
            if (v7)
            {
              while (1)
              {
                OUTLINED_FUNCTION_15();
                if (!v14 && v13)
                {
                  break;
                }

                OUTLINED_FUNCTION_14_26();
                if (!v14)
                {
                  break;
                }

                OUTLINED_FUNCTION_10_34();
                if (v13)
                {
                  break;
                }

                OUTLINED_FUNCTION_44();
                if (v14)
                {
                  goto LABEL_83;
                }
              }
            }

            goto LABEL_82;
          }

          if (v7)
          {
            if (v7 != 1)
            {
              OUTLINED_FUNCTION_22_16();
              while (1)
              {
                OUTLINED_FUNCTION_15();
                if (!v14 && v13)
                {
                  break;
                }

                OUTLINED_FUNCTION_14_26();
                if (!v14)
                {
                  break;
                }

                v13 = 10 * a1 >= v24;
                a1 = (10 * a1 - v24);
                if (!v13)
                {
                  break;
                }

                OUTLINED_FUNCTION_44();
                if (v14)
                {
                  goto LABEL_83;
                }
              }
            }

            goto LABEL_82;
          }
        }

        else
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v10 = sub_1BF17B2FC();
          }

          v11 = *v10;
          if (v11 == 43)
          {
            if (v8 >= 1)
            {
              if (v8 != 1)
              {
                if (v10)
                {
                  OUTLINED_FUNCTION_8_34();
                  while (1)
                  {
                    OUTLINED_FUNCTION_15();
                    if (!v14 && v13)
                    {
                      goto LABEL_82;
                    }

                    OUTLINED_FUNCTION_14_26();
                    if (!v14)
                    {
                      goto LABEL_82;
                    }

                    OUTLINED_FUNCTION_10_34();
                    if (v13)
                    {
                      goto LABEL_82;
                    }

                    OUTLINED_FUNCTION_44();
                    if (v14)
                    {
                      goto LABEL_83;
                    }
                  }
                }

                goto LABEL_73;
              }

              goto LABEL_82;
            }

            goto LABEL_97;
          }

          if (v11 != 45)
          {
            if (v8)
            {
              v25 = 0;
              if (v10)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_9_30();
                  if (!v14 && v13)
                  {
                    goto LABEL_82;
                  }

                  if (!is_mul_ok(v25, v27))
                  {
                    goto LABEL_82;
                  }

                  v13 = __CFADD__(10 * v25, v28);
                  v25 = 10 * v25 + v28;
                  if (v13)
                  {
                    goto LABEL_82;
                  }

                  if (v26 == 1)
                  {
                    goto LABEL_73;
                  }
                }
              }

              goto LABEL_73;
            }

LABEL_82:
            v16 = 1;
LABEL_83:
            v35 = v16;
            v29 = v16;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v29)
            {
LABEL_84:
              v30 = sub_1BF05350C();
              OUTLINED_FUNCTION_26_10(&type metadata for JSONDecodingError, v30);
              *v31 = *(v1 + 40);
              *(v31 + 8) = v5;
              *(v31 + 16) = v6;
              *(v31 + 80) = 13;
LABEL_88:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v4);
              return;
            }

LABEL_93:
            sub_1BF017214(v4);

            return;
          }

          if (v8 >= 1)
          {
            if (v8 != 1)
            {
              v12 = 0;
              if (v10)
              {
                OUTLINED_FUNCTION_8_34();
                while (1)
                {
                  OUTLINED_FUNCTION_15();
                  if (!v14 && v13)
                  {
                    goto LABEL_82;
                  }

                  OUTLINED_FUNCTION_14_26();
                  if (!v14)
                  {
                    goto LABEL_82;
                  }

                  v13 = 10 * v12 >= v15;
                  v12 = 10 * v12 - v15;
                  if (!v13)
                  {
                    goto LABEL_82;
                  }

                  OUTLINED_FUNCTION_44();
                  if (v14)
                  {
                    goto LABEL_83;
                  }
                }
              }

LABEL_73:
              v16 = 0;
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          __break(1u);
        }

        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    else
    {
      v17 = *(v1 + 48);
      v6 = v17 - 1;
      if (!__OFSUB__(v17, 1))
      {
        *(v1 + 48) = v6;
        v18 = sub_1BF05350C();
        OUTLINED_FUNCTION_26_10(&type metadata for JSONDecodingError, v18);
        v19 = *(v1 + 40);
        OUTLINED_FUNCTION_29_11();
        v23 = 0x7265626D756ELL;
        switch(v5)
        {
          case 1:
            OUTLINED_FUNCTION_26_12();
            break;
          case 2:
            v22 = 0x676E69727473;
            break;
          case 3:
            v22 = 0x7265626D756ELL;
            break;
          case 4:
            if (v4 == 0x8000000000000000)
            {
              v21 = 0xE400000000000000;
              v22 = 1702195828;
            }

            else if (v4 == 0x8000000000000008)
            {
              v21 = 0xE500000000000000;
              v22 = 0x65736C6166;
            }

            else
            {
              v21 = 0xE400000000000000;
              v22 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v20 = v19;
        *(v20 + 8) = v6;
        *(v20 + 16) = v23;
        *(v20 + 24) = 0xE600000000000000;
        *(v20 + 32) = v22;
        *(v20 + 40) = v21;
        *(v20 + 80) = 12;
        goto LABEL_88;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    a1(v5, v6, 10);
    v33 = v32;

    if (v33)
    {
      goto LABEL_84;
    }

    goto LABEL_93;
  }
}

void sub_1BF15E3B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_1BF02A3D8(v33);
  if (!v4)
  {
    v8 = v33[0];
    v9 = v33[0] >> 61;
    if (v33[0] >> 61)
    {
      v26 = *(v3 + 48);
      v27 = v26 - 1;
      if (!__OFSUB__(v26, 1))
      {
        *(v3 + 48) = v27;
        sub_1BF05350C();
        swift_allocError();
        v29 = *(v3 + 40);
        v30 = 0xE500000000000000;
        v31 = 0x7961727261;
        switch(v9)
        {
          case 2:
            v30 = 0xE600000000000000;
            v31 = 0x676E69727473;
            break;
          case 3:
            v30 = 0xE600000000000000;
            v31 = 0x7265626D756ELL;
            break;
          case 4:
            if (v8 == 0x8000000000000000)
            {
              v30 = 0xE400000000000000;
              v31 = 1702195828;
            }

            else if (v8 == 0x8000000000000008)
            {
              v30 = 0xE500000000000000;
              v31 = 0x65736C6166;
            }

            else
            {
              v30 = 0xE400000000000000;
              v31 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v28 = v29;
        *(v28 + 8) = v27;
        *(v28 + 16) = 0x7463656A626FLL;
        *(v28 + 24) = 0xE600000000000000;
        *(v28 + 32) = v31;
        *(v28 + 40) = v30;
        *(v28 + 80) = 12;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v25 = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v10 = *(v33[0] + 16);
      v11 = *(v5 + 40);
      sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BF17DEF0;
      v13 = *(v5 + 48);
      v36 = v8;
      v14 = v13 - 1;
      if (!__OFSUB__(v13, 1))
      {
        v15 = inited;
        v33[0] = v13 - 1;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v32 = v10;
        v16 = sub_1BF17B6FC();
        v18 = v17;
        v15[7] = &type metadata for _JSONKey;
        v15[8] = sub_1BF02A58C();
        v19 = swift_allocObject();
        v15[4] = v19;
        *(v19 + 16) = v16;
        *(v19 + 24) = v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = 0;
        v33[0] = v11;
        sub_1BF02967C(v15);
        v20 = v33[0];
        v21 = *(v5 + 8);
        v22 = *(v5 + 16);
        v23 = *(v5 + 24);
        LOBYTE(v18) = *(v5 + 32);
        v33[0] = v32;
        v33[1] = v21;
        v33[2] = v22;
        v33[3] = v23;
        v34 = v18;
        v35 = v20;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01730C(v22, v23, v18);
        type metadata accessor for JSONKeyedDecodingContainer(0, a2, a3, v24);
        swift_getWitnessTable();
        sub_1BF17B64C();
        v25 = v36;
LABEL_15:
        sub_1BF017214(v25);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BF15E6B8(uint64_t *a2@<X8>)
{
  v4 = v2;
  sub_1BF02A3D8(&v31);
  if (!v3)
  {
    v6 = v31;
    v7 = v31 >> 61;
    if (v31 >> 61 == 1)
    {
      v8 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *(v4 + 40);
      sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BF17DEF0;
      v11 = *(v4 + 48);
      v12 = v11 - 1;
      if (!__OFSUB__(v11, 1))
      {
        v13 = inited;
        v31 = v11 - 1;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v30 = v8;
        v14 = sub_1BF17B6FC();
        v16 = v15;
        v13[7] = &type metadata for _JSONKey;
        v13[8] = sub_1BF02A58C();
        v17 = swift_allocObject();
        v13[4] = v17;
        *(v17 + 16) = v14;
        *(v17 + 24) = v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = 0;
        v31 = v9;
        sub_1BF02967C(v13);
        sub_1BF017214(v6);
        v18 = v31;
        v19 = *(v4 + 8);
        v20 = *(v4 + 16);
        v21 = *(v4 + 24);
        a2[3] = &type metadata for JSONUnkeyedDecodingContainer;
        v22 = *(v4 + 32);
        a2[4] = sub_1BF029920();
        v23 = swift_allocObject();
        *a2 = v23;
        *(v23 + 56) = v18;
        *(v23 + 64) = 0;
        *(v23 + 16) = v30;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01730C(v20, v21, v22);
        return;
      }

      __break(1u);
      goto LABEL_18;
    }

    v24 = *(v2 + 48);
    v25 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
LABEL_18:
      __break(1u);
      return;
    }

    *(v2 + 48) = v25;
    sub_1BF05350C();
    swift_allocError();
    v27 = *(v2 + 40);
    v28 = 0xE500000000000000;
    v29 = 0x7961727261;
    switch(v7)
    {
      case 1:
        break;
      case 2:
        v28 = 0xE600000000000000;
        v29 = 0x676E69727473;
        break;
      case 3:
        v28 = 0xE600000000000000;
        v29 = 0x7265626D756ELL;
        break;
      case 4:
        if (v6 == 0x8000000000000000)
        {
          v28 = 0xE400000000000000;
          v29 = 1702195828;
        }

        else if (v6 == 0x8000000000000008)
        {
          v28 = 0xE500000000000000;
          v29 = 0x65736C6166;
        }

        else
        {
          v28 = 0xE400000000000000;
          v29 = 1819047278;
        }

        break;
      default:
        v28 = 0xE600000000000000;
        v29 = 0x7463656A626FLL;
        break;
    }

    *v26 = v27;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0x7961727261;
    *(v26 + 24) = 0xE500000000000000;
    *(v26 + 32) = v29;
    *(v26 + 40) = v28;
    *(v26 + 80) = 12;
    swift_willThrow();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF017214(v6);
  }
}

void sub_1BF15E9B0(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[6];
  if (v4 >= *(*v1 + 16))
  {
    sub_1BF05350C();
    swift_allocError();
    v19 = v18;
    v20 = v1[5];
    sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v22 = sub_1BF17B6FC();
    v24 = v23;
    *(inited + 56) = &type metadata for _JSONKey;
    *(inited + 64) = sub_1BF02A58C();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = v22;
    *(v25 + 24) = v24;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    sub_1BF02967C(inited);
    *v19 = v20;
    *(v19 + 80) = 0;
    swift_willThrow();
  }

  else if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(*v1 + 8 * v4 + 32);
    v1[6] = v4 + 1;
    v6 = v1[5];
    sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1BF17DEF0;
    sub_1BF01716C(v5);
    sub_1BF01716C(v5);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v8 = sub_1BF17B6FC();
    v10 = v9;
    *(v7 + 56) = &type metadata for _JSONKey;
    *(v7 + 64) = sub_1BF02A58C();
    v11 = swift_allocObject();
    *(v7 + 32) = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = v4;
    *(v11 + 40) = 0;
    sub_1BF02967C(v7);
    sub_1BF017214(v5);
    v12 = v6;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];
    a1[3] = &type metadata for _JSONDecoder;
    v16 = *(v2 + 32);
    a1[4] = sub_1BF0172B8();
    v17 = swift_allocObject();
    *a1 = v17;
    *(v17 + 48) = v12;
    *(v17 + 56) = v13;
    *(v17 + 16) = v5;
    *(v17 + 24) = v14;
    *(v17 + 32) = v15;
    *(v17 + 40) = v16;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01730C(v14, v15, v16);
  }
}

uint64_t sub_1BF15EE4C()
{
  result = sub_1BF17B77C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15EE9C()
{
  result = sub_1BF17B78C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15EF44()
{
  result = sub_1BF17B7BC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15EF94()
{
  result = sub_1BF17B79C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15F0BC()
{
  result = sub_1BF17B7CC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15F10C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

void sub_1BF15F1AC()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v18 = v24;
          v17 = v23;
        }

        break;
      default:
        break;
    }

    *v16 = v2;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v25 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF0757C0(v6, v5);
    v43 = v42;

    if ((v43 & 0x100) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOBYTE(v26) = 0;
          if (v10)
          {
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_71;
              }

              v29 = (10 * v26);
              if (v29 != 10 * v26)
              {
                goto LABEL_71;
              }

              v26 = v29 + v28;
              if ((v29 + v28) != v26)
              {
                goto LABEL_71;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        LOBYTE(v34) = 0;
        if (v10)
        {
          while (1)
          {
            v35 = *v10 - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            v36 = (10 * v34);
            if (v36 != 10 * v34)
            {
              goto LABEL_71;
            }

            v34 = v36 + v35;
            if ((v36 + v35) != v34)
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v45 = v7;
      v41 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v41)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v16 = v2;
        *(v16 + 8) = v6;
        *(v16 + 16) = v5;
        v25 = 13;
LABEL_74:
        *(v16 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOBYTE(v12) = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = (10 * v12);
            if (v15 != 10 * v12)
            {
              goto LABEL_71;
            }

            v12 = v15 - v14;
            if ((v15 - v14) != v12)
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v44[0] = v6;
  v44[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        LOBYTE(v37) = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = (10 * v37);
          if (v40 != 10 * v37)
          {
            break;
          }

          v37 = v40 + v39;
          if ((v40 + v39) != v37)
          {
            break;
          }

          ++v38;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        LOBYTE(v19) = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = (10 * v19);
          if (v22 != 10 * v19)
          {
            break;
          }

          v19 = v22 - v21;
          if ((v22 - v21) != v19)
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      LOBYTE(v30) = 0;
      v31 = v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = (10 * v30);
        if (v33 != 10 * v30)
        {
          break;
        }

        v30 = v33 + v32;
        if ((v33 + v32) != v30)
        {
          break;
        }

        ++v31;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF15F64C()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v18 = v24;
          v17 = v23;
        }

        break;
      default:
        break;
    }

    *v16 = v2;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v25 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF075C98(v6, v5);
    v43 = v42;

    if ((v43 & 0x10000) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(v26) = 0;
          if (v10)
          {
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_71;
              }

              v29 = (10 * v26);
              if (v29 != 10 * v26)
              {
                goto LABEL_71;
              }

              v26 = v29 + v28;
              if ((v29 + v28) != v26)
              {
                goto LABEL_71;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        LOWORD(v34) = 0;
        if (v10)
        {
          while (1)
          {
            v35 = *v10 - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            v36 = (10 * v34);
            if (v36 != 10 * v34)
            {
              goto LABEL_71;
            }

            v34 = v36 + v35;
            if ((v36 + v35) != v34)
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v45 = v7;
      v41 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v41)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v16 = v2;
        *(v16 + 8) = v6;
        *(v16 + 16) = v5;
        v25 = 13;
LABEL_74:
        *(v16 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v12) = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = (10 * v12);
            if (v15 != 10 * v12)
            {
              goto LABEL_71;
            }

            v12 = v15 - v14;
            if ((v15 - v14) != v12)
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v44[0] = v6;
  v44[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        LOWORD(v37) = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = (10 * v37);
          if (v40 != 10 * v37)
          {
            break;
          }

          v37 = v40 + v39;
          if ((v40 + v39) != v37)
          {
            break;
          }

          ++v38;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        LOWORD(v19) = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = (10 * v19);
          if (v22 != 10 * v19)
          {
            break;
          }

          v19 = v22 - v21;
          if ((v22 - v21) != v19)
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      LOWORD(v30) = 0;
      v31 = v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = (10 * v30);
        if (v33 != 10 * v30)
        {
          break;
        }

        v30 = v33 + v32;
        if ((v33 + v32) != v30)
        {
          break;
        }

        ++v31;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF15FAEC()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v18 = v24;
          v17 = v23;
        }

        break;
      default:
        break;
    }

    *v16 = v2;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v25 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF076170(v6, v5);
    v43 = v42;

    if ((v43 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v26 = 0;
          if (v10)
          {
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_71;
              }

              v29 = 10 * v26;
              if (v29 != v29)
              {
                goto LABEL_71;
              }

              v26 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_71;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        v34 = 0;
        if (v10)
        {
          while (1)
          {
            v35 = *v10 - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            v36 = 10 * v34;
            if (v36 != v36)
            {
              goto LABEL_71;
            }

            v34 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v45 = v7;
      v41 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v41)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v16 = v2;
        *(v16 + 8) = v6;
        *(v16 + 16) = v5;
        v25 = 13;
LABEL_74:
        *(v16 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v12 = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = 10 * v12;
            if (v15 != v15)
            {
              goto LABEL_71;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v44[0] = v6;
  v44[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        v37 = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v37;
          if (v40 != v40)
          {
            break;
          }

          v37 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        v19 = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v19;
          if (v22 != v22)
          {
            break;
          }

          v19 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      v30 = 0;
      v31 = v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v30;
        if (v33 != v33)
        {
          break;
        }

        v30 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF15FF2C()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v18 = v24;
          v17 = v23;
        }

        break;
      default:
        break;
    }

    *v16 = v2;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v25 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF0750D8(v6, v5);
    v43 = v42;

    if (v43)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v26 = 0;
          if (v10)
          {
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_71;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_71;
              }

              v26 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_71;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        v34 = 0;
        if (v10)
        {
          while (1)
          {
            v35 = *v10 - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            v36 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              goto LABEL_71;
            }

            v34 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v45 = v7;
      v41 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v41)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v16 = v2;
        *(v16 + 8) = v6;
        *(v16 + 16) = v5;
        v25 = 13;
LABEL_74:
        *(v16 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v12 = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_71;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v44[0] = v6;
  v44[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        v37 = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        v19 = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      v30 = 0;
      v31 = v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          break;
        }

        v30 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}