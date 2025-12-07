uint64_t sub_1CA512DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA51205C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA512DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA512200();
  *a1 = result;
  return result;
}

uint64_t sub_1CA512E00(uint64_t a1)
{
  v2 = sub_1CA514800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA512E3C(uint64_t a1)
{
  v2 = sub_1CA514800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA512E78(uint64_t a1)
{
  v2 = sub_1CA5148FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA512EB4(uint64_t a1)
{
  v2 = sub_1CA5148FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA512EF0(uint64_t a1)
{
  v2 = sub_1CA5148A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA512F2C(uint64_t a1)
{
  v2 = sub_1CA5148A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA512F68(uint64_t a1)
{
  v2 = sub_1CA514950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA512FA4(uint64_t a1)
{
  v2 = sub_1CA514950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA512FE0(uint64_t a1)
{
  v2 = sub_1CA5149A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA51301C(uint64_t a1)
{
  v2 = sub_1CA5149A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA513058(uint64_t a1)
{
  v2 = sub_1CA514854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA513094(uint64_t a1)
{
  v2 = sub_1CA514854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5130E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1CA94D918();
  a4(v8, v6);
  return sub_1CA94D968();
}

char *sub_1CA513134@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA512708(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CA51317C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
    v4 = *MEMORY[0x1E69E1290];
    v5 = MEMORY[0x1E69E12D8];
    goto LABEL_8;
  }

  if (a4 == 1)
  {
    v4 = *MEMORY[0x1E69E12A0];
    v5 = MEMORY[0x1E69E12E8];
LABEL_8:
    v6 = *v5;
    v7 = v4;
    v4 = v6;
    goto LABEL_9;
  }

  v4 = *MEMORY[0x1E69E1288];
  if (a4)
  {
    v5 = MEMORY[0x1E69E12F0];
    if (a4 == 3)
    {
      v5 = MEMORY[0x1E69E12E0];
    }

    goto LABEL_8;
  }

  v6 = a4;
  v7 = *MEMORY[0x1E69E1288];
LABEL_9:
  v8 = v7;
  v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v11 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 0x65756C6176;
  *(inited + 48) = 0xE500000000000000;
  *(inited + 64) = v11;
  *(inited + 72) = @"Label";
  *(inited + 80) = 0;
  *(inited + 88) = 0xE000000000000000;
  *(inited + 104) = v11;
  *(inited + 112) = @"Placeholder";
  v12 = @"Key";
  v13 = @"Label";
  v14 = @"Placeholder";
  sub_1CA94C438("anything", 8);
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDB9F690;
  v16 = sub_1CA94C368();
  v17 = sub_1CA94C368();

  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = sub_1CA94C3A8();
  v21 = v20;

  *(inited + 120) = v19;
  *(inited + 128) = v21;
  *(inited + 144) = v11;
  *(inited + 152) = @"KeyboardType";
  v22 = sub_1CA94C3A8();
  v24 = v23;
  v25 = @"KeyboardType";

  *(inited + 160) = v22;
  *(inited + 168) = v24;
  *(inited + 184) = v11;
  *(inited + 192) = @"DisallowedVariableTypes";
  v26 = @"DisallowedVariableTypes";
  if (RowTemplateParameterOptions.variablesDisabled.getter())
  {
    sub_1CA25B3D0(0, &qword_1EC446068, off_1E836F388);
    v27 = [swift_getObjCClassFromMetadata() allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA514750(&qword_1EC441A60, type metadata accessor for WFVariableType, &unk_1CA9804C8);
    v28 = sub_1CA94C8F8();

    sub_1CA3E4650(v28, v29, v30, v31, v32, v33, v34);
    v36 = v35;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = v36;
  _s3__C3KeyVMa_0(0);
  sub_1CA514750(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v37 = sub_1CA94C1E8();
  v38 = sub_1CA2F864C(v37);
  if (v6)
  {
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_1CA981310;
    *(v39 + 32) = @"TextContentType";
    v40 = sub_1CA94C3A8();
    *(v39 + 64) = v11;
    *(v39 + 40) = v40;
    *(v39 + 48) = v41;
    v42 = @"TextContentType";
    sub_1CA94C1E8();
    v43 = sub_1CA94C1A8();

    v44 = [v38 definitionByAddingEntriesInDictionary_];

    v38 = v44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_1CA981310;
  *(v45 + 32) = a2;
  *(v45 + 40) = a3;
  v46 = objc_allocWithZone(WFTextInputParameter);
  sub_1CA94C218();
  *(v45 + 48) = [v46 initWithDefinition_];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v47 = sub_1CA94C1E8();

  return v47;
}

uint64_t sub_1CA5136A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5136B8()
{
  if (*(v0[2] + 16) && (v1 = sub_1CA271BF8(v0[4], v0[5]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[2] + 56) + 8 * v1);
    v0[6] = v3;
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v4 = swift_task_alloc();
      v0[7] = v4;
      *v4 = v0;
      v4[1] = sub_1CA513880;
      v5 = v0[3];

      return sub_1CA32B9A8(v5);
    }

    else
    {
      sub_1CA2A741C();
      swift_allocError();
      *v8 = v3;
      *(v8 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v9();
    }
  }

  else
  {
    v7 = v0[1];

    return v7(0, 0xE000000000000000);
  }
}

uint64_t sub_1CA513880()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    v5 = sub_1CA2A630C;
  }

  else
  {
    v5 = sub_1CA513984;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA513984()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    swift_unknownObjectRelease_n();
    v2 = 0;
    v4 = 0xE000000000000000;
    goto LABEL_5;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    v2 = sub_1CA94C3A8();
    v4 = v3;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_5:
    v5 = *(v0 + 8);

    return v5(v2, v4);
  }

  sub_1CA2A741C();
  swift_allocError();
  v8 = v7;
  *(v7 + 24) = swift_getObjectType();
  *v8 = v1;
  *(v8 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v9();
}

uint64_t sub_1CA513AF0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v4 = v3;
  *(v0 + 48) = v5;
  *(v0 + 16) = v6;
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_1CA513BA4;

  return sub_1CA5136A0(v8, v9, v4, v2);
}

uint64_t sub_1CA513BA4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA513CC4, 0, 0);
  }
}

uint64_t sub_1CA513CC4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 48);
  v2 = &selRef_setString_;
  if (v1 == 2)
  {
    v2 = &selRef_setEmail_;
  }

  if (v1 == 1)
  {
    v3 = &selRef_setPhone_;
  }

  else
  {
    v3 = v2;
  }

  sub_1CA5146B8(*(v0 + 32), *(v0 + 40), *(v0 + 16), v3);
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA513D50(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 256) = a5;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 160) = a1;
  *(v5 + 184) = *a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA513D74()
{
  OUTLINED_FUNCTION_14();
  if ([*(v0 + 160) numberOfItems])
  {
    v1 = *(v0 + 160);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1CA513ED0;
    v2 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC444760, &unk_1CA983EF0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1CA5142D8;
    *(v0 + 104) = &block_descriptor_18;
    *(v0 + 112) = v2;
    [v1 getStringRepresentation_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v3();
  }
}

uint64_t sub_1CA513ED0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_1CA514210;
  }

  else
  {
    v5 = sub_1CA513FD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA513FD0()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[19];
  v0[26] = v0[18];
  v0[27] = v1;
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_1CA51406C;
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];

  return sub_1CA5136A0(v4, v3, v5, v6);
}

uint64_t sub_1CA51406C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  v2[29] = v4;
  v2[30] = v5;
  v2[31] = v0;

  if (v0)
  {
    v6 = sub_1CA514278;
  }

  else
  {
    v6 = sub_1CA514174;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA514174()
{
  OUTLINED_FUNCTION_0();
  if (v0[26] == v0[29] && v0[27] == v0[30])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1CA94D7F8();
  }

  OUTLINED_FUNCTION_2_4();

  return v3(v2 & 1);
}

uint64_t sub_1CA514210()
{
  OUTLINED_FUNCTION_14();
  swift_willThrow();
  OUTLINED_FUNCTION_2_4();

  return v0(0);
}

uint64_t sub_1CA514278()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_2_4();

  return v0(0);
}

uint64_t sub_1CA5142D8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1CA35FF80();
  }

  else
  {
    sub_1CA94C3A8();

    return sub_1CA35E734();
  }
}

uint64_t sub_1CA514370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2DF78C;

  return sub_1CA513AF0();
}

uint64_t sub_1CA514430(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1CA3D2984;

  return sub_1CA513D50(a1, a2, v6, v7, v8);
}

uint64_t sub_1CA5144F0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1CA5145A0;

  return sub_1CA5136A0(a1, a2, v7, v6);
}

uint64_t sub_1CA5145A0()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3();
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

void sub_1CA5146B8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1CA94C368();

  [a3 *a4];
}

uint64_t sub_1CA514750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CA5147AC()
{
  result = qword_1EC446070;
  if (!qword_1EC446070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446070);
  }

  return result;
}

unint64_t sub_1CA514800()
{
  result = qword_1EC4460A8;
  if (!qword_1EC4460A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460A8);
  }

  return result;
}

unint64_t sub_1CA514854()
{
  result = qword_1EC4460B0;
  if (!qword_1EC4460B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460B0);
  }

  return result;
}

unint64_t sub_1CA5148A8()
{
  result = qword_1EC4460B8;
  if (!qword_1EC4460B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460B8);
  }

  return result;
}

unint64_t sub_1CA5148FC()
{
  result = qword_1EC4460C0;
  if (!qword_1EC4460C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460C0);
  }

  return result;
}

unint64_t sub_1CA514950()
{
  result = qword_1EC4460C8;
  if (!qword_1EC4460C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460C8);
  }

  return result;
}

unint64_t sub_1CA5149A4()
{
  result = qword_1EC4460D0;
  if (!qword_1EC4460D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460D0);
  }

  return result;
}

_BYTE *sub_1CA5149F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA514B28()
{
  result = qword_1EC446108;
  if (!qword_1EC446108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446108);
  }

  return result;
}

unint64_t sub_1CA514B80()
{
  result = qword_1EC446110;
  if (!qword_1EC446110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446110);
  }

  return result;
}

unint64_t sub_1CA514BD8()
{
  result = qword_1EC446118;
  if (!qword_1EC446118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446118);
  }

  return result;
}

unint64_t sub_1CA514C30()
{
  result = qword_1EC446120;
  if (!qword_1EC446120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446120);
  }

  return result;
}

unint64_t sub_1CA514C88()
{
  result = qword_1EC446128;
  if (!qword_1EC446128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446128);
  }

  return result;
}

unint64_t sub_1CA514CE0()
{
  result = qword_1EC446130;
  if (!qword_1EC446130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446130);
  }

  return result;
}

unint64_t sub_1CA514D38()
{
  result = qword_1EC446138;
  if (!qword_1EC446138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446138);
  }

  return result;
}

unint64_t sub_1CA514D90()
{
  result = qword_1EC446140;
  if (!qword_1EC446140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446140);
  }

  return result;
}

unint64_t sub_1CA514DE8()
{
  result = qword_1EC446148;
  if (!qword_1EC446148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446148);
  }

  return result;
}

unint64_t sub_1CA514E40()
{
  result = qword_1EC446150;
  if (!qword_1EC446150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446150);
  }

  return result;
}

unint64_t sub_1CA514E98()
{
  result = qword_1EC446158;
  if (!qword_1EC446158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446158);
  }

  return result;
}

unint64_t sub_1CA514EF0()
{
  result = qword_1EC446160;
  if (!qword_1EC446160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446160);
  }

  return result;
}

unint64_t sub_1CA514F48()
{
  result = qword_1EC446168;
  if (!qword_1EC446168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446168);
  }

  return result;
}

uint64_t sub_1CA514FA4()
{
  OUTLINED_FUNCTION_0();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_1CA94AC88();
  v0[5] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_13_5();
  v0[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446170, &qword_1CA98A8F0);
  OUTLINED_FUNCTION_18_0(v5);
  v0[9] = OUTLINED_FUNCTION_13_5();
  v0[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446178, &qword_1CA98A8F8);
  OUTLINED_FUNCTION_18_0(v6);
  v0[11] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94B068();
  v0[12] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94AEE8();
  v0[15] = v9;
  OUTLINED_FUNCTION_12(v9);
  v0[16] = v10;
  v0[17] = OUTLINED_FUNCTION_45();
  v11 = sub_1CA94AD88();
  v0[18] = v11;
  OUTLINED_FUNCTION_12(v11);
  v0[19] = v12;
  v0[20] = OUTLINED_FUNCTION_45();
  v13 = sub_1CA94ADC8();
  v0[21] = v13;
  OUTLINED_FUNCTION_12(v13);
  v0[22] = v14;
  v0[23] = OUTLINED_FUNCTION_13_5();
  v0[24] = swift_task_alloc();
  v15 = sub_1CA94AD48();
  v0[25] = v15;
  OUTLINED_FUNCTION_12(v15);
  v0[26] = v16;
  v0[27] = OUTLINED_FUNCTION_13_5();
  v0[28] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1CA515250(uint64_t a1)
{
  v2 = v1[4];
  sub_1CA94A8B8();
  v3 = (v2 + *(type metadata accessor for TypedValueConversionContext(0) + 20));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v12 = (*(v5 + 8) + **(v5 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  v1[29] = v6;
  *v6 = v7;
  v6[1] = sub_1CA515398;
  v8 = v1[28];
  v9 = v1[24];
  v10 = v1[4];

  return v12(v8, v9, v10, v4, v5);
}

uint64_t sub_1CA515398()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA515494()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v3 + 8);
  v4(*(v0 + 192), v2);
  sub_1CA94A8B8();
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x1E69DB0B0] || v5 == *MEMORY[0x1E69DB0A0])
  {
LABEL_6:
    v7 = *(v0 + 224);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v4(*(v0 + 184), *(v0 + 168));
    sub_1CA2FFC58();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_46_7(v10, v11);
    (*(v8 + 8))(v7, v9);
    goto LABEL_19;
  }

  if (v5 == *MEMORY[0x1E69DB098])
  {
    v12 = *(v0 + 184);
    (*(*(v0 + 176) + 96))(v12, *(v0 + 168));
    v14 = *(*v12 + 32);
    v13 = *(*v12 + 40);
    sub_1CA94C218();
    goto LABEL_11;
  }

  if (v5 != *MEMORY[0x1E69DB088])
  {
    if (v5 != *MEMORY[0x1E69DB0A8])
    {
      OUTLINED_FUNCTION_53();

      return sub_1CA94D7E8();
    }

    goto LABEL_6;
  }

  v15 = *(v0 + 160);
  v16 = *(v0 + 144);
  v17 = *(v0 + 152);
  (*(*(v0 + 176) + 96))(*(v0 + 184), *(v0 + 168));
  v18 = swift_projectBox();
  (*(v17 + 16))(v15, v18, v16);
  v14 = sub_1CA94AD78();
  v13 = v19;
  v20 = OUTLINED_FUNCTION_126();
  v21(v20);
LABEL_11:
  *(v0 + 248) = v14;
  *(v0 + 256) = v13;
  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v24 = *(v0 + 200);
  v25 = *(v0 + 208);

  (*(v25 + 16))(v23, v22, v24);
  v26 = OUTLINED_FUNCTION_126();
  if (v27(v26) != *MEMORY[0x1E69DAF98])
  {
    v44 = *(v0 + 216);
    v45 = *(v0 + 224);
    v46 = *(v0 + 200);
    v47 = *(v0 + 208);

    v48 = *(v47 + 8);
    v48(v44, v46);
    sub_1CA2FFC58();
    v49 = swift_allocError();
    OUTLINED_FUNCTION_46_7(v49, v50);
    v48(v45, v46);
LABEL_19:
    OUTLINED_FUNCTION_0_48();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_53();

    __asm { BRAA            X1, X16 }
  }

  v28 = *(v0 + 216);
  v30 = *(v0 + 128);
  v29 = *(v0 + 136);
  v32 = *(v0 + 112);
  v31 = *(v0 + 120);
  v33 = *(v0 + 96);
  v34 = *(v0 + 104);
  (*(*(v0 + 208) + 96))(v28, *(v0 + 200));
  (*(v30 + 32))(v29, v28, v31);
  (*(v34 + 104))(v32, *MEMORY[0x1E69DB238], v33);
  LOBYTE(v28) = sub_1CA94AEC8();
  (*(v34 + 8))(v32, v33);
  if ((v28 & 1) == 0)
  {
    OUTLINED_FUNCTION_27_16();
    sub_1CA94A898();
    v55 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
    OUTLINED_FUNCTION_116();
    sub_1CA320B2C();
    sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
    [objc_allocWithZone(MEMORY[0x1E69AC7F0]) init];
    v56 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    OUTLINED_FUNCTION_16_20(v56, v57, v58, v59, v60, v61, v62, v63);
LABEL_28:
    (*(v31 + 8))(v32, v33);
    (*(v29 + 8))();
    goto LABEL_29;
  }

  v29 = *(v0 + 88);
  sub_1CA94A938();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446180, &qword_1CA98A900);
  if (__swift_getEnumTagSinglePayload(v29, 1, v35) != 1)
  {
    OUTLINED_FUNCTION_27_16();
    v64 = *(v0 + 88);
    v65 = sub_1CA94AD18();
    (*(*(v35 - 8) + 8))(v64, v35);
    sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    sub_1CA25B3D0(0, &qword_1EC4442D0, 0x1E69AC818);
    v66 = v65;
    v67 = OUTLINED_FUNCTION_116();
    sub_1CA4ECDAC(v67, v68);
    v69 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    OUTLINED_FUNCTION_16_20(v69, v70, v71, v72, v73, v74, v75, v76);

    goto LABEL_28;
  }

  sub_1CA30F7DC(*(v0 + 88), &qword_1EC446178, &qword_1CA98A8F8);
  v36 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v37 = sub_1CA94A968();
  *(v0 + 264) = v37;
  v38 = *(v37 + 32);
  *(v0 + 336) = v38;
  v39 = -1;
  v40 = -1 << v38;
  v41 = *(v37 + 64);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  *(v0 + 272) = v36;
  v42 = v39 & v41;
  if (v42)
  {
    v43 = 0;
LABEL_35:
    v81 = *(v0 + 64);
    v82 = *(v0 + 72);
    v83 = *(v0 + 40);
    v84 = *(v0 + 48);
    v85 = (v42 - 1) & v42;
    v86 = __clz(__rbit64(v42)) | (v43 << 6);
    v87 = (*(v37 + 48) + 16 * v86);
    v89 = *v87;
    v88 = v87[1];
    (*(v84 + 16))(v81, *(v37 + 56) + *(v84 + 72) * v86, v83);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
    v91 = *(v90 + 48);
    *v82 = v89;
    *(v82 + 1) = v88;
    (*(v84 + 32))(&v82[v91], v81, v83);
    v92 = OUTLINED_FUNCTION_67();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v90);
    sub_1CA94C218();
    v80 = v43;
  }

  else
  {
    v79 = 0;
    v80 = ((63 - v40) >> 6) - 1;
    while (v80 != v79)
    {
      v43 = v79 + 1;
      v42 = *(v37 + 72 + 8 * v79++);
      if (v42)
      {
        goto LABEL_35;
      }
    }

    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
    OUTLINED_FUNCTION_42(v119);
    v85 = 0;
  }

  *(v0 + 280) = v85;
  *(v0 + 288) = v80;
  v95 = *(v0 + 80);
  sub_1CA517CD4(*(v0 + 72), v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
  if (__swift_getEnumTagSinglePayload(v95, 1, v96) == 1)
  {
    v97 = *(v0 + 256);
    v98 = *(v0 + 248);
    v120 = *(v0 + 224);
    v99 = *(v0 + 200);
    v100 = *(v0 + 208);
    v101 = *(v0 + 128);
    v102 = *(v0 + 136);
    v103 = *(v0 + 120);

    sub_1CA94C218();
    sub_1CA94A898();
    v104 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
    v105 = sub_1CA320B2C();
    v106 = objc_allocWithZone(MEMORY[0x1E69AC7D0]);
    sub_1CA517B94(1, v105, MEMORY[0x1E69E7CC0], 0, 0);
    sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    sub_1CA25B3D0(0, &qword_1EC4442D0, 0x1E69AC818);
    sub_1CA4ECDAC(v98, v97);
    v107 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    OUTLINED_FUNCTION_16_20(v107, v108, v109, v110, v111, v112, v113, v114);
    (*(v101 + 8))(v102, v103);
    (*(v100 + 8))(v120, v99);
LABEL_29:
    OUTLINED_FUNCTION_0_48();

    OUTLINED_FUNCTION_53();

    __asm { BRAA            X2, X16 }
  }

  v115 = OUTLINED_FUNCTION_9_25();
  v116(v115);
  v117 = swift_task_alloc();
  *(v0 + 312) = v117;
  *v117 = v0;
  OUTLINED_FUNCTION_2_42(v117);
  OUTLINED_FUNCTION_53();

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA515DFC()
{
  (*(v0[22] + 8))(v0[24], v0[21]);
  v1 = OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_45_8(v1);

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA515EF0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 320) = v5;
  *(v3 + 328) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA516014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_147();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 320);
  objc_allocWithZone(MEMORY[0x1E69AC950]);
  v30 = v29;
  v31 = OUTLINED_FUNCTION_116();
  v33 = sub_1CA32E17C(v31, v32, v29);
  MEMORY[0x1CCAA1490]();
  if (*((*(v26 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v26 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v34 = *(v26 + 320);
    v36 = *(v26 + 48);
    v35 = *(v26 + 56);
    v37 = *(v26 + 40);
    OUTLINED_FUNCTION_116();
    sub_1CA94C6E8();

    (*(v36 + 8))(v35, v37);
    v38 = *(v26 + 16);
    v39 = *(v26 + 280);
    v40 = *(v26 + 288);
    *(v26 + 272) = v38;
    v88 = v38;
    if (v39)
    {
      break;
    }

    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= (((1 << *(v26 + 336)) + 63) >> 6))
      {
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
        OUTLINED_FUNCTION_42(v84);
        v47 = 0;
        goto LABEL_9;
      }

      v41 = *(v26 + 264);
      v39 = *(v41 + 8 * v42 + 64);
      ++v40;
      if (v39)
      {
        v40 = v42;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_18:
    sub_1CA94C698();
  }

  v41 = *(v26 + 264);
LABEL_8:
  v44 = *(v26 + 64);
  v43 = *(v26 + 72);
  v45 = *(v26 + 40);
  v46 = *(v26 + 48);
  v47 = (v39 - 1) & v39;
  v48 = __clz(__rbit64(v39)) | (v40 << 6);
  v49 = (*(v41 + 48) + 16 * v48);
  v50 = *v49;
  v51 = v49[1];
  (*(v46 + 16))(v44, *(v41 + 56) + *(v46 + 72) * v48, v45);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
  v53 = *(v52 + 48);
  *v43 = v50;
  *(v43 + 1) = v51;
  (*(v46 + 32))(&v43[v53], v44, v45);
  v54 = OUTLINED_FUNCTION_67();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v52);
  sub_1CA94C218();
LABEL_9:
  *(v26 + 280) = v47;
  *(v26 + 288) = v40;
  v57 = *(v26 + 80);
  sub_1CA517CD4(*(v26 + 72), v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
  if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
  {
    v59 = *(v26 + 256);
    v60 = *(v26 + 248);
    v61 = *(v26 + 224);
    v62 = *(v26 + 208);
    v86 = *(v26 + 200);

    sub_1CA94C218();
    sub_1CA94A898();
    v63 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
    v64 = sub_1CA320B2C();
    v65 = objc_allocWithZone(MEMORY[0x1E69AC7D0]);
    v66 = sub_1CA517B94(1, v64, v88, 0, 0);
    a15 = sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    a12 = v66;
    sub_1CA25B3D0(0, &qword_1EC4442D0, 0x1E69AC818);
    v67 = sub_1CA4ECDAC(v60, v59);
    v68 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v89 = sub_1CA320AB4(&a12, v67);
    v69 = OUTLINED_FUNCTION_126();
    v70(v69);
    (*(v62 + 8))(v61, v86);
    OUTLINED_FUNCTION_0_48();
    v85 = *(v26 + 64);
    v87 = *(v26 + 56);

    OUTLINED_FUNCTION_68();

    return v73(v71, v72, v73, v74, v75, v76, v77, v78, v85, v87, v89, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v80 = OUTLINED_FUNCTION_9_25();
    v81(v80);
    v82 = swift_task_alloc();
    *(v26 + 312) = v82;
    *v82 = v26;
    OUTLINED_FUNCTION_2_42(v82);
    OUTLINED_FUNCTION_68();

    return TypedValueTransformer.transform(input:with:)();
  }
}

uint64_t sub_1CA516478()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  v7 = OUTLINED_FUNCTION_126();
  v8(v7);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v9 = OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_45_8(v9);

  OUTLINED_FUNCTION_5();

  return v10();
}

uint64_t sub_1CA5165B8()
{
  OUTLINED_FUNCTION_0();
  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v4);
  v0[12] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94AC88();
  v0[13] = v5;
  OUTLINED_FUNCTION_12(v5);
  v0[14] = v6;
  v0[15] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  OUTLINED_FUNCTION_18_0(v7);
  v0[16] = OUTLINED_FUNCTION_13_5();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v8 = sub_1CA94ADC8();
  v0[19] = v8;
  OUTLINED_FUNCTION_12(v8);
  v0[20] = v9;
  v0[21] = OUTLINED_FUNCTION_13_5();
  v0[22] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA51672C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_59_0();
  v1 = [*(v0 + 80) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  *(v0 + 184) = sub_1CA55C6B4(v0 + 16);
  v2 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 192) = [v2 valueType];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 200) = v3;
  *v3 = v4;
  v3[1] = sub_1CA5168B4;
  OUTLINED_FUNCTION_4_32();

  return sub_1CA2FF3B4();
}

uint64_t sub_1CA5168B4()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA5169DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_59_0();

  OUTLINED_FUNCTION_17_14();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_32();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1CA517010()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 280) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA517658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_59_0();
  v11 = *(v10 + 248);
  v12 = *(v10 + 176);
  v13 = *(v10 + 152);
  v14 = *(v10 + 160);

  (*(v14 + 8))(v12, v13);
  OUTLINED_FUNCTION_17_14();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_32();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1CA517714()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  *v4 = *v1;
  v3[40] = v0;

  v5 = v2[38];
  if (v0)
  {
    v7 = v3[20];
    v6 = v3[21];
    v8 = v3[19];
    v9 = *(v7 + 8);
    v3[41] = v9;
    v3[42] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA517874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[22];
  v8 = v6[23];
  v9 = v6[20];
  v16 = v6[19];
  sub_1CA94B458();
  v10 = OUTLINED_FUNCTION_67();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_1CA94A988();

  (*(v9 + 8))(v7, v16);

  OUTLINED_FUNCTION_5();

  return v14();
}

uint64_t sub_1CA5179A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_59_0();
  v11 = *(v10 + 328);
  v12 = *(v10 + 176);
  v13 = *(v10 + 152);

  v11(v12, v13);
  OUTLINED_FUNCTION_17_14();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_32();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1CA517A50()
{
  OUTLINED_FUNCTION_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1CA2DF78C;

  return sub_1CA5165B8();
}

uint64_t sub_1CA517AF8()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA2FFB5C;

  return sub_1CA514FA4();
}

id sub_1CA517B94(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  v9 = sub_1CA94C648();

  if (a5)
  {
    v10 = sub_1CA94C368();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithTransient:a1 & 1 identifier:a2 properties:v9 managedAccountIdentifier:v10];

  return v11;
}

uint64_t sub_1CA517C64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA517CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446170, &qword_1CA98A8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_44_7(uint64_t a1)
{

  return sub_1CA94D588();
}

uint64_t OUTLINED_FUNCTION_47_10()
{

  return swift_task_alloc();
}

id sub_1CA517DB8()
{
  v223 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9C76A0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("save|file|document|upload|dropbox", 33);
  v6 = v5;
  v7 = sub_1CA94C438("save|file|document|upload|dropbox", 33);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v250 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v251 = v11;
  v12 = &v220 - v250;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v247 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v248 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v249 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v220 - v249;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v245 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v244 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v222 = xmmword_1CA97EDF0;
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionResult";
  v21 = @"Description";
  v22 = @"DescriptionResult";
  v23 = sub_1CA94C438("The saved files", 15);
  v241 = v24;
  v242 = v23;
  v240 = sub_1CA94C438("The saved files", 15);
  v26 = v25;
  *&v243 = &v220;
  MEMORY[0x1EEE9AC00](v240);
  v27 = &v220 - v250;
  sub_1CA948D98();
  v28 = v247;
  v29 = [v247 bundleURL];
  v246 = inited;
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v249;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v242, v241, v240, v26, 0, 0, v27, &v220 - v31);
  v33 = v245;
  *(v20 + 64) = v245;
  *(v20 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = sub_1CA94C438("Save files to Dropbox. Turn off “Ask Where to Save” in order to specify a destination path.", 95);
  v241 = v36;
  v242 = v35;
  v240 = sub_1CA94C438("Save files to Dropbox. Turn off “Ask Where to Save” in order to specify a destination path.", 95);
  v38 = v37;
  *&v243 = &v220;
  MEMORY[0x1EEE9AC00](v240);
  v39 = &v220 - v250;
  sub_1CA948D98();
  v40 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v242, v241, v240, v38, 0, 0, v39, &v220 - v31);
  *(v20 + 104) = v33;
  *(v20 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v244;
  v45 = sub_1CA6B3784(v43);
  v46 = v246;
  v246[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconName";
  v46[20] = 0x786F62706F7244;
  v46[21] = 0xE700000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"Input";
  v48 = v47;
  v49 = v46;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v243 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 1;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x7475706E494657;
  *(v50 + 104) = 0xE700000000000000;
  *(v50 + 120) = v48;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v235;
  *(v50 + 192) = &unk_1F4A02D38;
  v52 = @"IconName";
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v234 = v55;
  v49[25] = v54;
  v49[28] = v55;
  v49[29] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438("Save Dropbox File (Action Name)", 31);
  v59 = v58;
  v60 = sub_1CA94C438("Save Dropbox File", 17);
  v62 = v61;
  v242 = &v220;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v220 - v250;
  sub_1CA948D98();
  v64 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v220 - v249;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v57, v59, v60, v62, 0, 0, v63, v65);
  v69 = v245;
  v68 = v246;
  v246[30] = v67;
  v68[33] = v69;
  v68[34] = @"Output";
  v70 = swift_allocObject();
  *(v70 + 16) = v243;
  *(v70 + 32) = 0x75736F6C63736944;
  *(v70 + 40) = 0xEF6C6576654C6572;
  *(v70 + 48) = 0x63696C627550;
  *(v70 + 56) = 0xE600000000000000;
  *(v70 + 72) = MEMORY[0x1E69E6158];
  *(v70 + 80) = 0x656C7069746C754DLL;
  *(v70 + 88) = 0xE800000000000000;
  *(v70 + 96) = 1;
  *(v70 + 120) = MEMORY[0x1E69E6370];
  *(v70 + 128) = 0x614E74757074754FLL;
  *(v70 + 136) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438("Saved File (Default Output Name)", 32);
  v240 = v73;
  v241 = v72;
  v74 = sub_1CA94C438("Saved File", 10);
  v76 = v75;
  v242 = &v220;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v220 - v250;
  sub_1CA948D98();
  v78 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v220 - v249;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 144) = sub_1CA2F9F14(v241, v240, v74, v76, 0, 0, v77, v79);
  *(v70 + 168) = v69;
  *(v70 + 176) = 0x7365707954;
  *(v70 + 216) = v235;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = &unk_1F4A02D68;
  v81 = MEMORY[0x1E69E6158];
  v82 = sub_1CA94C1E8();
  v83 = v246;
  v246[35] = v82;
  v83[38] = v234;
  v83[39] = @"ParameterCollapsingBehavior";
  v83[40] = 0x726576654ELL;
  v83[41] = 0xE500000000000000;
  v83[43] = v81;
  v83[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v242 = swift_allocObject();
  *(v242 + 1) = xmmword_1CA981570;
  v241 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v84 = swift_allocObject();
  *(v84 + 16) = v243;
  v221 = 0x80000001CA99E620;
  v233 = 0xD000000000000011;
  *(v84 + 32) = @"Class";
  *(v84 + 40) = 0xD000000000000011;
  *(v84 + 48) = 0x80000001CA99E620;
  *(v84 + 64) = v81;
  *(v84 + 72) = @"DefaultValue";
  *(v84 + 80) = 1;
  *(v84 + 104) = MEMORY[0x1E69E6370];
  *(v84 + 112) = @"Key";
  v240 = 0x80000001CA9C77C0;
  *(v84 + 120) = 0xD000000000000010;
  *(v84 + 128) = 0x80000001CA9C77C0;
  *(v84 + 144) = v81;
  *(v84 + 152) = @"Label";
  v85 = @"Class";
  v86 = @"Key";
  v87 = @"Label";
  v88 = v85;
  v89 = v86;
  v90 = v87;
  *&v231 = v88;
  v232 = v89;
  *&v236 = v90;
  v91 = @"ParameterCollapsingBehavior";
  v92 = @"Parameters";
  v93 = @"DefaultValue";
  v94 = sub_1CA94C438("Ask Where to Save (WFAskWhereToSave)", 36);
  v96 = v95;
  v97 = sub_1CA94C438("Ask Where to Save", 17);
  v99 = v98;
  v238 = &v220;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v220 - v250;
  sub_1CA948D98();
  v101 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v220 - v249;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  *(v84 + 184) = v245;
  *(v84 + 160) = v104;
  _s3__C3KeyVMa_0(0);
  v238 = v105;
  v237 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v106 = sub_1CA94C1E8();
  v107 = sub_1CA2F864C(v106);
  v242[4] = v107;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1CA981300;
  *(v108 + 32) = @"AutocapitalizationType";
  *(v108 + 40) = 1701736270;
  *(v108 + 48) = 0xE400000000000000;
  v109 = MEMORY[0x1E69E6158];
  v110 = v231;
  *(v108 + 64) = MEMORY[0x1E69E6158];
  *(v108 + 72) = v110;
  *(v108 + 80) = 0xD000000000000014;
  *(v108 + 88) = 0x80000001CA99B500;
  *(v108 + 104) = v109;
  *(v108 + 112) = @"Description";
  v226 = v110;
  v111 = @"AutocapitalizationType";
  v112 = @"Description";
  v113 = sub_1CA94C438("The path to save to, such as /folder/file.txt (WFFileDestinationPath)", 71);
  v229 = v114;
  v230 = v113;
  v115 = sub_1CA94C438("The path to save to, such as /folder/file.txt", 47);
  v228 = v116;
  *&v231 = &v220;
  MEMORY[0x1EEE9AC00](v115);
  v117 = v250;
  sub_1CA948D98();
  v118 = v247;
  v119 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v220 - v249;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 120) = sub_1CA2F9F14(v230, v229, v115, v228, 0, 0, &v220 - v117, v120);
  v122 = v245;
  *(v108 + 144) = v245;
  *(v108 + 152) = @"DisableAutocorrection";
  *(v108 + 160) = 1;
  v123 = v232;
  *(v108 + 184) = MEMORY[0x1E69E6370];
  *(v108 + 192) = v123;
  *(v108 + 200) = 0xD000000000000015;
  *(v108 + 208) = 0x80000001CA9C78B0;
  v124 = v236;
  *(v108 + 224) = MEMORY[0x1E69E6158];
  *(v108 + 232) = v124;
  v225 = v123;
  v224 = v124;
  v125 = @"DisableAutocorrection";
  v232 = sub_1CA94C438("Destination Path (WFFileDestinationPath)", 40);
  *&v231 = v126;
  v127 = sub_1CA94C438("Destination Path", 16);
  v230 = v128;
  *&v236 = &v220;
  MEMORY[0x1EEE9AC00](v127);
  sub_1CA948D98();
  v129 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v220 - v249;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 240) = sub_1CA2F9F14(v232, v231, v127, v230, 0, 0, &v220 - v117, v130);
  *(v108 + 264) = v122;
  *(v108 + 272) = @"RequiredResources";
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v132 = swift_allocObject();
  v231 = xmmword_1CA981310;
  *(v132 + 16) = xmmword_1CA981310;
  v133 = swift_allocObject();
  v236 = xmmword_1CA9813C0;
  *(v133 + 16) = xmmword_1CA9813C0;
  strcpy((v133 + 32), "WFParameterKey");
  *(v133 + 47) = -18;
  v134 = v240;
  *(v133 + 48) = 0xD000000000000010;
  *(v133 + 56) = v134;
  v230 = 0x80000001CA993570;
  v135 = MEMORY[0x1E69E6158];
  *(v133 + 72) = MEMORY[0x1E69E6158];
  *(v133 + 80) = 0xD000000000000010;
  *(v133 + 88) = 0x80000001CA993570;
  *(v133 + 96) = 0;
  *(v133 + 120) = MEMORY[0x1E69E6370];
  *(v133 + 128) = 0x72756F7365524657;
  *(v133 + 168) = v135;
  v228 = 0xD00000000000001BLL;
  v229 = 0x80000001CA993590;
  *(v133 + 136) = 0xEF7373616C436563;
  *(v133 + 144) = 0xD00000000000001BLL;
  *(v133 + 152) = 0x80000001CA993590;
  v220 = @"RequiredResources";
  *(v132 + 32) = sub_1CA94C1E8();
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v227 = v136;
  *(v108 + 280) = v132;
  *(v108 + 304) = v136;
  *(v108 + 312) = @"TextAlignment";
  *(v108 + 344) = v135;
  *(v108 + 320) = 1952867660;
  *(v108 + 328) = 0xE400000000000000;
  v137 = @"TextAlignment";
  v138 = sub_1CA94C1E8();
  v139 = sub_1CA2F864C(v138);
  v242[5] = v139;
  v140 = swift_allocObject();
  *(v140 + 16) = v243;
  v141 = v233;
  *(v140 + 32) = v226;
  *(v140 + 40) = v141;
  *(v140 + 48) = v221;
  v142 = v225;
  *(v140 + 64) = v135;
  *(v140 + 72) = v142;
  *(v140 + 80) = 0xD000000000000013;
  *(v140 + 88) = 0x80000001CA9C7920;
  v143 = v224;
  *(v140 + 104) = v135;
  *(v140 + 112) = v143;
  v144 = sub_1CA94C438("Replace Existing Files (WFSaveFileOverwrite)", 44);
  v146 = v145;
  v147 = sub_1CA94C438("Replace Existing Files", 22);
  v149 = v148;
  v221 = &v220;
  MEMORY[0x1EEE9AC00](v147);
  v150 = &v220 - v250;
  sub_1CA948D98();
  v151 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v220 - v249;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v140 + 120) = sub_1CA2F9F14(v144, v146, v147, v149, 0, 0, v150, v152);
  v154 = v220;
  *(v140 + 144) = v245;
  *(v140 + 152) = v154;
  v155 = swift_allocObject();
  *(v155 + 16) = v231;
  v156 = swift_allocObject();
  *(v156 + 16) = v236;
  strcpy((v156 + 32), "WFParameterKey");
  *(v156 + 47) = -18;
  *(v156 + 48) = 0xD000000000000010;
  *(v156 + 56) = v240;
  v157 = MEMORY[0x1E69E6158];
  *(v156 + 72) = MEMORY[0x1E69E6158];
  *(v156 + 80) = 0xD000000000000010;
  *(v156 + 88) = v230;
  *(v156 + 96) = 0;
  *(v156 + 120) = MEMORY[0x1E69E6370];
  *(v156 + 128) = 0x72756F7365524657;
  *(v156 + 168) = v157;
  *(v156 + 136) = 0xEF7373616C436563;
  v158 = v229;
  *(v156 + 144) = v228;
  *(v156 + 152) = v158;
  v159 = v157;
  *(v155 + 32) = sub_1CA94C1E8();
  *(v140 + 184) = v227;
  *(v140 + 160) = v155;
  v160 = sub_1CA94C1E8();
  v161 = sub_1CA2F864C(v160);
  v242[6] = v161;
  v162 = swift_allocObject();
  *(v162 + 16) = v243;
  *&v243 = 0xD000000000000019;
  v163 = v225;
  *(v162 + 32) = v226;
  *(v162 + 40) = 0xD000000000000019;
  *(v162 + 48) = 0x80000001CA99B030;
  *(v162 + 64) = v159;
  *(v162 + 72) = v163;
  *(v162 + 80) = 0x7475706E494657;
  *(v162 + 88) = 0xE700000000000000;
  v164 = v224;
  *(v162 + 104) = v159;
  *(v162 + 112) = v164;
  v165 = sub_1CA94C438("File (WFInput)", 14);
  v225 = v166;
  v226 = v165;
  v167 = sub_1CA94C438("File", 4);
  v224 = v168;
  v239 = &v220;
  MEMORY[0x1EEE9AC00](v167);
  v169 = v250;
  sub_1CA948D98();
  v170 = v247;
  v171 = [v247 bundleURL];
  v221 = &v220;
  MEMORY[0x1EEE9AC00](v171);
  v172 = v249;
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v162 + 120) = sub_1CA2F9F14(v226, v225, v167, v224, 0, 0, &v220 - v169, &v220 - v172);
  v174 = v245;
  *(v162 + 144) = v245;
  *(v162 + 152) = @"Placeholder";
  v175 = @"Placeholder";
  v176 = sub_1CA94C438("File (WFInput)", 14);
  v225 = v177;
  v226 = v176;
  v178 = sub_1CA94C438("File", 4);
  v224 = v179;
  v239 = &v220;
  MEMORY[0x1EEE9AC00](v178);
  sub_1CA948D98();
  v180 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182 = sub_1CA2F9F14(v226, v225, v178, v224, 0, 0, &v220 - v169, &v220 - v172);
  *(v162 + 184) = v174;
  *(v162 + 160) = v182;
  v183 = sub_1CA94C1E8();
  v184 = sub_1CA2F864C(v183);
  v185 = v242;
  v242[7] = v184;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v187 = v246;
  v246[45] = v185;
  v187[48] = v186;
  v187[49] = @"ParameterSummary";
  v188 = @"ParameterSummary";
  v189 = sub_1CA94C438("Save ${WFInput} (Parameter Summary)", 35);
  v191 = v190;
  v192 = sub_1CA94C438("Save ${WFInput}", 15);
  v194 = v193;
  MEMORY[0x1EEE9AC00](v192);
  v195 = &v220 - v250;
  sub_1CA948D98();
  v196 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  v197 = &v220 - v249;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v199 = sub_1CA2F9F14(v189, v191, v192, v194, 0, 0, v195, v197);
  v200 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v201 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v202 = v246;
  v246[50] = v200;
  v202[53] = v201;
  v202[54] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v203 = swift_allocObject();
  *(v203 + 16) = v236;
  v204 = swift_initStackObject();
  *(v204 + 16) = v222;
  *(v204 + 32) = v233;
  *(v204 + 40) = 0x80000001CA99B240;
  v205 = swift_allocObject();
  *(v205 + 16) = v231;
  v206 = swift_allocObject();
  *(v206 + 16) = v236;
  strcpy((v206 + 32), "WFParameterKey");
  *(v206 + 47) = -18;
  v207 = v240;
  *(v206 + 48) = 0xD000000000000010;
  *(v206 + 56) = v207;
  v208 = MEMORY[0x1E69E6158];
  *(v206 + 72) = MEMORY[0x1E69E6158];
  *(v206 + 80) = 0xD000000000000010;
  *(v206 + 88) = v230;
  *(v206 + 96) = 1;
  *(v206 + 120) = MEMORY[0x1E69E6370];
  *(v206 + 128) = 0x72756F7365524657;
  *(v206 + 168) = v208;
  v210 = v228;
  v209 = v229;
  *(v206 + 136) = 0xEF7373616C436563;
  *(v206 + 144) = v210;
  *(v206 + 152) = v209;
  v211 = @"RequiredResources";
  *(v205 + 32) = sub_1CA94C1E8();
  *(v204 + 48) = v205;
  *(v204 + 72) = v227;
  *(v204 + 80) = 0x72756F7365524657;
  *(v204 + 120) = v208;
  v212 = v243;
  *(v204 + 88) = 0xEF7373616C436563;
  *(v204 + 96) = v212;
  *(v204 + 104) = 0x80000001CA9932D0;
  *(v203 + 32) = sub_1CA94C1E8();
  *(v203 + 56) = v234;
  *(v203 + 64) = 0xD000000000000017;
  *(v203 + 72) = 0x80000001CA997E10;
  *(v203 + 120) = v208;
  *(v203 + 88) = v208;
  *(v203 + 96) = 0xD00000000000001CLL;
  *(v203 + 104) = 0x80000001CA993620;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v214 = v246;
  v246[55] = v203;
  v214[58] = v213;
  v214[59] = @"UserInterfaceClasses";
  v215 = @"UserInterfaceClasses";
  v216 = sub_1CA94C1E8();
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v214[60] = v216;
  v214[63] = v217;
  v214[64] = @"UserInterfaces";
  v214[68] = v235;
  v214[65] = &unk_1F4A02DF8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v218 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA519958()
{
  v161 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000020;
  *(inited + 48) = 0x80000001CA9C79B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("calendar|reminder|next|upcoming", 31);
  v6 = v5;
  v7 = sub_1CA94C438("calendar|reminder|next|upcoming", 31);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v169 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = v11;
  v12 = &v154 - v169;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v165 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v167 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v168 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v154 - v168;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v166 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v163 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets upcoming reminders, ordered from nearest to farthest away due date.", 72);
  v28 = v27;
  v29 = sub_1CA94C438("Gets upcoming reminders, ordered from nearest to farthest away due date.", 72);
  v31 = v30;
  v162 = &v154;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v154 - v169;
  sub_1CA948D98();
  v33 = [v165 bundleURL];
  v164 = inited;
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v154 - v168;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v34);
  *(v23 + 64) = v166;
  *(v23 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v163;
  v39 = sub_1CA6B3784(v37);
  v40 = v164;
  v164[20] = v39;
  v40[23] = v38;
  v40[24] = @"LocallyProcessesData";
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 200) = 1;
  v40[28] = v41;
  v40[29] = @"Name";
  v42 = @"LocallyProcessesData";
  v43 = @"Name";
  v162 = sub_1CA94C438("Get Upcoming Reminders (Action Name)", 36);
  v160 = v44;
  v45 = sub_1CA94C438("Get Upcoming Reminders", 22);
  v47 = v46;
  v163 = &v154;
  MEMORY[0x1EEE9AC00](v45);
  v48 = v169;
  sub_1CA948D98();
  v49 = v165;
  v50 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v154 - v168;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v162, v160, v45, v47, 0, 0, &v154 - v48, v51);
  v54 = v164;
  v164[30] = v53;
  v55 = v166;
  v54[33] = v166;
  v54[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA9813C0;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  *(v56 + 48) = 1;
  *(v56 + 72) = MEMORY[0x1E69E6370];
  *(v56 + 80) = 0x614E74757074754FLL;
  *(v56 + 88) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v162 = sub_1CA94C438("Reminders (Default Output Name)", 31);
  v160 = v58;
  v59 = sub_1CA94C438("Reminders", 9);
  v159 = v60;
  v163 = &v154;
  MEMORY[0x1EEE9AC00](v59);
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v154 - v168;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 96) = sub_1CA2F9F14(v162, v160, v59, v159, 0, 0, &v154 - v48, v62);
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x7365707954;
  *(v56 + 136) = 0xE500000000000000;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 168) = v160;
  *(v56 + 144) = &unk_1F4A02E78;
  v64 = MEMORY[0x1E69E6158];
  v65 = sub_1CA94C1E8();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v67 = v164;
  v164[35] = v65;
  v67[38] = v66;
  v67[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v163 = swift_allocObject();
  *(v163 + 1) = xmmword_1CA981360;
  v162 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1CA981350;
  v69 = @"Parameters";
  *(v68 + 32) = sub_1CA94C368();
  *(v68 + 40) = 1;
  *(v68 + 64) = MEMORY[0x1E69E6370];
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD00000000000001ELL;
  *(v68 + 88) = 0x80000001CA9B3400;
  *(v68 + 104) = v64;
  *(v68 + 112) = @"Key";
  *(v68 + 120) = 0xD000000000000019;
  *(v68 + 128) = 0x80000001CA9C7AD0;
  *(v68 + 144) = v64;
  *(v68 + 152) = @"Label";
  v70 = @"Class";
  v71 = @"Key";
  v155 = v70;
  v156 = v71;
  v72 = @"Label";
  v73 = sub_1CA94C438("List (WFGetUpcomingItemCalendar)", 32);
  v75 = v74;
  v76 = sub_1CA94C438("List", 4);
  v78 = v77;
  v159 = &v154;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v154 - v169;
  sub_1CA948D98();
  v80 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v154 - v168;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v73, v75, v76, v78, 0, 0, v79, v81);
  *(v68 + 184) = v166;
  *(v68 + 160) = v83;
  _s3__C3KeyVMa_0(0);
  v159 = v84;
  v158 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v85 = sub_1CA94C1E8();
  v86 = sub_1CA2F864C(v85);
  v163[4] = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1CA981400;
  *(v87 + 32) = v155;
  *(v87 + 40) = 0xD000000000000012;
  *(v87 + 48) = 0x80000001CA99B980;
  v88 = MEMORY[0x1E69E6158];
  *(v87 + 64) = MEMORY[0x1E69E6158];
  *(v87 + 72) = @"DefaultValue";
  v89 = MEMORY[0x1E69E6530];
  *(v87 + 80) = 1;
  v90 = v156;
  *(v87 + 104) = v89;
  *(v87 + 112) = v90;
  *(v87 + 120) = 0xD000000000000016;
  *(v87 + 128) = 0x80000001CA9C7B20;
  *(v87 + 144) = v88;
  *(v87 + 152) = @"Prompt";
  v91 = @"DefaultValue";
  v92 = @"Prompt";
  v93 = sub_1CA94C438("How many reminders? (WFGetUpcomingItemCount)", 44);
  v155 = v94;
  v156 = v93;
  v154 = sub_1CA94C438("How many reminders?", 19);
  v96 = v95;
  v157 = &v154;
  MEMORY[0x1EEE9AC00](v154);
  v97 = &v154 - v169;
  sub_1CA948D98();
  v98 = v165;
  v99 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = v168;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 160) = sub_1CA2F9F14(v156, v155, v154, v96, 0, 0, v97, &v154 - v100);
  v102 = v166;
  *(v87 + 184) = v166;
  *(v87 + 192) = @"StepperDescription";
  v103 = @"StepperDescription";
  v104 = sub_1CA94C438("Number of Reminders (WFGetUpcomingItemCount)", 44);
  v155 = v105;
  v156 = v104;
  v106 = sub_1CA94C438("Number of Reminders", 19);
  v154 = v107;
  v157 = &v154;
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v154 - v169;
  sub_1CA948D98();
  v109 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 200) = sub_1CA2F9F14(v156, v155, v106, v154, 0, 0, v108, &v154 - v100);
  *(v87 + 224) = v102;
  *(v87 + 232) = @"StepperNoun";
  v111 = @"StepperNoun";
  v112 = sub_1CA94C438("%d Reminders", v154);
  v156 = v113;
  v157 = v112;
  v114 = v113;
  v175 = 0;
  v176 = 0xE000000000000000;
  sub_1CA94D408();

  v175 = v112;
  v176 = v114;
  v173 = 10;
  v174 = 0xE100000000000000;
  v171 = 32;
  v172 = 0xE100000000000000;
  sub_1CA27BAF0();
  v175 = sub_1CA94D1B8();
  v176 = v115;
  v116 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v155 = &v154;
  v117 = v175;
  v154 = v176;
  MEMORY[0x1EEE9AC00](v116);
  v118 = v169;
  sub_1CA948D98();
  v119 = v165;
  v120 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = v168;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 240) = sub_1CA2F9F14(v117, v154, v157, v156, 0, 0, &v154 - v118, &v154 - v121);
  *(v87 + 264) = v166;
  *(v87 + 272) = @"StepperPrefix";
  v123 = @"StepperPrefix";
  v124 = sub_1CA94C438("Get (WFGetUpcomingItemCount)", 28);
  v155 = v125;
  v156 = v124;
  v154 = sub_1CA94C438("Get", 3);
  v127 = v126;
  v157 = &v154;
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948D98();
  v128 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v156, v155, v154, v127, 0, 0, &v154 - v118, &v154 - v121);
  *(v87 + 304) = v166;
  *(v87 + 280) = v130;
  v131 = sub_1CA94C1E8();
  v132 = sub_1CA2F864C(v131);
  v133 = v163;
  v163[5] = v132;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v135 = v164;
  v164[40] = v133;
  v135[43] = v134;
  v135[44] = @"ParameterSummary";
  v136 = @"ParameterSummary";
  v137 = sub_1CA94C438("Get ${WFGetUpcomingItemCount} from ${WFGetUpcomingItemCalendar} (Parameter Summary)", 83);
  v139 = v138;
  v140 = sub_1CA94C438("Get ${WFGetUpcomingItemCount} from ${WFGetUpcomingItemCalendar}", 63);
  v142 = v141;
  MEMORY[0x1EEE9AC00](v140);
  v143 = &v154 - v169;
  sub_1CA948D98();
  v144 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v154 - v168;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v137, v139, v140, v142, 0, 0, v143, v145);
  v148 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v149 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v150 = v164;
  v164[45] = v148;
  v150[48] = v149;
  v150[49] = @"RequiredResources";
  v150[53] = v160;
  v150[50] = &unk_1F4A02EA8;
  v151 = @"RequiredResources";
  v152 = sub_1CA94C368();
  v150[58] = MEMORY[0x1E69E6530];
  v150[54] = v152;
  v150[55] = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t String.ifNotEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;
  sub_1CA94C218();
  return v3;
}

Swift::String __swiftcall String.trimSuffix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  if (sub_1CA94C538())
  {
    v5 = sub_1CA94C468();
    v6 = -v5;
    if (__OFSUB__(0, v5))
    {
      __break(1u);
      goto LABEL_7;
    }

    sub_1CA94C488();
    v7 = sub_1CA94C588();
    v4 = MEMORY[0x1CCAA1280](v7);
    v3 = v8;
  }

  else
  {
    sub_1CA94C218();
  }

  v5 = v4;
  v6 = v3;
LABEL_7:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t WFDispatchSourceTimer.toAnyCancellable()()
{
  sub_1CA949FB8();
  swift_allocObject();
  sub_1CA25B3D0(0, &qword_1EC446190, 0x1E69E0AD0);
  sub_1CA51ADBC();
  v1 = v0;
  return sub_1CA949FC8();
}

unint64_t sub_1CA51ADBC()
{
  result = qword_1EC446198;
  if (!qword_1EC446198)
  {
    sub_1CA25B3D0(255, &qword_1EC446190, 0x1E69E0AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446198);
  }

  return result;
}

uint64_t sub_1CA51AE58(char a1)
{
  v1 = 0x64656873696E6966;
  if (a1 == 5)
  {
    v1 = 0x676E6974696177;
  }

  if (a1 == 4)
  {
    return 1701602409;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1CA51AEAC(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1CA51AECC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA51AEAC(*a1);
  *a2 = result;
  return result;
}

uint64_t SessionKitAssertion.AcquisitionError.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

double sub_1CA51B070(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_1CA94C658();
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_1CA51ED80, v9);

  return result;
}

double sub_1CA51B1E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1CA94C648();
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1CA4DCA30;
  v13[3] = &block_descriptor_45;
  v10 = _Block_copy(v13);
  v11 = *(a5 + 16);

  v11(a5, v9, a2 & 1, v10);
  _Block_release(v10);

  return result;
}

uint64_t sub_1CA51B2F0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFSessionKitAssertion_resultHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1CA51EE04;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1CA294350(v4, v5);
}

double sub_1CA51B390(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(v5, v6, sub_1CA51EE0C, v9);

  return result;
}

uint64_t sub_1CA51B438(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1CA51EDFC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFSessionKitAssertion_resultHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1CA294350(v3, v4);
  return sub_1CA293254(v8, v9);
}

double sub_1CA51B500(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, char *, void *))
{
  v12 = a1;
  v11 = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_1CA40564C;
  v10[1] = v8;

  a5(&v12, &v11, v10);

  return result;
}

uint64_t sub_1CA51B6D0(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

void sub_1CA51B738(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1CA51B84C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1CA948AC8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1CA51B8D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1CA51B934@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFSessionKitAssertion_failureHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1CA51EDD0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1CA294350(v4, v5);
}

uint64_t sub_1CA51B9D4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1CA51ED98;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFSessionKitAssertion_failureHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1CA294350(v3, v4);
  return sub_1CA293254(v8, v9);
}

uint64_t sub_1CA51BB40(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1CA51BC00(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1CA94CD08();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v5 = sub_1CA94B7D8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_6_0();
  v6 = sub_1CA94CD38();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  v13 = &v3[OBJC_IVAR___WFSessionKitAssertion_resultHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v3[OBJC_IVAR___WFSessionKitAssertion_failureHandler];
  *v14 = 0;
  v14[1] = 0;
  v3[OBJC_IVAR___WFSessionKitAssertion_state] = 4;
  v18 = OBJC_IVAR___WFSessionKitAssertion_queue;
  sub_1CA25B3D0(0, &qword_1EDB9FAD0, 0x1E69E9610);
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8098], v6);
  sub_1CA94B7C8();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1CA51BB40(&qword_1EC441A08, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4461C0, qword_1CA98A910);
  sub_1CA51EF00(&unk_1EC441AF0, &unk_1EC4461C0, qword_1CA98A910);
  sub_1CA94D2A8();
  *&v3[v18] = sub_1CA94CD78();
  v15 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers] = v15;
  *&v3[OBJC_IVAR___WFSessionKitAssertion_cancellables] = MEMORY[0x1E69E7CD0];
  v16 = &v3[OBJC_IVAR___WFSessionKitAssertion_purpose];
  *v16 = a1;
  *(v16 + 1) = a2;
  v16[16] = a3;
  v23.receiver = v3;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SessionKitAssertion.take()()
{
  v2 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  v9 = OBJC_IVAR___WFSessionKitAssertion_state;
  if (*(v0 + OBJC_IVAR___WFSessionKitAssertion_state) == 4)
  {
    if (*(v0 + OBJC_IVAR___WFSessionKitAssertion_purpose + 16))
    {
      v10 = sub_1CA51EF54;
    }

    else
    {
      v10 = sub_1CA51EE7C;
    }

    sub_1CA51C158(*(v0 + OBJC_IVAR___WFSessionKitAssertion_purpose), *(v0 + OBJC_IVAR___WFSessionKitAssertion_purpose + 8), v10);
    if (!v1)
    {
      *(v0 + v9) = 5;
      sub_1CA949C58();
      v12 = sub_1CA949F68();
      v13 = sub_1CA94CC38();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1CA256000, v12, v13, "Taking a SessionKit assertion...", v14, 2u);
        MEMORY[0x1CCAA4BF0](v14, -1, -1);
      }

      (*(v4 + 8))(v8, v2);
    }
  }

  else
  {
    sub_1CA51C104();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
  }
}

unint64_t sub_1CA51C104()
{
  result = qword_1EC4461F0;
  if (!qword_1EC4461F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4461F0);
  }

  return result;
}

uint64_t sub_1CA51C158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA94B808();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  v13 = *(v3 + OBJC_IVAR___WFSessionKitAssertion_queue);
  *(v11 - v10) = v13;
  (*(v8 + 104))(v11 - v10, *MEMORY[0x1E69E8018], v6);
  v13;
  v14 = sub_1CA94B828();
  result = (*(v8 + 8))(v12, v6);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v16 - 4) = a1;
    *(&v16 - 3) = a2;
    *(&v16 - 2) = v3;
    return sub_1CA94CD58();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CA51C56C(uint64_t a1, double a2)
{
  v3 = sub_1CA949F78();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(Strong + OBJC_IVAR___WFSessionKitAssertion_state) == 5)
    {
      sub_1CA949C58();
      v9 = sub_1CA949F68();
      v10 = sub_1CA94CC38();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        *(v11 + 4) = a2;
        _os_log_impl(&dword_1CA256000, v9, v10, "Assertion hit the timeout of %f seconds. We're bailing.", v11, 0xCu);
        MEMORY[0x1CCAA4BF0](v11, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      sub_1CA51C728(MEMORY[0x1E69E7CC0], 2, 0);
    }
  }
}

void sub_1CA51C728(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v3[OBJC_IVAR___WFSessionKitAssertion_state] = a2;
  switch(a2)
  {
    case 1:
      v17 = &v4[OBJC_IVAR___WFSessionKitAssertion_failureHandler];
      swift_beginAccess();
      v18 = *v17;
      if (*v17)
      {
        v19 = *(v17 + 1);

        v18(a3);
        sub_1CA293254(v18, v19);
      }

      v20 = OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers;
      swift_beginAccess();
      v21 = *&v4[v20];
      v22 = *(v21 + 16);
      if (v22)
      {
        sub_1CA94C218();
        v23 = v21 + 40;
        do
        {
          v24 = *(v23 - 8);
          v26 = a3;

          v24(&v26);

          v23 += 16;
          --v22;
        }

        while (v22);
      }

      sub_1CA51D788(0xD00000000000001FLL, 0x80000001CA9C7E60);
      break;
    case 2:
      v14 = &v4[OBJC_IVAR___WFSessionKitAssertion_resultHandler];
      swift_beginAccess();
      v7 = *v14;
      if (*v14)
      {
        v8 = *(v14 + 1);
        v9 = swift_allocObject();
        *(v9 + 16) = v4;
        *(v9 + 24) = a1;
        v15 = v4;
        sub_1CA94C218();
        sub_1CA294350(v7, v8);
        v12 = sub_1CA51EE34;
        v11 = a1;
        v13 = 0;
        goto LABEL_6;
      }

      v25 = 0;
      goto LABEL_19;
    case 3:

      sub_1CA51D788(0xD000000000000017, 0x80000001CA9C7E40);
      break;
    default:
      v6 = &v4[OBJC_IVAR___WFSessionKitAssertion_resultHandler];
      swift_beginAccess();
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v6 + 1);
        v9 = swift_allocObject();
        *(v9 + 16) = v4;
        *(v9 + 24) = a1;
        sub_1CA294350(v7, v8);
        v10 = v4;
        v11 = sub_1CA94C218();
        v12 = sub_1CA51EE74;
        v13 = 1;
LABEL_6:
        v7(v11, v13, v12, v9);

        sub_1CA293254(v7, v8);
      }

      else
      {
        v25 = 1;
LABEL_19:
        sub_1CA51DCD4(v25, v4, a1);
      }

      break;
  }
}

id sub_1CA51CC38(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1CA94C368();

  v3 = [v1 initWithBundleIdentifier_];

  return v3;
}

double sub_1CA51CCAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CA94B7A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CA94B7D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v22 = *(Strong + OBJC_IVAR___WFSessionKitAssertion_queue);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v14;
    aBlock[4] = sub_1CA51EEF8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA4DCA30;
    aBlock[3] = &block_descriptor_88;
    v16 = _Block_copy(aBlock);
    v21 = v8;
    v17 = v16;
    v18 = a1;
    v20 = v14;
    sub_1CA94B7C8();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1CA51BB40(&qword_1EC441CD0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA51EF00(&qword_1EC441B30, &unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA94D2A8();
    MEMORY[0x1CCAA1BC0](0, v11, v7, v17);
    _Block_release(v17);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v21);
  }

  return result;
}

uint64_t sub_1CA51CFAC(void *a1)
{
  v2 = [a1 sessionIdentifiers];
  v3 = sub_1CA94C658();

  sub_1CA51D054([a1 state], objc_msgSend(a1, sel_invalidationReason), 0, v3, 0);
}

void sub_1CA51D054(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
LABEL_7:
    v5 = a4;
    v6 = 1;
LABEL_11:

    sub_1CA51C728(v5, v6, a5);
    return;
  }

  if (result == 1)
  {
    return;
  }

  if (result != 2)
  {
LABEL_14:
    sub_1CA94D5F8();
    __break(1u);
    return;
  }

  if (a3)
  {
    v5 = a4;
    v6 = 1;
LABEL_10:
    a5 = 0;
    goto LABEL_11;
  }

  switch(a2)
  {
    case 0:
      return;
    case 1:
    case 5:
      v5 = a4;
      v6 = 0;
      goto LABEL_10;
    case 2:
    case 4:
    case 7:
      goto LABEL_7;
    case 3:
    case 6:
    case 8:
      v5 = a4;
      v6 = 2;
      goto LABEL_10;
    default:
      goto LABEL_14;
  }
}

double sub_1CA51D370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CA94B7A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CA94B7D8();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v23 = *(Strong + OBJC_IVAR___WFSessionKitAssertion_queue);
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a1;
    v18[4] = a4;
    v18[5] = a5;
    aBlock[4] = sub_1CA51EF80;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA4DCA30;
    aBlock[3] = &block_descriptor_101;
    v19 = _Block_copy(aBlock);
    v22 = v17;
    v20 = a1;
    sub_1CA94C218();
    sub_1CA94B7C8();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1CA51BB40(&qword_1EC441CD0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA51EF00(&qword_1EC441B30, &unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA94D2A8();
    MEMORY[0x1CCAA1BC0](0, v14, v11, v19);
    _Block_release(v19);
    (*(v9 + 8))(v11, v8);
    (*(v12 + 8))(v14, v24);
  }

  return result;
}

uint64_t sub_1CA51D680(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 state];
  v8 = [a2 invalidationReason];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CA981310;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  sub_1CA94C218();
  sub_1CA51D054(v7, v8, 0, v9, 0);
}

Swift::Void __swiftcall SessionKitAssertion.cancel()()
{
  if (*(v0 + OBJC_IVAR___WFSessionKitAssertion_state) == 5)
  {
    *(v0 + OBJC_IVAR___WFSessionKitAssertion_state) = 3;
  }

  sub_1CA51D788(0xD000000000000013, 0x80000001CA9C7D00);
}

void sub_1CA51D788(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA949F78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA949C58();
  sub_1CA94C218();
  v10 = sub_1CA949F68();
  v11 = sub_1CA94CC38();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1CA26B54C(a1, a2, v40);
    _os_log_impl(&dword_1CA256000, v10, v11, "Clearing state, because %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1CCAA4BF0](v13, -1, -1);
    MEMORY[0x1CCAA4BF0](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = (v3 + OBJC_IVAR___WFSessionKitAssertion_resultHandler);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  *v14 = 0;
  v14[1] = 0;
  sub_1CA293254(v15, v16);
  v17 = (v3 + OBJC_IVAR___WFSessionKitAssertion_failureHandler);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  *v17 = 0;
  v17[1] = 0;
  sub_1CA293254(v18, v19);
  v20 = OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers;
  swift_beginAccess();
  v21 = MEMORY[0x1E69E7CC0];
  *(v3 + v20) = MEMORY[0x1E69E7CC0];

  v22 = OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers;
  swift_beginAccess();
  *(v3 + v22) = v21;

  v23 = OBJC_IVAR___WFSessionKitAssertion_cancellables;
  swift_beginAccess();
  v24 = *(v3 + v23);
  if ((v24 & 0xC000000000000001) != 0)
  {
    sub_1CA94C218();
    sub_1CA94D2F8();
    sub_1CA949FB8();
    sub_1CA51BB40(&unk_1EC4448B0, 255, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    sub_1CA94C948();
    v24 = v40[0];
    v25 = v40[1];
    v26 = v40[2];
    v27 = v40[3];
    v28 = v40[4];
  }

  else
  {
    v29 = -1 << *(v24 + 32);
    v25 = v24 + 56;
    v26 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v24 + 56);
    sub_1CA94C218();
    v27 = 0;
  }

  v39[0] = v26;
  v32 = (v26 + 64) >> 6;
  if (v24 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v33 = v27;
    v34 = v28;
    v35 = v27;
    if (!v28)
    {
      break;
    }

LABEL_14:
    v36 = (v34 - 1) & v34;
    v37 = *(*(v24 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));

    if (!v37)
    {
LABEL_20:
      sub_1CA28A224(v24);
      *(v3 + v23) = MEMORY[0x1E69E7CD0];

      return;
    }

    while (1)
    {
      sub_1CA949FA8();

      v27 = v35;
      v28 = v36;
      if ((v24 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v38 = sub_1CA94D358();
      if (v38)
      {
        v39[1] = v38;
        sub_1CA949FB8();
        swift_dynamicCast();
        v35 = v27;
        v36 = v28;
        if (v39[2])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      goto LABEL_20;
    }

    v34 = *(v25 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t SessionKitAssertion.toAnyCancellable()()
{
  swift_getObjectType();
  sub_1CA949FB8();
  swift_allocObject();
  sub_1CA51BB40(&qword_1EC4461F8, v1, type metadata accessor for SessionKitAssertion, &protocol conformance descriptor for SessionKitAssertion);
  v2 = v0;
  return sub_1CA949FC8();
}

uint64_t sub_1CA51DCD4(int a1, void *a2, uint64_t a3)
{
  LODWORD(v5) = a1;
  v6 = sub_1CA949F78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA949C58();
  v10 = a2;
  v11 = sub_1CA949F68();
  v12 = sub_1CA94CC38();

  v13 = &unk_1EC446000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v5;
    v33 = v15;
    v39[0] = v15;
    *v14 = 136315138;
    v34 = v6;
    v16 = OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers;
    swift_beginAccess();
    v5 = *&v10[v16];
    sub_1CA94C218();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446278, &qword_1CA98AB50);
    v18 = MEMORY[0x1CCAA14D0](v5, v17);
    v19 = v7;
    v21 = v20;

    v22 = sub_1CA26B54C(v18, v21, v39);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_1CA256000, v11, v12, "Calling additional result handler: %s", v14, 0xCu);
    v23 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    LOBYTE(v5) = v35;
    MEMORY[0x1CCAA4BF0](v23, -1, -1);
    MEMORY[0x1CCAA4BF0](v14, -1, -1);

    (*(v19 + 8))(v9, v34);
    v13 = &unk_1EC446000;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = v13[58];
  swift_beginAccess();
  v25 = *&v10[v24];
  v26 = *(v25 + 16);
  if (v26)
  {
    sub_1CA94C218();
    v27 = v25 + 40;
    do
    {
      v28 = *(v27 - 8);
      v38 = a3;
      v37 = v5 & 1;
      v36[0] = j_nullsub_1;
      v36[1] = 0;

      v28(&v38, &v37, v36);

      v27 += 16;
      --v26;
    }

    while (v26);
  }

  if (v5)
  {
    v29 = 0x7361206E656B6174;
  }

  else
  {
    v29 = 0xD000000000000011;
  }

  if (v5)
  {
    v30 = 0xEF6E6F6974726573;
  }

  else
  {
    v30 = 0x80000001CA9C7E80;
  }

  sub_1CA51D788(v29, v30);
}

id SessionKitAssertion.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR___WFSessionKitAssertion_state] == 5)
  {
    SessionKitAssertion.cancel()();
  }

  else
  {
    sub_1CA51D788(0xD000000000000014, 0x80000001CA9C7D20);
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id SessionKitAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1CA51E210(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  if ((*(a1 + OBJC_IVAR___WFSessionKitAssertion_state) & 0xFE) == 4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CA51ED14;
    *(v5 + 24) = v4;
    v6 = OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers;
    swift_beginAccess();
    _Block_copy(a2);

    sub_1CA69AE70();
    v7 = *(*(a1 + v6) + 16);
    sub_1CA69B084(v7);
    v8 = *(a1 + v6);
    *(v8 + 16) = v7 + 1;
    v9 = v8 + 16 * v7;
    *(v9 + 32) = sub_1CA51F0FC;
    *(v9 + 40) = v5;
    *(a1 + v6) = v8;
    swift_endAccess();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1CA51ED14;
    *(v10 + 24) = v4;
    v11 = OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers;
    swift_beginAccess();

    sub_1CA69AE58();
    v12 = *(*(a1 + v11) + 16);
    sub_1CA69B06C(v12);
    v13 = *(a1 + v11);
    *(v13 + 16) = v12 + 1;
    v14 = v13 + 16 * v12;
    *(v14 + 32) = sub_1CA51F0F8;
    *(v14 + 40) = v10;
    *(a1 + v11) = v13;
    swift_endAccess();

    _Block_release(a2);
  }

  else
  {
    _Block_copy(a2);
    a2[2](a2, 0);

    _Block_release(a2);
  }
}

uint64_t SessionKitAssertion.addCompletionHandlerIfRunning(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR___WFSessionKitAssertion_state) & 0xFE) != 4)
  {
    return a1(0);
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers;
  OUTLINED_FUNCTION_28(v2 + OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers, v16);

  sub_1CA69AE70();
  v7 = *(*(v2 + v6) + 16);
  sub_1CA69B084(v7);
  v8 = *(v2 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_1CA51E99C;
  *(v9 + 40) = v5;
  *(v2 + v6) = v8;
  swift_endAccess();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers;
  OUTLINED_FUNCTION_28(v2 + OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers, v16);

  sub_1CA69AE58();
  v12 = *(*(v2 + v11) + 16);
  sub_1CA69B06C(v12);
  v13 = *(v2 + v11);
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 16 * v12;
  *(v14 + 32) = sub_1CA51E9A0;
  *(v14 + 40) = v10;
  *(v2 + v11) = v13;
  return swift_endAccess();
}

id sub_1CA51E600(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CA4DCA30;
  v10[3] = &block_descriptor_72;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithInterval:a1 queue:v7 handler:a4];

  _Block_release(v7);

  return v8;
}

id sub_1CA51E6C8(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_1CA94C368();

  if (a5)
  {
    v16[4] = a5;
    v16[5] = a6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1CA51F128;
    v16[3] = &block_descriptor_82;
    v13 = _Block_copy(v16);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithExplanation:v12 target:a3 invalidateOnSessionRequest:a4 & 1 invalidationHandler:v13];
  _Block_release(v13);

  return v14;
}

id sub_1CA51E7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1CA94C368();

  v10 = sub_1CA94C368();

  if (a5)
  {
    v14[4] = a5;
    v14[5] = a6;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1CA51F128;
    v14[3] = &block_descriptor_95;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithExplanation:v9 sessionIdentifier:v10 invalidationHandler:v11];
  _Block_release(v11);

  return v12;
}

void sub_1CA51E8E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

unint64_t sub_1CA51E9D0()
{
  result = qword_1EC446200;
  if (!qword_1EC446200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446200);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionKitAssertion.AcquisitionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unsigned __int8 *getEnumTagSinglePayload for SessionKitAssertion.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 4)
    {
      v7 = v6 - 3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
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
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionKitAssertion.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA51ECE0(unsigned __int8 *a1)
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

_BYTE *sub_1CA51ECF4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1CA51ED1C(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t))
{
  v4 = *a3;
  v5 = (*(v3 + 16))(0, a2);
  return v4(v5);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA51ED98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t objectdestroy_74Tm_0()
{

  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_1CA51EEA4()
{
  result = qword_1EC446288;
  if (!qword_1EC446288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446288);
  }

  return result;
}

uint64_t sub_1CA51EF00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

_BYTE *storeEnumTagSinglePayload for SessionKitAssertion.Result(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA51F088()
{
  result = qword_1EC446290;
  if (!qword_1EC446290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446290);
  }

  return result;
}

id sub_1CA51F164()
{
  v276 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9C7FF0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("byte|bytes|megabyte|megabytes|count", 35);
  v6 = v5;
  v7 = sub_1CA94C438("byte|bytes|megabyte|megabytes|count", 35);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v290 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v291 = v11;
  v12 = &v272 - v290;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v292 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v288 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v289 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v272 - v289;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v287 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v286 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = @"DescriptionInput";
  v21 = @"Description";
  v22 = @"DescriptionInput";
  v283 = sub_1CA94C438("A file size from another action, or a number of bytes", 53);
  *&v282 = v23;
  v24 = sub_1CA94C438("A file size from another action, or a number of bytes", 53);
  v26 = v25;
  v284 = &v272;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v272 - v290;
  sub_1CA948D98();
  v28 = v292;
  v29 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v285 = inited;
  v30 = v289;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v283, v282, v24, v26, 0, 0, v27, &v272 - v30);
  *(v20 + 64) = v287;
  *(v20 + 72) = @"DescriptionNote";
  v32 = @"DescriptionNote";
  v283 = sub_1CA94C438("1000 bytes are shown as 1 KB.", 29);
  *&v282 = v33;
  v281 = sub_1CA94C438("1000 bytes are shown as 1 KB.", 29);
  v35 = v34;
  v284 = &v272;
  MEMORY[0x1EEE9AC00](v281);
  v36 = &v272 - v290;
  sub_1CA948D98();
  v37 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v37);
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 80) = sub_1CA2F9F14(v283, v282, v281, v35, 0, 0, v36, &v272 - v30);
  v39 = v287;
  *(v20 + 104) = v287;
  *(v20 + 112) = @"DescriptionSummary";
  v40 = @"DescriptionSummary";
  v283 = sub_1CA94C438("Formats a file size into text.", 30);
  *&v282 = v41;
  v42 = sub_1CA94C438("Formats a file size into text.", 30);
  v44 = v43;
  v284 = &v272;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v272 - v290;
  sub_1CA948D98();
  v46 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v272 - v289;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v49 = sub_1CA2F9F14(v283, v282, v42, v44, 0, 0, v45, v47);
  *(v20 + 144) = v39;
  *(v20 + 120) = v49;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v50 = sub_1CA94C1E8();
  v51 = v286;
  v52 = sub_1CA6B3784(v50);
  v53 = v285;
  *(v285 + 15) = v52;
  *(v53 + 18) = v51;
  *(v53 + 19) = @"IconColor";
  *(v53 + 20) = 1953392980;
  *(v53 + 21) = 0xE400000000000000;
  v54 = MEMORY[0x1E69E6158];
  *(v53 + 23) = MEMORY[0x1E69E6158];
  *(v53 + 24) = @"IconSymbol";
  strcpy(v53 + 200, "document.fill");
  *(v53 + 107) = -4864;
  *(v53 + 28) = v54;
  *(v53 + 29) = @"IconSymbolColor";
  *(v53 + 30) = 1702194242;
  *(v53 + 31) = 0xE400000000000000;
  *(v53 + 33) = v54;
  *(v53 + 34) = @"Input";
  v55 = v53;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  v282 = xmmword_1CA981350;
  *(v56 + 16) = xmmword_1CA981350;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 48) = 1;
  *(v56 + 72) = v57;
  strcpy((v56 + 80), "ParameterKey");
  *(v56 + 93) = 0;
  *(v56 + 94) = -5120;
  *(v56 + 96) = 0x6953656C69464657;
  *(v56 + 104) = 0xEA0000000000657ALL;
  *(v56 + 120) = v54;
  *(v56 + 128) = 0x6465726975716552;
  *(v56 + 136) = 0xE800000000000000;
  *(v56 + 144) = 1;
  *(v56 + 168) = v57;
  *(v56 + 176) = 0x7365707954;
  v58 = v57;
  *(v56 + 184) = 0xE500000000000000;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 216) = v286;
  *(v56 + 192) = &unk_1F4A02ED8;
  v59 = @"IconColor";
  v60 = @"IconSymbol";
  v61 = @"IconSymbolColor";
  v62 = @"Input";
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v284 = v64;
  *(v55 + 35) = v63;
  *(v55 + 38) = v64;
  *(v55 + 39) = @"LocallyProcessesData";
  v55[320] = 1;
  *(v55 + 43) = v58;
  *(v55 + 44) = @"Name";
  v65 = @"LocallyProcessesData";
  v66 = @"Name";
  v67 = sub_1CA94C438("Format File Size (Action Name)", 30);
  v69 = v68;
  v70 = sub_1CA94C438("Format File Size", 16);
  v72 = v71;
  v281 = &v272;
  MEMORY[0x1EEE9AC00](v70);
  v73 = v290;
  sub_1CA948D98();
  v74 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v272 - v289;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v67, v69, v70, v72, 0, 0, &v272 - v73, v75);
  v78 = v285;
  *(v285 + 45) = v77;
  v79 = v287;
  *(v78 + 48) = v287;
  *(v78 + 49) = @"Output";
  v80 = swift_allocObject();
  *(v80 + 16) = v282;
  *(v80 + 32) = 0x75736F6C63736944;
  *(v80 + 40) = 0xEF6C6576654C6572;
  *(v80 + 48) = 0x63696C627550;
  *(v80 + 56) = 0xE600000000000000;
  *(v80 + 72) = MEMORY[0x1E69E6158];
  *(v80 + 80) = 0x656C7069746C754DLL;
  *(v80 + 88) = 0xE800000000000000;
  *(v80 + 96) = 1;
  *(v80 + 120) = MEMORY[0x1E69E6370];
  *(v80 + 128) = 0x614E74757074754FLL;
  *(v80 + 136) = 0xEA0000000000656DLL;
  v81 = @"Output";
  v82 = sub_1CA94C438("Formatted File Size (Default Output Name)", 41);
  v281 = v83;
  v84 = sub_1CA94C438("Formatted File Size", 19);
  v86 = v85;
  v283 = &v272;
  MEMORY[0x1EEE9AC00](v84);
  sub_1CA948D98();
  v87 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v272 - v289;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v80 + 144) = sub_1CA2F9F14(v82, v281, v84, v86, 0, 0, &v272 - v73, v88);
  *(v80 + 168) = v79;
  *(v80 + 176) = 0x7365707954;
  v90 = v286;
  *(v80 + 216) = v286;
  *(v80 + 184) = 0xE500000000000000;
  *(v80 + 192) = &unk_1F4A02F18;
  v91 = MEMORY[0x1E69E6158];
  v92 = sub_1CA94C1E8();
  v93 = v285;
  *(v285 + 50) = v92;
  *(v93 + 53) = v284;
  *(v93 + 54) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v284 = swift_allocObject();
  *(v284 + 1) = xmmword_1CA981470;
  v283 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v94 = swift_allocObject();
  v274 = v94;
  *(v94 + 16) = xmmword_1CA981380;
  *(v94 + 32) = @"Class";
  *(v94 + 40) = 0xD000000000000016;
  *(v94 + 48) = 0x80000001CA99C4A0;
  *(v94 + 64) = v91;
  *(v94 + 72) = @"DefaultValue";
  *(v94 + 80) = 0x6974616D6F747541;
  *(v94 + 88) = 0xE900000000000063;
  *(v94 + 104) = v91;
  *(v94 + 112) = @"Items";
  *(v94 + 120) = &unk_1F4A02F48;
  *(v94 + 144) = v90;
  *(v94 + 152) = @"ItemDisplayNames";
  v286 = swift_allocObject();
  *(v286 + 1) = xmmword_1CA983CF0;
  v95 = @"Class";
  v96 = @"DefaultValue";
  v280 = v95;
  v275 = v96;
  v97 = @"Parameters";
  v98 = @"Items";
  v99 = @"ItemDisplayNames";
  v100 = sub_1CA94C438("Closest Unit", 12);
  v277 = v101;
  v278 = v100;
  v273 = sub_1CA94C438("Closest Unit", 12);
  v103 = v102;
  v279 = &v272;
  MEMORY[0x1EEE9AC00](v273);
  v104 = v290;
  sub_1CA948D98();
  v105 = v292;
  v106 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v272 - v289;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v278, v277, v273, v103, 0, 0, &v272 - v104, v107);
  v286[4] = v109;
  v110 = sub_1CA94C438("Bytes", 5);
  v277 = v111;
  v278 = v110;
  v112 = sub_1CA94C438("Bytes", 5);
  v114 = v113;
  v279 = &v272;
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948D98();
  v115 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = v289;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v278, v277, v112, v114, 0, 0, &v272 - v104, &v272 - v116);
  v119 = v286;
  v286[5] = v118;
  v120 = sub_1CA94C438("Kilobytes", 9);
  v277 = v121;
  v278 = v120;
  v273 = sub_1CA94C438("Kilobytes", 9);
  v123 = v122;
  v279 = &v272;
  MEMORY[0x1EEE9AC00](v273);
  v124 = &v272 - v290;
  sub_1CA948D98();
  v125 = v292;
  v126 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119[6] = sub_1CA2F9F14(v278, v277, v273, v123, 0, 0, v124, &v272 - v116);
  v128 = sub_1CA94C438("Megabytes", 9);
  v277 = v129;
  v278 = v128;
  v130 = sub_1CA94C438("Megabytes", 9);
  v132 = v131;
  v279 = &v272;
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v272 - v290;
  sub_1CA948D98();
  v134 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = v289;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v278, v277, v130, v132, 0, 0, v133, &v272 - v135);
  v138 = v286;
  v286[7] = v137;
  v139 = sub_1CA94C438("Gigabytes", 9);
  v277 = v140;
  v278 = v139;
  v273 = sub_1CA94C438("Gigabytes", 9);
  v142 = v141;
  v279 = &v272;
  MEMORY[0x1EEE9AC00](v273);
  v143 = v290;
  sub_1CA948D98();
  v144 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138[8] = sub_1CA2F9F14(v278, v277, v273, v142, 0, 0, &v272 - v143, &v272 - v135);
  v146 = sub_1CA94C438("Terabytes", 9);
  v277 = v147;
  v278 = v146;
  v148 = sub_1CA94C438("Terabytes", 9);
  v150 = v149;
  v279 = &v272;
  MEMORY[0x1EEE9AC00](v148);
  v151 = &v272 - v143;
  sub_1CA948D98();
  v152 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = v289;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v155 = sub_1CA2F9F14(v278, v277, v148, v150, 0, 0, v151, &v272 - v153);
  v156 = v286;
  v286[9] = v155;
  v157 = sub_1CA94C438("Petabytes", 9);
  v277 = v158;
  v278 = v157;
  v273 = sub_1CA94C438("Petabytes", 9);
  v160 = v159;
  v279 = &v272;
  MEMORY[0x1EEE9AC00](v273);
  v161 = v290;
  sub_1CA948D98();
  v162 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156[10] = sub_1CA2F9F14(v278, v277, v273, v160, 0, 0, &v272 - v161, &v272 - v153);
  v164 = sub_1CA94C438("Exabytes", 8);
  v278 = v165;
  v166 = sub_1CA94C438("Exabytes", 8);
  v168 = v167;
  v279 = &v272;
  MEMORY[0x1EEE9AC00](v166);
  v169 = &v272 - v161;
  sub_1CA948D98();
  v170 = v292;
  v171 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v171);
  v172 = &v272 - v289;
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v174 = sub_1CA2F9F14(v164, v278, v166, v168, 0, 0, v169, v172);
  v175 = v286;
  v286[11] = v174;
  v176 = sub_1CA94C438("Zettabytes", 10);
  v277 = v177;
  v278 = v176;
  v273 = sub_1CA94C438("Zettabytes", 10);
  v179 = v178;
  v279 = &v272;
  MEMORY[0x1EEE9AC00](v273);
  v180 = v290;
  sub_1CA948D98();
  v181 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  v182 = v289;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175[12] = sub_1CA2F9F14(v278, v277, v273, v179, 0, 0, &v272 - v180, &v272 - v182);
  v184 = sub_1CA94C438("Yottabytes", 10);
  v277 = v185;
  v278 = v184;
  v186 = sub_1CA94C438("Yottabytes", 10);
  v188 = v187;
  v279 = &v272;
  MEMORY[0x1EEE9AC00](v186);
  sub_1CA948D98();
  v189 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v189);
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v191 = sub_1CA2F9F14(v278, v277, v186, v188, 0, 0, &v272 - v180, &v272 - v182);
  v192 = v286;
  v286[13] = v191;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v194 = v274;
  v274[20] = v192;
  v194[23] = v193;
  v194[24] = @"Key";
  v194[25] = 0xD000000000000010;
  v194[26] = 0x80000001CA997FF0;
  v194[28] = MEMORY[0x1E69E6158];
  v194[29] = @"Label";
  v195 = @"Key";
  v196 = @"Label";
  v197 = v195;
  v198 = v196;
  v278 = v197;
  v277 = v198;
  v199 = sub_1CA94C438("Format (WFFileSizeFormat)", 25);
  v201 = v200;
  v202 = sub_1CA94C438("Format", 6);
  v204 = v203;
  v286 = &v272;
  MEMORY[0x1EEE9AC00](v202);
  v205 = &v272 - v290;
  sub_1CA948D98();
  v206 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v272 - v289;
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v209 = sub_1CA2F9F14(v199, v201, v202, v204, 0, 0, v205, v207);
  v194[33] = v287;
  v194[30] = v209;
  _s3__C3KeyVMa_0(0);
  v286 = v210;
  v279 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v211 = sub_1CA94C1E8();
  v212 = sub_1CA2F864C(v211);
  v284[4] = v212;
  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_1CA981370;
  *(v213 + 32) = v280;
  *(v213 + 40) = 0xD000000000000011;
  *(v213 + 48) = 0x80000001CA99E620;
  v214 = MEMORY[0x1E69E6158];
  v215 = v275;
  *(v213 + 64) = MEMORY[0x1E69E6158];
  *(v213 + 72) = v215;
  *(v213 + 80) = 1;
  v216 = v278;
  *(v213 + 104) = MEMORY[0x1E69E6370];
  *(v213 + 112) = v216;
  *(v213 + 120) = 0xD000000000000016;
  *(v213 + 128) = 0x80000001CA9C81D0;
  v217 = v277;
  *(v213 + 144) = v214;
  *(v213 + 152) = v217;
  v218 = sub_1CA94C438("Include Units (WFFileSizeIncludeUnits)", 38);
  v220 = v219;
  v221 = sub_1CA94C438("Include Units", 13);
  v223 = v222;
  v275 = &v272;
  MEMORY[0x1EEE9AC00](v221);
  v224 = &v272 - v290;
  sub_1CA948D98();
  v225 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v225);
  v226 = &v272 - v289;
  sub_1CA948B68();

  v227 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v213 + 160) = sub_1CA2F9F14(v218, v220, v221, v223, 0, 0, v224, v226);
  *(v213 + 184) = v287;
  *(v213 + 192) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_1CA981310;
  v229 = @"RequiredResources";
  v230 = MEMORY[0x1E69E6158];
  *(v228 + 32) = sub_1CA94C1E8();
  *(v213 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v213 + 200) = v228;
  v231 = sub_1CA94C1E8();
  v232 = sub_1CA2F864C(v231);
  v284[5] = v232;
  v233 = swift_allocObject();
  *(v233 + 16) = v282;
  *(v233 + 32) = v280;
  *(v233 + 40) = 0xD000000000000016;
  *(v233 + 48) = 0x80000001CA99C180;
  v234 = v278;
  *(v233 + 64) = v230;
  *(v233 + 72) = v234;
  *(v233 + 80) = 0x6953656C69464657;
  *(v233 + 88) = 0xEA0000000000657ALL;
  v235 = v277;
  *(v233 + 104) = v230;
  *(v233 + 112) = v235;
  v236 = sub_1CA94C438("File Size (WFFileSize)", 22);
  v280 = v237;
  v281 = v236;
  v238 = sub_1CA94C438("File Size", 9);
  v278 = v239;
  *&v282 = &v272;
  MEMORY[0x1EEE9AC00](v238);
  v240 = &v272 - v290;
  sub_1CA948D98();
  v241 = v292;
  v242 = [v292 bundleURL];
  v277 = &v272;
  MEMORY[0x1EEE9AC00](v242);
  v243 = v289;
  sub_1CA948B68();

  v244 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v233 + 120) = sub_1CA2F9F14(v281, v280, v238, v278, 0, 0, v240, &v272 - v243);
  *(v233 + 144) = v287;
  *(v233 + 152) = @"Placeholder";
  v245 = @"Placeholder";
  v246 = sub_1CA94C438("File Size (WFFileSize)", 22);
  v280 = v247;
  v281 = v246;
  v248 = sub_1CA94C438("File Size", 9);
  v278 = v249;
  *&v282 = &v272;
  MEMORY[0x1EEE9AC00](v248);
  v250 = v290;
  sub_1CA948D98();
  v251 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v253 = sub_1CA2F9F14(v281, v280, v248, v278, 0, 0, &v272 - v250, &v272 - v243);
  *(v233 + 184) = v287;
  *(v233 + 160) = v253;
  v254 = sub_1CA94C1E8();
  v255 = sub_1CA2F864C(v254);
  v256 = v284;
  v284[6] = v255;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v258 = v285;
  *(v285 + 55) = v256;
  *(v258 + 58) = v257;
  *(v258 + 59) = @"ParameterSummary";
  v259 = @"ParameterSummary";
  v260 = sub_1CA94C438("Format ${WFFileSize} into ${WFFileSizeFormat} (Parameter Summary)", 65);
  v262 = v261;
  v263 = sub_1CA94C438("Format ${WFFileSize} into ${WFFileSizeFormat}", 45);
  v265 = v264;
  v287 = &v272;
  MEMORY[0x1EEE9AC00](v263);
  sub_1CA948D98();
  v266 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v266);
  v267 = &v272 - v289;
  sub_1CA948B68();

  v268 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v269 = sub_1CA2F9F14(v260, v262, v263, v265, 0, 0, &v272 - v250, v267);
  v270 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v258 + 63) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v258 + 60) = v270;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5211A4()
{
  v34[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 1953392980;
  *(inited + 128) = 0xE400000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0x6C6C69662E726163;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 184) = v1;
  *(inited + 192) = @"IconSymbolColor";
  *(inited + 200) = 0x6E65657247;
  *(inited + 208) = 0xE500000000000000;
  *(inited + 224) = v1;
  *(inited + 232) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v6;
  *(inited + 272) = @"Name";
  v7 = @"IconColor";
  v8 = @"IconSymbol";
  v9 = @"IconSymbolColor";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438("Get Details of Parked Car (Action Name)", 39);
  v14 = v13;
  v15 = sub_1CA94C438("Get Details of Parked Car", 25);
  v17 = v16;
  v18 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v20, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 280) = v26;
  *(inited + 304) = v27;
  *(inited + 312) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1CA9813B0;
  v35 = 0;
  v36 = 0;
  v29 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v30 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v35);
  *(v28 + 32) = v31;
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 320) = v28;
  v32 = sub_1CA94C368();
  *(inited + 384) = MEMORY[0x1E69E6158];
  *(inited + 352) = v32;
  *(inited + 360) = 0xD000000000000016;
  *(inited + 368) = 0x80000001CA997DC0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA521618()
{
  sub_1CA9492B8();
  sub_1CA525A3C(&unk_1EC4480F0, MEMORY[0x1EEE78BB8], MEMORY[0x1EEE78C08]);
  v0 = 0;
  if ((sub_1CA94CA48() & 1) == 0)
  {
    sub_1CA94CA58();
    sub_1CA525A3C(&unk_1EC4462D0, MEMORY[0x1EEE78BB8], MEMORY[0x1EEE78BE8]);
    sub_1CA94C2D8();
    v1 = sub_1CA94CB28();
    v0 = *v2;
    v1(v4, 0);
  }

  return v0;
}

uint64_t WFWorkflowActionTree.MoveParameters.validDestinations.getter()
{
  sub_1CA9491F8();
  OUTLINED_FUNCTION_52();
  v0 = OUTLINED_FUNCTION_23();

  return v1(v0);
}

uint64_t WFWorkflowActionTree.MoveParameters.involvedActions.getter()
{
  v1 = v0 + *(type metadata accessor for WFWorkflowActionTree.MoveParameters(0) + 20);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    v13 = sub_1CA94C218();
    v7 = sub_1CA6A71A4(v13);
    v14 = OUTLINED_FUNCTION_8_22();
    sub_1CA521974(v14, v15, v16, v17, v18, 0);
    return v7;
  }

  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  result = swift_allocObject();
  v7 = result;
  *(result + 16) = xmmword_1CA9813B0;
  if (v4 == v5)
  {
    *(result + 32) = v3;
    v8 = OUTLINED_FUNCTION_8_22();
    sub_1CA521910(v8, v9, v10, v11, v12, 1);
LABEL_7:

    return v7;
  }

  if (v4 < v5)
  {
    v19 = *(_s17ControlFlowBranchVMa(0) - 8);
    v20 = *(v2 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v4);
    *(v7 + 32) = v20;
    v21 = OUTLINED_FUNCTION_8_22();
    sub_1CA521910(v21, v22, v23, v24, v25, 1);
    v26 = v20;

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WFWorkflowActionTree.MoveParameters(uint64_t a1)
{
  result = qword_1EC4462C0;
  if (!qword_1EC4462C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1CA521910(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1CA94C218();
    sub_1CA94C218();

    return a4;
  }

  else
  {

    return sub_1CA94C218();
  }
}

void sub_1CA521974(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

Swift::Int __swiftcall WFWorkflowActionTree.MoveParameters.nearestValidDestination(to:)(Swift::Int to)
{
  type metadata accessor for WFWorkflowActionTree(0);
  v1 = OUTLINED_FUNCTION_23();
  return sub_1CA6A751C(v1);
}

void sub_1CA521A10()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = WFWorkflowActionTree.MoveParameters.involvedActions.getter();
  sub_1CA289E38(v6);
  v8 = v7;
  v9 = WFWorkflowActionTree.MoveParameters.involvedActions.getter();
  sub_1CA289E38(v9);
  v11 = v10;
  sub_1CA2E450C(v8, v10);
  if (v12)
  {

    OUTLINED_FUNCTION_9_26();
    v14 = v1;
LABEL_5:
    sub_1CA525A84(v14, v5, v13);
    type metadata accessor for WFWorkflowActionTree.MoveParameters(0);
    goto LABEL_9;
  }

  sub_1CA2E450C(v8, v11);
  if (v15)
  {

    OUTLINED_FUNCTION_9_26();
    v14 = v3;
    goto LABEL_5;
  }

  v16 = sub_1CA524EF0(v11, v8);

  v17 = sub_1CA68BAD0(v16);

  v18 = type metadata accessor for WFWorkflowActionTree.MoveParameters(0);
  v19 = v18;
  if (v17 & 1) == 0 || (v20 = *(v18 + 20), v21 = v1 + v20, (*(v1 + v20 + 40)) || (v22 = v3 + v20, (*(v22 + 40)))
  {
LABEL_9:
    OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    return;
  }

  v28 = *v21;
  v29 = *v22;
  v30 = *(*v21 + 16);
  v44 = *(*v22 + 16);
  if (__OFADD__(v30, v44))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v22 + 16);
    v43 = *(v22 + 8);
    v33 = *(v22 + 24);
    v32 = *(v22 + 32);
    sub_1CA521910(v28, *(v21 + 8), *(v21 + 16), *(v21 + 24), *(v21 + 32), 0);
    sub_1CA521910(v29, v43, v31, v33, v32, 0);
    if (!swift_isUniquelyReferenced_nonNull_native() || v30 + v44 > *(v28 + 24) >> 1)
    {
      sub_1CA2E6A4C();
      v28 = v34;
    }

    sub_1CA6B0018();
    v35 = sub_1CA9491F8();
    OUTLINED_FUNCTION_1_0();
    v37 = v36;
    MEMORY[0x1EEE9AC00](v38);
    OUTLINED_FUNCTION_6_0();
    v41 = v40 - v39;
    sub_1CA949108();
    (*(v37 + 32))(v5, v41, v35);
    v42 = (v5 + *(v19 + 20));
    *v42 = v28;
    OUTLINED_FUNCTION_10_21(v42);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v19);
    OUTLINED_FUNCTION_36();
  }
}

void WFWorkflowActionTree.moveParametersForActions(at:)()
{
  OUTLINED_FUNCTION_37_0();
  v71 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4462A0, &qword_1CA98ACA8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_27_4();
  v72 = type metadata accessor for WFWorkflowActionTree.MoveParameters(v7);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  v70 = v9 - v10;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v11);
  v80 = v58 - v12;
  if (sub_1CA949198())
  {
    OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  else
  {
    sub_1CA949148();
    if (v18)
    {
      __break(1u);
    }

    else
    {
      v67 = v1;
      WFWorkflowActionTree.moveParametersForAction(at:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4462A8, &qword_1CA98ACB0);
      v58[1] = v58;
      v20 = v19 - 8;
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v21);
      v23 = v58 - v22;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4462B0, &qword_1CA98ACB8);
      v79 = v58;
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v25);
      OUTLINED_FUNCTION_27_4();
      sub_1CA9491F8();
      OUTLINED_FUNCTION_1_0();
      MEMORY[0x1EEE9AC00](v26);
      OUTLINED_FUNCTION_6_0();
      v28 = OUTLINED_FUNCTION_19_16(v27);
      v65 = v29;
      v30(v28, v3);
      sub_1CA378ED0();
      sub_1CA4FCCB0(v1, v23, &qword_1EC4462B0, &qword_1CA98ACB8);
      v31 = *(v20 + 44);
      v32 = sub_1CA9490E8();
      OUTLINED_FUNCTION_52();
      v34 = v33 + 16;
      v63 = *(v33 + 16);
      v63(&v23[v31], v1, v32);
      sub_1CA27080C(v1, &qword_1EC4462B0, &qword_1CA98ACB8);
      v66 = v24;
      v35 = *(v24 + 36);
      OUTLINED_FUNCTION_20_18();
      v69 = sub_1CA525A3C(v36, v37, v38);
      v61 = (v34 + 16);
      v62 = v34;
      v60 = (v34 - 8);
      v68 = v5;
      v64 = v31;
      v59 = v35;
      v81 = v23;
      while (1)
      {
        if (sub_1CA94C358())
        {
          sub_1CA27080C(v23, &qword_1EC4462A8, &qword_1CA98ACB0);
          sub_1CA5233C4(v80, v5);
          __swift_storeEnumTagSinglePayload(v5, 0, 1, v72);
          goto LABEL_12;
        }

        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444990, &qword_1CA9852B8) - 8;
        v79 = v58;
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v39);
        v76 = v58 - v40;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4449A0, &qword_1CA9852C0);
        v77 = v58;
        v42 = v41 - 8;
        v43 = *(*(v41 - 8) + 64);
        MEMORY[0x1EEE9AC00](v41);
        v44 = v58 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        v75 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
        v45 = v63;
        v63(v44, v81, v32);
        v46 = v45(&v44[*(v42 + 56)], &v81[v35], v32);
        v74 = v58;
        MEMORY[0x1EEE9AC00](v46);
        sub_1CA4FCCB0(v44, v44, &qword_1EC4449A0, &qword_1CA9852C0);
        v47 = *(v42 + 56);
        v73 = *v61;
        v48 = v76;
        v73(v76, v44, v32);
        v49 = *v60;
        v50 = (*v60)(&v44[v47], v32);
        MEMORY[0x1EEE9AC00](v50);
        v51 = v58 - v75;
        v23 = v81;
        sub_1CA523354(v44, v58 - v75);
        v52 = v48;
        v73(&v48[*(v78 + 44)], &v51[*(v42 + 56)], v32);
        v53 = v32;
        v49(v51, v32);
        v54 = v80;
        sub_1CA525A3C(&qword_1EC4447F8, MEMORY[0x1EEE78B48], MEMORY[0x1EEE78B68]);
        sub_1CA94CA18();
        sub_1CA27080C(v52, &qword_1EC444990, &qword_1CA9852B8);
        v55 = sub_1CA94CB28();
        v55(&v82, 0);
        sub_1CA94CA68();
        v56 = v70;
        WFWorkflowActionTree.moveParametersForAction(at:)();
        v57 = v67;
        sub_1CA521A10();
        sub_1CA524CCC(v56, type metadata accessor for WFWorkflowActionTree.MoveParameters);
        sub_1CA524CCC(v54, type metadata accessor for WFWorkflowActionTree.MoveParameters);
        if (__swift_getEnumTagSinglePayload(v57, 1, v72) == 1)
        {
          break;
        }

        sub_1CA5233C4(v57, v80);
        v5 = v68;
        v32 = v53;
        v35 = v59;
      }

      sub_1CA27080C(v23, &qword_1EC4462A8, &qword_1CA98ACB0);
      sub_1CA27080C(v57, &qword_1EC4462A0, &qword_1CA98ACA8);
      __swift_storeEnumTagSinglePayload(v68, 1, 1, v72);
LABEL_12:
      OUTLINED_FUNCTION_36();
    }
  }
}

void WFWorkflowActionTree.moveParametersForAction(at:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v5 = _s17ControlFlowBranchVMa(0);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_45_0();
  v256 = v13;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v14);
  v260 = &v242 - v15;
  v16 = _s6LayoutVMa(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19();
  v263 = v18 - v19;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45_0();
  v252 = v21;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_45_0();
  v255 = v23;
  OUTLINED_FUNCTION_31_2();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v242 - v26;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_45_0();
  v253 = v28;
  OUTLINED_FUNCTION_31_2();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v242 - v31;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_45_0();
  v262 = v33;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v242 - v35;
  v264 = v0;
  sub_1CA285AF8(&v242 - v35);
  v37 = *(v36 + 4);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_49();
  sub_1CA524CCC(v36, v38);
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_91;
  }

  if (*(v37 + 16) <= v2)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v251 = v11;
  v261 = v2;
  v39 = v37 + 48 * v2;
  v40 = *(v39 + 32);
  v42 = *(v39 + 48);
  v41 = *(v39 + 56);
  v43 = *(v39 + 64);
  v44 = *(v39 + 72);
  v257 = *(v39 + 40);
  v258 = v41;
  v259 = v43;
  sub_1CA36D94C(v40, v257, v42, v41, v43, v44);

  if (!v44)
  {
    v113 = v262;
    sub_1CA285AF8(v262);
    v114 = *(v16 + 40);
    sub_1CA9491F8();
    OUTLINED_FUNCTION_52();
    (*(v115 + 16))(v4, v113 + v114);
    OUTLINED_FUNCTION_0_49();
    sub_1CA524CCC(v113, v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_1CA981310;
    *(v117 + 32) = v40;
    v118 = type metadata accessor for WFWorkflowActionTree.MoveParameters(0);
    *(v117 + 48) = 0;
    *(v117 + 56) = 0;
    *(v117 + 40) = 0;
    *(v117 + 64) = 0;
    v119 = (v4 + *(v118 + 20));
    *v119 = v117;
    OUTLINED_FUNCTION_10_21(v119);
    goto LABEL_86;
  }

  v254 = v42;
  if (v44 == 1)
  {
    v45 = v259;
    if (v259)
    {
      v46 = v259 - 1;
      if (!__OFSUB__(v259, 1))
      {
        if ((v46 & 0x8000000000000000) == 0)
        {
          v47 = *(v42 + 16);
          if (v46 < v47)
          {
            v249 = v40;
            v250 = v4;
            v262 = (*(v7 + 80) + 32) & ~*(v7 + 80);
            OUTLINED_FUNCTION_2_43();
            v48 = v260;
            sub_1CA525A84(v49, v260, v50);
            if (v45 < v47)
            {
              OUTLINED_FUNCTION_2_43();
              sub_1CA525A84(v51, v256, v52);
              sub_1CA9491F8();
              v255 = &v242;
              OUTLINED_FUNCTION_1_0();
              v251 = v54;
              v252 = v53;
              MEMORY[0x1EEE9AC00](v53);
              OUTLINED_FUNCTION_6_0();
              v263 = v56 - v55;
              sub_1CA9491E8();
              v248 = v5;
              v57 = *(v48 + *(v5 + 28));
              v58 = *(v57 + 16);
              if (v58)
              {
                v59 = (v57 + 64);
                do
                {
                  v60 = *(v59 - 4);
                  v61 = *(v59 - 2);
                  v62 = *v59;
                  sub_1CA285AF8(v32);
                  v63 = *(v32 + 1);
                  sub_1CA94C218();
                  v64 = OUTLINED_FUNCTION_6_33();
                  sub_1CA36DA2C(v64, v65, v66, v67, v62);
                  OUTLINED_FUNCTION_0_49();
                  sub_1CA524CCC(v32, v68);
                  if (v62)
                  {
                    if (!*(v61 + 16))
                    {
                      goto LABEL_88;
                    }

                    if (!*(v63 + 16))
                    {
                      v75 = OUTLINED_FUNCTION_6_33();
                      v79 = 1;
                      goto LABEL_22;
                    }

                    v69 = *(v61 + v262);
                  }

                  else
                  {
                    v69 = v60;
                    if (!*(v63 + 16))
                    {
                      v75 = OUTLINED_FUNCTION_6_33();
                      v79 = 0;
                      goto LABEL_22;
                    }
                  }

                  sub_1CA320E94(v69);
                  if ((v70 & 1) == 0)
                  {
                    v75 = OUTLINED_FUNCTION_6_33();
                    v79 = v62;
LABEL_22:
                    sub_1CA36D780(v75, v76, v77, v78, v79);

                    goto LABEL_23;
                  }

                  sub_1CA949168();
                  v71 = OUTLINED_FUNCTION_6_33();
                  sub_1CA36D780(v71, v72, v73, v74, v62);
LABEL_23:
                  v59 += 40;
                  --v58;
                }

                while (v58);
              }

              sub_1CA949168();
              v80 = v253;
              if ((*(v260 + 8) & 1) == 0)
              {
                v81 = *(v256 + *(v248 + 28));
                v82 = *(v81 + 16);
                if (v82)
                {
                  v83 = (v81 + 64);
                  do
                  {
                    v84 = *(v83 - 4);
                    v85 = *(v83 - 2);
                    v86 = *(v83 - 1);
                    v87 = *v83;
                    sub_1CA285AF8(v80);
                    v88 = *(v80 + 8);
                    sub_1CA94C218();
                    v89 = OUTLINED_FUNCTION_3_37();
                    sub_1CA36DA2C(v89, v90, v91, v92, v87);
                    OUTLINED_FUNCTION_0_49();
                    sub_1CA524CCC(v80, v93);
                    if (v87)
                    {
                      if (!*(v85 + 16))
                      {
                        goto LABEL_90;
                      }

                      if (!*(v88 + 16))
                      {
                        v104 = OUTLINED_FUNCTION_3_37();
                        v108 = 1;
                        goto LABEL_39;
                      }

                      v94 = *(v85 + v262);
                    }

                    else
                    {
                      v94 = v84;
                      if (!*(v88 + 16))
                      {
                        v104 = OUTLINED_FUNCTION_3_37();
                        v108 = 0;
LABEL_39:
                        sub_1CA36D780(v104, v105, v106, v107, v108);
LABEL_40:

                        goto LABEL_41;
                      }
                    }

                    v95 = sub_1CA320E94(v94);
                    if ((v96 & 1) == 0)
                    {
                      v104 = OUTLINED_FUNCTION_3_37();
                      v108 = v87;
                      goto LABEL_39;
                    }

                    v97 = *(*(v88 + 56) + 8 * v95);

                    sub_1CA949168();
                    if (v87)
                    {
                      sub_1CA94C218();
                      sub_1CA94C218();
                      v98 = v86;
                      sub_1CA6A76C0();
                      if (__OFADD__(v97, v99))
                      {
                        goto LABEL_96;
                      }

                      sub_1CA949168();
                      v100 = OUTLINED_FUNCTION_3_37();
                      sub_1CA36D780(v100, v101, v102, v103, 1);

                      goto LABEL_40;
                    }

                    if (__OFADD__(v97, 1))
                    {
                      goto LABEL_97;
                    }

                    sub_1CA949168();
                    v109 = OUTLINED_FUNCTION_3_37();
                    sub_1CA36D780(v109, v110, v111, v112, 0);
LABEL_41:
                    v83 += 40;
                    --v82;
                  }

                  while (v82);
                }
              }

              sub_1CA524CCC(v256, _s17ControlFlowBranchVMa);
              sub_1CA524CCC(v260, _s17ControlFlowBranchVMa);
              v195 = v250;
              (*(v251 + 32))(v250, v263, v252);
              v196 = v195 + *(type metadata accessor for WFWorkflowActionTree.MoveParameters(0) + 20);
              v197 = v257;
              *v196 = v249;
              *(v196 + 8) = v197;
              v199 = v258;
              v198 = v259;
              *(v196 + 16) = v254;
              *(v196 + 24) = v199;
              *(v196 + 32) = v198;
              *(v196 + 40) = 1;
              goto LABEL_86;
            }

            goto LABEL_101;
          }

LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v200 = v4;
    v201 = sub_1CA9491F8();
    OUTLINED_FUNCTION_1_0();
    v203 = v202;
    MEMORY[0x1EEE9AC00](v204);
    OUTLINED_FUNCTION_6_0();
    v207 = v206 - v205;
    v208 = v262;
    sub_1CA285AF8(v262);
    v209 = v40;
    v210 = *(v203 + 16);
    v210(v207, v208 + *(v16 + 40), v201);
    OUTLINED_FUNCTION_0_49();
    sub_1CA524CCC(v208, v211);
    sub_1CA6A76C0();
    if (__OFADD__(v261, v212))
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v261 + v212 <= v261)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    sub_1CA949178();
    v210(v200, v207, v201);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
    v213 = swift_allocObject();
    *(v213 + 16) = xmmword_1CA981310;
    v214 = v257;
    *(v213 + 32) = v209;
    *(v213 + 40) = v214;
    v215 = v258;
    *(v213 + 48) = v254;
    *(v213 + 56) = v215;
    *(v213 + 64) = 1;
    (*(v203 + 8))(v207, v201);
    v216 = (v200 + *(type metadata accessor for WFWorkflowActionTree.MoveParameters(0) + 20));
    *v216 = v213;
    OUTLINED_FUNCTION_10_21(v216);
LABEL_86:
    OUTLINED_FUNCTION_36();
    return;
  }

  v120 = sub_1CA9491F8();
  OUTLINED_FUNCTION_1_0();
  v122 = v121;
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_6_0();
  v126 = v125 - v124;
  sub_1CA9491E8();
  v127 = *(v42 + 16);
  if (!v127)
  {
    goto LABEL_93;
  }

  v247 = v122;
  v253 = v120;
  v256 = &v242;
  v249 = v40;
  v250 = v4;
  v259 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v260 = v126;
  v243 = *(v7 + 72);
  v128 = *(*(v42 + v259 + v243 * (v127 - 1) + *(v5 + 28)) + 16);
  v248 = v5;
  if (v128)
  {
    v246 = sub_1CA94C218();
    v129 = (v246 + 8);
    while (1)
    {
      v130 = *(v129 - 4);
      v131 = *(v129 - 2);
      v132 = *v129;
      sub_1CA285AF8(v27);
      v133 = *(v27 + 1);
      sub_1CA94C218();
      v134 = OUTLINED_FUNCTION_5_33();
      sub_1CA36DA2C(v134, v135, v136, v137, v132);
      OUTLINED_FUNCTION_0_49();
      sub_1CA524CCC(v27, v138);
      if (v132)
      {
        if (!*(v131 + 16))
        {
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        if (!*(v133 + 16))
        {
          v145 = OUTLINED_FUNCTION_5_33();
          v149 = 1;
          goto LABEL_59;
        }

        v139 = *(v131 + v259);
      }

      else
      {
        v139 = v130;
        if (!*(v133 + 16))
        {
          v145 = OUTLINED_FUNCTION_5_33();
          v149 = 0;
          goto LABEL_59;
        }
      }

      sub_1CA320E94(v139);
      if ((v140 & 1) == 0)
      {
        v145 = OUTLINED_FUNCTION_5_33();
        v149 = v132;
LABEL_59:
        sub_1CA36D780(v145, v146, v147, v148, v149);

        goto LABEL_60;
      }

      sub_1CA949168();
      v141 = OUTLINED_FUNCTION_5_33();
      sub_1CA36D780(v141, v142, v143, v144, v132);
LABEL_60:
      v129 += 40;
      if (!--v128)
      {

        break;
      }
    }
  }

  v150 = v261;
  sub_1CA949168();
  v151 = sub_1CA9492B8();
  v246 = &v242;
  OUTLINED_FUNCTION_1_0();
  v153 = v152;
  v155 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v157 = (v155 + 15) & 0xFFFFFFFFFFFFFFF0;
  v158 = &v242 - v157;
  v159 = v262;
  sub_1CA285AF8(v262);
  v160 = *(v159 + 24);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_49();
  v162 = sub_1CA524CCC(v159, v161);
  MEMORY[0x1EEE9AC00](v162);
  if (*(v160 + 16) <= v150)
  {
    goto LABEL_94;
  }

  (*(v153 + 16))(&v242 - v157, v160 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v150, v151);

  sub_1CA949298();
  v164 = *(v153 + 8);
  v163 = v153 + 8;
  v261 = v164;
  v164(&v242 - v157, v151);
  v165 = sub_1CA521618();
  if ((v166 & 1) == 0)
  {
    v167 = v165;
    v244 = &v242;
    MEMORY[0x1EEE9AC00](v165);
    sub_1CA949298();
    v168 = v255;
    v169 = v264;
    sub_1CA285AF8(v255);
    v170 = *(v168 + 40);
    sub_1CA94C218();
    OUTLINED_FUNCTION_0_49();
    sub_1CA524CCC(v168, v171);
    v262 = &v242 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
    v172 = sub_1CA311D4C(v262, v170);
    v174 = v173;

    v245 = v158;
    if ((v174 & 1) == 0)
    {
      v175 = v252;
      sub_1CA285AF8(v252);
      v176 = *(v175 + 32);
      sub_1CA94C218();
      OUTLINED_FUNCTION_0_49();
      sub_1CA524CCC(v175, v177);
      if ((v172 & 0x8000000000000000) != 0)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v255 = v167;
      if (v172 >= *(v176 + 16))
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v178 = v176 + 48 * v172;
      v179 = *(v178 + 48);
      v180 = *(v178 + 56);
      v181 = *(v178 + 64);
      v182 = *(v178 + 72);
      OUTLINED_FUNCTION_16_21();
      sub_1CA36D94C(v183, v184, v185, v186, v187, v188);

      if (v182 == 1)
      {
        v252 = v163;
        if ((v181 & 0x8000000000000000) != 0)
        {
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        v189 = v151;
        v190 = v251;
        v191 = v248;
        if (v181 >= *(v179 + 16))
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        OUTLINED_FUNCTION_2_43();
        sub_1CA525A84(v192, v190, v193);

        v194 = *(v190 + *(v191 + 28));
        sub_1CA94C218();
        sub_1CA524CCC(v190, _s17ControlFlowBranchVMa);
        v151 = v189;
        v163 = v252;
        v167 = v255;
LABEL_77:
        v223 = v167 + 1;
        if (!__OFADD__(v167, 1))
        {
          v224 = *(v194 + 16);

          if (v223 < v224)
          {
            do
            {
              v226 = v163;
              v227 = v151;
              MEMORY[0x1EEE9AC00](v225);
              sub_1CA9492A8();
              v228 = v263;
              sub_1CA285AF8(v263);
              v229 = *(v228 + 40);
              sub_1CA94C218();
              OUTLINED_FUNCTION_0_49();
              sub_1CA524CCC(v228, v230);
              if (*(v229 + 16) && (sub_1CA3210F0(), (v232 & 1) != 0))
              {
                v233 = *(*(v229 + 56) + 8 * v231);

                sub_1CA949168();
                if (__OFADD__(v233, 1))
                {
                  goto LABEL_89;
                }

                sub_1CA949168();
              }

              else
              {
              }

              ++v223;
              v151 = v227;
              v234 = v227;
              v163 = v226;
              v225 = v261(&v242 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0), v234);
            }

            while (v224 != v223);
          }

          v235 = v261;
          v261(v262, v151);
          v235(v245, v151);
          v236 = v254;
          v237 = *(v254 + 16);
          v238 = v250;
          (*(v247 + 32))(v250, v260, v253);
          v239 = v238 + *(type metadata accessor for WFWorkflowActionTree.MoveParameters(0) + 20);
          v241 = v257;
          v240 = v258;
          *v239 = v249;
          *(v239 + 8) = v241;
          *(v239 + 16) = v236;
          *(v239 + 24) = v240;
          *(v239 + 32) = v237;
          *(v239 + 40) = 1;
          goto LABEL_86;
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_16_21();
      sub_1CA36D9BC(v217, v218, v219, v220, v221, v222);
      v169 = v264;
      v167 = v255;
    }

    v194 = *(v169 + OBJC_IVAR___WFWorkflowActionTree_root);
    sub_1CA94C218();
    goto LABEL_77;
  }

LABEL_108:
  __break(1u);
}

uint64_t sub_1CA523354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4449A0, &qword_1CA9852C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA5233C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFWorkflowActionTree.MoveParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void WFWorkflowActionTree.primaryDragIndex(for:touchIndex:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v71 = v2;
  v4 = v3;
  v5 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_6_0();
  v74 = (v7 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444918, &qword_1CA9843B0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v69 - v9;
  v11 = sub_1CA9491F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v14 = OUTLINED_FUNCTION_19_16(v13);
  v72 = v4;
  v15(v14, v4, v11);
  v16 = MEMORY[0x1EEE78B48];
  sub_1CA525A3C(&qword_1EC4462B8, MEMORY[0x1EEE78B48], MEMORY[0x1EEE78B60]);
  sub_1CA94C598();
  v78 = sub_1CA9490E8();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v79 = *(v19 + 64);
  v20 = sub_1CA525A3C(&qword_1EC4447F8, v16, MEMORY[0x1EEE78B68]);
  v76 = v20;
  v77 = (v18 + 8);
  v80 = v1;
  v75 = v11;
  do
  {
    while (1)
    {
      MEMORY[0x1EEE9AC00](v20);
      v22 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1CA94CA58();
      OUTLINED_FUNCTION_20_18();
      sub_1CA525A3C(&qword_1EC444920, v23, v24);
      v25 = v78;
      v26 = sub_1CA94C358();
      v27 = *v77;
      (*v77)(v22, v25);
      if (v26)
      {
        sub_1CA27080C(v10, &qword_1EC444918, &qword_1CA9843B0);
        goto LABEL_16;
      }

      v73 = v27;
      v28 = sub_1CA94CB28();
      v30 = *v29;
      v28(v82, 0);
      sub_1CA94CA68();
      v31 = v74;
      sub_1CA285AF8(v74);
      v32 = *(v31 + 32);
      sub_1CA94C218();
      OUTLINED_FUNCTION_0_49();
      sub_1CA524CCC(v31, v33);
      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v30 >= *(v32 + 16))
      {
        goto LABEL_19;
      }

      v34 = v32 + 48 * v30;
      v35 = *(v34 + 56);
      v36 = *(v34 + 64);
      v37 = *(v34 + 72);
      v38 = OUTLINED_FUNCTION_12_22();
      sub_1CA36D94C(v38, v39, v40, v41, v42, v43);

      if (v37 == 1)
      {
        break;
      }

      v45 = OUTLINED_FUNCTION_12_22();
      sub_1CA36D9BC(v45, v46, v47, v48, v49, v50);
    }

    v44 = v80;
  }

  while (v36);
  sub_1CA27080C(v10, &qword_1EC444918, &qword_1CA9843B0);
  v51 = [v44 actionAtIndex_];
  v52 = [v44 actionsNestedInsideAction_];
  if (!v52)
  {

    goto LABEL_16;
  }

  v53 = v52;
  sub_1CA3A2F84();
  v54 = sub_1CA94C658();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1CA9813B0;
  *(v55 + 32) = v51;
  v56 = v51;
  sub_1CA289E38(v54);
  v82[0] = v55;
  sub_1CA2B85A8(v57);
  v58 = v82[0];
  v59 = sub_1CA94CA28();
  v60 = MEMORY[0x1E69E7CC0];
  if (!v59)
  {
    goto LABEL_15;
  }

  v70 = v58;
  v74 = v56;
  v81 = MEMORY[0x1E69E7CC0];
  v61 = sub_1CA94D508();
  v69[1] = v69;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v69 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA94C9F8();
  if ((v59 & 0x8000000000000000) == 0)
  {
    do
    {
      v64 = sub_1CA94CB28();
      v66 = *v65;
      v64(v82, 0);
      v67 = [v44 actionAtIndex_];
      sub_1CA94D4D8();
      sub_1CA94D518();
      v44 = v80;
      sub_1CA94D528();
      sub_1CA94D4E8();
      sub_1CA94CA68();
      --v59;
    }

    while (v59);
    v73(v63, v78);
    v60 = v81;
    v58 = v70;
    v56 = v74;
LABEL_15:
    sub_1CA289E38(v60);
    sub_1CA523A28(v58, v68);

LABEL_16:
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_20:
  __break(1u);
}

void *sub_1CA523A28(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v6 = *(a2 + 16);
    sub_1CA94C218();
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_12:

    v8 = 1;
    return (v8 & 1);
  }

  if (a2 < 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  sub_1CA94C218();
  if (!sub_1CA94D328())
  {
    goto LABEL_12;
  }

  if (sub_1CA94D328() != 1)
  {
    v5 = sub_1CA94D328();
    v2 = sub_1CA6AD02C(v4, v5);
LABEL_13:
    v8 = sub_1CA5255CC(a1, v2);

    return (v8 & 1);
  }

LABEL_10:

  result = sub_1CA2ED048(v2);
  v10 = result;
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v9[2] = &v10;
    v8 = sub_1CA2BFDC4(sub_1CA5259CC, v9, a1);

    return (v8 & 1);
  }

  __break(1u);
  return result;
}

void sub_1CA523BD0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v97 = _s17ControlFlowBranchVMa(0);
  v100 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v102 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s6LayoutVMa(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v93 - v16;
  v17 = a1 + *(type metadata accessor for WFWorkflowActionTree.MoveParameters(0) + 20);
  v18 = *(v17 + 8);
  v19 = *(v17 + 16);
  v20 = *(v17 + 24);
  v21 = *(v17 + 32);
  v22 = *(v17 + 40);
  v99 = a3;
  v98 = v19;
  v95 = v18;
  v96 = v21;
  if (v22)
  {
    if (*(v19 + 16))
    {
      v110 = a4;
      v101 = a2;
      v109 = (v19 + ((*(v100 + 80) + 32) & ~*(v100 + 80)));
      v23 = *v109;
      v24 = v20;
      sub_1CA94C218();
      sub_1CA94C218();
      v113 = v24;
      v5 = [a3 indexOfAction_];
      v25 = sub_1CA9492B8();
      v111 = &v93;
      a3 = v25;
      v26 = *(v25 - 1);
      v6 = *(v26 + 64);
      v27 = MEMORY[0x1EEE9AC00](v25);
      v28 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
      v114 = &v93 - v28;
      v112 = &v93;
      MEMORY[0x1EEE9AC00](v27);
      v4 = &v93 - v28;
      a2 = v106;
      sub_1CA285AF8(v106);
      a1 = *(a2 + 24);
      sub_1CA94C218();
      v29 = sub_1CA524CCC(a2, _s6LayoutVMa);
      a4 = &v93;
      MEMORY[0x1EEE9AC00](v29);
      v30 = &v93 - v28;
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (v5 < *(a1 + 16))
        {
          a2 = a3;
          (*(v26 + 16))(v30, a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v5, a3);

          sub_1CA949298();
          v5 = *(v26 + 8);
          (v5)(v30, a3);
          a1 = v4;
          sub_1CA949298();
          (v5)(v4, a3);
          v31 = *(v98 + 16);
          v32 = v113;
          if (v96 == v31)
          {
            goto LABEL_8;
          }

          if (v96 < v31)
          {
            v32 = *(v109 + *(v100 + 72) * v96);
LABEL_8:
            v112 = v32;
            a3 = v99;
            v33 = [v99 actions];
            sub_1CA3A2F84();
            v34 = sub_1CA94C658();

            v35 = sub_1CA25B410(v34);

            v36 = 0;
            a4 = v101;
            v4 = v114;
            if (v35 == v101)
            {
              goto LABEL_12;
            }

            sub_1CA285AF8(v15);
            a1 = *v15;
            sub_1CA94C218();
            sub_1CA524CCC(v15, _s6LayoutVMa);
            sub_1CA275D70(a4, (a1 & 0xC000000000000001) == 0, a1);
            if ((a1 & 0xC000000000000001) == 0)
            {
              v37 = *(a1 + 8 * a4 + 32);
LABEL_11:
              v36 = v37;

LABEL_12:
              v38 = sub_1CA6A6B34();
              if (v38)
              {
                v39 = sub_1CA94C218();
                v40 = sub_1CA6A71A4(v39);

                v41 = v112;
                v42 = sub_1CA524AF0(v40, v112, v36);

                sub_1CA6A81A0(v42);

                (v5)(v4, a2);
              }

              else
              {
                v109 = &v93;
                MEMORY[0x1EEE9AC00](v38);
                v66 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
                sub_1CA949298();
                v67 = OBJC_IVAR___WFWorkflowActionTree_root;
                v115 = *&a3[OBJC_IVAR___WFWorkflowActionTree_root];
                sub_1CA94C218();
                sub_1CA6A78A8();
                sub_1CA6A81A0(v115);
                if (v121 == 1)
                {
                  v88 = v119;
                  v107 = v118;
                  v108 = v117;
                  sub_1CA6A86E0(v116, v117, v118, v119, v68, v69, v70, v71, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
                  v89 = v112;
                  sub_1CA524AF0(v90, v112, v36);
                  v110 = a2;

                  v115 = *&a3[v67];
                  sub_1CA94C218();
                  sub_1CA6A81E8();

                  sub_1CA6A81A0(v115);

                  v91 = v66;
                  v92 = v110;
                  (v5)(v91, v110);
                  v72 = v114;
                  v73 = v92;
                }

                else
                {
                  if (v121 != 255)
                  {
                    sub_1CA27080C(&v116, &unk_1EC448130, &unk_1CA992000);
                  }

                  (v5)(&v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
                  v72 = v4;
                  v73 = a2;
                }

                (v5)(v72, v73);
              }

              return;
            }

LABEL_74:
            v37 = MEMORY[0x1CCAA22D0](a4, a1);
            goto LABEL_11;
          }

LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v5 = *v17;
  v105 = *(*v17 + 16);
  v93 = v20;
  if (v105)
  {
    v103 = OBJC_IVAR___WFWorkflowActionTree_root;
    v104 = v5 + 32;
    sub_1CA521910(v5, v18, v19, v20, v21, 0);
    sub_1CA94C218();
    v43 = 0;
    v44 = v100;
    v94 = v5;
    while (v43 < *(v5 + 16))
    {
      v45 = v104 + 40 * v43;
      v46 = *v45;
      v114 = *(v45 + 8);
      v4 = *(v45 + 16);
      a4 = *(v45 + 24);
      a1 = *(v45 + 32);
      v112 = v43;
      if (a1)
      {
        if (!*(v4 + 16))
        {
          goto LABEL_65;
        }

        v47 = *(v4 + ((*(v44 + 80) + 32) & ~*(v44 + 80)));
      }

      else
      {
        v47 = v46;
      }

      v48 = v47;
      v108 = v46;
      v109 = v4;
      v110 = a4;
      LODWORD(v111) = a1;
      sub_1CA36DA2C(v46, v114, v4, a4, a1);
      v4 = [a3 indexOfAction_];

      v49 = sub_1CA9492B8();
      v107 = &v93;
      v113 = v49;
      a4 = *(v49 - 1);
      MEMORY[0x1EEE9AC00](v49);
      v51 = &v93 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = v106;
      sub_1CA285AF8(v106);
      a1 = *(v52 + 24);
      sub_1CA94C218();
      sub_1CA524CCC(v52, _s6LayoutVMa);
      if (v4 < 0)
      {
        goto LABEL_63;
      }

      if (v4 >= *(a1 + 16))
      {
        goto LABEL_64;
      }

      (*(a4 + 16))(v51, a1 + ((*(a4 + 80) + 32) & ~*(a4 + 80)) + *(a4 + 72) * v4, v113);

      v115 = *&a3[v103];
      sub_1CA94C218();
      sub_1CA6A78A8();
      a1 = a3;
      sub_1CA6A81A0(v115);
      if (v121 == 255)
      {
        goto LABEL_78;
      }

      if (v4 >= a2)
      {
        v60 = *(a4 + 8);
        a4 += 8;
        v60(v51, v113);
        sub_1CA27080C(&v116, &unk_1EC448130, &unk_1CA992000);
        sub_1CA36D780(v108, v114, v109, v110, v111);
        v61 = v112;
      }

      else
      {
        if (v121 == 1)
        {
          if (v120)
          {
            if ((v120 & 0x8000000000000000) != 0)
            {
              goto LABEL_67;
            }

            if (v120 >= *(v118 + 16))
            {
              goto LABEL_68;
            }

            v101 = a2;
            v53 = v102;
            sub_1CA525A84(v118 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v120, v102, _s17ControlFlowBranchVMa);
            v54 = 0;
            v55 = *(v53 + *(v97 + 28));
            a2 = v55 + 64;
            v5 = *(v55 + 16) + 1;
            while (--v5)
            {
              if (*a2 == 1)
              {
                v56 = *(a2 - 16);
                v4 = *(a2 - 8);
                a3 = *(a2 - 32);
                v6 = *(a2 - 24);
                sub_1CA94C218();
                sub_1CA94C218();
                v57 = v4;
                sub_1CA6A76C0();
                a1 = v58;
                sub_1CA36D780(a3, v6, v56, v4, 1);
              }

              else
              {
                a1 = 1;
              }

              a2 += 40;
              v59 = __OFADD__(v54, a1);
              v54 += a1;
              if (v59)
              {
                __break(1u);
                goto LABEL_62;
              }
            }

            sub_1CA27080C(&v116, &unk_1EC448130, &unk_1CA992000);
            sub_1CA36D780(v108, v114, v109, v110, v111);
            v63 = *(a4 + 8);
            a4 += 8;
            v63(v51, v113);
            a1 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_69;
            }

            sub_1CA524CCC(v102, _s17ControlFlowBranchVMa);
            a3 = v99;
            a2 = v101;
            v5 = v94;
            v44 = v100;
          }

          else
          {
            sub_1CA6A76C0();
            a1 = v64;
            sub_1CA27080C(&v116, &unk_1EC448130, &unk_1CA992000);
            sub_1CA36D780(v108, v114, v109, v110, v111);
            v65 = *(a4 + 8);
            a4 += 8;
            v65(v51, v113);
          }
        }

        else
        {
          sub_1CA27080C(&v116, &unk_1EC448130, &unk_1CA992000);
          sub_1CA36D780(v108, v114, v109, v110, v111);
          v62 = *(a4 + 8);
          a4 += 8;
          v62(v51, v113);
          a1 = 1;
        }

        v59 = __OFSUB__(a2, a1);
        a2 -= a1;
        v61 = v112;
        if (v59)
        {
          goto LABEL_66;
        }
      }

      v43 = (v61 + 1);
      if (v43 == v105)
      {
        sub_1CA521974(v5, v95, v98, v93, v96, 0);
        goto LABEL_50;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  sub_1CA521910(v5, v18, v19, v20, v21, 0);
LABEL_50:
  v74 = [a3 actions];
  sub_1CA3A2F84();
  v75 = sub_1CA94C658();

  v76 = sub_1CA25B410(v75);

  if (a2 == v76)
  {
    v77 = *&a3[OBJC_IVAR___WFWorkflowActionTree_root];
    v78 = *(v77 + 16);
    v79 = *(v5 + 16);
    if (!__OFADD__(v78, v79))
    {
      sub_1CA94C218();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v77;
      if (!isUniquelyReferenced_nonNull_native || v78 + v79 > *(v77 + 24) >> 1)
      {
        sub_1CA2E6A4C();
        v77 = v81;
        v115 = v81;
      }

      sub_1CA6B0018();
      sub_1CA6A81A0(v77);
      return;
    }

    __break(1u);
  }

  else
  {
    v82 = sub_1CA9492B8();
    v83 = *(v82 - 8);
    MEMORY[0x1EEE9AC00](v82);
    v85 = &v93 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    v86 = v106;
    sub_1CA285AF8(v106);
    v87 = *(v86 + 24);
    sub_1CA94C218();
    sub_1CA524CCC(v86, _s6LayoutVMa);
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2 < *(v87 + 16))
      {
        (*(v83 + 16))(v85, v87 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * a2, v82);

        v115 = *&a3[OBJC_IVAR___WFWorkflowActionTree_root];
        sub_1CA94C218();
        sub_1CA6A81E8();
        sub_1CA521974(v5, v95, v98, v93, v96, 0);
        sub_1CA6A81A0(v115);
        (*(v83 + 8))(v85, v82);
        return;
      }

      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  sub_1CA94D5F8();
  __break(1u);
}

uint64_t sub_1CA524AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CA94C218();
  sub_1CA58A5F4(a2, a1);
  if (v7)
  {
    goto LABEL_18;
  }

  v8 = v6;
  if (!a3 || (sub_1CA94C218(), sub_1CA58A5F4(a3, a1), v10 = v9, v12 = v11, , (v12 & 1) != 0))
  {
    v10 = sub_1CA25B410(a1);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || a1 < 0 || (a1 & 0x4000000000000000) != 0)
  {
    a1 = sub_1CA436664();
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13 - 1;
  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
  sub_1CA440434(((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 40), v13 - 1 - v8, ((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 32));
  *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v14;
  v16 = v10 - (v8 < v10);
  sub_1CA524E98(v16, a1);
  if (v16 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_1CA277E14(a1) >= v16)
  {
    v17 = sub_1CA25B410(a1);
    v18 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      v19 = v15;
      sub_1CA277E18(v18, 1);
      sub_1CA6B0108(v16, v16, 1, v19);
      sub_1CA286ACC(a1, 0);
      v21 = v20;

      return v21;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

uint64_t sub_1CA524CCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CA524D58(uint64_t a1)
{
  result = sub_1CA9491F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_1CA524DEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1CA524E2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

uint64_t sub_1CA524E98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1CA94D328();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void *sub_1CA524EF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      if (a2 >= 0)
      {
        v2 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_1CA94D328();
      a2 = sub_1CA6AD02C(v2, v5);
      a1 = v3;
      goto LABEL_7;
    }

    sub_1CA3A2F84();
    v7 = MEMORY[0x1E69E7CD0];
    v15 = MEMORY[0x1E69E7CD0];
    sub_1CA94D2F8();
LABEL_11:
    while (sub_1CA94D358())
    {
      swift_dynamicCast();
      if (*(v3 + 16))
      {
        v8 = sub_1CA94CFC8();
        v9 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v10 = v8 & v9;
          if (((*(v3 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
          {
            break;
          }

          v11 = *(*(v3 + 48) + 8 * v10);
          v12 = sub_1CA94CFD8();

          v8 = v10 + 1;
          if (v12)
          {
            v13 = *(v7 + 16);
            if (*(v7 + 24) <= v13)
            {
              sub_1CA6AE218(v13 + 1);
            }

            v7 = v15;
            sub_1CA6B2CD8();
            goto LABEL_11;
          }
        }
      }
    }

    return v7;
  }

  else
  {
    if (v4)
    {
LABEL_7:

      return sub_1CA5250F0(a1, a2);
    }

    return sub_1CA615268(a1, a2);
  }
}

void *sub_1CA5250F0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1CA5C3FA4(0, v5, v6);
    sub_1CA525290(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_1CA525550(v10, v5, sub_1CA525AE0);

    MEMORY[0x1CCAA4BF0](v10, -1, -1);
  }

  return v8;
}

void sub_1CA525290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CA94D2F8();
    sub_1CA3A2F84();
    sub_1CA28D4F8();
    sub_1CA94C948();
    v4 = v36;
    v5 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);
    sub_1CA94C218();
    v7 = 0;
  }

  v30 = 0;
  v12 = (v6 + 64) >> 6;
  v32 = v5;
  v33 = v4;
  while (1)
  {
    v13 = v7;
    v14 = v8;
LABEL_9:
    if (v4 < 0)
    {
      if (!sub_1CA94D358())
      {
        goto LABEL_28;
      }

      sub_1CA3A2F84();
      swift_dynamicCast();
      v18 = v41;
      v7 = v13;
      v17 = v14;
      if (!v41)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v15 = v13;
    v16 = v14;
    v7 = v13;
    if (!v14)
    {
      break;
    }

LABEL_14:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_18:
    v34 = v17;
    v19 = sub_1CA94CFC8();
    v20 = ~(-1 << *(a4 + 32));
    do
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = 1 << (v19 & v20);
      if ((v23 & *(a4 + 56 + 8 * v22)) == 0)
      {

        v13 = v7;
        v4 = v33;
        v14 = v34;
        v12 = (v6 + 64) >> 6;
        v5 = v32;
        goto LABEL_9;
      }

      sub_1CA3A2F84();
      v24 = *(*(a4 + 48) + 8 * v21);
      v25 = sub_1CA94CFD8();

      v19 = v21 + 1;
    }

    while ((v25 & 1) == 0);

    v26 = *(a1 + 8 * v22);
    *(a1 + 8 * v22) = v26 | v23;
    v13 = v7;
    v4 = v33;
    v8 = v34;
    v14 = v34;
    v27 = (v26 & v23) == 0;
    v12 = (v6 + 64) >> 6;
    v5 = v32;
    if (!v27)
    {
      goto LABEL_9;
    }

    if (__OFADD__(v30++, 1))
    {
      __break(1u);
LABEL_28:
      sub_1CA2BC138(v4);

      sub_1CA6B0874(a1, a2, v30, a4);
      return;
    }
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_1CA525550(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1CA5255CC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1CA5C3FA4(0, v5, v6);
    sub_1CA525758(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_1CA5258F8(v10, v5, sub_1CA525A20);
    MEMORY[0x1CCAA4BF0](v10, -1, -1);
  }

  return v8 & 1;
}

void sub_1CA525758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = sub_1CA25B410(a3);
  v5 = 0;
  v6 = 0;
  v20 = a3 & 0xC000000000000001;
  do
  {
    v18 = v5;
LABEL_3:
    v7 = v6;
    if (v6 == v22)
    {
      break;
    }

    sub_1CA275D70(v6, v20 == 0, a3);
    if (v20)
    {
      v8 = MEMORY[0x1CCAA22D0](v7, a3);
    }

    else
    {
      v8 = *(a3 + 32 + 8 * v7);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v23 = v7 + 1;
    v10 = sub_1CA94CFC8();
    v11 = ~(-1 << *(a4 + 32));
    do
    {
      v12 = v10 & v11;
      v13 = (v10 & v11) >> 6;
      v14 = 1 << (v10 & v11);
      if ((v14 & *(a4 + 56 + 8 * v13)) == 0)
      {

        v6 = v23;
        goto LABEL_3;
      }

      sub_1CA3A2F84();
      v15 = *(*(a4 + 48) + 8 * v12);
      v16 = sub_1CA94CFD8();

      v10 = v12 + 1;
    }

    while ((v16 & 1) == 0);

    v17 = *(a1 + 8 * v13);
    *(a1 + 8 * v13) = v17 | v14;
    v6 = v23;
    if ((v17 & v14) != 0)
    {
      goto LABEL_3;
    }

    if (__OFADD__(v18, 1))
    {
      goto LABEL_18;
    }

    v5 = v18 + 1;
  }

  while (v18 + 1 != *(a4 + 16));
}

void *sub_1CA5258F8(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

void sub_1CA525978(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1CA525290(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

void sub_1CA5259EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  sub_1CA525758(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7 & 1;
  }
}

uint64_t sub_1CA525A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CA525A84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_52();
  v4 = OUTLINED_FUNCTION_23();
  v5(v4);
  return a2;
}

id sub_1CA525B30()
{
  v163 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9C83E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v168 = sub_1CA94C438("list|prompt|select|action|sheet|switch", 38);
  v5 = v4;
  v6 = sub_1CA94C438("list|prompt|select|action|sheet|switch", 38);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v171 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v172 = v10;
  v11 = &v151 - v171;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v167 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v170 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v169 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v151 - v169;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v168, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v168 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v166 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Presents a menu and runs different actions based on which menu item was chosen.", 79);
  v164 = v24;
  v25 = sub_1CA94C438("Presents a menu and runs different actions based on which menu item was chosen.", 79);
  v27 = v26;
  v165 = &v151;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v151 - v171;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v151 - v169;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v164, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v168;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v166;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1851881795;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x80000001CA9C8480;
  *(inited + 224) = v35;
  *(inited + 232) = @"InputPassthrough";
  v36 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"IconColor";
  v38 = @"IconSymbol";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438("Choose from Menu (Action Name)", 30);
  v43 = v42;
  v44 = sub_1CA94C438("Choose from Menu", 16);
  v46 = v45;
  v166 = &v151;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v151 - v171;
  sub_1CA948D98();
  v48 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v151 - v169;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v168;
  *(inited + 312) = @"Output";
  v51 = @"Output";
  v52 = MEMORY[0x1E69E6158];
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 320) = v53;
  *(inited + 344) = v54;
  *(inited + 352) = @"ParameterCollapsingBehavior";
  *(inited + 360) = 0x726576654ELL;
  *(inited + 368) = 0xE500000000000000;
  *(inited + 384) = v52;
  *(inited + 392) = @"Parameters";
  v55 = v52;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v166 = swift_allocObject();
  v160 = xmmword_1CA981360;
  *(v166 + 1) = xmmword_1CA981360;
  v165 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  v157 = xmmword_1CA981380;
  *(v56 + 16) = xmmword_1CA981380;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000014;
  *(v56 + 48) = 0x80000001CA99B500;
  *(v56 + 64) = v55;
  *(v56 + 72) = @"Description";
  v155 = @"Class";
  v57 = @"ParameterCollapsingBehavior";
  v58 = @"Parameters";
  v59 = @"Description";
  v60 = sub_1CA94C438("The instruction provided when the menu is presented. (WFMenuPrompt)", 67);
  v161 = v61;
  v62 = sub_1CA94C438("The instruction provided when the menu is presented.", 52);
  v64 = v63;
  v162 = &v151;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v151 - v171;
  sub_1CA948D98();
  v66 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v151 - v169;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 80) = sub_1CA2F9F14(v60, v161, v62, v64, 0, 0, v65, v67);
  *(v56 + 104) = v168;
  *(v56 + 112) = @"DisallowedVariableTypes";
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v162 = v69;
  *(v56 + 120) = &unk_1F4A03128;
  *(v56 + 144) = v69;
  *(v56 + 152) = @"Key";
  strcpy((v56 + 160), "WFMenuPrompt");
  *(v56 + 173) = 0;
  *(v56 + 174) = -5120;
  *(v56 + 184) = MEMORY[0x1E69E6158];
  *(v56 + 192) = @"Label";
  v70 = @"Key";
  v71 = @"Label";
  v158 = v70;
  v159 = v71;
  v72 = @"DisallowedVariableTypes";
  v73 = sub_1CA94C438("Prompt (WFMenuPrompt)", 21);
  v152 = v74;
  v153 = v73;
  v75 = sub_1CA94C438("Prompt", 6);
  v151 = v76;
  v154 = &v151;
  MEMORY[0x1EEE9AC00](v75);
  v77 = v171;
  sub_1CA948D98();
  v78 = v167;
  v79 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v161 = inited;
  v80 = v169;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 200) = sub_1CA2F9F14(v153, v152, v75, v151, 0, 0, &v151 - v77, &v151 - v80);
  v82 = v168;
  *(v56 + 224) = v168;
  *(v56 + 232) = @"Placeholder";
  v83 = @"Placeholder";
  v84 = sub_1CA94C438("Prompt (WFMenuPrompt)", 21);
  v152 = v85;
  v153 = v84;
  v86 = sub_1CA94C438("Prompt", 6);
  v151 = v87;
  v154 = &v151;
  MEMORY[0x1EEE9AC00](v86);
  sub_1CA948D98();
  v88 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v153, v152, v86, v151, 0, 0, &v151 - v77, &v151 - v80);
  *(v56 + 264) = v82;
  *(v56 + 240) = v90;
  _s3__C3KeyVMa_0(0);
  v154 = v91;
  v153 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v92 = sub_1CA94C1E8();
  v93 = sub_1CA2F864C(v92);
  v166[4] = v93;
  v94 = swift_allocObject();
  *(v94 + 16) = v157;
  *(v94 + 32) = v155;
  *(v94 + 40) = 0xD00000000000001ELL;
  *(v94 + 48) = 0x80000001CA9C8590;
  *(v94 + 64) = MEMORY[0x1E69E6158];
  *(v94 + 72) = @"DefaultValue";
  v164 = swift_allocObject();
  *(v164 + 1) = v160;
  v95 = @"DefaultValue";
  v96 = sub_1CA94C438("One (WFMenuItems)", 17);
  v156 = v97;
  *&v157 = v96;
  v155 = sub_1CA94C438("One", 3);
  v152 = v98;
  *&v160 = &v151;
  MEMORY[0x1EEE9AC00](v155);
  v99 = v171;
  sub_1CA948D98();
  v100 = v167;
  v101 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = v169;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v157, v156, v155, v152, 0, 0, &v151 - v99, &v151 - v102);
  v164[4] = v104;
  v105 = sub_1CA94C438("Two (WFMenuItems)", 17);
  v156 = v106;
  *&v157 = v105;
  v155 = sub_1CA94C438("Two", 3);
  v152 = v107;
  *&v160 = &v151;
  MEMORY[0x1EEE9AC00](v155);
  sub_1CA948D98();
  v108 = [v100 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v157, v156, v155, v152, 0, 0, &v151 - v99, &v151 - v102);
  v111 = v164;
  v164[5] = v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v94 + 80) = v111;
  *(v94 + 104) = v112;
  *(v94 + 112) = @"ImportQuestionBehavior";
  strcpy((v94 + 120), "NotSupported");
  *(v94 + 133) = 0;
  *(v94 + 134) = -5120;
  v113 = MEMORY[0x1E69E6158];
  v114 = v158;
  *(v94 + 144) = MEMORY[0x1E69E6158];
  *(v94 + 152) = v114;
  *(v94 + 160) = 0x7449756E654D4657;
  *(v94 + 168) = 0xEB00000000736D65;
  v115 = v159;
  *(v94 + 184) = v113;
  *(v94 + 192) = v115;
  v116 = @"ImportQuestionBehavior";
  v117 = sub_1CA94C438("Items (WFMenuItems)", 19);
  *&v160 = v118;
  v119 = sub_1CA94C438("Items", 5);
  v121 = v120;
  v164 = &v151;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v151 - v171;
  sub_1CA948D98();
  v123 = [v100 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v151 - v169;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v94 + 200) = sub_1CA2F9F14(v117, v160, v119, v121, 0, 0, v122, v124);
  *(v94 + 224) = v168;
  *(v94 + 232) = @"StripsTTSHints";
  *(v94 + 264) = MEMORY[0x1E69E6370];
  *(v94 + 240) = 1;
  v126 = @"StripsTTSHints";
  v127 = sub_1CA94C1E8();
  v128 = sub_1CA2F864C(v127);
  v129 = v166;
  v166[5] = v128;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v131 = v161;
  *(v161 + 400) = v129;
  *(v131 + 424) = v130;
  *(v131 + 432) = @"ParameterSummary";
  v132 = @"ParameterSummary";
  v133 = sub_1CA94C438("Choose from menu with ${WFMenuPrompt} (Parameter Summary)", 57);
  v135 = v134;
  v136 = sub_1CA94C438("Choose from menu with ${WFMenuPrompt}", 37);
  v138 = v137;
  v168 = &v151;
  MEMORY[0x1EEE9AC00](v136);
  v139 = &v151 - v171;
  sub_1CA948D98();
  v140 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v151 - v169;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v133, v135, v136, v138, 0, 0, v139, v141);
  v144 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v145 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v131 + 440) = v144;
  *(v131 + 480) = &unk_1F4A03158;
  *(v131 + 464) = v145;
  *(v131 + 472) = @"RequiredResources";
  *(v131 + 504) = v162;
  *(v131 + 512) = @"SnappingPassthrough";
  v146 = MEMORY[0x1E69E6370];
  *(v131 + 544) = MEMORY[0x1E69E6370];
  *(v131 + 520) = 1;
  *(v131 + 552) = @"SuggestedAsInitialAction";
  *(v131 + 584) = v146;
  *(v131 + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v147 = @"RequiredResources";
  v148 = @"SnappingPassthrough";
  v149 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA526DA4()
{
  v141 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9C8690;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("clip|editor|audio|video|movie", 29);
  v6 = v5;
  v7 = sub_1CA94C438("clip|editor|audio|video|movie", 29);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v148 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = v11;
  v12 = v135 - v148;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v146 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v145 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v147 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v135 - v147;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v144 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v143 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = @"DescriptionInput";
  v21 = @"Description";
  v22 = @"DescriptionInput";
  v23 = sub_1CA94C438("The audio or video file to edit.", 32);
  v139 = v24;
  v140 = v23;
  v25 = sub_1CA94C438("The audio or video file to edit.", 32);
  v138 = v26;
  *&v142 = v135;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v135 - v148;
  sub_1CA948D98();
  v28 = v146;
  v29 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v135 - v147;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v140, v139, v25, v138, 0, 0, v27, v30);
  *(v20 + 64) = v144;
  *(v20 + 72) = @"DescriptionResult";
  v32 = @"DescriptionResult";
  v33 = sub_1CA94C438("The trimmed media.", 18);
  v139 = v34;
  v140 = v33;
  v35 = sub_1CA94C438("The trimmed media.", 18);
  v37 = v36;
  *&v142 = v135;
  MEMORY[0x1EEE9AC00](v35);
  v38 = v135 - v148;
  sub_1CA948D98();
  v39 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  v40 = v147;
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 80) = sub_1CA2F9F14(v140, v139, v35, v37, 0, 0, v38, v135 - v40);
  v42 = v144;
  *(v20 + 104) = v144;
  *(v20 + 112) = @"DescriptionSummary";
  v43 = @"DescriptionSummary";
  v44 = sub_1CA94C438("Presents a view allowing you to trim the media passed into the action.", 70);
  v139 = v45;
  v140 = v44;
  v138 = sub_1CA94C438("Presents a view allowing you to trim the media passed into the action.", 70);
  v47 = v46;
  *&v142 = v135;
  MEMORY[0x1EEE9AC00](v138);
  v48 = v135 - v148;
  sub_1CA948D98();
  v49 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v140, v139, v138, v47, 0, 0, v48, v135 - v40);
  *(v20 + 144) = v42;
  *(v20 + 120) = v51;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v52 = sub_1CA94C1E8();
  v53 = v143;
  *(inited + 120) = sub_1CA6B3784(v52);
  *(inited + 144) = v53;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1851881795;
  *(inited + 168) = 0xE400000000000000;
  v54 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000012;
  *(inited + 208) = 0x80000001CA9C8770;
  *(inited + 224) = v54;
  *(inited + 232) = @"Input";
  v55 = v54;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  v142 = xmmword_1CA981350;
  *(v56 + 16) = xmmword_1CA981350;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 48) = 0;
  *(v56 + 72) = v57;
  strcpy((v56 + 80), "ParameterKey");
  *(v56 + 93) = 0;
  *(v56 + 94) = -5120;
  strcpy((v56 + 96), "WFInputMedia");
  *(v56 + 109) = 0;
  *(v56 + 110) = -5120;
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x6465726975716552;
  *(v56 + 136) = 0xE800000000000000;
  *(v56 + 144) = 1;
  *(v56 + 168) = v57;
  *(v56 + 176) = 0x7365707954;
  *(v56 + 184) = 0xE500000000000000;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 216) = v143;
  *(v56 + 192) = &unk_1F4A03188;
  v58 = @"IconColor";
  v59 = @"IconSymbol";
  v60 = @"Input";
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v140 = v62;
  *(inited + 240) = v61;
  *(inited + 264) = v62;
  *(inited + 272) = @"Name";
  v63 = @"Name";
  v64 = sub_1CA94C438("Trim Media (Action Name)", 24);
  v137 = v65;
  v66 = sub_1CA94C438("Trim Media", 10);
  v68 = v67;
  v138 = v135;
  MEMORY[0x1EEE9AC00](v66);
  v69 = v148;
  sub_1CA948D98();
  v70 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = v135 - v147;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v64, v137, v66, v68, 0, 0, v135 - v69, v71);
  v73 = v144;
  *(inited + 304) = v144;
  *(inited + 312) = @"Output";
  v74 = swift_allocObject();
  *(v74 + 16) = v142;
  *(v74 + 32) = 0x75736F6C63736944;
  *(v74 + 40) = 0xEF6C6576654C6572;
  *(v74 + 48) = 0x63696C627550;
  *(v74 + 56) = 0xE600000000000000;
  *(v74 + 72) = MEMORY[0x1E69E6158];
  *(v74 + 80) = 0x656C7069746C754DLL;
  *(v74 + 88) = 0xE800000000000000;
  *(v74 + 96) = 0;
  *(v74 + 120) = MEMORY[0x1E69E6370];
  *(v74 + 128) = 0x614E74757074754FLL;
  *(v74 + 136) = 0xEA0000000000656DLL;
  v75 = @"Output";
  v76 = sub_1CA94C438("Trimmed Media (Default Output Name)", 35);
  v137 = v77;
  v138 = v76;
  v78 = sub_1CA94C438("Trimmed Media", 13);
  v80 = v79;
  v139 = v135;
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948D98();
  v81 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v135 - v147;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 144) = sub_1CA2F9F14(v138, v137, v78, v80, 0, 0, v135 - v69, v82);
  *(v74 + 168) = v73;
  *(v74 + 176) = 0x7365707954;
  *(v74 + 216) = v143;
  *(v74 + 184) = 0xE500000000000000;
  *(v74 + 192) = &unk_1F4A031B8;
  v84 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v140;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1CA9813B0;
  v139 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v85 = swift_allocObject();
  *(v85 + 16) = v142;
  *(v85 + 32) = @"Class";
  *(v85 + 40) = 0xD000000000000019;
  *(v85 + 48) = 0x80000001CA99B030;
  *(v85 + 64) = v84;
  *(v85 + 72) = @"Key";
  strcpy((v85 + 80), "WFInputMedia");
  *(v85 + 93) = 0;
  *(v85 + 94) = -5120;
  *(v85 + 104) = v84;
  *(v85 + 112) = @"Label";
  v86 = @"Parameters";
  v87 = @"Class";
  v88 = @"Key";
  v89 = @"Label";
  v90 = sub_1CA94C438("Media (WFInputMedia)", 20);
  v137 = v91;
  v138 = v90;
  v92 = sub_1CA94C438("Media", 5);
  v136 = v93;
  *&v142 = v135;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v135 - v148;
  sub_1CA948D98();
  v95 = v146;
  v96 = [v146 bundleURL];
  v135[1] = v135;
  MEMORY[0x1EEE9AC00](v96);
  v97 = v135 - v147;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 120) = sub_1CA2F9F14(v138, v137, v92, v136, 0, 0, v94, v97);
  v99 = v144;
  *(v85 + 144) = v144;
  *(v85 + 152) = @"Placeholder";
  v100 = @"Placeholder";
  v101 = sub_1CA94C438("Media (WFInputMedia)", 20);
  v137 = v102;
  v138 = v101;
  v136 = sub_1CA94C438("Media", 5);
  v104 = v103;
  *&v142 = v135;
  MEMORY[0x1EEE9AC00](v136);
  v105 = v135 - v148;
  sub_1CA948D98();
  v106 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v135 - v147;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v138, v137, v136, v104, 0, 0, v105, v107);
  *(v85 + 184) = v99;
  *(v85 + 160) = v109;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v110 = sub_1CA94C1E8();
  v111 = sub_1CA2F864C(v110);
  v112 = v140;
  *(v140 + 32) = v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v112;
  *(inited + 384) = v113;
  *(inited + 392) = @"ParameterSummary";
  v114 = @"ParameterSummary";
  v115 = sub_1CA94C438("Trim ${WFInputMedia} (Parameter Summary)", 40);
  v117 = v116;
  v118 = sub_1CA94C438("Trim ${WFInputMedia}", 20);
  v120 = v119;
  v144 = v135;
  MEMORY[0x1EEE9AC00](v118);
  v121 = v135 - v148;
  sub_1CA948D98();
  v122 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = v135 - v147;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v115, v117, v118, v120, 0, 0, v121, v123);
  v126 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v127 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v126;
  *(inited + 424) = v127;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F4A031E8;
  v128 = v143;
  *(inited + 464) = v143;
  *(inited + 472) = @"UserInterfaceClasses";
  v129 = @"RequiredResources";
  v130 = @"UserInterfaceClasses";
  v131 = sub_1CA94C1E8();
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 480) = v131;
  *(inited + 504) = v132;
  *(inited + 512) = @"UserInterfaces";
  *(inited + 544) = v128;
  *(inited + 520) = &unk_1F4A03278;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v133 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA527F48()
{
  v28[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A51B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438("Edit Contact (Action Name)", 26, v28[0]);
  v9 = v8;
  v10 = sub_1CA94C438("Edit Contact", 12);
  v12 = v11;
  v13 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"RequiredResources";
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A032F8;
  *(inited + 184) = v23;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v24 = @"RequiredResources";
  v25 = @"ResidentCompatible";
  v26 = sub_1CA94C368();
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 232) = v26;
  *(inited + 240) = 0xD000000000000014;
  *(inited + 248) = 0x80000001CA993920;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA5282F8()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CA94D328())
  {

    sub_1CA2E85F8();
  }
}

void WFContentProperty.toolkitTypeInstance(classDescriptor:seen:isDeferrable:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  v275 = a3;
  v254 = a2;
  v278 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_19_0(v230 - v10);
  sub_1CA94B668();
  OUTLINED_FUNCTION_1_0();
  v276 = v12;
  v277 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_2();
  v272 = v13;
  v266 = sub_1CA94B618();
  OUTLINED_FUNCTION_1_0();
  v265 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_19_0(v16);
  v281 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45_0();
  v267 = v21;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v23);
  v286 = (v230 - v24);
  v268 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  MEMORY[0x1EEE9AC00](v268);
  OUTLINED_FUNCTION_3_1();
  v271 = v25;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_19_0(v230 - v27);
  v252 = sub_1CA94B008();
  OUTLINED_FUNCTION_1_0();
  v259 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_19_0(v30);
  v250 = sub_1CA94AFB8();
  OUTLINED_FUNCTION_1_0();
  v249 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_19_0(v33);
  v257 = sub_1CA94AFD8();
  OUTLINED_FUNCTION_1_0();
  v256 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_19_0(v36);
  v37 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v283 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3_1();
  v274 = v40;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_45_0();
  v273 = v42;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v44);
  v282 = (v230 - v45);
  sub_1CA94B5F8();
  OUTLINED_FUNCTION_1_0();
  v279 = v46;
  *&v280 = v47;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = v230 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v53 = v230 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  MEMORY[0x1EEE9AC00](v54 - 8);
  OUTLINED_FUNCTION_3_1();
  v270 = v55;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_45_0();
  v269 = v57;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v59);
  v61 = (v230 - v60);
  v62 = sub_1CA94CD98();
  if (!v62 || (v245 = v62, (v63 = sub_1CA94CD98()) == 0) || (v64 = dynamic_cast_existential_1_conditional(v63, v63, &protocol descriptor for WFToolKitContentItem)) == 0)
  {
    sub_1CA52A1C8();
    swift_allocError();
    *v89 = 1;
    swift_willThrow();
    return;
  }

  v240 = v51;
  v237 = v65;
  v238 = v64;
  sub_1CA94B608();
  v66 = OUTLINED_FUNCTION_23();
  v236 = v67;
  v235 = v68;
  v69 = v68(v66);
  v70 = *MEMORY[0x1E69DB460];
  v243 = v37;
  v246 = v61;
  v239 = v18;
  v71 = v286;
  v233 = v70;
  if (v69 == v70)
  {
    goto LABEL_29;
  }

  if (v69 != *MEMORY[0x1E69DB450])
  {
    if (v69 != *MEMORY[0x1E69DB468] && v69 != *MEMORY[0x1E69DB458])
    {
LABEL_92:
      sub_1CA94D7E8();
      __break(1u);
      return;
    }

LABEL_29:
    v91 = OUTLINED_FUNCTION_23();
    v92(v91);
    v93 = 1;
    OUTLINED_FUNCTION_46();
    v94 = v281;
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v281);
    LODWORD(v260) = 0;
    goto LABEL_30;
  }

  v244 = v4;
  v72 = OUTLINED_FUNCTION_23();
  v73(v72);
  v74 = *(v53 + 2);
  v7 = *(v53 + 3);
  v75 = [objc_opt_self() sharedProvider];
  v76 = sub_1CA94C368();

  v230[1] = v74;
  v232 = v7;
  v77 = sub_1CA94C368();
  v78 = [v75 entityWithIdentifier:v76 fromBundleIdentifier:v77];

  if (!v78)
  {
    goto LABEL_51;
  }

  v234 = a4;
  v230[2] = v5;
  v231 = v78;
  v79 = [v78 properties];
  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  v37 = sub_1CA94C658();

  a4 = sub_1CA25B410(v37);
  v80 = 0;
  v242 = v37 & 0xC000000000000001;
  v241 = v37 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (a4 == v80)
    {

      OUTLINED_FUNCTION_19_17();
      v78 = v231;
      goto LABEL_51;
    }

    if (v242)
    {
      v81 = MEMORY[0x1CCAA22D0](v80, v37);
    }

    else
    {
      if (v80 >= *(v241 + 16))
      {
        goto LABEL_91;
      }

      v81 = *(v37 + 8 * v80 + 32);
    }

    v82 = v81;
    if (__OFADD__(v80, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v61 = sub_1CA3F132C(v81, &selRef_identifier);
    v7 = v83;
    v6 = [v244 name];
    v84 = sub_1CA94C3A8();
    v86 = v85;

    if (!v7)
    {

      goto LABEL_21;
    }

    if (v61 == v84 && v7 == v86)
    {
      break;
    }

    v88 = sub_1CA94D7F8();

    if (v88)
    {
      goto LABEL_56;
    }

LABEL_21:

    ++v80;
    OUTLINED_FUNCTION_15_17();
    v71 = v286;
  }

LABEL_56:

  v7 = &selRef_temporaryDirectoryURL;
  v164 = [v82 valueType];
  v61 = 0x1E69AC000;
  OUTLINED_FUNCTION_19_17();
  v98 = v240;
  if (v165)
  {
    v166 = v165;
    objc_opt_self();
    v167 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    v167 = 0;
  }

  v187 = [v82 valueType];
  if (!v187)
  {
LABEL_81:
    OUTLINED_FUNCTION_15_17();
    if (!v167)
    {
      goto LABEL_86;
    }

    goto LABEL_82;
  }

  v188 = v187;
  objc_opt_self();
  v189 = swift_dynamicCastObjCClass();
  if (!v189)
  {

    goto LABEL_81;
  }

  v37 = [v189 memberValueType];

  if (!v37)
  {
    goto LABEL_81;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    OUTLINED_FUNCTION_15_17();
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_15_17();
  if (v167)
  {
LABEL_82:

LABEL_83:
    v71 = v286;
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v224, v225, v226, v281);
    OUTLINED_FUNCTION_6_34();
    goto LABEL_84;
  }

LABEL_86:
  v71 = v286;
  v78 = v231;
  if (v82)
  {
    v37 = v82;
    v228 = [v37 valueType];
    v7 = v232;
    v5 = v6;
    sub_1CA94CB58();
    if (v6)
    {

      return;
    }

    v229 = v260;
    __swift_storeEnumTagSinglePayload(v260, 0, 1, v281);
    sub_1CA52A350(v229, 0x1E69AC000);
    OUTLINED_FUNCTION_6_34();
    v98 = v240;
LABEL_84:
    v93 = ([v82 capabilities] & 2) == 0;
    v227 = v82;
    LODWORD(v260) = [v227 isOptional];

    v94 = v281;
    goto LABEL_31;
  }

LABEL_51:

  v93 = 1;
  v37 = v260;
  OUTLINED_FUNCTION_46();
  v94 = v281;
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v281);
  sub_1CA52A350(v37, v61);

  LODWORD(v260) = 0;
  OUTLINED_FUNCTION_6_34();
LABEL_30:
  v98 = v240;
LABEL_31:
  v99 = [v7 hasPossibleValues];
  LODWORD(v286) = v93;
  if (v99)
  {
    v100 = [objc_msgSend(v7 possibleValues)];
    swift_unknownObjectRelease();
    if (v100)
    {
      sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
      if (swift_dynamicCastMetatype())
      {
        v284 = 0;
        v285 = 0;
        static WFToolKitContentItem.toolkitTypeInstance(for:seen:)(&v284, v254, v238, v237, v253);
        if (v6)
        {
          sub_1CA52A2F4(v61, &qword_1EC444368);
          return;
        }

        v150 = v282;
        v162 = OUTLINED_FUNCTION_13_25();
        v163(v162);
      }

      else
      {
        v132 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4462E8, &qword_1CA98AD78) + 48);
        v244 = v7;
        v133 = v248;
        v134 = (v248 + v132);
        (*(v265 + 16))(v248, v278, v266);
        v135 = [v244 name];
        v136 = sub_1CA94C3A8();
        v138 = v137;

        *v134 = v136;
        v134[1] = v138;
        (*(v249 + 104))(v133, *MEMORY[0x1E69DB170], v250);
        sub_1CA94B5E8();
        v139 = v255;
        sub_1CA94AFC8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4462F0, &qword_1CA989EB0);
        v140 = v258;
        (*(v256 + 16))(v258, v139, v257);
        sub_1CA94AE18();
        v141 = v252;
        (*(v259 + 104))(v140, *MEMORY[0x1E69DB1C0], v252);
        v142 = [v244 measurementUnitType];
        if (v142)
        {
          type metadata accessor for WFMeasurementUnitType(0);
          v144 = v143;
          v145 = MEMORY[0x1E69DB4C8];
        }

        else
        {
          v144 = 0;
          v145 = 0;
        }

        v168 = v268;
        v169 = v251;
        (*(v276 + 104))(v251 + *(v268 + 20), *MEMORY[0x1E69DB488], v277);
        _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
        v170 = [objc_opt_self() defaultContext];
        *v169 = v142;
        v169[1] = 0;
        v169[2] = 0;
        v169[3] = v144;
        v169[4] = v145;
        *(v169 + *(v168 + 28)) = v170;
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445FD0, &qword_1CA989E10);
        v172 = swift_allocBox();
        v37 = v173;
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_18_20();
        v174();
        if (v5)
        {
          sub_1CA502C48(v169);
          (*(v259 + 8))(v258, v141);
          v175 = OUTLINED_FUNCTION_8_23();
          v176(v175);
          sub_1CA52A2F4(v61, &qword_1EC444368);
          swift_deallocBox();
          return;
        }

        v281 = *(v171 + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439B0, qword_1CA98AD80);
        v177 = v259;
        v178 = (*(v259 + 80) + 32) & ~*(v259 + 80);
        v179 = swift_allocObject();
        *(v179 + 16) = xmmword_1CA981310;
        v180 = *(v177 + 16);
        v181 = v179 + v178;
        v61 = v246;
        *&v280 = v172;
        v182 = v258;
        v180(v181, v258, v141);
        sub_1CA502C48(v169);
        (*(v177 + 8))(v182, v141);
        v183 = OUTLINED_FUNCTION_8_23();
        v184(v183);
        *(v37 + v281) = v179;
        v150 = v282;
        *v282 = v280;
        v185 = OUTLINED_FUNCTION_11_26();
        v186(v185);
        v7 = v244;
      }
    }

    else
    {
      v105 = v262;
      static WFContentItem.classDescriptor.getter();
      sub_1CA94B608();
      (*(v265 + 8))(v105, v266);
      v106 = v279;
      OUTLINED_FUNCTION_14_22();
      v108 = v107();
      if (v108 == *MEMORY[0x1E69DB450] || v108 == *MEMORY[0x1E69DB468])
      {
        (*(v280 + 96))(v98, v106);
        v109 = *v98;
        v110 = *(v98 + 1);
        v280 = *(v98 + 1);
        v111 = swift_allocObject();
        *(v111 + 16) = v280;
        *(v111 + 32) = v109;
        *(v111 + 40) = v110;
        *v71 = v111;
        v112 = OUTLINED_FUNCTION_7_29();
        v113(v112);
      }

      else
      {
        v156 = v247;
        sub_1CA94B608();
        v157 = v279;
        OUTLINED_FUNCTION_14_22();
        if (v158() == v233)
        {
          (*(v280 + 96))(v156, v157);
          v159 = v156[1];
          v284 = *v156;
          v285 = v159;
          MEMORY[0x1CCAA1300](46, 0xE100000000000000);
          v160 = v284;
          v161 = v285;
        }

        else
        {
          (*(v280 + 8))(v156, v157);
          v160 = 0;
          v161 = 0xE000000000000000;
        }

        v109 = swift_allocObject();
        v109[2] = sub_1CA94C3A8();
        v109[3] = v190;
        v284 = v160;
        v285 = v161;
        v191 = [v7 name];
        v192 = sub_1CA94C3A8();
        v61 = v7;
        v194 = v193;

        v110 = &v284;
        MEMORY[0x1CCAA1300](v192, v194);
        v7 = v61;

        v195 = v285;
        v109[4] = v284;
        v109[5] = v195;
        *v71 = v109;
        v196 = OUTLINED_FUNCTION_7_29();
        v197(v196);
        (*(v280 + 8))(v98, v279);
        v37 = v243;
        OUTLINED_FUNCTION_15_17();
      }

      v198 = swift_allocBox();
      v200 = OUTLINED_FUNCTION_10_22(v198, v199);
      (v110[4])(v200, v71);
      v150 = v282;
      *v282 = v109;
      (*(v283 + 104))(v150, *MEMORY[0x1E69DAF30], v37);
    }
  }

  else
  {
    v234 = a4;
    v101 = v269;
    sub_1CA52A21C(v61, v269);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, 1, v94);
    v103 = MEMORY[0x1E69DAF30];
    if (EnumTagSinglePayload == 1)
    {
      sub_1CA52A2F4(v101, &qword_1EC444368);
      v104 = v272;
      (*(v276 + 104))(v272, *MEMORY[0x1E69DB488], v277);
    }

    else
    {
      v114 = v239;
      v115 = v261;
      (*(v239 + 32))(v261, v101, v94);
      v116 = swift_allocBox();
      v118 = OUTLINED_FUNCTION_10_22(v116, v117);
      (*(v114 + 16))(v118, v115, v281);
      v119 = v263;
      *v263 = v94;
      v120 = v243;
      (*(v283 + 104))(v119, *v103, v243);
      v121 = v120;
      v94 = v281;
      __swift_storeEnumTagSinglePayload(v119, 0, 1, v121);
      v104 = v272;
      sub_1CA94B658();
      sub_1CA52A2F4(v119, &unk_1EC445A40);
      (*(v114 + 8))(v115, v94);
    }

    v123 = v270;
    v122 = v271;
    sub_1CA52A21C(v61, v270);
    if (__swift_getEnumTagSinglePayload(v123, 1, v94) == 1)
    {
      sub_1CA52A2F4(v123, &qword_1EC444368);
      v122[3] = sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
      v122[4] = sub_1CA52A28C();
      *v122 = v7;
      v124 = v268;
      v125 = v276;
      v126 = v104;
      v127 = v104;
      v128 = v277;
      (*(v276 + 16))(v122 + *(v268 + 20), v126, v277);
      v129 = v7;
      _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
      *(v122 + *(v124 + 28)) = [objc_opt_self() defaultContext];
      OUTLINED_FUNCTION_16_22();
      v130 = v264;
      OUTLINED_FUNCTION_18_20();
      v131();
      if (v5)
      {
        (*(v125 + 8))(v127, v128);
        sub_1CA52A2F4(v61, &qword_1EC444368);
        sub_1CA502C48(v122);
        return;
      }

      (*(v125 + 8))(v127, v128);
      sub_1CA502C48(v122);
      v123 = v130;
      v94 = v281;
    }

    else
    {
      (*(v276 + 8))(v104, v277);
    }

    v146 = *(v239 + 32);
    v37 = v267;
    v146(v267, v123, v94);
    v147 = swift_allocBox();
    v149 = OUTLINED_FUNCTION_10_22(v147, v148);
    (v146)(v149, v37);
    v150 = v282;
    *v282 = v94;
    v151 = OUTLINED_FUNCTION_11_26();
    v152(v151);
    a4 = v234;
  }

  v201 = [v7 multipleValues];
  sub_1CA52A2F4(v61, &qword_1EC444368);
  if (v201)
  {
    v202 = swift_allocBox();
    v204 = OUTLINED_FUNCTION_10_22(v202, v203);
    v205 = v283;
    v206 = *(v283 + 32);
    v206(v204, v282, v37);
    v207 = v273;
    *v273 = v201;
    v208 = v207;
    v209 = v205;
    v150 = v282;
    (*(v209 + 104))(v208, *MEMORY[0x1E69DAF18], v37);
  }

  else
  {
    v206 = *(v283 + 32);
    v210 = OUTLINED_FUNCTION_23();
    (v206)(v210);
  }

  v211 = OUTLINED_FUNCTION_13_25();
  (v206)(v211);
  if (v260)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446720, &qword_1CA98AD70);
    v212 = swift_allocBox();
    v206(v213, v282, v243);
    sub_1CA94AC88();
    v37 = v243;
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v214, v215, v216, v217);
    v218 = v274;
    *v274 = v212;
    v150 = v282;
    (*(v283 + 104))(v218, *MEMORY[0x1E69DAF48], v37);
  }

  else
  {
    v218 = v274;
    v219 = OUTLINED_FUNCTION_23();
    (v206)(v219);
  }

  v220 = OUTLINED_FUNCTION_13_25();
  (v206)(v220);
  if (v286 & 1 | ((v275 & 1) == 0))
  {
    v206(a4, v150, v37);
  }

  else
  {
    v221 = swift_allocBox();
    v223 = OUTLINED_FUNCTION_10_22(v221, v222);
    v206(v223, v150, v37);
    *a4 = v218;
    (*(v283 + 104))(a4, *MEMORY[0x1E69DAF40], v37);
  }
}

void WFContentProperty.toolkitEntityPropertyDefinition(classDescriptor:localizationContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v5 = sub_1CA94B5F8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v34 = v3;
  v20 = v37;
  WFContentProperty.toolkitTypeInstance(classDescriptor:seen:isDeferrable:)(a1, MEMORY[0x1E69E7CC0], 1, (&v31 - v18));
  if (!v20)
  {
    v31 = 0;
    v32 = v17;
    v33 = v13;
    v37 = v11;
    sub_1CA94B608();
    v21 = (*(v7 + 88))(v10, v5);
    v22 = *MEMORY[0x1E69DB450];
    (*(v7 + 8))(v10, v5);
    v23 = v21 == v22;
    v24 = v34;
    if (!v23 || (sub_1CA3F132C(v34, &selRef_linkPropertyIdentifier), !v25))
    {
      v26 = [v24 name];
      sub_1CA94C3A8();
    }

    v27 = v32;
    v28 = [v24 localizedNameWithContext_];
    sub_1CA94C3A8();

    v29 = v33;
    v30 = v37;
    (*(v33 + 16))(v27, v19, v37);
    sub_1CA94B528();
    (*(v29 + 8))(v19, v30);
  }
}

uint64_t WFContentProperty.associatedEnumMetadataIfAvailable()()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    return 0;
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1CA94C3A8();
  v2 = sub_1CA323E28();

  if (!v2)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EC446300, 0x1E696ACD0);
  sub_1CA25B3D0(0, &qword_1EC441A80, 0x1E69AC830);
  v3 = sub_1CA94CCD8();
  sub_1CA266F2C(v5, v6);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t WFContentProperty.toolkitUnitType.getter()
{
  v1 = [v0 measurementUnitType];
  if (!v1)
  {
    return 22;
  }

  v2 = v1;
  v3 = sub_1CA94CE98();

  return v3;
}

unint64_t sub_1CA52A1C8()
{
  result = qword_1EC4462E0;
  if (!qword_1EC4462E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4462E0);
  }

  return result;
}

uint64_t sub_1CA52A21C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA52A28C()
{
  result = qword_1EC4419E0;
  if (!qword_1EC4419E0)
  {
    sub_1CA25B3D0(255, &unk_1EC4419D0, 0x1E6996D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4419E0);
  }

  return result;
}

uint64_t sub_1CA52A2F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_10_22(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(v2, v5);
  return v2;
}

uint64_t sub_1CA52A350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s22ToolKitConversionErrorOwet(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t _s22ToolKitConversionErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1CA52A480(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  if ((v1 + 1) >= 2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_1CA52A4A0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

id sub_1CA52A524()
{
  v0 = sub_1CA94B4D8();
  v168 = *(v0 - 8);
  v169 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v170 = &v155 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1CA949D18();
  v166 = *(v2 - 8);
  v167 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v165 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9C88C0;
  *(inited + 64) = v5;
  *(inited + 72) = @"ActionKeywords";
  v6 = @"ActionClass";
  v7 = @"ActionKeywords";
  v175 = sub_1CA94C438("remove|background|subject|photos", 32);
  v176 = v8;
  v9 = sub_1CA94C438("remove|background|subject|photos", 32);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v180 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v181 = v13;
  v14 = &v155 - v180;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDB9F690;
  v178 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v177 = v18;
  v179 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v155 - v179;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v175, v176, v9, v11, 0, 0, v14, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v176 = v22;
  *(inited + 80) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = @"Description";
  v175 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v164 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Removes the background from an image, keeping the subjects.", 59);
  v173 = v27;
  v28 = sub_1CA94C438("Removes the background from an image, keeping the subjects.", 59);
  v30 = v29;
  v174 = &v155;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v155 - v180;
  sub_1CA948D98();
  v32 = [v15 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v155 - v179;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v173, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v176;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v175;
  *(inited + 120) = sub_1CA6B3784(v36);
  *(inited + 144) = v37;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD00000000000002CLL;
  *(inited + 208) = 0x80000001CA9C8950;
  *(inited + 224) = v38;
  *(inited + 232) = @"Input";
  v39 = v38;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v163 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x7475706E494657;
  *(v40 + 104) = 0xE700000000000000;
  *(v40 + 120) = v39;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  v42 = v41;
  *(v40 + 184) = 0xE500000000000000;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v175;
  *(v40 + 192) = &unk_1F4A03328;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v174 = v47;
  *(inited + 240) = v46;
  *(inited + 264) = v47;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 0;
  *(inited + 304) = v42;
  *(inited + 312) = @"Name";
  v48 = @"InputPassthrough";
  v49 = @"Name";
  v50 = sub_1CA94C438("Remove Image Background (Action Name)", 37);
  v52 = v51;
  v53 = sub_1CA94C438("Remove Image Background", 23);
  v55 = v54;
  v162 = &v155;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v155 - v180;
  sub_1CA948D98();
  v57 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v155 - v179;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v50, v52, v53, v55, 0, 0, v56, v58);
  v60 = v176;
  *(inited + 344) = v176;
  *(inited + 352) = @"Output";
  v61 = swift_allocObject();
  *(v61 + 16) = v163;
  *(v61 + 32) = 0x75736F6C63736944;
  *(v61 + 40) = 0xEF6C6576654C6572;
  *(v61 + 48) = 0x63696C627550;
  *(v61 + 56) = 0xE600000000000000;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 80) = 0x656C7069746C754DLL;
  *(v61 + 88) = 0xE800000000000000;
  *(v61 + 96) = 1;
  *(v61 + 120) = MEMORY[0x1E69E6370];
  *(v61 + 128) = 0x614E74757074754FLL;
  *(v61 + 136) = 0xEA0000000000656DLL;
  v62 = @"Output";
  v63 = sub_1CA94C438("Image Without Background (Default Output Name)", 46);
  v162 = v64;
  *&v163 = v63;
  v65 = sub_1CA94C438("Image Without Background", 24);
  v67 = v66;
  v173 = &v155;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v155 - v180;
  sub_1CA948D98();
  v69 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v155 - v179;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 144) = sub_1CA2F9F14(v163, v162, v65, v67, 0, 0, v68, v70);
  *(v61 + 168) = v60;
  *(v61 + 176) = 0x7365707954;
  *(v61 + 216) = v175;
  *(v61 + 184) = 0xE500000000000000;
  *(v61 + 192) = &unk_1F4A03358;
  v72 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v174;
  *(inited + 392) = @"Parameters";
  *&v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v174 = swift_allocObject();
  *(v174 + 1) = xmmword_1CA981360;
  v173 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  v161 = xmmword_1CA981370;
  *(v73 + 16) = xmmword_1CA981370;
  *(v73 + 32) = @"Class";
  *(v73 + 40) = 0xD000000000000011;
  *(v73 + 48) = 0x80000001CA99E620;
  *(v73 + 64) = v72;
  *(v73 + 72) = @"DefaultValue";
  *(v73 + 80) = 0;
  *(v73 + 104) = MEMORY[0x1E69E6370];
  *(v73 + 112) = @"Description";
  v160 = @"Class";
  v74 = @"Parameters";
  v75 = @"DefaultValue";
  v76 = @"Description";
  v77 = sub_1CA94C438("If turned on, the resulting image will be cropped to its bounds. If turned off, the original bounds will be kept. (WFCropToBounds)", 130);
  v157 = v78;
  v158 = v77;
  v79 = sub_1CA94C438("If turned on, the resulting image will be cropped to its bounds. If turned off, the original bounds will be kept.", 113);
  v81 = v80;
  v159 = &v155;
  MEMORY[0x1EEE9AC00](v79);
  v82 = v180;
  sub_1CA948D98();
  v83 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v155 - v179;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 120) = sub_1CA2F9F14(v158, v157, v79, v81, 0, 0, &v155 - v82, v84);
  *(v73 + 144) = v176;
  *(v73 + 152) = @"Key";
  strcpy((v73 + 160), "WFCropToBounds");
  *(v73 + 175) = -18;
  *(v73 + 184) = MEMORY[0x1E69E6158];
  *(v73 + 192) = @"Label";
  v86 = @"Key";
  v87 = @"Label";
  v157 = v86;
  v156 = v87;
  v158 = sub_1CA94C438("Crop (WFCropToBounds)", 21);
  v155 = v88;
  v89 = sub_1CA94C438("Crop", 4);
  v91 = v90;
  v159 = &v155;
  MEMORY[0x1EEE9AC00](v89);
  sub_1CA948D98();
  v92 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v155 - v179;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v158, v155, v89, v91, 0, 0, &v155 - v82, v93);
  *(v73 + 224) = v176;
  *(v73 + 200) = v95;
  _s3__C3KeyVMa_0(0);
  v159 = v96;
  v158 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v97 = sub_1CA94C1E8();
  v98 = sub_1CA2F864C(v97);
  v174[4] = v98;
  v99 = swift_allocObject();
  *(v99 + 16) = v161;
  *(v99 + 32) = v160;
  *(v99 + 40) = 0xD000000000000019;
  *(v99 + 48) = 0x80000001CA99B030;
  v100 = MEMORY[0x1E69E6158];
  v101 = v157;
  *(v99 + 64) = MEMORY[0x1E69E6158];
  *(v99 + 72) = v101;
  *(v99 + 80) = 0x7475706E494657;
  *(v99 + 88) = 0xE700000000000000;
  v102 = v156;
  *(v99 + 104) = v100;
  *(v99 + 112) = v102;
  v103 = sub_1CA94C438("Image (WFInput)", 15);
  v160 = v104;
  *&v161 = v103;
  v105 = sub_1CA94C438("Image", 5);
  v157 = v106;
  v162 = &v155;
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v155 - v180;
  sub_1CA948D98();
  v108 = v178;
  v109 = [v178 bundleURL];
  v156 = &v155;
  v172 = inited;
  MEMORY[0x1EEE9AC00](v109);
  v110 = v179;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 120) = sub_1CA2F9F14(v161, v160, v105, v157, 0, 0, v107, &v155 - v110);
  *(v99 + 144) = v176;
  *(v99 + 152) = @"Placeholder";
  v112 = @"Placeholder";
  v113 = sub_1CA94C438("Image (WFInput)", 15);
  v160 = v114;
  *&v161 = v113;
  v115 = sub_1CA94C438("Image", 5);
  v157 = v116;
  v162 = &v155;
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v155 - v180;
  sub_1CA948D98();
  v118 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 160) = sub_1CA2F9F14(v161, v160, v115, v157, 0, 0, v117, &v155 - v110);
  *(v99 + 184) = v176;
  *(v99 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v120 = swift_allocObject();
  *(v120 + 16) = v164;
  v121 = @"PreferredTypes";
  v122 = v165;
  sub_1CA949CB8();
  v123 = sub_1CA949C68();
  v125 = v124;
  (*(v166 + 8))(v122, v167);
  *(v120 + 32) = v123;
  *(v120 + 40) = v125;
  v126 = v175;
  *(v99 + 224) = v175;
  *(v99 + 200) = v120;
  v127 = sub_1CA94C1E8();
  v128 = sub_1CA2F864C(v127);
  v129 = v174;
  v174[5] = v128;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v131 = v172;
  v172[50] = v129;
  v131[53] = v130;
  v131[54] = @"ParameterSummary";
  v132 = @"ParameterSummary";
  v133 = sub_1CA94C438("Remove background from ${WFInput} (Parameter Summary)", 53);
  v135 = v134;
  v136 = sub_1CA94C438("Remove background from ${WFInput}", 33);
  v138 = v137;
  v176 = &v155;
  MEMORY[0x1EEE9AC00](v136);
  v139 = &v155 - v180;
  sub_1CA948D98();
  v140 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v155 - v179;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v133, v135, v136, v138, 0, 0, v139, v141);
  v144 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v145 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v146 = v172;
  v172[55] = v144;
  v146[58] = v145;
  v146[59] = @"RemoteExecuteOnPlatforms";
  v146[60] = &unk_1F4A03388;
  v146[63] = v126;
  v146[64] = @"RequiredResources";
  v147 = v146;
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_1CA9813B0;
  v149 = v170;
  (*(v168 + 104))(v170, *MEMORY[0x1E69DB3F0], v169);
  v150 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource(0));
  v151 = @"RemoteExecuteOnPlatforms";
  v152 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v149);
  *(v148 + 32) = v153;
  v147[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  v147[65] = v148;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA52B978()
{
  v223 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001FLL;
  *(inited + 48) = 0x80000001CA9C8BD0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("text|speak|speech|audio|file|tts|aiff", 37);
  v6 = v5;
  v7 = sub_1CA94C438("text|speak|speech|audio|file|tts|aiff", 37);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v239 = v11;
  v240 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v216 - v240;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v238 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v236 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v237 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v216 - v237;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v235 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v234 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionResult";
  v21 = @"Description";
  v22 = @"DescriptionResult";
  v23 = sub_1CA94C438("Audio File", 10);
  v230 = v24;
  v231 = v23;
  v25 = sub_1CA94C438("Audio File", 10);
  v229 = v26;
  v232 = &v216;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v216 - v240;
  sub_1CA948D98();
  v28 = v238;
  v29 = [v238 bundleURL];
  v233 = inited;
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v237;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v231, v230, v25, v229, 0, 0, v27, &v216 - v31);
  *(v20 + 64) = v235;
  *(v20 + 72) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v34 = sub_1CA94C438("Creates an audio file from text, using text-to-speech.", 54);
  v230 = v35;
  v231 = v34;
  v36 = sub_1CA94C438("Creates an audio file from text, using text-to-speech.", 54);
  v38 = v37;
  v232 = &v216;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v216 - v240;
  sub_1CA948D98();
  v40 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v231, v230, v36, v38, 0, 0, v39, &v216 - v31);
  *(v20 + 104) = v235;
  *(v20 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v234;
  v45 = sub_1CA6B3784(v43);
  v46 = v233;
  v233[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 6579538;
  v46[21] = 0xE300000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0xD000000000000013;
  v46[26] = 0x80000001CA99A850;
  v46[28] = v47;
  v46[29] = @"Input";
  v48 = v47;
  v49 = v46;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v222 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 1;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x7475706E494657;
  *(v50 + 104) = 0xE700000000000000;
  *(v50 + 120) = v48;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v228;
  *(v50 + 192) = &unk_1F4A033B8;
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"Input";
  v55 = sub_1CA94C1E8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v234 = v56;
  v49[30] = v55;
  v49[33] = v56;
  v49[34] = @"Name";
  v57 = @"Name";
  v58 = sub_1CA94C438("Make Spoken Audio from Text (Action Name)", 41);
  v229 = v59;
  v230 = v58;
  v60 = sub_1CA94C438("Make Spoken Audio from Text", 27);
  v62 = v61;
  v231 = &v216;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v216 - v240;
  sub_1CA948D98();
  v64 = v238;
  v65 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = v237;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v230, v229, v60, v62, 0, 0, v63, &v216 - v66);
  v69 = v233;
  v233[35] = v68;
  v70 = v235;
  v69[38] = v235;
  v69[39] = @"Output";
  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_1CA9813C0;
  *(v71 + 32) = 0x75736F6C63736944;
  *(v71 + 40) = 0xEF6C6576654C6572;
  *(v71 + 48) = 0x63696C627550;
  *(v71 + 56) = 0xE600000000000000;
  *(v71 + 72) = MEMORY[0x1E69E6158];
  *(v71 + 80) = 0x614E74757074754FLL;
  *(v71 + 88) = 0xEA0000000000656DLL;
  v72 = @"Output";
  v73 = sub_1CA94C438("Spoken Audio (Default Output Name)", 34);
  v230 = v74;
  v231 = v73;
  v75 = sub_1CA94C438("Spoken Audio", 12);
  v229 = v76;
  v232 = &v216;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v216 - v240;
  sub_1CA948D98();
  v78 = [v64 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 96) = sub_1CA2F9F14(v231, v230, v75, v229, 0, 0, v77, &v216 - v66);
  *(v71 + 120) = v70;
  *(v71 + 128) = 0x7365707954;
  *(v71 + 168) = v228;
  *(v71 + 136) = 0xE500000000000000;
  *(v71 + 144) = &unk_1F4A033E8;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = v233;
  v233[40] = v81;
  v82[43] = v234;
  v82[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_1CA981560;
  v234 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1CA981370;
  *(v83 + 32) = @"Class";
  *(v83 + 40) = 0xD000000000000014;
  *(v83 + 48) = 0x80000001CA99B500;
  *(v83 + 64) = v80;
  *(v83 + 72) = @"Key";
  *(v83 + 80) = 0x7475706E494657;
  *(v83 + 88) = 0xE700000000000000;
  *(v83 + 104) = v80;
  *(v83 + 112) = @"Label";
  v84 = @"Class";
  v85 = @"Key";
  v86 = @"Label";
  v87 = v84;
  v88 = v85;
  v89 = v86;
  v225 = v87;
  v226 = v88;
  v227 = v89;
  v90 = @"Parameters";
  v230 = sub_1CA94C438("Text (WFInput)", 14);
  *&v224 = v91;
  v92 = sub_1CA94C438("Text", 4);
  v221 = v93;
  v231 = &v216;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v240;
  sub_1CA948D98();
  v95 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v216 - v237;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 120) = sub_1CA2F9F14(v230, v224, v92, v221, 0, 0, &v216 - v94, v96);
  v98 = v235;
  *(v83 + 144) = v235;
  *(v83 + 152) = @"Multiline";
  *(v83 + 160) = 1;
  *(v83 + 184) = MEMORY[0x1E69E6370];
  *(v83 + 192) = @"Placeholder";
  v99 = @"Multiline";
  v100 = @"Placeholder";
  v230 = sub_1CA94C438("Text (WFInput)", 14);
  *&v224 = v101;
  v102 = sub_1CA94C438("Text", 4);
  v104 = v103;
  v231 = &v216;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v216 - v94;
  sub_1CA948D98();
  v106 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v216 - v237;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v230, v224, v102, v104, 0, 0, v105, v107);
  *(v83 + 224) = v98;
  *(v83 + 200) = v109;
  _s3__C3KeyVMa_0(0);
  v231 = v110;
  v230 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  *(v229 + 32) = v112;
  v113 = swift_allocObject();
  v224 = xmmword_1CA981380;
  *(v113 + 16) = xmmword_1CA981380;
  v220 = 0xD000000000000011;
  v221 = 0x80000001CA9A0B80;
  v114 = v225;
  v115 = v226;
  *(v113 + 32) = v225;
  *(v113 + 40) = 0xD000000000000011;
  *(v113 + 48) = 0x80000001CA9A0B80;
  v116 = MEMORY[0x1E69E6158];
  *(v113 + 64) = MEMORY[0x1E69E6158];
  *(v113 + 72) = @"DefaultValue";
  v117 = MEMORY[0x1E69E63B0];
  *(v113 + 80) = 0x3FE0000000000000;
  *(v113 + 104) = v117;
  *(v113 + 112) = v115;
  *(v113 + 120) = 0x546B616570534657;
  *(v113 + 128) = 0xEF65746152747865;
  v118 = v227;
  *(v113 + 144) = v116;
  *(v113 + 152) = v118;
  v119 = @"DefaultValue";
  v225 = v114;
  v226 = v115;
  v227 = v118;
  v217 = v119;
  v120 = sub_1CA94C438("Rate (WFSpeakTextRate)", 22);
  v122 = v121;
  v123 = sub_1CA94C438("Rate", 4);
  v125 = v124;
  v219 = &v216;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v216 - v240;
  sub_1CA948D98();
  v127 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v216 - v237;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 160) = sub_1CA2F9F14(v120, v122, v123, v125, 0, 0, v126, v128);
  *(v113 + 184) = v235;
  *(v113 + 192) = @"MaximumValue";
  v130 = MEMORY[0x1E69E6530];
  *(v113 + 200) = 1;
  *(v113 + 224) = v130;
  *(v113 + 232) = @"MinimumValue";
  *(v113 + 264) = v130;
  *(v113 + 240) = 0;
  v131 = @"MaximumValue";
  v132 = @"MinimumValue";
  v219 = v131;
  v218 = v132;
  v133 = sub_1CA94C1E8();
  v134 = sub_1CA2F864C(v133);
  *(v229 + 40) = v134;
  v135 = swift_allocObject();
  *(v135 + 16) = v224;
  v136 = v225;
  v137 = v226;
  v139 = v220;
  v138 = v221;
  *(v135 + 32) = v225;
  *(v135 + 40) = v139;
  *(v135 + 48) = v138;
  v140 = MEMORY[0x1E69E6158];
  v141 = v217;
  *(v135 + 64) = MEMORY[0x1E69E6158];
  *(v135 + 72) = v141;
  *(v135 + 80) = 0x3FF0000000000000;
  *(v135 + 104) = MEMORY[0x1E69E63B0];
  *(v135 + 112) = v137;
  v221 = 0xD000000000000010;
  *(v135 + 120) = 0xD000000000000010;
  *(v135 + 128) = 0x80000001CA9B6940;
  v142 = v227;
  *(v135 + 144) = v140;
  *(v135 + 152) = v142;
  v225 = v136;
  v226 = v137;
  v227 = v142;
  *&v224 = v141;
  v143 = sub_1CA94C438("Pitch (WFSpeakTextPitch)", 24);
  v145 = v144;
  v146 = sub_1CA94C438("Pitch", 5);
  v148 = v147;
  v220 = &v216;
  MEMORY[0x1EEE9AC00](v146);
  v149 = &v216 - v240;
  sub_1CA948D98();
  v150 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v216 - v237;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v135 + 160) = sub_1CA2F9F14(v143, v145, v146, v148, 0, 0, v149, v151);
  v153 = v219;
  *(v135 + 184) = v235;
  *(v135 + 192) = v153;
  *(v135 + 200) = 0x4000000000000000;
  v154 = MEMORY[0x1E69E63B0];
  v155 = v218;
  *(v135 + 224) = MEMORY[0x1E69E63B0];
  *(v135 + 232) = v155;
  *(v135 + 264) = v154;
  *(v135 + 240) = 0x3FE0000000000000;
  v156 = sub_1CA94C1E8();
  v157 = sub_1CA2F864C(v156);
  v158 = v229;
  *(v229 + 48) = v157;
  v159 = swift_allocObject();
  *(v159 + 16) = v222;
  *(v159 + 32) = v225;
  *(v159 + 40) = 0xD000000000000022;
  *(v159 + 48) = 0x80000001CA9B6980;
  v160 = MEMORY[0x1E69E6158];
  v161 = v224;
  *(v159 + 64) = MEMORY[0x1E69E6158];
  *(v159 + 72) = v161;
  *(v159 + 80) = 0x746C7561666544;
  *(v159 + 88) = 0xE700000000000000;
  v162 = v226;
  *(v159 + 104) = v160;
  *(v159 + 112) = v162;
  *&v222 = 0x80000001CA997010;
  *(v159 + 120) = 0xD000000000000013;
  *(v159 + 128) = 0x80000001CA997010;
  v163 = v227;
  *(v159 + 144) = v160;
  *(v159 + 152) = v163;
  v164 = sub_1CA94C438("Language (WFSpeakTextLanguage)", 30);
  v219 = v165;
  v166 = sub_1CA94C438("Language", 8);
  v168 = v167;
  v220 = &v216;
  MEMORY[0x1EEE9AC00](v166);
  v169 = &v216 - v240;
  sub_1CA948D98();
  v170 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = &v216 - v237;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v164, v219, v166, v168, 0, 0, v169, v171);
  *(v159 + 184) = v235;
  *(v159 + 160) = v173;
  v174 = sub_1CA94C1E8();
  *(v158 + 56) = sub_1CA2F864C(v174);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_1CA981300;
  *(v175 + 32) = @"AlwaysShowsButton";
  *(v175 + 40) = 1;
  v176 = v225;
  *(v175 + 64) = MEMORY[0x1E69E6370];
  *(v175 + 72) = v176;
  *(v175 + 80) = 0xD00000000000001FLL;
  *(v175 + 88) = 0x80000001CA9B69D0;
  v177 = MEMORY[0x1E69E6158];
  v178 = v224;
  *(v175 + 104) = MEMORY[0x1E69E6158];
  *(v175 + 112) = v178;
  *(v175 + 120) = 0x746C7561666544;
  *(v175 + 128) = 0xE700000000000000;
  *(v175 + 144) = v177;
  *(v175 + 152) = @"DisallowedVariableTypes";
  *(v175 + 160) = &unk_1F4A03418;
  v179 = v226;
  *(v175 + 184) = v228;
  *(v175 + 192) = v179;
  *(v175 + 200) = v221;
  *(v175 + 208) = 0x80000001CA9B69F0;
  v180 = v227;
  *(v175 + 224) = v177;
  *(v175 + 232) = v180;
  v181 = @"AlwaysShowsButton";
  v182 = @"DisallowedVariableTypes";
  v183 = sub_1CA94C438("Voice (WFSpeakTextVoice)", 24);
  v185 = v184;
  v186 = sub_1CA94C438("Voice", 5);
  v188 = v187;
  v232 = &v216;
  MEMORY[0x1EEE9AC00](v186);
  v189 = &v216 - v240;
  sub_1CA948D98();
  v190 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v216 - v237;
  sub_1CA948B68();

  v192 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v175 + 240) = sub_1CA2F9F14(v183, v185, v186, v188, 0, 0, v189, v191);
  *(v175 + 264) = v235;
  *(v175 + 272) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_1CA981310;
  v194 = @"RequiredResources";
  v195 = MEMORY[0x1E69E6158];
  *(v193 + 32) = sub_1CA94C1E8();
  *(v175 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v175 + 280) = v193;
  v196 = sub_1CA94C368();
  *(v175 + 344) = v195;
  *(v175 + 312) = v196;
  *(v175 + 320) = 0xD000000000000013;
  *(v175 + 328) = v222;
  v197 = sub_1CA94C1E8();
  v198 = sub_1CA2F864C(v197);
  v199 = v229;
  *(v229 + 64) = v198;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v201 = v233;
  v233[45] = v199;
  v201[48] = v200;
  v201[49] = @"ParameterSummary";
  v202 = @"ParameterSummary";
  v203 = sub_1CA94C438("Make spoken audio from ${WFInput} (Parameter Summary)", 53);
  v205 = v204;
  v206 = sub_1CA94C438("Make spoken audio from ${WFInput}", 33);
  v208 = v207;
  v235 = &v216;
  MEMORY[0x1EEE9AC00](v206);
  v209 = &v216 - v240;
  sub_1CA948D98();
  v210 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  v211 = &v216 - v237;
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v213 = sub_1CA2F9F14(v203, v205, v206, v208, 0, 0, v209, v211);
  v214 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v201[53] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v201[50] = v214;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}