void Array<A>.hasAllRemoteDevices.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_21_9();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_42:
    v3 = sub_266DAAD5C();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= 2)
  {
    v4 = sub_266C36780(v2);
    v5 = 0;
    v6 = v2 & 0xC000000000000001;
    v7 = v2 & 0xFFFFFFFFFFFFFF8;
    v8 = v2 + 32;
    while (1)
    {
      if (v4 == v5)
      {
        goto LABEL_16;
      }

      if (v6)
      {
        v9 = v2;
        v10 = MEMORY[0x26D5F1780](v5, v2);
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v9 = v2;
        v10 = *(v2 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = [v10 deviceLocality];

      if (v12 != 1)
      {
        v4 = v5;
        v2 = v9;
LABEL_16:
        v14 = sub_266C36780(v2);
        v15 = v14;
        if (v14 >= v4)
        {
          if (v4 == v14)
          {
            break;
          }

          v24 = 1;
          v22 = v14;
          v15 = v4;
        }

        else
        {
          v24 = -1;
          v22 = v4;
        }

        v23 = sub_266C36780(v2);
        v21 = v2;
        v2 = sub_266C36780(v2);
        v16 = 0;
        while (2)
        {
          v13 = __OFADD__(v16, v24);
          v16 += v24;
          if (!v13)
          {
            if (v15 != v23)
            {
              while (1)
              {
                v17 = v15 + 1;
                if (__OFADD__(v15, 1))
                {
                  __break(1u);
LABEL_36:
                  __break(1u);
LABEL_37:
                  __break(1u);
                  goto LABEL_38;
                }

                if (v17 == v2)
                {
                  break;
                }

                if (v6)
                {
                  v18 = MEMORY[0x26D5F1780](v15 + 1, v21);
                }

                else
                {
                  if ((v17 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_36;
                  }

                  if (v17 >= *(v7 + 16))
                  {
                    goto LABEL_37;
                  }

                  v18 = *(v8 + 8 * v17);
                }

                v19 = v18;
                v20 = [v18 deviceLocality];

                ++v15;
                if (v20 != 1)
                {
                  goto LABEL_33;
                }
              }

              v17 = v2;
LABEL_33:
              v15 = v17;
              if (v17 != v22)
              {
                continue;
              }

              goto LABEL_34;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          break;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v13 = __OFADD__(v5++, 1);
      v2 = v9;
      if (v13)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_22_7();
}

void sub_266CB95C4(unint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_266C36780(a1);
  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D5F1780](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = a2();

    v5 = v6 + 1;
  }

  while ((v9 & 1) == 0);
}

uint64_t Array<A>.needsConfirmation.getter(unint64_t a1)
{
  Array<A>.hasSoundWarningRequiredDevices.getter(a1);
  if (v2 & 1) != 0 || (Array<A>.hasSingleRemoteDevices.getter(), (v3))
  {
    v4 = 1;
  }

  else
  {
    Array<A>.hasSingleLocationUnknownDevices.getter();
    if (v6)
    {
      Array<A>.hasItems.getter(a1);
      v4 = v7 ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

void sub_266CB9708(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_13(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_266DAA70C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

void sub_266CB9774(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_25();
  v3 = v2;
  v5 = v4;
  v6 = sub_266C3A14C();
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_13:
    sub_266CB8718(v7);

    OUTLINED_FUNCTION_4_21();
    return;
  }

  v8 = v6;
  v20 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6_21(v6, v6 & ~(v6 >> 63));
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v20;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D5F1780](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v11 *v3];
      if (v12)
      {
        v13 = v12;
        v14 = sub_266DAA70C();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      v18 = *(v20 + 16);
      v17 = *(v20 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_266C387BC((v17 > 1), v18 + 1, 1);
      }

      ++v9;
      *(v20 + 16) = v18 + 1;
      v19 = v20 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v8 != v9);
    goto LABEL_13;
  }

  __break(1u);
}

void Array<A>.hasDistinctProductNames.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_25();
  v2 = v1;
  v3 = sub_266C3A14C();
  v4 = v3;
  v5 = MEMORY[0x277D84F90];
  if (!v3)
  {
LABEL_13:
    sub_266CB8718(v5);

    OUTLINED_FUNCTION_4_21();
    return;
  }

  v12 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6_21(v3, v3 & ~(v3 >> 63));
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v12;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D5F1780](0, v2);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      v7 = v6;
      v8 = [v7 productName];
      if (v8)
      {
        v9 = v8;
        sub_266DAA70C();
      }

      else
      {
      }

      OUTLINED_FUNCTION_10_11();
      if (v11)
      {
        OUTLINED_FUNCTION_9_11(v10);
        v5 = v12;
      }

      OUTLINED_FUNCTION_16_12();
    }

    while (v4);
    goto LABEL_13;
  }

  __break(1u);
}

unint64_t Array<A>.nearbyDevicesOrAll.getter(unint64_t a1)
{
  v23 = MEMORY[0x277D84F90];
  sub_266C36780(a1);
  OUTLINED_FUNCTION_14_15();
  while (v1 != v2)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_23_8();
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_24;
      }

      v6 = OUTLINED_FUNCTION_25_5();
    }

    v7 = v6;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      OUTLINED_FUNCTION_2_29(&qword_2800C9268);
LABEL_14:
      v8 = sub_266DA94AC();
      __swift_project_value_buffer(v8, qword_2800CB638);
      v9 = sub_266DA948C();
      v10 = sub_266DAAB0C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v23 = v12;
        *v11 = 136446210;
        *(v11 + 4) = sub_266C22A3C(0xD00000000000001BLL, 0x8000000266DC2A10, &v23);
        _os_log_impl(&dword_266C08000, v9, v10, "**** %{public}s ****", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      MEMORY[0x28223BE20](v13);
      OUTLINED_FUNCTION_18_9();
      sub_266CB7DC4(sub_266C488B4, v14, v2);
      return v2;
    }

    if ([v6 deviceLocality] == 1)
    {
      sub_266DAAE6C();
      sub_266DAAE9C();
      sub_266DAAEAC();
      sub_266DAAE7C();
    }

    else
    {
    }

    ++v2;
  }

  v2 = v23;
  if (sub_266C36780(v23))
  {
    if (qword_2800C9268 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  if (qword_2800C9268 != -1)
  {
    OUTLINED_FUNCTION_2_29(&qword_2800C9268);
  }

  v15 = sub_266DA94AC();
  __swift_project_value_buffer(v15, qword_2800CB638);
  v16 = sub_266DA948C();
  v17 = sub_266DAAB0C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_266C22A3C(0xD000000000000013, 0x8000000266DC2A30, &v23);
    _os_log_impl(&dword_266C08000, v16, v17, "**** %{public}s ****", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_9();
  sub_266CB7DC4(sub_266C48BC0, v21, a1);

  return a1;
}

void Array<A>.excludeThisDevice.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_25();
  sub_266C36780(v5);
  OUTLINED_FUNCTION_14_15();
  while (1)
  {
    if (v1 == v2)
    {
      OUTLINED_FUNCTION_4_21();
      return;
    }

    if (v3)
    {
      OUTLINED_FUNCTION_23_8();
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_15;
      }

      v6 = OUTLINED_FUNCTION_25_5();
    }

    v7 = v6;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v8 = [v6 isThisDevice];
    if (v8 && (v9 = v8, v10 = [v8 BOOLValue], v9, (v10 & 1) != 0))
    {
    }

    else
    {
      sub_266DAAE6C();
      sub_266DAAE9C();
      sub_266DAAEAC();
      sub_266DAAE7C();
    }

    ++v2;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

unint64_t sub_266CB9E28(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_266CB9E58()
{
  result = qword_2800CB650;
  if (!qword_2800CB650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800C9BE0, &qword_266DAE760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB650);
  }

  return result;
}

uint64_t sub_266CB9ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_42()
{
}

uint64_t OUTLINED_FUNCTION_1_31()
{
}

uint64_t OUTLINED_FUNCTION_2_29(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_6_21(uint64_t a1, uint64_t a2)
{

  return sub_266C387BC(0, a2, 0);
}

uint64_t OUTLINED_FUNCTION_7_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16)
{
  a9 = a13;
  a10 = a14;
  a11 = a15;
  a12 = a16;

  return sub_266C249DC(&a9);
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_266DAA95C();
}

void *OUTLINED_FUNCTION_9_11@<X0>(unint64_t a1@<X8>)
{

  return sub_266C387BC((a1 > 1), v1, 1);
}

void OUTLINED_FUNCTION_16_12()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_23_8()
{

  JUMPOUT(0x26D5F1780);
}

id OUTLINED_FUNCTION_25_5()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_266CBA208(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB6E8, &unk_266DB46A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-1] - v7;
  sub_266DA81BC();
  v9 = v20;
  v10 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  if (sub_266C6A310(v9, v10))
  {
    if (qword_2800C9230 != -1)
    {
      swift_once();
    }

    v11 = sub_266DA94AC();
    __swift_project_value_buffer(v11, qword_2800CAB90);
    v12 = sub_266DA948C();
    v13 = sub_266DAAB0C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266C08000, v12, v13, "RCHChildFlowProducersAsync will makeHandleIntentHandoffOnHomePodProducer", v14, 2u);
      MEMORY[0x26D5F2480](v14, -1, -1);
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0F0, &qword_266DB0090);
    (*(*(v15 - 8) + 16))(v8, a2, v15);
    sub_266C233D0(v19, &v8[*(v6 + 36)]);
    sub_266DA7FEC();
    sub_266C230E8(&qword_2800CB6F0, &qword_2800CB6E8, &unk_266DB46A8, &unk_266DB2570);
    v16 = sub_266DA799C();
    sub_266C1825C(v8, &qword_2800CB6E8, &unk_266DB46A8);
  }

  else
  {
    v16 = a3(a1, a2);
  }

  __swift_destroy_boxed_opaque_existential_0(v19);
  return v16;
}

uint64_t sub_266CBA474(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB720, &qword_266DB46D8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-1] - v8;
  sub_266DA81BC();
  v10 = v24;
  v11 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  if (sub_266C6A310(v10, v11))
  {
    if (qword_2800C9230 != -1)
    {
      swift_once();
    }

    v12 = sub_266DA94AC();
    __swift_project_value_buffer(v12, qword_2800CAB90);
    v13 = sub_266DA948C();
    v14 = sub_266DAAB0C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266C08000, v13, v14, "RCHChildFlowProducersAsync will makeHandleIntentHandoffOnHomePodProducer", v15, 2u);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB440, &qword_266DB46E0);
    OUTLINED_FUNCTION_0();
    v16 = OUTLINED_FUNCTION_11_12();
    v17(v16);
    sub_266C233D0(v23, &v9[*(v6 + 36)]);
    sub_266DA7FEC();
    sub_266C230E8(&qword_2800CB728, &qword_2800CB720, &qword_266DB46D8, &unk_266DB2570);
    v18 = sub_266DA799C();
    v19 = OUTLINED_FUNCTION_11_12();
    sub_266C1825C(v19, v20, &qword_266DB46D8);
  }

  else
  {
    v18 = a3(a1, a2);
  }

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v18;
}

void *sub_266CBA6C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB658, &qword_266DB4650);
  OUTLINED_FUNCTION_0_2();
  v130 = v3;
  v131 = v2;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v129 = &v108 - v5;
  OUTLINED_FUNCTION_3_4();
  sub_266DAAB7C();
  OUTLINED_FUNCTION_0_2();
  v125 = v7;
  v126 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_6();
  v124 = v9 - v8;
  OUTLINED_FUNCTION_3_4();
  v122 = sub_266DAAB6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v123 = v12 - v11;
  OUTLINED_FUNCTION_3_4();
  v13 = sub_266DA9FDC();
  v14 = OUTLINED_FUNCTION_4_3(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_6();
  v121 = v16 - v15;
  v17 = OUTLINED_FUNCTION_3_4();
  v120 = type metadata accessor for GEOServicesReverseGeocoder(v17);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_5();
  v116 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v133 = &v108 - v22;
  OUTLINED_FUNCTION_3_4();
  v136 = sub_266DA750C();
  OUTLINED_FUNCTION_0_2();
  v134 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_6();
  v135 = v26 - v25;
  OUTLINED_FUNCTION_3_4();
  v27 = sub_266DA926C();
  v28 = OUTLINED_FUNCTION_4_3(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_6();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB660, &qword_266DB4658);
  OUTLINED_FUNCTION_0_2();
  v128 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_0_5();
  v127 = v35 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v108 - v38;
  FriendSessionManager = type metadata accessor for FindFriendSessionManager(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_0_6();
  v44 = v43 - v42;
  sub_266DA81BC();
  if (qword_2800C9178 != -1)
  {
    OUTLINED_FUNCTION_5_21(&qword_2800C9178);
  }

  __swift_project_value_buffer(FriendSessionManager, qword_2800E61C0);
  OUTLINED_FUNCTION_2_30();
  sub_266CBC8C8(v45, v44, v46);
  v118 = sub_266DA8DCC();
  v47 = sub_266DA8DBC();
  v48 = objc_allocWithZone(type metadata accessor for FindFriendIntentHandler(0));
  v49 = sub_266C6AB7C(v137, v44, v47);
  sub_266DA81BC();
  sub_266DA7AEC();
  sub_266C233D0(v1, v157);
  sub_266C233D0(v1 + 40, v156);
  v155[3] = &type metadata for DisambiguationTask.Parser;
  v155[4] = &off_2878672C8;
  v155[0] = swift_allocObject();
  sub_266C6F124(v1 + 168, v155[0] + 16);
  type metadata accessor for FindFriendIntent();
  type metadata accessor for FindFriendIntentResponse();
  v119 = v49;
  sub_266DA796C();
  MyFriendCATsSimple = type metadata accessor for FindMyFriendCATsSimple(0);
  sub_266DA925C();
  v115 = MyFriendCATsSimple;
  v51 = sub_266DA91CC();
  v117 = v1;
  v114 = v31;
  if (qword_2800C9428 != -1)
  {
    swift_once();
  }

  sub_266DA78BC();
  v132 = v32;
  sub_266DA791C();
  sub_266C233D0(v159, v152);

  v52 = sub_266CAB510(0);
  v54 = v53;
  v55 = sub_266CAB510(1);
  v57 = v56;
  v58 = v51;
  v59 = sub_266CAB510(4);
  v61 = v60;
  v152[9] = &type metadata for BaseNLContextProvider;
  v152[10] = &off_287861AA0;
  v152[6] = swift_allocObject();
  OUTLINED_FUNCTION_0_41();
  v62[2] = v63;
  v62[3] = 0xE700000000000000;
  v62[4] = v52;
  v62[5] = v54;
  v62[6] = v55;
  v62[7] = v57;
  v62[8] = v59;
  v62[9] = v61;
  sub_266C233D0(v157, &v153);
  sub_266C233D0(v156, v154);
  v64 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v64);
  v65 = sub_266DA7E6C();
  v152[5] = v58;
  v154[5] = v65;
  v66 = OUTLINED_FUNCTION_11_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
  sub_266C230E8(&qword_2800CB670, &qword_2800CB668, &qword_266DB4660, &unk_266DB3070);
  sub_266DA78FC();
  v112 = v39;
  sub_266DA794C();
  sub_266C233D0(v159, v147);
  v113 = v58;

  sub_266D9DAC0(v148);
  sub_266C233D0(v157, &v149);
  sub_266C233D0(v156, &v150);
  sub_266C233D0(v155, v151);
  swift_allocObject();
  v68 = sub_266DA7E6C();
  v147[5] = v58;
  v151[5] = v68;
  v69 = OUTLINED_FUNCTION_11_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(v69, v70);
  sub_266C230E8(&qword_2800CB680, &qword_2800CB678, &unk_266DB4668, &unk_266DB50C0);
  sub_266DA78DC();
  sub_266DA795C();
  sub_266DA81BC();
  __swift_project_boxed_opaque_existential_1(v137, *(&v138 + 1));
  v71 = v135;
  OUTLINED_FUNCTION_14_16();
  sub_266DA7AFC();
  __swift_destroy_boxed_opaque_existential_0(v137);
  v72 = v133;
  v111 = *(v134 + 16);
  v111(v133, v71, v136);
  sub_266C233D0(v158, v139);
  v137[0] = sub_266DAA70C();
  v137[1] = v73;
  v138 = xmmword_266DAE510;
  sub_266C26B34(v137, v146);
  v110 = type metadata accessor for GEOServicesReverseGeocoder;
  v74 = v116;
  sub_266CBC8C8(v72, v116, type metadata accessor for GEOServicesReverseGeocoder);
  v109 = sub_266C26B90(v146, v74);
  sub_266C26CC0(v137);
  sub_266C233D0(v159, v137);
  v75 = sub_266CAB510(0);
  v77 = v76;
  v78 = sub_266CAB510(1);
  v80 = v79;
  v81 = sub_266CAB510(4);
  v83 = v82;
  v141 = &type metadata for BaseNLContextProvider;
  v142 = &off_287861AA0;
  v140[1] = swift_allocObject();
  OUTLINED_FUNCTION_0_41();
  v84[2] = v85;
  v84[3] = 0xE700000000000000;
  v84[4] = v75;
  v84[5] = v77;
  v84[6] = v78;
  v84[7] = v80;
  v84[8] = v81;
  v84[9] = v83;
  sub_266DA925C();
  v116 = sub_266DA91CC();
  v86 = type metadata accessor for FriendLocationDescriptionProvider(0);
  v143[3] = v86;
  v143[4] = &off_287864AF0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v143);
  boxed_opaque_existential_1[3] = type metadata accessor for GeocodingUserLocationProvider();
  boxed_opaque_existential_1[4] = &off_2878624E0;
  *boxed_opaque_existential_1 = v109;
  v88 = (boxed_opaque_existential_1 + v86[8]);
  v88[3] = v120;
  v88[4] = &off_287868A70;
  v89 = __swift_allocate_boxed_opaque_existential_1(v88);
  sub_266CBC8C8(v72, v89, v110);
  v111(boxed_opaque_existential_1 + v86[6], v135, v136);
  v120 = v86[7];
  sub_266C22FD4();
  v90 = v121;
  sub_266DA9FBC();
  v146[0] = MEMORY[0x277D84F90];
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C230E8(&qword_28156EFE8, &qword_2800CC440, &qword_266DAF890, MEMORY[0x277D83970]);
  v91 = v123;
  sub_266DAAD0C();
  v92 = v124;
  (*(v125 + 104))(v124, *MEMORY[0x277D85260], v126);
  v93 = sub_266D689A4(0xD000000000000034, 0x8000000266DC16D0, v90, v91, v92, 0);
  *(boxed_opaque_existential_1 + v120) = v93;
  boxed_opaque_existential_1[5] = v116;
  sub_266C233D0(v157, &v144);
  sub_266C233D0(v156, v145);
  v94 = sub_266DA8DBC();
  swift_allocObject();
  v95 = sub_266DA7E6C();
  v96 = v119;
  v139[1] = v119;
  v140[0] = v113;
  v145[5] = v94;
  v145[6] = v95;
  sub_266CBC928();
  sub_266DA78AC();
  v97 = v132;
  v98 = v112;
  sub_266DA790C();
  sub_266CBC97C(v133);
  (*(v134 + 8))(v135, v136);
  sub_266C1825C(v147, &qword_2800CB678, &unk_266DB4668);
  __swift_destroy_boxed_opaque_existential_0(v156);
  __swift_destroy_boxed_opaque_existential_0(v157);
  __swift_destroy_boxed_opaque_existential_0(v158);
  __swift_destroy_boxed_opaque_existential_0(v159);
  __swift_destroy_boxed_opaque_existential_0(v155);
  sub_266CBC9D8(v137);
  sub_266C1825C(v152, &qword_2800CB668, &qword_266DB4660);
  sub_266DA81BC();
  v140[3] = sub_266DA8C4C();
  v141 = &off_28785D468;
  __swift_allocate_boxed_opaque_existential_1(v140);
  sub_266DA8C3C();
  sub_266C6F0C8(v117 + 80, &v142);
  v137[0] = v96;
  v99 = v128;
  (*(v128 + 16))(v127, v98, v97);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB690, &qword_266DB4678);
  OUTLINED_FUNCTION_7_7(v100);
  OUTLINED_FUNCTION_14_16();
  sub_266DA797C();
  sub_266CBCA2C(v137, v147);
  sub_266CBCA88();
  OUTLINED_FUNCTION_14_16();

  v101 = v129;
  sub_266DA7CFC();
  v102 = v131;
  v103 = sub_266DA7CEC();
  (*(v130 + 8))(v101, v102);
  v147[0] = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB6A0, &qword_266DB4680);
  OUTLINED_FUNCTION_1_32();
  sub_266C230E8(v104, v105, &qword_266DB4680, v106);
  sub_266DA798C();
  OUTLINED_FUNCTION_17_15();

  sub_266CBCADC(v137);
  (*(v99 + 8))(v98, v97);
  return v147;
}

void *sub_266CBB330()
{
  v1 = v0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB6B0, &qword_266DB4688);
  OUTLINED_FUNCTION_0_2();
  v50 = v2;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - v4;
  v6 = sub_266DA926C();
  v7 = OUTLINED_FUNCTION_4_3(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB6B8, &qword_266DB4690);
  OUTLINED_FUNCTION_0_2();
  v51 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_5();
  v49 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  FriendSessionManager = type metadata accessor for FindFriendSessionManager(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_6();
  v20 = v19 - v18;
  sub_266DA81BC();
  if (qword_2800C9178 != -1)
  {
    OUTLINED_FUNCTION_5_21(&qword_2800C9178);
  }

  v21 = __swift_project_value_buffer(FriendSessionManager, qword_2800E61C0);
  OUTLINED_FUNCTION_2_30();
  sub_266CBC8C8(v22, v20, v23);
  v24 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentHandler(0));
  v25 = sub_266D5324C(&v54, v20);
  sub_266DA81BC();
  sub_266C233D0(v1, v61);
  sub_266C233D0(v1 + 40, v60);
  v48 = v1;
  v26 = *(v21 + 1);
  v27 = *v21;
  v28 = v25;
  v26(&v54, v27);
  v29 = v55[3];
  __swift_project_boxed_opaque_existential_1(&v54, v55[2]);
  v30 = OUTLINED_FUNCTION_17_15();
  v31(v30, v29);
  __swift_destroy_boxed_opaque_existential_0(&v54);
  type metadata accessor for SetSharedLocationVisibilityIntent();
  type metadata accessor for SetSharedLocationVisibilityIntentResponse();
  sub_266DA796C();
  if (qword_2800C9198 != -1)
  {
    swift_once();
  }

  sub_266DA78BC();
  sub_266DA791C();
  sub_266C233D0(v53, &v54);
  type metadata accessor for FindMyFriendCATsSimple(0);
  sub_266DA925C();
  v32 = sub_266DA91CC();
  sub_266C233D0(v61, &v56);
  sub_266C233D0(v60, v57);
  v33 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v33);
  v34 = sub_266DA7E6C();
  sub_266C233D0(v59, &v58);
  v55[4] = v28;
  v55[5] = v32;
  v57[5] = v34;
  sub_266CBCB30();
  v35 = sub_266DA78AC();
  v37 = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  *(v38 + 24) = v37;
  sub_266DA790C();
  sub_266CBCB8C(&v54);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v60);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v53);
  sub_266C6F0C8(v48 + 80, v55);
  v54 = v28;
  v39 = v51;
  (*(v51 + 16))(v49, v15, v8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB6C8, &qword_266DB4698);
  OUTLINED_FUNCTION_7_7(v40);
  OUTLINED_FUNCTION_17_15();
  sub_266DA797C();
  sub_266CBCBE0(&v54, v53);
  sub_266CBCC3C();

  sub_266DA7CFC();
  v41 = v52;
  v42 = sub_266DA7CEC();
  (*(v50 + 8))(v5, v41);
  v53[0] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB6D8, &qword_266DB46A0);
  OUTLINED_FUNCTION_1_32();
  sub_266C230E8(v43, v44, &qword_266DB46A0, v45);
  sub_266DA798C();
  OUTLINED_FUNCTION_17_15();

  sub_266CBCC90(&v54);
  (*(v39 + 8))(v15, v8);
  return v53;
}

uint64_t sub_266CBB89C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB6F8, &qword_266DB46B8);
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5E8, &qword_266DB46C0);
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_5();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  FriendSessionManager = type metadata accessor for FindFriendSessionManager(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_6();
  v21 = v20 - v19;
  sub_266DA81BC();
  if (qword_2800C9178 != -1)
  {
    OUTLINED_FUNCTION_5_21(&qword_2800C9178);
  }

  __swift_project_value_buffer(FriendSessionManager, qword_2800E61C0);
  OUTLINED_FUNCTION_2_30();
  sub_266CBC8C8(v22, v21, v23);
  v24 = objc_allocWithZone(type metadata accessor for SetGeoFenceIntentHandler(0));
  v25 = sub_266C1E6F4(&v39, v21);
  sub_266DA81BC();
  sub_266C233D0(v1, v38);
  sub_266C233D0(v1 + 40, v46);
  v26 = *(v1 + 160);
  v45[3] = &type metadata for ConfirmationTask.Parser;
  v45[4] = &off_28785F908;
  LOBYTE(v45[0]) = v26;
  v44[3] = &type metadata for DisambiguationTask.Parser;
  v44[4] = &off_2878672C8;
  v44[0] = swift_allocObject();
  sub_266C6F124(v1 + 168, v44[0] + 16);
  v27 = v25;
  sub_266CB66A8(&v39, v27, v38, v46, v45, v44, v16);
  sub_266DA81BC();
  v40[3] = sub_266DA8C4C();
  v40[4] = &off_28785D468;
  __swift_allocate_boxed_opaque_existential_1(v40);
  sub_266DA8C3C();
  v42 = &type metadata for FindMyFriendTask.Parser;
  v43 = &off_287862498;
  v41 = swift_allocObject();
  sub_266C6F0C8(v1 + 80, v41 + 16);
  v39 = v27;
  v28 = v37;
  (*(v9 + 16))(v13, v16, v37);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB700, &qword_266DB46C8);
  OUTLINED_FUNCTION_7_7(v29);
  sub_266DA797C();
  sub_266CBCCE4(&v39, v38);
  sub_266CBCD40();

  sub_266DA7CFC();
  v30 = sub_266DA7CEC();
  (*(v4 + 8))(v7, v2);
  v38[0] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB710, &qword_266DB46D0);
  OUTLINED_FUNCTION_1_32();
  sub_266C230E8(v31, v32, &qword_266DB46D0, v33);
  v34 = sub_266DA798C();

  sub_266CBCD94(&v39);
  (*(v9 + 8))(v16, v28);
  return v34;
}

uint64_t sub_266CBBCC8()
{
  OUTLINED_FUNCTION_22_0();
  *(v0 + 16) = v1;
  v2 = sub_266DA926C();
  OUTLINED_FUNCTION_4_3(v2);
  *(v0 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CBBD50);
}

uint64_t sub_266CBBD50()
{
  OUTLINED_FUNCTION_22_0();
  type metadata accessor for FindMyFriendCATsSimple(0);
  sub_266DA925C();
  v0[4] = sub_266DA91CC();
  v1 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v1);
  v0[5] = sub_266DA7E6C();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_266CBBE34;

  return sub_266D0549C();
}

uint64_t sub_266CBBE34()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266CBBF74);
  }

  else
  {

    OUTLINED_FUNCTION_28();

    return v6();
  }
}

uint64_t sub_266CBBF74()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CBC004()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_266DAE3B0;
  *(v2 + 32) = sub_266D2B5D0(0, 0);
  v3 = sub_266DA820C();
  v4 = MEMORY[0x277D5C1D8];
  v1[3] = v3;
  v1[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_266DA81FC();
  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266CBC0E0(char a1)
{
  sub_266CBC534(v1, __src);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  memcpy((v3 + 24), __src, 0xD8uLL);
  sub_266DA7FEC();
  v4 = sub_266DA75FC();
  OUTLINED_FUNCTION_7_7(v4);
  __src[0] = sub_266DA75EC();
  v5 = sub_266DA798C();

  return v5;
}

uint64_t sub_266CBC1B4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 112) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  sub_266DA926C();
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CBC248);
}

uint64_t sub_266CBC248()
{
  OUTLINED_FUNCTION_34();
  sub_266DA81BC();
  type metadata accessor for FindMyFriendCATsSimple(0);
  sub_266DA925C();
  v0[10] = sub_266DA91CC();
  v1 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v1);
  v0[11] = sub_266DA7E6C();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_266CBC348;

  return sub_266D068EC();
}

uint64_t sub_266CBC348()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v3 + 104) = v0;

  __swift_destroy_boxed_opaque_existential_0((v3 + 16));

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266CBC4D8);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_266CBC4D8()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CBC56C()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_266C4716C;

  return sub_266CBC1B4(v3, v4, v0 + 24);
}

_OWORD *sub_266CBC614()
{
  v0 = sub_266DA750C();
  v1 = OUTLINED_FUNCTION_4_3(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_6();
  v4 = v3 - v2;
  sub_266DA81BC();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_11_12();
  sub_266DA7AFC();
  v5 = type metadata accessor for StringLocalizer(0);
  OUTLINED_FUNCTION_7_7(v5);
  v6 = sub_266D04C84(v4);
  __swift_destroy_boxed_opaque_existential_0(v15);
  v16 = v5;
  v17 = &off_287864128;
  v15[0] = v6;
  sub_266CBCDE8(v15, v13);
  v7 = swift_allocObject();
  v8 = v13[1];
  *(v7 + 16) = v13[0];
  *(v7 + 32) = v8;
  *(v7 + 48) = v14;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_266CBCE44;
  *(v9 + 24) = v7;
  v10 = sub_266DA780C();
  OUTLINED_FUNCTION_7_7(v10);

  v11 = sub_266DA77FC();
  sub_266CBCFF0(v15);
  *&v13[0] = v11;
  sub_266DA798C();
  OUTLINED_FUNCTION_14_16();

  return v13;
}

uint64_t sub_266CBC7A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB730, &qword_266DB46F8);
  sub_266DA788C();
  *(swift_allocObject() + 16) = xmmword_266DAE4A0;
  v3[3] = &type metadata for FindMyDeviceUnlockFlowStrategy;
  v3[4] = sub_266CBD044();
  sub_266DA787C();
  __swift_destroy_boxed_opaque_existential_0(v3);
  v0 = sub_266DA756C();

  v3[0] = v0;
  sub_266DA784C();
  v1 = sub_266DA799C();

  return v1;
}

uint64_t sub_266CBC8C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_266CBC928()
{
  result = qword_2800CB688;
  if (!qword_2800CB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB688);
  }

  return result;
}

uint64_t sub_266CBC97C(uint64_t a1)
{
  v2 = type metadata accessor for GEOServicesReverseGeocoder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266CBCA88()
{
  result = qword_2800CB698;
  if (!qword_2800CB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB698);
  }

  return result;
}

unint64_t sub_266CBCB30()
{
  result = qword_2800CB6C0;
  if (!qword_2800CB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB6C0);
  }

  return result;
}

unint64_t sub_266CBCC3C()
{
  result = qword_2800CB6D0;
  if (!qword_2800CB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB6D0);
  }

  return result;
}

unint64_t sub_266CBCD40()
{
  result = qword_2800CB708;
  if (!qword_2800CB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB708);
  }

  return result;
}

uint64_t sub_266CBCE4C()
{
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266CBCEF4;

  return sub_266CE7630();
}

uint64_t sub_266CBCEF4()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_23_0();
  v5 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

unint64_t sub_266CBD044()
{
  result = qword_2800CB738;
  if (!qword_2800CB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB738);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_21(uint64_t a1)
{

  return swift_once();
}

void *sub_266CBD110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_266D99E08(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_266CBD158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_266D99E08(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

double sub_266CBD1B0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_266D99EE4(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_266C23550(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_266CBD214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_266D99E08(a1);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266CBD264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_266D99E08(a1);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_266CBD2B0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB740);
  v1 = __swift_project_value_buffer(v0, qword_2800CB740);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_266CBD378()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_266CBD3A0()
{
  OUTLINED_FUNCTION_6_22();
  v3 = v2;
  *&v8[0] = v4;
  sub_266C233D0(v0, v8 + 8);
  if (v1)
  {
    v5 = sub_266CBD454(v1, v0);
  }

  else
  {
    type metadata accessor for DeviceQuery();
    v5 = sub_266CAAB08(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  v9 = v5;
  v6 = v8[1];
  *v3 = v8[0];
  *(v3 + 16) = v6;
  *(v3 + 32) = v8[2];
  *(v3 + 48) = v5;
  return __swift_destroy_boxed_opaque_existential_0(v0);
}

id sub_266CBD454(void *a1, void *a2)
{
  type metadata accessor for DeviceQuery();
  v4 = sub_266CAAB08(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v5 = sub_266CBEF34(a1, a2);
  [v4 setDeviceOwner_];

  sub_266CBF6AC(a1);
  v7 = v6;
  if (qword_2800C9270 != -1)
  {
LABEL_49:
    swift_once();
  }

  v8 = sub_266DA94AC();
  __swift_project_value_buffer(v8, qword_2800CB740);

  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();

  v71 = v4;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v77 = v12;
    *v11 = 136315138;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB758, &qword_266DB4750);
    v14 = MEMORY[0x26D5F12B0](v7, v13);
    v16 = v15;

    v7 = sub_266C22A3C(v14, v16, &v77);

    *(v11 + 4) = v7;
    _os_log_impl(&dword_266C08000, v9, v10, "FindDeviceNLv4IntentWrapper namePairs: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v17 = v12;
    v4 = v71;
    MEMORY[0x26D5F2480](v17, -1, -1);
    MEMORY[0x26D5F2480](v11, -1, -1);
  }

  else
  {
  }

  sub_266CBF6AC(a1);
  v76 = v18;
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = -v19;
    v23 = v18 + 56;
    v72 = v22;
    v68 = v18 + 56;
    do
    {
      v69 = v20;
      v24 = (v23 + 32 * v21++);
      while (1)
      {
        if ((v21 - 1) >= *(v76 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v26 = *(v24 - 3);
        v25 = *(v24 - 2);
        a1 = *(v24 - 1);
        v7 = *v24;
        if (v7 == 255)
        {

          sub_266CAB3DC(v4);
          if (v34)
          {
            a1 = v34;
          }

          else
          {

            v7 = sub_266DA948C();
            v35 = sub_266DAAB0C();

            if (os_log_type_enabled(v7, v35))
            {
              v36 = swift_slowAlloc();
              v75 = v25;
              v37 = swift_slowAlloc();
              v81 = v37;
              *v36 = 136315138;
              v70 = v26;
              v77 = v26;
              v78 = v75;
              v79 = a1;
              v80 = -1;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB758, &qword_266DB4750);
              v38 = sub_266DAA72C();
              a1 = v39;
              v40 = sub_266C22A3C(v38, v39, &v81);

              *(v36 + 4) = v40;
              _os_log_impl(&dword_266C08000, v7, v35, "FindDeviceNLv4IntentWrapper using %s for deviceName", v36, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v37);
              v41 = v37;
              v25 = v75;
              MEMORY[0x26D5F2480](v41, -1, -1);
              v42 = v36;
              v22 = v72;
              MEMORY[0x26D5F2480](v42, -1, -1);

              v43 = v70;
            }

            else
            {

              v43 = v26;
            }

            sub_266CC0208(v43, v25, v4, &selRef_setDeviceName_);
          }

          goto LABEL_33;
        }

        sub_266CC01D4(*(v24 - 1), *v24);
        sub_266CC01D4(a1, v7);

        if (v7)
        {
          break;
        }

        sub_266CAB3D0(v4);
        if (!v27)
        {
          goto LABEL_25;
        }

        v28 = a1;

        v29 = sub_266CAB3D0(v4);
        if (!v30)
        {
          sub_266CC01EC(a1, v7);
          goto LABEL_31;
        }

        if (v29 == 0x746375646F7270 && v30 == 0xE700000000000000)
        {

LABEL_25:
          sub_266CC01D4(a1, v7);

          v44 = sub_266DA948C();
          v45 = sub_266DAAB0C();

          sub_266CC01EC(a1, v7);
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v73 = a1;
            v47 = swift_slowAlloc();
            v81 = v47;
            *v46 = 136315138;
            v77 = v26;
            v78 = v25;
            v79 = v73;
            v80 = v7;
            sub_266CC01D4(v73, v7);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB758, &qword_266DB4750);
            v48 = sub_266DAA72C();
            v50 = v26;
            v51 = sub_266C22A3C(v48, v49, &v81);

            *(v46 + 4) = v51;
            v26 = v50;
            _os_log_impl(&dword_266C08000, v44, v45, "FindDeviceNLv4IntentWrapper using %s for deviceType", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v47);
            v52 = v47;
            a1 = v73;
            MEMORY[0x26D5F2480](v52, -1, -1);
            v53 = v46;
            v4 = v71;
            MEMORY[0x26D5F2480](v53, -1, -1);
          }

          v22 = v72;
          if (a1[2])
          {

            v28 = a1;
            a1 = sub_266DAA6FC();
          }

          else
          {
            v28 = a1;
            a1 = 0;
          }

          [v4 setDeviceType_];

          sub_266CC0208(v26, v25, v4, &selRef_setDeviceTypeOriginalInput_);
          sub_266CC016C();
LABEL_31:

          v33 = v28;
          goto LABEL_32;
        }

        v32 = sub_266DAB17C();

        if (v32)
        {
          goto LABEL_25;
        }

        sub_266CC01EC(a1, v7);

        v33 = a1;
LABEL_32:
        sub_266CC01EC(v33, v7);
LABEL_33:
        ++v21;
        v24 += 32;
        if (v22 + v21 == 1)
        {
          goto LABEL_47;
        }
      }

      sub_266CAB3DC(v4);
      v54 = v22 + v21;
      if (v55 && (, (v69 & 1) != 0))
      {
        sub_266CC01EC(a1, v7);

        sub_266CC01EC(a1, v7);
      }

      else
      {
        v74 = v22 + v21;
        sub_266CC01D4(a1, v7);

        v56 = sub_266DA948C();
        v57 = sub_266DAAB0C();

        sub_266CC01EC(a1, v7);
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = a1;
          v60 = swift_slowAlloc();
          v81 = v60;
          *v58 = 136315138;
          v77 = v26;
          v78 = v25;
          v79 = v59;
          v80 = v7;
          sub_266CC01D4(v59, v7);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB758, &qword_266DB4750);
          v61 = sub_266DAA72C();
          v63 = sub_266C22A3C(v61, v62, &v81);

          *(v58 + 4) = v63;
          _os_log_impl(&dword_266C08000, v56, v57, "FindDeviceNLv4IntentWrapper using %s for deviceName", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          v64 = v60;
          a1 = v59;
          MEMORY[0x26D5F2480](v64, -1, -1);
          v65 = v58;
          v4 = v71;
          MEMORY[0x26D5F2480](v65, -1, -1);
        }

        v22 = v72;
        v54 = v74;
        if (a1[2])
        {

          sub_266CC01EC(a1, v7);
          v66 = a1;
          a1 = sub_266DAA6FC();
        }

        else
        {
          sub_266CC01EC(a1, v7);
          v66 = a1;
          a1 = 0;
        }

        [v4 setDeviceName_];

        sub_266CC01EC(v66, v7);
      }

      v20 = 1;
      v23 = v68;
    }

    while (v54);
  }

LABEL_47:

  return v4;
}

uint64_t sub_266CBDD40()
{
  OUTLINED_FUNCTION_6_22();
  v1(&v4);
  sub_266C233D0(v0, &v3);
  sub_266CBD3A0();

  return __swift_destroy_boxed_opaque_existential_0(v0);
}

unint64_t sub_266CBDDE0(uint64_t a1)
{
  v3 = sub_266DA86FC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v77 - v8;
  v10 = sub_266DA85BC();
  v11 = MEMORY[0x28223BE20](v10);
  v80 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v78 = &v77 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v85 = &v77 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v81 = &v77 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v77 - v20;
  v88 = a1;
  v90 = *(a1 + 16);
  v93 = v22 + 16;
  v87 = *MEMORY[0x277D5E690];
  v86 = (v4 + 104);
  v23 = (v4 + 8);
  v84 = 0x8000000266DC17A0;
  v82 = (v22 + 32);
  v89 = v22;
  v92 = (v22 + 8);
  v79 = 0;
  v24 = 0;
  v83 = MEMORY[0x277D84F90];
  v91 = v19;
  while (1)
  {
    v25 = v88;
    if (v90 == v24)
    {
      v40 = v83;
      if (*(v83 + 16))
      {

        v41 = *(v40 + 16);
        if (!v41)
        {

          return MEMORY[0x277D84F90];
        }

        v94 = MEMORY[0x277D84F90];
        sub_266C387DC(0, v41, 0);
        v42 = v94;
        v43 = v40 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
        v44 = *(v89 + 72);
        v45 = *(v89 + 16);
        do
        {
          v46 = v85;
          v47 = v91;
          v45(v85, v43, v91);
          v48 = sub_266DA859C();
          v50 = v49;
          (*v92)(v46, v47);
          v94 = v42;
          v52 = *(v42 + 16);
          v51 = *(v42 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_266C387DC((v51 > 1), v52 + 1, 1);
            v42 = v94;
          }

          *(v42 + 16) = v52 + 1;
          v53 = v42 + 16 * v52;
          *(v53 + 32) = v48;
          *(v53 + 40) = v50;
          v43 += v44;
          --v41;
        }

        while (v41);
      }

      else
      {

        v54 = 0;
        v55 = MEMORY[0x277D84F90];
        v7 = v78;
        v1 = v79;
        while (v90 != v54)
        {
          if (v54 >= *(v25 + 16))
          {
            goto LABEL_46;
          }

          v56 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v57 = *(v89 + 72);
          (*(v89 + 16))(v7, v25 + v56 + v57 * v54, v10);
          v58 = sub_266CBE5EC(v7);
          if (v1)
          {
            goto LABEL_47;
          }

          if (v58)
          {
            v59 = *v82;
            (*v82)(v80, v7, v10);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v94 = v55;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_266C38AC8(0, *(v55 + 16) + 1, 1);
              v25 = v88;
              v55 = v94;
            }

            v62 = *(v55 + 16);
            v61 = *(v55 + 24);
            if (v62 >= v61 >> 1)
            {
              sub_266C38AC8(v61 > 1, v62 + 1, 1);
              v25 = v88;
              v55 = v94;
            }

            ++v54;
            *(v55 + 16) = v62 + 1;
            v10 = v91;
            v59((v55 + v56 + v62 * v57), v80, v91);
          }

          else
          {
            (*v92)(v7, v10);
            ++v54;
          }
        }

        v63 = *(v55 + 16);
        if (!v63)
        {

          return 0;
        }

        v94 = MEMORY[0x277D84F90];
        sub_266C387DC(0, v63, 0);
        v42 = v94;
        v64 = *(v89 + 80);
        v90 = v55;
        v65 = v55 + ((v64 + 32) & ~v64);
        v66 = *(v89 + 72);
        v67 = *(v89 + 16);
        do
        {
          v68 = v85;
          v69 = v91;
          v67(v85, v65, v91);
          v70 = sub_266DA859C();
          v72 = v71;
          (*v92)(v68, v69);
          v94 = v42;
          v74 = *(v42 + 16);
          v73 = *(v42 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_266C387DC((v73 > 1), v74 + 1, 1);
            v42 = v94;
          }

          *(v42 + 16) = v74 + 1;
          v75 = v42 + 16 * v74;
          *(v75 + 32) = v70;
          *(v75 + 40) = v72;
          v65 += v66;
          --v63;
        }

        while (v63);
      }

      return v42;
    }

    if (v24 >= *(v88 + 16))
    {
      break;
    }

    v26 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v1 = *(v89 + 72);
    (*(v89 + 16))(v21, v88 + v26 + v1 * v24, v10);
    sub_266DA856C();
    (*v86)(v7, v87, v3);
    v27 = MEMORY[0x26D5EF050](v9, v7);
    v28 = *v23;
    (*v23)(v7, v3);
    v28(v9, v3);
    if ((v27 & 1) != 0 && (v29 = sub_266DA85AC(), v30))
    {
      if (v29 == 0xD000000000000010 && v30 == v84)
      {
      }

      else
      {
        v32 = sub_266DAB17C();

        if ((v32 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v33 = *v82;
      (*v82)(v81, v21, v91);
      v34 = v83;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v34;
      v77 = v33;
      if ((v35 & 1) == 0)
      {
        sub_266C38AC8(0, *(v34 + 16) + 1, 1);
        v34 = v94;
      }

      v37 = *(v34 + 16);
      v36 = *(v34 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v83 = v37 + 1;
        sub_266C38AC8(v36 > 1, v37 + 1, 1);
        v38 = v83;
        v34 = v94;
      }

      ++v24;
      *(v34 + 16) = v38;
      v83 = v34;
      v39 = v34 + v26 + v37 * v1;
      v10 = v91;
      v77(v39, v81, v91);
    }

    else
    {
LABEL_11:
      v10 = v91;
      (*v92)(v21, v91);
      ++v24;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:

  (*v92)(v7, v10);

  __break(1u);
  return result;
}

uint64_t sub_266CBE5EC(uint64_t a1)
{
  v65 = sub_266DA854C();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = &v57[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB760, &qword_266DB4758);
  MEMORY[0x28223BE20](v62);
  v64 = &v57[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB768, &qword_266DB4760);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v60 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v68 = &v57[-v8];
  MEMORY[0x28223BE20](v7);
  v67 = &v57[-v9];
  v10 = sub_266DA870C();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB770, &qword_266DB4768);
  MEMORY[0x28223BE20](v69);
  v70 = &v57[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB778, &unk_266DB4770);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v66 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v57[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v57[-v19];
  v21 = sub_266DA86FC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v57[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v27 = &v57[-v26];
  v28 = a1;
  sub_266DA856C();
  (*(v22 + 104))(v25, *MEMORY[0x277D5E6A0], v21);
  LOBYTE(a1) = MEMORY[0x26D5EF050](v27, v25);
  v29 = *(v22 + 8);
  v29(v25, v21);
  v29(v27, v21);
  if ((a1 & 1) == 0)
  {
    goto LABEL_16;
  }

  v30 = v28;
  sub_266DA857C();
  v32 = v71;
  v31 = v72;
  (*(v71 + 104))(v18, *MEMORY[0x277D5E6E0], v72);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v31);
  v33 = v70;
  v34 = *(v69 + 48);
  sub_266CC0274();
  sub_266CC0274();
  v35 = v32;
  v36 = v33;
  if (__swift_getEnumTagSinglePayload(v33, 1, v31) == 1)
  {
    v69 = v30;
    sub_266C1825C(v18, &qword_2800CB778, &unk_266DB4770);
    sub_266C1825C(v20, &qword_2800CB778, &unk_266DB4770);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33 + v34, 1, v31);
    v38 = v68;
    if (EnumTagSinglePayload == 1)
    {
      sub_266C1825C(v36, &qword_2800CB778, &unk_266DB4770);
      goto LABEL_9;
    }

LABEL_7:
    v41 = &qword_2800CB770;
    v42 = &qword_266DB4768;
    v43 = v36;
LABEL_15:
    sub_266C1825C(v43, v41, v42);
    goto LABEL_16;
  }

  v39 = v18;
  v40 = v66;
  sub_266CC0274();
  if (__swift_getEnumTagSinglePayload(v36 + v34, 1, v31) == 1)
  {
    sub_266C1825C(v39, &qword_2800CB778, &unk_266DB4770);
    sub_266C1825C(v20, &qword_2800CB778, &unk_266DB4770);
    (*(v35 + 8))(v40, v31);
    goto LABEL_7;
  }

  v69 = v30;
  v44 = v61;
  (*(v35 + 32))(v61, v36 + v34, v31);
  sub_266CC02D0(&qword_2800CB788, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
  v58 = sub_266DAA6EC();
  v45 = *(v35 + 8);
  v45(v44, v31);
  sub_266C1825C(v39, &qword_2800CB778, &unk_266DB4770);
  sub_266C1825C(v20, &qword_2800CB778, &unk_266DB4770);
  v45(v40, v31);
  sub_266C1825C(v36, &qword_2800CB778, &unk_266DB4770);
  v38 = v68;
  if ((v58 & 1) == 0)
  {
LABEL_16:
    v51 = 0;
    return v51 & 1;
  }

LABEL_9:
  v46 = v67;
  sub_266DA855C();
  v47 = v63;
  v48 = v65;
  (*(v63 + 104))(v38, *MEMORY[0x277D5E4B0], v65);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v48);
  v49 = *(v62 + 48);
  v50 = v64;
  sub_266CC0274();
  sub_266CC0274();
  if (__swift_getEnumTagSinglePayload(v50, 1, v48) != 1)
  {
    v52 = v60;
    sub_266CC0274();
    if (__swift_getEnumTagSinglePayload(v50 + v49, 1, v48) != 1)
    {
      v54 = v50 + v49;
      v55 = v59;
      (*(v47 + 32))(v59, v54, v48);
      sub_266CC02D0(&qword_2800CB780, MEMORY[0x277D5E4D8], MEMORY[0x277D5E4E0]);
      v51 = sub_266DAA6EC();
      v56 = *(v47 + 8);
      v56(v55, v48);
      sub_266C1825C(v38, &qword_2800CB768, &qword_266DB4760);
      sub_266C1825C(v67, &qword_2800CB768, &qword_266DB4760);
      v56(v52, v48);
      sub_266C1825C(v50, &qword_2800CB768, &qword_266DB4760);
      return v51 & 1;
    }

    sub_266C1825C(v38, &qword_2800CB768, &qword_266DB4760);
    sub_266C1825C(v67, &qword_2800CB768, &qword_266DB4760);
    (*(v47 + 8))(v52, v48);
    goto LABEL_14;
  }

  sub_266C1825C(v38, &qword_2800CB768, &qword_266DB4760);
  sub_266C1825C(v46, &qword_2800CB768, &qword_266DB4760);
  if (__swift_getEnumTagSinglePayload(v50 + v49, 1, v48) != 1)
  {
LABEL_14:
    v41 = &qword_2800CB760;
    v42 = &qword_266DB4758;
    v43 = v50;
    goto LABEL_15;
  }

  sub_266C1825C(v50, &qword_2800CB768, &qword_266DB4760);
  v51 = 1;
  return v51 & 1;
}

uint64_t sub_266CBEF34(uint64_t a1, void *a2)
{
  v3 = sub_266DA879C();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95F8, &qword_266DAD578);
  MEMORY[0x28223BE20](v5);
  v48 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9600, &unk_266DAD580);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = sub_266DA957C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_266DA841C())
  {

    v22 = sub_266DA853C();

    sub_266CA1A78(v22, a2, v17);

    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      sub_266C1825C(v17, &qword_2800CA8B8, &qword_266DB30F0);
      if (qword_2800C9270 != -1)
      {
        swift_once();
      }

      v23 = sub_266DA94AC();
      __swift_project_value_buffer(v23, qword_2800CB740);
      v24 = sub_266DA948C();
      v25 = sub_266DAAB0C();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v50;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_266C08000, v24, v25, "FindDeviceNLv4IntentWrapper deviceOwner unable to obtain resolved entity, returning associated person as INPerson", v28, 2u);
        MEMORY[0x26D5F2480](v28, -1, -1);
      }

      sub_266C9A2C4();

      sub_266C37774();
      v30 = v29;
      if (!v29)
      {
        goto LABEL_22;
      }

      v31 = v29;
      sub_266DA878C();
      (*(v49 + 104))(v12, *MEMORY[0x277D5E828], v27);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v27);
      v32 = *(v5 + 48);
      v33 = v48;
      sub_266CC0274();
      sub_266CC0274();
      if (__swift_getEnumTagSinglePayload(v33, 1, v27) == 1)
      {
        sub_266C1825C(v12, &qword_2800C9600, &unk_266DAD580);
        sub_266C1825C(v14, &qword_2800C9600, &unk_266DAD580);
        if (__swift_getEnumTagSinglePayload(v33 + v32, 1, v27) == 1)
        {
          sub_266C1825C(v33, &qword_2800C9600, &unk_266DAD580);
          v34 = 1;
LABEL_21:
          [v31 setIsMe_];

LABEL_22:

          return v30;
        }
      }

      else
      {
        v39 = v47;
        sub_266CC0274();
        if (__swift_getEnumTagSinglePayload(v33 + v32, 1, v27) != 1)
        {
          v45 = v31;
          v40 = v49;
          v41 = v33 + v32;
          v42 = v46;
          (*(v49 + 32))(v46, v41, v27);
          sub_266CC02D0(&unk_2800C9608, MEMORY[0x277D5E830], MEMORY[0x277D5E838]);
          v34 = sub_266DAA6EC();
          v43 = *(v40 + 8);
          v43(v42, v27);
          sub_266C1825C(v12, &qword_2800C9600, &unk_266DAD580);
          sub_266C1825C(v14, &qword_2800C9600, &unk_266DAD580);
          v43(v47, v27);
          v31 = v45;
          sub_266C1825C(v33, &qword_2800C9600, &unk_266DAD580);
          goto LABEL_21;
        }

        sub_266C1825C(v12, &qword_2800C9600, &unk_266DAD580);
        sub_266C1825C(v14, &qword_2800C9600, &unk_266DAD580);
        (*(v49 + 8))(v39, v27);
      }

      sub_266C1825C(v33, &qword_2800C95F8, &qword_266DAD578);
      v34 = 0;
      goto LABEL_21;
    }

    (*(v19 + 32))(v21, v17, v18);
    v30 = sub_266D4E468();

    (*(v19 + 8))(v21, v18);
  }

  else
  {
    if (qword_2800C9270 != -1)
    {
      swift_once();
    }

    v35 = sub_266DA94AC();
    __swift_project_value_buffer(v35, qword_2800CB740);
    v36 = sub_266DA948C();
    v37 = sub_266DAAB0C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266C08000, v36, v37, "FindDeviceNLv4IntentWrapper deviceOwner missing associated person", v38, 2u);
      MEMORY[0x26D5F2480](v38, -1, -1);
    }

    return 0;
  }

  return v30;
}

void sub_266CBF6AC(uint64_t a1)
{
  sub_266DA853C();
  v1 = sub_266DA8C0C();

  v2 = sub_266CBD214(0x73656D616ELL, 0xE500000000000000, v1);

  v19 = MEMORY[0x277D84F90];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = sub_266C3A14C();
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D5F1780](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }
    }

    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v7 = sub_266DA8BEC();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      swift_bridgeObjectRetain_n();
      v11 = sub_266DA8BFC();
      v18 = sub_266CBDDE0(v11);
      v13 = v12;
      swift_bridgeObjectRelease_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266CFA378();
        v19 = v16;
      }

      v14 = *(v19 + 16);
      if (v14 >= *(v19 + 24) >> 1)
      {
        sub_266CFA378();
        v19 = v17;
      }

      *(v19 + 16) = v14 + 1;
      v15 = v19 + 32 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      *(v15 + 48) = v18;
      *(v15 + 56) = v13;
      v5 = v6;
    }

    else
    {

      ++v5;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_266CBF88C()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 deviceType];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_266DAA70C();

  return v4;
}

uint64_t sub_266CBF8F8()
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  sub_266DA957C();
  OUTLINED_FUNCTION_5_3();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = *v1;
  if (v15)
  {
    v15 = sub_266DA853C();
  }

  sub_266CA1A78(v15, v3 + 1, v6);

  OUTLINED_FUNCTION_4_13(v6);
  if (v16)
  {
    sub_266C1825C(v6, &qword_2800CA8B8, &qword_266DB30F0);
    if (qword_2800C9270 != -1)
    {
      OUTLINED_FUNCTION_0_43(&qword_2800C9270);
    }

    v17 = sub_266DA94AC();
    __swift_project_value_buffer(v17, qword_2800CB740);
    v18 = sub_266DA948C();
    v19 = sub_266DAAB0C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_266C08000, v18, v19, "FindDeviceNLv4IntentWrapper deviceId unable to obtain resolved entity", v20, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    return 0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v0);
    if (qword_2800C9270 != -1)
    {
      OUTLINED_FUNCTION_0_43(&qword_2800C9270);
    }

    v22 = sub_266DA94AC();
    __swift_project_value_buffer(v22, qword_2800CB740);
    (*(v8 + 16))(v12, v14, v0);
    v23 = sub_266DA948C();
    v24 = sub_266DAAB0C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = v25;
      v36 = swift_slowAlloc();
      v37 = v36;
      *v25 = 136315138;
      sub_266CC02D0(&qword_2800CB790, MEMORY[0x277D5FEB0], MEMORY[0x277D5FEB8]);
      v26 = sub_266DAB13C();
      v28 = v27;
      v29 = OUTLINED_FUNCTION_4_22();
      v2(v29);
      v30 = sub_266C22A3C(v26, v28, &v37);

      v31 = v35;
      *(v35 + 1) = v30;
      _os_log_impl(&dword_266C08000, v23, v24, "FindDeviceNLv4IntentWrapper deviceId resolved entity: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      v32 = OUTLINED_FUNCTION_4_22();
      v2(v32);
    }

    v21 = sub_266DA954C();
    (v2)(v14, v0);
  }

  return v21;
}

uint64_t sub_266CBFCD0()
{
  sub_266DA88BC();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB798, &qword_266DB4780);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7A0, &qword_266DB4788);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  if (*v1 && sub_266DA868C())
  {
    sub_266DA88AC();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v0);
  }

  (*(v3 + 104))(v17, *MEMORY[0x277D5EA28], v0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v0);
  v20 = *(v7 + 48);
  sub_266CC0274();
  sub_266CC0274();
  OUTLINED_FUNCTION_4_13(v10);
  if (v22)
  {
    OUTLINED_FUNCTION_5_22(v17);
    OUTLINED_FUNCTION_5_22(v19);
    OUTLINED_FUNCTION_4_13(&v10[v20]);
    if (v22)
    {
      sub_266C1825C(v10, &qword_2800CB7A0, &qword_266DB4788);
      v21 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    sub_266CC0274();
    OUTLINED_FUNCTION_4_13(&v10[v20]);
    if (!v22)
    {
      (*(v3 + 32))(v6, &v10[v20], v0);
      sub_266CC02D0(&qword_2800CB7A8, MEMORY[0x277D5EA60], MEMORY[0x277D5EA70]);
      v21 = sub_266DAA6EC();
      v23 = *(v3 + 8);
      v23(v6, v0);
      OUTLINED_FUNCTION_5_22(v17);
      OUTLINED_FUNCTION_5_22(v19);
      v23(v14, v0);
      OUTLINED_FUNCTION_5_22(v10);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_5_22(v17);
    OUTLINED_FUNCTION_5_22(v19);
    (*(v3 + 8))(v14, v0);
  }

  sub_266C1825C(v10, &qword_2800CB798, &qword_266DB4780);
  v21 = 0;
LABEL_14:
  if (qword_2800C9270 != -1)
  {
    OUTLINED_FUNCTION_0_43(&qword_2800C9270);
  }

  v24 = sub_266DA94AC();
  __swift_project_value_buffer(v24, qword_2800CB740);
  v25 = sub_266DA948C();
  v26 = sub_266DAAB0C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v21 & 1;
    _os_log_impl(&dword_266C08000, v25, v26, "FindDeviceNLv4IntentWrapper isSearchForAllDevices %{BOOL}d", v27, 8u);
    OUTLINED_FUNCTION_6_1();
  }

  return v21 & 1;
}

void *sub_266CC0144()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_266CC016C()
{
  OUTLINED_FUNCTION_6_22();
  v1 = sub_266DAA91C();

  [v0 setDeviceTypeCategories_];
}

uint64_t sub_266CC01D4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return j__swift_bridgeObjectRetain();
  }

  return result;
}

uint64_t sub_266CC01EC(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return j__swift_bridgeObjectRelease();
  }

  return result;
}

void sub_266CC0208(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_266DAA6FC();

  [a3 *a4];
}

uint64_t sub_266CC0274()
{
  OUTLINED_FUNCTION_6_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_266CC02D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266CC0318(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_266CC036C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_266CC03EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_266CC042C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_266CC048C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_266CC04CC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_0_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t a1)
{

  return sub_266C1825C(a1, v1, v2);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266CC059C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_266CC05DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266CC063C(uint64_t a1)
{
  sub_266DA7E4C();

  sub_266DA7DCC();

  sub_266DA7E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_266DB05D0;
  v14 = *(v1 + 32);
  sub_266CC0FE4(&v14, &v13);
  v13 = v14;
  sub_266CC0FE4(&v14, v12);
  sub_266CC0FE4(&v14, v12);

  OUTLINED_FUNCTION_0_44();
  v3 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v3);

  v4 = *(&v13 + 1);
  *(v2 + 32) = v13;
  *(v2 + 40) = v4;
  v13 = v14;
  OUTLINED_FUNCTION_0_44();
  v5 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v5);

  v6 = *(&v13 + 1);
  *(v2 + 48) = v13;
  *(v2 + 56) = v6;
  v13 = v14;
  OUTLINED_FUNCTION_0_44();
  v7 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v7);

  v8 = *(&v13 + 1);
  *(v2 + 64) = v13;
  *(v2 + 72) = v8;
  sub_266DA7E2C();
  v9 = swift_allocObject();
  v10 = v14;
  *(v9 + 16) = xmmword_266DAE4A0;
  *(v9 + 32) = v10;
  sub_266DA7E3C();
  sub_266DA7DFC();
  sub_266CC0834();
  return sub_266DA7DDC();
}

uint64_t sub_266CC0834()
{
  v0 = sub_266DA835C();
  v49 = *(v0 - 8);
  v50 = v0;
  MEMORY[0x28223BE20](v0);
  v48 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_266DA829C();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - v5;
  v51 = sub_266DA82EC();
  v42 = *(v51 - 8);
  v6 = MEMORY[0x28223BE20](v51);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B0, &qword_266DB4950);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_266DA824C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v19 = sub_266DA83BC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v38 - v24;
  sub_266DA83AC();
  sub_266D65484(v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_266CC1040(v11);
    v26 = v25;
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v16, v18, v12);
    v26 = v25;
    sub_266DA839C();
    (*(v13 + 8))(v18, v12);
  }

  v39 = v26;
  v27 = v41;
  sub_266DA82DC();
  v28 = *(v20 + 16);
  v40 = v19;
  v28(v23, v26, v19);
  sub_266DA82CC();
  v29 = v45;
  sub_266DA828C();
  v30 = v42;
  (*(v42 + 16))(v43, v27, v51);
  sub_266DA827C();
  v31 = v48;
  sub_266DA834C();
  v33 = v46;
  v32 = v47;
  (*(v46 + 16))(v44, v29, v47);
  sub_266DA833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B8, &unk_266DB79E0);
  v34 = v49;
  v35 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_266DAE4A0;
  (*(v34 + 32))(v36 + v35, v31, v50);
  (*(v33 + 8))(v29, v32);
  (*(v30 + 8))(v27, v51);
  (*(v20 + 8))(v39, v40);
  return v36;
}

uint64_t sub_266CC0DAC(uint64_t a1)
{
  sub_266DA7E4C();

  sub_266DA7DCC();

  sub_266DA7E1C();
  sub_266DA7DFC();
  sub_266DA7DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_266DAE4A0;
  v14 = *(v1 + 32);
  v13 = *(v1 + 32);
  sub_266CC0FE4(&v14, v12);
  sub_266CC0FE4(&v14, v12);

  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v3 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v3);

  v4 = *(&v13 + 1);
  *(v2 + 32) = v13;
  *(v2 + 40) = v4;
  sub_266DA7E0C();
  v5 = swift_allocObject();
  v6 = v14;
  *(v5 + 16) = xmmword_266DB05C0;
  *(v5 + 32) = v6;
  v7 = *(v1 + 56);
  *(v5 + 48) = *(v1 + 48);
  *(v5 + 56) = v7;

  sub_266DA7E3C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266DAE4A0;
  v13 = v14;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v9 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v9);

  v10 = *(&v13 + 1);
  *(v8 + 32) = v13;
  *(v8 + 40) = v10;
  sub_266DA7E2C();

  sub_266DA7DBC();

  sub_266DA7DDC();

  return sub_266DA7DAC();
}

uint64_t sub_266CC1040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B0, &qword_266DB4950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_0_44()
{

  JUMPOUT(0x26D5F1170);
}

uint64_t SFMPerson.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v11 = v0[7];
  v12 = v0[6];
  if (v0[3])
  {
    MEMORY[0x26D5F1170](v0[2]);
    MEMORY[0x26D5F1170](8233, 0xE200000000000000);
    v6 = 0x6D614E6B63696E28;
    v5 = 0xEB00000000203A65;
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  sub_266DAADFC();

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v3 = 7104878;
    v7 = 0xE300000000000000;
  }

  MEMORY[0x26D5F1170](v3, v7);

  MEMORY[0x26D5F1170](8236, 0xE200000000000000);
  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 7104878;
  }

  if (v1)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x26D5F1170](v8, v9);

  MEMORY[0x26D5F1170](32, 0xE100000000000000);
  MEMORY[0x26D5F1170](v6, v5);

  MEMORY[0x26D5F1170](540697705, 0xE400000000000000);
  MEMORY[0x26D5F1170](v12, v11);
  MEMORY[0x26D5F1170](62, 0xE100000000000000);
  return 0x737265504D46533CLL;
}

uint64_t SFMPerson.nameComponents.getter()
{

  sub_266DA72CC();
  sub_266DA722C();
  sub_266DA724C();
  return sub_266DA72BC();
}

void __swiftcall SFMPerson.init(from:)(SiriFindMy::SFMPerson *__return_ptr retstr, CNContact from)
{
  v4 = [(objc_class *)from.super.isa givenName];
  v5 = sub_266DAA70C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [(objc_class *)from.super.isa givenName];
    v34 = sub_266DAA70C();
    v11 = v10;
  }

  else
  {
    v34 = 0;
    v11 = 0;
  }

  v12 = [(objc_class *)from.super.isa nickname];
  v13 = sub_266DAA70C();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = [(objc_class *)from.super.isa nickname];
    v18 = sub_266DAA70C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [(objc_class *)from.super.isa familyName];
  v22 = sub_266DAA70C();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = [(objc_class *)from.super.isa familyName];
    v27 = sub_266DAA70C();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [(objc_class *)from.super.isa identifier];
  v31 = sub_266DAA70C();
  v33 = v32;

  retstr->givenName.value._countAndFlagsBits = v34;
  retstr->givenName.value._object = v11;
  retstr->nickName.value._countAndFlagsBits = v18;
  retstr->nickName.value._object = v20;
  retstr->familyName.value._countAndFlagsBits = v27;
  retstr->familyName.value._object = v29;
  retstr->identifier._countAndFlagsBits = v31;
  retstr->identifier._object = v33;
  OUTLINED_FUNCTION_4_21();
}

void static SFMPerson.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      goto LABEL_34;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v34 = a1[5];
      v35 = a2[5];
      v18 = a1[4];
      v19 = a2[7];
      v20 = a2[6];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_266DAB17C();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v14 = v20;
      v16 = v19;
      v5 = v18;
      v8 = v34;
      v15 = v35;
      if ((v24 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_34;
  }

  if (v6)
  {
    if (!v13)
    {
      goto LABEL_34;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_266DAB17C();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v13)
  {
    goto LABEL_34;
  }

  if (!v8)
  {
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_34:
    OUTLINED_FUNCTION_4_21();
    return;
  }

  if (!v15)
  {
    goto LABEL_34;
  }

  if (v5 != v12 || v8 != v15)
  {
    v30 = v7;
    v31 = sub_266DAB17C();
    v7 = v30;
    if ((v31 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_26:
  if (v7 == v14 && v9 == v16)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_4_21();

  sub_266DAB17C();
}

uint64_t sub_266CC1748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_266CC1788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266CC17E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = sub_266DA812C();
  v3[19] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v3[20] = v5;
  v3[21] = swift_task_alloc();
  v6 = sub_266DA7C9C();
  v3[22] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v3[23] = v7;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CC18F8);
}

void sub_266CC18F8(uint64_t a1)
{
  v2 = *(v1 + 136);
  sub_266DA7E4C();
  OUTLINED_FUNCTION_4_23();
  sub_266DA7DCC();
  sub_266C2CDB0(0);
  sub_266DA7E1C();
  sub_266DA7DFC();
  sub_266DA7DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  v3 = swift_allocObject();
  v64 = OUTLINED_FUNCTION_27_7(v3, xmmword_266DAE4A0);
  v67 = v4;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v5 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v5);

  v3[2].n128_u64[0] = v64;
  v3[2].n128_u64[1] = v67;
  sub_266DA7E0C();
  v6 = swift_allocObject();
  v6[2].n128_u64[0] = OUTLINED_FUNCTION_27_7(v6, xmmword_266DB05C0);
  v6[2].n128_u64[1] = v7;
  v6[3].n128_u64[0] = sub_266C2CDB0(7);
  v6[3].n128_u64[1] = v8;
  sub_266DA7E3C();
  v9 = swift_allocObject();
  v65 = OUTLINED_FUNCTION_27_7(v9, xmmword_266DAE4A0);
  v68 = v10;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v11 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v11);

  v9[2].n128_u64[0] = v65;
  v9[2].n128_u64[1] = v68;
  sub_266DA7E2C();
  v12 = 0;
  v13 = *(v2 + 16);
  *(v1 + 200) = v13;
  v14 = v2 + 24;
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
LABEL_2:
  v17 = (v14 + 48 * v12);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_33;
    }

    v19 = *(v17 + 41);
    v17 += 6;
    ++v12;
    if (v19)
    {
      v20 = *(v17 - 4);
      v61 = *(v17 - 5);
      v21 = *(v17 - 3);
      v22 = *(v17 - 2);
      v23 = *(v17 - 8);
      v24 = *v17;

      sub_266C292B4(v21, v22, v23);

      v62 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266C38868(0, *(v16 + 16) + 1, 1);
      }

      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_266C38868(v25 > 1, v26 + 1, 1);
      }

      *(v16 + 16) = v26 + 1;
      v27 = v16 + 48 * v26;
      *(v27 + 32) = v61;
      *(v27 + 40) = v62;
      OUTLINED_FUNCTION_19_10(v27);
      *(v28 + 72) = v24;
      v12 = v18;
      v15 = MEMORY[0x277D84F90];
      goto LABEL_2;
    }
  }

  v63 = v15;
  swift_getKeyPath();
  v29 = 0;
  v66 = v15;
  v30 = *(v16 + 16);
LABEL_13:
  v31 = 48 * v29;
  while (v30 != v29)
  {
    if (v29 >= *(v16 + 16))
    {
      goto LABEL_34;
    }

    v32 = v16 + v31;
    v33 = *(v16 + v31 + 72);
    v34 = v31 + 48;
    ++v29;
    v35 = *(v16 + v31 + 65);
    v37 = *(v32 + 48);
    v36 = *(v32 + 56);
    v38 = *(v32 + 40);
    v39 = *(v32 + 64);
    *(v1 + 64) = *(v32 + 32);
    *(v1 + 72) = v38;
    *(v1 + 80) = v37;
    *(v1 + 88) = v36;
    *(v1 + 96) = v39;
    *(v1 + 97) = v35;
    *(v1 + 104) = v33;

    sub_266C292B4(v37, v36, v39);
    swift_getAtKeyPath();

    sub_266C479B0(v37, v36, v39);

    v31 = v34;
    if (*(v1 + 112))
    {
      MEMORY[0x26D5F1270](v40);
      v41 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v41 >> 1)
      {
        OUTLINED_FUNCTION_3_21(v41);
        sub_266DAA95C();
      }

      sub_266DAA96C();
      v63 = v66;
      goto LABEL_13;
    }
  }

  v42 = *(v1 + 128);

  sub_266CC2D58(v63);

  sub_266DA7DDC();
  v43 = sub_266CC43FC(v16);

  sub_266CC4FB8();
  v45 = v44;

  sub_266DA7DAC();
  v46 = MEMORY[0x277D84F90];
  *(v1 + 120) = MEMORY[0x277D84F90];
  *(v1 + 208) = 0;
  if (*(v1 + 200))
  {
    OUTLINED_FUNCTION_3_26(*(v1 + 136));
    sub_266C292B4(v42, v45, v43);

    v47 = swift_task_alloc();
    *(v1 + 248) = v47;
    *v47 = v1;
    v48 = OUTLINED_FUNCTION_2_31(v47);

    sub_266CC2F80(v48);
  }

  else
  {
    v49 = *(v46 + 16);
    if (v49)
    {
      v50 = *(v1 + 184);
      sub_266C38978(0, v49, 0);
      v51 = v46 + 40;
      do
      {

        sub_266DA7C8C();
        v53 = *(v46 + 16);
        v52 = *(v46 + 24);
        if (v53 >= v52 >> 1)
        {
          v55 = OUTLINED_FUNCTION_3_21(v52);
          sub_266C38978(v55, v53 + 1, 1);
        }

        *(v46 + 16) = v53 + 1;
        OUTLINED_FUNCTION_8_9();
        (*(v50 + 32))(v46 + v54 + *(v50 + 72) * v53);
        v51 += 48;
        --v49;
      }

      while (v49);
    }

    v57 = *(v1 + 160);
    v56 = *(v1 + 168);
    v58 = *(v1 + 152);
    OUTLINED_FUNCTION_16_13();
    v59 = sub_266DA811C();

    (*(v57 + 8))(v56, v58);
    sub_266C3815C(v59);
    sub_266DA7DBC();

    OUTLINED_FUNCTION_28();

    v60();
  }
}

uint64_t sub_266CC1F8C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_21_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_21_1();
  *v7 = v6;
  *(v4 + 256) = v1;

  if (v1)
  {

    v8 = sub_266CC2468;
  }

  else
  {
    *(v4 + 264) = a1;
    v8 = sub_266CC20B4;
  }

  return MEMORY[0x2822009F8](v8);
}

void sub_266CC20B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_18_10();
  v16 = *(v14 + 232);
  v15 = *(v14 + 240);
  v17 = *(v14 + 224);
  v18 = *(v14 + 272);
  sub_266C3815C(*(v14 + 264));

  sub_266C479B0(v17, v16, v18);

  v19 = *(v14 + 200);
  v20 = *(v14 + 208) + 1;
  *(v14 + 208) = v20;
  if (v20 == v19)
  {
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    v23 = 48;
    v24 = 24;
LABEL_3:
    v25 = v24 + v21 * v23;
    while (v20 != v21)
    {
      if (v21 >= v20)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_25;
      }

      v27 = *(v14 + 136);
      v28 = *(v27 + v25 + 41);
      v25 += 48;
      ++v21;
      if (v28)
      {
        v30 = *(v27 + v25 - 40);
        v29 = *(v27 + v25 - 32);
        v31 = *(v27 + v25 - 24);
        v32 = *(v27 + v25 - 16);
        v33 = *(v27 + v25 - 8);
        v34 = *(v27 + v25);

        sub_266C292B4(v31, v32, v33);

        a10 = v24;
        a9 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266C38868(0, *(v22 + 16) + 1, 1);
        }

        v36 = *(v22 + 16);
        v35 = *(v22 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_266C38868(v35 > 1, v36 + 1, 1);
        }

        *(v22 + 16) = v36 + 1;
        v37 = v22 + 48 * v36;
        v24 = a10;
        *(v37 + 32) = v30;
        *(v37 + 40) = v29;
        OUTLINED_FUNCTION_19_10(v37);
        *(v38 + 72) = v34;
        v20 = *(v14 + 200);
        v21 = v26;
        goto LABEL_3;
      }
    }

    v42 = *(v22 + 16);
    if (v42)
    {
      v43 = *(v14 + 184);
      v60 = MEMORY[0x277D84F90];
      sub_266C38978(0, v42, 0);
      a10 = v22;
      v44 = v22 + 40;
      do
      {

        sub_266DA7C8C();
        v46 = *(v60 + 16);
        v45 = *(v60 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_266C38978(v45 > 1, v46 + 1, 1);
        }

        *(v60 + 16) = v46 + 1;
        OUTLINED_FUNCTION_8_9();
        (*(v43 + 32))(v60 + v47 + *(v43 + 72) * v46);
        v44 += 48;
        --v42;
      }

      while (v42);
    }

    v49 = *(v14 + 160);
    v48 = *(v14 + 168);
    v50 = *(v14 + 152);
    OUTLINED_FUNCTION_16_13();
    v51 = sub_266DA811C();

    (*(v49 + 8))(v48, v50);
    v61 = *(v14 + 120);
    sub_266C3815C(v51);
    sub_266DA7DBC();

    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_68();

    v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, v61, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_3_26(*(v14 + 136) + 48 * v20);
    sub_266C292B4((v14 + 120), v15, v16);

    v39 = swift_task_alloc();
    *(v14 + 248) = v39;
    *v39 = v14;
    OUTLINED_FUNCTION_2_31(v39);
    OUTLINED_FUNCTION_68();

    sub_266CC2F80(v40);
  }
}

uint64_t sub_266CC2468()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 128);
  v4 = *(v0 + 272);

  sub_266C479B0(v2, v1, v4);

  sub_266DA7E5C();
  OUTLINED_FUNCTION_0();
  (*(v5 + 8))(v3);

  OUTLINED_FUNCTION_28();

  return v6();
}

uint64_t sub_266CC254C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB7C0);
  v1 = __swift_project_value_buffer(v0, qword_2800CB7C0);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266CC2614()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v5 = sub_266DA957C();
  OUTLINED_FUNCTION_0_2();
  v65 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_5();
  v66 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_16();
  v67 = v16;
  v17 = sub_266DA7E5C();
  OUTLINED_FUNCTION_0_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_12();
  sub_266DA7E4C();
  OUTLINED_FUNCTION_4_23();
  sub_266DA7DCC();
  if (v2)
  {
    v60 = v0;
    v61 = v19;
    v63 = v4;
    v64 = v9;
    v62 = v17;
    v68 = v5;
    v73 = sub_266C3A14C();
    v21 = 0;
    v71 = v2 & 0xC000000000000001;
    v22 = MEMORY[0x277D84F90];
    v70 = v2 & 0xFFFFFFFFFFFFFF8;
    v69 = xmmword_266DB05C0;
    while (v73 != v21)
    {
      if (v71)
      {
        v23 = MEMORY[0x26D5F1780](v21, v2);
      }

      else
      {
        if (v21 >= *(v70 + 16))
        {
          goto LABEL_34;
        }

        v23 = *(v2 + 8 * v21 + 32);
      }

      v24 = v23;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7F0, &unk_266DB6F20);
      v25 = *(v11 + 72);
      v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v69;
      v28 = v27 + v26;
      sub_266CC8050(v27 + v26);
      v29 = [v24 location];
      if (v29)
      {
        v30 = v29;
        sub_266D6D904(v28 + v25);

        v24 = v30;
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v28 + v25, 1, 1, v68);
      }

      v31 = *(v22 + 16);
      if (__OFADD__(v31, 2))
      {
        goto LABEL_35;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v32 = *(v22 + 24) >> 1, v32 < v31 + 2))
      {
        sub_266CFA440();
        v22 = v33;
        v32 = *(v33 + 24) >> 1;
      }

      if (v32 - *(v22 + 16) < 2)
      {
        goto LABEL_36;
      }

      swift_arrayInitWithCopy();

      v34 = *(v22 + 16);
      v35 = __OFADD__(v34, 2);
      v36 = v34 + 2;
      if (v35)
      {
        goto LABEL_37;
      }

      *(v22 + 16) = v36;
      ++v21;
    }

    v37 = *(v22 + 16);
    if (v37)
    {
      OUTLINED_FUNCTION_8_9();
      v39 = v22 + v38;
      v73 = *(v11 + 72);
      v40 = v64;
      v41 = (v65 + 32);
      v42 = MEMORY[0x277D84F90];
      v43 = v68;
      do
      {
        v44 = v67;
        sub_266CC5920(v39, v67);
        v45 = v44;
        v46 = v66;
        sub_266CC5990(v45, v66, &qword_2800CA8B8, &qword_266DB30F0);
        if (__swift_getEnumTagSinglePayload(v46, 1, v43) == 1)
        {
          sub_266C1825C(v46, &qword_2800CA8B8, &qword_266DB30F0);
        }

        else
        {
          v47 = v46;
          v48 = *v41;
          (*v41)(v40, v47, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_5_23();
            sub_266CF9D4C();
            v42 = v54;
          }

          v50 = *(v42 + 16);
          v49 = *(v42 + 24);
          if (v50 >= v49 >> 1)
          {
            OUTLINED_FUNCTION_3_21(v49);
            sub_266CF9D4C();
            v42 = v55;
          }

          *(v42 + 16) = v50 + 1;
          v40 = v64;
          OUTLINED_FUNCTION_8_9();
          v53 = v42 + v51 + *(v52 + 72) * v50;
          v43 = v68;
          v48(v53, v40, v68);
        }

        v39 += v73;
        --v37;
      }

      while (v37);
    }

    v17 = v62;
    v4 = v63;
    v0 = v60;
    v19 = v61;
  }

  sub_266DA7DAC();
  (*(v19 + 32))(v4, v0, v17);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v17);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CC2B34(uint64_t a1)
{
  sub_266CC2BC4(a1);
  OUTLINED_FUNCTION_4_23();
  sub_266DA7DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  v1 = swift_allocObject();
  v1[2].n128_u64[0] = OUTLINED_FUNCTION_27_7(v1, xmmword_266DAE4A0);
  v1[2].n128_u64[1] = v2;
  sub_266DA7E3C();
  sub_266DA7E5C();
  OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_266CC2BC4(uint64_t a1)
{
  sub_266DA7E4C();
  sub_266DA7DCC();
  sub_266C2CDB0(0);
  sub_266DA7E1C();
  sub_266DA7DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_266DB05D0;
  v9 = sub_266C2CDB0(3);
  v12 = v2;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v3 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v3);

  *(v1 + 32) = v9;
  *(v1 + 40) = v12;
  v10 = sub_266C2CDB0(3);
  v13 = v4;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v5 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v5);

  *(v1 + 48) = v10;
  *(v1 + 56) = v13;
  v11 = sub_266C2CDB0(3);
  v14 = v6;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v7 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v7);

  *(v1 + 64) = v11;
  *(v1 + 72) = v14;
  sub_266DA7E2C();
  sub_266CC38FC();
  return sub_266DA7DDC();
}

uint64_t sub_266CC2D58(unint64_t a1)
{
  v2 = sub_266DA835C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_266DA838C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_266DA837C();
  sub_266CC3F58(a1);
  sub_266DA836C();
  sub_266DA834C();
  (*(v7 + 16))(v10, v12, v6);
  sub_266DA832C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B8, &unk_266DB79E0);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_266DAE4A0;
  (*(v3 + 32))(v14 + v13, v5, v2);
  (*(v7 + 8))(v12, v6);
  return v14;
}

uint64_t sub_266CC2F80(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_266DA750C();
  v2[9] = swift_task_alloc();
  sub_266DA926C();
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FB8, &qword_266DBB450);
  v2[11] = swift_task_alloc();
  v3 = sub_266DA7C9C();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CC30F4);
}

uint64_t sub_266CC30F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_18_10();
  v15 = v14[8];
  v14[18] = *v15;
  v14[19] = *(v15 + 8);

  sub_266DA7C8C();
  v16 = *(v15 + 16);
  v14[20] = v16;
  v14[21] = *(v15 + 24);
  if (!*(v15 + 32))
  {
    v28 = *(v14[8] + 40);
    if (!sub_266C3A14C() || ((sub_266CB9F54(), (v28 & 0xC000000000000001) != 0) ? (v29 = MEMORY[0x26D5F1780](0, v28)) : (v29 = *(v28 + 32)), sub_266CC58B0(v29), !v30))
    {
    }

    v31 = v14[17];
    v57 = v14[16];
    v32 = v14[15];
    v33 = v14[12];
    v34 = v14[13];
    v35 = v14[11];
    sub_266DA7C8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FB0, &unk_266DB6C80);
    v36 = sub_266DA7C2C();
    OUTLINED_FUNCTION_11_3(v36);
    *(OUTLINED_FUNCTION_11_13() + 16) = xmmword_266DAE4A0;
    v37 = *(v34 + 16);
    v37(v35, v31, v33);
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v33);
    v37(v32, v57, v33);
    sub_266DA7C1C();
    v41 = *(v34 + 8);
    v41(v57, v33);
    v41(v31, v33);
    goto LABEL_10;
  }

  if (*(v15 + 32) == 1)
  {
    v17 = v14[17];
    v18 = v14[14];
    v57 = v14[15];
    v19 = v14[12];
    v20 = v14[13];
    v21 = v14[11];

    sub_266DA7C8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FB0, &unk_266DB6C80);
    v22 = sub_266DA7C2C();
    OUTLINED_FUNCTION_11_3(v22);
    *(OUTLINED_FUNCTION_11_13() + 16) = xmmword_266DAE4A0;
    v23 = *(v20 + 16);
    v23(v21, v17, v19);
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    v23(v18, v57, v19);
    sub_266DA7C1C();
    v27 = *(v20 + 8);
    v27(v57, v19);
    v27(v17, v19);
LABEL_10:
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_68();

    return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v57, a12, a13, a14);
  }

  v51 = v14[7];
  type metadata accessor for SiriFindMyCommonCATsSimple(0);
  sub_266DA90EC();
  sub_266C233D0(v51, (v14 + 2));
  v52 = v16;
  sub_266DA90DC();
  sub_266DA925C();
  v14[22] = sub_266DA91CC();
  sub_266DA900C();
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  v53 = v52;
  sub_266DA7AFC();
  v14[23] = sub_266DA8FBC();
  v54 = swift_task_alloc();
  v14[24] = v54;
  *v54 = v14;
  v54[1] = sub_266CC35CC;
  OUTLINED_FUNCTION_68();

  return sub_266D8E198(v55);
}

uint64_t sub_266CC35CC(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_21_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_21_1();
  *v7 = v6;
  *(v4 + 200) = v1;

  if (v1)
  {
    v8 = sub_266CC3810;
  }

  else
  {
    *(v4 + 208) = a1;
    v8 = sub_266CC36EC;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266CC36EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_18_10();
  v23 = v22[20];
  v36 = v22[17];
  v24 = v22[13];
  v34 = v22[21];
  v35 = v22[12];
  sub_266DA91EC();

  OUTLINED_FUNCTION_4_23();
  sub_266C36B5C();

  sub_266C479B0(v23, v34, 2u);
  (*(v24 + 8))(v36, v35);
  OUTLINED_FUNCTION_26_7();

  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_68();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, a12, a13, a14);
}

uint64_t sub_266CC3810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_18_10();
  v16 = v14[20];
  v15 = v14[21];
  v17 = v14[17];
  v18 = v14[12];
  v19 = v14[13];
  v29 = v14[11];
  v30 = v14[10];
  v31 = v14[9];

  sub_266C479B0(v16, v15, 2u);
  (*(v19 + 8))(v17, v18);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_68();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, a12, a13, a14);
}

uint64_t sub_266CC38FC()
{
  v0 = sub_266DA835C();
  v47 = *(v0 - 8);
  v48 = v0;
  MEMORY[0x28223BE20](v0);
  v46 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_266DA829C();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v38 - v5;
  v49 = sub_266DA82EC();
  v40 = *(v49 - 8);
  v6 = MEMORY[0x28223BE20](v49);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B0, &qword_266DB4950);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_266DA824C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = sub_266DA83BC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - v25;
  sub_266DA83AC();
  sub_266CC3E7C(v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_266C1825C(v12, &qword_2800CB7B0, &qword_266DB4950);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    sub_266DA839C();
    (*(v14 + 8))(v19, v13);
  }

  v38 = v26;
  v27 = v9;
  sub_266DA82DC();
  v28 = *(v21 + 16);
  v39 = v20;
  v28(v24, v26, v20);
  sub_266DA82CC();
  v29 = v41;
  sub_266DA828C();
  v30 = v40;
  (*(v40 + 16))(v42, v27, v49);
  sub_266DA827C();
  v31 = v46;
  sub_266DA834C();
  v32 = v44;
  v33 = v45;
  (*(v44 + 16))(v43, v29, v45);
  sub_266DA833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B8, &unk_266DB79E0);
  v34 = v47;
  v35 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_266DAE4A0;
  (*(v34 + 32))(v36 + v35, v31, v48);
  (*(v32 + 8))(v29, v33);
  (*(v30 + 8))(v27, v49);
  (*(v21 + 8))(v38, v39);
  return v36;
}

uint64_t sub_266CC3E7C@<X0>(uint64_t a1@<X8>)
{
  sub_266DA8B5C();
  swift_allocObject();
  v2 = sub_266DA8B4C();
  sub_266DA845C();
  swift_allocObject();
  sub_266DA844C();
  sub_266DA89FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266DAE3B0;
  *(v3 + 32) = v2;

  sub_266CC5640(v3, a1);
}

void sub_266CC3F58(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B0, &qword_266DB4950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v45 = sub_266DA824C();
  v5 = *(v45 - 8);
  v6 = MEMORY[0x28223BE20](v45);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v29 - v8;
  v43 = sub_266DA831C();
  v9 = *(v43 - 8);
  v10 = MEMORY[0x28223BE20](v43);
  v42 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v44 = sub_266DA82EC();
  v14 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v17 = sub_266DAAD5C();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17)
  {
    v41 = v4;
    v46 = MEMORY[0x277D84F90];
    sub_266C389D0(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
    }

    else
    {
      v18 = 0;
      v19 = v46;
      v31 = (v5 + 16);
      v32 = (v5 + 32);
      v30 = (v5 + 8);
      v38 = (v9 + 16);
      v39 = a1 & 0xC000000000000001;
      v36 = v14 + 32;
      v37 = (v9 + 8);
      v40 = a1;
      v33 = v14;
      do
      {
        if (v39)
        {
          v20 = MEMORY[0x26D5F1780](v18, a1);
        }

        else
        {
          v20 = *(a1 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = v41;
        sub_266DA830C();
        sub_266CC5450(v21, v22);
        v23 = v45;
        if (__swift_getEnumTagSinglePayload(v22, 1, v45) == 1)
        {
          sub_266C1825C(v22, &qword_2800CB7B0, &qword_266DB4950);
        }

        else
        {
          v24 = v34;
          (*v32)(v34, v22, v23);
          (*v31)(v35, v24, v23);
          sub_266DA82FC();
          v25 = v24;
          v14 = v33;
          (*v30)(v25, v23);
        }

        sub_266DA82DC();
        v26 = v43;
        (*v38)(v42, v13, v43);
        sub_266DA82BC();

        (*v37)(v13, v26);
        v46 = v19;
        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_266C389D0(v27 > 1, v28 + 1, 1);
          v19 = v46;
        }

        ++v18;
        *(v19 + 16) = v28 + 1;
        (*(v14 + 32))(v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v28, v16, v44);
        a1 = v40;
      }

      while (v17 != v18);
    }
  }
}

uint64_t sub_266CC43FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE10, &qword_266DB30E8);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = sub_266DA957C();
  v11 = MEMORY[0x28223BE20](v10);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v38 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v38 = " location wait queue";
    v42 = v13;
    v43 = (v13 + 32);
    v40 = v13 + 8;
    v41 = (v13 + 16);
    v48 = v7;
    v49 = MEMORY[0x277D84F90];
    v16 = (a1 + 72);
    v44 = v10;
    v45 = v9;
    while (1)
    {
      v17 = *(v16 - 4);
      v18 = *(v16 - 3);
      v19 = *(v16 - 2);
      v20 = *(v16 - 8);
      v21 = *(v16 - 7);
      v22 = *v16;
      v50 = *(v16 - 5);
      v51 = v17;
      v52 = v18;
      v53 = v19;
      v54 = v20;
      v55 = v21;
      v56 = v22;

      sub_266C292B4(v18, v19, v20);
      v23 = sub_266C28524();
      if (v23)
      {
        if (v23 == 1)
        {

          sub_266C479B0(v18, v19, v20);
LABEL_10:
          v25 = 1;
          goto LABEL_11;
        }

        if (!v24)
        {

          sub_266C479B0(v18, v19, v20);

          goto LABEL_10;
        }

        v26 = sub_266DA94FC();
        __swift_storeEnumTagSinglePayload(v39, 1, 1, v26);

        sub_266DA953C();

        sub_266C479B0(v18, v19, v20);

        v25 = 0;
      }

      else
      {

        sub_266C479B0(v18, v19, v20);

        v25 = 1;
      }

LABEL_11:

      v27 = v48;
      v28 = v44;
      __swift_storeEnumTagSinglePayload(v48, v25, 1, v44);
      v29 = v45;
      sub_266CC5920(v27, v45);
      if (__swift_getEnumTagSinglePayload(v29, 1, v28) == 1)
      {
        sub_266C1825C(v27, &qword_2800CA8B8, &qword_266DB30F0);
        sub_266C1825C(v29, &qword_2800CA8B8, &qword_266DB30F0);
      }

      else
      {
        v30 = *v43;
        v31 = v46;
        (*v43)(v46, v29, v28);
        (*v41)(v47, v31, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266CF9D4C();
          v49 = v35;
        }

        v32 = *(v49 + 16);
        if (v32 >= *(v49 + 24) >> 1)
        {
          sub_266CF9D4C();
          v49 = v36;
        }

        sub_266C1825C(v27, &qword_2800CA8B8, &qword_266DB30F0);
        v33 = v42;
        (*(v42 + 8))(v46, v28);
        v34 = v49;
        *(v49 + 16) = v32 + 1;
        v30((v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32), v47, v28);
      }

      v16 += 6;
      if (!--v15)
      {
        return v49;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_266CC4918()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = sub_266DA957C();
  OUTLINED_FUNCTION_0_2();
  v38 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_5();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_16();
  v40 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v11 = OUTLINED_FUNCTION_4_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_5();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v34 - v16;
  if (!(v1 >> 62))
  {
    v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_18:
    OUTLINED_FUNCTION_5();
    return;
  }

  v18 = sub_266DAAD5C();
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = v1 & 0xC000000000000001;
    OUTLINED_FUNCTION_13_10();
    v21 = MEMORY[0x277D84F90];
    v36 = v7;
    v37 = v1;
    v35 = v1 & 0xC000000000000001;
    do
    {
      if (v20)
      {
        v22 = MEMORY[0x26D5F1780](v19, v1);
      }

      else
      {
        v22 = *(v1 + 8 * v19 + 32);
      }

      v23 = v22;
      sub_266D6D904(v17);

      sub_266CC5920(v17, v14);
      if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
      {
        sub_266C1825C(v17, &qword_2800CA8B8, &qword_266DB30F0);
        sub_266C1825C(v14, &qword_2800CA8B8, &qword_266DB30F0);
      }

      else
      {
        v24 = v18;
        v25 = v40;
        v26 = *v39;
        (*v39)(v40, v14, v2);
        (*v34[1])(v7, v25, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_5_23();
          sub_266CF9D4C();
          v21 = v32;
        }

        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_3_21(v27);
          sub_266CF9D4C();
          v21 = v33;
        }

        v29 = v38;
        (*(v38 + 8))(v40, v2);
        sub_266C1825C(v17, &qword_2800CA8B8, &qword_266DB30F0);
        *(v21 + 16) = v28 + 1;
        OUTLINED_FUNCTION_8_9();
        v31 = v21 + v30 + *(v29 + 72) * v28;
        v7 = v36;
        v26(v31, v36, v2);
        v1 = v37;
        v18 = v24;
        v20 = v35;
      }

      ++v19;
    }

    while (v18 != v19);
    goto LABEL_18;
  }

  __break(1u);
}

void sub_266CC4C74()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = sub_266DA957C();
  OUTLINED_FUNCTION_0_2();
  v36 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_5();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_16();
  v38 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v11 = OUTLINED_FUNCTION_4_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_5();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v32 - v16;
  if (!(v1 >> 62))
  {
    v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_18:
    OUTLINED_FUNCTION_5();
    return;
  }

  v18 = sub_266DAAD5C();
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = v1 & 0xC000000000000001;
    OUTLINED_FUNCTION_13_10();
    v21 = MEMORY[0x277D84F90];
    v34 = v7;
    v35 = v1;
    v33 = v18;
    do
    {
      if (v20)
      {
        v22 = MEMORY[0x26D5F1780](v19, v1);
      }

      else
      {
        v22 = *(v1 + 8 * v19 + 32);
      }

      sub_266D4E120(v22, v17);
      sub_266CC5920(v17, v14);
      if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
      {
        sub_266C1825C(v17, &qword_2800CA8B8, &qword_266DB30F0);
        sub_266C1825C(v14, &qword_2800CA8B8, &qword_266DB30F0);
      }

      else
      {
        v23 = v38;
        v24 = *v37;
        (*v37)(v38, v14, v2);
        (*v32[1])(v7, v23, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_5_23();
          sub_266CF9D4C();
          v21 = v30;
        }

        v26 = *(v21 + 16);
        v25 = *(v21 + 24);
        if (v26 >= v25 >> 1)
        {
          OUTLINED_FUNCTION_3_21(v25);
          sub_266CF9D4C();
          v21 = v31;
        }

        v27 = v36;
        (*(v36 + 8))(v38, v2);
        sub_266C1825C(v17, &qword_2800CA8B8, &qword_266DB30F0);
        *(v21 + 16) = v26 + 1;
        OUTLINED_FUNCTION_8_9();
        v29 = v21 + v28 + *(v27 + 72) * v26;
        v7 = v34;
        v24(v29, v34, v2);
        v1 = v35;
        v18 = v33;
      }

      ++v19;
    }

    while (v18 != v19);
    goto LABEL_18;
  }

  __break(1u);
}

void sub_266CC4FB8()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE10, &qword_266DB30E8);
  v4 = OUTLINED_FUNCTION_4_3(v3);
  MEMORY[0x28223BE20](v4);
  v59 = &v53 - v5;
  v66 = sub_266DA957C();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_5();
  v65 = (v9 - v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_16();
  v64 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7D8, &qword_266DB4A58);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  v53 = (&v53 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7E0, &qword_266DB4A60);
  v17 = OUTLINED_FUNCTION_4_3(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  v24 = sub_266DA74AC();
  OUTLINED_FUNCTION_0_2();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_12();
  sub_266DA749C();
  v57 = sub_266DA747C();
  v60 = v28;
  (*(v26 + 8))(v0, v24);
  v29 = 0;
  v30 = *(v2 + 16);
  v61 = (v7 + 16);
  v62 = v7;
  v63 = (v7 + 32);
  v54 = v2;
  v55 = v7 + 8;
  v31 = MEMORY[0x277D84F90];
  v58 = v20;
  for (i = v30; ; v30 = i)
  {
    if (v29 == v30)
    {
      v32 = 1;
      v29 = v30;
      goto LABEL_7;
    }

    if (v29 >= v30)
    {
      break;
    }

    if (__OFADD__(v29, 1))
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_8_9();
    v33 = v53;
    v36 = v54 + v34 + *(v35 + 72) * v29;
    v37 = *(v13 + 48);
    *v53 = v29;
    (*(v35 + 16))(v33 + v37, v36, v66);
    sub_266CC5990(v33, v20, &qword_2800CB7D8, &qword_266DB4A58);
    v32 = 0;
    ++v29;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v20, v32, 1, v13);
    sub_266CC5990(v20, v23, &qword_2800CB7E0, &qword_266DB4A60);
    if (__swift_getEnumTagSinglePayload(v23, 1, v13) == 1)
    {

      OUTLINED_FUNCTION_5();
      return;
    }

    v38 = v13;
    v39 = v64;
    v40 = *v63;
    v41 = v66;
    (*v63)(v64, &v23[*(v13 + 48)], v66);

    sub_266DA94EC();
    sub_266DA94FC();
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    sub_266DA955C();
    (*v61)(v65, v39, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_23();
      sub_266CF9D4C();
      v31 = v51;
    }

    v47 = *(v31 + 16);
    v46 = *(v31 + 24);
    if (v47 >= v46 >> 1)
    {
      OUTLINED_FUNCTION_3_21(v46);
      sub_266CF9D4C();
      v31 = v52;
    }

    v48 = v62;
    v49 = v66;
    (*(v62 + 8))(v64, v66);
    *(v31 + 16) = v47 + 1;
    OUTLINED_FUNCTION_8_9();
    v40(v31 + v50 + *(v48 + 72) * v47, v65, v49);
    v13 = v38;
    v20 = v58;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_266CC5450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_266DA8B5C();
  swift_allocObject();
  v4 = sub_266DA8B4C();
  sub_266DA845C();
  swift_allocObject();
  sub_266DA844C();
  sub_266DA895C();
  swift_allocObject();
  sub_266DA894C();
  v5 = [a1 deviceOwner];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 displayName];

    sub_266DAA70C();
  }

  sub_266DA893C();

  sub_266DA842C();

  sub_266D9BD24(a1);
  if (v8)
  {
    sub_266DA843C();
  }

  sub_266CAB3DC(a1);
  if (v9)
  {
    sub_266DA843C();
  }

  sub_266DA89FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_266DAE3B0;
  *(v10 + 32) = v4;

  sub_266CC5640(v10, a2);
}

uint64_t sub_266CC5640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA824C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7E8, &unk_266DB79F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-v9];
  v11 = sub_266DA86BC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  MEMORY[0x26D5EEFB0](a1, v10);
  sub_266C1825C(v10, &qword_2800CB7E8, &unk_266DB79F0);
  sub_266DA83DC();

  (*(v5 + 32))(a2, v7, v4);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_266CC58B0(void *a1)
{
  v2 = [a1 productNameSemantic];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266CC5920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CC5990(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_26@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v1 + 216) = v3;
  v5 = *(a1 + 48);
  *(v1 + 224) = v5;
  v6 = *(a1 + 56);
  *(v1 + 232) = v6;
  v7 = *(a1 + 64);
  *(v1 + 272) = v7;
  v8 = *(a1 + 65);
  v9 = *(a1 + 72);
  *(v1 + 240) = v9;
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 49) = v8;
  *(v1 + 56) = v9;
}

uint64_t OUTLINED_FUNCTION_11_13()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_13_10()
{
  v1 = *(v0 - 104);
  *(v0 - 96) = v1 + 32;
  *(v0 - 144) = v1 + 8;
  *(v0 - 136) = v1 + 16;
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return sub_266DA810C();
}

void OUTLINED_FUNCTION_19_10(uint64_t a1@<X8>)
{
  *(a1 + 48) = v1;
  *(a1 + 56) = v2;
  *(a1 + 64) = v3;
  *(a1 + 65) = 1;
}

uint64_t OUTLINED_FUNCTION_26_7()
{
}

unint64_t OUTLINED_FUNCTION_27_7(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_266C2CDB0(3);
}

uint64_t sub_266CC5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_2800C9280;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_2800CB7F8);

  v8 = sub_266DA948C();
  v9 = sub_266DAAB0C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v10 = 136315650;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB810, &qword_266DB4A70);
    v12 = MEMORY[0x26D5F12B0](a2, v11);
    v14 = v13;

    v15 = sub_266C22A3C(v12, v14, &v27);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = sub_266DA782C();
    v17 = MEMORY[0x26D5F12B0](a3, v16);
    v19 = v18;

    v20 = sub_266C22A3C(v17, v19, &v27);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2080;
    sub_266CC628C(&qword_2800CB818, MEMORY[0x277D5B778], MEMORY[0x277D5B780]);
    v21 = sub_266DAB13C();
    v23 = v22;

    v24 = sub_266C22A3C(v21, v23, &v27);

    *(v10 + 24) = v24;
    _os_log_impl(&dword_266C08000, v8, v9, "<RootFlow \n preconditionFlows: %s \n prerequisiteFlows: %s \n mainFlow: %s\n>", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D5F2480](v26, -1, -1);
    MEMORY[0x26D5F2480](v10, -1, -1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_266CC5E74()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB7F8);
  v1 = __swift_project_value_buffer(v0, qword_2800CB7F8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CC5FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_266CC5FE4);
}

uint64_t sub_266CC5FE4()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_266DA784C();
  swift_allocObject();

  v3 = sub_266DA783C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE3B0;
  *(inited + 32) = v2;

  sub_266C38390(inited);
  type metadata accessor for EachFlow();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v0[7] = v5;
  v0[8] = v3;
  sub_266CC628C(&qword_2800CB820, type metadata accessor for EachFlow, &unk_266DBB488);
  v0[9] = sub_266DA79DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB828, &qword_266DB4B28);
  sub_266CC62D4();
  sub_266DA7D5C();

  v6 = v0[1];

  return v6();
}

uint64_t sub_266CC61C8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_266C29DCC;

  return sub_266CC5FC0(a1, v4, v5, v6);
}

uint64_t sub_266CC628C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266CC62D4()
{
  result = qword_2800CB830;
  if (!qword_2800CB830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CB828, &qword_266DB4B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB830);
  }

  return result;
}

uint64_t sub_266CC6338()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB838);
  v1 = __swift_project_value_buffer(v0, qword_2800CB838);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AceDevicePinger.init(aceService:useNewPlugin:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_266C0B0D8(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t AceDevicePinger.ping(deviceId:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB850, &qword_266DB4B30);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D47230]) init];
  sub_266CC7538(a1, a2, v11);
  v12 = [objc_allocWithZone(MEMORY[0x277D47238]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266DAE3B0;
  *(v13 + 32) = v11;
  v14 = v11;
  sub_266CC7590(v13, v12);
  v15 = sub_266DAA70C();
  sub_266CC7614(v15, v16, v12);
  sub_266D4E6B4(*(v3 + 40));
  if (qword_2800C9288 != -1)
  {
    OUTLINED_FUNCTION_0_45(&qword_2800C9288);
  }

  v17 = sub_266DA94AC();
  __swift_project_value_buffer(v17, qword_2800CB838);
  sub_266CC7678(v3, &v30);
  v18 = sub_266DA948C();
  v19 = sub_266DAAB0C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    v21 = v31[24];
    sub_266CC76B0(&v30);
    *(v20 + 4) = v21;
    _os_log_impl(&dword_266C08000, v18, v19, "AceDevicePinger processing playSound request. { useNewPlugin: %{BOOL}d }", v20, 8u);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_266CC76B0(&v30);
  }

  sub_266CC7678(v3, &v30);
  v22 = swift_allocObject();
  v23 = *v31;
  *(v22 + 16) = v30;
  *(v22 + 32) = v23;
  *(v22 + 41) = *&v31[9];
  *(v22 + 64) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB858, &qword_266DB4B38);
  swift_allocObject();
  v24 = v12;
  *&v30 = sub_266DA97AC();
  sub_266C230E8(&qword_2800CB860, &qword_2800CB858, &qword_266DB4B38, MEMORY[0x277CBCEB0]);
  sub_266DA984C();

  sub_266C230E8(&qword_2800CB868, &qword_2800CB850, &qword_266DB4B30, MEMORY[0x277CBCC08]);
  v25 = v29;
  v26 = sub_266DA97EC();

  (*(v7 + 8))(v10, v25);
  return v26;
}

uint64_t sub_266CC67DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-1] - v9;
  v11 = sub_266DAA9EC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_266CC7678(a3, &v16);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = v17[0];
  *(v12 + 32) = v16;
  *(v12 + 48) = v13;
  *(v12 + 57) = *(v17 + 9);
  *(v12 + 80) = a4;
  *(v12 + 88) = a1;
  *(v12 + 96) = a2;
  v14 = a4;

  sub_266CD8C08();
}

uint64_t sub_266CC6900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_266DA7EEC();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB870, &qword_266DB4B98);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CC6A18);
}

uint64_t sub_266CC6A18()
{
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = sub_266C29814(0, &qword_2800CB878, 0x277D471B0);
  *v4 = v0;
  v4[1] = sub_266CC6AF4;
  v6 = v0[4];

  return MEMORY[0x2821BB6A0](v6, v3, v5, v2);
}

uint64_t sub_266CC6AF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_266CC6D1C;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_266CC6C1C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266CC6C1C()
{
  v10 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[5];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v4 = v1;
  sub_266CC6F14(v2);
  sub_266C3A088(v2, &qword_2800CB870, &qword_266DB4B98);
  v8 = v4;
  v9 = 0;
  v5 = v4;
  v3(&v8);

  sub_266C9D0D4(v8, v9);

  v6 = v0[1];

  return v6();
}

uint64_t sub_266CC6D1C()
{
  v18 = v0;
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 120);
  if (v3)
  {
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = *(v0 + 56);
    v16 = *(v0 + 40);

    (*(v9 + 32))(v6, v8, v10);
    v11 = *(v9 + 16);
    v11(v5, v6, v10);
    swift_storeEnumTagMultiPayload();
    sub_266CC6F14(v5);
    sub_266C3A088(v5, &qword_2800CB870, &qword_266DB4B98);
    v11(v7, v6, v10);
    sub_266C2D2AC(v7, v17);
    OUTLINED_FUNCTION_3_27();
    v16();
    (*(v9 + 8))(v6, v10);
    v12 = *(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 40);

    OUTLINED_FUNCTION_3_27();
    v13();
    v12 = v4;
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_266CC6F14(uint64_t a1)
{
  v2 = sub_266DA7EEC();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB870, &qword_266DB4B98);
  MEMORY[0x28223BE20](v11);
  v13 = (&v42 - v12);
  sub_266CC7870(a1, &v42 - v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_266C3A088(v13, &qword_2800CB870, &qword_266DB4B98);
    if (qword_2800C9288 != -1)
    {
      OUTLINED_FUNCTION_0_45(&qword_2800C9288);
    }

    v21 = sub_266DA94AC();
    __swift_project_value_buffer(v21, qword_2800CB838);
    v22 = sub_266DA948C();
    v23 = sub_266DAAB0C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_266C08000, v22, v23, "AceDevicePinger playSound succeeded.", v24, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    goto LABEL_11;
  }

  v14 = (*(v4 + 88))(v13, v2);
  if (v14 == *MEMORY[0x277D5BE70])
  {
    (*(v4 + 96))(v13, v2);
    v15 = *v13;
    if (qword_2800C9288 != -1)
    {
      OUTLINED_FUNCTION_0_45(&qword_2800C9288);
    }

    v16 = sub_266DA94AC();
    __swift_project_value_buffer(v16, qword_2800CB838);
    v17 = v15;
    v18 = sub_266DA948C();
    v19 = sub_266DAAAEC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      swift_getErrorValue();
      *(v20 + 4) = sub_266D9D360();

      _os_log_impl(&dword_266C08000, v18, v19, "AceDevicePinger playSound failed with internal error: code %ld", v20, 0xCu);
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }

    return;
  }

  if (v14 == *MEMORY[0x277D5BE80])
  {
    (*(v4 + 96))(v13, v2);
    v25 = *v13;
    if (qword_2800C9288 != -1)
    {
      OUTLINED_FUNCTION_0_45(&qword_2800C9288);
    }

    v26 = sub_266DA94AC();
    __swift_project_value_buffer(v26, qword_2800CB838);
    v22 = v25;
    v27 = sub_266DA948C();
    v28 = sub_266DAAAEC();

    if (!os_log_type_enabled(v27, v28))
    {

      return;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = [v22 dictionary];
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&dword_266C08000, v27, v28, "AceDevicePinger playSound got failure response: %@", v29, 0xCu);
    sub_266C3A088(v30, &qword_2800C9F78, &unk_266DB1430);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

LABEL_11:
    return;
  }

  (*(v4 + 32))(v10, v13, v2);
  if (qword_2800C9288 != -1)
  {
    OUTLINED_FUNCTION_0_45(&qword_2800C9288);
  }

  v32 = sub_266DA94AC();
  __swift_project_value_buffer(v32, qword_2800CB838);
  (*(v4 + 16))(v8, v10, v2);
  v33 = sub_266DA948C();
  v34 = sub_266DAAAEC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v35 = 136315138;
    sub_266CC78E0();
    v36 = sub_266DAB13C();
    v38 = v37;
    v39 = *(v4 + 8);
    v39(v8, v2);
    v40 = sub_266C22A3C(v36, v38, &v43);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_266C08000, v33, v34, "AceDevicePinger playSound failed to submit command: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

    v39(v10, v2);
  }

  else
  {

    v41 = *(v4 + 8);
    v41(v8, v2);
    v41(v10, v2);
  }
}

void sub_266CC7538(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();
  [a3 setDeviceId_];
}

void sub_266CC7590(uint64_t a1, void *a2)
{
  sub_266C29814(0, &qword_2800CAEE0, 0x277D47230);
  v3 = sub_266DAA91C();

  [a2 setDevices_];
}

void sub_266CC7614(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();

  [a3 setAction_];
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

uint64_t sub_266CC7700(uint64_t a1, int a2)
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

uint64_t sub_266CC7740(uint64_t result, int a2, int a3)
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

uint64_t sub_266CC779C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_266C29DCC;

  return sub_266CC6900(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_266CC7870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB870, &qword_266DB4B98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266CC78E0()
{
  result = qword_2800CB880;
  if (!qword_2800CB880)
  {
    sub_266DA7EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB880);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t a1)
{

  return swift_once();
}

id sub_266CC796C(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = *(a1 + 16);
  v3 = *(&v24 + 1);
  v4 = v2;
  if (*(&v24 + 1))
  {
    sub_266CAA834(&v24, v25);
    v3 = sub_266DAA6FC();
    v4 = sub_266CAA8A4(&v24);
  }

  OUTLINED_FUNCTION_0_46(v4, sel_setDeviceClass_);

  if (*(a1 + 8))
  {

    v6 = sub_266DAA6FC();
  }

  else
  {
    v6 = 0;
  }

  OUTLINED_FUNCTION_0_46(v5, sel_setDeviceId_);

  if (*(a1 + 56))
  {

    v8 = sub_266DAA6FC();
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_0_46(v7, sel_setDeviceName_);

  if (*(a1 + 40))
  {

    v10 = sub_266DAA6FC();
  }

  else
  {
    v10 = 0;
  }

  OUTLINED_FUNCTION_0_46(v9, sel_setProductName_);

  v11 = *(a1 + 96);
  if (v11 == 1)
  {
    v12 = sub_266C9D1E0(a1);
    v13 = 0;
  }

  else
  {
    v14 = *(a1 + 88);
    v15 = *(a1 + 120);
    v25[1] = *(a1 + 104);
    v25[2] = v15;
    v25[3] = *(a1 + 136);
    v26 = *(a1 + 152);
    *&v25[0] = v14;
    *(&v25[0] + 1) = v11;
    sub_266CC7B8C();
    v19[0] = v14;
    v19[1] = v11;
    v16 = *(a1 + 120);
    v20 = *(a1 + 104);
    v21 = v16;
    v22 = *(a1 + 136);
    v23 = *(a1 + 152);
    sub_266CC7BD0(v19, &v18);
    v13 = sub_266CAA660(v25);
    v12 = sub_266C9D1E0(a1);
  }

  OUTLINED_FUNCTION_0_46(v12, sel_setOwner_);

  return v2;
}

unint64_t sub_266CC7B8C()
{
  result = qword_2800CB888;
  if (!qword_2800CB888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CB888);
  }

  return result;
}

id OUTLINED_FUNCTION_0_46(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_266CC7C44()
{
  v1 = sub_266D9BD18(v0);
  if (v2)
  {
    if (v1 == 1296389193 && v2 == 0xE400000000000000)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_266DAB17C();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_266CC7CC0(void *a1)
{
  v3 = sub_266DA750C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FindmyDevice(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = v1;
  sub_266DA7AFC();
  return sub_266D9AF54(v6, v5, 0, 0xF000000000000000, 0, 0, 0, 0);
}

uint64_t sub_266CC7DA4()
{
  sub_266C39CC0(v0, &selRef_productType);
  if (v1)
  {
    sub_266C680F8();
    v2 = sub_266DAACBC();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_266CC7E38(void *a1)
{
  v21 = sub_266C39CC0(a1, &selRef_deviceId);
  v3 = v2;
  v4 = sub_266C39CC0(a1, &selRef_deviceName);
  v6 = v5;
  v7 = sub_266C39CC0(a1, &selRef_deviceClass);
  v9 = v8;
  v10 = [a1 owner];
  if (v10)
  {
    sub_266C9A2C4();
    sub_266C37440();
    v10 = v11;
  }

  v12 = sub_266C39CC0(a1, &selRef_productName);
  v14 = v13;
  v15 = [a1 thisDevice];
  v16 = sub_266C39CC0(a1, &selRef_deviceLocality);
  v18 = sub_266C29BAC(v16, v17);
  v19 = DeviceDetail.__allocating_init(identifier:unifiedIdentifier:deviceName:deviceClass:deviceOwner:productName:productType:productNameSemantic:deviceClassSemantic:category:emoji:isThisDevice:locality:isEarbuds:isHeadphones:canPlaySound:specificityLevel:location:)(v21, v3, 0, 0, v4, v6, v7, v9, v10, v12, v14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v15, v18, 0, 0, 1u, 2, 0);

  return v19;
}

uint64_t sub_266CC7FB0()
{
  v1 = [v0 isEarbuds];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 BOOLValue];

    if (v3)
    {
      return 1;
    }
  }

  v5 = [v0 isHeadphones];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v4 = [v5 BOOLValue];

  return v4;
}

uint64_t sub_266CC8050@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE10, &qword_266DB30E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_266CC8EEC();
  if (v5)
  {
    if (v5 != 1)
    {
      if (v6)
      {
        v7 = sub_266DA94FC();
        __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
        sub_266DA953C();
        v8 = sub_266DA957C();
        return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
      }
    }
  }

  else
  {
  }

  v10 = sub_266DA957C();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
}

id sub_266CC81C0(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(a4 + 32);
  v10 = *(a4 + 40);
  v11 = *(a4 + 48);
  sub_266C233D0(a1, v20);
  v12 = *(a4 + 8);
  if (v12)
  {
    v13 = *a4;
    v14 = (v11 >> 8) & 1;

    sub_266C3A088(a4, &qword_2800CB890, &unk_266DB4BA0);
  }

  else
  {
    LOBYTE(v14) = 0;
    LOBYTE(v11) = 0;
    v9 = 0;
    v10 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
  }

  v15 = sub_266CC82D0(v20, a2, a3, v13, v12, v7, v8, v9, v10, v11 & 1, v14, a5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v15;
}

id sub_266CC82D0(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12)
{
  v91 = a4;
  v87 = a8;
  v88 = a7;
  v89 = a6;
  v90 = a5;
  v82 = a12;
  v83 = a11;
  v84 = a10;
  v85 = a9;
  v86 = a3;
  v79 = type metadata accessor for Location(0);
  v14 = MEMORY[0x28223BE20](v79);
  v67 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v66 = &v66 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  v23 = a2[1];
  v92 = *a2;
  v93 = v23;
  v24 = a2[3];
  v94 = a2[2];
  v95 = v24;
  OUTLINED_FUNCTION_0_47();
  v25 = OUTLINED_FUNCTION_1_33();
  v27 = v26(v25);
  v80 = v28;
  v81 = v27;
  OUTLINED_FUNCTION_0_47();
  v29 = OUTLINED_FUNCTION_1_33();
  v78 = v30(v29);
  v77 = v31;
  OUTLINED_FUNCTION_0_47();
  v32 = OUTLINED_FUNCTION_1_33();
  v76 = v33(v32);
  v75 = v34;
  OUTLINED_FUNCTION_0_47();
  v35 = OUTLINED_FUNCTION_1_33();
  v74 = v36(v35);
  v73 = v37;
  sub_266C9A2C4();
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  (*(v39 + 88))(v38, v39);
  sub_266C367A4();
  v72 = v40;
  OUTLINED_FUNCTION_0_47();
  v41 = OUTLINED_FUNCTION_1_33();
  v71 = v42(v41);
  v70 = v43;
  OUTLINED_FUNCTION_0_47();
  v44 = OUTLINED_FUNCTION_1_33();
  v69 = v45(v44);
  v68 = v46;
  OUTLINED_FUNCTION_0_47();
  v47 = OUTLINED_FUNCTION_1_33();
  v49 = v48(v47);
  v51 = v50;
  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  v54 = (*(v53 + 96))(v52, v53);
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  v57 = (*(v56 + 136))(v55, v56);
  v59 = a1[3];
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v59);
  (*(v58 + 104))(v59, v58);
  sub_266C36200(v22, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v79) == 1)
  {
    sub_266C3A088(v22, &qword_2800C9B20, &unk_266DB1EC0);
    v60 = 0;
  }

  else
  {
    v61 = v20;
    v62 = v66;
    sub_266C234EC(v61, v66);
    type metadata accessor for SpeakableLocation();
    v63 = v67;
    sub_266C24F5C(v62, v67);
    v60 = sub_266D6CE4C(v63);
    sub_266C24C6C(v62);
    sub_266C3A088(v22, &qword_2800C9B20, &unk_266DB1EC0);
  }

  v64 = DeviceDetail.__allocating_init(identifier:unifiedIdentifier:deviceName:deviceClass:deviceOwner:productName:productType:productNameSemantic:deviceClassSemantic:category:emoji:isThisDevice:locality:isEarbuds:isHeadphones:canPlaySound:specificityLevel:location:)(v81, v80, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v91, v90, v89, v88, v87, v85, v49, v51, v54 & 1, v86, v84 & 1, v83 & 1, v57 & 1, v82, v60);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v64;
}

id DeviceDetail.__allocating_init(identifier:unifiedIdentifier:deviceName:deviceClass:deviceOwner:productName:productType:productNameSemantic:deviceClassSemantic:category:emoji:isThisDevice:locality:isEarbuds:isHeadphones:canPlaySound:specificityLevel:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, unsigned __int8 a25, unsigned __int8 a26, uint64_t a27, void *a28)
{
  v29 = v28;
  if (a2)
  {
    v33 = sub_266DAA6FC();
  }

  else
  {
    v33 = 0;
  }

  v34 = objc_allocWithZone(v29);

  v35 = sub_266DAA6FC();

  v36 = [v34 initWithIdentifier:v33 displayString:v35];

  v37 = v36;
  if (a4)
  {
    v38 = sub_266DAA6FC();
  }

  else
  {
    v38 = 0;
  }

  OUTLINED_FUNCTION_2_32(v37, sel_setUnifiedIdentifier_);

  if (a8)
  {
    v39 = sub_266DAA6FC();
  }

  else
  {
    v39 = 0;
  }

  [v36 setDeviceClass_];

  if (a6)
  {
    v40 = sub_266DAA6FC();
  }

  else
  {
    v40 = 0;
  }

  [v36 setDeviceName_];

  [v36 setDeviceOwner_];
  if (a11)
  {
    v41 = sub_266DAA6FC();
  }

  else
  {
    v41 = 0;
  }

  [v36 setProductName_];

  if (a13)
  {
    v42 = sub_266DAA6FC();
  }

  else
  {
    v42 = 0;
  }

  [v36 setProductType_];

  if (a19)
  {
    v43 = sub_266DAA6FC();
  }

  else
  {
    v43 = 0;
  }

  HIDWORD(v54) = a26;
  LODWORD(v54) = a25;
  [v36 setCategory_];

  if (a21)
  {
    v44 = sub_266DAA6FC();
  }

  else
  {
    v44 = 0;
  }

  [v36 setEmoji_];

  v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v36 setIsThisDevice_];

  OUTLINED_FUNCTION_2_32(v46, sel_setDeviceLocality_);
  v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_2_32(v47, sel_setIsEarbuds_);

  v48 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_2_32(v48, sel_setIsHeadphones_);

  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_2_32(v49, sel_setCanPlaySound_);

  if (a15)
  {
    v51 = sub_266DAA6FC();
  }

  else
  {
    v51 = 0;
  }

  OUTLINED_FUNCTION_2_32(v50, sel_setProductNameSemantic_);

  if (a17)
  {
    v52 = sub_266DAA6FC();
  }

  else
  {
    v52 = 0;
  }

  [v36 setDeviceClassSemantic_];

  [v36 setDeviceSpecificityLevel_];
  [v36 setLocation_];

  return v36;
}

uint64_t sub_266CC8C30()
{
  sub_266DAADFC();

  sub_266D9BD18(v0);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_4_24();

  MEMORY[0x26D5F1170](10016, 0xE200000000000000);
  sub_266CAB3DC(v0);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_4_24();

  MEMORY[0x26D5F1170](0x6375646F72702027, 0xEB00000000203A74);
  sub_266D9BD24(v0);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_4_24();

  MEMORY[0x26D5F1170](0x203A65707974202CLL, 0xE800000000000000);
  sub_266C39CC0(v0, &selRef_productType);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_4_24();

  MEMORY[0x26D5F1170](0x3A72656E776F202CLL, 0xE900000000000020);
  v1 = [v0 deviceOwner];
  if (v1 && (v2 = sub_266C22F54(v1), v3))
  {
    v4 = v3;
  }

  else
  {

    v4 = 0xEB00000000644972;
    v2 = 0x656E776F2D6C696ELL;
  }

  MEMORY[0x26D5F1170](v2, v4);

  MEMORY[0x26D5F1170](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_266CC8E48()
{
  if ((sub_266CC7C44() & 1) == 0)
  {
    return 1;
  }

  v1 = sub_266C39CC0(v0, &selRef_productType);
  if (!v2)
  {
    return 2;
  }

  if (v1 != 0x2C30676154726941 || v2 != 0xE900000000000030)
  {
    v4 = sub_266DAB17C();

    result = 0;
    if (v4)
    {
      return result;
    }

    return 2;
  }

  return 0;
}

uint64_t sub_266CC8EEC()
{
  v1 = v0;
  v2 = sub_266DA85BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DA845C();
  swift_allocObject();
  v6 = sub_266DA844C();
  sub_266CAB3DC(v1);
  if (v7)
  {
    sub_266DA843C();
  }

  sub_266C1CEB4(v1);
  if (!v8)
  {

    return 1;
  }

  sub_266DA858C();
  sub_266DA852C();
  (*(v3 + 8))(v5, v2);
  v9 = MEMORY[0x26D5EF140](v6);

  if (!v9)
  {

    return 1;
  }

  return v9;
}

id OUTLINED_FUNCTION_2_32(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_4_24()
{

  JUMPOUT(0x26D5F1170);
}

uint64_t static Snippets.setSharedLocationVisibility(_:alreadySet:meDeviceInfo:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = a4 + *(type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0) + 24);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v8 + 24) = 0;
  sub_266C4DBA4(v4, v5, v6);
  sub_266DA751C();
  sub_266DA751C();
  sub_266C4DBB8(*v8, *(v8 + 8), *(v8 + 16));
  *v8 = v4;
  *(v8 + 8) = v5;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  type metadata accessor for Snippets(0);
  return swift_storeEnumTagMultiPayload();
}

__n128 Snippets.SetSharedLocationVisibilityResult.init(visibility:alreadySet:meDeviceInfo:)@<Q0>(__n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *a3;
  v4 = a3[1].n128_u64[0];
  v5 = a3[1].n128_u8[8];
  v6 = (a4 + *(type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0) + 24));
  OUTLINED_FUNCTION_8_10();
  sub_266DA751C();
  sub_266DA751C();
  v7 = OUTLINED_FUNCTION_7_18();
  sub_266C4DBB8(v7, v8, v9);
  result = v11;
  *v6 = v11;
  v6[1].n128_u64[0] = v4;
  v6[1].n128_u8[8] = v5;
  return result;
}

uint64_t type metadata accessor for Snippets.SetSharedLocationVisibilityResult(uint64_t a1)
{
  result = qword_2800CB8F0;
  if (!qword_2800CB8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippets.SetSharedLocationVisibilityResult.alreadySet.getter()
{
  type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
  sub_266DA753C();
  return v1;
}

uint64_t Snippets.SetSharedLocationVisibilityResult.alreadySet.setter(char a1)
{
  type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
  return sub_266DA754C();
}

uint64_t (*Snippets.SetSharedLocationVisibilityResult.alreadySet.modify(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
  v2[4] = sub_266DA752C();
  return sub_266CC9450;
}

void sub_266CC9450(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t Snippets.SetSharedLocationVisibilityResult.meDeviceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);

  return sub_266C4DBA4(v4, v5, v6);
}

__n128 Snippets.SetSharedLocationVisibilityResult.meDeviceInfo.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = v1 + *(type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0) + 24);
  sub_266C4DBB8(*v4, *(v4 + 8), *(v4 + 16));
  result = v6;
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t Snippets.SetSharedLocationVisibilityResult.visibility.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  sub_266DA753C();
  result = SharedLocationVisibility.init(rawValue:)(v2);
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t (*Snippets.SetSharedLocationVisibilityResult.visibility.modify(uint64_t *a1))()
{
  a1[2] = v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  sub_266DA753C();
  v3 = SharedLocationVisibility.init(rawValue:)(a1[1]);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  *a1 = v5;
  return sub_266CC96D8;
}

uint64_t Snippets.SetSharedLocationVisibilityResult.isVisible.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  sub_266DA753C();
  v0 = SharedLocationVisibility.init(rawValue:)(v3) == 1;
  return v0 & ~v1;
}

uint64_t (*Snippets.SetSharedLocationVisibilityResult.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = Snippets.SetSharedLocationVisibilityResult.isVisible.getter() & 1;
  return sub_266CC97E8;
}

uint64_t sub_266CC97E8(uint64_t a1)
{
  v1 = 1;
  if (!*(a1 + 16))
  {
    v1 = 2;
  }

  *a1 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  return sub_266DA754C();
}

BOOL static Snippets.SetSharedLocationVisibilityResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_266DA755C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
  if ((sub_266DA755C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = *(a1 + v5 + 24);
  v10 = a2 + v5;
  v11 = *v10;
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v8 != 1)
  {
    if (v12 == 1)
    {
      v21 = OUTLINED_FUNCTION_0_48();
      sub_266C4DBA4(v21, v22, v23);
      v24 = OUTLINED_FUNCTION_83();
      sub_266C4DBA4(v24, v25, 1);
      v26 = OUTLINED_FUNCTION_0_48();
      sub_266C4DBA4(v26, v27, v28);

LABEL_9:
      v32 = OUTLINED_FUNCTION_0_48();
      sub_266C4DBB8(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_1_34();
LABEL_14:
      sub_266C4DBB8(v35, v36, v37);
      return 0;
    }

    if ((v7 ^ v11))
    {
      goto LABEL_11;
    }

    if (v8)
    {
      if (!v12)
      {
LABEL_11:
        v38 = OUTLINED_FUNCTION_0_48();
        sub_266C4DBA4(v38, v39, v40);
        v41 = v8;
LABEL_12:
        v42 = OUTLINED_FUNCTION_1_34();
        sub_266C4DBA4(v42, v43, v44);
        v45 = OUTLINED_FUNCTION_14_2();
        sub_266C4DBA4(v45, v46, v41);
        v47 = OUTLINED_FUNCTION_1_34();
        sub_266C4DBB8(v47, v48, v49);
LABEL_13:

        v35 = OUTLINED_FUNCTION_0_48();
        goto LABEL_14;
      }

      if (v6 != *(v10 + 8) || v8 != v12)
      {
        v52 = sub_266DAB17C();
        v53 = OUTLINED_FUNCTION_0_48();
        sub_266C4DBA4(v53, v54, v55);
        v56 = OUTLINED_FUNCTION_1_34();
        sub_266C4DBA4(v56, v57, v58);
        v59 = OUTLINED_FUNCTION_0_48();
        sub_266C4DBA4(v59, v60, v61);
        v62 = OUTLINED_FUNCTION_1_34();
        sub_266C4DBB8(v62, v63, v64);
        if ((v52 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_29:

        v80 = OUTLINED_FUNCTION_0_48();
        sub_266C4DBB8(v80, v81, v82);
        return ((v9 ^ v13) & 1) == 0;
      }

      v74 = OUTLINED_FUNCTION_0_48();
      sub_266C4DBA4(v74, v75, v76);
      sub_266C4DBA4(v11, v6, v8);
      v77 = OUTLINED_FUNCTION_0_48();
      sub_266C4DBA4(v77, v78, v79);
      v71 = v11;
      v72 = v6;
      v73 = v8;
    }

    else
    {
      v65 = OUTLINED_FUNCTION_14_2();
      sub_266C4DBA4(v65, v66, 0);
      v41 = 0;
      if (v12)
      {
        goto LABEL_12;
      }

      v67 = OUTLINED_FUNCTION_83();
      sub_266C4DBA4(v67, v68, 0);
      v69 = OUTLINED_FUNCTION_14_2();
      sub_266C4DBA4(v69, v70, 0);
      v71 = OUTLINED_FUNCTION_83();
      v73 = 0;
    }

    sub_266C4DBB8(v71, v72, v73);
    goto LABEL_29;
  }

  v14 = OUTLINED_FUNCTION_14_2();
  sub_266C4DBA4(v14, v15, 1);
  if (v12 != 1)
  {
    v29 = OUTLINED_FUNCTION_1_34();
    sub_266C4DBA4(v29, v30, v31);
    goto LABEL_9;
  }

  v16 = 1;
  v17 = OUTLINED_FUNCTION_83();
  sub_266C4DBA4(v17, v18, 1);
  v19 = OUTLINED_FUNCTION_14_2();
  sub_266C4DBB8(v19, v20, 1);
  return v16;
}

uint64_t sub_266CC9AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6962697369765FLL && a2 == 0xEB00000000797469;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5379646165726C61 && a2 == 0xEA00000000007465;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656369766544656DLL && a2 == 0xEC0000006F666E49)
    {

      return 2;
    }

    else
    {
      v8 = sub_266DAB17C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_266CC9BE4(char a1)
{
  if (!a1)
  {
    return 0x6C6962697369765FLL;
  }

  if (a1 == 1)
  {
    return 0x5379646165726C61;
  }

  return 0x656369766544656DLL;
}

uint64_t sub_266CC9C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CC9AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CC9C80(uint64_t a1)
{
  v2 = sub_266CCA3B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CC9CBC(uint64_t a1)
{
  v2 = sub_266CCA3B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.SetSharedLocationVisibilityResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB898, &qword_266DB4BB0);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CCA3B0();
  sub_266DAB36C();
  LOBYTE(v23) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  OUTLINED_FUNCTION_4_25();
  sub_266CCA4C8(v11, v12);
  OUTLINED_FUNCTION_12_14(v3);
  if (!v2)
  {
    v13 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
    v14 = *(v13 + 20);
    LOBYTE(v23) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
    OUTLINED_FUNCTION_4_25();
    sub_266CCA404(v15, v16);
    OUTLINED_FUNCTION_12_14(v3 + v14);
    v17 = v3 + *(v13 + 24);
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    v23 = *v17;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v22[15] = 2;
    sub_266C4DBA4(v23, v18, v19);
    sub_266CCA474();
    sub_266DAB0DC();
    sub_266C4DBB8(v23, v24, v25);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Snippets.SetSharedLocationVisibilityResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
  OUTLINED_FUNCTION_0_2();
  v42 = v4;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v44 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  OUTLINED_FUNCTION_0_2();
  v43 = v8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v46 = &v40 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB8C0, &qword_266DB4BB8);
  OUTLINED_FUNCTION_0_2();
  v47 = v12;
  *&v48 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v17[*(v15 + 24)];
  OUTLINED_FUNCTION_8_10();
  v19 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_266CCA3B0();
  sub_266DAB34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v49);
    v26 = OUTLINED_FUNCTION_7_18();
    return sub_266C4DBB8(v26, v27, v28);
  }

  else
  {
    v40 = v14;
    v20 = v17;
    v21 = v44;
    v22 = v45;
    LOBYTE(v50) = 0;
    OUTLINED_FUNCTION_5_24();
    sub_266CCA4C8(v23, v24);
    v25 = v46;
    sub_266DAB05C();
    v29 = *(v43 + 32);
    v46 = v7;
    v29(v20, v25);
    LOBYTE(v50) = 1;
    OUTLINED_FUNCTION_5_24();
    sub_266CCA404(v30, v31);
    sub_266DAB05C();
    (*(v42 + 32))(v20 + *(v40 + 20), v21, v22);
    v53 = 2;
    sub_266CCA538();
    sub_266DAB00C();
    v32 = OUTLINED_FUNCTION_9_12();
    v33(v32, v48);
    v48 = v50;
    v34 = v51;
    v35 = v52;
    v36 = OUTLINED_FUNCTION_7_18();
    sub_266C4DBB8(v36, v37, v38);
    *v18 = v48;
    *(v18 + 2) = v34;
    v18[24] = v35;
    sub_266CCA58C(v20, v41);
    __swift_destroy_boxed_opaque_existential_0(v49);
    return sub_266CCA5F0(v20);
  }
}

unint64_t sub_266CCA3B0()
{
  result = qword_2800CB8A0;
  if (!qword_2800CB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB8A0);
  }

  return result;
}

uint64_t sub_266CCA404(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA068, &qword_266DAFC30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266CCA474()
{
  result = qword_2800CB8B8;
  if (!qword_2800CB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB8B8);
  }

  return result;
}

uint64_t sub_266CCA4C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA060, &unk_266DB1040);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266CCA538()
{
  result = qword_2800CB8D8;
  if (!qword_2800CB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB8D8);
  }

  return result;
}

uint64_t sub_266CCA58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CCA5F0(uint64_t a1)
{
  v2 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266CCA6B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Snippets.SetSharedLocationVisibilityResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_266CCA720(uint64_t a1)
{
  sub_266CCA828(319, &qword_2800CB900, MEMORY[0x277D83B88], MEMORY[0x277D637C8]);
  if (v1 <= 0x3F)
  {
    sub_266CCA828(319, &qword_2800CB908, MEMORY[0x277D839B0], MEMORY[0x277D637C8]);
    if (v2 <= 0x3F)
    {
      sub_266CCA828(319, &qword_2800CB910, &type metadata for MeDeviceInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266CCA828(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *_s33SetSharedLocationVisibilityResultV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266CCA958()
{
  result = qword_2800CB918;
  if (!qword_2800CB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB918);
  }

  return result;
}

unint64_t sub_266CCA9B0()
{
  result = qword_2800CB920;
  if (!qword_2800CB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB920);
  }

  return result;
}

unint64_t sub_266CCAA08()
{
  result = qword_2800CB928;
  if (!qword_2800CB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB928);
  }

  return result;
}

void OUTLINED_FUNCTION_8_10()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1)
{

  return sub_266DAB11C();
}

uint64_t sub_266CCAB04(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(319, v2, *(a1 + 88), v3);
    if (v6 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_266CCABFC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB930);
  v1 = __swift_project_value_buffer(v0, qword_2800CB930);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266CCACC4()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_24_7();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_24_7();
  v6 = *(v5 + 88);
  v8 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(0, v4, v6, v7);
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  OUTLINED_FUNCTION_24_7();
  v15 = *(v14 + 128);
  OUTLINED_FUNCTION_9_13(v0 + v15);
  v33 = v10;
  v16 = *(v10 + 16);
  v16(v13, v0 + v15, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v21 = v13[8];
    *v2 = *v13;
    *(v2 + 8) = v21;
    v22 = *MEMORY[0x277D5BC30];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_35_4(AssociatedTypeWitness);
    OUTLINED_FUNCTION_15_15();
    sub_266DA7C6C();
    OUTLINED_FUNCTION_3_29();
    (*(v24 + 104))(v2, v22);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v19 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_35_4(v19);
    OUTLINED_FUNCTION_15_15();
    sub_266DA7C6C();
    OUTLINED_FUNCTION_3_29();
    (*(v20 + 32))(v2, v13);
  }

  else
  {
    type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError(0, v4, v6, v18);
    OUTLINED_FUNCTION_0_49();
    swift_getWitnessTable();
    v32 = swift_allocError();
    v25 = v2;
    v27 = v26;
    v16(v26, v0 + v15, v8);
    __swift_storeEnumTagSinglePayload(v27, 0, 2, v8);
    *v25 = v32;
    *(v25 + 8) = 0;
    v28 = *MEMORY[0x277D5BC30];
    v29 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_35_4(v29);
    OUTLINED_FUNCTION_15_15();
    sub_266DA7C6C();
    OUTLINED_FUNCTION_3_29();
    (*(v30 + 104))(v25, v28);
    (*(v33 + 8))(v13, v8);
  }

  OUTLINED_FUNCTION_5();
}

void sub_266CCAFA0()
{
  OUTLINED_FUNCTION_6();
  v64 = v2;
  v65 = v1;
  v3 = *v0;
  sub_266DA7D9C();
  OUTLINED_FUNCTION_0_2();
  v62 = v5;
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v61 = v7 - v6;
  v8 = v3[10];
  v9 = v3[11];
  v11 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(0, v8, v9, v10);
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_5();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = v3[16];
  OUTLINED_FUNCTION_9_13(&v0[v21]);
  v60 = v13;
  v22 = *(v13 + 16);
  v22(v20, &v0[v21], v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v24 = *v20;
      v25 = *(v20 + 1);
      sub_266CCB484();
      goto LABEL_9;
    case 2u:
      v24 = *v20;
      v25 = *(v20 + 1);
      sub_266CCBD0C();
LABEL_9:

      break;
    case 3u:
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35(&qword_2800C9290);
      }

      v26 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v26, qword_2800CB930);
      v27 = sub_266DA948C();
      v28 = sub_266DAAB0C();
      if (OUTLINED_FUNCTION_95(v28))
      {
        v29 = OUTLINED_FUNCTION_11();
        *v29 = 0;
        _os_log_impl(&dword_266C08000, v27, v3, "ConfirmIntentWithUnlockFlow is complete. Exiting.", v29, 2u);
        OUTLINED_FUNCTION_7_19();
      }

      v30 = v61;
      sub_266DA7D7C();
      v65(v30);
      v31 = OUTLINED_FUNCTION_19_11();
      v32(v31);
      (*(v60 + 8))(v20, v11);
      break;
    case 4u:
      v33 = *v20;
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35(&qword_2800C9290);
      }

      v34 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v34, qword_2800CB930);
      v35 = v33;
      v36 = sub_266DA948C();
      v37 = sub_266DAAAEC();

      if (os_log_type_enabled(v36, v37))
      {
        OUTLINED_FUNCTION_14_0();
        v38 = OUTLINED_FUNCTION_27_8();
        v66 = v33;
        v67 = v38;
        *v17 = 136315138;
        v39 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
        v40 = sub_266DAA72C();
        v42 = sub_266C22A3C(v40, v41, &v67);

        *(v17 + 4) = v42;
        OUTLINED_FUNCTION_22_8();
        _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_7_19();
      }

      v48 = v61;
      sub_266DA7D7C();
      v65(v48);

      v49 = OUTLINED_FUNCTION_19_11();
      v51(v49, v50);
      break;
    default:
      type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError(0, v8, v9, v23);
      OUTLINED_FUNCTION_0_49();
      swift_getWitnessTable();
      v52 = swift_allocError();
      v54 = v53;
      v22(v53, &v0[v21], v11);
      __swift_storeEnumTagSinglePayload(v54, 0, 2, v11);
      *v17 = v52;
      *(v17 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_25(&v0[v21]);
      OUTLINED_FUNCTION_30_6();
      (*(v55 + 40))(&v0[v21], v17, v11);
      swift_endAccess();
      v56 = v61;
      sub_266DA7D7C();
      v65(v56);
      v57 = OUTLINED_FUNCTION_19_11();
      v58(v57);
      (*(v52 + 8))(v20, v11);
      break;
  }

  OUTLINED_FUNCTION_5();
}

void sub_266CCB484()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v89 = v4;
  v6 = v5;
  v87 = v7;
  v8 = *v0;
  v9 = *(v8 + 80);
  v10 = *(v9 - 8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  v14 = sub_266DA7D9C();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_6();
  v92 = v19 - v18;
  v20 = *(v8 + 88);
  type metadata accessor for ConfirmIntentWithUnlockFlow.State(0, v9, v20, v21);
  OUTLINED_FUNCTION_0_2();
  v90 = v23;
  v91 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  v26 = (&v83 - v25);
  v88 = v6;
  v27 = [v6 _requiresAuthentication];
  v93 = v3;
  if (v27)
  {
    v83 = v20;
    v84 = v10;
    v85 = v16;
    v86 = v14;
    OUTLINED_FUNCTION_8_11();
    v29 = (v1 + *(v28 + 104));
    v30 = v29[3];
    v31 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v30);
    if (sub_266C6A310(v30, v31) & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v29, v29[3]), (sub_266DA7B7C()))
    {
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35(&qword_2800C9290);
      }

      v32 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v32, qword_2800CB930);
      v33 = sub_266DA948C();
      v34 = sub_266DAAB0C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_11();
        *v35 = 0;
        _os_log_impl(&dword_266C08000, v33, v34, "ConfirmIntentWithUnlockFlow cannot request device unlock. Initiating Handoff", v35, 2u);
        OUTLINED_FUNCTION_6_1();
      }

      sub_266DA77CC();
      OUTLINED_FUNCTION_8_11();
      (*(v84 + 16))(v13, v1 + *(v36 + 96), v9);
      sub_266C233D0(v29, v95);
      OUTLINED_FUNCTION_8_11();
      sub_266C233D0(v1 + *(v37 + 112), &v94);
      v38 = sub_266DA77BC();
      v39 = v91;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_11();
      v41 = *(v40 + 128);
      OUTLINED_FUNCTION_5_25(v1 + v41);
      (*(v90 + 40))(v1 + v41, v26, v39);
      swift_endAccess();
      v95[0] = v38;
      v42 = sub_266CCBC3C(v1);
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v42;
      *(v45 + 24) = v44;
      OUTLINED_FUNCTION_30_6();
      sub_266DA7D2C();

      v46 = OUTLINED_FUNCTION_21_11();
      v47(v46);

      v16 = v85;
      v14 = v86;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB730, &qword_266DB46F8);
      sub_266DA788C();
      *(swift_allocObject() + 16) = xmmword_266DAE4A0;
      OUTLINED_FUNCTION_8_11();
      v62 = *(v61 + 96);
      v95[3] = v9;
      v95[4] = *(v83 + 24);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v95);
      (*(v84 + 16))(boxed_opaque_existential_1, v1 + v62, v9);
      sub_266DA787C();
      __swift_destroy_boxed_opaque_existential_0(v95);
      v64 = sub_266DA756C();

      v66 = v87;
      v65 = v88;
      *v26 = v87;
      v26[1] = v65;
      v67 = v91;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_11();
      v69 = *(v68 + 128);
      OUTLINED_FUNCTION_5_25(v1 + v69);
      v70 = *(v90 + 40);
      v71 = v66;
      v72 = v65;
      v70(v1 + v69, v26, v67);
      swift_endAccess();
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35(&qword_2800C9290);
      }

      v73 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v73, qword_2800CB930);
      v74 = sub_266DA948C();
      v75 = sub_266DAAB0C();
      v76 = OUTLINED_FUNCTION_95(v75);
      v16 = v85;
      v14 = v86;
      if (v76)
      {
        v77 = OUTLINED_FUNCTION_11();
        *v77 = 0;
        _os_log_impl(&dword_266C08000, v74, v70, "ConfirmIntentWithUnlockFlow: pushing UnlockDeviceFlow.", v77, 2u);
        OUTLINED_FUNCTION_6_1();
      }

      v95[0] = v64;
      sub_266DA784C();
      sub_266DA799C();
      v42 = sub_266CCBCA4(v1);
      v79 = v78;
      v80 = swift_allocObject();
      *(v80 + 16) = v42;
      *(v80 + 24) = v79;
      OUTLINED_FUNCTION_30_6();
      sub_266DA7D3C();

      v81 = OUTLINED_FUNCTION_21_11();
      v82(v81);
    }
  }

  else
  {
    if (qword_2800C9290 != -1)
    {
      OUTLINED_FUNCTION_1_35(&qword_2800C9290);
    }

    v48 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v48, qword_2800CB930);
    v49 = sub_266DA948C();
    v50 = sub_266DAAB0C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_11();
      *v51 = 0;
      _os_log_impl(&dword_266C08000, v49, v50, "ConfirmIntentWithUnlockFlow: The intent response does not require authentication, ready to confirm.", v51, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v52 = v87;
    v53 = v88;
    *v26 = v87;
    v26[1] = v53;
    v42 = v91;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_11();
    v55 = *(v54 + 128);
    OUTLINED_FUNCTION_5_25(v1 + v55);
    v56 = *(v90 + 40);
    v57 = v52;
    v58 = v53;
    v56(v1 + v55, v26, v42);
    swift_endAccess();
    OUTLINED_FUNCTION_30_6();
    sub_266DA7D1C();
    v59 = OUTLINED_FUNCTION_21_11();
    v60(v59);
  }

  (*(v16 + 8))(v42, v14);
  OUTLINED_FUNCTION_5();
}

void sub_266CCBD0C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v46 = v3;
  v47 = v2;
  v5 = v4;
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB458, &unk_266DB4F10);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = v6[11];
  v44 = v6[10];
  v12 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(0, v44, v10, v11);
  OUTLINED_FUNCTION_0_2();
  v14 = v13;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v45 = sub_266DA7D9C();
  OUTLINED_FUNCTION_0_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_6();
  v23 = v22 - v21;
  v24 = *(v1 + v6[15]);
  if (v24)
  {
    v25 = qword_2800C9290;

    if (v25 != -1)
    {
      OUTLINED_FUNCTION_1_35(&qword_2800C9290);
    }

    v26 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v26, qword_2800CB930);
    v27 = sub_266DA948C();
    v28 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_95(v28))
    {
      v29 = OUTLINED_FUNCTION_11();
      *v29 = 0;
      _os_log_impl(&dword_266C08000, v27, v9, "ConfirmIntentWithUnlockFlow: pushing inner confirm intent flow.", v29, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v48 = v24;
    sub_266CCC1E0(v1);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_15_15();
    sub_266DA76BC();
    swift_getWitnessTable();
    sub_266DA7D2C();

    v47(v23);
  }

  else
  {
    v42 = v5;
    v43 = v14;
    if (qword_2800C9290 != -1)
    {
      OUTLINED_FUNCTION_1_35(&qword_2800C9290);
    }

    v30 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v30, qword_2800CB930);
    v31 = sub_266DA948C();
    v32 = sub_266DAAB0C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_11();
      *v33 = 0;
      _os_log_impl(&dword_266C08000, v31, v32, "ConfirmIntentWithUnlockFlow: Inner confirmation flow is nil. Sending successfully confirmed intent response.", v33, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v34 = *MEMORY[0x277D5BED8];
    v35 = sub_266DA7F5C();
    (*(*(v35 - 8) + 104))(v9, v34, v35);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v35);
    swift_getAssociatedTypeWitness();
    v36 = v42;
    sub_266DA7F1C();
    v37 = *MEMORY[0x277D5BC38];
    sub_266DA7F2C();
    OUTLINED_FUNCTION_15_15();
    sub_266DA7C6C();
    OUTLINED_FUNCTION_3_29();
    (*(v38 + 104))(v17, v37);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_11();
    v40 = *(v39 + 128);
    swift_beginAccess();
    (*(v43 + 40))(v1 + v40, v17, v12);
    swift_endAccess();
    sub_266DA7D1C();
    v47(v23);
  }

  (*(v19 + 8))(v23, v45);
  OUTLINED_FUNCTION_5();
}

void sub_266CCC220()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = OUTLINED_FUNCTION_10_13();
  v51 = v7;
  v10 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(v6, v8, v7, v9);
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_5();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  v20 = *(v4 + 128);
  OUTLINED_FUNCTION_9_13(v1 + v20);
  v21 = *(v12 + 16);
  (v21)(v19, v1 + v20, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v5;
    v24 = *v19;
    v25 = *(v19 + 1);
    if ((v3 & 1) == 0)
    {
      *v16 = v24;
      v16[1] = v25;
      OUTLINED_FUNCTION_13_11();
      goto LABEL_11;
    }

    type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError(0, v23, v51, v22);
    OUTLINED_FUNCTION_0_49();
    WitnessTable = swift_getWitnessTable();
    v27 = OUTLINED_FUNCTION_4_26(WitnessTable);
    __swift_storeEnumTagSinglePayload(v28, 1, 2, v10);
  }

  else
  {
    (*(v12 + 8))(v19, v10);
    if (qword_2800C9290 != -1)
    {
      OUTLINED_FUNCTION_1_35(&qword_2800C9290);
    }

    v29 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v29, qword_2800CB930);

    v30 = sub_266DA948C();
    v31 = sub_266DAAAEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_14_0();
      v50 = v21;
      v47 = v32;
      v48 = swift_slowAlloc();
      v52 = v48;
      v33 = OUTLINED_FUNCTION_33_5(4.8149e-34);
      v50(v33);
      OUTLINED_FUNCTION_13_11();
      v34 = sub_266DAA72C();
      v49 = v12;
      sub_266C22A3C(v34, v35, &v52);
      OUTLINED_FUNCTION_34_3();
      v36 = v47;
      *(v47 + 4) = v5;
      _os_log_impl(&dword_266C08000, v30, v31, "ConfirmIntentWithUnlockFlow: processRequestDeviceUnlockResult called in an unexpected state: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      OUTLINED_FUNCTION_7_19();
      v21 = v50;
      OUTLINED_FUNCTION_6_1();
    }

    v37 = OUTLINED_FUNCTION_10_13();
    v27 = type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError(v37, v38, v51, v39);
    OUTLINED_FUNCTION_0_49();
    v40 = swift_getWitnessTable();
    v41 = OUTLINED_FUNCTION_4_26(v40);
    v43 = OUTLINED_FUNCTION_25_6(v41, v42);
    v21(v43);
    OUTLINED_FUNCTION_12_15();
  }

  *v16 = v27;
  *(v16 + 8) = 0;
  OUTLINED_FUNCTION_13_11();
LABEL_11:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_5_25(v1 + v20);
  v44 = OUTLINED_FUNCTION_32_4();
  v45(v44);
  swift_endAccess();
  OUTLINED_FUNCTION_5();
}

void sub_266CCC558()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = OUTLINED_FUNCTION_10_13();
  v72 = v8;
  v11 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(v7, v9, v8, v10);
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_5();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = *(v6 + 128);
  OUTLINED_FUNCTION_9_13(&v1[v21]);
  v73 = v21;
  v74 = v13;
  v22 = *(v13 + 16);
  v22(v20, &v1[v21], v11);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v23 = OUTLINED_FUNCTION_18_11();
    v24(v23);
    if (v3)
    {
      v25 = v5;
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35(&qword_2800C9290);
      }

      v26 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v26, qword_2800CB930);
      v27 = v5;
      v28 = sub_266DA948C();
      v29 = sub_266DAAAEC();
      sub_266CCD210(v5, 1);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_14_0();
        v72 = swift_slowAlloc();
        v75 = v5;
        v76[0] = v72;
        *v30 = 136315138;
        v31 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
        v32 = sub_266DAA72C();
        v34 = sub_266C22A3C(v32, v33, v76);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_266C08000, v28, v29, "ConfirmIntentWithUnlockFlow received an unexpected error while trying to unlock the device: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v72);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      *v17 = v5;
      v17[8] = 0;
    }

    else
    {
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35(&qword_2800C9290);
      }

      v55 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v55, qword_2800CB930);
      v56 = sub_266DA948C();
      v57 = sub_266DAAB0C();
      if (os_log_type_enabled(v56, v57))
      {
        *OUTLINED_FUNCTION_11() = 0;
        OUTLINED_FUNCTION_22_8();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_7_19();
      }

      v63 = OUTLINED_FUNCTION_10_13();
      type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError(v63, v64, v72, v65);
      OUTLINED_FUNCTION_0_49();
      WitnessTable = swift_getWitnessTable();
      v67 = OUTLINED_FUNCTION_4_26(WitnessTable);
      __swift_storeEnumTagSinglePayload(v68, 2, 2, v11);
      *v17 = v67;
      v17[8] = 1;
    }

    swift_storeEnumTagMultiPayload();
    v69 = v73;
    OUTLINED_FUNCTION_5_25(&v1[v73]);
    (*(v74 + 40))(&v1[v69], v17, v11);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_18_11();
    v36(v35);
    if (qword_2800C9290 != -1)
    {
      OUTLINED_FUNCTION_1_35(&qword_2800C9290);
    }

    v37 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v37, qword_2800CB930);

    v38 = sub_266DA948C();
    v39 = sub_266DAAAEC();

    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_14_0();
      v70 = OUTLINED_FUNCTION_27_8();
      v76[0] = v70;
      *v20 = 136315138;
      v22(v17, &v1[v73], v11);
      v40 = sub_266DAA72C();
      v71 = v17;
      v42 = sub_266C22A3C(v40, v41, v76);
      v17 = v71;

      *(v20 + 4) = v42;
      OUTLINED_FUNCTION_22_8();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_7_19();
    }

    v48 = OUTLINED_FUNCTION_10_13();
    type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError(v48, v49, v72, v50);
    OUTLINED_FUNCTION_0_49();
    v51 = swift_getWitnessTable();
    v52 = OUTLINED_FUNCTION_4_26(v51);
    v53 = v73;
    v22(v54, &v1[v73], v11);
    OUTLINED_FUNCTION_12_15();
    *v17 = v52;
    v17[8] = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_25(&v1[v53]);
    (*(v74 + 40))(&v1[v53], v17, v11);
  }

  swift_endAccess();
  OUTLINED_FUNCTION_5();
}

void sub_266CCCA8C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v49 = v2;
  v3 = *v0;
  OUTLINED_FUNCTION_24_7();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_24_7();
  v7 = *(v6 + 88);
  v8 = OUTLINED_FUNCTION_10_13();
  v11 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(v8, v9, v7, v10);
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_5();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  v21 = *(v3 + 128);
  OUTLINED_FUNCTION_9_13(&v1[v21]);
  v50 = *(v13 + 16);
  v50(v20, &v1[v21], v11);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  v22 = OUTLINED_FUNCTION_18_11();
  v23(v22);
  if (v3 == 2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_35_4(AssociatedTypeWitness);
    OUTLINED_FUNCTION_15_15();
    sub_266DA7C6C();
    OUTLINED_FUNCTION_3_29();
    (*(v25 + 16))(v17, v49);
    OUTLINED_FUNCTION_13_11();
  }

  else
  {
    v49 = v7;
    if (qword_2800C9290 != -1)
    {
      OUTLINED_FUNCTION_1_35(&qword_2800C9290);
    }

    v26 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v26, qword_2800CB930);

    v27 = sub_266DA948C();
    v28 = sub_266DAAAEC();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v50;
    if (v29)
    {
      OUTLINED_FUNCTION_14_0();
      v47 = v28;
      v46 = OUTLINED_FUNCTION_27_8();
      v51 = v46;
      v31 = OUTLINED_FUNCTION_33_5(4.8149e-34);
      v30(v31);
      OUTLINED_FUNCTION_13_11();
      v32 = sub_266DAA72C();
      v48 = v13;
      sub_266C22A3C(v32, v33, &v51);
      OUTLINED_FUNCTION_34_3();
      *(v28 + 4) = v5;
      _os_log_impl(&dword_266C08000, v27, v47, "ConfirmIntentWithUnlockFlow: processConfirmationFlowResult called in an unexpected state: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v30 = v50;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_7_19();
    }

    v34 = OUTLINED_FUNCTION_10_13();
    v38 = type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError(v34, v35, v36, v37);
    OUTLINED_FUNCTION_0_49();
    WitnessTable = swift_getWitnessTable();
    v40 = OUTLINED_FUNCTION_4_26(WitnessTable);
    v42 = OUTLINED_FUNCTION_25_6(v40, v41);
    v30(v42);
    OUTLINED_FUNCTION_12_15();
    *v17 = v38;
    *(v17 + 8) = 0;
    OUTLINED_FUNCTION_13_11();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_5_25(&v1[v21]);
  v43 = OUTLINED_FUNCTION_32_4();
  v44(v43);
  swift_endAccess();
  OUTLINED_FUNCTION_5();
}

uint64_t *sub_266CCCDAC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  OUTLINED_FUNCTION_31_4();
  __swift_destroy_boxed_opaque_existential_0((v0 + *(v3 + 104)));
  OUTLINED_FUNCTION_31_4();
  __swift_destroy_boxed_opaque_existential_0((v0 + *(v4 + 112)));
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_31_4();
  v6 = *(v5 + 128);
  v8 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(0, v2, *(v1 + 88), v7);
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  return v0;
}

uint64_t sub_266CCCED8()
{
  sub_266CCCDAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_266CCCF60(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    sub_266DA7F2C();
    sub_266DA7C6C();
    if (v2 <= 0x3F)
    {
      sub_266CCD068(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_266CCD068(uint64_t a1)
{
  if (!qword_2800CBA48[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2800CA800, &unk_266DAFC10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_2800CBA48);
    }
  }
}

uint64_t sub_266CCD104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266C29DCC;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

void sub_266CCD210(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_266CCD298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t OUTLINED_FUNCTION_1_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_26(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_7_19()
{

  JUMPOUT(0x26D5F2480);
}

uint64_t OUTLINED_FUNCTION_9_13(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 2, v0);
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_3()
{
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1)
{

  return sub_266DA7F2C();
}

BOOL Optional<A>.existsAndNotEmpty.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v5, a1);
  v6 = *(a1 + 16);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    (*(v2 + 8))(v4, a1);
    return 0;
  }

  else
  {
    v7 = Collection.isNotEmpty.getter();
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  return v7;
}

uint64_t sub_266CCD68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_266CCD6E0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CBAD0);
  v1 = __swift_project_value_buffer(v0, qword_2800CBAD0);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CCD7A8()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
  sub_266DA816C();
  v5 = sub_266D6F5AC(v4);
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  if (!v7)
  {
    return sub_266DA7CAC();
  }

  if (v7 == 1)
  {
    return sub_266DA7CCC();
  }

  sub_266DA7CBC();
  return sub_266C488A0(v5, v7);
}

uint64_t sub_266CCD8D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v4);
}

void sub_266CCD904()
{
  sub_266DA80FC();
  v1 = sub_266DA80DC();
  if (qword_2800C9298 != -1)
  {
    OUTLINED_FUNCTION_2_33(&qword_2800C9298);
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800CBAD0);
  v3 = v1;
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = MEMORY[0x277D84F70];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    v10 = [v3 disambiguationItems];
    v11 = sub_266DAA93C();

    v12 = MEMORY[0x26D5F12B0](v11, v7 + 8);
    v14 = v13;

    v15 = sub_266C22A3C(v12, v14, &v30);

    *(v8 + 4) = v15;
    OUTLINED_FUNCTION_25_7();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D5F2480](v9, -1, -1);
    OUTLINED_FUNCTION_33_6();
  }

  v21 = [v3 disambiguationItems];
  v22 = sub_266DAA93C();

  v23 = sub_266C3A9B4(v22);

  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
    sub_266DA7BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBB70, qword_266DB5080);
    swift_allocObject();
    sub_266DA813C();

    OUTLINED_FUNCTION_68();

    __asm { BRAA            X2, X16 }
  }

  v26 = sub_266CD01A8();
  OUTLINED_FUNCTION_87(&type metadata for FriendDisambiguationError, v26);
  *v27 = 0xD00000000000002ALL;
  *(v27 + 8) = 0x8000000266DC2A90;
  *(v27 + 16) = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_68();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266CCDBF0()
{
  OUTLINED_FUNCTION_22_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[10] = *(v2 + 16);
  v7 = sub_266DA7EBC();
  v1[11] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[12] = v8;
  v1[13] = swift_task_alloc();
  v9 = sub_266DA81AC();
  v1[14] = v9;
  OUTLINED_FUNCTION_11_3(v9);
  v1[15] = v10;
  v1[16] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266CCDD00()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[9];
  sub_266DA80FC();
  v5 = sub_266DA80CC();
  __swift_project_boxed_opaque_existential_1((v4 + 168), *(v4 + 192));
  sub_266DA816C();
  v6 = sub_266D6F5AC(v1);
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  if (!v8)
  {
    if (qword_2800C9298 != -1)
    {
      OUTLINED_FUNCTION_2_33(&qword_2800C9298);
    }

    v21 = sub_266DA94AC();
    __swift_project_value_buffer(v21, qword_2800CBAD0);
    v22 = sub_266DA948C();
    v23 = sub_266DAAACC();
    if (OUTLINED_FUNCTION_95(v23))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_7();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_33_6();
    }

    v29 = sub_266CD01A8();
    OUTLINED_FUNCTION_87(&type metadata for FriendDisambiguationError, v29);
    *v30 = xmmword_266DB3600;
    v20 = (v30 + 1);
    goto LABEL_13;
  }

  if (v8 == 1)
  {
    if (qword_2800C9298 != -1)
    {
      OUTLINED_FUNCTION_2_33(&qword_2800C9298);
    }

    v9 = sub_266DA94AC();
    __swift_project_value_buffer(v9, qword_2800CBAD0);
    v10 = sub_266DA948C();
    v11 = sub_266DAAACC();
    if (OUTLINED_FUNCTION_95(v11))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_7();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_33_6();
    }

    v17 = sub_266CD01A8();
    OUTLINED_FUNCTION_87(&type metadata for FriendDisambiguationError, v17);
    v19 = v18;
    v20 = (v18 + 16);
    *v19 = 0;
    v19[1] = 0;
LABEL_13:
    v31 = 2;
LABEL_14:
    *v20 = v31;
    swift_willThrow();

    OUTLINED_FUNCTION_28();
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBB78, &qword_266DB5168);
  v0[3] = sub_266DA7FFC();
  v33 = swift_task_alloc();
  *(v33 + 16) = v6;
  *(v33 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBB80, &qword_266DB5170);
  OUTLINED_FUNCTION_10_14();
  sub_266C230E8(v34, v35, &qword_266DB5170, v36);
  sub_266DAA8CC();

  v37 = v0[2];
  if (!v37)
  {
    if (qword_2800C9298 != -1)
    {
      OUTLINED_FUNCTION_2_33(&qword_2800C9298);
    }

    v49 = sub_266DA94AC();
    __swift_project_value_buffer(v49, qword_2800CBAD0);
    v50 = sub_266DA948C();
    v51 = sub_266DAAACC();
    if (OUTLINED_FUNCTION_95(v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_266C08000, v50, OS_LOG_TYPE_DEFAULT, "FriendDisambiguationStrategy unable to determine selectedContact", v52, 2u);
      MEMORY[0x26D5F2480](v52, -1, -1);
    }

    v53 = sub_266CD01A8();
    OUTLINED_FUNCTION_87(&type metadata for FriendDisambiguationError, v53);
    *v54 = v6;
    v54[1] = v8;
    v20 = (v54 + 2);
    v31 = 1;
    goto LABEL_14;
  }

  v38 = v0[10];
  v39 = v5;
  v40 = v0[8];
  sub_266C488A0(v6, v8);
  v41 = *(v40 + 32);
  v42 = *(v41 + 16);
  v43 = v37;
  v42(v37, v38, v41);
  type metadata accessor for INFriend();
  v44 = v43;
  v45 = v39;
  sub_266DA7EAC();
  OUTLINED_FUNCTION_38();
  sub_266DA7F6C();

  v46 = OUTLINED_FUNCTION_38();
  v47(v46);

  OUTLINED_FUNCTION_15_4();
LABEL_17:

  return v32();
}

uint64_t sub_266CCE1A8(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 person];
  if (v5 && (v6 = sub_266C22F54(v5), v7))
  {
    if (v6 == a2 && v7 == a3)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_266DAB17C();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_266CCE244()
{
  OUTLINED_FUNCTION_22_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_266DA7E5C();
  v1[8] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266CCE2F8()
{
  v2 = v0[6];
  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBB78, &qword_266DB5168);
  v0[2] = sub_266DA7FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBB80, &qword_266DB5170);
  sub_266C9A2C4();
  OUTLINED_FUNCTION_10_14();
  sub_266C230E8(v3, v4, &qword_266DB5170, v5);
  v6 = sub_266DAA8BC();
  v0[11] = v6;

  __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  sub_266DA80FC();
  v7 = sub_266DA80CC();
  sub_266D04108(v7, *(v2 + 32), v6);

  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[12] = v8;
  *v8 = v9;
  v8[1] = sub_266CCE498;
  OUTLINED_FUNCTION_68();

  return sub_266CCE6DC(v10, v11, v12, v13);
}

uint64_t sub_266CCE498()
{
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {
    v4 = sub_266CCE62C;
  }

  else
  {
    v4 = sub_266CCE5C4;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_266CCE5C4()
{
  OUTLINED_FUNCTION_22_0();
  v0 = OUTLINED_FUNCTION_36_6();
  v1(v0);

  OUTLINED_FUNCTION_15_4();

  return v2();
}

uint64_t sub_266CCE62C()
{
  OUTLINED_FUNCTION_22_0();
  v0 = OUTLINED_FUNCTION_36_6();
  v1(v0);

  OUTLINED_FUNCTION_28();

  return v2();
}

id sub_266CCE698@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 person];
  *a2 = result;
  return result;
}

uint64_t sub_266CCE6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v5[36] = type metadata accessor for Snippets(0);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v6 = sub_266DA80AC();
  v5[41] = v6;
  v5[42] = *(v6 - 8);
  v5[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  v5[44] = swift_task_alloc();
  v7 = sub_266DA7C0C();
  v5[45] = v7;
  v5[46] = *(v7 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  v5[49] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080) - 8);
  v5[50] = v8;
  v5[51] = *(v8 + 64);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CCE990);
}

uint64_t sub_266CCE990()
{
  v1 = v0[59];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[32];
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v4 + 16);
  *(v6 + 32) = *(v4 + 32);
  *(v6 + 40) = v2;
  sub_266C24340(sub_266CD0188, v6, v5);
  v8 = v7;
  v0[60] = v7;

  v0[61] = *(v2 + 208);
  sub_266D3DF40(v5, v1);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  v9 = OUTLINED_FUNCTION_109();
  __swift_storeEnumTagSinglePayload(v9, v10, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v11 = swift_allocObject();
  v0[62] = v11;
  *(v11 + 16) = xmmword_266DAE3B0;
  v12 = swift_task_alloc();
  v0[63] = v12;
  *v12 = v0;
  v12[1] = sub_266CCEB04;

  return sub_266CB3214(v8);
}

uint64_t sub_266CCEB04(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[64] = v1;

  if (v1)
  {
    v9 = v5[59];
    sub_266C47654(v5[58], &qword_2800CA050, &qword_266DB0080);
    sub_266C47654(v9, &qword_2800CA050, &qword_266DB0080);
    v10 = sub_266CCFCD4;
  }

  else
  {
    v5[65] = a1;
    v10 = sub_266CCEC60;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_266CCEC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = v22[49];
  v24 = v22[44];
  v25 = v22[35];
  v26 = v22[33];
  *(v22[62] + 32) = v22[65];
  v27 = sub_266DA7E5C();
  OUTLINED_FUNCTION_9_3();
  (*(v28 + 16))(v23, v26, v27);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v27);
  sub_266DA7BDC();
  __swift_project_boxed_opaque_existential_1((v25 + 128), *(v25 + 152));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A8, &qword_266DB1EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 56) = &unk_287868050;
  *(inited + 64) = sub_266C47AA8();
  v30 = swift_allocObject();
  *(inited + 32) = v30;
  *(v30 + 16) = "ResponseFramework";
  *(v30 + 24) = 17;
  *(v30 + 32) = 2;
  *(v30 + 40) = "SMART";
  *(v30 + 48) = 5;
  *(v30 + 56) = 2;
  v31 = sub_266D7E674(inited);
  swift_setDeallocating();
  sub_266C6F0B4();
  LODWORD(a19) = (v31 & 1) == 0;
  v32 = *MEMORY[0x277D5BC50];
  v33 = sub_266DA7C7C();
  OUTLINED_FUNCTION_9_3();
  (*(v34 + 104))(v24, v32, v33);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v33);
  if (sub_266C3A14C())
  {
    v35 = v22[62] & 0xC000000000000001;
    sub_266CB9F54();
    v36 = v22[62];
    if (v35)
    {
      v37 = MEMORY[0x26D5F1780](0, v36);
    }

    else
    {
      v37 = *(v36 + 32);
    }

    v38 = v37;
    v39 = [v37 catId];

    v123 = sub_266DAA70C();
    v126 = v40;
  }

  else
  {
    v123 = 0;
    v126 = 0;
  }

  v41 = v22[61];
  v42 = v22[59];
  v43 = v22[56];
  v44 = v22[57];
  v45 = v22[50];
  v46 = v22[51];
  v118 = v22[48];
  v119 = v22[49];
  v47 = v22[46];
  v48 = v22[47];
  v49 = v22[45];
  v120 = v22[44];
  v121 = v22[43];
  v122 = v42;
  v124 = v22[36];
  v125 = v22[55];
  sub_266C4756C(v22[58], v44);
  sub_266C4756C(v42, v43);
  v50 = *(v45 + 80);
  v51 = (v50 + 24) & ~v50;
  v52 = (v46 + v50 + v51) & ~v50;
  v53 = swift_allocObject();
  v22[66] = v53;
  *(v53 + 16) = v41;
  sub_266C475DC(v44, v53 + v51);
  sub_266C475DC(v43, v53 + v52);
  (*(v47 + 16))(v48, v118, v49);
  v54 = swift_task_alloc();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  *(v54 + 32) = 0;
  *(v54 + 40) = v123;
  *(v54 + 48) = v126;
  *(v54 + 56) = v119;
  *(v54 + 64) = 1;
  *(v54 + 65) = a19;
  *(v54 + 72) = sub_266C4876C;
  *(v54 + 80) = v53;
  *(v54 + 88) = v120;

  sub_266DA800C();

  sub_266C4756C(v122, v125);
  if (__swift_getEnumTagSinglePayload(v125, 1, v124) == 1)
  {
    v55 = v22 + 55;
  }

  else
  {
    v56 = v22[58];
    v57 = v22[54];
    v58 = v22[36];
    sub_266C476A8(v22[55], v22[40]);
    sub_266C4756C(v56, v57);
    v59 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v59, v60, v58) != 1)
    {
      v89 = v22[39];
      v90 = v22[40];
      v91 = v22[36];
      sub_266C476A8(v22[54], v89);
      v22[24] = v91;
      v92 = sub_266C4DB4C();
      v22[25] = v92;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22 + 21);
      sub_266C47750(v90, boxed_opaque_existential_1);
      v22[29] = v91;
      v22[30] = v92;
      v94 = __swift_allocate_boxed_opaque_existential_1(v22 + 26);
      sub_266C47750(v89, v94);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_24_1();
      v22[67] = v95;
      *v95 = v96;
      v95[1] = sub_266CCF340;
      OUTLINED_FUNCTION_25_0();

      return v102(v97, v98, v99, v100, v101, v102, v103, v104, a9, v118, v119, v120, v121, v122, v123, v124, v125, v126, a19, a20, a21, a22);
    }

    v55 = v22 + 54;
    sub_266C477B4(v22[40]);
  }

  v61 = *v55;
  v62 = v22[59];
  v63 = v22[53];
  v64 = v22[36];
  sub_266C47654(v61, &qword_2800CA050, &qword_266DB0080);
  sub_266C4756C(v62, v63);
  v65 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, v66, v64);
  v68 = v22[53];
  v69 = v22[36];
  if (EnumTagSinglePayload == 1)
  {
    v70 = v22[58];
    v71 = v22[52];
    sub_266C47654(v68, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v70, v71);
    v72 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v72, v73, v69) == 1)
    {
      sub_266C47654(v22[52], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_24_1();
      v22[70] = v74;
      *v74 = v75;
      v74[1] = sub_266CCFA7C;
      OUTLINED_FUNCTION_25_0();

      return v79(v76, v77, v78, v79, v80, v81, v82, v83, a9, v118, v119, v120, v121, v122, v123, v124, v125, v126, a19, a20, a21, a22);
    }

    v105 = v22[36];
    v106 = v22[37];
    sub_266C476A8(v22[52], v106);
    v22[14] = v105;
    v22[15] = sub_266C4DB4C();
    v107 = __swift_allocate_boxed_opaque_existential_1(v22 + 11);
    sub_266C47750(v106, v107);
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_24_1();
    v22[69] = v108;
    *v108 = v109;
    OUTLINED_FUNCTION_37_4(v108);
  }

  else
  {
    v85 = v22[38];
    sub_266C476A8(v68, v85);
    v22[19] = v69;
    v22[20] = sub_266C4DB4C();
    v86 = __swift_allocate_boxed_opaque_existential_1(v22 + 16);
    sub_266C47750(v85, v86);
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_24_1();
    v22[68] = v87;
    *v87 = v88;
    OUTLINED_FUNCTION_37_4(v87);
  }

  OUTLINED_FUNCTION_25_0();

  return v114(v110, v111, v112, v113, v114, v115, v116, v117, a9, v118, v119, v120, v121, v122, v123, v124, v125, v126, a19, a20, a21, a22);
}

uint64_t sub_266CCF340()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 208));
  __swift_destroy_boxed_opaque_existential_0((v2 + 168));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CCF448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 312);
  v26 = *(v22 + 320);

  sub_266C477B4(v25);
  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_0_50();
  v28(v27);
  v29 = OUTLINED_FUNCTION_30_4();
  v30(v29);
  OUTLINED_FUNCTION_44_1();
  v31 = OUTLINED_FUNCTION_38();
  sub_266C47654(v31, v32, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CCF5B4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 128));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CCF6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 304);

  sub_266C477B4(v25);
  v26 = OUTLINED_FUNCTION_0_50();
  v27(v26);
  v28 = OUTLINED_FUNCTION_30_4();
  v29(v28);
  OUTLINED_FUNCTION_44_1();
  v30 = OUTLINED_FUNCTION_38();
  sub_266C47654(v30, v31, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CCF818()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 88));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CCF918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 296);

  sub_266C477B4(v25);
  v26 = OUTLINED_FUNCTION_0_50();
  v27(v26);
  v28 = OUTLINED_FUNCTION_30_4();
  v29(v28);
  OUTLINED_FUNCTION_44_1();
  v30 = OUTLINED_FUNCTION_38();
  sub_266C47654(v30, v31, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CCFA7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266CCFB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();

  v24 = OUTLINED_FUNCTION_0_50();
  v25(v24);
  v26 = OUTLINED_FUNCTION_30_4();
  v27(v26);
  OUTLINED_FUNCTION_44_1();
  v28 = OUTLINED_FUNCTION_38();
  sub_266C47654(v28, v29, &qword_266DB0080);
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v23, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CCFCD4()
{
  *(*(v0 + 496) + 16) = 0;

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266CCFE14@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_266DA750C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *a1;
  sub_266DA900C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = v7;
  sub_266DA7AFC();
  result = sub_266DA8FBC();
  *a3 = result;
  return result;
}

uint64_t sub_266CCFEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_266C54B08;

  return sub_266CCD8D8(a2, a3);
}

uint64_t sub_266CCFFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266CCDBF0();
}

uint64_t sub_266CD0068()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266CCE244();
}

unint64_t sub_266CD01A8()
{
  result = qword_2800CBB90;
  if (!qword_2800CBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CBB90);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy25FriendDisambiguationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_266CD0238(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_33(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_33_6()
{

  JUMPOUT(0x26D5F2480);
}

uint64_t type metadata accessor for FMIPCoreDeviceSearcher(uint64_t a1)
{
  result = qword_2800CBBB0;
  if (!qword_2800CBBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266CD03B4(uint64_t a1)
{
  result = sub_266C79A8C(319, &qword_2800CAAE8, &protocol descriptor for FMIPManagerWrapper);
  if (v2 <= 0x3F)
  {
    result = sub_266C79A8C(319, &qword_2800CAAE0, &protocol descriptor for SFMContactDataProvider);
    if (v3 <= 0x3F)
    {
      result = sub_266C79A8C(319, &qword_2800CBBC0, &protocol descriptor for BluetoothStateProviding);
      if (v4 <= 0x3F)
      {
        result = sub_266C79A8C(319, &qword_2800CBBC8, &protocol descriptor for AccountStateProviding);
        if (v5 <= 0x3F)
        {
          result = sub_266C79A8C(319, &qword_2800CBBD0, &protocol descriptor for SFMVerboseLoggingSettingProviding);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for NearbyScanSession();
            if (v7 <= 0x3F)
            {
              result = sub_266C79A8C(319, &qword_2800CBBD8, &protocol descriptor for DeviceMappingProviding);
              if (v8 <= 0x3F)
              {
                result = sub_266C79A8C(319, &qword_2800CBBE0, &protocol descriptor for LocationGeocoding);
                if (v9 <= 0x3F)
                {
                  result = sub_266DAAB4C();
                  if (v10 <= 0x3F)
                  {
                    result = sub_266C22FD4();
                    if (v11 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return result;
}

void sub_266CD0570()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v53 = v2;
  v4 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  v5 = OUTLINED_FUNCTION_11_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_7();
  v11 = v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD30, &qword_266DB53A0);
  OUTLINED_FUNCTION_0_2();
  v41 = v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_13();
  v39 = v1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD38, &qword_266DB53A8);
  OUTLINED_FUNCTION_0_2();
  v45 = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  v54 = v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD40, &qword_266DB53B0);
  OUTLINED_FUNCTION_0_2();
  v49 = v17;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10();
  v42 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD48, &qword_266DB53B8);
  OUTLINED_FUNCTION_0_2();
  v47 = v20;
  v48 = v21;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  v44 = v23;
  v52 = v0;
  sub_266CD2D9C(&v56);
  v55[30] = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD50, &qword_266DB53C0);
  sub_266DAB31C();
  OUTLINED_FUNCTION_0_51();
  v50 = v11;
  v51 = v24;
  v25 = v11;
  sub_266CD5400(v0, v11, v26);
  sub_266CD5F1C(v3, v55);
  v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v28 = (v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v38 = v27;
  sub_266CD5330(v25, v29 + v27);
  OUTLINED_FUNCTION_7_20(v29 + v28);
  OUTLINED_FUNCTION_26_0();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_266CD5F78;
  *(v30 + 24) = v29;
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD58, &qword_266DB53C8);
  OUTLINED_FUNCTION_16_14();
  sub_266C230E8(v31, &qword_2800CBD30, &qword_266DB53A0, v32);
  v33 = MEMORY[0x277CBCD90];
  sub_266C230E8(&qword_2800CBD68, &qword_2800CBD58, &qword_266DB53C8, MEMORY[0x277CBCD90]);
  sub_266DA98DC();

  (*(v41 + 8))(v39, v40);
  sub_266CD5400(v52, v50, v51);
  sub_266CD5F1C(v53, v55);
  v34 = swift_allocObject();
  sub_266CD5330(v50, v34 + v27);
  OUTLINED_FUNCTION_7_20(v34 + v28);
  OUTLINED_FUNCTION_26_0();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_266CD608C;
  *(v35 + 24) = v34;
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB10, &unk_266DB5340);
  v36 = MEMORY[0x277CBCCE0];
  sub_266C230E8(&qword_2800CBD70, &qword_2800CBD38, &qword_266DB53A8, MEMORY[0x277CBCCE0]);
  sub_266C230E8(&qword_2800CAB18, &qword_2800CAB10, &unk_266DB5340, v33);
  sub_266DA98DC();

  (*(v45 + 8))(v54, v43);
  sub_266CD5400(v52, v50, v51);
  sub_266CD5F1C(v53, v55);
  v37 = swift_allocObject();
  sub_266CD5330(v50, v37 + v38);
  OUTLINED_FUNCTION_7_20(v37 + v28);
  sub_266DA966C();
  sub_266C230E8(&qword_2800CBD78, &qword_2800CBD40, &qword_266DB53B0, v36);
  sub_266DA98DC();

  (*(v49 + 8))(v42, v46);
  sub_266C230E8(&qword_2800CBD80, &qword_2800CBD48, &qword_266DB53B8, v36);
  sub_266DA97EC();
  (*(v48 + 8))(v44, v47);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}