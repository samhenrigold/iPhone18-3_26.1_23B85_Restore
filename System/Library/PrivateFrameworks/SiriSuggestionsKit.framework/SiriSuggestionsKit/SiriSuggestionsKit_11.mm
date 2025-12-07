uint64_t SiriSuggestions.SystemDeviceState.description.getter()
{
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v1 = sub_1BF9B47C8();
  v2 = __swift_project_value_buffer(v1, qword_1EDBF5570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA428, &unk_1BF9C6B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF9C6AE0;
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_22_10(v4, v5);
  v6 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
  *(inited + 48) = v6;
  OUTLINED_FUNCTION_11_17();
  *(inited + 72) = v8;
  *(inited + 80) = v7 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
  OUTLINED_FUNCTION_26_15();
  *(inited + 88) = v9;
  *(inited + 96) = *v0;
  OUTLINED_FUNCTION_25_13();
  *(inited + 120) = v10;
  *(inited + 128) = v11;
  *(inited + 136) = v12;
  LOBYTE(v10) = *(v0 + 17);
  *(inited + 144) = *(v0 + 16);
  *(inited + 145) = v10;
  OUTLINED_FUNCTION_31_13();
  *(inited + 168) = v14;
  *(inited + 176) = v13;
  *(inited + 184) = 0xEA0000000000656CLL;
  v15 = *(type metadata accessor for SiriSuggestions.SystemDeviceState(0) + 28);
  v16 = sub_1BF9B4558();
  *(inited + 216) = v16;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 192));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1Tm, v0 + v15, v16);

  sub_1BF951740(MEMORY[0x1E69E7CC0], inited, 120, v2, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_6_19();
  sub_1BF991690(v22, v23, &qword_1BF9B7FC0, v24);
  v25 = sub_1BF9B4A78();
  v27 = v26;

  MEMORY[0x1BFB5DE90](v25, v27);

  return 0;
}

uint64_t sub_1BF98EE40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4C656369766564 && a2 == 0xEF65746174536B63;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954656369766564 && a2 == 0xEB00000000736570;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001BF9CE170 == a2;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x61636F4C69726973 && a2 == 0xEA0000000000656CLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1BF98EFB4(char a1)
{
  result = 0x6F4C656369766564;
  switch(a1)
  {
    case 1:
      result = 0x7954656369766564;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x61636F4C69726973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF98F074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF98EE40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF98F09C(uint64_t a1)
{
  v2 = sub_1BF990FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF98F0D8(uint64_t a1)
{
  v2 = sub_1BF990FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SystemDeviceState.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA430, &qword_1BF9C6B40);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  v7 = OUTLINED_FUNCTION_17_17();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_1BF990FAC();
  OUTLINED_FUNCTION_32_1();
  sub_1BF9B5898();
  sub_1BF991000();
  OUTLINED_FUNCTION_12_15();
  sub_1BF9B5638();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
    OUTLINED_FUNCTION_7_19();
    sub_1BF991150(v9, v10, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    sub_1BF9910A8();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    type metadata accessor for SiriSuggestions.SystemDeviceState(0);
    sub_1BF9B4558();
    OUTLINED_FUNCTION_0_26();
    sub_1BF9209A0(v11, v12, MEMORY[0x1E6969778]);
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
  }

  return (*(v5 + 8))(v2, v3);
}

void SiriSuggestions.SystemDeviceState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_39();
  v29 = v28;
  v50 = v30;
  v31 = sub_1BF9B4558();
  OUTLINED_FUNCTION_1();
  v49 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_17();
  v36 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA440, &qword_1BF9C6B48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_11_0();
  v38 = type metadata accessor for SiriSuggestions.SystemDeviceState(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_17();
  v42 = v41 - v40;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1BF990FAC();
  OUTLINED_FUNCTION_32_1();
  sub_1BF9B5868();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_1BF9910FC();
    sub_1BF9B5558();
    *v42 = a17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
    OUTLINED_FUNCTION_8_14();
    sub_1BF991150(v43, v44, MEMORY[0x1E69E6330]);
    sub_1BF9B5558();
    *(v42 + 8) = v51;
    sub_1BF99121C();
    sub_1BF9B5558();
    *(v42 + 16) = a13;
    *(v42 + 17) = a14;
    OUTLINED_FUNCTION_0_26();
    sub_1BF9209A0(v45, v46, MEMORY[0x1E6969790]);
    sub_1BF9B5558();
    v47 = OUTLINED_FUNCTION_17_17();
    v48(v47);
    (*(v49 + 32))(v42 + *(v38 + 28), v36, v31);
    sub_1BF99138C(v42, v50, type metadata accessor for SiriSuggestions.SystemDeviceState);
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_1BF9913EC(v42, type metadata accessor for SiriSuggestions.SystemDeviceState);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.assistantId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.siriLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0) + 36);
  sub_1BF9B4558();
  OUTLINED_FUNCTION_13();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.init(deviceLockState:deviceTypes:networkConnectivity:siriLocale:assistantId:responseMode:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_21_16();
  v9 = *v8;
  *(a4 + 17) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  *(a4 + 33) = v13;
  v14 = *(type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0) + 36);
  sub_1BF9B4558();
  OUTLINED_FUNCTION_13();
  result = (*(v15 + 32))(a4 + v14, a1);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v9;
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.description.getter()
{
  v1 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v6 - v5;
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v8 = __swift_project_value_buffer(v1, qword_1EDBF5570);
  (*(v3 + 16))(v7, v8, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA428, &unk_1BF9C6B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF9C6AF0;
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_22_10(v10, v11);
  v12 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
  *(inited + 48) = v12;
  OUTLINED_FUNCTION_11_17();
  *(inited + 72) = v14;
  *(inited + 80) = v13 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
  OUTLINED_FUNCTION_26_15();
  *(inited + 88) = v15;
  *(inited + 96) = *(v0 + 17);
  OUTLINED_FUNCTION_25_13();
  *(inited + 120) = v16;
  *(inited + 128) = v17;
  *(inited + 136) = v18;
  LOBYTE(v16) = *(v0 + 33);
  *(inited + 144) = *(v0 + 32);
  *(inited + 145) = v16;
  OUTLINED_FUNCTION_31_13();
  *(inited + 168) = v20;
  *(inited + 176) = v19;
  *(inited + 184) = 0xEA0000000000656CLL;
  v21 = *(type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0) + 36);
  v22 = sub_1BF9B4558();
  *(inited + 216) = v22;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 192));
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1Tm, v0 + v21, v22);
  *(inited + 224) = 0x6E61747369737361;
  *(inited + 232) = 0xEB00000000644974;
  v24 = v0[1];
  if (v24)
  {
    v25 = *v0;
    v26 = MEMORY[0x1E69E6158];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v25;
  *(inited + 248) = v24;
  *(inited + 264) = v26;
  strcpy((inited + 272), "responseMode");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  v27 = *(v0 + 16);
  *(inited + 312) = &type metadata for SiriSuggestions.SiriRuntimeDeviceState.ResponseMode;
  *(inited + 288) = v27;

  sub_1BF951610(MEMORY[0x1E69E7CC0], inited, 120, v7, v28, v29, v30, v31, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_6_19();
  sub_1BF991690(v32, v33, &qword_1BF9B7FC0, v34);
  v35 = sub_1BF9B4A78();
  v37 = v36;

  MEMORY[0x1BFB5DE90](v35, v37);

  (*(v3 + 8))(v7, v1);
  return 0;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.init(rawValue:)()
{
  OUTLINED_FUNCTION_20_18();
  v1 = sub_1BF9B5488();

  v3 = 5;
  if (v1 < 5)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.rawValue.getter()
{
  result = 0x4F79616C70736964;
  switch(*v0)
  {
    case 1:
      result = 0x4679616C70736964;
      break;
    case 2:
      result = 0x6C6E4F6563696F76;
      break;
    case 3:
      result = 0x726F466563696F76;
      break;
    case 4:
      result = OUTLINED_FUNCTION_5_2();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF98FD7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F4C656369766564 && a2 == 0xEF65746174536B63;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7954656369766564 && a2 == 0xEB00000000736570;
        if (v8 || (sub_1BF9B56D8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001BF9CE170 == a2;
          if (v9 || (sub_1BF9B56D8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x61636F4C69726973 && a2 == 0xEA0000000000656CLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_1BF9B56D8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BF98FF88(char a1)
{
  result = 0x6E61747369737361;
  switch(a1)
  {
    case 1:
      result = 0x65736E6F70736572;
      break;
    case 2:
      result = 0x6F4C656369766564;
      break;
    case 3:
      result = 0x7954656369766564;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x61636F4C69726973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF990098@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BF9900C0()
{
  result = qword_1EDBF3938;
  if (!qword_1EDBF3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3938);
  }

  return result;
}

uint64_t sub_1BF9901C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF990218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF98FD7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF990240(uint64_t a1)
{
  v2 = sub_1BF991290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF99027C(uint64_t a1)
{
  v2 = sub_1BF991290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA448, &qword_1BF9C6B50);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  v7 = OUTLINED_FUNCTION_17_17();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_1BF991290();
  OUTLINED_FUNCTION_32_1();
  sub_1BF9B5898();
  OUTLINED_FUNCTION_12_15();
  sub_1BF9B55B8();
  if (!v1)
  {
    sub_1BF9912E4();
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    sub_1BF991000();
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
    OUTLINED_FUNCTION_7_19();
    sub_1BF991150(v9, v10, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    sub_1BF9910A8();
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0);
    sub_1BF9B4558();
    OUTLINED_FUNCTION_0_26();
    sub_1BF9209A0(v11, v12, MEMORY[0x1E6969778]);
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
  }

  return (*(v5 + 8))(v2, v3);
}

void SiriSuggestions.SiriRuntimeDeviceState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v25 = v24;
  v48 = v26;
  v27 = sub_1BF9B4558();
  OUTLINED_FUNCTION_1();
  v47 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  v32 = v31 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA450, &qword_1BF9C6B58);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  v34 = type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_17();
  v49 = v37 - v36;
  v38 = OUTLINED_FUNCTION_17_17();
  __swift_project_boxed_opaque_existential_1(v38, v39);
  sub_1BF991290();
  sub_1BF9B5868();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    LOBYTE(v50) = 0;
    *v49 = sub_1BF9B54D8();
    *(v49 + 8) = v40;
    sub_1BF991338();
    OUTLINED_FUNCTION_15_21(&type metadata for SiriSuggestions.SiriRuntimeDeviceState.ResponseMode);
    *(v49 + 16) = 0;
    sub_1BF9910FC();
    OUTLINED_FUNCTION_15_21(&type metadata for DeviceLockState);
    *(v49 + 17) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
    OUTLINED_FUNCTION_8_14();
    sub_1BF991150(v41, v42, MEMORY[0x1E69E6330]);
    sub_1BF9B5558();
    *(v49 + 24) = v50;
    sub_1BF99121C();
    OUTLINED_FUNCTION_15_21(&type metadata for NetworkConnectivity);
    *(v49 + 32) = __PAIR16__(BYTE1(v50), 0);
    OUTLINED_FUNCTION_0_26();
    sub_1BF9209A0(v43, v44, MEMORY[0x1E6969790]);
    sub_1BF9B5558();
    v45 = OUTLINED_FUNCTION_5_18();
    v46(v45);
    (*(v47 + 32))(v49 + *(v34 + 36), v32, v27);
    sub_1BF99138C(v49, v48, type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1BF9913EC(v49, type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.init(deviceLockState:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_1EDBF2B30 != -1)
  {
    OUTLINED_FUNCTION_3_28(&qword_1EDBF2B30);
  }

  v4 = word_1EDBF2B38;
  v5 = HIBYTE(word_1EDBF2B38);
  type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0);
  OUTLINED_FUNCTION_16_17();
  result = sub_1BF9B4528();
  *(a2 + 17) = v3;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.init(deviceLockState:deviceTypes:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (qword_1EDBF2B30 != -1)
  {
    OUTLINED_FUNCTION_3_28(&qword_1EDBF2B30);
  }

  v6 = word_1EDBF2B38;
  v7 = HIBYTE(word_1EDBF2B38);
  type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0);
  OUTLINED_FUNCTION_16_17();
  result = sub_1BF9B4528();
  *(a3 + 17) = v5;
  *(a3 + 24) = a2;
  *(a3 + 32) = v6;
  *(a3 + 33) = v7;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 4;
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.init(deviceLockState:deviceTypes:networkConnectivity:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a3;
  v8 = a3[1];
  type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0);
  OUTLINED_FUNCTION_16_17();
  result = sub_1BF9B4528();
  *(a4 + 17) = v6;
  *(a4 + 24) = a2;
  *(a4 + 32) = v7;
  *(a4 + 33) = v8;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 4;
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.init(deviceLockState:deviceTypes:networkConnectivity:siriLocale:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_21_16();
  *(a2 + 17) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  v8 = *(type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0) + 36);
  sub_1BF9B4558();
  OUTLINED_FUNCTION_13();
  result = (*(v9 + 32))(a2 + v8, a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

SiriSuggestionsKit::DeviceLockState_optional __swiftcall DeviceLockState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_20_18();
  v2 = sub_1BF9B5488();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t DeviceLockState.rawValue.getter()
{
  if (*v0)
  {
    return 0x64656B636F6C6E75;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

uint64_t sub_1BF990CD8@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceLockState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriSuggestionsKit::DeviceType_optional __swiftcall DeviceType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_20_18();
  v2 = sub_1BF9B5488();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BF990E50@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BF990F38()
{
  result = qword_1EDBF4820;
  if (!qword_1EDBF4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4820);
  }

  return result;
}

unint64_t sub_1BF990FAC()
{
  result = qword_1EBDEA438;
  if (!qword_1EBDEA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA438);
  }

  return result;
}

unint64_t sub_1BF991000()
{
  result = qword_1EDBF4328[0];
  if (!qword_1EDBF4328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4328);
  }

  return result;
}

unint64_t sub_1BF991054()
{
  result = qword_1EDBF44F0;
  if (!qword_1EDBF44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF44F0);
  }

  return result;
}

unint64_t sub_1BF9910A8()
{
  result = qword_1EDBF4228[0];
  if (!qword_1EDBF4228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4228);
  }

  return result;
}

unint64_t sub_1BF9910FC()
{
  result = qword_1EDBF32E0;
  if (!qword_1EDBF32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32E0);
  }

  return result;
}

uint64_t sub_1BF991150(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDEA408, &unk_1BF9C6B10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF9911C8()
{
  result = qword_1EDBF3930;
  if (!qword_1EDBF3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3930);
  }

  return result;
}

unint64_t sub_1BF99121C()
{
  result = qword_1EDBF2B20;
  if (!qword_1EDBF2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF2B20);
  }

  return result;
}

unint64_t sub_1BF991290()
{
  result = qword_1EDBF4B00;
  if (!qword_1EDBF4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B00);
  }

  return result;
}

unint64_t sub_1BF9912E4()
{
  result = qword_1EDBF45B8;
  if (!qword_1EDBF45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF45B8);
  }

  return result;
}

unint64_t sub_1BF991338()
{
  result = qword_1EDBF3AB0;
  if (!qword_1EDBF3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3AB0);
  }

  return result;
}

uint64_t sub_1BF99138C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF9913EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BF991444(void *a1)
{
  a1[1] = sub_1BF9209A0(&qword_1EDBF39F0, type metadata accessor for SiriSuggestions.SystemDeviceState, &protocol conformance descriptor for SiriSuggestions.SystemDeviceState);
  a1[2] = sub_1BF9209A0(&qword_1EDBF39F8, type metadata accessor for SiriSuggestions.SystemDeviceState, &protocol conformance descriptor for SiriSuggestions.SystemDeviceState);
  result = sub_1BF9209A0(&qword_1EDBF3A00, type metadata accessor for SiriSuggestions.SystemDeviceState, &protocol conformance descriptor for SiriSuggestions.SystemDeviceState);
  a1[3] = result;
  return result;
}

unint64_t sub_1BF9914F4()
{
  result = qword_1EBDEA458;
  if (!qword_1EBDEA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA458);
  }

  return result;
}

uint64_t sub_1BF991548(void *a1)
{
  a1[1] = sub_1BF9209A0(&qword_1EDBF4AD0, type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState, &protocol conformance descriptor for SiriSuggestions.SiriRuntimeDeviceState);
  a1[2] = sub_1BF9209A0(&qword_1EDBF4AD8, type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState, &protocol conformance descriptor for SiriSuggestions.SiriRuntimeDeviceState);
  result = sub_1BF9209A0(&qword_1EDBF4AE0, type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState, &protocol conformance descriptor for SiriSuggestions.SiriRuntimeDeviceState);
  a1[3] = result;
  return result;
}

unint64_t sub_1BF9915F8()
{
  result = qword_1EBDEA460;
  if (!qword_1EBDEA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA460);
  }

  return result;
}

uint64_t sub_1BF991690(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for NetworkConnectivity(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkConnectivity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

void sub_1BF991A28(uint64_t a1)
{
  sub_1BF991C14(319, &qword_1EDBF4748, &type metadata for DeviceType, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1BF9B4558();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BF991B10(uint64_t a1)
{
  sub_1BF991C14(319, &qword_1EDBF4750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BF991C14(319, &qword_1EDBF4748, &type metadata for DeviceType, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1BF9B4558();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BF991C14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *_s22SiriRuntimeDeviceStateV12ResponseModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s22SiriRuntimeDeviceStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17SystemDeviceStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF991FE4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9920C4()
{
  result = qword_1EBDEA478;
  if (!qword_1EBDEA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA478);
  }

  return result;
}

unint64_t sub_1BF99211C()
{
  result = qword_1EBDEA480;
  if (!qword_1EBDEA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA480);
  }

  return result;
}

unint64_t sub_1BF992174()
{
  result = qword_1EBDEA488;
  if (!qword_1EBDEA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA488);
  }

  return result;
}

unint64_t sub_1BF9921CC()
{
  result = qword_1EDBF4AF0;
  if (!qword_1EDBF4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4AF0);
  }

  return result;
}

unint64_t sub_1BF992224()
{
  result = qword_1EDBF4AF8;
  if (!qword_1EDBF4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4AF8);
  }

  return result;
}

unint64_t sub_1BF99227C()
{
  result = qword_1EBDEA490;
  if (!qword_1EBDEA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA490);
  }

  return result;
}

unint64_t sub_1BF9922D4()
{
  result = qword_1EBDEA498;
  if (!qword_1EBDEA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA498);
  }

  return result;
}

unint64_t sub_1BF99232C()
{
  result = qword_1EDBF4810;
  if (!qword_1EDBF4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4810);
  }

  return result;
}

unint64_t sub_1BF992384()
{
  result = qword_1EDBF4818;
  if (!qword_1EDBF4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4818);
  }

  return result;
}

unint64_t sub_1BF9923D8()
{
  result = qword_1EDBF52D0;
  if (!qword_1EDBF52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF52D0);
  }

  return result;
}

unint64_t sub_1BF99242C()
{
  result = qword_1EDBF49B8;
  if (!qword_1EDBF49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF49B8);
  }

  return result;
}

unint64_t sub_1BF992480()
{
  result = qword_1EDBF4AE8;
  if (!qword_1EDBF4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4AE8);
  }

  return result;
}

uint64_t sub_1BF9925DC(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1BF9B4B08();
}

uint64_t UnionSignalExtractor.__allocating_init(extractors:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BF9926CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t *a4@<X8>, uint64_t (*a5)(uint64_t)@<X3>, uint64_t a6@<X4>)
{
  v11 = a2();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  a4[3] = v11;
  a4[4] = sub_1BF993CC4(a3, v13, a5, a6);
  *a4 = v12;
}

uint64_t UnionSignalExtractor.description.getter()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D90, &qword_1BF9C2B70);
  v3 = MEMORY[0x1BFB5E030](v1, v2);
  MEMORY[0x1BFB5DE90](v3);

  MEMORY[0x1BFB5DE90](93, 0xE100000000000000);
  return 0x5B6E6F696E55;
}

uint64_t UnionSignalExtractor.extract(interaction:environment:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF99283C()
{
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 112) + 16);
  sub_1BF8D2004(*(v0 + 96), v0 + 16);
  sub_1BF8D2004(v1, v0 + 56);
  v3 = swift_allocObject();
  *(v0 + 120) = v3;
  sub_1BF8C2C9C((v0 + 16), v3 + 16);
  sub_1BF8C2C9C((v0 + 56), v3 + 56);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_1BF99295C;

  return sub_1BF8E958C(v2, 0, 0, 0, &unk_1BF9C74E0, v3);
}

void sub_1BF99295C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_3();
  v4 = *v2;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  if (v1)
  {
  }

  else
  {

    v6 = *(v4 + 8);

    v6(a1);
  }
}

uint64_t sub_1BF992A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF992AB0, 0, 0);
}

uint64_t sub_1BF992AB0()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_19();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1BF992BC8;
  v7 = v0[3];
  v6 = v0[4];

  return v9(v7, v6, v2, v3);
}

uint64_t sub_1BF992BC8()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_4();

  return v5(v2);
}

uint64_t UnionSignalExtractor.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF992D30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF8D5C68;

  return UnionSignalExtractor.extract(interaction:environment:)(a1, a2);
}

uint64_t sub_1BF992DD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8D59E4;

  return sub_1BF982454();
}

void _s18SiriSuggestionsKit20UnionSignalExtractorC11signalTypesSayAA0E4Type_pGvg_0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    for (i = v1 + 32; ; i += 40)
    {
      sub_1BF8D2004(i, v22);
      sub_1BF8D2004(v22, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D90, &qword_1BF9C2B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8870, &unk_1BF9B7C10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v20 = 0;
        memset(v19, 0, sizeof(v19));
      }

      sub_1BF9930E4(v19, &v17);
      if (v18)
      {
        sub_1BF8C2C9C(&v17, v14);
        v6 = v15;
        v5 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v7 = (*(v5 + 16))(v6, v5);
        __swift_destroy_boxed_opaque_existential_1(v14);
      }

      else
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      sub_1BF993154(v19);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v8 = *(v7 + 16);
      v9 = *(v3 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v3 + 24) >> 1)
      {
        sub_1BF8DE614();
        v3 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v8)
        {
          goto LABEL_23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A48, &unk_1BF9B8540);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = *(v3 + 16);
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_24;
          }

          *(v3 + 16) = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_22;
        }
      }

      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1BF9930E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E30, &unk_1BF9C2CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF993154(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E30, &unk_1BF9C2CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ChainedSignalExtractor.extract(interaction:environment:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_2();
}

void sub_1BF9931D4()
{
  v1 = *(v0[9] + 16);
  v0[10] = v1;
  v2 = *(v1 + 16);
  v0[11] = v2;
  v0[12] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_1BF8D2004(v1 + 32, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_19();
      v3 = swift_task_alloc();
      v0[13] = v3;
      *v3 = v0;
      v4 = OUTLINED_FUNCTION_2_27(v3);

      v5(v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
    v7 = MEMORY[0x1E69E7CC0];

    v6(v7);
  }
}

uint64_t sub_1BF993324()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = v0;
  *(v0 + 112) = v2;

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1BF993424, 0, 0);
}

uint64_t sub_1BF993424()
{
  v1 = v0[14];
  if (v1 >> 62)
  {
    if (sub_1BF9B5448())
    {
      goto LABEL_6;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v3 = v0[11];
  v4 = v0[12] + 1;
  v0[12] = v4;
  if (v4 == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_4();

    return v5();
  }

  v6 = v0[10];
  if (v4 >= *(v6 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1BF8D2004(v6 + 40 * v4 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_19();
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_2_27(v7);

    return v9(v8);
  }

  return result;
}

uint64_t sub_1BF9935BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF8D5C68;

  return ChainedSignalExtractor.extract(interaction:environment:)(a1, a2);
}

uint64_t sub_1BF993698()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BF8D5B7C;

  return sub_1BF992A8C(v3, v0 + 16, v0 + 56);
}

uint64_t sub_1BF993730(uint64_t a1, uint64_t a2)
{
  result = sub_1BF993CC4(&qword_1EDBF27C8, a2, type metadata accessor for UnionSignalExtractor, &protocol conformance descriptor for UnionSignalExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF993788(uint64_t a1, uint64_t a2)
{
  result = sub_1BF993CC4(qword_1EDBF27D8, a2, type metadata accessor for UnionSignalExtractor, &protocol conformance descriptor for UnionSignalExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF9937E0(uint64_t a1, uint64_t a2)
{
  result = sub_1BF993CC4(&qword_1EDBF23D0, a2, type metadata accessor for ChainedSignalExtractor, &protocol conformance descriptor for ChainedSignalExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF993838(uint64_t a1, uint64_t a2)
{
  result = sub_1BF993CC4(qword_1EDBF23E0, a2, type metadata accessor for ChainedSignalExtractor, &protocol conformance descriptor for ChainedSignalExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of SignalExtractor.extract(interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF8D59E4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PlatformSignalExtractorProvider.get(interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF8F0EF8;

  return v13(a1, a2, a3, a4, a5);
}

_BYTE *storeEnumTagSinglePayload for SignalExtractors(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF993C68(uint64_t a1)
{
  result = sub_1BF993CC4(&qword_1EBDEA4A8, 255, type metadata accessor for NoOpSignalExtractor, &unk_1BF9C7708);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF993CC4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void static CodableWrapper.decode<A, B>(forType:forKey:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v88 = v25;
  v89 = v23;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v83 = v33;
  v84 = v32;
  sub_1BF9B50F8();
  OUTLINED_FUNCTION_1();
  v85 = v34;
  v86 = v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v79 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_1();
  v87 = v42;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_68_4();
  sub_1BF9B5588();
  sub_1BF8BF518();
  v44 = v89;
  sub_1BF9B54A8();
  if (!v44)
  {
    v81 = v38;
    v82 = v27;
    v88 = v31;
    v89 = v29;
    v45 = v86;
    sub_1BF8DF378();
    sub_1BF9B5558();
    v80 = v41;
    if (dynamic_cast_existential_1_conditional(v90[0], v90[0], MEMORY[0x1E69E6440]))
    {
      v89 = v46;
      OUTLINED_FUNCTION_11();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_61_6();
      sub_1BF9B54C8();
      sub_1BF9B4F68();
      v89 = v24;
      v60 = v40;
      v61 = v84;
      v62 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v40, v62 ^ 1u, 1, v61);
      v63 = v81;
      v64 = v85;
      (*(v45 + 16))(v81, v60, v85);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v61);
      v66 = v87;
      if (EnumTagSinglePayload == 1)
      {
        v67 = *(v45 + 8);
        v67(v63, v64);
        v68 = type metadata accessor for CodingErrors(0);
        OUTLINED_FUNCTION_1_27();
        v71 = sub_1BF8C3530(v69, v70, &protocol conformance descriptor for CodingErrors);
        OUTLINED_FUNCTION_67_2(v68, v71);
        v73 = v72;
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        __swift_storeEnumTagSinglePayload(v73, 1, 1, v74);
        swift_willThrow();
        (*(v66 + 8))(v89, v80);
        v75 = OUTLINED_FUNCTION_50_6();
        (v67)(v75);
      }

      else
      {
        (*(v87 + 8))(v89, v80);
        OUTLINED_FUNCTION_24_1();
        (*(v76 + 32))(v83, v63, v61);
        v77 = OUTLINED_FUNCTION_50_6();
        v78(v77);
      }
    }

    else
    {
      v48 = type metadata accessor for CodingErrors(0);
      OUTLINED_FUNCTION_1_27();
      v51 = sub_1BF8C3530(v49, v50, &protocol conformance descriptor for CodingErrors);
      OUTLINED_FUNCTION_67_2(v48, v51);
      v53 = v52;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v55 = v82;
      v53[3] = v89;
      v53[4] = v55;
      __swift_allocate_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_11();
      (*(v56 + 16))();
      sub_1BF9B4638();
      OUTLINED_FUNCTION_38();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
      swift_willThrow();
      (*(v87 + 8))(v24, v80);
    }
  }

  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_37();
}

uint64_t type metadata accessor for CodingErrors(uint64_t a1)
{
  result = qword_1EDBF4CB8;
  if (!qword_1EDBF4CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CodableWrapper.encode<A>(to:forKey:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D0, &qword_1BF9B84D0);
  OUTLINED_FUNCTION_1();
  v29 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_19();
  sub_1BF9B5648();
  sub_1BF8BF518();
  OUTLINED_FUNCTION_12_18(&type metadata for CodableWrapper.TypedWrapper);
  v31 = v26[3];
  __swift_project_boxed_opaque_existential_1(v26, v31);
  v35 = v31;
  __swift_allocate_boxed_opaque_existential_1Tm(v34);
  OUTLINED_FUNCTION_24_1();
  (*(v32 + 16))();
  __swift_project_boxed_opaque_existential_1(v34, v35);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v34);
  v34[0] = DynamicType;
  sub_1BF8C328C();
  sub_1BF9B5638();
  if (!v23)
  {
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1BF9B55A8();
    sub_1BF9B4A28();
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.decodeOptional<A, B>(forType:forKey:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v98 = v24;
  v99 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v94 = v32;
  v95 = v31;
  v97 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1();
  v93 = v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v89 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_1();
  v96 = v40;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_10_19();
  sub_1BF9B5588();
  sub_1BF8BF518();
  v42 = v99;
  sub_1BF9B54A8();
  if (!v42)
  {
    v91 = v26;
    v92 = v30;
    v98 = v28;
    v99 = 0;
    v89 = v37;
    v90 = v39;
    v43 = v97;
    LOBYTE(v100) = 1;
    if ((sub_1BF9B5578() & 1) == 0)
    {
      v47 = OUTLINED_FUNCTION_1_12();
      v48(v47);
      __swift_storeEnumTagSinglePayload(v94, 1, 1, v95);
      goto LABEL_6;
    }

    sub_1BF8DF378();
    v44 = v99;
    sub_1BF9B5558();
    if (v44)
    {
      goto LABEL_4;
    }

    if (!dynamic_cast_existential_1_conditional(v100, v100, MEMORY[0x1E69E6440]))
    {
      v51 = type metadata accessor for CodingErrors(0);
      OUTLINED_FUNCTION_1_27();
      v54 = sub_1BF8C3530(v52, v53, &protocol conformance descriptor for CodingErrors);
      OUTLINED_FUNCTION_67_2(v51, v54);
      v56 = v55;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v58 = v91;
      v56[3] = v98;
      v56[4] = v58;
      __swift_allocate_boxed_opaque_existential_1Tm(v56);
      OUTLINED_FUNCTION_11();
      (*(v59 + 16))();
      sub_1BF9B4638();
      OUTLINED_FUNCTION_38();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v57);
      swift_willThrow();
LABEL_4:
      v45 = OUTLINED_FUNCTION_1_12();
      v46(v45);
      goto LABEL_6;
    }

    v99 = v49;
    OUTLINED_FUNCTION_11();
    MEMORY[0x1EEE9AC00](v50);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_61_6();
    sub_1BF9B54C8();
    sub_1BF9B4F68();
    v99 = 0;
    v63 = v90;
    v64 = v95;
    v65 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v63, v65 ^ 1u, 1, v64);
    v66 = v93;
    v67 = v43;
    v68 = v89;
    (*(v93 + 16))();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v64);
    if (EnumTagSinglePayload == 1)
    {
      v70 = *(v66 + 8);
      v70(v68, v67);
      v71 = type metadata accessor for CodingErrors(0);
      OUTLINED_FUNCTION_1_27();
      v74 = sub_1BF8C3530(v72, v73, &protocol conformance descriptor for CodingErrors);
      OUTLINED_FUNCTION_67_2(v71, v74);
      v76 = v75;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      __swift_storeEnumTagSinglePayload(v76, 1, 1, v77);
      swift_willThrow();
      v78 = OUTLINED_FUNCTION_1_12();
      v79(v78);
      v80 = OUTLINED_FUNCTION_50_6();
      (v70)(v80);
    }

    else
    {
      v81 = OUTLINED_FUNCTION_1_12();
      v82(v81);
      OUTLINED_FUNCTION_24_1();
      OUTLINED_FUNCTION_35_10();
      v83();
      OUTLINED_FUNCTION_38();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v64);
      v87 = OUTLINED_FUNCTION_50_6();
      v88(v87);
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.encodeOptional<A>(to:forKey:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D0, &qword_1BF9B84D0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_38_8();
  sub_1BF9B5648();
  sub_1BF8BF518();
  OUTLINED_FUNCTION_12_18(&type metadata for CodableWrapper.TypedWrapper);
  sub_1BF998494(v22, &v31, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  if (v32)
  {
    sub_1BF8C2C9C(&v31, v33);
    v24 = v34;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v32 = v24;
    __swift_allocate_boxed_opaque_existential_1Tm(&v31);
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_35_10();
    v25();
    __swift_project_boxed_opaque_existential_1(&v31, v32);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v31);
    *&v31 = DynamicType;
    sub_1BF8C328C();
    sub_1BF9B5638();
    if (!v20)
    {
      __swift_project_boxed_opaque_existential_1(v33, v34);
      sub_1BF9B55A8();
      sub_1BF9B4A28();
      __swift_destroy_boxed_opaque_existential_1(&v31);
    }

    v27 = OUTLINED_FUNCTION_22_11();
    v28(v27);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v29 = OUTLINED_FUNCTION_22_11();
    v30(v29);
    sub_1BF8E8118(&v31, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  }

  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.decodeDictionary<A, B>(forType:forKey:container:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v23 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  OUTLINED_FUNCTION_1();
  v24 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  OUTLINED_FUNCTION_38_8();
  sub_1BF9B5588();
  sub_1BF919B68();
  v31 = v10;
  sub_1BF9B54A8();
  if (!v0)
  {
    v22 = v4;
    v11 = v23;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    LOBYTE(v30) = 0;
    OUTLINED_FUNCTION_10_1(&qword_1EDBF0578, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_65_6();
    sub_1BF9B5558();
    v21 = v6;
    v13 = v25;
    LOBYTE(v25) = 1;
    static CodableWrapper.decodeArray<A, B>(forType:forKey:container:)();
    v25 = v13;
    *&v29 = v14;
    OUTLINED_FUNCTION_38_8();
    v15 = sub_1BF9B4E08();
    v16 = sub_1BF997328();
    OUTLINED_FUNCTION_2_1();
    v20[1] = v17;
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_63_4();
    sub_1BF9B5738();

    v29 = v30;
    swift_getTupleTypeMetadata2();
    v25 = v12;
    v26 = v15;
    v27 = v16;
    v28 = WitnessTable;
    sub_1BF9B52B8();
    OUTLINED_FUNCTION_16_18();
    swift_getWitnessTable();
    v25 = sub_1BF9B4E18();
    MEMORY[0x1EEE9AC00](v25);
    v19 = v22;
    v20[-4] = v11;
    v20[-3] = v19;
    v20[-2] = v2;
    sub_1BF9B4E08();
    swift_getWitnessTable();
    sub_1BF9B49E8();
    (*(v24 + 8))(v31, v21);
  }

  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.encodeDictionary<A>(to:forKey:instance:)()
{
  OUTLINED_FUNCTION_39();
  v41 = v0;
  v2 = v1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  OUTLINED_FUNCTION_1();
  v43 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - v5;
  OUTLINED_FUNCTION_35_10();
  sub_1BF9B5648();
  sub_1BF919B68();
  v42 = v6;
  OUTLINED_FUNCTION_12_18(&type metadata for CodableWrapper.IterableWrapper);
  OUTLINED_FUNCTION_70_3();
  sub_1BF8DD6D4();
  v8 = v7;
  OUTLINED_FUNCTION_70_3();
  sub_1BF8DD618();
  v10 = v9;
  v11 = v2 + 64;
  OUTLINED_FUNCTION_1_2();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v45 = v2;

  v17 = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  do
  {
    v53 = v10;
LABEL_7:
    OUTLINED_FUNCTION_67_5();
    v20 = *v19;
    v21 = v19[1];
    sub_1BF8D2004(v23 + 40 * v22, v52);
    v50[0] = v20;
    v50[1] = v21;
    sub_1BF8C2C9C(v52, v51);
    v24 = OUTLINED_FUNCTION_30_4();
    sub_1BF998494(v24, v25, &qword_1EBDE95A0, &qword_1BF9BEF98);
    v26 = v48;
    v46 = v47;
    v27 = v8;
    v28 = *(v8 + 16);
    v29 = v27;
    v30 = *(v27 + 24);

    if (v28 >= v30 >> 1)
    {
      sub_1BF8DD6D4();
      v29 = v35;
    }

    *(v29 + 16) = v28 + 1;
    v31 = v29 + 16 * v28;
    v8 = v29;
    *(v31 + 32) = v46;
    *(v31 + 40) = v26;
    __swift_destroy_boxed_opaque_existential_1(&v49);
    v32 = OUTLINED_FUNCTION_30_4();
    sub_1BF998494(v32, v33, &qword_1EBDE95A0, &qword_1BF9BEF98);

    v10 = v53;
    v34 = *(v53 + 16);
    if (v34 >= *(v53 + 24) >> 1)
    {
      sub_1BF8DD618();
      v10 = v36;
    }

    v14 &= v14 - 1;
    sub_1BF8E8118(v50, &qword_1EBDE95A0, &qword_1BF9BEF98);
    *(v10 + 16) = v34 + 1;
    sub_1BF8C2C9C(&v49, v10 + 40 * v34 + 32);
  }

  while (v14);
  while (1)
  {
LABEL_3:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return;
    }

    if (v18 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v53 = v10;
      v17 = v18;
      goto LABEL_7;
    }
  }

  v51[5] = v8;
  LOBYTE(v50[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_11_10(&qword_1EDBF4B20, MEMORY[0x1E69E6160]);
  OUTLINED_FUNCTION_66_4();
  v38 = *(v37 - 256);
  v39 = v42;
  v40 = v41;
  sub_1BF9B5638();

  if (!v40)
  {
    sub_1BF995FDC();
  }

  (*(v43 + 8))(v39, v38);

  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.decodeDictionaryWithOptionals<A, B>(forType:forKey:container:)()
{
  OUTLINED_FUNCTION_39();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  OUTLINED_FUNCTION_1();
  v6 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_19();
  sub_1BF9B5588();
  sub_1BF919B68();
  sub_1BF9B54A8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    OUTLINED_FUNCTION_10_1(&qword_1EDBF0578, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_65_6();
    sub_1BF9B5558();
    static CodableWrapper.decodeArrayWithOptionals<A, B>(forType:forKey:container:)();
    sub_1BF9B50F8();
    sub_1BF9B4E08();
    sub_1BF997328();
    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_63_4();
    sub_1BF9B5738();

    swift_getTupleTypeMetadata2();
    sub_1BF9B52B8();
    OUTLINED_FUNCTION_16_18();
    swift_getWitnessTable();
    v5 = sub_1BF9B4E18();
    MEMORY[0x1EEE9AC00](v5);
    sub_1BF9B4E08();
    swift_getWitnessTable();
    sub_1BF9B49E8();
    (*(v6 + 8))(v1, v2);
  }

  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.encodeDictionaryWithOptionals<A>(to:forKey:instance:)()
{
  OUTLINED_FUNCTION_39();
  v37 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  OUTLINED_FUNCTION_1();
  v39 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_19();
  sub_1BF9B5648();
  sub_1BF919B68();
  v38 = v1;
  sub_1BF9B5598();
  OUTLINED_FUNCTION_70_3();
  sub_1BF8DD6D4();
  v52 = v6;
  OUTLINED_FUNCTION_70_3();
  sub_1BF8DD788();
  v8 = v7;
  v9 = v3 + 64;
  OUTLINED_FUNCTION_1_2();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;

  v15 = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  do
  {
    v40 = v8;
LABEL_7:
    OUTLINED_FUNCTION_67_5();
    v18 = *v17;
    v19 = v17[1];
    sub_1BF998494(v21 + 40 * v20, v50, &qword_1EBDE8AB8, &qword_1BF9B85C0);
    v45[0] = v18;
    v45[1] = v19;
    v46 = v50[0];
    v47 = v50[1];
    v48 = v51;
    v22 = OUTLINED_FUNCTION_30_4();
    sub_1BF998494(v22, v23, &qword_1EBDEA248, &qword_1BF9C7790);
    v25 = *(v52 + 16);
    v24 = *(v52 + 24);

    if (v25 >= v24 >> 1)
    {
      sub_1BF8DD6D4();
      v52 = v33;
    }

    *(v52 + 16) = v25 + 1;
    v26 = v52 + 16 * v25;
    *(v26 + 32) = v41;
    *(v26 + 40) = v42;
    sub_1BF8E8118(v43, &qword_1EBDE8AB8, &qword_1BF9B85C0);
    v27 = OUTLINED_FUNCTION_30_4();
    sub_1BF998494(v27, v28, &qword_1EBDEA248, &qword_1BF9C7790);

    v8 = v40;
    v29 = *(v40 + 16);
    if (v29 >= *(v40 + 24) >> 1)
    {
      sub_1BF8DD788();
      v8 = v34;
    }

    v12 &= v12 - 1;
    sub_1BF8E8118(v45, &qword_1EBDEA248, &qword_1BF9C7790);
    *(v8 + 16) = v29 + 1;
    v30 = v8 + 40 * v29;
    v31 = v44;
    v32 = v43[1];
    *(v30 + 32) = v43[0];
    *(v30 + 48) = v32;
    *(v30 + 64) = v31;
  }

  while (v12);
  while (1)
  {
LABEL_3:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return;
    }

    if (v16 >= v14)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v40 = v8;
      v15 = v16;
      goto LABEL_7;
    }
  }

  v49 = v52;
  LOBYTE(v45[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_11_10(&qword_1EDBF4B20, MEMORY[0x1E69E6160]);
  OUTLINED_FUNCTION_66_4();
  v36 = *(v35 - 256);
  sub_1BF9B5638();

  if (!v37)
  {
    sub_1BF996908();
  }

  (*(v39 + 8))(v38, v36);

  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.decodeArray<A, B>(forType:forKey:container:)()
{
  OUTLINED_FUNCTION_39();
  v80 = v0;
  v3 = v2;
  v5 = v4;
  v71 = v6;
  v7 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1();
  v81 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  OUTLINED_FUNCTION_1();
  v70 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_68_4();
  v15 = sub_1BF9B5588();
  sub_1BF8DF500();
  OUTLINED_FUNCTION_53_8();
  v16 = v80;
  sub_1BF9B54A8();
  if (v16)
  {
LABEL_77:
    OUTLINED_FUNCTION_37();
    return;
  }

  v78 = v11;
  v79 = v5;
  v68 = v12;
  v69 = v7;
  v17 = sub_1BF9B5568();
  v18 = v71;
  v19 = sub_1BF996C14(*(v17 + 16), v71);
  v20 = v17;
  v85 = v19;
  v21 = *(v17 + 16);
  v22 = v18;
  v80 = v1;
  v77 = v21;
  if (!v21)
  {

    v18 = v79;
LABEL_76:
    v82[0] = v19;
    MEMORY[0x1EEE9AC00](v63);
    *(&v66 - 4) = v22;
    *(&v66 - 3) = v18;
    *(&v66 - 2) = v64;
    sub_1BF9B4E08();

    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_48_7();

    OUTLINED_FUNCTION_62_7();
    v65(v80, v68);

    goto LABEL_77;
  }

  v23 = 0;
  v75 = v20;
  v76 = v20 + 32;
  v72 = v82 + 1;
  v73 = v81 + 40;
  v67 = v3;
  v24 = v69;
  v74 = v15;
  while (v23 < *(v20 + 16))
  {
    OUTLINED_FUNCTION_55_8();
    if (!v27)
    {
      goto LABEL_79;
    }

    v28 = *(v26 + 16);
    v29 = *(v26 + 24);
    if ((v18 & 0x1000000000000000) == 0)
    {
      if ((v18 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_69_3();
        if (v33)
        {
          if (!v37)
          {
            goto LABEL_84;
          }

          if (v37 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v33 & v32)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v33 || __OFADD__(v44, v43))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v33)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v38 == 45)
        {
          if (!v37)
          {
            goto LABEL_83;
          }

          if (v37 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v33 & v32)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v33 || __OFSUB__(v40, v39))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v33)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v37)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v33 & v32)
            {
              break;
            }

            OUTLINED_FUNCTION_2_28();
            if (!v33 || __OFADD__(v50, v49))
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (v33)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else
      {
        if ((v19 & 0x1000000000000000) != 0)
        {
          v30 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          OUTLINED_FUNCTION_36_6();
          v30 = sub_1BF9B5318();
        }

        v31 = *v30;
        if (v31 == 43)
        {
          if (v25 < 1)
          {
            goto LABEL_82;
          }

          if (v25 != 1)
          {
            if (!v30)
            {
              goto LABEL_59;
            }

            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v33 & v32)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v33 || __OFADD__(v42, v41))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v33)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v31 == 45)
        {
          if (v25 < 1)
          {
            goto LABEL_81;
          }

          if (v25 != 1)
          {
            if (v30)
            {
              while (1)
              {
                OUTLINED_FUNCTION_3_27();
                if (!v33 & v32)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_2_28();
                if (!v33 || __OFSUB__(v35, v34))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_10_2();
                if (v33)
                {
                  goto LABEL_69;
                }
              }
            }

LABEL_59:
            v36 = 0;
LABEL_69:
            v84 = v36;
            v51 = v36;

            if (v51)
            {
              goto LABEL_80;
            }

            goto LABEL_70;
          }
        }

        else
        {
          if (!v25)
          {
            goto LABEL_68;
          }

          if (!v30)
          {
            goto LABEL_59;
          }

          while (*v30 - 48 <= 9)
          {
            OUTLINED_FUNCTION_52_7();
            if (!v33 || __OFADD__(v48, v47))
            {
              break;
            }

            v30 = (v45 + 1);
            if (v46 == 1)
            {
              goto LABEL_59;
            }
          }
        }
      }

LABEL_68:
      v36 = 1;
      goto LABEL_69;
    }

    swift_bridgeObjectRetain_n();
    v60 = OUTLINED_FUNCTION_36_6();
    sub_1BF99854C(v60, v61, 10);
    HIDWORD(v66) = v62;

    if ((v66 & 0x100000000) != 0)
    {
      goto LABEL_80;
    }

LABEL_70:
    v82[0] = v19;
    v82[1] = v18;
    v82[2] = v28;
    v83 = v29;
    v19 = v78;
    static CodableWrapper.decode<A, B>(forType:forKey:container:)(v52, v82, v80, v22, &type metadata for CodableWrapper.ArrayKeys, v74, v53, v54, v66, v67, SWORD2(v67), SBYTE6(v67), SHIBYTE(v67), v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
    ++v23;

    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v22);
    OUTLINED_FUNCTION_38_8();
    sub_1BF9B4E08();
    sub_1BF9B4D68();
    OUTLINED_FUNCTION_73_3();
    v58 = OUTLINED_FUNCTION_30_11();
    v59(v58, v19, v24);
    v18 = v79;
    v20 = v75;
    if (v23 == v77)
    {

      v19 = v85;
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_79:

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
}

void sub_1BF995FDC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A50, &unk_1BF9B9710);
  OUTLINED_FUNCTION_1();
  v24 = v2;
  v25 = v1;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  sub_1BF8DF500();
  OUTLINED_FUNCTION_24_12(&type metadata for CodableWrapper.ArrayKeys);
  OUTLINED_FUNCTION_60_5();
  while (1)
  {
    v6.n128_f64[0] = OUTLINED_FUNCTION_42_11();
    if (v9)
    {
      goto LABEL_6;
    }

    if (v4)
    {
      break;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_57_9(v5);
    v8 = v30;
    v7 = v31;
    v6 = v32;
LABEL_6:
    OUTLINED_FUNCTION_46_6(v6, v7, v8);
    if (!v13)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_72_4(v10, v11, v12);
    v14 = sub_1BF9B51B8();
    OUTLINED_FUNCTION_7_20(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1));
    if (v0)
    {

      __swift_destroy_boxed_opaque_existential_1(&v30);
LABEL_10:
      v22 = OUTLINED_FUNCTION_19_5();
      v23(v22);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_37();
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(&v30);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1BF99614C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A50, &unk_1BF9B9710);
  OUTLINED_FUNCTION_1();
  v24 = v2;
  v25 = v1;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DB8, &unk_1BF9C81C0);
  sub_1BF8DF500();
  OUTLINED_FUNCTION_24_12(&type metadata for CodableWrapper.ArrayKeys);
  OUTLINED_FUNCTION_60_5();
  while (1)
  {
    v6.n128_f64[0] = OUTLINED_FUNCTION_42_11();
    if (v9)
    {
      goto LABEL_6;
    }

    if (v4)
    {
      break;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_57_9(v5);
    v8 = v30;
    v7 = v31;
    v6 = v32;
LABEL_6:
    OUTLINED_FUNCTION_46_6(v6, v7, v8);
    if (!v13)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_72_4(v10, v11, v12);
    v14 = sub_1BF9B51B8();
    OUTLINED_FUNCTION_7_20(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1));
    if (v0)
    {

      __swift_destroy_boxed_opaque_existential_1(&v30);
LABEL_10:
      v22 = OUTLINED_FUNCTION_19_5();
      v23(v22);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_37();
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(&v30);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void static CodableWrapper.encodeArray<A>(to:forKey:instance:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_34_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A50, &unk_1BF9B9710);
  OUTLINED_FUNCTION_1();
  v23 = v3;
  v24 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_35_10();
  sub_1BF9B5648();
  sub_1BF8DF500();
  OUTLINED_FUNCTION_12_18(&type metadata for CodableWrapper.ArrayKeys);
  while (1)
  {
    v7.n128_f64[0] = OUTLINED_FUNCTION_42_11();
    if (v10)
    {
      goto LABEL_6;
    }

    if (v5)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_12;
    }

    *&v26 = v6;
    sub_1BF8D2004(v1 + 32 + 40 * v6, &v26 + 8);
    v9 = v26;
    v8 = v27;
    v7 = v28;
LABEL_6:
    OUTLINED_FUNCTION_46_6(v7, v8, v9);
    if (!v12)
    {
      goto LABEL_10;
    }

    v25 = v11;
    sub_1BF8C2C9C(&v30, &v26);
    sub_1BF998A84();
    v13 = sub_1BF9B51B8();
    OUTLINED_FUNCTION_7_20(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, v30);
    if (v0)
    {

      __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_10:
      v21 = OUTLINED_FUNCTION_19_5();
      v22(v21);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_37();
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1BF996458(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_70(1701869940, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D656C65 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_70(0x746E656D656C65, 0xE700000000000000);
    OUTLINED_FUNCTION_59_9();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF996504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937335659 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_70(1937335659, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_70(0x7365756C6176, 0xE600000000000000);
    OUTLINED_FUNCTION_59_9();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF9965A8(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1937335659;
  }
}

uint64_t sub_1BF9965EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF996458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF996614(uint64_t a1)
{
  v2 = sub_1BF8BF518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF996650(uint64_t a1)
{
  v2 = sub_1BF8BF518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9966A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9966F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF996504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF996720(uint64_t a1)
{
  v2 = sub_1BF919B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF99675C(uint64_t a1)
{
  v2 = sub_1BF919B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9967F0()
{
  v1 = *v0;

  return v1;
}

void sub_1BF996820(uint64_t a1@<X8>)
{
  sub_1BF996798();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_1BF996860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BF9967A4(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1BF996890(uint64_t a1)
{
  v2 = sub_1BF8DF500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9968CC(uint64_t a1)
{
  v2 = sub_1BF8DF500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF996C14(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF9B50F8();
  MEMORY[0x1EEE9AC00](v3);
  __swift_storeEnumTagSinglePayload(&v6 - v4, 1, 1, a2);
  return sub_1BF9B4DF8();
}

uint64_t TypeTransport.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = DynamicType;
  return result;
}

void static CodableWrapper.decodeArrayWithOptionals<A, B>(forType:forKey:container:)()
{
  OUTLINED_FUNCTION_39();
  v76 = v0;
  v3 = v2;
  v5 = v4;
  v78 = v6;
  v7 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1();
  v77 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  OUTLINED_FUNCTION_1();
  v67 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_77_0();
  v15 = sub_1BF9B5588();
  sub_1BF8DF500();
  OUTLINED_FUNCTION_53_8();
  v16 = v76;
  sub_1BF9B54A8();
  if (v16)
  {
LABEL_77:
    OUTLINED_FUNCTION_37();
    return;
  }

  v73 = v11;
  v74 = v3;
  v66 = v7;
  v75 = v5;
  v76 = v1;
  v17 = v1;
  v18 = sub_1BF9B5568();
  v19 = sub_1BF996C14(*(v18 + 16), v78);
  v82 = v19;
  v72 = *(v18 + 16);
  if (!v72)
  {
    v60 = v19;

    v17 = v74;
    v55 = v75;
LABEL_76:
    v79[0] = v60;
    MEMORY[0x1EEE9AC00](v59);
    *(&v62 - 4) = v78;
    *(&v62 - 3) = v55;
    *(&v62 - 2) = v17;
    sub_1BF9B4E08();

    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_48_7();

    OUTLINED_FUNCTION_62_7();
    v61(v76, v12);

    goto LABEL_77;
  }

  v65 = v12;
  v20 = 0;
  v70 = v15;
  v71 = v18 + 32;
  v68 = v79 + 1;
  v69 = v77 + 40;
  v21 = v66;
  while (v20 < *(v18 + 16))
  {
    OUTLINED_FUNCTION_55_8();
    if (!v24)
    {
      goto LABEL_79;
    }

    v25 = *(v23 + 16);
    v26 = *(v23 + 24);
    if ((v17 & 0x1000000000000000) == 0)
    {
      if ((v17 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_69_3();
        if (v30)
        {
          if (!v34)
          {
            goto LABEL_84;
          }

          if (v34 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v30 & v29)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v30 || __OFADD__(v41, v40))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v30)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v35 == 45)
        {
          if (!v34)
          {
            goto LABEL_83;
          }

          if (v34 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v30 & v29)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v30 || __OFSUB__(v37, v36))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v30)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v34)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v30 & v29)
            {
              break;
            }

            OUTLINED_FUNCTION_2_28();
            if (!v30 || __OFADD__(v47, v46))
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (v30)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          v27 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          OUTLINED_FUNCTION_36_6();
          v27 = sub_1BF9B5318();
        }

        v28 = *v27;
        if (v28 == 43)
        {
          if (v22 < 1)
          {
            goto LABEL_82;
          }

          if (v22 != 1)
          {
            if (!v27)
            {
              goto LABEL_59;
            }

            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v30 & v29)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v30 || __OFADD__(v39, v38))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v30)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v28 == 45)
        {
          if (v22 < 1)
          {
            goto LABEL_81;
          }

          if (v22 != 1)
          {
            if (v27)
            {
              while (1)
              {
                OUTLINED_FUNCTION_3_27();
                if (!v30 & v29)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_2_28();
                if (!v30 || __OFSUB__(v32, v31))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_10_2();
                if (v30)
                {
                  goto LABEL_69;
                }
              }
            }

LABEL_59:
            v33 = 0;
LABEL_69:
            v81 = v33;
            v48 = v33;

            if (v48)
            {
              goto LABEL_80;
            }

            goto LABEL_70;
          }
        }

        else
        {
          if (!v22)
          {
            goto LABEL_68;
          }

          if (!v27)
          {
            goto LABEL_59;
          }

          while (*v27 - 48 <= 9)
          {
            OUTLINED_FUNCTION_52_7();
            if (!v30 || __OFADD__(v45, v44))
            {
              break;
            }

            v27 = (v42 + 1);
            if (v43 == 1)
            {
              goto LABEL_59;
            }
          }
        }
      }

LABEL_68:
      v33 = 1;
      goto LABEL_69;
    }

    swift_bridgeObjectRetain_n();
    v56 = OUTLINED_FUNCTION_36_6();
    sub_1BF99854C(v56, v57, 10);
    v64 = v58;

    if (v64)
    {
      goto LABEL_80;
    }

LABEL_70:
    v79[0] = v11;
    v79[1] = v17;
    v79[2] = v25;
    v80 = v26;
    v52 = v73;
    v11 = v76;
    static CodableWrapper.decodeOptional<A, B>(forType:forKey:container:)(v49, v79, v76, v78, &type metadata for CodableWrapper.ArrayKeys, v70, v50, v51, v62, v63, v64, SBYTE2(v64), SHIBYTE(v64), v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
    ++v20;

    OUTLINED_FUNCTION_38_8();
    sub_1BF9B4E08();
    sub_1BF9B4D68();
    OUTLINED_FUNCTION_73_3();
    v53 = OUTLINED_FUNCTION_30_11();
    v54(v53, v52, v21);
    v17 = v74;
    v55 = v75;
    if (v20 == v72)
    {

      v60 = v82;
      v12 = v65;
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_79:

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
}

uint64_t sub_1BF997298@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1BF9B50F8();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v5);
}

unint64_t sub_1BF997328()
{
  result = qword_1EDBF0580;
  if (!qword_1EDBF0580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0580);
  }

  return result;
}

void TypeTransport.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v30 = v4;
  v5 = sub_1BF9B4668();
  OUTLINED_FUNCTION_1();
  v31 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v33 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4C0, &qword_1BF9C7798);
  OUTLINED_FUNCTION_1();
  v32 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_32_12(v3);
  v13 = sub_1BF8C34DC();
  sub_1BF9B5868();
  if (!v0)
  {
    OUTLINED_FUNCTION_17_18();
    sub_1BF8C3530(v14, v15, MEMORY[0x1E69D35A0]);
    sub_1BF9B5558();
    sub_1BF9B4648();
    v16 = sub_1BF9B52A8();

    if (v16)
    {
      (*(v31 + 8))(v33, v5);
      (*(v32 + 8))(v1, v10);
      *v30 = v16;
    }

    else
    {
      v17 = type metadata accessor for CodingErrors(0);
      OUTLINED_FUNCTION_1_27();
      v20 = sub_1BF8C3530(v18, v19, &protocol conformance descriptor for CodingErrors);
      OUTLINED_FUNCTION_67_2(v17, v20);
      v22 = v21;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v24 = *(v23 + 48);
      *(v22 + 24) = &type metadata for TypeTransport.CodingKeys;
      *(v22 + 32) = v13;
      (*(v31 + 16))(v22 + v24, v33, v5);
      OUTLINED_FUNCTION_38();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
      swift_willThrow();
      v28 = OUTLINED_FUNCTION_41_8();
      v29(v28);
      (*(v32 + 8))(v1, v10);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9976D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    sub_1BF9B56D8();
    OUTLINED_FUNCTION_59_9();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF997748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9976D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF997774(uint64_t a1)
{
  v2 = sub_1BF8C34DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9977B0(uint64_t a1)
{
  v2 = sub_1BF8C34DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void NSCodingAdaptor.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4D0, &qword_1BF9C77A8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_32_12(v2);
  v6 = sub_1BF998AF8();
  OUTLINED_FUNCTION_33_11(&type metadata for NSCodingAdaptor.CodingKeys, v7, v6);
  if (!v0)
  {
    v8 = sub_1BF997910();
    v9 = OUTLINED_FUNCTION_5_17();
    v10(v9);
    *v4 = v8;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF997910()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4D0, &qword_1BF9C77A8);
  sub_1BF9023EC();
  result = sub_1BF9B5558();
  if (!v0)
  {
    v3 = v9;
    v2 = v10;
    v4 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    sub_1BF8F9A50(v9, v10);
    v5 = sub_1BF998394(v9, v10);
    [v5 setRequiresSecureCoding_];
    sub_1BF9B4AA8();
    sub_1BF9B50A8();

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
      if (swift_dynamicCast())
      {

        sub_1BF8F9F3C(v9, v10);
        return v12;
      }
    }

    else
    {
      sub_1BF8E8118(&v9, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    type metadata accessor for CodingErrors(0);
    sub_1BF8C3530(qword_1EDBF36D8, type metadata accessor for CodingErrors, &protocol conformance descriptor for CodingErrors);
    swift_allocError();
    v7 = v6;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
    *(v7 + 24) = &type metadata for NSCodingAdaptor.CodingKeys;
    *(v7 + 32) = sub_1BF998AF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
    sub_1BF9B4638();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    swift_willThrow();

    return sub_1BF8F9F3C(v3, v2);
  }

  return result;
}

uint64_t sub_1BF997B60(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:0 error:v8];
  v2 = v8[0];
  if (v1)
  {
    v3 = sub_1BF9B4448();
    v5 = v4;

    v8[0] = v3;
    v8[1] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4D8, &unk_1BF9C77B0);
    sub_1BF8FC3CC();
    sub_1BF9B5638();
    return sub_1BF8F9F3C(v3, v5);
  }

  else
  {
    v7 = v2;
    sub_1BF9B4348();

    return swift_willThrow();
  }
}

uint64_t sub_1BF997C94(uint64_t a1)
{
  v2 = sub_1BF998AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF997CD0(uint64_t a1)
{
  v2 = sub_1BF998AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TransportWrapper.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A38, &qword_1BF9B8530);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_32_12(v2);
  v6 = sub_1BF8BF584();
  OUTLINED_FUNCTION_33_11(&type metadata for TransportWrapper.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_1BF8D8C18();
    v8 = v15;
    v12 = v14;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    *(v4 + 24) = v12;
    *(v4 + 40) = v8;
    __swift_allocate_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_11();
    (*(v9 + 16))();
    v10 = OUTLINED_FUNCTION_22_11();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF997ED0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1BF9B56D8();
    OUTLINED_FUNCTION_59_9();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF997F40(uint64_t a1)
{
  v2 = sub_1BF8BF584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF997F7C(uint64_t a1)
{
  v2 = sub_1BF8BF584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableSendableDictionary.dictionary.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void CodableSendableDictionary.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95E8, &unk_1BF9BEFD0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_32_12(v3);
  v7 = sub_1BF998B4C();
  OUTLINED_FUNCTION_33_11(&type metadata for CodableSendableDictionary.CodingKeys, v8, v7);
  if (!v0)
  {
    v9 = sub_1BF915750(v1);
    v10 = OUTLINED_FUNCTION_5_17();
    v11(v10);
    *v5 = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

void CodableSendableDictionary.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95E0, &qword_1BF9C77D0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_11();
  v8 = *v0;
  OUTLINED_FUNCTION_32_12(v3);
  v9 = sub_1BF998B4C();
  OUTLINED_FUNCTION_74_2(&type metadata for CodableSendableDictionary.CodingKeys, v10, v9);
  sub_1BF91B788(v8);
  sub_1BF91619C();
  (*(v6 + 8))(v1, v4);

  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF99822C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
  {

    v4 = 0;
  }

  else
  {
    sub_1BF9B56D8();
    OUTLINED_FUNCTION_59_9();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF9982C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF99822C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF9982EC(uint64_t a1)
{
  v2 = sub_1BF998B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF998328(uint64_t a1)
{
  v2 = sub_1BF998B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1BF998394(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BF9B4428();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_1BF9B4348();

    swift_willThrow();
  }

  sub_1BF8F9F3C(a1, a2);
  return v7;
}

uint64_t sub_1BF998494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF9984F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_1BF99854C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_1BF9B4C48();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BF95D868(result, v5);
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BF9B5318();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_49_6();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_56_6();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_49_6();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_56_6();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_8_15();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_56_6();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_8_15();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_56_6();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_8_15();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_56_6();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

unint64_t sub_1BF998A84()
{
  result = qword_1EDBF4B30;
  if (!qword_1EDBF4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B30);
  }

  return result;
}

unint64_t sub_1BF998AF8()
{
  result = qword_1EDBF4C38;
  if (!qword_1EDBF4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4C38);
  }

  return result;
}

unint64_t sub_1BF998B4C()
{
  result = qword_1EDBF4210;
  if (!qword_1EDBF4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4210);
  }

  return result;
}

uint64_t sub_1BF998BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BF998C10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF998C94(uint64_t a1)
{
  sub_1BF998CEC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1BF998CEC(uint64_t a1)
{
  if (!qword_1EDBF4B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDEA4E0, &qword_1BF9C7A88);
    sub_1BF9B4668();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBF4B18);
    }
  }
}

_BYTE *sub_1BF998D9C(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF998E48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1BF998E88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BF998EF0()
{
  result = qword_1EBDEA4E8;
  if (!qword_1EBDEA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA4E8);
  }

  return result;
}

unint64_t sub_1BF998F48()
{
  result = qword_1EBDEA4F0;
  if (!qword_1EBDEA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA4F0);
  }

  return result;
}

unint64_t sub_1BF998FA0()
{
  result = qword_1EBDEA4F8;
  if (!qword_1EBDEA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA4F8);
  }

  return result;
}

unint64_t sub_1BF998FF8()
{
  result = qword_1EBDEA500;
  if (!qword_1EBDEA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA500);
  }

  return result;
}

unint64_t sub_1BF999050()
{
  result = qword_1EBDEA508;
  if (!qword_1EBDEA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA508);
  }

  return result;
}

unint64_t sub_1BF9990A8()
{
  result = qword_1EBDEA510;
  if (!qword_1EBDEA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA510);
  }

  return result;
}

unint64_t sub_1BF999100()
{
  result = qword_1EDBF4200;
  if (!qword_1EDBF4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4200);
  }

  return result;
}

unint64_t sub_1BF999158()
{
  result = qword_1EDBF4208;
  if (!qword_1EDBF4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4208);
  }

  return result;
}

unint64_t sub_1BF9991B0()
{
  result = qword_1EDBF50A0;
  if (!qword_1EDBF50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF50A0);
  }

  return result;
}

unint64_t sub_1BF999208()
{
  result = qword_1EDBF50A8;
  if (!qword_1EDBF50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF50A8);
  }

  return result;
}

unint64_t sub_1BF999260()
{
  result = qword_1EDBF4C28;
  if (!qword_1EDBF4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4C28);
  }

  return result;
}

unint64_t sub_1BF9992B8()
{
  result = qword_1EDBF4C30;
  if (!qword_1EDBF4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4C30);
  }

  return result;
}

unint64_t sub_1BF999310()
{
  result = qword_1EDBF5648;
  if (!qword_1EDBF5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5648);
  }

  return result;
}

unint64_t sub_1BF999368()
{
  result = qword_1EDBF5650;
  if (!qword_1EDBF5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5650);
  }

  return result;
}

unint64_t sub_1BF9993C0()
{
  result = qword_1EDBF5728;
  if (!qword_1EDBF5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5728);
  }

  return result;
}

unint64_t sub_1BF999418()
{
  result = qword_1EDBF5620;
  if (!qword_1EDBF5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5620);
  }

  return result;
}

unint64_t sub_1BF999470()
{
  result = qword_1EDBF50E0;
  if (!qword_1EDBF50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF50E0);
  }

  return result;
}

unint64_t sub_1BF9994C8()
{
  result = qword_1EDBF50E8[0];
  if (!qword_1EDBF50E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF50E8);
  }

  return result;
}

void OUTLINED_FUNCTION_29_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{

  sub_1BF8E2E08(v23, a1, a2, v24, 0, v25 - 128, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

unint64_t OUTLINED_FUNCTION_72_4(double a1, double a2, __n128 a3)
{
  *(v4 - 208) = a3;
  sub_1BF8C2C9C((v3 | 8), v4 - 176);
  *(v4 - 184) = *(v4 - 208);

  return sub_1BF998A84();
}

uint64_t OUTLINED_FUNCTION_73_3()
{
  v4 = *(v2 - 72);

  return sub_1BF9984F8(v1, v4, v0);
}

uint64_t sub_1BF9996D8()
{
  OUTLINED_FUNCTION_37_1();
  sub_1BF9B4B48();
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9997EC(uint64_t a1, uint64_t (*a2)(char *))
{
  v3 = OUTLINED_FUNCTION_37_1();
  v11 = OUTLINED_FUNCTION_12_19(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  a2(v11);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF999868()
{
  v0 = ActionIdentifier.description.getter();
  v2 = v1;
  v3 = ActionIdentifier.description.getter();
  if (v0 == v3 && v2 == v4)
  {

    v7 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_10_20(v3);

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t static SuggestionsOSVersion.< infix(_:_:)()
{
  OUTLINED_FUNCTION_5_19();
  sub_1BF9B5668();
  OUTLINED_FUNCTION_15_22();
  OUTLINED_FUNCTION_5_19();
  v0 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v0);

  OUTLINED_FUNCTION_5_19();
  sub_1BF9B5668();
  OUTLINED_FUNCTION_15_22();
  OUTLINED_FUNCTION_5_19();
  v1 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v1);

  return 0;
}

uint64_t sub_1BF9999FC()
{
  v0 = ActionIdentifier.description.getter();
  v2 = v1;
  v3 = ActionIdentifier.description.getter();
  if (v0 == v3 && v2 == v4)
  {

    v7 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_10_20(v3);

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1BF999AF0()
{
  v0 = ActionIdentifier.description.getter();
  v2 = v1;
  if (v0 == ActionIdentifier.description.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1BF9B56D8();
  }

  return v5 & 1;
}

SiriSuggestionsKit::SuggestionsOSInfo __swiftcall SuggestionsOSInfo.init(osVersion:)(SiriSuggestionsKit::SuggestionsOSVersion osVersion)
{
  *v1 = 0;
  OUTLINED_FUNCTION_2_29(v1, *osVersion.majorVersion);
  result.osVersion.minorVersion = v4;
  result.osVersion.majorVersion = v3;
  result.osType = v2;
  return result;
}

SiriSuggestionsKit::SuggestionsOSVersion __swiftcall SuggestionsOSVersion.init(majorVersion:minorVersion:)(Swift::Int majorVersion, Swift::Int minorVersion)
{
  *v2 = majorVersion;
  v2[1] = minorVersion;
  result.minorVersion = minorVersion;
  result.majorVersion = majorVersion;
  return result;
}

__n128 SuggestionsOSInfo.osVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t SuggestionsOSInfo.description.getter()
{
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0x3A65707954736F7BLL, 0xE900000000000020);
  sub_1BF9B5378();
  MEMORY[0x1BFB5DE90](0x73726556736F202CLL, 0xED0000203A6E6F69);
  v0 = SuggestionsOSVersion.description.getter();
  MEMORY[0x1BFB5DE90](v0);

  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  return 0;
}

SiriSuggestionsKit::SuggestionsOSInfo __swiftcall SuggestionsOSInfo.init(osType:osVersion:)(SiriSuggestionsKit::SuggestionsOSType osType, SiriSuggestionsKit::SuggestionsOSVersion osVersion)
{
  *v2 = *osType;
  OUTLINED_FUNCTION_2_29(v2, *osVersion.majorVersion);
  result.osVersion.minorVersion = v5;
  result.osVersion.majorVersion = v4;
  result.osType = v3;
  return result;
}

BOOL static SuggestionsOSInfo.== infix(_:_:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = sub_1BF8CA284(*a1, *a2);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_1BF999D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954736FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF999DEC(char a1)
{
  if (a1)
  {
    return 0x6F6973726556736FLL;
  }

  else
  {
    return 0x65707954736FLL;
  }
}

uint64_t sub_1BF999E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF999D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF999E6C(uint64_t a1)
{
  v2 = sub_1BF99AC94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF999EA8(uint64_t a1)
{
  v2 = sub_1BF99AC94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsOSInfo.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA5C0, &qword_1BF9C8250);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *v0;
  v11 = *(v0 + 1);
  v12 = *(v0 + 2);
  v13 = v11;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF99AC94();
  sub_1BF9B5898();
  LOBYTE(v14) = v10;
  sub_1BF99ACE8();
  OUTLINED_FUNCTION_4_11();
  sub_1BF9B5638();
  if (!v1)
  {
    v14 = v13;
    v15 = v12;
    sub_1BF99AD3C();
    OUTLINED_FUNCTION_4_11();
    sub_1BF9B5638();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_37();
}

uint64_t SuggestionsOSInfo.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  sub_1BF8CD538(a1, *v3, a3);
  MEMORY[0x1BFB5EAC0](v4);
  return MEMORY[0x1BFB5EAC0](v5);
}

uint64_t SuggestionsOSInfo.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_37_1();
  v8 = OUTLINED_FUNCTION_12_19(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15);
  sub_1BF8CD538(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_8_16();
  MEMORY[0x1BFB5EAC0](v11);
  v12 = OUTLINED_FUNCTION_5_19();
  MEMORY[0x1BFB5EAC0](v12);
  return sub_1BF9B57E8();
}

void SuggestionsOSInfo.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA5E0, &qword_1BF9C8258);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v6 = sub_1BF99AC94();
  OUTLINED_FUNCTION_9_19(&type metadata for SuggestionsOSInfo.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_1BF99AF10();
    OUTLINED_FUNCTION_7_21(&type metadata for SuggestionsOSType);
    sub_1BF99AF64();
    OUTLINED_FUNCTION_7_21(&type metadata for SuggestionsOSVersion);
    v8 = OUTLINED_FUNCTION_20();
    v9(v8);
    *v4 = v10;
    *(v4 + 8) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF99A260(uint64_t a1)
{
  v1 = sub_1BF9B57A8();
  v9 = OUTLINED_FUNCTION_12_19(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16);
  sub_1BF8CD538(v9, v10, v11);
  v12 = OUTLINED_FUNCTION_8_16();
  MEMORY[0x1BFB5EAC0](v12);
  v13 = OUTLINED_FUNCTION_5_19();
  MEMORY[0x1BFB5EAC0](v13);
  return sub_1BF9B57E8();
}

__n128 sub_1BF99A56C@<Q0>(void *a1@<X0>, _BYTE *a2@<X1>, __n128 *a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  *a5 = *a2;
  result = *a3;
  *(a5 + 8) = *a3;
  return result;
}

uint64_t SuggestionsOSVersion.description.getter()
{
  sub_1BF9B5288();

  OUTLINED_FUNCTION_8_16();
  v0 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v0);

  MEMORY[0x1BFB5DE90](0xD000000000000010, 0x80000001BF9CE2B0);
  OUTLINED_FUNCTION_8_16();
  v1 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v1);

  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  return 0x6556726F6A616D7BLL;
}

SiriSuggestionsKit::SuggestionsOSVersion __swiftcall SuggestionsOSVersion.init(from:)(NSOperatingSystemVersion from)
{
  *v1 = from.majorVersion;
  v1[1] = from.minorVersion;
  return *&from.majorVersion;
}

uint64_t SuggestionsOSVersion.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1BFB5EAC0](*v0);
  return MEMORY[0x1BFB5EAC0](v1);
}

uint64_t sub_1BF99A71C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556726F6A616DLL && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726556726F6E696DLL && a2 == 0xEC0000006E6F6973)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF99A7F0(char a1)
{
  if (a1)
  {
    return 0x726556726F6E696DLL;
  }

  else
  {
    return 0x726556726F6A616DLL;
  }
}

uint64_t sub_1BF99A828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v5 = sub_1BF9B57A8();
  v13 = OUTLINED_FUNCTION_12_19(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF99A878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF99A71C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF99A8A0(uint64_t a1)
{
  v2 = sub_1BF99AFB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF99A8DC(uint64_t a1)
{
  v2 = sub_1BF99AFB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsOSVersion.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA5F8, &qword_1BF9C8260);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v10 - v8;
  v10[1] = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF99AFB8();
  sub_1BF9B5898();
  OUTLINED_FUNCTION_4_11();
  sub_1BF9B5628();
  if (!v1)
  {
    OUTLINED_FUNCTION_4_11();
    sub_1BF9B5628();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_37();
}

uint64_t SuggestionsOSVersion.hashValue.getter()
{
  OUTLINED_FUNCTION_37_1();
  v0 = OUTLINED_FUNCTION_8_16();
  MEMORY[0x1BFB5EAC0](v0);
  v1 = OUTLINED_FUNCTION_5_19();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

void SuggestionsOSVersion.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA608, &qword_1BF9C8268);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v28);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v29 = sub_1BF99AFB8();
  OUTLINED_FUNCTION_9_19(&type metadata for SuggestionsOSVersion.CodingKeys, v30, v29);
  if (!v23)
  {
    v31 = sub_1BF9B5548();
    v32 = sub_1BF9B5548();
    v33 = OUTLINED_FUNCTION_20();
    v34(v33);
    *v27 = v31;
    v27[1] = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF99AC08(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v2);
  MEMORY[0x1BFB5EAC0](v3);
  return sub_1BF9B57E8();
}

unint64_t sub_1BF99AC94()
{
  result = qword_1EBDEA5C8;
  if (!qword_1EBDEA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA5C8);
  }

  return result;
}

unint64_t sub_1BF99ACE8()
{
  result = qword_1EBDEA5D0;
  if (!qword_1EBDEA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA5D0);
  }

  return result;
}

unint64_t sub_1BF99AD3C()
{
  result = qword_1EBDEA5D8;
  if (!qword_1EBDEA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA5D8);
  }

  return result;
}

SiriSuggestionsKit::SuggestionsOSType_optional __swiftcall SuggestionsOSType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SuggestionsOSType.rawValue.getter()
{
  result = 5459817;
  switch(*v0)
  {
    case 1:
      result = 0x534F63616DLL;
      break;
    case 2:
      result = 1397716596;
      break;
    case 3:
      result = 0x534F6863746177;
      break;
    case 4:
      result = 0x534F6E6F69736976;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BF99AF10()
{
  result = qword_1EBDEA5E8;
  if (!qword_1EBDEA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA5E8);
  }

  return result;
}

unint64_t sub_1BF99AF64()
{
  result = qword_1EBDEA5F0;
  if (!qword_1EBDEA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA5F0);
  }

  return result;
}

unint64_t sub_1BF99AFB8()
{
  result = qword_1EBDEA600;
  if (!qword_1EBDEA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA600);
  }

  return result;
}

unint64_t sub_1BF99B010()
{
  result = qword_1EDBF45C0;
  if (!qword_1EDBF45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF45C0);
  }

  return result;
}

unint64_t sub_1BF99B064()
{
  result = qword_1EDBF3AB8;
  if (!qword_1EDBF3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3AB8);
  }

  return result;
}

unint64_t sub_1BF99B0BC()
{
  result = qword_1EBDEA610;
  if (!qword_1EBDEA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA610);
  }

  return result;
}

uint64_t sub_1BF99B124@<X0>(uint64_t *a1@<X8>)
{
  result = SuggestionsOSType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionsOSInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && a1[24])
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 6;
      v2 = v3 - 6;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for SuggestionsOSInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionsOSInfos(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SuggestionsOSVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SuggestionsOSVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionsOSType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF99B46C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF99B54C()
{
  result = qword_1EBDEA618;
  if (!qword_1EBDEA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA618);
  }

  return result;
}

unint64_t sub_1BF99B5A4()
{
  result = qword_1EBDEA620;
  if (!qword_1EBDEA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA620);
  }

  return result;
}

unint64_t sub_1BF99B5FC()
{
  result = qword_1EBDEA628;
  if (!qword_1EBDEA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA628);
  }

  return result;
}

unint64_t sub_1BF99B654()
{
  result = qword_1EBDEA630;
  if (!qword_1EBDEA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA630);
  }

  return result;
}

unint64_t sub_1BF99B6AC()
{
  result = qword_1EBDEA638;
  if (!qword_1EBDEA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA638);
  }

  return result;
}

unint64_t sub_1BF99B704()
{
  result = qword_1EBDEA640;
  if (!qword_1EBDEA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA640);
  }

  return result;
}

unint64_t sub_1BF99B758()
{
  result = qword_1EBDEA648;
  if (!qword_1EBDEA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA648);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_20(uint64_t a1)
{

  return sub_1BF9B56D8();
}

void sub_1BF99B7D8()
{
  if (qword_1EDBF3510 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF3518;
  v1 = *(off_1EDBF3518 + 2);
  if (v1)
  {

    v2 = MEMORY[0x1E69E7CC0];
    v3 = 32;
    do
    {
      v4 = *&v0[v3];
      if ((v4 & 0xFE) != 2 && (v4 >> 8) - 2 > 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF8D0260(0, *(v2 + 16) + 1, 1);
        }

        v7 = *(v2 + 16);
        v6 = *(v2 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1BF8D0260(v6 > 1, v7 + 1, 1);
        }

        *(v2 + 16) = v7 + 1;
        *(v2 + 2 * v7 + 32) = v4;
      }

      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  off_1EDBF2FF8 = v2;
}

uint64_t static ProductConstants.siriHintsInvocations.getter()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }
}

_BYTE *storeEnumTagSinglePayload for ProductConstants(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF99BA20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D30, &qword_1BF9C2AF0);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF99C6D4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t IntentSupportingApp.applicationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IntentSupportingApp.init(applicationIdentifier:supportedIntents:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static IntentSupportingApp.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BF9B56D8() & 1) == 0)
  {
    return 0;
  }

  return sub_1BF99BB70(v2, v3);
}

uint64_t sub_1BF99BB70(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_1BF9B57A8();

      sub_1BF9B4B48();
      v15 = sub_1BF9B57E8();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_1BF9B56D8();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t IntentSupportingApp.hash(into:)(void *a1)
{
  v3 = *(v1 + 16);
  sub_1BF9B4B48();

  return sub_1BF99C918(a1, v3);
}

uint64_t IntentSupportingApp.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  sub_1BF99C918(__src, v1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF99BDC8(uint64_t a1)
{
  v3[9] = *v1;
  v4 = *(v1 + 8);
  sub_1BF9B57A8();
  IntentSupportingApp.hash(into:)(v3);
  return sub_1BF9B57E8();
}

uint64_t IntentCache.__allocating_init(applicationRecordEnumerator:discoverer:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  IntentCache.init(applicationRecordEnumerator:discoverer:)(a1, a2);
  return v4;
}

void IntentCache.init(applicationRecordEnumerator:discoverer:)(void *a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  sub_1BF8D2004(a2, v2 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v19 = a2;
    v20 = v5;
    v21 = v2;
    v22 = MEMORY[0x1E69E7CC0];
    sub_1BF8D0828(0, v9, 0);
    v10 = v22;
    v11 = (v8 + 48);
    do
    {
      v12 = *(v11 - 2);
      v13 = *(v11 - 1);
      v14 = *v11;
      v16 = *(v22 + 16);
      v15 = *(v22 + 24);
      swift_bridgeObjectRetain_n();

      if (v16 >= v15 >> 1)
      {
        sub_1BF8D0828(v15 > 1, v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      v17 = (v22 + 40 * v16);
      v17[4] = v12;
      v17[5] = v13;
      v17[6] = v12;
      v17[7] = v13;
      v17[8] = v14;
      v11 += 3;
      --v9;
    }

    while (v9);

    v5 = v20;
    v3 = v21;
    a2 = v19;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1BF99BA20(v10);
  __swift_destroy_boxed_opaque_existential_1(a2);
  *(v3 + 16) = v18;
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_0_28();
}

void IntentCache.findIntents(forApp:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = v3[2];
  if (*(v8 + 16) && (v9 = sub_1BF8C2E64(a1, a2), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 24 * v9);
    v12 = v11[1];
    v13 = v11[2];
    *a3 = *v11;
    a3[1] = v12;
    a3[2] = v13;

    OUTLINED_FUNCTION_0_28();
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v15 = sub_1BF9B47C8();
    __swift_project_value_buffer(v15, qword_1EDBF5570);

    v16 = sub_1BF9B47A8();
    v17 = sub_1BF9B5038();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_1BF8DE810(a1, a2, &v26);
      *(v18 + 12) = 2080;
      sub_1BF8D2004((v4 + 3), v25);
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA650, &qword_1BF9C88D0);
      v20 = sub_1BF9B4B08();
      v22 = sub_1BF8DE810(v20, v21, &v26);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_1BF8B8000, v16, v17, "cache missed when looking up intents for %s, using %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5F320](v19, -1, -1);
      MEMORY[0x1BFB5F320](v18, -1, -1);
    }

    v23 = v4[6];
    v24 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v23);
    (*(v24 + 8))(a1, a2, v23, v24);
    OUTLINED_FUNCTION_0_28();
  }
}

uint64_t IntentCache.findApps(forIntent:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(v2 + 16) + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  v30 = result;
LABEL_5:
  while (v11)
  {
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (*(result + 56) + 24 * (v16 | (v14 << 6)));
    v18 = v17[2];
    if (*(v18 + 16))
    {
      v19 = v17[1];
      v31 = *v17;
      sub_1BF9B57A8();
      v32 = v19;

      sub_1BF9B4B48();
      v20 = sub_1BF9B57E8();
      v21 = ~(-1 << *(v18 + 32));
      do
      {
        v22 = v20 & v21;
        if (((*(v18 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {

          result = v30;
          goto LABEL_5;
        }

        v23 = (*(v18 + 48) + 16 * v22);
        if (*v23 == a1 && v23[1] == a2)
        {
          break;
        }

        v25 = sub_1BF9B56D8();
        v20 = v22 + 1;
      }

      while ((v25 & 1) == 0);
      v26 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF8D0728(0, *(v33 + 16) + 1, 1);
        v26 = v33;
      }

      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1BF8D0728(v27 > 1, v28 + 1, 1);
        v26 = v33;
      }

      *(v26 + 16) = v28 + 1;
      v33 = v26;
      v29 = (v26 + 24 * v28);
      v29[4] = v31;
      v29[5] = v32;
      v29[6] = v18;
      result = v30;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v33;
    }

    v11 = *(v7 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t IntentCache.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t IntentCache.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1BF99C6D4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v35 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 5)
  {
    if (v35 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = *(i - 1);
    v7 = *i;
    v9 = *(i - 3);
    v8 = *(i - 2);
    v10 = *(i - 4);

    if (!v9)
    {
    }

    v37 = v4;
    v38 = v6;
    v11 = *a3;
    v13 = sub_1BF8C2E64(v10, v9);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_18;
    }

    v17 = v12;
    if (v11[3] >= v16)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA658, qword_1BF9C8AB0);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95D030(v16, a2 & 1);
      v18 = sub_1BF8C2E64(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_20;
      }

      v13 = v18;
    }

    v20 = *a3;
    if (v17)
    {
      v21 = 3 * v13;
      v22 = (v20[7] + 24 * v13);
      v24 = *v22;
      v23 = v22[1];
      v25 = v22[2];

      v27 = sub_1BF99C048(v26, v25);

      v28 = (v20[7] + 8 * v21);
      *v28 = v24;
      v28[1] = v23;
      v28[2] = v27;
    }

    else
    {
      v20[(v13 >> 6) + 8] |= 1 << v13;
      v29 = (v20[6] + 16 * v13);
      *v29 = v10;
      v29[1] = v9;
      v30 = (v20[7] + 24 * v13);
      *v30 = v8;
      v30[1] = v38;
      v30[2] = v7;
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_19;
      }

      v20[2] = v33;
    }

    v4 = v37 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF99C918(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1BF9B57E8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1BFB5EAC0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1BF9B57A8();

        sub_1BF9B4B48();
        v11 = sub_1BF9B57E8();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF99CA70()
{
  result = qword_1EDBF2B40;
  if (!qword_1EDBF2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF2B40);
  }

  return result;
}

uint64_t dispatch thunk of InternalFinalizer.finalise(suggestion:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF8E8FFC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t LNDisplayRepresentation.getDisplay(for:)()
{
  v1 = [v0 title];
  sub_1BF9B4538();
  v2 = sub_1BF9B4A98();

  v3 = [v1 localizedStringForLocaleIdentifier_];

  v4 = sub_1BF9B4AA8();
  return v4;
}

uint64_t LNValue.getDisplay(for:)()
{
  v1 = [v0 displayRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = LNDisplayRepresentation.getDisplay(for:)();

  return v3;
}

uint64_t GlobalLifeCycleContainer.gmStatusChanged(status:)()
{
  OUTLINED_FUNCTION_6();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[16] = v0;
  OUTLINED_FUNCTION_12_4();
  v5 = swift_task_alloc();
  v1[21] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_17_0(v5);
  v6 = OUTLINED_FUNCTION_58_8();

  return v7(v6);
}

uint64_t sub_1BF99CF54()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  v2[22] = v6;

  sub_1BF9B4E28();
  OUTLINED_FUNCTION_57_10();
  v2[23] = v7;
  v2[24] = v8;
  v9 = OUTLINED_FUNCTION_55_9();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF99D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v11 = *(v10[22] + 16);
  v10[25] = v11;
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v10[26] = v12;
      OUTLINED_FUNCTION_26_16(v12);
      v13 = OUTLINED_FUNCTION_47_8();
      if (OUTLINED_FUNCTION_8_17(v13))
      {
        break;
      }

      OUTLINED_FUNCTION_2_30();
      OUTLINED_FUNCTION_18_14();
      if (v14)
      {
        goto LABEL_6;
      }
    }

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_0_29();
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_44_10(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_15_23(v25);
    OUTLINED_FUNCTION_48_8();

    return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }

  else
  {
LABEL_6:

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_48_8();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }
}

uint64_t sub_1BF99D1FC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_43_10();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_46_7();
  v5 = *(v4 + 192);
  v6 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1BF99D308, v6, v5);
}

uint64_t sub_1BF99D308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  __swift_destroy_boxed_opaque_existential_1((v10 + 16));
  while (1)
  {
    OUTLINED_FUNCTION_18_14();
    if (v12)
    {
      break;
    }

    *(v10 + 208) = v11;
    OUTLINED_FUNCTION_26_16(v11);
    v13 = OUTLINED_FUNCTION_47_8();
    if (OUTLINED_FUNCTION_8_17(v13))
    {
      OUTLINED_FUNCTION_42_12();
      OUTLINED_FUNCTION_0_29();
      v23 = swift_task_alloc();
      v24 = OUTLINED_FUNCTION_44_10(v23);
      *v24 = v25;
      OUTLINED_FUNCTION_15_23(v24);
      OUTLINED_FUNCTION_48_8();

      return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
    }

    OUTLINED_FUNCTION_2_30();
  }

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_48_8();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t GlobalLifeCycleContainer.siriLocaleChange()()
{
  OUTLINED_FUNCTION_6();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v1[16] = v0;
  OUTLINED_FUNCTION_12_4();
  v4 = swift_task_alloc();
  v1[20] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_17_0(v4);
  v5 = OUTLINED_FUNCTION_58_8();

  return v6(v5);
}

uint64_t sub_1BF99D584()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  v2[21] = v6;

  sub_1BF9B4E28();
  OUTLINED_FUNCTION_57_10();
  v2[22] = v7;
  v2[23] = v8;
  v9 = OUTLINED_FUNCTION_55_9();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF99D6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v11 = *(v10[21] + 16);
  v10[24] = v11;
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v10[25] = v12;
      OUTLINED_FUNCTION_26_16(v12);
      v13 = OUTLINED_FUNCTION_47_8();
      if (OUTLINED_FUNCTION_8_17(v13))
      {
        break;
      }

      OUTLINED_FUNCTION_2_30();
      v12 = v10[25] + 1;
      if (v12 == v10[24])
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_0_29();
    v23 = swift_task_alloc();
    v10[26] = v23;
    *v23 = v10;
    OUTLINED_FUNCTION_17_0(v23);
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_48_8();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  else
  {
LABEL_5:

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_48_8();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
  }
}

uint64_t sub_1BF99D854()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_43_10();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_46_7();
  v5 = *(v4 + 184);
  v6 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1BF99D960, v6, v5);
}

uint64_t sub_1BF99D960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  __swift_destroy_boxed_opaque_existential_1(v10 + 2);
  while (1)
  {
    v11 = v10[25] + 1;
    if (v11 == v10[24])
    {
      break;
    }

    v10[25] = v11;
    OUTLINED_FUNCTION_26_16(v11);
    v12 = OUTLINED_FUNCTION_47_8();
    if (OUTLINED_FUNCTION_8_17(v12))
    {
      OUTLINED_FUNCTION_42_12();
      OUTLINED_FUNCTION_0_29();
      v22 = swift_task_alloc();
      v10[26] = v22;
      *v22 = v10;
      OUTLINED_FUNCTION_17_0(v22);
      OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_48_8();

      return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
    }

    OUTLINED_FUNCTION_2_30();
  }

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_48_8();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t BaseLifeCycleContainer.getTypeKey(entity:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  return BaseLifeCycleContainer.getTypeKey(type:)(DynamicType);
}

uint64_t BaseLifeCycleContainer.getTypeKey(type:)(uint64_t a1)
{
  v1 = sub_1BF9B4668();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v6 - v5;
  sub_1BF9B4638();
  v8 = sub_1BF9B4658();
  (*(v3 + 8))(v7, v1);
  return v8;
}

uint64_t sub_1BF99DBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1BF8BC564;

  return GlobalLifeCycleContainer.addToLifeCycle<A>(type:entity:)();
}

uint64_t GlobalLifeCycleContainer.addToLifeCycle<A>(type:entity:)()
{
  OUTLINED_FUNCTION_7();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  sub_1BF9B4E28();
  v7 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF99DD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v10 = v9[9];
  v24 = v9[10];
  BaseLifeCycleContainer.getTypeKey(type:)(v9[6]);
  v9[12] = v11;
  v9[5] = v10;
  __swift_allocate_boxed_opaque_existential_1Tm(v9 + 2);
  OUTLINED_FUNCTION_11();
  (*(v12 + 16))();
  v23 = *(v24 + 56) + **(v24 + 56);
  v13 = swift_task_alloc();
  v9[13] = v13;
  *v13 = v9;
  v13[1] = sub_1BF99DE98;
  OUTLINED_FUNCTION_48_8();

  return v19(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1BF99DE98()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  OUTLINED_FUNCTION_77();

  return v6();
}

uint64_t sub_1BF99DF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1BF8BC644;

  return GlobalLifeCycleContainer.addToLifeCycle(typeName:entity:)();
}

uint64_t GlobalLifeCycleContainer.addToLifeCycle(typeName:entity:)()
{
  OUTLINED_FUNCTION_7();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  sub_1BF9B4E28();
  v7 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF99E0CC()
{
  if (qword_1EDBF4B40 != -1)
  {
    swift_once();
  }

  v15 = v0[18];
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = qword_1EDBF4B48;
  v0[12] = type metadata accessor for DefaultOwner();
  v0[13] = sub_1BF93A93C();
  v0[9] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA680, &unk_1BF9C8BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF9B6370;
  *(inited + 32) = v3;
  *(inited + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A18, &qword_1BF9B8510);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BF9B6370;
  v7 = v2[3];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  *(v6 + 56) = v7;
  __swift_allocate_boxed_opaque_existential_1Tm((v6 + 32));
  OUTLINED_FUNCTION_11();
  (*(v8 + 16))();
  *(inited + 48) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
  v9 = sub_1BF9B4988();
  v0[20] = v9;
  v14 = (*(v15 + 40) + **(v15 + 40));
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1BF99E350;
  v11 = v0[18];
  v12 = v0[17];

  return v14(v0 + 9, v9, v12, v11);
}

uint64_t sub_1BF99E350()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  OUTLINED_FUNCTION_77();

  return v6();
}

uint64_t sub_1BF99E44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF8BC644;

  return GlobalLifeCycleContainer.addToLifeCycle(entity:)();
}

uint64_t GlobalLifeCycleContainer.addToLifeCycle(entity:)()
{
  OUTLINED_FUNCTION_7();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  sub_1BF9B4E28();
  v5 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF99E56C()
{
  OUTLINED_FUNCTION_6();
  v1 = BaseLifeCycleContainer.getTypeKey(entity:)(*(v0 + 16));
  v3 = v2;
  *(v0 + 48) = v2;
  OUTLINED_FUNCTION_5_0();
  v10 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1BF99E69C;
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  return v10(v1, v3, v7, v8, v6);
}

uint64_t sub_1BF99E69C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t GlobalLifeCycleContainer.start()()
{
  OUTLINED_FUNCTION_6();
  v1[47] = v2;
  v1[48] = v0;
  v1[46] = v3;
  v1[44] = v0;
  v4 = *(v2 + 8);
  v1[49] = v4;
  v1[50] = *(v4 + 8);
  v1[51] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0xD84B000000000000;
  v5 = swift_task_alloc();
  v1[52] = v5;
  *v5 = v1;
  v5[1] = sub_1BF99E8C4;
  v6 = OUTLINED_FUNCTION_40_6();

  return v7(v6);
}

uint64_t sub_1BF99E8C4()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  v2[53] = v6;

  sub_1BF9B4E28();
  OUTLINED_FUNCTION_57_10();
  v2[54] = v7;
  v2[55] = v8;
  v9 = OUTLINED_FUNCTION_55_9();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF99EC3C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_19();
  *v5 = v4;
  *(v7 + 464) = v6;

  OUTLINED_FUNCTION_46_7();
  v9 = *(v8 + 440);
  v10 = *(v0 + 432);

  return MEMORY[0x1EEE6DFA0](sub_1BF99ED48, v10, v9);
}

uint64_t sub_1BF99ED48()
{
  v28 = v0;
  v1 = *(v0 + 464);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1BF8C187C(v3, v0 + 256);
      sub_1BF8C192C((v0 + 256), (v0 + 288));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A28, &unk_1BF9B8520);
      if (swift_dynamicCast())
      {
        if (*(v0 + 80))
        {
          OUTLINED_FUNCTION_42_12();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BF8DE6D0();
            v4 = v6;
          }

          v5 = *(v4 + 16);
          if (v5 >= *(v4 + 24) >> 1)
          {
            sub_1BF8DE6D0();
            v4 = v7;
          }

          *(v4 + 16) = v5 + 1;
          sub_1BF8C2C9C((v0 + 16), v4 + 40 * v5 + 32);
          goto LABEL_12;
        }
      }

      else
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_1BF8E8118(v0 + 56, &qword_1EBDEA688, &qword_1BF9C8BF0);
LABEL_12:
      v3 += 32;
      if (!--v2)
      {

        goto LABEL_15;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_15:
  *(v0 + 472) = v4;
  v8 = *(v4 + 16);
  *(v0 + 480) = v8;
  if (v8)
  {
    *(v0 + 488) = 0;
    sub_1BF8D2004(v4 + 32, v0 + 96);
    sub_1BF8D2004(v0 + 96, v0 + 136);
    sub_1BF8D2004(v0 + 96, v0 + 176);
    swift_unknownObjectRetain();
    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5028();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_60_6();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_49_7(4.8151e-34);
      OUTLINED_FUNCTION_11();
      (*(v12 + 16))();
      BaseLifeCycleContainer.getTypeKey(entity:)((v0 + 320));
      OUTLINED_FUNCTION_53_9();
      __swift_destroy_boxed_opaque_existential_1((v0 + 320));
      v13 = __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      OUTLINED_FUNCTION_62_8(v13, v14, &v26);
      OUTLINED_FUNCTION_61_7();
      OUTLINED_FUNCTION_50_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A28, &unk_1BF9B8520);
      sub_1BF9B4B08();
      OUTLINED_FUNCTION_53_9();
      v15 = __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      OUTLINED_FUNCTION_62_8(v15, v16, &v26);
      OUTLINED_FUNCTION_61_7();
      *(v11 + 14) = &v27;
      OUTLINED_FUNCTION_59_10(&dword_1BF8B8000, v17, v18, "Starting: %s - %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_54();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    }

    v21 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    OUTLINED_FUNCTION_1_28(v21);
    v25 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 496) = v23;
    *v23 = v0;
    v23[1] = sub_1BF99F190;
    v24 = OUTLINED_FUNCTION_82(*(v0 + 384));

    return v25(v24);
  }

  else
  {

    OUTLINED_FUNCTION_77();

    return v19();
  }
}

uint64_t sub_1BF99F190()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_43_10();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_46_7();
  v5 = *(v4 + 440);
  v6 = *(v0 + 432);

  return MEMORY[0x1EEE6DFA0](sub_1BF99F29C, v6, v5);
}

uint64_t sub_1BF99F29C()
{
  v22 = v0;
  v1 = v0[60];
  v2 = v0[61] + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (v2 == v1)
  {

    OUTLINED_FUNCTION_77();

    return v3();
  }

  else
  {
    v5 = v0[61];
    v0[61] = v5 + 1;
    sub_1BF8D2004(v0[59] + 40 * v5 + 72, (v0 + 12));
    sub_1BF8D2004((v0 + 12), (v0 + 17));
    sub_1BF8D2004((v0 + 12), (v0 + 22));
    swift_unknownObjectRetain();
    v6 = sub_1BF9B47A8();
    v7 = sub_1BF9B5028();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_60_6();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_49_7(4.8151e-34);
      OUTLINED_FUNCTION_11();
      (*(v9 + 16))();
      BaseLifeCycleContainer.getTypeKey(entity:)(v0 + 40);
      OUTLINED_FUNCTION_53_9();
      __swift_destroy_boxed_opaque_existential_1(v0 + 40);
      v10 = __swift_destroy_boxed_opaque_existential_1(v0 + 17);
      OUTLINED_FUNCTION_62_8(v10, v11, &v20);
      OUTLINED_FUNCTION_61_7();
      OUTLINED_FUNCTION_50_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A28, &unk_1BF9B8520);
      sub_1BF9B4B08();
      OUTLINED_FUNCTION_53_9();
      v12 = __swift_destroy_boxed_opaque_existential_1(v0 + 22);
      OUTLINED_FUNCTION_62_8(v12, v13, &v20);
      OUTLINED_FUNCTION_61_7();
      *(v8 + 14) = &v21;
      OUTLINED_FUNCTION_59_10(&dword_1BF8B8000, v14, v15, "Starting: %s - %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_54();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 22);
      __swift_destroy_boxed_opaque_existential_1(v0 + 17);
    }

    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    OUTLINED_FUNCTION_12_4();
    v19 = (v16 + *v16);
    v17 = swift_task_alloc();
    v0[62] = v17;
    *v17 = v0;
    v17[1] = sub_1BF99F190;
    v18 = OUTLINED_FUNCTION_82(v0[48]);

    return v19(v18);
  }
}

uint64_t GlobalLifeCycleContainer.bundleLoaded()()
{
  OUTLINED_FUNCTION_7();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_57_10();
  v1[20] = v4;
  v1[21] = v5;
  v6 = OUTLINED_FUNCTION_55_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF99F624()
{
  OUTLINED_FUNCTION_6();
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
  }

  v1 = sub_1BF9B47C8();
  v0[22] = __swift_project_value_buffer(v1, qword_1EDBF57F8);
  v2 = sub_1BF9B47A8();
  v3 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_33_12(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_56_7(v4);
    OUTLINED_FUNCTION_75_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_54();
  }

  v11 = v0[18];
  v10 = v0[19];

  v0[16] = v10;
  v12 = *(v11 + 8);
  OUTLINED_FUNCTION_1_28(v12);
  v17 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_1BF99F7B4;
  v15 = v0[17];

  return v17(v15, v12);
}

uint64_t sub_1BF99F7B4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_19();
  *v5 = v4;
  *(v7 + 192) = v6;

  OUTLINED_FUNCTION_46_7();
  v9 = *(v8 + 168);
  v10 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1BF99F8C0, v10, v9);
}

void sub_1BF99F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v11 = *(*(v10 + 192) + 16);
  *(v10 + 200) = v11;
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_28_13(v12);
      if (v14)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_26_16(v13);
      v15 = OUTLINED_FUNCTION_47_8();
      if (OUTLINED_FUNCTION_8_17(v15))
      {
        break;
      }

      OUTLINED_FUNCTION_2_30();
      OUTLINED_FUNCTION_18_14();
      if (v16)
      {
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_42_12();
    v25 = sub_1BF9B47A8();
    v26 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_33_12(v26))
    {
      v27 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_56_7(v27);
      OUTLINED_FUNCTION_75_2();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_54();
    }

    OUTLINED_FUNCTION_0_29();
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_44_10(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_5_20(v34);
    OUTLINED_FUNCTION_48_8();

    v40(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
  }

  else
  {
LABEL_7:

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_48_8();

    v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }
}

uint64_t sub_1BF99FA74()
{
  OUTLINED_FUNCTION_65();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_1BF99FD50;
  }

  else
  {
    v7 = sub_1BF99FBA4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1BF99FBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  __swift_destroy_boxed_opaque_existential_1((v10 + 16));
  while (1)
  {
    OUTLINED_FUNCTION_18_14();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_28_13(v11);
    if (v14)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_26_16(v13);
    v15 = OUTLINED_FUNCTION_47_8();
    if (OUTLINED_FUNCTION_8_17(v15))
    {
      OUTLINED_FUNCTION_42_12();
      v24 = sub_1BF9B47A8();
      v25 = sub_1BF9B5038();
      if (OUTLINED_FUNCTION_33_12(v25))
      {
        v26 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_56_7(v26);
        OUTLINED_FUNCTION_75_2();
        _os_log_impl(v27, v28, v29, v30, v31, 2u);
        OUTLINED_FUNCTION_54();
      }

      OUTLINED_FUNCTION_0_29();
      v32 = swift_task_alloc();
      v33 = OUTLINED_FUNCTION_44_10(v32);
      *v33 = v34;
      OUTLINED_FUNCTION_5_20(v33);
      OUTLINED_FUNCTION_48_8();

      v39(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
      return;
    }

    OUTLINED_FUNCTION_2_30();
  }

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_48_8();

  v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

void sub_1BF99FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v11 = sub_1BF9B47A8();
  v12 = sub_1BF9B5048();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v10 + 224);
  if (v13)
  {
    v15 = OUTLINED_FUNCTION_12_0();
    *v15 = 0;
    _os_log_impl(&dword_1BF8B8000, v11, v12, "error running bundleLoaded", v15, 2u);
    OUTLINED_FUNCTION_87();
  }

  __swift_destroy_boxed_opaque_existential_1((v10 + 16));
  while (1)
  {
    OUTLINED_FUNCTION_18_14();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_28_13(v16);
    if (v19)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_26_16(v18);
    v20 = OUTLINED_FUNCTION_47_8();
    if (OUTLINED_FUNCTION_8_17(v20))
    {
      OUTLINED_FUNCTION_42_12();
      v29 = sub_1BF9B47A8();
      v30 = sub_1BF9B5038();
      if (OUTLINED_FUNCTION_33_12(v30))
      {
        v31 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_56_7(v31);
        OUTLINED_FUNCTION_75_2();
        _os_log_impl(v32, v33, v34, v35, v36, 2u);
        OUTLINED_FUNCTION_54();
      }

      OUTLINED_FUNCTION_0_29();
      v37 = swift_task_alloc();
      v38 = OUTLINED_FUNCTION_44_10(v37);
      *v38 = v39;
      OUTLINED_FUNCTION_5_20(v38);
      OUTLINED_FUNCTION_48_8();

      v44(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
      return;
    }

    OUTLINED_FUNCTION_2_30();
  }

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_48_8();

  v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1BF99FFC4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void sub_1BF9A0034()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_15_3(v1 + 16, v0 + 16);
  v2 = *(v1 + 16);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v5)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= v6)
          {
            goto LABEL_20;
          }

          v5 = *(v2 + 64 + 8 * v9);
          ++v7;
          if (v5)
          {
            v7 = v9;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

LABEL_9:
      v10 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
      v11 = *(v10 + 16);
      v12 = *(v8 + 16);
      if (__OFADD__(v12, v11))
      {
        goto LABEL_24;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v12 + v11 > *(v8 + 24) >> 1)
      {
        sub_1BF8DCEAC();
        v8 = v13;
      }

      v5 &= v5 - 1;
      if (!*(v10 + 16))
      {
        break;
      }

      if ((*(v8 + 24) >> 1) - *(v8 + 16) < v11)
      {
        goto LABEL_25;
      }

      swift_arrayInitWithCopy();

      if (v11)
      {
        v14 = *(v8 + 16);
        v15 = __OFADD__(v14, v11);
        v16 = v14 + v11;
        if (v15)
        {
          goto LABEL_26;
        }

        *(v8 + 16) = v16;
      }
    }
  }

  while (!v11);
  __break(1u);
LABEL_20:

  OUTLINED_FUNCTION_4();

  v17(v8);
}

uint64_t LocalLifeCycleContainer.__allocating_init(globalStore:)()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 16) = v1;
  swift_getObjectType();
  OUTLINED_FUNCTION_5_0();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_0_20(v2);

  return v4(v3);
}

uint64_t sub_1BF9A0334()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BF9A0424, 0, 0);
}

uint64_t sub_1BF9A0424()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 32);
  type metadata accessor for LocalLifeCycleContainer();
  v2 = swift_allocObject();
  *(v2 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
  v3 = sub_1BF9B4988();
  swift_unknownObjectRelease();
  *(v2 + 16) = v3;
  OUTLINED_FUNCTION_4();

  return v4(v2);
}

uint64_t LocalLifeCycleContainer.__allocating_init(existingEntities:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
  *(v2 + 16) = sub_1BF9B4988();
  return v2;
}

uint64_t LocalLifeCycleContainer.init(existingEntities:)(uint64_t a1)
{
  *(v1 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
  *(v1 + 16) = sub_1BF9B4988();
  return v1;
}

uint64_t sub_1BF9A05AC(void *a1)
{
  v2 = sub_1BF9B4668();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v7 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_1BF9B4638();
  v9 = sub_1BF9B4658();
  v11 = v10;
  (*(v4 + 8))(v8, v2);
  sub_1BF9A0BD4(v9, v11, a1);
}

uint64_t sub_1BF9A06B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF9B4668();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  sub_1BF9B4638();
  sub_1BF9B4658();
  (*(v6 + 8))(v10, v4);
  v11 = OUTLINED_FUNCTION_26();
  v14 = sub_1BF9251EC(v11, v12, v13);
  if (v14)
  {
    v44[0] = v14;
    MEMORY[0x1EEE9AC00](v14);
    *&v42[-16] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
    sub_1BF9A0F08();
    v15 = sub_1BF9B4C88();
  }

  else
  {
    v15 = 0;
  }

  OUTLINED_FUNCTION_15_3(v2 + 16, v44);
  v16 = *(v2 + 16);

  v17 = OUTLINED_FUNCTION_26();
  v19 = sub_1BF9251EC(v17, v18, v16);

  if (v19)
  {
    v43 = v19;
    MEMORY[0x1EEE9AC00](v20);
    *&v42[-16] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
    sub_1BF9A0F08();
    v21 = sub_1BF9B4C88();
  }

  else
  {
    v21 = 0;
  }

  if (v15 | v21)
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v31 = sub_1BF9B47C8();
    __swift_project_value_buffer(v31, qword_1EDBF5570);

    v32 = sub_1BF9B47A8();
    v33 = sub_1BF9B5038();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136315138;
      v36 = OUTLINED_FUNCTION_26();
      v39 = sub_1BF8DE810(v36, v37, v38);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1BF8B8000, v32, v33, "Found global values for %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    else
    {
    }

    if (v15)
    {
      if (v21)
      {
LABEL_21:
        v40 = sub_1BF9B4D58();

        return v40;
      }
    }

    else
    {
      sub_1BF9B4D78();
      if (v21)
      {
        goto LABEL_21;
      }
    }

    sub_1BF9B4D78();
    goto LABEL_21;
  }

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v22 = sub_1BF9B47C8();
  __swift_project_value_buffer(v22, qword_1EDBF5570);

  v23 = sub_1BF9B47A8();
  v24 = sub_1BF9B5028();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v25 = 136315138;
    v27 = OUTLINED_FUNCTION_26();
    v30 = sub_1BF8DE810(v27, v28, v29);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1BF8B8000, v23, v24, "No value for: %s in LifeCycle container", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_54();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1BF9A0B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BF8C187C(a1, &v7);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_1BF9A0BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_15_3(v3 + 16, v24);
  v8 = *(v3 + 16);
  v9 = *(v8 + 16);

  if (v9 && (v10 = sub_1BF8C2E64(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = a3[3];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v23 = v13;
  __swift_allocate_boxed_opaque_existential_1Tm(&v22);
  OUTLINED_FUNCTION_11();
  (*(v14 + 16))();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF8DCEAC();
    v12 = v19;
  }

  v15 = *(v12 + 16);
  if (v15 >= *(v12 + 24) >> 1)
  {
    sub_1BF8DCEAC();
    v12 = v20;
  }

  *(v12 + 16) = v15 + 1;
  sub_1BF8C192C(&v22, (v12 + 32 * v15 + 32));
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v4 + 16);
  v16 = OUTLINED_FUNCTION_26();
  sub_1BF936C54(v16, v17, a2);
  *(v4 + 16) = v21;
  return swift_endAccess();
}

uint64_t LocalLifeCycleContainer.deinit()
{

  return v0;
}

uint64_t LocalLifeCycleContainer.__deallocating_deinit()
{
  LocalLifeCycleContainer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BF9A0E38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8D59E4;

  return sub_1BF9A0014();
}

unint64_t sub_1BF9A0F08()
{
  result = qword_1EDBF0570;
  if (!qword_1EDBF0570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0570);
  }

  return result;
}

uint64_t dispatch thunk of BaseLifeCycleContainer.allEntities.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_20_19(v0, v1);
  OUTLINED_FUNCTION_1_28(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_20(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.entities.getter()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20_19(v0, v1);
  OUTLINED_FUNCTION_5_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_20(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.addToLifeCycle(owner:localEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_9_20(v10, v11, v12, v13);
  OUTLINED_FUNCTION_5_0();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_15_2(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_7_22(v15);
  OUTLINED_FUNCTION_48_8();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.addToLifeCycle<A>(type:entity:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35_11(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_12_4();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_17_0(v6);
  v8 = OUTLINED_FUNCTION_37_8();

  return v9(v8);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.addToLifeCycle(typeName:entity:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35_11(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_12_4();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_17_0(v6);
  v8 = OUTLINED_FUNCTION_37_8();

  return v9(v8);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.addToLifeCycle(entity:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15(v0, v1, v2);
  OUTLINED_FUNCTION_12_4();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.getEntity<A>(entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_9_20(v10, v11, v12, v13);
  OUTLINED_FUNCTION_5_0();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_15_2(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_7_22(v15);
  OUTLINED_FUNCTION_48_8();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.destroy(owner:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15(v0, v1, v2);
  OUTLINED_FUNCTION_12_4();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.getAllOwners()()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20_19(v0, v1);
  OUTLINED_FUNCTION_5_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_20(v3);

  return v6(v5);
}

uint64_t dispatch thunk of Destroyable.destroy()()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_20_19(v0, v1);
  OUTLINED_FUNCTION_1_28(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_20(v4);

  return v7(v6);
}

uint64_t dispatch thunk of Startable.start(container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_20(v10, v11, v12, v13);
  OUTLINED_FUNCTION_1_28(v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_15_2(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_7_22(v16);
  OUTLINED_FUNCTION_48_8();

  return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t dispatch thunk of OnBundleLoaded.bundleLoaded(globalLifecyclecontainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_20(v10, v11, v12, v13);
  OUTLINED_FUNCTION_1_28(v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_15_2(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_7_22(v16);
  OUTLINED_FUNCTION_48_8();

  return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t dispatch thunk of GMStatusChangeHandler.handleGMStatusChange(status:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15(v0, v1, v2);
  OUTLINED_FUNCTION_12_4();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of SiriLocaleChangeHandler.handleSiriLocaleChange()()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_20_19(v0, v1);
  OUTLINED_FUNCTION_1_28(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_20(v4);

  return v7(v6);
}

uint64_t dispatch thunk of LocalLifeCycleContainer.allEntities.getter()
{
  OUTLINED_FUNCTION_65();
  v5 = (*(*v0 + 120) + **(*v0 + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_17_0(v2);

  return v5();
}

uint64_t *OUTLINED_FUNCTION_49_7(float a1)
{
  *v1 = a1;
  v3 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 17, v3);
  v2[43] = v3;

  return __swift_allocate_boxed_opaque_existential_1Tm(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_60_6()
{

  return swift_slowAlloc();
}

uint64_t sub_1BF9A2328(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF9A2350, 0, 0);
}

uint64_t sub_1BF9A2350()
{
  v15 = v0;
  if (*(v0 + 72) == 1)
  {
    *(v0 + 48) = swift_getObjectType();
    v3 = sub_1BF9B4E28();

    return MEMORY[0x1EEE6DFA0](sub_1BF9A251C, v3, v2);
  }

  else
  {
    if (qword_1EDBF0898 != -1)
    {
      OUTLINED_FUNCTION_3_29(&qword_1EDBF0898);
    }

    v4 = sub_1BF9B47C8();
    __swift_project_value_buffer(v4, qword_1EDBF08A0);

    v5 = sub_1BF9B47A8();
    v6 = sub_1BF9B5028();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 32);
      v7 = *(v0 + 40);
      swift_slowAlloc();
      v14 = OUTLINED_FUNCTION_17_19();
      *v1 = 136315138;
      *(v1 + 4) = sub_1BF8DE810(v8, v7, &v14);
      OUTLINED_FUNCTION_18_15(&dword_1BF8B8000, v9, v6, "No thirdparty app id applicable. Using default at: %s");
      OUTLINED_FUNCTION_15_24();
      OUTLINED_FUNCTION_93();
    }

    v10 = *(v0 + 32);
    v11 = *(v0 + 40);
    v13 = *(v0 + 8);

    return v13(v10, v11);
  }
}

uint64_t sub_1BF9A251C()
{
  OUTLINED_FUNCTION_7();
  *(v0 + 56) = Context.getThirdPartyAppId()();

  return MEMORY[0x1EEE6DFA0](sub_1BF9A2588, 0, 0);
}

uint64_t sub_1BF9A2588()
{
  v19 = v0;
  v2 = v0[8];
  if (v2)
  {
    if (qword_1EDBF0898 != -1)
    {
      OUTLINED_FUNCTION_3_29(&qword_1EDBF0898);
    }

    v3 = v0 + 7;
    v4 = sub_1BF9B47C8();
    __swift_project_value_buffer(v4, qword_1EDBF08A0);

    v5 = sub_1BF9B47A8();
    v6 = sub_1BF9B5028();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *v3;
      swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_17_19();
      *v1 = 136315138;
      *(v1 + 4) = sub_1BF8DE810(v7, v2, &v18);
      OUTLINED_FUNCTION_18_15(&dword_1BF8B8000, v8, v6, "Found third party app Id in context. Updating proactive actionId to %s");
      OUTLINED_FUNCTION_15_24();
      OUTLINED_FUNCTION_93();
    }
  }

  else
  {
    if (qword_1EDBF0898 != -1)
    {
      OUTLINED_FUNCTION_3_29(&qword_1EDBF0898);
    }

    v9 = sub_1BF9B47C8();
    __swift_project_value_buffer(v9, qword_1EDBF08A0);

    v10 = sub_1BF9B47A8();
    v11 = sub_1BF9B5028();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[4];
      v12 = v0[5];
      swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_17_19();
      *v1 = 136315138;
      *(v1 + 4) = sub_1BF8DE810(v13, v12, &v18);
      OUTLINED_FUNCTION_18_15(&dword_1BF8B8000, v14, v11, "No thirdparty app id applicable. Using default at: %s");
      OUTLINED_FUNCTION_15_24();
      OUTLINED_FUNCTION_93();
    }

    v2 = v0[5];
    v3 = v0 + 4;
  }

  v15 = *v3;
  v16 = v0[1];

  return v16(v15, v2);
}

uint64_t sub_1BF9A27B4()
{
  OUTLINED_FUNCTION_7_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_30(v1);
  OUTLINED_FUNCTION_13_16();

  return sub_1BF9A2328(v3, v4, v5, v6, v7);
}

uint64_t static ProactiveResolver.createProactiveResolver(resolverType:actionIdProvider:entityId:valuePostProcessor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6A0, &qword_1BF9C8E20);
    inited = swift_initStackObject();
    v9 = a1;
    v20 = OUTLINED_FUNCTION_1_29(inited, xmmword_1BF9B6370);
    v20[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v20[3].n128_u64[0] = a5;
    v20[3].n128_u64[1] = a6;
  }

  v21 = sub_1BF9B4988();
  OUTLINED_FUNCTION_5_21();
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  OUTLINED_FUNCTION_5_21();
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = type metadata accessor for DelegatingResolver();
  OUTLINED_FUNCTION_10_21(v24);

  OUTLINED_FUNCTION_4_27();
  result = DelegatingResolver.init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(a1, a2, v25, 0xE900000000000065, v28, v21, v26, v22, &unk_1BF9C8E48, v23);
  a9[3] = v9;
  a9[4] = &protocol witness table for DelegatingResolver;
  *a9 = result;
  return result;
}

uint64_t sub_1BF9A2BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF9A2C10, 0, 0);
}

uint64_t sub_1BF9A2C10()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6A0, &qword_1BF9C8E20);
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 16) = xmmword_1BF9B6370;
  *(inited + 32) = 0x64496E6F69746361;
  *(inited + 40) = 0xE800000000000000;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1BF9A2D44;
  v5 = v0[12];
  v4 = v0[13];

  return v7(v5, v4);
}

uint64_t sub_1BF9A2D44()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BF9A2E40, 0, 0);
}

uint64_t sub_1BF9A2E40()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v3[9] = MEMORY[0x1E69E6158];
  v3[6] = v2;
  v3[7] = v1;
  v4 = sub_1BF9B4988();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1BF9A2EC4()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_6_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_30(v1);
  OUTLINED_FUNCTION_22_12();

  return sub_1BF9A2BEC(v3, v4, v5, v6);
}

uint64_t ProactiveAppPrediction.appBundleId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static ProactiveResolver.createProactiveResolver(resolverType:valuePostProcessor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));

  v10 = sub_1BF9B4988();
  OUTLINED_FUNCTION_5_21();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = type metadata accessor for DelegatingResolver();
  swift_allocObject();

  OUTLINED_FUNCTION_4_27();
  result = DelegatingResolver.init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(a1, a2, v13, 0xE900000000000065, v16, v10, v14, v11, &unk_1BF9C9168, 0);
  a5[3] = v12;
  a5[4] = &protocol witness table for DelegatingResolver;
  *a5 = result;
  return result;
}

double sub_1BF9A30B0@<D0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, _OWORD *a3@<X8>)
{
  sub_1BF8C187C(a1, v9);
  if (swift_dynamicCast())
  {
    v9[0] = v6;
    v9[1] = v7;
    v9[2] = v8;
    a2(v9);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

SiriSuggestionsKit::ProactiveAppPrediction __swiftcall ProactiveAppPrediction.init(appBundleId:confidence:)(Swift::String appBundleId, Swift::Double confidence)
{
  *v2 = appBundleId;
  *(v2 + 16) = confidence;
  result.appBundleId = appBundleId;
  result.confidence = confidence;
  return result;
}

uint64_t sub_1BF9A3160()
{
  OUTLINED_FUNCTION_7_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_30(v1);
  OUTLINED_FUNCTION_13_16();

  return sub_1BF9A2328(v3, v4, v5, v6, v7);
}

uint64_t sub_1BF9A31FC()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5(v4, v2);
}

uint64_t sub_1BF9A32FC()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_6_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_30(v1);
  OUTLINED_FUNCTION_22_12();

  return sub_1BF9A2BEC(v3, v4, v5, v6);
}

uint64_t sub_1BF9A338C()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

_BYTE *storeEnumTagSinglePayload for ProactiveResolver(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_10_21(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t dispatch thunk of AppDetailsBuilder.build()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF8E8FFC;

  return v9(a1, a2, a3);
}

uint64_t static FilterResolver.filterLockscreen(for:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1BF8D2004(a3, v10);
  OUTLINED_FUNCTION_17_1();
  v8 = swift_allocObject();
  v8[2] = sub_1BF9A3D28;
  v8[3] = 0;
  sub_1BF8D5C74(v10, (v8 + 4));
  v8[9] = a1;
  v8[10] = a2;
  a4[3] = v4;
  a4[4] = &protocol witness table for FilterResolver;
  *a4 = v8;
}

uint64_t FilterResolver.resolverTypeOperand.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t FilterResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF9A3834, 0, 0);
}

uint64_t sub_1BF9A3834()
{
  v25 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = *(v0[21] + 16);
  sub_1BF8D2004(v0[19], (v0 + 2));
  sub_1BF8D2004(v1, (v0 + 7));
  sub_1BF8D2004(v2, (v0 + 12));
  v4 = v3(v0 + 2);
  sub_1BF9A3F80((v0 + 2));
  if (v4)
  {
    v5 = v0[21];
    v6 = v5[7];
    v7 = v5[8];
    __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
    v8 = *(v7 + 8);
    v23 = (*(v8 + 24) + **(v8 + 24));
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_1BF9A3B0C;
    v10 = v0[19];
    v11 = v0[20];
    v13 = v0[17];
    v12 = v0[18];

    return v23(v13, v12, v10, v11, v6, v8);
  }

  else
  {
    if (qword_1EDBF0898 != -1)
    {
      swift_once();
    }

    v15 = sub_1BF9B47C8();
    __swift_project_value_buffer(v15, qword_1EDBF08A0);

    v16 = sub_1BF9B47A8();
    v17 = sub_1BF9B5028();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[21];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1BF8DE810(*(v18 + 72), *(v18 + 80), &v24);
      _os_log_impl(&dword_1BF8B8000, v16, v17, "Predicate not matched. Skipping resolution for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB5F320](v20, -1, -1);
      MEMORY[0x1BFB5F320](v19, -1, -1);
    }

    v21 = v0[1];
    v22 = MEMORY[0x1E69E7CC0];

    return v21(v22);
  }
}