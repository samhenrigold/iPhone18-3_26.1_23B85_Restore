unint64_t sub_1C8DC36F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314DD0;
  if (!qword_1EC314DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314DD0);
  }

  return result;
}

uint64_t sub_1C8DC3754(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C90CA560 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8DC3828(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656E6961746E6F63;
  }
}

uint64_t sub_1C8DC386C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314DF8, &qword_1C907A680);
  OUTLINED_FUNCTION_11();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DC402C(v13, v14, v15);
  sub_1C9064E1C();
  LOBYTE(v22) = 0;
  sub_1C9064B2C();
  if (!v5)
  {
    v22 = v20;
    v23 = v21;
    v24 = 1;
    v16 = sub_1C8CE9144(v20, v21);
    sub_1C8D02AA8(v16, v17, v18);
    sub_1C9064B8C();
    sub_1C8CE7B78(v22, v23);
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1C8DC39FC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314DF0, &qword_1C907A678);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DC402C(v5, v6, v7);
  sub_1C9064DEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v13) = 0;
    v4 = sub_1C9064A0C();
    sub_1C8D02AFC(v4, v9, v10);
    sub_1C9064A6C();
    v11 = OUTLINED_FUNCTION_0_38();
    v12(v11);

    sub_1C8CE9144(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1C8CE7B78(v13, v14);
  }

  return v4;
}

uint64_t sub_1C8DC3BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DC3754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DC3C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DC402C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC3C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DC402C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DC3C9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C8DC39FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1C8DC3CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8DC3FD8(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8DC3D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8DC4080(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8DC3E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8DC40D4(a1, a2, a3);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C8DC3E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BD0;
  if (!qword_1EDA60BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BD0);
  }

  return result;
}

unint64_t sub_1C8DC3EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63760;
  if (!qword_1EDA63760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63760);
  }

  return result;
}

unint64_t sub_1C8DC3F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314DE8;
  if (!qword_1EC314DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314DE8);
  }

  return result;
}

uint64_t sub_1C8DC3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = aLinkstate[0];

  return v5;
}

unint64_t sub_1C8DC3FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63750;
  if (!qword_1EDA63750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63750);
  }

  return result;
}

unint64_t sub_1C8DC402C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63778;
  if (!qword_1EDA63778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63778);
  }

  return result;
}

unint64_t sub_1C8DC4080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314E00;
  if (!qword_1EC314E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E00);
  }

  return result;
}

unint64_t sub_1C8DC40D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314E08;
  if (!qword_1EC314E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E08);
  }

  return result;
}

uint64_t sub_1C8DC4148(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = __swift_project_value_buffer(v4, a2);
  sub_1C8DC402C(v5, v6, v7);
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for LinkStateRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DC42A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314E10;
  if (!qword_1EC314E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E10);
  }

  return result;
}

unint64_t sub_1C8DC42FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63768;
  if (!qword_1EDA63768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63768);
  }

  return result;
}

unint64_t sub_1C8DC4354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63770;
  if (!qword_1EDA63770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63770);
  }

  return result;
}

uint64_t ToolInvocation.toolIdentifier.getter()
{
  type metadata accessor for ToolInvocation(0);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolInvocation.target.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = v1 + *(type metadata accessor for ToolInvocation(v2) + 20);
  v4 = *(v3 + 280);
  *v0 = *(v3 + 272);
  v0[1] = v4;
}

uint64_t ToolInvocation.identifier.getter()
{
  OUTLINED_FUNCTION_386();
  sub_1C906204C();
  OUTLINED_FUNCTION_13_1();
  v0 = OUTLINED_FUNCTION_94();

  return v1(v0);
}

uint64_t ToolInvocation.definition.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolInvocation(v2);
  OUTLINED_FUNCTION_2_26();
  return sub_1C8DC80D4(v1 + v3, v0);
}

uint64_t ToolInvocation.parameterValuesByKey.getter()
{
  type metadata accessor for ToolInvocation(0);
}

uint64_t ToolInvocation.parameterValuesByKey.setter()
{
  v2 = OUTLINED_FUNCTION_258();
  v3 = *(type metadata accessor for ToolInvocation(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

void (*ToolInvocation.parameterValuesByKey.modify())()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolInvocation(v0);
  return nullsub_1;
}

void ToolInvocation.options.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = v1 + *(type metadata accessor for ToolInvocation(v2) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *v0 = *v3;
  *(v0 + 8) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = v8;
  *(v0 + 40) = *(v3 + 40);

  sub_1C8DC6C28(v4, v5, v6, v7, v8);
}

__n128 ToolInvocation.options.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for ToolInvocation(0) + 28);
  v6 = OUTLINED_FUNCTION_45_11();
  sub_1C8D63F84(v6, v7, v8);
  result = *a1;
  v10 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v10;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

void (*ToolInvocation.options.modify())()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolInvocation(v0);
  return nullsub_1;
}

void sub_1C8DC4838()
{
  OUTLINED_FUNCTION_196();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v33 = v7;
  v30 = v8;
  v10 = v9;
  sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F18, &qword_1C907A7B0);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_146();
  v14 = v6[1];
  v29 = *v6;
  if (v4)
  {
    goto LABEL_2;
  }

  if (qword_1EDA62A18 != -1)
  {
    swift_once();
  }

  sub_1C8DC23B4();
  if (!v0)
  {
LABEL_2:
    v15 = qword_1EDA69218;

    if (v15 != -1)
    {
      swift_once();
    }

    v28 = v10;
    v16 = qword_1EDA69220;
    v17 = qword_1EDA69200;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDA69208;
    v19 = swift_allocObject();
    *(v19 + 16) = v29;
    *(v19 + 24) = v14;

    v20 = swift_allocObject();
    *(v20 + 16) = v30;
    *(v20 + 24) = v33;

    v32[0] = 0xA000000000000000;
    v32[1] = v20;
    v32[2] = 0xA000000000000000;
    v32[3] = v16;
    v32[4] = v18;
    *&v32[5] = vdupq_n_s64(0xA000000000000000);
    v32[7] = v19;
    v32[8] = MEMORY[0x1E69E7CD0];
    LOBYTE(v32[9]) = 0;
    memset(&v32[10], 0, 24);
    v32[13] = 0xA000000000000000;
    _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
    ToolDatabase.tool(matching:locale:)();
    if (v2)
    {

      v21 = OUTLINED_FUNCTION_39_9();
      v22(v21);
      memcpy(v31, v32, sizeof(v31));
      sub_1C8DC8734(v31);
    }

    else
    {

      v23 = OUTLINED_FUNCTION_39_9();
      v24(v23);
      memcpy(v31, v32, sizeof(v31));
      sub_1C8DC8734(v31);
      v25 = type metadata accessor for ToolDefinition(0);
      if (__swift_getEnumTagSinglePayload(v1, 1, v25) == 1)
      {
        sub_1C8D16D78(v1, &qword_1EC312F18, &qword_1C907A7B0);
        v26 = 1;
        v27 = v28;
      }

      else
      {
        OUTLINED_FUNCTION_0_39();
        v27 = v28;
        sub_1C8DC8618(v1, v28);
        v26 = 0;
      }

      __swift_storeEnumTagSinglePayload(v27, v26, 1, v25);
    }
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolInvocation.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E30, &unk_1C907A7A0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for ToolInvocation(v3);
  v44 = (v0 + *(v4 + 20));
  v5 = v44[5];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + *(v4 + 24));
    v8 = (v5 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v45 = v1;
    v46 = v7;
    do
    {
      memcpy(v49, v8, 0x88uLL);
      v11 = v49[0];
      v10 = v49[1];
      if (*(v7 + 16))
      {
        sub_1C8D07294(v49, &v47);
        v12 = sub_1C8CAE064(v11, v10);
        if (v13)
        {
          v14 = v12;
          v15 = *(v7 + 56);
          v16 = type metadata accessor for ConcreteResolvable(0);
          OUTLINED_FUNCTION_13_1();
          v18 = v15 + *(v17 + 72) * v14;
          v1 = v45;
          sub_1C8DC80D4(v18, v45);
          OUTLINED_FUNCTION_150();
          v22 = v16;
        }

        else
        {
          type metadata accessor for ConcreteResolvable(0);
          v19 = OUTLINED_FUNCTION_26_7();
        }

        __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
      }

      else
      {
        type metadata accessor for ConcreteResolvable(0);
        v23 = OUTLINED_FUNCTION_26_7();
        __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
        sub_1C8D07294(v49, &v47);
      }

      v47 = v11;
      v48 = v10;

      MEMORY[0x1CCA81A90](8250, 0xE200000000000000);
      v27 = sub_1C906462C();
      MEMORY[0x1CCA81A90](v27);

      v28 = v47;
      v29 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C8D00CA4();
        v9 = v32;
      }

      v30 = *(v9 + 16);
      if (v30 >= *(v9 + 24) >> 1)
      {
        sub_1C8D00CA4();
        v9 = v33;
      }

      sub_1C8D072F0(v49);
      sub_1C8D16D78(v1, &qword_1EC314E30, &unk_1C907A7A0);
      *(v9 + 16) = v30 + 1;
      v31 = v9 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v29;
      v8 += 136;
      --v6;
      v7 = v46;
    }

    while (v6);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v49[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  sub_1C8D3A5F4();
  v34 = sub_1C9063E9C();
  v36 = v35;

  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_1C906478C();

  v49[0] = 0xD000000000000013;
  v49[1] = 0x80000001C90CA580;
  sub_1C906204C();
  OUTLINED_FUNCTION_1_35();
  sub_1C8DC82D8(v37, v38, MEMORY[0x1E69695E0]);
  v39 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v39);

  MEMORY[0x1CCA81A90](0x3D74656772617420, 0xE800000000000000);
  if (v44[35])
  {
    v40 = v44[34];
    v47 = 0x692865746F6D6572;
    v48 = 0xEB00000000203A64;
    MEMORY[0x1CCA81A90](v40);
    MEMORY[0x1CCA81A90](41, 0xE100000000000000);
    v41 = v47;
    v42 = v48;
  }

  else
  {
    v42 = 0xE500000000000000;
    v41 = 0x6C61636F6CLL;
  }

  MEMORY[0x1CCA81A90](v41, v42);

  MEMORY[0x1CCA81A90](0x7574616E67697320, 0xEB000000003D6572);
  MEMORY[0x1CCA81A90](*v44, v44[1]);
  MEMORY[0x1CCA81A90](40, 0xE100000000000000);
  MEMORY[0x1CCA81A90](v34, v36);

  MEMORY[0x1CCA81A90](15913, 0xE200000000000000);
  return v49[0];
}

uint64_t ToolInvocation.fetchDefinition(in:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolInvocation(0);
  OUTLINED_FUNCTION_2_26();
  sub_1C8DC80D4(v1 + v3, a1);
  type metadata accessor for ToolDefinition(0);
  OUTLINED_FUNCTION_150();
  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

BOOL static ToolInvocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ToolInvocation(0);
  static ToolDefinition.== infix(_:_:)();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1C8F5874C();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v4 + 28);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v11 = *(a1 + v7 + 16);
  v10 = *(a1 + v7 + 24);
  v12 = *(a1 + v7 + 32);
  v13 = *(a1 + v7 + 40);
  v14 = a2 + v7;
  v15 = *v14;
  v16 = *(v14 + 8);
  v18 = *(v14 + 16);
  v17 = *(v14 + 24);
  v19 = *(v14 + 32);
  v20 = *(v14 + 40);
  if (v11 != 1)
  {
    v63[0] = v9;
    v63[1] = v8;
    v63[2] = v11;
    v63[3] = v10;
    v63[4] = v12;
    v64 = v13;
    if (v18 != 1)
    {
      v57[0] = v15;
      v58 = v16;
      v59 = v18;
      v60 = v17;
      v61 = v19;
      v62 = v20;
      v56 = static ToolInvocationOptions.== infix(_:_:)(v63, v57);
      v42 = OUTLINED_FUNCTION_5_19();
      sub_1C8DC6C28(v42, v43, v44, v45, v46);
      sub_1C8DC6C28(v15, v16, v18, v17, v19);
      v47 = OUTLINED_FUNCTION_5_19();
      sub_1C8DC6C28(v47, v48, v49, v50, v51);

      v52 = OUTLINED_FUNCTION_5_19();
      sub_1C8D63F84(v52, v53, v54);
      return (v56 & 1) != 0;
    }

    sub_1C8DC6C28(v9, v8, v11, v10, v12);
    v55 = v15;
    v30 = v15;
    v31 = v16;
    sub_1C8DC6C28(v30, v16, 1, v17, v19);
    v32 = OUTLINED_FUNCTION_5_19();
    sub_1C8DC6C28(v32, v33, v34, v35, v36);

    goto LABEL_10;
  }

  v21 = OUTLINED_FUNCTION_30_12();
  sub_1C8DC6C28(v21, v22, v23, v24, v25);
  if (v18 != 1)
  {
    v55 = v15;
    v37 = v15;
    v31 = v16;
    sub_1C8DC6C28(v37, v16, v18, v17, v19);
LABEL_10:
    v38 = OUTLINED_FUNCTION_5_19();
    sub_1C8D63F84(v38, v39, v40);
    sub_1C8D63F84(v55, v31, v18);
    return 0;
  }

  v26 = 1;
  sub_1C8DC6C28(v15, v16, 1, v17, v19);
  v27 = OUTLINED_FUNCTION_30_12();
  sub_1C8D63F84(v27, v28, v29);
  return v26;
}

uint64_t ToolInvocation.hash(into:)()
{
  OUTLINED_FUNCTION_258();
  sub_1C906204C();
  OUTLINED_FUNCTION_1_35();
  sub_1C8DC82D8(v2, v3, MEMORY[0x1E69695B8]);
  sub_1C9063E7C();
  v4 = type metadata accessor for ToolInvocation(0);
  ToolDefinition.hash(into:)();
  sub_1C8DC79AC(v0, *(v1 + *(v4 + 24)));
  if (*(v1 + *(v4 + 28) + 16) == 1)
  {
    return sub_1C9064D9C();
  }

  sub_1C9064D9C();

  ToolInvocationOptions.hash(into:)(v0);
}

uint64_t ToolInvocation.hashValue.getter()
{
  sub_1C9064D7C();
  ToolInvocation.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8DC5454(uint64_t a1)
{
  sub_1C9064D7C();
  ToolInvocation.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8DC5498()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E88, &qword_1C907AA88);
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - v2;
  v4 = sub_1C90648DC();
  __swift_allocate_value_buffer(v4, qword_1EC314E18);
  v5 = __swift_project_value_buffer(v4, qword_1EC314E18);
  sub_1C90648CC();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    return (*(v7 + 32))(v5, v3, v4);
  }

  return result;
}

uint64_t static CodingUserInfoKey.toolInvocationLightweightEncoding.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3112B0 != -1)
  {
    OUTLINED_FUNCTION_11_15();
    swift_once();
  }

  v2 = sub_1C90648DC();
  __swift_project_value_buffer(v2, qword_1EC314E18);
  OUTLINED_FUNCTION_10_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1C8DC5634(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (OUTLINED_FUNCTION_31_0(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C90CA5A0 == a2;
    if (v6 || (OUTLINED_FUNCTION_31_0(0xD000000000000014, 0x80000001C90CA5A0) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_31_0(0x736E6F6974706FLL, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_35_9();
        v10 = a1 == v8 && a2 == v9;
        if (v10 || (OUTLINED_FUNCTION_31_0(v8, v9) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
          if (v11 || (OUTLINED_FUNCTION_31_0(0x746567726174, 0xE600000000000000) & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL)
          {

            return 5;
          }

          else
          {
            v13 = OUTLINED_FUNCTION_31_0(0x6974696E69666564, 0xEA00000000006E6FLL);

            if (v13)
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

uint64_t sub_1C8DC57D0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x736E6F6974706FLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_35_9();
      break;
    case 4:
      result = 0x746567726174;
      break;
    case 5:
      result = 0x6974696E69666564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8DC5898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DC5634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DC58CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DC7F1C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC5908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DC7F1C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolInvocation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  v105 = v24;
  v27 = v26;
  v99 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F18, &qword_1C907A7B0);
  OUTLINED_FUNCTION_9(v29);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  v98 = &v95 - v31;
  v32 = OUTLINED_FUNCTION_111();
  v100 = type metadata accessor for ToolDefinition(v32);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v95 - v38;
  v40 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v104 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E38, &qword_1C907A7B8);
  OUTLINED_FUNCTION_11();
  v101 = v44;
  v102 = v43;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  v46 = OUTLINED_FUNCTION_28();
  type metadata accessor for ToolInvocation(v46);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_15();
  v50 = v49 - v48;
  v103 = v51;
  v52 = *(v51 + 28);
  v106 = v27;
  v107 = v50;
  v53 = v50 + v52;
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 16) = 1;
  *(v53 + 40) = 0;
  v54 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C8DC7F1C(v54, v55, v56);
  v57 = v105;
  sub_1C9064DEC();
  if (!v57)
  {
    v105 = v39;
    v97 = v36;
    LOBYTE(v108) = 0;
    OUTLINED_FUNCTION_1_35();
    sub_1C8DC82D8(v61, v62, MEMORY[0x1E69695D0]);
    sub_1C9064A6C();
    v63 = v40;
    v65 = v107;
    (*(v104 + 32))(v107, v25, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E48, &qword_1C907A7C0);
    sub_1C8DC7F70();
    v66 = sub_1C9064A6C();
    *(v65 + *(v103 + 24)) = v108;
    sub_1C8DC802C(v66, v67, v68);
    OUTLINED_FUNCTION_17_10();
    sub_1C90649EC();
    v69 = v110;
    v112 = v111;
    v70 = *v53;
    v71 = *(v53 + 8);
    v72 = *(v53 + 16);
    v95 = v109;
    v96 = v108;
    sub_1C8D63F84(v70, v71, v72);
    v73 = v95;
    *v53 = v96;
    *(v53 + 16) = v73;
    *(v53 + 32) = v69;
    *(v53 + 40) = v112;
    OUTLINED_FUNCTION_40_7(5);
    if (sub_1C9064AAC())
    {
      LOBYTE(v108) = 5;
      OUTLINED_FUNCTION_9_15();
      sub_1C8DC82D8(v74, v75, &protocol conformance descriptor for ToolDefinition);
      v76 = v105;
      OUTLINED_FUNCTION_17_10();
      sub_1C9064A6C();
      v77 = OUTLINED_FUNCTION_24_14();
      v78(v77);
    }

    else
    {
      v40 = v63;
      OUTLINED_FUNCTION_40_7(3);
      v80 = sub_1C9064A0C();
      v82 = v81;
      sub_1C8DC8080(v80, v81, v83);
      OUTLINED_FUNCTION_17_10();
      sub_1C9064A6C();
      v84 = v98;
      sub_1C8DC4838();

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v100);
      if (EnumTagSinglePayload == 1)
      {
        v86 = sub_1C8D16D78(v84, &qword_1EC312F18, &qword_1C907A7B0);
        v89 = sub_1C8D7534C(v86, v87, v88);
        OUTLINED_FUNCTION_6_3(&type metadata for ToolInvocationError, v89);
        *v90 = v80;
        v90[1] = v82;
        swift_willThrow();
        v91 = OUTLINED_FUNCTION_25_11();
        v92(v91);
        v58 = 1;
        v59 = 1;
        goto LABEL_3;
      }

      v93 = OUTLINED_FUNCTION_25_11();
      v94(v93);

      OUTLINED_FUNCTION_0_39();
      v76 = v97;
      sub_1C8DC8618(v84, v97);
      v65 = v107;
    }

    OUTLINED_FUNCTION_0_39();
    sub_1C8DC8618(v76, v65 + v79);
    sub_1C8DC80D4(v65, v99);
    __swift_destroy_boxed_opaque_existential_1(v106);
    sub_1C8DC86E0();
    goto LABEL_9;
  }

  v58 = 0;
  v59 = 0;
LABEL_3:
  v60 = v40;
  v64 = v107;
  __swift_destroy_boxed_opaque_existential_1(v106);
  if ((v58 & 1) == 0)
  {
    if (!v59)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (*(v104 + 8))(v64, v60);
  if (v59)
  {
LABEL_7:
  }

LABEL_8:
  sub_1C8D63F84(*v53, *(v53 + 8), *(v53 + 16));
LABEL_9:
  OUTLINED_FUNCTION_198();
}

void ToolInvocation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  v25 = v23;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E50, &qword_1C907A7C8);
  OUTLINED_FUNCTION_11();
  v30 = v29;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v60 - v32;
  v34 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C8DC7F1C(v34, v35, v36);
  sub_1C9064E1C();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v37 = sub_1C9064E0C();
  if (qword_1EC3112B0 != -1)
  {
    OUTLINED_FUNCTION_11_15();
    swift_once();
  }

  v38 = sub_1C90648DC();
  v39 = __swift_project_value_buffer(v38, qword_1EC314E18);
  sub_1C8E9E49C(v39, v37, &v60);

  if (v62)
  {
    if (swift_dynamicCast())
    {
      v40 = a13;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C8D16D78(&v60, &qword_1EC3164F0, &qword_1C907A7D0);
  }

  v40 = 0;
LABEL_8:
  LOBYTE(v60) = 0;
  sub_1C906204C();
  OUTLINED_FUNCTION_1_35();
  sub_1C8DC82D8(v41, v42, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_21_10(v25);
  if (!v24)
  {
    v43 = type metadata accessor for ToolInvocation(0);
    *&v60 = *(v25 + v43[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E48, &qword_1C907A7C0);
    sub_1C8DC812C();
    OUTLINED_FUNCTION_21_10(&v60);
    v44 = v25 + v43[7];
    v45 = *(v44 + 8);
    v46 = *(v44 + 16);
    v47 = *(v44 + 24);
    v48 = *(v44 + 32);
    v49 = *(v44 + 40);
    *&v60 = *v44;
    *(&v60 + 1) = v45;
    v61 = v46;
    v62 = v47;
    v63 = v48;
    v64 = v49;
    sub_1C8DC6C28(v60, v45, v46, v47, v48);
    sub_1C8DC81E8(v50, v51, v52);
    sub_1C9064B0C();
    sub_1C8D63F84(v60, *(&v60 + 1), v61);
    v53 = v25 + v43[5];
    if (v40)
    {
      LOBYTE(v60) = 3;
      v54 = sub_1C9064B2C();
      v55 = *(v53 + 280);
      *&v60 = *(v53 + 272);
      *(&v60 + 1) = v55;
      sub_1C8DC823C(v54, v56, v57);

      sub_1C9064B8C();
    }

    else
    {
      LOBYTE(v60) = 5;
      type metadata accessor for ToolDefinition(0);
      OUTLINED_FUNCTION_9_15();
      sub_1C8DC82D8(v58, v59, &protocol conformance descriptor for ToolDefinition);
      OUTLINED_FUNCTION_21_10(v53);
    }
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_198();
}

void ToolInvocation.init(definition:parameterValuesByKey:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C8DC6C9C();
}

{
  sub_1C8DC6C9C();
}

void sub_1C8DC642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v66 = v10;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
  OUTLINED_FUNCTION_9(v16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_146();
  v18 = type metadata accessor for TypedValue.ID(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v67 = v21 - v20;
  v22 = OUTLINED_FUNCTION_111();
  v73 = type metadata accessor for ConcreteResolvable(v22);
  OUTLINED_FUNCTION_11();
  v72 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25();
  v27 = (v25 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v71 = &v65 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142D8, &qword_1C90730C8);
  v30 = v18;
  v31 = v27;
  sub_1C906493C();
  v32 = 0;
  v75 = v15;
  v33 = v15 + 64;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_38_9();
  v70 = v34;
  v69 = v30;
  v74 = v35;
  v68 = v11;
  if (v36)
  {
    do
    {
      OUTLINED_FUNCTION_28_8();
LABEL_8:
      OUTLINED_FUNCTION_48_5();
      v39 = *(v38 + 8);
      OUTLINED_FUNCTION_51_6();
      v40 = v81;
      v41 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v79[3] = v40;
      v79[4] = *(v41 + 8);
      __swift_allocate_boxed_opaque_existential_1(v79);
      OUTLINED_FUNCTION_10_0();
      (*(v42 + 16))();
      OUTLINED_FUNCTION_52_7();
      v78 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E78, &qword_1C907AA80);
      OUTLINED_FUNCTION_47_6();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v79);
        *v31 = a10;
      }

      else
      {
        OUTLINED_FUNCTION_52_7();
        v43 = v68;
        v44 = v69;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v43, 1, 1, v44);
          v60 = sub_1C8D16D78(v43, &unk_1EC3164C0, &qword_1C9072100);
          v63 = sub_1C8DC85C4(v60, v61, v62);
          OUTLINED_FUNCTION_6_3(&type metadata for ConcreteResolvable.Error, v63);
          sub_1C8DC8564(v79, v64);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1(v79);

          __swift_destroy_boxed_opaque_existential_1(v80);
LABEL_15:
          OUTLINED_FUNCTION_277();
          OUTLINED_FUNCTION_198();
          return;
        }

        OUTLINED_FUNCTION_150();
        OUTLINED_FUNCTION_19_12(v45, v46, v47, v44);
        v48 = v43;
        v49 = v31;
        v50 = v67;
        sub_1C8DC8618(v48, v67);
        v51 = v50;
        v31 = v49;
        sub_1C8DC8618(v51, v49);
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_12();
      v52 = v71;
      sub_1C8DC8618(v31, v71);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_43_8(v53);
      v54 = v74;
      v55 = (*(v74 + 48) + 16 * v13);
      v56 = v78;
      *v55 = v77;
      v55[1] = v56;
      sub_1C8DC8618(v52, *(v54 + 56) + *(v72 + 72) * v13);
      v57 = *(v54 + 16);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_18;
      }

      *(v54 + 16) = v59;
    }

    while (v76);
  }

  v37 = v32;
  while (1)
  {
    v32 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v32 >= v12)
    {
      goto LABEL_15;
    }

    ++v37;
    if (*(v33 + 8 * v32))
    {
      OUTLINED_FUNCTION_33_7();
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C8DC6858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v66 = v10;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
  OUTLINED_FUNCTION_9(v16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_28();
  v69 = type metadata accessor for TypedValue.ID(v18);
  v19 = OUTLINED_FUNCTION_9(v69);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v68 = v21 - v20;
  v22 = OUTLINED_FUNCTION_111();
  v23 = type metadata accessor for ConcreteResolvable(v22);
  OUTLINED_FUNCTION_11();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25();
  v73 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v72 = &v66 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142D8, &qword_1C90730C8);
  v31 = sub_1C906493C();
  v32 = 0;
  v74 = v15;
  v33 = v15 + 64;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_38_9();
  v71 = v34;
  v70 = v11;
  v67 = v25;
  if (v35)
  {
    do
    {
      OUTLINED_FUNCTION_28_8();
LABEL_8:
      OUTLINED_FUNCTION_48_5();
      v38 = *(v37 + 8);
      OUTLINED_FUNCTION_51_6();
      sub_1C8DC8564(v79, v78);
      OUTLINED_FUNCTION_52_7();
      v77 = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E78, &qword_1C907AA80);
      OUTLINED_FUNCTION_47_6();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v78);
        v39 = v73;
        *v73 = a10;
        v40 = v39;
      }

      else
      {
        OUTLINED_FUNCTION_52_7();
        v41 = v69;
        if ((swift_dynamicCast() & 1) == 0)
        {
          v58 = OUTLINED_FUNCTION_26_7();
          __swift_storeEnumTagSinglePayload(v58, v59, v60, v41);
          v61 = sub_1C8D16D78(v11, &unk_1EC3164C0, &qword_1C9072100);
          v64 = sub_1C8DC85C4(v61, v62, v63);
          OUTLINED_FUNCTION_6_3(&type metadata for ConcreteResolvable.Error, v64);
          sub_1C8DC8564(v78, v65);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1(v78);

          __swift_destroy_boxed_opaque_existential_1(v79);
LABEL_15:
          OUTLINED_FUNCTION_277();
          OUTLINED_FUNCTION_198();
          return;
        }

        OUTLINED_FUNCTION_150();
        OUTLINED_FUNCTION_19_12(v42, v43, v44, v45);
        v46 = v23;
        v47 = v31;
        v48 = v68;
        sub_1C8DC8618(v11, v68);
        v49 = v48;
        v31 = v47;
        v23 = v46;
        v25 = v67;
        v40 = v73;
        sub_1C8DC8618(v49, v73);
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_12();
      v50 = v40;
      v51 = v72;
      sub_1C8DC8618(v50, v72);
      __swift_destroy_boxed_opaque_existential_1(v79);
      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_43_8(v52);
      v53 = (v31[6] + 16 * v13);
      v54 = v77;
      *v53 = v76;
      v53[1] = v54;
      sub_1C8DC8618(v51, v31[7] + *(v25 + 72) * v13);
      v55 = v31[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_18;
      }

      v31[2] = v57;
      v11 = v70;
    }

    while (v75);
  }

  v36 = v32;
  while (1)
  {
    v32 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v32 >= v12)
    {
      goto LABEL_15;
    }

    ++v36;
    if (*(v33 + 8 * v32))
    {
      OUTLINED_FUNCTION_33_7();
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C8DC6C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }
}

void sub_1C8DC6C9C()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v30 = v9;
  v10 = type metadata accessor for ToolDefinition(0);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v31 = *v4;
  v32 = *(v4 + 8);
  v33 = *(v4 + 16);
  v34 = *(v4 + 24);
  v35 = *(v4 + 32);
  v22 = *(v4 + 40);
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  OUTLINED_FUNCTION_2_26();
  sub_1C8DC80D4(v8, v14);
  v23 = v2(v6);
  if (v0)
  {

    sub_1C8D63F84(v31, v32, v33);
    sub_1C8DC86E0();
    OUTLINED_FUNCTION_94();
    sub_1C8DC86E0();
    (*(v17 + 8))(v21, v15);
  }

  else
  {
    v24 = v23;
    OUTLINED_FUNCTION_10_17();
    sub_1C8DC86E0();

    v29 = v22;
    v25 = type metadata accessor for ToolInvocation(0);
    v26 = v30 + *(v25 + 28);
    OUTLINED_FUNCTION_23_14();
    v27(v30, v21, v15);
    OUTLINED_FUNCTION_0_39();
    sub_1C8DC8618(v14, v30 + v28);
    *(v30 + *(v25 + 24)) = v24;
    OUTLINED_FUNCTION_50_7();
    *v26 = v31;
    *(v26 + 8) = v32;
    *(v26 + 16) = v33;
    *(v26 + 24) = v34;
    *(v26 + 32) = v35;
    *(v26 + 40) = v29;
  }

  OUTLINED_FUNCTION_198();
}

void ToolInvocation.init(localToolId:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v48 = v4;
  v44 = v6;
  v45 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F18, &qword_1C907A7B0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for ToolDefinition(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v13 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  sub_1C8DC6858(v3, v20, v21, v22, v23, v24, v25, v26, v42, v43);
  v28 = v27;

  if (v0)
  {
  }

  else
  {
    v42 = v28;
    v43 = v13;
    v29 = v15;
    _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
    v46 = 0;
    v47 = 0;
    v30 = v45;
    sub_1C8DC4838();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {

      v31 = sub_1C8D16D78(v10, &qword_1EC312F18, &qword_1C907A7B0);
      v34 = sub_1C8D7534C(v31, v32, v33);
      OUTLINED_FUNCTION_6_3(&type metadata for ToolInvocationError, v34);
      *v35 = v30;
      v35[1] = v48;
      swift_willThrow();
      (*(v29 + 8))(v19, v43);
    }

    else
    {

      sub_1C8DC8618(v10, v1);
      v36 = type metadata accessor for ToolInvocation(0);
      v37 = v44;
      sub_1C8DC8618(v1, v44 + v36[5]);
      v38 = v37 + v36[7];
      *v38 = 0;
      *(v38 + 8) = 0;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0;
      *(v38 + 16) = 1;
      *(v38 + 40) = 0;
      (*(v29 + 32))(v37, v19, v43);
      *(v37 + v36[6]) = v42;
      v39 = OUTLINED_FUNCTION_45_11();
      sub_1C8D63F84(v39, v40, v41);
      *v38 = 0;
      *(v38 + 8) = 0;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0;
      *(v38 + 16) = 1;
      *(v38 + 40) = 0;
    }
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void ToolInvocation.init(localToolId:parameterValuesByKey:options:)()
{
  OUTLINED_FUNCTION_196();
  v66 = v0;
  v2 = v1;
  v4 = v3;
  v70 = v5;
  v64 = v6;
  v61 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F18, &qword_1C907A7B0);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v54 - v10;
  v11 = OUTLINED_FUNCTION_111();
  v62 = type metadata accessor for ToolDefinition(v11);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v60 = v14 - v13;
  OUTLINED_FUNCTION_111();
  v15 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v63 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v22 = *v2;
  v21 = *(v2 + 8);
  v24 = *(v2 + 16);
  v23 = *(v2 + 24);
  v25 = *(v2 + 32);
  v26 = *(v2 + 40);
  v67 = v4;
  v27 = v66;
  sub_1C8DC6858(v4, v28, v29, v30, v31, v32, v33, v34, v54, v55);
  if (v27)
  {

    sub_1C8D63F84(v22, v21, v24);
  }

  else
  {
    v54 = v35;
    v55 = v22;
    v56 = v21;
    v57 = v24;
    v58 = v23;
    v59 = v25;
    LODWORD(v66) = v26;
    v36 = v63;

    _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
    v68 = 0;
    v69 = 0;
    v38 = v64;
    v37 = v65;
    sub_1C8DC4838();
    v67 = v20;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v62);
    v40 = v15;
    v41 = v36;
    v43 = v58;
    v42 = v59;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8D63F84(v55, v56, v57);

      v44 = sub_1C8D16D78(v37, &qword_1EC312F18, &qword_1C907A7B0);
      v47 = sub_1C8D7534C(v44, v45, v46);
      OUTLINED_FUNCTION_6_3(&type metadata for ToolInvocationError, v47);
      *v48 = v38;
      v48[1] = v70;
      swift_willThrow();
      (*(v41 + 8))(v67, v40);
    }

    else
    {

      v49 = v60;
      sub_1C8DC8618(v37, v60);
      v50 = type metadata accessor for ToolInvocation(0);
      v51 = v61;
      sub_1C8DC8618(v49, v61 + v50[5]);
      v52 = v51 + v50[7];
      *v52 = 0;
      *(v52 + 8) = 0;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0;
      *(v52 + 16) = 1;
      *(v52 + 40) = 0;
      (*(v41 + 32))(v51, v67, v40);
      *(v51 + v50[6]) = v54;
      sub_1C8D63F84(*v52, *(v52 + 8), *(v52 + 16));
      v53 = v56;
      *v52 = v55;
      *(v52 + 8) = v53;
      *(v52 + 16) = v57;
      *(v52 + 24) = v43;
      *(v52 + 32) = v42;
      *(v52 + 40) = v66;
    }
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DC752C(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  OUTLINED_FUNCTION_3_1();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (v7)
  {
    while (1)
    {
      v13 = v12;
LABEL_6:
      v14 = __clz(__rbit64(v7)) | (v13 << 6);
      v15 = *(*(a2 + 48) + 16 * v14 + 8);
      v16 = *(*(a2 + 56) + 8 * v14);

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = v16;
      memcpy(v17, a1, sizeof(v17));
      sub_1C9063FBC();

      TypedValue.hash(into:)();

      result = sub_1C9064DBC();
      v11 ^= result;
      v12 = v13;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    return MEMORY[0x1CCA82810](v11);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_9;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C8DC7678(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  OUTLINED_FUNCTION_3_1();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  for (i = 0; v7; v11 ^= result)
  {
    v13 = i;
LABEL_7:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = *(*(a2 + 56) + 8 * (v14 | (v13 << 6)));
    memcpy(__dst, a1, sizeof(__dst));

    sub_1C9063FBC();

    sub_1C8D39A08(__dst, v15);

    result = sub_1C9064DBC();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1CCA82810](v11);
    }

    v7 = *(v4 + 8 * v13);
    ++i;
    if (v7)
    {
      i = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8DC77B8(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  OUTLINED_FUNCTION_3_1();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v26 = v9;

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v27 = v11;
    if (!v6)
    {
      break;
    }

LABEL_7:
    v14 = __clz(__rbit64(v6)) | (v12 << 6);
    v15 = *(*(v26 + 48) + 16 * v14 + 8);
    v16 = *(v26 + 56) + 24 * v14;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_1C8DC8514(v18, v17, v19, v20, v21);
    if (!v15)
    {
LABEL_19:

      return MEMORY[0x1CCA82810](v11);
    }

    memcpy(__dst, a1, sizeof(__dst));
    sub_1C9063FBC();

    if (!v19)
    {
      v24 = v19;
LABEL_16:
      MEMORY[0x1CCA82810](v24);
      sub_1C9063FBC();
      goto LABEL_18;
    }

    if (v19 != 1)
    {
      v24 = 2;
      goto LABEL_16;
    }

    LOBYTE(v19) = 1;
    MEMORY[0x1CCA82810](1);
    MEMORY[0x1CCA82810](*(v18 + 16));
    v22 = *(v18 + 16);
    if (v22)
    {
      v25 = a1;
      v23 = v18 + 40;
      do
      {

        sub_1C9063FBC();

        v23 += 16;
        --v22;
      }

      while (v22);
      LOBYTE(v19) = 1;
      a1 = v25;
    }

    v11 = v27;
LABEL_18:
    v6 &= v6 - 1;
    sub_1C8DC853C(v18, v17, v19);
    result = sub_1C9064DBC();
    v11 ^= result;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      goto LABEL_19;
    }

    v6 = *(v3 + 8 * v13);
    ++v12;
    if (v6)
    {
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8DC79AC(const void *a1, uint64_t a2)
{
  v48 = a1;
  v41 = type metadata accessor for TypedValue.ID(0);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ConcreteResolvable(0);
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F48, &unk_1C907AA90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;
  v45 = a2;

  v22 = 0;
  v23 = 0;
  v42 = v7;
  v49 = v12;
  while (1)
  {
    v50 = v22;
    if (!v19)
    {
      break;
    }

    v24 = v23;
LABEL_10:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = v25 | (v24 << 6);
    v27 = (*(v45 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    v30 = v43;
    sub_1C8DC80D4(*(v45 + 56) + *(v44 + 72) * v26, v43);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F40, &unk_1C90720D0);
    v32 = *(v31 + 48);
    v33 = v49;
    *v49 = v29;
    *(v33 + 1) = v28;
    v12 = v33;
    sub_1C8DC8618(v30, &v33[v32]);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v31);

    v7 = v42;
LABEL_11:
    sub_1C8DC8670(v12, v15);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F40, &unk_1C90720D0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v34) == 1)
    {

      return MEMORY[0x1CCA82810](v50);
    }

    sub_1C8DC8618(&v15[*(v34 + 48)], v7);
    memcpy(__dst, v48, sizeof(__dst));
    sub_1C9063FBC();

    v35 = v46;
    sub_1C8DC80D4(v7, v46);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v40;
      sub_1C8DC8618(v35, v40);
      MEMORY[0x1CCA82810](1);
      sub_1C906204C();
      sub_1C8DC82D8(&qword_1EDA666F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1C9063E7C();
      v37 = v41;
      sub_1C9061F4C();
      v51 = *(v36 + *(v37 + 24));

      TypeInstance.hash(into:)();
      sub_1C8DC86E0();
      v12 = v49;
    }

    else
    {
      v38 = *v35;
      MEMORY[0x1CCA82810](0);
      v51 = v38;
      TypedValue.hash(into:)();
    }

    sub_1C8DC86E0();

    result = sub_1C9064DBC();
    v22 = result ^ v50;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F40, &unk_1C90720D0);
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v39);
      v19 = 0;
      goto LABEL_11;
    }

    v19 = *(v16 + 8 * v24);
    ++v23;
    if (v19)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C8DC7F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314E40;
  if (!qword_1EC314E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E40);
  }

  return result;
}

unint64_t sub_1C8DC7F70()
{
  result = qword_1EDA60580;
  if (!qword_1EDA60580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC314E48, &qword_1C907A7C0);
    sub_1C8DC82D8(&qword_1EDA60A90, type metadata accessor for ConcreteResolvable, &protocol conformance descriptor for ConcreteResolvable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60580);
  }

  return result;
}

unint64_t sub_1C8DC802C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA624E8;
  if (!qword_1EDA624E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624E8);
  }

  return result;
}

unint64_t sub_1C8DC8080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63360;
  if (!qword_1EDA63360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63360);
  }

  return result;
}

uint64_t sub_1C8DC80D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v4(v3);
  OUTLINED_FUNCTION_13_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

unint64_t sub_1C8DC812C()
{
  result = qword_1EDA62E88;
  if (!qword_1EDA62E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC314E48, &qword_1C907A7C0);
    sub_1C8DC82D8(&qword_1EDA63650, type metadata accessor for ConcreteResolvable, &protocol conformance descriptor for ConcreteResolvable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E88);
  }

  return result;
}

unint64_t sub_1C8DC81E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA662F8;
  if (!qword_1EDA662F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA662F8);
  }

  return result;
}

unint64_t sub_1C8DC823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63368;
  if (!qword_1EDA63368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63368);
  }

  return result;
}

uint64_t sub_1C8DC82D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ToolInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DC8410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314E60;
  if (!qword_1EC314E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E60);
  }

  return result;
}

unint64_t sub_1C8DC8468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314E68;
  if (!qword_1EC314E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E68);
  }

  return result;
}

unint64_t sub_1C8DC84C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314E70;
  if (!qword_1EC314E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E70);
  }

  return result;
}

uint64_t sub_1C8DC8514(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3 || a3 == 2 || a3 == 1)
  {
  }

  return v5;
}

uint64_t sub_1C8DC853C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C8DC8564(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_10_0();
  (*v3)(a2);
  return a2;
}

unint64_t sub_1C8DC85C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314E80;
  if (!qword_1EC314E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E80);
  }

  return result;
}

uint64_t sub_1C8DC8618(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v4(v3);
  OUTLINED_FUNCTION_13_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t sub_1C8DC8670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F48, &unk_1C907AA90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8DC86E0()
{
  v1 = OUTLINED_FUNCTION_258();
  v2(v1);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(v0);
  return v0;
}

void OUTLINED_FUNCTION_23_14()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 1;
  *(v0 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_50_7()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];

  return sub_1C8D63F84(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_51_6()
{
  *(v3 - 224) = v1;

  return sub_1C8DC8564(v0 + 40 * v2, v3 - 128);
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return sub_1C8DC8564(v0 - 168, v0 - 208);
}

uint64_t AnyPredicate.init(predicate:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E90, &qword_1C907AAA0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_46_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E98, &qword_1C907AAA8);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_63_5(v8, 0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1C8DCDD7C(v8, v2);
    v10 = OUTLINED_FUNCTION_336();
    sub_1C8DCDD7C(v10, v11);
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_63_5(v8, 1);
  sub_1C8D16D78(v8, &qword_1EC314E90, &qword_1C907AAA0);
  v12 = OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_26_8(v12, v13, v14, &type metadata for CompoundPredicate))
  {
    v15 = v44;
    v16 = v45;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v15;
    *(a2 + 8) = v16;
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  v17 = OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_26_8(v17, v18, v19, &type metadata for StringSearchPredicate))
  {
    v20 = v44;
    v21 = v45;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v20;
    *(a2 + 8) = v21;
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  v22 = OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_26_8(v22, v23, v24, &type metadata for IdSearchPredicate))
  {
    v25 = v44;
    v43 = v45;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v25;
    *(a2 + 8) = v43;
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  v26 = OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_26_8(v26, v27, v28, &type metadata for SearchableItemPredicate))
  {
    goto LABEL_16;
  }

  v29 = OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_28_9(v29, v30, v31, &type metadata for AllPredicate) & 1) != 0 || (v32 = OUTLINED_FUNCTION_46_6(), (OUTLINED_FUNCTION_28_9(v32, v33, v34, &type metadata for SuggestedPredicate)) || (v35 = OUTLINED_FUNCTION_46_6(), (OUTLINED_FUNCTION_28_9(v35, v36, v37, &type metadata for ValidPredicate)))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  v38 = OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_26_8(v38, v39, v40, &type metadata for ValueSearchPredicate))
  {
LABEL_16:
    v41 = v44;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v41;
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_1C906491C();
  __break(1u);
  return result;
}

unint64_t sub_1C8DC8B78@<X0>(void *a1@<X8>)
{
  type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_0_40();
  v6 = OUTLINED_FUNCTION_206();
  sub_1C8DCDFE0(v6, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v19 = *v5;
      v20 = *(v5 + 8);
      a1[3] = &type metadata for CompoundPredicate;
      result = sub_1C8DCFA84(EnumCaseMultiPayload, v9, v10);
      a1[4] = result;
      *a1 = v19;
      a1[1] = v20;
      return result;
    case 2:
      v17 = *v5;
      v16 = *(v5 + 8);
      a1[3] = &type metadata for StringSearchPredicate;
      result = sub_1C8DCFA30(EnumCaseMultiPayload, v9, v10);
      a1[4] = result;
      *a1 = v17;
      a1[1] = v16;
      return result;
    case 3:
      v18 = *v5;
      a1[3] = &type metadata for IdSearchPredicate;
      result = sub_1C8D0C294(EnumCaseMultiPayload, v9, v10);
      a1[4] = result;
      *a1 = v18;
      *(a1 + 1) = *(v5 + 8);
      return result;
    case 4:
      v15 = *v5;
      a1[3] = &type metadata for SearchableItemPredicate;
      result = sub_1C8DCF9DC(EnumCaseMultiPayload, v9, v10);
      goto LABEL_12;
    case 5:
      a1[3] = &type metadata for AllPredicate;
      result = sub_1C8DCF988(EnumCaseMultiPayload, v9, v10);
      goto LABEL_10;
    case 6:
      a1[3] = &type metadata for ValidPredicate;
      result = sub_1C8DCF8E0(EnumCaseMultiPayload, v9, v10);
      goto LABEL_10;
    case 7:
      a1[3] = &type metadata for SuggestedPredicate;
      result = sub_1C8DCF934(EnumCaseMultiPayload, v9, v10);
LABEL_10:
      a1[4] = result;
      break;
    case 8:
      v15 = *v5;
      a1[3] = &type metadata for ValueSearchPredicate;
      result = sub_1C8DCF88C(EnumCaseMultiPayload, v9, v10);
LABEL_12:
      a1[4] = result;
      *a1 = v15;
      break;
    default:
      a1[3] = type metadata accessor for ComparisonPredicate(0);
      OUTLINED_FUNCTION_15_14();
      a1[4] = sub_1C8DCDF78(v11, v12, &protocol conformance descriptor for ComparisonPredicate);
      __swift_allocate_boxed_opaque_existential_1(a1);
      OUTLINED_FUNCTION_14_18();
      result = sub_1C8DCDD7C(v5, v13);
      break;
  }

  return result;
}

uint64_t AnyPredicate.debugDescription.getter()
{
  v2 = 0;
  v3 = 0xE000000000000000;
  sub_1C8DC8B78(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E98, &qword_1C907AAA8);
  sub_1C90648BC();
  __swift_destroy_boxed_opaque_existential_1(v1);
  return v2;
}

uint64_t static AnyPredicate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v5 = type metadata accessor for ComparisonPredicate(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v58 = v8 - v7;
  type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v58 - v14);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_35_10();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v58 - v18);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EA0, &qword_1C907AAB0);
  OUTLINED_FUNCTION_9(v24);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v58 + *(v27 + 56) - v26);
  v29 = a1;
  v30 = &v58 - v26;
  sub_1C8DCDFE0(v29, &v58 - v26);
  sub_1C8DCDFE0(v59, v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_40();
      sub_1C8DCDFE0(v30, v2);
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_33;
      }

      if (*v2 != *v28)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_94();
      sub_1C8CEC394();
      goto LABEL_40;
    case 2u:
      OUTLINED_FUNCTION_0_40();
      v35 = OUTLINED_FUNCTION_336();
      sub_1C8DCDFE0(v35, v36);
      v38 = *v19;
      v37 = v19[1];
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_33;
      }

      if (v38 == *v28 && v37 == v28[1])
      {

        goto LABEL_41;
      }

      v40 = sub_1C9064C2C();
LABEL_40:
      v54 = v40;

      if (v54)
      {
        goto LABEL_41;
      }

      goto LABEL_45;
    case 3u:
      OUTLINED_FUNCTION_0_40();
      sub_1C8DCDFE0(v30, v3);
      v42 = *v3;
      v41 = v3[1];
      v43 = v3[2];
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_33:

        goto LABEL_34;
      }

      v44 = *v28;
      v45 = v28[1];
      v46 = v28[2];
      v47 = v42 == v44 && v41 == v45;
      if (v47 || (sub_1C9064C2C() & 1) != 0)
      {
        sub_1C8CEB10C(v43, v46);
        v49 = v48;

        if (v49)
        {
LABEL_41:
          OUTLINED_FUNCTION_3_24();
          sub_1C8DCD790(v30, v55);
          v34 = 1;
          return v34 & 1;
        }
      }

      else
      {

LABEL_44:
      }

LABEL_45:
      OUTLINED_FUNCTION_3_24();
      sub_1C8DCD790(v30, v57);
      goto LABEL_35;
    case 4u:
      OUTLINED_FUNCTION_0_40();
      sub_1C8DCDFE0(v30, v15);
      v32 = *v15;
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v33 = *v28;
        sub_1C8DC92EC();
        v34 = sub_1C90645BC();

        goto LABEL_37;
      }

      goto LABEL_34;
    case 5u:
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    case 6u:
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    case 7u:
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    case 8u:
      OUTLINED_FUNCTION_0_40();
      sub_1C8DCDFE0(v30, v12);
      v50 = *v12;
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_33;
      }

      v34 = sub_1C8CEC2D4(v50, *v28);

      goto LABEL_37;
    default:
      OUTLINED_FUNCTION_0_40();
      sub_1C8DCDFE0(v30, v23);
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_13_14();
        sub_1C8DCD790(v23, v31);
LABEL_34:
        sub_1C8D16D78(v30, &qword_1EC314EA0, &qword_1C907AAB0);
LABEL_35:
        v34 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_14_18();
        v51 = v28;
        v52 = v58;
        sub_1C8DCDD7C(v51, v58);
        v34 = static ComparisonPredicate.== infix(_:_:)(v23, v52);
        sub_1C8DCD790(v52, type metadata accessor for ComparisonPredicate);
        sub_1C8DCD790(v23, type metadata accessor for ComparisonPredicate);
LABEL_37:
        OUTLINED_FUNCTION_3_24();
        sub_1C8DCD790(v30, v53);
      }

      return v34 & 1;
  }
}

unint64_t sub_1C8DC92EC()
{
  result = qword_1EDA60460;
  if (!qword_1EDA60460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA60460);
  }

  return result;
}

uint64_t sub_1C8DC9330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E756F706D6F63 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6553676E69727473 && a2 == 0xEC00000068637261;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6863726165536469 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6261686372616573 && a2 == 0xEE006D657449656CLL;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7105633 && a2 == 0xE300000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6574736567677573 && a2 == 0xE900000000000064;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x61655365756C6176 && a2 == 0xEB00000000686372)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1C8DC9614(char a1)
{
  result = 0x73697261706D6F63;
  switch(a1)
  {
    case 1:
      result = 0x646E756F706D6F63;
      break;
    case 2:
      result = 0x6553676E69727473;
      break;
    case 3:
      result = 0x6863726165536469;
      break;
    case 4:
      result = 0x6261686372616573;
      break;
    case 5:
      result = 7105633;
      break;
    case 6:
      result = 0x64696C6176;
      break;
    case 7:
      result = 0x6574736567677573;
      break;
    case 8:
      result = 0x61655365756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8DC9728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCD9E0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC9764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCD9E0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DC97A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DC9330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DC97D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8DC960C();
  *a1 = result;
  return result;
}

uint64_t sub_1C8DC97F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCD7E8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC9834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCD7E8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DC9870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCDCD4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC98AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCDCD4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DC98E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCDC2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC9924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCDC2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DC9960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCDB30(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC999C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCDB30(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DC99D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCDA88(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC9A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCDA88(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DC9A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCDB84(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC9A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCDB84(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DC9AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCD8E4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC9B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCD8E4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DC9B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCD938(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC9B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCD938(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DC9BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCD83C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DC9BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCD83C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void AnyPredicate.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v145 = v1;
  v4 = v3;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EA8, &qword_1C907AAB8);
  OUTLINED_FUNCTION_11();
  v124[5] = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v142 = v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EB0, &qword_1C907AAC0);
  OUTLINED_FUNCTION_11();
  v124[4] = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v140 = v10;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EB8, &qword_1C907AAC8);
  OUTLINED_FUNCTION_11();
  v124[3] = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v138 = v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EC0, &qword_1C907AAD0);
  OUTLINED_FUNCTION_11();
  v124[2] = v14;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_97();
  v136 = v16;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EC8, &qword_1C907AAD8);
  OUTLINED_FUNCTION_11();
  v124[1] = v17;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  v134 = v19;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314ED0, &qword_1C907AAE0);
  OUTLINED_FUNCTION_11();
  v124[0] = v20;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_97();
  v132 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314ED8, &qword_1C907AAE8);
  OUTLINED_FUNCTION_11();
  v130 = v24;
  v131 = v23;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_97();
  v129 = v26;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EE0, &qword_1C907AAF0);
  OUTLINED_FUNCTION_11();
  v127 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  v125 = v29;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EE8, &qword_1C907AAF8);
  OUTLINED_FUNCTION_11();
  v124[6] = v30;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_48_6();
  type metadata accessor for ComparisonPredicate(v32);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v34 = OUTLINED_FUNCTION_288_0();
  type metadata accessor for AnyPredicate(v34);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  v38 = v37 - v36;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EF0, &qword_1C907AB00);
  OUTLINED_FUNCTION_11();
  v144 = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v124 - v41;
  v43 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C8DCD7E8(v43, v44, v45);
  v146 = v42;
  sub_1C9064E1C();
  OUTLINED_FUNCTION_0_40();
  sub_1C8DCDFE0(v145, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v99 = *v38;
      v100 = *(v38 + 8);
      LOBYTE(v148) = 1;
      sub_1C8DCDC2C(EnumCaseMultiPayload, v47, v48);
      v101 = v125;
      v102 = v146;
      v103 = v147;
      OUTLINED_FUNCTION_27_9();
      v104 = sub_1C9064ACC();
      LOBYTE(v148) = v99;
      v149 = v100;
      sub_1C8DCDC80(v104, v105, v106);
      v107 = v128;
      OUTLINED_FUNCTION_65_3(&v148);
      OUTLINED_FUNCTION_296();
      v108(v101, v107);
      (*(v144 + 8))(v102, v103);
      goto LABEL_14;
    case 2:
      v70 = *v38;
      v69 = *(v38 + 8);
      LOBYTE(v148) = 2;
      sub_1C8DCDB84(EnumCaseMultiPayload, v47, v48);
      v71 = v129;
      v72 = v147;
      OUTLINED_FUNCTION_44_11();
      v73 = sub_1C9064ACC();
      v148 = v70;
      v149 = v69;
      sub_1C8DCDBD8(v73, v74, v75);
      v76 = v131;
      OUTLINED_FUNCTION_65_3(&v148);
      (*(v130 + 8))(v71, v76);
      v77 = OUTLINED_FUNCTION_241();
      v79 = v72;
      goto LABEL_13;
    case 3:
      v81 = *v38;
      v80 = *(v38 + 8);
      v82 = *(v38 + 16);
      LOBYTE(v148) = 3;
      sub_1C8DCDB30(EnumCaseMultiPayload, v47, v48);
      v83 = v132;
      v84 = sub_1C9064ACC();
      v148 = v81;
      v149 = v80;
      v150 = v82;
      sub_1C8D0C034(v84, v85, v86);
      v87 = v133;
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296();
      v88(v83, v87);
      v89 = OUTLINED_FUNCTION_203();
      v90(v89);

      goto LABEL_14;
    case 4:
      v61 = *v38;
      LOBYTE(v148) = 4;
      sub_1C8DCDA88(EnumCaseMultiPayload, v47, v48);
      v62 = OUTLINED_FUNCTION_51_7(&type metadata for AnyPredicate.SearchableItemCodingKeys);
      v148 = v61;
      sub_1C8DCDADC(v62, v63, v64);
      OUTLINED_FUNCTION_65_3(&v148);
      OUTLINED_FUNCTION_296();
      v65 = OUTLINED_FUNCTION_203();
      v66(v65);
      v67 = OUTLINED_FUNCTION_17_3();
      v68(v67);

      goto LABEL_15;
    case 5:
      LOBYTE(v148) = 5;
      sub_1C8DCD9E0(EnumCaseMultiPayload, v47, v48);
      v91 = v136;
      v93 = v146;
      v92 = v147;
      OUTLINED_FUNCTION_27_9();
      v109 = sub_1C9064ACC();
      v112 = sub_1C8DCDA34(v109, v110, v111);
      v98 = v137;
      OUTLINED_FUNCTION_42_7(v112);
      goto LABEL_10;
    case 6:
      LOBYTE(v148) = 6;
      sub_1C8DCD938(EnumCaseMultiPayload, v47, v48);
      v91 = v138;
      v93 = v146;
      v92 = v147;
      OUTLINED_FUNCTION_27_9();
      v113 = sub_1C9064ACC();
      v116 = sub_1C8DCD98C(v113, v114, v115);
      v98 = v139;
      OUTLINED_FUNCTION_42_7(v116);
      goto LABEL_10;
    case 7:
      LOBYTE(v148) = 7;
      sub_1C8DCD8E4(EnumCaseMultiPayload, v47, v48);
      v91 = v140;
      v93 = v146;
      v92 = v147;
      OUTLINED_FUNCTION_27_9();
      v94 = sub_1C9064ACC();
      v97 = sub_1C8D94414(v94, v95, v96);
      v98 = v141;
      OUTLINED_FUNCTION_42_7(v97);
LABEL_10:
      OUTLINED_FUNCTION_296();
      v117(v91, v98);
      v59 = *(v144 + 8);
      v58 = v93;
      v60 = v92;
      goto LABEL_11;
    case 8:
      v118 = *v38;
      LOBYTE(v148) = 8;
      sub_1C8DCD83C(EnumCaseMultiPayload, v47, v48);
      v119 = OUTLINED_FUNCTION_51_7(&type metadata for AnyPredicate.ValueSearchCodingKeys);
      v148 = v118;
      sub_1C8DCD890(v119, v120, v121);
      OUTLINED_FUNCTION_65_3(&v148);
      OUTLINED_FUNCTION_296();
      v122 = OUTLINED_FUNCTION_203();
      v123(v122);
      v77 = OUTLINED_FUNCTION_17_3();
LABEL_13:
      v78(v77, v79);
LABEL_14:

      goto LABEL_15;
    default:
      v49 = sub_1C8DCDD7C(v38, v2);
      LOBYTE(v148) = 0;
      sub_1C8DCDCD4(v49, v50, v51);
      v52 = v147;
      OUTLINED_FUNCTION_44_11();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_15_14();
      sub_1C8DCDF78(v53, v54, &protocol conformance descriptor for ComparisonPredicate);
      v55 = v126;
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296();
      v56(v0, v55);
      OUTLINED_FUNCTION_13_14();
      sub_1C8DCD790(v2, v57);
      v58 = OUTLINED_FUNCTION_241();
      v60 = v52;
LABEL_11:
      v59(v58, v60);
LABEL_15:
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_198();
      return;
  }
}

void AnyPredicate.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_257();
  v3 = type metadata accessor for ComparisonPredicate(v2);
  v4 = OUTLINED_FUNCTION_9(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_48_6();
  type metadata accessor for AnyPredicate(v5);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  OUTLINED_FUNCTION_0_40();
  sub_1C8DCDFE0(v1, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *v9;
      MEMORY[0x1CCA82810](1);
      MEMORY[0x1CCA82810](v13);
      sub_1C8D0389C();
      goto LABEL_13;
    case 2u:
      MEMORY[0x1CCA82810](2);
      sub_1C9063FBC();
      goto LABEL_13;
    case 3u:
      MEMORY[0x1CCA82810](3);
      sub_1C9063FBC();
      sub_1C8CC1590();

      goto LABEL_13;
    case 4u:
      v11 = *v9;
      MEMORY[0x1CCA82810](4);
      sub_1C90645CC();

      return;
    case 5u:
      v12 = 5;
      goto LABEL_11;
    case 6u:
      v12 = 6;
      goto LABEL_11;
    case 7u:
      v12 = 7;
LABEL_11:
      MEMORY[0x1CCA82810](v12);
      break;
    case 8u:
      MEMORY[0x1CCA82810](8);
      sub_1C8D03430();
LABEL_13:

      break;
    default:
      OUTLINED_FUNCTION_14_18();
      sub_1C8DCDD7C(v9, v0);
      MEMORY[0x1CCA82810](0);
      ComparisonPredicate.hash(into:)(v1);
      OUTLINED_FUNCTION_13_14();
      sub_1C8DCD790(v0, v10);
      break;
  }
}

void AnyPredicate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v24;
  a20 = v25;
  a10 = v20;
  v27 = v26;
  v218 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F58, &qword_1C907AB08);
  OUTLINED_FUNCTION_11();
  v208 = v30;
  v209 = v29;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  v217 = v32;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F60, &qword_1C907AB10);
  OUTLINED_FUNCTION_11();
  v206 = v33;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  v216 = v35;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F68, &qword_1C907AB18);
  OUTLINED_FUNCTION_11();
  v204 = v36;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  v215 = v38;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F70, &qword_1C907AB20);
  OUTLINED_FUNCTION_11();
  v202 = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v214 = v41;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F78, &qword_1C907AB28);
  OUTLINED_FUNCTION_11();
  v201 = v42;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  v223 = v44;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F80, &qword_1C907AB30);
  OUTLINED_FUNCTION_11();
  v198 = v45;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v213 = v47;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F88, &qword_1C907AB38);
  OUTLINED_FUNCTION_11();
  v197 = v48;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  v212 = v50;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F90, &qword_1C907AB40);
  OUTLINED_FUNCTION_11();
  v195 = v51;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_97();
  v210 = v53;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F98, &qword_1C907AB48);
  OUTLINED_FUNCTION_11();
  v193 = v54;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_97();
  v211 = v56;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FA0, &unk_1C907AB50);
  OUTLINED_FUNCTION_11();
  v219 = v57;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v58);
  v59 = OUTLINED_FUNCTION_58_6();
  v221 = type metadata accessor for AnyPredicate(v59);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_216();
  v220 = v65;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_35_10();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v182 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v182 - v71;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v182 - v75;
  v77 = v27[3];
  v225 = v27;
  v78 = __swift_project_boxed_opaque_existential_1(v27, v77);
  sub_1C8DCD7E8(v78, v79, v80);
  v224 = v22;
  v81 = a10;
  sub_1C9064DEC();
  if (v81)
  {
    goto LABEL_8;
  }

  v184 = v72;
  v187 = v21;
  v185 = v69;
  v186 = v23;
  v83 = v220;
  v82 = v221;
  v84 = v222;
  v85 = v223;
  a10 = v76;
  v86 = v224;
  v87 = sub_1C9064A9C();
  v91 = sub_1C8CB8914(v87, 0);
  if (v89 == v90 >> 1)
  {
LABEL_7:
    v101 = v86;
    sub_1C90647DC();
    swift_allocError();
    v103 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v103 = v82;
    v104 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v104);
    OUTLINED_FUNCTION_10_0();
    (*(v105 + 104))(v103);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_40_8();
    v106(v101, v84);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v225);
LABEL_9:
    OUTLINED_FUNCTION_198();
    return;
  }

  v183 = 0;
  if (v89 < (v90 >> 1))
  {
    v182 = *(v88 + v89);
    sub_1C8CB891C(v89 + 1, v90 >> 1, v91, v88, v89, v90);
    v93 = v92;
    v95 = v94;
    v96 = swift_unknownObjectRelease();
    if (v93 == v95 >> 1)
    {
      v99 = v218;
      switch(v182)
      {
        case 1:
          LOBYTE(v226) = 1;
          sub_1C8DCDC2C(v96, v97, v98);
          v124 = v210;
          v125 = OUTLINED_FUNCTION_10_18(&type metadata for AnyPredicate.CompoundCodingKeys, &v226);
          sub_1C8DCDF24(v125, v126, v127);
          v128 = v196;
          sub_1C9064A6C();
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v165(v124, v128);
          v166 = OUTLINED_FUNCTION_18_11();
          v167(v166);
          v168 = v227;
          v156 = v184;
          *v184 = v226;
          v156[1] = v168;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 2:
          LOBYTE(v226) = 2;
          sub_1C8DCDB84(v96, v97, v98);
          v112 = OUTLINED_FUNCTION_9_16(&type metadata for AnyPredicate.StringSearchCodingKeys, &v226);
          sub_1C8DCDED0(v112, v113, v114);
          OUTLINED_FUNCTION_23_15(&type metadata for StringSearchPredicate, v115);
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          v151 = OUTLINED_FUNCTION_19_13();
          v152(v151);
          v153 = OUTLINED_FUNCTION_18_11();
          v154(v153);
          v155 = v227;
          v156 = v185;
          *v185 = v226;
          v156[1] = v155;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 3:
          LOBYTE(v226) = 3;
          sub_1C8DCDB30(v96, v97, v98);
          v116 = OUTLINED_FUNCTION_9_16(&type metadata for AnyPredicate.IdSearchCodingKeys, &v226);
          sub_1C8D0BFE0(v116, v117, v118);
          OUTLINED_FUNCTION_23_15(&type metadata for IdSearchPredicate, v119);
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          v157 = OUTLINED_FUNCTION_19_13();
          v158(v157);
          v159 = OUTLINED_FUNCTION_18_11();
          v160(v159);
          v156 = v186;
          *v186 = v226;
          *(v156 + 1) = v227;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 4:
          LOBYTE(v226) = 4;
          sub_1C8DCDA88(v96, v97, v98);
          v107 = v85;
          v108 = OUTLINED_FUNCTION_9_16(&type metadata for AnyPredicate.SearchableItemCodingKeys, &v226);
          sub_1C8DCDE7C(v108, v109, v110);
          v111 = v200;
          OUTLINED_FUNCTION_44_11();
          sub_1C9064A6C();
          v183 = 0;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v147(v107, v111);
          OUTLINED_FUNCTION_40_8();
          v148(v86, v84);
          *v83 = v226;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_36();
          v149 = a10;
          sub_1C8DCDD7C(v83, a10);
          v150 = v225;
          v99 = v218;
          goto LABEL_20;
        case 5:
          LOBYTE(v226) = 5;
          sub_1C8DCD9E0(v96, v97, v98);
          v129 = OUTLINED_FUNCTION_9_16(&type metadata for AnyPredicate.AllCodingKeys, &v226);
          sub_1C8DCDE28(v129, v130, v131);
          OUTLINED_FUNCTION_23_15(&type metadata for AllPredicate, v132);
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          v172 = OUTLINED_FUNCTION_19_13();
          v173(v172);
          v174 = OUTLINED_FUNCTION_18_11();
          v175(v174);
          v156 = v188;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 6:
          LOBYTE(v226) = 6;
          sub_1C8DCD938(v96, v97, v98);
          v133 = OUTLINED_FUNCTION_9_16(&type metadata for AnyPredicate.ValidCodingKeys, &v226);
          sub_1C8DCDDD4(v133, v134, v135);
          OUTLINED_FUNCTION_23_15(&type metadata for ValidPredicate, v136);
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          v176 = OUTLINED_FUNCTION_19_13();
          v177(v176);
          v178 = OUTLINED_FUNCTION_18_11();
          v179(v178);
          v156 = v189;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 7:
          LOBYTE(v226) = 7;
          sub_1C8DCD8E4(v96, v97, v98);
          v120 = OUTLINED_FUNCTION_9_16(&type metadata for AnyPredicate.SuggestedCodingKeys, &v226);
          sub_1C8D943C0(v120, v121, v122);
          OUTLINED_FUNCTION_23_15(&type metadata for SuggestedPredicate, v123);
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          v161 = OUTLINED_FUNCTION_19_13();
          v162(v161);
          v163 = OUTLINED_FUNCTION_18_11();
          v164(v163);
          v156 = v190;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 8:
          LOBYTE(v226) = 8;
          sub_1C8DCD83C(v96, v97, v98);
          v137 = v217;
          v138 = OUTLINED_FUNCTION_9_16(&type metadata for AnyPredicate.ValueSearchCodingKeys, &v226);
          sub_1C8DCDD28(v138, v143, v144);
          v145 = v209;
          OUTLINED_FUNCTION_23_15(&type metadata for ValueSearchPredicate, v146);
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          (*(v208 + 8))(v137, v145);
          v180 = OUTLINED_FUNCTION_18_11();
          v181(v180);
          v156 = v191;
          *v191 = v226;
          OUTLINED_FUNCTION_210();
LABEL_18:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_36();
          v171 = v156;
          break;
        default:
          LOBYTE(v226) = 0;
          sub_1C8DCDCD4(v96, v97, v98);
          v100 = v211;
          OUTLINED_FUNCTION_10_18(&type metadata for AnyPredicate.ComparisonCodingKeys, &v226);
          type metadata accessor for ComparisonPredicate(0);
          OUTLINED_FUNCTION_15_14();
          sub_1C8DCDF78(v139, v140, &protocol conformance descriptor for ComparisonPredicate);
          v141 = v187;
          v142 = v194;
          sub_1C9064A6C();
          v183 = 0;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v169(v100, v142);
          OUTLINED_FUNCTION_40_8();
          v170(v224, v84);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_36();
          v171 = v141;
          break;
      }

      v149 = a10;
      sub_1C8DCDD7C(v171, a10);
      v150 = v225;
LABEL_20:
      OUTLINED_FUNCTION_1_36();
      sub_1C8DCDD7C(v149, v99);
      __swift_destroy_boxed_opaque_existential_1(v150);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t Predicate.toAny()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[3] = a1;
  v6[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_10_0();
  (*(v4 + 16))();
  return AnyPredicate.init(predicate:)(v6, a3);
}

uint64_t AnyPredicateTemplate.init(predicateTemplate:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FC8, &qword_1C907AB60);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_32_7();
  type metadata accessor for ComparisonPredicate.Template(v8);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_46_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FD0, &qword_1C907AB68);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_63_5(v2, 0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1C8DCDD7C(v2, v3);
    v10 = OUTLINED_FUNCTION_336();
    sub_1C8DCDD7C(v10, v11);
    OUTLINED_FUNCTION_64_2();
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_63_5(v2, 1);
  sub_1C8D16D78(v2, &qword_1EC314FC8, &qword_1C907AB60);
  OUTLINED_FUNCTION_46_6();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_64_2();
    return swift_storeEnumTagMultiPayload();
  }

  sub_1C8DC8564(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E98, &qword_1C907AAA8);
  if (swift_dynamicCast())
  {
    sub_1C8D04FA4(v13, v16);
    sub_1C8DC8564(v16, v15);
    AnyPredicate.init(predicate:)(v15, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_64_2();
    return swift_storeEnumTagMultiPayload();
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_1C8D16D78(v13, &qword_1EC314FD8, &qword_1C907AB70);
  result = sub_1C906491C();
  __break(1u);
  return result;
}

void AnyPredicateTemplate.instantiate(with:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  type metadata accessor for AnyPredicateTemplate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_2_27();
  v10 = OUTLINED_FUNCTION_114();
  sub_1C8DCDFE0(v10, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = &type metadata for StringSearchPredicate.Template;
      v26 = sub_1C8DCE088(EnumCaseMultiPayload, v13, v14);
    }

    else
    {
      OUTLINED_FUNCTION_1_36();
      v18 = OUTLINED_FUNCTION_203();
      sub_1C8DCDD7C(v18, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FD0, &qword_1C907AB68);
      swift_dynamicCast();
    }
  }

  else
  {
    v25 = type metadata accessor for ComparisonPredicate.Template(0);
    OUTLINED_FUNCTION_12_13();
    v26 = sub_1C8DCDF78(v15, v16, &protocol conformance descriptor for ComparisonPredicate.Template);
    __swift_allocate_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_5_20();
    sub_1C8DCDD7C(v9, v17);
  }

  v20 = v25;
  v21 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v22 = *(v21 + 56);
  v23[3] = swift_getAssociatedTypeWitness();
  v23[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v23);
  v22(v2, v20, v21);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_deallocate_boxed_opaque_existential_1(v23);
  }

  else
  {
    AnyPredicate.init(predicate:)(v23, v4);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t AnyPredicateTemplate.debugDescription.getter()
{
  type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_48_6();
  type metadata accessor for ComparisonPredicate.Template(v5);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v7 = OUTLINED_FUNCTION_32_7();
  type metadata accessor for AnyPredicateTemplate(v7);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_2_27();
  sub_1C8DCDFE0(v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_5_20();
    sub_1C8DCDD7C(v3, v2);
    sub_1C90648BC();
    OUTLINED_FUNCTION_11_16();
    v11 = v2;
LABEL_6:
    sub_1C8DCD790(v11, v10);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v12 = OUTLINED_FUNCTION_336();
    sub_1C8DCDD7C(v12, v13);
    sub_1C90648BC();
    OUTLINED_FUNCTION_3_24();
    v11 = v0;
    goto LABEL_6;
  }

  sub_1C90648BC();
  return 0;
}

uint64_t static AnyPredicateTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for AnyPredicate(0);
  v7 = OUTLINED_FUNCTION_9(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = type metadata accessor for ComparisonPredicate.Template(0);
  v12 = OUTLINED_FUNCTION_9(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v13 = OUTLINED_FUNCTION_32_7();
  type metadata accessor for AnyPredicateTemplate(v13);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FF0, &qword_1C907AB78);
  OUTLINED_FUNCTION_9(v18);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v23 = *(v22 + 56);
  sub_1C8DCDFE0(a1, &v31 - v20);
  sub_1C8DCDFE0(a2, &v21[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_27();
    sub_1C8DCDFE0(v21, v17);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_5_20();
      sub_1C8DCDD7C(&v21[v23], v2);
      v25 = static ComparisonPredicate.Template.== infix(_:_:)(v17, v2);
      sub_1C8DCD790(v2, type metadata accessor for ComparisonPredicate.Template);
      v28 = v17;
      v29 = type metadata accessor for ComparisonPredicate.Template;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_11_16();
    v27 = v17;
LABEL_10:
    sub_1C8DCD790(v27, v26);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_2_27();
    sub_1C8DCDFE0(v21, v3);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1C8DCDD7C(&v21[v23], v10);
      v25 = static AnyPredicate.== infix(_:_:)(v3, v10);
      sub_1C8DCD790(v10, type metadata accessor for AnyPredicate);
      v28 = v3;
      v29 = type metadata accessor for AnyPredicate;
LABEL_13:
      sub_1C8DCD790(v28, v29);
      OUTLINED_FUNCTION_31_8();
      return v25 & 1;
    }

    OUTLINED_FUNCTION_3_24();
    v27 = v3;
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_11:
    sub_1C8D16D78(v21, &qword_1EC314FF0, &qword_1C907AB78);
    v25 = 0;
    return v25 & 1;
  }

  OUTLINED_FUNCTION_31_8();
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1C8DCC2BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6553676E69727473 && a2 == 0xEC00000068637261;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8DCC3E0(char a1)
{
  if (!a1)
  {
    return 0x73697261706D6F63;
  }

  if (a1 == 1)
  {
    return 0x6553676E69727473;
  }

  return 0x7461636964657270;
}

uint64_t sub_1C8DCC448(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8DCC4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DCC2BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DCC4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCE0DC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DCC524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCE0DC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DCC560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCE22C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DCC59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCE22C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DCC5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCE130(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DCC614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCE130(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DCC650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCE184(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DCC68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DCE184(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void AnyPredicateTemplate.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v68 = v0;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FF8, &qword_1C907AB80);
  OUTLINED_FUNCTION_11();
  v66 = v4;
  v67 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97();
  v65 = v6;
  v63 = type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v64 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315000, &qword_1C907AB88);
  OUTLINED_FUNCTION_11();
  v61[3] = v11;
  v62 = v10;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v61 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315008, &qword_1C907AB90);
  OUTLINED_FUNCTION_11();
  v61[1] = v16;
  v61[2] = v15;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_288_0();
  v61[0] = type metadata accessor for ComparisonPredicate.Template(v18);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  type metadata accessor for AnyPredicateTemplate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v26 = v25 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315010, &qword_1C907AB98);
  OUTLINED_FUNCTION_11();
  v69 = v28;
  v70 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_146();
  v30 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8DCE0DC(v30, v31, v32);
  sub_1C9064E1C();
  OUTLINED_FUNCTION_2_27();
  sub_1C8DCDFE0(v68, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v45 = sub_1C8DCDD7C(v26, v22);
    sub_1C8DCE22C(v45, v46, v47);
    v48 = v70;
    OUTLINED_FUNCTION_44_11();
    sub_1C9064ACC();
    OUTLINED_FUNCTION_12_13();
    sub_1C8DCDF78(v49, v50, &protocol conformance descriptor for ComparisonPredicate.Template);
    sub_1C9064B8C();
    v51 = OUTLINED_FUNCTION_17_3();
    v52(v51);
    v53 = type metadata accessor for ComparisonPredicate.Template;
LABEL_6:
    sub_1C8DCD790(v22, v53);
    v42 = OUTLINED_FUNCTION_241();
    v44 = v48;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v22 = v64;
    v54 = sub_1C8DCDD7C(v26, v64);
    sub_1C8DCE130(v54, v55, v56);
    v48 = v70;
    OUTLINED_FUNCTION_44_11();
    sub_1C9064ACC();
    OUTLINED_FUNCTION_29_10();
    sub_1C8DCDF78(v57, v58, &protocol conformance descriptor for AnyPredicate);
    sub_1C9064B8C();
    v59 = OUTLINED_FUNCTION_17_3();
    v60(v59);
    v53 = type metadata accessor for AnyPredicate;
    goto LABEL_6;
  }

  sub_1C8DCE184(EnumCaseMultiPayload, v34, v35);
  v36 = v70;
  OUTLINED_FUNCTION_44_11();
  v37 = sub_1C9064ACC();
  sub_1C8DCE1D8(v37, v38, v39);
  v40 = v62;
  sub_1C9064B8C();
  OUTLINED_FUNCTION_40_8();
  v41(v14, v40);
  v42 = OUTLINED_FUNCTION_241();
  v44 = v36;
LABEL_7:
  v43(v42, v44);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t AnyPredicateTemplate.hash(into:)(uint64_t a1)
{
  v5 = type metadata accessor for AnyPredicate(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v7 = OUTLINED_FUNCTION_288_0();
  v8 = type metadata accessor for ComparisonPredicate.Template(v7);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v10 = OUTLINED_FUNCTION_32_7();
  type metadata accessor for AnyPredicateTemplate(v10);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_2_27();
  sub_1C8DCDFE0(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return MEMORY[0x1CCA82810](1);
    }

    else
    {
      OUTLINED_FUNCTION_1_36();
      sub_1C8DCDD7C(v4, v3);
      MEMORY[0x1CCA82810](2);
      AnyPredicate.hash(into:)();
      OUTLINED_FUNCTION_3_24();
      return sub_1C8DCD790(v3, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    sub_1C8DCDD7C(v4, v2);
    MEMORY[0x1CCA82810](0);
    sub_1C9063FBC();
    OUTLINED_FUNCTION_94();
    sub_1C9063FBC();
    TypeInstance.hash(into:)();
    ComparisonPredicate.Comparison.Template.hash(into:)();
    sub_1C906204C();
    sub_1C8DCDF78(&qword_1EDA666F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1C9063E7C();
    v14 = *(v2 + *(v8 + 28) + 32);
    switch(v14)
    {
      case 1u:
        MEMORY[0x1CCA82810](1);
        v22 = OUTLINED_FUNCTION_17_11();
        v27 = 1;
        goto LABEL_11;
      case 2u:
        MEMORY[0x1CCA82810](2);
        v22 = OUTLINED_FUNCTION_17_11();
        v27 = 2;
LABEL_11:
        sub_1C8D06F98(v22, v23, v24, v25, v27, v26);
        sub_1C9063FBC();
        goto LABEL_12;
      case 3u:
        MEMORY[0x1CCA82810](3);
        v15 = OUTLINED_FUNCTION_17_11();
        v20 = 3;
        goto LABEL_9;
      default:
        MEMORY[0x1CCA82810](0);
        v15 = OUTLINED_FUNCTION_17_11();
        v20 = 0;
LABEL_9:
        sub_1C8D06F98(v15, v16, v17, v18, v20, v19);
LABEL_12:
        sub_1C9063FBC();
        OUTLINED_FUNCTION_11_16();
        sub_1C8DCD790(v2, v28);
        v29 = OUTLINED_FUNCTION_17_11();
        result = sub_1C8D06FF4(v29, v30, v31, v32, v14);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8DCCEE0(uint64_t (*a1)(_BYTE *))
{
  sub_1C9064D7C();
  a1(v3);
  return sub_1C9064DBC();
}

void AnyPredicateTemplate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  a23 = v27;
  a24 = v28;
  v128 = v24;
  v30 = v29;
  v123 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315038, &qword_1C907ABA0);
  OUTLINED_FUNCTION_11();
  v119 = v32;
  v120 = v33;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  v126 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315040, &qword_1C907ABA8);
  OUTLINED_FUNCTION_11();
  v117 = v37;
  v118 = v36;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_97();
  v122 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315048, &qword_1C907ABB0);
  OUTLINED_FUNCTION_11();
  v115 = v41;
  v116 = v40;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_97();
  v121 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315050, &qword_1C907ABB8);
  OUTLINED_FUNCTION_11();
  v124 = v45;
  v125 = v44;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  v47 = OUTLINED_FUNCTION_58_6();
  v48 = type metadata accessor for AnyPredicateTemplate(v47);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25();
  v52 = v50 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = v110 - v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_35_10();
  MEMORY[0x1EEE9AC00](v57);
  v59 = v110 - v58;
  v60 = v30[3];
  v127 = v30;
  v61 = __swift_project_boxed_opaque_existential_1(v30, v60);
  sub_1C8DCE0DC(v61, v62, v63);
  v64 = v128;
  sub_1C9064DEC();
  if (v64)
  {
    goto LABEL_10;
  }

  v111 = v55;
  v112 = v52;
  v113 = v26;
  v114 = v48;
  v65 = v125;
  v128 = 0;
  v66 = sub_1C9064A9C();
  v70 = sub_1C8CB8914(v66, 0);
  if (v68 == v69 >> 1)
  {
LABEL_9:
    sub_1C90647DC();
    swift_allocError();
    v85 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v85 = v114;
    v86 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v86);
    OUTLINED_FUNCTION_10_0();
    (*(v87 + 104))(v85);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v124 + 8))(v25, v65);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v127);
LABEL_11:
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_198();
    return;
  }

  if (v68 < (v69 >> 1))
  {
    v71 = v25;
    v72 = *(v67 + v68);
    v73 = sub_1C8CB891C(v68 + 1, v69 >> 1, v70, v67, v68, v69);
    v75 = v74;
    v77 = v76;
    v78 = swift_unknownObjectRelease();
    v110[1] = v73;
    if (v75 == v77 >> 1)
    {
      if (v72)
      {
        v81 = v123;
        if (v72 != 1)
        {
          a14 = 2;
          sub_1C8DCE130(v78, v79, v80);
          OUTLINED_FUNCTION_43_9(&type metadata for AnyPredicateTemplate.PredicateCodingKeys, &a14);
          type metadata accessor for AnyPredicate(0);
          OUTLINED_FUNCTION_29_10();
          sub_1C8DCDF78(v92, v93, &protocol conformance descriptor for AnyPredicate);
          v94 = v112;
          v95 = v119;
          sub_1C9064A6C();
          v128 = 0;
          swift_unknownObjectRelease();
          v105 = OUTLINED_FUNCTION_241();
          v106(v105, v95);
          v107 = OUTLINED_FUNCTION_114();
          v108(v107);
          swift_storeEnumTagMultiPayload();
          v109 = v94;
          v83 = v127;
          v81 = v123;
LABEL_15:
          sub_1C8DCDD7C(v109, v59);
          sub_1C8DCDD7C(v59, v81);
          __swift_destroy_boxed_opaque_existential_1(v83);
          goto LABEL_11;
        }

        a13 = 1;
        sub_1C8DCE184(v78, v79, v80);
        v82 = OUTLINED_FUNCTION_43_9(&type metadata for AnyPredicateTemplate.StringSearchCodingKeys, &a13);
        v83 = v127;
        sub_1C8DCE280(v82, v90, v91);
        sub_1C9064A6C();
        v128 = 0;
        swift_unknownObjectRelease();
        v96 = OUTLINED_FUNCTION_59_6();
        v97(v96);
        v98 = OUTLINED_FUNCTION_22_16();
        v99(v98);
        v100 = v111;
      }

      else
      {
        a12 = 0;
        sub_1C8DCE22C(v78, v79, v80);
        OUTLINED_FUNCTION_43_9(&type metadata for AnyPredicateTemplate.ComparisonCodingKeys, &a12);
        v81 = v123;
        type metadata accessor for ComparisonPredicate.Template(0);
        OUTLINED_FUNCTION_12_13();
        sub_1C8DCDF78(v88, v89, &protocol conformance descriptor for ComparisonPredicate.Template);
        sub_1C9064A6C();
        v83 = v127;
        v128 = 0;
        swift_unknownObjectRelease();
        v101 = OUTLINED_FUNCTION_60_5();
        v102(v101);
        v103 = OUTLINED_FUNCTION_114();
        v104(v103);
        v100 = v113;
      }

      swift_storeEnumTagMultiPayload();
      v109 = v100;
      goto LABEL_15;
    }

    v25 = v71;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C8DCD718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

uint64_t sub_1C8DCD790(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C8DCD7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60DB0;
  if (!qword_1EDA60DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DB0);
  }

  return result;
}

unint64_t sub_1C8DCD83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314EF8;
  if (!qword_1EC314EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314EF8);
  }

  return result;
}

unint64_t sub_1C8DCD890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F00;
  if (!qword_1EC314F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F00);
  }

  return result;
}

unint64_t sub_1C8DCD8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F08;
  if (!qword_1EC314F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F08);
  }

  return result;
}

unint64_t sub_1C8DCD938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D88;
  if (!qword_1EDA60D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D88);
  }

  return result;
}

unint64_t sub_1C8DCD98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BF8;
  if (!qword_1EDA60BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BF8);
  }

  return result;
}

unint64_t sub_1C8DCD9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F10;
  if (!qword_1EC314F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F10);
  }

  return result;
}

unint64_t sub_1C8DCDA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA638A0;
  if (!qword_1EDA638A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA638A0);
  }

  return result;
}

unint64_t sub_1C8DCDA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F18;
  if (!qword_1EC314F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F18);
  }

  return result;
}

unint64_t sub_1C8DCDADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F20;
  if (!qword_1EC314F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F20);
  }

  return result;
}

unint64_t sub_1C8DCDB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F28;
  if (!qword_1EC314F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F28);
  }

  return result;
}

unint64_t sub_1C8DCDB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F30;
  if (!qword_1EC314F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F30);
  }

  return result;
}

unint64_t sub_1C8DCDBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F38;
  if (!qword_1EC314F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F38);
  }

  return result;
}

unint64_t sub_1C8DCDC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F40;
  if (!qword_1EC314F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F40);
  }

  return result;
}

unint64_t sub_1C8DCDC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F48;
  if (!qword_1EC314F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F48);
  }

  return result;
}

unint64_t sub_1C8DCDCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314F50;
  if (!qword_1EC314F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F50);
  }

  return result;
}

unint64_t sub_1C8DCDD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314FA8;
  if (!qword_1EC314FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314FA8);
  }

  return result;
}

uint64_t sub_1C8DCDD7C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v4(v3);
  OUTLINED_FUNCTION_13_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

unint64_t sub_1C8DCDDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63780;
  if (!qword_1EDA63780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63780);
  }

  return result;
}

unint64_t sub_1C8DCDE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63898;
  if (!qword_1EDA63898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63898);
  }

  return result;
}

unint64_t sub_1C8DCDE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314FB0;
  if (!qword_1EC314FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314FB0);
  }

  return result;
}

unint64_t sub_1C8DCDED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314FB8;
  if (!qword_1EC314FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314FB8);
  }

  return result;
}

unint64_t sub_1C8DCDF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314FC0;
  if (!qword_1EC314FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314FC0);
  }

  return result;
}

uint64_t sub_1C8DCDF78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8DCDFE0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v4(v3);
  OUTLINED_FUNCTION_13_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1CCA833A0);
  }

  return result;
}

unint64_t sub_1C8DCE088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314FE0;
  if (!qword_1EC314FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314FE0);
  }

  return result;
}

unint64_t sub_1C8DCE0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315018;
  if (!qword_1EC315018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315018);
  }

  return result;
}

unint64_t sub_1C8DCE130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315020;
  if (!qword_1EC315020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315020);
  }

  return result;
}

unint64_t sub_1C8DCE184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315028;
  if (!qword_1EC315028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315028);
  }

  return result;
}

unint64_t sub_1C8DCE1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63240;
  if (!qword_1EDA63240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63240);
  }

  return result;
}

unint64_t sub_1C8DCE22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315030;
  if (!qword_1EC315030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315030);
  }

  return result;
}

unint64_t sub_1C8DCE280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63238;
  if (!qword_1EDA63238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63238);
  }

  return result;
}

uint64_t sub_1C8DCE2D4(void *a1)
{
  a1[1] = sub_1C8DCDF78(&qword_1EC315060, type metadata accessor for AnyPredicate, &protocol conformance descriptor for AnyPredicate);
  a1[2] = sub_1C8DCDF78(&qword_1EC315058, type metadata accessor for AnyPredicate, &protocol conformance descriptor for AnyPredicate);
  a1[3] = sub_1C8DCDF78(&qword_1EDA60D10, type metadata accessor for AnyPredicate, &protocol conformance descriptor for AnyPredicate);
  result = sub_1C8DCDF78(&qword_1EC315068, type metadata accessor for AnyPredicate, &protocol conformance descriptor for AnyPredicate);
  a1[4] = result;
  return result;
}

uint64_t sub_1C8DCE438(void *a1)
{
  a1[1] = sub_1C8DCDF78(&qword_1EC315080, type metadata accessor for AnyPredicateTemplate, &protocol conformance descriptor for AnyPredicateTemplate);
  a1[2] = sub_1C8DCDF78(&qword_1EC315088, type metadata accessor for AnyPredicateTemplate, &protocol conformance descriptor for AnyPredicateTemplate);
  a1[3] = sub_1C8DCDF78(&qword_1EC315090, type metadata accessor for AnyPredicateTemplate, &protocol conformance descriptor for AnyPredicateTemplate);
  result = sub_1C8DCDF78(&qword_1EC315098, type metadata accessor for AnyPredicateTemplate, &protocol conformance descriptor for AnyPredicateTemplate);
  a1[4] = result;
  return result;
}

uint64_t sub_1C8DCE554(uint64_t a1)
{
  result = type metadata accessor for ComparisonPredicate(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C8DCE604(uint64_t a1)
{
  result = type metadata accessor for ComparisonPredicate.Template(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AnyPredicate(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnyPredicateTemplate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TypeRecord.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnyPredicate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8DCE970(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8DCEA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3150B8;
  if (!qword_1EC3150B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150B8);
  }

  return result;
}

unint64_t sub_1C8DCEA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3150C0;
  if (!qword_1EC3150C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150C0);
  }

  return result;
}

unint64_t sub_1C8DCEAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3150C8;
  if (!qword_1EC3150C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150C8);
  }

  return result;
}

unint64_t sub_1C8DCEB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3150D0;
  if (!qword_1EC3150D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150D0);
  }

  return result;
}

unint64_t sub_1C8DCEB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3150D8;
  if (!qword_1EC3150D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150D8);
  }

  return result;
}

unint64_t sub_1C8DCEBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3150E0;
  if (!qword_1EC3150E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150E0);
  }

  return result;
}

unint64_t sub_1C8DCEC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3150E8;
  if (!qword_1EC3150E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150E8);
  }

  return result;
}

unint64_t sub_1C8DCEC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3150F0;
  if (!qword_1EC3150F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150F0);
  }

  return result;
}

unint64_t sub_1C8DCECE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3150F8;
  if (!qword_1EC3150F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150F8);
  }

  return result;
}

unint64_t sub_1C8DCED38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315100;
  if (!qword_1EC315100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315100);
  }

  return result;
}

unint64_t sub_1C8DCED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315108;
  if (!qword_1EC315108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315108);
  }

  return result;
}

unint64_t sub_1C8DCEDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315110;
  if (!qword_1EC315110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315110);
  }

  return result;
}

unint64_t sub_1C8DCEE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315118;
  if (!qword_1EC315118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315118);
  }

  return result;
}

unint64_t sub_1C8DCEE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315120;
  if (!qword_1EC315120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315120);
  }

  return result;
}

unint64_t sub_1C8DCEEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315128;
  if (!qword_1EC315128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315128);
  }

  return result;
}

unint64_t sub_1C8DCEF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315130;
  if (!qword_1EC315130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315130);
  }

  return result;
}

unint64_t sub_1C8DCEFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315138;
  if (!qword_1EC315138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315138);
  }

  return result;
}

unint64_t sub_1C8DCEFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315140;
  if (!qword_1EC315140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315140);
  }

  return result;
}

unint64_t sub_1C8DCF050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315148;
  if (!qword_1EC315148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315148);
  }

  return result;
}

unint64_t sub_1C8DCF0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315150;
  if (!qword_1EC315150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315150);
  }

  return result;
}

unint64_t sub_1C8DCF100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315158;
  if (!qword_1EC315158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315158);
  }

  return result;
}

unint64_t sub_1C8DCF158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315160;
  if (!qword_1EC315160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315160);
  }

  return result;
}

unint64_t sub_1C8DCF1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D38;
  if (!qword_1EDA60D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D38);
  }

  return result;
}

unint64_t sub_1C8DCF208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D40;
  if (!qword_1EDA60D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D40);
  }

  return result;
}

unint64_t sub_1C8DCF260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D68;
  if (!qword_1EDA60D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D68);
  }

  return result;
}

unint64_t sub_1C8DCF2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D70;
  if (!qword_1EDA60D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D70);
  }

  return result;
}

unint64_t sub_1C8DCF310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D30;
  if (!qword_1EDA60D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D30);
  }

  return result;
}

unint64_t sub_1C8DCF368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D28;
  if (!qword_1EDA60D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D28);
  }

  return result;
}

unint64_t sub_1C8DCF3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D58;
  if (!qword_1EDA60D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D58);
  }

  return result;
}

unint64_t sub_1C8DCF418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D60;
  if (!qword_1EDA60D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D60);
  }

  return result;
}

unint64_t sub_1C8DCF470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D18;
  if (!qword_1EDA60D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D18);
  }

  return result;
}

unint64_t sub_1C8DCF4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D20;
  if (!qword_1EDA60D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D20);
  }

  return result;
}

unint64_t sub_1C8DCF520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D90;
  if (!qword_1EDA60D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D90);
  }

  return result;
}

unint64_t sub_1C8DCF578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D98;
  if (!qword_1EDA60D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D98);
  }

  return result;
}

unint64_t sub_1C8DCF5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D78;
  if (!qword_1EDA60D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D78);
  }

  return result;
}

unint64_t sub_1C8DCF628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D80;
  if (!qword_1EDA60D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D80);
  }

  return result;
}

unint64_t sub_1C8DCF680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D48;
  if (!qword_1EDA60D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D48);
  }

  return result;
}

unint64_t sub_1C8DCF6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60D50;
  if (!qword_1EDA60D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D50);
  }

  return result;
}

unint64_t sub_1C8DCF730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315168;
  if (!qword_1EC315168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315168);
  }

  return result;
}

unint64_t sub_1C8DCF788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315170;
  if (!qword_1EC315170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315170);
  }

  return result;
}

unint64_t sub_1C8DCF7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60DA0;
  if (!qword_1EDA60DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DA0);
  }

  return result;
}

unint64_t sub_1C8DCF838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60DA8;
  if (!qword_1EDA60DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DA8);
  }

  return result;
}

unint64_t sub_1C8DCF88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315178;
  if (!qword_1EC315178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315178);
  }

  return result;
}

unint64_t sub_1C8DCF8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BD8;
  if (!qword_1EDA60BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BD8);
  }

  return result;
}

unint64_t sub_1C8DCF934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315180;
  if (!qword_1EC315180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315180);
  }

  return result;
}

unint64_t sub_1C8DCF988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315188;
  if (!qword_1EC315188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315188);
  }

  return result;
}

unint64_t sub_1C8DCF9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315190;
  if (!qword_1EC315190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315190);
  }

  return result;
}

unint64_t sub_1C8DCFA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315198;
  if (!qword_1EC315198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315198);
  }

  return result;
}

unint64_t sub_1C8DCFA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3151A0;
  if (!qword_1EC3151A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_15(uint64_t a1, uint64_t a2)
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_51_7(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t sub_1C8DCFB58()
{
  v0 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v0, qword_1EC390940);
  v1 = __swift_project_value_buffer(v0, qword_1EC390940);
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC390958);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C8DCFC20(uint64_t result)
{
  if (result >= 9u)
  {
    return 9;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1C8DCFC4C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C8DCFC20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C8DCFC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DD2414(a1, a2, a3);
  v6 = MEMORY[0x1E69A01E0];

  return MEMORY[0x1EEE096B8](a1, a2, v5, v6);
}

uint64_t sub_1C8DCFD84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C90C98E0 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x46656D69746E7572 && a2 == 0xEC0000007367616CLL;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x80000001C90CAB00 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

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

unint64_t sub_1C8DCFF70(char a1)
{
  result = 0x6449776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x46656D69746E7572;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8DD0020(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3151E8, &qword_1C907C098);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v24 = *(v1 + 16);
  v23 = *(v1 + 24);
  v9 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = v9;
  v20 = *(v1 + 48);
  v19 = *(v1 + 56);
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD1C78(v10, v11, v12);
  sub_1C9064E1C();
  LOBYTE(v27) = 0;
  v13 = v25;
  sub_1C9064B2C();
  if (!v13)
  {
    v14 = v23;
    v27 = v24;
    v26 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3151E0, &qword_1C907C090);
    sub_1C8DD1DC0(&qword_1EC3151F0);
    OUTLINED_FUNCTION_7_19();
    sub_1C9064B8C();

    LOBYTE(v27) = v14;
    v26 = 2;
    sub_1C8DD1E28(v15, v16, v17);
    sub_1C9064B8C();
    LOBYTE(v27) = 3;
    sub_1C9064B9C();
    LOBYTE(v27) = 4;
    sub_1C9064AFC();
    v27 = v19;
    v26 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
    sub_1C8DD1D20(&qword_1EC3131E0);
    OUTLINED_FUNCTION_7_19();
    sub_1C9064B0C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C8DD030C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3151D8, &qword_1C907C088);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD1C78(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30[0]) = 0;
  OUTLINED_FUNCTION_9_17();
  v9 = sub_1C9064A0C();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3151E0, &qword_1C907C090);
  sub_1C8DD1DC0(&qword_1EDA69118);
  OUTLINED_FUNCTION_7_19();
  v12 = sub_1C9064A6C();
  v25 = v30[0];
  LOBYTE(v26) = 2;
  sub_1C8DD1CCC(v12, v13, v14);
  sub_1C9064A6C();
  OUTLINED_FUNCTION_9_17();
  v24 = sub_1C9064A7C();
  LOBYTE(v30[0]) = 4;
  OUTLINED_FUNCTION_9_17();
  v23 = sub_1C90649DC();
  v37 = v15 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
  v38 = 5;
  sub_1C8DD1D20(&qword_1EDA69140);
  OUTLINED_FUNCTION_7_19();
  sub_1C90649EC();
  v16 = OUTLINED_FUNCTION_5_9();
  v17(v16);
  v22 = v36;
  *&v26 = v9;
  *(&v26 + 1) = v11;
  *&v27 = v25;
  BYTE8(v27) = 0;
  *&v28 = v24;
  *(&v28 + 1) = v23;
  v21 = v37;
  LOBYTE(v29) = v37;
  *(&v29 + 1) = v36;
  v18 = v27;
  *a2 = v26;
  a2[1] = v18;
  v19 = v29;
  a2[2] = v28;
  a2[3] = v19;
  sub_1C8DD1D88(&v26, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30[0] = v9;
  v30[1] = v11;
  v30[2] = v25;
  v31 = 0;
  v32 = v24;
  v33 = v23;
  v34 = v21;
  v35 = v22;
  return sub_1C8D167C0(v30);
}

uint64_t sub_1C8DD06AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DCFD84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DD06D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD1C78(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DD0710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD1C78(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DD0760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8DD1B44(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8DD0884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8D16814(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8DD08E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8DD1B98(a1, a2, a3);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C8DD099C(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = __swift_project_value_buffer(v4, a2);
  sub_1C8DD1C78(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C8DD0A18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_142();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315238, &qword_1C907C0B0);
  __swift_allocate_value_buffer(v3, qword_1EC3909E8);
  v4 = OUTLINED_FUNCTION_4_19();
  v5 = OUTLINED_FUNCTION_3_25(v4);
  sub_1C8D24BA0(v5, v6, v7);
  OUTLINED_FUNCTION_0_41();
  sub_1C906254C();
  return sub_1C8DD1ED0(v0);
}

uint64_t sub_1C8DD0AD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_142();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315228, &unk_1C9084E30);
  __swift_allocate_value_buffer(v3, qword_1EC390A00);
  v4 = OUTLINED_FUNCTION_4_19();
  v5 = OUTLINED_FUNCTION_3_25(v4);
  sub_1C8DD2054(v5, v6, v7);
  OUTLINED_FUNCTION_0_41();
  sub_1C906251C();
  return sub_1C8DD1ED0(v0);
}

uint64_t sub_1C8DD0B98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_142();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315218, &qword_1C907C0A8);
  __swift_allocate_value_buffer(v3, qword_1EC390A18);
  v4 = OUTLINED_FUNCTION_4_19();
  v5 = OUTLINED_FUNCTION_3_25(v4);
  sub_1C8DD2000(v5, v6, v7);
  OUTLINED_FUNCTION_0_41();
  sub_1C906251C();
  return sub_1C8DD1ED0(v0);
}

uint64_t sub_1C8DD0C58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_142();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315240, &qword_1C907C0B8);
  __swift_allocate_value_buffer(v3, qword_1EC390A30);
  v4 = OUTLINED_FUNCTION_4_19();
  v5 = OUTLINED_FUNCTION_3_25(v4);
  sub_1C8DD20A8(v5, v6, v7);
  OUTLINED_FUNCTION_0_41();
  sub_1C906251C();
  return sub_1C8DD1ED0(v0);
}

uint64_t sub_1C8DD0D18()
{
  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_55_1();
  if (qword_1EC311208 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC3907B0);
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_58(v6);
  result = v8(v7);
  qword_1EC390A48 = sub_1C8DD1F50;
  unk_1EC390A50 = v2;
  return result;
}

uint64_t sub_1C8DD0E40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_142();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315210, &qword_1C907C0A0);
  __swift_allocate_value_buffer(v3, qword_1EC390A58);
  v4 = OUTLINED_FUNCTION_4_19();
  v5 = OUTLINED_FUNCTION_3_25(v4);
  sub_1C8D24E00(v5, v6, v7);
  OUTLINED_FUNCTION_0_41();
  sub_1C906251C();
  return sub_1C8DD1ED0(v0);
}

uint64_t sub_1C8DD0F00()
{
  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_55_1();
  if (qword_1EC312118 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC391058);
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_58(v6);
  result = v8(v7);
  qword_1EC390A70 = sub_1C8DD1F38;
  *algn_1EC390A78 = v2;
  return result;
}

uint64_t sub_1C8DD1028()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_142();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315200, &unk_1C9084E10);
  __swift_allocate_value_buffer(v3, qword_1EC390A80);
  v4 = OUTLINED_FUNCTION_4_19();
  v5 = OUTLINED_FUNCTION_3_25(v4);
  sub_1C8DD1E7C(v5, v6, v7);
  OUTLINED_FUNCTION_0_41();
  sub_1C90624EC();
  return sub_1C8DD1ED0(v0);
}

uint64_t String.init(typeIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  switch(*a1 >> 61)
  {
    case 1uLL:
      v17 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      switch(v17)
      {
        case 0uLL:
        case 3uLL:
        case 5uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xDuLL:
          OUTLINED_FUNCTION_2_28();
          break;
        case 1uLL:
        case 0xFuLL:

          OUTLINED_FUNCTION_14_19();
          OUTLINED_FUNCTION_16();
          v5 = v18 | 3;
          break;
        case 2uLL:
        case 4uLL:
        case 6uLL:
        case 0xEuLL:
          OUTLINED_FUNCTION_12_14();

          OUTLINED_FUNCTION_14_19();
          break;
        case 7uLL:

          OUTLINED_FUNCTION_14_19();
          goto LABEL_54;
        case 8uLL:

          OUTLINED_FUNCTION_14_19();
          goto LABEL_31;
        case 0xBuLL:

          OUTLINED_FUNCTION_14_19();
          goto LABEL_49;
        case 0xCuLL:

          OUTLINED_FUNCTION_14_19();
          goto LABEL_45;
        default:
          v29 = 0;
          sub_1C8D3F120(v17);

          sub_1C906478C();
          MEMORY[0x1CCA81A90](0x2E6E69746C697562, 0xEE002E7972657571);
          sub_1C90648BC();

          sub_1C8D3F130(v17);
          goto LABEL_6;
      }

      break;
    case 2uLL:
      v7 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v8 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v29 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      OUTLINED_FUNCTION_18_12();
      MEMORY[0x1CCA81A90](v7, v8);
LABEL_6:

      goto LABEL_13;
    case 3uLL:
      v10 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v9 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v12 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v11 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x68);
      v14 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0xE0);
      v13 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0xE8);

      sub_1C906478C();

      v29 = 0x7475626972747461;
      if (v11)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      if (!v11)
      {
        v11 = 0xE000000000000000;
      }

      MEMORY[0x1CCA81A90](v15, v11);

      OUTLINED_FUNCTION_18_12();
      MEMORY[0x1CCA81A90](v10, v9);

      OUTLINED_FUNCTION_18_12();
      MEMORY[0x1CCA81A90](v14, v13);

LABEL_13:
      v5 = v29;
      break;
    case 4uLL:
      v5 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

LABEL_4:

      break;
    default:
      switch(*(v6 + 16))
      {
        case 1:
        case 9:
        case 0x21:
          OUTLINED_FUNCTION_12_14();
          OUTLINED_FUNCTION_1_37(v23);
          goto LABEL_4;
        case 2:
        case 0x12:
          OUTLINED_FUNCTION_1_37(v6);

LABEL_45:
          OUTLINED_FUNCTION_16();
          return v24 | 7;
        case 4:
        case 8:
        case 0x14:
          OUTLINED_FUNCTION_1_37(v6);

LABEL_49:
          OUTLINED_FUNCTION_16();
          return v25 | 1;
        case 6:
        case 0x15:
        case 0x2E:
          OUTLINED_FUNCTION_1_37(v6);

          OUTLINED_FUNCTION_16();
          return v28 | 4;
        case 7:
          OUTLINED_FUNCTION_1_37(v6);

          OUTLINED_FUNCTION_16();
          return v22 | 8;
        case 0xA:
          OUTLINED_FUNCTION_1_37(v6);

          v19 = 13;
          goto LABEL_47;
        case 0xB:
          OUTLINED_FUNCTION_1_37(v6);

          OUTLINED_FUNCTION_16();
          return v21 | 6;
        case 0xC:
        case 0x11:
          OUTLINED_FUNCTION_1_37(v6);

          v19 = 10;
          goto LABEL_47;
        case 0xD:
          OUTLINED_FUNCTION_1_37(v6);

          v19 = 11;
          goto LABEL_47;
        case 0xE:
          OUTLINED_FUNCTION_1_37(v6);

          OUTLINED_FUNCTION_16();
          return v20 + 23;
        case 0xF:
        case 0x13:
          OUTLINED_FUNCTION_1_37(v6);

          OUTLINED_FUNCTION_16();
          return v27 | 0xE;
        case 0x10:
          OUTLINED_FUNCTION_1_37(v6);

LABEL_31:
          v19 = 5;
LABEL_47:
          v5 = v19 | 0xD000000000000010;
          break;
        case 0x17:

          v5 = 1701736302;
          break;
        case 0x18:

          v5 = 1819242338;
          break;
        case 0x19:

          v5 = 7630441;
          break;
        case 0x1A:

          v5 = 0x7265626D756ELL;
          break;
        case 0x1B:

          v5 = 0x6C616D69636564;
          break;
        case 0x1C:

          v5 = 0x676E69727473;
          break;
        case 0x1D:

          v5 = 1702125924;
          break;
        case 0x1E:

          v5 = 0x706D6F4365746164;
          break;
        case 0x1F:

          v5 = 7107189;
          break;
        case 0x20:

          v5 = 0x616E6F6974636964;
          break;
        case 0x22:

          v5 = 0x79636E6572727563;
          break;
        case 0x23:

          v5 = 0x4D746E656D796170;
          break;
        case 0x24:

          v5 = 0x72616D6563616C70;
          break;
        case 0x25:

          v5 = 0x6E6F73726570;
          break;
        case 0x26:

          v5 = 1701603686;
          break;
        case 0x27:

          v5 = 7368801;
          break;
        case 0x28:

          v5 = 0x6261686372616573;
          break;
        case 0x29:

          v5 = 0x6E65727275636572;
          break;
        case 0x2A:

          v5 = 0x4673746E65746E69;
          break;
        case 0x2B:

          v5 = 0x74756374726F6873;
          break;
        case 0x2C:

          v5 = 0x65746E4965746164;
          break;
        case 0x2D:

          v5 = 0x6E6F697461727564;
          break;
        default:
          OUTLINED_FUNCTION_1_37(v6);

LABEL_54:
          OUTLINED_FUNCTION_16();
          v5 = v26 | 2;
          break;
      }

      break;
  }

  return v5;
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

uint64_t sub_1C8DD19B4(uint64_t a1, int a2)
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

uint64_t sub_1C8DD19F4(uint64_t result, int a2, int a3)
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

unint64_t sub_1C8DD1A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3151B0;
  if (!qword_1EC3151B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151B0);
  }

  return result;
}

unint64_t sub_1C8DD1AB0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD1AF0(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8DD1B44(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D16814(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8DD1B98(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8DD1AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3151B8;
  if (!qword_1EC3151B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151B8);
  }

  return result;
}

unint64_t sub_1C8DD1B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3151C0;
  if (!qword_1EC3151C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151C0);
  }

  return result;
}

unint64_t sub_1C8DD1B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3151C8;
  if (!qword_1EC3151C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151C8);
  }

  return result;
}

unint64_t sub_1C8DD1BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8DD1C20(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8DD1C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3151D0;
  if (!qword_1EC3151D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151D0);
  }

  return result;
}

unint64_t sub_1C8DD1C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66B28[0];
  if (!qword_1EDA66B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA66B28);
  }

  return result;
}

unint64_t sub_1C8DD1CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66B08;
  if (!qword_1EDA66B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66B08);
  }

  return result;
}

uint64_t sub_1C8DD1D20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131B8, &unk_1C906B520);
    v6 = sub_1C8D21FDC(v3, v4, v5);
    v9 = sub_1C8D22030(v6, v7, v8);
    result = OUTLINED_FUNCTION_43(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8DD1DC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3151E0, &qword_1C907C090);
    v6 = sub_1C8CB892C(v3, v4, v5);
    v9 = sub_1C8C9FB9C(v6, v7, v8);
    result = OUTLINED_FUNCTION_43(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8DD1E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3151F8;
  if (!qword_1EC3151F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151F8);
  }

  return result;
}

unint64_t sub_1C8DD1E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315208;
  if (!qword_1EC315208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315208);
  }

  return result;
}

uint64_t sub_1C8DD1ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8DD1F68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1C9062E6C();
  OUTLINED_FUNCTION_9(v6);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(a1, a2, v8);
}

unint64_t sub_1C8DD2000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315220;
  if (!qword_1EC315220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315220);
  }

  return result;
}

unint64_t sub_1C8DD2054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315230;
  if (!qword_1EC315230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315230);
  }

  return result;
}

unint64_t sub_1C8DD20A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315248;
  if (!qword_1EC315248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315248);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypeRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TypeRecord.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DD22B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315250;
  if (!qword_1EC315250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315250);
  }

  return result;
}

unint64_t sub_1C8DD2310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315258;
  if (!qword_1EC315258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315258);
  }

  return result;
}

unint64_t sub_1C8DD2368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66B18;
  if (!qword_1EDA66B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66B18);
  }

  return result;
}

unint64_t sub_1C8DD23C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66B20;
  if (!qword_1EDA66B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66B20);
  }

  return result;
}

unint64_t sub_1C8DD2414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66B10;
  if (!qword_1EDA66B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66B10);
  }

  return result;
}

uint64_t sub_1C8DD2468()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315270, &qword_1C907C340);
  __swift_allocate_value_buffer(v0, qword_1EC390A98);
  __swift_project_value_buffer(v0, qword_1EC390A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315280, &unk_1C907C3F0);
  return sub_1C906330C();
}

uint64_t ActionProvider.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315260, &qword_1C907C330);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315268, &qword_1C907C338);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31[-v11];
  OUTLINED_FUNCTION_1_3();
  v14 = a1 == 0xD000000000000014 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_2_29(0xD000000000000014, v13) & 1) != 0)
  {

    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  OUTLINED_FUNCTION_1_3();
  v17 = a1 == 0xD000000000000016 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_2_29(0xD000000000000016, v16) & 1) != 0)
  {

    v18 = xmmword_1C90747F0;
LABEL_13:
    *a3 = v18;
    return result;
  }

  OUTLINED_FUNCTION_1_3();
  v20 = a1 == 0xD000000000000017 && v19 == a2;
  if (v20 || (OUTLINED_FUNCTION_2_29(0xD000000000000017, v19) & 1) != 0)
  {

    v18 = xmmword_1C907C320;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_1_3();
  v22 = a1 == 0xD00000000000001BLL && v21 == a2;
  if (v22 || (OUTLINED_FUNCTION_2_29(0xD00000000000001BLL, v21) & 1) != 0)
  {

    v18 = xmmword_1C907C310;
    goto LABEL_13;
  }

  v23 = OUTLINED_FUNCTION_3_26();
  v25 = a1 == v23 && a2 == v24;
  if (v25 || (OUTLINED_FUNCTION_2_29(v23, 0xEA00000000006E6FLL) & 1) != 0)
  {

    v18 = xmmword_1C907C300;
    goto LABEL_13;
  }

  if (qword_1EC311330 != -1)
  {
    swift_once();
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315270, &qword_1C907C340);
  v27 = __swift_project_value_buffer(v26, qword_1EC390A98);
  sub_1C8DD283C(v27, a1, a2);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_1C8DD29F8(v8);
    v18 = xmmword_1C907C2F0;
    goto LABEL_13;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1C906335C();

  v28 = MEMORY[0x1CCA81A20](v32, v33, v34, v35);
  v30 = v29;

  result = (*(v10 + 8))(v12, v9);
  *a3 = v28;
  a3[1] = v30;
  return result;
}

uint64_t sub_1C8DD283C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315270, &qword_1C907C340);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1C8DD2C8C(sub_1C8DD2C88, 0, a2, a3);
  sub_1C8DD2CC0();
  sub_1C90632EC();
  sub_1C906333C();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C8DD29F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315260, &qword_1C907C330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ActionProvider.rawValue.getter()
{
  v1 = v0[1];
  OUTLINED_FUNCTION_3_26();
  switch(v1)
  {
    case 0:
      OUTLINED_FUNCTION_1_3();
      break;
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_0_42();
      break;
    case 4:
      return;
    default:
      v2 = *v0;
      sub_1C906478C();

      strcpy(v3, "remoteDevice(");
      MEMORY[0x1CCA81A90](v2, v1);
      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      break;
  }
}

void sub_1C8DD2B90(void *a1@<X8>)
{
  ActionProvider.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit14ActionProviderO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8DD2BD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8DD2C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1C8DD2CC0()
{
  result = qword_1EC315278;
  if (!qword_1EC315278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC315270, &qword_1C907C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315278);
  }

  return result;
}

ToolKit::IntentStateChange sub_1C8DD2EF8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = IntentStateChange.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C8DD2F38@<X0>(uint64_t *a1@<X8>)
{
  result = IntentStateChange.rawValue.getter();
  *a1 = result;
  return result;
}

void IntentSideEffect.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 effect];
  if (v4 == 1)
  {
    v6 = [a1 changeEffect];

    v7 = 0;
    if (v6 == -1)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    if ((v6 & 1) != 0 && v6 + 1 != 0)
    {
      v8 = 1;
    }

    v10 = v8 | v6 & 0x100;
    v11 = (v8 >> 9) & 1;
    if ((v6 & 0x200) == 0)
    {
      LODWORD(v11) = 1;
    }

    if (v11)
    {
      v5 = v10;
    }

    else
    {
      v5 = v10 | 0x200;
    }

    goto LABEL_20;
  }

  if (!v4)
  {

    v5 = 1;
LABEL_19:
    v7 = 1;
LABEL_20:
    *a2 = v5;
    *(a2 + 8) = v7;
    return;
  }

  if (v4 == -1)
  {

    v5 = 0;
    goto LABEL_19;
  }

  sub_1C906491C();
  __break(1u);
}

uint64_t static IntentSideEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C8DD30B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701736302 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6168436574617473 && a2 == 0xEB0000000065676ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8DD31C4(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 1701736302;
  }

  return 0x6168436574617473;
}

uint64_t sub_1C8DD3224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DD30B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DD324C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD3EE0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DD3288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD3EE0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DD32C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD3FDC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DD3300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD3FDC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DD333C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD3F34(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DD3378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD3F34(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DD33B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD4030(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DD33F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD4030(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t IntentSideEffect.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315288, &qword_1C907C400);
  OUTLINED_FUNCTION_11();
  v46 = v4;
  v47 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97();
  v45 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315290, &qword_1C907C408);
  OUTLINED_FUNCTION_11();
  v43 = v8;
  v44 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v42 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315298, &qword_1C907C410);
  OUTLINED_FUNCTION_11();
  v40 = v12;
  v41 = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  v39 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3152A0, &qword_1C907C418);
  OUTLINED_FUNCTION_11();
  v17 = v16;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = *v1;
  v22 = *(v1 + 8);
  v23 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD3EE0(v23, v24, v25);
  v26 = sub_1C9064E1C();
  if (v22 == 1)
  {
    if (v21)
    {
      v50 = 1;
      sub_1C8DD3FDC(v26, v27, v28);
      v29 = v42;
      OUTLINED_FUNCTION_6_17(&type metadata for IntentSideEffect.NoneCodingKeys);
      v31 = v43;
      v30 = v44;
    }

    else
    {
      v49 = 0;
      sub_1C8DD4030(v26, v27, v28);
      v29 = v39;
      OUTLINED_FUNCTION_6_17(&type metadata for IntentSideEffect.UnknownCodingKeys);
      v31 = v40;
      v30 = v41;
    }

    (*(v31 + 8))(v29, v30);
    return (*(v17 + 8))(v20, v15);
  }

  else
  {
    v51 = 2;
    sub_1C8DD3F34(v26, v27, v28);
    v32 = v45;
    v33 = OUTLINED_FUNCTION_6_17(&type metadata for IntentSideEffect.StateChangeCodingKeys);
    v48 = v21;
    sub_1C8DD3F88(v33, v34, v35);
    v36 = v47;
    sub_1C9064B8C();
    (*(v46 + 8))(v32, v36);
    return (*(v17 + 8))(v20, v15);
  }
}

uint64_t IntentSideEffect.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1CCA82810](2);
  }

  return MEMORY[0x1CCA82810](v1);
}

uint64_t IntentSideEffect.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C9064D7C();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1CCA82810](2);
  }

  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

uint64_t IntentSideEffect.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3152C0, &qword_1C907C420);
  OUTLINED_FUNCTION_11();
  v67 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_97();
  v69 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3152C8, &qword_1C907C428);
  OUTLINED_FUNCTION_11();
  v63 = v6;
  v64 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3152D0, &qword_1C907C430);
  OUTLINED_FUNCTION_11();
  v62 = v12;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3152D8, &unk_1C907C438);
  OUTLINED_FUNCTION_11();
  v68 = v17;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v59 - v19;
  v21 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD3EE0(v21, v22, v23);
  v24 = v70;
  sub_1C9064DEC();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v60 = v11;
  v61 = v15;
  v25 = v69;
  v70 = a1;
  v26 = v20;
  v27 = sub_1C9064A9C();
  result = sub_1C8CB8914(v27, 0);
  if (v30 == v31 >> 1)
  {
LABEL_9:
    v45 = sub_1C90647DC();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v47 = &type metadata for IntentSideEffect;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v26, v16);
    a1 = v70;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v59[1] = 0;
  if (v30 < (v31 >> 1))
  {
    v32 = v20;
    v33 = *(v29 + v30);
    sub_1C8CB891C(v30 + 1, v31 >> 1, result, v29, v30, v31);
    v35 = v34;
    v37 = v36;
    v38 = swift_unknownObjectRelease();
    v41 = v67;
    if (v35 == v37 >> 1)
    {
      if (v33)
      {
        if (v33 != 1)
        {
          v74 = 2;
          sub_1C8DD3F34(v38, v39, v40);
          v49 = OUTLINED_FUNCTION_4_20(&type metadata for IntentSideEffect.StateChangeCodingKeys, &v74);
          v50 = v66;
          sub_1C8DD4084(v49, v53, v54);
          v55 = v65;
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          (*(v41 + 8))(v25, v55);
          v56 = OUTLINED_FUNCTION_1_38();
          v57(v56);
          v58 = 0;
          v44 = v71;
LABEL_14:
          *v50 = v44;
          *(v50 + 8) = v58;
          return __swift_destroy_boxed_opaque_existential_1(v70);
        }

        v73 = 1;
        sub_1C8DD3FDC(v38, v39, v40);
        OUTLINED_FUNCTION_4_20(&type metadata for IntentSideEffect.NoneCodingKeys, &v73);
        swift_unknownObjectRelease();
        (*(v64 + 8))(v10, v63);
        v42 = OUTLINED_FUNCTION_5_21();
        v43(v42);
        v44 = 1;
      }

      else
      {
        v72 = 0;
        sub_1C8DD4030(v38, v39, v40);
        v48 = v61;
        OUTLINED_FUNCTION_4_20(&type metadata for IntentSideEffect.UnknownCodingKeys, &v72);
        swift_unknownObjectRelease();
        (*(v62 + 8))(v48, v60);
        v51 = OUTLINED_FUNCTION_5_21();
        v52(v51);
        v44 = 0;
      }

      v58 = 1;
      v50 = v66;
      goto LABEL_14;
    }

    v26 = v32;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8DD3E74(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1C9064D7C();
  if (v3 == 1)
  {
    v2 = v2 != 0;
  }

  else
  {
    MEMORY[0x1CCA82810](2);
  }

  MEMORY[0x1CCA82810](v2);
  return sub_1C9064DBC();
}

unint64_t sub_1C8DD3EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BA0;
  if (!qword_1EDA69BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BA0);
  }

  return result;
}

unint64_t sub_1C8DD3F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3152A8;
  if (!qword_1EC3152A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152A8);
  }

  return result;
}

unint64_t sub_1C8DD3F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3152B0;
  if (!qword_1EC3152B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152B0);
  }

  return result;
}

unint64_t sub_1C8DD3FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3152B8;
  if (!qword_1EC3152B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152B8);
  }

  return result;
}

unint64_t sub_1C8DD4030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B78;
  if (!qword_1EDA69B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B78);
  }

  return result;
}

unint64_t sub_1C8DD4084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3152E0;
  if (!qword_1EC3152E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152E0);
  }

  return result;
}

unint64_t sub_1C8DD40DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3152E8;
  if (!qword_1EC3152E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152E8);
  }

  return result;
}

unint64_t sub_1C8DD4134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3152F0;
  if (!qword_1EC3152F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152F0);
  }

  return result;
}

unint64_t sub_1C8DD4188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3152F8;
  if (!qword_1EC3152F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152F8);
  }

  return result;
}

unint64_t sub_1C8DD41E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315300;
  if (!qword_1EC315300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315300);
  }

  return result;
}

unint64_t sub_1C8DD4238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315308;
  if (!qword_1EC315308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentStateChange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntentSideEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntentSideEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C8DD4320(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8DD433C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentSideEffect.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for IntentSideEffect.StateChangeCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8DD4518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315310;
  if (!qword_1EC315310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315310);
  }

  return result;
}

unint64_t sub_1C8DD4570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315318;
  if (!qword_1EC315318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315318);
  }

  return result;
}

unint64_t sub_1C8DD45C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B68;
  if (!qword_1EDA69B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B68);
  }

  return result;
}

unint64_t sub_1C8DD4620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B70;
  if (!qword_1EDA69B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B70);
  }

  return result;
}

unint64_t sub_1C8DD4678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B80;
  if (!qword_1EDA69B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B80);
  }

  return result;
}

unint64_t sub_1C8DD46D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B88;
  if (!qword_1EDA69B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B88);
  }

  return result;
}

unint64_t sub_1C8DD4728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B58;
  if (!qword_1EDA69B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B58);
  }

  return result;
}

unint64_t sub_1C8DD4780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B60;
  if (!qword_1EDA69B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B60);
  }

  return result;
}

unint64_t sub_1C8DD47D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B90;
  if (!qword_1EDA69B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B90);
  }

  return result;
}

unint64_t sub_1C8DD4830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B98;
  if (!qword_1EDA69B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B98);
  }

  return result;
}

uint64_t sub_1C8DD49A8()
{
  v0 = sub_1C8DD4938();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Cache.__allocating_init()()
{
  v0 = swift_allocObject();
  Cache.init()();
  return v0;
}

void *Cache.init()()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC315320, qword_1C907CB28);
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  v7 = v3;
  v8 = v4;
  v9 = v3;
  v10 = v5;
  type metadata accessor for Cache.Box(0, &v7);
  v7 = v3;
  v8 = v4;
  v9 = v4;
  v10 = v5;
  type metadata accessor for Cache.Box(0, &v7);
  v1[2] = sub_1C8DD4B08();
  return v1;
}

id sub_1C8DD4B08()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1C8DD4B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = sub_1C906464C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a3, v6, v12);
  (*(v8 + 16))(v10, a1, v7);
  return sub_1C8DD4E90(v10, v14);
}

uint64_t sub_1C8DD4CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - v7;
  v9 = v2[2];
  v11 = *(v10 + 88);
  v12 = *(v10 + 96);
  v16[0] = v5;
  v16[1] = v11;
  v16[2] = v5;
  v16[3] = v12;
  type metadata accessor for Cache.Box(0, v16);
  (*(v6 + 16))(v8, a1, v5);
  v13 = [v9 objectForKey_];

  if (v13)
  {
    (*(*(v11 - 8) + 16))(a2, &v13[*(*v13 + 112)], v11);

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v14, 1, v11);
}

uint64_t sub_1C8DD4E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a1;
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_1C906464C();
  OUTLINED_FUNCTION_16_3();
  v39 = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  OUTLINED_FUNCTION_16_3();
  v38 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v36 - v16;
  v17 = *(v5 + 80);
  OUTLINED_FUNCTION_16_3();
  v19 = v18;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  v23 = *(v5 + 96);
  v44 = v17;
  v45 = v6;
  v46 = v17;
  v47 = v23;
  type metadata accessor for Cache.Box(0, &v44);
  v24 = *(v19 + 16);
  v42 = a2;
  v25 = a2;
  v26 = v39;
  v24(v22, v25, v17);
  v27 = sub_1C8DD4888(v22);
  v28 = *(v26 + 16);
  v41 = v7;
  v28(v11, v43, v7);
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    v29 = *(v26 + 8);
    v30 = v41;
    v29(v11, v41);
    [v3[2] removeObjectForKey_];

    (*(v19 + 8))(v42, v17);
    return (v29)(v43, v30);
  }

  else
  {
    v32 = v38;
    (*(v38 + 32))(v40, v11, v6);
    v33 = v3[2];
    v44 = v17;
    v45 = v6;
    v46 = v6;
    v47 = v23;
    type metadata accessor for Cache.Box(0, &v44);
    v34 = v37;
    v35 = v40;
    (*(v32 + 16))(v37, v40, v6);
    [v33 setObject:sub_1C8DD4888(v34) forKey:v27];

    (*(v19 + 8))(v42, v17);
    (*(v26 + 8))(v43, v41);
    return (*(v32 + 8))(v35, v6);
  }
}

void (*sub_1C8DD524C(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v5;
  *v5 = v2;
  v6 = *v2;
  v7 = sub_1C906464C();
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  v5[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v5[4] = v10;
  v5[5] = *(v6 + 80);
  OUTLINED_FUNCTION_16_3();
  v12 = v11;
  v5[6] = v11;
  v14 = *(v13 + 64);
  v5[7] = __swift_coroFrameAllocStub(v14);
  v5[8] = __swift_coroFrameAllocStub(v14);
  (*(v12 + 16))();
  sub_1C8DD4CC8(a2, v10);
  return sub_1C8DD53E0;
}

void sub_1C8DD53E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    sub_1C8DD4E90(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    sub_1C8DD4E90(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1C8DD5518@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(__n128)@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v6 = *v3;
  v7 = *(*v3 + 88);
  sub_1C906464C();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(v6 + 80);
  OUTLINED_FUNCTION_16_3();
  v13 = v12;
  OUTLINED_FUNCTION_82();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  v21 = a3;
  v18 = v22;
  result = a2(v15);
  if (!v18)
  {
    (*(v13 + 16))(v17, v20, v11);
    (*(*(v7 - 8) + 16))(v10, v21, v7);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
    return sub_1C8DD4E90(v10, v17);
  }

  return result;
}

uint64_t sub_1C8DD56D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v4;
  v6[3] = a2;
  v6[4] = v3;
  v6[2] = a1;
  v8 = *v3;
  v6[5] = *(*v3 + 88);
  sub_1C906464C();
  v6[6] = swift_task_alloc();
  v6[7] = *(v8 + 80);
  OUTLINED_FUNCTION_16_3();
  v6[8] = v9;
  v6[9] = swift_task_alloc();
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  v6[10] = v10;
  *v10 = v6;
  v10[1] = sub_1C8DD5890;

  return v12(a1);
}

uint64_t sub_1C8DD5890()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C8DD59E8, 0, 0);
  }
}

uint64_t sub_1C8DD59E8()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[5];
  v4 = v0[2];
  (*(v0[8] + 16))(v1, v0[3], v0[7]);
  (*(*(v3 - 8) + 16))(v2, v4, v3);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  sub_1C8DD4E90(v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t Cache.__deallocating_deinit()
{
  Cache.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t dispatch thunk of Cache.set(key:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 152) + **(*v4 + 152));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1C8D1D644;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1C8DD5DA4(uint64_t a1)
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

uint64_t type metadata accessor for Query(uint64_t a1)
{
  result = qword_1EDA6D098;
  if (!qword_1EDA6D098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Query.init(predicate:sort:limit:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1C8D04FBC(a1, v12);
  AnyPredicate.init(predicate:)(v12, a5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = type metadata accessor for Query(0);
  *(a5 + *(result + 20)) = a2 & 1;
  v11 = a5 + *(result + 24);
  *v11 = a3;
  *(v11 + 8) = a4 & 1;
  return result;
}

uint64_t Query.debugDescription.getter()
{
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1C906478C();
  v9 = 0;
  v10 = 0xE000000000000000;
  MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90CABC0);
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1C8DC8B78(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E98, &qword_1C907AAA8);
  sub_1C90648BC();
  __swift_destroy_boxed_opaque_existential_1(v6);
  MEMORY[0x1CCA81A90](v7, v8);

  MEMORY[0x1CCA81A90](0x3D74726F7320, 0xE600000000000000);
  v1 = type metadata accessor for Query(0);
  LOBYTE(v6[0]) = *(v0 + *(v1 + 20));
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](0x3D74696D696C20, 0xE700000000000000);
  v2 = (v0 + *(v1 + 24));
  if (*(v2 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = *v2;
  }

  v6[0] = v3;
  v4 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v4);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return v9;
}

uint64_t static Query.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static AnyPredicate.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Query(0);
  if ((sub_1C90623DC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C8DD61CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1953656691 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8DD62E0(char a1)
{
  if (!a1)
  {
    return 0x7461636964657270;
  }

  if (a1 == 1)
  {
    return 1953656691;
  }

  return 0x74696D696CLL;
}

uint64_t sub_1C8DD6338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DD61CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DD6360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD65C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DD639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DD65C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t Query.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315428, &qword_1C907CB90);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-v9];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD65C4(v11, v12, v13);
  sub_1C9064E1C();
  v20[15] = 0;
  type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_0_43();
  sub_1C8DD6BE4(v14, v15, &protocol conformance descriptor for AnyPredicate);
  sub_1C9064B8C();
  if (!v2)
  {
    v16 = type metadata accessor for Query(0);
    v20[14] = *(v3 + *(v16 + 20));
    v20[13] = 1;
    sub_1C8DD6618(v16, v17, v18);
    sub_1C9064B8C();
    v20[12] = 2;
    sub_1C9064AFC();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C8DD65C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA605C8;
  if (!qword_1EDA605C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605C8);
  }

  return result;
}

unint64_t sub_1C8DD6618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62CC8;
  if (!qword_1EDA62CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62CC8);
  }

  return result;
}

uint64_t Query.hash(into:)(uint64_t a1)
{
  AnyPredicate.hash(into:)();
  v2 = type metadata accessor for Query(0);
  sub_1C90623EC();
  v3 = (v1 + *(v2 + 24));
  if (*(v3 + 8) == 1)
  {
    return sub_1C9064D9C();
  }

  v5 = *v3;
  sub_1C9064D9C();
  return MEMORY[0x1CCA82810](v5);
}

uint64_t Query.hashValue.getter()
{
  sub_1C9064D7C();
  Query.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t Query.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a2;
  type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  v28 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315430, &qword_1C907CB98);
  OUTLINED_FUNCTION_11();
  v27[1] = v7;
  v27[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = type metadata accessor for Query(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD65C4(v12, v13, v14);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  OUTLINED_FUNCTION_0_43();
  sub_1C8DD6BE4(v15, v16, &protocol conformance descriptor for AnyPredicate);
  sub_1C9064A6C();
  v17 = sub_1C8D28774(v28, v11);
  v30 = 1;
  sub_1C8DD6A90(v17, v18, v19);
  sub_1C9064A6C();
  v11[*(v8 + 20)] = v31;
  v29 = 2;
  v21 = sub_1C90649DC();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_2_30();
  v25(v24);
  v26 = &v11[*(v8 + 24)];
  *v26 = v21;
  v26[8] = v23 & 1;
  sub_1C8DD6AE4(v11, v27[0], type metadata accessor for Query);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1C8DD6B44(v11, type metadata accessor for Query);
}

uint64_t sub_1C8DD6A54(uint64_t a1)
{
  sub_1C9064D7C();
  Query.hash(into:)(v2);
  return sub_1C9064DBC();
}

unint64_t sub_1C8DD6A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315438;
  if (!qword_1EC315438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315438);
  }

  return result;
}

uint64_t sub_1C8DD6AE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8DD6B44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8DD6BE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C8DD6C8C(uint64_t a1)
{
  type metadata accessor for AnyPredicate(319);
  if (v1 <= 0x3F)
  {
    sub_1C8DD6D18();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8DD6D18()
{
  if (!qword_1EDA6CBC0)
  {
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6CBC0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Query.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DD6E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315448;
  if (!qword_1EC315448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315448);
  }

  return result;
}

unint64_t sub_1C8DD6EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA605B8;
  if (!qword_1EDA605B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605B8);
  }

  return result;
}

unint64_t sub_1C8DD6EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA605C0;
  if (!qword_1EDA605C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605C0);
  }

  return result;
}

void SystemTypeProtocol.init(protobuf:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v112 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313668, &qword_1C906BC48);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v114 = &v104 - v5;
  OUTLINED_FUNCTION_111();
  v120 = sub_1C9063C4C();
  OUTLINED_FUNCTION_11();
  v110 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v109 = v8;
  v9 = OUTLINED_FUNCTION_111();
  v10 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(v9);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  v111 = v12;
  v13 = OUTLINED_FUNCTION_111();
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(v13);
  v15 = OUTLINED_FUNCTION_9(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v108 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v107 = (&v104 - v19);
  v20 = OUTLINED_FUNCTION_111();
  v21 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(v20);
  v22 = OUTLINED_FUNCTION_9(v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A68, &qword_1C9074DB0);
  OUTLINED_FUNCTION_9(v25);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v104 - v27;
  v29 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v104 - v34;
  sub_1C8CC0620(a1, v28, &qword_1EC312A68, &qword_1C9074DB0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1C8D16D78(v28, &qword_1EC312A68, &qword_1C9074DB0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315450, &qword_1C907CDB8);
    sub_1C8DD7858();
    swift_allocError();
    *v37 = v29;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69E08B0], v36);
    swift_willThrow();
    OUTLINED_FUNCTION_1_39();
    sub_1C8DD8068(a1, v38);
  }

  else
  {
    v106 = a1;
    OUTLINED_FUNCTION_5_22();
    sub_1C8DD8008(v28, v35, v39);
    sub_1C8DD78BC(v35, v32);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v41 = v114;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_1C8DD8008(v32, v24, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
        v83 = sub_1C8CC0620(v24, v107, &qword_1EC313F20, &unk_1C9074D20);
        sub_1C8D60A64(v83, v84, v85);
        v86 = v113;
        sub_1C906351C();
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v87);
        sub_1C8DD8068(v24, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v88);
        if (!v86)
        {
          v49 = 0;
          v45 = v115;
          v32 = v116;
          v47 = v117;
          v48 = v118;
          v46 = v119;
          goto LABEL_35;
        }

        return;
      case 2:
        v105 = v35;
        v62 = v32;
        v32 = v111;
        sub_1C8DD8008(v62, v111, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
        v63 = 0;
        v64 = *v32;
        v65 = *(*v32 + 16);
        v107 = (v110 + 32);
        v66 = v64 + 40;
        v108 = MEMORY[0x1E69E7CC0];
        v104 = v64 + 40;
        break;
      case 3:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v79);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v80);
        v45 = 0;
        v32 = 0;
        v46 = 0;
        v47 = 0uLL;
        goto LABEL_31;
      case 4:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v56);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v57);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 1;
        goto LABEL_34;
      case 5:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v91);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v92);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 2;
        goto LABEL_34;
      case 6:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v95);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v96);
        v32 = 0;
        v46 = 0;
        v47 = 0uLL;
        v45 = 3;
LABEL_31:
        v49 = 3;
        goto LABEL_34;
      case 7:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v81);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v82);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 4;
        goto LABEL_34;
      case 8:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v99);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v100);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 5;
        goto LABEL_34;
      case 9:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v60);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v61);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 6;
        goto LABEL_34;
      case 10:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v97);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v98);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 7;
        goto LABEL_34;
      case 11:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v54);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v55);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 9;
        goto LABEL_34;
      case 12:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v58);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v59);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 12;
        goto LABEL_34;
      case 13:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v93);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v94);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 13;
        goto LABEL_34;
      case 14:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v52);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v53);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 14;
        goto LABEL_34;
      case 15:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v77);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v78);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 10;
        goto LABEL_34;
      case 16:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v50);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v51);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 8;
        goto LABEL_34;
      case 17:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v89);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v90);
        *&v47 = OUTLINED_FUNCTION_2_1();
        v45 = 11;
LABEL_34:
        v48 = 0uLL;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v106, v42);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v35, v43);
        v44 = v108;
        sub_1C8DD8008(v32, v108, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
        v45 = *v44;
        v32 = v44[1];

        sub_1C8DD8068(v44, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
        v49 = 1;
LABEL_35:
        v101 = v112;
        *v112 = v45;
        v101[1] = v32;
        *(v101 + 1) = v47;
        *(v101 + 2) = v48;
        v101[6] = v46;
        *(v101 + 56) = v49;
        return;
    }

LABEL_12:
    v67 = v66 + 16 * v63;
    v68 = v106;
    while (1)
    {
      if (v65 == v63)
      {
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v68, v102);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v105, v103);
        sub_1C8DD8068(v111, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
        v49 = 2;
        v45 = v108;
        goto LABEL_35;
      }

      if (v63 >= *(v64 + 16))
      {
        break;
      }

      v32 = *(v67 - 8);

      sub_1C9063C2C();
      if (__swift_getEnumTagSinglePayload(v41, 1, v120) != 1)
      {
        v69 = *v107;
        (*v107)(v109, v41, v120);
        v70 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C8CACA10();
          v70 = v75;
        }

        v72 = *(v70 + 16);
        v71 = *(v70 + 24);
        v108 = v70;
        v32 = (v72 + 1);
        if (v72 >= v71 >> 1)
        {
          sub_1C8CACA10();
          v108 = v76;
        }

        ++v63;
        v74 = v108;
        v73 = v109;
        v108[2] = v32;
        v69(v74 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v72, v73, v120);
        v66 = v104;
        goto LABEL_12;
      }

      sub_1C8D16D78(v41, &qword_1EC313668, &qword_1C906BC48);
      v67 += 16;
      ++v63;
    }

    __break(1u);
  }
}