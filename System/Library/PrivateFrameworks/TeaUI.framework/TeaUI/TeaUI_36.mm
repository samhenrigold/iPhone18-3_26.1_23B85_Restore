id StateRestoreController.init(timeWindow:isRunningPPT:)()
{
  OUTLINED_FUNCTION_3_129();
  ObjectType = swift_getObjectType();
  type metadata accessor for StateRestoreLastBackgroundStore();
  OUTLINED_FUNCTION_0_32();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_1_164(v3, "stateRestoreLastBackgroundDate");
  v4 = sub_1D8135050(v3, (v0 & 1) == 0, objc_allocWithZone(ObjectType), v1);
  v5 = swift_getObjectType();
  OUTLINED_FUNCTION_8_58(v5);
  return v4;
}

Swift::Void __swiftcall StateRestoreController.sceneDidEnterBackground()()
{
  v1 = v0;
  sub_1D7E313D0(0);
  v3 = OUTLINED_FUNCTION_50(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  sub_1D818E744();
  v7 = sub_1D818E754();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = v1 + OBJC_IVAR___TUStateRestoreController_store;
  swift_beginAccess();
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v10 + 16))(v6, v9, v10);
  swift_endAccess();
  *(v1 + OBJC_IVAR___TUStateRestoreController_anyNavigationHappenAfterBackground) = 0;
}

id StateRestoreController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateRestoreController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StateRestoreLastBackgroundStore.init()()
{
  result = v0;
  *(v0 + 16) = 0xD00000000000001ELL;
  *(v0 + 24) = 0x80000001D81D7F50;
  return result;
}

uint64_t sub_1D81348D0(uint64_t a1)
{
  sub_1D7E313D0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7FA9E88(a1, v4);
  return StateRestoreLastBackgroundStore.stateRestoreLastBackgroundDate.setter(v4);
}

uint64_t StateRestoreLastBackgroundStore.stateRestoreLastBackgroundDate.setter(uint64_t a1)
{
  sub_1D7E313D0(0);
  v3 = OUTLINED_FUNCTION_50(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = [objc_opt_self() standardUserDefaults];
  sub_1D7FA9E88(a1, v6);
  v8 = sub_1D818E754();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1D818E6D4();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  v10 = sub_1D8190EE4();
  [v7 setObject:v9 forKey:v10];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_228();
  return sub_1D8135220(a1, v11);
}

void (*StateRestoreLastBackgroundStore.stateRestoreLastBackgroundDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1D7E313D0(0);
  OUTLINED_FUNCTION_50(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  StateRestoreLastBackgroundStore.stateRestoreLastBackgroundDate.getter(v6);
  return sub_1D8134B28;
}

void sub_1D8134B28(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D7FA9E88(v3, v2);
    StateRestoreLastBackgroundStore.stateRestoreLastBackgroundDate.setter(v2);
    OUTLINED_FUNCTION_0_228();
    sub_1D8135220(v3, v4);
  }

  else
  {
    StateRestoreLastBackgroundStore.stateRestoreLastBackgroundDate.setter(v3);
  }

  free(v3);

  free(v2);
}

void (*sub_1D8134BE0(void **a1))(uint64_t a1, char a2)
{
  sub_1D7E313D0(0);
  v4 = *(*(v3 - 8) + 64);
  *a1 = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = *v1;
  a1[1] = v5;
  a1[2] = v6;
  StateRestoreLastBackgroundStore.stateRestoreLastBackgroundDate.getter(v5);
  return sub_1D8134C70;
}

void sub_1D8134C70(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    sub_1D7FA9E88(v2, v3);
    StateRestoreLastBackgroundStore.stateRestoreLastBackgroundDate.setter(v3);
    OUTLINED_FUNCTION_0_228();
    sub_1D8135220(v2, v4);
  }

  else
  {
    StateRestoreLastBackgroundStore.stateRestoreLastBackgroundDate.setter(v2);
  }

  free(v2);

  free(v3);
}

id sub_1D8134CE4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  v10 = a2;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v16);
  (*(v13 + 16))(v15, a1, a6);
  v18 = sub_1D8134E14(v15, v10, v9, v17, a6, a7, a4);
  (*(v13 + 8))(a1, a6);
  return v18;
}

id sub_1D8134E14(uint64_t a1, char a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6, double a7)
{
  ObjectType = swift_getObjectType();
  v20[3] = a5;
  v20[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  a4[OBJC_IVAR___TUStateRestoreController_anyNavigationHappenAfterBackground] = 0;
  v16 = OBJC_IVAR___TUStateRestoreController_alwaysAllowStateRestoration;
  a4[OBJC_IVAR___TUStateRestoreController_alwaysAllowStateRestoration] = 0;
  *&a4[OBJC_IVAR___TUStateRestoreController_timeWindow] = a7;
  sub_1D7E0E768(v20, &a4[OBJC_IVAR___TUStateRestoreController_store]);
  a4[OBJC_IVAR___TUStateRestoreController_isStateRestorationFeatureEnabled] = a2;
  a4[v16] = a3;
  v19.receiver = a4;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v17;
}

id sub_1D8134F28(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v14);
  (*(v11 + 16))(v13, a1, a5);
  v16 = sub_1D813511C(v13, v8, v15, a5, a6, a3);
  (*(v11 + 8))(a1, a5);
  return v16;
}

id sub_1D8135050(uint64_t a1, char a2, _BYTE *a3, double a4)
{
  ObjectType = swift_getObjectType();
  v12[3] = type metadata accessor for StateRestoreLastBackgroundStore();
  v12[4] = &protocol witness table for StateRestoreLastBackgroundStore;
  v12[0] = a1;
  a3[OBJC_IVAR___TUStateRestoreController_anyNavigationHappenAfterBackground] = 0;
  a3[OBJC_IVAR___TUStateRestoreController_alwaysAllowStateRestoration] = 0;
  *&a3[OBJC_IVAR___TUStateRestoreController_timeWindow] = a4;
  sub_1D7E0E768(v12, &a3[OBJC_IVAR___TUStateRestoreController_store]);
  a3[OBJC_IVAR___TUStateRestoreController_isStateRestorationFeatureEnabled] = a2;
  v11.receiver = a3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v9;
}

id sub_1D813511C(uint64_t a1, char a2, _BYTE *a3, uint64_t a4, uint64_t a5, double a6)
{
  ObjectType = swift_getObjectType();
  v17[3] = a4;
  v17[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  a3[OBJC_IVAR___TUStateRestoreController_anyNavigationHappenAfterBackground] = 0;
  a3[OBJC_IVAR___TUStateRestoreController_alwaysAllowStateRestoration] = 0;
  *&a3[OBJC_IVAR___TUStateRestoreController_timeWindow] = a6;
  sub_1D7E0E768(v17, &a3[OBJC_IVAR___TUStateRestoreController_store]);
  a3[OBJC_IVAR___TUStateRestoreController_isStateRestorationFeatureEnabled] = a2;
  v16.receiver = a3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v14;
}

uint64_t sub_1D8135220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RadarText.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D7F08E34(0, v2, 0);
    v3 = v23;
    v4 = v1 + 32;
    do
    {
      sub_1D8135EA4(v4, v22);
      sub_1D8135EDC(v22, v18);
      if (v21)
      {
        *&v17[0] = 91;
        *(&v17[0] + 1) = 0xE100000000000000;
        MEMORY[0x1DA713260](v18[0], v18[1]);

        MEMORY[0x1DA713260](93, 0xE100000000000000);
        v6 = *(&v17[0] + 1);
        v5 = *&v17[0];
      }

      else
      {
        v17[0] = v19;
        v17[1] = v20;
        OUTLINED_FUNCTION_2_149();
        MEMORY[0x1DA713260]();

        MEMORY[0x1DA713260](2618, 0xE200000000000000);
        sub_1D8135F44(v17, &v14);
        if (v15)
        {
          sub_1D7E05450(&v14, v16);
        }

        else
        {
          v16[3] = MEMORY[0x1E69E6158];
          v16[4] = MEMORY[0x1E69E61C8];
          v16[0] = 2960685;
          v16[1] = 0xE300000000000000;
        }

        sub_1D7E0631C(0, &unk_1EDBB2D18, MEMORY[0x1E69E6F68]);
        sub_1D8192334();
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        v5 = v16[5];
        v6 = v16[6];
        sub_1D80CF3D4(v17);
      }

      sub_1D8135F14(v22);
      v23 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1D7F08E34(v7 > 1, v8 + 1, 1);
        v3 = v23;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 64;
      --v2;
    }

    while (v2);
  }

  v22[0] = v3;
  sub_1D7EA30C0();
  OUTLINED_FUNCTION_0_229();
  sub_1D81360B4(v10, v11, MEMORY[0x1E69E6310]);
  v12 = sub_1D8190E94();

  return v12;
}

uint64_t RadarTextEntry.description.getter()
{
  sub_1D8135EDC(v0, v7);
  if (v10)
  {
    *(&v6[0] + 1) = 0xE100000000000000;
    MEMORY[0x1DA713260](v7[0], v7[1]);

    MEMORY[0x1DA713260](93, 0xE100000000000000);
    return 91;
  }

  else
  {
    v6[0] = v8;
    v6[1] = v9;
    OUTLINED_FUNCTION_2_149();
    MEMORY[0x1DA713260]();

    MEMORY[0x1DA713260](2618, 0xE200000000000000);
    sub_1D8135F44(v6, &v3);
    if (v4)
    {
      sub_1D7E05450(&v3, v5);
    }

    else
    {
      v5[3] = MEMORY[0x1E69E6158];
      v5[4] = MEMORY[0x1E69E61C8];
      v5[0] = 2960685;
      v5[1] = 0xE300000000000000;
    }

    sub_1D7E0631C(0, &unk_1EDBB2D18, MEMORY[0x1E69E6F68]);
    sub_1D8192334();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v1 = v5[5];
    sub_1D80CF3D4(v6);
  }

  return v1;
}

uint64_t RadarTextEntry.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 56) = 1;
  return result;
}

__n128 RadarTextEntry.init(_:value:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 56) = 0;
  return result;
}

void RadarTextEntry.init<A>(_:list:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v19 = a3;
  v18[2] = a4;
  v18[3] = a5;
  v7 = sub_1D8191484();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E69E6158];
  v11 = sub_1D7E6CDC0(sub_1D8136010, v18, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v19 = v11;
  sub_1D8190DB4();
  sub_1D8133240(&v19);

  sub_1D7EA30C0();
  OUTLINED_FUNCTION_0_229();
  sub_1D81360B4(v12, v13, MEMORY[0x1E69E6310]);
  v14 = sub_1D8190E94();
  v16 = v15;

  v17 = MEMORY[0x1E69E61C8];
  *(a6 + 40) = v9;
  *(a6 + 48) = v17;
  *(a6 + 16) = v14;
  *(a6 + 24) = v16;
  *(a6 + 56) = 0;
}

uint64_t sub_1D81358B0@<X0>(void *a4@<X8>)
{
  MEMORY[0x1DA713260](547520738, 0xA400000000000000);
  result = sub_1D8192604();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  return result;
}

void RadarTextEntry.init<A>(_:list:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  v20 = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v8 = sub_1D81916C4();
  WitnessTable = swift_getWitnessTable();
  v10 = MEMORY[0x1E69E6158];
  v12 = sub_1D7E6CDC0(sub_1D8136030, v19, v8, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v20 = v12;
  sub_1D8190DB4();
  sub_1D8133240(&v20);

  sub_1D7EA30C0();
  OUTLINED_FUNCTION_0_229();
  sub_1D81360B4(v13, v14, MEMORY[0x1E69E6310]);
  v15 = sub_1D8190E94();
  v17 = v16;

  v18 = MEMORY[0x1E69E61C8];
  *(a7 + 40) = v10;
  *(a7 + 48) = v18;
  *(a7 + 16) = v15;
  *(a7 + 24) = v17;
  *(a7 + 56) = 0;
}

void RadarTextEntry.init<A>(_:json:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28[1] = a5;
  v29 = a1;
  v30 = a2;
  v9 = sub_1D8190F74();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v28[0] = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D818E384();
  MEMORY[0x1EEE9AC00](v11);
  sub_1D818E3C4();
  swift_allocObject();
  sub_1D818E3B4();
  sub_1D8136054(0, &qword_1ECA0FB78, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D81A1B70;
  sub_1D818E364();
  sub_1D818E354();
  v13 = a3;
  v14 = a4;
  sub_1D818E374();
  v31 = v12;
  sub_1D81360B4(&qword_1ECA0FB80, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  sub_1D8136054(0, &qword_1ECA0FB88, MEMORY[0x1E69E62F8]);
  sub_1D804A4A0();
  sub_1D8192004();
  sub_1D818E394();
  v15 = sub_1D818E3A4();
  v17 = v16;
  v19 = v29;
  v18 = v30;
  sub_1D8190F64();
  v20 = sub_1D8190F34();
  v22 = v21;
  if (v21)
  {
    v23 = v20;
    sub_1D7EF4CE0(v15, v17);

    OUTLINED_FUNCTION_1_165();
    (*(v24 + 8))(v13, v14);
    v25 = MEMORY[0x1E69E61C8];
    v26 = MEMORY[0x1E69E6158];
  }

  else
  {
    OUTLINED_FUNCTION_1_165();
    (*(v27 + 8))(v13, v14);
    sub_1D7EF4CE0(v15, v17);

    v23 = 0;
    v26 = 0;
    v25 = 0;
  }

  *a6 = v19;
  *(a6 + 8) = v18;
  *(a6 + 16) = v23;
  *(a6 + 24) = v22;
  *(a6 + 32) = 0;
  *(a6 + 40) = v26;
  *(a6 + 48) = v25;
  *(a6 + 56) = 0;
}

uint64_t sub_1D8135F44(uint64_t a1, uint64_t a2)
{
  sub_1D8135FA8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D8135FA8(uint64_t a1)
{
  if (!qword_1EDBB2D10)
  {
    sub_1D7E0631C(255, &unk_1EDBB2D18, MEMORY[0x1E69E6F68]);
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2D10);
    }
  }
}

void sub_1D8136054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D818E384();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D81360B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_s23CustomStringConvertible_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8136130(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8136170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D81361D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8136210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8136260(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

_BYTE *sub_1D81362D4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_1D8136384()
{
  sub_1D818F844();
  v1 = qword_1EDBB0C30;
  swift_beginAccess();
  [v3 setScrollEnabled_];

  return [*(v0 + qword_1EDBB0C50) setScrollEnabled_];
}

uint64_t sub_1D8136418()
{
  v1 = qword_1EDBB0C30;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1D813645C(char a1)
{
  v3 = qword_1EDBB0C30;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1D8136384();
}

id (*sub_1D81364B0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D8136514;
}

id sub_1D8136514(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D8136384();
  }

  return result;
}

void *sub_1D8136548()
{
  v1 = *(v0 + qword_1EDBB0C50);
  v2 = v1;
  return v1;
}

id sub_1D8136590()
{
  v1 = qword_1EDBB0C60;
  v2 = *(v0 + qword_1EDBB0C60);
  if (v2)
  {
    v3 = *(v0 + qword_1EDBB0C60);
LABEL_5:
    v12 = v2;
    return v3;
  }

  v4 = v0;
  v5 = *(v0 + qword_1EDBB0C58);
  v6 = *(v0 + qword_1EDBB0C50);
  result = [v5 view];
  if (result)
  {
    v8 = result;
    v9 = objc_allocWithZone(type metadata accessor for GutterViewContentView());
    v10 = sub_1D810B404(v6, v8);
    v11 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1D8136654()
{
  v1 = [v0 view];
  if (v1)
  {
    v7 = v1;
    type metadata accessor for GutterRootView();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *&v0[qword_1EDBB0C68];
      v4 = *(v2 + OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_contentScrollView);
      *(v2 + OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_contentScrollView) = v3;
      v5 = v3;

      v6 = v4;
    }

    else
    {
      v6 = v7;
    }
  }
}

void *sub_1D8136704()
{
  v1 = *(v0 + qword_1EDBB0C68);
  v2 = v1;
  return v1;
}

void sub_1D8136734(void *a1)
{
  v2 = *(v1 + qword_1EDBB0C68);
  *(v1 + qword_1EDBB0C68) = a1;
  v3 = a1;

  sub_1D8136654();
}

id GutterViewController.init(childViewController:childScrollView:gutters:backgroundColor:)(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *a3;
  v11 = *(a3 + 8);
  *(v4 + qword_1EDBB0C30) = 1;
  v12 = qword_1EDBB0C50;
  v13 = objc_allocWithZone(type metadata accessor for GutterView());
  v14 = OUTLINED_FUNCTION_8_59();
  *(v4 + v12) = [v15 v16];
  *(v4 + qword_1EDBB0C60) = 0;
  *(v4 + qword_1EDBB0C68) = 0;
  v17 = qword_1EDBB0C48;
  *(v4 + v17) = [objc_allocWithZone(type metadata accessor for GutterViewScrollViewObserver()) init];
  *(v4 + qword_1EDBB0C40) = MEMORY[0x1E69E7CC0];
  *(v4 + qword_1EDBB0C58) = a1;
  *(v4 + qword_1EDBB0C70) = a2;
  v18 = v4 + qword_1EDBB0C28;
  *v18 = v10;
  v18[8] = v11;
  *(v4 + qword_1EDBB0C38) = a4;
  v21 = type metadata accessor for GutterViewController(0, *((v9 & v8) + 0x50), v19, v20);
  v28.receiver = v4;
  v28.super_class = v21;
  v22 = a1;

  v23 = a4;
  v24 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  v25 = v22;
  v26 = v24;
  [v26 addChildViewController_];
  [v25 didMoveToParentViewController_];

  return v26;
}

id GutterViewController.__allocating_init(childViewController:childScrollView:gutters:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a3 + 8);
  v8 = *a3;
  LOBYTE(v9) = v5;
  v6 = [objc_opt_self() systemBackgroundColor];
  return GutterViewController.__allocating_init(childViewController:childScrollView:gutters:backgroundColor:)(a1, a2, &v8, v6);
}

id GutterViewController.__allocating_init(childViewController:childScrollView:gutters:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D818EE34();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *a4;
  v10 = *(a4 + 8);
  OUTLINED_FUNCTION_0_32();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_1D8136C68();
  sub_1D813913C(0, &qword_1EDBB33D8, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D8136CC0();

  sub_1D8192004();
  sub_1D813913C(0, &qword_1ECA117C0, sub_1D7E2E7F0, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v12 = sub_1D818F864();
  v15 = v9;
  v16 = v10;
  v13 = GutterViewController.__allocating_init(childViewController:childScrollView:gutters:)(a1, v12, &v15);

  return v13;
}

uint64_t sub_1D8136C38@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_1D8136C68()
{
  result = qword_1EDBBC548;
  if (!qword_1EDBBC548)
  {
    sub_1D818EE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC548);
  }

  return result;
}

unint64_t sub_1D8136CC0()
{
  result = qword_1EDBB33D0;
  if (!qword_1EDBB33D0)
  {
    sub_1D813913C(255, &qword_1EDBB33D8, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB33D0);
  }

  return result;
}

id GutterViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GutterViewController.init(coder:)()
{
  *(v0 + qword_1EDBB0C30) = 1;
  v1 = qword_1EDBB0C50;
  v2 = objc_allocWithZone(type metadata accessor for GutterView());
  v3 = OUTLINED_FUNCTION_8_59();
  *(v0 + v1) = [v4 v5];
  *(v0 + qword_1EDBB0C60) = 0;
  *(v0 + qword_1EDBB0C68) = 0;
  v6 = qword_1EDBB0C48;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for GutterViewScrollViewObserver()) init];
  *(v0 + qword_1EDBB0C40) = MEMORY[0x1E69E7CC0];
  sub_1D81923A4();
  __break(1u);
}

void sub_1D8136E9C()
{
  v1 = *&v0[qword_1EDBB0C50];
  v2 = objc_allocWithZone(type metadata accessor for GutterRootView());
  v3 = sub_1D8138BE4(v1);
  [v0 setView_];
}

void sub_1D8136F40(void *a1)
{
  v1 = a1;
  sub_1D8136E9C();
}

void sub_1D8136F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for GutterViewController(0, v6, a3, a4);
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v7 = *&v4[qword_1EDBB0C50];
  v8 = OUTLINED_FUNCTION_15_48([v7 setBackgroundColor_], sel_setShowsVerticalScrollIndicator_);
  OUTLINED_FUNCTION_15_48(v8, sel_setShowsHorizontalScrollIndicator_);
  OUTLINED_FUNCTION_15_48([v7 _setIndicatorInsetAdjustmentBehavior_], sel_setAutomaticallyAdjustsScrollIndicatorInsets_);
  [v7 setContentInsetAdjustmentBehavior_];
  v9 = [v4 view];
  if (v9)
  {
    v10 = v9;
    [v9 addSubview_];

    v11 = [v5 view];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1D8136590();
      [v12 addSubview_];

      [v7 _addScrollViewScrollObserver_];
      sub_1D818F844();
      sub_1D81371AC(v16);

      OUTLINED_FUNCTION_0_8();
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_0_32();
      v15 = swift_allocObject();
      *(v15 + 16) = v6;
      *(v15 + 24) = v14;

      sub_1D808E878(sub_1D8138C50, v15);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D81371AC(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = sub_1D8136704();
  if (v5)
  {
    v6 = v5;
    [v5 _removeScrollViewScrollObserver_];
  }

  v7 = a1;
  sub_1D8136734(a1);
  v8 = sub_1D8136704();
  if (v8)
  {
    v9 = v8;
    [v8 _addScrollViewScrollObserver_];
  }

  [v7 setShowsVerticalScrollIndicator_];
  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    OUTLINED_FUNCTION_9_0();

    v26.origin.x = OUTLINED_FUNCTION_8_0();
    CGRectGetWidth(v26);
    v12 = sub_1D8136590();
    [v12 frame];
    OUTLINED_FUNCTION_0_99();

    v27.origin.x = OUTLINED_FUNCTION_5_13();
    CGRectGetMaxX(v27);
    v13 = OUTLINED_FUNCTION_8_59();
    [v7 v14];
    type metadata accessor for GutterViewContentView();
    for (i = v7; ; i = v17)
    {
      v16 = i;
      if (swift_dynamicCastClass())
      {

        goto LABEL_12;
      }

      OUTLINED_FUNCTION_15_48(0, sel_setClipsToBounds_);
      v17 = [v16 superview];

      if (!v17)
      {
        break;
      }
    }

    v16 = 0;
LABEL_12:
    sub_1D7E49240();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D81A5090;
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_8();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_32();
    v20 = swift_allocObject();
    v21 = *(v4 + 80);
    *(v20 + 16) = v21;
    *(v20 + 24) = v19;
    v22 = sub_1D818E594();

    *(v18 + 32) = v22;
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_8();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_32();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = v23;
    v25 = sub_1D818E594();

    *(v18 + 40) = v25;
    sub_1D813678C(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D8137514(char *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1D8136704();
    if (!v5)
    {
LABEL_7:

      return;
    }

    v6 = v5;
    v7 = *&v4[qword_1EDBB0C50];
    if (v7 != a1)
    {
      if (v5 == a1)
      {
        v8 = v7;
        [v6 contentOffset];
        [v8 setContentOffset_];

        v4 = v8;
      }

      v4 = v6;
      goto LABEL_7;
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v4;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1D8139110;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1D7E74D6C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7E74D74;
    aBlock[3] = &block_descriptor_79;
    v11 = _Block_copy(aBlock);
    v12 = v6;
    v13 = v4;

    [v12 withScrollIndicatorsShownForContentOffsetChanges_];

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }
}

id sub_1D813770C(void *a1, uint64_t a2)
{
  [*(a2 + qword_1EDBB0C50) contentOffset];

  return [a1 setContentOffset_];
}

void sub_1D8137760(void *a1)
{
  v4 = a1;
  sub_1D8136F88(v4, v1, v2, v3);
}

void sub_1D81377A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for GutterViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v45.receiver = v4;
  v45.super_class = v6;
  objc_msgSendSuper2(&v45, sel_viewWillLayoutSubviews);
  v7 = *(v4 + qword_1EDBB0C50);
  v8 = [v4 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  [v8 bounds];
  OUTLINED_FUNCTION_9_0();

  v10 = OUTLINED_FUNCTION_8_0();
  [v11 v12];
  v13 = OUTLINED_FUNCTION_3_18();
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 bounds];
  OUTLINED_FUNCTION_9_0();

  v46.origin.x = OUTLINED_FUNCTION_8_0();
  Width = CGRectGetWidth(v46);
  [v7 contentSize];
  [v7 setContentSize_];
  v43 = *(v5 + qword_1EDBB0C28);
  v44 = *(v5 + qword_1EDBB0C28 + 8);
  sub_1D8138C58(v43, v44);
  v16 = OUTLINED_FUNCTION_3_18();
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  [v16 bounds];
  OUTLINED_FUNCTION_9_0();

  v18 = OUTLINED_FUNCTION_8_0();
  v19 = Gutters.contentWidth(bounds:)(v18);
  sub_1D8138C6C(v43, v44);
  v20 = sub_1D8136590();
  v21 = OUTLINED_FUNCTION_3_18();
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  [v21 bounds];
  OUTLINED_FUNCTION_0_99();

  v47.origin.x = OUTLINED_FUNCTION_5_13();
  v23 = CGRectGetWidth(v47);
  v24 = OUTLINED_FUNCTION_3_18();
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = ceil(v19);
  v27 = floor(v23 * 0.5 - v19 * 0.5);
  [v24 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v48.origin.x = v29;
  v48.origin.y = v31;
  v48.size.width = v33;
  v48.size.height = v35;
  [v20 setFrame_];

  v36 = sub_1D8136704();
  if (!v36)
  {
    goto LABEL_9;
  }

  v37 = v36;
  v38 = OUTLINED_FUNCTION_3_18();
  if (!v38)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v39 = v38;
  [v38 bounds];
  OUTLINED_FUNCTION_9_0();

  v49.origin.x = OUTLINED_FUNCTION_8_0();
  CGRectGetWidth(v49);
  [*(v5 + qword_1EDBB0C60) frame];
  CGRectGetMaxX(v50);
  v40 = OUTLINED_FUNCTION_8_59();
  [v37 v41];

LABEL_9:
  if ((sub_1D8136418() & 1) == 0)
  {
    [v7 setContentOffset_];
    v42 = sub_1D8136704();
    [v42 setContentOffset_];
  }
}

void sub_1D8137AD8(void *a1)
{
  v4 = a1;
  sub_1D81377A8(v4, v1, v2, v3);
}

id sub_1D8137B20(void *a1)
{
  v1 = a1;
  v2 = sub_1D8137B64();

  return v2;
}

id sub_1D8137B64()
{
  v1 = [*(v0 + qword_1EDBB0C58) navigationItem];

  return v1;
}

void *sub_1D8137BA4()
{
  v1 = *(v0 + qword_1EDBB0C58);
  v2 = v1;
  return v1;
}

id GutterViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1D8137C7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  GutterViewController.init(nibName:bundle:)();
}

id GutterViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GutterViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1D8137D00(uint64_t a1)
{

  sub_1D8138C6C(*(a1 + qword_1EDBB0C28), *(a1 + qword_1EDBB0C28 + 8));
}

void (*sub_1D8137DCC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D81364B0(v2);
  return sub_1D7F4150C;
}

void sub_1D8137E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D813913C(0, &qword_1ECA117E0, type metadata accessor for CGSize, MEMORY[0x1E6968EA8]);
    sub_1D818E564();
    v5 = sub_1D818E554();
    if (v14)
    {
      if (v11)
      {
LABEL_11:

        return;
      }
    }

    else if ((v11 & 1) == 0 && v12 == v9 && v13 == v10)
    {
      goto LABEL_11;
    }

    MEMORY[0x1EEE9AC00](v5);
    v8 = v7;
    sub_1D808E8C8(sub_1D81391A0);
  }
}

id sub_1D8137F80(char *a1, void *a2)
{
  v3 = *&a1[qword_1EDBB0C50];
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v16.origin.x = v7;
    v16.origin.y = v9;
    v16.size.width = v11;
    v16.size.height = v13;
    Width = CGRectGetWidth(v16);
    [a2 contentSize];
    [v3 setContentSize_];
    [a2 contentOffset];

    return [v3 setContentOffset_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D813806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D813913C(0, &qword_1ECA117D8, type metadata accessor for UIEdgeInsets, MEMORY[0x1E6968EA8]);
    sub_1D818E564();
    v5 = sub_1D818E554();
    if (v19)
    {
      if ((v14 & 1) == 0)
      {
LABEL_16:
        MEMORY[0x1EEE9AC00](v5);
        v9 = v8;
        sub_1D808E8C8(sub_1D8139134);

        return;
      }
    }

    else
    {
      if (v14)
      {
        goto LABEL_16;
      }

      v6 = v15 == v10 && v16 == v11;
      v7 = v6 && v17 == v12;
      if (!v7 || v18 != v13)
      {
        goto LABEL_16;
      }
    }
  }
}

id sub_1D81381E4(uint64_t a1, id a2)
{
  v3 = *(a1 + qword_1EDBB0C50);
  [a2 safeAreaInsets];
  [v3 setContentInset_];
  [a2 contentOffset];

  return [v3 setContentOffset_];
}

uint64_t GutterViewController<>.cardSplitViewPresentation(for:)(char *a1)
{
  v2 = *a1;
  v7 = *(v1 + qword_1EDBB0C58);
  v6 = v2;
  OUTLINED_FUNCTION_5_8();
  return v4(&v6, *(v3 + 80));
}

uint64_t GutterViewController<>.cardViewAnimationCoordinator(_:willTransitionTo:)()
{
  OUTLINED_FUNCTION_13_50();
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_7_78();
  return v0();
}

{
  OUTLINED_FUNCTION_13_50();
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_7_78();
  return v0();
}

uint64_t GutterViewController<>.cardViewAnimationCoordinator(_:didTransitionTo:)()
{
  OUTLINED_FUNCTION_13_50();
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_7_78();
  return v0();
}

{
  OUTLINED_FUNCTION_13_50();
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_7_78();
  return v0();
}

uint64_t GutterViewController<>.cardViewAnimationCoordinator(_:willTransitionTo:usingTimingParameters:)()
{
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_7_78();
  return v0();
}

uint64_t GutterViewController<>.cardViewAnimationCoordinator(_:shouldRecognizeSimultaneouslyWith:presentationState:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *a4;
  OUTLINED_FUNCTION_5_8();
  return v4() & 1;
}

id sub_1D8138BE4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_contentScrollView] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_outerView] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

double sub_1D8138C58(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    sub_1D8190DB4();
  }

  return result;
}

uint64_t sub_1D8138C6C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_1D8138C80(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1D8138EB0()
{
  *(v0 + OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_contentScrollView) = 0;
  sub_1D81923A4();
  __break(1u);
}

void *sub_1D8138F50(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
  v8 = v7;
  if (v7)
  {
    if (v7 == *&v3[OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_outerView])
    {
      v9 = *&v3[OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_contentScrollView];
      if (v9)
      {
        v10 = v9;

        return v9;
      }
    }
  }

  return v8;
}

void sub_1D813913C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id MotionDebugView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *MotionDebugView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_label;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_labelBackgroundView;
  *(v0 + v3) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v4 = OUTLINED_FUNCTION_80();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
  v8 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_labelBackgroundView;
  v9 = *&v7[OBJC_IVAR____TtC5TeaUI15MotionDebugView_labelBackgroundView];
  v10 = v7;
  [v10 addSubview_];
  v11 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_label;
  [v10 addSubview_];
  [*&v10[v11] setNumberOfLines_];
  v12 = *&v10[v11];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemFontOfSize_];
  [v14 setFont_];

  v16 = *&v7[v8];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 lightGrayColor];
  [v18 setBackgroundColor_];

  [*&v7[v8] setAlpha_];
  [v10 setUserInteractionEnabled_];

  return v10;
}

void sub_1D8139408()
{
  v1 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_label;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v2 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_labelBackgroundView;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall MotionDebugView.didMoveToWindow()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    if (qword_1EDBBB700 != -1)
    {
      OUTLINED_FUNCTION_3_17(&qword_1EDBBB700);
    }

    sub_1D80D455C();
  }

  else
  {
    if (qword_1EDBBB700 != -1)
    {
      OUTLINED_FUNCTION_3_17(&qword_1EDBBB700);
    }

    sub_1D80D4908(v0, qword_1EDBBB708);
  }
}

Swift::Void __swiftcall MotionDebugView.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI15MotionDebugView_label];
  [v1 sizeToFit];
  [v0 safeAreaInsets];
  v3 = v2;
  [v0 safeAreaInsets];
  v5 = v4;
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  [v1 bounds];
  [v1 setFrame_];
  v7 = *&v0[OBJC_IVAR____TtC5TeaUI15MotionDebugView_labelBackgroundView];
  [v1 frame];
  [v7 setFrame_];
}

Swift::Void __swiftcall MotionDebugView.safeAreaInsetsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_safeAreaInsetsDidChange);
  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
}

id MotionDebugView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MotionDebugView.motionManager(_:didUpdateMotionData:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC5TeaUI15MotionDebugView_label];
  OUTLINED_FUNCTION_6_90();
  sub_1D8139B80(0x656369766544, 0xE600000000000000, *(a2 + 136), UIDeviceOrientation.description.getter);
  OUTLINED_FUNCTION_3_130();
  OUTLINED_FUNCTION_0_230();

  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 statusBarOrientation];

  sub_1D8139B80(0x6361667265746E49, 0xE900000000000065, v7, UIInterfaceOrientation.description.getter);
  OUTLINED_FUNCTION_4_96();
  OUTLINED_FUNCTION_0_230();

  OUTLINED_FUNCTION_6_90();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_0_230();

  v8 = OUTLINED_FUNCTION_5_83();
  v11 = MotionData.xTranslate(to:inverted:)(v8, v9, v10);
  sub_1D8139C04(v11);
  OUTLINED_FUNCTION_4_96();
  OUTLINED_FUNCTION_0_230();

  v12 = OUTLINED_FUNCTION_5_83();
  v15 = MotionData.yTranslate(to:inverted:)(v12, v13, v14);
  sub_1D8139C04(v15);
  OUTLINED_FUNCTION_4_96();
  OUTLINED_FUNCTION_0_230();

  OUTLINED_FUNCTION_6_90();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_0_230();

  sub_1D8139C04(*(a2 + 16) * 57.2957795);
  OUTLINED_FUNCTION_3_130();
  OUTLINED_FUNCTION_0_230();

  sub_1D8139C04(*(a2 + 24) * 57.2957795);
  OUTLINED_FUNCTION_3_130();
  OUTLINED_FUNCTION_0_230();

  sub_1D8139C04(*(a2 + 32) * 57.2957795);
  v17 = v16;
  v19 = v18;
  sub_1D8190DB4();
  MEMORY[0x1DA713260](v17, v19);

  sub_1D7FC8234(0x7461746E6569724FLL, 0xEB000000006E6F69, v5);
  [v3 setNeedsLayout];

  return [v3 layoutIfNeeded];
}

void sub_1D8139B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1D8190DB4();
  MEMORY[0x1DA713260](8250, 0xE200000000000000);
  v6 = a4(a3);
  MEMORY[0x1DA713260](v6);

  MEMORY[0x1DA713260](10, 0xE100000000000000);
}

void sub_1D8139C04(double a1)
{
  sub_1D8190DB4();
  MEMORY[0x1DA713260](8250, 0xE200000000000000);
  v1 = sub_1D81915A4();
  MEMORY[0x1DA713260](v1);

  MEMORY[0x1DA713260](10, 0xE100000000000000);
}

id ApplicationContentSizeCategoryProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ApplicationContentSizeCategoryProvider.currentContentSizeCategory.getter()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  return v1;
}

id ApplicationContentSizeCategoryProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DebugSchedule.init(after:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC5TeaUI13DebugSchedule_label;
  *&v3[v8] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  *&v3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_timer] = 0;
  *&v3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_seconds] = a1;
  v9 = &v3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_block];
  *v9 = a2;
  *(v9 + 1) = a3;
  v10 = objc_opt_self();

  v11 = [v10 sharedApplication];
  v12 = [v11 key_window];

  if (v12)
  {
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v39.receiver = v3;
    v39.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v39, sel_initWithFrame_, v14, v16, v18, v20);
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 clearColor];
    [v23 setBackgroundColor_];

    [v23 setUserInteractionEnabled_];
    v25 = OBJC_IVAR____TtC5TeaUI13DebugSchedule_label;
    v26 = *&v23[OBJC_IVAR____TtC5TeaUI13DebugSchedule_label];
    v27 = [v22 systemBlueColor];
    [v26 setTextColor_];

    [*&v23[v25] setTextAlignment_];
    v28 = *&v23[v25];
    v29 = objc_opt_self();
    v30 = *MEMORY[0x1E69DB950];
    v31 = v28;
    v32 = [v29 systemFontOfSize:22.0 weight:v30];
    [v31 setFont_];

    v33 = [*&v23[v25] layer];
    [v33 setBorderWidth_];

    v34 = [*&v23[v25] layer];
    v35 = [v22 systemBlueColor];
    v36 = [v35 CGColor];

    [v34 setBorderColor_];
    v37 = *&v23[v25];
    v38 = [v22 whiteColor];
    [v37 setBackgroundColor_];

    [*&v23[v25] setClipsToBounds_];
    [v23 addSubview_];
    sub_1D813A198();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D813A198()
{
  v1 = v0;
  type metadata accessor for Level();
  v12[7] = *MEMORY[0x1E69DE7E8];
  v12[6] = 1.0;
  sub_1D813A884();
  sub_1D818FE44();
  [v0 setWindowLevel_];
  [v0 setHidden_];
  [v0 makeKeyAndVisible];
  v2 = swift_allocObject();
  v3 = *&v0[OBJC_IVAR____TtC5TeaUI13DebugSchedule_label];
  *(v2 + 16) = 0;
  v4 = sub_1D81925B4();
  sub_1D7FC8234(v4, v5, v3);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *&v12[4] = sub_1D813A8DC;
  *&v12[5] = v7;
  *&v12[0] = MEMORY[0x1E69E9820];
  *&v12[1] = 1107296256;
  *&v12[2] = sub_1D7F845F8;
  *&v12[3] = &block_descriptor_80;
  v8 = _Block_copy(v12);

  v9 = v1;

  v10 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:1.0];
  _Block_release(v8);
  v11 = *&v9[OBJC_IVAR____TtC5TeaUI13DebugSchedule_timer];
  *&v9[OBJC_IVAR____TtC5TeaUI13DebugSchedule_timer] = v10;
}

void sub_1D813A394()
{
  v1 = OBJC_IVAR____TtC5TeaUI13DebugSchedule_label;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  *(v0 + OBJC_IVAR____TtC5TeaUI13DebugSchedule_timer) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall DebugSchedule.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI13DebugSchedule_label];
  [v1 setFrame_];
  [v0 center];
  [v1 setCenter_];
  v2 = [v1 layer];
  [v1 frame];
  [v2 setCornerRadius_];
}

void sub_1D813A564(void *a1, uint64_t a2, char *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a2 + 16) = v8;
  v9 = *&a3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_seconds];
  v7 = __OFSUB__(v9, v8);
  v10 = v9 - v8;
  if (v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = *&a3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_label];
  v15 = v10;
  v12 = sub_1D81925B4();
  sub_1D7FC8234(v12, v13, v11);
  swift_beginAccess();
  if (*(a2 + 16) >= v9)
  {
    v14 = [a3 setHidden_];
    (*&a3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_block])(v14);
    [a1 invalidate];
  }
}

id DebugSchedule.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene_];

  return v3;
}

id DebugSchedule.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DebugSchedule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D813A884()
{
  result = qword_1ECA11818;
  if (!qword_1ECA11818)
  {
    type metadata accessor for Level();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11818);
  }

  return result;
}

id SwipeActionAppearance.swipeActionBackgroundColor.getter()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

double SwipeActionAppearance.swipeActionStyle.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_1D81B2D20;
  *(a1 + 16) = 1;
  return result;
}

uint64_t KeyboardInputMoinitor.currentModifierFlags.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_0_231(a1);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

id KeyboardInputMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D813ABC8(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t KeyboardInputMonitor.currentModifierFlags.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_0_231(a1);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

void sub_1D813ACB8(void *a1, void *a2)
{
  v4 = [a1 modifierFlags];
  v5 = v2 + *a2;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = 0;
}

char *sub_1D813AE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_onChange];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_label;
  *&v3[v7] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v8 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_valueLabel;
  *&v3[v8] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v9 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper;
  v10 = objc_allocWithZone(type metadata accessor for SettingsStepper());
  *&v3[v9] = OUTLINED_FUNCTION_4(v10, sel_initWithFrame_);
  if (a3)
  {
    v11 = sub_1D8190EE4();
  }

  else
  {
    v11 = 0;
  }

  v65.receiver = v3;
  v65.super_class = type metadata accessor for StepperTableViewCell();
  v12 = objc_msgSendSuper2(&v65, sel_initWithStyle_reuseIdentifier_, a1, v11);

  v13 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper;
  v14 = *&v12[OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper];
  v15 = v12;
  [v14 addTarget:v15 action:sel_valueChanged forControlEvents:4096];
  [*&v12[v13] setContinuous_];
  v16 = [v15 contentView];
  v17 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_label;
  [v16 addSubview_];

  v18 = [v15 &selRef_verticalOffset];
  [v18 addSubview_];

  v19 = [v15 &selRef_verticalOffset];
  v64 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_valueLabel;
  [v19 addSubview_];

  [*&v15[v17] setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [*&v15[v17] centerYAnchor];
  v21 = [v15 &selRef_verticalOffset];
  v22 = [v21 layoutMarginsGuide];

  v23 = [v22 &selRef_setAttributes_];
  v24 = OUTLINED_FUNCTION_1_166();
  v26 = [v24 v25];

  OUTLINED_FUNCTION_2_151(v27, sel_setActive_);
  v28 = [*&v15[v17] leadingAnchor];
  v29 = [v15 contentView];
  v30 = [v29 layoutMarginsGuide];

  v31 = [v30 leadingAnchor];
  v32 = OUTLINED_FUNCTION_1_166();
  v34 = [v32 v33];

  OUTLINED_FUNCTION_2_151(v35, sel_setActive_);
  [*&v12[v13] setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = [*&v12[v13] trailingAnchor];
  v37 = [v15 contentView];
  v38 = [v37 layoutMarginsGuide];

  v39 = [v38 trailingAnchor];
  v40 = OUTLINED_FUNCTION_1_166();
  v42 = [v40 v41];

  OUTLINED_FUNCTION_2_151(v43, sel_setActive_);
  v44 = [*&v12[v13] centerYAnchor];
  v45 = [v15 contentView];
  v46 = [v45 layoutMarginsGuide];

  v47 = [v46 centerYAnchor];
  v48 = OUTLINED_FUNCTION_1_166();
  v50 = [v48 v49];

  OUTLINED_FUNCTION_2_151(v51, &selRef_initWithPatternImage_);
  [*&v15[v64] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v15[v64] setPreferredMaxLayoutWidth_];
  v52 = [*&v15[v64] trailingAnchor];
  v53 = [*&v12[v13] layoutMarginsGuide];
  v54 = [v53 leadingAnchor];

  v55 = OUTLINED_FUNCTION_1_166();
  v57 = [v55 v56];

  [v57 &selRef:1 initWithPatternImage:?];
  v58 = [*&v15[v64] centerYAnchor];
  v59 = [v15 contentView];

  v60 = [v59 layoutMarginsGuide];
  v61 = [v60 centerYAnchor];

  v62 = [v58 constraintEqualToAnchor_];
  [v62 &selRef:1 initWithPatternImage:?];

  return v15;
}

void sub_1D813B48C()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_onChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_label;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_valueLabel;
  *(v0 + v3) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper;
  v5 = objc_allocWithZone(type metadata accessor for SettingsStepper());
  *(v0 + v4) = OUTLINED_FUNCTION_4(v5, sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

void sub_1D813B578()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_valueLabel);
  sub_1D7E1A4D0(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D819FAB0;
  v3 = *(v0 + OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper);
  [v3 value];
  v4 = MEMORY[0x1E69E6438];
  *(v2 + 56) = MEMORY[0x1E69E63B0];
  *(v2 + 64) = v4;
  *(v2 + 32) = v5;
  v6 = sub_1D8190F54();
  sub_1D7FC8234(v6, v7, v1);
  v8 = *(v0 + OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_onChange);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_onChange + 8);

    v10 = [v3 value];
    *&v11 = v11;
    v8(v10, *&v11);

    sub_1D7E418F4(v8, v9);
  }
}

id sub_1D813B6D0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StepperTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t BlueprintModifierTrait.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t BlueprintModifierType.description.getter(uint64_t a1)
{
  swift_getDynamicType();

  return sub_1D8192914();
}

uint64_t BlueprintModifier.__allocating_init<A>(modifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BlueprintModifier.init<A>(modifier:)(a1, a2, a3);
  return v6;
}

uint64_t RadialGradientDescriptor.cfColors.getter()
{
  v1 = *(v0 + 128);
  v2 = sub_1D7E36AB8(v1);
  if (!v2)
  {
LABEL_8:
    type metadata accessor for CGColor();
    v9 = sub_1D8191304();

    return v9;
  }

  v3 = v2;
  result = sub_1D81922A4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 CGColor];

      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
    }

    while (v3 != v5);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void CircleRadius.value(bounds:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (*(v4 + 32))
  {
    CGRectGetWidth(*&a1);
    v9.origin.x = a1;
    v9.origin.y = a2;
    v9.size.width = a3;
    v9.size.height = a4;
    CGRectGetHeight(v9);
  }
}

uint64_t static RadialGradientDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_0_0();
  }

  else
  {
    return sub_1D8192634();
  }
}

__n128 Circle.radius.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void Circle.init(center:radius:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
}

void Circle.init(center:start:end:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = 1;
}

uint64_t static Circle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if (!*(a2 + 48) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 48);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t static CircleRadius.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0 && v2 == v3)
    {
      return OUTLINED_FUNCTION_0_0();
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  if (v2 != v3 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 16) == *(a2 + 16);
}

uint64_t RadialGradientDescriptor.identifier.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

void RadialGradientDescriptor.fromCircle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  OUTLINED_FUNCTION_1_167(a1, *(v1 + 48));
}

void RadialGradientDescriptor.toCircle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 16) = v2;
  OUTLINED_FUNCTION_1_167(a1, *(v1 + 104));
}

void *RadialGradientDescriptor.init(circle:innerColor:outerColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 48);
  v16[0] = *a1;
  v16[1] = v7;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v12[0] = v16[0];
  v12[1] = v7;
  v9 = *(a1 + 32);
  v13 = *(a1 + 16);
  v14 = v9;
  v15 = v8;
  OUTLINED_FUNCTION_0_233(&qword_1EDBB2BF0, MEMORY[0x1E69E7C98]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D81A5090;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  RadialGradientDescriptor.init(fromCircle:toCircle:colors:locations:)(v16, v12, v10, &unk_1F52E4B88, __src);
  return memcpy(a4, __src, 0x90uLL);
}

void RadialGradientDescriptor.init(fromCircle:toCircle:colors:locations:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v61 = a1[3];
  v62 = a1[2];
  v59 = a1[5];
  v60 = a1[4];
  v10 = *a2;
  v11 = a2[1];
  v57 = a2[3];
  v58 = a2[2];
  v55 = a2[5];
  v56 = a2[4];
  v65 = *(a1 + 48);
  v64 = *(a2 + 48);
  v12 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E7CC0];
  v13 = sub_1D7E36AB8(a3);
  v53 = a5;
  v54 = a4;
  if (v13)
  {
    v14 = v13;
    sub_1D8190DB4();
    sub_1D8190DB4();
    OUTLINED_FUNCTION_5_84();
    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v12;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1DA714420](v15, a3);
      }

      else
      {
        v17 = *(a3 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = UIColor.identifier.getter();
      v21 = v20;

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_3_131(v22);
      }

      ++v15;
      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }

    while (v14 != v15);

    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D8190DB4();
    v16 = MEMORY[0x1E69E7CC0];
    v25 = v12;
  }

  sub_1D7E675D4(v16);
  if (a4)
  {
    v26 = a4;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v26 + 16);
  if (v27)
  {
    OUTLINED_FUNCTION_5_84();
    v28 = 32;
    v29 = v25;
    do
    {
      v30 = sub_1D81915A4();
      v32 = v31;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_3_131(v33);
      }

      *(v29 + 16) = v34 + 1;
      v35 = v29 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v28 += 8;
      --v27;
    }

    while (v27);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7E675D4(v29);
  v36 = sub_1D8190F84();
  v38 = v37;
  v39 = v63;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D7E2D320();
    v39 = v50;
  }

  v40 = *(v39 + 16);
  if (v40 >= *(v39 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_97();
    v39 = v51;
  }

  *(v39 + 16) = v40 + 1;
  v41 = v39 + 16 * v40;
  *(v41 + 32) = v36;
  *(v41 + 40) = v38;
  v42 = sub_1D8190F84();
  v44 = v43;
  v45 = *(v39 + 16);
  if (v45 >= *(v39 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_97();
    v39 = v52;
  }

  *(v39 + 16) = v45 + 1;
  v46 = v39 + 16 * v45;
  *(v46 + 32) = v42;
  *(v46 + 40) = v44;
  sub_1D7E720F0(0, &qword_1EDBB3330, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D7E1B6BC();
  v47 = sub_1D8190E94();
  v49 = v48;

  *v53 = v47;
  *(v53 + 8) = v49;
  *(v53 + 16) = v8;
  *(v53 + 24) = v9;
  *(v53 + 32) = v62;
  *(v53 + 40) = v61;
  *(v53 + 48) = v60;
  *(v53 + 56) = v59;
  *(v53 + 64) = v65;
  *(v53 + 72) = v10;
  *(v53 + 80) = v11;
  *(v53 + 88) = v58;
  *(v53 + 96) = v57;
  *(v53 + 104) = v56;
  *(v53 + 112) = v55;
  *(v53 + 120) = v64;
  *(v53 + 128) = a3;
  *(v53 + 136) = v54;
}

void *RadialGradientDescriptor.init(fromCircle:toCircle:fromColor:toColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  v10 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = *(a1 + 32);
  v17 = v8;
  v11 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v11;
  v14[2] = *(a2 + 32);
  v15 = v9;
  OUTLINED_FUNCTION_0_233(&qword_1EDBB2BF0, MEMORY[0x1E69E7C98]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D81A5090;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  RadialGradientDescriptor.init(fromCircle:toCircle:colors:locations:)(v16, v14, v12, &unk_1F52E4BB8, __src);
  return memcpy(a5, __src, 0x90uLL);
}

uint64_t sub_1D813C294(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D813C2D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D813C348(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1D813C388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall KeyboardSelectionStyle.select(_:isHighlighted:hasBeenTraversed:view:selectedBackgroundView:)(Swift::Bool _, Swift::Bool isHighlighted, Swift::Bool hasBeenTraversed, UIView *view, UIView *selectedBackgroundView)
{
  v8 = hasBeenTraversed;
  if (hasBeenTraversed && (sub_1D818EEE4(), (sub_1D818EED4() & 1) != 0))
  {
    v8 = 1;
    v11 = 4;
    v12 = 3;
    v13 = v5;
  }

  else
  {
    v13 = v5 + 5;
    v11 = 9;
    v12 = 8;
  }

  v14 = v5[v12];
  v15 = v5[v11];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v15 + 16))(_, isHighlighted, v8, view, selectedBackgroundView, v14, v15);
}

Swift::Void __swiftcall KeyboardSelectionStyle.didSetHighlighted(_:view:selectedBackgroundView:)(Swift::Bool _, UIView *view, UIView *selectedBackgroundView)
{
  sub_1D818EEE4();
  v3 = sub_1D818EED4();
  v4 = 64;
  if (v3)
  {
    v4 = 24;
  }

  OUTLINED_FUNCTION_1_168(v4);
  OUTLINED_FUNCTION_0_234();
  v5();
}

Swift::Bool __swiftcall KeyboardSelectionStyle.shouldRenderSelection(isSelected:isHighlighted:)(Swift::Bool isSelected, Swift::Bool isHighlighted)
{
  v3 = isHighlighted;
  v4 = isSelected;
  sub_1D818EEE4();
  v5 = sub_1D818EED4();
  v6 = 64;
  if (v5)
  {
    v6 = 24;
  }

  v7 = 72;
  if (v5)
  {
    v7 = 32;
  }

  v8 = 40;
  if (v5)
  {
    v8 = 0;
  }

  v9 = *(v2 + v6);
  v10 = *(v2 + v7);
  __swift_project_boxed_opaque_existential_1((v2 + v8), v9);
  return (*(v10 + 40))(v4, v3, v9, v10) & 1;
}

uint64_t sub_1D813C610(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D813C650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D813C6B4(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v5, sel_backgroundColor);
  sub_1D813C77C(v4);
}

id sub_1D813C730()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_backgroundColor);

  return v1;
}

void sub_1D813C77C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _setPocketColor_forEdge_];
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _setPocketColor_forEdge_];
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 _setPocketColor_forEdge_];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 _setPocketColor_forEdge_];
  }
}

void sub_1D813C918(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setBackgroundColor_, a1);
  sub_1D813C77C(a1);
}

id sub_1D813C96C(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a2, a3, a4, a5);

  return v12;
}

void sub_1D813CA2C()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_1D81923A4();
  __break(1u);
}

id sub_1D813CAC8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong convertPoint:v4 fromCoordinateSpace:{a2, a3}];
    v11 = [v10 hitTest:a1 withEvent:?];
    if (!v11)
    {
      v14.receiver = v4;
      v14.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v14, sel_hitTest_withEvent_, a1, a2, a3);
    }

    v12 = v11;
  }

  else
  {
    v15.receiver = v3;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, sel_hitTest_withEvent_, a1, a2, a3);
  }

  return v12;
}

uint64_t dispatch thunk of CardViewAnimationCoordinatorDelegate.cardViewAnimationCoordinator(_:willTransitionTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))(a1, a2, a3, a4);
}

{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CardViewAnimationCoordinatorDelegate.cardViewAnimationCoordinator(_:didTransitionTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 40))(a1, a2, a3, a4);
}

void sub_1D813CDD4()
{
  strcpy(&qword_1ECA11860, "Tea Frameworks");
  algn_1ECA11868[7] = -18;
  qword_1ECA11870 = 0x39373433333031;
  unk_1ECA11878 = 0xE700000000000000;
  qword_1ECA11880 = 7105601;
  unk_1ECA11888 = 0xE300000000000000;
}

double static RadarComponent.teaFrameworks.getter@<D0>(void *a1@<X8>)
{
  if (qword_1ECA0C3E0 != -1)
  {
    swift_once();
  }

  v2 = *algn_1ECA11868;
  v3 = qword_1ECA11870;
  v4 = unk_1ECA11878;
  v5 = qword_1ECA11880;
  v6 = unk_1ECA11888;
  *a1 = qword_1ECA11860;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  sub_1D8190DB4();
  sub_1D8190DB4();

  sub_1D8190DB4();
  return result;
}

uint64_t sub_1D813CEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v24 = OUTLINED_FUNCTION_4_98();
  OUTLINED_FUNCTION_7_79();
  v15 = swift_allocObject();
  LOBYTE(v23) = a12 & 1;
  v16 = OUTLINED_FUNCTION_2_152();
  sub_1D813D994(v16, v17, v18, v19, a5, a6, a7, a8, v21, v22, a11, v23, a13, a14, v24.n128_i64[0], v24.n128_i64[1], v25, a6, a7, a8, v29, v30, v31, v32, v33);
  return v15;
}

uint64_t sub_1D813CF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  *(&v29 + 1) = a8;
  *&v29 = a7;
  v25 = OUTLINED_FUNCTION_4_98();
  OUTLINED_FUNCTION_7_79();
  v15 = swift_allocObject();
  LOBYTE(v23) = a13 & 1;
  v16 = OUTLINED_FUNCTION_2_152();
  sub_1D813E138(v16, v17, v18, v19, a5, a6, v29, *(&v29 + 1), v21, v22, a11, a12, v23, a14, a15, v24, v25.n128_i64[0], v25.n128_i64[1], v26, a5, a6, v29, v30, v31, v32, v33);
  return v15;
}

uint64_t sub_1D813D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v25 = OUTLINED_FUNCTION_4_98();
  OUTLINED_FUNCTION_7_79();
  v15 = swift_allocObject();
  LOBYTE(v23) = a12 & 1;
  v16 = OUTLINED_FUNCTION_2_152();
  sub_1D813D0BC(v16, v17, v18, v19, a5, a6, a7, a8, v21, v22, a11, v23, a13, v24, v25.n128_i64[0], v25.n128_i64[1], a7, a8, v28, v29, v30, v31, v32, v33);
  return v15;
}

void sub_1D813D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, unsigned __int8 a23, uint64_t a24)
{
  OUTLINED_FUNCTION_120();
  v83 = v25;
  v84 = v26;
  v81 = v27;
  v82 = v28;
  v89 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v85 = a24;
  LODWORD(v87) = a23;
  v36 = *(*v30 + 88);
  v80 = a21;
  OUTLINED_FUNCTION_107();
  v86 = v36;
  v37 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v72 - v43;
  v88 = &v72 - v43;
  *(v24 + 16) = v35;
  *(v24 + 24) = v33;
  v45 = OUTLINED_FUNCTION_107();
  *(v24 + 56) = type metadata accessor for Command(v45, v46, v47, v48);
  *(v24 + 64) = &protocol witness table for Command<A>;
  v49 = v31;
  *(v24 + 32) = v31;
  *(v24 + 72) = 0;
  *(v24 + 80) = v80;
  *(v24 + 96) = a22;
  OUTLINED_FUNCTION_30_26(v87);
  v50 = *(v39 + 16);
  v77 = v39 + 16;
  v78 = v31;
  v87 = v50;
  v51 = v37;
  (v50)(v44, v89, v37);
  v52 = *(v39 + 80);
  v79 = v41;
  *&v80 = (v52 + 32) & ~v52;
  v53 = swift_allocObject();
  v54 = v86;
  *(v53 + 16) = v86;
  *(v53 + 24) = v49;
  v76 = *(v39 + 32);
  v74 = v39 + 32;
  (v76)(v53 + ((v52 + 32) & ~v52), v88, v51);
  *(v24 + 112) = sub_1D813F900;
  *(v24 + 120) = v53;
  *(v24 + 128) = OUTLINED_FUNCTION_0_4;
  *(v24 + 136) = 0;
  v55 = OUTLINED_FUNCTION_14_0();
  v73 = v51;
  v87(v55);
  v56 = (v52 + 24) & ~v52;
  v57 = (v41 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = v57;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v54;
  v60 = v88;
  v61 = v76;
  (v76)(v59 + v56, v88, v51);
  v62 = v78;
  *(v59 + v57) = v78;
  v63 = (v59 + v58);
  v64 = v82;
  *v63 = v81;
  v63[1] = v64;
  *(v24 + 144) = sub_1D813F90C;
  *(v24 + 152) = v59;
  v65 = v60;
  v66 = v73;
  (v87)(v60, v89, v73);
  v67 = swift_allocObject();
  v68 = v86;
  *(v67 + 16) = v86;
  (v61)(v67 + v56, v65, v66);
  *(v67 + v75) = v62;
  v69 = (v67 + v58);
  v70 = v84;
  *v69 = v83;
  v69[1] = v70;
  *(v24 + 160) = sub_1D813F90C;
  *(v24 + 168) = v67;
  *(v24 + 176) = sub_1D813F904;
  *(v24 + 184) = 0;
  (v61)(v88, v89, v66);
  v71 = swift_allocObject();
  *(v71 + 16) = v68;
  *(v71 + 24) = v62;
  OUTLINED_FUNCTION_34_19();
  v61();
  *(v24 + 192) = sub_1D813F918;
  *(v24 + 200) = v71;
  *(v24 + 208) = v85;
  swift_retain_n();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D813D450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v24 = OUTLINED_FUNCTION_4_98();
  OUTLINED_FUNCTION_7_79();
  v15 = swift_allocObject();
  LOBYTE(v23) = a13 & 1;
  v16 = OUTLINED_FUNCTION_2_152();
  sub_1D813D4EC(v16, v17, v18, v19, a5, a6, a7, a8, v21, v22, a11, a12, v23, a14, v24.n128_i64[0], v24.n128_i64[1], v25, a6, a7, a8, v29, v30, v31, v32, v33);
  return v15;
}

void sub_1D813D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, __int128 a22, void (*a23)(char *, char *, uint64_t, __n128), unsigned __int8 a24, uint64_t a25)
{
  OUTLINED_FUNCTION_120();
  v90 = v26;
  v91 = v27;
  v88 = v28;
  v89 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v92 = a25;
  LODWORD(v103) = a24;
  v100 = a23;
  v101 = v36;
  v95 = a22;
  v37 = *v30;
  v38 = *(*v30 + 136);
  v98 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v40 = v39;
  v102 = *(v41 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v83 - v43;
  v45 = *a21;
  *(v25 + 16) = v35;
  *(v25 + 24) = v33;
  v46 = v31;
  v99 = *(v37 + 144);
  v97 = *(v37 + 152);
  v104 = v38;
  *(v25 + 56) = type metadata accessor for StateCommand(0, v38, v99, v97);
  *(v25 + 64) = &protocol witness table for Command<A>;
  *(v25 + 32) = v31;
  v96 = v31;
  *(v25 + 72) = v45;
  *(v25 + 80) = v95;
  v47 = v101;
  *(v25 + 96) = v100;
  OUTLINED_FUNCTION_30_26(v103);
  v94 = *(v40 + 16);
  *&v95 = v40 + 16;
  v48 = v98;
  v94(v44, v47, v98);
  v49 = v40;
  v103 = *(v40 + 80);
  v50 = (v103 + 48) & ~v103;
  v51 = swift_allocObject();
  v52 = v99;
  v51[2] = v38;
  v51[3] = v52;
  v53 = v97;
  v51[4] = v97;
  v51[5] = v46;
  v54 = *(v49 + 32);
  v93 = v49 + 32;
  v100 = v54;
  (v54)(v51 + v50, v44, v48);
  *(v25 + 112) = sub_1D813F8FC;
  *(v25 + 120) = v51;
  v55 = v44;
  v56 = v44;
  v57 = v94;
  v94(v56, v47, v48);
  v58 = v102;
  v87 = v50;
  v59 = swift_allocObject();
  v59[2] = v104;
  v59[3] = v52;
  v60 = v96;
  v59[4] = v53;
  v59[5] = v60;
  v61 = v59 + v50;
  v62 = v55;
  (v100)(v61, v55, v48);
  *(v25 + 128) = sub_1D813F910;
  *(v25 + 136) = v59;
  v63 = v101;
  v57(v55, v101, v48);
  v64 = v103;
  v65 = (v58 + ((v64 + 40) & ~v64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v64 + 40) & ~v64;
  v86 = v65;
  v84 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = v99;
  v66[2] = v104;
  v66[3] = v67;
  v66[4] = v53;
  v68 = v98;
  (v100)(v66 + ((v64 + 40) & ~v64), v55, v98);
  v69 = v96;
  *(v66 + v65) = v96;
  v70 = v69;
  v71 = v84;
  v72 = (v66 + v84);
  v73 = v89;
  *v72 = v88;
  v72[1] = v73;
  *(v25 + 144) = sub_1D813F908;
  *(v25 + 152) = v66;
  v94(v62, v63, v68);
  v74 = swift_allocObject();
  v74[2] = v104;
  v74[3] = v67;
  v74[4] = v53;

  v75 = v68;
  v76 = v100;
  (v100)(v74 + v85, v62, v68);
  *(v74 + v86) = v70;
  v77 = v70;
  v78 = (v74 + v71);
  v79 = v91;
  *v78 = v90;
  v78[1] = v79;
  *(v25 + 160) = sub_1D813F908;
  *(v25 + 168) = v74;
  *(v25 + 176) = sub_1D813F904;
  *(v25 + 184) = 0;
  (v76)(v62, v101, v75);
  v80 = v87;
  v81 = swift_allocObject();
  v82 = v99;
  v81[2] = v104;
  v81[3] = v82;
  v81[4] = v97;
  v81[5] = v77;
  (v76)(v81 + v80, v62, v75);
  *(v25 + 192) = sub_1D813F914;
  *(v25 + 200) = v81;
  *(v25 + 208) = v92;
  swift_retain_n();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

void sub_1D813D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, unsigned __int8 a23, unsigned __int8 *a24, uint64_t a25)
{
  OUTLINED_FUNCTION_120();
  v81 = v26;
  v82 = v27;
  v78 = v28;
  v79 = v29;
  v31 = v30;
  v90 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LODWORD(v87) = a23;
  v86 = a22;
  v85 = a21;
  v38 = *(*v32 + 88);
  v83 = a25;
  v76 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v40 = v39;
  v89 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v75 - v43;
  v80 = *a24;
  *(v25 + 16) = v37;
  *(v25 + 24) = v35;
  v84 = v38;
  *(v25 + 56) = type metadata accessor for Command(0, v38, v45, v46);
  *(v25 + 64) = &protocol witness table for Command<A>;
  *(v25 + 32) = v33;
  *(v25 + 72) = 0;
  *(v25 + 80) = v85;
  *(v25 + 96) = v86;
  OUTLINED_FUNCTION_30_26(v87);
  v87 = *(v40 + 16);
  v88 = v33;
  v47 = v31;
  v48 = v76;
  v87(v44, v47, v76);
  v49 = *(v40 + 80);
  v77 = (v49 + 32) & ~v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v38;
  *(v50 + 24) = v33;
  *&v85 = *(v40 + 32);
  v86 = v40 + 32;
  v51 = v44;
  v52 = v48;
  (v85)(v50 + ((v49 + 32) & ~v49), v44, v48);
  *(v25 + 112) = sub_1D813F690;
  *(v25 + 120) = v50;
  *(v25 + 128) = OUTLINED_FUNCTION_0_4;
  *(v25 + 136) = 0;
  v53 = OUTLINED_FUNCTION_22_26();
  (v87)(v53);
  v54 = (v49 + 24) & ~v49;
  v55 = (v89 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v59 = v84;
  v58 = v85;
  *(v57 + 16) = v84;
  v58(v57 + v54, v51, v52);
  *(v57 + v55) = v88;
  v60 = (v57 + v56);
  v61 = v79;
  *v60 = v78;
  v60[1] = v61;
  *(v25 + 144) = sub_1D813F6F4;
  *(v25 + 152) = v57;
  v62 = v52;
  v87(v51, v90, v52);
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  v64 = v63 + v54;
  v65 = v85;
  (v85)(v64, v51, v62);
  v66 = v88;
  *(v63 + v55) = v88;
  v67 = (v63 + v56);
  v68 = v82;
  *v67 = v81;
  v67[1] = v68;
  *(v25 + 160) = sub_1D813F90C;
  *(v25 + 168) = v63;
  v69 = swift_allocObject();
  *(v69 + 16) = v80;
  *(v25 + 176) = sub_1D8068588;
  *(v25 + 184) = v69;
  v70 = OUTLINED_FUNCTION_22_26();
  v71 = v62;
  v65(v70);
  v72 = v65;
  v73 = v77;
  v74 = swift_allocObject();
  *(v74 + 16) = v84;
  *(v74 + 24) = v66;
  v72(v74 + v73, v51, v71);
  *(v25 + 192) = sub_1D813F880;
  *(v25 + 200) = v74;
  *(v25 + 208) = v83;
  swift_retain_n();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

void sub_1D813DD58()
{
  OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_25_18();
  v1 = OUTLINED_FUNCTION_16_47();
  v2(v1);
  if (v0)
  {
  }
}

void sub_1D813DDE0()
{
  OUTLINED_FUNCTION_120();
  v21[1] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*v3 + 88);
  v10 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v21 - v18;
  (*(v12 + 16))(v15, v6, v10, v17);
  if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 72))(v4, v9, ObjectType, v8);
    if (__swift_getEnumTagSinglePayload(v15, 1, v9) != 1)
    {
      (*(v12 + 8))(v15, v10);
    }
  }

  else
  {
    (*(*(v9 - 8) + 32))(v19, v15, v9);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v9);
  }

  v2(v19);
  (*(v12 + 8))(v19, v10);
  OUTLINED_FUNCTION_100();
}

void sub_1D813DFF4()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_19_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_39();
  type metadata accessor for CommandExecutionSource();
  swift_allocObject();
  v9[3] = &type metadata for Tracker;
  v9[4] = &off_1F53092B8;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_32_19();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_36_16();
  OUTLINED_FUNCTION_28_24();
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_13_51();
  OUTLINED_FUNCTION_32_19();
  swift_unknownObjectWeakAssign();
  sub_1D818E784();
  sub_1D818E764();
  v5 = OUTLINED_FUNCTION_27_28();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_6_91();
  v7 = OUTLINED_FUNCTION_20_43();
  v8(v7);

  OUTLINED_FUNCTION_100();
}

void sub_1D813E138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, __int128 a22, void (*a23)(char *, char *, uint64_t, __n128), unsigned __int8 a24, __int128 *a25, uint64_t a26)
{
  OUTLINED_FUNCTION_120();
  v100 = v27;
  v101 = v28;
  v97 = v29;
  v96 = v30;
  v116 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LODWORD(v114) = a24;
  v113 = a23;
  v112 = a22;
  v102 = a26;
  v38 = *v32;
  v39 = *(*v32 + 136);
  OUTLINED_FUNCTION_107();
  v110 = v39;
  v94 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v41 = v40;
  v115 = *(v42 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v92 - v44;
  v93 = &v92 - v44;
  v46 = *a21;
  v99 = *(a25 + 16);
  *(v26 + 16) = v37;
  *(v26 + 24) = v35;
  v47 = v33;
  v48 = *(v38 + 144);
  v108 = *(v38 + 152);
  v49 = OUTLINED_FUNCTION_107();
  v106 = v48;
  *(v26 + 56) = type metadata accessor for StateCommand(v49, v50, v48, v51);
  *(v26 + 64) = &protocol witness table for Command<A>;
  *(v26 + 32) = v33;
  v111 = v33;
  *(v26 + 72) = v46;
  *(v26 + 80) = v112;
  *(v26 + 96) = v113;
  OUTLINED_FUNCTION_30_26(v114);
  v52 = *(v41 + 16);
  v114 = v41 + 16;
  v107 = v52;
  v98 = *a25;
  v53 = v94;
  (v52)(v45, v116, v94);
  v54 = v41;
  v109 = *(v41 + 80);
  v104 = (v109 + 40) & ~v109;
  v105 = v115 + v104;
  v55 = (v109 + 48) & ~v109;
  v56 = swift_allocObject();
  v57 = v110;
  v56[2] = v110;
  v56[3] = v48;
  v58 = v108;
  v56[4] = v108;
  v56[5] = v47;
  v113 = *(v54 + 32);
  *&v112 = v54 + 32;
  v59 = v56 + v55;
  v60 = v55;
  v61 = v93;
  (v113)(v59, v93, v53);
  *(v26 + 112) = sub_1D813F3E8;
  *(v26 + 120) = v56;
  OUTLINED_FUNCTION_34_19();
  v62 = v53;
  v63 = v107;
  v107();
  v95 = v60;
  v64 = swift_allocObject();
  v65 = v106;
  v64[2] = v57;
  v64[3] = v65;
  v66 = v111;
  v64[4] = v58;
  v64[5] = v66;
  v67 = v113;
  (v113)(v64 + v60, v61, v62);
  *(v26 + 128) = sub_1D813F44C;
  *(v26 + 136) = v64;
  v68 = OUTLINED_FUNCTION_22_26();
  (v63)(v68);
  v103 = (v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v69[2] = v110;
  v69[3] = v65;
  v70 = v108;
  v69[4] = v108;
  v71 = v104;
  v72 = v62;
  (v67)(v69 + v104, v61, v62);
  v73 = v111;
  v74 = v103;
  *(v69 + v103) = v111;
  v75 = (v69 + v105);
  v76 = v97;
  *v75 = v96;
  v75[1] = v76;
  *(v26 + 144) = sub_1D813F4B4;
  *(v26 + 152) = v69;
  v77 = OUTLINED_FUNCTION_22_26();
  (v107)(v77);
  v78 = swift_allocObject();
  v79 = v110;
  v80 = v106;
  v78[2] = v110;
  v78[3] = v80;
  v78[4] = v70;

  (v113)(v78 + v71, v61, v72);
  *(v78 + v74) = v73;
  v81 = (v78 + v105);
  v82 = v101;
  *v81 = v100;
  v81[1] = v82;
  *(v26 + 160) = sub_1D813F908;
  *(v26 + 168) = v78;
  v83 = OUTLINED_FUNCTION_22_26();
  (v107)(v83);
  v84 = swift_allocObject();
  v84[2] = v79;
  v84[3] = v80;
  v85 = v108;
  v84[4] = v108;

  OUTLINED_FUNCTION_34_19();
  v86 = v113;
  (v113)();
  *(v84 + v103) = v73;
  v87 = v84 + v105;
  *v87 = v98;
  v87[16] = v99;
  *(v26 + 176) = sub_1D813F580;
  *(v26 + 184) = v84;
  v88 = v86;
  (v86)(v61, v116, v72);
  v89 = swift_allocObject();
  v90 = v106;
  v89[2] = v79;
  v89[3] = v90;
  v91 = v111;
  v89[4] = v85;
  v89[5] = v91;
  OUTLINED_FUNCTION_34_19();
  v88();
  *(v26 + 192) = sub_1D813F624;
  *(v26 + 200) = v89;
  *(v26 + 208) = v102;
  swift_retain_n();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

void sub_1D813E6B8()
{
  OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_25_18();
  v1 = OUTLINED_FUNCTION_16_47();
  v2(v1);
  if (v0)
  {
  }
}

void sub_1D813E740()
{
  OUTLINED_FUNCTION_120();
  v21 = v0;
  v2 = v1;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 144);
  v7 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *(v6 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  ObjectType = swift_getObjectType();
  v18 = *(v5 + 136);
  v19 = *(v5 + 152);
  (*(v4 + 80))(v2, v21, v18, v6, v19, ObjectType, v4);
  OUTLINED_FUNCTION_7_4(v12);
  if (v20)
  {
    (*(v9 + 8))(v12, v7);
  }

  else
  {
    (*(v13 + 32))(v16, v12, v6);
    (*(v19 + 8))(&v22, v6, v19);
    (*(v13 + 8))(v16, v6);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D813E974()
{
  OUTLINED_FUNCTION_120();
  v33 = v1;
  v34 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v2;
  v7 = *v2;
  v29 = v8;
  v30 = v7;
  v31 = *(v6 + 144);
  v32 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *(v6 + 136);
  v15 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v29 - v23;
  (*(v17 + 16))(v20, v29, v15, v22);
  OUTLINED_FUNCTION_7_4(v20);
  if (v25)
  {
    ObjectType = swift_getObjectType();
    (*(v5 + 72))(v3, v14, ObjectType, v5);
    OUTLINED_FUNCTION_7_4(v20);
    if (!v25)
    {
      (*(v17 + 8))(v20, v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_85();
    (*(v27 + 32))(v24, v20, v14);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v14);
  }

  v28 = swift_getObjectType();
  (*(v5 + 80))(v3, v24, v14, v31, *(v30 + 152), v28, v5);
  v34(v13, v24);
  (*(v10 + 8))(v13, v32);
  (*(v17 + 8))(v24, v15);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D813EC5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, _BYTE *a7@<X8>)
{
  v39 = a6;
  v36 = a4;
  v37 = a5;
  v40 = a7;
  v9 = *a3;
  v10 = *a3;
  v33 = a1;
  v34 = v10;
  v11 = *(v9 + 144);
  v38 = sub_1D8191E84();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v13 = &v32 - v12;
  v14 = *(v9 + 136);
  v15 = sub_1D8191E84();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - v21;
  (*(v16 + 16))(v18, a2, v15, v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v14) == 1)
  {
    ObjectType = swift_getObjectType();
    v24 = v33;
    (*(v33 + 72))(a3, v14, ObjectType, v33);
    if (__swift_getEnumTagSinglePayload(v18, 1, v14) != 1)
    {
      (*(v16 + 8))(v18, v15);
    }
  }

  else
  {
    (*(*(v14 - 8) + 32))(v22, v18, v14);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v14);
    v24 = v33;
  }

  v25 = swift_getObjectType();
  v26 = *(v24 + 80);
  v27 = v24;
  v28 = *(v34 + 152);
  v26(a3, v22, v14, v11, v28, v25, v27);
  v41 = v36;
  v42 = v37;
  v43 = v39;
  v30 = type metadata accessor for StateCommandOptions(0, v11, v28, v29);
  sub_1D8068248(v13, v30, v40);
  (*(v35 + 8))(v13, v38);
  return (*(v16 + 8))(v22, v15);
}

void sub_1D813EFBC()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_19_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_39();
  type metadata accessor for CommandExecutionSource();
  swift_allocObject();
  v9[3] = &type metadata for Tracker;
  v9[4] = &off_1F53092B8;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_32_19();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_36_16();
  OUTLINED_FUNCTION_28_24();
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_13_51();
  OUTLINED_FUNCTION_32_19();
  swift_unknownObjectWeakAssign();
  sub_1D818E784();
  sub_1D818E764();
  v5 = OUTLINED_FUNCTION_27_28();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_6_91();
  v7 = OUTLINED_FUNCTION_20_43();
  v8(v7);

  OUTLINED_FUNCTION_100();
}

uint64_t MenuGroupItem.CommandMenuItem.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  v1 = *(v0 + 208);
  *(v0 + 208) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 208);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t MenuGroupItem.CommandMenuItem.__deallocating_deinit()
{
  MenuGroupItem.CommandMenuItem.deinit();
  OUTLINED_FUNCTION_7_79();

  return swift_deallocClassInstance();
}

uint64_t sub_1D813F1EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 74))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 73);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D813F228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 58) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D813F278(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 73) = a2;
  return result;
}

void sub_1D813F2F0()
{
  v0 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_15_15(v0);
  OUTLINED_FUNCTION_1_169();
  OUTLINED_FUNCTION_14_0();
  sub_1D813E974();
}

void sub_1D813F36C()
{
  v0 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_15_15(v0);
  OUTLINED_FUNCTION_1_169();
  OUTLINED_FUNCTION_14_0();
  sub_1D813DDE0();
}

void sub_1D813F3EC()
{
  v0 = OUTLINED_FUNCTION_29_23();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_35_19();
  sub_1D813E6B8();
}

void sub_1D813F450()
{
  v0 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_14_0();
  sub_1D813E740();
}

uint64_t objectdestroy_8Tm_2()
{
  v0 = OUTLINED_FUNCTION_11_55();
  OUTLINED_FUNCTION_15_15(v0);
  if (!OUTLINED_FUNCTION_10_59())
  {
    OUTLINED_FUNCTION_5_85();
    v1 = OUTLINED_FUNCTION_26_25();
    v2(v1);
  }

  OUTLINED_FUNCTION_9_52();

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t sub_1D813F580()
{
  v0 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v0);
  OUTLINED_FUNCTION_1_169();
  OUTLINED_FUNCTION_14_0();

  return sub_1D813EC5C(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D813F628()
{
  v0 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_14_0();
  sub_1D813EFBC();
  return v1 & 1;
}

void sub_1D813F694()
{
  v0 = OUTLINED_FUNCTION_29_23();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_35_19();
  sub_1D813DD58();
}

uint64_t objectdestroy_20Tm_0()
{
  v0 = OUTLINED_FUNCTION_11_55();
  OUTLINED_FUNCTION_15_15(v0);
  if (!OUTLINED_FUNCTION_10_59())
  {
    OUTLINED_FUNCTION_5_85();
    v1 = OUTLINED_FUNCTION_26_25();
    v2(v1);
  }

  OUTLINED_FUNCTION_9_52();

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm_1()
{
  v0 = OUTLINED_FUNCTION_11_55();
  OUTLINED_FUNCTION_15_15(v0);

  if (!OUTLINED_FUNCTION_10_59())
  {
    OUTLINED_FUNCTION_5_85();
    v1 = OUTLINED_FUNCTION_26_25();
    v2(v1);
  }

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t sub_1D813F884()
{
  v0 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_14_0();
  sub_1D813DFF4();
  return v1 & 1;
}

uint64_t sub_1D813F91C()
{
  OUTLINED_FUNCTION_0_235();
  memcpy(v1, v2, 0x59uLL);
  return sub_1D813F95C(v0) & 1;
}

uint64_t sub_1D813F95C(uint64_t a1)
{
  sub_1D7E0E768(a1, v7);
  sub_1D7FDADC0();
  if (swift_dynamicCast())
  {
    memcpy(v5, __src, 0x59uLL);
    if (*(v1 + 40) == *(&v5[2] + 1) && *(v1 + 48) == *&v5[3])
    {
      sub_1D7E70E44(v5, &qword_1EDBAFB50, &type metadata for PatternSectionDecorationItem);
      v3 = 1;
    }

    else
    {
      v3 = sub_1D8192634();
      sub_1D7E70E44(v5, &qword_1EDBAFB50, &type metadata for PatternSectionDecorationItem);
    }
  }

  else
  {
    memset(__src, 0, 89);
    memset(v5, 0, 89);
    sub_1D7E70E44(v5, &qword_1EDBAFB50, &type metadata for PatternSectionDecorationItem);
    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_1D813FA60(uint64_t a1)
{
  memcpy(__dst, v1, 0xD9uLL);
  sub_1D7E0E768(a1, v7);
  sub_1D7FDADC0();
  if (swift_dynamicCast())
  {
    nullsub_1();
    memcpy(v8, __src, 0xD9uLL);
    v3 = static GradientSectionDecorationItem.== infix(_:_:)(__dst, v8);
    memcpy(v5, v8, 0xD9uLL);
    sub_1D7FDAE7C(v5);
  }

  else
  {
    sub_1D8140424(v5);
    memcpy(__src, v5, sizeof(__src));
    memcpy(v8, v5, 0xD9uLL);
    sub_1D7E70E44(v8, &unk_1EDBAFA58, &type metadata for GradientSectionDecorationItem);
    return 0;
  }

  return v3;
}

uint64_t sub_1D813FB58(uint64_t a1)
{
  sub_1D7E0E768(a1, v4);
  sub_1D7FDADC0();
  if (swift_dynamicCast())
  {
    sub_1D7E7AC84();
    v1 = sub_1D8191CC4();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL sub_1D813FBE8(uint64_t a1)
{
  memcpy(__dst, v1, 0xC9uLL);
  sub_1D7E0E768(a1, v7);
  sub_1D7FDADC0();
  if (swift_dynamicCast())
  {
    nullsub_1();
    memcpy(v8, __src, 0xC9uLL);
    v3 = static RadialGradientSectionDecorationItem.== infix(_:_:)(__dst, v8);
    memcpy(v5, v8, 0xC9uLL);
    sub_1D804CF34(v5);
  }

  else
  {
    sub_1D814041C(v5);
    memcpy(__src, v5, sizeof(__src));
    memcpy(v8, v5, 0xC9uLL);
    sub_1D7E70E44(v8, &qword_1ECA11898, &type metadata for RadialGradientSectionDecorationItem);
    return 0;
  }

  return v3;
}

uint64_t BlueprintLayoutSectionDecorationItemType<>.isEqualTo(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8191E84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-v6 - 8];
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D7E0E768(a1, v15);
  sub_1D7FDADC0();
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v7, 0, 1, a2);
    (*(v8 + 32))(v11, v7, a2);
    v12 = sub_1D8190ED4();
    (*(v8 + 8))(v11, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, a2);
    (*(v5 + 8))(v7, v4);
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1D813FEE0(void *a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  [a1 setTransform_];
  if (BlueprintViewportScrollData.isOverscrolled.getter())
  {
    OUTLINED_FUNCTION_2_13();
    if (CGRectGetHeight(v52) > 0.0)
    {
      [a2 frame];
      if (v8 == 0.0)
      {
        OUTLINED_FUNCTION_2_13();
        Height = CGRectGetHeight(v53);
        v10 = *(a3 + 16);
        [v10 contentOffset];
        v12 = Height + fabs(v11);
        OUTLINED_FUNCTION_2_13();
        v13 = v12 / CGRectGetHeight(v54);
        [v10 contentOffset];
        v15 = v14;
        OUTLINED_FUNCTION_2_13();
        v16 = v13 * CGRectGetHeight(v55);
        OUTLINED_FUNCTION_2_13();
        v17 = v15 + (v16 - CGRectGetHeight(v56)) * 0.5;
        OUTLINED_FUNCTION_2_13();
        Width = CGRectGetWidth(v57);
        OUTLINED_FUNCTION_2_13();
        v19 = CGRectGetWidth(v58);
        if (v7)
        {
          v20 = (v13 * Width - v19) * 0.5;
          CGAffineTransformMakeScale(&t1, v13, v13);
          tx = t1.tx;
          ty = t1.ty;
          if (v7 == 1)
          {
            v23 = -v20;
            v45 = *&t1.c;
            v47 = *&t1.a;
          }

          else
          {
            v45 = *&t1.c;
            v47 = *&t1.a;
            v23 = v20;
          }

          Translation = CGAffineTransformMakeTranslation(&t1, v23, v17);
          v34 = OUTLINED_FUNCTION_2_153(Translation, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v47, *(&v47 + 1), *&v49.a, *&v49.b, *&v49.c, *&v49.d, *&v49.tx, *&v49.ty, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&t1.a);
          t1.tx = tx;
          t1.ty = ty;
        }

        else
        {
          CGAffineTransformMakeScale(&t1, v13, v13);
          v24 = t1.tx;
          v25 = t1.ty;
          v46 = *&t1.c;
          v48 = *&t1.a;
          v26 = CGAffineTransformMakeTranslation(&t1, 0.0, v17);
          v34 = OUTLINED_FUNCTION_2_153(v26, v27, v28, v29, v30, v31, v32, v33, v46, *(&v46 + 1), v48, *(&v48 + 1), *&v49.a, *&v49.b, *&v49.c, *&v49.d, *&v49.tx, *&v49.ty, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&t1.a);
          t1.tx = v24;
          t1.ty = v25;
        }

        *&t2.a = v34;
        *&t2.c = v35;
        *&t2.tx = v36;
        CGAffineTransformConcat(&v49, &t1, &t2);
        t1 = v49;
        [a1 setTransform_];
      }
    }
  }
}

BOOL sub_1D81400E8()
{
  OUTLINED_FUNCTION_0_235();
  memcpy(v1, v2, 0xD9uLL);
  return sub_1D813FA60(v0);
}

BOOL sub_1D8140170()
{
  OUTLINED_FUNCTION_0_235();
  memcpy(v1, v2, 0xC9uLL);
  return sub_1D813FBE8(v0);
}

uint64_t DecorationOverscrollPinPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D8140298()
{
  result = qword_1ECA11890;
  if (!qword_1ECA11890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11890);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DecorationOverscrollPinPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D814042C()
{
  v0 = sub_1D818EBF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D818EC04();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v9[3] = 1093664768;
  sub_1D8142C5C(0, &qword_1ECA11AA8, MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D818EC64();
  qword_1ECA118A0 = result;
  return result;
}

uint64_t sub_1D8140600()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
  if (v2)
  {
    v4[0] = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
    memcpy(&v4[1], (v1 + 8), 0x48uLL);
    v5 = v2;
    memcpy(v6, (v1 + 8), sizeof(v6));
    sub_1D8142854(&v5, __dst);
    sub_1D81406A0(v4);
    memcpy(__dst, v4, sizeof(__dst));
    return sub_1D81428B0(__dst);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D81406A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  [*(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView) setAttributedText_];
  v5 = sub_1D8140A5C(&OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___nextTokenBarButtonItem, 0x69722E776F727261, 0xEB00000000746867, &selRef_nextToken);
  v6 = v5;
  if (v4)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    v8 = (v7 & 0x8000000000000000) == 0 && v7 < *(v3 + 16);
  }

  else
  {
    v8 = *(v2 + 16) != 0;
  }

  [v5 setEnabled_];

  v9 = sub_1D8140A5C(&OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___previousTokenBarButtonItem, 0x656C2E776F727261, 0xEA00000000007466, &selRef_previousToken);
  v10 = v9;
  if ((v4 & 1) == 0)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v11 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_16:
    __break(1u);
    return;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v12 = v11 < *(v3 + 16);
LABEL_12:
  [v9 setEnabled_];

  v15 = sub_1D81409C4();
  v13 = sub_1D8157008();
  sub_1D814512C(v13, v14, v15);
}

uint64_t sub_1D8140844(const void *a1)
{
  memcpy(v4, (v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser), sizeof(v4));
  memcpy((v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser), a1, 0x50uLL);
  sub_1D81427D4(v4);
  return sub_1D8140600();
}

float sub_1D81408A8()
{

  sub_1D818EB24();

  return v1;
}

double sub_1D81408F4(float a1)
{

  sub_1D818EB34();

  return result;
}

id _s5TeaUI22JSONTextViewControllerC014inputAccessoryD0So6UIViewCSgvg_0()
{
  v1 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for JSONTextToolbar()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D81409C4()
{
  v1 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___resultsBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___resultsBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___resultsBarButtonItem);
  }

  else
  {
    v4 = v0;
    memset(v10, 0, sizeof(v10));
    v5 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    v6 = sub_1D80AF378(0, 0, 0, v10, 0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D8140A5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = *&v4[*a1];
  }

  else
  {
    v11 = v4;
    ObjectType = swift_getObjectType();
    sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
    v13 = sub_1D7E47238(a2, a3);
    v20[3] = ObjectType;
    v20[0] = v11;
    v14 = *a4;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v15 = v11;
    v16 = sub_1D806CD18(v13, 0, v20, v14);
    v17 = *&v11[v5];
    *&v11[v5] = v16;
    v7 = v16;

    v6 = 0;
  }

  v18 = v6;
  return v7;
}

id sub_1D8140B4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___doneBarButtonItem;
  v4 = *&v0[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___doneBarButtonItem];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___doneBarButtonItem];
LABEL_5:
    v12 = v4;
    return v5;
  }

  v6 = ObjectType;
  sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
  result = sub_1D7E47238(0xD000000000000011, 0x80000001D81D49E0);
  if (result)
  {
    v8 = result;
    v13[3] = v6;
    v13[0] = v1;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v9 = v1;
    v10 = sub_1D806CD18(v8, 2, v13, sel_done);
    v11 = *&v1[v3];
    *&v1[v3] = v10;
    v5 = v10;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1D8140C48()
{
  v1 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___textResizeBarButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___textResizeBarButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___textResizeBarButtonItem];
  }

  else
  {
    v4 = v0;
    sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
    v5 = sub_1D7E47238(0x6D726F6674786574, 0xEF657A69732E7461);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    objc_allocWithZone(type metadata accessor for ContextMenuBarButtonItem());
    v7 = v4;
    v8 = ContextMenuBarButtonItem.init(image:menuProvider:)(v5, sub_1D8142BF4, v6);
    v9 = *&v4[v1];
    *&v4[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

UIMenu sub_1D8140D48()
{
  sub_1D7E0A1A8(0, &unk_1EDBB2FD0, 0x1E69DCC60);
  sub_1D7E09CC4(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D81A5090;
  sub_1D7E0A1A8(0, &qword_1EDBB2F18, 0x1E69DC628);
  sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
  v1 = sub_1D7E47238(0x7269632E73756C70, 0xEB00000000656C63);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 32) = sub_1D8191CF4(0xD000000000000012, 0x80000001D81D88C0, 0, 0, v1, 0, 0, 0, 0, 0);
  v2 = sub_1D7E47238(0x69632E73756E696DLL, 0xEC000000656C6372);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 40) = sub_1D8191CF4(0xD000000000000012, 0x80000001D81D88E0, 0, 0, v2, 0, 0, 0, 0, 0);
  return UIMenu.init(children:)(v0);
}

void sub_1D8140F84()
{
  v1 = sub_1D81408A8();
  sub_1D81408F4(fminf(v1 + 1.0, 48.0));
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
  v3 = *v2;
  if (*v2)
  {
    __src[0] = *v2;
    memcpy(&__src[1], v2 + 1, 0x48uLL);
    v6 = v3;
    memcpy(v7, v2 + 1, sizeof(v7));
    sub_1D8142854(&v6, __dst);
    sub_1D81408A8();
    sub_1D8156D0C(v4);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D81428B0(__dst);
    sub_1D8140844(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D8141060(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_1D81410BC()
{
  v1 = sub_1D81408A8();
  sub_1D81408F4(fmaxf(v1 + -1.0, 8.0));
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
  v3 = *v2;
  if (*v2)
  {
    __src[0] = *v2;
    memcpy(&__src[1], v2 + 1, 0x48uLL);
    v6 = v3;
    memcpy(v7, v2 + 1, sizeof(v7));
    sub_1D8142854(&v6, __dst);
    sub_1D81408A8();
    sub_1D8156D0C(v4);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D81428B0(__dst);
    sub_1D8140844(v4);
  }

  else
  {
    __break(1u);
  }
}

char *JSONTextViewController.init(jsonText:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView;
  v9 = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD168]), sel_initWithFrame_);
  *&v2[v8] = v9;
  v10 = &v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  v11 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController__textSize;
  if (qword_1ECA0C3E8 != -1)
  {
    OUTLINED_FUNCTION_1_170();
    v9 = swift_once();
  }

  OUTLINED_FUNCTION_0_236(v9, &qword_1ECA118C0);
  swift_allocObject();

  *&v2[v11] = sub_1D818EB44();
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___resultsBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___nextTokenBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___previousTokenBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___doneBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___textResizeBarButtonItem] = 0;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  v13 = sub_1D81408A8();
  v14 = objc_allocWithZone(MEMORY[0x1E696AD40]);

  v15 = [v14 initWithAttributedString_];
  v16 = *MEMORY[0x1E69DB648];
  sub_1D7E0A1A8(0, &qword_1EDBB2FE0, 0x1E69DB878);
  v17 = static UIFont.systemFont(ofSize:weight:width:traits:)(0, 1, 1024, v13, *MEMORY[0x1E69DB978]);
  v18 = v15;
  [v18 addAttribute:v16 value:v17 range:{0, objc_msgSend(v18, sel_length)}];

  v19 = &v12[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser];
  memcpy(__dst, &v12[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser], sizeof(__dst));
  *v19 = v18;
  *(v19 + 1) = v18;
  *(v19 + 2) = v6;
  *(v19 + 3) = v7;
  *(v19 + 4) = MEMORY[0x1E69E7CC0];
  *(v19 + 5) = 0;
  v19[48] = 0;
  *(v19 + 7) = 0;
  *(v19 + 8) = 0xE000000000000000;
  *(v19 + 9) = v18;
  v20 = v18;
  sub_1D81427D4(__dst);

  return v12;
}

void sub_1D8141468()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView;
  v3 = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD168]), sel_initWithFrame_);
  *(v1 + v2) = v3;
  v4 = (v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v5 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController__textSize;
  if (qword_1ECA0C3E8 != -1)
  {
    OUTLINED_FUNCTION_1_170();
    v3 = swift_once();
  }

  OUTLINED_FUNCTION_0_236(v3, &qword_1ECA118C0);
  swift_allocObject();

  *(v1 + v5) = sub_1D818EB44();
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___resultsBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___nextTokenBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___previousTokenBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___doneBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___textResizeBarButtonItem) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall JSONTextViewController.viewDidLoad()()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = *&v1[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v25[0] = *&v1[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser];
  OUTLINED_FUNCTION_2_154(v25);
  *&v24[0] = v5;
  OUTLINED_FUNCTION_2_154(v24);
  sub_1D8142854(v25, __dst);
  sub_1D81406A0(v24);
  memcpy(__dst, v24, sizeof(__dst));
  sub_1D81428B0(__dst);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  [v6 setObscuresBackgroundDuringPresentation_];
  [v6 setDelegate_];
  [v6 setSearchResultsUpdater_];
  v7 = [v6 searchBar];
  v8 = [v7 searchTextField];

  [v8 setAutocapitalizationType_];
  v9 = [v6 searchBar];
  v10 = [v9 searchTextField];

  v11 = _s5TeaUI22JSONTextViewControllerC014inputAccessoryD0So6UIViewCSgvg_0();
  [v10 setInputAccessoryView_];

  v12 = [v6 searchBar];
  v13 = [v12 searchTextField];

  [v13 setDelegate_];
  v14 = [v1 navigationItem];
  [v14 setSearchController_];

  v15 = [v1 navigationItem];
  [v15 setHidesSearchBarWhenScrolling_];

  v16 = [v1 navigationItem];
  [v16 setPreferredSearchBarPlacement_];

  v17 = *&v1[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView];
  [v17 setAlwaysBounceVertical_];
  [v17 setDelegate_];
  [v17 setKeyboardDismissMode_];
  [v17 setTextContainerInset_];
  [v17 setEditable_];
  [v17 setSelectable_];
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    [v18 addSubview_];

    v20 = *(*&v1[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar] + OBJC_IVAR____TtC5TeaUI15JSONTextToolbar_toolbar);
    sub_1D7E09CC4(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D81A7860;
    v22 = v20;
    *(v21 + 32) = sub_1D81409C4();
    memset(v24, 0, 32);
    v23 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    *(v21 + 40) = sub_1D7FC8078(5, v24, 0);
    *(v21 + 48) = sub_1D8140A5C(&OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___previousTokenBarButtonItem, 0x656C2E776F727261, 0xEA00000000007466, &selRef_previousToken);
    *(v21 + 56) = sub_1D8140A5C(&OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___nextTokenBarButtonItem, 0x69722E776F727261, 0xEB00000000746867, &selRef_nextToken);
    sub_1D8142904(v21, v22);

    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Void __swiftcall JSONTextViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  sub_1D8141B4C();
}

void sub_1D8141B4C()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v1, (v2 = [v0 navigationController]) != 0) && (v3 = v2, v4 = objc_msgSend(v2, sel_viewControllers), v3, sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258), v5 = sub_1D8191314(), v4, v6 = sub_1D7E36AB8(v5), , v6 == 1))
  {
    v7 = [v0 navigationItem];
    sub_1D7E09CC4(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D81A50A0;
    *(v8 + 32) = sub_1D8140B4C();
    sub_1D7F2F7EC(v8, v7);

    v11 = [v0 navigationItem];
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D81A50A0;
    *(v9 + 32) = sub_1D8140C48();
    sub_1D7F2F7F8(v9, v11);
  }

  else
  {
    v11 = [v0 navigationItem];
    sub_1D7E09CC4(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D81A50A0;
    *(v10 + 32) = sub_1D8140C48();
    sub_1D7F2F7EC(v10, v11);
  }
}

Swift::Void __swiftcall JSONTextViewController.viewWillLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillLayoutSubviews);
  sub_1D8141B4C();
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1D8141FA0(void (*result)(void *__return_ptr, uint64_t)))(void *__return_ptr, uint64_t)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
  if (v2)
  {
    v3 = result;
    v11[0] = *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
    OUTLINED_FUNCTION_2_154(v11);
    __src[0] = v2;
    OUTLINED_FUNCTION_2_154(__src);
    v4 = sub_1D8142854(v11, v14);
    v3(v14, v4);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D81428B0(__dst);
    result = memcpy(__src, v14, sizeof(__src));
    if (__src[0])
    {
      v6 = __src[10];
      v5 = __src[11];
      memcpy(v9, &v14[1], sizeof(v9));
      v8 = __src[0];
      memcpy(v10, v14, sizeof(v10));
      sub_1D81429D8(v10, &v7);
      sub_1D8140844(&v8);
      [*(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView) scrollRangeToVisible_];
      return sub_1D8142AA8(__src);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id JSONTextViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id JSONTextViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall JSONTextViewController.willPresentSearchController(_:)(UISearchController *a1)
{
  v5 = _s5TeaUI22JSONTextViewControllerC014inputAccessoryD0So6UIViewCSgvg_0();
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 tintColor];

    [v5 setTintColor_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall JSONTextViewController.updateSearchResults(for:)(UISearchController *a1)
{
  v2 = v1;
  v4 = sub_1D818E3F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D7F83EA4([(UISearchController *)a1 searchBar]);
  v11 = v9;
  if (v10)
  {
    __dst[0] = v9;
    __dst[1] = v10;
    sub_1D818E3E4();
    sub_1D7E50D2C();
    v11 = sub_1D8191EC4();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v13 = 0;
  }

  memcpy(__dst, &v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser], sizeof(__dst));
  if (!__dst[0])
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = *&__dst[1];
  v14 = __dst[3];
  memcpy(v26, &v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser], sizeof(v26));
  sub_1D8142854(v26, &v24);
  v15 = [v2 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v15 tintColor];

  if (!v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v18 = [v17 colorWithAlphaComponent_];

  if (v13)
  {
    v24 = v23;
    v25 = v14;
    v19 = v23.i64[0];

    sub_1D81570F4(v24.i8, v11, v13, v18, v27);
    sub_1D81427D4(__dst);
  }

  else
  {
    *&v20 = vdupq_laneq_s64(v23, 1).u64[0];
    *(&v20 + 1) = v14;
    v27[0] = vdupq_lane_s64(v23.i64[0], 0);
    v27[1] = v20;
    v33 = v23.i64[0];
    v28 = MEMORY[0x1E69E7CC0];
    v29 = 0;
    v30 = 0;
    v21 = v23.i64[0];

    v22 = v21;

    sub_1D81427D4(__dst);
    v31 = 0;
    v32 = 0xE000000000000000;
  }

  sub_1D8140844(v27);
}

uint64_t sub_1D81427D4(uint64_t a1)
{
  sub_1D7E09CC4(0, &unk_1ECA11900, &type metadata for JSONTextParser, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8142904(uint64_t a1, void *a2)
{
  sub_1D7E0A1A8(0, &qword_1EDBB31D0, 0x1E69DC708);
  v3 = sub_1D8191304();

  [a2 setItems_];
}

uint64_t sub_1D81429D8(uint64_t a1, uint64_t a2)
{
  sub_1D8142A3C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D8142A3C(uint64_t a1)
{
  if (!qword_1ECA11A90)
  {
    type metadata accessor for _NSRange();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA11A90);
    }
  }
}

uint64_t sub_1D8142AA8(uint64_t a1)
{
  sub_1D8142B04(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8142B04(uint64_t a1)
{
  if (!qword_1ECA11A98)
  {
    sub_1D8142A3C(255);
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA11A98);
    }
  }
}

void *sub_1D8142B5C(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (result)
  {

    sub_1D8142BE8();
  }

  return result;
}

void sub_1D8142C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1D8142CC8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1D8142D50(v2, v1);
}

uint64_t sub_1D8142D04()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

double sub_1D8142D50(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_1D8142DBC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F18A1C;
}

void sub_1D8142EBC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
  swift_beginAccess();
  if (v2 != *(v1 + v3))
  {
    sub_1D8142F18();
  }
}

void sub_1D8142F18()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
  swift_beginAccess();
  v3 = v1[v2];
  v4 = [v1 navigationItem];
  v5 = v4;
  if (v3)
  {
    if (v3 == 1)
    {
      [v4 setTitleView_];

      sub_1D7E49240();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D81A50A0;
      *(v6 + 32) = sub_1D814387C();
      v7 = sub_1D7E38C7C([v1 navigationItem]);
      if (!v7)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      sub_1D7E45B68(v7);
      v8 = [v1 navigationItem];
      sub_1D80B7B00(0);
      sub_1D8145598();
      v9 = sub_1D8191144();

      sub_1D7F2F7F8(v9, v8);

      v10 = sub_1D81436F0();
      if (v10)
      {
        v12 = v10;
        v13 = v11;
        v14 = [v1 navigationItem];
        ObjectType = swift_getObjectType();
        v16 = *(v13 + 8);
        v17 = v16(ObjectType, v13);
        sub_1D7FC8B88(v17, v18, v14);

        v19 = [v1 navigationItem];
        (*(v13 + 16))(ObjectType, v13);
        if (v20)
        {
          v21 = sub_1D8190EE4();
        }

        else
        {
          v21 = 0;
        }

        [v19 setSubtitle_];

        v51 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem;
        v52 = *&v1[OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem];
        v53 = v16(ObjectType, v13);
        sub_1D814512C(v53, v54, v52);

        v55 = *&v1[v51];
        v56 = *(v13 + 24);
        v57 = v55;
        v58 = v56(ObjectType, v13);
        [v57 setImage_];
      }
    }

    else
    {
      [v4 setTitleView_];

      v31 = sub_1D7E38C7C([v1 navigationItem]);
      v32 = MEMORY[0x1E69E7CC0];
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = MEMORY[0x1E69E7CC0];
      }

      v34 = [v1 navigationItem];
      v60 = v32;
      v35 = sub_1D7E36AB8(v33);
      for (i = 0; v35 != i; ++i)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x1DA714420](i, v33);
        }

        else
        {
          if (i >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v37 = *(v33 + 8 * i + 32);
        }

        v38 = v37;
        if (__OFADD__(i, 1))
        {
          goto LABEL_46;
        }

        v39 = sub_1D814387C();

        if (v38 == v39)
        {
        }

        else
        {
          sub_1D8192274();
          sub_1D81922B4();
          sub_1D81922C4();
          sub_1D8192284();
        }
      }

      sub_1D7F2F7F8(v60, v34);

      v40 = sub_1D81436F0();
      if (v40)
      {
        v42 = v40;
        v43 = v41;
        v44 = [v1 navigationItem];
        v45 = swift_getObjectType();
        v46 = (*(v43 + 8))(v45, v43);
        sub_1D7FC8B88(v46, v47, v44);

        v48 = [v1 navigationItem];
        (*(v43 + 16))(v45, v43);
        if (v49)
        {
          v50 = sub_1D8190EE4();
        }

        else
        {
          v50 = 0;
        }

        [v48 setSubtitle_];
      }
    }
  }

  else
  {
    [v4 setTitleView_];

    v22 = sub_1D7E38C7C([v1 navigationItem]);
    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v25 = [v1 navigationItem];
    v59 = v23;
    v26 = sub_1D7E36AB8(v24);
    for (j = 0; ; ++j)
    {
      if (v26 == j)
      {

        sub_1D7F2F7F8(v59, v25);

        return;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1DA714420](j, v24);
      }

      else
      {
        if (j >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v28 = *(v24 + 8 * j + 32);
      }

      v29 = v28;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v30 = sub_1D814387C();

      if (v29 == v30)
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

void sub_1D8143568(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1D81435B4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
  OUTLINED_FUNCTION_28();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5[0] = v4;
  sub_1D8142EBC(v5);
}

void (*sub_1D8143610(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return sub_1D814368C;
}

void sub_1D814368C(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1D81435B4(v3);

  free(v2);
}

unint64_t sub_1D81436F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl);
  v2 = [v1 selectedSegmentIndex];
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v4 = 0;
  if (v2 >= *(*(v0 + v3) + 16))
  {
    return v4;
  }

  result = [v1 selectedSegmentIndex];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + v3);
    if (result < *(v6 + 16))
    {
      v4 = *(v6 + 16 * result + 32);
      v7 = v4;
      return v4;
    }
  }

  __break(1u);
  return result;
}

double sub_1D81437E4()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D8190DB4();
  return result;
}

uint64_t sub_1D8143828(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  OUTLINED_FUNCTION_28();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1D814387C()
{
  v1 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem);
  }

  else
  {
    v4 = v0;
    OUTLINED_FUNCTION_0_8();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = objc_allocWithZone(type metadata accessor for ContextMenuBarButtonItem());
    v7 = ContextMenuBarButtonItem.init(image:menuProvider:)(0, sub_1D8145588, v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

Class sub_1D8143930(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1D81439B8();
  }

  else
  {
    sub_1D7E0A1A8(0, &unk_1EDBB2FD0, 0x1E69DCC60);
    return UIMenu.init(children:)(MEMORY[0x1E69E7CC0]).super.super.isa;
  }

  return v3;
}

Class sub_1D81439B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  v5._rawValue = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D8190DB4();
    sub_1D81922A4();
    v22 = *(v3 + 16);
    result = sub_1D7E0A1A8(0, &qword_1EDBB2F18, 0x1E69DC628);
    v7 = 0;
    v21 = v3;
    v20 = *(v1 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl);
    v8 = (v3 + 40);
    while (v22 != v7)
    {
      if (v7 >= *(v3 + 16))
      {
        goto LABEL_9;
      }

      v9 = *v8;
      v10 = *(v8 - 1);
      [v20 selectedSegmentIndex];
      ObjectType = swift_getObjectType();
      v12 = (*(v9 + 8))(ObjectType, v9);
      v14 = v13;
      v15 = (*(v9 + 24))(ObjectType, v9);
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = v4;
      v18 = swift_allocObject();
      *(v18 + 24) = v9;
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      *(v19 + 24) = v18;
      sub_1D8191CF4(v12, v14, 0, 0, v15, 0, 0, 0, 0, 0);

      sub_1D8192274();
      sub_1D81922B4();
      v4 = v17;
      v3 = v21;
      sub_1D81922C4();
      result = sub_1D8192284();
      ++v7;
      v8 += 2;
      if (v17 == v7)
      {

        v5._rawValue = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1D7E0A1A8(0, &unk_1EDBB2FD0, 0x1E69DCC60);
    return UIMenu.init(children:)(v5).super.super.isa;
  }

  return result;
}

id SegmentedViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

char *SegmentedViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{

  *(v3 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style) = 0;
  v5 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl;
  *(v3 + v5) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCF38]), sel_initWithFrame_);
  *(v3 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem) = 0;
  v14 = type metadata accessor for SegmentedViewController();
  OUTLINED_FUNCTION_7();
  v8 = objc_msgSendSuper2(v6, v7, v3, v14);
  v9 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl;
  v10 = *&v8[OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl];
  v11 = v8;
  [v10 addTarget:v11 action:sel_doSegmentChange forControlEvents:4096];
  v12 = [v11 navigationItem];
  [v12 setTitleView_];

  return v11;
}

id SegmentedViewController.__allocating_init(segmentViewControllers:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  OUTLINED_FUNCTION_7();
  v6 = [v4 v5];
  v7 = v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = v6;
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      v12 = *(v10 - 1);
      sub_1D8144058(v12, v11);

      v10 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {
  }

  return v7;
}

id SegmentedViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SegmentedViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style) = 0;
  v1 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCF38]), sel_initWithFrame_);
  *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem) = 0;
  sub_1D81923A4();
  __break(1u);
}

id sub_1D8144058(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  v8 = *&v2[OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl];
  if (v7)
  {
    v9 = v7;
    v10 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    [v8 insertSegmentWithImage:v9 atIndex:*(*&v3[v10] + 16) animated:0];
  }

  else
  {
    v11 = (*(a2 + 8))(ObjectType, a2);
    v13 = v12;
    v14 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    sub_1D8145190(v11, v13, *(*&v3[v14] + 16), 0, v8);
  }

  v15 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  swift_beginAccess();
  sub_1D7EE4504();
  v16 = *(*&v3[v15] + 16);
  sub_1D7EE472C();
  v17 = *&v3[v15];
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 16 * v16;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *&v3[v15] = v17;
  swift_endAccess();
  v19 = a1;
  [v3 addChildViewController_];
  [v19 didMoveToParentViewController_];
  result = [v8 isSelected];
  if ((result & 1) == 0)
  {
    [v8 setSelectedSegmentIndex_];
    return [v8 sendActionsForControlEvents_];
  }

  return result;
}

void sub_1D8144238(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v4 = 0;
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  while (v6 != v4)
  {
    if (*v7 == a1)
    {
      v8 = *(v1 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl);
      [v8 setSelectedSegmentIndex_];
      [v8 sendActionsForControlEvents_];
      return;
    }

    ++v4;
    v7 += 2;
  }
}

void sub_1D81442DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl];
  v3 = [v2 selectedSegmentIndex];
  v4 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (v3 < *(*&v1[v4] + 16))
  {
    v5 = [v2 selectedSegmentIndex];
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *&v1[v4];
      if (v5 < *(v6 + 16))
      {
        v7 = v6 + 16 * v5;
        v8 = *(v7 + 32);
        v9 = *(v7 + 40);
        ObjectType = swift_getObjectType();
        v70 = v8;
        v11 = v9[4];
        v12 = v8;
        if (v11(ObjectType, v9))
        {
          sub_1D7E0A1A8(0, &qword_1EDBB31D0, 0x1E69DC708);
          v13 = sub_1D8191304();
        }

        else
        {
          v13 = 0;
        }

        v14 = objc_opt_self();
        [v1 setToolbarItems:v13 animated:{objc_msgSend(v14, sel_areAnimationsEnabled)}];

        v15 = sub_1D814520C(v1);
        if (v15 && (v11 = sub_1D7E36AB8(v15), , v11))
        {
          v16 = [v1 navigationController];
          if (!v16)
          {
            goto LABEL_14;
          }

          v17 = v16;
          [v16 setToolbarHidden:0 animated:0];
        }

        else
        {
          v18 = [v1 navigationController];
          if (!v18)
          {
            goto LABEL_14;
          }

          v17 = v18;
          [v18 setToolbarHidden:1 animated:0];
        }

LABEL_14:
        v19 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
        OUTLINED_FUNCTION_7();
        swift_beginAccess();
        if (v1[v19])
        {
          if (v1[v19] == 1)
          {
            v20 = sub_1D814387C();
            v21 = v9[1];
            v22 = OUTLINED_FUNCTION_0_237();
            v23 = v21(v22);
            sub_1D814512C(v23, v24, v20);

            v68 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem;
            v25 = v9[3];
            v26 = *&v1[OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem];
            v27 = OUTLINED_FUNCTION_0_237();
            v28 = v25(v27);
            [v26 setImage_];

            v29 = OUTLINED_FUNCTION_8_60();
            v30 = OUTLINED_FUNCTION_0_237();
            v31 = v21(v30);
            sub_1D7FC8B88(v31, v32, v29);

            v33 = OUTLINED_FUNCTION_8_60();
            v34 = OUTLINED_FUNCTION_0_237();
            v35(v34);
            if (v36)
            {
              v37 = sub_1D8190EE4();
            }

            else
            {
              v37 = 0;
            }

            [v33 setSubtitle_];

            v51 = OUTLINED_FUNCTION_8_60();
            sub_1D7E49240();
            v52 = swift_allocObject();
            v53 = *&v1[v69];
            *(v52 + 16) = xmmword_1D81A50A0;
            *(v52 + 32) = v53;
            v54 = v9[5];
            v55 = v53;
            v56 = OUTLINED_FUNCTION_0_237();
            v57 = v54(v56);
            if (!v57)
            {
              v57 = MEMORY[0x1E69E7CC0];
            }

            sub_1D7E45B68(v57);
            sub_1D814527C(v52, 0, v51);

            v58 = OUTLINED_FUNCTION_8_60();
            v59 = OUTLINED_FUNCTION_0_237();
            if (v60(v59))
            {
              sub_1D7E0A1A8(0, &qword_1EDBB31D0, 0x1E69DC708);
              v61 = sub_1D8191304();
            }

            else
            {
              v61 = 0;
            }

            [v58 setRightBarButtonItems:v61 animated:0];
            goto LABEL_38;
          }

          v41 = OUTLINED_FUNCTION_3_132();
          OUTLINED_FUNCTION_2_155();
          v42 = OUTLINED_FUNCTION_0_237();
          v44 = v43(v42);
          sub_1D7FC8B88(v44, v45, v11);

          v46 = OUTLINED_FUNCTION_3_132();
          OUTLINED_FUNCTION_2_155();
          v47 = OUTLINED_FUNCTION_0_237();
          v48(v47);
          if (v49)
          {
            v50 = sub_1D8190EE4();
          }

          else
          {
            v50 = 0;
          }

          [v11 setSubtitle_];

          v63 = OUTLINED_FUNCTION_3_132();
          OUTLINED_FUNCTION_2_155();
          v64 = OUTLINED_FUNCTION_0_237();
          if (!v65(v64))
          {
            v62 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          v38 = OUTLINED_FUNCTION_3_132();
          OUTLINED_FUNCTION_2_155();
          v39 = OUTLINED_FUNCTION_0_237();
          if (!v40(v39))
          {
            v62 = 0;
LABEL_34:
            [v11 setLeftBarButtonItems:v62 animated:{objc_msgSend(v14, sel_areAnimationsEnabled)}];

            v58 = OUTLINED_FUNCTION_3_132();
            v66 = OUTLINED_FUNCTION_0_237();
            if (v67(v66))
            {
              sub_1D7E0A1A8(0, &qword_1EDBB31D0, 0x1E69DC708);
              v61 = sub_1D8191304();
            }

            else
            {
              v61 = 0;
            }

            [v58 setRightBarButtonItems:v61 animated:{objc_msgSend(v14, sel_areAnimationsEnabled)}];
LABEL_38:

            return;
          }
        }

        sub_1D7E0A1A8(0, &qword_1EDBB31D0, 0x1E69DC708);
        v62 = sub_1D8191304();

        goto LABEL_34;
      }
    }

    __break(1u);
  }
}

void sub_1D8144994(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  v3 = sub_1D814520C(v1);
  if (v3)
  {
    v4 = sub_1D7E36AB8(v3);

    if (v4)
    {
      v5 = [v1 navigationController];
      if (v5)
      {
        v6 = v5;
        [v5 setToolbarHidden:0 animated:0];
      }
    }
  }
}

id SegmentedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D8144B30()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl];
  v3 = [v2 selectedSegmentIndex];
  v4 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (v3 >= *(*&v1[v4] + 16))
  {
    return;
  }

  v5 = [v2 selectedSegmentIndex];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v6 = *&v1[v4];
  if (v5 >= *(v6 + 16))
  {
    goto LABEL_41;
  }

  v7 = v6 + 16 * v5;
  v8 = *(v7 + 40);
  v9 = *(v7 + 32);
  v10 = [v9 view];
  if (!v10)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = [v10 superview];

  v13 = OUTLINED_FUNCTION_7_80();
  v14 = v13;
  if (v12)
  {
    if (v13)
    {

      if (v12 == v14)
      {
        goto LABEL_37;
      }

      goto LABEL_13;
    }

    v14 = v12;
  }

  else if (!v13)
  {
    goto LABEL_37;
  }

LABEL_13:
  v53 = v8;
  v54 = v9;
  v15 = *&v1[v4];
  v16 = *(v15 + 16);
  v17 = &v1[OBJC_IVAR____TtC5TeaUI23SegmentedViewController_delegate];
  sub_1D8190DB4();
  v55 = v17;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v18 = 0;
  v19 = (v15 + 40);
  while (v16 != v18)
  {
    if (v18 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    v20 = *v19;
    v21 = *(v19 - 1);
    v22 = [v21 view];
    if (!v22)
    {
      goto LABEL_43;
    }

    v23 = v22;
    v24 = [v22 superview];

    v25 = OUTLINED_FUNCTION_7_80();
    v26 = v25;
    if (v24)
    {
      if (v25)
      {

        if (v24 != v26)
        {
          goto LABEL_28;
        }

LABEL_22:
        if (swift_unknownObjectWeakLoadStrong())
        {
          v27 = *(v55 + 1);
          ObjectType = swift_getObjectType();
          (*(v27 + 8))(v1, v21, v20, ObjectType, v27);
          swift_unknownObjectRelease();
        }

        v29 = [v21 view];
        if (!v29)
        {
          goto LABEL_44;
        }

        v26 = v29;
        [v29 removeFromSuperview];
        goto LABEL_27;
      }

      v26 = v24;
    }

    else if (!v25)
    {
      goto LABEL_22;
    }

LABEL_27:

LABEL_28:
    v19 += 2;
    ++v18;
  }

  v30 = OUTLINED_FUNCTION_7_80();
  if (!v30)
  {
    goto LABEL_46;
  }

  v31 = v30;
  v9 = v54;
  v32 = [v54 view];
  if (!v32)
  {
    goto LABEL_47;
  }

  v33 = v32;
  [v31 addSubview_];

  v34 = [v54 view];
  if (!v34)
  {
    goto LABEL_48;
  }

  v35 = v34;
  v36 = OUTLINED_FUNCTION_7_80();
  if (!v36)
  {
    goto LABEL_49;
  }

  v37 = v36;
  [v36 bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [v35 setFrame_];
  v46 = objc_opt_self();
  OUTLINED_FUNCTION_0_8();
  v47 = swift_allocObject();
  *(v47 + 16) = v1;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1D8145564;
  *(v48 + 24) = v47;
  aBlock[4] = sub_1D7E74D6C;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E74D74;
  aBlock[3] = &block_descriptor_81;
  v49 = _Block_copy(aBlock);
  v50 = v1;

  [v46 performWithoutAnimation_];
  _Block_release(v49);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v51 = *(v55 + 1);
    v52 = swift_getObjectType();
    (*(v51 + 16))(v50, v54, v53, v52, v51);

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_37:
}

void sub_1D81450A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_1D8144238(v5);

      v4 = v6;
    }
  }
}

void sub_1D814512C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setTitle_];
}

void sub_1D8145190(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_1D8190EE4();

  [a5 insertSegmentWithTitle:v8 atIndex:a3 animated:a4 & 1];
}

uint64_t sub_1D814520C(void *a1)
{
  v1 = [a1 toolbarItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D7E0A1A8(0, &qword_1EDBB31D0, 0x1E69DC708);
  v3 = sub_1D8191314();

  return v3;
}

void sub_1D814527C(uint64_t a1, char a2, void *a3)
{
  sub_1D7E0A1A8(0, &qword_1EDBB31D0, 0x1E69DC708);
  v5 = sub_1D8191304();

  [a3 setLeftBarButtonItems:v5 animated:a2 & 1];
}

unint64_t sub_1D8145598()
{
  result = qword_1ECA11AD8;
  if (!qword_1ECA11AD8)
  {
    sub_1D80B7B00(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11AD8);
  }

  return result;
}

_BYTE *_s5SceneVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t PillViewLayoutOptions.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x235uLL);
  memcpy(a1, v1, 0x235uLL);
  return sub_1D7E222B8(__dst, v4);
}

void *PillViewLayoutOptions.init(layoutOptions:interitemPadding:verticalPadding:)@<X0>(void *__src@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  result = memcpy(a2, __src, 0x235uLL);
  a2[71] = a3;
  a2[72] = a4;
  return result;
}

uint64_t ImageDownloader.downloadImageAndStoreFilePath(inAssetHandle:usingDispatchGroup:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 40))(a2, v3, v4);
}

uint64_t CommandContextProvider.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 88);
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  sub_1D7E7B91C(v2 + 16, v24);
  sub_1D7E2CEC0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_2_156();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    (*(*(v4 - 8) + 32))(a2, v10, v4);
  }

  else
  {
    OUTLINED_FUNCTION_2_156();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    (*(v7 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_2_156();
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t CommandContextProvider.contextWithState<A, B>(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = *a1;
  v5 = v49;
  v6 = *(v49 + 144);
  v7 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v47 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v52 = v42 - v10;
  OUTLINED_FUNCTION_2();
  v48 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v46 = v42 - v13;
  v14 = *(v5 + 136);
  v51 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v42 - v21;
  OUTLINED_FUNCTION_2();
  v50 = v23;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v42 - v25;
  sub_1D7E7B91C(v2 + 16, v53);
  sub_1D7E2CEC0();
  if (swift_dynamicCast())
  {
    v43 = v7;
    v45 = a2;
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v14);
    v27 = v50;
    v42[0] = *(v50 + 32);
    v42[1] = v50 + 32;
    (v42[0])(v26, v22, v14);
    v28 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v27 + 16))(v19, v26, v14);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v14);
    v29 = *(v28 + 80);
    v30 = v52;
    v31 = v28;
    v32 = v6;
    v29(a1, v19, v14, v6, *(v49 + 152), ObjectType, v31);
    (*(v16 + 8))(v19, v51);
    if (__swift_getEnumTagSinglePayload(v30, 1, v6) != 1)
    {
      v37 = *(v48 + 32);
      v38 = v46;
      v37(v46, v52, v6);
      v39 = *(OUTLINED_FUNCTION_1_171() + 48);
      v40 = v45;
      (v42[0])(v45, v26, v14);
      v37((v40 + v39), v38, v32);
      OUTLINED_FUNCTION_2_156();
      return __swift_storeEnumTagSinglePayload(v34, v35, v36, TupleTypeMetadata2);
    }

    (*(v50 + 8))(v26, v14);
    (*(v47 + 8))(v52, v43);
    TupleTypeMetadata2 = OUTLINED_FUNCTION_1_171();
    v34 = v45;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v14);
    (*(v16 + 8))(v22, v51);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v34 = a2;
  }

  v35 = 1;
  v36 = 1;
  return __swift_storeEnumTagSinglePayload(v34, v35, v36, TupleTypeMetadata2);
}

uint64_t sub_1D8146030(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_6_92();
  v4 = a2(a1);
  OUTLINED_FUNCTION_5_86(v4, v5, v6);

  return sub_1D8192824();
}

uint64_t sub_1D81460C8(char a1)
{
  OUTLINED_FUNCTION_6_92();
  sub_1D7F174CC(v3, a1 & 1);
  return sub_1D8192824();
}

uint64_t sub_1D814618C(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_6_92();
  a2(v5, a1);
  return sub_1D8192824();
}

uint64_t sub_1D81461F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_92();
  sub_1D8190FF4();
  return sub_1D8192824();
}

uint64_t sub_1D8146244(uint64_t a1)
{
  OUTLINED_FUNCTION_6_92();
  MEMORY[0x1DA714A00](a1);
  return sub_1D8192824();
}

uint64_t sub_1D8146284()
{
  v0 = OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133(v0, 0x656C616353706F74, v1);

  return sub_1D8192824();
}

uint64_t sub_1D81462F4()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x726F66736E617274;
    }

    else
    {
      v3 = 1701736302;
    }
  }

  else
  {
    v3 = 0x6764456F546E6970;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D814638C()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    v3 = 0x676E696C69617274;
  }

  else
  {
    v3 = 0x676E696461656CLL;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D8146414()
{
  OUTLINED_FUNCTION_2_157();
  sub_1D8190FF4();

  return sub_1D8192824();
}

uint64_t sub_1D8146488()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    v3 = 0x6165707061736964;
  }

  else
  {
    v3 = 0x6E69726165707061;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D8146504()
{
  OUTLINED_FUNCTION_2_157();
  sub_1D8190FF4();

  return sub_1D8192824();
}

uint64_t sub_1D814656C()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    v3 = 0x647261776B636162;
  }

  else
  {
    v3 = 0x64726177726F66;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D81465F4()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    v3 = 1701077350;
  }

  else
  {
    v3 = 0x726576656ELL;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D8146658()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x676E696461656CLL;
    }

    else
    {
      v3 = 0x676E696C69617274;
    }
  }

  else
  {
    v3 = 0x6E6564646968;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D81466E4()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x616853724F706174;
    }

    else
    {
      v3 = 0x656B616873;
    }
  }

  else
  {
    v3 = 7364980;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D8146784()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x6974634172657375;
    }

    else
    {
      v3 = 0x6E6F43656E656373;
    }
  }

  else
  {
    v3 = 0x4C52556E65706FLL;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D8146848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D81927E4();
  sub_1D8190FF4();
  return sub_1D8192824();
}

uint64_t sub_1D8146894()
{
  OUTLINED_FUNCTION_2_157();
  sub_1D7F174CC(v2, v0 & 1);
  return sub_1D8192824();
}

uint64_t sub_1D8146900()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    v3 = 13168;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D814697C(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, __n128))
{
  sub_1D81927E4();
  (a3)(v6, a2);
  return sub_1D8192824();
}

uint64_t sub_1D81469C8()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    v3 = 0x6C616D726F6ELL;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D8146A34()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x63696D616E7964;
    }

    else
    {
      v3 = 0x636974617473;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D8146AB0()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    v3 = 0x6B63616C62;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D8146B20()
{
  v1 = OUTLINED_FUNCTION_2_157();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x64656C62616E65;
    }

    else
    {
      v3 = 0x64656C6261736964;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
  }

  OUTLINED_FUNCTION_3_133(v1, v3, v2);

  return sub_1D8192824();
}

uint64_t sub_1D8146BA0(char a1)
{
  result = 0x7365676170;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_0_238();
      break;
    case 2:
      result = OUTLINED_FUNCTION_1_172();
      break;
    case 3:
      result = 0x73656C646E7562;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D8146BF8(void *__src, char a2)
{
  v3 = v2;
  memcpy(__dst, __src, 0x41uLL);
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    sub_1D8147260(__dst, v9);
    sub_1D7EE444C();
    v6 = *(*(v3 + 24) + 16);
    sub_1D7EE4678(v6);
    v7 = *(v3 + 24);
    *(v7 + 16) = v6 + 1;
    memcpy((v7 + 72 * v6 + 32), __dst, 0x41uLL);
    *(v3 + 24) = v7;
    goto LABEL_6;
  }

  swift_beginAccess();
  v8[0] = *(v3 + 24);
  memcpy(v9, __dst, 0x41uLL);
  sub_1D81472BC();
  sub_1D814730C();
  sub_1D8190DB4();
  v5 = sub_1D8191744();

  swift_beginAccess();
  if (*(*(v3 + 24) + 16) < v5)
  {
    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) == 0)
  {
    memcpy(v9, __dst, 0x41uLL);
    sub_1D8147260(__dst, v8);
    sub_1D81325D0(v5, v5, v9);
LABEL_6:
    swift_endAccess();
    return;
  }

  __break(1u);
}

unint64_t sub_1D8146DF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D81924B4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8146EB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8146DF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D8146EE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8146BA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8146F1C()
{

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for DebugSection.Section(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D8147034()
{
  result = qword_1ECA11AE0;
  if (!qword_1ECA11AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11AE0);
  }

  return result;
}

uint64_t sub_1D8147088()
{
  result = 0x7365676170;
  switch(*(v0 + 16))
  {
    case 1:
      result = OUTLINED_FUNCTION_0_238();
      break;
    case 2:
      result = OUTLINED_FUNCTION_1_172();
      break;
    case 3:
      result = 0x73656C646E7562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8147100(uint64_t a1, uint64_t a2)
{
  v2 = 0x7365676170;
  v3 = *(a1 + 16);
  v4 = 0xE500000000000000;
  v5 = 0x7365676170;
  switch(v3)
  {
    case 1:
      v4 = 0xE700000000000000;
      v6 = 0x6E6F69746361;
      goto LABEL_5;
    case 2:
      v4 = 0xE600000000000000;
      v5 = 0x736C6562616CLL;
      break;
    case 3:
      v4 = 0xE700000000000000;
      v6 = 0x656C646E7562;
LABEL_5:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(*(a2 + 16))
  {
    case 1:
      v7 = 0xE700000000000000;
      v8 = 0x6E6F69746361;
      goto LABEL_10;
    case 2:
      v7 = 0xE600000000000000;
      v2 = 0x736C6562616CLL;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 0x656C646E7562;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v4 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D8192634();
  }

  return v10 & 1;
}

void sub_1D81472BC()
{
  if (!qword_1ECA11AE8)
  {
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11AE8);
    }
  }
}

unint64_t sub_1D814730C()
{
  result = qword_1ECA11AF0;
  if (!qword_1ECA11AF0)
  {
    sub_1D81472BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11AF0);
  }

  return result;
}

uint64_t BlueprintLayout<>.isResizing.getter(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1].n128_i64[1];
  v8 = a1[2].n128_i64[1];
  v9 = type metadata accessor for BlueprintLayoutItem(0, v7, v8, a4);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v95 - v10;
  *&v12 = a1[2].n128_u64[0];
  *&v13 = a1[1].n128_u64[0];
  *(&v13 + 1) = v7;
  *(&v12 + 1) = v8;
  v102[0] = v13;
  v102[1] = v12;
  v14 = type metadata accessor for BlueprintLayoutSection(255, v102);
  swift_getWitnessTable();
  v15 = sub_1D8192344();
  v16 = *(v15 - 8);
  v99 = v15;
  v100 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v95 - v17;
  v19 = *(v14 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v101 = v95 - v22;
  v23 = (*(a1[-1].n128_u64[1] + 16))(v102, v4, a1, v21);
  v36 = BlueprintLayout.startIndex.getter(a1, v23, v31, v32, v33, v34, v35, v24, v25, v26, v27, v28, v29, v30);
  v103 = v36;
  if (v36 == BlueprintLayout.endIndex.getter(a1, v44, v45, v46, v47, v37, v38, v39, v40, v41, v42, v43, v48, v49))
  {
    v62 = 0;
  }

  else
  {
    v63 = v36;
    v64 = a1;
    v95[1] = v100 + 8;
    v96 = (v19 + 16);
    v98 = a1;
    v95[0] = v19 + 8;
    do
    {
      v100 = v63;
      BlueprintLayout.subscript.getter(v63, v64, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
      v100 = BlueprintLayout.index(after:)(v100);
      (*v96)(v18, v101, v14);
      v97 = *(v99 + 36);
      v68 = BlueprintLayoutSection.startIndex.getter(v14, v65, v66, v67);
      (*v95[0])(v101, v14);
      while (v68 != BlueprintLayoutSection.endIndex.getter(v14, v69, v70, v71))
      {
        BlueprintLayoutSection.subscript.getter(v68, v14, v72, v73);
        v68 = BlueprintLayoutSection.index(after:)(v68);
        v74 = (*(a2 + 8))(v7, a2);
        (*(*(v7 - 8) + 8))(v11, v7);
        if (v74)
        {
          v103 = v100;
          v91 = OUTLINED_FUNCTION_0_239();
          v92(v91);
          v62 = 1;
          goto LABEL_10;
        }
      }

      v75 = OUTLINED_FUNCTION_0_239();
      v77 = v76(v75, v99);
      v90 = BlueprintLayout.endIndex.getter(v98, v77, v85, v86, v87, v78, v79, v80, v81, v82, v83, v84, v88, v89);
      v64 = v98;
      v63 = v100;
    }

    while (v100 != v90);
    v62 = 0;
    v103 = v100;
  }

LABEL_10:
  swift_getWitnessTable();
  v93 = sub_1D8192344();
  (*(*(v93 - 8) + 8))(v102, v93);
  return v62;
}

id HostingModalCardViewController.__allocating_init(_:useMaterialBackground:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return HostingModalCardViewController.init(_:useMaterialBackground:)(a1, v3);
}

id HostingModalCardViewController.init(_:useMaterialBackground:)(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v10 = &v16 - v9;
  sub_1D8190624();
  (*(v8 + 16))(v10, a1, v7);
  v11 = sub_1D8190614();
  result = [v11 view];
  if (result)
  {
    v13 = result;
    v14 = [objc_opt_self() clearColor];
    [v13 setBackgroundColor_];

    v16.receiver = v3;
    v16.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v16, sel_initWithRootViewController_useMaterialBackground_, v11, a2 & 1);

    (*(v8 + 8))(a1, v7);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HostingModalCardViewController.__allocating_init(_:useMaterialBackground:showsCloseButton:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 10);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = HostingModalCardViewController.__allocating_init(_:useMaterialBackground:)(v11, a2);
  v14.receiver = v12;
  v14.super_class = v3;
  objc_msgSendSuper2(&v14, sel_setShowsCloseButton_, a3 & 1);
  (*(v8 + 8))(a1, v7);
  return v12;
}

id HostingModalCardViewController.__allocating_init(rootViewController:useMaterialBackground:)(void *a1, char a2)
{
  v4 = [objc_allocWithZone(v2) initWithRootViewController:a1 useMaterialBackground:a2 & 1];

  return v4;
}

id HostingModalCardViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

TeaUI::MenuToolbarItemConfiguration __swiftcall MenuToolbarItemConfiguration.init(menu:title:)(UIMenu menu, Swift::String_optional title)
{
  v4 = v2;
  if (title.value._object)
  {
    object = title.value._object;
    countAndFlagsBits = title.value._countAndFlagsBits;
  }

  else
  {
    v7 = menu.super.super.isa;
    v8 = [(objc_class *)v7 title];
    countAndFlagsBits = sub_1D8190F14();
    object = v9;
  }

  v4->super.super.isa = menu.super.super.isa;
  v4[1].super.super.isa = countAndFlagsBits;
  v4[2].super.super.isa = object;
  result.title = title.value;
  result.menu = menu;
  return result;
}

void MenuToolbarItem.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
}

uint64_t MenuToolbarItem.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MenuToolbarItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8147D88(uint64_t a1)
{
  result = sub_1D8147E34(&qword_1EDBB16F0, &protocol conformance descriptor for MenuToolbarItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8147DF0(uint64_t a1)
{
  result = sub_1D8147E34(qword_1EDBB16F8, &protocol conformance descriptor for MenuToolbarItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8147E34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MenuToolbarItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id SegmentedControlButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SegmentedControlButton.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC5TeaUI22SegmentedControlButton_onTap;
  sub_1D7E40308(0, a2, a3, a4);
  *(v4 + v5) = [objc_allocWithZone(v6) init];
  sub_1D81923A4();
  __break(1u);
}

id SegmentedControlButton.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *SegmentedControlButton.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI22SegmentedControlButton_onTap;
  sub_1D7E40308(0, v3, v4, v5);
  *(v0 + v2) = [objc_allocWithZone(v6) init];
  v7 = OUTLINED_FUNCTION_80();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, ObjectType);
  [v10 addTarget:*&v10[OBJC_IVAR____TtC5TeaUI22SegmentedControlButton_onTap] action:sel_handleAction forControlEvents:64];
  return v10;
}

id SegmentedControlButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ActivityIndicatorLoadingView.startAnimating()()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_activityIndicatorView);
  if (([v1 isAnimating] & 1) == 0)
  {

    [v1 startAnimating];
  }
}

double ActivityIndicatorLoadingView.keyboardInfo.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  swift_unknownObjectRetain();
  return result;
}

double sub_1D81482D4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v4;
  swift_unknownObjectRetain();
  return result;
}

id sub_1D8148334(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2;
  v7 = v1;
  swift_unknownObjectRetain();
  return ActivityIndicatorLoadingView.keyboardInfo.setter(v5);
}

id ActivityIndicatorLoadingView.keyboardInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = &v1[OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo];
  swift_beginAccess();
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  *(v5 + 5) = v4;
  swift_unknownObjectRelease();
  return [v1 setNeedsLayout];
}

id (*ActivityIndicatorLoadingView.keyboardInfo.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D80DAC4C;
}

objc_super *ActivityIndicatorLoadingView.init(style:color:backgroundColor:activityText:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = (v5 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo);
  *v11 = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *(v5 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_overrideColor) = 0;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v12 setHidesWhenStopped_];
  [v12 setAutoresizingMask_];
  v13 = a2;
  [v12 setColor_];
  *(v5 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_activityIndicatorView) = v12;
  v14 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v15 = v12;
  v16 = OUTLINED_FUNCTION_0_63();
  v18 = [v14 v17];
  v19 = [objc_opt_self() systemFontOfSize_];
  [v18 setFont_];

  if (a5)
  {
    v20 = sub_1D8190EE4();
  }

  else
  {
    v20 = 0;
  }

  [v18 setText_];

  [v18 setTextColor_];
  [v18 setTextAlignment_];
  [v18 setAutoresizingMask_];
  *(v5 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_label) = v18;
  v26 = v5;
  v21 = v18;
  v22 = OUTLINED_FUNCTION_0_63();
  v24 = [(objc_super *)v23 initWithFrame:v22, v26, ObjectType];
  [(objc_super *)v24 addSubview:v15];
  [(objc_super *)v24 addSubview:v21];
  [(objc_super *)v24 setBackgroundColor:a3];

  return v24;
}

void sub_1D81486C4()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *(v0 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_overrideColor) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall ActivityIndicatorLoadingView.layoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v15);
  [v0 bounds];
  Height = CGRectGetHeight(v16);
  v3 = &v0[OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo];
  swift_beginAccess();
  if (*(v3 + 5))
  {
    v4 = v3[4];
  }

  else
  {
    v4 = 0.0;
  }

  v5 = Width * 0.5;
  v6 = (Height - v4) * 0.5;
  [*&v0[OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_activityIndicatorView] setCenter_];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D8148C60;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1D7E74D6C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E74D74;
  aBlock[3] = &block_descriptor_82;
  v10 = _Block_copy(aBlock);
  v11 = v0;

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_1D8148974(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_label);
  [v6 sizeToFit];
  [*(a1 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_activityIndicatorView) bounds];

  return [v6 setCenter_];
}

Swift::Void __swiftcall ActivityIndicatorLoadingView.stopAnimating()()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_activityIndicatorView);
  if ([v1 isAnimating])
  {

    [v1 stopAnimating];
  }
}

id ActivityIndicatorLoadingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ActivityIndicatorLoadingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*sub_1D8148BFC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D80DAC4C;
}

void OpenNewWindowCommandHandler.handle(commandCenter:command:with:source:)()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_39();

  sub_1D8148D80();
}

void sub_1D8148D28()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_39();

  sub_1D8148D80();
}

void sub_1D8148D80()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCE80]) init];
  v1 = [objc_opt_self() sharedApplication];
  v4[4] = sub_1D7F32150;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D806D054;
  v4[3] = &block_descriptor_83;
  v2 = _Block_copy(v4);
  v3 = v0;
  [v1 requestSceneSessionActivation:0 userActivity:0 options:v3 errorHandler:v2];
  _Block_release(v2);
}

id AssetHandleType.image.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v17, a1);
  if (v18)
  {
    sub_1D7E05450(&v17, v19);
    OUTLINED_FUNCTION_27_0(v19);
    v2 = OUTLINED_FUNCTION_3_1();
    if (v3(v2))
    {
      OUTLINED_FUNCTION_27_0(v19);
      v4 = OUTLINED_FUNCTION_3_1();
      v5(v4);
      if (v6)
      {
        sub_1D7E471D0();
        v7 = OUTLINED_FUNCTION_109();
        v9 = sub_1D8148FE0(v7, v8);
LABEL_10:
        v13 = v9;
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        return v13;
      }
    }

    OUTLINED_FUNCTION_27_0(v19);
    v10 = OUTLINED_FUNCTION_3_1();
    v11(v10);
    if (v12 >> 60 != 15)
    {
      sub_1D7E471D0();
      v14 = OUTLINED_FUNCTION_109();
      v9 = sub_1D8149054(v14, v15);
      goto LABEL_10;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_1D7F5867C(&v17);
  }

  return 0;
}

id sub_1D8148FE0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D8190EE4();

  v4 = [v2 initWithContentsOfFile_];

  return v4;
}

id sub_1D8149054(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D818E674();
  v6 = [v4 initWithData_];

  sub_1D7EF4CE0(a1, a2);
  return v6;
}

uint64_t AssetHandleType.filePath.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5, a1);
  if (v5[3])
  {
    OUTLINED_FUNCTION_27_0(v5);
    v2 = OUTLINED_FUNCTION_3_1();
    v3(v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_1D7F5867C(v5);
  }

  return OUTLINED_FUNCTION_109();
}

uint64_t ImageAssetHandle.__allocating_init(image:uniqueKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ImageAssetHandle.init(image:uniqueKey:)(a1, a2, a3);
  return v6;
}

void *ImageAssetHandle.init(image:uniqueKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  swift_beginAccess();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *ImageAssetHandle.fallbackImage.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void ImageAssetHandle.fallbackImage.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ImageAssetHandle.uniqueKey.getter()
{
  swift_beginAccess();
  sub_1D8190DB4();
  return OUTLINED_FUNCTION_109();
}

uint64_t ImageAssetHandle.uniqueKey.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

double ImageAssetHandle.assetDataProvider.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ImageAssetHandle.__deallocating_deinit()
{
  ImageAssetHandle.deinit();

  return swift_deallocClassInstance();
}

uint64_t NotificationResponseError.hashValue.getter()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

uint64_t UserNotificationHandlerType.handle(didReceiveRemoteNotification:)()
{
  v0 = sub_1D818F7B4();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6970], v1);
  sub_1D814A6E8(0, &qword_1EDBB1FA0, MEMORY[0x1E69D6980]);
  swift_allocObject();
  return sub_1D818FB44();
}

uint64_t UserNotificationHandlerType.handle(willPresent:)()
{
  sub_1D814A6E8(0, &qword_1EDBB1F88, type metadata accessor for UNNotificationPresentationOptions);
  swift_allocObject();
  return sub_1D818FB44();
}

uint64_t UserNotificationHandlerType.handle(received:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = OUTLINED_FUNCTION_56_0();
  v8 = type metadata accessor for UserNotificationResponseResult(v4, v5, v6, v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1D818FBB4();
  __swift_storeEnumTagSinglePayload(v10, 2, 2, AssociatedTypeWitness);
  return sub_1D818FB34();
}

uint64_t UserNotificationHandlerManager.__allocating_init()()
{
  v0 = swift_allocObject();
  UserNotificationHandlerManager.init()();
  return v0;
}

uint64_t sub_1D8149968(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_1D81499E4(a3);
  if (result)
  {
    (*(a1 + 16))(a3);
    MEMORY[0x1DA713500]();
    sub_1D7E2893C(*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10));
    return sub_1D8191404();
  }

  return result;
}

uint64_t sub_1D81499E4(uint64_t a1)
{
  sub_1D7E1DA50(v1, v14);
  if (!v15)
  {
    v6 = v14[0];
    sub_1D8192124();
    sub_1D7EDF46C();
    sub_1D7F060D8(v11);
    if (v10)
    {
      sub_1D814AF54();
      if (swift_dynamicCast())
      {
        sub_1D8192124();
        sub_1D7EDF46C();

        sub_1D7F060D8(v11);
        if (swift_dynamicCast())
        {
          if (v6 != 0x79726F6765746163 || *(&v6 + 1) != 0xE800000000000000)
          {
            v5 = sub_1D8192634();

            return v5 & 1;
          }

LABEL_17:
          v5 = 1;
          return v5 & 1;
        }
      }
    }

    else
    {

      sub_1D7E7BAAC(v9);
    }

    v5 = 0;
    return v5 & 1;
  }

  if (v15 != 1)
  {
    goto LABEL_17;
  }

  sub_1D7E05450(v14, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = (*(v4 + 8))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v5 & 1;
}

uint64_t sub_1D8149BF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D818F7B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = *MEMORY[0x1E69D6978];
  v11 = *(v5 + 104);
  (v11)(v8, *MEMORY[0x1E69D6978], v4, v6);
  v16 = v8;
  v12 = sub_1D7F8F4BC(sub_1D814AFB8, v15, v9);
  (*(v5 + 8))(v8, v4);
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = *MEMORY[0x1E69D6970];
  }

  return v11(a2, v13, v4);
}

uint64_t sub_1D8149DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  OUTLINED_FUNCTION_6_93(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, v20, v21);
  type metadata accessor for AnyHandler(255, *(v10 + 80), *(v10 + 88), v11);
  v12 = sub_1D8190DB4();
  OUTLINED_FUNCTION_3_134(v12, v13, &type metadata for UserNotificationHandlerPattern, "handler pattern ");
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  sub_1D8191224();

  v14 = sub_1D818FA14();
  a4(0);
  sub_1D818F904();

  v15 = sub_1D818FA14();
  v16 = sub_1D818FAC4();

  return v16;
}

uint64_t sub_1D8149F30(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = sub_1D8149FAC(a3);
  if (result)
  {
    (*(a1 + 32))(a3);
    MEMORY[0x1DA713500]();
    sub_1D7E2893C(*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10));
    return sub_1D8191404();
  }

  return result;
}

uint64_t sub_1D8149FAC(void *a1)
{
  v1 = [a1 request];
  v2 = [v1 content];

  v3 = [v2 userInfo];
  v4 = sub_1D8190D54();

  LOBYTE(v3) = sub_1D81499E4(v4);

  return v3 & 1;
}

uint64_t sub_1D814A068@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = (*result + 32);
    v4 = 27;
    do
    {
      v5 = *v3++;
      v4 &= v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = 27;
  }

  *a2 = v4;
  return result;
}

uint64_t UserNotificationHandlerManager.handle(received:)(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_12_0();
  v4 = *(v3 + 88);
  v6 = type metadata accessor for UserNotificationResponseResult(255, v2, v4, v5);
  OUTLINED_FUNCTION_56_0();
  sub_1D818FBB4();
  v29 = sub_1D8190D34();
  OUTLINED_FUNCTION_6_93(v29, v7, v8, v9, v10, v11, v12, v13, v25, v26, v27, v28);
  type metadata accessor for AnyHandler(255, v2, v4, v14);
  v15 = sub_1D8190DB4();
  OUTLINED_FUNCTION_3_134(v15, v16, &type metadata for UserNotificationHandlerPattern, "handler pattern ");
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  sub_1D8191224();

  sub_1D8191484();
  swift_getWitnessTable();
  if (sub_1D8191874())
  {
    sub_1D8191484();
    OUTLINED_FUNCTION_52();
    sub_1D818FBB4();
    OUTLINED_FUNCTION_56_0();
    sub_1D81925C4();
    swift_allocObject();
    v17 = sub_1D8191394();
    __swift_storeEnumTagSinglePayload(v18, 2, 2, v2);
    sub_1D7F7ABF0(v17, v6);
    v19 = sub_1D818FB34();
  }

  else
  {
    v20 = sub_1D818FA14();
    sub_1D818F904();

    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    *(v21 + 24) = v4;
    OUTLINED_FUNCTION_56_0();
    v22 = sub_1D8191484();
    v23 = sub_1D810A4D8(v22);
    v19 = sub_1D818FAB4();
  }

  return v19;
}

uint64_t sub_1D814A378(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  result = sub_1D814A438(a3);
  if (result)
  {
    (a1[6])(a3);
    type metadata accessor for UserNotificationResponseResult(255, *(v5 + 80), *(v5 + 88), v7);
    sub_1D818FBB4();
    sub_1D8191484();
    return sub_1D8191434();
  }

  return result;
}

uint64_t sub_1D814A438(void *a1)
{
  v1 = [a1 notification];
  v2 = [v1 request];

  v3 = [v2 content];
  v4 = [v3 userInfo];

  v5 = sub_1D8190D54();
  v6 = sub_1D81499E4(v5);

  return v6 & 1;
}

uint64_t sub_1D814A514(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UserNotificationResponseResult(255, a2, a3, a4);
  sub_1D8191484();
  sub_1D818FBB4();
  sub_1D8190DB4();
  return sub_1D818FB34();
}

uint64_t UserNotificationHandlerManager.__deallocating_deinit()
{
  UserNotificationHandlerManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t UserNotificationHandlerType.handle(didReceive:)()
{
  sub_1D814AF04(0, &qword_1EDBBC3E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D818FB44();
}

uint64_t sub_1D814A6AC()
{
  sub_1D8125238();

  return swift_deallocClassInstance();
}

void sub_1D814A6E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D818FBB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D814A7C4()
{
  result = qword_1ECA11B20[0];
  if (!qword_1ECA11B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA11B20);
  }

  return result;
}

uint64_t sub_1D814A818(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D814A854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationResponseError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D814A9AC(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1D814AA08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 3)
        {
          return EnumTagSinglePayload - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v15) + 1;
}

void sub_1D814ABD4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 2;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

void sub_1D814AF04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D814AF54()
{
  if (!qword_1EDBAE648)
  {
    v0 = sub_1D8190E14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE648);
    }
  }
}

uint64_t PersonalizedAdsPromptButtonStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D814B08C()
{
  result = qword_1ECA11BA8;
  if (!qword_1ECA11BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11BA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalizedAdsPromptButtonStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PillViewImageRenderer.__allocating_init(imageCache:imageRequestFactory:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1D7E05450(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t PillViewImageRenderer.init(imageCache:imageRequestFactory:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1D7E05450(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

void PillViewImageRenderer.render(image:with:in:layoutAttributes:)(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = type metadata accessor for PillViewIconURL(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PillViewImage(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D803D9B4(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D803DAC4(v12, v9);
      memcpy(v17, a4, sizeof(v17));
      sub_1D814B478(v9, a3, v17);
      sub_1D814BA30(v9, type metadata accessor for PillViewIconURL);
    }

    else
    {
      memcpy(v18, v12, sizeof(v18));
      memcpy(v17, a4, sizeof(v17));
      sub_1D814B650(v18, a3, v17);
      sub_1D803DA18(v18);
    }
  }

  else
  {
    v14 = *v12;
    v15 = v12[1];
    v16 = v12[2];
    sub_1D7E471D0();
    sub_1D8190DB4();
    v19.value.super.isa = sub_1D7E47238(v14, v15);
    sub_1D7E73860(v19);
  }
}

void sub_1D814B478(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D818E644();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = *(v3 + 64);
  ObjectType = swift_getObjectType();
  v14 = [a2 traitCollection];
  [v14 displayScale];
  v16 = v15;

  PillViewIconURL.url(at:)(v16);
  (*(v12 + 16))(&v17, v9, ObjectType, v12, v10, v11);
  (*(v7 + 8))(v9, v6);
  if (v18)
  {
    sub_1D7E05450(&v17, v19);
    sub_1D814B784(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_1D814BA30(&v17, sub_1D814BA90);
    v20.value.super.isa = 0;
    sub_1D7E73860(v20);
  }
}

void sub_1D814B650(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(v4 + 64);
  ObjectType = swift_getObjectType();
  v11 = [a2 traitCollection];
  [v11 displayScale];
  v13 = v12;

  (*(v9 + 8))(&v14, a1, ObjectType, v9, v13, v7, v8);
  if (v15)
  {
    sub_1D7E05450(&v14, v16);
    sub_1D814B784(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    sub_1D814BA30(&v14, sub_1D814BA90);
    v17.value.super.isa = 0;
    sub_1D7E73860(v17);
  }
}

void sub_1D814B784(void *a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5.value.super.isa = (*(v4 + 24))(a1, v3, v4);
  if (v5.value.super.isa)
  {
    isa = v5.value.super.isa;
    v8 = v5.value.super.isa;
    v10.value.super.isa = isa;
    sub_1D7E73860(v10);
  }

  else
  {
    sub_1D7E73860(v5);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    ImageView.loadImage(from:with:interestToken:completion:)(v1 + 2, a1, 0, sub_1D814BAE8, v7);
  }
}

void sub_1D814B8B0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5TeaUI8PillView_iconImageView);

    ImageView.crossFadeImage(_:animated:completion:)(a1, 1, 0, 0);
  }
}

uint64_t PillViewImageRenderer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PillViewImageRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D814BA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D814BA90(uint64_t a1)
{
  if (!qword_1ECA11BB0)
  {
    sub_1D80440B0();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA11BB0);
    }
  }
}

void sub_1D814BB0C(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *(a1 + 24) = &type metadata for SizeLayoutAttributes;
  *a1 = a2;
  *(a1 + 8) = a3;
}

void *sub_1D814BB20@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SectionFooterViewLayoutAttributes;
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = (v3 + 16);

  return memcpy(v4, v1, 0x68uLL);
}

void sub_1D814BB80(double **a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  a1[3] = &type metadata for FrameLayoutAttributes;
  v10 = swift_allocObject();
  *a1 = v10;
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
}

CGFloat sub_1D814BC00(CGFloat a1, CGFloat a2)
{
  v3.size.height = a2;
  v3.size.width = a1;
  v3.origin.x = 0.0;
  v3.origin.y = 0.0;
  return CGRectGetHeight(v3);
}

double static FrameLayoutAttributes.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D814BE3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

double sub_1D814BE94()
{
  v0 = OUTLINED_FUNCTION_1_173();
  if (v0)
  {
    OUTLINED_FUNCTION_3_135(v0);
    OUTLINED_FUNCTION_2_159();
    v2 = OUTLINED_FUNCTION_0_240();
    v3(v2);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1D814BF0C()
{
  v0 = OUTLINED_FUNCTION_1_173();
  if (v0)
  {
    OUTLINED_FUNCTION_3_135(v0);
    OUTLINED_FUNCTION_2_159();
    v2 = OUTLINED_FUNCTION_0_240();
    v3(v2);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1D814BF84(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_3_135(Strong);
    OUTLINED_FUNCTION_2_159();
    (*(v6 + 40))(a1, a2 & 1);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1D814C014()
{
  v0 = OUTLINED_FUNCTION_1_173();
  if (v0)
  {
    OUTLINED_FUNCTION_3_135(v0);
    OUTLINED_FUNCTION_2_159();
    v2 = OUTLINED_FUNCTION_0_240();
    v3(v2);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1D814C08C()
{
  v0 = OUTLINED_FUNCTION_1_173();
  if (v0)
  {
    OUTLINED_FUNCTION_3_135(v0);
    OUTLINED_FUNCTION_2_159();
    v2 = OUTLINED_FUNCTION_0_240();
    v3(v2);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1D814C104(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 64))(a1, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1D814C18C(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 72))(a1, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D814C214()
{
  sub_1D7E166A0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t AutomationType.automationIdentifier(encoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v6 = sub_1D8190F74();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AutomationIdentifier(0, a2, a3, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v25 - v14);
  if (qword_1EDBBAED8 != -1)
  {
    swift_once();
  }

  if (byte_1EDBC6078 != 1)
  {
    return 0;
  }

  (*(v7 + 16))(v10, v3, a2);
  sub_1D7FE9434(v10, a2, a3, v15);
  swift_getWitnessTable();
  v16 = v26;
  v17 = v29;
  v18 = sub_1D818E3A4();
  if (v17)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v21 = v18;
    v22 = v19;
    (*(v13 + 8))(v15, v12);
    v27 = v21;
    v28 = v22;
    sub_1D8190F64();
    sub_1D804A7E8();
    v23 = sub_1D8190F44();
    if (v24)
    {
      v16 = v23;
      sub_1D7EF4CE0(v21, v22);
    }

    else
    {
      sub_1D7EF4CE0(v21, v22);
      return 0;
    }
  }

  return v16;
}

id sub_1D814C57C()
{
  v1 = OBJC_IVAR____TtC5TeaUI25TabBarContainerController____lazy_storage___intrinsicTabBar;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController____lazy_storage___intrinsicTabBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController____lazy_storage___intrinsicTabBar);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCFF0]) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D814C600(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI25TabBarContainerController____lazy_storage___intrinsicTabBar] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D814C664()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController____lazy_storage___intrinsicTabBar) = 0;
  sub_1D81923A4();
  __break(1u);
}

id sub_1D814C6E4()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    result = [v1 view];
    if (result)
    {
      v4 = result;
      [v3 addSubview_];

      return [v1 didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D814C808()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}