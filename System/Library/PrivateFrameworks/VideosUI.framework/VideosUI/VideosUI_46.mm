double sub_1E39C89AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1E41FE464();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1E38DCE1C(v6, v10);

  return result;
}

void sub_1E39C8A74()
{
  v0 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_8_0(v0);
  v1 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_8_0(v1);

  sub_1E39C8348();
}

unint64_t sub_1E39C8B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30068;
  if (!qword_1ECF30068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30068);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteNetworkReachabilityMonitor.Status(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E39C8CC4()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E327C238;

  return sub_1E39C7584(v2, v3);
}

uint64_t sub_1E39C8D6C(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30070, &qword_1E42B0250);
  OUTLINED_FUNCTION_17_2(v8);
  if (a4)
  {
    v9 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30070, &qword_1E42B0250);
    return sub_1E42063C4();
  }

  else
  {
    sub_1E39C8E64(a1, a2);
    v11 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30070, &qword_1E42B0250);
    return sub_1E42063D4();
  }
}

uint64_t sub_1E39C8E64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E38DCD14(a1, a2);
  }

  return a1;
}

uint64_t sub_1E39C8E78()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t sub_1E39C8F74()
{
  OUTLINED_FUNCTION_1_108();
  v3 = v2 + 2812;
  v4 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0x6E6974656B72614DLL;
    }

    if (v4 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000067;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = v2 + 2812;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0x6E6974656B72614DLL;
    }

    if (v1 == 1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE900000000000067;
    }
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v5 == v3 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E42079A4();
  }

  return v9 & 1;
}

unint64_t sub_1E39C9050()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E39C909C()
{
  OUTLINED_FUNCTION_1_108();
  if (!v0)
  {
    return v1 + 2812;
  }

  if (v0 == 1)
  {
    return v1;
  }

  return 0x6E6974656B72614DLL;
}

uint64_t sub_1E39C9138()
{
  OUTLINED_FUNCTION_1_108();
  sub_1E4206014();
}

uint64_t sub_1E39C91CC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E39C9264@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39C9050();
  *a1 = result;
  return result;
}

uint64_t sub_1E39C9294@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39C909C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1E39C92C0()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E39C930C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39C92C0();
  *a1 = result;
  return result;
}

uint64_t sub_1E39C933C()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1EE28B858);
  __swift_project_value_buffer(v0, qword_1EE28B858);
  return sub_1E41FFCA4();
}

double sub_1E39C93C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1E37748D8(0, 0, v2, &unk_1E42B0278, v4);

  return result;
}

uint64_t sub_1E39C94B4()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEA64();
  *(v0 + 56) = sub_1E41FEA44();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_60(v1);

  return MEMORY[0x1EEE43420](v2);
}

uint64_t sub_1E39C9558()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39C969C()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E39C9724;

  return sub_1E39C948C();
}

uint64_t sub_1E39C9724()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1E39C9808()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FFB74();
  OUTLINED_FUNCTION_18_45(v1);
  *(v0 + 64) = v2;
  *(v0 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39C98B0()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEA64();
  *(v0 + 80) = sub_1E41FEA44();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_60(v1);

  return MEMORY[0x1EEE43420](v2);
}

uint64_t sub_1E39C9954()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39C9A54()
{

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = sub_1E41FFB54();
  v2 = &OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss;
  if (v1)
  {
    v3 = v1;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v0[8];
      v61 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      while (1)
      {
        if (v6 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }

        v8 = v0[9];
        v9 = v0[7];
        (*(v7 + 16))(v8, v61 + *(v7 + 72) * v6, v9);
        v10 = sub_1E41FFB64();
        v12 = v11;
        (*(v7 + 8))(v8, v9);
        if (v12)
        {
          OUTLINED_FUNCTION_1_108();
          v14 = v10 == v13 + 2812 && v12 == 0xE800000000000000;
          if (v14 || (sub_1E42079A4() & 1) != 0)
          {

            if (_MergedGlobals_177 != -1)
            {
              OUTLINED_FUNCTION_0_99();
              swift_once();
            }

            v15 = sub_1E41FFCB4();
            v16 = OUTLINED_FUNCTION_15_60(v15, qword_1EE28B858);
            v17 = sub_1E4206814();
            if (OUTLINED_FUNCTION_104(v17))
            {
              v18 = OUTLINED_FUNCTION_125_0();
              OUTLINED_FUNCTION_10_58(v18);
              _os_log_impl(&dword_1E323F000, v16, v19, "fetchCategories: validCategoryValue explicit hit.", v9, 2u);
              OUTLINED_FUNCTION_6_0();
            }

            v5 |= 1uLL;
          }

          else
          {
            OUTLINED_FUNCTION_1_108();
            v21 = v10 == v20 && v12 == 0xE800000000000000;
            if (v21 || (sub_1E42079A4() & 1) != 0)
            {

              if (_MergedGlobals_177 != -1)
              {
                OUTLINED_FUNCTION_0_99();
                swift_once();
              }

              v5 |= 2uLL;
              v22 = sub_1E41FFCB4();
              v23 = OUTLINED_FUNCTION_15_60(v22, qword_1EE28B858);
              v24 = sub_1E4206814();
              if (OUTLINED_FUNCTION_104(v24))
              {
                v25 = OUTLINED_FUNCTION_125_0();
                OUTLINED_FUNCTION_10_58(v25);
                _os_log_impl(&dword_1E323F000, v23, v26, "fetchCategories: validCategoryValue implicit hit.", v9, 2u);
                OUTLINED_FUNCTION_6_0();
              }
            }

            else
            {
              if (v10 == 0x6E6974656B72614DLL && v12 == 0xE900000000000067)
              {

LABEL_35:
                if (_MergedGlobals_177 != -1)
                {
                  OUTLINED_FUNCTION_0_99();
                  swift_once();
                }

                v29 = sub_1E41FFCB4();
                v30 = OUTLINED_FUNCTION_15_60(v29, qword_1EE28B858);
                v31 = sub_1E4206814();
                if (OUTLINED_FUNCTION_104(v31))
                {
                  v32 = OUTLINED_FUNCTION_125_0();
                  OUTLINED_FUNCTION_10_58(v32);
                  _os_log_impl(&dword_1E323F000, v30, v33, "fetchCategories: validCategoryValue marketing hit.", v9, 2u);
                  OUTLINED_FUNCTION_6_0();
                }

                v5 |= 4uLL;
                goto LABEL_16;
              }

              v28 = sub_1E42079A4();

              if (v28)
              {
                goto LABEL_35;
              }
            }
          }
        }

LABEL_16:
        if (v4 == ++v6)
        {

          v2 = &OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss;
          goto LABEL_52;
        }
      }
    }

    if (_MergedGlobals_177 != -1)
    {
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v48 = sub_1E41FFCB4();
    v49 = OUTLINED_FUNCTION_15_60(v48, qword_1EE28B858);
    v50 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v50))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v51, v52, v53, v54, v55, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v5 = 0;
LABEL_52:
    if (v2[266] != -1)
    {
LABEL_59:
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v56 = sub_1E41FFCB4();
    v57 = OUTLINED_FUNCTION_15_60(v56, qword_1EE28B858);
    v58 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 134217984;
      *(v59 + 4) = v5;
      _os_log_impl(&dword_1E323F000, v57, v58, "fetchCategories: enabledCategories returned.%ld", v59, 0xCu);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_13_7();

    return v60(v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (_MergedGlobals_177 != -1)
    {
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v34 = sub_1E41FFCB4();
    v35 = OUTLINED_FUNCTION_15_60(v34, qword_1EE28B858);
    v36 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v36))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    sub_1E39CA0C4(v42, v43, v44);
    swift_allocError();
    *v45 = 0;
    swift_willThrow();

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_1E39CA064()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1E39CA0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30078;
  if (!qword_1ECF30078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30078);
  }

  return result;
}

uint64_t sub_1E39CA118()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FE9F4();
  OUTLINED_FUNCTION_18_45(v1);
  *(v0 + 64) = v2;
  *(v0 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39CA1C0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1E41FE9E4();
  v4 = sub_1E41FE9D4();
  (*(v2 + 8))(v1, v3);
  if (v4 == 2)
  {
    sub_1E41FEA64();
    v0[10] = sub_1E41FEA44();
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_9_60(v5);

    return MEMORY[0x1EEE43420](v6);
  }

  else
  {
    if (_MergedGlobals_177 != -1)
    {
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v7 = sub_1E41FFCB4();
    v8 = OUTLINED_FUNCTION_15_60(v7, qword_1EE28B858);
    v9 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v4 & 1;
      _os_log_impl(&dword_1E323F000, v8, v9, "isFullTVAppEnabled - TV app enabled %{BOOL}d ", v10, 8u);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_13_7();

    return v11(v4 & 1);
  }
}

uint64_t sub_1E39CA398()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39CA498()
{
  v29 = v0;

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_1E41FFB44();
  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (_MergedGlobals_177 != -1)
    {
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v2 = sub_1E41FFCB4();
    v3 = OUTLINED_FUNCTION_15_60(v2, qword_1EE28B858);
    v4 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v28[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1E3270FC8(0xD00000000000001BLL, 0x80000001E426A8A0, v28);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    sub_1E39CA0C4(v12, v13, v14);
    swift_allocError();
    *v15 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_13_7();
    v17 = 0;
  }

  else
  {
    v18 = v1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (_MergedGlobals_177 != -1)
    {
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v19 = sub_1E41FFCB4();
    v20 = OUTLINED_FUNCTION_15_60(v19, qword_1EE28B858);
    v21 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      if (v18)
      {
        v24 = 1702195828;
      }

      else
      {
        v24 = 0x65736C6166;
      }

      if (v18)
      {
        v25 = 0xE400000000000000;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      v26 = sub_1E3270FC8(v24, v25, v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1E323F000, v20, v21, "Full TVApp enabled:%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_13_7();
    v17 = v18 & 1;
  }

  return v16(v17);
}

uint64_t sub_1E39CA77C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_13_7();

  return v0(0);
}

unint64_t sub_1E39CA7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30080;
  if (!qword_1ECF30080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30080);
  }

  return result;
}

unint64_t sub_1E39CA838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30088;
  if (!qword_1ECF30088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30088);
  }

  return result;
}

unint64_t sub_1E39CA890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30090;
  if (!qword_1ECF30090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30090);
  }

  return result;
}

unint64_t sub_1E39CA8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30098;
  if (!qword_1ECF30098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30098);
  }

  return result;
}

unint64_t sub_1E39CA940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF300A0;
  if (!qword_1ECF300A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF300A0);
  }

  return result;
}

unint64_t sub_1E39CA998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF300A8;
  if (!qword_1ECF300A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF300A8);
  }

  return result;
}

unint64_t sub_1E39CA9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF300B0;
  if (!qword_1ECF300B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF300B0);
  }

  return result;
}

_BYTE *sub_1E39CAA44(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E39CAB58(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E39CAC48(id a1, unsigned __int8 a2)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      ObjectType = swift_getObjectType();

      return sub_1E39CADA8(ObjectType);
    }

    else
    {
      v5 = sub_1E38ADE9C();
      v6 = *v5;
      v7 = v5[1];

      sub_1E3277E60(v6, v7, a1, &v8);

      if (v9)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1E329505C(&v8);
      }

      LODWORD(result) = sub_1E39CAFC4();
      if (result == 4)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  else if (a2)
  {
    type metadata accessor for LibMediaEntityTypeFactory();
    return sub_1E39CAD6C(a1);
  }

  else if ([a1 mediaType] == 512)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E39CAD6C(void *a1)
{
  v1 = [a1 groupingType];
  if (v1 == 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = 4;
  }

  if ((v1 | 8) == 9)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E39CADA8(uint64_t a1)
{
  if (sub_1E3280A90(0, &qword_1ECF300B8, off_1E87284C8) == a1)
  {
    return 0;
  }

  if (sub_1E3280A90(0, &qword_1ECF300C0, off_1E8728620) == a1)
  {
    return 1;
  }

  if (sub_1E3280A90(0, &qword_1ECF300C8, off_1E8728610) == a1)
  {
    return 2;
  }

  if (sub_1E3280A90(0, &qword_1ECF300D0, off_1E8728600) == a1)
  {
    return 3;
  }

  return 0;
}

uint64_t sub_1E39CAE64(unsigned __int8 a1, char a2)
{
  v2 = 0x736569766F6DLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x736569766F6DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x73776F68732D7674;
      break;
    case 2:
      v5 = 0x6F736165732D7674;
      v3 = 0xEA0000000000736ELL;
      break;
    case 3:
      v5 = 0x6F736970652D7674;
      v3 = 0xEB00000000736564;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x73776F68732D7674;
      break;
    case 2:
      v2 = 0x6F736165732D7674;
      v6 = 0xEA0000000000736ELL;
      break;
    case 3:
      v2 = 0x6F736970652D7674;
      v6 = 0xEB00000000736564;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

unint64_t sub_1E39CAFC4()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E39CB034(char a1)
{
  result = 0x736569766F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x73776F68732D7674;
      break;
    case 2:
      result = 0x6F736165732D7674;
      break;
    case 3:
      result = 0x6F736970652D7674;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E39CB0D4(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E39CB124(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E39CB124(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E39CB1E8(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E39CB124(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E39CB22C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39CAFC4();
  *a1 = result;
  return result;
}

uint64_t sub_1E39CB25C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39CB034(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E39CB28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF300D8;
  if (!qword_1ECF300D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF300D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibMediaItemType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E39CB3BC()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1ECF713C0);
  __swift_project_value_buffer(v0, qword_1ECF713C0);
  return sub_1E3287754(2);
}

uint64_t sub_1E39CB410()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0, &unk_1E42B07A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E8, &qword_1E42B07B0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  v7 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v8 = 0;
  if (!__swift_getEnumTagSinglePayload(v1 + v7, 1, v3))
  {
    sub_1E3294EE4(v1 + v7, v2, &qword_1ECF300E0, &unk_1E42B07A0);
    sub_1E3BEACDC(v3, v0);
    v9 = OUTLINED_FUNCTION_75();
    sub_1E325F6F0(v9, v10, &unk_1E42B07A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F0, &unk_1E42B07B8);
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_34_8();
    if (__swift_getEnumTagSinglePayload(v11, v12, v13) == 1)
    {
      sub_1E325F6F0(v0, &qword_1ECF300E8, &qword_1E42B07B0);
      return 0;
    }

    else
    {
      v8 = *v0;
      sub_1E325F6F0(v0 + *(v2 + 48), &unk_1ECF363C0, &unk_1E42A9420);
    }
  }

  return v8;
}

void sub_1E39CB5B0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0, &unk_1E42B07A0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E8, &qword_1E42B07B0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  v24 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v1 + v24, 1, v4))
  {
    goto LABEL_4;
  }

  v52 = v3;
  sub_1E3294EE4(v1 + v24, v11, &qword_1ECF300E0, &unk_1E42B07A0);
  sub_1E3BEACDC(v4, v15);
  sub_1E325F6F0(v11, &qword_1ECF300E0, &unk_1E42B07A0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F0, &unk_1E42B07B8);
  OUTLINED_FUNCTION_34_8();
  if (__swift_getEnumTagSinglePayload(v26, v27, v28) == 1)
  {
    sub_1E325F6F0(v15, &qword_1ECF300E8, &qword_1E42B07B0);
    v3 = v52;
LABEL_4:
    sub_1E41FE414();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    goto LABEL_5;
  }

  sub_1E329E454(&v15[*(v25 + 48)], v23, &unk_1ECF363C0, &unk_1E42A9420);
  v40 = sub_1E41FE414();
  OUTLINED_FUNCTION_34_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, v42, v43);
  v3 = v52;
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_37_1();
    (*(v45 + 32))(v3, v23, v40);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v40);
    goto LABEL_16;
  }

LABEL_5:
  if (__swift_getEnumTagSinglePayload(v1 + v24, 1, v4) || (sub_1E3294EE4(v1 + v24, v8, &qword_1ECF300E0, &unk_1E42B07A0), sub_1E3BEADF0(v4, &v53), sub_1E325F6F0(v8, &qword_1ECF300E0, &unk_1E42B07A0), (v37 = v53) == 0))
  {
    sub_1E41FE414();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }

  else
  {
    v38 = [v53 sharedWatchUrl];

    if (v38)
    {
      sub_1E41FE3C4();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v49 = sub_1E41FE414();
    __swift_storeEnumTagSinglePayload(v20, v39, 1, v49);
    sub_1E329E454(v20, v3, &unk_1ECF363C0, &unk_1E42A9420);
  }

  v50 = sub_1E41FE414();
  if (__swift_getEnumTagSinglePayload(v23, 1, v50) != 1)
  {
    sub_1E325F6F0(v23, &unk_1ECF363C0, &unk_1E42A9420);
  }

LABEL_16:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39CB988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F8, &qword_1E42B07C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E39CB9F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0, &unk_1E42B07A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0 + v5, 1, v1);
  result = 0;
  if (!EnumTagSinglePayload)
  {
    sub_1E3294EE4(v0 + v5, v4, &qword_1ECF300E0, &unk_1E42B07A0);
    sub_1E3BEADF0(v1, &v10);
    v8 = OUTLINED_FUNCTION_34();
    sub_1E325F6F0(v8, v9, &unk_1E42B07A0);
    return v10;
  }

  return result;
}

uint64_t sub_1E39CBAEC()
{
  OUTLINED_FUNCTION_19_52();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_50();
  sub_1E39CBB20(v1);
  return v0;
}

uint64_t sub_1E39CBB20(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F8, &qword_1E42B07C8);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_50_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0, &unk_1E42B07A0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  *(v2 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata) = 0;
  v10 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier;
  v11 = sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v12 + 32))(v2 + v10, a1, v11);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
  v19 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  sub_1E39CB988(v1, v2 + v19);
  swift_endAccess();
  return v2;
}

uint64_t sub_1E39CBC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_19_52();
  v5 = swift_allocObject();
  sub_1E39CBCD0();
  return v5;
}

void sub_1E39CBCD0()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v1;
  v47 = v2;
  v4 = v3;
  v45 = v5;
  v7 = v6;
  v43 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F0, &unk_1E42B07B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v43 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F8, &qword_1E42B07C8);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0, &unk_1E42B07A0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  *(v0 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata) = 0;
  v24 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier;
  v25 = sub_1E41FE624();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v0 + v24, v7, v25);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v25);
  v30 = sub_1E41FE414();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v15, v4, v30);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
  v35 = *(v8 + 48);
  v36 = v46;
  *v11 = v45;
  v11[1] = v36;
  sub_1E329E454(v15, v11 + v35, &unk_1ECF363C0, &unk_1E42A9420);
  sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
  sub_1E3BEAF04();
  (*(v31 + 8))(v4, v30);
  (*(v26 + 8))(v43, v25);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v44);
  v40 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_17_51();
  swift_beginAccess();
  sub_1E39CB988(v19, v0 + v40);
  swift_endAccess();
  v41 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata;
  OUTLINED_FUNCTION_44_25();
  v42 = *(v0 + v41);
  *(v0 + v41) = v47;

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39CBFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19_52();
  v3 = swift_allocObject();
  sub_1E39CC020();
  return v3;
}

void sub_1E39CC020()
{
  OUTLINED_FUNCTION_31_1();
  v26[0] = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F8, &qword_1E42B07C8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0, &unk_1E42B07A0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  *(v0 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata) = 0;
  v14 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier;
  v15 = sub_1E41FE624();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v0 + v14, v5, v15);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  v26[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F0, &unk_1E42B07B8);
  sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
  sub_1E3BEAF84();
  (*(v16 + 8))(v5, v15);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
  v23 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_17_51();
  swift_beginAccess();
  sub_1E39CB988(v9, v0 + v23);
  swift_endAccess();
  v24 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata;
  OUTLINED_FUNCTION_44_25();
  v25 = *(v0 + v24);
  *(v0 + v24) = v26[0];

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39CC1FC(void *a1)
{
  OUTLINED_FUNCTION_19_52();
  v2 = swift_allocObject();
  sub_1E39CC244(a1);
  return v2;
}

uint64_t *sub_1E39CC244(void *a1)
{
  v3 = v1;
  v98 = *v1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F0, &unk_1E42B07B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F8, &qword_1E42B07C8);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v86 - v9;
  v99 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v89 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v88 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v86 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v86 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v86 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30100, &qword_1E42B07D0);
  OUTLINED_FUNCTION_0_10();
  v95 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0, &unk_1E42B07A0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  *(v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata) = 0;
  v31 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E39CCA8C(v31, v32, v33);
  v34 = v100;
  sub_1E4207C04();
  if (!v34)
  {
    v86 = v27;
    v87 = a1;
    v36 = sub_1E41FE624();
    LOBYTE(v101) = 0;
    sub_1E32AA268(&qword_1ECF30108, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v37 = v92;
    sub_1E4207864();
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v36);
    sub_1E329E454(v37, v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, &qword_1ECF29408, &qword_1E42C4850);
    LOBYTE(v101) = 1;
    v98 = v24;
    v100 = v2;
    v38 = sub_1E4207834();
    v39 = v96;
    v41 = v40;
    v92 = v38;
    v42 = v97;
    LOBYTE(v101) = 2;
    sub_1E32AA268(&qword_1ECF30110, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1E4207864();
    v43 = v93;
    v44 = v94;
    v45 = v99;
    v46 = __swift_storeEnumTagSinglePayload(v39, 0, 1, v99);
    if (v41)
    {
      sub_1E3294EE4(v39, v43, &unk_1ECF363C0, &unk_1E42A9420);
      OUTLINED_FUNCTION_34_8();
      if (__swift_getEnumTagSinglePayload(v49, v50, v51) != 1)
      {
        v54 = v89;
        v55 = v91;
        (*(v89 + 32))(v91, v43, v45);
        v56 = v88;
        (*(v54 + 16))(v88, v55, v45);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v57, v58, v59, v45);
        v60 = *(v90 + 48);
        *v44 = v92;
        v44[1] = v41;
        sub_1E329E454(v56, v44 + v60, &unk_1ECF363C0, &unk_1E42A9420);
        sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
        v61 = v97;
        sub_1E3BEAF04();
        (*(v54 + 8))(v91, v45);
        sub_1E325F6F0(v39, &unk_1ECF363C0, &unk_1E42A9420);
        v62 = OUTLINED_FUNCTION_29_33();
        v63(v62, v98);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v86);
        v67 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
        OUTLINED_FUNCTION_17_51();
        swift_beginAccess();
        v68 = v3 + v67;
        v69 = v61;
LABEL_11:
        sub_1E39CB988(v69, v68);
        swift_endAccess();
        v35 = v87;
        goto LABEL_12;
      }

      v46 = sub_1E325F6F0(v43, &unk_1ECF363C0, &unk_1E42A9420);
    }

    v102 = 3;
    sub_1E39CCAE0(v46, v47, v48);
    sub_1E4207864();
    sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
    v70 = OUTLINED_FUNCTION_75();
    sub_1E38DCD14(v70, v71);
    v72 = OUTLINED_FUNCTION_75();
    v74 = sub_1E39CCB34(v72, v73);
    if (v74)
    {
      v101 = v74;
      sub_1E3BEAF84();
      v75 = OUTLINED_FUNCTION_75();
      sub_1E38DCCB0(v75, v76);
      sub_1E325F6F0(v96, &unk_1ECF363C0, &unk_1E42A9420);
      v77 = OUTLINED_FUNCTION_29_33();
      v78(v77, v98);
      v79 = v42;
      v80 = 0;
    }

    else
    {
      v83 = OUTLINED_FUNCTION_75();
      sub_1E38DCCB0(v83, v84);
      v85 = v98;
      sub_1E325F6F0(v96, &unk_1ECF363C0, &unk_1E42A9420);
      v52 = OUTLINED_FUNCTION_29_33();
      v53(v52, v85);
      v79 = v42;
      v80 = 1;
    }

    __swift_storeEnumTagSinglePayload(v79, v80, 1, v86);
    v81 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
    OUTLINED_FUNCTION_17_51();
    swift_beginAccess();
    v68 = v3 + v81;
    v69 = v42;
    goto LABEL_11;
  }

  sub_1E325F6F0(v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either, &qword_1ECF300F8, &qword_1E42B07C8);

  swift_deallocPartialClassInstance();
  v35 = a1;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v3;
}

unint64_t sub_1E39CCA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF51820[0];
  if (!qword_1ECF51820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF51820);
  }

  return result;
}

unint64_t sub_1E39CCAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30118;
  if (!qword_1ECF30118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30118);
  }

  return result;
}

id sub_1E39CCB34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1E41FE454();
    sub_1E38DCE1C(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() videosPlayableFromSerializedSharedData_];

  return v5;
}

void *sub_1E39CCBB4()
{
  v1 = v0;
  v2 = *v0;
  if (_MergedGlobals_178 != -1)
  {
    OUTLINED_FUNCTION_3_88(&_MergedGlobals_178);
  }

  v3 = sub_1E41FFCB4();
  __swift_project_value_buffer(v3, qword_1ECF713C0);
  OUTLINED_FUNCTION_50();

  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = swift_slowAlloc();
    v12[3] = v2;
    v13 = v7;
    *v6 = 136315138;
    v12[0] = v1;

    v8 = sub_1E3294FA4(v12);
    v10 = sub_1E3270FC8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E323F000, v4, v5, "%s deinit", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_65_0();
  }

  sub_1E325F6F0(v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either, &qword_1ECF300F8, &qword_1E42B07C8);
  sub_1E325F6F0(v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, &qword_1ECF29408, &qword_1E42C4850);
  return v1;
}

uint64_t sub_1E39CCD64()
{
  sub_1E39CCBB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E39CCDBC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_50_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30120, &unk_1E42B07D8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E39CCA8C(v9, v10, v11);
  sub_1E4207C14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  sub_1E39CF9E0();
  sub_1E42078E4();
  if (!v19)
  {
    sub_1E39CB410();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    sub_1E39CFA94();
    sub_1E42078E4();

    sub_1E39CB5B0();
    sub_1E39CFB10();
    sub_1E42078E4();
    sub_1E325F6F0(v1, &unk_1ECF363C0, &unk_1E42A9420);
    v13 = v5;
    v14 = sub_1E39CB9F8();
    v15 = v14;
    if (v14)
    {
      v16 = [v14 serializedSharedData];

      if (v16)
      {
        v15 = sub_1E41FE464();
        v18 = v17;

LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30150, &qword_1E42B07E8);
        sub_1E39CFBC4();
        sub_1E42078E4();
        sub_1E38DCE1C(v15, v18);
        return (*(v7 + 8))(v2, v13);
      }

      v15 = 0;
    }

    v18 = 0xF000000000000000;
    goto LABEL_11;
  }

  return (*(v7 + 8))(v2, v5);
}

unint64_t sub_1E39CD0D4()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E39CD11C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x6157646572616873;
      break;
    case 3:
      result = 0x6C50646572616873;
      break;
    case 4:
      result = 0x4D77656976657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E39CD1E8(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0x696669746E656469;
  v6 = 0xEA00000000007265;
  switch(v4)
  {
    case 1:
      v5 = 0x6157646572616873;
      v6 = 0xED00006449686374;
      break;
    case 2:
      v5 = 0x6157646572616873;
      v7 = 0x6C7255686374;
      goto LABEL_6;
    case 3:
      v5 = 0x6C50646572616873;
      v7 = 0x656C62617961;
LABEL_6:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 4:
      v5 = 0x4D77656976657270;
      v6 = 0xEF61746164617465;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6157646572616873;
      v2 = 0xED00006449686374;
      break;
    case 2:
      v3 = 0x6157646572616873;
      v8 = 0x6C7255686374;
      goto LABEL_12;
    case 3:
      v3 = 0x6C50646572616873;
      v8 = 0x656C62617961;
LABEL_12:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 4:
      v3 = 0x4D77656976657270;
      v2 = 0xEF61746164617465;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E39CD3CC(char a1)
{
  sub_1E4207B44();
  sub_1E39CD11C(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E39CD438(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E39CD534(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E39CD11C(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E39CD594@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39CD0D4();
  *a1 = result;
  return result;
}

uint64_t sub_1E39CD5C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39CD11C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E39CD5F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39CD0D4();
  *a1 = result;
  return result;
}

uint64_t sub_1E39CD62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E39CCA8C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1E39CD668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E39CCA8C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1E39CD6BC()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E39CD754();
}

uint64_t sub_1E39CD754()
{
  OUTLINED_FUNCTION_24();
  v1[28] = v2;
  v1[29] = v0;
  v3 = sub_1E41FFCB4();
  v1[30] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[31] = v4;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v5 = sub_1E41FF2F4();
  OUTLINED_FUNCTION_17_2(v5);
  v1[37] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v6);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v7 = sub_1E41FF374();
  v1[41] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[42] = v8;
  v1[43] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E39CD8F8()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FF364();
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_1E39CD988;

  return sub_1E39CECA0();
}

uint64_t sub_1E39CD988()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 448) = v0;

  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E39CDA78()
{
  v125 = v0;
  v1 = *(v0 + 232);
  v2 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = sub_1E32868C0(v3, &selRef_title);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  MEMORY[0x1E6909CA0](v4, v5);
  v6 = *(v1 + v2);
  if (v6 && (v7 = [v6 subtitleWithSeasonTitlesEnabled_]) != 0)
  {
    v8 = v7;
    v9 = sub_1E4205F14();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  MEMORY[0x1E6909CB0](v9, v11);
  v12 = *(v1 + v2);
  if (v12)
  {
    v13 = [v12 fallbackUrl];
    if (v13)
    {
      v14 = v13;
      sub_1E41FE3C4();

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v20 = *(v0 + 312);
    v21 = sub_1E41FE414();
    __swift_storeEnumTagSinglePayload(v20, v15, 1, v21);
    v22 = OUTLINED_FUNCTION_13_8();
    sub_1E329E454(v22, v23, v24, v25);
  }

  else
  {
    sub_1E41FE414();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }

  sub_1E41FF304();
  sub_1E41FF2E4();
  sub_1E41FF334();
  sub_1E41FF324();
  v26 = *(v1 + v2);
  if (!v26)
  {
    goto LABEL_32;
  }

  v27 = [v26 imageProxy];
  *(v0 + 360) = v27;
  if (v27)
  {
    v28 = v27;
    sub_1E324FBDC();
    v29 = OUTLINED_FUNCTION_37_23();
    v30(v29);
    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_125_0();
      *v33 = 0;
      _os_log_impl(&dword_1E323F000, v31, v32, "GroupWatchActivity:: loading library artwork from image proxy", v33, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v34 = OUTLINED_FUNCTION_35_5();
    v35(v34);
    v36 = swift_task_alloc();
    *(v0 + 368) = v36;
    *(v36 + 16) = v28;
    v37 = swift_task_alloc();
    *(v0 + 376) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30168, &unk_1E42B0808);
    *v37 = v0;
    v37[1] = sub_1E39CE314;
    OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_41_12();

    return MEMORY[0x1EEE6DDE0](v38, v39, v40, v41, v42, v43, v44, v45);
  }

  v47 = *(v1 + v2);
  if (!v47)
  {
    goto LABEL_32;
  }

  if ([v47 artworkImage])
  {
    sub_1E324FBDC();
    v48 = OUTLINED_FUNCTION_37_23();
    v49(v48);
    v50 = sub_1E41FFC94();
    v51 = sub_1E4206814();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_125_0();
      *v52 = 0;
      _os_log_impl(&dword_1E323F000, v50, v51, "GroupWatchActivity:: using artwork image from macOS library", v52, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v53 = *(v0 + 344);

    v54 = OUTLINED_FUNCTION_35_5();
    v55(v54);
    sub_1E41FF314();
    goto LABEL_35;
  }

  v56 = *(v1 + v2);
  if (!v56 || (v57 = sub_1E32868C0(v56, &selRef_imageUrlFormat), !v58))
  {
LABEL_32:
    sub_1E324FBDC();
    v106 = OUTLINED_FUNCTION_22_34();
    v107(v106);
    v53 = sub_1E41FFC94();
    v108 = sub_1E4206814();
    if (os_log_type_enabled(v53, v108))
    {
      v109 = OUTLINED_FUNCTION_125_0();
      *v109 = 0;
      _os_log_impl(&dword_1E323F000, v53, v108, "GroupWatchActivity:: missing imageUrlFormat, not loading artwork", v109, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v110 = OUTLINED_FUNCTION_27_0();
    v111(v110);
LABEL_35:
    OUTLINED_FUNCTION_1_109();
    (*(v112 + 32))(*(v0 + 224), v53);

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_41_12();

    __asm { BRAA            X1, X16 }
  }

  v60 = *(v0 + 272);
  v61 = *(v0 + 248);
  v123 = *(v0 + 240);
  *(v0 + 72) = v57;
  *(v0 + 80) = v58;
  *(v0 + 88) = 8222587;
  *(v0 + 96) = 0xE300000000000000;
  *(v0 + 104) = 3158067;
  *(v0 + 112) = 0xE300000000000000;
  v62 = sub_1E32822E0(v57, v58, v59);
  v63 = MEMORY[0x1E69E6158];
  v70 = OUTLINED_FUNCTION_10_59(v0 + 88, v0 + 104, v64, v65, v66, v67, v68, v69, MEMORY[0x1E69E6158], v62);
  v72 = v71;

  *(v0 + 120) = v70;
  *(v0 + 128) = v72;
  *(v0 + 136) = 8218747;
  *(v0 + 144) = 0xE300000000000000;
  *(v0 + 152) = 3683889;
  *(v0 + 160) = 0xE300000000000000;
  v79 = OUTLINED_FUNCTION_10_59(v0 + 136, v0 + 152, v73, v74, v75, v76, v77, v78, v63, v62);
  v81 = v80;

  *(v0 + 168) = v79;
  *(v0 + 176) = v81;
  *(v0 + 184) = 8218235;
  *(v0 + 192) = 0xE300000000000000;
  *(v0 + 200) = 6778986;
  *(v0 + 208) = 0xE300000000000000;
  v88 = OUTLINED_FUNCTION_10_59(v0 + 184, v0 + 200, v82, v83, v84, v85, v86, v87, v63, v62);
  v90 = v89;

  v91 = sub_1E324FBDC();
  *(v0 + 384) = v91;
  v92 = *(v61 + 16);
  *(v0 + 392) = v92;
  *(v0 + 400) = (v61 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v92(v60, v91, v123);
  v93 = sub_1E41FFC94();
  v94 = sub_1E42067E4();

  v95 = os_log_type_enabled(v93, v94);
  v96 = *(v0 + 272);
  v97 = *(v0 + 240);
  v98 = *(v0 + 248);
  if (v95)
  {
    v99 = OUTLINED_FUNCTION_6_21();
    v100 = swift_slowAlloc();
    v124 = v100;
    *v99 = 136315138;
    *(v99 + 4) = sub_1E3270FC8(v88, v90, &v124);
    _os_log_impl(&dword_1E323F000, v93, v94, "GroupWatchActivity:: loading library artwork with image URL %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v101 = *(v98 + 8);
  v101(v96, v97);
  *(v0 + 408) = v101;
  sub_1E41FE404();

  v102 = sub_1E41FE414();
  OUTLINED_FUNCTION_34_8();
  if (__swift_getEnumTagSinglePayload(v103, v104, v105) == 1)
  {
    sub_1E325F6F0(*(v0 + 304), &unk_1ECF363C0, &unk_1E42A9420);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    *(v0 + 40) = v102;
    __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    OUTLINED_FUNCTION_37_1();
    (*(v115 + 32))();
  }

  v116 = [objc_opt_self() sharedInstance];
  v117 = objc_allocWithZone(MEMORY[0x1E69DF730]);
  v118 = sub_1E38B2064((v0 + 16), v116, 0);
  *(v0 + 416) = v118;
  if (!v118)
  {
    v53 = *(v0 + 344);
    v121 = [0 image];
    sub_1E41FF314();

    goto LABEL_35;
  }

  v119 = swift_task_alloc();
  *(v0 + 424) = v119;
  *v119 = v0;
  v119[1] = sub_1E39CE4E8;
  OUTLINED_FUNCTION_41_12();

  return sub_1E38B2558();
}

uint64_t sub_1E39CE314()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39CE414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  v13 = *(v12 + 360);
  sub_1E41FF314();

  OUTLINED_FUNCTION_1_109();
  v14 = OUTLINED_FUNCTION_16_54();
  v15(v14);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1E39CE4E8(uint64_t a1)
{
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v5 + 432) = v1;

  if (!v1)
  {
    *(v5 + 440) = a1;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E39CE600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  v13 = *(v12 + 440);
  v14 = *(v12 + 416);
  v15 = [v13 image];
  sub_1E41FF314();

  OUTLINED_FUNCTION_1_109();
  v16 = OUTLINED_FUNCTION_16_54();
  v17(v16);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1E39CE6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  v13 = *(v12 + 432);
  (*(v12 + 392))(*(v12 + 256), *(v12 + 384), *(v12 + 240));
  v14 = v13;
  v15 = sub_1E41FFC94();
  v16 = sub_1E42067F4();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v12 + 432);
  v19 = *(v12 + 416);
  if (v17)
  {
    v20 = *(v12 + 416);
    v21 = OUTLINED_FUNCTION_6_21();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v18;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_1E323F000, v15, v16, "GroupWatchActivity:: Failed to create metadata image: %@", v21, 0xCu);
    sub_1E325F6F0(v22, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_65_0();
    v19 = v15;
    v15 = v20;
  }

  (*(v12 + 408))(*(v12 + 256), *(v12 + 240));
  OUTLINED_FUNCTION_1_109();
  v25 = OUTLINED_FUNCTION_16_54();
  v26(v25);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_1E39CE8CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E39CC1FC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1E39CE91C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v12 = OUTLINED_FUNCTION_34();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  sub_1E3294EE4(v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v27 - v16, &qword_1ECF29408, &qword_1E42C4850);
  v18 = sub_1E41FE624();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1E325F6F0(v17, &qword_1ECF29408, &qword_1E42C4850);
  }

  else
  {
    MEMORY[0x1E6908F50]();
    OUTLINED_FUNCTION_37_1();
    (*(v19 + 8))(v17, v18);
  }

  v20 = sub_1E39CB410();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
  }

  else
  {
    sub_1E39CB5B0();
    if (__swift_getEnumTagSinglePayload(v11, 1, v2))
    {
      v22 = 7104878;
      sub_1E325F6F0(v11, &unk_1ECF363C0, &unk_1E42A9420);
      v23 = 0xE300000000000000;
    }

    else
    {
      (*(v4 + 16))(v7, v11, v2);
      sub_1E325F6F0(v11, &unk_1ECF363C0, &unk_1E42A9420);
      v22 = sub_1E41FE314();
      v23 = v24;
      (*(v4 + 8))(v7, v2);
    }
  }

  v27[2] = 0;
  v27[3] = 0xE000000000000000;
  sub_1E42074B4();
  MEMORY[0x1E69109E0](60, 0xE100000000000000);
  v25 = sub_1E4207CE4();
  MEMORY[0x1E69109E0](v25);

  MEMORY[0x1E69109E0](8250, 0xE200000000000000);
  v27[1] = v1;
  sub_1E4207614();
  MEMORY[0x1E69109E0](0x203A6469203ELL, 0xE600000000000000);
  v26 = OUTLINED_FUNCTION_34();
  MEMORY[0x1E69109E0](v26);

  MEMORY[0x1E69109E0](0xD000000000000010, 0x80000001E426A990);
  MEMORY[0x1E69109E0](v22, v23);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39CECA0()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FFCB4();
  v0[4] = v1;
  OUTLINED_FUNCTION_8_0(v1);
  v0[5] = v2;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39CED54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(12, a2, a3))
  {
    v4 = type metadata accessor for VUIUTSNetworkManagerProxy();
    v5 = OUTLINED_FUNCTION_18();
    v15 = (*(v4 + 96) + **(v4 + 96));
    v6 = swift_task_alloc();
    *(v3 + 64) = v6;
    *v6 = v3;
    v6[1] = sub_1E39CEF34;

    return v15(v5 & 1);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v3 + 88) = v8;
    *v8 = v3;
    v8[1] = sub_1E39CF2A8;
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DDE0](v9, v10, v11, 0xD000000000000017, v12, v13, 0, v14);
  }
}

uint64_t sub_1E39CEF34(uint64_t a1)
{
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v5 + 72) = v1;

  if (!v1)
  {
    *(v5 + 80) = a1;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E39CF04C()
{
  v23 = v0;
  v1 = *(v0 + 80);
  v2 = [v1 data];

  sub_1E41FE464();
  OUTLINED_FUNCTION_35_5();
  v3 = sub_1E41FE434();
  v4 = OUTLINED_FUNCTION_35_5();
  sub_1E38DCCB0(v4, v5);
  if (v3)
  {
    sub_1E3280A90(0, &qword_1ECF30188, 0x1E69E15C0);
    v6 = sub_1E3744600(v3);

    v7 = sub_1E37766C4(v6);
    v8 = [v7 features];
    sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
    v9 = sub_1E4205C64();

    v10 = sub_1E4205F14();
    v12 = sub_1E378A81C(v10, v11, v9);

    if (v12)
    {
      v22 = 2;
      MEMORY[0x1E6910D00](v12, &v22);

      LOBYTE(v12) = v22;
    }

    else
    {
    }
  }

  else
  {
    sub_1E324FBDC();
    v13 = OUTLINED_FUNCTION_22_34();
    v14(v13);
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_125_0();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "GroupWatchActivity:: configuration response is not valid", v17, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v18 = OUTLINED_FUNCTION_27_0();
    v19(v18);
    LOBYTE(v12) = 0;
  }

  v20 = *(v0 + 8);

  return v20(v12 & 1);
}

uint64_t sub_1E39CF2A8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39CF38C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E39CF3F8()
{
  *(v0 + 16) = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  sub_1E3280A90(0, &qword_1ECF30180, 0x1E696ABC0);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v0 + 24);
    sub_1E324FBDC();
    v3 = OUTLINED_FUNCTION_22_34();
    v4(v3);
    v5 = v2;
    v6 = sub_1E41FFC94();
    v7 = sub_1E42067F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_6_21();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_1E323F000, v6, v7, "GroupWatchActivity:: error occurred when fetching configuration response%@", v8, 0xCu);
      sub_1E325F6F0(v9, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {
      v10 = v6;
      v6 = v5;
    }

    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 32);

    (*(v12 + 8))(v11, v13);

    v14 = *(v0 + 8);

    return v14(0);
  }

  return result;
}

id sub_1E39CF5E4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30178, &qword_1E42B0A78);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &aBlock[-v9];
  (*(v6 + 16))(&aBlock[-v9], a1, v4, v8);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v10, v4);
  v19 = sub_1E39CFEE0;
  v20 = v12;
  OUTLINED_FUNCTION_11_66();
  v16 = 1107296256;
  v17 = sub_1E38B2C5C;
  v18 = &block_descriptor_38;
  v13 = _Block_copy(aBlock);

  [a2 setCompletionHandler_];
  _Block_release(v13);
  return [a2 load];
}

void sub_1E39CF780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &aBlock[-v6];
  v8 = [objc_opt_self() sharedInstance];
  (*(v4 + 16))(v7, a1, v2);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v7, v2);
  v16 = sub_1E39D000C;
  v17 = v10;
  OUTLINED_FUNCTION_11_66();
  v13 = 1107296256;
  v14 = sub_1E39CF930;
  v15 = &block_descriptor_19_0;
  v11 = _Block_copy(aBlock);

  [v8 fetchConfigurationWithCompletionHandler_];
  _Block_release(v11);
}

void sub_1E39CF930(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

unint64_t sub_1E39CF9E0()
{
  result = qword_1ECF30128;
  if (!qword_1ECF30128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29408, &qword_1E42C4850);
    sub_1E32AA268(&qword_1ECF30130, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30128);
  }

  return result;
}

unint64_t sub_1E39CFA94()
{
  result = qword_1ECF30138;
  if (!qword_1ECF30138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960, &unk_1E4298000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30138);
  }

  return result;
}

unint64_t sub_1E39CFB10()
{
  result = qword_1ECF30140;
  if (!qword_1ECF30140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF363C0, &unk_1E42A9420);
    sub_1E32AA268(&qword_1ECF30148, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30140);
  }

  return result;
}

unint64_t sub_1E39CFBC4()
{
  result = qword_1ECF30158;
  if (!qword_1ECF30158)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30150, &qword_1E42B07E8);
    sub_1E39CFC48(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30158);
  }

  return result;
}

unint64_t sub_1E39CFC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30160;
  if (!qword_1ECF30160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30160);
  }

  return result;
}

void type metadata accessor for CGImage()
{
  if (!qword_1ECF30170)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF30170);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GroupWatchActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E39CFDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF51A30[0];
  if (!qword_1ECF51A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF51A30);
  }

  return result;
}

unint64_t sub_1E39CFE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF51B40;
  if (!qword_1ECF51B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF51B40);
  }

  return result;
}

unint64_t sub_1E39CFE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF51B48[0];
  if (!qword_1ECF51B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF51B48);
  }

  return result;
}

uint64_t sub_1E39CFEE0(void *a1)
{
  v2 = OUTLINED_FUNCTION_34();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_17_2(v4);
  [a1 image];
  v5 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  return sub_1E42063D4();
}

uint64_t objectdestroyTm_18(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E39D000C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_17_2(v4);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  }

  else
  {
    v5 = [a1 features];
    sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
    v6 = sub_1E4205C64();

    v7 = sub_1E4205F14();
    v9 = sub_1E378A81C(v7, v8, v6);

    if (v9)
    {
      v12[0] = 2;
      MEMORY[0x1E6910D00](v9, v12);

      v10 = v12[0];
    }

    else
    {
      v10 = 0;
    }

    v12[1] = v10 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  }

  return sub_1E42063D4();
}

uint64_t sub_1E39D01A4()
{
  type metadata accessor for RecentlySearchedDataManager(0);
  v0 = swift_allocObject();
  result = sub_1E39D0C54();
  qword_1EE2AAAE0 = v0;
  return result;
}

uint64_t sub_1E39D01E4()
{
  v0 = swift_allocObject();
  sub_1E39D0C54();
  return v0;
}

uint64_t *sub_1E39D021C()
{
  if (qword_1EE2948D0 != -1)
  {
    OUTLINED_FUNCTION_17_52(&qword_1EE2948D0);
  }

  return &qword_1EE2AAAE0;
}

unint64_t sub_1E39D025C(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  if (!a2)
  {
    return v2;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v19 = a2 & 0xFFFFFFFFFFFFFFLL;
  v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = 15;
  for (i = 5381; ; i = 127 * (i & 0xFFFFFFFFFFFFFFLL) + v12)
  {
    if (4 * v4 == v8 >> 14)
    {
      v20[0] = i;
      return sub_1E4207944();
    }

    result = v8;
    if ((v8 & 0xC) == v6)
    {
      v13 = OUTLINED_FUNCTION_32_36();
      result = sub_1E3780B3C(v13, v14, v15);
    }

    v11 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1E42060F4();
      v12 = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v20[0] = v2;
      v20[1] = v19;
      v12 = *(v20 + v11);
    }

    else
    {
      result = v7;
      if ((v2 & 0x1000000000000000) == 0)
      {
        result = sub_1E4207524();
      }

      v12 = *(result + v11);
    }

    if ((v8 & 0xC) == v6)
    {
      v16 = OUTLINED_FUNCTION_32_36();
      result = sub_1E3780B3C(v16, v17, v18);
      v8 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_20:
        v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
        continue;
      }
    }

    else if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }

    if (v4 <= v8 >> 16)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_32_36();
    v8 = sub_1E42060C4();
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E39D03EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E39D045C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1E39D04F0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void (*sub_1E39D0560(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1E4200664();
  return sub_1E3844B40;
}

uint64_t sub_1E39D05F0()
{
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30198, &qword_1E42B0AD8);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E39D0660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301A0, &qword_1E42B0AE0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_77();
  v6();
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30198, &qword_1E42B0AD8);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E39D0778(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301A0, &qword_1E42B0AE0);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30198, &qword_1E42B0AD8);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E39D0898;
}

void sub_1E39D0898(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E39D0660(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E39D0660(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*sub_1E39D094C())(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1E39D09A8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

double sub_1E39D09DC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 16, v4);
  *(v1 + 16) = a1;

  return result;
}

uint64_t (*sub_1E39D0A1C())(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1E39D0A68()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

double sub_1E39D0A9C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 24, v4);
  *(v1 + 24) = a1;

  return result;
}

uint64_t (*sub_1E39D0ADC())(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1E39D0B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_10();
  v6 = swift_allocObject();
  sub_1E39D0B7C(a1, a2, a3);
  return v6;
}

void *sub_1E39D0B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  v3[2] = 0;
  OUTLINED_FUNCTION_3_0((v3 + 2), v9);
  v3[2] = a1;
  OUTLINED_FUNCTION_3_0((v3 + 3), &v8);
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1E39D0BF4()
{

  return v0;
}

uint64_t sub_1E39D0C24()
{
  sub_1E39D0BF4();
  OUTLINED_FUNCTION_5_10();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E39D0C54()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_42_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30198, &qword_1E42B0AD8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager__event;
  sub_1E4200634();
  (*(v6 + 32))(v0 + v8, v1, v4);
  v9 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager;
  v10 = [objc_opt_self() defaultManager];
  *(v0 + v9) = v10;
  v11 = sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_cacheCapacity) = 10;
  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_identifierTable) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode) = 0;
  v18 = [v10 URLsForDirectory:9 inDomains:1];
  v19 = sub_1E42062B4();

  sub_1E39D0EE8(v19, v0);

  v20 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_directoryURL;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  sub_1E38DAEEC(v0, v0 + v20);
  if (!__swift_getEnumTagSinglePayload(v0 + v20, 1, v11))
  {
    sub_1E41FE374();
  }

  swift_endAccess();
  OUTLINED_FUNCTION_111();
  (*(v21 + 320))();
  sub_1E39D0F90();
  return v0;
}

uint64_t sub_1E39D0EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1E41FE414();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1E39D0F90()
{
  v2 = &unk_1E42A9420;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E38B2468(v0 + v5, v1);
  v6 = sub_1E41FE414();
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v1, 1, v6);
  OUTLINED_FUNCTION_77();
  sub_1E325F7A8(v7, v8, v9);
  if (v5 == 1)
  {
    sub_1E39D4B10();
  }

  else
  {
    sub_1E39D51F0();
    v10 = [objc_opt_self() DSID];
    v11 = v10;
    if (v10)
    {
      v2 = [v10 stringValue];

      v11 = sub_1E4205F14();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    type metadata accessor for RecentlySearchedDataManager(0);
    sub_1E39D025C(v11, v13);
    OUTLINED_FUNCTION_65_1();

    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = v11;
      *(inited + 40) = v2;
      sub_1E32772D8(inited);
    }

    sub_1E39D4B10();
  }
}

void sub_1E39D1140()
{
  sub_1E39D1168();

  sub_1E39D1468();
}

uint64_t sub_1E39D1168()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36[-v8 - 8];
  v10 = [objc_opt_self() DSID];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 stringValue];

    v11 = sub_1E4205F14();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  type metadata accessor for RecentlySearchedDataManager(0);
  sub_1E39D025C(v11, v14);
  v16 = v15;

  if (v16)
  {
    v17 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_directoryURL;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E38B2468(v0 + v17, v9);
    v18 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    sub_1E38DAEEC(v9, v1 + v18);
    swift_endAccess();
    v19 = sub_1E39D094C();
    v21 = v20;
    v22 = sub_1E41FE414();
    if (!__swift_getEnumTagSinglePayload(v21, 1, v22))
    {
      sub_1E41FE384();
    }

    return (v19)(v36, 0);
  }

  else
  {
    v24 = sub_1E324FBDC();
    (*(v4 + 16))(v0, v24, v2);
    v25 = sub_1E41FFC94();
    v26 = sub_1E42067D4();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_18_46();
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1E323F000, v25, v26, "createSearchHistoryDirectory clearing fileURL", v27, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v28 = OUTLINED_FUNCTION_63_0();
    v29(v28);
    sub_1E41FE414();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    v34 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    sub_1E38DAEEC(v9, v1 + v34);
    return swift_endAccess();
  }
}

void sub_1E39D1468()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_1();
  v13 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_9_61();
  swift_beginAccess();
  sub_1E38B2468(v0 + v20, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v13) == 1)
  {
    sub_1E325F7A8(v0, &unk_1ECF363C0, &unk_1E42A9420);
  }

  else
  {
    v36[2] = v7;
    (*(v15 + 32))(v19, v0, v13);
    v21 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager);
    sub_1E41FE3E4();
    v22 = sub_1E4205ED4();

    v23 = [v21 fileExistsAtPath_];

    if (v23)
    {
      sub_1E39D45D0();
      (*(v15 + 8))(v19, v13);
      goto LABEL_9;
    }

    (*(v15 + 8))(v19, v13);
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v24(v10);
  v25 = sub_1E41FFC94();
  sub_1E42067D4();
  v26 = OUTLINED_FUNCTION_33_32();
  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_18_46();
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_34_10(v28);
    OUTLINED_FUNCTION_35_27();
    _os_log_impl(v29, v30, v31, v32, v33, v34);
    v35 = OUTLINED_FUNCTION_4_86();
    MEMORY[0x1E69143B0](v35);
  }

  (*(v3 + 8))(v10, v1);
LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39D1890()
{
  OUTLINED_FUNCTION_31_1();
  v303 = sub_1E39D571C();
  ViewModelKeys.rawValue.getter(7);
  OUTLINED_FUNCTION_65_1();
  v0 = MEMORY[0x1E69E6158];
  v1 = OUTLINED_FUNCTION_8_59();
  sub_1E329504C(v1, v2);
  v3 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_10_60(isUniquelyReferenced_nonNull_native, v5, v6, isUniquelyReferenced_nonNull_native, v7, v8, v9, v10, v268, v270, v272, v274, v278, v281, v284, v287, v288, v291, v292, v294, v297, v301, v303, v307, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v3, v360, v362, v364, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386);

  ViewModelKeys.rawValue.getter(30);
  v12 = v11;
  v14 = v13;
  *(&v390 + 1) = v0;
  strcpy(&v389, "noreference");
  HIDWORD(v389) = -352321536;
  v15 = OUTLINED_FUNCTION_8_59();
  sub_1E329504C(v15, v16);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_83();
  sub_1E32A87C0(v17, v12, v14, v18);

  ViewModelKeys.rawValue.getter(8);
  v20 = v19;
  v22 = v21;
  v23 = *sub_1E3BA53F4();
  *(&v390 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  *&v389 = v23;
  v24 = OUTLINED_FUNCTION_8_59();
  sub_1E329504C(v24, v25);

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_83();
  sub_1E32A87C0(v26, v20, v22, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  inited = swift_initStackObject();
  v289 = xmmword_1E4297BD0;
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v29;
  *(inited + 48) = sub_1E4205F14();
  *(inited + 56) = v30;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v31;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v32;
  *(inited + 96) = sub_1E4205F14();
  *(inited + 104) = v33;
  *(inited + 112) = sub_1E4205F14();
  *(inited + 120) = v34;
  v35 = sub_1E4205CB4();
  v36 = [objc_allocWithZone(VUILocalizationManager) init];
  v37 = sub_1E3741090(0xD00000000000001DLL, 0x80000001E426ABA0, v36);
  v39 = v38;

  v40 = [objc_allocWithZone(VUILocalizationManager) init];
  v41 = sub_1E3741090(0xD000000000000024, 0x80000001E426ABC0, v40);
  v43 = v42;

  if ([objc_opt_self() isVision] && !*(v304 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    v265 = swift_allocObject();
    *(v265 + 16) = xmmword_1E4297BE0;
    sub_1E384EE08(23);
    *(v265 + 32) = v266;
    *(v265 + 40) = v267;
    *(v265 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    *(v265 + 48) = v37;
    *(v265 + 56) = v39;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1E4299720;
    sub_1E384EE08(23);
    *(v44 + 32) = v45;
    *(v44 + 40) = v46;
    *(v44 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    *(v44 + 48) = v37;
    *(v44 + 56) = v39;
    sub_1E384EE08(60);
    *(v44 + 80) = v47;
    *(v44 + 88) = v48;
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1E4299720;
    ViewModelKeys.rawValue.getter(13);
    *(v49 + 32) = v50;
    *(v49 + 40) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301E0, &unk_1E42B0CF0);
    OUTLINED_FUNCTION_5_10();
    v52 = swift_allocObject();
    v302 = 2;
    *(v52 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301E8, &unk_1E42D9D90);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_1E4297BE0;
    sub_1E384EE08(23);
    *(v53 + 32) = v54;
    *(v53 + 40) = v55;
    *(v53 + 48) = v41;
    *(v53 + 56) = v43;
    *(v52 + 32) = sub_1E4205CB4();
    *(v49 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301F0, &unk_1E42B0D00);
    *(v49 + 48) = v52;
    ViewModelKeys.rawValue.getter(8);
    *(v49 + 80) = v56;
    *(v49 + 88) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F758, &qword_1E42D9E20);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1E4297BD0;
    *(v58 + 32) = sub_1E3BA363C(0);
    *(v58 + 40) = v59;
    *(v58 + 48) = v35;
    *(v58 + 56) = sub_1E3BA363C(1);
    *(v58 + 64) = v60;
    v61 = sub_1E3BA5480();
    *(v58 + 72) = *v61;

    *(v58 + 80) = sub_1E3BA363C(2);
    *(v58 + 88) = v62;
    *(v58 + 96) = *v61;

    OUTLINED_FUNCTION_142_0();
    v63 = sub_1E4205CB4();
    *(v49 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F768, &unk_1E42B0D10);
    *(v49 + 96) = v63;
    v64 = sub_1E4205CB4();
    *(v44 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    *(v44 + 96) = v64;
  }

  v65 = sub_1E4205CB4();
  ViewModelKeys.rawValue.getter(24);
  v67 = v66;
  v69 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301F8, &unk_1E42D9E10);
  v70 = swift_allocObject();
  v285 = xmmword_1E4297BE0;
  *(v70 + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(143);
  *(v70 + 32) = v71;
  *(v70 + 40) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1E4297BE0;
  ViewModelKeys.rawValue.getter(13);
  *(v73 + 32) = v74;
  *(v73 + 40) = v75;
  *(v73 + 48) = v65;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *(v70 + 48) = sub_1E4205CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
  OUTLINED_FUNCTION_142_0();
  v76 = sub_1E4205CB4();
  *(&v390 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30200, &qword_1E42B0D20);
  *&v389 = v76;
  v77 = OUTLINED_FUNCTION_8_59();
  sub_1E329504C(v77, v78);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_83();
  sub_1E32A87C0(v79, v67, v69, v80);

  v298 = v358;
  ViewModelKeys.rawValue.getter(13);
  v279 = v81;
  v282 = v82;
  v273 = 0;
  LODWORD(v275) = 0;
  v83 = 0;
  v84 = *(v304 + 16);
  v85 = (v304 + 32);
  v308 = -1;
  while (2)
  {
    while (2)
    {
      for (i = v83; ; ++i)
      {
        if (v84 == i)
        {
          if (v308 == -1)
          {
            v169 = MEMORY[0x1E69E7CC0];
            v164 = MEMORY[0x1E69E7CC8];
            v149 = MEMORY[0x1E69E6158];
          }

          else
          {
            v149 = MEMORY[0x1E69E6158];
            if (v308 >= v84)
            {
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
              goto LABEL_99;
            }

            ViewModelKeys.rawValue.getter(7);
            v151 = v150;
            v153 = v152;
            *(&v390 + 1) = v149;
            strcpy(&v389, "prototypeCell");
            HIWORD(v389) = -4864;
            v154 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v154, v155);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_83();
            sub_1E32A87C0(v156, v151, v153, v157);

            v161 = sub_1E39D5828(v158, v159, v160);
            sub_1E384EE08(v161);
            OUTLINED_FUNCTION_65_1();
            *(&v390 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
            *&v389 = v358;
            v162 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v162, v163);
            v164 = MEMORY[0x1E69E7CC8];
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_5_85();
            OUTLINED_FUNCTION_77();
            sub_1E32A87C0(v165, v166, v167, v168);

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
            OUTLINED_FUNCTION_5_10();
            v169 = swift_allocObject();
            *(v169 + 16) = v285;
            *(v169 + 32) = v358;
          }

          v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
          *(&v390 + 1) = v276;
          *&v389 = v169;
          v170 = OUTLINED_FUNCTION_8_59();
          sub_1E329504C(v170, v171);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_5_85();
          sub_1E32A87C0(v172, v279, v282, v173);

          ViewModelKeys.rawValue.getter(26);
          OUTLINED_FUNCTION_65_1();
          *(&v390 + 1) = v295;
          *&v389 = v358;
          v174 = OUTLINED_FUNCTION_8_59();
          sub_1E329504C(v174, v175);
          v176 = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_10_60(v176, v177, v178, v176, v179, v180, v181, v182, v269, v271, v273, v276, v279, v282, v285, *(&v285 + 1), v289, *(&v289 + 1), v293, v295, v298, v302, v304, v308, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335, v337, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v298, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387);

          v183 = v359;
          ViewModelKeys.rawValue.getter(7);
          OUTLINED_FUNCTION_65_1();
          *(&v390 + 1) = v149;
          *&v389 = 0xD00000000000001ALL;
          *(&v389 + 1) = 0x80000001E426AA90;
          v184 = OUTLINED_FUNCTION_8_59();
          sub_1E329504C(v184, v185);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_5_85();
          OUTLINED_FUNCTION_77();
          sub_1E32A87C0(v186, v187, v188, v189);

          ViewModelKeys.rawValue.getter(13);
          v280 = v190;
          v283 = v191;
          v299 = sub_1E39D5828(v190, v191, v192);
          v193 = *(v305 + 16);
          if (!v193)
          {
            v194 = MEMORY[0x1E69E7CC0];
LABEL_84:
            *(&v390 + 1) = v277;
            *&v389 = v194;
            v221 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v221, v222);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_83();
            sub_1E32A87C0(v223, v280, v283, v224);

            ViewModelKeys.rawValue.getter(28);
            OUTLINED_FUNCTION_65_1();
            *(&v390 + 1) = v296;
            *&v389 = v359;
            v225 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v225, v226);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_5_85();
            OUTLINED_FUNCTION_77();
            sub_1E32A87C0(v227, v228, v229, v230);

            v231 = *(v305 + 16);

            if (v231)
            {
              ViewModelKeys.rawValue.getter(27);
              v233 = v232;
              v235 = v234;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
              OUTLINED_FUNCTION_5_10();
              v236 = swift_allocObject();
              *(v236 + 16) = v286;
              *(v236 + 32) = v359;
              *(&v390 + 1) = v277;
              *&v389 = v236;
              v237 = OUTLINED_FUNCTION_8_59();
              sub_1E329504C(v237, v238);
              v239 = swift_isUniquelyReferenced_nonNull_native();
              v359 = v183;
              sub_1E32A87C0(v388, v233, v235, v239);
            }

            else
            {
            }

            ViewModelKeys.rawValue.getter(8);
            v306 = v240;
            v300 = v241;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
            v242 = swift_initStackObject();
            *(v242 + 16) = xmmword_1E4299720;
            *(v242 + 32) = sub_1E3BA363C(2);
            *(v242 + 40) = v243;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
            v244 = swift_initStackObject();
            *(v244 + 16) = v290;
            *(v244 + 32) = sub_1E4205F14();
            *(v244 + 40) = v245;
            *(v244 + 48) = 0xD000000000000011;
            *(v244 + 56) = 0x80000001E426ABF0;
            *(v244 + 64) = sub_1E4205F14();
            *(v244 + 72) = v246;
            *(v244 + 80) = 0x666C656853;
            *(v244 + 88) = 0xE500000000000000;
            *(v244 + 96) = sub_1E4205F14();
            *(v244 + 104) = v247;
            *(v244 + 112) = 0xD000000000000010;
            *(v244 + 120) = 0x80000001E426AC10;
            v248 = sub_1E4205CB4();
            v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
            *(v242 + 72) = v249;
            *(v242 + 48) = v248;
            *(v242 + 80) = sub_1E3BA363C(1);
            *(v242 + 88) = v250;
            v251 = swift_initStackObject();
            *(v251 + 16) = v290;
            *(v251 + 32) = sub_1E4205F14();
            *(v251 + 40) = v252;
            *(v251 + 48) = 0xD000000000000011;
            *(v251 + 56) = 0x80000001E426ABF0;
            *(v251 + 64) = sub_1E4205F14();
            *(v251 + 72) = v253;
            *(v251 + 80) = 0x666C656853;
            *(v251 + 88) = 0xE500000000000000;
            *(v251 + 96) = sub_1E4205F14();
            *(v251 + 104) = v254;
            *(v251 + 112) = 0xD000000000000010;
            *(v251 + 120) = 0x80000001E426AC10;
            v255 = sub_1E4205CB4();
            *(v242 + 120) = v249;
            *(v242 + 96) = v255;
            OUTLINED_FUNCTION_63_0();
            v256 = sub_1E4205CB4();
            *(&v390 + 1) = v296;
            *&v389 = v256;
            v257 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v257, v258);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_83();
            sub_1E32A87C0(v259, v306, v300, v260);

            sub_1E384EE08(134);
            v262 = v261;
            v264 = v263;
            *(&v390 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
            *&v389 = v359;
            sub_1E3A7CD30(v262, v264, &v389, 0);
            OUTLINED_FUNCTION_12_1();

            __swift_destroy_boxed_opaque_existential_1(&v389);
            if (v262)
            {
              type metadata accessor for CollectionViewModel();
              if (!swift_dynamicCastClass())
              {
              }
            }

            OUTLINED_FUNCTION_25_2();
            return;
          }

          v194 = MEMORY[0x1E69E7CC0];
          v195 = v85;
          while (1)
          {
            v196 = v183;
            v309 = v195;
            v197 = *v195;

            sub_1E384EE08(v299);
            v199 = v198;
            v201 = v200;
            *(&v390 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
            *&v389 = v197;
            v202 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v202, v203);
            swift_isUniquelyReferenced_nonNull_native();
            v359 = v164;
            v204 = OUTLINED_FUNCTION_142_0();
            v206 = sub_1E327D33C(v204, v205);
            if (__OFADD__(*(v164 + 16), (v207 & 1) == 0))
            {
              break;
            }

            v208 = v206;
            v209 = v207;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
            if (sub_1E4207644())
            {
              v210 = OUTLINED_FUNCTION_142_0();
              v212 = sub_1E327D33C(v210, v211);
              v164 = MEMORY[0x1E69E7CC8];
              if ((v209 & 1) != (v213 & 1))
              {
                goto LABEL_100;
              }

              v208 = v212;
            }

            else
            {
              v164 = MEMORY[0x1E69E7CC8];
            }

            if (v209)
            {
              v214 = (*(v359 + 56) + 32 * v208);
              __swift_destroy_boxed_opaque_existential_1(v214);
              sub_1E329504C(v388, v214);
            }

            else
            {
              OUTLINED_FUNCTION_50_15(v359 + 8 * (v208 >> 6));
              v216 = (v215 + 16 * v208);
              *v216 = v199;
              v216[1] = v201;
              sub_1E329504C(v388, (*(v359 + 56) + 32 * v208));
              v217 = *(v359 + 16);
              v122 = __OFADD__(v217, 1);
              v218 = v217 + 1;
              if (v122)
              {
                goto LABEL_95;
              }

              *(v359 + 16) = v218;
            }

            v183 = v196;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v194 = sub_1E39239C8(0, v194[2] + 1, 1, v194);
            }

            v220 = v194[2];
            v219 = v194[3];
            if (v220 >= v219 >> 1)
            {
              v194 = sub_1E39239C8((v219 > 1), v220 + 1, 1, v194);
            }

            v194[2] = v220 + 1;
            v194[v220 + 4] = v359;
            v195 = v309 + 1;
            if (!--v193)
            {
              goto LABEL_84;
            }
          }

LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        if (i >= v84)
        {
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        v83 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_93;
        }

        v87 = *(v304 + 8 * i + 32);

        ViewModelKeys.rawValue.getter(13);
        if (!*(v87 + 16))
        {

          goto LABEL_14;
        }

        v90 = sub_1E327D33C(v88, v89);
        v92 = v91;

        if (v92)
        {
          break;
        }

LABEL_14:

LABEL_15:
        ;
      }

      sub_1E328438C(*(v87 + 56) + 32 * v90, &v389);

      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      OUTLINED_FUNCTION_48_21(v93, v94, v95, v96, v97, v98, v99, v100, v269, v271, v273, v275, v279, v282, v285, *(&v285 + 1), v289, *(&v289 + 1), v293, v295, v298, v302, v304, v308, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335, v337, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v358, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387);
      if ((OUTLINED_FUNCTION_21_45() & 1) == 0)
      {
        goto LABEL_15;
      }

      v101 = *&v388[0];
      sub_1E384EE08(23);
      OUTLINED_FUNCTION_42_28();
      if (!v103)
      {

        goto LABEL_21;
      }

      OUTLINED_FUNCTION_55_18(v102);
      OUTLINED_FUNCTION_25_40();
      if ((v90 & 1) == 0)
      {
LABEL_21:
        v271 = 0;
        goto LABEL_33;
      }

      v104 = sub_1E328438C(*(v101 + 56) + 32 * v87, v388);
      v112 = OUTLINED_FUNCTION_48_21(v104, v105, v106, v107, v108, v109, v110, v111, v269, v271, v273, v275, v279, v282, v285, *(&v285 + 1), v289, *(&v289 + 1), v293, v295, v298, v302, v304, v308, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335, v337, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v358, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387);
      sub_1E329504C(v112, v113);
      v114 = OUTLINED_FUNCTION_8_59();
      sub_1E328438C(v114, v115);
      if (swift_dynamicCast())
      {
        v271 = sub_1E4206024();
      }

      else
      {
        v271 = 0;
      }

      v116 = OUTLINED_FUNCTION_8_59();
      sub_1E328438C(v116, v117);
      if ((OUTLINED_FUNCTION_21_45() & 1) == 0)
      {
        goto LABEL_32;
      }

      ViewModelKeys.rawValue.getter(14);
      if (!*(v358 + 16))
      {

        goto LABEL_31;
      }

      v269 = sub_1E327D33C(v118, v119);
      LOBYTE(v90) = v120;

      if ((v90 & 1) == 0)
      {
LABEL_31:

        goto LABEL_32;
      }

      sub_1E328438C(*(v358 + 56) + 32 * v269, v388);

      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_32:
        __swift_destroy_boxed_opaque_existential_1(&v389);
        goto LABEL_33;
      }

      v121 = sub_1E4206024();

      __swift_destroy_boxed_opaque_existential_1(&v389);
      v122 = __OFADD__(v271, v121);
      v271 += v121;
      if (v122)
      {
        goto LABEL_97;
      }

LABEL_33:
      sub_1E384EE08(15);
      OUTLINED_FUNCTION_42_28();
      if (v124)
      {
        OUTLINED_FUNCTION_55_18(v123);
        OUTLINED_FUNCTION_25_40();
        if (v90)
        {
          OUTLINED_FUNCTION_36_25();
          sub_1E325F7A8(&v389, &unk_1ECF296E0, &unk_1E4298030);
          v125 = v273;
          if ((v275 & 1) == 0)
          {
            v125 = 0;
          }

          v273 = v125;
          LODWORD(v275) = 1;
          goto LABEL_42;
        }
      }

      else
      {
      }

      v389 = 0u;
      v390 = 0u;
      sub_1E325F7A8(&v389, &unk_1ECF296E0, &unk_1E4298030);
      if (v275)
      {

        LODWORD(v275) = 1;
        continue;
      }

      break;
    }

    LODWORD(v275) = 0;
LABEL_42:
    sub_1E384EE08(39);
    OUTLINED_FUNCTION_42_28();
    if (!v127)
    {

      goto LABEL_49;
    }

    OUTLINED_FUNCTION_55_18(v126);
    OUTLINED_FUNCTION_25_40();
    if (v90)
    {
      v128 = OUTLINED_FUNCTION_36_25();
      OUTLINED_FUNCTION_48_21(v128, v129, v130, v131, v132, v133, v134, v135, v269, v271, v273, v275, v279, v282, v285, *(&v285 + 1), v289, *(&v289 + 1), v293, v295, v298, v302, v304, v308, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335, v337, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v358, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387);
      if (OUTLINED_FUNCTION_21_45())
      {

        v122 = __OFADD__(v271, 100);
        v271 += 100;
        if (v122)
        {
          goto LABEL_98;
        }
      }
    }

LABEL_49:
    sub_1E384EE08(41);
    OUTLINED_FUNCTION_42_28();
    if (!v137)
    {

      goto LABEL_55;
    }

    OUTLINED_FUNCTION_55_18(v136);
    OUTLINED_FUNCTION_25_40();
    if ((v90 & 1) == 0)
    {
LABEL_55:

      goto LABEL_56;
    }

    OUTLINED_FUNCTION_36_25();

    OUTLINED_FUNCTION_48_21(v138, v139, v140, v141, v142, v143, v144, v145, v269, v271, v273, v275, v279, v282, v285, *(&v285 + 1), v289, *(&v289 + 1), v293, v295, v298, v302, v304, v308, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335, v337, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v358, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387);
    if ((OUTLINED_FUNCTION_21_45() & 1) == 0)
    {
LABEL_56:
      v146 = v271;
      v147 = v273;
      goto LABEL_57;
    }

    v146 = v271 + 46;
    if (!__OFADD__(v271, 46))
    {
      v147 = v273;
LABEL_57:
      v148 = v308;
      if (v147 < v146)
      {
        v148 = i;
      }

      v308 = v148;
      if (v147 <= v146)
      {
        v147 = v146;
      }

      v273 = v147;
      continue;
    }

    break;
  }

LABEL_99:
  __break(1u);
LABEL_100:
  sub_1E4207A74();
  __break(1u);
}

void sub_1E39D2B70()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - v6;
  v8 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_9_61();
  swift_beginAccess();
  sub_1E38B2468(v0 + v8, v7);
  v9 = sub_1E41FE414();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
  sub_1E325F7A8(v7, &unk_1ECF363C0, &unk_1E42A9420);
  if (EnumTagSinglePayload != 1)
  {
    v15[7] = v2;
    type metadata accessor for ViewModel();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301A8, &qword_1E42B0AE8);
    if (swift_dynamicCast())
    {
      v11 = *(&v17 + 1);
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
      v13 = (*(v12 + 8))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v16);
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      sub_1E325F7A8(&v16, &qword_1ECF301B0, &qword_1E42B0AF0);
    }

LABEL_7:
    sub_1E39D2EF8();
    sub_1E39D3258();
    OUTLINED_FUNCTION_111();
    (*(v14 + 152))(1);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E39D2EF8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v5 = v3[3];
  if (v5)
  {
    v6 = v3[2];
    v7 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_identifierTable;
    OUTLINED_FUNCTION_9_61();
    swift_beginAccess();
    v8 = *(v0 + v7);

    v9 = sub_1E396E6C0(v6, v5, v8);

    if (v9)
    {
      v11 = *(v1 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode);
      if (v11)
      {
        v12 = v9 == v11;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
        sub_1E39D5F40(v9);
        sub_1E39D6120(v9);
      }
    }

    else
    {
      v26 = (*(*v3 + 672))(v10);
      type metadata accessor for RecentlySearchedDataManager.Node();
      OUTLINED_FUNCTION_5_10();
      v27 = swift_allocObject();
      sub_1E39D0B7C(0, 0, v26);
      if (*(*(v1 + v7) + 16) >= 0xAuLL)
      {
        v28 = *(v1 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode);
        if (v28)
        {
          v29 = *(v28 + 32);

          ViewModelKeys.rawValue.getter(7);
          sub_1E3277E60(v30, v31, v29, &v36);

          if (v37)
          {
            if (swift_dynamicCast())
            {
              sub_1E39D5F40(v28);
              OUTLINED_FUNCTION_23_2();
              swift_beginAccess();
              sub_1E39D6220(v33, v35);
              swift_endAccess();
            }
          }

          else
          {

            sub_1E325F7A8(&v36, &unk_1ECF296E0, &unk_1E4298030);
          }
        }
      }

      sub_1E39D6120(v27);
      OUTLINED_FUNCTION_23_2();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v1 + v7);
      sub_1E39D62F8(v27, v6, v5, isUniquelyReferenced_nonNull_native);
      *(v1 + v7) = v34;
      swift_endAccess();
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v13(v0);
    v14 = sub_1E41FFC94();
    v15 = sub_1E4206814();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_18_46();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_34_10(v16);
      OUTLINED_FUNCTION_35_27();
      _os_log_impl(v17, v18, v19, v20, v21, v22);
      v23 = OUTLINED_FUNCTION_4_86();
      MEMORY[0x1E69143B0](v23);
    }

    v24 = OUTLINED_FUNCTION_63_0();
    v25(v24);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39D3258()
{
  v71[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v68 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v69 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v63 - v13;
  v15 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_40_30();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v63 - v20;
  v22 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E38B2468(v0 + v22, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v23 = sub_1E325F7A8(v14, &unk_1ECF363C0, &unk_1E42A9420);
    v26 = sub_1E39D68C8(v23, v24, v25);
    OUTLINED_FUNCTION_206(&type metadata for RecentlySearchedDataManager.RecentlySearchedDataManagerError, v26);
    *v27 = 2;
    return swift_willThrow();
  }

  v63[1] = v1;
  v64 = v2;
  v65 = v21;
  v66 = v17;
  v29 = (v17 + 32);
  v30 = *(v17 + 32);
  v30(v21, v14, v15);
  sub_1E39D571C();
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v32 = sub_1E42062A4();

  v70[0] = 0;
  v33 = [v31 dataWithPropertyList:v32 format:100 options:0 error:v70];

  v34 = v70[0];
  if (v33)
  {
    v35 = sub_1E41FE464();
    v37 = v36;

    v38 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_directoryURL;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E38B2468(v38 + v0, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
    {
      (*(v66 + 8))(v65, v15);
      sub_1E38DCCB0(v35, v37);
      return sub_1E325F7A8(v11, &unk_1ECF363C0, &unk_1E42A9420);
    }

    v63[0] = v37;
    v52 = v67;
    v30(v67, v11, v15);
    v53 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager);
    sub_1E41FE3E4();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_122();

    v54 = [v53 fileExistsAtPath_];

    v29 = v65;
    v55 = v66;
    if (v54)
    {
      goto LABEL_12;
    }

    v56 = sub_1E41FE364();
    v71[0] = 0;
    v38 = [v53 createDirectoryAtURL:v56 withIntermediateDirectories:1 attributes:0 error:v71];

    if (v38)
    {
      v57 = v71[0];
LABEL_12:
      sub_1E41FE3E4();
      sub_1E4205ED4();
      OUTLINED_FUNCTION_122();

      v58 = v63[0];
      sub_1E39D6434(v38, v35, v63[0], 0, v53);
      sub_1E38DCCB0(v35, v58);

      v59 = *(v55 + 8);
      (v59)(v52, v15);
      v60 = OUTLINED_FUNCTION_63_0();
      return v59(v60);
    }

    v61 = v71[0];
    OUTLINED_FUNCTION_12_1();
    v40 = sub_1E41FE274();

    swift_willThrow();
    v62 = sub_1E38DCCB0(v35, v63[0]);
    (*(v55 + 8))(v52, v15, v62);
  }

  else
  {
    v39 = v34;
    v40 = sub_1E41FE274();

    swift_willThrow();
  }

  v41 = sub_1E324FBDC();
  v43 = v68;
  v42 = v69;
  v44 = v64;
  (*(v68 + 16))(v69, v41, v64);
  v45 = v40;
  v46 = sub_1E41FFC94();
  v47 = sub_1E4206814();

  if (os_log_type_enabled(v46, v47))
  {
    OUTLINED_FUNCTION_13_13();
    v48 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v67 = swift_slowAlloc();
    v71[0] = v67;
    *v48 = 136315138;
    swift_getErrorValue();
    v49 = sub_1E4207AB4();
    sub_1E3270FC8(v49, v50, v71);
    OUTLINED_FUNCTION_12_1();

    *(v48 + 4) = v29;
    _os_log_impl(&dword_1E323F000, v46, v47, "RecentlySearchedDataManager::Disk saving error with description: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v51 = OUTLINED_FUNCTION_4_86();
    MEMORY[0x1E69143B0](v51);

    (*(v43 + 8))(v69, v64);
  }

  else
  {

    (*(v43 + 8))(v42, v44);
  }

  return (*(v66 + 8))(v65, v15);
}

void sub_1E39D38B4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_9_61();
  swift_beginAccess();
  sub_1E38B2468(v1 + v9, v8);
  v10 = sub_1E41FE414();
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v8, 1, v10);
  sub_1E325F7A8(v8, &unk_1ECF363C0, &unk_1E42A9420);
  if (v9 != 1)
  {
    sub_1E39D3B58(v3);
    sub_1E39D3258();
    OUTLINED_FUNCTION_111();
    (*(v11 + 152))(2);
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E39D3B58(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = *(a1 + 16);
    v9 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_identifierTable;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v11 = *(v1 + v9);
    if (*(v11 + 16))
    {

      v12 = sub_1E327D33C(v8, v7);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);

        v15 = *(v14 + 32);
        ViewModelKeys.rawValue.getter(7);
        sub_1E3277E60(v16, v17, v15, &v31);

        if (v32)
        {
          if (swift_dynamicCast())
          {
            sub_1E39D5F40(v14);
            OUTLINED_FUNCTION_23_2();
            swift_beginAccess();
            sub_1E39D6220(v29, v30);
            swift_endAccess();
          }
        }

        else
        {

          sub_1E325F7A8(&v31, &unk_1ECF296E0, &unk_1E4298030);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v18(v1);
    v19 = sub_1E41FFC94();
    v20 = sub_1E4206814();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_18_46();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_34_10(v21);
      OUTLINED_FUNCTION_35_27();
      _os_log_impl(v22, v23, v24, v25, v26, v27);
      v28 = OUTLINED_FUNCTION_4_86();
      MEMORY[0x1E69143B0](v28);
    }

    (*(v5 + 8))(v1, v3);
  }

  return result;
}

uint64_t sub_1E39D3DC4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6158];
  v3 = sub_1E4205CB4();
  ViewModelKeys.rawValue.getter(8);
  v5 = v4;
  v7 = v6;
  v8 = (*(*a1 + 672))();
  sub_1E3277E60(v5, v7, v8, &v87);

  if (!*(&v88 + 1))
  {
    goto LABEL_17;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_7_89(v9, v10) & 1) == 0)
  {
    return v3;
  }

  v11 = sub_1E3BA363C(0);
  OUTLINED_FUNCTION_38_22(v11, v12, v13, v14, v15, v16, v17, v18, v77, v80, v84, *(&v84 + 1), v85, v86, v87);

  if (*(&v88 + 1))
  {
    if (OUTLINED_FUNCTION_7_89(v19, v20))
    {
      sub_1E4205F14();
      OUTLINED_FUNCTION_16_11();
      v21 = sub_1E3BA48D4();
      *(&v88 + 1) = v2;
      *&v87 = v21;
      *(&v87 + 1) = v22;
      OUTLINED_FUNCTION_37_24(v21, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_14_69(isUniquelyReferenced_nonNull_native, v24, v25, isUniquelyReferenced_nonNull_native);

      sub_1E3BA363C(0);
      OUTLINED_FUNCTION_16_11();
      *(&v88 + 1) = v9;
      *&v87 = v84;
      OUTLINED_FUNCTION_37_24(v26, v27);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v3;
      OUTLINED_FUNCTION_14_69(v28, v29, v30, v28);
    }
  }

  else
  {
    sub_1E325F7A8(&v87, &unk_1ECF296E0, &unk_1E4298030);
  }

  v31 = sub_1E3BA363C(1);
  OUTLINED_FUNCTION_38_22(v31, v32, v33, v34, v35, v36, v37, v38, v78, v81, v84, *(&v84 + 1), v85, v86, v87);

  if (*(&v88 + 1))
  {
    if (OUTLINED_FUNCTION_7_89(v39, v40))
    {
      sub_1E4205F14();
      OUTLINED_FUNCTION_16_11();
      v41 = sub_1E3BA48D4();
      *(&v88 + 1) = v2;
      *&v87 = v41;
      *(&v87 + 1) = v42;
      OUTLINED_FUNCTION_37_24(v41, v42);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_14_69(v43, v44, v45, v43);

      v46 = sub_1E4205F14();
      v48 = sub_1E327D33C(v46, v47);
      if (v49)
      {
        v50 = v48;
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
        sub_1E4207644();

        sub_1E329504C((*(v84 + 56) + 32 * v50), &v87);
        sub_1E4207664();
      }

      else
      {
        v87 = 0u;
        v88 = 0u;
      }

      sub_1E325F7A8(&v87, &unk_1ECF296E0, &unk_1E4298030);
      sub_1E4205F14();
      OUTLINED_FUNCTION_16_11();
      *(&v88 + 1) = v9;
      *&v87 = v84;
      OUTLINED_FUNCTION_37_24(v51, v52);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v3;
      OUTLINED_FUNCTION_14_69(v53, v54, v55, v53);
    }
  }

  else
  {
    sub_1E325F7A8(&v87, &unk_1ECF296E0, &unk_1E4298030);
  }

  v56 = sub_1E3BA363C(2);
  OUTLINED_FUNCTION_38_22(v56, v57, v58, v59, v60, v61, v62, v63, v79, v82, v84, *(&v84 + 1), v85, v86, v87);

  if (!*(&v88 + 1))
  {
LABEL_17:
    sub_1E325F7A8(&v87, &unk_1ECF296E0, &unk_1E4298030);
    return v3;
  }

  if (OUTLINED_FUNCTION_7_89(v64, v65))
  {
    v66 = sub_1E4205F14();
    v68 = v67;
    v69 = sub_1E3BA48D4();
    *(&v88 + 1) = v2;
    *&v87 = v69;
    *(&v87 + 1) = v70;
    OUTLINED_FUNCTION_37_24(v69, v70);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v84;
    sub_1E32A87C0(&v84, v66, v68, v71);

    v72 = sub_1E4205F14();
    v74 = v73;
    *(&v88 + 1) = v9;
    *&v87 = v83;
    OUTLINED_FUNCTION_37_24(v72, v73);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(&v84, v72, v74, v75);
  }

  return v3;
}

void sub_1E39D4228()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode) = 0;

  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode) = 0;

  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301B8, &qword_1E42B0AF8);
  sub_1E4205D14();
  swift_endAccess();
  sub_1E39D3258();
  OUTLINED_FUNCTION_111();
  (*(v2 + 152))(0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39D44AC()
{
  v1 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager__event;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30198, &qword_1E42B0AD8);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  OUTLINED_FUNCTION_77();
  sub_1E325F7A8(v3, v4, v5);
  OUTLINED_FUNCTION_77();
  sub_1E325F7A8(v6, v7, v8);

  return v0;
}

uint64_t sub_1E39D4578()
{
  sub_1E39D44AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E39D45D0()
{
  v53[7] = *MEMORY[0x1E69E9840];
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v50 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42_1();
  v10 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E38B2468(v0 + v17, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v10) == 1)
  {
    v18 = sub_1E325F7A8(v0, &unk_1ECF363C0, &unk_1E42A9420);
    v21 = sub_1E39D68C8(v18, v19, v20);
    OUTLINED_FUNCTION_206(&type metadata for RecentlySearchedDataManager.RecentlySearchedDataManagerError, v21);
    *v22 = 2;
    return swift_willThrow();
  }

  v49 = v4;
  (*(v12 + 32))(v16, v0, v10);
  v24 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager);
  sub_1E41FE3E4();
  v25 = sub_1E4205ED4();

  v26 = [v24 contentsAtPath_];

  if (!v26)
  {
    return (*(v12 + 8))(v16, v10);
  }

  sub_1E41FE464();

  v52 = 100;
  v27 = objc_opt_self();
  OUTLINED_FUNCTION_113();
  v28 = sub_1E41FE454();
  v53[0] = 0;
  v29 = [v27 propertyListWithData:v28 options:0 format:&v52 error:v53];

  if (!v29)
  {
    v32 = v53[0];
    v33 = sub_1E41FE274();

    swift_willThrow();
    v34 = OUTLINED_FUNCTION_113();
    sub_1E38DCCB0(v34, v35);
LABEL_11:
    v38 = sub_1E324FBDC();
    (*(v49 + 16))(v50, v38, v2);
    v39 = v33;
    v40 = sub_1E41FFC94();
    v41 = sub_1E4206814();

    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_13_13();
      v47 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v48 = swift_slowAlloc();
      v53[0] = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v42 = sub_1E4207AB4();
      sub_1E3270FC8(v42, v43, v53);
      OUTLINED_FUNCTION_122();

      *(v47 + 4) = v47;
      _os_log_impl(&dword_1E323F000, v40, v41, "RecentlySearchedDataManager::Disk loading error with description: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      v44 = OUTLINED_FUNCTION_4_86();
      MEMORY[0x1E69143B0](v44);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    (*(v49 + 8))(v50, v2);
    return (*(v12 + 8))(v16, v10);
  }

  v30 = v53[0];
  sub_1E4207264();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if (swift_dynamicCast())
  {
    v31 = v51;
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  sub_1E39D58E0(v31);
  if (v1)
  {
    v36 = OUTLINED_FUNCTION_113();
    sub_1E38DCCB0(v36, v37);

    v33 = v1;
    goto LABEL_11;
  }

  (*(v12 + 8))(v16, v10);
  v45 = OUTLINED_FUNCTION_113();
  sub_1E38DCCB0(v45, v46);
}

void sub_1E39D4B10()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v75[13] = *MEMORY[0x1E69E9840];
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v68 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v13 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v23 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_directoryURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E38B2468(v0 + v23, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1E325F7A8(v12, &unk_1ECF363C0, &unk_1E42A9420);
    goto LABEL_34;
  }

  v67 = v3;
  (*(v15 + 32))(v22, v12, v13);
  v24 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager);
  sub_1E41FE3E4();
  v25 = sub_1E4205ED4();

  v26 = [v24 fileExistsAtPath_];

  v27 = v22;
  if (!v26)
  {
    (*(v15 + 8))(v22, v13);
    goto LABEL_34;
  }

  v28 = sub_1E41FE364();
  v75[0] = 0;
  v29 = [v24 contentsOfDirectoryAtURL:v28 includingPropertiesForKeys:0 options:4 error:v75];

  v30 = v75[0];
  if (!v29)
  {
    v66 = v22;
    v54 = v75[0];
    OUTLINED_FUNCTION_12_1();
    v55 = sub_1E41FE274();

    swift_willThrow();
    v56 = v68;
    v57 = v67;
    goto LABEL_31;
  }

  v31 = v24;
  v32 = sub_1E42062B4();
  v33 = v30;

  v73 = *(v32 + 16);
  if (!v73)
  {

    v47 = *(v15 + 8);
LABEL_27:
    v47(v27, v13);
    goto LABEL_34;
  }

  v66 = v27;
  v65 = v8;
  v34 = 0;
  v72 = v32 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v70 = v32;
  v71 = v15 + 16;
  v74 = (v15 + 8);
  v69 = v15;
  while (1)
  {
    if (v34 >= *(v32 + 16))
    {
      __break(1u);
    }

    (*(v15 + 16))(v19, v72 + *(v15 + 72) * v34, v13);
    if (v2)
    {
      break;
    }

    v48 = sub_1E41FE364();
    v75[0] = 0;
    v49 = [v31 removeItemAtURL:v48 error:v75];

    if (!v49)
    {
      v58 = v75[0];

      v55 = sub_1E41FE274();

      swift_willThrow();
      (*v74)(v19, v13);
      v57 = v67;
      v56 = v68;
      goto LABEL_30;
    }

    v47 = *v74;
    v50 = v75[0];
    v47(v19, v13);
LABEL_22:
    ++v34;
    v32 = v70;
    if (v34 == v73)
    {

      v27 = v66;
      goto LABEL_27;
    }
  }

  v35 = v13;
  v36 = v31;
  v37 = sub_1E41FE354();
  v39 = v38;
  if (*(v2 + 16))
  {
    v40 = v37;
    sub_1E4207B44();
    sub_1E4206014();
    v41 = sub_1E4207BA4();
    v42 = ~(-1 << *(v2 + 32));
    while (1)
    {
      v43 = v41 & v42;
      if (((*(v2 + 56 + (((v41 & v42) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v42)) & 1) == 0)
      {
        break;
      }

      v44 = (*(v2 + 48) + 16 * v43);
      if (*v44 != v40 || v44[1] != v39)
      {
        v46 = sub_1E42079A4();
        v41 = v43 + 1;
        if ((v46 & 1) == 0)
        {
          continue;
        }
      }

      v47 = *v74;
      (*v74)(v19, v35);

      v15 = v69;
      v31 = v36;
      v13 = v35;
      goto LABEL_22;
    }
  }

  v51 = sub_1E41FE364();
  v75[0] = 0;
  v31 = v36;
  v52 = [v36 removeItemAtURL:v51 error:v75];

  if (v52)
  {
    v47 = *v74;
    v53 = v75[0];
    v13 = v35;
    v47(v19, v35);
    v15 = v69;
    goto LABEL_22;
  }

  v59 = v75[0];

  v55 = sub_1E41FE274();

  swift_willThrow();
  v13 = v35;
  (*v74)(v19, v35);
  v57 = v67;
  v56 = v68;
  v15 = v69;
LABEL_30:
  v8 = v65;
LABEL_31:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v60(v8);
  v61 = sub_1E41FFC94();
  v62 = sub_1E42067F4();
  if (os_log_type_enabled(v61, v62))
  {
    OUTLINED_FUNCTION_18_46();
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1E323F000, v61, v62, "RecentlySearchedManager:: an error occurred while attepting to clear plist data", v63, 2u);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  (*(v56 + 8))(v8, v57);
  (*(v15 + 8))(v66, v13);
LABEL_34:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39D51F0()
{
  OUTLINED_FUNCTION_31_1();
  v55[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v52 = v6 - v5;
  v7 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v53 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  *&v24 = MEMORY[0x1EEE9AC00](v23).n128_u64[0];
  v26 = &v50 - v25;
  v27 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager);
  v28 = [v27 URLsForDirectory:9 inDomains:{1, v24}];
  v29 = sub_1E42062B4();

  sub_1E39D0EE8(v29, v26);

  if (!__swift_getEnumTagSinglePayload(v26, 1, v7))
  {
    sub_1E41FE384();
  }

  sub_1E38B2468(v26, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v7) == 1)
  {
    v30 = v22;
LABEL_5:
    sub_1E325F7A8(v30, &unk_1ECF363C0, &unk_1E42A9420);
    goto LABEL_10;
  }

  v50 = v3;
  v51 = v1;
  v31 = *(v9 + 32);
  v32 = v54;
  v31();
  sub_1E41FE3E4();
  v33 = sub_1E4205ED4();

  v34 = [v27 fileExistsAtPath_];

  if (!v34)
  {
    (*(v9 + 8))(v32, v7);
    goto LABEL_10;
  }

  sub_1E38B2468(v26, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v7) == 1)
  {
    (*(v9 + 8))(v32, v7);
    v30 = v19;
    goto LABEL_5;
  }

  v35 = v53;
  (v31)(v53, v19, v7);
  v36 = sub_1E41FE364();
  v55[0] = 0;
  v37 = [v27 removeItemAtURL:v36 error:v55];

  if (v37)
  {
    v38 = *(v9 + 8);
    v39 = v55[0];
    v38(v35, v7);
    v38(v32, v7);
  }

  else
  {
    v40 = v55[0];
    v41 = sub_1E41FE274();

    swift_willThrow();
    v42 = *(v9 + 8);
    v42(v35, v7);
    v43 = sub_1E324FBDC();
    v45 = v50;
    v44 = v51;
    v46 = v52;
    (*(v50 + 16))(v52, v43, v51);
    v47 = sub_1E41FFC94();
    v48 = sub_1E42067F4();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_18_46();
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1E323F000, v47, v48, "RecentlySearchedManager:: Unable to clear legacy plist", v49, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v45 + 8))(v52, v44);
    }

    else
    {

      (*(v45 + 8))(v46, v44);
    }

    v42(v54, v7);
  }

LABEL_10:
  sub_1E325F7A8(v26, &unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_25_2();
}

void *sub_1E39D571C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode);

  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    do
    {
      v3 = v1[4];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1E39239C8(0, v2[2] + 1, 1, v2);
      }

      v5 = v2[2];
      v4 = v2[3];
      if (v5 >= v4 >> 1)
      {
        v2 = sub_1E39239C8((v4 > 1), v5 + 1, 1, v2);
      }

      v2[2] = v5 + 1;
      v2[v5 + 4] = v3;
      v6 = (*(*v1 + 128))();

      v1 = v6;
    }

    while (v6);
  }

  return v2;
}

uint64_t sub_1E39D5828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((TVAppFeature.isEnabled.getter(10, a2, a3) & 1) == 0)
  {
    return 213;
  }

  if (sub_1E39DFFC8() & 1) != 0 && ([objc_opt_self() isPad])
  {
    return 220;
  }

  v4 = objc_opt_self();
  if ([v4 isTV])
  {
    return 219;
  }

  v3 = 219;
  if (([v4 isMac] & 1) == 0)
  {
    if ([v4 isVision])
    {
      return 219;
    }

    else
    {
      return 221;
    }
  }

  return v3;
}

void sub_1E39D58E0(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_40_30();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v82 - v8;
  v10 = *(a1 + 16);
  v86 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode;
  v96 = v1;
  v92 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_identifierTable;
  OUTLINED_FUNCTION_9_61();
  swift_beginAccess();
  v11 = 0;
  v88 = 0;
  v89 = (v5 + 16);
  v90 = (v5 + 8);
  v91 = a1 + 32;
  while (1)
  {
    if (v10 == v11)
    {
      *(v96 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode) = v88;

      return;
    }

    if (v11 >= v10)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_1E4207A74();
      __break(1u);
      return;
    }

    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_37;
    }

    v13 = *(v91 + 8 * v11);

    ViewModelKeys.rawValue.getter(7);
    if (!*(v13 + 16))
    {
      break;
    }

    v16 = sub_1E327D33C(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_31;
    }

    sub_1E328438C(*(v13 + 56) + 32 * v16, v95);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_31;
    }

    v19 = v9;
    v20 = v3;
    v21 = v93;
    v22 = v94;
    if (*(*(v96 + v92) + 16))
    {

      sub_1E327D33C(v21, v22);
      if ((v23 & 1) == 0)
      {

        goto LABEL_14;
      }

      v24 = sub_1E324FBDC();
      v9 = v19;
      v3 = v20;
      (*v89)(v19, v24, v20);
      v25 = sub_1E41FFC94();
      sub_1E4206814();
      v26 = OUTLINED_FUNCTION_33_32();
      if (os_log_type_enabled(v26, v27))
      {
        OUTLINED_FUNCTION_18_46();
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_34_10(v28);
        OUTLINED_FUNCTION_35_27();
        _os_log_impl(v29, v30, v31, v32, v33, v34);
        v35 = OUTLINED_FUNCTION_4_86();
        MEMORY[0x1E69143B0](v35);
      }

      (*v90)(v19, v20);
      ++v11;
    }

    else
    {
LABEL_14:
      v36 = v96;
      if (*(v96 + v86))
      {
        v37 = v88;
        if (!v88)
        {

LABEL_35:

          v80 = sub_1E39D68C8(v77, v78, v79);
          OUTLINED_FUNCTION_206(&type metadata for RecentlySearchedDataManager.RecentlySearchedDataManagerError, v80);
          *v81 = 1;
          swift_willThrow();
          return;
        }

        type metadata accessor for RecentlySearchedDataManager.Node();
        OUTLINED_FUNCTION_5_10();
        v38 = swift_allocObject();
        sub_1E39D0B7C(v37, 0, v13);
        v39 = *(*v37 + 136);

        v40 = v39(v38);
        v41 = (*(*v37 + 128))(v40);

        if (!v41)
        {
          goto LABEL_35;
        }

        v88 = v41;
        v36 = v96;
      }

      else
      {
        type metadata accessor for RecentlySearchedDataManager.Node();
        OUTLINED_FUNCTION_5_10();
        v41 = swift_allocObject();
        sub_1E39D0B7C(0, 0, v13);

        *(v36 + v86) = v41;
        swift_retain_n();

        v88 = v41;
      }

      v42 = v92;
      OUTLINED_FUNCTION_23_2();
      swift_beginAccess();
      v85 = v41;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = *(v36 + v42);
      v43 = v93;
      *(v36 + v42) = 0x8000000000000000;
      v44 = sub_1E327D33C(v21, v22);
      if (__OFADD__(*(v43 + 16), (v45 & 1) == 0))
      {
        goto LABEL_38;
      }

      v46 = v44;
      v83 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301D0, &qword_1E42B0CE8);
      if (sub_1E4207644())
      {
        v47 = sub_1E327D33C(v21, v22);
        v49 = v83;
        v50 = v96;
        if ((v83 & 1) != (v48 & 1))
        {
          goto LABEL_40;
        }

        v46 = v47;
      }

      else
      {
        v50 = v96;
        v49 = v83;
      }

      v51 = v93;
      if (v49)
      {
        *(*(v93 + 56) + 8 * v46) = v85;
        v52 = v50;

        v53 = v52;
        v3 = v20;
        v9 = v19;
      }

      else
      {
        OUTLINED_FUNCTION_50_15(v93 + 8 * (v46 >> 6));
        v55 = (v54 + 16 * v46);
        *v55 = v21;
        v55[1] = v22;
        *(*(v51 + 56) + 8 * v46) = v85;
        v56 = *(v51 + 16);
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_39;
        }

        *(v51 + 16) = v58;
        v3 = v20;
        v9 = v19;
      }

      *(v53 + v92) = v51;
      swift_endAccess();

      v11 = v12;
    }
  }

LABEL_31:

  v59 = sub_1E324FBDC();
  v60 = v87;
  (*v89)(v87, v59, v3);
  v61 = sub_1E41FFC94();
  sub_1E42067F4();
  v62 = OUTLINED_FUNCTION_33_32();
  if (os_log_type_enabled(v62, v63))
  {
    OUTLINED_FUNCTION_18_46();
    v64 = swift_slowAlloc();
    OUTLINED_FUNCTION_34_10(v64);
    OUTLINED_FUNCTION_35_27();
    _os_log_impl(v65, v66, v67, v68, v69, v70);
    v71 = OUTLINED_FUNCTION_4_86();
    MEMORY[0x1E69143B0](v71);
  }

  v72 = (*v90)(v60, v3);
  v75 = sub_1E39D68C8(v72, v73, v74);
  OUTLINED_FUNCTION_206(&type metadata for RecentlySearchedDataManager.RecentlySearchedDataManagerError, v75);
  *v76 = 0;
  swift_willThrow();
}

double sub_1E39D5F40(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(*v5 + 128);

    v9 = v7(v8);

    *(v2 + v4) = v9;
  }

  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 128);
  v12 = v11();
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_47_0();
    v15 = (*(v14 + 104))();
    (*(*v13 + 112))(v15);
  }

  OUTLINED_FUNCTION_47_0();
  v17 = *(v16 + 104);
  v18 = v17();
  if (v18)
  {
    v20 = v18;
    v21 = v11();
    (*(*v20 + 136))(v21);
  }

  v22 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode;
  v23 = *(v2 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode);
  if (v23)
  {
    v24 = v23 == a1;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    *(v2 + v22) = (v17)(v18);
  }

  return result;
}

void sub_1E39D6120(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode;
  OUTLINED_FUNCTION_47_0();
  v6 = *(v5 + 136);

  v6(v7);
  v8 = *(v1 + v4);
  if (v8)
  {
    v9 = *(*v8 + 112);

    v9(v10);
  }

  *(v2 + v4) = a1;

  if (!*(v2 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode))
  {
    *(v2 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode) = *(v2 + v4);
  }
}

uint64_t sub_1E39D6220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301D0, &qword_1E42B0CE8);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  type metadata accessor for RecentlySearchedDataManager.Node();
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

void sub_1E39D62F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301D0, &qword_1E42B0CE8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1E377E1B0(v12, a2, a3, a1, v16);
  }
}

id sub_1E39D6434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1E41FE454();
  v9 = [a5 createFileAtPath:a1 contents:v8 attributes:a4];

  return v9;
}

unint64_t sub_1E39D64A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF301C0;
  if (!qword_1ECF301C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF301C0);
  }

  return result;
}

unint64_t sub_1E39D64F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF301C8;
  if (!qword_1ECF301C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF301C8);
  }

  return result;
}

uint64_t type metadata accessor for RecentlySearchedDataManager(uint64_t a1)
{
  result = qword_1EE2948C0;
  if (!qword_1EE2948C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E39D65A0(uint64_t a1)
{
  sub_1E39D669C();
  if (v1 <= 0x3F)
  {
    sub_1E3286EF4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E39D669C()
{
  if (!qword_1EE289FE8)
  {
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289FE8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RecentlySearchedDataManager.SearchHistoryEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RecentlySearchedDataManager.RecentlySearchedDataManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E39D68C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF301D8;
  if (!qword_1ECF301D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF301D8);
  }

  return result;
}

void sub_1E39D6938(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  HIDWORD(v214) = a3;
  v210 = a2;
  HIDWORD(v206) = a1;
  if (v4[256] == 20)
  {
    OUTLINED_FUNCTION_11_13();
    if ((*(v8 + 392))())
    {
      type metadata accessor for CardCollectionViewCellLayout();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = (*(*v9 + 2088))();
      }

      else
      {
        v10 = 20;
      }
    }

    else
    {
      v10 = 20;
    }

    v6[256] = v10;
  }

  HIDWORD(v250) = a4 & 1;
  v11 = sub_1E378CAD8(a4 & 1, 1, a3);
  OUTLINED_FUNCTION_11_13();
  v13 = (*(v12 + 392))();
  if (v11)
  {
    if (v13)
    {
      type metadata accessor for CardCollectionViewCellLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        (*(v14 + 2096))(10);
      }

LABEL_16:
    }
  }

  else if (v13)
  {
    type metadata accessor for CardCollectionViewCellLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_30();
      v16 = (*(v15 + 2096))(v6[256]);
      (*(*v6 + 2120))(v16, 0.0, 0.0);
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_11_13();
  if ((*(v17 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v18 + 1640))(HIDWORD(v206), v210, HIDWORD(v214));
  }

  OUTLINED_FUNCTION_11_13();
  v256[0] = (*(v19 + 464))();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
  v21 = v256;
  sub_1E4148C68(sub_1E3819AD4, v20, &v255);

  v22 = v255;
  if (!sub_1E32AE9B0(v255))
  {
    OUTLINED_FUNCTION_11_13();
    v21 = v6;
    v194 = (*(v193 + 488))();
    if (v194)
    {
      v195 = v194;
      if (*(v194 + 16))
      {
        v21 = v22;
        v5 = 0;
        v196 = 1 << *(v194 + 32);
        v197 = -1;
        if (v196 < 64)
        {
          v197 = ~(-1 << v196);
        }

        v198 = v197 & *(v194 + 64);
        v199 = (v196 + 63) >> 6;
        if (v198)
        {
          goto LABEL_138;
        }

        while (1)
        {
          v200 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_145;
          }

          if (v200 >= v199)
          {
            break;
          }

          v198 = *(v195 + 64 + 8 * v200);
          ++v5;
          if (v198)
          {
            v5 = v200;
            do
            {
LABEL_138:
              v201 = swift_retain_n();
              MEMORY[0x1E6910BF0](v201);
              if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E42062F4();
              }

              v198 &= v198 - 1;
              sub_1E4206324();

              v21 = v255;
            }

            while (v198);
          }
        }

        v22 = v21;
      }

      else
      {
      }
    }
  }

  v226 = sub_1E32AE9B0(v22);
  if (!v226)
  {
LABEL_128:

    return;
  }

  if (v226 < 1)
  {
    goto LABEL_146;
  }

  v23 = 0;
  v218 = v22 + 32;
  v222 = v22 & 0xC000000000000001;
  v235 = v6;
  v202 = v22;
  while (1)
  {
    if (v222)
    {
      v24 = MEMORY[0x1E6911E60](v23, v22);
    }

    else
    {
      v24 = *(v218 + 8 * v23);
    }

    if (sub_1E3850584())
    {
      break;
    }

    OUTLINED_FUNCTION_12_61();
    sub_1E3742F1C(v57, v58, v59);
    OUTLINED_FUNCTION_5_86();
    OUTLINED_FUNCTION_10_61();
    OUTLINED_FUNCTION_3_89();
    v60 = sub_1E4206254();
    v68 = OUTLINED_FUNCTION_2_84(v60, v61, v62, v63, v64, v65, v66, v67, v202, v206, v210, v214, v218, v222, v226, v230, v235, v239, i, v247, v250, v254[0]);
    if (v51 && v5 == v21)
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_7_90(v68, v69, v70);
    OUTLINED_FUNCTION_16_55();

    if (&qword_1F5D5CE68)
    {
      goto LABEL_50;
    }

    v259 = v24[49];
    v258 = 16;
    OUTLINED_FUNCTION_5_86();
    OUTLINED_FUNCTION_10_61();
    OUTLINED_FUNCTION_3_89();
    v73 = sub_1E4206254();
    v81 = OUTLINED_FUNCTION_2_84(v73, v74, v75, v76, v77, v78, v79, v80, v202, v206, v210, v214, v218, v222, v226, v230, v235, v239, i, v247, v250, v254[0]);
    if (v51 && v5 == v21)
    {
LABEL_49:
    }

    else
    {
      OUTLINED_FUNCTION_7_90(v81, v82, v83);
      OUTLINED_FUNCTION_16_55();

      if ((&qword_1F5D5CE68 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

LABEL_50:
    v21 = v24;
    v85 = (*(*v24 + 392))(v72);
    if (v85)
    {
      v93 = v85;
      OUTLINED_FUNCTION_1_110(v85, v86, v87, v88, v89, v90, v91, v92, v202, v206, v210, v214, v218, v222, v226, v230, v235, v239, i, v247, v250, SBYTE4(v250));
      v97 = sub_1E37909B4(v94, v95, v96);
      OUTLINED_FUNCTION_5_86();
      sub_1E4206254();
      OUTLINED_FUNCTION_4_87();
      v98 = sub_1E4206254();
      v106 = OUTLINED_FUNCTION_2_84(v98, v99, v100, v101, v102, v103, v104, v105, v204, v208, v212, v216, v220, v224, v228, v233, v237, v241, v245, v248, v252, v254[0]);
      if (v51 && v5 == v24)
      {
      }

      else
      {
        OUTLINED_FUNCTION_7_90(v106, v107, v108);
        OUTLINED_FUNCTION_16_55();

        v5 = 0;
        if ((v97 & 1) == 0)
        {
          goto LABEL_125;
        }
      }

      OUTLINED_FUNCTION_12_61();
      OUTLINED_FUNCTION_5_86();
      OUTLINED_FUNCTION_10_61();
      OUTLINED_FUNCTION_3_89();
      sub_1E4206254();
      if (v254[0] == v260 && v254[1] == v261)
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_1E42079A4();
      }

LABEL_125:
      v21 = v93;
      (*(*v93 + 944))(v5 & 1);
LABEL_126:
    }

LABEL_127:
    ++v23;

    if (v23 == v226)
    {
      goto LABEL_128;
    }
  }

  v231 = v23;
  v25 = (*v24 + 392);
  v26 = *v25;
  v27 = (*v25)();
  if (v27)
  {
    OUTLINED_FUNCTION_30();
    (*(v35 + 1640))(HIDWORD(v206), v210, HIDWORD(v214));
  }

  OUTLINED_FUNCTION_1_110(v27, v28, v29, v30, v31, v32, v33, v34, v202, v206, v210, v214, v218, v222, v226, v231, v235, v239, i, v247, v250, SBYTE4(v250));
  v39 = sub_1E37909B4(v36, v37, v38);
  OUTLINED_FUNCTION_5_86();
  OUTLINED_FUNCTION_10_61();
  OUTLINED_FUNCTION_3_89();
  v40 = sub_1E4206254();
  v48 = OUTLINED_FUNCTION_2_84(v40, v41, v42, v43, v44, v45, v46, v47, v203, v207, v211, v215, v219, v223, v227, v232, v236, v240, v244, v39, v251, v254[0]);
  v51 = v51 && v5 == v24;
  if (v51)
  {
  }

  else
  {
    OUTLINED_FUNCTION_7_90(v48, v49, v50);
    OUTLINED_FUNCTION_16_55();

    if ((&type metadata for PlayerCollectionAppearanceType & 1) == 0)
    {
      if ((v6[280] & 1) == 0)
      {
        v53 = *(v6 + 34);
        v52 = (v26)(v52);
        if (v52)
        {
          OUTLINED_FUNCTION_30();
          v56 = (*(v54 + 192))(v254);
          if (*(v55 + 32) != 1)
          {
            *(v55 + 16) = v53;
          }

          goto LABEL_72;
        }
      }

      goto LABEL_73;
    }
  }

  v110 = (v26)(v52);
  if (v110)
  {
    OUTLINED_FUNCTION_30();
    (*(v111 + 176))(v256);

    v112 = v256[2];
    if (v257)
    {
      v112 = 0;
    }
  }

  else
  {
    v112 = 0;
  }

  *(v6 + 34) = v112;
  v6[280] = 0;
  v52 = (v26)(v110);
  if (v52)
  {
    OUTLINED_FUNCTION_30();
    v56 = (*(v114 + 192))(v254);
    if (*(v115 + 32) != 1)
    {
      *(v115 + 16) = 0x4010000000000000;
    }

LABEL_72:
    v56(v254, 0);
  }

LABEL_73:
  v21 = v24;
  v116 = (*(*v24 + 488))(v52);
  v23 = v230;
  if (!v116)
  {
    goto LABEL_127;
  }

  v124 = v116;
  v125 = 0;
  v126 = v116 + 64;
  v127 = 1 << *(v116 + 32);
  if (v127 < 64)
  {
    v128 = ~(-1 << v127);
  }

  else
  {
    v128 = -1;
  }

  v129 = v128 & *(v116 + 64);
  v130 = (v127 + 63) >> 6;
  v239 = v116;
  for (i = v24; v129; v124 = v239)
  {
LABEL_82:
    v132 = __clz(__rbit64(v129)) | (v125 << 6);
    v5 = *(*(v124 + 48) + 2 * v132);
    v133 = *(*(v124 + 56) + 8 * v132);
    OUTLINED_FUNCTION_1_110(v116, v117, v118, v119, v120, v121, v122, v123, v202, v206, v210, v214, v218, v222, v226, v230, v235, v239, i, v247, v250, SBYTE4(v250));

    OUTLINED_FUNCTION_5_86();
    v134 = v249;
    sub_1E4206254();
    OUTLINED_FUNCTION_4_87();
    v135 = sub_1E4206254();
    v143 = OUTLINED_FUNCTION_8_60(v135, v136, v137, v138, v139, v140, v141, v142, v205, v209, v213, v217, v221, v225, v229, v234, v238, v242, v246, v249, v253, v254[0]);
    if (v51 && v21 == v134)
    {
    }

    else
    {
      v147 = OUTLINED_FUNCTION_11_67(v143, v144, v145);

      if ((v147 & 1) == 0)
      {
        v150 = (*v133 + 392);
        v151 = *v150;
        v21 = v133;
        v152 = (*v150)(v148);
        if (v152)
        {
          OUTLINED_FUNCTION_30();
          (*(v155 + 944))(0);
        }

        v259 = v5;
        v258 = 53;
        v156 = sub_1E3742F1C(v152, v153, v154);
        OUTLINED_FUNCTION_5_86();
        v5 = &qword_1F5D5CE68;
        OUTLINED_FUNCTION_15_61();
        OUTLINED_FUNCTION_4_87();
        v157 = OUTLINED_FUNCTION_15_61();
        v165 = OUTLINED_FUNCTION_8_60(v157, v158, v159, v160, v161, v162, v163, v164, v202, v206, v210, v214, v218, v222, v226, v230, v235, v239, i, v247, v250, v254[0]);
        if (v51 && v133 == v156)
        {
        }

        else
        {
          v5 = OUTLINED_FUNCTION_11_67(v165, v166, v167);

          if ((v5 & 1) == 0)
          {
            goto LABEL_120;
          }
        }

        v21 = v133;
        v191 = v151(v169);
        if (!v191)
        {
          goto LABEL_120;
        }

        v5 = v191;
        type metadata accessor for TextBadgeLayout(0);
        v192 = swift_dynamicCastClass();
        if (!v192)
        {
          goto LABEL_118;
        }

        if (*(v235 + 281) != 4)
        {
          (*(*v192 + 1808))();
        }

        goto LABEL_116;
      }
    }

    v170 = sub_1E38E5664(v5, *(v235 + 248), v149);
    v171 = *(*v133 + 392);
    v172 = v171();
    v21 = v172;
    if (!v170)
    {
      if (!v172)
      {
        goto LABEL_120;
      }

      (*(*v172 + 944))(1);
      goto LABEL_119;
    }

    if (v172)
    {
      (*(*v172 + 944))(0);
    }

    v259 = v5;
    v258 = 53;
    v175 = sub_1E3742F1C(v172, v173, v174);
    OUTLINED_FUNCTION_5_86();
    v5 = &qword_1F5D5CE68;
    OUTLINED_FUNCTION_15_61();
    OUTLINED_FUNCTION_4_87();
    v176 = OUTLINED_FUNCTION_15_61();
    v184 = OUTLINED_FUNCTION_8_60(v176, v177, v178, v179, v180, v181, v182, v183, v202, v206, v210, v214, v218, v222, v226, v230, v235, v239, i, v247, v250, v254[0]);
    if (v51 && v21 == v175)
    {
    }

    else
    {
      v5 = OUTLINED_FUNCTION_11_67(v184, v185, v186);

      if ((v5 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    v21 = v133;
    v189 = (v171)(v188);
    if (!v189)
    {
      goto LABEL_120;
    }

    v5 = v189;
    type metadata accessor for TextBadgeLayout(0);
    if (!swift_dynamicCastClass())
    {
LABEL_118:
      v21 = v133;
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_30();
    *(v235 + 281) = (*(v190 + 1800))();
    (*(*v133 + 1808))(0);
LABEL_116:
    v21 = v5;
LABEL_119:

LABEL_120:
    v129 &= v129 - 1;
  }

  while (1)
  {
    v131 = v125 + 1;
    if (__OFADD__(v125, 1))
    {
      break;
    }

    if (v131 >= v130)
    {
      v23 = v230;
      v6 = v235;
      v22 = v202;
      goto LABEL_126;
    }

    v129 = *(v126 + 8 * v131);
    ++v125;
    if (v129)
    {
      v125 = v131;
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_1E39D7698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E39D76EC(v5, a2, a3);
}

uint64_t sub_1E39D76EC(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E39D7838(&unk_1F5D67668);
  OUTLINED_FUNCTION_6_67(v6);

  return sub_1E39BEDCC(a1, a2, a3);
}

uint64_t sub_1E39D7748()
{
  OUTLINED_FUNCTION_48_1();
  swift_allocObject();
  OUTLINED_FUNCTION_13_11();
  return sub_1E39D7794();
}

uint64_t sub_1E39D7794()
{
  OUTLINED_FUNCTION_48_1();
  v0 = sub_1E39D7838(&unk_1F5D67690);
  OUTLINED_FUNCTION_6_67(v0);
  OUTLINED_FUNCTION_13_11();

  return sub_1E39C0300();
}

uint64_t sub_1E39D77F0()
{
  v0 = ViewModel.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 282, 7);
}

unint64_t sub_1E39D7838(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v5 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35B90, &unk_1E42B0080);
  result = sub_1E4207464();
  v5 = result;
  v17 = *(a1 + 16);
  if (!v17)
  {
LABEL_14:

    return v5;
  }

  v6 = 0;
  v7 = result + 56;
  while (v6 < *(a1 + 16))
  {
    v8 = *(a1 + 32 + 2 * v6++);
    sub_1E37414E0(result, v3, v4);
    result = sub_1E4205DA4();
    v9 = ~(-1 << *(v5 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v7 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      sub_1E3741534(result, v3, v4);
      result = sub_1E4205E84();
      if (result)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v7 + 8 * v11) = v13 | v12;
    *(*(v5 + 48) + 2 * v10) = v8;
    v14 = *(v5 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v5 + 16) = v16;
LABEL_11:
    if (v6 == v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

double sub_1E39D79DC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___duration);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___duration + 8) & 1) == 0)
  {
    return *v1;
  }

  [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) playbackDuration];
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_1E39D7A38(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___duration;
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t sub_1E39D7A50(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = sub_1E39D79DC();
  return OUTLINED_FUNCTION_116();
}

void *sub_1E39D7A94(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___duration;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

id sub_1E39D7AB0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___assetType);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___assetType + 9) & 1) == 0)
  {
    return *v1;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) vui_assetType];
  v3 = [v2 unsignedIntegerValue];

  *v1 = v3;
  v1[4] = 0;
  return v3;
}

uint64_t sub_1E39D7B50(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E39D7AB0();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39D7BC8(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E39D7B9C();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39D7C40(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E39D7C14();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39D7CAC(void *a1, uint64_t (*a2)(void))
{
  v3 = (v2 + *a1);
  if ((v3[9] & 1) == 0)
  {
    return *v3;
  }

  v4 = a2();
  result = OUTLINED_FUNCTION_4_17(v4, v5);
  v3[9] = 0;
  return result;
}

uint64_t sub_1E39D7D14(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E39D7C8C();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39D7D60()
{
  v1 = OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hasDolbyAtmos;
  result = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hasDolbyAtmos);
  if (result == 3)
  {
    result = sub_1E3A28D28();
    *(v0 + v1) = result;
  }

  return result;
}

void (*sub_1E39D7DC4(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E39D7D60();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E39D7E04;
}

unint64_t sub_1E39D7E18()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___storeID;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___storeID + 5))
  {
    v2 = sub_1E3A28BAC();
    *v1 = v2;
    v3 = HIDWORD(v2) & 1;
    *(v1 + 4) = BYTE4(v2) & 1;
    *(v1 + 5) = 0;
  }

  else
  {
    LODWORD(v2) = *v1;
    LOBYTE(v3) = *(v1 + 4) & 1;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_1E39D7E98(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___storeID;
  *(v2 + 4) = BYTE4(result) & 1;
  *v2 = result;
  *(v2 + 5) = 0;
  return result;
}

uint64_t (*sub_1E39D7EB8(void *a1))(uint64_t result)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = sub_1E39D7E18();
  *(v1 + 8) = v2;
  *(v1 + 12) = BYTE4(v2) & 1;
  return sub_1E39D7F04;
}

uint64_t sub_1E39D7F04(uint64_t result)
{
  v1 = *(result + 12) != 0;
  v2 = *result + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___storeID;
  *v2 = *(result + 8);
  *(v2 + 4) = v1;
  *(v2 + 5) = 0;
  return result;
}

void (*sub_1E39D7F54(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = v5;
  sub_1E39D7F3C(v5);
  return sub_1E39D7FE8;
}

uint64_t sub_1E39D800C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0, &unk_1E42B0D70);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v12 = *a1;
  swift_beginAccess();
  sub_1E37C5830(v2 + v12, v11, &qword_1ECF2CDE0, &unk_1E42B0D70);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) != 1)
  {
    return sub_1E3889AF0(v11, a2);
  }

  sub_1E325F748(v11, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1E37C5830(a2, v8, &unk_1ECF28E20, &unk_1E42986D0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  swift_beginAccess();
  sub_1E393FD78(v8, v2 + v12);
  return swift_endAccess();
}

uint64_t sub_1E39D81C4(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0, &unk_1E42B0D70);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1E3889AF0(a1, &v12 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = *a2;
  swift_beginAccess();
  sub_1E393FD78(v8, v2 + v10);
  return swift_endAccess();
}

void (*sub_1E39D82A0(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = v5;
  sub_1E39D8000(v5);
  return sub_1E39D8334;
}

void sub_1E39D834C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_1E37C5830(*(a1 + 16), v4, &unk_1ECF28E20, &unk_1E42986D0);
    a3(v4);
    sub_1E325F748(v5, &unk_1ECF28E20, &unk_1E42986D0);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

uint64_t sub_1E39D83F4()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal);
  if (result == 3)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal) = 0;
  }

  return result;
}

void (*sub_1E39D8420(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E39D83F4();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E39D8460;
}

uint64_t sub_1E39D8474()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically);
  if (result == 3)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically) = 0;
  }

  return result;
}

void (*sub_1E39D84A0(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E39D8474();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E39D84E0;
}

uint64_t sub_1E39D8514(void *a1, uint64_t (*a2)(void))
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 == 1)
  {
    v6 = a2();
    v7 = *v3;
    v8 = v3[1];
    *v3 = v6;
    v3[1] = v9;

    sub_1E37E9E48(v7, v8);
  }

  sub_1E37EA628(v4, v5);
  return v6;
}

uint64_t sub_1E39D85C0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E39D84F4();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39D860C(uint64_t *a1, char a2, void *a3)
{
  v3 = a1[1];
  v4 = (a1[2] + *a3);
  v5 = *v4;
  v6 = v4[1];
  *v4 = *a1;
  v4[1] = v3;
  if (a2)
  {

    sub_1E37E9E48(v5, v6);
  }

  else
  {

    return sub_1E37E9E48(v5, v6);
  }
}

id sub_1E39D86B8()
{
  result = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) vui_playedState];
  if (result)
  {
    v2 = result;
    v3 = [result integerValue];

    return (v3 == 3);
  }

  return result;
}

uint64_t sub_1E39D871C()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___markAsDeleted);
  if (result == 3)
  {
    result = 2;
    *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___markAsDeleted) = 2;
  }

  return result;
}

void (*sub_1E39D8748(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E39D871C();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E39D8788;
}

unsigned __int8 *sub_1E39D879C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating);
  v4 = v3;
  if (v3 == 1)
  {
    v4 = sub_1E3A290B8();
    v5 = *(v1 + v2);
    *(v1 + v2) = v4;
    v6 = v4;
    sub_1E329CC84(v5);
  }

  sub_1E34AF5F4(v3);
  return v4;
}

void sub_1E39D881C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating);
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating) = a1;
  sub_1E329CC84(v2);
}

uint64_t sub_1E39D8834(unsigned __int8 **a1)
{
  a1[1] = v1;
  *a1 = sub_1E39D879C();
  return OUTLINED_FUNCTION_116();
}

void sub_1E39D8878(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating);
  *(v3 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1E329CC84(v4);
  }

  else
  {

    sub_1E329CC84(v4);
  }
}

uint64_t sub_1E39D8938(uint64_t a1)
{
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___duration);
  *(v3 + 8) = 1;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___assetType);
  *(v4 + 8) = 256;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hlsPlaylistURLString) = xmmword_1E4297170;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___resolutionClass);
  *(v5 + 8) = v6;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___videoRange);
  *(v7 + 8) = v8;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hasDolbyAtmos) = 3;
  v9 = v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___storeID;
  *(v9 + 4) = v8;
  *v9 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___redownloadParams) = xmmword_1E4297170;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___markAsDeleted) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating) = 1;

  return sub_1E4028B38(a1);
}

void sub_1E39D8A68()
{
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hlsPlaylistURLString), *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hlsPlaylistURLString + 8));
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___downloadExpirationDate, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___availabilityEndDate, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___redownloadParams), *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___redownloadParams + 8));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating);

  sub_1E329CC84(v1);
}

uint64_t *sub_1E39D8B04()
{
  v0 = sub_1E4028C28();
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hlsPlaylistURLString), *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hlsPlaylistURLString + 8));
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___downloadExpirationDate, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___availabilityEndDate, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___redownloadParams), *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___redownloadParams + 8));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating));
  return v0;
}

uint64_t sub_1E39D8BA0()
{
  v0 = sub_1E39D8B04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E39D8E24()
{
  OUTLINED_FUNCTION_5_2();
  v1 = (*(v0 + 776))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

unint64_t sub_1E39D905C(uint64_t a1)
{
  result = sub_1E39D9084();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E39D9084()
{
  result = qword_1ECF30208;
  if (!qword_1ECF30208)
  {
    type metadata accessor for LibMPPlayableMediaEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30208);
  }

  return result;
}

uint64_t type metadata accessor for LibMPPlayableMediaEntity(uint64_t a1)
{
  result = qword_1EE297AF0;
  if (!qword_1EE297AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E39D9130(uint64_t a1)
{
  sub_1E38B0440(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E39D9238(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 16, v4);
  *(v1 + 16) = a1;
}

double sub_1E39D92D0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 32, v4);
  *(v1 + 32) = a1;

  return result;
}

uint64_t sub_1E39D9354()
{
  OUTLINED_FUNCTION_11_11();
  v0 = swift_allocObject();
  sub_1E39D93B4();
  return v0;
}

uint64_t sub_1E39D93B4()
{
  OUTLINED_FUNCTION_11_11();
  *(v1 + 32) = 0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_3_0(v1 + 16, v9);
  *(v1 + 16) = v5;
  OUTLINED_FUNCTION_3_0(v1 + 24, v8);
  *(v1 + 24) = v4;
  OUTLINED_FUNCTION_3_0(v1 + 32, v7);
  *(v1 + 32) = v3;

  *(v1 + 40) = v2;
  *(v1 + 41) = v0;
  return v1;
}

void sub_1E39D9458(double a1)
{
  v2 = (*(*v1 + 144))();
  if (!v2)
  {
    return;
  }

  v3 = (*(*v2 + 464))();
  if (!v3)
  {
LABEL_25:

    return;
  }

  v4 = v3;
  v5 = (*(*v1 + 168))();
  if (!v5)
  {

    return;
  }

  v6 = (*(*v5 + 464))(v5);

  if (!v6)
  {

    goto LABEL_25;
  }

  sub_1E4205CB4();
  v23 = -sub_1E32AE9B0(v4);
  for (i = 4; ; ++i)
  {
    if (v23 + i == 4)
    {

LABEL_29:

      j__OUTLINED_FUNCTION_18();
      sub_1E3E0E8DC();
      sub_1E39D9BC0(v20, v22, v19 & 1, v21);

      return;
    }

    v8 = i - 4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E6911E60](i - 4, v4);
    }

    else
    {
      if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v9 = *(v4 + 8 * i);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v6 >> 62)
    {
      v10 = sub_1E4207384();
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8 == v10)
    {

      goto LABEL_29;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](i - 4, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v11 = *(v6 + 8 * i);
    }

    v12 = sub_1E39D97B8(v9);
    v14 = v13;
    v15 = v12;
    v16 = sub_1E39D97B8(v11);
    if (v14 < v17)
    {
      v14 = v17;
      v15 = v16;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E39DB998(v15 & 0x1FF, i - 4, isUniquelyReferenced_nonNull_native, v14);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1E39D97B8(_WORD *a1)
{
  v2 = sub_1E39DB328();
  if (!v3)
  {
    v16 = j__OUTLINED_FUNCTION_18();
    v17 = j__OUTLINED_FUNCTION_18() & 1;
    v18 = v16;
    return sub_1E406F5AC(v18, v17) & 0x1FF;
  }

  v4 = v2;
  v5 = v3;
  v6 = v2 == 49 && v3 == 0xE100000000000000;
  if (v6 || (v7 = OUTLINED_FUNCTION_67_0(), (OUTLINED_FUNCTION_25_41(v7, v8, 49) & 1) != 0))
  {

    type metadata accessor for LeagueRankView();
    v9 = sub_1E3C43874(a1, 0, 0, 1);
    if (v9)
    {
      v12 = v9;
      [v9 intrinsicContentSize];
      v14 = v13;

      v15 = 0;
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v19 = v4 == 50 && v5 == 0xE100000000000000;
  if (v19 || (v20 = OUTLINED_FUNCTION_67_0(), (OUTLINED_FUNCTION_25_41(v20, v21, 50) & 1) != 0))
  {

    type metadata accessor for UIFactory();
    v22 = sub_1E373C4DC();
    v30 = OUTLINED_FUNCTION_1_111(v22, v23, v24, v25, v26, v27, v28, v29, v76, v77, v78);
    sub_1E373C624(&v76);
    v9 = (*(*a1 + 392))([v30 vui_layoutIfNeeded]);
    v31 = 0.0;
    v32 = 0.0;
    if (v9)
    {
      (*(*v9 + 176))(&v76);

      if ((v78 & 1) == 0)
      {
        v32 = OUTLINED_FUNCTION_24_33(v33, v34, v35, v36);
      }
    }

    if (v30)
    {
      [v30 frame];
      v31 = v37;
    }

    v15 = 0;
    v14 = v32 + v31;
    goto LABEL_36;
  }

  if (v4 != 51 || v5 != 0xE100000000000000)
  {
    v39 = OUTLINED_FUNCTION_67_0();
    if ((OUTLINED_FUNCTION_25_41(v39, v40, 51) & 1) == 0)
    {
      if (v4 == 52 && v5 == 0xE100000000000000)
      {
      }

      else
      {
        v52 = OUTLINED_FUNCTION_67_0();
        v54 = OUTLINED_FUNCTION_25_41(v52, v53, 52);

        if ((v54 & 1) == 0)
        {
LABEL_34:
          v15 = 0;
          goto LABEL_35;
        }
      }

      type metadata accessor for UIFactory();
      v59 = sub_1E373C4DC();
      v67 = OUTLINED_FUNCTION_1_111(v59, v60, v61, v62, v63, v64, v65, v66, v76, v77, v78);
      v68 = sub_1E373C624(&v76);
      v9 = (*(*a1 + 392))(v68);
      v69 = 0.0;
      v70 = 0.0;
      if (v9)
      {
        (*(*v9 + 176))(&v76);

        if ((v78 & 1) == 0)
        {
          v70 = OUTLINED_FUNCTION_24_33(v71, v72, v73, v74);
        }
      }

      if (v67)
      {
        [v67 intrinsicContentSize];
        v69 = v75;
      }

      v14 = v70 + v69;
      v15 = 2;
      goto LABEL_36;
    }
  }

  type metadata accessor for UIFactory();
  v41 = sub_1E373C4DC();
  v49 = OUTLINED_FUNCTION_1_111(v41, v42, v43, v44, v45, v46, v47, v48, v76, v77, v78);
  v9 = sub_1E373C624(&v76);
  if (v49)
  {
    [v49 intrinsicContentSize];
    v14 = v50;

    v15 = 1;
    goto LABEL_36;
  }

  v15 = 1;
LABEL_35:
  v14 = 0.0;
LABEL_36:
  LOBYTE(v80) = v15;
  LOBYTE(v79) = 1;
  sub_1E39DC888(v9, v10, v11);
  v55 = sub_1E4205E84();
  if ((v55 & 1) == 0 && v14 <= 0.0)
  {
    v80 = a1[49];
    v79 = 246;
    sub_1E3741534(v55, v56, v57);
    sub_1E4205E84();
  }

  v17 = j__OUTLINED_FUNCTION_18() & 1;
  v18 = v15;
  return sub_1E406F5AC(v18, v17) & 0x1FF;
}

void sub_1E39D9BC0(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v10 = a2.n128_f64[0];
  v11 = a1;
  sub_1E39DA818(a1, a2, 0, a4);
  if (v12)
  {
    v14 = v13;
  }

  else
  {

    v14 = v10;
  }

  if (*(v4 + 41))
  {
    goto LABEL_164;
  }

  v176 = v12;

  v16.n128_f64[0] = v10;
  sub_1E39DA818(v15, v16, 0, v17);
  if (v18)
  {
    v19 = v18;

    v11 = v19;
  }

  v20 = 0;
  v21 = 1 << *(v11 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v11 + 64);
  v24 = (v21 + 63) >> 6;
  v25 = 0.0;
  if (v23)
  {
    while (1)
    {
      v26 = v20;
LABEL_15:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v25 = v25 + *(*(v11 + 56) + ((v26 << 10) | (16 * v27)));
      if (!v23)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v26 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_166;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v11 + 64 + 8 * v26);
    ++v20;
    if (v23)
    {
      v20 = v26;
      goto LABEL_15;
    }
  }

  if (v25 > v10)
  {
LABEL_164:
    sub_1E3E0E8DC();
    return;
  }

  v28 = *(v176 + 16);
  v173 = v4;
  if (v28)
  {
    v177 = MEMORY[0x1E69E7CC0];
    v175 = v28;

    sub_1E39DC0AC(0, v175, 0);
    v29 = v177;
    sub_1E37817B4(v176);
    OUTLINED_FUNCTION_5_87();
    if (v8 < 0)
    {
      goto LABEL_167;
    }

    while (1)
    {
      if (v8 >= v31 << *(v30 + 32))
      {
        goto LABEL_167;
      }

      OUTLINED_FUNCTION_20_50();
      if (v57)
      {
        goto LABEL_168;
      }

      if (*(v32 + 36) != v7)
      {
        break;
      }

      OUTLINED_FUNCTION_10_62();
      v177 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        v52 = OUTLINED_FUNCTION_35(v33);
        sub_1E39DC0AC(v52, v34 + 1, 1);
        OUTLINED_FUNCTION_4_88();
        v29 = v177;
      }

      *(v29 + 16) = v34 + 1;
      OUTLINED_FUNCTION_8_61(v29 + 16 * v34);
      if (v38 == v39)
      {
        goto LABEL_170;
      }

      v40 = *(v36 + 8 * v6);
      if ((v40 & v9) == 0)
      {
        goto LABEL_171;
      }

      if (*(v35 + 36) != v7)
      {
        goto LABEL_172;
      }

      if ((v40 & (v37 << (v8 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_3_90();
      }

      else
      {
        v9 = v29;
        OUTLINED_FUNCTION_6_69();
        while (v49 < v48)
        {
          v51 = *v50;
          OUTLINED_FUNCTION_23_37();
          if (v51)
          {
            OUTLINED_FUNCTION_0_100(v45, v46, v47);
            OUTLINED_FUNCTION_16_56();
            goto LABEL_37;
          }
        }

        v41 = OUTLINED_FUNCTION_0_100(v45, v46, v47);
LABEL_37:
        v30 = v176;
      }

      if (++v5 == v44)
      {
        goto LABEL_42;
      }

      v7 = *(v30 + 36);
      v8 = v11;
      if (v11 < 0)
      {
        goto LABEL_167;
      }
    }

LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v53 = *(v29 + 16);
  if (v53)
  {
    v6 = sub_1E39DC834(v41, v42, v43);
    v54 = (v29 + 41);
    v55 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v56 = *(v54 - 9);
      v7 = *(v54 - 1);
      v11 = *v54;
      v182 = *(v54 - 1);
      v181 = 1;
      sub_1E4206254();
      sub_1E4206254();
      v9 = v178;
      v57 = v177 == v179 && v178 == v180;
      if (v57)
      {
        break;
      }

      v58 = OUTLINED_FUNCTION_97_0(v177, v178, v179);

      if (v58)
      {
        goto LABEL_51;
      }

LABEL_56:
      v54 += 16;
      if (!--v53)
      {

        goto LABEL_59;
      }
    }

LABEL_51:
    v183 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = OUTLINED_FUNCTION_73_0();
      sub_1E39DC0AC(v59, v60, v61);
      v55 = v183;
    }

    v63 = *(v55 + 16);
    v62 = *(v55 + 24);
    v9 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v65 = OUTLINED_FUNCTION_35(v62);
      sub_1E39DC0AC(v65, v63 + 1, 1);
      v55 = v183;
    }

    *(v55 + 16) = v9;
    v64 = v55 + 16 * v63;
    *(v64 + 32) = v56;
    *(v64 + 40) = v7;
    *(v64 + 41) = v11;
    goto LABEL_56;
  }

  v55 = MEMORY[0x1E69E7CC0];
LABEL_59:
  v172 = *(v55 + 16);

  v69 = *(v176 + 16);
  v70 = MEMORY[0x1E69E7CC0];
  if (!v69)
  {
LABEL_81:
    v91 = *(v70 + 16);
    if (v91)
    {
      sub_1E39DC888(v66, v67, v68);
      v92 = (v70 + 41);
      v93 = MEMORY[0x1E69E7CC0];
      do
      {
        v94 = *(v92 - 9);
        v95 = *(v92 - 1);
        v96 = *v92;
        LOBYTE(v179) = v95;
        LOBYTE(v183) = 1;
        if ((sub_1E4205E84() & 1) == 0)
        {
          v177 = v93;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = OUTLINED_FUNCTION_73_0();
            sub_1E39DC0AC(v97, v98, v99);
            v93 = v177;
          }

          v101 = *(v93 + 16);
          v100 = *(v93 + 24);
          if (v101 >= v100 >> 1)
          {
            v103 = OUTLINED_FUNCTION_35(v100);
            sub_1E39DC0AC(v103, v101 + 1, 1);
            v93 = v177;
          }

          *(v93 + 16) = v101 + 1;
          v102 = v93 + 16 * v101;
          *(v102 + 32) = v94;
          *(v102 + 40) = v95;
          *(v102 + 41) = v96;
        }

        v92 += 16;
        --v91;
      }

      while (v91);
    }

    else
    {
      v93 = MEMORY[0x1E69E7CC0];
    }

    v104 = *(v93 + 16);
    if (v104)
    {
      v105 = (v93 + 32);
      v106 = 0.0;
      v107 = v172;
      do
      {
        v108 = *v105;
        v105 += 2;
        v106 = v106 + v108;
        --v104;
      }

      while (v104);
    }

    else
    {
      v106 = 0.0;
      v107 = v172;
    }

    v183 = v176;
    v109 = 1 << *(v176 + 32);
    v110 = -1;
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    v111 = v110 & *(v176 + 64);
    v112 = (v109 + 63) >> 6;
    v113 = v14 - v106;

    v116 = 0;
    while (1)
    {
      if (!v111)
      {
        v117 = v176;
        while (1)
        {
          v118 = v116 + 1;
          if (__OFADD__(v116, 1))
          {
            break;
          }

          if (v118 >= v112)
          {
            LOBYTE(v127) = v176;

            if (*(v173 + 40))
            {

LABEL_163:
              j__OUTLINED_FUNCTION_18();
              goto LABEL_164;
            }

            v128 = 0;
            v129 = v183;
            v130 = 1 << *(v183 + 32);
            v131 = -1;
            if (v130 < 64)
            {
              v131 = ~(-1 << v130);
            }

            v132 = v131 & *(v183 + 64);
            v133 = (v130 + 63) >> 6;
            if (v132)
            {
              goto LABEL_130;
            }

            while (1)
            {
              v134 = v128 + 1;
              if (__OFADD__(v128, 1))
              {
                goto LABEL_179;
              }

              if (v134 >= v133)
              {
                v135 = *(v183 + 16);
                v136 = MEMORY[0x1E69E7CC0];
                if (v135)
                {
                  v177 = MEMORY[0x1E69E7CC0];
                  v174 = v183 + 64;
                  sub_1E39DC0AC(0, v135, 0);
                  v136 = v177;
                  v137 = sub_1E37817B4(v129);
                  v139 = v174;
                  v140 = v137;
                  v141 = 0;
                  v142 = 1;
                  if ((v137 & 0x8000000000000000) == 0)
                  {
                    while (v140 < v142 << *(v129 + 32))
                    {
                      v143 = v140 >> 6;
                      v144 = v142 << v140;
                      if ((*(v139 + 8 * (v140 >> 6)) & (v142 << v140)) == 0)
                      {
                        goto LABEL_181;
                      }

                      if (*(v129 + 36) != v138)
                      {
                        goto LABEL_182;
                      }

                      OUTLINED_FUNCTION_21_46();
                      v177 = v136;
                      v150 = *(v136 + 16);
                      v149 = *(v136 + 24);
                      if (v150 >= v149 >> 1)
                      {
                        v165 = OUTLINED_FUNCTION_35(v149);
                        sub_1E39DC0AC(v165, v150 + 1, 1);
                        OUTLINED_FUNCTION_9_62();
                        v136 = v177;
                      }

                      *(v136 + 16) = v150 + 1;
                      v151 = v136 + 16 * v150;
                      *(v151 + 32) = v113;
                      *(v151 + 40) = v127;
                      *(v151 + 41) = v116;
                      v127 = v147 << *(v129 + 32);
                      if (v140 >= v127)
                      {
                        goto LABEL_183;
                      }

                      v152 = *(v146 + 8 * v143);
                      if ((v152 & v144) == 0)
                      {
                        goto LABEL_184;
                      }

                      if (*(v129 + 36) != v145)
                      {
                        goto LABEL_185;
                      }

                      if ((v152 & (v148 << (v140 & 0x3F))) != 0)
                      {
                        OUTLINED_FUNCTION_17_53();
                      }

                      else
                      {
                        v154 = v143 << 6;
                        v155 = v143 + 1;
                        v156 = (v129 + 72 + 8 * v143);
                        while (v155 < (v127 + 63) >> 6)
                        {
                          v158 = *v156++;
                          v157 = v158;
                          v154 += 64;
                          ++v155;
                          if (v158)
                          {
                            v159 = OUTLINED_FUNCTION_22_36();
                            sub_1E3746E04(v159, v160, v161);
                            OUTLINED_FUNCTION_9_62();
                            v127 = __clz(__rbit64(v157)) + v154;
                            goto LABEL_149;
                          }
                        }

                        v162 = OUTLINED_FUNCTION_22_36();
                        sub_1E3746E04(v162, v163, v164);
                        OUTLINED_FUNCTION_9_62();
                      }

LABEL_149:
                      if (++v141 == v153)
                      {
                        goto LABEL_152;
                      }

                      v138 = *(v129 + 36);
                      v140 = v127;
                      if (v127 < 0)
                      {
                        goto LABEL_180;
                      }
                    }
                  }

                  goto LABEL_180;
                }

LABEL_152:
                v166 = *(v136 + 16);
                if (v166)
                {
                  v167 = (v136 + 32);
                  v168 = 0.0;
                  do
                  {
                    v169 = *v167;
                    v167 += 2;
                    v168 = v168 + v169;
                    --v166;
                  }

                  while (v166);
                }

                else
                {
                  v168 = 0.0;
                }

                v170 = round(v168);
                if ((*&v170 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_186;
                }

                if (v170 <= -9.22337204e18)
                {
                  goto LABEL_187;
                }

                if (v170 >= 9.22337204e18)
                {
                  goto LABEL_188;
                }

                v171 = round(v14);
                if ((*&v171 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_189;
                }

                if (v171 <= -9.22337204e18)
                {
                  goto LABEL_190;
                }

                if (v171 >= 9.22337204e18)
                {
                  goto LABEL_191;
                }

                goto LABEL_163;
              }

              v132 = *(v183 + 64 + 8 * v134);
              ++v128;
              if (v132)
              {
                v128 = v134;
                do
                {
LABEL_130:
                  v132 &= v132 - 1;
                }

                while (v132);
              }
            }
          }

          v111 = *(v176 + 64 + 8 * v118);
          ++v116;
          if (v111)
          {
            v116 = v118;
            goto LABEL_107;
          }
        }

LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v117 = v176;
LABEL_107:
      v119 = __clz(__rbit64(v111)) | (v116 << 6);
      v120 = *(*(v117 + 48) + 8 * v119);
      v111 &= v111 - 1;
      v182 = *(*(v117 + 56) + 16 * v119 + 8);
      v181 = 1;
      sub_1E39DC834(v117, v114, v115);
      sub_1E4206254();
      sub_1E4206254();
      if (v177 == v179 && v178 == v180)
      {
        break;
      }

      v122 = OUTLINED_FUNCTION_97_0(v177, v178, v179);

      if (v122)
      {
LABEL_114:
        sub_1E39DA73C(&v177, v120);
        OUTLINED_FUNCTION_19_53();
        if (!v57)
        {
          *v123 = v113 / v107;
        }

        v124(&v177, 0);
        if ((*(v173 + 40) & 1) == 0 && v113 <= 0.0)
        {
          sub_1E39DA73C(&v177, v120);
          OUTLINED_FUNCTION_19_53();
          if (!v57)
          {
            *(v125 + 9) = 1;
          }

          v126(&v177, 0);
        }
      }
    }

    goto LABEL_114;
  }

  v177 = MEMORY[0x1E69E7CC0];
  sub_1E39DC0AC(0, v69, 0);
  v70 = v177;
  sub_1E37817B4(v176);
  OUTLINED_FUNCTION_5_87();
  if ((v55 & 0x8000000000000000) == 0)
  {
    while (v55 < v72 << *(v71 + 32))
    {
      OUTLINED_FUNCTION_20_50();
      if (v57)
      {
        goto LABEL_174;
      }

      if (*(v73 + 36) != v7)
      {
        goto LABEL_175;
      }

      OUTLINED_FUNCTION_10_62();
      v177 = v70;
      v75 = *(v70 + 16);
      v74 = *(v70 + 24);
      v76 = v70;
      if (v75 >= v74 >> 1)
      {
        v90 = OUTLINED_FUNCTION_35(v74);
        sub_1E39DC0AC(v90, v75 + 1, 1);
        OUTLINED_FUNCTION_4_88();
        v76 = v177;
      }

      *(v76 + 16) = v75 + 1;
      OUTLINED_FUNCTION_8_61(v76 + 16 * v75);
      if (v38 == v39)
      {
        goto LABEL_176;
      }

      v81 = *(v79 + 8 * v6);
      if ((v81 & v9) == 0)
      {
        goto LABEL_177;
      }

      v70 = v77;
      if (*(v78 + 36) != v7)
      {
        goto LABEL_178;
      }

      if ((v81 & (v80 << (v55 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_3_90();
      }

      else
      {
        OUTLINED_FUNCTION_6_69();
        while (v87 < v86)
        {
          v89 = *v88;
          OUTLINED_FUNCTION_23_37();
          if (v89)
          {
            OUTLINED_FUNCTION_0_100(v83, v84, v85);
            OUTLINED_FUNCTION_16_56();
            goto LABEL_77;
          }
        }

        v66 = OUTLINED_FUNCTION_0_100(v83, v84, v85);
LABEL_77:
        v71 = v176;
      }

      if (++v53 == v82)
      {
        goto LABEL_81;
      }

      v7 = *(v71 + 36);
      v55 = v11;
      if (v11 < 0)
      {
        break;
      }
    }
  }

LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
}

void (*sub_1E39DA73C(void *a1, uint64_t a2))(void *)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1E39DBB20(v4, a2);
  return sub_1E39DC8E0;
}

void (*sub_1E39DA7A0(void *a1, uint64_t a2, uint64_t a3))(void *)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1E39DBBB0(v6, a2, a3);
  return sub_1E39DA814;
}

void sub_1E39DA818(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_21:
    v36 = *(v8 + 16);
    if (v36)
    {
      sub_1E39DC834(a1, a3, a4);
      v37 = (v8 + 41);
      v38 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v39 = *(v37 - 9);
        v40 = *(v37 - 1);
        v41 = *v37;
        sub_1E4206254();
        sub_1E4206254();
        if (v101 == v99 && v104 == v100)
        {
          break;
        }

        v43 = OUTLINED_FUNCTION_97_0(v101, v104, v99);

        if (v43)
        {
          goto LABEL_30;
        }

LABEL_35:
        v37 += 16;
        if (!--v36)
        {

          goto LABEL_38;
        }
      }

LABEL_30:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = OUTLINED_FUNCTION_73_0();
        sub_1E39DC0AC(v44, v45, v46);
      }

      v48 = *(v38 + 16);
      v47 = *(v38 + 24);
      if (v48 >= v47 >> 1)
      {
        v50 = OUTLINED_FUNCTION_35(v47);
        sub_1E39DC0AC(v50, v48 + 1, 1);
      }

      *(v38 + 16) = v48 + 1;
      v49 = v38 + 16 * v48;
      *(v49 + 32) = v39;
      *(v49 + 40) = v40;
      *(v49 + 41) = v41;
      goto LABEL_35;
    }

    v38 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v51 = *(v38 + 16);
    if (v51)
    {
      v103 = MEMORY[0x1E69E7CC0];
      sub_1E3887DC4(0, v51, 0);
      v52 = v103;
      v53 = *(v103 + 16);
      v54 = 32;
      do
      {
        v55 = *(v38 + v54);
        v101 = v52;
        v56 = *(v52 + 24);
        if (v53 >= v56 >> 1)
        {
          v57 = OUTLINED_FUNCTION_35(v56);
          sub_1E3887DC4(v57, v53 + 1, 1);
        }

        *(v52 + 16) = v53 + 1;
        *(v52 + 8 * v53 + 32) = v55;
        v54 += 16;
        ++v53;
        --v51;
      }

      while (v51);
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
    }

    sub_1E39AB6F8(v52);
    v59 = v58;

    if (v59)
    {
      return;
    }

    v60 = *(a1 + 16);
    v61 = MEMORY[0x1E69E7CC0];
    if (!v60)
    {
LABEL_74:
      sub_1E39DAF48(v61);
      j__OUTLINED_FUNCTION_18();
      sub_1E3E0E8DC();
      return;
    }

    v105 = MEMORY[0x1E69E7CC0];
    sub_1E39DC08C(0, v60, 0);
    v97 = v105;
    v62 = sub_1E37817B4(a1);
    v65 = v62;
    v66 = a1;
    v67 = v63;
    v68 = 0;
    v69 = a1 + 64;
    v92 = v63;
    v93 = v60;
    while (1)
    {
      if (v65 < 0 || v65 >= 1 << *(v66 + 32))
      {
        goto LABEL_82;
      }

      v70 = v65 >> 6;
      if ((*(v69 + 8 * (v65 >> 6)) & (1 << v65)) == 0)
      {
        goto LABEL_83;
      }

      if (*(v66 + 36) != v67)
      {
        goto LABEL_84;
      }

      v94 = v64;
      v95 = *(*(v66 + 48) + 8 * v65);
      v71 = *(v66 + 56) + 16 * v65;
      v72 = *v71;
      v73 = *(v71 + 8);
      LOBYTE(v74) = *(v71 + 9);
      sub_1E39DC834(v62, v63, v64);
      sub_1E4206254();
      sub_1E4206254();
      if (v101 == v99 && v104 == v100)
      {
      }

      else
      {
        v76 = OUTLINED_FUNCTION_97_0(v101, v104, v99);

        if ((v76 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v77 = j__OUTLINED_FUNCTION_18();
      v78 = sub_1E406F5AC(v73, v77 & 1);
      v72 = v79;
      v73 = v78;
      v74 = (v78 >> 8) & 1;
LABEL_60:
      v80 = v97;
      v81 = a1;
      v83 = *(v97 + 16);
      v82 = *(v97 + 24);
      if (v83 >= v82 >> 1)
      {
        v91 = OUTLINED_FUNCTION_35(v82);
        sub_1E39DC08C(v91, v83 + 1, 1);
        v81 = a1;
        v80 = v97;
      }

      *(v80 + 16) = v83 + 1;
      v84 = v80 + 24 * v83;
      *(v84 + 32) = v95;
      *(v84 + 40) = v72;
      *(v84 + 48) = v73;
      *(v84 + 49) = v74;
      v85 = 1 << *(v81 + 32);
      if (v65 >= v85)
      {
        goto LABEL_85;
      }

      v69 = a1 + 64;
      v86 = *(a1 + 64 + 8 * v70);
      if ((v86 & (1 << v65)) == 0)
      {
        goto LABEL_86;
      }

      v97 = v80;
      if (*(v81 + 36) != v67)
      {
        goto LABEL_87;
      }

      if ((v86 & (-2 << (v65 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_3_90();
      }

      else
      {
        v87 = (v85 + 63) >> 6;
        v88 = v70 + 1;
        v89 = (a1 + 72 + 8 * v70);
        while (v88 < v87)
        {
          v90 = *v89;
          OUTLINED_FUNCTION_23_37();
          if (v90)
          {
            sub_1E3746E04(v65, v67, v94 & 1);
            OUTLINED_FUNCTION_16_56();
            goto LABEL_72;
          }
        }

        v62 = sub_1E3746E04(v65, v67, v94 & 1);
        v66 = a1;
      }

LABEL_72:
      v64 = 0;
      ++v68;
      v65 = v85;
      v67 = v92;
      if (v68 == v93)
      {
        v61 = v97;
        goto LABEL_74;
      }
    }
  }

  v102 = MEMORY[0x1E69E7CC0];
  v96 = *(a1 + 16);
  sub_1E39DC0AC(0, v7, 0);
  v8 = v102;
  v9 = sub_1E37817B4(a1);
  v10 = a1;
  v12 = v11;
  v13 = 0;
  v14 = a1 + 64;
  v15 = 1;
  if ((v9 & 0x8000000000000000) == 0)
  {
    while (v9 < v15 << *(v10 + 32))
    {
      v16 = v9 >> 6;
      v17 = v15 << v9;
      if ((*(v14 + 8 * (v9 >> 6)) & (v15 << v9)) == 0)
      {
        goto LABEL_77;
      }

      if (*(v10 + 36) != v12)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_21_46();
      v101 = v8;
      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v23 >= v22 >> 1)
      {
        v35 = OUTLINED_FUNCTION_35(v22);
        sub_1E39DC0AC(v35, v23 + 1, 1);
        OUTLINED_FUNCTION_4_88();
        v19 = a1 + 64;
        v18 = a1;
      }

      *(v8 + 16) = v23 + 1;
      v24 = v8 + 16 * v23;
      *(v24 + 32) = v6;
      *(v24 + 40) = v4;
      *(v24 + 41) = v5;
      v4 = v20 << *(v18 + 32);
      if (v9 >= v4)
      {
        goto LABEL_79;
      }

      v25 = *(v19 + 8 * v16);
      if ((v25 & v17) == 0)
      {
        goto LABEL_80;
      }

      if (*(v18 + 36) != v12)
      {
        goto LABEL_81;
      }

      if ((v25 & (v21 << (v9 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_17_53();
      }

      else
      {
        v27 = (v4 + 63) >> 6;
        v28 = v16 + 1;
        v29 = (a1 + 72 + 8 * v16);
        while (v28 < v27)
        {
          v30 = *v29;
          OUTLINED_FUNCTION_23_37();
          if (v30)
          {
            v31 = OUTLINED_FUNCTION_22_36();
            sub_1E3746E04(v31, v12, v32);
            OUTLINED_FUNCTION_4_88();
            OUTLINED_FUNCTION_16_56();
            goto LABEL_18;
          }
        }

        v33 = OUTLINED_FUNCTION_22_36();
        sub_1E3746E04(v33, v12, v34);
        OUTLINED_FUNCTION_4_88();
        v14 = a1 + 64;
        v26 = v96;
        v10 = a1;
      }

LABEL_18:
      if (++v13 == v26)
      {
        goto LABEL_21;
      }

      v12 = *(v10 + 36);
      v9 = v4;
      if (v4 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_1E39DAF48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30230, &qword_1E42B0EE0);
    v1 = sub_1E4207744();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1E39DC2D0(v2, 1, &v4);

  return v4;
}

uint64_t sub_1E39DAFFC(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  v36 = sub_1E4205CB4();
  v2 = sub_1E32AE9B0(a1);
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v33 = v2;
  v34 = a1;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v2 == v3)
    {
      return v36;
    }

    if (v4)
    {
      v6 = MEMORY[0x1E6911E60](v3, a1);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v7 = sub_1E39DB328();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = v36;
      if (*(v36 + 16) && (sub_1E327D33C(v7, v8), (v12 & 1) != 0))
      {
        v14 = sub_1E39DA7A0(v35, v9, v10);
        if (*v13)
        {
          v15 = v13;

          MEMORY[0x1E6910BF0](v16);
          v17 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v17 >> 1)
          {
            OUTLINED_FUNCTION_35(v17);
            sub_1E42062F4();
          }

          sub_1E4206324();
        }

        (v14)(v35, 0);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1E4298880;
        *(v18 + 32) = v6;

        swift_isUniquelyReferenced_nonNull_native();
        v35[0] = v11;
        v19 = sub_1E327D33C(v9, v10);
        if (__OFADD__(*(v11 + 16), (v20 & 1) == 0))
        {
          goto LABEL_30;
        }

        v21 = v19;
        v22 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30220, &qword_1E42B0E88);
        if (sub_1E4207644())
        {
          v23 = sub_1E327D33C(v9, v10);
          if ((v22 & 1) != (v24 & 1))
          {
            goto LABEL_32;
          }

          v21 = v23;
        }

        v25 = v35[0];
        if (v22)
        {
          *(*(v35[0] + 56) + 8 * v21) = v18;
        }

        else
        {
          *(v35[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
          v26 = (v25[6] + 16 * v21);
          *v26 = v9;
          v26[1] = v10;
          *(v25[7] + 8 * v21) = v18;
          v27 = v25[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_31;
          }

          v25[2] = v29;
        }

        v36 = v25;
        v2 = v33;
        a1 = v34;
        v5 = v31;
        v4 = v32;
      }
    }

    else
    {
    }

    ++v3;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E39DB328()
{
  v2[3] = &unk_1F5D5D5B8;
  v2[4] = &off_1F5D5C878;
  LOBYTE(v2[0]) = 0;
  v0 = sub_1E39C29A4(v2);
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t sub_1E39DB384()
{

  return v0;
}

uint64_t sub_1E39DB3B4()
{
  sub_1E39DB384();

  return MEMORY[0x1EEE6BDC0](v0, 42, 7);
}

unint64_t sub_1E39DB3E8(unint64_t a1, unint64_t a2, double a3)
{
  v4 = a1;
  v6 = 0;
  v7 = -sub_1E32AE9B0(a1);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = a3;
  v44 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = v6 + 4; v7 + i != 4; ++i)
  {
    v11 = i - 4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1E6911E60](i - 4, v4);
    }

    else
    {
      if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v12 = *(v4 + 8 * i);
    }

    v6 = i - 3;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (a2 >> 62)
    {
      v13 = sub_1E4207384();
    }

    else
    {
      v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11 == v13)
    {

      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E6911E60](i - 4, a2);
    }

    else
    {
      if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v14 = *(a2 + 8 * i);
    }

    sub_1E39D97B8(v12);
    v16 = v15;
    sub_1E39D97B8(v14);
    if (v16 <= v17)
    {
      v16 = v17;
    }

    if (v16 > v9)
    {
      v25 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = OUTLINED_FUNCTION_73_0();
        v25 = sub_1E39DC5B0(v32, v33, v34, v44);
      }

      v26 = v25;
      v27 = v25[2];
      v44 = v26;
      v28 = v26[3];
      if (v27 >= v28 >> 1)
      {
        v35 = OUTLINED_FUNCTION_35(v28);
        v44 = sub_1E39DC5B0(v35, v27 + 1, 1, v44);
      }

      v44[2] = v27 + 1;
      v44[v27 + 4] = v8;
      v8 = sub_1E39DC6E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v30 = v8[2];
      v29 = v8[3];
      if (v30 >= v29 >> 1)
      {
        v36 = OUTLINED_FUNCTION_35(v29);
        v8 = sub_1E39DC6E0(v36, v30 + 1, 1, v8);
      }

      v9 = a3 - v16;
      v8[2] = v30 + 1;
      v31 = &v8[2 * v30];
      v31[4] = v12;
      v31[5] = v14;
      goto LABEL_2;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = OUTLINED_FUNCTION_73_0();
      v8 = sub_1E39DC6E0(v21, v22, v23, v8);
    }

    v19 = v8[2];
    v18 = v8[3];
    if (v19 >= v18 >> 1)
    {
      v24 = OUTLINED_FUNCTION_35(v18);
      v8 = sub_1E39DC6E0(v24, v19 + 1, 1, v8);
    }

    v9 = v9 - v16;
    v8[2] = v19 + 1;
    v20 = &v8[2 * v19];
    v20[4] = v12;
    v20[5] = v14;
  }

  v4 = v44;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_34;
  }

LABEL_40:
  v40 = OUTLINED_FUNCTION_73_0();
  v4 = sub_1E39DC5B0(v40, v41, v42, v4);
LABEL_34:
  v38 = *(v4 + 16);
  v37 = *(v4 + 24);
  if (v38 >= v37 >> 1)
  {
    v43 = OUTLINED_FUNCTION_35(v37);
    v4 = sub_1E39DC5B0(v43, v38 + 1, 1, v4);
  }

  *(v4 + 16) = v38 + 1;
  *(v4 + 8 * v38 + 32) = v8;
  return v4;
}

void sub_1E39DB714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30230, &qword_1E42B0EE0);
  v6 = sub_1E4207724();
  v7 = v6;
  if (!*(v5 + 16))
  {

LABEL_30:
    *v3 = v7;
    return;
  }

  v35 = v4;
  v36 = v3;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        sub_1E373CBF0(0, (v34 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
    goto LABEL_30;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56) + 16 * v18;
    v20 = *(*(v5 + 48) + 8 * v18);
    v21 = *(v19 + 9);
    v22 = *(v19 + 8);
    v23 = *v19;
    v24 = sub_1E4207B34();
    v25 = -1 << *(v7 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v7 + 48) + 8 * v28) = v20;
    v33 = *(v7 + 56) + 16 * v28;
    *v33 = v23;
    *(v33 + 8) = v22;
    *(v33 + 9) = v21;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}