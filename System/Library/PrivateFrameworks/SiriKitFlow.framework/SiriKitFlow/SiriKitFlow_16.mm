uint64_t sub_1DCC9E2A0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - v8;
  v10 = *(a2 + *(type metadata accessor for SiriKitFlowFrameInput(0) + 20));
  switch(v10)
  {
    case 1:
    case 2:
    case 3:
      v11 = sub_1DD0DF0AC();

      if (v11)
      {
        goto LABEL_4;
      }

      swift_beginAccess();
      *(v3 + 32) = v10;
      v12 = MEMORY[0x1E699F740];
      break;
    default:

LABEL_4:
      v12 = MEMORY[0x1E699F738];
      break;
  }

  v13 = *v12;
  sub_1DD0DB34C();
  OUTLINED_FUNCTION_2();
  (*(v14 + 104))(v9, v13);
  swift_storeEnumTagMultiPayload();
  a3(v9);
  return sub_1DCB0E9D8(v9, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

uint64_t sub_1DCC9E4B0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13[-v8 - 8];
  OUTLINED_FUNCTION_156(v3 + 32, v13);
  if (*(v3 + 32) == 4)
  {
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = v3;
    sub_1DD0DCF8C();
  }

  type metadata accessor for SiriKitFlowFrameInput(0);
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_1DCB0E9D8(v9, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCC9E5FC(void *a1, char a2, void (*a3)(void *), uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  MEMORY[0x1EEE9AC00](v10, v10);
  v12 = (&v16 - v11);
  if ((a2 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    sub_1DD0DCF8C();
  }

  *v12 = a1;
  swift_storeEnumTagMultiPayload();
  v13 = a1;
  a3(v12);
  return sub_1DCB0E9D8(v12, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCC9E780(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v12 - v8);
  if (a2)
  {
    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    v10 = a1;
  }

  else
  {
    type metadata accessor for SiriKitFlowFrameInput(0);
    sub_1DD0DB30C();
    swift_storeEnumTagMultiPayload();
  }

  a3(v9);
  return sub_1DCB0E9D8(v9, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCC9E884@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25[-v9 - 8];
  result = OUTLINED_FUNCTION_156(v1 + 32, v25);
  v12 = *(v1 + 32);
  if (v12 == 4)
  {
    v13 = v7;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    v15 = __swift_project_value_buffer(v14, qword_1EDE57E00);
    v16 = *(v14 - 8);
    (*(v16 + 16))(v10, v15, v14);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
    sub_1DCBCF6C8(v10, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
    {
      sub_1DCB0E9D8(v7, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v17 = sub_1DD0DD8EC();
      v18 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24 = v20;
        *v19 = 136315650;
        v21 = sub_1DD0DEC3C();
        v23 = sub_1DCB10E9C(v21, v22, &v24);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2048;
        *(v19 + 14) = 116;
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1DCB10E9C(0xD00000000000003CLL, 0x80000001DD1169D0, &v24);
        _os_log_impl(&dword_1DCAFC000, v17, v18, "FatalError at %s:%lu - %s", v19, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v20, -1, -1);
        MEMORY[0x1E12A8390](v19, -1, -1);
      }

      (*(v16 + 8))(v13, v14);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003CLL, 0x80000001DD1169D0);
  }

  *a1 = v12;
  return result;
}

uint64_t ConfirmationFlowFrame.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t ConfirmationFlowFrame.__deallocating_deinit()
{
  ConfirmationFlowFrame.deinit();

  return swift_deallocClassInstance();
}

unsigned __int8 *getEnumTagSinglePayload for ConfirmationFlowFrameState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 4;
    v8 = v6 - 4;
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
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
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
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfirmationFlowFrameState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCC9EE74(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DCC9EE88(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1DCC9F07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v114 - v10;
  v118 = sub_1DD0DB5BC();
  v114 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v12);
  v119 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for USOParse(0);
  OUTLINED_FUNCTION_2();
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v115 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v116 = &v114 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v114 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v120 = &v114 - v26;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = (&v114 - v33);
  v35 = *(v3 + 20);
  sub_1DCE2FF24();
  if (v36)
  {
    OUTLINED_FUNCTION_7_27();
    if (!v76)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v37 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v37, qword_1EDE57E00);
    v38 = sub_1DD0DD8EC();
    v39 = sub_1DD0DE6DC();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v121;
    if (v40)
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v42, v43, "[ConfirmationInputResolver] Detected user cancellation, returning UserCancellationError.");
      OUTLINED_FUNCTION_80();
    }

    sub_1DCC9FB70();
    result = swift_allocError();
    v45 = 1;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_4_28();
  sub_1DCB24688(a1 + v35, v34, v46);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v62 = *v34;
    v61 = v34[1];
    v63 = v34[2];
    OUTLINED_FUNCTION_7_27();
    if (!v76)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v64 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v64, qword_1EDE57E00);

    v65 = sub_1DD0DD8EC();
    v66 = sub_1DD0DE6CC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = OUTLINED_FUNCTION_151();
      v68 = OUTLINED_FUNCTION_83();
      v122[2] = v63;
      v123 = v68;
      *v67 = 136315138;
      v122[0] = v62;
      v122[1] = v61;

      v69 = sub_1DD0DE02C();
      v71 = sub_1DCB10E9C(v69, v70, &v123);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_1DCAFC000, v65, v66, "[ConfirmationInputResolver] Checking if parse contains confirmation DI: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v41 = v121;
    if (qword_1ECCA12D8 != -1)
    {
      swift_once();
    }

    v72 = [qword_1ECCA5FD0 identifier];
    v73 = sub_1DD0DDFBC();
    v75 = v74;

    v76 = v73 == v62 && v75 == v61;
    if (v76)
    {

      v45 = 0;
      result = 1;
    }

    else
    {
      v77 = sub_1DD0DF0AC();

      result = v77 & 1;
      v45 = (v77 & 1) - 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v48 = v120;
      sub_1DCC6D300(v34, v120);
      OUTLINED_FUNCTION_7_27();
      if (!v76)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v49 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v49, qword_1EDE57E00);
      OUTLINED_FUNCTION_1_35();
      sub_1DCB24688(v48, v24, v50);
      v51 = sub_1DD0DD8EC();
      v52 = sub_1DD0DE6CC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_151();
        v54 = OUTLINED_FUNCTION_83();
        v122[0] = v54;
        *v53 = 136315138;
        OUTLINED_FUNCTION_1_35();
        sub_1DCB24688(v24, v116, v55);
        v56 = sub_1DD0DE02C();
        v58 = v57;
        OUTLINED_FUNCTION_0_29();
        sub_1DCC9FB18(v24, v59);
        v60 = sub_1DCB10E9C(v56, v58, v122);
        v48 = v120;

        *(v53 + 4) = v60;
        _os_log_impl(&dword_1DCAFC000, v51, v52, "[ConfirmationInputResolver] Checking if parse contains confirmation: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_0_29();
        sub_1DCC9FB18(v24, v89);
      }

      v90 = v119;
      Siri_Nlu_External_UserParse.preferredUserDialogAct.getter();
      v91 = v118;
      if (__swift_getEnumTagSinglePayload(v11, 1, v118) == 1)
      {
        sub_1DCC6D410(v11);
        OUTLINED_FUNCTION_1_35();
        v92 = v115;
        sub_1DCB24688(v48, v115, v93);
        v94 = sub_1DD0DD8EC();
        v95 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = OUTLINED_FUNCTION_151();
          v97 = OUTLINED_FUNCTION_83();
          v122[0] = v97;
          *v96 = 136315138;
          OUTLINED_FUNCTION_1_35();
          sub_1DCB24688(v92, v116, v98);
          v99 = sub_1DD0DE02C();
          v101 = v100;
          sub_1DCC9FB18(v92, type metadata accessor for USOParse);
          v102 = sub_1DCB10E9C(v99, v101, v122);

          *(v96 + 4) = v102;
          _os_log_impl(&dword_1DCAFC000, v94, v95, "[ConfirmationInputResolver] Cannot extract task: parse has no UDAs: %s", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v97);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        else
        {

          sub_1DCC9FB18(v92, type metadata accessor for USOParse);
        }

        sub_1DCC9FB18(v48, type metadata accessor for USOParse);
        result = 0;
        v45 = -1;
        goto LABEL_44;
      }

      v103 = v114;
      (*(v114 + 32))(v90, v11, v91);
      if (sub_1DD0DB53C())
      {
        (*(v103 + 8))(v90, v91);
        OUTLINED_FUNCTION_0_29();
        sub_1DCC9FB18(v48, v104);
        v45 = 0;
        result = 1;
LABEL_44:
        v41 = v121;
        goto LABEL_45;
      }

      v110 = sub_1DD0DB52C();
      v111 = v103;
      v112 = v110;
      (*(v111 + 8))(v90, v91);
      OUTLINED_FUNCTION_0_29();
      sub_1DCC9FB18(v48, v113);
      v41 = v121;
      if (v112)
      {
        result = 0;
        v45 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_27();
      if (!v76)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v78 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v78, qword_1EDE57E00);
      sub_1DCB24688(a1, v7, type metadata accessor for Input);
      v79 = sub_1DD0DD8EC();
      v80 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = OUTLINED_FUNCTION_151();
        v82 = OUTLINED_FUNCTION_83();
        v122[0] = v82;
        *v81 = 136315138;
        OUTLINED_FUNCTION_4_28();
        sub_1DCB24688(&v7[v83], v31, v84);
        v85 = sub_1DD0DE02C();
        v87 = v86;
        OUTLINED_FUNCTION_5_32();
        v88 = sub_1DCB10E9C(v85, v87, v122);

        *(v81 + 4) = v88;
        _os_log_impl(&dword_1DCAFC000, v79, v80, "[ConfirmationInputResolver] Determined that the parse has a confirmation but it is an unsupported parse %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_5_32();
      }

      v41 = v121;
      sub_1DCC9FB18(v34, type metadata accessor for Parse);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v105 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v105, qword_1EDE57E00);
    v106 = sub_1DD0DD8EC();
    v107 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v106, v107))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v108, v109, "[ConfirmationInputResolver] No confirmation found in parse");
      OUTLINED_FUNCTION_80();
    }

    result = 0;
    v45 = -1;
  }

LABEL_45:
  *v41 = result;
  *(v41 + 8) = v45;
  return result;
}

uint64_t sub_1DCC9FB18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DCC9FB70()
{
  result = qword_1ECCA34D0;
  if (!qword_1ECCA34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA34D0);
  }

  return result;
}

id sub_1DCC9FBC4()
{
  OUTLINED_FUNCTION_66();
  v2 = v0 + *(v1 + 144);
  v3 = *v2;
  *v4 = *v2;
  v5 = *(v2 + 8);
  *(v4 + 8) = v5;
  return sub_1DCCA3578(v3, v5);
}

void sub_1DCC9FBFC()
{
  OUTLINED_FUNCTION_66();
  v2 = v0 + *(v1 + 144);
  v3 = *v2;
  *v2 = v4;
  v5 = *(v2 + 8);
  *(v2 + 8) = v6;
  sub_1DCCA092C(v3, v5);
}

uint64_t ConfirmationPrompt.__allocating_init(valueToConfirm:usoKeyPath:responseBundleProducer:responseFactory:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  ConfirmationPrompt.init(valueToConfirm:usoKeyPath:responseBundleProducer:responseFactory:)(a1, a2, a3, a4);
  return v8;
}

char *ConfirmationPrompt.init(valueToConfirm:usoKeyPath:responseBundleProducer:responseFactory:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v39 = a2;
  v46 = a1;
  v8 = *(*v4 + 88);
  v40 = *(v8 - 8);
  v43 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v37 - v9;
  v37 = &v37 - v9;
  v42 = *(v11 + 80);
  v41 = *(v11 + 96);
  v12 = type metadata accessor for USOKeyPath(0, v42, v8, v41);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v37 - v16;
  v45 = a3;
  sub_1DCB17CA0(a3, (v4 + 16));
  v44 = a4;
  sub_1DCB17CA0(a4, (v4 + 56));
  (*(v13 + 16))(v17, a2, v12);
  v18 = v40;
  v38 = *(v40 + 16);
  v38(v10, v46, v8);
  v19 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v20 = v18;
  v21 = (v14 + *(v18 + 80) + v19) & ~*(v18 + 80);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 2) = v42;
  *(v22 + 3) = v8;
  *(v22 + 4) = v23;
  v24 = &v22[v19];
  v25 = v20;
  v26 = v8;
  (*(v13 + 32))(v24, v17, v12);
  (*(v25 + 32))(&v22[v21], v37, v8);
  *(v4 + 12) = sub_1DCCA0220;
  *(v4 + 13) = v22;
  v27 = v46;
  OUTLINED_FUNCTION_66();
  v38(&v4[*(v28 + 128)], v27, v8);
  v29 = v39;
  if (*(v39 + 24))
  {
    v30 = *(v39 + 16);
    v31 = *(v39 + 24);
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  (*(v13 + 8))(v29, v12);
  (*(v25 + 8))(v27, v26);
  OUTLINED_FUNCTION_66();
  v33 = &v4[*(v32 + 136)];
  *v33 = v30;
  *(v33 + 1) = v31;
  OUTLINED_FUNCTION_66();
  v35 = &v4[*(v34 + 144)];
  *v35 = 0;
  v35[8] = 0x80;
  return v4;
}

uint64_t sub_1DCCA0010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a5;
  v22 = a1;
  v23 = a6;
  v9 = sub_1DD0DE97C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - v12;
  v14 = sub_1DD0DBAAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v20 - v17;
  (*(*(a4 - 8) + 16))(v13, a2, a4);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, a4);
  type metadata accessor for USOKeyPath(0, a3, a4, v21);
  USOKeyPath.createTask(with:)();
  (*(v10 + 8))(v13, v9);
  sub_1DD004D3C(v18, v23);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1DCCA0220@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for USOKeyPath(0, v3, v4, v5) - 8);
  v7 = *(v6 + 80);
  return sub_1DCCA0010(v1 + ((v7 + 40) & ~v7), v1 + ((((v7 + 40) & ~v7) + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80)), v3, v4, v5, a1);
}

void sub_1DCCA0310(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_66();
  sub_1DCC9FBC4();
  v3 = v10;
  v4 = v11;
  v5 = v11 >> 6;
  if (v5)
  {
    if (v5 != 1)
    {
      sub_1DCB17CA0(v1 + 16, &v6);
      sub_1DCB17CA0(v1 + 56, v7);
      sub_1DD0DCF8C();
    }

    v6 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DEDBC();
    a1[3] = type metadata accessor for Abort(0);
    a1[4] = &protocol witness table for Abort;
    __swift_allocate_boxed_opaque_existential_1Tm(a1);
    OUTLINED_FUNCTION_3_37();
    ActingFlow.abort(reason:)(0, 0xE000000000000000, a1);
    sub_1DCCA092C(v3, v4);
  }

  else
  {
    v8 = v10;
    LOBYTE(v9) = v11 & 1;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA34D8, &unk_1DD0E96C8);
    a1[4] = &protocol witness table for Conclude<A>;
    __swift_allocate_boxed_opaque_existential_1Tm(a1);
    OUTLINED_FUNCTION_3_37();
    ActingFlow.conclude(with:)(&v8, a1);
    sub_1DCCA092C(v3, v4);
  }
}

void sub_1DCCA092C(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  else if (!(a2 >> 6))
  {
    sub_1DCB79378(a1, a2 & 1);
  }
}

uint64_t sub_1DCCA094C(uint64_t a1, unint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57DA0);

  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1DCB10E9C(a1, a2, &v22);
    _os_log_impl(&dword_1DCAFC000, v12, v13, "[ConfirmationPrompt#instrumentOnReprompt(%s)] user supplied no input; logging .resolveSlotConfirm again", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E12A8390](v15, -1, -1);
    MEMORY[0x1E12A8390](v14, -1, -1);
  }

  type metadata accessor for SiriKitEvent(0);
  *v10 = 53;
  *(v10 + 1) = a1;
  *(v10 + 2) = a2;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 9) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2468, &unk_1DD0E97C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD0E07C0;
  v17 = *(*a3 + 128);
  v18 = *(v6 + 88);
  *(v16 + 56) = v18;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v16 + 32));
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1Tm, &a3[v17], v18);
  *(v10 + 10) = v16;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  v10[184] = 29;
  swift_storeEnumTagMultiPayload();

  return SiriKitEvent.__allocating_init(_:builder:)(v10, 0);
}

void sub_1DCCA0C18(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  sub_1DCB8D4CC(v1, v2);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  sub_1DCB79378(v1, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    v12 = v1;
    *v6 = 136315138;
    v13 = v2;
    sub_1DCB8D4CC(v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3600, &unk_1DD0E97D0);
    v8 = sub_1DD0DE02C();
    v10 = sub_1DCB10E9C(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "[ConfirmationPrompt] successfully received value %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A8390](v7, -1, -1);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  v12 = v1;
  v13 = v2;
  sub_1DCB8D4CC(v1, v2);
  sub_1DCC9FBFC();
}

void sub_1DCCA0DD4(void *a1)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = a1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "[ConfirmationPrompt] failed to prompt for value. error: %@", v6, 0xCu);
    sub_1DCB16D50(v7, qword_1ECCA8AD0, &qword_1DD0E4F90);
    MEMORY[0x1E12A8390](v7, -1, -1);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  swift_dynamicCast();
  v11 = a1;
  sub_1DCC9FBFC();
}

void sub_1DCCA0F94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57DA0);

  sub_1DD0DCF8C();
}

void sub_1DCCA12B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA1338(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  if (*(a3 + 8))
  {
    v51 = *a3;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {
      if (qword_1EDE4D8C8 != -1)
      {
        swift_once();
      }

      v15 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v15, qword_1EDE57DA0);

      sub_1DD0DCF8C();
    }

    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v30 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v30, qword_1EDE57DA0);

    sub_1DCB8D4CC(v13, 1);
    v31 = sub_1DD0DD8EC();
    v32 = sub_1DD0DE6DC();

    sub_1DCB79378(v13, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50 = v9;
      v35 = v34;
      v51 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_1DCB10E9C(a1, a2, &v51);
      *(v33 + 12) = 2080;
      swift_getErrorValue();
      v36 = sub_1DD0DF18C();
      v38 = a1;
      v39 = sub_1DCB10E9C(v36, v37, &v51);

      *(v33 + 14) = v39;
      a1 = v38;
      _os_log_impl(&dword_1DCAFC000, v31, v32, "[ConfirmationPrompt#instrumentOnSuccess(%s)] result had failure; error=%s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v35, -1, -1);
      MEMORY[0x1E12A8390](v33, -1, -1);
    }

    type metadata accessor for SiriKitEvent(0);
    *v12 = 6;
    *(v12 + 1) = a1;
    *(v12 + 2) = a2;
    bzero(v12 + 24, 0x90uLL);
    swift_getErrorValue();

    *(v12 + 21) = sub_1DD0DF18C();
    *(v12 + 22) = v40;
    v12[184] = 92;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v50 = v9;
    if (v13)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57DA0);

    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6DC();

    v49 = v18;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v51 = v48;
      *v20 = 136315394;
      *(v20 + 4) = sub_1DCB10E9C(a1, a2, &v51);
      *(v20 + 12) = 2080;
      if (v13)
      {
        v21 = 0x44455443454A4552;
      }

      else
      {
        v21 = 0x454D5249464E4F43;
      }

      if (v13)
      {
        v22 = 0xE800000000000000;
      }

      else
      {
        v22 = 0xE900000000000044;
      }

      v23 = v16;
      v24 = a2;
      v25 = v8;
      v26 = a1;
      v27 = sub_1DCB10E9C(v21, v22, &v51);

      *(v20 + 14) = v27;
      a1 = v26;
      v8 = v25;
      a2 = v24;
      v16 = v23;
      v28 = v49;
      _os_log_impl(&dword_1DCAFC000, v49, v19, "[ConfirmationPrompt#instrumentOnSuccess(%s)] user supplied response; confirmationState=%s", v20, 0x16u);
      v29 = v48;
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v29, -1, -1);
      MEMORY[0x1E12A8390](v20, -1, -1);
    }

    else
    {
    }

    type metadata accessor for SiriKitEvent(0);
    *v12 = v16;
    *(v12 + 1) = 0;
    *(v12 + 2) = a1;
    *(v12 + 3) = a2;
    v41 = *a4;
    v42 = &a4[*(*a4 + 136)];
    v43 = *(v42 + 1);
    *(v12 + 4) = *v42;
    *(v12 + 5) = v43;
    v44 = *(v41 + 128);
    v45 = *(v8 + 88);
    *(v12 + 9) = v45;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v12 + 6);
    (*(*(v45 - 8) + 16))(boxed_opaque_existential_1Tm, &a4[v44], v45);
    *(v12 + 10) = 0;
    v12[88] = 0;
    swift_storeEnumTagMultiPayload();
  }

  return SiriKitEvent.__allocating_init(_:builder:)(v12, 0);
}

void sub_1DCCA1A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_92_2();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = a1;
  v9[4] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA1AFC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v27 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v27, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v26[1] = a4;
  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57DA0);

  v12 = a3;
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26[0] = v11;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315394;
    v18 = a1;
    *(v16 + 4) = sub_1DCB10E9C(a1, a2, &v28);
    *(v16 + 12) = 2080;
    swift_getErrorValue();
    v19 = sub_1DD0DF18C();
    v21 = sub_1DCB10E9C(v19, v20, &v28);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1DCAFC000, v13, v14, "[ConfirmationPrompt#instrumentOnFailure(%s)]: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v17, -1, -1);
    v22 = v16;
    v11 = v26[0];
    MEMORY[0x1E12A8390](v22, -1, -1);
  }

  else
  {
    v18 = a1;
  }

  v28 = a3;
  v23 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1EDE57E00);

    sub_1DD0DCF8C();
  }

  type metadata accessor for SiriKitEvent(0);
  *v10 = 6;
  *(v10 + 1) = v18;
  *(v10 + 2) = a2;
  bzero(v10 + 24, 0x90uLL);
  swift_getErrorValue();

  *(v10 + 21) = sub_1DD0DF18C();
  *(v10 + 22) = v24;
  v10[184] = 92;
  swift_storeEnumTagMultiPayload();
  return SiriKitEvent.__allocating_init(_:builder:)(v10, 0);
}

char *ConfirmationPrompt.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(v2 + 128)]);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  sub_1DCCA092C(*&v0[*(v3 + 144)], v0[*(v3 + 144) + 8]);
  return v0;
}

uint64_t ConfirmationPrompt.__deallocating_deinit()
{
  ConfirmationPrompt.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCCA2118(void *a1, __int16 a2, void (*a3)(id *), uint64_t a4, void (*a5)(id *))
{
  v8 = a1;
  v9 = a2 & 0x1FF;
  a3(&v8);
  if ((v9 & 0x100) == 0)
  {
    v6 = v8;
    v7 = v9 & 1;
    sub_1DCB8D4CC(v8, v9 & 1);
    a5(&v6);
    sub_1DCB79378(v6, v7);
  }
}

uint64_t sub_1DCCA21A8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = a1;
  v9 = a2 & 1;
  result = a3(&v8);
  if ((v9 & 1) == 0)
  {
    v7 = v8 & 1;
    return a5(&v7);
  }

  return result;
}

void sub_1DCCA223C(void *a1, __int16 a2, uint64_t (*a3)(id *), uint64_t a4, void (*a5)(id))
{
  v9 = a1;
  v10 = a2 & 0x1FF;
  a3(&v9);
  if (HIBYTE(v10) == 1)
  {
    v6 = v9;
    v7 = v10;
    v8 = v9;
    a5(v6);

    sub_1DCCA382C(v6, v7, 1);
  }
}

void sub_1DCCA22F8(void *a1, char a2, void (*a3)(id *), uint64_t a4, void (*a5)(id))
{
  v8 = a1;
  v9 = a2 & 1;
  a3(&v8);
  if (v9 == 1)
  {
    v6 = v8;
    v7 = v8;
    a5(v6);

    sub_1DCB79378(v6, 1);
  }
}

void sub_1DCCA239C(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  sub_1DD0DCF8C();
}

void sub_1DCCA23E4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  sub_1DD0DCA6C();
}

void sub_1DCCA2BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1;
  v5 = a2 & 1;
  sub_1DCCA27C0();
}

uint64_t sub_1DCCA2D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCCA2D40, 0, 0);
}

void sub_1DCCA2D40()
{
  v2 = v0;
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57DA0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA301C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DCCA3208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCCA32D8;

  return sub_1DCCA2D1C(a1, a2, a3, v12, a5, a6);
}

uint64_t sub_1DCCA32D8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DCCA3464(uint64_t a1)
{
  result = swift_checkMetadataState();
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

id sub_1DCCA3578(id result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return result;
  }

  if (!(a2 >> 6))
  {
    return sub_1DCB8D4CC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1DCCA35A8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCCA3578(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1DCCA092C(v5, v6);
  return a1;
}

uint64_t sub_1DCCA35FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCCA092C(v4, v5);
  return a1;
}

unint64_t sub_1DCCA36B8()
{
  result = qword_1ECCA35F0;
  if (!qword_1ECCA35F0)
  {
    type metadata accessor for MetricsEnvironmentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA35F0);
  }

  return result;
}

uint64_t sub_1DCCA3710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DCCA32D8;

  return sub_1DCCA3208(a1, v4, v5, v1 + 4, v6, (v1 + 6));
}

void sub_1DCCA382C(id a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1DCB79378(a1, a2 & 1);
  }
}

id sub_1DCCA3878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v31 - v9;
  v11 = *(a1 + 40);
  if (!v11[2] || (v12 = *(a2 + 40), !v12[2]))
  {
    v31 = v8;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    v20 = __swift_project_value_buffer(v19, qword_1EDE57E00);
    v21 = *(v19 - 8);
    (*(v21 + 16))(v10, v20, v19);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v19);
    v22 = v10;
    v23 = v31;
    sub_1DCB28B08(v22, v31, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v23, 1, v19) == 1)
    {
      sub_1DCBCF738(v31);
    }

    else
    {
      v24 = sub_1DD0DD8EC();
      v25 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32 = v27;
        *v26 = 136315650;
        v28 = sub_1DD0DEC3C();
        v30 = sub_1DCB10E9C(v28, v29, &v32);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 149;
        *(v26 + 22) = 2080;
        *(v26 + 24) = sub_1DCB10E9C(0xD000000000000056, 0x80000001DD116BB0, &v32);
        _os_log_impl(&dword_1DCAFC000, v24, v25, "FatalError at %s:%lu - %s", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v27, -1, -1);
        MEMORY[0x1E12A8390](v26, -1, -1);
      }

      (*(v21 + 8))(v31, v19);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000056, 0x80000001DD116BB0);
  }

  v14 = v11[4];
  v13 = v11[5];
  v15 = v12[4];
  v16 = v12[5];

  v17 = sub_1DCCA4DBC(v14, v13, v15, v16);

  return v17;
}

void sub_1DCCA3C08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if ((*(v9 + 16))(v8, v9))
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    sub_1DD0DCF8C();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA3D50(uint64_t a1, char a2, void (*a3)(uint64_t, void), uint64_t a4, void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, void))
{
  a5(a1, a2 & 1);
  a3(a1, a2 & 1);

  return a6(a1, a2 & 1);
}

void sub_1DCCA3DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[1] = a7;
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  (*(v13 + 16))(v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18);
  v19 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  (*(v13 + 32))(&v20[v19], v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  sub_1DD0DCF8C();
}

id sub_1DCCA3F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 40);
  v12 = *(a2 + 40);
  static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)();
  v14 = v13;
  if (*(v11 + 16))
  {
    v51 = *(v11 + 32);
  }

  else
  {
    v51 = 0;
    v15 = 0;
  }

  v52 = v15;
  static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)();
  v17 = v16;
  if (v12[2])
  {
    v18 = v12[4];
    v19 = v12[5];
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69C7A20]) init];
  sub_1DD0DB03C();
  v21 = sub_1DD0DAFFC();
  v23 = v22;
  (*(v6 + 8))(v10, v4);
  sub_1DCB4D8E8(v21, v23, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3610, &qword_1DD0E97F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E32B0;
  v26 = v51;
  v25 = v52;
  *(inited + 32) = v14;
  *(inited + 40) = v26;
  *(inited + 48) = v25;
  *(inited + 56) = v17;
  v48[1] = v18;
  *(inited + 64) = v18;
  *(inited + 72) = v19;
  v27 = v25;
  v54 = MEMORY[0x1E69E7CC0];

  v28 = v14;
  v50 = v17;

  sub_1DD0DED0C();
  v29 = objc_allocWithZone(MEMORY[0x1E69C7A18]);
  v30 = v28;

  v31 = [v29 init];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v33 = OUTLINED_FUNCTION_52_2(v32);
  v49 = xmmword_1DD0E15D0;
  *(v33 + 16) = xmmword_1DD0E15D0;
  *(v33 + 32) = v30;
  v53 = v30;
  sub_1DCFA3860(v33, v31);
  v34 = [objc_allocWithZone(MEMORY[0x1E69C7B38]) init];
  if (v27)
  {
    v35 = sub_1DD0DDF8C();
  }

  else
  {
    v35 = 0;
  }

  [v34 setText_];

  v36 = [objc_allocWithZone(MEMORY[0x1E69C7A08]) init];
  [v36 setCentered_];
  [v36 setDecoratedLabel_];
  v37 = v31;
  [v36 setAction_];

  sub_1DD0DECDC();
  sub_1DD0DED1C();
  sub_1DD0DED2C();
  sub_1DD0DECEC();
  v38 = objc_allocWithZone(MEMORY[0x1E69C7A18]);
  v39 = v50;

  v40 = [v38 init];
  v41 = OUTLINED_FUNCTION_52_2(v32);
  *(v41 + 16) = v49;
  *(v41 + 32) = v39;
  v42 = v39;
  sub_1DCFA3860(v41, v40);
  v43 = [objc_allocWithZone(MEMORY[0x1E69C7B38]) init];
  if (v19)
  {
    v44 = sub_1DD0DDF8C();
  }

  else
  {
    v44 = 0;
  }

  [v43 setText_];

  v45 = [objc_allocWithZone(MEMORY[0x1E69C7A08]) init];
  [v45 setCentered_];
  [v45 setDecoratedLabel_];
  v46 = v40;
  [v45 setAction_];

  sub_1DD0DECDC();
  sub_1DD0DED1C();
  sub_1DD0DED2C();
  sub_1DD0DECEC();
  swift_setDeallocating();
  sub_1DCC65780();
  sub_1DCFA387C(v54, v20);

  return v20;
}

void sub_1DCCA4430(void *__src, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy(__dst, __src, 0x49uLL);
  if ((__dst[72] & 1) == 0)
  {
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    memcpy(v20 + 4, __src, 0x48uLL);
    sub_1DCB28B08(__dst, v21, &unk_1ECCA3260, &unk_1DD0E5AD0);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v11 = qword_1EDE57E18;
  v12 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E07C0;
  v22 = 0;
  v23 = 0xE000000000000000;
  memcpy(v21, __src, 0x49uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
  sub_1DD0DEDBC();
  v14 = v22;
  v15 = v23;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1DCB34060();
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  sub_1DD0DD7EC("Missing yes template %@", 23, 2, &dword_1DCAFC000, v11, v12, v13);

  type metadata accessor for CommandFailure();
  swift_allocObject();
  v16 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000014, 0x80000001DD116B50);
  v17 = sub_1DCC7AE30();
  v18 = OUTLINED_FUNCTION_4_29(v17);
  *v19 = v16;
  a2(v18, 1);
}

void sub_1DCCA46AC(_BYTE *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = a1[72];
  if (v7)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v8 = qword_1EDE57E18;
    v9 = sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DD0E07C0;
    v19 = 0;
    v20 = 0xE000000000000000;
    memcpy(__dst, a1, 0x48uLL);
    __dst[72] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
    sub_1DD0DEDBC();
    v11 = v19;
    v12 = v20;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1DCB34060();
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    sub_1DD0DD7EC("Missing no template %@", 22, 2, &dword_1DCAFC000, v8, v9, v10);

    type metadata accessor for CommandFailure();
    swift_allocObject();
    v13 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000013, 0x80000001DD116B90);
    v14 = sub_1DCC7AE30();
    v15 = OUTLINED_FUNCTION_4_29(v14);
    *v16 = v13;
    a2(v15, 1);
  }

  else
  {
    v17 = a5(a4, a1);
    a2(v17, 0);
  }
}

uint64_t sub_1DCCA48B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_1DCCA4948;

  return static LabelTemplates.yes()();
}

uint64_t sub_1DCCA4948(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCCA4C94, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[8] = v5;
    *v5 = v4;
    v5[1] = sub_1DCCA4AB8;

    return static LabelTemplates.no()();
  }
}

uint64_t sub_1DCCA4AB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_1DCCA4D24;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_1DCCA4BEC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCCA4BEC(__n128 a1)
{
  v2 = v1[2];
  v3 = sub_1DCCA4DBC(v1[5], v1[6], v1[11], v1[10]);

  v2(v3, 0);

  v4 = v1[1];

  return v4();
}

uint64_t sub_1DCCA4C94()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DCCA4D24()
{

  v1 = v0[9];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

id sub_1DCCA4DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)();
  v10 = v9;
  swift_setDeallocating();
  sub_1DCB19D2C();
  v11 = swift_initStackObject();
  OUTLINED_FUNCTION_3_38(v11, v12, v13, v14, v15, v16, v17, v18, v19, v77, a2, a1, v89, v93, a3, v20);
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;

  static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)();
  v23 = v22;
  swift_setDeallocating();
  sub_1DCB19D2C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v25 = OUTLINED_FUNCTION_52_2(v24);
  *(v25 + 16) = xmmword_1DD0E15D0;
  *(v25 + 32) = v10;
  v26 = sub_1DD0DDFBC();
  v28 = v27;
  v29 = objc_allocWithZone(MEMORY[0x1E69C7B28]);
  v90 = v10;
  v30 = [v29 init];
  [v30 setActive_];
  v31 = v86;
  sub_1DCC6591C(v86, a2, v30);
  sub_1DCC65970(v25, v30);

  sub_1DCC659E4(v26, v28, v30);

  v32 = OUTLINED_FUNCTION_52_2(v24);
  OUTLINED_FUNCTION_3_38(v32, v33, v34, v35, v36, v37, v38, v39, v40, v78, v82, v86, v90, a4, v97, v41);
  *(v42 + 32) = v23;
  v43 = sub_1DD0DDFBC();
  v45 = v44;
  v46 = objc_allocWithZone(MEMORY[0x1E69C7B28]);
  v79 = v23;
  v47 = [v46 init];
  [v47 setActive_];
  v49 = v94;
  v48 = v98;
  sub_1DCC6591C(v98, v94, v47);
  sub_1DCC65970(v32, v47);

  sub_1DCC659E4(v43, v45, v47);

  v50 = [objc_allocWithZone(MEMORY[0x1E69C7B30]) init];
  sub_1DCCA5298(v31, v83, v50);
  v51 = OUTLINED_FUNCTION_52_2(v24);
  OUTLINED_FUNCTION_3_38(v51, v52, v53, v54, v55, v56, v57, v58, v59, v79, v83, v87, v91, v94, v98, v60);
  *(v61 + 32) = v92;
  v62 = v92;
  sub_1DCCA5348(v51, v50, &selRef_setConfirmCommands_);
  sub_1DCCA52F0(v48, v49, v50);
  v63 = OUTLINED_FUNCTION_52_2(v24);
  OUTLINED_FUNCTION_3_38(v63, v64, v65, v66, v67, v68, v69, v70, v71, v80, v84, v88, v92, v95, v99, v72);
  *(v73 + 32) = v81;
  v74 = v81;
  sub_1DCCA5348(v63, v50, &selRef_setDenyCommands_);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1DD0E97E0;
  *(v75 + 32) = v30;
  *(v75 + 40) = v47;
  sub_1DCCA53D0(v75, v50);

  return v50;
}

uint64_t objectdestroy_2Tm_0()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

void sub_1DCCA5298(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setConfirmText_];
}

void sub_1DCCA52F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setDenyText_];
}

void sub_1DCCA5348(uint64_t a1, void *a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v5 = sub_1DD0DE2DC();

  [a2 *a3];
}

void sub_1DCCA53D0(uint64_t a1, void *a2)
{
  sub_1DCCA5444();
  v3 = sub_1DD0DE2DC();

  [a2 setAllConfirmationOptions_];
}

unint64_t sub_1DCCA5444()
{
  result = qword_1ECCA3618[0];
  if (!qword_1ECCA3618[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ECCA3618);
  }

  return result;
}

void sub_1DCCA5614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v12 = OUTLINED_FUNCTION_20_0(v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v18 - v14;
  v16 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a9;
  v17[5] = 0;
  v17[6] = a4;
  v17[7] = a5;
  sub_1DD0DCF8C();
}

void ConfirmIntentFlowStrategy.makeErrorResponse(app:intent:intentResponse:error:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v9 = OUTLINED_FUNCTION_20_0(v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - v11;
  v13 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DD0E9838;
  v14[5] = 0;
  v14[6] = a5;
  v14[7] = a6;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA5810(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DCEAA568();
}

uint64_t sub_1DCCA58A8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_0(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCC100AC();
}

uint64_t sub_1DCCA5934(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCCA59CC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_0(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCC100AC();
}

uint64_t sub_1DCCA5A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_1DCB4AE1C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, a3, a4, v15, v16, v17, v18, a9, a10);
}

uint64_t ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v12 = *(v11 + 16);
  *(v10 + 16) = *v11;
  *(v10 + 32) = v12;
  OUTLINED_FUNCTION_8();
  v13 = swift_task_alloc();
  *(v10 + 40) = v13;
  *v13 = v10;
  v13[1] = sub_1DCB63F5C;
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_47();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1DCCA5C44(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)();
}

uint64_t ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCCA5D60(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)();
}

uint64_t ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA568();
}

uint64_t sub_1DCCA5E7C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AD3C;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)();
}

uint64_t ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCCA5F98(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)();
}

uint64_t ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t ConfirmIntentFlowStrategyAsync.actionForInputWrapper(_:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a3;
  *(v6 + 72) = *(a3 + 16);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCCA60E0()
{
  OUTLINED_FUNCTION_39();
  v9 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v7 = *(v0 + 56);
  v8 = v1;
  (*(v2 + 24))(v3, &v7, v4);
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCCA616C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v5 = v3;

  return a1;
}

uint64_t sub_1DCCA61AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_57_4();

  return v8();
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_57_4();

  return v8();
}

uint64_t sub_1DCCA697C(uint64_t a1)
{
  v1 = swift_allocObject();
  sub_1DCCA69BC();
  return v1;
}

uint64_t sub_1DCCA69BC()
{
  OUTLINED_FUNCTION_112();
  (*(v1 + 32))(v0 + v2);
  return v0;
}

uint64_t sub_1DCCA6AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 48) = *a3;
  *(v4 + 64) = *(a3 + 16);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCCA6AFC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ConfirmIntentAnswer(0, AssociatedTypeWitness, v6, v7);
  OUTLINED_FUNCTION_17();
  *v4 = v8;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v9);
}

uint64_t sub_1DCCA6C08()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCCA6C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v8 = *(*a2 + 88);
  v9 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ConfirmIntentAnswer(255, AssociatedTypeWitness, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v13 = sub_1DD0DE47C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  *(v19 + 24) = v8;
  (*(v14 + 32))(v19 + v18, v17, v13);
  (*(v8 + 32))(a3, v22, v23, v24, sub_1DCCAB8A8, v19, v9, v8);
}

uint64_t sub_1DCCA6E78(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v10 = *a1;
  v11 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ConfirmIntentAnswer(255, AssociatedTypeWitness, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DE47C();
  return sub_1DD05EBE4(&v10, v8);
}

uint64_t sub_1DCCA6F3C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCCA7008()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCA7124(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 40))(a3, v16, v17, sub_1DCC11344, v14, *(v7 + 80));
}

uint64_t sub_1DCCA7300()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCCA73CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 48))(a3, v16, v17, sub_1DCC11344, v14, *(v7 + 80));
}

uint64_t sub_1DCCA75A8()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCCA7674(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 56))(a3, v16, v17, sub_1DCC11344, v14, *(v7 + 80));
}

uint64_t sub_1DCCA7850()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCCA791C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 64))(a3, v16, v17, sub_1DCC11344, v14, *(v7 + 80));
}

uint64_t sub_1DCCA7AF8()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCCA7BC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCA7CE0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCCA7D3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 72))(a3, v16, v17, sub_1DCC111BC, v14, *(v7 + 80));
}

uint64_t sub_1DCCA7EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 56) = *(a3 + 16);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCCA7F1C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCCA8008()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCA8124(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v18 = a4;
  v8 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(*(v8 + 88) + 80))(a3, v18, v19, v20, sub_1DCC11344, v15, *(v8 + 80));
}

uint64_t sub_1DCCA82E4()
{
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_1DCCA8350()
{
  sub_1DCCA82E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCA83E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCCA6AAC(a1, a2, a3);
}

uint64_t sub_1DCCA8498(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCCA6F18(a1, a2);
}

uint64_t sub_1DCCA8544(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCCA72DC(a1, a2);
}

uint64_t sub_1DCCA85F0(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCCA7584(a1, a2);
}

uint64_t sub_1DCCA869C(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCCA782C(a1, a2);
}

uint64_t sub_1DCCA8748(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCCA7AD4(a1, a2);
}

uint64_t sub_1DCCA87F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCCA7EF4(a1, a2, a3);
}

void sub_1DCCA88A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_58_6();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_43_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_43_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_43_10();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v80 - v20;
  v23 = v19[1];
  v92 = *v19;
  v22 = v92;
  v91 = v23;
  v24 = v19[2];
  sub_1DCB17CA0(v25, v104);
  v101 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = AssociatedTypeWitness;
  v27 = OUTLINED_FUNCTION_48_9();
  sub_1DCAFF9E8(v27, v28);
  v105 = v22;
  v106 = v23;
  v31 = type metadata accessor for ConfirmIntentAnswer(255, AssociatedTypeWitness, v29, v30);
  v87 = type metadata accessor for AnyPromptForConfirmationFlowStrategy(0, AssociatedTypeWitness, v31, &protocol witness table for ConfirmIntentAnswer<A>);
  v98 = *(v8 + 16);
  v103 = v8 + 16;
  v99 = v4;
  (v98)(v21, v4, a3);
  v32 = *(v8 + 80);
  v33 = v8;
  v34 = (v32 + 32) & ~v32;
  v90 = v10 + 7;
  v35 = (v10 + 7 + v34) & 0xFFFFFFFFFFFFFFF8;
  v95 = v32;
  v36 = swift_allocObject();
  v37 = a3;
  *(v36 + 16) = a3;
  *(v36 + 24) = a4;
  v38 = *(v33 + 32);
  v102 = v33 + 32;
  v86 = v36;
  v39 = v37;
  v38(v36 + v34, v21);
  v97 = v38;
  v40 = (v36 + v35);
  v41 = v92;
  v42 = v91;
  *v40 = v92;
  v40[1] = v42;
  v89 = v24;
  v40[2] = v24;
  v43 = v96;
  v44 = v4;
  v45 = v98;
  (v98)(v96, v44, v39);
  v46 = swift_allocObject();
  v85 = v46;
  v47 = v101;
  *(v46 + 16) = v39;
  *(v46 + 24) = v47;
  (v38)(v46 + v34, v43, v39);
  v48 = (v46 + v35);
  *v48 = v41;
  v48[1] = v42;
  v48[2] = v24;
  v93 = type metadata accessor for ConfirmActivityLogger(0, v100, v49, v50);
  OUTLINED_FUNCTION_112();
  v52 = *(v51 + 16);
  v94 = v51 + 16;
  v53 = OUTLINED_FUNCTION_48_9();
  v52(v53);
  OUTLINED_FUNCTION_60_2();
  v45();
  v54 = (v95 + 88) & ~v95;
  v100 = v54;
  v90 = (v90 + v54) & 0xFFFFFFFFFFFFFFF8;
  v55 = v90;
  v56 = swift_allocObject();
  v57 = v101;
  *(v56 + 16) = v39;
  *(v56 + 24) = v57;
  v58 = OUTLINED_FUNCTION_15_21(v56);
  v60 = v59 + v54;
  v84 = v56;
  v61 = v97;
  (v97)(v60, v43, v39, v58);
  v62 = (v56 + v55);
  v63 = v91;
  *v62 = v92;
  v62[1] = v63;
  v64 = v89;
  v62[2] = v89;
  v65 = OUTLINED_FUNCTION_48_9();
  v88 = v52;
  v52(v65);
  OUTLINED_FUNCTION_60_2();
  v66 = v98;
  v98();
  v67 = v90;
  v68 = swift_allocObject();
  v81 = v39;
  *(v68 + 16) = v39;
  *(v68 + 24) = v57;
  OUTLINED_FUNCTION_15_21(v68);
  OUTLINED_FUNCTION_49_6();
  v72 = v71;
  v83 = v71;
  v61(v69 + v70, v96);
  v73 = (v72 + v67);
  v74 = v91;
  *v73 = v92;
  v73[1] = v74;
  v73[2] = v64;
  v75 = OUTLINED_FUNCTION_48_9();
  v88(v75);
  OUTLINED_FUNCTION_60_2();
  v76 = v81;
  v66();
  v77 = swift_allocObject();
  v78 = v101;
  *(v77 + 16) = v76;
  *(v77 + 24) = v78;
  OUTLINED_FUNCTION_15_21(v77);
  v82 = v79;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA9224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v15 = (*(a8 + 32) + **(a8 + 32));
  v13 = swift_task_alloc();
  v8[5] = v13;
  *v13 = v8;
  v13[1] = sub_1DCB63F5C;

  return v15(a1, a2, v8 + 2, a7, a8);
}

uint64_t sub_1DCCA9374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DCCA93A8, 0, 0);
}

uint64_t sub_1DCCA93A8()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_14_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_53_4(v2);
  v3 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_18_15(v3, v4, v5, v6);
  *v0 = v7;
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_29_10();

  return sub_1DCCA97DC(v8, v9, v10, v11, v12);
}

uint64_t sub_1DCCA946C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCA9588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v13 = (*(a7 + 40) + **(a7 + 40));
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1DCCA96C8;

  return v13(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCCA96C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCA97DC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a1;
  v6[12] = a2;
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  v6[15] = v8;
  *v8 = v6;
  v8[1] = sub_1DCCA98E4;

  return v10(a1);
}

uint64_t sub_1DCCA98E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_29();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1DCCA99FC()
{
  OUTLINED_FUNCTION_33();
  v21 = v0;
  v1 = v0[11];
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (sub_1DCB651D0(v2))
  {
    v3 = v0[12];
    v5 = v1[3];
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[11], v5);
    (*(v4 + 8))(v5, v4);
    if (v3)
    {
      if (v3 == 1)
      {
        v17 = 3;
        v18 = 68;
        v6 = (v0 + 2);
        v7 = &v17;
        v8 = &v18;
      }

      else
      {
        if (v3 != 2)
        {
          v13 = 6;
          v14 = 17;
          swift_getErrorValue();
          v9 = sub_1DCEE0FD4(v0[8], v0[9]);
          sub_1DCCAA9D8((v0 + 2), &v13, &v14, v9, v10);
        }

        v15 = 5;
        v16 = 68;
        v6 = (v0 + 2);
        v7 = &v15;
        v8 = &v16;
      }
    }

    else
    {
      v19 = 48;
      v20 = 29;
      v6 = (v0 + 2);
      v7 = &v19;
      v8 = &v20;
    }

    sub_1DCCAA9D8(v6, v7, v8, 0, 0);
  }

  OUTLINED_FUNCTION_29();

  return v11();
}

uint64_t sub_1DCCA9BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DCCA9BF0, 0, 0);
}

uint64_t sub_1DCCA9BF0()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_14_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_53_4(v2);
  v3 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_18_15(v3, v4, v5, v6);
  *v0 = v7;
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_29_10();

  return sub_1DCCA97DC(v8, v9, v10, v11, v12);
}

uint64_t sub_1DCCA9CB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCA9DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v13 = (*(a7 + 48) + **(a7 + 48));
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1DCB63F5C;

  return v13(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCCA9F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DCCA9F44, 0, 0);
}

uint64_t sub_1DCCA9F44()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_14_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_53_4(v2);
  v3 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_18_15(v3, v4, v5, v6);
  *v0 = v7;
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_29_10();

  return sub_1DCCA97DC(v8, v9, v10, v11, v12);
}

uint64_t sub_1DCCAA008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v13 = (*(a7 + 56) + **(a7 + 56));
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1DCB63F5C;

  return v13(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCCAA148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCAA174, 0, 0);
}

uint64_t sub_1DCCAA174()
{
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_14_24(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_53_4(v3);
  v4 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_18_15(v4, v5, v6, v7);
  *v0 = v8;
  v9 = OUTLINED_FUNCTION_50_6();

  return sub_1DCCA97DC(v9, 1, dword_1DD0E9B30, v1, v10);
}

uint64_t sub_1DCCAA244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v13 = (*(a7 + 64) + **(a7 + 64));
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1DCB63F5C;

  return v13(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCCAA384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCAA3B0, 0, 0);
}

uint64_t sub_1DCCAA3B0()
{
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_14_24(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_53_4(v3);
  v4 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_18_15(v4, v5, v6, v7);
  *v0 = v8;
  v9 = OUTLINED_FUNCTION_50_6();

  return sub_1DCCA97DC(v9, 2, dword_1DD0E9B20, v1, v10);
}

uint64_t sub_1DCCAA480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v13 = (*(a7 + 72) + **(a7 + 72));
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1DCB63F5C;

  return v13(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCCAA5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCCAA5F8, 0, 0);
}

uint64_t sub_1DCCAA5F8()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = *(v0 + 48);
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 48) = v7;
  *(v6 + 64) = v3;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18_15(AssociatedTypeWitness, v10, v11, v12);
  *v8 = v14;
  v8[1] = sub_1DCCAA70C;
  v15 = *(v0 + 16);

  return sub_1DCCA97DC(v15, v5, dword_1DD0E9B08, v6, v13);
}

uint64_t sub_1DCCAA70C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCAA828()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCCAA884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v15 = (*(a8 + 80) + **(a8 + 80));
  v13 = swift_task_alloc();
  v8[5] = v13;
  *v13 = v8;
  v13[1] = sub_1DCB63F5C;

  return v15(a1, a3, v8 + 2, a7, a8);
}

void sub_1DCCAA9D8(uint64_t a1, char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a4;
  v23 = a5;
  v21 = a1;
  v9 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  HIDWORD(v20) = *a3;
  v14 = [*(v5 + 48) typeName];
  v15 = sub_1DD0DDFBC();
  v17 = v16;

  v18 = v6[5];
  memset(v24, 0, sizeof(v24));
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  type metadata accessor for SiriKitEvent(0);
  *v12 = v13;
  *(v12 + 1) = v15;
  *(v12 + 2) = v17;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  *(v12 + 3) = v18;
  sub_1DCB09910(v24, (v12 + 48), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  *(v12 + 10) = 0;
  *(v12 + 11) = 0;
  sub_1DCB09910(v21, (v12 + 96), &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0u;
  v19 = v23;
  *(v12 + 21) = v22;
  *(v12 + 22) = v19;
  v12[184] = BYTE4(v20);
  swift_storeEnumTagMultiPayload();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCCAABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for RCHDelegateToConfirmIntentFlowStrategy(0, *(a6 + 80), *(a6 + 88), a4);

  return ConfirmIntentFlowStrategy.makeRepromptOnEmptyParse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_1DCCAAC7C()
{
  OUTLINED_FUNCTION_58_6();
  v3 = (v0 + ((*(v2 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v3 + 2);
  v9 = *v3;
  v10 = v4;
  return (*(v5 + 24))(v6, &v9, v7);
}

uint64_t objectdestroy_49Tm()
{
  OUTLINED_FUNCTION_112();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1DCCAADC4()
{
  OUTLINED_FUNCTION_125();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = (v0 + ((*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  v15[1] = sub_1DCB4AE1C;

  return sub_1DCCA9224(v4, v2, v0 + v8, v11, v12, v13, v5, v6);
}

uint64_t sub_1DCCAAF08()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_9_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_41(v1);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCCA9374(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCCAAFCC()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_9_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_41(v1);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCCA9BBC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCCAB090()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_9_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_41(v1);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCCA9F10(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCCAB154()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_61_8();
  OUTLINED_FUNCTION_9_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_12(v1);

  return sub_1DCCAA148(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCCAB234()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_61_8();
  OUTLINED_FUNCTION_9_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_12(v1);

  return sub_1DCCAA384(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_56Tm()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1DCCAB400()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_9_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_41(v1);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCCAA5C0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCCAB4C4()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_30_12();

  return sub_1DCCAA884(v10, v11, v3, v4, v5, v6, v1, v2);
}

uint64_t sub_1DCCAB590()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_36(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCAA480(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCAB61C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_36(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCAA244(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCAB6A8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_36(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCAA008(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCAB734()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_36(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCA9DD0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCAB7C0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_36(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCA9588(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCAB8A8(__int128 *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ConfirmIntentAnswer(255, AssociatedTypeWitness, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v8);
  v10 = v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1DCCA6E78(a1, v10, v3, v4);
}

void sub_1DCCAB984(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  v2 = a1[6];
}

void sub_1DCCAB9C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  sub_1DD0DCF8C();
}

void sub_1DCCABA30(void *a1, void *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];
  sub_1DD0DCF8C();
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

uint64_t sub_1DCCABAAC(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for If.ConditionBodyPair(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for If.ConditionBodyPair(uint64_t result, int a2, int a3)
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

void sub_1DCCABC04()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_42(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_6_28(v5, v6, v7, &protocol requirements base descriptor for RCHFlowDelegate, &associated type descriptor for RCHFlowDelegate.DialogTemplatingType, v8, v9, v10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = OUTLINED_FUNCTION_4_30();
  v14(v13);
  OUTLINED_FUNCTION_126();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_3_39(v15);
  OUTLINED_FUNCTION_11_25();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_15();
  sub_1DD0DCF8C();
}

void sub_1DCCABD4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  memcpy(__dst, a2, 0x48uLL);
  sub_1DCB17CA0(a3 + 64, v35);
  HIDWORD(v25) = *(*(a3 + 16) + 16);
  v19 = a2[7];
  v20 = (*(a12 + 320))(a6, a11, a12);
  LOBYTE(v30) = 48;
  v29 = a7;
  v21 = (*(a12 + 304))(&v30, a6, a7, a11, a12);
  v22 = v21;
  if (v21)
  {
    v23 = type metadata accessor for DefaultFlowActivity();
    v21 = sub_1DCCAE20C();
  }

  else
  {
    v23 = 0;
    v31 = 0;
    v32 = 0;
  }

  v33 = v23;
  v34 = v21;
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(__dst, v35, HIDWORD(v25), a4, v19 != 1, v20 & 1, a1, MEMORY[0x1E69E7CC0], &v30, v24, v25, a1, a4, a11, a9, a8, a10, v29, v22, v31, v32);
}

void sub_1DCCAC058()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_42(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_6_28(v5, v6, v7, &protocol requirements base descriptor for RCHFlowDelegate, &associated type descriptor for RCHFlowDelegate.DialogTemplatingType, v8, v9, v10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = OUTLINED_FUNCTION_4_30();
  v14(v13);
  OUTLINED_FUNCTION_126();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_3_39(v15);
  OUTLINED_FUNCTION_11_25();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_15();
  sub_1DD0DCF8C();
}

void sub_1DCCAC1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v25 = v24;
  v63 = v26;
  v64 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v43 = &v55 - v42;
  v44 = *v37;
  v45 = *(v37 + 72);
  if ((v45 & 1) == 0)
  {
    v60 = v43;
    v62 = a24;
    v56 = a23;
    v58 = v25;
    v59 = v29;
    v46 = *(a22 + 152);
    v66 = v44;
    v47 = *(v37 + 3);
    v67 = *(v37 + 1);
    v68 = v47;
    v48 = *(v37 + 7);
    v69 = *(v37 + 5);
    v70 = v48;
    v71 = v45;
    v57 = v40;
    v61 = v41;
    sub_1DCBBF670(&v66, &v65);
    v46(a21, a22);
    OUTLINED_FUNCTION_14_25();
    v49 = swift_allocObject();
    *(v49 + 16) = a21;
    *(v49 + 24) = a22;
    *(v49 + 32) = v35;
    *(v49 + 40) = v33;
    v56 = v33;
    v51 = v63;
    v50 = v64;
    *(v49 + 48) = v31;
    *(v49 + 56) = v51;
    *(v49 + 64) = v50;
    *(v49 + 72) = v44;
    v52 = *(v37 + 3);
    *(v49 + 80) = *(v37 + 1);
    *(v49 + 96) = v52;
    v53 = *(v37 + 7);
    *(v49 + 112) = *(v37 + 5);
    *(v49 + 128) = v53;
    v54 = v59;
    *(v49 + 144) = v58;
    *(v49 + 152) = v54;
    swift_getAssociatedConformanceWitness();
    sub_1DD0DCF8C();
  }

  v35(*v37, 1);
  OUTLINED_FUNCTION_49();
}

void sub_1DCCAC43C()
{
  OUTLINED_FUNCTION_50();
  v20 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v19 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_6_28(v14, v12, v10, &protocol requirements base descriptor for RCHFlowDelegate, &associated type descriptor for RCHFlowDelegate.DialogTemplatingType, v5, v3, v1);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  (*(v2 + 176))(v4, v2);
  OUTLINED_FUNCTION_126();
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = v2;
  v18[4] = v19;
  v18[5] = v6;
  v18[6] = v15;
  v18[7] = v13;
  v18[8] = v11;
  v18[9] = v9;
  v18[10] = v20;
  OUTLINED_FUNCTION_11_25();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_15();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCAC5FC(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v17 = *a1;
  v18 = *(a1 + 72);
  if ((v18 & 1) == 0)
  {
    v29 = a5;
    v23 = *(a10 + 152);
    v34 = *a1;
    v24 = *(a1 + 3);
    v35 = *(a1 + 1);
    v36 = v24;
    v25 = *(a1 + 7);
    v37 = *(a1 + 5);
    v38 = v25;
    v39 = v18;
    sub_1DCBBF670(&v34, v33);
    v23(a9, a10);
    v26 = swift_allocObject();
    *(v26 + 16) = a9;
    *(v26 + 24) = a10;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a4;
    *(v26 + 56) = a6;
    *(v26 + 64) = a7;
    *(v26 + 72) = v17;
    v27 = *(a1 + 3);
    *(v26 + 80) = *(a1 + 1);
    *(v26 + 96) = v27;
    v28 = *(a1 + 7);
    *(v26 + 112) = *(a1 + 5);
    *(v26 + 128) = v28;
    *(v26 + 144) = a8;
    *(v26 + 152) = v29;
    swift_getAssociatedConformanceWitness();
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE57E18;
  v20 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DD0E07C0;
  v33[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1DCB34060();
  *(v21 + 32) = 0;
  *(v21 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC("Received an error from DialogTemplating: %@", 43, 2, &dword_1DCAFC000, v19, v20, v21);

  return a2(v17, 1);
}

void sub_1DCCAC9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50();
  v50 = v27;
  v51 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  if ((v37 & 1) == 0)
  {
    v49 = v33;
    v45 = v29;
    v46 = v39;
    v47 = *(a24 + 192);

    v47(a23, a24);
    v48 = swift_allocObject();
    v48[2] = a23;
    v48[3] = a24;
    memcpy(v48 + 4, v50, 0x48uLL);
    v48[13] = a21;
    v48[14] = v46;
    v48[15] = v31;
    v48[16] = v51;
    v48[17] = v45;
    v48[18] = a22;
    v48[19] = v35;
    v48[20] = v49;
    swift_getAssociatedConformanceWitness();
    sub_1DCBBF670(v50, &v52);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDE57E18;
  v43 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1DD0E07C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v44 + 56) = MEMORY[0x1E69E6158];
  *(v44 + 64) = sub_1DCB34060();
  *(v44 + 32) = 0;
  *(v44 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC("Received an error from AceViewProviding: %@", 43, 2, &dword_1DCAFC000, v42, v43, v44);

  v35(v39, 1);
  OUTLINED_FUNCTION_49();
}

void sub_1DCCACD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_50();
  v52 = v27;
  v29 = v28;
  v31 = v30;
  v50 = v32;
  v34 = v33;
  v36 = v35;
  v49 = v37;
  v39 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  memcpy(v56, v36, 0x48uLL);
  sub_1DCB17CA0(v34 + 64, v55);
  HIDWORD(v48) = *(*(v34 + 16) + 16);
  v51 = v36;
  v41 = v36[7];
  v42 = (*(a24 + 320))(v31, a23, a24);
  LOBYTE(v54[0]) = a25;
  v53 = v29;
  v43 = (*(a24 + 304))(v54, v31, v29, a23, a24);
  v44 = v43;
  if (v43)
  {
    v45 = type metadata accessor for DefaultFlowActivity();
    v43 = sub_1DCCAE20C();
  }

  else
  {
    v45 = 0;
    v54[1] = 0;
    v54[2] = 0;
  }

  v54[0] = v44;
  v54[3] = v45;
  v54[4] = v43;
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(v56, v55, HIDWORD(v48), v50, (v41 - 3) < 0xFFFFFFFFFFFFFFFELL, v42 & 1, v49, MEMORY[0x1E69E7CC0], v54, v46, v47, v48, v49, v50, a26, v51, a23, a21, v52, a22, v53);
}

void sub_1DCCAD020()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_6_28(v12, v10, v8, &protocol requirements base descriptor for RCHFlowDelegate, &associated type descriptor for RCHFlowDelegate.DialogTemplatingType, v6, v3, v1);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  (*(v2 + 176))(v4, v2);
  OUTLINED_FUNCTION_126();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v2;
  v16[4] = v17;
  v16[5] = v18;
  v16[6] = v0;
  v16[7] = v13;
  v16[8] = v9;
  v16[9] = v19;
  v16[10] = v11;
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_15();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCAD1F8(const void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v58 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v57[13] = v57 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v57[16] = v57 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v57[11] = v57 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v57[10] = v57 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v57[12] = v57 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v57[15] = v57 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v57[14] = v57 - v41;
  MEMORY[0x1EEE9AC00](v40, v42);
  v57[18] = v57 - v43;
  v44 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v57[17] = v57 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(__src, a1, 0x49uLL);
  if (LOBYTE(__src[9]) != 1)
  {
    v57[1] = v20;
    v57[2] = v44;
    v57[6] = a8;
    v57[9] = a3;
    memcpy(v67, a1, sizeof(v67));
    sub_1DCB17CA0(a4 + 64, v66);
    v57[5] = a4;
    LOBYTE(v59[0]) = 5;
    v53 = *(a10 + 304);
    sub_1DCBBF670(__src, &v60);
    v57[7] = a6;
    v57[8] = a7;
    v57[3] = a9;
    v57[4] = a10;
    v54 = v53(v59, a6, a7, a9, a10);
    v55 = v54;
    if (v54)
    {
      v56 = type metadata accessor for DefaultFlowActivity();
      v54 = sub_1DCCAE20C();
    }

    else
    {
      v56 = 0;
      v63 = 0;
      v62 = 0;
    }

    v61 = v55;
    v64 = v56;
    v65 = v54;
    sub_1DCBBA39C(v66);
  }

  v47 = __src[0];
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v48 = qword_1EDE57E18;
  v49 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1DD0E07C0;
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  v59[0] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v51 = v60;
  *(v50 + 56) = MEMORY[0x1E69E6158];
  *(v50 + 64) = sub_1DCB34060();
  *(v50 + 32) = v51;
  sub_1DD0DD7EC("Received an error from DialogTemplating: %@", 43, 2, &dword_1DCAFC000, v48, v49, v50);

  return v58(v47, 1);
}

uint64_t sub_1DCCAE0CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t *), uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14)
{
  if ((a2 & 1) == 0)
  {
    v16 = a13;
    v15 = a14;
    sub_1DCFA6B38((a3 + 104), &v16, a4, a5, a6, a7, &v15, *a8, a8[1], a11, a12);
  }

  return a9(a1, 1, a3, a4, a5, a6, a7, a8);
}

unint64_t sub_1DCCAE20C()
{
  result = qword_1ECCA3720[0];
  if (!qword_1ECCA3720[0])
  {
    type metadata accessor for DefaultFlowActivity();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA3720);
  }

  return result;
}

uint64_t sub_1DCCAE338()
{
  OUTLINED_FUNCTION_13_20();
  v16 = v0;
  v15 = v1;
  OUTLINED_FUNCTION_7_28();
  return sub_1DCCAE0CC(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16);
}

uint64_t objectdestroy_9Tm_0()
{

  swift_unknownObjectRelease();

  if (*(v0 + 128) >= 3uLL)
  {
  }

  OUTLINED_FUNCTION_14_25();

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm_0()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm_0()
{

  swift_unknownObjectRelease();

  if (*(v0 + 128) >= 3uLL)
  {
  }

  OUTLINED_FUNCTION_14_25();

  return swift_deallocObject();
}

uint64_t sub_1DCCAE6DC(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(319, v2, *(a1 + 88), v3);
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

void sub_1DCCAE7CC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, v4, v5, v6);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - v12;
  v14 = *(v3 + 120);
  OUTLINED_FUNCTION_156(&v0[v14], &v23);
  v15 = *(v9 + 16);
  v15(v13, &v0[v14], v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      v19 = v13[8];
      *v2 = *v13;
      *(v2 + 8) = v19;
      v18 = 1;
      break;
    case 4:
      v18 = v13[16];
      *v2 = *v13;
      break;
    case 1:
      (*(v9 + 8))(v13, v7);
      *v2 = xmmword_1DD0E5100;
      v18 = 2;
      break;
    default:
      type metadata accessor for ConfirmIntentWithAutoHandleFlow.ConfirmIntentWithAutoHandleError(0, v4, v5, v17);
      OUTLINED_FUNCTION_5_33();
      swift_getWitnessTable();
      v20 = swift_allocError();
      v15(v21, &v0[v14], v7);
      *v2 = v20;
      *(v2 + 8) = 0;
      *(v2 + 16) = 1;
      (*(v9 + 8))(v13, v7);
      goto LABEL_9;
  }

  *(v2 + 16) = v18;
LABEL_9:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCCAE9CC(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  sub_1DCCAEA34(a1, a2, a3, a4);
  return v8;
}

uint64_t *sub_1DCCAEA34(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = *v4;
  v9 = *(*v4 + 80);
  (*(*(v9 - 8) + 32))(v4 + *(*v4 + 96), a1, v9);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v4 + *(v10 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a2, v4 + *(v11 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, v4 + *(v12 + 128));
  OUTLINED_FUNCTION_66();
  type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, v9, *(v8 + 88), v13);
  swift_storeEnumTagMultiPayload();
  return v4;
}

void sub_1DCCAEB64()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v18 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(v0 + 80), *(v0 + 88), v6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v18 - v16);
  sub_1DCCAE9CC(v13, v11, v4, v2);
  *v17 = v9;
  v17[1] = v7;
  v17[2] = v18;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
  swift_beginAccess();
  sub_1DD0DCF8C();
}

void sub_1DCCAECB0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *(*v0 + 88);
  v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(*v0 + 80), v5, v6);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v54 - v16);
  v18 = *(v4 + 120);
  OUTLINED_FUNCTION_156(v1 + v18, v64 + 1);
  (*(v9 + 16))(v17, v1 + v18, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v17;
    v19 = v17[1];
    v21 = v17[2];
    v22 = v17[4];
    v57 = v17[3];
    v58 = v22;
    v23 = *(v5 + 24);
    v56 = v3;
    v59 = v21;
    v60 = v19;
    v23(v64);
    if (LOBYTE(v64[0]))
    {
      if (LOBYTE(v64[0]) != 1)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v47 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v47, qword_1EDE57E00);
        v48 = sub_1DD0DD8EC();
        v49 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_1DCAFC000, v48, v49, "ConfirmIntentWithAutoHandleFlow received ignore, checking if autohandle should cancel.", v50, 2u);
          OUTLINED_FUNCTION_80();
        }

        v51 = swift_allocObject();
        v53 = v57;
        v52 = v58;
        v51[2] = v1;
        v51[3] = v53;
        v51[4] = v52;
        sub_1DD0DCF8C();
      }

      v55 = v20;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v24 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v24, qword_1EDE57E00);
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v25, v26))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_56_5(&dword_1DCAFC000, v27, v28, "ConfirmIntentWithAutoHandleFlow received handle action from delegate. Transitioning to responseReceivedInput state.");
        OUTLINED_FUNCTION_80();
      }

      v61 = type metadata accessor for Input(255);
      v62 = sub_1DD0DD1FC();
      v63 = OUTLINED_FUNCTION_13_21();
      v29 = OUTLINED_FUNCTION_13_21();
      v30 = OUTLINED_FUNCTION_8_32(v29, MEMORY[0x1E69E6158]);
      v31 = v30[12];
      v32 = v30[16];
      v33 = v30[20];
      v34 = (v14 + v30[24]);
      sub_1DCC174D4(v56, v14);
      *(v14 + v31) = v55;
      v35 = v59;
      *(v14 + v32) = v60;
      *(v14 + v33) = v35;
      v36 = v58;
      *v34 = v57;
      v34[1] = v36;
    }

    else
    {
      v37 = v20;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v38 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v38, qword_1EDE57E00);
      v39 = sub_1DD0DD8EC();
      v40 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v39, v40))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_56_5(&dword_1DCAFC000, v41, v42, "ConfirmIntentWithAutoHandleFlow received cancel action from delegate. Transitioning to cancelled state.");
        OUTLINED_FUNCTION_80();
      }

      v44 = v59;
      v43 = v60;
      *v14 = v37;
      v14[1] = v43;
      v46 = v57;
      v45 = v58;
      v14[2] = v44;
      v14[3] = v46;
      v14[4] = v45;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v9 + 40))(v1 + v18, v14, v7);
    swift_endAccess();
  }

  else
  {
    (*(v9 + 8))(v17, v7);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCCAF1C0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[2])
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    oslog = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6DC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DCAFC000, oslog, v5, "ConfirmIntentWithAutoHandleFlow autohandle check if cancel received non-cancel result.", v6, 2u);
      MEMORY[0x1E12A8390](v6, -1, -1);
    }
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    if (*a1 == 2 || (v8 & 1) == 0)
    {
      v19 = qword_1EDE4F900;
      v20 = v7;
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v21, qword_1EDE57E00);
      v22 = sub_1DD0DD8EC();
      v23 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1DCAFC000, v22, v23, "ConfirmIntentWithAutoHandleFlow autohandle response is not rejected.", v24, 2u);
        MEMORY[0x1E12A8390](v24, -1, -1);
      }

      sub_1DCCB7284(v8, v7, 0);
    }

    else
    {
      v10 = qword_1EDE4F900;
      v11 = v7;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v12, qword_1EDE57E00);
      v13 = sub_1DD0DD8EC();
      v14 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1DCAFC000, v13, v14, "ConfirmIntentWithAutoHandleFlow autoHandle rejected initial autoHandle intent, cancel autoHandle.", v15, 2u);
        MEMORY[0x1E12A8390](v15, -1, -1);
      }

      sub_1DCB17D04(a2 + *(*a2 + 112), v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA3830, &unk_1DD0E9D70);
      type metadata accessor for ResolveConfirmHandleService();
      if (!swift_dynamicCast())
      {
        sub_1DD0DCF8C();
      }

      sub_1DCF44CE0();
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1DCAFC000, v16, v17, "Hack from rdar://81999269 used to ensure synchronous autoHandle cancellation.", v18, 2u);
        MEMORY[0x1E12A8390](v18, -1, -1);
      }

      sub_1DCCB7284(v8, v7, 0);
    }
  }
}

void sub_1DCCAF6F4()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  oslog = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DCAFC000, oslog, v1, "ConfirmIntentWithAutoHandleFlow autoHandle returned.", v2, 2u);
    MEMORY[0x1E12A8390](v2, -1, -1);
  }
}

void sub_1DCCAF7DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);

  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1DCB10E9C(a1, a2, &v16);
    _os_log_impl(&dword_1DCAFC000, v11, v12, "ConfirmIntentWithAutoHandleFlow autoHandle execute cancelled, aceId:%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A8390](v14, -1, -1);
    MEMORY[0x1E12A8390](v13, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v5 + *(*v5 + 112)), *(v5 + *(*v5 + 112) + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  sub_1DD0DCF8C();
}

void sub_1DCCAF9DC()
{
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_11_2();
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_11_2();
  type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(v1 + 80), *(v1 + 88), v6);
  OUTLINED_FUNCTION_9();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCCB00CC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57E00);
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DCAFC000, v13, v14, "ConfirmIntentWithAutoHandleFlow sending auto handle command and prompt", v15, 2u);
    MEMORY[0x1E12A8390](v15, -1, -1);
  }

  v16 = swift_allocObject();
  v16[2] = v6;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = a5;
  sub_1DD0DCF8C();
}

void sub_1DCCB0258(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);
  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DCAFC000, v15, v16, "ConfirmIntentWithAutoHandleFlow cancelling auto send and sending cancellation response", v17, 2u);
    MEMORY[0x1E12A8390](v17, -1, -1);
  }

  v18 = swift_allocObject();
  v18[2] = v8;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a6;
  v18[7] = a7;
  sub_1DD0DCF8C();
}

void sub_1DCCB03F0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v33 = a7;
  v34 = a8;
  v35 = a5;
  v36 = a6;
  v14 = *v8;
  v15 = type metadata accessor for Input(0);
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57E00);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v19, v20))
  {
    v31 = v14;
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = a1;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DCAFC000, v19, v20, "ConfirmIntentWithAutoHandleFlow cancelling auto send and parsing response from user", v25, 2u);
    v26 = v25;
    a1 = v24;
    a4 = v23;
    a3 = v22;
    a2 = v21;
    v14 = v31;
    MEMORY[0x1E12A8390](v26, -1, -1);
  }

  sub_1DCC174D4(a1, &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v32 + 80) + 80) & ~*(v32 + 80);
  v28 = swift_allocObject();
  v28[2] = *(v14 + 80);
  v28[3] = *(v14 + 88);
  v28[4] = v9;
  v28[5] = a2;
  v28[6] = a3;
  v29 = v33;
  v30 = v34;
  v28[7] = a4;
  v28[8] = v29;
  v28[9] = v30;
  sub_1DCC333DC(&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  sub_1DD0DCF8C();
}

void sub_1DCCB0670(void *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    sub_1DCCB0808(a5, a6, a7, a1, a8, a9);
  }

  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v16[8] = a1;
  v16[9] = a2;
  sub_1DCCB6F38(a1, a2, 0);
  sub_1DD0DCF8C();
}

void sub_1DCCB0808(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a4;
  v12[6] = a1;
  v12[7] = a2;
  sub_1DD0DCF8C();
}

void sub_1DCCB094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a9;
  v16[8] = a3;
  v16[9] = a4;
  sub_1DD0DCF8C();
}

void sub_1DCCB0A3C(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(char *), uint64_t a9)
{
  v21[1] = a7;
  v22 = a6;
  v24 = a1;
  v25 = a9;
  v26 = a8;
  v13 = *a2;
  v23 = type metadata accessor for ExecuteResponse(0) - 8;
  MEMORY[0x1EEE9AC00](v23, v14);
  v16 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(v13 + 80), *(v13 + 88), v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (v21 - v18);
  *v19 = a3;
  v19[1] = a4;
  v20 = v22;
  v19[2] = a5;
  v19[3] = v20;
  v19[4] = a7;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCB0D2C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v10 = v9;
  v43 = a4;
  v44 = a6;
  v17 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v22 = *a9;
  sub_1DCB09910(a1, v46, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v47 == 1)
  {
    return sub_1DCB16DB0(v46, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  }

  v42 = v21;
  sub_1DCAFF9E8(v46, v48);
  v24 = v49;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  if (sub_1DCB651D0(v24))
  {
    v41 = a3;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    HIDWORD(v38) = v22;
    v39 = a7;
    v40 = a8;
    v25 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v25, qword_1EDE57E00);

    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v46[0] = v29;
      *v28 = 136315394;
      v45 = v42;
      v30 = ActivityType.rawValue.getter();
      v32 = sub_1DCB10E9C(v30, v31, v46);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = v43;
      *(v28 + 14) = sub_1DCB10E9C(v43, a5, v46);
      _os_log_impl(&dword_1DCAFC000, v26, v27, "#ConfirmIntentWithAutoHandleFlow logging Task step: %s for Task type: %s", v28, 0x16u);
      swift_arrayDestroy();
      v34 = v29;
      v35 = v42;
      MEMORY[0x1E12A8390](v34, -1, -1);
      MEMORY[0x1E12A8390](v28, -1, -1);
    }

    else
    {

      v33 = v43;
      v35 = v42;
    }

    v36 = (v10 + *(*v10 + 128));
    memset(v46, 0, sizeof(v46));
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    type metadata accessor for SiriKitEvent(0);
    *v20 = v35;
    *(v20 + 1) = v33;
    *(v20 + 2) = a5;
    *(v20 + 4) = 0;
    *(v20 + 5) = 0;
    *(v20 + 3) = v41;
    sub_1DCB09910(v46, (v20 + 48), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v20 + 10) = 0;
    *(v20 + 11) = 0;
    sub_1DCB09910(v44, (v20 + 96), &unk_1ECCA3280, &unk_1DD0E23D0);
    *(v20 + 136) = 0u;
    *(v20 + 152) = 0u;
    v37 = v40;
    *(v20 + 21) = v39;
    *(v20 + 22) = v37;
    v20[184] = BYTE4(v38);
    swift_storeEnumTagMultiPayload();

    sub_1DD0DCF8C();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v48);
}

uint64_t sub_1DCCB1100(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v10 = *v5;
  v11 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(v10 + 80), *(v10 + 88), v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v29[-1] - v19;
  sub_1DCB09910(a1, v30, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v31 != 1)
  {
    sub_1DCAFF9E8(v30, v29);
    sub_1DCCB2D64(v29, a2, v28, a4, a5);
  }

  v21 = *&v30[0];
  *v20 = *&v30[0];
  v20[8] = 0;
  swift_storeEnumTagMultiPayload();
  v22 = *(*v5 + 120);
  swift_beginAccess();
  v23 = v21;
  (*(v17 + 40))(v5 + v22, v20, v16);
  swift_endAccess();
  v24 = *(v11 + 36);
  v25 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v14[v24], 1, 1, v25);
  *v14 = 1;
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  *(v14 + 3) = 0;
  v14[48] = -4;
  v26 = &v14[*(v11 + 40)];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  a2(v14);

  return sub_1DCCB6E70(v14, type metadata accessor for ExecuteResponse);
}

void sub_1DCCB1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DCAFC000, v9, v10, "ConfirmIntentWithAutoHandleFlow execute autoHandle", v11, 2u);
    MEMORY[0x1E12A8390](v11, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v5 + *(*v5 + 112)), *(v5 + *(*v5 + 112) + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  swift_getAssociatedTypeWitness();
  sub_1DD0DCF8C();
}

void sub_1DCCB1574(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    sub_1DCCB0808(a4, a5, a6, a1, a7, a8);
  }

  sub_1DCCB15D4(a4, a5, a6, a7, a8);
}

void sub_1DCCB15D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;
  sub_1DD0DCF8C();
}

void sub_1DCCB1704(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    sub_1DCCB0808(a4, a5, a6, a1, a7, a8);
  }

  sub_1DCCB1768(a9, a4, a5, a6, a7, a8);
}

void sub_1DCCB1768(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCB18B0(uint64_t a1, char *a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6)
{
  v31[1] = a6;
  v32 = a5;
  v10 = *a2;
  v11 = type metadata accessor for ExecuteResponse(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(v10 + 80), *(v10 + 88), v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v31 - v20;
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 2;
  swift_storeEnumTagMultiPayload();
  v22 = *(*a2 + 120);
  swift_beginAccess();
  (*(v18 + 40))(&a2[v22], v21, v17);
  swift_endAccess();
  v36 = 5;
  v23 = [a4 typeName];
  v24 = sub_1DD0DDFBC();
  v26 = v25;

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 70;
  sub_1DCCB0D2C(a1, &v36, a3, v24, v26, v34, 0, 0, &v33);

  sub_1DCB16DB0(v34, &unk_1ECCA3280, &unk_1DD0E23D0);
  v27 = *(v12 + 44);
  v28 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v15[v27], 1, 1, v28);
  *v15 = 1;
  *(v15 + 1) = 0;
  v15[16] = 0;
  *(v15 + 4) = 0;
  *(v15 + 5) = 0;
  *(v15 + 3) = 0;
  v15[48] = -4;
  v29 = &v15[*(v12 + 48)];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v32(v15);
  return sub_1DCCB6E70(v15, type metadata accessor for ExecuteResponse);
}

uint64_t sub_1DCCB1B6C(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v49 = *a2;
  v51 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v51, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v49 + 88);
  v50 = *(v49 + 80);
  v19 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, v50, v17, v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v24 = &v47 - v23;
  v25 = *a1;
  if (*(a1 + 16) == 1)
  {
    sub_1DCCB0808(a3, a4, a5, v25, a6, a7);
  }

  v48 = a7;
  if (v25 == 2)
  {
    *v24 = xmmword_1DD0E5100;
    v24[16] = 2;
    v26 = v21;
    v27 = v22;
    swift_storeEnumTagMultiPayload();
    v28 = *(*a2 + 120);
    swift_beginAccess();
    (*(v27 + 40))(&a2[v28], v24, v26);
    swift_endAccess();
    v29 = v51;
    v30 = *(v51 + 36);
    v31 = type metadata accessor for PluginAction(0);
    __swift_storeEnumTagSinglePayload(&v16[v30], 1, 1, v31);
    *v16 = 1;
    *(v16 + 1) = 0;
    v16[16] = 0;
    *(v16 + 4) = 0;
    *(v16 + 5) = 0;
    *(v16 + 3) = 0;
    v16[48] = -4;
    v32 = &v16[*(v29 + 40)];
    *v32 = 0u;
    *(v32 + 1) = 0u;
    a6(v16);
  }

  else
  {
    v33 = a6;
    if (v25)
    {
      v34 = swift_allocObject();
      v34[2] = a2;
      v34[3] = a6;
      v34[4] = v48;
      v34[5] = a3;
      v34[6] = a4;
      v35 = a4;
      sub_1DD0DCF8C();
    }

    v54[0] = 0;
    v36 = v21;
    v37 = v22;
    swift_getAssociatedTypeWitness();
    ConfirmIntentAnswer.init(confirmationResponse:intent:)(v54, a4, v52);
    v38 = v53;
    *v24 = v52[0];
    *(v24 + 1) = v38;
    v24[16] = 0;
    swift_storeEnumTagMultiPayload();
    v39 = *(*a2 + 120);
    swift_beginAccess();
    v40 = *(v37 + 40);
    v41 = a4;
    v40(&a2[v39], v24, v36);
    swift_endAccess();
    v42 = v51;
    v43 = *(v51 + 36);
    v44 = type metadata accessor for PluginAction(0);
    __swift_storeEnumTagSinglePayload(&v16[v43], 1, 1, v44);
    *v16 = 1;
    *(v16 + 1) = 0;
    v16[16] = 0;
    *(v16 + 4) = 0;
    *(v16 + 5) = 0;
    *(v16 + 3) = 0;
    v16[48] = -4;
    v45 = &v16[*(v42 + 40)];
    *v45 = 0u;
    *(v45 + 1) = 0u;
    v33(v16);
  }

  return sub_1DCCB6E70(v16, type metadata accessor for ExecuteResponse);
}

void sub_1DCCB2010(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a3;
  v13[6] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCB20CC(uint64_t a1, char *a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6)
{
  v38 = a6;
  v39 = a5;
  v34 = a4;
  v36 = a1;
  v37 = a3;
  v8 = *a2;
  v9 = type metadata accessor for ExecuteResponse(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v8 + 80);
  v15 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, v35, *(v8 + 88), v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v33 - v18;
  v40[0] = 5;
  v20 = [a4 typeName];
  v21 = sub_1DD0DDFBC();
  v23 = v22;

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 70;
  sub_1DCCB0D2C(v36, v40, v37, v21, v23, v43, 0, 0, &v42);

  sub_1DCB16DB0(v43, &unk_1ECCA3280, &unk_1DD0E23D0);
  LOBYTE(v43[0]) = 1;
  swift_getAssociatedTypeWitness();
  v24 = v34;
  ConfirmIntentAnswer.init(confirmationResponse:intent:)(v43, v34, v40);
  v25 = v41;
  *v19 = v40[0];
  *(v19 + 1) = v25;
  v19[16] = 0;
  swift_storeEnumTagMultiPayload();
  v26 = *(*a2 + 120);
  swift_beginAccess();
  v27 = *(v16 + 40);
  v28 = v24;
  v27(&a2[v26], v19, v15);
  swift_endAccess();
  v29 = *(v10 + 44);
  v30 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v13[v29], 1, 1, v30);
  *v13 = 1;
  *(v13 + 1) = 0;
  v13[16] = 0;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  *(v13 + 3) = 0;
  v13[48] = -4;
  v31 = &v13[*(v10 + 48)];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v39(v13);
  return sub_1DCCB6E70(v13, type metadata accessor for ExecuteResponse);
}

uint64_t sub_1DCCB23D0(uint64_t a1, void (*a2)(void, void, void))
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DCCB6F00(v4, v3, v5);
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  sub_1DCCB6F10(v4, v3, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v20 = a2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v21[0] = v4;
    v21[1] = v3;
    v22 = v5;
    sub_1DCCB6F00(v4, v3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3828, &qword_1DD0E9D68);
    v11 = sub_1DD0DE02C();
    v13 = sub_1DCB10E9C(v11, v12, &v23);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "ConfirmIntentWithAutoHandleFlow executeAutoHandle response %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A8390](v10, -1, -1);
    v14 = v9;
    a2 = v20;
    MEMORY[0x1E12A8390](v14, -1, -1);
  }

  if (v5)
  {
    sub_1DD0DCF8C();
  }

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();
  sub_1DCCB6F10(v4, v3, 0);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1DCB10E9C(v4, v3, v21);
    _os_log_impl(&dword_1DCAFC000, v15, v16, "ConfirmIntentWithAutoHandleFlow executeAutoHandle success, submitted aceId: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A8390](v18, -1, -1);
    MEMORY[0x1E12A8390](v17, -1, -1);
  }

  return (a2)(v4, v3, 0);
}

uint64_t sub_1DCCB275C(uint64_t a1, char a2, void (*a3)(void *, uint64_t))
{
  if (a2)
  {
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "ConfirmIntentWithAutoHandleFlow autoHandle cancelled success.", v7, 2u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  return (a3)(0, 0);
}

void sub_1DCCB2998(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a3;
  v13[7] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCB2A70(uint64_t a1, char *a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *), uint64_t a7)
{
  v35[1] = a7;
  v36 = a6;
  v35[0] = a4;
  v11 = *a2;
  v12 = type metadata accessor for ExecuteResponse(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(v11 + 80), *(v11 + 88), v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v35 - v21;
  *v22 = a3;
  v22[8] = 1;
  swift_storeEnumTagMultiPayload();
  v23 = *(*a2 + 120);
  swift_beginAccess();
  v24 = a3;
  (*(v19 + 40))(&a2[v23], v22, v18);
  swift_endAccess();
  v42 = 6;
  v25 = [a5 typeName];
  v26 = sub_1DD0DDFBC();
  v28 = v27;

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  swift_getErrorValue();
  v29 = sub_1DCEE0FD4(v38, v39);
  v37 = 21;
  sub_1DCCB0D2C(a1, &v42, v35[0], v26, v28, v40, v29, v30, &v37);

  sub_1DCB16DB0(v40, &unk_1ECCA3280, &unk_1DD0E23D0);
  v31 = *(v13 + 44);
  v32 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v16[v31], 1, 1, v32);
  *v16 = 1;
  *(v16 + 1) = 0;
  v16[16] = 0;
  *(v16 + 4) = 0;
  *(v16 + 5) = 0;
  *(v16 + 3) = 0;
  v16[48] = -4;
  v33 = &v16[*(v13 + 48)];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v36(v16);
  return sub_1DCCB6E70(v16, type metadata accessor for ExecuteResponse);
}

void sub_1DCCB2D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1((v5 + *(*v5 + 104)), *(v5 + *(*v5 + 104) + 24));
  sub_1DCB17D04(a1, v12);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  sub_1DCAFF9E8(v12, (v11 + 4));
  v11[9] = v5;
  v11[10] = a2;
  v11[11] = a3;
  sub_1DD0DCF8C();
}

void sub_1DCCB2E7C(void *a1, char a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, char *a6, void (*a7)(char *), uint64_t a8)
{
  v47 = a8;
  v48 = a7;
  v14 = *a6;
  v46 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v46, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(v14 + 80), *(v14 + 88), v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v42 - v22;
  if (a2)
  {
    v43 = a5;
    v44 = a4;
    v45 = a3;
    v53 = a1;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {
      v25 = v52;
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v26 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v26, qword_1EDE57E00);
      v27 = v25;
      v28 = sub_1DD0DD8EC();
      v29 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v49 = v25;
        v50[0] = v31;
        *v30 = 136315138;
        sub_1DCCB6FA8();
        v32 = sub_1DD0DF18C();
        v34 = sub_1DCB10E9C(v32, v33, v50);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_1DCAFC000, v28, v29, "Got a possible barge-in error (will ignore): %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x1E12A8390](v31, -1, -1);
        MEMORY[0x1E12A8390](v30, -1, -1);
      }

      v35 = v45;
      sub_1DCB17D04(v43, v50);
      v51 = 0;
      v35(v50);

      sub_1DCB16DB0(v50, &qword_1ECCA1F70, &qword_1DD0E2BD0);
    }

    else
    {

      *v23 = a1;
      v23[8] = 0;
      swift_storeEnumTagMultiPayload();
      v36 = *(*a6 + 120);
      swift_beginAccess();
      v37 = a1;
      (*(v20 + 40))(&a6[v36], v23, v19);
      swift_endAccess();
      v38 = v46;
      v39 = *(v46 + 36);
      v40 = type metadata accessor for PluginAction(0);
      __swift_storeEnumTagSinglePayload(&v17[v39], 1, 1, v40);
      *v17 = 1;
      *(v17 + 1) = 0;
      v17[16] = 0;
      *(v17 + 4) = 0;
      *(v17 + 5) = 0;
      *(v17 + 3) = 0;
      v17[48] = -4;
      v41 = &v17[*(v38 + 40)];
      *v41 = 0u;
      *(v41 + 1) = 0u;
      v48(v17);
      sub_1DCCB6E70(v17, type metadata accessor for ExecuteResponse);
    }
  }

  else
  {
    sub_1DCB17D04(a5, v50);
    v51 = 0;
    a3(v50);
    sub_1DCB16DB0(v50, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  }
}

uint64_t *sub_1DCCB32BC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 104)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 112)));
  OUTLINED_FUNCTION_66();
  v6 = *(v5 + 120);
  type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, v2, *(v1 + 88), v7);
  OUTLINED_FUNCTION_13_1();
  (*(v8 + 8))(v0 + v6);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v9 + 128)));
  return v0;
}

uint64_t sub_1DCCB33DC()
{
  sub_1DCCB32BC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCB3464(uint64_t a1)
{
  v4 = &unk_1DD0E9C70;
  v5 = "(";
  result = type metadata accessor for Input(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout();
    v6 = &v3;
    v7 = "(";
    v8 = &unk_1DD0E9CB8;
    v9 = &unk_1DD0E9CD0;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1DCCB355C(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v6;
      *(a1 + 2) = a2[2];
      sub_1DD0DCF8C();
    case 1u:
      v19 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v19;
      v20 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v20;
      *(a1 + 4) = a2[4];
      sub_1DD0DCF8C();
    case 2u:
      v10 = sub_1DD0DB04C();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      v11 = type metadata accessor for Input(0);
      v12 = v11[5];
      v13 = &a1[v12];
      v14 = a2 + v12;
      v15 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 16))(v13, v14, v16);
          goto LABEL_36;
        case 1u:
          v33 = sub_1DD0DC76C();
          (*(*(v33 - 8) + 16))(v13, v14, v33);
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v13[*(v34 + 48)] = *&v14[*(v34 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v27 = *(v14 + 1);
          *v13 = *v14;
          *(v13 + 1) = v27;
          *(v13 + 2) = *(v14 + 2);

          goto LABEL_36;
        case 3u:
          *v13 = *v14;
          swift_unknownObjectRetain();
          goto LABEL_36;
        case 4u:
          v25 = sub_1DD0DB1EC();
          (*(*(v25 - 8) + 16))(v13, v14, v25);
          goto LABEL_36;
        case 5u:
          v35 = *v14;
          *v13 = *v14;
          v36 = v35;
          goto LABEL_36;
        case 6u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v13, v14, v37);
          v38 = type metadata accessor for USOParse(0);
          v39 = v38[5];
          v40 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v39], 1, v40))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v39], &v14[v39], *(*(v41 - 8) + 64));
          }

          else
          {
            (*(*(v40 - 8) + 16))(&v13[v39], &v14[v39], v40);
            __swift_storeEnumTagSinglePayload(&v13[v39], 0, 1, v40);
          }

          v72 = v38[6];
          v73 = &v13[v72];
          v74 = &v14[v72];
          v75 = *(v74 + 1);
          *v73 = *v74;
          *(v73 + 1) = v75;
          v76 = v38[7];
          v77 = &v13[v76];
          v78 = &v14[v76];
          v77[4] = v78[4];
          *v77 = *v78;

          goto LABEL_36;
        case 7u:
          v28 = sub_1DD0DB4BC();
          (*(*(v28 - 8) + 16))(v13, v14, v28);
          v29 = type metadata accessor for USOParse(0);
          v30 = v29[5];
          v31 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v30], 1, v31))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v30], &v14[v30], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(*(v31 - 8) + 16))(&v13[v30], &v14[v30], v31);
            __swift_storeEnumTagSinglePayload(&v13[v30], 0, 1, v31);
          }

          v52 = v29[6];
          v53 = &v13[v52];
          v54 = &v14[v52];
          v55 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v55;
          v56 = v29[7];
          v57 = &v13[v56];
          v58 = &v14[v56];
          v57[4] = v58[4];
          *v57 = *v58;
          v59 = type metadata accessor for LinkParse(0);
          v60 = v59[5];
          v61 = &v13[v60];
          v62 = &v14[v60];
          v63 = *(v62 + 1);
          *v61 = *v62;
          *(v61 + 1) = v63;
          v64 = v59[6];
          v65 = &v13[v64];
          v66 = &v14[v64];
          v67 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v67;
          v68 = v59[7];
          v69 = &v13[v68];
          v70 = &v14[v68];
          v71 = *(v70 + 1);
          *v69 = *v70;
          *(v69 + 1) = v71;

          goto LABEL_36;
        case 8u:
          v42 = sub_1DD0DD12C();
          (*(*(v42 - 8) + 16))(v13, v14, v42);
          v43 = type metadata accessor for NLRouterParse(0);
          v44 = *(v43 + 20);
          v45 = &v13[v44];
          v46 = &v14[v44];
          v47 = *(v46 + 1);
          *v45 = *v46;
          *(v45 + 1) = v47;
          v48 = *(v43 + 24);
          v104 = v43;
          __dst = &v13[v48];
          v49 = &v14[v48];
          v50 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v49, 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v49, *(*(v51 - 8) + 64));
          }

          else
          {
            v79 = sub_1DD0DB4BC();
            (*(*(v79 - 8) + 16))(__dst, v49, v79);
            v80 = v50[5];
            v103 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v49[v80], 1, v103))
            {
              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v80], &v49[v80], *(*(v81 - 8) + 64));
            }

            else
            {
              (*(*(v103 - 8) + 16))(&__dst[v80], &v49[v80]);
              __swift_storeEnumTagSinglePayload(&__dst[v80], 0, 1, v103);
            }

            v82 = v50[6];
            v83 = &__dst[v82];
            v84 = &v49[v82];
            v85 = *(v84 + 1);
            *v83 = *v84;
            *(v83 + 1) = v85;
            v86 = v50[7];
            v87 = &__dst[v86];
            v88 = &v49[v86];
            v87[4] = v88[4];
            *v87 = *v88;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v50);
          }

          v89 = *(v104 + 28);
          v90 = *&v14[v89];
          *&v13[v89] = v90;
          v91 = v90;
          goto LABEL_36;
        case 9u:
          v26 = sub_1DD0DD08C();
          (*(*(v26 - 8) + 16))(v13, v14, v26);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v13, v14, *(*(v15 - 8) + 64));
          break;
      }

      *&a1[v11[6]] = *(a2 + v11[6]);
      v92 = v11[7];
      v93 = &a1[v92];
      v94 = a2 + v92;
      v95 = *(a2 + v92 + 24);

      if (v95)
      {
        v96 = *(v94 + 4);
        *(v93 + 3) = v95;
        *(v93 + 4) = v96;
        (**(v95 - 8))(v93, v94, v95);
      }

      else
      {
        v97 = *(v94 + 1);
        *v93 = *v94;
        *(v93 + 1) = v97;
        *(v93 + 4) = *(v94 + 4);
      }

      a1[v11[8]] = *(a2 + v11[8]);
      sub_1DD0DD1FC();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      *&a1[TupleTypeMetadata[12]] = *(a2 + TupleTypeMetadata[12]);
      *&a1[TupleTypeMetadata[16]] = *(a2 + TupleTypeMetadata[16]);
      *&a1[TupleTypeMetadata[20]] = *(a2 + TupleTypeMetadata[20]);
      v99 = TupleTypeMetadata[24];
      v100 = &a1[v99];
      v101 = (a2 + v99);
      v102 = v101[1];
      *v100 = *v101;
      *(v100 + 1) = v102;
      sub_1DD0DCF8C();
    case 3u:
      v17 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v17;
      v18 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v18;
      *(a1 + 4) = a2[4];
      sub_1DD0DCF8C();
    case 4u:
      v7 = *a2;
      v8 = a2[1];
      v9 = *(a2 + 16);
      sub_1DCBB12F4(v7, v8, v9);
      *a1 = v7;
      *(a1 + 1) = v8;
      a1[16] = v9;
      goto LABEL_41;
    case 5u:
      v21 = *a2;
      v22 = *a2;
      *a1 = v21;
      a1[8] = *(a2 + 8);
LABEL_41:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v23 = *(v5 + 64);

      result = memcpy(a1, a2, v23);
      break;
  }

  return result;
}

void sub_1DCCB4024(void **a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v6 = a1[2];

      goto LABEL_10;
    case 1u:
    case 3u:

      break;
    case 2u:
      v7 = sub_1DD0DB04C();
      (*(*(v7 - 8) + 8))(a1, v7);
      v8 = type metadata accessor for Input(0);
      v9 = (a1 + *(v8 + 20));
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v10 = sub_1DD0DC76C();
          goto LABEL_18;
        case 1u:
          v14 = sub_1DD0DC76C();
          (*(*(v14 - 8) + 8))(v9, v14);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_28;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v10 = sub_1DD0DB1EC();
          goto LABEL_18;
        case 5u:
          v15 = *v9;
          goto LABEL_34;
        case 6u:
          v16 = sub_1DD0DB4BC();
          (*(*(v16 - 8) + 8))(v9, v16);
          v17 = *(type metadata accessor for USOParse(0) + 20);
          v18 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v9 + v17, 1, v18))
          {
            (*(*(v18 - 8) + 8))(v9 + v17, v18);
          }

          goto LABEL_28;
        case 7u:
          v11 = sub_1DD0DB4BC();
          (*(*(v11 - 8) + 8))(v9, v11);
          v12 = *(type metadata accessor for USOParse(0) + 20);
          v13 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v9 + v12, 1, v13))
          {
            (*(*(v13 - 8) + 8))(v9 + v12, v13);
          }

          type metadata accessor for LinkParse(0);

LABEL_28:

          break;
        case 8u:
          v19 = sub_1DD0DD12C();
          (*(*(v19 - 8) + 8))(v9, v19);
          v20 = type metadata accessor for NLRouterParse(0);

          v21 = v9 + *(v20 + 24);
          v22 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v21, 1, v22))
          {
            v23 = sub_1DD0DB4BC();
            (*(*(v23 - 8) + 8))(v21, v23);
            v24 = *(v22 + 20);
            v25 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v21 + v24, 1, v25))
            {
              (*(*(v25 - 8) + 8))(v21 + v24, v25);
            }
          }

          v15 = *(v9 + *(v20 + 28));
LABEL_34:

          break;
        case 9u:
          v10 = sub_1DD0DD08C();
LABEL_18:
          (*(*(v10 - 8) + 8))(v9, v10);
          break;
        default:
          break;
      }

      v26 = (a1 + *(v8 + 28));
      if (v26[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
      }

      sub_1DD0DD1FC();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();

      break;
    case 4u:
      v3 = *a1;
      v4 = a1[1];
      v5 = *(a1 + 16);

      sub_1DCBB1310(v3, v4, v5);
      break;
    case 5u:
      v6 = *a1;

LABEL_10:

      break;
    default:
      return;
  }
}

void *sub_1DCCB467C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 1u:
      v19 = a2[1];
      *a1 = *a2;
      a1[1] = v19;
      v20 = a2[3];
      a1[2] = a2[2];
      a1[3] = v20;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 2u:
      v10 = sub_1DD0DB04C();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      v11 = type metadata accessor for Input(0);
      v12 = v11[5];
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 16))(v13, v14, v16);
          goto LABEL_34;
        case 1u:
          v33 = sub_1DD0DC76C();
          (*(*(v33 - 8) + 16))(v13, v14, v33);
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v13[*(v34 + 48)] = *&v14[*(v34 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v27 = *(v14 + 1);
          *v13 = *v14;
          *(v13 + 1) = v27;
          *(v13 + 2) = *(v14 + 2);

          goto LABEL_34;
        case 3u:
          *v13 = *v14;
          swift_unknownObjectRetain();
          goto LABEL_34;
        case 4u:
          v25 = sub_1DD0DB1EC();
          (*(*(v25 - 8) + 16))(v13, v14, v25);
          goto LABEL_34;
        case 5u:
          v35 = *v14;
          *v13 = *v14;
          v36 = v35;
          goto LABEL_34;
        case 6u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v13, v14, v37);
          v38 = type metadata accessor for USOParse(0);
          v39 = v38[5];
          v40 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v39], 1, v40))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v39], &v14[v39], *(*(v41 - 8) + 64));
          }

          else
          {
            (*(*(v40 - 8) + 16))(&v13[v39], &v14[v39], v40);
            __swift_storeEnumTagSinglePayload(&v13[v39], 0, 1, v40);
          }

          v72 = v38[6];
          v73 = &v13[v72];
          v74 = &v14[v72];
          v75 = *(v74 + 1);
          *v73 = *v74;
          *(v73 + 1) = v75;
          v76 = v38[7];
          v77 = &v13[v76];
          v78 = &v14[v76];
          v77[4] = v78[4];
          *v77 = *v78;

          goto LABEL_34;
        case 7u:
          v28 = sub_1DD0DB4BC();
          (*(*(v28 - 8) + 16))(v13, v14, v28);
          v29 = type metadata accessor for USOParse(0);
          v30 = v29[5];
          v31 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v30], 1, v31))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v30], &v14[v30], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(*(v31 - 8) + 16))(&v13[v30], &v14[v30], v31);
            __swift_storeEnumTagSinglePayload(&v13[v30], 0, 1, v31);
          }

          v52 = v29[6];
          v53 = &v13[v52];
          v54 = &v14[v52];
          v55 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v55;
          v56 = v29[7];
          v57 = &v13[v56];
          v58 = &v14[v56];
          v57[4] = v58[4];
          *v57 = *v58;
          v59 = type metadata accessor for LinkParse(0);
          v60 = v59[5];
          v61 = &v13[v60];
          v62 = &v14[v60];
          v63 = *(v62 + 1);
          *v61 = *v62;
          *(v61 + 1) = v63;
          v64 = v59[6];
          v65 = &v13[v64];
          v66 = &v14[v64];
          v67 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v67;
          v68 = v59[7];
          v69 = &v13[v68];
          v70 = &v14[v68];
          v71 = *(v70 + 1);
          *v69 = *v70;
          *(v69 + 1) = v71;

          goto LABEL_34;
        case 8u:
          v42 = sub_1DD0DD12C();
          (*(*(v42 - 8) + 16))(v13, v14, v42);
          v43 = type metadata accessor for NLRouterParse(0);
          v44 = *(v43 + 20);
          v45 = &v13[v44];
          v46 = &v14[v44];
          v47 = *(v46 + 1);
          *v45 = *v46;
          *(v45 + 1) = v47;
          v48 = *(v43 + 24);
          v104 = v43;
          __dst = &v13[v48];
          v49 = &v14[v48];
          v50 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v49, 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v49, *(*(v51 - 8) + 64));
          }

          else
          {
            v79 = sub_1DD0DB4BC();
            (*(*(v79 - 8) + 16))(__dst, v49, v79);
            v80 = v50[5];
            v103 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v49[v80], 1, v103))
            {
              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v80], &v49[v80], *(*(v81 - 8) + 64));
            }

            else
            {
              (*(*(v103 - 8) + 16))(&__dst[v80], &v49[v80]);
              __swift_storeEnumTagSinglePayload(&__dst[v80], 0, 1, v103);
            }

            v82 = v50[6];
            v83 = &__dst[v82];
            v84 = &v49[v82];
            v85 = *(v84 + 1);
            *v83 = *v84;
            *(v83 + 1) = v85;
            v86 = v50[7];
            v87 = &__dst[v86];
            v88 = &v49[v86];
            v87[4] = v88[4];
            *v87 = *v88;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v50);
          }

          v89 = *(v104 + 28);
          v90 = *&v14[v89];
          *&v13[v89] = v90;
          v91 = v90;
          goto LABEL_34;
        case 9u:
          v26 = sub_1DD0DD08C();
          (*(*(v26 - 8) + 16))(v13, v14, v26);
LABEL_34:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v13, v14, *(*(v15 - 8) + 64));
          break;
      }

      *(a1 + v11[6]) = *(a2 + v11[6]);
      v92 = v11[7];
      v93 = a1 + v92;
      v94 = a2 + v92;
      v95 = *(a2 + v92 + 24);

      if (v95)
      {
        v96 = *(v94 + 4);
        *(v93 + 3) = v95;
        *(v93 + 4) = v96;
        (**(v95 - 8))(v93, v94, v95);
      }

      else
      {
        v97 = *(v94 + 1);
        *v93 = *v94;
        *(v93 + 1) = v97;
        *(v93 + 4) = *(v94 + 4);
      }

      *(a1 + v11[8]) = *(a2 + v11[8]);
      sub_1DD0DD1FC();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      *(a1 + TupleTypeMetadata[12]) = *(a2 + TupleTypeMetadata[12]);
      *(a1 + TupleTypeMetadata[16]) = *(a2 + TupleTypeMetadata[16]);
      *(a1 + TupleTypeMetadata[20]) = *(a2 + TupleTypeMetadata[20]);
      v99 = TupleTypeMetadata[24];
      v100 = (a1 + v99);
      v101 = (a2 + v99);
      v102 = v101[1];
      *v100 = *v101;
      v100[1] = v102;
      sub_1DD0DCF8C();
    case 3u:
      v17 = a2[1];
      *a1 = *a2;
      a1[1] = v17;
      v18 = a2[3];
      a1[2] = a2[2];
      a1[3] = v18;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 4u:
      v7 = *a2;
      v8 = a2[1];
      v9 = *(a2 + 16);
      sub_1DCBB12F4(v7, v8, v9);
      *a1 = v7;
      a1[1] = v8;
      *(a1 + 16) = v9;
      goto LABEL_39;
    case 5u:
      v21 = *a2;
      v22 = *a2;
      *a1 = v21;
      *(a1 + 8) = *(a2 + 8);
LABEL_39:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v23 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v23);
      break;
  }

  return result;
}

uint64_t *sub_1DCCB5104(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 - 8);
    (*(v5 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        sub_1DD0DCF8C();
      case 2u:
        v9 = sub_1DD0DB04C();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        v10 = type metadata accessor for Input(0);
        v11 = v10[5];
        v12 = a1 + v11;
        v13 = a2 + v11;
        v14 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v15 = sub_1DD0DC76C();
            (*(*(v15 - 8) + 16))(v12, v13, v15);
            goto LABEL_35;
          case 1u:
            v27 = sub_1DD0DC76C();
            (*(*(v27 - 8) + 16))(v12, v13, v27);
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v12[*(v28 + 48)] = *&v13[*(v28 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v12 = *v13;
            *(v12 + 1) = *(v13 + 1);
            *(v12 + 2) = *(v13 + 2);

            goto LABEL_35;
          case 3u:
            *v12 = *v13;
            swift_unknownObjectRetain();
            goto LABEL_35;
          case 4u:
            v20 = sub_1DD0DB1EC();
            (*(*(v20 - 8) + 16))(v12, v13, v20);
            goto LABEL_35;
          case 5u:
            v29 = *v13;
            *v12 = *v13;
            v30 = v29;
            goto LABEL_35;
          case 6u:
            v31 = sub_1DD0DB4BC();
            (*(*(v31 - 8) + 16))(v12, v13, v31);
            v32 = type metadata accessor for USOParse(0);
            v33 = v32[5];
            v34 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v13[v33], 1, v34))
            {
              v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v12[v33], &v13[v33], *(*(v35 - 8) + 64));
            }

            else
            {
              (*(*(v34 - 8) + 16))(&v12[v33], &v13[v33], v34);
              __swift_storeEnumTagSinglePayload(&v12[v33], 0, 1, v34);
            }

            v62 = v32[6];
            v63 = &v12[v62];
            v64 = &v13[v62];
            *v63 = *v64;
            *(v63 + 1) = *(v64 + 1);
            v65 = v32[7];
            v66 = &v12[v65];
            v67 = &v13[v65];
            v68 = *v67;
            v66[4] = v67[4];
            *v66 = v68;

            goto LABEL_35;
          case 7u:
            v22 = sub_1DD0DB4BC();
            (*(*(v22 - 8) + 16))(v12, v13, v22);
            v23 = type metadata accessor for USOParse(0);
            v24 = v23[5];
            v25 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v13[v24], 1, v25))
            {
              v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v12[v24], &v13[v24], *(*(v26 - 8) + 64));
            }

            else
            {
              (*(*(v25 - 8) + 16))(&v12[v24], &v13[v24], v25);
              __swift_storeEnumTagSinglePayload(&v12[v24], 0, 1, v25);
            }

            v45 = v23[6];
            v46 = &v12[v45];
            v47 = &v13[v45];
            *v46 = *v47;
            *(v46 + 1) = *(v47 + 1);
            v48 = v23[7];
            v49 = &v12[v48];
            v50 = &v13[v48];
            v51 = *v50;
            v49[4] = v50[4];
            *v49 = v51;
            v52 = type metadata accessor for LinkParse(0);
            v53 = v52[5];
            v54 = &v12[v53];
            v55 = &v13[v53];
            *v54 = *v55;
            *(v54 + 1) = *(v55 + 1);
            v56 = v52[6];
            v57 = &v12[v56];
            v58 = &v13[v56];
            *v57 = *v58;
            *(v57 + 1) = *(v58 + 1);
            v59 = v52[7];
            v60 = &v12[v59];
            v61 = &v13[v59];
            *v60 = *v61;
            *(v60 + 1) = *(v61 + 1);

            goto LABEL_35;
          case 8u:
            v36 = sub_1DD0DD12C();
            (*(*(v36 - 8) + 16))(v12, v13, v36);
            v37 = type metadata accessor for NLRouterParse(0);
            v38 = *(v37 + 20);
            v39 = &v12[v38];
            v40 = &v13[v38];
            *v39 = *v40;
            *(v39 + 1) = *(v40 + 1);
            v41 = *(v37 + 24);
            v93 = v37;
            __dst = &v12[v41];
            v42 = &v13[v41];
            v43 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v42, 1, v43))
            {
              v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v42, *(*(v44 - 8) + 64));
            }

            else
            {
              v69 = sub_1DD0DB4BC();
              (*(*(v69 - 8) + 16))(__dst, v42, v69);
              v70 = v43[5];
              v92 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v42[v70], 1, v92))
              {
                v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v70], &v42[v70], *(*(v71 - 8) + 64));
              }

              else
              {
                (*(*(v92 - 8) + 16))(&__dst[v70], &v42[v70]);
                __swift_storeEnumTagSinglePayload(&__dst[v70], 0, 1, v92);
              }

              v72 = v43[6];
              v73 = &__dst[v72];
              v74 = &v42[v72];
              *v73 = *v74;
              *(v73 + 1) = *(v74 + 1);
              v75 = v43[7];
              v76 = &__dst[v75];
              v77 = &v42[v75];
              v78 = *v77;
              v76[4] = v77[4];
              *v76 = v78;

              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v43);
            }

            v79 = *(v93 + 28);
            v80 = *&v13[v79];
            *&v12[v79] = v80;
            v81 = v80;
            goto LABEL_35;
          case 9u:
            v21 = sub_1DD0DD08C();
            (*(*(v21 - 8) + 16))(v12, v13, v21);
LABEL_35:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v12, v13, *(*(v14 - 8) + 64));
            break;
        }

        *(a1 + v10[6]) = *(a2 + v10[6]);
        v82 = v10[7];
        v83 = a1 + v82;
        v84 = a2 + v82;
        v85 = *(a2 + v82 + 24);

        if (v85)
        {
          *(v83 + 3) = v85;
          *(v83 + 4) = *(v84 + 4);
          (**(v85 - 8))(v83, v84, v85);
        }

        else
        {
          v86 = *v84;
          v87 = *(v84 + 1);
          *(v83 + 4) = *(v84 + 4);
          *v83 = v86;
          *(v83 + 1) = v87;
        }

        *(a1 + v10[8]) = *(a2 + v10[8]);
        sub_1DD0DD1FC();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedTypeWitness();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        *(a1 + TupleTypeMetadata[12]) = *(a2 + TupleTypeMetadata[12]);
        *(a1 + TupleTypeMetadata[16]) = *(a2 + TupleTypeMetadata[16]);
        *(a1 + TupleTypeMetadata[20]) = *(a2 + TupleTypeMetadata[20]);
        v89 = TupleTypeMetadata[24];
        v90 = (a1 + v89);
        v91 = (a2 + v89);
        *v90 = *v91;
        v90[1] = v91[1];
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        sub_1DD0DCF8C();
      case 4u:
        v6 = *a2;
        v7 = a2[1];
        v8 = *(a2 + 16);
        sub_1DCBB12F4(v6, v7, v8);
        *a1 = v6;
        a1[1] = v7;
        *(a1 + 16) = v8;
        goto LABEL_40;
      case 5u:
        v16 = *a2;
        v17 = *a2;
        *a1 = v16;
        *(a1 + 8) = *(a2 + 8);
LABEL_40:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v18 = *(v5 + 64);

        return memcpy(a1, a2, v18);
    }
  }

  return a1;
}

_BYTE *sub_1DCCB5C54(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v6 = sub_1DD0DB04C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    v7 = type metadata accessor for Input(0);
    v8 = v7[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_1DD0DC76C();
        (*(*(v12 - 8) + 32))(v9, v10, v12);
        goto LABEL_26;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v9, v10, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v9[*(v23 + 48)] = *&v10[*(v23 + 48)];
        goto LABEL_26;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v9, v10, v25);
        goto LABEL_26;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v9, v10, v26);
        v27 = type metadata accessor for USOParse(0);
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v28], &v10[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v9[v28], &v10[v28], v29);
          __swift_storeEnumTagSinglePayload(&v9[v28], 0, 1, v29);
        }

        *&v9[v27[6]] = *&v10[v27[6]];
        v43 = v27[7];
        v44 = &v9[v43];
        v45 = &v10[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_26;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v9, v10, v31);
        v32 = type metadata accessor for USOParse(0);
        v33 = v32[5];
        v34 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v34))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v33], &v10[v33], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v34 - 8) + 32))(&v9[v33], &v10[v33], v34);
          __swift_storeEnumTagSinglePayload(&v9[v33], 0, 1, v34);
        }

        *&v9[v32[6]] = *&v10[v32[6]];
        v46 = v32[7];
        v47 = &v9[v46];
        v48 = &v10[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse(0);
        *&v9[v49[5]] = *&v10[v49[5]];
        *&v9[v49[6]] = *&v10[v49[6]];
        *&v9[v49[7]] = *&v10[v49[7]];
        goto LABEL_26;
      case 8u:
        v15 = sub_1DD0DD12C();
        (*(*(v15 - 8) + 32))(v9, v10, v15);
        v16 = type metadata accessor for NLRouterParse(0);
        *&v9[*(v16 + 20)] = *&v10[*(v16 + 20)];
        v61 = v16;
        v17 = *(v16 + 24);
        v18 = &v9[v17];
        v19 = &v10[v17];
        v20 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v18, v19, *(*(v21 - 8) + 64));
        }

        else
        {
          v36 = sub_1DD0DB4BC();
          v60 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v59 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v60;
            memcpy(&v60[v59], &v19[v59], *(*(v41 - 8) + 64));
          }

          else
          {
            v58 = v40;
            (*(*(v40 - 8) + 32))(&v60[v59], &v19[v59], v40);
            v42 = v60;
            __swift_storeEnumTagSinglePayload(&v60[v59], 0, 1, v58);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v9[*(v61 + 28)] = *&v10[*(v61 + 28)];
        goto LABEL_26;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v9, v10, v24);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v9, v10, *(*(v11 - 8) + 64));
        break;
    }

    *&a1[v7[6]] = *&a2[v7[6]];
    v53 = v7[7];
    v54 = &a1[v53];
    v55 = &a2[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    a1[v7[8]] = a2[v7[8]];
    sub_1DD0DD1FC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    *&a1[TupleTypeMetadata[12]] = *&a2[TupleTypeMetadata[12]];
    *&a1[TupleTypeMetadata[16]] = *&a2[TupleTypeMetadata[16]];
    *&a1[TupleTypeMetadata[20]] = *&a2[TupleTypeMetadata[20]];
    *&a1[TupleTypeMetadata[24]] = *&a2[TupleTypeMetadata[24]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

_BYTE *sub_1DCCB6488(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v6 = sub_1DD0DB04C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    v7 = type metadata accessor for Input(0);
    v8 = v7[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_1DD0DC76C();
        (*(*(v12 - 8) + 32))(v9, v10, v12);
        goto LABEL_27;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v9, v10, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v9[*(v23 + 48)] = *&v10[*(v23 + 48)];
        goto LABEL_27;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v9, v10, v25);
        goto LABEL_27;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v9, v10, v26);
        v27 = type metadata accessor for USOParse(0);
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v28], &v10[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v9[v28], &v10[v28], v29);
          __swift_storeEnumTagSinglePayload(&v9[v28], 0, 1, v29);
        }

        *&v9[v27[6]] = *&v10[v27[6]];
        v43 = v27[7];
        v44 = &v9[v43];
        v45 = &v10[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_27;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v9, v10, v31);
        v32 = type metadata accessor for USOParse(0);
        v33 = v32[5];
        v34 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v34))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v33], &v10[v33], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v34 - 8) + 32))(&v9[v33], &v10[v33], v34);
          __swift_storeEnumTagSinglePayload(&v9[v33], 0, 1, v34);
        }

        *&v9[v32[6]] = *&v10[v32[6]];
        v46 = v32[7];
        v47 = &v9[v46];
        v48 = &v10[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse(0);
        *&v9[v49[5]] = *&v10[v49[5]];
        *&v9[v49[6]] = *&v10[v49[6]];
        *&v9[v49[7]] = *&v10[v49[7]];
        goto LABEL_27;
      case 8u:
        v15 = sub_1DD0DD12C();
        (*(*(v15 - 8) + 32))(v9, v10, v15);
        v16 = type metadata accessor for NLRouterParse(0);
        *&v9[*(v16 + 20)] = *&v10[*(v16 + 20)];
        v61 = v16;
        v17 = *(v16 + 24);
        v18 = &v9[v17];
        v19 = &v10[v17];
        v20 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v18, v19, *(*(v21 - 8) + 64));
        }

        else
        {
          v36 = sub_1DD0DB4BC();
          v60 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v59 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v60;
            memcpy(&v60[v59], &v19[v59], *(*(v41 - 8) + 64));
          }

          else
          {
            v58 = v40;
            (*(*(v40 - 8) + 32))(&v60[v59], &v19[v59], v40);
            v42 = v60;
            __swift_storeEnumTagSinglePayload(&v60[v59], 0, 1, v58);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v9[*(v61 + 28)] = *&v10[*(v61 + 28)];
        goto LABEL_27;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v9, v10, v24);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v9, v10, *(*(v11 - 8) + 64));
        break;
    }

    *&a1[v7[6]] = *&a2[v7[6]];
    v53 = v7[7];
    v54 = &a1[v53];
    v55 = &a2[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    a1[v7[8]] = a2[v7[8]];
    sub_1DD0DD1FC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    *&a1[TupleTypeMetadata[12]] = *&a2[TupleTypeMetadata[12]];
    *&a1[TupleTypeMetadata[16]] = *&a2[TupleTypeMetadata[16]];
    *&a1[TupleTypeMetadata[20]] = *&a2[TupleTypeMetadata[20]];
    *&a1[TupleTypeMetadata[24]] = *&a2[TupleTypeMetadata[24]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v5 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_1DCCB6DF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCCB6E70(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_1DCCB6F00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCCB6F10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_1DCCB6F38(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

unint64_t sub_1DCCB6FA8()
{
  result = qword_1EDE49E28[0];
  if (!qword_1EDE49E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE49E28);
  }

  return result;
}

void sub_1DCCB7070(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCCB707C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t objectdestroy_28Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm()
{

  return swift_deallocObject();
}

void sub_1DCCB7284(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    MEMORY[0x1EEE66BB8](a1);
  }
}

uint64_t sub_1DCCB7290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(319, *(a1 + 16), *(a1 + 24), a4);
  if (v6 <= 0x3F)
  {
    v7 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v7 + 84);
  }

  return result;
}

char *sub_1DCCB7338(char *a1, char **a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
      *(a1 + 2) = a2[2];
      sub_1DD0DCF8C();
    case 1u:
      v20 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v20;
      v21 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v21;
      *(a1 + 4) = a2[4];
      sub_1DD0DCF8C();
    case 2u:
      v11 = sub_1DD0DB04C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = type metadata accessor for Input(0);
      v13 = v12[5];
      v14 = &a1[v13];
      v15 = a2 + v13;
      v16 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v17 = sub_1DD0DC76C();
          (*(*(v17 - 8) + 16))(v14, v15, v17);
          goto LABEL_36;
        case 1u:
          v33 = sub_1DD0DC76C();
          (*(*(v33 - 8) + 16))(v14, v15, v33);
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v14[*(v34 + 48)] = *&v15[*(v34 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v28 = *(v15 + 1);
          *v14 = *v15;
          *(v14 + 1) = v28;
          *(v14 + 2) = *(v15 + 2);

          goto LABEL_36;
        case 3u:
          *v14 = *v15;
          swift_unknownObjectRetain();
          goto LABEL_36;
        case 4u:
          v26 = sub_1DD0DB1EC();
          (*(*(v26 - 8) + 16))(v14, v15, v26);
          goto LABEL_36;
        case 5u:
          v35 = *v15;
          *v14 = *v15;
          v36 = v35;
          goto LABEL_36;
        case 6u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v14, v15, v37);
          __dsta = type metadata accessor for USOParse(0);
          v38 = __dsta[5];
          v39 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v38], 1, v39))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v38], &v15[v38], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v39 - 8) + 16))(&v14[v38], &v15[v38], v39);
            __swift_storeEnumTagSinglePayload(&v14[v38], 0, 1, v39);
          }

          v70 = __dsta[6];
          v71 = &v14[v70];
          v72 = &v15[v70];
          v73 = *(v72 + 1);
          *v71 = *v72;
          *(v71 + 1) = v73;
          v74 = __dsta[7];
          v75 = &v14[v74];
          v76 = &v15[v74];
          v75[4] = v76[4];
          *v75 = *v76;

          goto LABEL_36;
        case 7u:
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 16))(v14, v15, v29);
          __dst = type metadata accessor for USOParse(0);
          v30 = __dst[5];
          v31 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v30], 1, v31))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v30], &v15[v30], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(*(v31 - 8) + 16))(&v14[v30], &v15[v30], v31);
            __swift_storeEnumTagSinglePayload(&v14[v30], 0, 1, v31);
          }

          v51 = __dst[6];
          v52 = &v14[v51];
          v53 = &v15[v51];
          v104 = *(v53 + 1);
          *v52 = *v53;
          *(v52 + 1) = v104;
          v54 = __dst[7];
          v55 = &v14[v54];
          v56 = &v15[v54];
          v55[4] = v56[4];
          *v55 = *v56;
          v57 = type metadata accessor for LinkParse(0);
          v58 = v57[5];
          v59 = &v14[v58];
          v60 = &v15[v58];
          v61 = *(v60 + 1);
          *v59 = *v60;
          *(v59 + 1) = v61;
          v62 = v57[6];
          v63 = &v14[v62];
          v64 = &v15[v62];
          v65 = *(v64 + 1);
          *v63 = *v64;
          *(v63 + 1) = v65;
          v66 = v57[7];
          v67 = &v14[v66];
          v68 = &v15[v66];
          v69 = *(v68 + 1);
          *v67 = *v68;
          *(v67 + 1) = v69;

          goto LABEL_36;
        case 8u:
          v41 = sub_1DD0DD12C();
          (*(*(v41 - 8) + 16))(v14, v15, v41);
          v42 = type metadata accessor for NLRouterParse(0);
          v43 = *(v42 + 20);
          v44 = &v14[v43];
          v45 = &v15[v43];
          v46 = *(v45 + 1);
          *v44 = *v45;
          *(v44 + 1) = v46;
          v47 = *(v42 + 24);
          v103 = v42;
          __dstb = &v14[v47];
          v48 = &v15[v47];
          v49 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v48, 1, v49))
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v48, *(*(v50 - 8) + 64));
          }

          else
          {
            v77 = sub_1DD0DB4BC();
            (*(*(v77 - 8) + 16))(__dstb, v48, v77);
            v102 = v49;
            v78 = *(v49 + 20);
            v101 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v48[v78], 1, v101))
            {
              v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v78], &v48[v78], *(*(v79 - 8) + 64));
            }

            else
            {
              (*(*(v101 - 8) + 16))(&__dstb[v78], &v48[v78]);
              __swift_storeEnumTagSinglePayload(&__dstb[v78], 0, 1, v101);
            }

            v80 = *(v102 + 24);
            v81 = &__dstb[v80];
            v82 = &v48[v80];
            v83 = *(v82 + 1);
            *v81 = *v82;
            *(v81 + 1) = v83;
            v84 = *(v102 + 28);
            v85 = &__dstb[v84];
            v86 = &v48[v84];
            v85[4] = v86[4];
            *v85 = *v86;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v102);
          }

          v87 = *(v103 + 28);
          v88 = *&v15[v87];
          *&v14[v87] = v88;
          v89 = v88;
          goto LABEL_36;
        case 9u:
          v27 = sub_1DD0DD08C();
          (*(*(v27 - 8) + 16))(v14, v15, v27);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v14, v15, *(*(v16 - 8) + 64));
          break;
      }

      *&a1[v12[6]] = *(a2 + v12[6]);
      v90 = v12[7];
      v91 = &a1[v90];
      v92 = a2 + v90;
      v93 = *(a2 + v90 + 24);

      if (v93)
      {
        v94 = *(v92 + 4);
        *(v91 + 3) = v93;
        *(v91 + 4) = v94;
        (**(v93 - 8))(v91, v92, v93);
      }

      else
      {
        v95 = *(v92 + 1);
        *v91 = *v92;
        *(v91 + 1) = v95;
        *(v91 + 4) = *(v92 + 4);
      }

      a1[v12[8]] = *(a2 + v12[8]);
      sub_1DD0DD1FC();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      *&a1[TupleTypeMetadata[12]] = *(a2 + TupleTypeMetadata[12]);
      *&a1[TupleTypeMetadata[16]] = *(a2 + TupleTypeMetadata[16]);
      *&a1[TupleTypeMetadata[20]] = *(a2 + TupleTypeMetadata[20]);
      v97 = TupleTypeMetadata[24];
      v98 = &a1[v97];
      v99 = (a2 + v97);
      v100 = v99[1];
      *v98 = *v99;
      *(v98 + 1) = v100;
      sub_1DD0DCF8C();
    case 3u:
      v18 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v18;
      v19 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v19;
      *(a1 + 4) = a2[4];
      sub_1DD0DCF8C();
    case 4u:
      v8 = *a2;
      v9 = a2[1];
      v10 = *(a2 + 16);
      sub_1DCBB12F4(v8, v9, v10);
      *a1 = v8;
      *(a1 + 1) = v9;
      a1[16] = v10;
      goto LABEL_41;
    case 5u:
      v22 = *a2;
      v23 = *a2;
      *a1 = v22;
      a1[8] = *(a2 + 8);
LABEL_41:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v24 = *(*(v6 - 8) + 64);

      result = memcpy(a1, a2, v24);
      break;
  }

  return result;
}

void sub_1DCCB7E44(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(a2 + 16), *(a2 + 24), a4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v8 = a1[2];

      goto LABEL_10;
    case 1u:
    case 3u:

      break;
    case 2u:
      v9 = sub_1DD0DB04C();
      (*(*(v9 - 8) + 8))(a1, v9);
      v10 = type metadata accessor for Input(0);
      v11 = (a1 + *(v10 + 20));
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v12 = sub_1DD0DC76C();
          goto LABEL_18;
        case 1u:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 8))(v11, v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_28;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v12 = sub_1DD0DB1EC();
          goto LABEL_18;
        case 5u:
          v17 = *v11;
          goto LABEL_34;
        case 6u:
          v18 = sub_1DD0DB4BC();
          (*(*(v18 - 8) + 8))(v11, v18);
          v19 = *(type metadata accessor for USOParse(0) + 20);
          v20 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v11 + v19, 1, v20))
          {
            (*(*(v20 - 8) + 8))(v11 + v19, v20);
          }

          goto LABEL_28;
        case 7u:
          v13 = sub_1DD0DB4BC();
          (*(*(v13 - 8) + 8))(v11, v13);
          v14 = *(type metadata accessor for USOParse(0) + 20);
          v15 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v11 + v14, 1, v15))
          {
            (*(*(v15 - 8) + 8))(v11 + v14, v15);
          }

          type metadata accessor for LinkParse(0);

LABEL_28:

          break;
        case 8u:
          v21 = sub_1DD0DD12C();
          (*(*(v21 - 8) + 8))(v11, v21);
          v22 = type metadata accessor for NLRouterParse(0);

          v23 = v11 + *(v22 + 24);
          v24 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v23, 1, v24))
          {
            v25 = sub_1DD0DB4BC();
            (*(*(v25 - 8) + 8))(v23, v25);
            v26 = *(v24 + 20);
            v27 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v23 + v26, 1, v27))
            {
              (*(*(v27 - 8) + 8))(v23 + v26, v27);
            }
          }

          v17 = *(v11 + *(v22 + 28));
LABEL_34:

          break;
        case 9u:
          v12 = sub_1DD0DD08C();
LABEL_18:
          (*(*(v12 - 8) + 8))(v11, v12);
          break;
        default:
          break;
      }

      v28 = (a1 + *(v10 + 28));
      if (v28[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
      }

      sub_1DD0DD1FC();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();

      break;
    case 4u:
      v5 = *a1;
      v6 = a1[1];
      v7 = *(a1 + 16);

      sub_1DCBB1310(v5, v6, v7);
      break;
    case 5u:
      v8 = *a1;

LABEL_10:

      break;
    default:
      return;
  }
}

void *sub_1DCCB84B0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = a2[1];
      *a1 = *a2;
      a1[1] = v7;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 1u:
      v20 = a2[1];
      *a1 = *a2;
      a1[1] = v20;
      v21 = a2[3];
      a1[2] = a2[2];
      a1[3] = v21;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 2u:
      v11 = sub_1DD0DB04C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = type metadata accessor for Input(0);
      v13 = v12[5];
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v17 = sub_1DD0DC76C();
          (*(*(v17 - 8) + 16))(v14, v15, v17);
          goto LABEL_34;
        case 1u:
          v33 = sub_1DD0DC76C();
          (*(*(v33 - 8) + 16))(v14, v15, v33);
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v14[*(v34 + 48)] = *&v15[*(v34 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v28 = *(v15 + 1);
          *v14 = *v15;
          *(v14 + 1) = v28;
          *(v14 + 2) = *(v15 + 2);

          goto LABEL_34;
        case 3u:
          *v14 = *v15;
          swift_unknownObjectRetain();
          goto LABEL_34;
        case 4u:
          v26 = sub_1DD0DB1EC();
          (*(*(v26 - 8) + 16))(v14, v15, v26);
          goto LABEL_34;
        case 5u:
          v35 = *v15;
          *v14 = *v15;
          v36 = v35;
          goto LABEL_34;
        case 6u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v14, v15, v37);
          __dsta = type metadata accessor for USOParse(0);
          v38 = __dsta[5];
          v39 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v38], 1, v39))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v38], &v15[v38], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v39 - 8) + 16))(&v14[v38], &v15[v38], v39);
            __swift_storeEnumTagSinglePayload(&v14[v38], 0, 1, v39);
          }

          v70 = __dsta[6];
          v71 = &v14[v70];
          v72 = &v15[v70];
          v73 = *(v72 + 1);
          *v71 = *v72;
          *(v71 + 1) = v73;
          v74 = __dsta[7];
          v75 = &v14[v74];
          v76 = &v15[v74];
          v75[4] = v76[4];
          *v75 = *v76;

          goto LABEL_34;
        case 7u:
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 16))(v14, v15, v29);
          __dst = type metadata accessor for USOParse(0);
          v30 = __dst[5];
          v31 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v30], 1, v31))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v30], &v15[v30], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(*(v31 - 8) + 16))(&v14[v30], &v15[v30], v31);
            __swift_storeEnumTagSinglePayload(&v14[v30], 0, 1, v31);
          }

          v51 = __dst[6];
          v52 = &v14[v51];
          v53 = &v15[v51];
          v104 = *(v53 + 1);
          *v52 = *v53;
          *(v52 + 1) = v104;
          v54 = __dst[7];
          v55 = &v14[v54];
          v56 = &v15[v54];
          v55[4] = v56[4];
          *v55 = *v56;
          v57 = type metadata accessor for LinkParse(0);
          v58 = v57[5];
          v59 = &v14[v58];
          v60 = &v15[v58];
          v61 = *(v60 + 1);
          *v59 = *v60;
          *(v59 + 1) = v61;
          v62 = v57[6];
          v63 = &v14[v62];
          v64 = &v15[v62];
          v65 = *(v64 + 1);
          *v63 = *v64;
          *(v63 + 1) = v65;
          v66 = v57[7];
          v67 = &v14[v66];
          v68 = &v15[v66];
          v69 = *(v68 + 1);
          *v67 = *v68;
          *(v67 + 1) = v69;

          goto LABEL_34;
        case 8u:
          v41 = sub_1DD0DD12C();
          (*(*(v41 - 8) + 16))(v14, v15, v41);
          v42 = type metadata accessor for NLRouterParse(0);
          v43 = *(v42 + 20);
          v44 = &v14[v43];
          v45 = &v15[v43];
          v46 = *(v45 + 1);
          *v44 = *v45;
          *(v44 + 1) = v46;
          v47 = *(v42 + 24);
          v103 = v42;
          __dstb = &v14[v47];
          v48 = &v15[v47];
          v49 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v48, 1, v49))
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v48, *(*(v50 - 8) + 64));
          }

          else
          {
            v77 = sub_1DD0DB4BC();
            (*(*(v77 - 8) + 16))(__dstb, v48, v77);
            v102 = v49;
            v78 = *(v49 + 20);
            v101 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v48[v78], 1, v101))
            {
              v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v78], &v48[v78], *(*(v79 - 8) + 64));
            }

            else
            {
              (*(*(v101 - 8) + 16))(&__dstb[v78], &v48[v78]);
              __swift_storeEnumTagSinglePayload(&__dstb[v78], 0, 1, v101);
            }

            v80 = *(v102 + 24);
            v81 = &__dstb[v80];
            v82 = &v48[v80];
            v83 = *(v82 + 1);
            *v81 = *v82;
            *(v81 + 1) = v83;
            v84 = *(v102 + 28);
            v85 = &__dstb[v84];
            v86 = &v48[v84];
            v85[4] = v86[4];
            *v85 = *v86;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v102);
          }

          v87 = *(v103 + 28);
          v88 = *&v15[v87];
          *&v14[v87] = v88;
          v89 = v88;
          goto LABEL_34;
        case 9u:
          v27 = sub_1DD0DD08C();
          (*(*(v27 - 8) + 16))(v14, v15, v27);
LABEL_34:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v14, v15, *(*(v16 - 8) + 64));
          break;
      }

      *(a1 + v12[6]) = *(a2 + v12[6]);
      v90 = v12[7];
      v91 = a1 + v90;
      v92 = a2 + v90;
      v93 = *(a2 + v90 + 24);

      if (v93)
      {
        v94 = *(v92 + 4);
        *(v91 + 3) = v93;
        *(v91 + 4) = v94;
        (**(v93 - 8))(v91, v92, v93);
      }

      else
      {
        v95 = *(v92 + 1);
        *v91 = *v92;
        *(v91 + 1) = v95;
        *(v91 + 4) = *(v92 + 4);
      }

      *(a1 + v12[8]) = *(a2 + v12[8]);
      sub_1DD0DD1FC();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      *(a1 + TupleTypeMetadata[12]) = *(a2 + TupleTypeMetadata[12]);
      *(a1 + TupleTypeMetadata[16]) = *(a2 + TupleTypeMetadata[16]);
      *(a1 + TupleTypeMetadata[20]) = *(a2 + TupleTypeMetadata[20]);
      v97 = TupleTypeMetadata[24];
      v98 = (a1 + v97);
      v99 = (a2 + v97);
      v100 = v99[1];
      *v98 = *v99;
      v98[1] = v100;
      sub_1DD0DCF8C();
    case 3u:
      v18 = a2[1];
      *a1 = *a2;
      a1[1] = v18;
      v19 = a2[3];
      a1[2] = a2[2];
      a1[3] = v19;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 4u:
      v8 = *a2;
      v9 = a2[1];
      v10 = *(a2 + 16);
      sub_1DCBB12F4(v8, v9, v10);
      *a1 = v8;
      a1[1] = v9;
      *(a1 + 16) = v10;
      goto LABEL_39;
    case 5u:
      v22 = *a2;
      v23 = *a2;
      *a1 = v22;
      *(a1 + 8) = *(a2 + 8);
LABEL_39:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v24 = *(*(v6 - 8) + 64);

      result = memcpy(a1, a2, v24);
      break;
  }

  return result;
}

uint64_t *sub_1DCCB8F70(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
    v7 = *(v6 - 8);
    (*(v7 + 8))(a1, v6);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        sub_1DD0DCF8C();
      case 2u:
        v11 = sub_1DD0DB04C();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        v12 = type metadata accessor for Input(0);
        v13 = v12[5];
        v14 = a1 + v13;
        v15 = a2 + v13;
        v16 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v17 = sub_1DD0DC76C();
            (*(*(v17 - 8) + 16))(v14, v15, v17);
            goto LABEL_35;
          case 1u:
            v28 = sub_1DD0DC76C();
            (*(*(v28 - 8) + 16))(v14, v15, v28);
            v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v14[*(v29 + 48)] = *&v15[*(v29 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v14 = *v15;
            *(v14 + 1) = *(v15 + 1);
            *(v14 + 2) = *(v15 + 2);

            goto LABEL_35;
          case 3u:
            *v14 = *v15;
            swift_unknownObjectRetain();
            goto LABEL_35;
          case 4u:
            v22 = sub_1DD0DB1EC();
            (*(*(v22 - 8) + 16))(v14, v15, v22);
            goto LABEL_35;
          case 5u:
            v30 = *v15;
            *v14 = *v15;
            v31 = v30;
            goto LABEL_35;
          case 6u:
            v32 = sub_1DD0DB4BC();
            (*(*(v32 - 8) + 16))(v14, v15, v32);
            __dsta = type metadata accessor for USOParse(0);
            v33 = __dsta[5];
            v34 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v15[v33], 1, v34))
            {
              v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v14[v33], &v15[v33], *(*(v35 - 8) + 64));
            }

            else
            {
              (*(*(v34 - 8) + 16))(&v14[v33], &v15[v33], v34);
              __swift_storeEnumTagSinglePayload(&v14[v33], 0, 1, v34);
            }

            v62 = __dsta[6];
            v63 = &v14[v62];
            v64 = &v15[v62];
            *v63 = *v64;
            *(v63 + 1) = *(v64 + 1);
            v65 = __dsta[7];
            v66 = &v14[v65];
            v67 = &v15[v65];
            v68 = *v67;
            v66[4] = v67[4];
            *v66 = v68;

            goto LABEL_35;
          case 7u:
            v24 = sub_1DD0DB4BC();
            (*(*(v24 - 8) + 16))(v14, v15, v24);
            __dst = type metadata accessor for USOParse(0);
            v25 = __dst[5];
            v26 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v15[v25], 1, v26))
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v14[v25], &v15[v25], *(*(v27 - 8) + 64));
            }

            else
            {
              (*(*(v26 - 8) + 16))(&v14[v25], &v15[v25], v26);
              __swift_storeEnumTagSinglePayload(&v14[v25], 0, 1, v26);
            }

            v45 = __dst[6];
            v46 = &v14[v45];
            v47 = &v15[v45];
            *v46 = *v47;
            *(v46 + 1) = *(v47 + 1);
            v48 = __dst[7];
            v49 = &v14[v48];
            v50 = &v15[v48];
            v51 = *v50;
            v49[4] = v50[4];
            *v49 = v51;
            v52 = type metadata accessor for LinkParse(0);
            v53 = v52[5];
            v54 = &v14[v53];
            v55 = &v15[v53];
            *v54 = *v55;
            *(v54 + 1) = *(v55 + 1);
            v56 = v52[6];
            v57 = &v14[v56];
            v58 = &v15[v56];
            *v57 = *v58;
            *(v57 + 1) = *(v58 + 1);
            v59 = v52[7];
            v60 = &v14[v59];
            v61 = &v15[v59];
            *v60 = *v61;
            *(v60 + 1) = *(v61 + 1);

            goto LABEL_35;
          case 8u:
            v36 = sub_1DD0DD12C();
            (*(*(v36 - 8) + 16))(v14, v15, v36);
            v37 = type metadata accessor for NLRouterParse(0);
            v38 = *(v37 + 20);
            v39 = &v14[v38];
            v40 = &v15[v38];
            *v39 = *v40;
            *(v39 + 1) = *(v40 + 1);
            v41 = *(v37 + 24);
            v97 = v37;
            __dstb = &v14[v41];
            v42 = &v15[v41];
            v43 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v42, 1, v43))
            {
              v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v42, *(*(v44 - 8) + 64));
            }

            else
            {
              v69 = sub_1DD0DB4BC();
              (*(*(v69 - 8) + 16))(__dstb, v42, v69);
              v95 = v43;
              v70 = *(v43 + 20);
              v71 = sub_1DD0DB3EC();
              v96 = v42;
              v72 = &v42[v70];
              v73 = v71;
              if (__swift_getEnumTagSinglePayload(v72, 1, v71))
              {
                v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v70], &v96[v70], *(*(v74 - 8) + 64));
              }

              else
              {
                (*(*(v73 - 8) + 16))(&__dstb[v70], &v96[v70], v73);
                __swift_storeEnumTagSinglePayload(&__dstb[v70], 0, 1, v73);
              }

              v75 = *(v95 + 24);
              v76 = &__dstb[v75];
              v77 = &v96[v75];
              *v76 = *v77;
              *(v76 + 1) = *(v77 + 1);
              v78 = *(v95 + 28);
              v79 = &__dstb[v78];
              v80 = &v96[v78];
              v81 = *v80;
              v79[4] = v80[4];
              *v79 = v81;

              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v95);
            }

            v82 = *(v97 + 28);
            v83 = *&v15[v82];
            *&v14[v82] = v83;
            v84 = v83;
            goto LABEL_35;
          case 9u:
            v23 = sub_1DD0DD08C();
            (*(*(v23 - 8) + 16))(v14, v15, v23);
LABEL_35:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v14, v15, *(*(v16 - 8) + 64));
            break;
        }

        *(a1 + v12[6]) = *(a2 + v12[6]);
        v85 = v12[7];
        v86 = a1 + v85;
        v87 = a2 + v85;
        v88 = *(a2 + v85 + 24);

        if (v88)
        {
          *(v86 + 3) = v88;
          *(v86 + 4) = *(v87 + 4);
          (**(v88 - 8))(v86, v87, v88);
        }

        else
        {
          v89 = *v87;
          v90 = *(v87 + 1);
          *(v86 + 4) = *(v87 + 4);
          *v86 = v89;
          *(v86 + 1) = v90;
        }

        *(a1 + v12[8]) = *(a2 + v12[8]);
        sub_1DD0DD1FC();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedTypeWitness();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        *(a1 + TupleTypeMetadata[12]) = *(a2 + TupleTypeMetadata[12]);
        *(a1 + TupleTypeMetadata[16]) = *(a2 + TupleTypeMetadata[16]);
        *(a1 + TupleTypeMetadata[20]) = *(a2 + TupleTypeMetadata[20]);
        v92 = TupleTypeMetadata[24];
        v93 = (a1 + v92);
        v94 = (a2 + v92);
        *v93 = *v94;
        v93[1] = v94[1];
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        sub_1DD0DCF8C();
      case 4u:
        v8 = *a2;
        v9 = a2[1];
        v10 = *(a2 + 16);
        sub_1DCBB12F4(v8, v9, v10);
        *a1 = v8;
        a1[1] = v9;
        *(a1 + 16) = v10;
        goto LABEL_40;
      case 5u:
        v18 = *a2;
        v19 = *a2;
        *a1 = v18;
        *(a1 + 8) = *(a2 + 8);
LABEL_40:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v20 = *(v7 + 64);

        return memcpy(a1, a2, v20);
    }
  }

  return a1;
}

_BYTE *sub_1DCCB9AF0(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for Input(0);
    v9 = v8[5];
    v10 = &a1[v9];
    v11 = &a2[v9];
    v12 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v13 = sub_1DD0DC76C();
        (*(*(v13 - 8) + 32))(v10, v11, v13);
        goto LABEL_26;
      case 1u:
        v21 = sub_1DD0DC76C();
        (*(*(v21 - 8) + 32))(v10, v11, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v10[*(v22 + 48)] = *&v11[*(v22 + 48)];
        goto LABEL_26;
      case 4u:
        v24 = sub_1DD0DB1EC();
        (*(*(v24 - 8) + 32))(v10, v11, v24);
        goto LABEL_26;
      case 6u:
        v25 = sub_1DD0DB4BC();
        (*(*(v25 - 8) + 32))(v10, v11, v25);
        v54 = type metadata accessor for USOParse(0);
        v26 = v54[5];
        v27 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v26], 1, v27))
        {
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v26], &v11[v26], *(*(v28 - 8) + 64));
        }

        else
        {
          (*(*(v27 - 8) + 32))(&v10[v26], &v11[v26], v27);
          __swift_storeEnumTagSinglePayload(&v10[v26], 0, 1, v27);
        }

        *&v10[v54[6]] = *&v11[v54[6]];
        v35 = v54[7];
        v36 = &v10[v35];
        v37 = &v11[v35];
        v36[4] = v37[4];
        *v36 = *v37;
        goto LABEL_26;
      case 7u:
        v29 = sub_1DD0DB4BC();
        (*(*(v29 - 8) + 32))(v10, v11, v29);
        v55 = type metadata accessor for USOParse(0);
        v30 = v55[5];
        v31 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v30], 1, v31))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v30], &v11[v30], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v31 - 8) + 32))(&v10[v30], &v11[v30], v31);
          __swift_storeEnumTagSinglePayload(&v10[v30], 0, 1, v31);
        }

        *&v10[v55[6]] = *&v11[v55[6]];
        v38 = v55[7];
        v39 = &v10[v38];
        v40 = &v11[v38];
        v39[4] = v40[4];
        *v39 = *v40;
        v41 = type metadata accessor for LinkParse(0);
        *&v10[v41[5]] = *&v11[v41[5]];
        *&v10[v41[6]] = *&v11[v41[6]];
        *&v10[v41[7]] = *&v11[v41[7]];
        goto LABEL_26;
      case 8u:
        v16 = sub_1DD0DD12C();
        (*(*(v16 - 8) + 32))(v10, v11, v16);
        v17 = type metadata accessor for NLRouterParse(0);
        *&v10[*(v17 + 20)] = *&v11[*(v17 + 20)];
        v18 = *(v17 + 24);
        v53 = v17;
        __dst = &v10[v18];
        v19 = &v11[v18];
        v52 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v19, 1, v52))
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(__dst, v19, *(*(v20 - 8) + 64));
        }

        else
        {
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(__dst, v19, v33);
          v51 = v52[5];
          v50 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v51], 1, v50))
          {
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&__dst[v51], &v19[v51], *(*(v34 - 8) + 64));
          }

          else
          {
            (*(*(v50 - 8) + 32))(&__dst[v51], &v19[v51]);
            __swift_storeEnumTagSinglePayload(&__dst[v51], 0, 1, v50);
          }

          *&__dst[v52[6]] = *&v19[v52[6]];
          v42 = v52[7];
          v43 = &__dst[v42];
          v44 = &v19[v42];
          v43[4] = v44[4];
          *v43 = *v44;
          __swift_storeEnumTagSinglePayload(__dst, 0, 1, v52);
        }

        *&v10[*(v53 + 28)] = *&v11[*(v53 + 28)];
        goto LABEL_26;
      case 9u:
        v23 = sub_1DD0DD08C();
        (*(*(v23 - 8) + 32))(v10, v11, v23);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v10, v11, *(*(v12 - 8) + 64));
        break;
    }

    *&a1[v8[6]] = *&a2[v8[6]];
    v45 = v8[7];
    v46 = &a1[v45];
    v47 = &a2[v45];
    v48 = *(v47 + 1);
    *v46 = *v47;
    *(v46 + 1) = v48;
    *(v46 + 4) = *(v47 + 4);
    a1[v8[8]] = a2[v8[8]];
    sub_1DD0DD1FC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    *&a1[TupleTypeMetadata[12]] = *&a2[TupleTypeMetadata[12]];
    *&a1[TupleTypeMetadata[16]] = *&a2[TupleTypeMetadata[16]];
    *&a1[TupleTypeMetadata[20]] = *&a2[TupleTypeMetadata[20]];
    *&a1[TupleTypeMetadata[24]] = *&a2[TupleTypeMetadata[24]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v14 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v14);
  }
}

_BYTE *sub_1DCCBA344(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = *(v6 - 8);
  (*(v7 + 8))(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for Input(0);
    v10 = v9[5];
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v14 = sub_1DD0DC76C();
        (*(*(v14 - 8) + 32))(v11, v12, v14);
        goto LABEL_27;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v11, v12, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v11[*(v23 + 48)] = *&v12[*(v23 + 48)];
        goto LABEL_27;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v11, v12, v25);
        goto LABEL_27;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v11, v12, v26);
        v55 = type metadata accessor for USOParse(0);
        v27 = v55[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v27], &v12[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 32))(&v11[v27], &v12[v27], v28);
          __swift_storeEnumTagSinglePayload(&v11[v27], 0, 1, v28);
        }

        *&v11[v55[6]] = *&v12[v55[6]];
        v36 = v55[7];
        v37 = &v11[v36];
        v38 = &v12[v36];
        v37[4] = v38[4];
        *v37 = *v38;
        goto LABEL_27;
      case 7u:
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v11, v12, v30);
        v56 = type metadata accessor for USOParse(0);
        v31 = v56[5];
        v32 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v31], 1, v32))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v31], &v12[v31], *(*(v33 - 8) + 64));
        }

        else
        {
          (*(*(v32 - 8) + 32))(&v11[v31], &v12[v31], v32);
          __swift_storeEnumTagSinglePayload(&v11[v31], 0, 1, v32);
        }

        *&v11[v56[6]] = *&v12[v56[6]];
        v39 = v56[7];
        v40 = &v11[v39];
        v41 = &v12[v39];
        v40[4] = v41[4];
        *v40 = *v41;
        v42 = type metadata accessor for LinkParse(0);
        *&v11[v42[5]] = *&v12[v42[5]];
        *&v11[v42[6]] = *&v12[v42[6]];
        *&v11[v42[7]] = *&v12[v42[7]];
        goto LABEL_27;
      case 8u:
        v17 = sub_1DD0DD12C();
        (*(*(v17 - 8) + 32))(v11, v12, v17);
        v18 = type metadata accessor for NLRouterParse(0);
        *&v11[*(v18 + 20)] = *&v12[*(v18 + 20)];
        v19 = *(v18 + 24);
        v54 = v18;
        __dst = &v11[v19];
        v20 = &v12[v19];
        v53 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v20, 1, v53))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(__dst, v20, *(*(v21 - 8) + 64));
        }

        else
        {
          v34 = sub_1DD0DB4BC();
          (*(*(v34 - 8) + 32))(__dst, v20, v34);
          v52 = v53[5];
          v51 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v20[v52], 1, v51))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&__dst[v52], &v20[v52], *(*(v35 - 8) + 64));
          }

          else
          {
            (*(*(v51 - 8) + 32))(&__dst[v52], &v20[v52]);
            __swift_storeEnumTagSinglePayload(&__dst[v52], 0, 1, v51);
          }

          *&__dst[v53[6]] = *&v20[v53[6]];
          v43 = v53[7];
          v44 = &__dst[v43];
          v45 = &v20[v43];
          v44[4] = v45[4];
          *v44 = *v45;
          __swift_storeEnumTagSinglePayload(__dst, 0, 1, v53);
        }

        *&v11[*(v54 + 28)] = *&v12[*(v54 + 28)];
        goto LABEL_27;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v11, v12, v24);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v11, v12, *(*(v13 - 8) + 64));
        break;
    }

    *&a1[v9[6]] = *&a2[v9[6]];
    v46 = v9[7];
    v47 = &a1[v46];
    v48 = &a2[v46];
    v49 = *(v48 + 1);
    *v47 = *v48;
    *(v47 + 1) = v49;
    *(v47 + 4) = *(v48 + 4);
    a1[v9[8]] = a2[v9[8]];
    sub_1DD0DD1FC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    *&a1[TupleTypeMetadata[12]] = *&a2[TupleTypeMetadata[12]];
    *&a1[TupleTypeMetadata[16]] = *&a2[TupleTypeMetadata[16]];
    *&a1[TupleTypeMetadata[20]] = *&a2[TupleTypeMetadata[20]];
    *&a1[TupleTypeMetadata[24]] = *&a2[TupleTypeMetadata[24]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v15 = *(v7 + 64);

  return memcpy(a1, a2, v15);
}

uint64_t sub_1DCCBABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(a3 + 16), *(a3 + 24), a4);

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1DCCBAC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State(0, *(a4 + 16), *(a4 + 24), a4);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v7);
}

void ReactiveFlowPlan.confirm<A, B>(skip:promptGenerator:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = MEMORY[0x1EEE9AC00](a1, a2);
  v19 = &v29[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v17;
  (*(v21 + 16))(v19, v23, v22);
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v24[7] = a2;
  v24[8] = a3;
  v29[0] = v20;
  v29[1] = sub_1DCCBAE74;
  v29[2] = v24;
  v26 = type metadata accessor for ConfirmModifier(0, a4, a7, v25);
  OUTLINED_FUNCTION_2_43();
  WitnessTable = swift_getWitnessTable();
  sub_1DCDDC1D8(v19, v29, a4, v26, WitnessTable, a9);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBADF8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  result = a1();
  if (!v5)
  {
    v11 = result;
    result = type metadata accessor for ConfirmationPrompt(0, a2, a3, a4);
    a5[3] = result;
    a5[4] = &protocol witness table for ConfirmationPrompt<A, B>;
    *a5 = v11;
  }

  return result;
}

void sub_1DCCBAEB4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  v4 = *v2;
  (*(v5 + 16))(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6[1] = v4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBAFD0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3B38, &qword_1DD0E9FF8);
  swift_allocObject();
  result = sub_1DCCBE328(0);
  *a1 = result;
  return result;
}

int *sub_1DCCBB020@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = *a3;
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  result = type metadata accessor for ConfirmPlan(0, a6, a7, v15);
  *(a8 + result[9]) = v13;
  *(a8 + result[10]) = v14;
  v17 = (a8 + result[11]);
  *v17 = a4;
  v17[1] = a5;
  return result;
}

void sub_1DCCBB0D8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();

  nullsub_1();
}

void sub_1DCCBB128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a1;
  v86 = a2;
  v87 = a3;
  v85 = type metadata accessor for ConfirmPlan(0, a2, a3, a4);
  OUTLINED_FUNCTION_9();
  v77 = v4;
  OUTLINED_FUNCTION_10();
  v75 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_34_0();
  v76 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v13 = sub_1DD0DDAEC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3BE8, &qword_1DD0EA0A0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3BF0, &qword_1DD0EA0A8);
  v16 = MEMORY[0x1E695BED8];
  v78 = v13;
  v69 = v14;
  WitnessTable = swift_getWitnessTable();
  v63 = sub_1DCBF7DC0(&qword_1ECCA3BF8, &qword_1ECCA3BE8, &qword_1DD0EA0A0, v16);
  v92 = v63;
  v93 = sub_1DCBF7DC0(&qword_1ECCA3C00, &qword_1ECCA3BF0, &qword_1DD0EA0A8, MEMORY[0x1E695BCF8]);
  v62[2] = v93;
  v17 = sub_1DD0DDA0C();
  OUTLINED_FUNCTION_9();
  v66 = v18;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v21);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3C08, &qword_1DD0EA0B0);
  v79 = AssociatedTypeWitness;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v71 = v17;
  v62[5] = type metadata accessor for _FlowPlanEvent(255, TupleTypeMetadata3, v22, v23);
  v62[4] = swift_getWitnessTable();
  v24 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9();
  v70 = v25;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v28);
  sub_1DD0DF21C();
  v83 = v12;
  sub_1DD0DDB2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v29 = sub_1DD0DDABC();
  v73 = v24;
  v62[3] = swift_getWitnessTable();
  v88 = v29;
  v89 = sub_1DD0DDA9C();
  v90 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v30 = sub_1DD0DDA7C();
  OUTLINED_FUNCTION_9();
  v68 = v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v34);
  v72 = v30;
  v62[7] = swift_getWitnessTable();
  v67 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9();
  v65 = v35;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C10, &qword_1DD0EA0B8);
  OUTLINED_FUNCTION_9();
  v41 = v40;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v62 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C18, &qword_1DD0EA0C0);
  OUTLINED_FUNCTION_9();
  v48 = v47;
  OUTLINED_FUNCTION_10();
  v51 = MEMORY[0x1EEE9AC00](v49, v50);
  v53 = v62 - v52;
  v81 = v15;
  v80 = *(v15 - 8);
  v55 = MEMORY[0x1EEE9AC00](v51, v54);
  v62[0] = v62 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = v62 - v58;
  v60 = v84;
  v82 = (*(v87 + 48))(v84);
  v61 = *(v60 + *(v85 + 36));
  if (v61)
  {
    v88 = *(v61 + 16);
    sub_1DD0DCF8C();
  }

  LOBYTE(v88) = 0;
  sub_1DD0DDBBC();
  sub_1DD0DDB9C();
  (*(v41 + 8))(v45, v39);
  sub_1DCBF7DC0(&qword_1ECCA3C20, &qword_1ECCA3C18, &qword_1DD0EA0C0, MEMORY[0x1E695C0C8]);
  sub_1DD0DDBFC();
  (*(v48 + 8))(v53, v46);
  v62[1] = v59;
  v88 = *(*(v84 + *(v85 + 40)) + 16);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBBE10@<X0>(char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v13[2] = a4;
  v13[3] = a5;
  v14 = a2;
  v15 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for _FlowPlanEvent(0, AssociatedTypeWitness, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3C08, &qword_1DD0EA0B0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return sub_1DCD495EC(sub_1DCCBEEB8, v13, v10, TupleTypeMetadata3, x8_0);
}

uint64_t sub_1DCCBBEE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3C08, &qword_1DD0EA0B0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = *(TupleTypeMetadata3 + 48);
  v13 = *(TupleTypeMetadata3 + 64);
  result = (*(*(AssociatedTypeWitness - 8) + 16))(a6, a1, AssociatedTypeWitness);
  *(a6 + v12) = a2;
  *(a6 + v13) = a3;
  return result;
}

uint64_t sub_1DCCBBFD4(uint64_t a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3C08, &qword_1DD0EA0B0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a1, *(a1 + *(TupleTypeMetadata3 + 48)), *(a1 + *(TupleTypeMetadata3 + 64)));
}

uint64_t sub_1DCCBC098@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v40 = a7;
  v13 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v20 = &v39 - v19;
  if (v13 == 2 || (a3 & 1) == 0)
  {
    if (a2 == 2 || (a2 & 1) == 0)
    {
      v29 = type metadata accessor for ConfirmPlan(0, a5, a6, v18);
      (*(a4 + *(v29 + 44)))(v43, a1);
      v36 = type metadata accessor for ConfirmationPromptProcessingFlow(0, AssociatedTypeWitness, v34, v35);
      sub_1DCB17CA0(v43, v42);
      (*(v15 + 16))(v20, a1, AssociatedTypeWitness);
      v41 = *(a4 + *(v29 + 40));
      v37 = sub_1DCCBC44C(v42, v20, &v41);
      v38 = v40;
      v40[3] = v36;
      v38[4] = swift_getWitnessTable();
      *v38 = v37;
      sub_1DD0DCF8C();
    }

    v27 = type metadata accessor for FixedResultFlow(0, AssociatedTypeWitness, v17, v18);
    (*(v15 + 16))(v20, a1, AssociatedTypeWitness);
    v30 = sub_1DCCBC410(v20);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "[Confirm plan]: user cancelled, returning", v24, 2u);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }

    v27 = type metadata accessor for FixedResultFlow(0, AssociatedTypeWitness, v25, v26);
    sub_1DCC9FB70();
    v28 = swift_allocError();
    v30 = sub_1DCCBC3D4(v28);
  }

  v31 = v30;
  v32 = v40;
  v40[3] = v27;
  result = swift_getWitnessTable();
  v32[4] = result;
  *v32 = v31;
  return result;
}

uint64_t sub_1DCCBC4A0(uint64_t a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3C08, &qword_1DD0EA0B0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a1, *(a1 + *(TupleTypeMetadata3 + 48)), *(a1 + *(TupleTypeMetadata3 + 64)));
}

unint64_t sub_1DCCBC57C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t sub_1DCCBC694(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1DCCBC724(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 80) > 7u || *(*(*(a3 + 16) - 8) + 64) > 0x18uLL || (*(v4 + 80) & 0x100000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  (*(v4 + 16))(a1, a2);
  return a1;
}

uint64_t sub_1DCCBC948(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1DCCBCA84(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCCBCCA0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

_BYTE *sub_1DCCBCD4C(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *v3;
  v6 = *a3;
  sub_1DCAFF9E8(a1, (v3 + 16));
  v3[56] = 0;
  (*(*(*(v5 + 80) - 8) + 32))(&v3[*(*v3 + 96)], a2);
  *&v3[*(*v3 + 104)] = v6;
  return v3;
}

uint64_t sub_1DCCBCDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = *(*v3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v67 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v10 = sub_1DD0DF22C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v67 - v13);
  swift_beginAccess();
  v17 = type metadata accessor for ConfirmationPromptProcessingFlow.State(0, v6, v15, v16);
  (*(*(v17 - 8) + 16))(v75, v3 + 16, v17);
  if ((v76 & 1) == 0)
  {
    sub_1DCAFF9E8(v75, v74);
    __swift_project_boxed_opaque_existential_1(v74, v74[3]);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3B50, &qword_1DD0EA010);
    v73 = sub_1DCBF7DC0(&qword_1ECCA3B58, &qword_1ECCA3B50, &qword_1DD0EA010, &protocol conformance descriptor for LifeCycleModifierFlow<A>);
    sub_1DD0DCF8C();
  }

  *&v71 = *&v75[0];
  if (BYTE8(v75[0]))
  {
    v69 = a3;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    v19 = v71;
    v20 = v71;
    v21 = v19;
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    sub_1DCB79378(v19, 1);
    v24 = os_log_type_enabled(v22, v23);
    v70 = v11;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v68 = v10;
      v26 = v25;
      v27 = swift_slowAlloc();
      v74[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_1DD0DF18C();
      v30 = sub_1DCB10E9C(v28, v29, v74);
      v21 = v71;

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "#ConfirmationPromptProcessingFlow received failure result, %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A8390](v27, -1, -1);
      v31 = v26;
      v10 = v68;
      MEMORY[0x1E12A8390](v31, -1, -1);
    }

    v32 = v69;
    v74[0] = v21;
    v33 = v21;
    if (swift_dynamicCast())
    {
      sub_1DD0DCF8C();
    }

    *v14 = v21;
    swift_storeEnumTagMultiPayload();
    v32[3] = type metadata accessor for Conclude(0, v10, v34, v35);
    v32[4] = &protocol witness table for Conclude<A>;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v32);
    type metadata accessor for ConfirmationPromptProcessingFlow(0, v6, v37, v38);
    swift_getWitnessTable();
    ActingFlow.conclude(with:)(v14, boxed_opaque_existential_1Tm);
    return (*(v70 + 8))(v14, v10);
  }

  if (v75[0])
  {
    v70 = v11;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v39 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v39, qword_1EDE57E00);
    v40 = sub_1DD0DD8EC();
    v41 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v10;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DCAFC000, v40, v41, "#ConfirmationPromptProcessingFlow received rejected result", v43, 2u);
      v44 = v43;
      v10 = v42;
      MEMORY[0x1E12A8390](v44, -1, -1);
    }

    (*(v7 + 16))(v9, v4 + *(*v4 + 96), v6);
    type metadata accessor for UserRejectionError(0, v6, v45, v46);
    swift_getWitnessTable();
    v47 = swift_allocError();
    (*(v7 + 32))(v48, v9, v6);
    *v14 = v47;
    swift_storeEnumTagMultiPayload();
    a3[3] = type metadata accessor for Conclude(0, v10, v49, v50);
    a3[4] = &protocol witness table for Conclude<A>;
    v51 = __swift_allocate_boxed_opaque_existential_1Tm(a3);
    type metadata accessor for ConfirmationPromptProcessingFlow(0, v6, v52, v53);
    swift_getWitnessTable();
    ActingFlow.conclude(with:)(v14, v51);
    sub_1DCB79378(v71, 0);
    return (*(v70 + 8))(v14, v10);
  }

  v55 = v11;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v56 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v56, qword_1EDE57E00);
  v57 = sub_1DD0DD8EC();
  v58 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = v10;
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_1DCAFC000, v57, v58, "#ConfirmationPromptProcessingFlow received confirmed result", v60, 2u);
    v61 = v60;
    v10 = v59;
    MEMORY[0x1E12A8390](v61, -1, -1);
  }

  (*(v7 + 16))(v14, v4 + *(*v4 + 96), v6);
  swift_storeEnumTagMultiPayload();
  a3[3] = type metadata accessor for Conclude(0, v10, v62, v63);
  a3[4] = &protocol witness table for Conclude<A>;
  v64 = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  type metadata accessor for ConfirmationPromptProcessingFlow(0, v6, v65, v66);
  swift_getWitnessTable();
  ActingFlow.conclude(with:)(v14, v64);
  sub_1DCB79378(v71, 0);
  return (*(v55 + 8))(v14, v10);
}

uint64_t sub_1DCCBD714(uint64_t a1, uint64_t *a2)
{
  v2 = a2 + 2;
  v3 = *a2;
  v4 = *(a1 + 8);
  v9 = *a1;
  v10 = v4;
  v11 = 1;
  swift_beginAccess();
  sub_1DCB8D4CC(v9, v4);
  v7 = type metadata accessor for ConfirmationPromptProcessingFlow.State(0, *(v3 + 80), v5, v6);
  (*(*(v7 - 8) + 40))(v2, &v9, v7);
  return swift_endAccess();
}

uint64_t sub_1DCCBD7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v6 = type metadata accessor for ConfirmationPromptProcessingFlow.State(0, v5, a3, a4);
  (*(*(v6 - 8) + 8))(v4 + 16, v6);
  (*(*(v5 - 8) + 8))(v4 + *(*v4 + 96), v5);

  return v4;
}

uint64_t sub_1DCCBD8E4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  result = sub_1DD0DF22C();
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

uint64_t sub_1DCCBD9C0(uint64_t a1)
{
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1, *(*v1 + 80));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  swift_storeEnumTagMultiPayload();
  return v1;
}

uint64_t *sub_1DCCBDA84(uint64_t a1)
{
  *(v1 + *(*v1 + 88)) = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  swift_storeEnumTagMultiPayload();
  return v1;
}

uint64_t sub_1DCCBDB18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DF22C();
  a1[3] = type metadata accessor for Conclude(0, v5, v6, v7);
  a1[4] = &protocol witness table for Conclude<A>;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for FixedResultFlow(0, v4, v9, v10);
  swift_getWitnessTable();
  return ActingFlow.conclude(with:)(v1 + v3, boxed_opaque_existential_1Tm);
}

uint64_t sub_1DCCBDC08()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DF22C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1DCCBDCD0(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1DCCBDD40(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {
    v3 = *(a1 + 8);
    if (v3 >= 2)
    {
      v3 = *a1 + 2;
    }

    if (v3 == 1)
    {
      v4 = *a1;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1DCCBDDA8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v4 = *(a2 + 8);
    if (v4 >= 2)
    {
      v4 = *a2 + 2;
    }

    if (v4 == 1)
    {
      v5 = *a2;
      v6 = *a2;
      *a1 = v5;
      v7 = 1;
    }

    else
    {
      v7 = 0;
      *a1 = *a2;
    }

    *(a1 + 8) = v7;
    v9 = 1;
  }

  else
  {
    v8 = *(a2 + 3);
    *(a1 + 24) = v8;
    (**(v8 - 8))(a1);
    v9 = 0;
  }

  *(a1 + 40) = v9;
  return a1;
}

uint64_t sub_1DCCBDE74(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = *(a1 + 8);
      if (v5 >= 2)
      {
        v5 = *a1 + 2;
      }

      if (v5 == 1)
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = *(a2 + 8);
      if (v7 >= 2)
      {
        v7 = *a2 + 2;
      }

      if (v7 == 1)
      {
        v8 = *a2;
        v9 = v8;
        *a1 = v8;
        v10 = 1;
      }

      else
      {
        v10 = 0;
        *a1 = *a2;
      }

      *(a1 + 8) = v10;
      v12 = 1;
    }

    else
    {
      v11 = *(a2 + 24);
      *(a1 + 24) = v11;
      *(a1 + 32) = *(a2 + 32);
      (**(v11 - 8))(a1, a2);
      v12 = 0;
    }

    *(a1 + 40) = v12;
  }

  return a1;
}

uint64_t sub_1DCCBDFA0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = *(a1 + 8);
      if (v5 >= 2)
      {
        v5 = *a1 + 2;
      }

      if (v5 == 1)
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = *(a2 + 8);
      if (v7 >= 2)
      {
        v7 = *a2 + 2;
      }

      if (v7 == 1)
      {
        *a1 = *a2;
        v8 = 1;
      }

      else
      {
        v8 = 0;
        *a1 = *a2;
      }

      *(a1 + 8) = v8;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 40) = v9;
  }

  return a1;
}

uint64_t sub_1DCCBE094(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCCBE0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1DCCBE11C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1DCCBE138(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1DCCBE178(void *a1)
{
}

void sub_1DCCBE1B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  sub_1DD0DCF8C();
}

void *sub_1DCCBE258(void *a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v4;

  return a1;
}

uint64_t sub_1DCCBE328(char a1)
{
  *(v1 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3B40, &qword_1DD0EA000);
  *(v1 + 64) = sub_1DD0DDE9C();
  *(v1 + 72) = 0;
  *(v1 + 24) = sub_1DCCBE4D4;
  *(v1 + 32) = 0;
  *(v1 + 40) = sub_1DCCBE4FC;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3B48, &qword_1DD0EA008);
  swift_allocObject();
  *(v1 + 16) = sub_1DD0DDB8C();
  return v1;
}