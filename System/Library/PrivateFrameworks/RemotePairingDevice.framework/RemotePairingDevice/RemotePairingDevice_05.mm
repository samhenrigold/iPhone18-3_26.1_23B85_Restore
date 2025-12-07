uint64_t getEnumTagSinglePayload for ControlChannelMessage.Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_261FCD450(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_261FCD530()
{
  result = qword_27FEF9DD0;
  if (!qword_27FEF9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DD0);
  }

  return result;
}

unint64_t sub_261FCD588()
{
  result = qword_27FEF9DD8;
  if (!qword_27FEF9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DD8);
  }

  return result;
}

unint64_t sub_261FCD5E0()
{
  result = qword_27FEF9DE0;
  if (!qword_27FEF9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DE0);
  }

  return result;
}

unint64_t sub_261FCD638()
{
  result = qword_27FEF9DE8;
  if (!qword_27FEF9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DE8);
  }

  return result;
}

unint64_t sub_261FCD68C()
{
  result = qword_27FEF9DF0;
  if (!qword_27FEF9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DF0);
  }

  return result;
}

unint64_t sub_261FCD6E0()
{
  result = qword_28108B7A8[0];
  if (!qword_28108B7A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108B7A8);
  }

  return result;
}

uint64_t sub_261FCD7C8(uint64_t a1)
{
  v1 = a1;
  sub_26203ADDC();
  sub_261FCE4DC(v1);
  sub_26203A23C();

  return sub_26203AE0C();
}

uint64_t sub_261FCD850(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_26203ADDC();
  a2(v5, a1);
  return sub_26203AE0C();
}

uint64_t sub_261FCD8A0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_16_5();
  }

  sub_26203A23C();
}

uint64_t sub_261FCD910(uint64_t a1, char a2)
{
  sub_26203A23C();
}

uint64_t sub_261FCD968(uint64_t a1, char a2)
{
  sub_26203A23C();
}

uint64_t sub_261FCD9C8(uint64_t a1, char a2)
{
  sub_26203A23C();
}

uint64_t sub_261FCDA40(uint64_t a1, char a2)
{
  sub_26203A23C();
}

uint64_t sub_261FCDABC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_11_4();
      break;
  }

  sub_26203A23C();
}

uint64_t sub_261FCDB9C(uint64_t a1, char a2)
{
  sub_26203A23C();
}

uint64_t sub_261FCDCA4(uint64_t a1, char a2)
{
  sub_26203A23C();
}

uint64_t sub_261FCDD50(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      break;
  }

  sub_26203A23C();
}

uint64_t sub_261FCDE08(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      break;
  }

  sub_26203A23C();
}

uint64_t sub_261FCDEC0(uint64_t a1, char a2)
{
  sub_26203A23C();
}

uint64_t sub_261FCDFBC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_26203ADDC();
  sub_261FCE4DC(v2);
  sub_26203A23C();

  return sub_26203AE0C();
}

uint64_t sub_261FCE034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_26203ADDC();
  a3(v6, a2);
  return sub_26203AE0C();
}

uint64_t sub_261FCE080(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_13_4(a1);
  if (v1)
  {
    v4 = 0x6976654465726F63;
  }

  else
  {
    v4 = 0x615065746F6D6572;
  }

  OUTLINED_FUNCTION_19_3(v2, v4, v3);

  return sub_26203AE0C();
}

uint64_t sub_261FCE100(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_13_4(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 7365492;
    }

    else
    {
      v4 = 7365749;
    }
  }

  else
  {
    v4 = 1667855729;
  }

  OUTLINED_FUNCTION_19_3(v2, v4, v3);

  return sub_26203AE0C();
}

uint64_t sub_261FCE17C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_13_4(a1);
  if (v1)
  {
    v4 = 0x656369766564;
  }

  else
  {
    v4 = 1953722216;
  }

  OUTLINED_FUNCTION_19_3(v2, v4, v3);

  return sub_26203AE0C();
}

uint64_t sub_261FCE1E0(uint64_t a1)
{
  OUTLINED_FUNCTION_13_4(a1);
  sub_26203A23C();

  return sub_26203AE0C();
}

uint64_t sub_261FCE24C(uint64_t a1, unsigned __int8 a2)
{
  sub_26203ADDC();
  MEMORY[0x266723290](a2);
  return sub_26203AE0C();
}

uint64_t sub_261FCE290(uint64_t a1)
{
  OUTLINED_FUNCTION_13_4(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_16_5();
  }

  OUTLINED_FUNCTION_19_3(v2, v3, v4);

  return sub_26203AE0C();
}

unint64_t sub_261FCE488(uint64_t a1, uint64_t a2)
{
  v2 = sub_26203A96C();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261FCE4DC(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 7697517;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6441726576726573;
      break;
    case 4:
      result = 0x5352726576726573;
      break;
    case 5:
      result = 0x797469726F697270;
      break;
    case 6:
      result = 0x7367616C66;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_261FCE5B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26203A96C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261FCE5FC(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FCE678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TunnelFlags.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261FCE6B8@<X0>(uint64_t *a1@<X8>)
{
  result = TunnelFlags.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_261FCE708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261FCE488(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_261FCE738@<X0>(unint64_t *a1@<X8>)
{
  result = sub_261FCE4DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_261FCE780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FCE4D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FCE7A8(uint64_t a1)
{
  v2 = sub_261FCF0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FCE7E4(uint64_t a1)
{
  v2 = sub_261FCF0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_261FCE894@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261FCE5B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_261FCE8C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_261FCE5FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TunnelMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v3);
  v65 = &v63 - v4;
  OUTLINED_FUNCTION_9_5();
  v67 = sub_262039ACC();
  OUTLINED_FUNCTION_0();
  v69 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v66 = v8 - v7;
  v9 = OUTLINED_FUNCTION_9_5();
  type metadata accessor for TunnelInterfaceParameters(v9);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9DF8, &qword_262041918);
  OUTLINED_FUNCTION_0();
  v70 = v15;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  type metadata accessor for TunnelMessage(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74();
  v22 = (v21 - v20);
  v23 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v23);
  sub_261FCF0A8();
  v24 = v71;
  sub_26203AE3C();
  if (!v24)
  {
    v64 = v13;
    v25 = v69;
    v71 = v22;
    v75 = 0;
    sub_261FCF0FC();
    OUTLINED_FUNCTION_15_5();
    sub_26203AA2C();
    v26 = v14;
    v27 = v18;
    v28 = v68;
    switch(v73)
    {
      case 1:
        v40 = v25;
        LOBYTE(v73) = 2;
        OUTLINED_FUNCTION_5_7();
        sub_261FCFAFC(v41, v42, &protocol conformance descriptor for TunnelInterfaceParameters);
        v43 = v27;
        sub_26203AA2C();
        LOBYTE(v73) = 3;
        OUTLINED_FUNCTION_0_16();
        sub_261FCFAFC(v45, v46, &protocol conformance descriptor for IPv6Address);
        v47 = v66;
        sub_26203AA2C();
        v48 = v70;
        LOBYTE(v73) = 4;
        v50 = sub_26203AA5C();
        OUTLINED_FUNCTION_17_4();
        sub_261FCF270();
        OUTLINED_FUNCTION_7_5();
        sub_26203A9CC();
        v55 = v73;
        if (v74)
        {
          v55 = 0;
        }

        v65 = v55;
        (*(v48 + 8))(v43, v26);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
        v57 = v56[12];
        v58 = v56[16];
        v59 = v56[20];
        OUTLINED_FUNCTION_6_9();
        v60 = v47;
        v61 = v40;
        v39 = v71;
        sub_261FCF2C4(v64, v71, v62);
        (*(v61 + 32))(&v39[v57], v60, v67);
        *&v39[v58] = v50;
        v28 = v68;
        *&v39[v59] = v65;
        break;
      case 2:
        OUTLINED_FUNCTION_18_4();
        sub_261FCF150();
        OUTLINED_FUNCTION_7_5();
        sub_26203A9CC();
        v33 = v73;
        v34 = v26;
        v35 = v74;
        LOBYTE(v73) = 3;
        OUTLINED_FUNCTION_0_16();
        sub_261FCFAFC(v36, v37, &protocol conformance descriptor for IPv6Address);
        v38 = v65;
        sub_26203A9CC();
        if (v35)
        {
          v33 = 0;
        }

        (*(v70 + 8))(v18, v34);
        v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920) + 48);
        v39 = v71;
        *v71 = v33;
        sub_261FCF1A4(v38, &v39[v49]);
        v28 = v68;
        break;
      case 3:
        (*(v70 + 8))(v18, v26);
        v39 = v71;
        break;
      default:
        LOBYTE(v73) = 1;
        v29 = sub_26203AA5C();
        OUTLINED_FUNCTION_18_4();
        sub_261FCF150();
        OUTLINED_FUNCTION_7_5();
        sub_26203A9CC();
        v30 = v26;
        v31 = v73;
        v32 = v74;
        OUTLINED_FUNCTION_17_4();
        sub_261FCF270();
        OUTLINED_FUNCTION_15_5();
        sub_26203A9CC();
        if (v32)
        {
          v51 = 0;
        }

        else
        {
          v51 = v31;
        }

        if (v74)
        {
          v52 = 0;
        }

        else
        {
          v52 = v73;
        }

        v53 = OUTLINED_FUNCTION_8_4();
        v54(v53, v30);
        v39 = v71;
        *v71 = v29;
        *(v39 + 1) = v51;
        *(v39 + 2) = v52;
        v28 = v68;
        break;
    }

    swift_storeEnumTagMultiPayload();
    sub_261FCF2C4(v39, v28, type metadata accessor for TunnelMessage);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v72);
}

unint64_t sub_261FCF0A8()
{
  result = qword_28108CA40;
  if (!qword_28108CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA40);
  }

  return result;
}

unint64_t sub_261FCF0FC()
{
  result = qword_28108CA48;
  if (!qword_28108CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA48);
  }

  return result;
}

unint64_t sub_261FCF150()
{
  result = qword_28108BA68;
  if (!qword_28108BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108BA68);
  }

  return result;
}

uint64_t sub_261FCF1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FCF214(uint64_t a1)
{
  v2 = type metadata accessor for TunnelInterfaceParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_261FCF270()
{
  result = qword_28108CB78;
  if (!qword_28108CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CB78);
  }

  return result;
}

uint64_t sub_261FCF2C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t TunnelMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v65[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  v66 = v65 - v6;
  OUTLINED_FUNCTION_9_5();
  sub_262039ACC();
  OUTLINED_FUNCTION_0();
  v68 = v8;
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v70 = v10 - v9;
  v11 = OUTLINED_FUNCTION_9_5();
  v65[1] = type metadata accessor for TunnelInterfaceParameters(v11);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74();
  v67 = v14 - v13;
  v15 = OUTLINED_FUNCTION_9_5();
  type metadata accessor for TunnelMessage(v15);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_74();
  v19 = (v18 - v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E18, &qword_262041930);
  OUTLINED_FUNCTION_0();
  v71 = v21;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v22);
  v24 = v65 - v23;
  v25 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FCF0A8();
  sub_26203AE5C();
  sub_261FCF8D4(v3, v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
      v25 = v47[12];
      LODWORD(v66) = *(v19 + v47[16]);
      v48 = *(v19 + v47[20]);
      OUTLINED_FUNCTION_6_9();
      v49 = v67;
      sub_261FCF2C4(v19, v67, v50);
      v51 = v68;
      v52 = v25 + v19;
      v53 = v69;
      v54 = v70;
      (*(v68 + 32))(v70, v52, v69);
      LOBYTE(v72) = 1;
      v73 = 0;
      sub_261FCF938();
      v55 = OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_20_5(v55, v56, v57, v58, v59);
      if (v2)
      {
        (*(v51 + 8))(v54, v53);
      }

      else
      {
        LOBYTE(v72) = 2;
        OUTLINED_FUNCTION_5_7();
        sub_261FCFAFC(v60, v61, &protocol conformance descriptor for TunnelInterfaceParameters);
        sub_26203AB3C();
        LOBYTE(v72) = 3;
        OUTLINED_FUNCTION_0_16();
        sub_261FCFAFC(v62, v63, &protocol conformance descriptor for IPv6Address);
        v64 = v70;
        sub_26203AB3C();
        OUTLINED_FUNCTION_12_3(4);
        v72 = v48;
        OUTLINED_FUNCTION_17_4();
        sub_261FCFB44();
        OUTLINED_FUNCTION_1_14();
        sub_26203AB3C();
        (*(v51 + 8))(v64, v53);
      }

      sub_261FCF214(v49);
      return (*(v71 + 8))(v25, v20);
    case 2u:
      v33 = *v19;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920);
      v35 = v66;
      sub_261FCF1A4(v19 + *(v34 + 48), v66);
      LOBYTE(v72) = 2;
      v73 = 0;
      sub_261FCF938();
      v36 = OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_20_5(v36, v37, v38, v39, v40);
      if (!v2)
      {
        v72 = v33;
        OUTLINED_FUNCTION_18_4();
        sub_261FCF9F4();
        OUTLINED_FUNCTION_1_14();
        sub_26203AB3C();
        LOBYTE(v72) = 3;
        sub_261FCFA48();
        sub_26203AB3C();
      }

      sub_261FCF98C(v35);
      return (*(v71 + 8))(v25, v20);
    case 3u:
      LOBYTE(v72) = 3;
      v73 = 0;
      sub_261FCF938();
      v41 = OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_20_5(v41, v42, v43, v44, v45);
      return (*(v71 + 8))(v24, v20);
    default:
      v27 = v19[1];
      v26 = v19[2];
      LOBYTE(v72) = 0;
      v73 = 0;
      sub_261FCF938();
      v28 = OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_20_5(v28, v29, v30, v31, v32);
      if (!v2)
      {
        OUTLINED_FUNCTION_12_3(1);
        v72 = v27;
        OUTLINED_FUNCTION_18_4();
        sub_261FCF9F4();
        OUTLINED_FUNCTION_1_14();
        sub_26203AB3C();
        v72 = v26;
        OUTLINED_FUNCTION_17_4();
        sub_261FCFB44();
        OUTLINED_FUNCTION_1_14();
        sub_26203AB3C();
      }

      return (*(v71 + 8))(v25, v20);
  }
}

uint64_t sub_261FCF8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TunnelMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261FCF938()
{
  result = qword_28108CA58;
  if (!qword_28108CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA58);
  }

  return result;
}

uint64_t sub_261FCF98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_261FCF9F4()
{
  result = qword_27FEF9E20;
  if (!qword_27FEF9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E20);
  }

  return result;
}

unint64_t sub_261FCFA48()
{
  result = qword_27FEF9E28;
  if (!qword_27FEF9E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEFA270, &qword_262041910);
    sub_261FCFAFC(&qword_28108B398, MEMORY[0x277CD8C88], &protocol conformance descriptor for IPv6Address);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E28);
  }

  return result;
}

uint64_t sub_261FCFAFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261FCFB44()
{
  result = qword_28108CB88;
  if (!qword_28108CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CB88);
  }

  return result;
}

unint64_t sub_261FCFB9C()
{
  result = qword_28108CB80;
  if (!qword_28108CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CB80);
  }

  return result;
}

unint64_t sub_261FCFBF4()
{
  result = qword_27FEF9E30;
  if (!qword_27FEF9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E30);
  }

  return result;
}

unint64_t sub_261FCFC4C()
{
  result = qword_27FEF9E38;
  if (!qword_27FEF9E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E38);
  }

  return result;
}

unint64_t sub_261FCFCA4()
{
  result = qword_27FEF9E40;
  if (!qword_27FEF9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E40);
  }

  return result;
}

void sub_261FCFD38(uint64_t a1)
{
  sub_261FCFDC0();
  if (v1 <= 0x3F)
  {
    sub_261FCFE2C(319);
    if (v2 <= 0x3F)
    {
      sub_261FCFF40(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_261FCFDC0()
{
  if (!qword_28108B248)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28108B248);
    }
  }
}

void sub_261FCFE2C(uint64_t a1)
{
  if (!qword_28108B930)
  {
    MEMORY[0x28223BE20](0);
    type metadata accessor for TunnelInterfaceParameters(255);
    sub_262039ACC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28108B930);
    }
  }
}

void sub_261FCFF40(uint64_t a1)
{
  if (!qword_28108BA78[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEFA270, &qword_262041910);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_28108BA78);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TunnelMessage.MessageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TunnelMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_261FD0174()
{
  result = qword_27FEF9E48;
  if (!qword_27FEF9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E48);
  }

  return result;
}

unint64_t sub_261FD01CC()
{
  result = qword_27FEF9E50;
  if (!qword_27FEF9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E50);
  }

  return result;
}

unint64_t sub_261FD0224()
{
  result = qword_28108CA30;
  if (!qword_28108CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA30);
  }

  return result;
}

unint64_t sub_261FD027C()
{
  result = qword_28108CA38;
  if (!qword_28108CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA38);
  }

  return result;
}

unint64_t sub_261FD02D0()
{
  result = qword_28108CA50;
  if (!qword_28108CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA50);
  }

  return result;
}

unint64_t sub_261FD0404()
{
  result = qword_27FEF9E58;
  if (!qword_27FEF9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E58);
  }

  return result;
}

unint64_t sub_261FD045C()
{
  result = qword_27FEF9E60;
  if (!qword_27FEF9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E60);
  }

  return result;
}

unint64_t sub_261FD04BC()
{
  result = qword_28108C658;
  if (!qword_28108C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C658);
  }

  return result;
}

unint64_t sub_261FD0514()
{
  result = qword_28108C650;
  if (!qword_28108C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C650);
  }

  return result;
}

uint64_t sub_261FD056C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = BonjourAdvertFlags.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261FD05AC@<X0>(uint64_t *a1@<X8>)
{
  result = BonjourAdvertFlags.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkPairingKeys(_BYTE *result, int a2, int a3)
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

void sub_261FD0690(void (*a1)(_BYTE *))
{
  v4 = _s5StateVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[2];
  os_unfair_lock_lock(v7);
  v8 = *(*v1 + 96);
  swift_beginAccess();
  sub_261FD36BC(v1 + v8, v6, _s5StateVMa);
  a1(v6);
  if (v2)
  {
    sub_261FD3774(v6, _s5StateVMa);
  }

  else
  {
    swift_beginAccess();
    sub_261FC3EF0(v6, v1 + v8);
    swift_endAccess();
  }

  os_unfair_lock_unlock(v7);
}

uint64_t sub_261FD07E0()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEF9E68 = result;
  return result;
}

uint64_t RPPairableHost.name.getter()
{
  type metadata accessor for PairableHostInfo(0);
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_11();
  _s5StateVMa(0);
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_13_5(v5, v4);
  OUTLINED_FUNCTION_1_15();
  sub_261FD3774(v1, v6);

  OUTLINED_FUNCTION_0_17();
  sub_261FD3774(v0, v7);
  return OUTLINED_FUNCTION_47();
}

uint64_t _s5StateVMa(uint64_t a1)
{
  result = qword_27FEF9E88;
  if (!qword_27FEF9E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RPPairableHost.model.getter()
{
  type metadata accessor for PairableHostInfo(0);
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_11();
  _s5StateVMa(0);
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_13_5(v5, v4);
  OUTLINED_FUNCTION_1_15();
  sub_261FD3774(v1, v6);

  OUTLINED_FUNCTION_0_17();
  sub_261FD3774(v0, v7);
  return OUTLINED_FUNCTION_47();
}

uint64_t RPPairableHost.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for PairableHostInfo(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_3_11();
  _s5StateVMa(0);
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_13_5(v7, v6);
  OUTLINED_FUNCTION_1_15();
  sub_261FD3774(v2, v8);
  sub_26203965C();
  OUTLINED_FUNCTION_6_1();
  (*(v9 + 16))(a1, v1);
  OUTLINED_FUNCTION_0_17();
  return sub_261FD3774(v1, v10);
}

uint64_t RPPairableHost.available.getter()
{
  v1 = type metadata accessor for PairableHostInfo(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_11();
  v3 = _s5StateVMa(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74();
  v7 = v6 - v5;
  sub_261FA0588(v6 - v5);
  if (*(v7 + *(v3 + 24)) == 1)
  {
    OUTLINED_FUNCTION_1_15();
    sub_261FD3774(v7, v8);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    sub_261FD36BC(v7 + v10, v0, v11);
    OUTLINED_FUNCTION_1_15();
    sub_261FD3774(v7, v12);
    v9 = *(v0 + *(v1 + 28));
    OUTLINED_FUNCTION_0_17();
    sub_261FD3774(v0, v13);
  }

  return v9;
}

uint64_t RPPairableHost.paired.getter()
{
  type metadata accessor for PairableHostInfo(0);
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_11();
  _s5StateVMa(0);
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_13_5(v6, v5);
  OUTLINED_FUNCTION_1_15();
  sub_261FD3774(v2, v7);
  v8 = *(v1 + *(v0 + 40));
  OUTLINED_FUNCTION_0_17();
  sub_261FD3774(v1, v9);
  return v8;
}

char *sub_261FD0F7C(uint64_t a1)
{
  v3 = v1;
  v5 = _s5StateVMa(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_2_11();
  sub_261FD36BC(a1, v2 + v7, v8);
  *v2 = 0;
  v2[1] = 0;
  *(v2 + *(v6 + 32)) = 0;
  *(v2 + *(v6 + 36)) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9EA8, &qword_262042068);
  swift_allocObject();
  *&v3[OBJC_IVAR___RPPairableHost__state] = sub_261FA0984(v2);
  type metadata accessor for PairableHostInfo(0);
  WirelessB14SessionRequestV8endpointSo13OS_xpc_object_pvg_0 = _s19RemotePairingDevice014CreateWirelessB14SessionRequestV8endpointSo13OS_xpc_object_pvg_0();
  xpc_connection_create_from_endpoint(WirelessB14SessionRequestV8endpointSo13OS_xpc_object_pvg_0);
  swift_unknownObjectRelease();
  sub_26203990C();
  sub_2620398BC();
  *&v3[OBJC_IVAR___RPPairableHost__serviceConnection] = swift_dynamicCastClassUnconditional();
  v14.receiver = v3;
  v14.super_class = RPPairableHost;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DeviceServiceEvent(0);
  sub_261FD38E0(&qword_27FEF9EB0, type metadata accessor for DeviceServiceEvent, &protocol conformance descriptor for DeviceServiceEvent);
  sub_261FD38E0(&qword_27FEF9EB8, type metadata accessor for DeviceServiceEvent, &protocol conformance descriptor for DeviceServiceEvent);
  v11 = v10;

  sub_26203984C();

  sub_26203975C();

  sub_261F93C68();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_0_17();
  sub_261FD3774(a1, v12);
  return v11;
}

void sub_261FD1244(uint64_t a1, uint64_t a2)
{
  v3 = sub_26203965C();
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PairableHostInfo(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceServiceEvent(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9EC0, &unk_262042070);
  MEMORY[0x28223BE20](v15);
  v17 = (&v37 - v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_261F7B428(a1, v17, &qword_27FEF9EC0, &unk_262042070);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v17;
      v21 = sub_26203A48C();
      if (qword_27FEF8630 != -1)
      {
        swift_once();
      }

      v22 = qword_27FEF9E68;
      if (os_log_type_enabled(qword_27FEF9E68, v21))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v39[0] = v24;
        *v23 = 136446466;
        v25 = [v19 identifier];
        sub_26203963C();

        sub_261FD38E0(&qword_28108CF40, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v26 = sub_26203ABAC();
        v28 = v27;
        (*(v38 + 8))(v5, v3);
        v29 = sub_261F67FE4(v26, v28, v39);

        *(v23 + 4) = v29;
        *(v23 + 12) = 2082;
        v41 = v20;
        v30 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v31 = sub_26203A20C();
        v33 = sub_261F67FE4(v31, v32, v39);

        *(v23 + 14) = v33;
        _os_log_impl(&dword_261F5B000, v22, v21, "Received XPC error for host %{public}s: %{public}s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v24, -1, -1);
        MEMORY[0x266724180](v23, -1, -1);
      }

      sub_261FC3288(v34);
    }

    else
    {
      sub_261FD3718(v17, v14, type metadata accessor for DeviceServiceEvent);
      sub_261FD36BC(v14, v12, type metadata accessor for DeviceServiceEvent);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = *(v12 + 1);
        v36 = v12[16];
        LOBYTE(v39[0]) = *v12;
        v39[1] = v35;
        v40 = v36;
        sub_261FD1758(v39);
      }

      else
      {
        sub_261FD3718(v12, v8, type metadata accessor for PairableHostInfo);
        sub_261FD1A64();

        sub_261FD3774(v8, type metadata accessor for PairableHostInfo);
      }

      sub_261FD3774(v14, type metadata accessor for DeviceServiceEvent);
    }
  }
}

uint64_t sub_261FD1758(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_26203965C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = _s5StateVMa(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *a1;
  v24 = *(a1 + 1);
  v23 = a1[16];
  sub_261FA0588(v13);
  v14 = *v13;
  v15 = v13[1];
  sub_261F7D45C(*v13, v15);
  result = sub_261FD3774(v13, _s5StateVMa);
  if (v14)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = [v2 identifier];
    sub_26203963C();

    (*(v5 + 16))(v8, v10, v4);
    v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v20 = swift_allocObject();
    (*(v5 + 32))(v20 + v19, v8, v4);
    *(v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
    type metadata accessor for PairingChallenge();
    swift_allocObject();

    v21 = PairingChallenge.init(lastAttemptIncorrect:throttledBy:handlingPINWith:handlingCancellationWith:)(v25, v24, v23, sub_261FD37CC, v22, sub_261FD37D4, v20);
    (*(v5 + 8))(v10, v4);

    v14(v21);

    return sub_261F665E4(v14, v15);
  }

  return result;
}

uint64_t RPPairableHost.registerChangeHandler(on:handler:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    if (qword_27FEF8718 != -1)
    {
      OUTLINED_FUNCTION_6_2(&qword_27FEF8718);
    }

    v7 = qword_27FEFAA30;
  }

  OUTLINED_FUNCTION_107();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v9 = *(v3 + OBJC_IVAR___RPPairableHost__state);

  v10 = a1;

  v11 = v7;
  sub_261FC33C4(v9, sub_261FD3470, v8);
  sub_261FD1BC8(v11, a2, a3);
}

uint64_t sub_261FD1BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_262039FAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_262039FEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_261FBD060;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_51;
  v14 = _Block_copy(aBlock);

  sub_262039FCC();
  v16[1] = MEMORY[0x277D84F90];
  sub_261FD38E0(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v12, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

void RPPairableHost.pair(invokingHandlersOn:handlingPairingChallengesUsing:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = _s5StateVMa(0);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_74();
  v14 = (v13 - v12);
  if (a1)
  {
    v15 = a1;
  }

  else
  {
    if (qword_27FEF8718 != -1)
    {
      OUTLINED_FUNCTION_6_2(&qword_27FEF8718);
    }

    v15 = qword_27FEFAA30;
  }

  OUTLINED_FUNCTION_107();
  v16 = swift_allocObject();
  *(v16 + 2) = v15;
  *(v16 + 3) = a2;
  *(v16 + 4) = a3;
  OUTLINED_FUNCTION_107();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a4;
  v17[4] = a5;
  v29 = v5;
  v18 = *&v5[OBJC_IVAR___RPPairableHost__state];
  v19 = v18[2];
  v20 = v15;
  swift_retain_n();
  v21 = v20;

  v22 = a1;
  v23 = v21;
  os_unfair_lock_lock(v19);
  v24 = *(*v18 + 96);
  swift_beginAccess();
  sub_261FD36BC(v18 + v24, v14, _s5StateVMa);
  if (*v14)
  {
    sub_261F9D610();
    v25 = swift_allocError();
    sub_261F9BCE0();
    sub_26203AD3C();
    sub_261FD2504(v25, v23, a4, a5);
  }

  else
  {
    *v14 = sub_261FD347C;
    v14[1] = v16;
  }

  swift_beginAccess();
  sub_261FC3EF0(v14, v18 + v24);
  swift_endAccess();
  os_unfair_lock_unlock(v19);

  OUTLINED_FUNCTION_107();
  v26 = swift_allocObject();
  v26[2] = v29;
  v26[3] = sub_261FD3488;
  v26[4] = v17;
  v27 = v23;

  v28 = v29;
  sub_261F93D60();
}

uint64_t sub_261FD2250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262039FAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262039FEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_261FD3974;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_45;
  v16 = _Block_copy(aBlock);

  sub_262039FCC();
  v18[1] = MEMORY[0x277D84F90];
  sub_261FD38E0(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_261FD2504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262039FAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262039FEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_261F9B62C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_262039FCC();
  v19[1] = MEMORY[0x277D84F90];
  sub_261FD38E0(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void sub_261FD27B8(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v20 = a4;
  v21 = a3;
  v6 = type metadata accessor for PairableHostInfo(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9EC8, &qword_262042080);
  MEMORY[0x28223BE20](v9);
  v11 = (&v20 - v10);
  v12 = _s5StateVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 + OBJC_IVAR___RPPairableHost__state);
  v16 = v15[2];
  os_unfair_lock_lock(v16);
  v17 = *(*v15 + 96);
  swift_beginAccess();
  sub_261FD36BC(v15 + v17, v14, _s5StateVMa);
  sub_261F665E4(*v14, v14[1]);
  *v14 = 0;
  v14[1] = 0;
  swift_beginAccess();
  sub_261FC3EF0(v14, v15 + v17);
  swift_endAccess();
  os_unfair_lock_unlock(v16);
  sub_261F7B428(a1, v11, &qword_27FEF9EC8, &qword_262042080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v11;
    v19 = *v11;
    v21(v18);
  }

  else
  {
    sub_261FD3718(v11, v8, type metadata accessor for PairableHostInfo);
    sub_261FD1A64();
    v21(0);
    sub_261FD3774(v8, type metadata accessor for PairableHostInfo);
  }
}

uint64_t RPPairableHost.pair(invokingHandlersOn:handlingPairingChallengesUsing:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;

  RPPairableHost.pair(invokingHandlersOn:handlingPairingChallengesUsing:completionHandler:)(a1, sub_261FD34DC, v10, sub_261FD34E4, v11);
}

void sub_261FD2B18(uint64_t a1, void (*a2)(id, uint64_t))
{
  v4 = objc_allocWithZone(RPPairingChallenge);
  *&v4[OBJC_IVAR___RPPairingChallenge__underlyingValue] = a1;
  v7.receiver = v4;
  v7.super_class = RPPairingChallenge;

  v5 = objc_msgSendSuper2(&v7, sel_init);
  a2(v5, v6);
}

void sub_261FD2CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26203965C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = sub_26203A47C();
  if (qword_27FEF8630 != -1)
  {
    swift_once();
  }

  v12 = qword_27FEF9E68;
  v13 = *(v5 + 16);
  v13(v10, a1, v4);
  v14 = os_log_type_enabled(v12, v11);
  v15 = v11;
  v16 = &off_26203C000;
  v45 = v5;
  if (v14)
  {
    v42 = v15;
    v17 = swift_slowAlloc();
    v44 = v8;
    v18 = v17;
    v41 = swift_slowAlloc();
    v47[0] = v41;
    *v18 = 136315138;
    sub_261FD38E0(&qword_28108CF40, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = v13;
    v20 = a1;
    v21 = sub_26203ABAC();
    v43 = a2;
    v22 = v12;
    v24 = v23;
    v25 = *(v5 + 8);
    v25(v10, v4);
    v26 = v21;
    a1 = v20;
    v13 = v19;
    v27 = sub_261F67FE4(v26, v24, v47);
    v12 = v22;
    v16 = &off_26203C000;

    *(v18 + 4) = v27;
    _os_log_impl(&dword_261F5B000, v22, v42, "Handling pairing challenge request for pairable host %s", v18, 0xCu);
    v28 = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x266724180](v28, -1, -1);
    v29 = v18;
    v8 = v44;
    MEMORY[0x266724180](v29, -1, -1);
  }

  else
  {
    v25 = *(v5 + 8);
    v25(v10, v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    sub_261F93FF4();
  }

  else
  {
    v32 = sub_26203A47C();
    v13(v8, a1, v4);
    if (os_log_type_enabled(v12, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = *(v16 + 112);
      sub_261FD38E0(&qword_28108CF40, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_26203ABAC();
      v36 = v12;
      v38 = v37;
      v25(v8, v4);
      v39 = sub_261F67FE4(v35, v38, &v46);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_261F5B000, v36, v32, "Ignoring pairing challenge cancellation request for pairable host %s because associated host object has been deallocated", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x266724180](v34, -1, -1);
      MEMORY[0x266724180](v33, -1, -1);
    }

    else
    {
      v25(v8, v4);
    }
  }
}

void sub_261FD3154(uint64_t a1, const char *a2, ...)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    v4 = *a1;
    v5 = sub_26203A48C();
    if (qword_27FEF8630 != -1)
    {
      swift_once();
    }

    v6 = qword_27FEF9E68;
    if (os_log_type_enabled(qword_27FEF9E68, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v10 = sub_26203A20C();
      v12 = sub_261F67FE4(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_261F5B000, v6, v5, a2, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x266724180](v8, -1, -1);
      MEMORY[0x266724180](v7, -1, -1);
      sub_261F98F1C(v3, 1);
    }

    else
    {

      sub_261F98F1C(v3, 1);
    }
  }
}

uint64_t sub_261FD32F8(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa(0);
  v5 = a1 + *(v4 + 20);
  result = type metadata accessor for PairableHostInfo(0);
  if (*(v5 + *(result + 36)) < *(a2 + *(result + 36)))
  {
    result = sub_261FD387C(a2, v5);
    v7 = *(a1 + *(v4 + 28));
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v7 + 40;
      do
      {
        v10 = *(v9 - 8);

        v10(v11);

        v9 += 16;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void __swiftcall RPPairableHost.init()(RPPairableHost *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

uint64_t objectdestroyTm()
{

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_261FD3548(uint64_t a1)
{
  sub_261FD3624(319, &qword_27FEF9E98, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PairableHostInfo(319);
    if (v2 <= 0x3F)
    {
      sub_261FD3624(319, &qword_27FEF9EA0, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_261FD3624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9648, &qword_26203E620);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_261FD36BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_47();
  v5(v4);
  return a2;
}

uint64_t sub_261FD3718(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_47();
  v5(v4);
  return a2;
}

uint64_t sub_261FD3774(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_261FD37D4()
{
  v1 = *(sub_26203965C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_261FD2CDC(v0 + v2, v3);
}

uint64_t sub_261FD387C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairableHostInfo(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FD38E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_38Tm(void (*a1)(void))
{

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t Identifier.description.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = (*(*(a1 + 24) + 16))(*(a1 + 16));
  MEMORY[0x266722710](95, 0xE100000000000000);
  MEMORY[0x266722710](v2, v3);
  return v5;
}

uint64_t Identifier.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = (*(a2 + 8))();
  v9 = v7 < 1;
  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = v7;
    v3 = sub_26203A3FC();
    *(v3 + 16) = v10;
    v13[1] = v10;
    v14 = 0;
    v13[0] = v3 + 32;
    sub_261FD3B40(v13, &v14, v10, a1, a2);
    v8 = v14;
    v9 = v10 < v14;
    if (v10 >= v14)
    {
      *(v3 + 16) = v14;
      v13[0] = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AB0, &qword_262040300);
      sub_261FD3D58();
      result = sub_26203A2EC();
      *a3 = result;
      a3[1] = v12;
      return result;
    }
  }

  __break(1u);
  if (v9)
  {
    __break(1u);
  }

  *(v3 + 16) = v8;

  __break(1u);
  return result;
}

void *sub_261FD3B40(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (*a2 < a3)
  {
    if (("Only host should send handshake" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v8 = result;
      while (1)
      {
        v9 = sub_26203A24C();
        if (v9 < 0)
        {
          break;
        }

        v10 = v9;
        if (!v9)
        {
          goto LABEL_13;
        }

        v20 = 0;
        MEMORY[0x2667241A0](&v20, 8);
        if (v10 > v20 * v10)
        {
          v11 = -v10 % v10;
          while (v11 > v20 * v10)
          {
            v20 = 0;
            MEMORY[0x2667241A0](&v20, 8);
          }
        }

        sub_26203A25C();
        v12 = sub_26203A2DC();
        v14 = v13;

        v15 = (*v8 + 16 * v5);
        *v15 = v12;
        v15[1] = v14;
        if (++v5 >= a3)
        {
          *a2 = a3;
          return result;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    v16 = a5;
    v17 = a4;

    v20 = 0;
    v21 = 0xE000000000000000;
    sub_26203A7CC();

    v20 = 0x206E6920677542;
    v21 = 0xE700000000000000;
    type metadata accessor for Identifier(0, v17, v16, v18);
    v19 = sub_26203AE8C();
    MEMORY[0x266722710](v19);

    MEMORY[0x266722710](0xD000000000000013, 0x80000002620502E0);
    result = sub_26203A91C();
    __break(1u);
  }

  return result;
}

unint64_t sub_261FD3D58()
{
  result = qword_28108B328;
  if (!qword_28108B328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEF9AB0, &qword_262040300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B328);
  }

  return result;
}

uint64_t Identifier.init(value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static Identifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26203AC0C();
  }
}

uint64_t sub_261FD3DF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_261FD3E9C()
{
  sub_26203ADDC();
  sub_261F81D98();
  return sub_26203AE0C();
}

uint64_t sub_261FD3EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FD3DF4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_261FD3F44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261F8E774();
  *a1 = result & 1;
  return result;
}

uint64_t sub_261FD3F78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_261FD3FCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Identifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Identifier.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v6 = sub_26203AB8C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v13[1] = *v4;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_26203AE5C();
  sub_26203AAFC();
  return (*(v8 + 8))(v11, v6);
}

uint64_t Identifier.hashValue.getter()
{
  sub_26203ADDC();
  sub_26203A23C();
  return sub_26203AE0C();
}

uint64_t Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v19 = a5;
  type metadata accessor for Identifier.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v7 = sub_26203AA8C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_26203AE3C();
  if (!v5)
  {
    v13 = v19;
    v14 = sub_26203A9EC();
    v16 = v15;
    (*(v9 + 8))(v12, v7);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_261FD436C()
{
  sub_26203ADDC();
  Identifier.hash(into:)(v1);
  return sub_26203AE0C();
}

uint64_t sub_261FD442C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_261FD4488(_BYTE *result, int a2, int a3)
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

uint64_t sub_261FD4578(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 >= a1)
      {
        v4 = a1;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(a1 + 16);
LABEL_6:
      result = sub_261FD4E14(v4);
      break;
    case 3uLL:
      return result;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t sub_261FD460C(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v4 = 1;
  v6 = 0;
  switch(v3)
  {
    case 1uLL:
      v7 = a1;
      v8 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
LABEL_6:
      if (v7 != v8)
      {
        goto LABEL_8;
      }

      v6 = 0;
      v4 = 1;
      break;
    case 3uLL:
      return v6 | (v4 << 8);
    default:
      if ((a2 & 0xFF000000000000) != 0)
      {
LABEL_8:
        v6 = sub_26203950C();
        v4 = 0;
      }

      else
      {
        v6 = 0;
      }

      break;
  }

  return v6 | (v4 << 8);
}

uint64_t sub_261FD46AC()
{
  v3 = OUTLINED_FUNCTION_0_19();
  v4 = type metadata accessor for TunnelMessage(v3);
  v5 = v4;
  if (v2)
  {
    sub_261FCF8D4(v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v0);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v6, 1, v5);
}

uint64_t sub_261FD475C()
{
  v3 = OUTLINED_FUNCTION_0_19();
  v5 = v4(v3);
  if (v2)
  {
    OUTLINED_FUNCTION_71();
    (*(v6 + 16))(v0, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v7, 1, v5);
}

double sub_261FD47F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_261FA5688(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t IPv6Address.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  OUTLINED_FUNCTION_2_12();
  sub_26203AE2C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0Tm(v17, v17[3]);
    OUTLINED_FUNCTION_2_12();
    v8 = sub_26203AC1C();
    v10 = v9;

    sub_262039AEC();
    v11 = sub_262039ACC();
    if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
    {
      sub_261F8C2C8(v7, &qword_27FEFA270, &qword_262041910);
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_26203A7CC();

      v15 = 0xD000000000000016;
      v16 = 0x8000000262050300;
      MEMORY[0x266722710](v8, v10);

      sub_26203A81C();
      swift_allocError();
      sub_26203A7FC();

      swift_willThrow();
    }

    else
    {

      OUTLINED_FUNCTION_71();
      (*(v12 + 32))(a2, v7, v11);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t IPv6Address.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_262039ACC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_26203AE4C();
  (*(v5 + 16))(v7, v2, v4);
  sub_26203A20C();
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_26203AC3C();

  return __swift_destroy_boxed_opaque_existential_0Tm(v10);
}

void __swiftcall IPv6Address.copy_sockaddr_in6()(sockaddr_in6 *__return_ptr retstr)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_262039AAC();
  v6 = v5;
  sub_261FD4578(v4, v5);
  sub_261F6BFFC(v4, v6);
  sub_262039ABC();
  v7 = sub_262039B3C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    sub_261F8C2C8(v3, &unk_27FEF9B60, &unk_262040530);
    return;
  }

  v8 = sub_262039B2C();
  OUTLINED_FUNCTION_71();
  (*(v9 + 8))(v3, v7);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v8))
  {
LABEL_7:
    __break(1u);
  }
}

BOOL IPv6Address.isUniqueLocalAddress.getter(uint64_t a1)
{
  v1 = sub_262039AAC();
  v3 = v1;
  v4 = v2;
  switch(v2 >> 62)
  {
    case 1uLL:
      v1 = v1;
      v5 = v3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v1 = *(v1 + 16);
      v5 = *(v3 + 24);
LABEL_6:
      if (v1 == v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_7;
    default:
      if ((v2 & 0xFF000000000000) != 0)
      {
LABEL_8:
        v7 = sub_26203950C();
        sub_261F6BFFC(v3, v4);
        return v7 == 253;
      }

      else
      {
LABEL_7:
        sub_261F6BFFC(v3, v2);
        return 0;
      }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_261FD4E14(uint64_t a1)
{
  v2 = sub_26203937C();
  if (v2)
  {
    v3 = v2;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_26203939C();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t IPv4Header.sourceAddress.getter()
{
  v0 = OUTLINED_FUNCTION_47();
  sub_261F6B73C(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t IPv4Header.sourceAddress.setter(uint64_t a1, uint64_t a2)
{
  result = sub_261F6BFFC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t IPv4Header.destinationAddress.getter()
{
  v0 = OUTLINED_FUNCTION_47();
  sub_261F6B73C(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t IPv4Header.destinationAddress.setter(uint64_t a1, uint64_t a2)
{
  result = sub_261F6BFFC(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void IPv4Header.init(_:)()
{
  OUTLINED_FUNCTION_13_6();
  if (v3 < 20)
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_4_8();

    v4 = OUTLINED_FUNCTION_1_1();
    MEMORY[0x266721A20](v4);
    v5 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x266722710](v5);

    OUTLINED_FUNCTION_2_13();
    v6 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x266722710](v6);

    OUTLINED_FUNCTION_5_8();
    v7 = sub_261F9D610();
    OUTLINED_FUNCTION_14_0(v7);
    OUTLINED_FUNCTION_0_0();
LABEL_6:
    sub_26203AD4C();
    swift_willThrow();
    v10 = OUTLINED_FUNCTION_1_1();
    sub_261F6BFFC(v10, v11);
    return;
  }

  v8 = sub_26203950C();
  if ((v8 & 0xF0) != 0x40 || 4 * (v8 & 0x3Fu) < 0x14)
  {
LABEL_5:
    sub_261F9BCE0();
    sub_26203ACEC();
    v9 = sub_261F9D610();
    OUTLINED_FUNCTION_6(v9);
    goto LABEL_6;
  }

  v12 = 4 * (v8 & 0x3F);
  OUTLINED_FUNCTION_11_5();
  switch(v16)
  {
    case 1:
      v14 = v15;
      break;
    case 2:
      v14 = *(v2 + 16);
      break;
    default:
      break;
  }

  v17 = __OFADD__(v14, 2);
  v18 = v14 + 2;
  if (v17)
  {
    __break(1u);
    goto LABEL_33;
  }

  v19 = v18 + 2;
  if (__OFADD__(v18, 2))
  {
LABEL_33:
    __break(1u);
    return;
  }

  switch(v13)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v15 = *(v2 + 16);
LABEL_16:
      if (v18 < v15)
      {
        goto LABEL_5;
      }

      if (v13 == 2)
      {
        v20 = *(v2 + 24);
      }

      else
      {
        v20 = v2 >> 32;
      }

LABEL_26:
      if (v18 >= v19 || v20 < v19)
      {
        goto LABEL_5;
      }

LABEL_30:
      v23 = OUTLINED_FUNCTION_1_1();
      v25 = sub_261F6BE04(v23, v24, 2);
      if (v25 < v12)
      {
        goto LABEL_5;
      }

      v35 = v25 - v12;
      v34 = sub_26203950C();
      v26 = OUTLINED_FUNCTION_16_6(12, 16);
      v28 = v27;
      v29 = OUTLINED_FUNCTION_16_6(16, 20);
      v31 = v30;
      v32 = OUTLINED_FUNCTION_1_1();
      sub_261F6BFFC(v32, v33);
      *v1 = v12;
      *(v1 + 8) = v35;
      *(v1 + 16) = v34;
      *(v1 + 24) = v26;
      *(v1 + 32) = v28;
      *(v1 + 40) = v29;
      *(v1 + 48) = v31;
      break;
    case 3:
      if (v18 < 0)
      {
        goto LABEL_5;
      }

      if (v19 > 0 || __OFSUB__(v18, v19))
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    default:
      if (v18 < 0)
      {
        goto LABEL_5;
      }

      v20 = BYTE6(v0);
      goto LABEL_26;
  }
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

uint64_t sub_261FD54F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 56))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 32) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 32) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_261FD5540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_26203A7CC();
}

void OUTLINED_FUNCTION_5_8()
{

  JUMPOUT(0x266722710);
}

uint64_t static Data.randomBytes(ofLength:)(size_t a1)
{
  v4[0] = MEMORY[0x266721A10]();
  v4[1] = v2;
  if (!sub_261FD6238(v4, a1))
  {
    return v4[0];
  }

  result = sub_26203A91C();
  __break(1u);
  return result;
}

uint64_t Data.parseBE<A>(_:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4 >> 62;
  v9 = 0;
  v10 = a3;
  switch(a4 >> 62)
  {
    case 1uLL:
      v9 = a3;
      break;
    case 2uLL:
      v9 = *(a3 + 16);
      break;
    default:
      break;
  }

  v11 = __OFADD__(v9, a2);
  v12 = v9 + a2;
  if (v11)
  {
    __break(1u);
    goto LABEL_30;
  }

  v13 = *(*(a5 - 8) + 64);
  v11 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v11)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  switch(v7)
  {
    case 1:
      goto LABEL_10;
    case 2:
      v10 = *(a3 + 16);
LABEL_10:
      if (v12 < v10)
      {
        goto LABEL_26;
      }

      if (v7 == 2)
      {
        v15 = *(a3 + 24);
      }

      else
      {
        v15 = a3 >> 32;
      }

      break;
    case 3:
      if (v12 < 0)
      {
        goto LABEL_26;
      }

      if (v14 > 0 || v12 >= v14)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    default:
      if (v12 < 0)
      {
        goto LABEL_26;
      }

      v15 = BYTE6(a4);
      break;
  }

  if (v12 >= v14 || v15 < v14)
  {
LABEL_26:

    return __swift_storeEnumTagSinglePayload(a6, 1, 1, a5);
  }

  else
  {
LABEL_19:
    MEMORY[0x28223BE20](result);
    sub_26203951C();
    return __swift_storeEnumTagSinglePayload(a6, 0, 1, a5);
  }
}

uint64_t sub_261FD5884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  sub_261FD593C(v7, v8, a4, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_26203A8DC();
}

uint64_t sub_261FD593C@<X0>(uint64_t result@<X0>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  if (a3)
  {
    return sub_261FD5F40(result, a3, a5, x8_0);
  }

  __break(1u);
  return result;
}

double sub_261FD5950()
{
  *&result = 32;
  xmmword_27FEF9ED0 = xmmword_262042510;
  byte_27FEF9EE0 = 0;
  return result;
}

uint64_t Data.HexStringEncodingOptions.init(separator:uppercase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static Data.HexStringEncodingOptions.authTag.getter()
{
  if (qword_27FEF8638 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_20(&xmmword_27FEF9ED0);
}

double sub_261FD59E4()
{
  *&result = 58;
  xmmword_27FEF9EE8 = xmmword_262042520;
  byte_27FEF9EF8 = 1;
  return result;
}

uint64_t static Data.HexStringEncodingOptions.bluetoothAddress.getter()
{
  if (qword_27FEF8640 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_20(&xmmword_27FEF9EE8);
}

double sub_261FD5A70()
{
  *&result = 58;
  xmmword_27FEF9F00 = xmmword_262042520;
  byte_27FEF9F10 = 0;
  return result;
}

uint64_t static Data.HexStringEncodingOptions.macAddress.getter()
{
  if (qword_27FEF8648 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_20(&xmmword_27FEF9F00);
}

uint64_t Data.HexStringEncodingOptions.separator.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Data.hexEncodedString(options:)(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3 >> 62;
  v5 = HIDWORD(a2);
  v6 = BYTE6(a3);
  switch(a3 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a2), a2))
      {
        goto LABEL_45;
      }

      v7 = HIDWORD(a2) - a2;
LABEL_6:
      if (v7)
      {
        v39 = MEMORY[0x277D84F90];
        sub_261F959CC(0, v7 & ~(v7 >> 63), 0);
        v10 = a2;
        if (v3)
        {
          if (v3 == 2)
          {
            v11 = *(a2 + 16);
          }

          else
          {
            v11 = a2;
          }
        }

        else
        {
          v11 = 0;
        }

        if (v7 < 0)
        {
          goto LABEL_44;
        }

        v31 = v6;
        v12 = v39;
        v30 = v5;
        while (1)
        {
          if (v3 == 1)
          {
            if (v11 < a2 || v11 >= a2 >> 32)
            {
              goto LABEL_40;
            }

            v15 = sub_26203937C();
            if (!v15)
            {
              goto LABEL_47;
            }

            v16 = v15;
            v17 = sub_2620393AC();
            v18 = v11 - v17;
            if (__OFSUB__(v11, v17))
            {
              goto LABEL_42;
            }
          }

          else
          {
            if (!v3)
            {
              if (v11 >= v31)
              {
                goto LABEL_39;
              }

              LOBYTE(v33) = v10;
              *(&v33 + 1) = *(&a2 + 1);
              BYTE3(v33) = BYTE3(a2);
              BYTE4(v33) = v30;
              *(&v33 + 5) = *(&a2 + 5);
              HIBYTE(v33) = HIBYTE(a2);
              v34 = a3;
              v35 = BYTE2(a3);
              v36 = BYTE3(a3);
              v37 = BYTE4(a3);
              v38 = BYTE5(a3);
              v13 = *(&v33 + v11);
              goto LABEL_33;
            }

            if (v11 < *(v10 + 16))
            {
              __break(1u);
LABEL_39:
              __break(1u);
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
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
            }

            if (v11 >= *(v10 + 24))
            {
              goto LABEL_41;
            }

            v19 = sub_26203937C();
            if (!v19)
            {
              goto LABEL_48;
            }

            v16 = v19;
            v20 = sub_2620393AC();
            v18 = v11 - v20;
            if (__OFSUB__(v11, v20))
            {
              goto LABEL_43;
            }
          }

          v13 = *(v16 + v18);
          v10 = a2;
LABEL_33:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_26203E9E0;
          *(v21 + 56) = MEMORY[0x277D84B78];
          *(v21 + 64) = MEMORY[0x277D84BC0];
          *(v21 + 32) = v13;
          v22 = sub_26203A1DC();
          v24 = v23;
          v39 = v12;
          v26 = *(v12 + 16);
          v25 = *(v12 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_261F959CC(v25 > 1, v26 + 1, 1);
            v10 = a2;
            v12 = v39;
          }

          *(v12 + 16) = v26 + 1;
          v27 = v12 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
          ++v11;
          if (!--v7)
          {

            goto LABEL_37;
          }
        }
      }

LABEL_10:

      v12 = MEMORY[0x277D84F90];
LABEL_37:
      v33 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9990, &qword_26203F7D0);
      sub_261FD661C();
      v28 = sub_26203A13C();

      return v28;
    case 2uLL:
      v9 = *(a2 + 16);
      v8 = *(a2 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_46;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(a3);
      goto LABEL_6;
  }
}

uint64_t sub_261FD5F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  isStackAllocationSafe = MEMORY[0x28223BE20](v9);
  v14 = &v20[-v13];
  v15 = *(v8 + 80);
  if (((v15 + 1) & v15) != 0)
  {
    __break(1u);
LABEL_9:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
LABEL_3:
      v16 = swift_slowAlloc();
      sub_261FD6184(v16, a2, a1, a3, a4);

      JUMPOUT(0x266724180);
    }

    goto LABEL_7;
  }

  if (v15 > 0xF)
  {
    goto LABEL_3;
  }

  if (*(v8 + 72) >= 1025)
  {
    goto LABEL_9;
  }

LABEL_7:
  MEMORY[0x28223BE20](isStackAllocationSafe);
  sub_261FD6184(&v20[-v17], a2, a1, a3, v11);
  v18 = *(v8 + 32);
  v18(v14, v11, a3);
  return v18(a4, v14, a3);
}

void *sub_261FD6184@<X0>(void *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    memcpy(result, (a2 + a3), v7);
    return (*(v6 + 16))(a5, v9, a4);
  }

  return result;
}

uint64_t sub_261FD6238(uint64_t *a1, size_t count)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v11 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v4, v3);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v12 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      if (v12 < v4)
      {
        goto LABEL_16;
      }

      if (sub_26203937C() && __OFSUB__(v4, sub_2620393AC()))
      {
        goto LABEL_17;
      }

      sub_2620393BC();
      swift_allocObject();
      v13 = sub_26203935C();

      v11 = v13;
LABEL_12:
      if (v12 < v4)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      p_bytes = sub_261FD65A0(v4, v4 >> 32, v11, count);

      *a1 = v4;
      a1[1] = v11 | 0x4000000000000000;
      return p_bytes;
    case 2uLL:

      sub_261F6BFFC(v4, v3);
      *&bytes = v4;
      *(&bytes + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      p_bytes = &bytes;
      sub_26203944C();
      v9 = bytes;
      v10 = sub_261FD65A0(*(bytes + 16), *(bytes + 24), *(&bytes + 1), count);
      *a1 = v9;
      a1[1] = *(&v9 + 1) | 0x8000000000000000;
      if (!v2)
      {
        return v10;
      }

      return p_bytes;
    case 3uLL:
      *(&bytes + 7) = 0;
      *&bytes = 0;
      return SecRandomCopyBytes(*MEMORY[0x277CDC540], count, &bytes);
    default:
      sub_261F6BFFC(v4, v3);
      *&bytes = v4;
      WORD4(bytes) = v3;
      BYTE10(bytes) = BYTE2(v3);
      BYTE11(bytes) = BYTE3(v3);
      BYTE12(bytes) = BYTE4(v3);
      BYTE13(bytes) = BYTE5(v3);
      BYTE14(bytes) = BYTE6(v3);
      p_bytes = SecRandomCopyBytes(*MEMORY[0x277CDC540], count, &bytes);
      v8 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v8;
      return p_bytes;
  }
}

uint64_t sub_261FD65A0(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  result = sub_26203937C();
  if (result)
  {
    v7 = result;
    result = sub_2620393AC();
    v8 = __OFSUB__(a1, result);
    v9 = a1 - result;
    if (!v8)
    {
      sub_26203939C();
      return SecRandomCopyBytes(*MEMORY[0x277CDC540], a4, (v7 + v9));
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_261FD661C()
{
  result = qword_28108B318;
  if (!qword_28108B318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEF9990, &qword_26203F7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B318);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_261FD6694(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_261FD66E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t PairableHostInfo.identifier.getter()
{
  sub_26203965C();
  OUTLINED_FUNCTION_6_1();
  v0 = OUTLINED_FUNCTION_47();

  return v1(v0);
}

uint64_t PairableHostInfo.identifier.setter()
{
  OUTLINED_FUNCTION_11_6();
  sub_26203965C();
  OUTLINED_FUNCTION_6_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t PairableHostInfo.name.getter()
{
  type metadata accessor for PairableHostInfo(0);

  return OUTLINED_FUNCTION_47();
}

uint64_t PairableHostInfo.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PairableHostInfo(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PairableHostInfo.name.modify()
{
  v0 = OUTLINED_FUNCTION_11_6();
  type metadata accessor for PairableHostInfo(v0);
  return OUTLINED_FUNCTION_14_8();
}

uint64_t PairableHostInfo.model.getter()
{
  type metadata accessor for PairableHostInfo(0);

  return OUTLINED_FUNCTION_47();
}

uint64_t PairableHostInfo.model.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PairableHostInfo(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PairableHostInfo.model.modify()
{
  v0 = OUTLINED_FUNCTION_11_6();
  type metadata accessor for PairableHostInfo(v0);
  return OUTLINED_FUNCTION_14_8();
}

uint64_t PairableHostInfo.available.setter(char a1)
{
  result = type metadata accessor for PairableHostInfo(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PairableHostInfo.available.modify()
{
  v0 = OUTLINED_FUNCTION_11_6();
  type metadata accessor for PairableHostInfo(v0);
  return OUTLINED_FUNCTION_14_8();
}

uint64_t PairableHostInfo.paired.setter(char a1)
{
  result = type metadata accessor for PairableHostInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PairableHostInfo.paired.modify()
{
  v0 = OUTLINED_FUNCTION_11_6();
  type metadata accessor for PairableHostInfo(v0);
  return OUTLINED_FUNCTION_14_8();
}

uint64_t PairableHostInfo.monotonicIdentifier.setter()
{
  v2 = OUTLINED_FUNCTION_11_6();
  result = type metadata accessor for PairableHostInfo(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t PairableHostInfo.monotonicIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_11_6();
  type metadata accessor for PairableHostInfo(v0);
  return OUTLINED_FUNCTION_14_8();
}

uint64_t PairableHostInfo.endpoint.setter()
{
  v0 = OUTLINED_FUNCTION_11_6();
  type metadata accessor for PairableHostInfo(v0);
  return _s19RemotePairingDevice014CreateWirelessB14SessionRequestV8endpointSo13OS_xpc_object_pvs_0();
}

void (*PairableHostInfo.endpoint.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for PairableHostInfo(0);
  v2[4] = sub_26203986C();
  return sub_261F9115C;
}

uint64_t PairableHostInfo.init(identifier:name:model:available:paired:monotonicIdentifier:endpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for PairableHostInfo(0);
  v18 = (a9 + v17[6]);
  v19 = sub_26203965C();
  v23 = *(v19 - 8);
  (*(v23 + 16))(a9, a1, v19);
  v20 = (a9 + v17[5]);
  *v20 = a2;
  v20[1] = a3;
  *v18 = a4;
  v18[1] = a5;
  *(a9 + v17[7]) = a6;
  *(a9 + v17[8]) = a7;
  *(a9 + v17[9]) = a8;
  sub_26203985C();
  v21 = *(v23 + 8);

  return v21(a1, v19);
}

uint64_t sub_261FD6DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646572696170 && a2 == 0xE600000000000000;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000002620503D0 == a2;
            if (v10 || (sub_26203AC0C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_26203AC0C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_261FD7008(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6C65646F6DLL;
      break;
    case 3:
      result = 0x6C62616C69617661;
      break;
    case 4:
      result = 0x646572696170;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x746E696F70646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FD70D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FD6DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FD7100(uint64_t a1)
{
  v2 = sub_261FD7414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD713C(uint64_t a1)
{
  v2 = sub_261FD7414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PairableHostInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F18, &qword_2620425A0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FD7414();
  sub_26203AE5C();
  v14[15] = 0;
  sub_26203965C();
  OUTLINED_FUNCTION_7_8();
  sub_261FD7468(v9, v10, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_12_6();
  sub_26203AB3C();
  if (!v1)
  {
    type metadata accessor for PairableHostInfo(0);
    v14[14] = 1;
    OUTLINED_FUNCTION_12_6();
    sub_26203AAFC();
    v14[13] = 2;
    OUTLINED_FUNCTION_12_6();
    sub_26203AAAC();
    v14[12] = 3;
    OUTLINED_FUNCTION_12_6();
    sub_26203AB0C();
    v14[11] = 4;
    OUTLINED_FUNCTION_12_6();
    sub_26203AB0C();
    v14[10] = 5;
    OUTLINED_FUNCTION_12_6();
    sub_26203AB7C();
    v14[9] = 6;
    sub_26203989C();
    OUTLINED_FUNCTION_8_6();
    sub_261FD7468(v11, v12, MEMORY[0x277D28148]);
    OUTLINED_FUNCTION_12_6();
    sub_26203AB3C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_261FD7414()
{
  result = qword_27FEF9F20;
  if (!qword_27FEF9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F20);
  }

  return result;
}

uint64_t sub_261FD7468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PairableHostInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_39();
  v76 = v27;
  v29 = v28;
  v71 = v30;
  v31 = sub_26203989C();
  OUTLINED_FUNCTION_0();
  v70 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  v36 = v35 - v34;
  v37 = sub_26203965C();
  OUTLINED_FUNCTION_0();
  v74 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_74();
  v42 = v41 - v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F28, &qword_2620425A8);
  OUTLINED_FUNCTION_0();
  v72 = v44;
  v73 = v43;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v45);
  v47 = &v69 - v46;
  v77 = type metadata accessor for PairableHostInfo(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_74();
  v51 = v50 - v49;
  v52 = v29[3];
  v78 = v29;
  __swift_project_boxed_opaque_existential_0Tm(v29, v52);
  sub_261FD7414();
  v75 = v47;
  v53 = v76;
  sub_26203AE3C();
  if (v53)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
  }

  else
  {
    v76 = v36;
    OUTLINED_FUNCTION_7_8();
    sub_261FD7468(v54, v55, MEMORY[0x277CC9618]);
    sub_26203AA2C();
    v56 = v51;
    (*(v74 + 32))(v51, v42, v37);
    OUTLINED_FUNCTION_5_9();
    v57 = sub_26203A9EC();
    v58 = v77;
    v59 = (v56 + *(v77 + 20));
    *v59 = v57;
    v59[1] = v60;
    OUTLINED_FUNCTION_5_9();
    v61 = sub_26203A99C();
    v62 = (v56 + v58[6]);
    *v62 = v61;
    v62[1] = v63;
    OUTLINED_FUNCTION_5_9();
    *(v56 + v58[7]) = sub_26203A9FC() & 1;
    OUTLINED_FUNCTION_5_9();
    v64 = sub_26203A9FC();
    v65 = v72;
    *(v56 + v58[8]) = v64 & 1;
    OUTLINED_FUNCTION_5_9();
    *(v56 + v58[9]) = sub_26203AA6C();
    OUTLINED_FUNCTION_8_6();
    sub_261FD7468(v66, v67, MEMORY[0x277D28150]);
    v68 = v76;
    sub_26203AA2C();
    (*(v65 + 8))(v75, v73);
    (*(v70 + 32))(v56 + v58[10], v68, v31);
    sub_261FD8148(v56, v71);
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    sub_261FD79D4(v56);
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_261FD79D4(uint64_t a1)
{
  v2 = type metadata accessor for PairableHostInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261FD7A30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002620503F0 == a2;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000262050410 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

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

unint64_t sub_261FD7B08(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_261FD7B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FD7A30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FD7B9C(uint64_t a1)
{
  v2 = sub_261FD80F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD7BD8(uint64_t a1)
{
  v2 = sub_261FD80F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FD7C14(uint64_t a1)
{
  v2 = sub_261FD8248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD7C50(uint64_t a1)
{
  v2 = sub_261FD8248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FD7C8C(uint64_t a1)
{
  v2 = sub_261FD81A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD7CC8(uint64_t a1)
{
  v2 = sub_261FD81A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void DeviceServiceEvent.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v40 = v0;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F30, &qword_2620425B0);
  OUTLINED_FUNCTION_0();
  v38 = v4;
  v39 = v3;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_44();
  v36 = v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F38, &qword_2620425B8);
  OUTLINED_FUNCTION_0();
  v35 = v7;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  v34 = v9;
  v33[1] = type metadata accessor for PairableHostInfo(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v13 = v12 - v11;
  type metadata accessor for DeviceServiceEvent(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F40, &qword_2620425C0);
  OUTLINED_FUNCTION_0();
  v20 = v19;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v21);
  v23 = v33 - v22;
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_261FD80F4();
  sub_26203AE5C();
  OUTLINED_FUNCTION_1_16();
  sub_261FD8148(v40, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v17;
    v25 = *(v17 + 8);
    v26 = *(v17 + 16);
    v41 = 1;
    sub_261FD81A0();
    v27 = v36;
    sub_26203AA9C();
    v41 = v24;
    v42 = v25;
    v43 = v26;
    sub_261FD81F4();
    v28 = v39;
    sub_26203AB3C();
    (*(v38 + 8))(v27, v28);
  }

  else
  {
    sub_261FD8CD8(v17, v13);
    v41 = 0;
    sub_261FD8248();
    v29 = v34;
    sub_26203AA9C();
    OUTLINED_FUNCTION_9_7();
    sub_261FD7468(v30, v31, &protocol conformance descriptor for PairableHostInfo);
    v32 = v37;
    sub_26203AB3C();
    (*(v35 + 8))(v29, v32);
    sub_261FD79D4(v13);
  }

  (*(v20 + 8))(v23, v18);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261FD80F4()
{
  result = qword_27FEF9F48;
  if (!qword_27FEF9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F48);
  }

  return result;
}

uint64_t sub_261FD8148(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_1();
  v4(v3);
  OUTLINED_FUNCTION_6_1();
  v5 = OUTLINED_FUNCTION_47();
  v6(v5);
  return a2;
}

unint64_t sub_261FD81A0()
{
  result = qword_27FEF9F50;
  if (!qword_27FEF9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F50);
  }

  return result;
}

unint64_t sub_261FD81F4()
{
  result = qword_27FEF9F58;
  if (!qword_27FEF9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F58);
  }

  return result;
}

unint64_t sub_261FD8248()
{
  result = qword_27FEF9F60;
  if (!qword_27FEF9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F60);
  }

  return result;
}

void DeviceServiceEvent.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v65 = v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F68, &qword_2620425C8);
  OUTLINED_FUNCTION_0();
  v71 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_44();
  v70 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F70, &qword_2620425D0);
  OUTLINED_FUNCTION_0();
  v67 = v8;
  v68 = v7;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  v69 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F78, &unk_2620425D8);
  OUTLINED_FUNCTION_0();
  v72 = v12;
  v73 = v11;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v13);
  v15 = &v59[-v14];
  v16 = type metadata accessor for DeviceServiceEvent(0);
  OUTLINED_FUNCTION_6_1();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v59[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v59[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v59[-v24];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_261FD80F4();
  sub_26203AE3C();
  if (v0)
  {
    goto LABEL_8;
  }

  v62 = v23;
  v63 = v20;
  v61 = v25;
  v64 = v16;
  v26 = v73;
  sub_26203AA7C();
  sub_261F99084();
  v30 = v15;
  if (v28 == v29 >> 1)
  {
LABEL_7:
    v40 = v64;
    v41 = sub_26203A81C();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v43 = v40;
    sub_26203A98C();
    sub_26203A80C();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = OUTLINED_FUNCTION_4_9();
    v45(v44, v26);
LABEL_8:
    v46 = v2;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    OUTLINED_FUNCTION_38_0();
    return;
  }

  if (v28 < (v29 >> 1))
  {
    v60 = *(v27 + v28);
    sub_261F99070();
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    v35 = v71;
    v36 = v63;
    if (v32 == v34 >> 1)
    {
      v37 = v26;
      if (v60)
      {
        v74 = 1;
        sub_261FD81A0();
        v38 = v70;
        OUTLINED_FUNCTION_16_7(&type metadata for DeviceServiceEvent.PairingChallengeCodingKeys, &v74);
        sub_261FD8C84();
        v39 = v66;
        sub_26203AA2C();
        swift_unknownObjectRelease();
        (*(v35 + 8))(v38, v39);
        v51 = OUTLINED_FUNCTION_4_9();
        v52(v51, v37);
        v53 = v75;
        v54 = v76;
        *v36 = v74;
        *(v36 + 8) = v53;
        *(v36 + 16) = v54;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_16();
        v55 = v36;
      }

      else
      {
        v74 = 0;
        sub_261FD8248();
        OUTLINED_FUNCTION_16_7(&type metadata for DeviceServiceEvent.PairableHostFoundCodingKeys, &v74);
        type metadata accessor for PairableHostInfo(0);
        OUTLINED_FUNCTION_9_7();
        sub_261FD7468(v47, v48, &protocol conformance descriptor for PairableHostInfo);
        v49 = v62;
        sub_26203AA2C();
        v50 = v72;
        swift_unknownObjectRelease();
        v56 = OUTLINED_FUNCTION_17_5();
        v57(v56);
        (*(v50 + 8))(v30, v26);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_16();
        v55 = v49;
      }

      v58 = v61;
      sub_261FD8CD8(v55, v61);
      OUTLINED_FUNCTION_1_16();
      sub_261FD8CD8(v58, v65);
      v46 = v2;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_261FD88E0(uint64_t a1)
{
  v2 = sub_261FD8D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD891C(uint64_t a1)
{
  v2 = sub_261FD8D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FD89B4(uint64_t a1)
{
  v2 = sub_261FD8D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD89F0(uint64_t a1)
{
  v2 = sub_261FD8D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FD8AB0(uint64_t a1)
{
  v2 = sub_261FD8DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD8AEC(uint64_t a1)
{
  v2 = sub_261FD8DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_261FD8B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_0Tm(v25, v25[3]);
  v23();
  sub_26203AE5C();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261FD8C84()
{
  result = qword_27FEF9F80;
  if (!qword_27FEF9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F80);
  }

  return result;
}

uint64_t sub_261FD8CD8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_1();
  v4(v3);
  OUTLINED_FUNCTION_6_1();
  v5 = OUTLINED_FUNCTION_47();
  v6(v5);
  return a2;
}

unint64_t sub_261FD8D30()
{
  result = qword_27FEF9F90;
  if (!qword_27FEF9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F90);
  }

  return result;
}

unint64_t sub_261FD8D84()
{
  result = qword_27FEF9FA0;
  if (!qword_27FEF9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FA0);
  }

  return result;
}

unint64_t sub_261FD8DD8()
{
  result = qword_27FEF9FB0;
  if (!qword_27FEF9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FB0);
  }

  return result;
}

uint64_t sub_261FD8E2C(uint64_t a1)
{
  *(a1 + 8) = sub_261FD7468(&qword_27FEF9670, type metadata accessor for PairableHostInfo, &protocol conformance descriptor for PairableHostInfo);
  result = sub_261FD7468(&unk_27FEF9678, type metadata accessor for PairableHostInfo, &protocol conformance descriptor for PairableHostInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_261FD8F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

void sub_261FD8F98(uint64_t a1)
{
  sub_26203965C();
  if (v1 <= 0x3F)
  {
    sub_261F971AC();
    if (v2 <= 0x3F)
    {
      sub_26203989C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_261FD9050(uint64_t a1)
{
  result = type metadata accessor for PairableHostInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceServiceEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_261FD9204(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PairableHostInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_261FD9390()
{
  result = qword_27FEF9FD8;
  if (!qword_27FEF9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FD8);
  }

  return result;
}

unint64_t sub_261FD93E8()
{
  result = qword_27FEF9FE0;
  if (!qword_27FEF9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FE0);
  }

  return result;
}

unint64_t sub_261FD9440()
{
  result = qword_27FEF9FE8;
  if (!qword_27FEF9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FE8);
  }

  return result;
}

unint64_t sub_261FD9498()
{
  result = qword_27FEF9FF0;
  if (!qword_27FEF9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FF0);
  }

  return result;
}

unint64_t sub_261FD94F0()
{
  result = qword_27FEF9FF8;
  if (!qword_27FEF9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FF8);
  }

  return result;
}

unint64_t sub_261FD9548()
{
  result = qword_27FEFA000;
  if (!qword_27FEFA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA000);
  }

  return result;
}

unint64_t sub_261FD95A0()
{
  result = qword_27FEFA008;
  if (!qword_27FEFA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA008);
  }

  return result;
}

unint64_t sub_261FD95F8()
{
  result = qword_27FEFA010;
  if (!qword_27FEFA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA010);
  }

  return result;
}

unint64_t sub_261FD9650()
{
  result = qword_27FEFA018;
  if (!qword_27FEFA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA018);
  }

  return result;
}

unint64_t sub_261FD96A8()
{
  result = qword_27FEFA020;
  if (!qword_27FEFA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA020);
  }

  return result;
}

unint64_t sub_261FD9700()
{
  result = qword_27FEFA028;
  if (!qword_27FEFA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA028);
  }

  return result;
}

unint64_t sub_261FD9758()
{
  result = qword_27FEFA030;
  if (!qword_27FEFA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA030);
  }

  return result;
}

unint64_t sub_261FD97B0()
{
  result = qword_27FEFA038;
  if (!qword_27FEFA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA038);
  }

  return result;
}

unint64_t sub_261FD9808()
{
  result = qword_27FEFA040;
  if (!qword_27FEFA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA040);
  }

  return result;
}

unint64_t sub_261FD9860()
{
  result = qword_27FEFA048;
  if (!qword_27FEFA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA048);
  }

  return result;
}

unint64_t sub_261FD98B8()
{
  result = qword_27FEFA050;
  if (!qword_27FEFA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA050);
  }

  return result;
}

unint64_t sub_261FD9910()
{
  result = qword_27FEFA058;
  if (!qword_27FEFA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA058);
  }

  return result;
}

unint64_t sub_261FD9968()
{
  result = qword_27FEFA060;
  if (!qword_27FEFA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA060);
  }

  return result;
}

id sub_261FD9A28()
{
  result = [v0 error];
  if (!result)
  {
    result = sub_261FDBBB8(v0);
    if (v2 >> 60 == 15)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_261FD9A84()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEFA068 = result;
  return result;
}

uint64_t sub_261FD9AF0()
{
  type metadata accessor for AtomicCounter();
  swift_allocObject();
  result = AtomicCounter.init()();
  qword_27FEFA070 = result;
  return result;
}

uint64_t sub_261FD9B30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_261FD9BBC(v1, v2);
}

uint64_t sub_261FD9B70()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_261FD9BBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

double sub_261FD9C60@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t BluetoothLEConnectionControlChannelTransport.__allocating_init(connection:)(void *a1)
{
  v2 = swift_allocObject();
  BluetoothLEConnectionControlChannelTransport.init(connection:)(a1);
  return v2;
}

uint64_t BluetoothLEConnectionControlChannelTransport.init(connection:)(void *a1)
{
  v2 = v1;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  v3 = qword_27FEF8658;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_262017880();
  v5 = sub_26203ABAC();
  MEMORY[0x266722710](v5);

  *(v2 + 24) = 0x746F6F7465756C62;
  *(v2 + 32) = 0xEA00000000002D68;
  return v2;
}

void sub_261FD9D88()
{
  OUTLINED_FUNCTION_4_10();
  v5 = [objc_allocWithZone(MEMORY[0x277CBE080]) init];
  [v5 setMinLength_];
  [v5 setMaxLength_];
  OUTLINED_FUNCTION_107();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v0;
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_17();
  v10[2] = v7;
  v10[3] = &block_descriptor_7;
  v8 = _Block_copy(v10);
  v9 = v5;

  [v9 setCompletion_];
  _Block_release(v8);
  [*(v1 + 16) readWithCBReadRequest_];
}

void sub_261FD9EA0(uint64_t a1, void (*a2)(void))
{
  v3 = sub_261FD9A28();
  if (v5 == -1)
  {
    sub_26203A91C();
    __break(1u);
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    a2();

    sub_261FDBBA0(v6, v7, v8);
  }
}

void sub_261FD9F74()
{
  OUTLINED_FUNCTION_4_10();
  v5 = [objc_allocWithZone(MEMORY[0x277CBE0C8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF95F8, &unk_26203E610);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26203E9E0;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  sub_261F6B73C(v4, v3);
  sub_261FDB70C(v6, v5);
  OUTLINED_FUNCTION_107();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v0;
  v7[4] = v5;
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_17();
  v11[2] = v8;
  v11[3] = &block_descriptor_6_0;
  v9 = _Block_copy(v11);

  v10 = v5;

  [v10 setCompletion_];
  _Block_release(v9);
  [*(v1 + 16) writeWithCBWriteRequest_];
}

void sub_261FDA0BC(void (*a1)(void), int a2, id a3)
{
  v4 = [a3 error];
  a1();
}

void sub_261FDA130(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = v5[2];
  [v9 setDispatchQueue_];
  v10 = OUTLINED_FUNCTION_3_14();
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a4;
  v26 = sub_261FDB784;
  v27 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_261F78F64;
  v25 = &block_descriptor_15_0;
  v12 = _Block_copy(&aBlock);

  [v9 setInvalidationHandler_];
  _Block_release(v12);
  v13 = OUTLINED_FUNCTION_3_14();
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v26 = sub_261FDB790;
  v27 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_261F78F64;
  v25 = &block_descriptor_22;
  v15 = _Block_copy(&aBlock);

  [v9 setInterruptionHandler_];
  _Block_release(v15);
  v16 = OUTLINED_FUNCTION_3_14();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a2;
  *(v17 + 48) = a1;
  *(v17 + 56) = v20;
  v26 = sub_261FDB79C;
  v27 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_261FB8024;
  v25 = &block_descriptor_29;
  v18 = _Block_copy(&aBlock);

  v19 = a1;

  [v9 activateWithCompletion_];
  _Block_release(v18);
}

uint64_t sub_261FDA410(uint64_t a1, void (*a2)(_BYTE *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_26203A48C();
    if (qword_27FEF8650 != -1)
    {
      swift_once();
    }

    v6 = qword_27FEFA068;
    if (os_log_type_enabled(qword_27FEFA068, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136446210;
      swift_beginAccess();
      v9 = *(v4 + 24);
      v10 = *(v4 + 32);

      v11 = sub_261F67FE4(v9, v10, v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_261F5B000, v6, v5, "%{public}s: CBConnection invalidated", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x266724180](v8, -1, -1);
      MEMORY[0x266724180](v7, -1, -1);
    }

    sub_261F9BCE0();
    sub_26203AD3C();
    __src[1] = v15[1];
    sub_261F9D610();
    v12 = swift_allocError();
    sub_26203AD4C();
    __src[0] = v12;
    sub_261F65314(__src);
    memcpy(__dst, __src, 0x92uLL);
    a2(__dst);

    memcpy(v15, __dst, 0x92uLL);
    return sub_261F6A760(v15);
  }

  return result;
}

uint64_t sub_261FDA66C(uint64_t a1, void (*a2)(_BYTE *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_26203A48C();
    if (qword_27FEF8650 != -1)
    {
      swift_once();
    }

    v6 = qword_27FEFA068;
    if (os_log_type_enabled(qword_27FEFA068, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136446210;
      swift_beginAccess();
      v9 = *(v4 + 24);
      v10 = *(v4 + 32);

      v11 = sub_261F67FE4(v9, v10, v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_261F5B000, v6, v5, "%{public}s: CBConnection interrupted", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x266724180](v8, -1, -1);
      MEMORY[0x266724180](v7, -1, -1);
    }

    sub_261F9BCE0();
    sub_26203AD3C();
    __src[1] = v15[1];
    sub_261F9D610();
    v12 = swift_allocError();
    sub_26203AD4C();
    __src[0] = v12;
    sub_261F65314(__src);
    memcpy(__dst, __src, 0x92uLL);
    a2(__dst);

    memcpy(v15, __dst, 0x92uLL);
    return sub_261F6A760(v15);
  }

  return result;
}

void *sub_261FDA8C8(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v65 = a7;
  LODWORD(v64) = a5;
  v70 = sub_262039F9C();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v12 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_26203A03C();
  v69 = *(v71 - 8);
  v13 = MEMORY[0x28223BE20](v71);
  v66 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v67 = &v59[-v15];
  v16 = sub_262039FAC();
  MEMORY[0x28223BE20](v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    if (a1)
    {
      v19 = a1;
      v20 = sub_26203A48C();
      if (qword_27FEF8650 != -1)
      {
        swift_once();
      }

      v21 = qword_27FEFA068;
      if (os_log_type_enabled(qword_27FEFA068, v20))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v63 = a3;
        v24 = v23;
        v75[0] = v23;
        *v22 = 136446466;
        swift_beginAccess();
        v25 = v18[3];
        v26 = v18[4];

        v27 = sub_261F67FE4(v25, v26, v75);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2080;
        v74[0] = a1;
        v28 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v29 = sub_26203A20C();
        v31 = sub_261F67FE4(v29, v30, v75);

        *(v22 + 14) = v31;
        _os_log_impl(&dword_261F5B000, v21, v20, "%{public}s: CBConnection failed to activate: %s", v22, 0x16u);
        swift_arrayDestroy();
        v32 = v24;
        a3 = v63;
        MEMORY[0x266724180](v32, -1, -1);
        MEMORY[0x266724180](v22, -1, -1);
      }

      v74[0] = a1;
      sub_261F65314(v74);
      memcpy(v72, v74, 0x92uLL);
      v33 = a1;
      (a3)(v72);

      memcpy(v75, v72, 0x92uLL);
      return sub_261F6A760(v75);
    }

    else
    {
      v34 = sub_26203A48C();
      if (qword_27FEF8650 != -1)
      {
        swift_once();
      }

      v62 = qword_27FEFA068;
      v35 = os_log_type_enabled(qword_27FEFA068, v34);
      v61 = a6;
      if (v35)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v75[0] = v37;
        *v36 = 136446210;
        swift_beginAccess();
        v60 = v34;
        v63 = a3;
        v38 = a4;
        v39 = v18[3];
        v40 = v18[4];

        v41 = sub_261F67FE4(v39, v40, v75);
        a4 = v38;
        a3 = v63;

        *(v36 + 4) = v41;
        _os_log_impl(&dword_261F5B000, v62, v60, "%{public}s: CBConnection activated", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x266724180](v37, -1, -1);
        MEMORY[0x266724180](v36, -1, -1);
      }

      sub_261FDBAD0(v75);
      memcpy(v74, v75, 0x92uLL);
      (a3)(v74);
      if (v64)
      {
        sub_261FE6DE0();
      }

      else
      {
        v42 = sub_26203A4AC();
        if (os_log_type_enabled(v62, v42))
        {
          v43 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v74[0] = v63;
          *v43 = 136446210;
          swift_beginAccess();
          v64 = a4;
          v45 = v18[3];
          v44 = v18[4];

          v46 = sub_261F67FE4(v45, v44, v74);

          *(v43 + 4) = v46;
          a4 = v64;
          _os_log_impl(&dword_261F5B000, v62, v42, "%{public}s: Not processing incoming messages due to configuration", v43, 0xCu);
          v47 = v63;
          __swift_destroy_boxed_opaque_existential_0Tm(v63);
          MEMORY[0x266724180](v47, -1, -1);
          MEMORY[0x266724180](v43, -1, -1);
        }
      }

      v48 = swift_allocObject();
      swift_weakInit();
      v49 = swift_allocObject();
      v49[2] = v48;
      v49[3] = a3;
      v50 = v65;
      v49[4] = a4;
      v49[5] = v50;
      v74[4] = sub_261FDBB4C;
      v74[5] = v49;
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 1107296256;
      v74[2] = sub_261F78F64;
      v74[3] = &block_descriptor_41;
      _Block_copy(v74);
      v73 = MEMORY[0x277D84F90];
      sub_261FDBB58(&qword_28108B370, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
      sub_261F98F68();
      sub_26203A75C();
      sub_26203A06C();
      swift_allocObject();
      v51 = sub_26203A04C();

      v18[5] = v51;

      v52 = v66;
      sub_26203A02C();
      *v12 = 5;
      v53 = v68;
      v54 = v70;
      (*(v68 + 104))(v12, *MEMORY[0x277D85188], v70);
      v55 = v67;
      MEMORY[0x266722530](v52, v12);
      (*(v53 + 8))(v12, v54);
      v56 = *(v69 + 8);
      v57 = v52;
      v58 = v71;
      v56(v57, v71);
      sub_26203A55C();

      return (v56)(v55, v58);
    }
  }

  return result;
}

uint64_t sub_261FDB138(uint64_t a1, void (*a2)(void *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_26203A48C();
    if (qword_27FEF8650 != -1)
    {
      swift_once();
    }

    v6 = qword_27FEFA068;
    if (os_log_type_enabled(qword_27FEFA068, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19[0] = v8;
      *v7 = 136446466;
      swift_beginAccess();
      v9 = *(v4 + 24);
      v10 = *(v4 + 32);

      v11 = sub_261F67FE4(v9, v10, v19);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      *(v7 + 14) = 5;
      _os_log_impl(&dword_261F5B000, v6, v5, "%{public}s: Connection exceeded maximum permitted duration of %ld seconds. Invalidating connection", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x266724180](v8, -1, -1);
      MEMORY[0x266724180](v7, -1, -1);
    }

    sub_261F9BCE0();
    sub_26203AD3C();
    v12 = MEMORY[0x277D84F90];
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_261F9D4D8(v12);
    sub_26203AD2C();
    v13 = v19[0];
    v14 = v19[1];
    sub_261F9D610();
    v15 = swift_allocError();
    *v16 = v13;
    v16[1] = v14;
    __src[0] = v15;
    sub_261F65314(__src);
    memcpy(__dst, __src, 0x92uLL);
    a2(__dst);
    memcpy(v19, __dst, 0x92uLL);
    sub_261F6A760(v19);
    sub_261FDB3B8();
  }

  return result;
}

id sub_261FDB3B8()
{
  if (*(v0 + 40))
  {

    sub_26203A05C();
  }

  *(v0 + 40) = 0;

  v1 = *(v0 + 16);

  return [v1 invalidate];
}

uint64_t sub_261FDB424()
{
  sub_261F9BCE0();
  sub_26203ACFC();
  sub_261F9D610();
  swift_allocError();
  sub_26203AD4C();
  return swift_willThrow();
}

uint64_t BluetoothLEConnectionControlChannelTransport.deinit()
{

  return v0;
}

uint64_t BluetoothLEConnectionControlChannelTransport.__deallocating_deinit()
{
  BluetoothLEConnectionControlChannelTransport.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_261FDB62C(uint64_t a1, uint64_t a2)
{
  sub_26203ADDC();
  swift_getWitnessTable();
  HashableByObjectIdentity.hash(into:)();
  return sub_26203AE0C();
}

BOOL sub_261FDB694(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  swift_getWitnessTable();

  return static HashableByObjectIdentity.== infix(_:_:)(v3, v4);
}

void sub_261FDB70C(uint64_t a1, void *a2)
{
  v3 = sub_26203A3AC();

  [a2 setDataArray_];
}

uint64_t sub_261FDB7B0(uint64_t a1, uint64_t a2)
{
  result = sub_261FDBB58(&qword_27FEFA078, a2, type metadata accessor for BluetoothLEConnectionControlChannelTransport, &protocol conformance descriptor for BluetoothLEConnectionControlChannelTransport);
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroy_11Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_261FDBB58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_261FDBBA0(void *a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_261FC07A8(a1, a2, a3 & 1);
  }
}

uint64_t sub_261FDBBB8(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26203954C();

  return v3;
}

uint64_t sub_261FDBC54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v13 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      v14 = a1;

      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v14;
      v11 = v13;
      goto LABEL_8;
    case 2uLL:
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);

      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v7;
      v11 = v8;
LABEL_8:
      v12 = sub_261FE1AC4(v10, v11, v9, a3, a4);

      return v12;
    case 3uLL:
      memset(v16, 0, 14);
      goto LABEL_5;
    default:
      v16[0] = a1;
      LOWORD(v16[1]) = a2;
      BYTE2(v16[1]) = BYTE2(a2);
      BYTE3(v16[1]) = BYTE3(a2);
      BYTE4(v16[1]) = BYTE4(a2);
      BYTE5(v16[1]) = BYTE5(a2);
LABEL_5:
      v12 = (*(a3 + 72))(v16, a4);

      return v12;
  }
}

void sub_261FDBDF0()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  v53 = *MEMORY[0x277D85DE8];
  v47[0] = v2;
  v47[1] = v0;
  *&v50 = v2;
  *(&v50 + 1) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B8, &qword_262043258);
  if (swift_dynamicCast())
  {
    sub_261F797BC(v48, &v51);
    __swift_project_boxed_opaque_existential_0Tm(&v51, v52);
    sub_2620393CC();
    v48[0] = v50;
    __swift_destroy_boxed_opaque_existential_0Tm(&v51);
    goto LABEL_59;
  }

  v49 = 0;
  memset(v48, 0, sizeof(v48));
  sub_261FCB894(v48, &qword_27FEFA0C0, &unk_262043260);
  if ((v1 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    *&v48[0] = v3;
    *(&v48[0] + 1) = v1 & 0xFFFFFFFFFFFFFFLL;
    v5 = v48;
    v6 = HIBYTE(v1) & 0xF;
  }

  else if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_26203A82C();
  }

  sub_261FE2418(v5, v6, &v51);
  v7 = *(&v51 + 1);
  v8 = v51;
  if (*(&v51 + 1) >> 60 != 15)
  {
    v48[0] = v51;
    goto LABEL_59;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v48[0] = MEMORY[0x266721980](v9);
  *(&v48[0] + 1) = v10;
  MEMORY[0x28223BE20](*&v48[0]);
  v42[2] = v47;
  v11 = sub_261FE1B60(sub_261FE2870, v42);
  v13 = *(&v48[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v48[0]);
  switch(*(&v48[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v48[0]) - LODWORD(v48[0]);
      if (__OFSUB__(DWORD1(v48[0]), v48[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v48[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v48[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v48[0] + 16);
      v21 = *(*&v48[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        OUTLINED_FUNCTION_7_2();
        sub_2620394CC();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v42[4] = v4;
      v43 = v8;
      v44 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v45 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v46 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v50 + 7) = 0;
      *&v50 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v48[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v32 = OUTLINED_FUNCTION_21_4();
      v28 = sub_261FE4A5C(v32, v33, v34);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_26203A27C();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_26203A2AC();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v51 = v14;
      *(&v51 + 1) = v46;
      v31 = *(&v51 + v29);
    }

    else
    {
      v30 = v45;
      if ((v14 & 0x1000000000000000) == 0)
      {
        OUTLINED_FUNCTION_35_3();
        v30 = sub_26203A82C();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v35 = OUTLINED_FUNCTION_21_4();
      v18 = sub_261FE4A5C(v35, v36, v37);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_21_4();
    v18 = sub_26203A28C();
LABEL_46:
    *(&v50 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      OUTLINED_FUNCTION_36_2();
      sub_2620394EC();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    OUTLINED_FUNCTION_36_2();
    sub_2620394EC();
    sub_261F6ADEC(v43, v44);
    goto LABEL_58;
  }

  sub_261F6ADEC(v43, v44);
LABEL_59:
  v38 = OUTLINED_FUNCTION_22_1();
  sub_261F6B73C(v38, v39);

  v40 = OUTLINED_FUNCTION_22_1();
  sub_261F6BFFC(v40, v41);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FDC2A4(uint64_t a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v12[3] = MEMORY[0x277CC9318];
  v12[4] = MEMORY[0x277CC9300];
  v12[0] = a1;
  v12[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0Tm(v12, MEMORY[0x277CC9318]);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_261FE1A30(v6, v7, &v11);
      goto LABEL_9;
    case 3uLL:
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_5;
    default:
      v10[0] = *v2;
      LOWORD(v10[1]) = v4;
      BYTE2(v10[1]) = BYTE2(v4);
      BYTE3(v10[1]) = BYTE3(v4);
      BYTE4(v10[1]) = BYTE4(v4);
      BYTE5(v10[1]) = BYTE5(v4);
      v5 = v10 + BYTE6(v4);
LABEL_5:
      sub_261F6DE04(v10, v5, &v11);
LABEL_9:
      v8 = v11;
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      return v8;
  }
}

uint64_t sub_261FDC428(uint64_t a1, uint64_t a2)
{
  v7[3] = MEMORY[0x277D838B0];
  v7[4] = MEMORY[0x277CC9C18];
  v7[0] = a1;
  v7[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0Tm(v7, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = v4 - v3;
    if (v4 != v3)
    {
      if (v5 <= 14)
      {
        sub_26203943C();
      }

      else if (v5 >= 0x7FFFFFFF)
      {
        MEMORY[0x266721900]();
      }

      else
      {
        MEMORY[0x266721920]();
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_261FDC4E0()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA090 = result;
  return result;
}

uint64_t sub_261FDC558()
{
  type metadata accessor for AtomicCounter();
  swift_allocObject();
  result = AtomicCounter.init()();
  qword_27FEFA098 = result;
  return result;
}

uint64_t sub_261FDC598(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_261FDC5D8(v1, v2);
}

uint64_t sub_261FDC5D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SecureSocketDataTransport.__allocating_init(physicallyConnected:underlyingConnectionSocket:bufferedReceiveSizeHandler:syncReceiveHandler:syncSendHandler:cleanupConnectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  SecureSocketDataTransport.init(physicallyConnected:underlyingConnectionSocket:bufferedReceiveSizeHandler:syncReceiveHandler:syncSendHandler:cleanupConnectionHandler:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v19, a8, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return v17;
}

void SecureSocketDataTransport.init(physicallyConnected:underlyingConnectionSocket:bufferedReceiveSizeHandler:syncReceiveHandler:syncSendHandler:cleanupConnectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_96();
  v46 = v23;
  v47 = v24;
  v52 = v25;
  v53 = v26;
  v49 = v27;
  v50 = v28;
  v48 = v29;
  v51 = v30;
  v31 = sub_26203A53C();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_74();
  v32 = sub_26203A56C();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v38 = v37 - v36;
  v39 = sub_262039FEC();
  MEMORY[0x28223BE20](v39 - 8);
  OUTLINED_FUNCTION_74();
  sub_261F9B6D0(0, &qword_28108CFB0, 0x277D85C78);
  *(v22 + 88) = 0;
  *(v22 + 96) = 0;
  *(v22 + 112) = 0;
  *(v22 + 120) = 0;
  sub_262039FDC();
  (*(v34 + 104))(v38, *MEMORY[0x277D85268], v32);
  sub_261FC02FC(&qword_28108CFB8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA0A0, &unk_262040360);
  sub_261F7AA80(&qword_28108CFC0, &unk_27FEFA0A0, &unk_262040360);
  OUTLINED_FUNCTION_17_6();
  sub_26203A75C();
  *(v22 + 128) = sub_26203A58C();
  *(v22 + 136) = 0;
  *(v22 + 144) = 0;
  v40 = MEMORY[0x277D84F90];
  *(v22 + 152) = MEMORY[0x277D84F90];
  *(v22 + 160) = xmmword_262040350;
  *(v22 + 176) = v40;
  *(v22 + 185) = 2;
  *(v22 + 192) = 0u;
  *(v22 + 208) = 0u;
  *(v22 + 217) = 0u;
  *(v22 + 184) = v49;
  *(v22 + 32) = v50;
  *(v22 + 40) = v51;
  *(v22 + 48) = v48;
  *(v22 + 56) = v52;
  *(v22 + 64) = v46;
  *(v22 + 72) = v53;
  *(v22 + 80) = v47;
  *(v22 + 88) = a21;
  *(v22 + 96) = a22;

  v41 = OUTLINED_FUNCTION_22_1();
  sub_261F665E4(v41, v42);
  if (qword_27FEF8668 != -1)
  {
    swift_once();
  }

  sub_262017880();
  v43 = sub_26203ABAC();
  MEMORY[0x266722710](v43);

  *(v22 + 16) = 0x2D74656B636F73;
  *(v22 + 24) = 0xE700000000000000;
  v44 = *(v22 + 128);
  *(v22 + 104) = v44;
  v45 = v44;
  OUTLINED_FUNCTION_31_0();
}

void sub_261FDCABC()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v2 = sub_262039FAC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v6 = v5 - v4;
  sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v133 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v132 = v10 - v9;
  v11 = sub_2620392DC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v17 = v16 - v15;
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (!*(v0 + 136))
  {
    goto LABEL_56;
  }

  v18 = *(v0 + 112);
  if (!v18)
  {
    goto LABEL_56;
  }

  v127 = v13;
  v19 = v2;
  v129 = v6;
  v20 = *(v0 + 120);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v131 = v18;
  v130 = v20;
  sub_261F7D45C(v18, v20);
  if (!sub_26203A60C())
  {
    OUTLINED_FUNCTION_29_6();
    sub_261F9BCE0();
    sub_26203AD3C();
    v134 = v139;
    v135 = v140;
    sub_26203AD4C();
    v22 = v141;
    ObjectType = v142;
    v26 = sub_26203A48C();
    if (qword_27FEF8660 == -1)
    {
LABEL_41:
      v51 = qword_27FEFA090;
      if (os_log_type_enabled(qword_27FEFA090, v26))
      {
        v52 = OUTLINED_FUNCTION_40_2();
        v134 = OUTLINED_FUNCTION_39_0();
        *v52 = 136446466;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();

        v53 = OUTLINED_FUNCTION_47();
        v56 = sub_261F67FE4(v53, v54, v55);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        v141 = v22;
        v142 = ObjectType;
        sub_261F9D610();
        v57 = sub_26203ACCC();
        v59 = sub_261F67FE4(v57, v58, &v134);

        *(v52 + 14) = v59;
        _os_log_impl(&dword_261F5B000, v51, v26, "%{public}s: %s", v52, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      v60 = v1[13];
      OUTLINED_FUNCTION_106();
      v61 = swift_allocObject();
      v61[2] = v131;
      v61[3] = v130;
      v61[4] = v22;
      v61[5] = ObjectType;
      OUTLINED_FUNCTION_2_14(v61);
      v142 = 1107296256;
      OUTLINED_FUNCTION_1();
      v143 = v62;
      v144 = &block_descriptor_94;
      v63 = _Block_copy(&v141);
      v64 = OUTLINED_FUNCTION_28_4();
      sub_261F7D45C(v64, v65);
      v66 = v60;
      sub_262039FCC();
      v134 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_0_22();
      sub_261FC02FC(v67, v68, MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
      sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
      sub_26203A75C();
      MEMORY[0x266722A20](0, v132, v129, v63);
      _Block_release(v63);
      OUTLINED_FUNCTION_27_3();

      v69 = OUTLINED_FUNCTION_28_4();
      sub_261F665E4(v69, v70);
      OUTLINED_FUNCTION_20_6();
      v71(v129, v19);
      v72 = OUTLINED_FUNCTION_24_4();
      v73(v72);
LABEL_55:

      goto LABEL_56;
    }

LABEL_65:
    OUTLINED_FUNCTION_6_11(&qword_27FEF8660);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (!*(*(v0 + 152) + 16))
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_27_3();
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_16_8(v0 + 152);
  v22 = sub_261FF03FC();
  v125 = v23;
  v126 = v24;
  v124 = v25;
  swift_endAccess();
  sub_2620393BC();
  swift_allocObject();
  v26 = OS_LOG_TYPE_DEFAULT;
  v137 = 0x200000000000;
  v138 = sub_26203938C() | 0x4000000000000000;
  while (2)
  {

    v27 = sub_261FE1F24(&v137, v0, 0x2000);
    if (v27 <= 0)
    {
      if (v27 < 0)
      {
        sub_2620392BC();
        v105 = sub_2620392CC();
        (*(v127 + 8))(v17, v11);
        v128 = v105;
      }

      else
      {
        sub_261F9BCE0();
        OUTLINED_FUNCTION_17_6();
        sub_26203AD3C();
        v134 = v141;
        v135 = v142;
        v74 = sub_261F9D610();
        v75 = OUTLINED_FUNCTION_6(v74);
        OUTLINED_FUNCTION_17_6();
        sub_26203AD4C();
        v128 = v75;
        v76 = v75;
      }

      v106 = sub_26203A48C();
      if (qword_27FEF8660 != -1)
      {
        OUTLINED_FUNCTION_6_11(&qword_27FEF8660);
      }

      v107 = qword_27FEFA090;
      if (os_log_type_enabled(qword_27FEFA090, v106))
      {
        v108 = OUTLINED_FUNCTION_40_2();
        v141 = OUTLINED_FUNCTION_39_0();
        *v108 = 136446466;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v109 = v1[2];
        v110 = v1[3];

        v111 = sub_261F67FE4(v109, v110, &v141);

        *(v108 + 4) = v111;
        *(v108 + 12) = 2080;
        OUTLINED_FUNCTION_31_4();
        swift_getErrorValue();
        v112 = sub_26203ACCC();
        v114 = sub_261F67FE4(v112, v113, &v141);

        *(v108 + 14) = v114;
        _os_log_impl(&dword_261F5B000, v107, v106, "%{public}s: Connection receive error: %s", v108, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      v115 = v1[13];
      OUTLINED_FUNCTION_14_1();
      v116 = swift_allocObject();
      v116[2] = v22;
      v116[3] = v125;
      v116[4] = v126;
      v116[5] = v124;
      v116[6] = v128;
      OUTLINED_FUNCTION_2_14(v116);
      v142 = 1107296256;
      OUTLINED_FUNCTION_1();
      v143 = v117;
      v144 = &block_descriptor_100;
      v118 = _Block_copy(&v141);
      v119 = v115;

      sub_262039FCC();
      v136 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_0_22();
      sub_261FC02FC(v120, v121, MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
      sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
      sub_26203A75C();
      MEMORY[0x266722A20](0, v132, v129, v118);
      _Block_release(v118);

      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_20_6();
      v122(v129, v19);
      (*(v133 + 8))(v132);
      sub_261F6BFFC(v137, v138);
      goto LABEL_55;
    }

    v28 = v138 >> 62;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    switch(v138 >> 62)
    {
      case 1uLL:
        v29 = v137 >> 32;
        v30 = v137;
        goto LABEL_11;
      case 2uLL:
        v30 = *(v137 + 16);
        v29 = *(v137 + 24);
LABEL_11:
        if (v29 < v30)
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v28 == 2)
        {
          v32 = *(v137 + 16);
          v31 = *(v137 + 24);
        }

        else
        {
          v31 = v137 >> 32;
          v32 = v137;
        }

LABEL_15:
        if (v31 < v29 || v29 < v32)
        {
          goto LABEL_60;
        }

        v34 = __OFSUB__(v29, v30);
        v35 = v29 - v30;
        if (v34)
        {
          goto LABEL_61;
        }

        if (v35 < v27)
        {
          switch(v28)
          {
            case 1:
              v36 = v137 >> 32;
              goto LABEL_34;
            case 2:
              v36 = *(v137 + 24);
              goto LABEL_35;
            default:
              goto LABEL_37;
          }
        }

        v36 = v30 + v27;
        if (__OFADD__(v30, v27))
        {
          goto LABEL_63;
        }

        v37 = 0;
        v38 = 0;
        switch(v28)
        {
          case 1:
            v37 = v137 >> 32;
            v38 = v137;
            break;
          case 2:
            v38 = *(v137 + 16);
            v37 = *(v137 + 24);
            break;
          case 3:
            break;
          default:
            v38 = 0;
            v37 = BYTE6(v138);
            break;
        }

        if (v37 < v36 || v36 < v38)
        {
          goto LABEL_64;
        }

        v40 = 0;
        switch(v28)
        {
          case 1:
LABEL_34:
            v40 = v137;
            break;
          case 2:
LABEL_35:
            v40 = *(v137 + 16);
            break;
          default:
            break;
        }

        if (v36 < v40)
        {
          goto LABEL_62;
        }

LABEL_37:
        v41 = sub_2620394FC();
        v43 = v42;
        OUTLINED_FUNCTION_16_8(v0 + 160);
        sub_26203958C();
        swift_endAccess();
        v44 = sub_261F6BFFC(v41, v43);
        if ((*(v0 + 40))(v44) > 0)
        {
          continue;
        }

        v45 = OUTLINED_FUNCTION_47();
        sub_261F6B73C(v45, v46);
        v47 = OUTLINED_FUNCTION_47();
        v48 = MEMORY[0x266721A20](v47);
        v49 = OUTLINED_FUNCTION_47();
        sub_261F6BFFC(v49, v50);
        if (v48 < v22)
        {
          OUTLINED_FUNCTION_16_8(v0 + 152);

          sub_261FFB590(0, 0, v22, v125, v126, v124);
          swift_endAccess();
          OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_9_8();
          goto LABEL_58;
        }

        v77 = *(v0 + 160);
        v78 = *(v0 + 168);
        v79 = OUTLINED_FUNCTION_47();
        sub_261F6B73C(v79, v80);
        sub_261FDDA5C(v125, v77, v78, &v141);
        v82 = v141;
        v81 = v142;
        v83 = v1[20];
        v84 = v1[21];
        v85 = OUTLINED_FUNCTION_47();
        sub_261F6B73C(v85, v86);
        v87 = MEMORY[0x266721A20](v82, v81);
        sub_261FDDBE0(v87, v83, v84, &v141);
        v88 = sub_261FDC2A4(v141, v142);
        v89 = v1[20];
        v90 = v1[21];
        v1[20] = v88;
        v1[21] = v91;
        sub_261F6BFFC(v89, v90);
        v92 = v1[13];
        v93 = swift_allocObject();
        v93[2] = v22;
        v93[3] = v125;
        v93[4] = v126;
        v93[5] = v124;
        v93[6] = v82;
        v93[7] = v81;
        v145 = sub_261FE283C;
        v146 = v93;
        v141 = MEMORY[0x277D85DD0];
        v142 = 1107296256;
        v143 = sub_261F78F64;
        v144 = &block_descriptor_106;
        v94 = _Block_copy(&v141);

        v95 = v92;
        sub_261F6B73C(v82, v81);
        sub_262039FCC();
        v134 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_0_22();
        sub_261FC02FC(v96, v97, MEMORY[0x277D851A0]);
        v98 = OUTLINED_FUNCTION_22_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v98, v99);
        sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
        sub_26203A75C();
        MEMORY[0x266722A20](0, v132, v129, v94);
        _Block_release(v94);

        OUTLINED_FUNCTION_20_6();
        v100 = OUTLINED_FUNCTION_72();
        v101(v100);
        v102 = OUTLINED_FUNCTION_24_4();
        v103(v102);

        if (*(v1[19] + 16))
        {
          sub_261F6BFFC(v137, v138);
          OUTLINED_FUNCTION_9_8();
          v104 = OUTLINED_FUNCTION_31_4();
          sub_261F6BFFC(v104, v81);
          OUTLINED_FUNCTION_27_3();
          goto LABEL_55;
        }

        sub_26203A63C();
        swift_unknownObjectRelease();
        v123 = OUTLINED_FUNCTION_31_4();
        sub_261F6BFFC(v123, v81);
        OUTLINED_FUNCTION_9_8();
LABEL_58:

        sub_261F6BFFC(v137, v138);
LABEL_56:
        OUTLINED_FUNCTION_31_0();
        return;
      case 3uLL:
        goto LABEL_15;
      default:
        v30 = 0;
        v32 = 0;
        v29 = BYTE6(v138);
        v31 = BYTE6(v138);
        goto LABEL_15;
    }
  }
}

void sub_261FDD938(uint64_t a1, uint64_t a2, void (*a3)(void *, void, uint64_t), uint64_t a4, uint64_t a5)
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_26203AD4C();
  sub_261F9D610();
  v6 = swift_allocError();
  sub_2620399DC();

  a3(v6, 0, 1);
}

uint64_t sub_261FDDA5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v9 = a2 >> 32;
        v10 = a2;
        break;
      case 2uLL:
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v10 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v11 = sub_261FE2704(v10, v9, a2, a3);
    if (v7 && v11 < v7)
    {
      switch(v5)
      {
        case 1:
          v12 = a2 >> 32;
          goto LABEL_11;
        case 2:
          v12 = *(a2 + 24);
          goto LABEL_13;
        default:
          goto LABEL_15;
      }
    }

    v12 = sub_261FE269C(v10, v7, a2, a3);
    result = 0;
    switch(v5)
    {
      case 1:
LABEL_11:
        result = a2;
        break;
      case 2:
LABEL_13:
        result = *(a2 + 16);
        break;
      default:
        break;
    }

    if (v12 >= result)
    {
LABEL_15:
      v13 = sub_2620394FC();
      v15 = v14;
      result = sub_261F6BFFC(a2, a3);
      *a4 = v13;
      a4[1] = v15;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_261FDDBE0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = BYTE6(a3);
    v11 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v11 = a2;
        v9 = a2 >> 32;
        break;
      case 2uLL:
        v11 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v11 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v12 = sub_261FE2704(v11, v9, a2, a3);
    if (!v7 || v12 >= v7)
    {
      v13 = sub_261FE269C(v11, v7, a2, a3);
      v14 = 0;
      switch(v5)
      {
        case 1:
          v14 = a2 >> 32;
          break;
        case 2:
          v14 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v14 = v10;
          break;
      }

      if (v14 < v13)
      {
        __break(1u);
      }
    }

    v15 = sub_2620394FC();
    v17 = v16;
    result = sub_261F6BFFC(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

void sub_261FDDD68()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v2 = sub_262039FAC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v117 = v5 - v4;
  v6 = sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v118 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v116 = v10 - v9;
  v11 = sub_2620392DC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v17 = v16 - v15;
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (!v0[18])
  {
    goto LABEL_19;
  }

  v18 = v0[14];
  if (!v18)
  {
    goto LABEL_19;
  }

  v113 = v6;
  v19 = v0[15];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v115 = v18;
  v114 = v19;
  sub_261F7D45C(v18, v19);
  v20 = sub_26203A60C();
  if ((v20 & 0x8000000000000000) != 0)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  v21 = v20;
  if (!v20)
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_17_6();
    sub_26203AD3C();
    v119 = v122;
    v120 = v123;
    OUTLINED_FUNCTION_17_6();
    sub_26203AD4C();
    v49 = v124;
    v50 = v125;
    v51 = sub_26203A48C();
    if (qword_27FEF8660 != -1)
    {
      OUTLINED_FUNCTION_6_11(&qword_27FEF8660);
    }

    v52 = qword_27FEFA090;
    if (os_log_type_enabled(qword_27FEFA090, v51))
    {
      v53 = OUTLINED_FUNCTION_40_2();
      v119 = OUTLINED_FUNCTION_39_0();
      *v53 = 136446466;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v54 = v0[2];
      v55 = v1[3];

      v56 = sub_261F67FE4(v54, v55, &v119);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2080;
      v124 = v49;
      v125 = v50;
      sub_261F9D610();
      v57 = sub_26203ACCC();
      v59 = sub_261F67FE4(v57, v58, &v119);

      *(v53 + 14) = v59;
      _os_log_impl(&dword_261F5B000, v52, v51, "%{public}s: %s", v53, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    v60 = v1[13];
    OUTLINED_FUNCTION_106();
    v61 = swift_allocObject();
    v61[2] = v115;
    v61[3] = v114;
    v61[4] = v49;
    v61[5] = v50;
    OUTLINED_FUNCTION_2_14(v61);
    v125 = 1107296256;
    OUTLINED_FUNCTION_1();
    v126 = v62;
    v127 = &block_descriptor_76;
    v63 = _Block_copy(&v124);
    v64 = OUTLINED_FUNCTION_28_4();
    sub_261F7D45C(v64, v65);
    v66 = v60;
    sub_262039FCC();
    v119 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_0_22();
    sub_261FC02FC(v67, v68, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    sub_26203A75C();
    MEMORY[0x266722A20](0, v116, v117, v63);
    _Block_release(v63);
    OUTLINED_FUNCTION_19_4();
    swift_unknownObjectRelease();

    v69 = OUTLINED_FUNCTION_28_4();
    sub_261F665E4(v69, v70);
    OUTLINED_FUNCTION_20_6();
    v71(v117, v2);
    (*(v118 + 8))(v116, v113);
    goto LABEL_18;
  }

  if (v20 >= 0x401)
  {
LABEL_6:
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v22 = v0[22];
    if (!v22[2])
    {
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_19_4();
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_16_8((v1 + 22));
    v23 = v22[4];
    v24 = v22[5];
    v25 = v22[6];
    v26 = v22[7];
    v109 = v25;
    v27 = OUTLINED_FUNCTION_32_2();
    sub_261F6B73C(v27, v28);
    v112 = v26;

    sub_261FFB7AC(0);
    swift_endAccess();
    v29 = OUTLINED_FUNCTION_32_2();
    v30 = MEMORY[0x266721A20](v29);
    if (v21 - 1024 >= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v21 - 1024;
    }

    v32 = OUTLINED_FUNCTION_32_2();
    v34 = sub_261FDBC54(v32, v33, v1, v31);
    v35 = v34;
    if (v34 <= 0)
    {
      v108 = v23;
      if (v34 < 0)
      {
        sub_2620392BC();
        v88 = sub_2620392CC();
        (*(v13 + 8))(v17, v11);
        v75 = v88;
      }

      else
      {
        sub_261F9BCE0();
        OUTLINED_FUNCTION_17_6();
        sub_26203AD3C();
        v119 = v124;
        v120 = v125;
        v73 = sub_261F9D610();
        v74 = OUTLINED_FUNCTION_6(v73);
        OUTLINED_FUNCTION_17_6();
        sub_26203AD4C();
        v75 = v74;
        v76 = v74;
      }

      v89 = sub_26203A48C();
      if (qword_27FEF8660 != -1)
      {
        OUTLINED_FUNCTION_6_11(&qword_27FEF8660);
      }

      v90 = qword_27FEFA090;
      if (os_log_type_enabled(qword_27FEFA090, v89))
      {
        v91 = OUTLINED_FUNCTION_40_2();
        v124 = OUTLINED_FUNCTION_39_0();
        *v91 = 136446466;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();

        v92 = OUTLINED_FUNCTION_22_1();
        v95 = sub_261F67FE4(v92, v93, v94);

        *(v91 + 4) = v95;
        *(v91 + 12) = 2080;
        swift_getErrorValue();
        v96 = sub_26203ACCC();
        v98 = sub_261F67FE4(v96, v97, &v124);

        *(v91 + 14) = v98;
        _os_log_impl(&dword_261F5B000, v90, v89, "%{public}s: Connection send error: %s", v91, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      v99 = v1[13];
      OUTLINED_FUNCTION_14_1();
      v100 = swift_allocObject();
      v100[2] = v108;
      v100[3] = v24;
      v100[4] = v109;
      v100[5] = v112;
      v100[6] = v75;
      OUTLINED_FUNCTION_2_14(v100);
      v125 = 1107296256;
      OUTLINED_FUNCTION_1();
      v126 = v101;
      v127 = &block_descriptor_82;
      v111 = _Block_copy(&v124);
      sub_261F6B73C(v108, v24);

      v102 = v99;
      sub_262039FCC();
      v121 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_0_22();
      sub_261FC02FC(v103, v104, MEMORY[0x277D851A0]);
      v105 = OUTLINED_FUNCTION_28();
      __swift_instantiateConcreteTypeFromMangledNameV2(v105, v106);
      sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
      sub_26203A75C();
      MEMORY[0x266722A20](0, v116, v117, v111);
      _Block_release(v111);

      OUTLINED_FUNCTION_19_4();
      swift_unknownObjectRelease();
      sub_261F6BFFC(v108, v24);

      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_20_6();
      v107(v117, v2);
      (*(v118 + 8))(v116, v113);
    }

    else
    {
      v36 = OUTLINED_FUNCTION_32_2();
      v37 = v24;
      if (v35 >= MEMORY[0x266721A20](v36))
      {
        v77 = v1[13];
        OUTLINED_FUNCTION_106();
        v78 = swift_allocObject();
        v78[2] = v23;
        v78[3] = v24;
        v78[4] = v109;
        v78[5] = v112;
        OUTLINED_FUNCTION_2_14(v78);
        v125 = 1107296256;
        OUTLINED_FUNCTION_1();
        v126 = v79;
        v127 = &block_descriptor_88;
        v80 = _Block_copy(&v124);
        v81 = OUTLINED_FUNCTION_35_3();
        sub_261F6B73C(v81, v82);

        v110 = v77;
        sub_262039FCC();
        v119 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_0_22();
        sub_261FC02FC(v83, v84, MEMORY[0x277D851A0]);
        v85 = OUTLINED_FUNCTION_22_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v85, v86);
        sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
        sub_26203A75C();
        MEMORY[0x266722A20](0, v116, v117, v80);
        _Block_release(v80);

        OUTLINED_FUNCTION_20_6();
        v87(v117, v2);
        (*(v118 + 8))(v116, v6);

        if (*(v1[22] + 16))
        {
          OUTLINED_FUNCTION_8_7();
          sub_261F6BFFC(v23, v37);
          OUTLINED_FUNCTION_19_4();
        }

        else
        {
          sub_26203A63C();
          OUTLINED_FUNCTION_8_7();
          sub_261F6BFFC(v23, v37);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v38 = OUTLINED_FUNCTION_35_3();
        sub_261F6B73C(v38, v39);
        v40 = OUTLINED_FUNCTION_28();
        sub_261FDDBE0(v40, v41, v24, v42);
        OUTLINED_FUNCTION_16_8((v1 + 22));

        v43 = OUTLINED_FUNCTION_72();
        sub_261F6B73C(v43, v44);

        sub_261FFB6AC(0, 0, v124, v125, v109, v112);
        swift_endAccess();
        v45 = OUTLINED_FUNCTION_72();
        sub_261F6BFFC(v45, v46);

        OUTLINED_FUNCTION_8_7();
        v47 = OUTLINED_FUNCTION_35_3();
        sub_261F6BFFC(v47, v48);
        OUTLINED_FUNCTION_19_4();
        swift_unknownObjectRelease();
      }
    }

LABEL_18:

LABEL_19:
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_31_0();

  swift_unknownObjectRelease();
}

uint64_t sub_261FDE9B4(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_261F9D610();
  v7 = swift_allocError();
  *v8 = a3;
  v8[1] = a4;
  __src[0] = v7;
  sub_261F65314(__src);
  memcpy(__dst, __src, 0x92uLL);

  a1(__dst);
  memcpy(v12, __dst, 0x92uLL);
  return sub_261F6A760(v12);
}

void sub_261FDEA64(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_26203AD4C();
  sub_261F9D610();
  v6 = swift_allocError();
  sub_2620399DC();

  a3(v6);
}

void sub_261FDEB80()
{
  OUTLINED_FUNCTION_96();
  v1 = sub_262039FAC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74();
  v7 = v6 - v5;
  v8 = sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v14 = v13 - v12;
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v15 = v0[11];
  if (v15 && !v0[17] && !v0[18])
  {
    v16 = v0[12];
    v0[11] = 0;
    v0[12] = 0;
    v17 = v0[13];
    OUTLINED_FUNCTION_46();
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    v26[4] = sub_261FBD060;
    v26[5] = v18;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 1107296256;
    OUTLINED_FUNCTION_1();
    v26[2] = v19;
    v26[3] = &block_descriptor_70;
    v25 = _Block_copy(v26);
    v24 = v17;
    sub_261F7D45C(v15, v16);
    sub_262039FCC();
    OUTLINED_FUNCTION_0_22();
    sub_261FC02FC(v20, v21, MEMORY[0x277D851A0]);
    v22 = OUTLINED_FUNCTION_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    sub_26203A75C();
    MEMORY[0x266722A20](0, v14, v7, v25);
    _Block_release(v25);

    sub_261F665E4(v15, v16);
    (*(v3 + 8))(v7, v1);
    (*(v10 + 8))(v14, v8);
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t SecureSocketDataTransport.deinit()
{
  sub_261FE0C28();

  sub_261F665E4(*(v0 + 88), *(v0 + 96));

  sub_261F665E4(*(v0 + 112), *(v0 + 120));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_261F6BFFC(*(v0 + 160), *(v0 + 168));

  sub_261FCB894(v0 + 192, &qword_27FEF9980, &qword_26203F7C0);
  return v0;
}

uint64_t SecureSocketDataTransport.__deallocating_deinit()
{
  SecureSocketDataTransport.deinit();

  return MEMORY[0x2821FE8D8](v0, 233, 7);
}

uint64_t sub_261FDEEF8(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_106();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  OUTLINED_FUNCTION_46();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_261FE16B8;
  *(v8 + 24) = v7;
  v16[4] = sub_261FC3F80;
  v16[5] = v8;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  v16[2] = v9;
  v16[3] = &block_descriptor_8;
  v10 = _Block_copy(v16);

  v11 = a1;

  v12 = OUTLINED_FUNCTION_28();
  dispatch_sync(v12, v13);
  _Block_release(v10);
  v14 = OUTLINED_FUNCTION_38_2(v8, "", 118, 219);

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261FDF034(uint64_t a1, uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v70 = sub_262039FAC();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_262039FEC();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 112);
  v67 = a3;
  v68 = a4;
  if (v13 || (v33 = *(a1 + 32), v33 == -1))
  {
    v65 = a2;
    sub_261F9BCE0();
    sub_26203AD3C();
    v72 = aBlock;
    v73 = v76;
    sub_261F9D610();
    v14 = swift_allocError();
    sub_26203AD4C();
    v15 = v14;
    v16 = sub_26203A48C();
    if (qword_27FEF8660 != -1)
    {
      swift_once();
    }

    v17 = qword_27FEFA090;
    if (os_log_type_enabled(qword_27FEFA090, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v66 = v8;
      v20 = v19;
      aBlock = v19;
      *v18 = 136446466;
      swift_beginAccess();
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);

      v23 = sub_261F67FE4(v21, v22, &aBlock);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v24 = sub_26203ACCC();
      v26 = sub_261F67FE4(v24, v25, &aBlock);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_261F5B000, v17, v16, "%{public}s: Unable to start transport: %s", v18, 0x16u);
      swift_arrayDestroy();
      v27 = v20;
      v8 = v66;
      MEMORY[0x266724180](v27, -1, -1);
      MEMORY[0x266724180](v18, -1, -1);
    }

    v28 = swift_allocObject();
    v29 = v68;
    v28[2] = v67;
    v28[3] = v29;
    v28[4] = v14;
    v79 = sub_261FE29A4;
    v80 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_261F78F64;
    v78 = &block_descriptor_160;
    v30 = _Block_copy(&aBlock);

    v31 = v14;
    sub_262039FCC();
    v74 = MEMORY[0x277D84F90];
    sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    v32 = v70;
    sub_26203A75C();
    MEMORY[0x266722A20](0, v12, v10, v30);
    _Block_release(v30);

    (*(v8 + 8))(v10, v32);
    (*(v69 + 8))(v12, v71);
  }

  else
  {
    v34 = *(a1 + 104);
    *(a1 + 104) = a2;

    v35 = a2;
    v36 = *(a1 + 112);
    v37 = *(a1 + 120);
    *(a1 + 112) = a3;
    *(a1 + 120) = a4;
    v62 = v35;

    sub_261F665E4(v36, v37);
    v61 = sub_261F9B6D0(0, &qword_28108B2A8, 0x277D85CA0);
    v60 = *(a1 + 128);
    v38 = sub_26203A5BC();
    v59 = v33;
    v64 = v38;
    ObjectType = swift_getObjectType();
    v79 = sub_261FE2930;
    v80 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v65 = &v77;
    v77 = sub_261F78F64;
    v78 = &block_descriptor_139;
    v40 = _Block_copy(&aBlock);

    sub_261FF0550(ObjectType);
    sub_261FF0554();
    sub_26203A5EC();
    _Block_release(v40);
    v41 = *(v8 + 8);
    v41(v10, v70);
    v66 = v8 + 8;
    v42 = v69 + 8;
    v43 = *(v69 + 8);
    v43(v12, v71);
    v69 = v42;
    v63 = v43;

    v79 = sub_261FE2934;
    v80 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_261F78F64;
    v78 = &block_descriptor_142;
    v44 = _Block_copy(&aBlock);

    sub_262039FCC();
    sub_261FDFC98();
    v45 = v64;
    sub_26203A5FC();
    _Block_release(v44);
    v41(v10, v70);
    v46 = v71;
    v43(v12, v71);

    *(a1 + 136) = v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v47 = sub_26203A5DC();
    v48 = swift_getObjectType();
    v79 = sub_261FE293C;
    v80 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_261F78F64;
    v78 = &block_descriptor_145;
    v49 = _Block_copy(&aBlock);

    sub_261FF0550(v48);
    sub_261FF0554();
    sub_26203A5EC();
    _Block_release(v49);
    v58 = v41;
    v41(v10, v70);
    v50 = v63;
    v63(v12, v46);

    v79 = sub_261FE2940;
    v80 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_261F78F64;
    v78 = &block_descriptor_148;
    v51 = _Block_copy(&aBlock);

    sub_262039FCC();
    sub_261FDFC98();
    sub_26203A5FC();
    _Block_release(v51);
    v52 = v70;
    v41(v10, v70);
    v50(v12, v71);

    *(a1 + 144) = v47;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v53 = swift_allocObject();
    v54 = v68;
    v53[2] = v67;
    v53[3] = v54;
    v53[4] = a1;
    v79 = sub_261FE2948;
    v80 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_261F78F64;
    v78 = &block_descriptor_154;
    v55 = _Block_copy(&aBlock);

    sub_262039FCC();
    v72 = MEMORY[0x277D84F90];
    sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    sub_26203A75C();
    MEMORY[0x266722A20](0, v12, v10, v55);
    _Block_release(v55);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v58(v10, v52);
    v63(v12, v71);
  }
}

uint64_t sub_261FDFBE8(void (*a1)(_BYTE *), uint64_t a2, void *a3)
{
  __src[0] = a3;
  sub_261F65314(__src);
  memcpy(__dst, __src, 0x92uLL);
  v5 = a3;
  a1(__dst);
  memcpy(v9, __dst, 0x92uLL);
  return sub_261F6A760(v9);
}

void sub_261FDFC68(uint64_t a1)
{
  *(a1 + 136) = 0;
  swift_unknownObjectRelease();
  sub_261FDEB80();
}

uint64_t sub_261FDFC98()
{
  sub_262039FAC();
  sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  return sub_26203A75C();
}

void sub_261FDFD70(uint64_t a1)
{
  *(a1 + 144) = 0;
  swift_unknownObjectRelease();
  sub_261FDEB80();
}

uint64_t sub_261FDFDA0(void (*a1)(_BYTE *), uint64_t a2)
{
  sub_261FDBAD0(__src);
  memcpy(v4, __src, 0x92uLL);
  a1(v4);
  return sub_261FE6EB4();
}

uint64_t sub_261FDFE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 128);
  OUTLINED_FUNCTION_14_1();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  OUTLINED_FUNCTION_46();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_261FE16C4;
  *(v12 + 24) = v11;
  v16[4] = sub_261FE2A04;
  v16[5] = v12;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  v16[2] = v13;
  v16[3] = &block_descriptor_13;
  v14 = _Block_copy(v16);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(v10) = OUTLINED_FUNCTION_38_2(v12, "", 118, 271);

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261FDFF50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_262039FAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_262039FEC();
  v52 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[17])
  {
    v51 = v11;
    v16 = a1[13];
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v60 = sub_261FE28F4;
    v61 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_261F78F64;
    v59 = &block_descriptor_130;
    v18 = _Block_copy(&aBlock);
    v19 = v16;

    sub_262039FCC();
    v55 = MEMORY[0x277D84F90];
    sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v20 = v52;
    v21 = v53;
    v50 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    sub_26203A75C();
    MEMORY[0x266722A20](0, v15, v21, v18);
    _Block_release(v18);

    (*(v51 + 8))(v21, v10);
    (*(v20 + 8))(v15, v50);
  }

  swift_beginAccess();
  if (!*(a1[19] + 16))
  {
    v50 = v13;
    v51 = v11;
    v49 = v10;
    swift_beginAccess();
    v22 = a1[20];
    v23 = a1[21];
    swift_unknownObjectRetain();
    sub_261F6B73C(v22, v23);
    v24 = MEMORY[0x266721A20](v22, v23);
    sub_261F6BFFC(v22, v23);
    if (v24 < a4)
    {
      goto LABEL_6;
    }

    v29 = a1[20];
    v30 = a1[21];
    sub_261F6B73C(v29, v30);
    sub_261FDDA5C(a5, v29, v30, &aBlock);
    v32 = aBlock;
    v31 = v57;
    v33 = a1[20];
    v34 = a1[21];
    sub_261F6B73C(v33, v34);
    v35 = MEMORY[0x266721A20](v32, v31);
    sub_261FDDBE0(v35, v33, v34, &aBlock);
    v36 = sub_261FDC2A4(aBlock, v57);
    v37 = a1[20];
    v38 = a1[21];
    a1[20] = v36;
    a1[21] = v39;
    sub_261F6BFFC(v37, v38);
    v40 = a1[13];
    v41 = swift_allocObject();
    v41[2] = a2;
    v41[3] = a3;
    v41[4] = v32;
    v41[5] = v31;
    v42 = v31;
    v48 = v31;
    v60 = sub_261FE28FC;
    v61 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_261F78F64;
    v59 = &block_descriptor_136;
    v43 = _Block_copy(&aBlock);

    v44 = v40;
    sub_261F6B73C(v32, v42);
    v45 = v15;
    sub_262039FCC();
    v54 = MEMORY[0x277D84F90];
    sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    v46 = v53;
    v47 = v49;
    sub_26203A75C();
    MEMORY[0x266722A20](0, v45, v46, v43);
    _Block_release(v43);
    swift_unknownObjectRelease();

    sub_261F6BFFC(v32, v48);
    (*(v51 + 8))(v46, v47);
    (*(v52 + 8))(v45, v50);
  }

  swift_unknownObjectRetain();
LABEL_6:
  swift_beginAccess();

  sub_262001C8C();
  v25 = *(a1[19] + 16);
  sub_262001D80(v25);
  v26 = a1[19];
  *(v26 + 16) = v25 + 1;
  v27 = (v26 + 32 * v25);
  v27[4] = a4;
  v27[5] = a5;
  v27[6] = a2;
  v27[7] = a3;
  a1[19] = v26;
  swift_endAccess();
  if (!v25)
  {
    swift_getObjectType();
    sub_26203A62C();
  }

  return swift_unknownObjectRelease();
}

void sub_261FE0580(void (*a1)(void *, void, uint64_t))
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_26203AD4C();
  sub_261F9D610();
  v2 = swift_allocError();
  *v3 = v4;
  v3[1] = v5;
  a1(v2, 0, 1);
}

uint64_t sub_261FE0670(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 128);
  OUTLINED_FUNCTION_14_1();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  OUTLINED_FUNCTION_46();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_261FE16DC;
  *(v12 + 24) = v11;
  v16[4] = sub_261FE2A04;
  v16[5] = v12;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  v16[2] = v13;
  v16[3] = &block_descriptor_23;
  v14 = _Block_copy(v16);

  sub_261F6B73C(a1, a2);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(v10) = OUTLINED_FUNCTION_38_2(v12, "", 118, 303);

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261FE07C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_262039FAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_262039FEC();
  v15 = MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[18])
  {
    swift_beginAccess();

    swift_unknownObjectRetain();
    sub_261F6B73C(a4, a5);
    sub_262001CA4();
    v19 = *(a1[22] + 16);
    sub_262001D98(v19);
    v20 = a1[22];
    *(v20 + 16) = v19 + 1;
    v21 = (v20 + 32 * v19);
    v21[4] = a4;
    v21[5] = a5;
    v21[6] = a2;
    v21[7] = a3;
    a1[22] = v20;
    swift_endAccess();
    if (!v19)
    {
      swift_getObjectType();
      sub_26203A62C();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    v29 = v11;
    v30 = v15;
    v23 = a1[13];
    v24 = v16;
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    aBlock[4] = sub_261FE28EC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261F78F64;
    aBlock[3] = &block_descriptor_124;
    v26 = _Block_copy(aBlock);
    v27 = v23;

    sub_262039FCC();
    v31 = MEMORY[0x277D84F90];
    sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    sub_26203A75C();
    MEMORY[0x266722A20](0, v18, v13, v26);
    _Block_release(v26);

    (*(v29 + 8))(v13, v10);
    (*(v24 + 8))(v18, v30);
  }
}

void sub_261FE0B3C(void (*a1)(void))
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_26203AD4C();
  sub_261F9D610();
  v2 = swift_allocError();
  *v3 = v4;
  v3[1] = v5;
  (a1)(v2, v3);
}

uint64_t sub_261FE0C28()
{
  OUTLINED_FUNCTION_46();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_261FE16F4;
  *(v1 + 24) = v0;
  v8[4] = sub_261FE2A04;
  v8[5] = v1;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  v8[2] = v2;
  v8[3] = &block_descriptor_30_0;
  v3 = _Block_copy(v8);

  v4 = OUTLINED_FUNCTION_72();
  dispatch_sync(v4, v5);
  _Block_release(v3);
  v6 = OUTLINED_FUNCTION_38_2(v1, "", 118, 322);

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_261FE0D24(void *a1)
{
  v2 = sub_262039FAC();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_262039FEC();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261F9BCE0();
  sub_26203AD3C();
  v52 = v54;
  v53 = v55;
  sub_26203AD4C();
  v37 = aBlock;
  v36 = v47;
  swift_beginAccess();
  v5 = a1[19];
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  v44 = a1;
  if (v6)
  {
    aBlock = MEMORY[0x277D84F90];

    sub_261F95A5C(0, v6, 0);
    v7 = aBlock;
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      aBlock = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_261F95A5C(v12 > 1, v13 + 1, 1);
        v7 = aBlock;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = sub_261FE28AC;
      *(v14 + 40) = v11;
      v8 += 4;
      --v6;
    }

    while (v6);

    a1 = v44;
  }

  swift_beginAccess();
  v15 = a1[22];
  v16 = *(v15 + 16);
  if (v16)
  {
    aBlock = MEMORY[0x277D84F90];

    sub_261F95A18(0, v16, 0);
    v17 = aBlock;
    v35 = v15;
    v18 = (v15 + 56);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      aBlock = v17;
      v22 = *(v17 + 16);
      v23 = *(v17 + 24);

      if (v22 >= v23 >> 1)
      {
        sub_261F95A18(v23 > 1, v22 + 1, 1);
        v17 = aBlock;
      }

      *(v17 + 16) = v22 + 1;
      v24 = v17 + 16 * v22;
      *(v24 + 32) = sub_261F9B624;
      *(v24 + 40) = v21;
      v18 += 4;
      --v16;
    }

    while (v16);

    a1 = v44;
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
  }

  v26 = a1[13];
  v27 = swift_allocObject();
  v28 = v37;
  v27[2] = v7;
  v27[3] = v28;
  v27[4] = v36;
  v27[5] = v17;
  v50 = sub_261FE28E0;
  v51 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_261F78F64;
  v49 = &block_descriptor_118;
  v29 = _Block_copy(&aBlock);
  v30 = v26;
  v31 = v38;
  sub_262039FCC();
  v45 = v25;
  sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  v32 = v40;
  v33 = v43;
  sub_26203A75C();
  MEMORY[0x266722A20](0, v31, v32, v29);
  _Block_release(v29);

  (*(v42 + 8))(v32, v33);
  (*(v39 + 8))(v31, v41);

  v34 = MEMORY[0x277D84F90];
  a1[19] = MEMORY[0x277D84F90];

  a1[22] = v34;

  if (a1[17])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_26203A61C();
    swift_unknownObjectRelease();
  }

  if (a1[18])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_26203A61C();
    swift_unknownObjectRelease();
  }

  sub_261FDEB80();
}

void sub_261FE12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  for (i = a1 + 40; v7; --v7)
  {
    v9 = *(i - 8);
    sub_261F9D610();
    v10 = swift_allocError();
    *v11 = a2;
    v11[1] = a3;
    v17[0] = v10;
    v17[1] = 0;
    v18 = 1;

    v9(v17);

    i += 16;
  }

  v12 = *(a4 + 16);
  for (j = a4 + 40; v12; --v12)
  {
    v14 = *(j - 8);
    sub_261F9D610();
    v15 = swift_allocError();
    *v16 = a2;
    v16[1] = a3;
    v17[0] = v15;

    v14(v17);

    j += 16;
  }
}

void sub_261FE1438()
{
  sub_26203A7CC();
  MEMORY[0x266722710](0x6D656C706D696E55, 0xEF203A6465746E65);
  v0 = sub_26203AE8C();
  MEMORY[0x266722710](v0);

  MEMORY[0x266722710](0xD00000000000002DLL, 0x8000000262050690);
  sub_26203A91C();
  __break(1u);
}

uint64_t sub_261FE1530()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return *(v0 + 184);
}

uint64_t sub_261FE1560(char a1)
{
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

uint64_t sub_261FE16FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9980, &qword_26203F7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FE1980(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_261FE19C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261FE1A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26203937C();
  v7 = result;
  if (result)
  {
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_26203939C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_261F6DE04(v7, v13, a3);
}

uint64_t sub_261FE1AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_26203937C();
  if (v8)
  {
    v9 = v8;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v11 = a1 - result + v9;
  }

  else
  {
    v11 = 0;
  }

  result = sub_26203939C();
  if (v11)
  {
    v12 = (*(a4 + 72))(v11, a5);

    return v12;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_261FE1B60(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v7, v6);
      *v5 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_26203937C() && __OFSUB__(v7, sub_2620393AC()))
      {
        goto LABEL_24;
      }

      sub_2620393BC();
      swift_allocObject();
      v14 = sub_26203935C();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_261FE22D8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      sub_26203944C();
      v7 = v17;
      v10 = sub_261FE22D8(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_261F6BFFC(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_261FE1F24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v14 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();
      sub_261F6B73C(v4, v3);
      sub_261F6BFFC(v4, v3);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v15 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v15 < v4)
      {
        goto LABEL_15;
      }

      if (sub_26203937C() && __OFSUB__(v4, sub_2620393AC()))
      {
        goto LABEL_16;
      }

      sub_2620393BC();
      swift_allocObject();
      v16 = sub_26203935C();

      v14 = v16;
LABEL_10:
      if (v15 < v4)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      v8 = sub_261FE238C(v4, v4 >> 32, v14, a2, a3);

      v13 = v14 | 0x4000000000000000;
LABEL_12:
      *a1 = v4;
      a1[1] = v13;
      return v8;
    case 2uLL:
      swift_retain_n();
      sub_261F6B73C(v4, v3);
      sub_261F6BFFC(v4, v3);
      *&v20 = v4;
      *(&v20 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      sub_26203944C();
      v4 = v20;
      v12 = *(v20 + 16);
      v11 = *(v20 + 24);

      v8 = sub_261FE238C(v12, v11, *(&v20 + 1), a2, a3);

      v13 = *(&v20 + 1) | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      *(&v20 + 7) = 0;
      *&v20 = 0;
      v8 = (*(a2 + 56))(&v20, a3);

      return v8;
    default:
      swift_retain_n();
      sub_261F6BFFC(v4, v3);
      *&v20 = v4;
      WORD4(v20) = v3;
      BYTE10(v20) = BYTE2(v3);
      BYTE11(v20) = BYTE3(v3);
      BYTE12(v20) = BYTE4(v3);
      BYTE13(v20) = BYTE5(v3);
      BYTE14(v20) = BYTE6(v3);
      v8 = (*(a2 + 56))(&v20, a3);
      v9 = v20;
      v10 = DWORD2(v20) | ((WORD6(v20) | (BYTE14(v20) << 16)) << 32);

      *a1 = v9;
      a1[1] = v10;
      return v8;
  }
}

char *sub_261FE22D8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26203937C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2620393AC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26203939C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_261FE238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_26203937C();
  if (result)
  {
    v9 = result;
    result = sub_2620393AC();
    v10 = __OFSUB__(a1, result);
    v11 = a1 - result;
    if (!v10)
    {
      sub_26203939C();
      v12 = (*(a4 + 56))(v9 + v11, a5);

      return v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261FE2418@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_26203943C();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_2620393BC();
      swift_allocObject();
      v8 = sub_26203936C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_2620394AC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_261FE24E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_261FE257C(sub_261FE288C, v5, a1, a2);
}

uint64_t sub_261FE2534(uint64_t result)
{
  if (result)
  {
    result = sub_26203A7DC();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_261FE257C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void *sub_261FE2624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_261FE24E0(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_261FE265C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_261FE2534(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_261FE269C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_261FE2704(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < result || v5 > result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v10)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{

  v0 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroy_150Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return swift_unknownObjectRelease();
}

uint64_t *sub_261FE2AC8()
{
  if (qword_28108B5C8 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_28108B5C8);
  }

  return &qword_28108B5D0;
}

uint64_t *sub_261FE2B08()
{
  if (qword_28108CFD0 != -1)
  {
    OUTLINED_FUNCTION_6_6(&qword_28108CFD0);
  }

  return &qword_28108CFD8;
}

id ControlChannelConnectionWireProtocolVersion.__allocating_init(rawValue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t (*static ControlChannelConnectionWireProtocolVersion.current.modify())(uint64_t a1)
{
  if (qword_28108CFD0 != -1)
  {
    OUTLINED_FUNCTION_6_6(&qword_28108CFD0);
  }

  OUTLINED_FUNCTION_9();
  return j_j__swift_endAccess;
}

uint64_t (*static ControlChannelConnectionWireProtocolVersion.minimumSupported.modify())(uint64_t a1)
{
  if (qword_28108B5C8 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_28108B5C8);
  }

  OUTLINED_FUNCTION_9();
  return j_j__swift_endAccess;
}

void *sub_261FE2D88()
{
  if (qword_27FEF8670 != -1)
  {
    OUTLINED_FUNCTION_3_16(&qword_27FEF8670);
  }

  return &qword_27FEFA0C8;
}

id sub_261FE2DEC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_13_7();
  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void sub_261FE2E74(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_13_7();
  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static ControlChannelConnectionWireProtocolVersion.minimumSupportedForWirelessPairing.modify())(uint64_t a1)
{
  if (qword_27FEF8670 != -1)
  {
    OUTLINED_FUNCTION_3_16(&qword_27FEF8670);
  }

  OUTLINED_FUNCTION_9();
  return j__swift_endAccess;
}

id sub_261FE2F40@<X0>(void (*a1)(void)@<X3>, void **a2@<X4>, void **a3@<X8>)
{
  a1();
  OUTLINED_FUNCTION_13_7();
  swift_beginAccess();
  v5 = *a2;
  *a3 = *a2;

  return v5;
}

void sub_261FE2F9C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void **a6)
{
  v8 = *a1;
  a5();
  OUTLINED_FUNCTION_13_7();
  swift_beginAccess();
  v9 = *a6;
  *a6 = v8;
}

id sub_261FE3010(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a3 = result;
  return result;
}

id ControlChannelConnectionWireProtocolVersion.init(rawValue:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t sub_261FE31C0()
{
  result = qword_28108B350;
  if (!qword_28108B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B350);
  }

  return result;
}

unint64_t ControlChannelConnectionWireProtocolVersion.__allocating_init(_:)(unint64_t result, unint64_t a2)
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

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_14_9();
            while (1)
            {
              OUTLINED_FUNCTION_2_15();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_0_23();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_8_8();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_80:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_2_15();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_23();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_8_8();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_14_9();
          while (1)
          {
            OUTLINED_FUNCTION_2_15();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_23();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_8_8();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_26203A82C();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_2_15();
                if (!v9 & v8)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_0_23();
                if (!v9)
                {
                  goto LABEL_68;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_8_8();
                if (v9)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_68;
        }

        goto LABEL_79;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_68;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_68;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_68;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_68:
        v7 = 0;
        v12 = 1;
        goto LABEL_69;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_2_15();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_23();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_8_8();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_59:
          v12 = 0;
LABEL_69:
          v28 = v12;
          v23 = v12;
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v7 = sub_261FE3814(result, a2, 10);
  v23 = v26;
LABEL_70:

  result = 0;
  if ((v23 & 1) == 0 && v7 >= 1)
  {
    v24 = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = v7;
    v27.receiver = v25;
    v27.super_class = v24;
    return objc_msgSendSuper2(&v27, sel_init);
  }

  return result;
}