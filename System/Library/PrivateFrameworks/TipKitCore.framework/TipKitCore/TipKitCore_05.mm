_BYTE *_s7OptionsVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s7OptionsV10CodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1975C9F84()
{
  result = qword_1EAF34DB8;
  if (!qword_1EAF34DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34DB8);
  }

  return result;
}

unint64_t sub_1975C9FDC()
{
  result = qword_1EAF34DC0;
  if (!qword_1EAF34DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34DC0);
  }

  return result;
}

unint64_t sub_1975CA034()
{
  result = qword_1EAF34DC8;
  if (!qword_1EAF34DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34DC8);
  }

  return result;
}

uint64_t CoreRule.Predicate.id.getter()
{
  v1 = *(v0 + OBJC_IVAR___Predicate_id);

  return v1;
}

uint64_t CoreRule.Predicate.argument.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___Predicate_argument;
  v3 = *(v1 + OBJC_IVAR___Predicate_argument);
  v4 = *(v1 + OBJC_IVAR___Predicate_argument + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_19759291C(v3, v4, v5);
}

id CoreRule.Predicate.init(compoundOperation:)(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v13 = *a1;
  v5 = v13;
  v6 = CoreRule.Predicate.Operator.rawValue.getter();
  v7 = &v2[OBJC_IVAR___Predicate_id];
  *v7 = v6;
  v7[1] = v8;
  v9 = &v2[OBJC_IVAR___Predicate_argument];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 2;
  *&v2[OBJC_IVAR___Predicate_rawdata] = xmmword_19761D220;
  v2[OBJC_IVAR___Predicate_operation] = v5;
  v10 = &v2[OBJC_IVAR___Predicate_value];
  *v10 = 0u;
  v10[1] = 0u;
  *&v2[OBJC_IVAR___Predicate_queries] = 0;
  *&v2[OBJC_IVAR___Predicate_subpredicates] = 0;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id CoreRule.Predicate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1975CA278(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75677261 && a2 == 0xE800000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61746164776172 && a2 == 0xE700000000000000;
        if (v8 || (sub_197616EF0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
          if (v9 || (sub_197616EF0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73656972657571 && a2 == 0xE700000000000000;
            if (v10 || (sub_197616EF0() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6964657270627573 && a2 == 0xED00007365746163)
            {

              return 6;
            }

            else
            {
              v12 = sub_197616EF0();

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

uint64_t sub_1975CA4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975CA278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975CA4DC(uint64_t a1)
{
  v2 = sub_19756B348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CA518(uint64_t a1)
{
  v2 = sub_19756B348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CoreRule.Predicate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CoreRule.Predicate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E08, &qword_19761D230);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19756B348();
  sub_197617260();
  LOBYTE(v16) = 0;
  OUTLINED_FUNCTION_3_18();
  sub_197616E30();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR___Predicate_argument + 8);
    v12 = *(v3 + OBJC_IVAR___Predicate_argument + 16);
    v16 = *(v3 + OBJC_IVAR___Predicate_argument);
    v17 = v11;
    v18 = v12;
    HIBYTE(v15) = 1;
    sub_19759291C(v16, v11, v12);
    sub_1975CA8F0();
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_3_18();
    sub_197616E60();
    sub_197580A80(v16, v17, v18);
    LOBYTE(v16) = *(v3 + OBJC_IVAR___Predicate_operation);
    HIBYTE(v15) = 2;
    sub_1975CA944();
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_3_18();
    sub_197616E60();
    v13 = *(v3 + OBJC_IVAR___Predicate_rawdata + 8);
    v16 = *(v3 + OBJC_IVAR___Predicate_rawdata);
    v17 = v13;
    HIBYTE(v15) = 3;
    sub_19757C2FC(v16, v13);
    sub_197580F18();
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    sub_197576558(v16, v17);
    LOBYTE(v16) = 4;
    sub_19759ECEC();
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    v16 = *(v3 + OBJC_IVAR___Predicate_queries);
    HIBYTE(v15) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E10, &qword_19761D238);
    sub_19756B3E8(&qword_1ED8167F0, sub_1975CA998);
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    v16 = *(v3 + OBJC_IVAR___Predicate_subpredicates);
    HIBYTE(v15) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E18, &qword_19761D240);
    sub_1975CA9EC(&qword_1ED816800, sub_1975CAA54);
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1975CA8F0()
{
  result = qword_1ED816A38;
  if (!qword_1ED816A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A38);
  }

  return result;
}

unint64_t sub_1975CA944()
{
  result = qword_1ED816A28;
  if (!qword_1ED816A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A28);
  }

  return result;
}

unint64_t sub_1975CA998()
{
  result = qword_1ED816A90;
  if (!qword_1ED816A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A90);
  }

  return result;
}

uint64_t sub_1975CA9EC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34E18, &qword_19761D240);
    a2();
    result = OUTLINED_FUNCTION_10_6();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1975CAA54()
{
  result = qword_1ED816AA0;
  if (!qword_1ED816AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816AA0);
  }

  return result;
}

uint64_t sub_1975CAACC@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Predicate.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1975CAB78()
{
  result = qword_1EAF34E28;
  if (!qword_1EAF34E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34E28);
  }

  return result;
}

uint64_t CoreRule.Predicate.Argument.id.getter()
{
  if (!*(v0 + 16))
  {
    v1 = 0x28746E756F63;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v1 = 0x286C617665;
LABEL_5:
    v3 = v1;
    MEMORY[0x19A8E2A50](*v0, *(v0 + 8));
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    return v3;
  }

  return 0;
}

uint64_t CoreRule.Predicate.Argument.name.getter()
{
  if (*(v0 + 16) <= 1u)
  {
    v1 = OUTLINED_FUNCTION_19();
    sub_19759291C(v1, v2, v3);
  }

  return OUTLINED_FUNCTION_19();
}

uint64_t CoreRule.Predicate.Argument.init(commonKeyPathKind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 >= 4)
  {
    if (qword_1ED815ED8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v7, qword_1ED815EE0);
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD000000000000047, 0x8000000197624870);
    v8 = OUTLINED_FUNCTION_22();
    MEMORY[0x19A8E2A50](v8);
    sub_197558864(0, 0xE000000000000000, v9);

    v10 = OUTLINED_FUNCTION_22();
    result = sub_1975CB5AC(v10, v11);
    v4 = 0;
    v5 = 0;
    LOBYTE(v6) = 2;
  }

  else
  {
    v4 = *&aLast[8 * v3];
    v5 = qword_19761DA30[v3];
    v6 = 0x1010001u >> (8 * v3);
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t static CoreRule.Predicate.Argument.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_20;
    }

    v21 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_197616EF0();
      v23 = OUTLINED_FUNCTION_22();
      v25 = OUTLINED_FUNCTION_2_16(v23, v24, 0);
      v27 = OUTLINED_FUNCTION_2_16(v25, v26, 0);
      sub_197580A80(v27, v28, 0);
      v18 = OUTLINED_FUNCTION_22();
      v20 = 0;
      goto LABEL_15;
    }

    v57 = OUTLINED_FUNCTION_2_16(v21, v2, 0);
    v59 = OUTLINED_FUNCTION_2_16(v57, v58, 0);
    sub_197580A80(v59, v60, 0);
    v42 = OUTLINED_FUNCTION_19();
    v44 = 0;
LABEL_24:
    sub_197580A80(v42, v43, v44);
    return 1;
  }

  if (v4 != 1)
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_20;
    }

    v40 = OUTLINED_FUNCTION_19();
    sub_197580A80(v40, v41, 2u);
    v42 = 0;
    v43 = 0;
    v44 = 2;
    goto LABEL_24;
  }

  if (v7 != 1)
  {
LABEL_20:
    v31 = OUTLINED_FUNCTION_22();
    v33 = OUTLINED_FUNCTION_2_16(v31, v32, v7);
    v35 = OUTLINED_FUNCTION_2_16(v33, v34, v4);
    sub_197580A80(v35, v36, v4);
    v37 = OUTLINED_FUNCTION_22();
    sub_197580A80(v37, v38, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    OUTLINED_FUNCTION_19();
    v9 = sub_197616EF0();
    v10 = OUTLINED_FUNCTION_22();
    sub_19759291C(v10, v11, 1u);
    v12 = OUTLINED_FUNCTION_1_20();
    sub_19759291C(v12, v13, v14);
    v15 = OUTLINED_FUNCTION_1_20();
    sub_197580A80(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_22();
    v20 = 1;
LABEL_15:
    sub_197580A80(v18, v19, v20);
    return v9 & 1;
  }

  v39 = 1;
  v45 = OUTLINED_FUNCTION_1_20();
  sub_19759291C(v45, v46, v47);
  v48 = OUTLINED_FUNCTION_1_20();
  sub_19759291C(v48, v49, v50);
  v51 = OUTLINED_FUNCTION_1_20();
  sub_197580A80(v51, v52, v53);
  v54 = OUTLINED_FUNCTION_1_20();
  sub_197580A80(v54, v55, v56);
  return v39;
}

uint64_t sub_1975CAF78(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197616EF0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1975CAFFC(uint64_t a1)
{
  v2 = sub_19756B5B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CB038(uint64_t a1)
{
  v2 = sub_19756B5B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CB074(uint64_t a1)
{
  v2 = sub_197571C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CB0B0(uint64_t a1)
{
  v2 = sub_197571C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CB0EC(uint64_t a1)
{
  v2 = sub_1975CB5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CB128(uint64_t a1)
{
  v2 = sub_1975CB5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CB168(uint64_t a1)
{
  v2 = sub_19756B560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CB1A4(uint64_t a1)
{
  v2 = sub_19756B560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreRule.Predicate.Argument.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E38, &qword_19761D410);
  OUTLINED_FUNCTION_0();
  v32 = v4;
  v33 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v30 = v28 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E40, &qword_19761D418);
  OUTLINED_FUNCTION_0();
  v29 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E48, &qword_19761D420);
  OUTLINED_FUNCTION_0();
  v28[1] = v12;
  v28[2] = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E50, &qword_19761D428);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - v17;
  v19 = *v1;
  v34 = v1[1];
  v35 = v19;
  v20 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19756B5B4();
  sub_197617260();
  if (!v20)
  {
    v37 = 0;
    sub_197571C50();
    OUTLINED_FUNCTION_10_7(&_s8ArgumentO15CountCodingKeysON, &v37);
    sub_197616E30();
    v22 = OUTLINED_FUNCTION_7_8();
    v24(v22, v23);
    return (*(v15 + 8))(v18, v20);
  }

  if (v20 == 1)
  {
    v38[0] = 1;
    sub_1975CB5C0();
    OUTLINED_FUNCTION_10_7(&_s8ArgumentO20EvaluationCodingKeysON, v38);
    v21 = v31;
    sub_197616E30();
    (*(v29 + 8))(v10, v21);
    return (*(v15 + 8))(v18, v20);
  }

  v38[1] = 2;
  sub_19756B560();
  v26 = v30;
  v27 = v36;
  sub_197616DE0();
  (*(v32 + 8))(v26, v33);
  return (*(v15 + 8))(v18, v27);
}

uint64_t sub_1975CB584@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Predicate.Argument.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975CB5AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_1975CB5C0()
{
  result = qword_1ED815E90;
  if (!qword_1ED815E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E90);
  }

  return result;
}

uint64_t sub_1975CB614(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1975CB654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1975CB698(uint64_t result, unsigned int a2)
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

unint64_t sub_1975CB6C4()
{
  result = qword_1EAF34E80;
  if (!qword_1EAF34E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34E80);
  }

  return result;
}

unint64_t sub_1975CB71C()
{
  result = qword_1EAF34E88;
  if (!qword_1EAF34E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34E88);
  }

  return result;
}

unint64_t sub_1975CB774()
{
  result = qword_1EAF34E90;
  if (!qword_1EAF34E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34E90);
  }

  return result;
}

uint64_t sub_1975CB7D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1976161E0();
  v4 = v3;
  v5 = sub_1976161E0();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1975CB850(char a1, char a2)
{
  v3 = sub_1975A4D54(a1);
  v5 = v4;
  v6 = sub_1975A4D54(a2);
  if (v3 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_18(v3, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_1975CB8C8(unsigned __int8 a1, char a2)
{
  v2 = 0xEF736E6F69676552;
  v3 = 0x65726F7453707061;
  v4 = a1;
  v5 = 0x65726F7453707061;
  v6 = 0xEF736E6F69676552;
  switch(v4)
  {
    case 1:
      v5 = 0x53746E65746E6F63;
      v7 = 1970561396;
      goto LABEL_6;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x8000000197623370;
      break;
    case 3:
      v5 = 0x656C6C6174736E69;
      v7 = 1886404964;
LABEL_6:
      v6 = v7 | 0xED00007300000000;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x736E6F69676572;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v5 = 0x6570795472657375;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x53746E65746E6F63;
      v8 = 1970561396;
      goto LABEL_13;
    case 2:
      v3 = 0xD000000000000010;
      v2 = 0x8000000197623370;
      break;
    case 3:
      v3 = 0x656C6C6174736E69;
      v8 = 1886404964;
LABEL_13:
      v2 = v8 | 0xED00007300000000;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x736E6F69676572;
      break;
    case 5:
      v2 = 0xE800000000000000;
      v3 = 0x6570795472657375;
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
    v10 = sub_197616EF0();
  }

  return v10 & 1;
}

uint64_t sub_1975CBAA0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656C746974;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656C746974;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 2036625250;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x736E6F69746361;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1852793705;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 2036625250;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x736E6F69746361;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1852793705;
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
    v8 = OUTLINED_FUNCTION_4_18(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1975CBBD4(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6567616D69;
  }

  else
  {
    v3 = 0x6C6F626D7973;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x6567616D69;
  }

  else
  {
    v5 = 0x6C6F626D7973;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1975CBC60(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6F43746E65636361;
  }

  else
  {
    v3 = 97;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xEB00000000726F6CLL;
  }

  if (a2)
  {
    v5 = 0x6F43746E65636361;
  }

  else
  {
    v5 = 97;
  }

  if (a2)
  {
    v6 = 0xEB00000000726F6CLL;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1975CBCF0(char a1, uint64_t a2)
{
  v3 = 0xE100000000000000;
  v4 = 112;
  switch(a1)
  {
    case 1:
      v4 = 0xD000000000000010;
      v3 = 0x8000000197623530;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v4 = 0x6C6F626D7973;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v4 = 1954047348;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 112;
  switch(a2)
  {
    case 1:
      v6 = 0xD000000000000010;
      v5 = 0x8000000197623530;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v6 = 0x6C6F626D7973;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v6 = 1954047348;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1975CBE10(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6579616C70736964;
  }

  else
  {
    v3 = 0x4449706974;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xED00006574614464;
  }

  if (a2)
  {
    v5 = 0x6579616C70736964;
  }

  else
  {
    v5 = 0x4449706974;
  }

  if (a2)
  {
    v6 = 0xED00006574614464;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1975CBEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_18(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t CoreRule.Predicate.Operator.evaluate<A>(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v107 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v105 = &v104 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v106 = &v104 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v104 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v104 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v104 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v104 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v104 - v25;
  v27 = *v3;
  v28 = OUTLINED_FUNCTION_0_23();
  if ((sub_1975CBEC4(v28, 0, v29) & 1) == 0)
  {
LABEL_5:
    v39 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v39, 1, v40))
    {
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_6_7();
      v41();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
      v42 = OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8(v42, v24, v43, v44))
      {
        OUTLINED_FUNCTION_1_21();
        default argument 1 of Equatable.isNotEqual(_:checkReverse:)();
        v45 = OUTLINED_FUNCTION_2_17();
        v38 = Equatable.isNotEqual(_:checkReverse:)(v45, v46, v47, v48);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v109, &qword_1EAF34BE0, &qword_19761BB70);
    }

    v50 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v50, 6, v51))
    {
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_6_7();
      v52();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
      v53 = OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8(v53, v21, v54, v55))
      {
        sub_1975558C4(&v109, v111);
        v56 = v112;
        __swift_project_boxed_opaque_existential_1Tm(v111, v112);
        sub_1975674F0(v108, &v109);
        if (v110)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
          if (swift_dynamicCast())
          {
            v57 = v113;
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {
          sub_19755C404(&v109, &qword_1EAF34340, &unk_19761C8E0);
          v57 = 0;
        }

        v114.value._rawValue = v57;
        v114.is_nil = v56;
        v49 = Equatable.exists(in:)(v114);

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v109, &qword_1EAF34BE0, &qword_19761BB70);
    }

    v58 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v58, 2, v59))
    {
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_6_7();
      v60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      v61 = OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8(v61, v18, v62, v63))
      {
        OUTLINED_FUNCTION_1_21();
        default argument 1 of Comparable.isLessThan(_:checkReverse:)();
        v64 = OUTLINED_FUNCTION_2_17();
        v68 = Comparable.isLessThan(_:checkReverse:)(v64, v65, v66, v67);
LABEL_32:
        v49 = v68;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0Tm(v111);
        return v49 & 1;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v109, &qword_1EAF34678, &qword_197618EB0);
    }

    v69 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v69, 3, v70))
    {
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_6_7();
      v71();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      v72 = OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8(v72, v15, v73, v74))
      {
        OUTLINED_FUNCTION_1_21();
        default argument 1 of Comparable.isLessThanOrEqual(_:checkReverse:)();
        v75 = OUTLINED_FUNCTION_2_17();
        v68 = Comparable.isLessThanOrEqual(_:checkReverse:)(v75, v76, v77, v78);
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v109, &qword_1EAF34678, &qword_197618EB0);
    }

    v79 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v79, 4, v80))
    {
      OUTLINED_FUNCTION_9_9();
      v81 = v106;
      OUTLINED_FUNCTION_6_7();
      v82();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      v83 = OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8(v83, v81, v84, v85))
      {
        OUTLINED_FUNCTION_1_21();
        default argument 1 of Comparable.isGreaterThan(_:checkReverse:)();
        v86 = OUTLINED_FUNCTION_2_17();
        v68 = Comparable.isGreaterThan(_:checkReverse:)(v86, v87, v88, v89);
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v109, &qword_1EAF34678, &qword_197618EB0);
    }

    v90 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v90, 5, v91))
    {
      v92 = *(v5 + 16);
      v93 = v105;
      OUTLINED_FUNCTION_6_7();
      v92();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      v94 = OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8(v94, v93, v95, v96))
      {
        OUTLINED_FUNCTION_1_21();
        default argument 1 of Comparable.isGreaterThanOrEqual(_:checkReverse:)();
        v97 = OUTLINED_FUNCTION_2_17();
        v68 = Comparable.isGreaterThanOrEqual(_:checkReverse:)(v97, v98, v99, v100);
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v109, &qword_1EAF34678, &qword_197618EB0);
    }

    else
    {
      v92 = *(v5 + 16);
    }

    OUTLINED_FUNCTION_6_7();
    v92();
    sub_1975C10C4();
    if (swift_dynamicCast())
    {
      v101 = v111[0];
      sub_1975674F0(v108, v111);
      if (v112)
      {
        if (swift_dynamicCast())
        {
          v102 = v109;
          LOBYTE(v111[0]) = v27;
          v49 = sub_1975CC628();

          return v49 & 1;
        }
      }

      else
      {

        sub_19755C404(v111, &qword_1EAF34340, &unk_19761C8E0);
      }
    }

    v49 = 0;
    return v49 & 1;
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_6_7();
  v30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
  v31 = OUTLINED_FUNCTION_7_9();
  if ((OUTLINED_FUNCTION_10_8(v31, v26, v32, v33) & 1) == 0)
  {
    OUTLINED_FUNCTION_3_19();
    sub_19755C404(&v109, &qword_1EAF34BE0, &qword_19761BB70);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_1_21();
  default argument 1 of Equatable.isEqual(_:checkReverse:)();
  v34 = OUTLINED_FUNCTION_2_17();
  v38 = Equatable.isEqual(_:checkReverse:)(v34, v35, v36, v37);
LABEL_8:
  v49 = v38;
  __swift_destroy_boxed_opaque_existential_0Tm(v111);
  return v49 & 1;
}

uint64_t sub_1975CC628()
{
  switch(*v0)
  {
    case 0:
      v1 = OUTLINED_FUNCTION_8_12();
      return [v1 v2];
    case 1:
      v11 = OUTLINED_FUNCTION_8_12();
      return [v11 v12] ^ 1;
    case 2:
      v7 = OUTLINED_FUNCTION_8_12();
      v6 = [v7 v8] + 1 == 0;
      goto LABEL_10;
    case 3:
      v9 = OUTLINED_FUNCTION_8_12();
      if ([v9 v10] != -1)
      {
        goto LABEL_9;
      }

      result = 1;
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_8_12();
      v6 = [v4 v5] == 1;
      goto LABEL_10;
    case 5:
      v13 = OUTLINED_FUNCTION_8_12();
      result = [v13 v14];
      if (result != 1)
      {
LABEL_9:
        v15 = OUTLINED_FUNCTION_8_12();
        v6 = [v15 v16] == 0;
LABEL_10:
        result = v6;
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_1975CC73C()
{
  result = qword_1EAF34E98;
  if (!qword_1EAF34E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34E98);
  }

  return result;
}

uint64_t sub_1975CC7B4@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Predicate.Operator.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1975CC864()
{
  result = qword_1ED816A20;
  if (!qword_1ED816A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A20);
  }

  return result;
}

uint64_t sub_1975CC8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_20_4(a1, a2, a3, a4, a5, a6, a7, a8, v184);
  sub_1975586C0(v8, v9 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F38, &qword_19761DED0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F40, &qword_19761DED8);
  if (!OUTLINED_FUNCTION_6_8(v10, v11, v12))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F48, &unk_19761DEE0);
    v18 = OUTLINED_FUNCTION_9_10(v13, v14, v15, v16, v17);
    if (v18)
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_1_22(v18, v19, v20, MEMORY[0x1E69E6370], v21, v22, v23, v24, v185, v196, v212);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v25 = v213;
      OUTLINED_FUNCTION_0_24(v26, v27, v28, MEMORY[0x1E69E6370], v29, v30, v31, v32, v186);
      v26 = swift_dynamicCast();
      if (v26)
      {
        OUTLINED_FUNCTION_15_6();
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0Tm((v9 + 32));
        __swift_destroy_boxed_opaque_existential_0Tm(v229);
        return v25 & 1;
      }
    }

    OUTLINED_FUNCTION_1_22(v26, v27, v28, MEMORY[0x1E69E6530], v29, v30, v31, v32, v186, v197, v213);
    v33 = swift_dynamicCast();
    if (v33)
    {
      v40 = v214;
      OUTLINED_FUNCTION_0_24(v33, v34, v35, MEMORY[0x1E69E6530], v36, v37, v38, v39, v187);
      v33 = swift_dynamicCast();
      if (v33)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v33, v34, v35, MEMORY[0x1E69E7230], v36, v37, v38, v39, v187, v198, v214);
    v41 = swift_dynamicCast();
    if (v41)
    {
      v48 = v215;
      OUTLINED_FUNCTION_0_24(v41, v42, v43, MEMORY[0x1E69E7230], v44, v45, v46, v47, v188);
      v41 = swift_dynamicCast();
      if (v41)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_1_22(v41, v42, v43, MEMORY[0x1E69E7290], v44, v45, v46, v47, v188, v199, v215);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v48 = v216;
      OUTLINED_FUNCTION_0_24(v50, v51, v52, MEMORY[0x1E69E7290], v53, v54, v55, v56, v189);
      v50 = swift_dynamicCast();
      if (v50)
      {
        goto LABEL_15;
      }
    }

    OUTLINED_FUNCTION_1_22(v50, v51, v52, MEMORY[0x1E69E72F0], v53, v54, v55, v56, v189, v200, v216);
    v57 = swift_dynamicCast();
    if (v57)
    {
      v48 = v217;
      OUTLINED_FUNCTION_0_24(v57, v58, v59, MEMORY[0x1E69E72F0], v60, v61, v62, v63, v190);
      v57 = swift_dynamicCast();
      if (v57)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_1_22(v57, v58, v59, MEMORY[0x1E69E7360], v60, v61, v62, v63, v190, v201, v217);
    v65 = swift_dynamicCast();
    if (v65)
    {
      v40 = v218;
      OUTLINED_FUNCTION_0_24(v65, v66, v67, MEMORY[0x1E69E7360], v68, v69, v70, v71, v187);
      v65 = swift_dynamicCast();
      if (v65)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v65, v66, v67, MEMORY[0x1E69E6810], v68, v69, v70, v71, v187, v202, v218);
    v72 = swift_dynamicCast();
    if (v72)
    {
      v40 = v219;
      OUTLINED_FUNCTION_0_24(v72, v73, v74, MEMORY[0x1E69E6810], v75, v76, v77, v78, v187);
      v72 = swift_dynamicCast();
      if (v72)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v72, v73, v74, MEMORY[0x1E69E7508], v75, v76, v77, v78, v187, v203, v219);
    v79 = swift_dynamicCast();
    if (v79)
    {
      v48 = v220;
      OUTLINED_FUNCTION_0_24(v79, v80, v81, MEMORY[0x1E69E7508], v82, v83, v84, v85, v188);
      v79 = swift_dynamicCast();
      if (v79)
      {
LABEL_12:
        v49 = v188;
LABEL_19:
        v64 = v48 == v49;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v79, v80, v81, MEMORY[0x1E69E75F8], v82, v83, v84, v85, v188, v204, v220);
    v86 = swift_dynamicCast();
    if (v86)
    {
      v48 = v221;
      OUTLINED_FUNCTION_0_24(v86, v87, v88, MEMORY[0x1E69E75F8], v89, v90, v91, v92, v189);
      v86 = swift_dynamicCast();
      if (v86)
      {
LABEL_15:
        v49 = v189;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v86, v87, v88, MEMORY[0x1E69E7668], v89, v90, v91, v92, v189, v205, v221);
    v93 = swift_dynamicCast();
    if (v93)
    {
      v48 = v222;
      OUTLINED_FUNCTION_0_24(v93, v94, v95, MEMORY[0x1E69E7668], v96, v97, v98, v99, v190);
      v93 = swift_dynamicCast();
      if (v93)
      {
LABEL_18:
        v49 = v190;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v93, v94, v95, MEMORY[0x1E69E76D8], v96, v97, v98, v99, v190, v206, v222);
    v100 = swift_dynamicCast();
    if (v100)
    {
      v40 = v223;
      OUTLINED_FUNCTION_0_24(v100, v101, v102, MEMORY[0x1E69E76D8], v103, v104, v105, v106, v187);
      v100 = swift_dynamicCast();
      if (v100)
      {
LABEL_32:
        v64 = v40 == v187;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v100, v101, v102, MEMORY[0x1E69E6448], v103, v104, v105, v106, v187, v207, v223);
    v108 = swift_dynamicCast();
    if (v108)
    {
      OUTLINED_FUNCTION_0_24(v108, v109, v110, MEMORY[0x1E69E6448], v111, v112, v113, v114, v191);
      v108 = swift_dynamicCast();
      if (v108)
      {
        v64 = v224 == *&v191;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v108, v109, v110, MEMORY[0x1E69E63B0], v111, v112, v113, v114, v191, v208, SLOBYTE(v224));
    v115 = swift_dynamicCast();
    if (v115)
    {
      OUTLINED_FUNCTION_0_24(v115, v116, v117, MEMORY[0x1E69E63B0], v118, v119, v120, v121, v192);
      v115 = swift_dynamicCast();
      if (v115)
      {
        v64 = v225 == *&v192;
LABEL_33:
        v25 = v64;
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_1_22(v115, v116, v117, MEMORY[0x1E69E6158], v118, v119, v120, v121, v192, v209, SLOBYTE(v225));
    v122 = swift_dynamicCast();
    if (v122)
    {
      OUTLINED_FUNCTION_0_24(v122, v123, v124, MEMORY[0x1E69E6158], v125, v126, v127, v128, v193);
      v129 = swift_dynamicCast();
      if (v129)
      {
        if (v226 == v193 && v228 == v210)
        {
          v25 = 1;
          goto LABEL_63;
        }

        v132 = OUTLINED_FUNCTION_8_13(v129, v130, v193);
LABEL_59:
        v25 = v132;
LABEL_63:

        goto LABEL_36;
      }
    }

    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34398, &qword_197618398);
    v141 = OUTLINED_FUNCTION_1_22(v133, v134, v135, v136, v137, v138, v139, v140, v193, v210, v226);
    v144 = OUTLINED_FUNCTION_13_8(v141, v142, v143);
    if (v144)
    {
      v152 = OUTLINED_FUNCTION_0_24(v144, v145, v146, v147, v148, v149, v150, v151, v194);
      if (OUTLINED_FUNCTION_13_8(v152, v153, v154))
      {
        v155 = OUTLINED_FUNCTION_14_2();
        sub_1975F0A14(v155, v156);
        goto LABEL_59;
      }
    }

    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343A0, &unk_1976183A0);
    v165 = OUTLINED_FUNCTION_1_22(v157, v158, v159, v160, v161, v162, v163, v164, v194, v211, v227);
    v168 = OUTLINED_FUNCTION_13_8(v165, v166, v167);
    if (v168)
    {
      v176 = OUTLINED_FUNCTION_0_24(v168, v169, v170, v171, v172, v173, v174, v175, v195);
      if (OUTLINED_FUNCTION_13_8(v176, v177, v178))
      {
        v179 = OUTLINED_FUNCTION_14_2();
        v132 = sub_1975CD854(v179, v180, v181, v182, v183);
        goto LABEL_59;
      }
    }

    sub_1975CFB0C(v229, &qword_1EAF34F38, &qword_19761DED0);
    v25 = 0;
    return v25 & 1;
  }

LABEL_4:
  sub_1975CFB0C(v229, &qword_1EAF34F38, &qword_19761DED0);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1975CCDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_20_4(a1, a2, a3, a4, a5, a6, a7, a8, v184);
  sub_1975586C0(v8, v9 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F38, &qword_19761DED0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F40, &qword_19761DED8);
  if (!OUTLINED_FUNCTION_6_8(v10, v11, v12))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F48, &unk_19761DEE0);
    v18 = OUTLINED_FUNCTION_9_10(v13, v14, v15, v16, v17);
    if (v18)
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_1_22(v18, v19, v20, MEMORY[0x1E69E6370], v21, v22, v23, v24, v185, v196, v212);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v25 = v213;
      OUTLINED_FUNCTION_0_24(v26, v27, v28, MEMORY[0x1E69E6370], v29, v30, v31, v32, v186);
      v26 = swift_dynamicCast();
      if (v26)
      {
        OUTLINED_FUNCTION_15_6();
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0Tm((v9 + 32));
        __swift_destroy_boxed_opaque_existential_0Tm(v229);
        return v25 & 1;
      }
    }

    OUTLINED_FUNCTION_1_22(v26, v27, v28, MEMORY[0x1E69E6530], v29, v30, v31, v32, v186, v197, v213);
    v33 = swift_dynamicCast();
    if (v33)
    {
      v40 = v214;
      OUTLINED_FUNCTION_0_24(v33, v34, v35, MEMORY[0x1E69E6530], v36, v37, v38, v39, v187);
      v33 = swift_dynamicCast();
      if (v33)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v33, v34, v35, MEMORY[0x1E69E7230], v36, v37, v38, v39, v187, v198, v214);
    v41 = swift_dynamicCast();
    if (v41)
    {
      v48 = v215;
      OUTLINED_FUNCTION_0_24(v41, v42, v43, MEMORY[0x1E69E7230], v44, v45, v46, v47, v188);
      v41 = swift_dynamicCast();
      if (v41)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_1_22(v41, v42, v43, MEMORY[0x1E69E7290], v44, v45, v46, v47, v188, v199, v215);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v48 = v216;
      OUTLINED_FUNCTION_0_24(v50, v51, v52, MEMORY[0x1E69E7290], v53, v54, v55, v56, v189);
      v50 = swift_dynamicCast();
      if (v50)
      {
        goto LABEL_15;
      }
    }

    OUTLINED_FUNCTION_1_22(v50, v51, v52, MEMORY[0x1E69E72F0], v53, v54, v55, v56, v189, v200, v216);
    v57 = swift_dynamicCast();
    if (v57)
    {
      v48 = v217;
      OUTLINED_FUNCTION_0_24(v57, v58, v59, MEMORY[0x1E69E72F0], v60, v61, v62, v63, v190);
      v57 = swift_dynamicCast();
      if (v57)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_1_22(v57, v58, v59, MEMORY[0x1E69E7360], v60, v61, v62, v63, v190, v201, v217);
    v65 = swift_dynamicCast();
    if (v65)
    {
      v40 = v218;
      OUTLINED_FUNCTION_0_24(v65, v66, v67, MEMORY[0x1E69E7360], v68, v69, v70, v71, v187);
      v65 = swift_dynamicCast();
      if (v65)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v65, v66, v67, MEMORY[0x1E69E6810], v68, v69, v70, v71, v187, v202, v218);
    v72 = swift_dynamicCast();
    if (v72)
    {
      v40 = v219;
      OUTLINED_FUNCTION_0_24(v72, v73, v74, MEMORY[0x1E69E6810], v75, v76, v77, v78, v187);
      v72 = swift_dynamicCast();
      if (v72)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v72, v73, v74, MEMORY[0x1E69E7508], v75, v76, v77, v78, v187, v203, v219);
    v79 = swift_dynamicCast();
    if (v79)
    {
      v48 = v220;
      OUTLINED_FUNCTION_0_24(v79, v80, v81, MEMORY[0x1E69E7508], v82, v83, v84, v85, v188);
      v79 = swift_dynamicCast();
      if (v79)
      {
LABEL_12:
        v49 = v188;
LABEL_19:
        v64 = v48 == v49;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v79, v80, v81, MEMORY[0x1E69E75F8], v82, v83, v84, v85, v188, v204, v220);
    v86 = swift_dynamicCast();
    if (v86)
    {
      v48 = v221;
      OUTLINED_FUNCTION_0_24(v86, v87, v88, MEMORY[0x1E69E75F8], v89, v90, v91, v92, v189);
      v86 = swift_dynamicCast();
      if (v86)
      {
LABEL_15:
        v49 = v189;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v86, v87, v88, MEMORY[0x1E69E7668], v89, v90, v91, v92, v189, v205, v221);
    v93 = swift_dynamicCast();
    if (v93)
    {
      v48 = v222;
      OUTLINED_FUNCTION_0_24(v93, v94, v95, MEMORY[0x1E69E7668], v96, v97, v98, v99, v190);
      v93 = swift_dynamicCast();
      if (v93)
      {
LABEL_18:
        v49 = v190;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v93, v94, v95, MEMORY[0x1E69E76D8], v96, v97, v98, v99, v190, v206, v222);
    v100 = swift_dynamicCast();
    if (v100)
    {
      v40 = v223;
      OUTLINED_FUNCTION_0_24(v100, v101, v102, MEMORY[0x1E69E76D8], v103, v104, v105, v106, v187);
      v100 = swift_dynamicCast();
      if (v100)
      {
LABEL_32:
        v64 = v40 == v187;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v100, v101, v102, MEMORY[0x1E69E6448], v103, v104, v105, v106, v187, v207, v223);
    v108 = swift_dynamicCast();
    if (v108)
    {
      OUTLINED_FUNCTION_0_24(v108, v109, v110, MEMORY[0x1E69E6448], v111, v112, v113, v114, v191);
      v108 = swift_dynamicCast();
      if (v108)
      {
        v64 = v224 == *&v191;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v108, v109, v110, MEMORY[0x1E69E63B0], v111, v112, v113, v114, v191, v208, SLOBYTE(v224));
    v115 = swift_dynamicCast();
    if (v115)
    {
      OUTLINED_FUNCTION_0_24(v115, v116, v117, MEMORY[0x1E69E63B0], v118, v119, v120, v121, v192);
      v115 = swift_dynamicCast();
      if (v115)
      {
        v64 = v225 == *&v192;
LABEL_33:
        v25 = v64;
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_1_22(v115, v116, v117, MEMORY[0x1E69E6158], v118, v119, v120, v121, v192, v209, SLOBYTE(v225));
    v122 = swift_dynamicCast();
    if (v122)
    {
      OUTLINED_FUNCTION_0_24(v122, v123, v124, MEMORY[0x1E69E6158], v125, v126, v127, v128, v193);
      v129 = swift_dynamicCast();
      if (v129)
      {
        if (v226 == v193 && v228 == v210)
        {
          v25 = 1;
          goto LABEL_63;
        }

        v132 = OUTLINED_FUNCTION_8_13(v129, v130, v193);
LABEL_59:
        v25 = v132;
LABEL_63:

        goto LABEL_36;
      }
    }

    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34360, &qword_19761E170);
    v141 = OUTLINED_FUNCTION_1_22(v133, v134, v135, v136, v137, v138, v139, v140, v193, v210, v226);
    v144 = OUTLINED_FUNCTION_13_8(v141, v142, v143);
    if (v144)
    {
      v152 = OUTLINED_FUNCTION_0_24(v144, v145, v146, v147, v148, v149, v150, v151, v194);
      if (OUTLINED_FUNCTION_13_8(v152, v153, v154))
      {
        v155 = OUTLINED_FUNCTION_14_2();
        sub_1975F0B6C(v155, v156);
        goto LABEL_59;
      }
    }

    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34348, &unk_197618360);
    v165 = OUTLINED_FUNCTION_1_22(v157, v158, v159, v160, v161, v162, v163, v164, v194, v211, v227);
    v168 = OUTLINED_FUNCTION_13_8(v165, v166, v167);
    if (v168)
    {
      v176 = OUTLINED_FUNCTION_0_24(v168, v169, v170, v171, v172, v173, v174, v175, v195);
      if (OUTLINED_FUNCTION_13_8(v176, v177, v178))
      {
        v179 = OUTLINED_FUNCTION_14_2();
        v132 = sub_1975CD854(v179, v180, v181, v182, v183);
        goto LABEL_59;
      }
    }

    sub_1975CFB0C(v229, &qword_1EAF34F38, &qword_19761DED0);
    v25 = 0;
    return v25 & 1;
  }

LABEL_4:
  sub_1975CFB0C(v229, &qword_1EAF34F38, &qword_19761DED0);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1975CD320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_20_4(a1, a2, a3, a4, a5, a6, a7, a8, v184);
  sub_1975586C0(v8, v9 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F38, &qword_19761DED0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F40, &qword_19761DED8);
  if (!OUTLINED_FUNCTION_6_8(v10, v11, v12))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F48, &unk_19761DEE0);
    v18 = OUTLINED_FUNCTION_9_10(v13, v14, v15, v16, v17);
    if (v18)
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_1_22(v18, v19, v20, MEMORY[0x1E69E6370], v21, v22, v23, v24, v185, v196, v212);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v25 = v213;
      OUTLINED_FUNCTION_0_24(v26, v27, v28, MEMORY[0x1E69E6370], v29, v30, v31, v32, v186);
      v26 = swift_dynamicCast();
      if (v26)
      {
        OUTLINED_FUNCTION_15_6();
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0Tm((v9 + 32));
        __swift_destroy_boxed_opaque_existential_0Tm(v229);
        return v25 & 1;
      }
    }

    OUTLINED_FUNCTION_1_22(v26, v27, v28, MEMORY[0x1E69E6530], v29, v30, v31, v32, v186, v197, v213);
    v33 = swift_dynamicCast();
    if (v33)
    {
      v40 = v214;
      OUTLINED_FUNCTION_0_24(v33, v34, v35, MEMORY[0x1E69E6530], v36, v37, v38, v39, v187);
      v33 = swift_dynamicCast();
      if (v33)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v33, v34, v35, MEMORY[0x1E69E7230], v36, v37, v38, v39, v187, v198, v214);
    v41 = swift_dynamicCast();
    if (v41)
    {
      v48 = v215;
      OUTLINED_FUNCTION_0_24(v41, v42, v43, MEMORY[0x1E69E7230], v44, v45, v46, v47, v188);
      v41 = swift_dynamicCast();
      if (v41)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_1_22(v41, v42, v43, MEMORY[0x1E69E7290], v44, v45, v46, v47, v188, v199, v215);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v48 = v216;
      OUTLINED_FUNCTION_0_24(v50, v51, v52, MEMORY[0x1E69E7290], v53, v54, v55, v56, v189);
      v50 = swift_dynamicCast();
      if (v50)
      {
        goto LABEL_15;
      }
    }

    OUTLINED_FUNCTION_1_22(v50, v51, v52, MEMORY[0x1E69E72F0], v53, v54, v55, v56, v189, v200, v216);
    v57 = swift_dynamicCast();
    if (v57)
    {
      v48 = v217;
      OUTLINED_FUNCTION_0_24(v57, v58, v59, MEMORY[0x1E69E72F0], v60, v61, v62, v63, v190);
      v57 = swift_dynamicCast();
      if (v57)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_1_22(v57, v58, v59, MEMORY[0x1E69E7360], v60, v61, v62, v63, v190, v201, v217);
    v65 = swift_dynamicCast();
    if (v65)
    {
      v40 = v218;
      OUTLINED_FUNCTION_0_24(v65, v66, v67, MEMORY[0x1E69E7360], v68, v69, v70, v71, v187);
      v65 = swift_dynamicCast();
      if (v65)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v65, v66, v67, MEMORY[0x1E69E6810], v68, v69, v70, v71, v187, v202, v218);
    v72 = swift_dynamicCast();
    if (v72)
    {
      v40 = v219;
      OUTLINED_FUNCTION_0_24(v72, v73, v74, MEMORY[0x1E69E6810], v75, v76, v77, v78, v187);
      v72 = swift_dynamicCast();
      if (v72)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v72, v73, v74, MEMORY[0x1E69E7508], v75, v76, v77, v78, v187, v203, v219);
    v79 = swift_dynamicCast();
    if (v79)
    {
      v48 = v220;
      OUTLINED_FUNCTION_0_24(v79, v80, v81, MEMORY[0x1E69E7508], v82, v83, v84, v85, v188);
      v79 = swift_dynamicCast();
      if (v79)
      {
LABEL_12:
        v49 = v188;
LABEL_19:
        v64 = v48 == v49;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v79, v80, v81, MEMORY[0x1E69E75F8], v82, v83, v84, v85, v188, v204, v220);
    v86 = swift_dynamicCast();
    if (v86)
    {
      v48 = v221;
      OUTLINED_FUNCTION_0_24(v86, v87, v88, MEMORY[0x1E69E75F8], v89, v90, v91, v92, v189);
      v86 = swift_dynamicCast();
      if (v86)
      {
LABEL_15:
        v49 = v189;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v86, v87, v88, MEMORY[0x1E69E7668], v89, v90, v91, v92, v189, v205, v221);
    v93 = swift_dynamicCast();
    if (v93)
    {
      v48 = v222;
      OUTLINED_FUNCTION_0_24(v93, v94, v95, MEMORY[0x1E69E7668], v96, v97, v98, v99, v190);
      v93 = swift_dynamicCast();
      if (v93)
      {
LABEL_18:
        v49 = v190;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v93, v94, v95, MEMORY[0x1E69E76D8], v96, v97, v98, v99, v190, v206, v222);
    v100 = swift_dynamicCast();
    if (v100)
    {
      v40 = v223;
      OUTLINED_FUNCTION_0_24(v100, v101, v102, MEMORY[0x1E69E76D8], v103, v104, v105, v106, v187);
      v100 = swift_dynamicCast();
      if (v100)
      {
LABEL_32:
        v64 = v40 == v187;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v100, v101, v102, MEMORY[0x1E69E6448], v103, v104, v105, v106, v187, v207, v223);
    v108 = swift_dynamicCast();
    if (v108)
    {
      OUTLINED_FUNCTION_0_24(v108, v109, v110, MEMORY[0x1E69E6448], v111, v112, v113, v114, v191);
      v108 = swift_dynamicCast();
      if (v108)
      {
        v64 = v224 == *&v191;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v108, v109, v110, MEMORY[0x1E69E63B0], v111, v112, v113, v114, v191, v208, SLOBYTE(v224));
    v115 = swift_dynamicCast();
    if (v115)
    {
      OUTLINED_FUNCTION_0_24(v115, v116, v117, MEMORY[0x1E69E63B0], v118, v119, v120, v121, v192);
      v115 = swift_dynamicCast();
      if (v115)
      {
        v64 = v225 == *&v192;
LABEL_33:
        v25 = v64;
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_1_22(v115, v116, v117, MEMORY[0x1E69E6158], v118, v119, v120, v121, v192, v209, SLOBYTE(v225));
    v122 = swift_dynamicCast();
    if (v122)
    {
      OUTLINED_FUNCTION_0_24(v122, v123, v124, MEMORY[0x1E69E6158], v125, v126, v127, v128, v193);
      v129 = swift_dynamicCast();
      if (v129)
      {
        if (v226 == v193 && v228 == v210)
        {
          v25 = 1;
          goto LABEL_63;
        }

        v132 = OUTLINED_FUNCTION_8_13(v129, v130, v193);
LABEL_59:
        v25 = v132;
LABEL_63:

        goto LABEL_36;
      }
    }

    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34370, &qword_197618370);
    v141 = OUTLINED_FUNCTION_1_22(v133, v134, v135, v136, v137, v138, v139, v140, v193, v210, v226);
    v144 = OUTLINED_FUNCTION_13_8(v141, v142, v143);
    if (v144)
    {
      v152 = OUTLINED_FUNCTION_0_24(v144, v145, v146, v147, v148, v149, v150, v151, v194);
      if (OUTLINED_FUNCTION_13_8(v152, v153, v154))
      {
        v155 = OUTLINED_FUNCTION_14_2();
        sub_1975F0BAC(v155, v156);
        goto LABEL_59;
      }
    }

    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34378, &qword_197618378);
    v165 = OUTLINED_FUNCTION_1_22(v157, v158, v159, v160, v161, v162, v163, v164, v194, v211, v227);
    v168 = OUTLINED_FUNCTION_13_8(v165, v166, v167);
    if (v168)
    {
      v176 = OUTLINED_FUNCTION_0_24(v168, v169, v170, v171, v172, v173, v174, v175, v195);
      if (OUTLINED_FUNCTION_13_8(v176, v177, v178))
      {
        v179 = OUTLINED_FUNCTION_14_2();
        v132 = sub_1975CD854(v179, v180, v181, v182, v183);
        goto LABEL_59;
      }
    }

    sub_1975CFB0C(v229, &qword_1EAF34F38, &qword_19761DED0);
    v25 = 0;
    return v25 & 1;
  }

LABEL_4:
  sub_1975CFB0C(v229, &qword_1EAF34F38, &qword_19761DED0);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1975CD854(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t (*a4)(_BYTE *, _BYTE *), void (*a5)(_BYTE *))
{
  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    if (!v5 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v9 = a1 + 32;
      v10 = a2 + 32;
      do
      {
        a3(v9, v14);
        a3(v10, v13);
        v11 = a4(v14, v13);
        a5(v13);
        a5(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v9 += 32;
        v10 += 32;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1975CD944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    return 7104878;
  }

  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_197553D0C(0, v8, 0, a4, a5, a6, a7);
    v10 = a1 + 32;
    v9 = v49;
    do
    {
      sub_1975C0C8C(v10, &v44);
      if (v47)
      {
        OUTLINED_FUNCTION_21_4();
        *&v38[0] = v11;
        *(&v38[0] + 1) = 0xE900000000000020;
        v12 = 0xE200000000000000;
        v13 = 15677;
        switch(v44)
        {
          case 1:
            v13 = 15649;
            break;
          case 2:
            v12 = 0xE100000000000000;
            v13 = 60;
            break;
          case 3:
            v13 = 15676;
            break;
          case 4:
            v12 = 0xE100000000000000;
            v13 = 62;
            break;
          case 5:
            v13 = 15678;
            break;
          case 6:
            v13 = 28265;
            break;
          case 7:
            v12 = 0xE300000000000000;
            v13 = 6581857;
            break;
          case 8:
            v13 = 29295;
            break;
          case 9:
            v12 = 0xE300000000000000;
            v13 = 7889261;
            break;
          case 10:
            v12 = 0xE300000000000000;
            v13 = 7235949;
            break;
          case 11:
            v13 = OUTLINED_FUNCTION_10_9();
            break;
          case 12:
            v13 = OUTLINED_FUNCTION_17_6();
            break;
          default:
            break;
        }

        MEMORY[0x19A8E2A50](v13, v12);

        MEMORY[0x19A8E2A50](46, 0xE100000000000000);
        MEMORY[0x19A8E2A50](v45, v46);
        v16 = *(&v38[0] + 1);
        v17 = *&v38[0];
      }

      else
      {
        v42 = v45;
        v43 = v46;

        v14 = 0xE100000000000000;
        MEMORY[0x19A8E2A50](32, 0xE100000000000000);
        v15 = 60;
        switch(v44)
        {
          case 1:
            v14 = 0xE200000000000000;
            v15 = 15649;
            break;
          case 2:
            break;
          case 3:
            v14 = 0xE200000000000000;
            v15 = 15676;
            break;
          case 4:
            v15 = 62;
            break;
          case 5:
            v14 = 0xE200000000000000;
            v15 = 15678;
            break;
          case 6:
            v14 = 0xE200000000000000;
            v15 = 28265;
            break;
          case 7:
            v14 = 0xE300000000000000;
            v15 = 6581857;
            break;
          case 8:
            v14 = 0xE200000000000000;
            v15 = 29295;
            break;
          case 9:
            v14 = 0xE300000000000000;
            v15 = 7889261;
            break;
          case 10:
            v14 = 0xE300000000000000;
            v15 = 7235949;
            break;
          case 11:
            v15 = OUTLINED_FUNCTION_10_9();
            break;
          case 12:
            v15 = OUTLINED_FUNCTION_17_6();
            break;
          default:
            v14 = 0xE200000000000000;
            v15 = 15677;
            break;
        }

        MEMORY[0x19A8E2A50](v15, v14);

        MEMORY[0x19A8E2A50](8736, 0xE200000000000000);
        sub_1975CF4F0(&v48, v40, &qword_1EAF34930, &unk_19761DB90);
        if (v41)
        {
          sub_1975586C0(v40, v39);
          if (swift_dynamicCast())
          {
            memset(v38, 0, 32);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
            v18 = sub_197616200();
            v20 = v19;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343D0, &qword_1976183D0);
            if (swift_dynamicCast())
            {
              sub_19756EED8(v38, v37);
              __swift_project_boxed_opaque_existential_1Tm(v37, v37[3]);
              v18 = sub_197616E80();
              v20 = v21;
              __swift_destroy_boxed_opaque_existential_0Tm(v37);
            }

            else
            {
              v22 = __swift_project_boxed_opaque_existential_1Tm(v40, v41);
              MEMORY[0x1EEE9AC00](v22);
              (*(v24 + 16))(&v37[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
              v18 = sub_197616200();
              v20 = v25;
            }
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v39);
          sub_19759425C(v40);
        }

        else
        {
          sub_1975CFB0C(v40, &qword_1EAF34930, &unk_19761DB90);
          v18 = 0;
          v20 = 0;
        }

        *&v38[0] = v18;
        *(&v38[0] + 1) = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
        v26 = sub_197616200();
        MEMORY[0x19A8E2A50](v26);

        MEMORY[0x19A8E2A50](34, 0xE100000000000000);
        v17 = v42;
        v16 = v43;
      }

      sub_1975C0DA4(&v44);
      v49 = v9;
      v32 = *(v9 + 16);
      v31 = *(v9 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_197553D0C(v31 > 1, v32 + 1, 1, v27, v28, v29, v30);
        v9 = v49;
      }

      *(v9 + 16) = v32 + 1;
      v33 = v9 + 16 * v32;
      *(v33 + 32) = v17;
      *(v33 + 40) = v16;
      v10 += 64;
      --v8;
    }

    while (v8);
  }

  v44 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF347B8, &qword_197619800);
  sub_1975CFB68();
  v34 = sub_197616170();

  return v34;
}

uint64_t CoreRule.Predicate.Query.id.getter()
{
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_21_4();
    v10 = v1;
    v11 = 0xE900000000000020;
    LOBYTE(v13) = *v0;
    v2 = CoreRule.Predicate.Operator.rawValue.getter();
    MEMORY[0x19A8E2A50](v2);

    MEMORY[0x19A8E2A50](46, 0xE100000000000000);
    MEMORY[0x19A8E2A50](*(v0 + 8), *(v0 + 16));
    return v10;
  }

  else
  {
    v4 = *(v0 + 16);
    v13 = *(v0 + 8);
    v14 = v4;

    MEMORY[0x19A8E2A50](32, 0xE100000000000000);
    LOBYTE(v10) = *v0;
    v5 = CoreRule.Predicate.Operator.rawValue.getter();
    MEMORY[0x19A8E2A50](v5);

    MEMORY[0x19A8E2A50](8736, 0xE200000000000000);
    sub_1975CF4F0(v0 + 32, &v10, &qword_1EAF34930, &unk_19761DB90);
    if (v12)
    {
      v6 = sub_19759CAB0();
      v8 = v7;
      sub_19759425C(&v10);
    }

    else
    {
      sub_1975CFB0C(&v10, &qword_1EAF34930, &unk_19761DB90);
      v6 = 0;
      v8 = 0;
    }

    v10 = v6;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
    v9 = sub_197616200();
    MEMORY[0x19A8E2A50](v9);

    MEMORY[0x19A8E2A50](34, 0xE100000000000000);
    return v13;
  }
}

BOOL static CoreRule.Predicate.Query.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_1975CBEAC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v4 && (sub_197616EF0() & 1) == 0 || a1[24] != a2[24])
  {
    return 0;
  }

  sub_1975CF4F0((a1 + 32), v15, &qword_1EAF34930, &unk_19761DB90);
  sub_1975CF4F0((a2 + 32), &v17, &qword_1EAF34930, &unk_19761DB90);
  if (v16)
  {
    sub_1975CF4F0(v15, v14, &qword_1EAF34930, &unk_19761DB90);
    if (*(&v18 + 1))
    {
      v13[0] = v17;
      v13[1] = v18;
      v11 = sub_1975CC8B8(v14, v13, v5, v6, v7, v8, v9, v10);
      sub_19759425C(v13);
      sub_19759425C(v14);
      sub_1975CFB0C(v15, &qword_1EAF34930, &unk_19761DB90);
      return (v11 & 1) != 0;
    }

    sub_19759425C(v14);
  }

  else if (!*(&v18 + 1))
  {
    sub_1975CFB0C(v15, &qword_1EAF34930, &unk_19761DB90);
    return 1;
  }

  sub_1975CFB0C(v15, &qword_1EAF34EA0, &qword_19761DBA0);
  return 0;
}

uint64_t sub_1975CE1D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_197616EF0();

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

uint64_t sub_1975CE334(char a1)
{
  result = 0x6F6974617265706FLL;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975CE3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975CE1D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975CE3D8(uint64_t a1)
{
  v2 = sub_1975CE868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CE414(uint64_t a1)
{
  v2 = sub_1975CE868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreRule.Predicate.Query.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34EA8, &qword_19761DBA8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975CE868();
  sub_197617260();
  v12[15] = *v3;
  v12[14] = 0;
  sub_1975CA944();
  OUTLINED_FUNCTION_16_6();
  sub_197616E60();
  if (!v2)
  {
    v12[13] = 1;
    sub_197616E30();
    v12[12] = v3[24];
    v12[11] = 2;
    sub_1975CE8BC();
    OUTLINED_FUNCTION_16_6();
    sub_197616E60();
    v12[10] = 3;
    sub_19759ECEC();
    OUTLINED_FUNCTION_16_6();
    sub_197616E20();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t CoreRule.Predicate.Query.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34EC0, &unk_19761DBB0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975CE868();
  sub_197617240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = 0;
  sub_19756B490();
  OUTLINED_FUNCTION_3_20();
  sub_197616DC0();
  v12[0] = v10;
  LOBYTE(v10) = 1;
  v13 = sub_197616D90();
  v14 = v6;
  v18 = 2;
  sub_1975CE910();
  OUTLINED_FUNCTION_3_20();
  sub_197616DC0();
  v15 = 1;
  v18 = 3;
  sub_19756BBB0();
  OUTLINED_FUNCTION_3_20();
  sub_197616D80();
  v7 = OUTLINED_FUNCTION_3_7();
  v8(v7);
  v16 = v10;
  v17 = v11;
  sub_1975C0C8C(v12, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1975C0DA4(v12);
}

unint64_t sub_1975CE868()
{
  result = qword_1EAF34EB0;
  if (!qword_1EAF34EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34EB0);
  }

  return result;
}

unint64_t sub_1975CE8BC()
{
  result = qword_1EAF34EB8;
  if (!qword_1EAF34EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34EB8);
  }

  return result;
}

unint64_t sub_1975CE910()
{
  result = qword_1EAF34EC8;
  if (!qword_1EAF34EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34EC8);
  }

  return result;
}

uint64_t sub_1975CE964(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746C6966 && a2 == 0xE600000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_197616EF0();

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

uint64_t sub_1975CEA28(char a1)
{
  if (a1)
  {
    return 0x676E6970756F7267;
  }

  else
  {
    return 0x7265746C6966;
  }
}

uint64_t sub_1975CEA5C(void *a1, int a2)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34EF0, &qword_19761DE98);
  OUTLINED_FUNCTION_0();
  v22 = v4;
  v23 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34EF8, &qword_19761DEA0);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F00, &qword_19761DEA8);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975CFA10();
  sub_197617260();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_1975CFA64();
    sub_197616DE0();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_1975CFAB8();
    sub_197616DE0();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

uint64_t sub_1975CECE8(unint64_t a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F20, &qword_19761DEB0);
  OUTLINED_FUNCTION_0();
  v39 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F28, &qword_19761DEB8);
  OUTLINED_FUNCTION_0();
  v38 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F30, &unk_19761DEC0);
  OUTLINED_FUNCTION_0();
  v40 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  __swift_project_boxed_opaque_existential_1Tm(a1, *(a1 + 24));
  sub_1975CFA10();
  v16 = v42;
  sub_197617240();
  if (v16)
  {
    goto LABEL_8;
  }

  v36 = v6;
  v37 = v10;
  v42 = a1;
  v17 = v41;
  v18 = sub_197616DD0();
  result = sub_1975CB7D0(v18, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    sub_197616A70();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E78, &qword_19761D450);
    *v28 = &_s5QueryV4KindON;
    sub_197616D40();
    sub_197616A60();
    OUTLINED_FUNCTION_18();
    (*(v29 + 104))(v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v15, v11);
    a1 = v42;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return a1;
  }

  v35 = 0;
  if (v21 < (v22 >> 1))
  {
    a1 = *(v20 + v21);
    sub_1975CB7C8(v21 + 1, v22 >> 1, result, v20, v21, v22);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (a1)
      {
        LODWORD(v38) = a1;
        v44 = 1;
        sub_1975CFA64();
        OUTLINED_FUNCTION_19_3(&_s5QueryV4KindO18GroupingCodingKeysON, &v44);
        swift_unknownObjectRelease();
        (*(v39 + 8))(v5, v17);
        v31 = OUTLINED_FUNCTION_4_19();
        v32(v31);
        a1 = v38;
      }

      else
      {
        v43 = 0;
        sub_1975CFAB8();
        v30 = v37;
        OUTLINED_FUNCTION_19_3(&_s5QueryV4KindO16FilterCodingKeysON, &v43);
        swift_unknownObjectRelease();
        (*(v38 + 8))(v30, v36);
        v33 = OUTLINED_FUNCTION_4_19();
        v34(v33);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975CF19C@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Predicate.Query.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975CF1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975CE964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975CF1F4(uint64_t a1)
{
  v2 = sub_1975CFA10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CF230(uint64_t a1)
{
  v2 = sub_1975CFA10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CF26C(uint64_t a1)
{
  v2 = sub_1975CFAB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CF2A8(uint64_t a1)
{
  v2 = sub_1975CFAB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CF2E4(uint64_t a1)
{
  v2 = sub_1975CFA64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CF320(uint64_t a1)
{
  v2 = sub_1975CFA64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CF35C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1975CECE8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

double static CoreRule.Predicate.Query.filter<A, B>(operation:keyPath:value:)@<D0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v43[3] = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  __swift_allocate_boxed_opaque_existential_0(v43);
  OUTLINED_FUNCTION_18();
  (*(v5 + 16))();
  v6 = AnyKeyPath.stringValue.getter();
  v8 = v7;
  v9 = sub_1975CF4F0(v43, v41, &qword_1EAF34340, &unk_19761C8E0);
  *(a3 + 24) = 0;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *a3 = v4;
  if (v42)
  {
    OUTLINED_FUNCTION_22_4(v9, v10, v11, v12, v13, v14, v15, v16, v35, v36, v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1));
    sub_19756D528(&v35, &v39);
    v17 = OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_11_9(v17, v18, v19, v20, v21, v22, v23, v24, v35, v36, v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1));
  }

  else
  {
    v25 = OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_11_9(v25, v26, v27, v28, v29, v30, v31, v32, v35, v36, v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1));
    v39 = 0u;
    v40 = 0u;
  }

  result = *&v39;
  v34 = v40;
  *(a3 + 32) = v39;
  *(a3 + 48) = v34;
  return result;
}

uint64_t sub_1975CF4F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_18();
  (*(v6 + 16))(a2, a1);
  return a2;
}

double sub_1975CF564@<D0>(void *a1@<X0>, char a2@<W5>, uint64_t a3@<X8>)
{
  v43[3] = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  __swift_allocate_boxed_opaque_existential_0(v43);
  OUTLINED_FUNCTION_18();
  (*(v5 + 16))();
  v6 = AnyKeyPath.stringValue.getter();
  v8 = v7;
  v9 = sub_1975CF4F0(v43, v41, &qword_1EAF34340, &unk_19761C8E0);
  *(a3 + 24) = 0;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *a3 = a2;
  if (v42)
  {
    OUTLINED_FUNCTION_22_4(v9, v10, v11, v12, v13, v14, v15, v16, v35, v36, v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1));
    sub_19756D528(&v35, &v39);
    v17 = OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_11_9(v17, v18, v19, v20, v21, v22, v23, v24, v35, v36, v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1));
  }

  else
  {
    v25 = OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_11_9(v25, v26, v27, v28, v29, v30, v31, v32, v35, v36, v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1));
    v39 = 0u;
    v40 = 0u;
  }

  result = *&v39;
  v34 = v40;
  *(a3 + 32) = v39;
  *(a3 + 48) = v34;
  return result;
}

double sub_1975CF6BC@<D0>(char a1@<W4>, uint64_t a2@<X8>)
{
  v4 = AnyKeyPath.stringValue.getter();
  *(a2 + 24) = 1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *a2 = a1;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10TipKitCore10AnyCodableVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1975CF734(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1975CF774(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *_s5QueryV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1975CF8B4()
{
  result = qword_1EAF34ED0;
  if (!qword_1EAF34ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34ED0);
  }

  return result;
}

unint64_t sub_1975CF90C()
{
  result = qword_1EAF34ED8;
  if (!qword_1EAF34ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34ED8);
  }

  return result;
}

unint64_t sub_1975CF964()
{
  result = qword_1EAF34EE0;
  if (!qword_1EAF34EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34EE0);
  }

  return result;
}

unint64_t sub_1975CF9BC()
{
  result = qword_1EAF34EE8;
  if (!qword_1EAF34EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34EE8);
  }

  return result;
}

unint64_t sub_1975CFA10()
{
  result = qword_1EAF34F08;
  if (!qword_1EAF34F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F08);
  }

  return result;
}

unint64_t sub_1975CFA64()
{
  result = qword_1EAF34F10;
  if (!qword_1EAF34F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F10);
  }

  return result;
}

unint64_t sub_1975CFAB8()
{
  result = qword_1EAF34F18;
  if (!qword_1EAF34F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F18);
  }

  return result;
}

uint64_t sub_1975CFB0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_18();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1975CFB68()
{
  result = qword_1EAF33ED8;
  if (!qword_1EAF33ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF347B8, &qword_197619800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33ED8);
  }

  return result;
}

_BYTE *sub_1975CFBCC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1975CFCCC()
{
  result = qword_1EAF34F50;
  if (!qword_1EAF34F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F50);
  }

  return result;
}

unint64_t sub_1975CFD24()
{
  result = qword_1EAF34F58;
  if (!qword_1EAF34F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F58);
  }

  return result;
}

unint64_t sub_1975CFD7C()
{
  result = qword_1EAF34F60;
  if (!qword_1EAF34F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F60);
  }

  return result;
}

unint64_t sub_1975CFDD4()
{
  result = qword_1EAF34F68;
  if (!qword_1EAF34F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F68);
  }

  return result;
}

unint64_t sub_1975CFE2C()
{
  result = qword_1EAF34F70;
  if (!qword_1EAF34F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F70);
  }

  return result;
}

unint64_t sub_1975CFE84()
{
  result = qword_1EAF34F78;
  if (!qword_1EAF34F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F78);
  }

  return result;
}

unint64_t sub_1975CFEDC()
{
  result = qword_1EAF34F80;
  if (!qword_1EAF34F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F80);
  }

  return result;
}

uint64_t static CoreRule.Predicate.Subpredicate.maxAge(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1975CFF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    return 7104878;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_197553D0C(0, v8, 0, a4, a5, a6, a7);
    v9 = (a1 + 48);
    do
    {
      if (*v9)
      {
        sub_197616A20();

        v21 = 0xD000000000000015;
        v22 = 0x8000000197624980;
      }

      else
      {
        sub_197616A20();

        OUTLINED_FUNCTION_10_10();
        v21 = v10;
        v22 = 0xEE00202D20776F6ELL;
      }

      v11 = sub_197617280();
      MEMORY[0x19A8E2A50](v11);

      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_197553D0C(v16 > 1, v17 + 1, 1, v12, v13, v14, v15);
      }

      *(v23 + 16) = v17 + 1;
      v18 = v23 + 16 * v17;
      *(v18 + 32) = v21;
      *(v18 + 40) = v22;
      v9 += 24;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF347B8, &qword_197619800);
  sub_197559AAC(&qword_1EAF33ED8, &qword_1EAF347B8, &qword_197619800, MEMORY[0x1E69E6310]);
  v19 = sub_197616170();

  return v19;
}

unint64_t CoreRule.Predicate.Subpredicate.id.getter()
{
  if (*(v0 + 16))
  {
    sub_197616A20();

    v4 = 0xD000000000000015;
  }

  else
  {
    sub_197616A20();

    OUTLINED_FUNCTION_10_10();
    v4 = v1;
  }

  v2 = sub_197617280();
  MEMORY[0x19A8E2A50](v2);

  return v4;
}

uint64_t sub_1975D020C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32[2] = a2;
  v32[3] = a3;
  v32[0] = a1;
  v35 = a4;
  v33 = sub_1976157A0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_7_10(v7, v32[0]);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B20, &unk_19761E5E0);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_5();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v32 - v20;
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B30, &qword_19761E5F0);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  (*(v18 + 16))(v21, *v32[0], v16);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_11();
  sub_197559AAC(v23, &qword_1EAF34B28, &qword_19761B8C8, v24);
  sub_1976157E0();
  _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
  (*(v10 + 8))(v14, v8);
  sub_1976157D0();
  (*(v5 + 104))(v32[4], *MEMORY[0x1E6968C28], v33);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B38, &qword_19761E620);
  v26 = v35;
  v35[3] = v25;
  v26[4] = sub_1975920D8();
  __swift_allocate_boxed_opaque_existential_0(v26);
  OUTLINED_FUNCTION_4_20();
  sub_197559AAC(v27, &qword_1EAF34B30, &qword_19761E5F0, v28);
  OUTLINED_FUNCTION_3_21();
  sub_197559AAC(v29, &qword_1EAF34B20, &unk_19761E5E0, v30);
  OUTLINED_FUNCTION_6_9(&qword_1ED816CD8);
  return sub_1976156C0();
}

uint64_t sub_1975D05E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v31 = a2;
  v27 = a1;
  v32 = sub_1976157A0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_10(v9, v26);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B20, &unk_19761E5E0);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B30, &qword_19761E5F0);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  (*(v14 + 16))(v17, *v27, v12);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_11();
  sub_197559AAC(v19, &qword_1EAF34B28, &qword_19761B8C8, v20);
  sub_1976157E0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
  sub_1976157D0();
  (*(v7 + 104))(v30, *MEMORY[0x1E6968C28], v32);
  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B38, &qword_19761E620);
  a5[4] = sub_1975920D8();
  __swift_allocate_boxed_opaque_existential_0(a5);
  OUTLINED_FUNCTION_4_20();
  sub_197559AAC(v21, &qword_1EAF34B30, &qword_19761E5F0, v22);
  OUTLINED_FUNCTION_3_21();
  sub_197559AAC(v23, &qword_1EAF34B20, &unk_19761E5E0, v24);
  OUTLINED_FUNCTION_6_9(&qword_1ED816CD8);
  return sub_1976156C0();
}

uint64_t sub_1975D0968@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FD0, &qword_19761E628);
  a1[4] = sub_1975D1BA8();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1976157D0();
}

uint64_t static CoreRule.Predicate.Subpredicate.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  return sub_1976172C0();
}

uint64_t sub_1975D0A1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65674178616DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6470557265746661 && a2 == 0xEB00000000657461)
  {

    return 1;
  }

  else
  {
    v7 = sub_197616EF0();

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

uint64_t sub_1975D0AE4(char a1)
{
  if (a1)
  {
    return 0x6470557265746661;
  }

  else
  {
    return 0x65674178616DLL;
  }
}

uint64_t sub_1975D0B20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197616EF0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1975D0B9C(uint64_t a1)
{
  v2 = sub_1975D106C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D0BD8(uint64_t a1)
{
  v2 = sub_1975D106C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975D0C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D0A1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D0C44(uint64_t a1)
{
  v2 = sub_1975D1018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D0C80(uint64_t a1)
{
  v2 = sub_1975D1018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975D0CBC(uint64_t a1)
{
  v2 = sub_1975D10C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D0CF8(uint64_t a1)
{
  v2 = sub_1975D10C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreRule.Predicate.Subpredicate.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F88, &qword_19761E180);
  OUTLINED_FUNCTION_0();
  v27 = v5;
  v28 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F90, &qword_19761E188);
  OUTLINED_FUNCTION_0();
  v24 = v9;
  v25 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F98, &qword_19761E190);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_5();
  v17 = v1[1];
  v29 = *v1;
  v30 = v17;
  v18 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D1018();
  sub_197617260();
  if (v18)
  {
    LOBYTE(v31) = 1;
    sub_1975D106C();
    v19 = v26;
    OUTLINED_FUNCTION_11_10();
    sub_197616DE0();
    v31 = v29;
    v32 = v30;
    v20 = v28;
    sub_197616E60();
    (*(v27 + 8))(v19, v20);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_1975D10C0();
    OUTLINED_FUNCTION_11_10();
    sub_197616DE0();
    v31 = v29;
    v32 = v30;
    v21 = v25;
    sub_197616E60();
    (*(v24 + 8))(v12, v21);
  }

  return (*(v15 + 8))(v2, v13);
}

unint64_t sub_1975D1018()
{
  result = qword_1ED8156F0;
  if (!qword_1ED8156F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156F0);
  }

  return result;
}

unint64_t sub_1975D106C()
{
  result = qword_1ED8156C8;
  if (!qword_1ED8156C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156C8);
  }

  return result;
}

unint64_t sub_1975D10C0()
{
  result = qword_1EAF341F0;
  if (!qword_1EAF341F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341F0);
  }

  return result;
}

uint64_t CoreRule.Predicate.Subpredicate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FA0, &qword_19761E198);
  OUTLINED_FUNCTION_0();
  v53 = v5;
  v54 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FA8, &qword_19761E1A0);
  OUTLINED_FUNCTION_0();
  v52 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FB0, &unk_19761E1A8);
  OUTLINED_FUNCTION_0();
  v55 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_5();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D1018();
  v17 = v58;
  sub_197617240();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v50 = v9;
  v51 = v13;
  v58 = a1;
  v18 = v56;
  v19 = sub_197616DD0();
  result = sub_1975CB7D0(v19, 0);
  if (v22 == v23 >> 1)
  {
    goto LABEL_8;
  }

  v49 = 0;
  if (v22 < (v23 >> 1))
  {
    v24 = *(v21 + v22);
    sub_1975CB7C8(v22 + 1, v23 >> 1, result, v21, v22, v23);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      v48 = v24;
      if (v24)
      {
        LOBYTE(v57) = 1;
        sub_1975D106C();
        v29 = v8;
        OUTLINED_FUNCTION_11_10();
        v30 = v49;
        sub_197616D30();
        if (!v30)
        {
          v34 = v54;
          OUTLINED_FUNCTION_12_10(MEMORY[0x1E69E7B30], v31, v32, v33, MEMORY[0x1E69E7B58]);
          swift_unknownObjectRelease();
          v44 = v53;
LABEL_13:
          (*(v44 + 8))(v29, v34);
          v45 = OUTLINED_FUNCTION_8_14();
          v46(v45);
          *v18 = v57;
          *(v18 + 16) = v48;
          return __swift_destroy_boxed_opaque_existential_0Tm(v58);
        }
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_1975D10C0();
        v29 = v51;
        OUTLINED_FUNCTION_11_10();
        v38 = v49;
        sub_197616D30();
        if (!v38)
        {
          v34 = v50;
          OUTLINED_FUNCTION_12_10(MEMORY[0x1E69E7B30], v39, v40, v41, MEMORY[0x1E69E7B58]);
          swift_unknownObjectRelease();
          v44 = v52;
          goto LABEL_13;
        }
      }

      v42 = OUTLINED_FUNCTION_8_14();
      v43(v42);
      swift_unknownObjectRelease();
      a1 = v58;
      return __swift_destroy_boxed_opaque_existential_0Tm(a1);
    }

LABEL_8:
    v35 = sub_197616A70();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E78, &qword_19761D450);
    *v37 = &type metadata for CoreRule.Predicate.Subpredicate;
    sub_197616D40();
    sub_197616A60();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v55 + 8))(v2, v14);
    a1 = v58;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_1975D1638@<X0>(unint64_t *a1@<X8>)
{
  result = CoreRule.Predicate.Subpredicate.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s12SubpredicateOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t _s12SubpredicateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

_BYTE *_s12SubpredicateO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1975D17E4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1975D1894()
{
  result = qword_1EAF34FB8;
  if (!qword_1EAF34FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34FB8);
  }

  return result;
}

unint64_t sub_1975D18EC()
{
  result = qword_1EAF34FC0;
  if (!qword_1EAF34FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34FC0);
  }

  return result;
}

unint64_t sub_1975D1944()
{
  result = qword_1EAF34FC8;
  if (!qword_1EAF34FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34FC8);
  }

  return result;
}

unint64_t sub_1975D199C()
{
  result = qword_1ED8156D0;
  if (!qword_1ED8156D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156D0);
  }

  return result;
}

unint64_t sub_1975D19F4()
{
  result = qword_1ED8156D8;
  if (!qword_1ED8156D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156D8);
  }

  return result;
}

unint64_t sub_1975D1A4C()
{
  result = qword_1ED8156B8;
  if (!qword_1ED8156B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156B8);
  }

  return result;
}

unint64_t sub_1975D1AA4()
{
  result = qword_1ED8156C0;
  if (!qword_1ED8156C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156C0);
  }

  return result;
}

unint64_t sub_1975D1AFC()
{
  result = qword_1ED8156E0;
  if (!qword_1ED8156E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156E0);
  }

  return result;
}

unint64_t sub_1975D1B54()
{
  result = qword_1ED8156E8;
  if (!qword_1ED8156E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156E8);
  }

  return result;
}

unint64_t sub_1975D1BA8()
{
  result = qword_1EAF34FD8;
  if (!qword_1EAF34FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34FD0, &qword_19761E628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34FD8);
  }

  return result;
}

void static CoreRuleProtocol.makeIdentifier(prefix:operation:subrules:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = *a3;
  v33 = a1;
  v34 = a2;

  OUTLINED_FUNCTION_1_23();
  LOBYTE(v29[0]) = v5;
  v6 = CoreRule.Predicate.Operator.rawValue.getter();
  MEMORY[0x19A8E2A50](v6);

  MEMORY[0x19A8E2A50](23336, 0xE200000000000000);
  v11 = *(a4 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_197553D0C(0, v11, 0, v7, v8, v9, v10);
    v12 = v32;
    v13 = a4 + 32;
    do
    {
      sub_19755A560(v13, v29);
      v14 = v30;
      v15 = v31;
      __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      v16 = (*(v15 + 24))(v14, v15);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      v32 = v12;
      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_197553D0C(v23 > 1, v24 + 1, 1, v19, v20, v21, v22);
        v12 = v32;
      }

      *(v12 + 16) = v24 + 1;
      v25 = v12 + 16 * v24;
      *(v25 + 32) = v16;
      *(v25 + 40) = v18;
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  v29[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF347B8, &qword_197619800);
  sub_1975CFB68();
  v26 = sub_197616170();
  v28 = v27;

  MEMORY[0x19A8E2A50](v26, v28);

  MEMORY[0x19A8E2A50](10589, 0xE200000000000000);
}

uint64_t static CoreRuleProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_197616EF0();
  }

  return v12 & 1;
}

uint64_t sub_1975D1FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1975D21EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1975D1FE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1975D2304(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1975D2004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1975D24B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1975D2024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1975D25D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1975D2044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1975D26D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1975D20B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1975D28CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1975D20D0()
{
  OUTLINED_FUNCTION_4_21();
  if ((v6 & 1) == 0)
  {
    v8 = v3;
    goto LABEL_8;
  }

  v7 = *(v0 + 24);
  v8 = v7 >> 1;
  if ((v7 >> 1) >= v3)
  {
    goto LABEL_8;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= v3)
    {
      v8 = v3;
    }

LABEL_8:
    v9 = *(v0 + 16);
    if (v8 <= v9)
    {
      v10 = *(v0 + 16);
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 32);
      if (v2)
      {
LABEL_13:
        v1(v0 + 32, v9, v11 + 4);
        *(v0 + 16) = 0;
LABEL_16:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_5_13();
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1975D21EC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AA0, &qword_19761E6B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1975BC2B0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349B0, &qword_19761B200);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1975D2304(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35018, &qword_19761E690);
  v10 = *(type metadata accessor for CoreTip.ConstellationAction(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CoreTip.ConstellationAction(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1975BC2D8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1975D24B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35020, &qword_19761E698);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1975BC2F0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35028, &unk_19761E6A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D25D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A98, &unk_19761B6C8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_1975BC318((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D26D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FE8, &qword_19761E660);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_1975BC338((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D27BC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35000, &qword_19761E678);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1975BC440((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35008, &qword_19761E680);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D28CC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FF0, &qword_19761E668);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1975BC440((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FF8, &qword_19761E670);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v13, v14, v15);
  v22 = a1;
  v23 = a2;

  OUTLINED_FUNCTION_1_23();
  sub_19756D844(a5, a6);
  v16 = 0xE800000000000000;
  v17 = 0x646E756F706D6F63;
  switch(v21[15])
  {
    case 1:
      break;
    case 2:
      v16 = 0xE500000000000000;
      v17 = 0x746E657665;
      break;
    case 3:
      v16 = 0xE500000000000000;
      v17 = 0x6574617473;
      break;
    case 4:
      v16 = 0xE900000000000072;
      v17 = OUTLINED_FUNCTION_2_18();
      break;
    case 5:
      v16 = 0xE600000000000000;
      v17 = 0x656369766564;
      break;
    default:
      v16 = 0xE700000000000000;
      v17 = OUTLINED_FUNCTION_3_22();
      break;
  }

  MEMORY[0x19A8E2A50](v17, v16);

  OUTLINED_FUNCTION_1_23();
  v18 = (*(a6 + 16))(a5, a6);
  MEMORY[0x19A8E2A50](v18);

  OUTLINED_FUNCTION_1_23();
  MEMORY[0x19A8E2A50](*(a3 + OBJC_IVAR___Predicate_id), *(a3 + OBJC_IVAR___Predicate_id + 8));
  v19 = v22;
  (*(v11 + 8))(v13, a5);
  return v19;
}

unint64_t CoreRule.Status.init(rawValue:)(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t CoreRule.Status.init(isSatisfied:)(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1975D2C24()
{
  result = qword_1EAF35030;
  if (!qword_1EAF35030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35030);
  }

  return result;
}

unint64_t sub_1975D2C78@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CoreRule.Status.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1975D2CA4@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Status.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

_BYTE *_s6StatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t CoreRule.Subrules.init(id:subrules:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t CoreRule.Subrules.id.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1975D2E2C(uint64_t a1)
{
  result = sub_1975D2E54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1975D2E54()
{
  result = qword_1ED8156F8;
  if (!qword_1ED8156F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156F8);
  }

  return result;
}

uint64_t sub_1975D2EA8@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Subrules.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975D2EE0(char a1)
{
  v2 = 0xE800000000000000;
  v3 = 0x646E756F706D6F63;
  switch(a1)
  {
    case 1:
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x746E657665;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6574617473;
      break;
    case 4:
      v2 = 0xE900000000000072;
      v3 = 0x6574656D61726170;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x656369766564;
      break;
    default:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
  }

  MEMORY[0x19A8E2A50](v3, v2);
}

uint64_t CoreRuleRecord.id.setter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1975600FC(v0, v1, &protocol conformance descriptor for CoreRuleRecord);
  OUTLINED_FUNCTION_43_2();
  sub_197615B10();
}

uint64_t sub_1975D30EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
  sub_197615E70();
}

uint64_t sub_1975D3208(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return CoreRuleRecord.id.setter();
  }

  CoreRuleRecord.id.setter();
}

uint64_t sub_1975D3398(uint64_t a1)
{
  sub_197615A60();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3, a1);
  return CoreRuleRecord.dateCreated.setter(v5);
}

uint64_t CoreRuleRecord.dateCreated.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1975600FC(v3, v4, &protocol conformance descriptor for CoreRuleRecord);
  OUTLINED_FUNCTION_15_5(v5, v6, v7, v8, v9, v5, v10, v11, v14, v15, v1, a1, v16, v17);

  sub_197615A60();
  OUTLINED_FUNCTION_7_5();
  return (*(v12 + 8))(a1);
}

uint64_t sub_1975D3518(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
  sub_1975600FC(&qword_1ED816D90, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_197615E70();
}

void (*CoreRuleRecord.dateCreated.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_197615A60();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  CoreRuleRecord.dateCreated.getter();
  return sub_1975D36E0;
}

void sub_1975D36E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CoreRuleRecord.dateCreated.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CoreRuleRecord.dateCreated.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1975D3794@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = CoreRuleRecord.predicate.getter(a1);
  *a2 = result;
  return result;
}

void sub_1975D37C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CoreRuleRecord.predicate.setter(v1);
}

void CoreRuleRecord.predicate.setter(void *a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1975600FC(v3, v4, &protocol conformance descriptor for CoreRuleRecord);
  OUTLINED_FUNCTION_15_5(v5, v6, v7, v8, v9, v5, v10, v11, v12, v13, v1, a1, v14, v15);
}

uint64_t sub_1975D3890(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
  sub_197615DF0();
}

void (*CoreRuleRecord.predicate.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = CoreRuleRecord.predicate.getter(a1);
  return sub_1975D3994;
}

void sub_1975D3994(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CoreRuleRecord.predicate.setter(v2);
  }

  else
  {
    CoreRuleRecord.predicate.setter(*a1);
  }
}

uint64_t sub_1975D3A28()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_19757649C();
  *v0 = result;
  return result;
}

uint64_t sub_1975D3A50(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2(a1);

  OUTLINED_FUNCTION_5_14();
  return sub_1975747FC(v1, v2, v3, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1975D3ACC()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_19757F8B8(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1975D3AF4(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2(a1);

  OUTLINED_FUNCTION_4_22();
  return sub_1975747FC(v1, v2, v3, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1975D3B78()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_1975D3B3C();
  *v0 = result;
  return result;
}

uint64_t sub_1975D3BA0(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2(a1);

  OUTLINED_FUNCTION_29_2();
  return sub_1975747FC(v1, v2, v3, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1975D3BE8()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_19759252C();
  *v0 = result;
  return result;
}

uint64_t sub_1975D3C10(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2(a1);

  OUTLINED_FUNCTION_28_2();
  return sub_1975747FC(v1, v2, v3, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1975D3D5C()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_1975D3C58(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1975D3D84(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2(a1);

  OUTLINED_FUNCTION_30_4();
  return sub_1975747FC(v1, v2, v3, MEMORY[0x1E69E7CF8]);
}

uint64_t sub_1975D3E00(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for CoreRuleRecord(0);
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
  sub_197567D64();
  sub_197615E60();
}

uint64_t sub_1975D3EBC()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreRuleRecord.status.getter();
  *v0 = result;
  return result;
}

uint64_t (*CoreRuleRecord.status.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = CoreRuleRecord.status.getter();
  return sub_1975D3F7C;
}

uint64_t sub_1975D3FA4(uint64_t a1)
{
  v1 = sub_19757F8B8(a1);
  if (v1)
  {
    v2 = v1;
    sub_1975D3FA4(v1);
    OUTLINED_FUNCTION_42();

    return v2;
  }

  else
  {
  }
}

uint64_t CoreRuleRecord.description.getter()
{
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD000000000000015, 0x80000001976249A0);
  sub_197575854(&v14 + 7);
  sub_1975D2EE0(SHIBYTE(v14));
  MEMORY[0x19A8E2A50](0x203A706974202CLL, 0xE700000000000000);
  v0 = sub_197576674();
  if (v0)
  {
    CoreTipRecord.id.getter(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17, v18, v19, v20, vars0, vars8);
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x19A8E2A50](v9, v11);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return v15;
}

uint64_t CoreRuleRecord.__allocating_init(id:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CoreRuleRecord.init(id:predicate:)(a1, a2, a3);
  return v6;
}

uint64_t CoreRuleRecord.init(id:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  *(v3 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35038, &qword_19761E8A8);
  OUTLINED_FUNCTION_0_27();
  v14 = sub_1975600FC(v12, v13, &protocol conformance descriptor for CoreRuleRecord);
  *(v3 + 56) = OUTLINED_FUNCTION_19_4(v14);
  __swift_allocate_boxed_opaque_existential_0((v3 + 24));
  sub_197615DC0();
  sub_19756C0A4(0, 0xE000000000000000, v3 + 24, v15, v16, v17, v18, v19, *v3, a1, a2, a3, v4, v4, v62, v65, v68, v71);
  sub_197615A50();
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_10();
  sub_1975600FC(v20, v21, MEMORY[0x1E6969538]);
  OUTLINED_FUNCTION_27_2();
  sub_197615BE0();

  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_27_2();
  sub_197615BE0();

  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  LOWORD(v58) = 0;
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_27_2();
  sub_197615BE0();

  sub_19756C2E0(0, v3 + 24, v22, v23, v24, v25, v26, v27, v46, v49, v52, v55, v58, v60, v63, v66, v69, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  v28 = sub_1976160B0();
  sub_19756C220(v28, v3 + 24, v29, v30, v31, v32, v33, v34, v47, v50, v53, v56, v59, v61, v64, v67, v70, v73);
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  v35 = OUTLINED_FUNCTION_35_2();
  type metadata accessor for CoreTipRecord(v35);
  OUTLINED_FUNCTION_23_4();
  sub_1975600FC(v36, v37, &protocol conformance descriptor for CoreTipRecord);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_27_2();
  sub_197615BF0();

  *(v3 + 17) = 0;
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_2();
  sub_197615BF0();

  *(v3 + 18) = 0;
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  v38 = OUTLINED_FUNCTION_35_2();
  type metadata accessor for CoreParameterRecord(v38);
  OUTLINED_FUNCTION_21_5();
  sub_1975600FC(v39, v40, &protocol conformance descriptor for CoreParameterRecord);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_27_2();
  sub_197615BF0();

  *(v3 + 19) = 0;
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  v41 = OUTLINED_FUNCTION_35_2();
  type metadata accessor for CoreEventRecord(v41);
  OUTLINED_FUNCTION_20_5();
  sub_1975600FC(v42, v43, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_27_2();
  sub_197615BF0();

  *(v3 + 20) = 0;
  sub_19756C134((v3 + 24), (v3 + 21));
  sub_197615B30();
  CoreRuleRecord.id.setter();
  v44 = v57;
  CoreRuleRecord.predicate.setter(v57);

  return v3;
}

uint64_t (*CoreRuleRecord.persistentBackingData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BADF8;
}

uint64_t CoreRuleRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC10TipKitCore14CoreRuleRecord___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_7_5();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t CoreRuleRecord.hashValue.getter()
{
  sub_197617190();
  OUTLINED_FUNCTION_0_27();
  sub_1975600FC(v0, v1, &protocol conformance descriptor for CoreRuleRecord);
  sub_197616150();
  return sub_1976171F0();
}

uint64_t (*sub_1975D47A4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BC4D8;
}

uint64_t sub_1975D48B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t sub_1975D49D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1975D4A84(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_1975737F0(a1, a2, a3, a7, a8, a9);
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  sub_19755A560(a4, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35068, &qword_19761ED00);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_10:
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_197616A20();

    v28 = 0xD00000000000002ELL;
    v29 = 0x8000000197624A80;
    v23 = (*(a9 + 24))(a8, a9);
    MEMORY[0x19A8E2A50](v23);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v24 = v28;
    v15 = v29;
    sub_19759228C();
    swift_allocError();
    *v25 = v24;
    v25[1] = v15;
    swift_willThrow();
    return v15;
  }

  CoreRuleRecord.update(tip:parent:)(a5, a6);
  swift_getKeyPath();
  (*(a9 + 32))(&v28, a8, a9);
  sub_197574C4C();

  swift_getKeyPath();
  (*(a9 + 56))(&v28, a8, a9);
  sub_197574C4C();

  v16 = *(v27 + 16);
  if (!v16)
  {
LABEL_11:

    sub_1975D3DCC();
    return v15;
  }

  result = sub_197616B00();
  v18 = 0;
  v19 = v27 + 32;
  while (v18 < *(v27 + 16))
  {
    sub_19755A560(v19, &v28);
    v20 = v30;
    v21 = v31;
    v22 = __swift_project_boxed_opaque_existential_1Tm(&v28, v30);
    sub_19757B0DC(v22, 0, v15, a7, v20, v21);
    if (v9)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v28);

      return v15;
    }

    ++v18;
    __swift_destroy_boxed_opaque_existential_0Tm(&v28);
    sub_197616AD0();
    sub_197616B10();
    sub_197616B20();
    result = sub_197616AE0();
    v19 += 40;
    if (v16 == v18)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D4DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 48);

  v10 = v9(a4, a5);
  type metadata accessor for CoreRuleRecord(0);
  swift_allocObject();
  return CoreRuleRecord.init(id:predicate:)(a1, a2, v10);
}

unint64_t sub_1975D4E9C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_23_5(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    sub_1975D4F2C(&qword_1ED816AE0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1975D4F2C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_23_5(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

BOOL sub_1975D4F6C(unsigned __int8 a1, uint64_t a2)
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

  while (v6 != a1);
  return v4 != 0;
}

void sub_1975D4F9C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = CoreRuleRecord.predicate.getter(a1);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  sub_197575854(&v22);
  if (v22 != 1 || (v6 = v5[OBJC_IVAR___Predicate_operation], (v6 - 7) > 1))
  {

LABEL_7:
    sub_19759228C();
    swift_allocError();
    *v7 = 0xD00000000000001ALL;
    v7[1] = 0x8000000197624BC0;
    swift_willThrow();
    return;
  }

  if (v6 == 8)
  {
    sub_1975D4F6C(2u, a2);
  }

  else
  {
    v8 = *(a2 + 16);
    v9 = (a2 + 32);
    do
    {
      if (!v8)
      {
        break;
      }

      v10 = *v9++;
      --v8;
    }

    while (v10 == 2);
  }

  CoreRuleRecord.status.setter();
  if (!*(a2 + 16))
  {
    CoreRuleRecord.status.setter();
  }

  if (CoreRuleRecord.status.getter() == v3)
  {
    goto LABEL_18;
  }

  if (qword_1ED816C98 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v11, qword_1ED816CA0);
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  sub_197616A20();
  v12 = MEMORY[0x19A8E2A50](0x3A646928656C7552, 0xE900000000000020);
  CoreRuleRecord.id.getter(v12, v13, v14, v15, v16, v17, v18, v19, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29);
  MEMORY[0x19A8E2A50]();

  MEMORY[0x19A8E2A50](0xD000000000000015, 0x8000000197624B10);
  HIBYTE(v25) = CoreRuleRecord.status.getter();
  sub_197616BC0();
  sub_197558864(v22, *(&v22 + 1), v20);

  if (!sub_19757F8B8(v21))
  {
LABEL_18:
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_197577780(&v22);
    sub_197577AD0(&v22);
  }
}

uint64_t CoreTip.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1975D5270@<X0>(_WORD *a1@<X8>)
{
  result = CoreTip.status.getter(&v3);
  *a1 = v3;
  return result;
}

void sub_1975D52E4(char a1)
{
  os_unfair_lock_lock((v1 + 108));
  *(v1 + 112) = a1;

  os_unfair_lock_unlock((v1 + 108));
}

void *CoreTip.constellationContent.getter()
{
  OUTLINED_FUNCTION_13_11(OBJC_IVAR____TtC10TipKitCore7CoreTip__constellationContent);
  v1 = *(v0 + 8);
  v2 = v1;
  os_unfair_lock_unlock(v0);
  return v1;
}

void sub_1975D5360(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1975D5390(v1);
}

void sub_1975D5390(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(OBJC_IVAR____TtC10TipKitCore7CoreTip__constellationContent);

  *(v1 + 8) = a1;

  os_unfair_lock_unlock(v1);
}

void sub_1975D53DC(double a1)
{
  OUTLINED_FUNCTION_13_11(OBJC_IVAR____TtC10TipKitCore7CoreTip__displayDuration);
  *(v1 + 8) = a1;

  os_unfair_lock_unlock(v1);
}

uint64_t CoreTip.description.getter()
{
  OUTLINED_FUNCTION_9_12();
  v3 = v1;
  MEMORY[0x19A8E2A50](*(v0 + 16), *(v0 + 24));
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return v3;
}

uint64_t sub_1975D54D0@<X0>(BOOL *a2@<X8>)
{
  sub_197616590();
  sub_197616580();
  sub_197616560();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = 2560;
    sub_197565498(&v5);
  }

  *a2 = Strong == 0;
  return result;
}

uint64_t sub_1975D55C8@<X0>(uint64_t *a1@<X8>)
{
  result = CoreTip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975D5618(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  sub_197616590();
  *(v5 + 24) = sub_197616580();
  v7 = sub_197616560();

  return MEMORY[0x1EEE6DFA0](sub_1975D56B4, v7, v6);
}

uint64_t sub_1975D56B4()
{
  v15 = v0;
  v1 = *(v0 + 32);

  CoreTip.status.getter(&v12);
  v2 = HIBYTE(*(v0 + 32));
  if (v12 == v1)
  {
    if (v2 == 10)
    {
      if (BYTE1(v12) == 10)
      {
        goto LABEL_9;
      }

      LOBYTE(v2) = 10;
    }

    else if (v2 == BYTE1(v12))
    {
      goto LABEL_9;
    }
  }

  LOBYTE(v12) = *(v0 + 32);
  BYTE1(v12) = v2;
  sub_197565498(&v12);
  if (qword_1ED816C98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v5, qword_1ED816CA0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_197616A20();

  OUTLINED_FUNCTION_9_12();
  v12 = v6;
  v13 = v7;
  MEMORY[0x19A8E2A50](*(v3 + 16), *(v3 + 24));
  MEMORY[0x19A8E2A50](0xD000000000000018, 0x8000000197624CB0);
  v14 = v4;
  v8 = CoreTip.Status.description.getter();
  MEMORY[0x19A8E2A50](v8);

  sub_197558864(v12, v13, v9);

LABEL_9:
  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_1975D5884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1975D5948;

  return sub_1975D5618(a1, v4, v5, v7, v6);
}

uint64_t sub_1975D5948()
{

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t CoreTip.ConstellationAction.attrs.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0x70uLL);
  memcpy(a1, (v1 + 48), 0x70uLL);
  return sub_1975D5BB4(__dst, v4, &qword_1EAF35148, &unk_19761F320);
}

uint64_t type metadata accessor for CoreTip.ConstellationAction(uint64_t a1)
{
  result = qword_1ED816430;
  if (!qword_1ED816430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1975D5BB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_21();
  v6(v5);
  return a2;
}

uint64_t sub_1975D5C18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047348 && a2 == 0xE400000000000000;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7372747461 && a2 == 0xE500000000000000;
        if (v8 || (sub_197616EF0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_197616EF0();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1975D5DB4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 1954047348;
      break;
    case 3:
      result = 0x7372747461;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975D5E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D5C18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D5E58(uint64_t a1)
{
  v2 = sub_1975D614C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D5E94(uint64_t a1)
{
  v2 = sub_1975D614C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreTip.ConstellationAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35150, &qword_19761F330);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9 - 8];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D614C();
  sub_197617260();
  __dst[0] = 0;
  OUTLINED_FUNCTION_1_28();
  sub_197616E30();
  if (!v2)
  {
    __dst[0] = 1;
    OUTLINED_FUNCTION_1_28();
    sub_197616E30();
    __dst[135] = 2;
    OUTLINED_FUNCTION_1_28();
    sub_197616E30();
    memcpy(__dst, (v3 + 48), 0x70uLL);
    memcpy(v14, (v3 + 48), sizeof(v14));
    __dst[134] = 3;
    sub_1975D5BB4(__dst, v13, &qword_1EAF35148, &unk_19761F320);
    sub_1975D61A0();
    OUTLINED_FUNCTION_1_28();
    sub_197616E20();
    memcpy(v13, v14, sizeof(v13));
    sub_1975D61F4(v13);
    type metadata accessor for CoreTip.ConstellationAction(0);
    __dst[133] = 4;
    sub_197615970();
    sub_1975D666C(&qword_1ED8161F0, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_1_28();
    sub_197616E20();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1975D614C()
{
  result = qword_1ED815E88;
  if (!qword_1ED815E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E88);
  }

  return result;
}

unint64_t sub_1975D61A0()
{
  result = qword_1ED8161B0;
  if (!qword_1ED8161B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8161B0);
  }

  return result;
}

uint64_t sub_1975D61F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35148, &unk_19761F320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CoreTip.ConstellationAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35158, &qword_19761F338);
  OUTLINED_FUNCTION_0();
  v20 = v7;
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = type metadata accessor for CoreTip.ConstellationAction(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D614C();
  v11 = v22;
  sub_197617240();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = a1;
  __src[0] = 0;
  *v10 = sub_197616D90();
  v10[1] = v12;
  __src[0] = 1;
  v10[2] = sub_197616D90();
  v10[3] = v13;
  __src[0] = 2;
  v10[4] = sub_197616D90();
  v10[5] = v14;
  __src[127] = 3;
  sub_1975B1390();
  sub_197616D80();
  v18[1] = 0;
  memcpy(v10 + 6, __src, 0x70uLL);
  sub_197615970();
  __src[126] = 4;
  sub_1975D666C(&qword_1ED816270, MEMORY[0x1E6968FD0]);
  sub_197616D80();
  v15 = OUTLINED_FUNCTION_0_30();
  v16(v15);
  sub_1975D66B0(v5, v10 + *(v8 + 32));
  sub_1975D6720(v10, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  return sub_1975D6784(v10);
}

uint64_t sub_1975D666C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_197615970();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1975D66B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975D6720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreTip.ConstellationAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975D6784(uint64_t a1)
{
  v2 = type metadata accessor for CoreTip.ConstellationAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1975D6838(uint64_t a1)
{
  sub_1975D68D4();
  if (v1 <= 0x3F)
  {
    sub_1975D6924(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1975D68D4()
{
  if (!qword_1ED8161A8)
  {
    v0 = sub_197616860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8161A8);
    }
  }
}

void sub_1975D6924(uint64_t a1)
{
  if (!qword_1ED8164A8)
  {
    sub_197615970();
    v1 = sub_197616860();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8164A8);
    }
  }
}

_BYTE *_s19ConstellationActionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1975D6A5C()
{
  result = qword_1EAF35160;
  if (!qword_1EAF35160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35160);
  }

  return result;
}

unint64_t sub_1975D6AB4()
{
  result = qword_1ED815E78;
  if (!qword_1ED815E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E78);
  }

  return result;
}

unint64_t sub_1975D6B0C()
{
  result = qword_1ED815E80;
  if (!qword_1ED815E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E80);
  }

  return result;
}

uint64_t CoreTip.ConstellationAsset.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1975D6B9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_197616EF0();

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

uint64_t sub_1975D6C6C(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1975D6C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D6B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D6CBC(uint64_t a1)
{
  v2 = sub_1975D6EB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D6CF8(uint64_t a1)
{
  v2 = sub_1975D6EB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreTip.ConstellationAsset.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35168, &qword_19761F4E0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D6EB0();
  sub_197617260();
  v16 = v10;
  v15 = 0;
  sub_1975D6F04();
  sub_197616E60();
  if (!v2)
  {
    v14 = 1;
    sub_197616E30();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1975D6EB0()
{
  result = qword_1EAF35170;
  if (!qword_1EAF35170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35170);
  }

  return result;
}

unint64_t sub_1975D6F04()
{
  result = qword_1EAF35178;
  if (!qword_1EAF35178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35178);
  }

  return result;
}

uint64_t CoreTip.ConstellationAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35180, &qword_19761F4E8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D6EB0();
  sub_197617240();
  if (!v2)
  {
    v18 = 0;
    sub_1975D710C();
    sub_197616DC0();
    v11 = v19;
    v17 = 1;
    v13 = sub_197616D90();
    v15 = v14;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_1975D710C()
{
  result = qword_1EAF35188;
  if (!qword_1EAF35188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35188);
  }

  return result;
}

uint64_t CoreTip.ConstellationAsset.AssetType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_197616D20();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t CoreTip.ConstellationAsset.AssetType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6567616D69;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

unint64_t sub_1975D7238()
{
  result = qword_1EAF35190;
  if (!qword_1EAF35190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35190);
  }

  return result;
}

uint64_t sub_1975D72B0@<X0>(uint64_t *a1@<X8>)
{
  result = CoreTip.ConstellationAsset.AssetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_1975D73A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1975D7488()
{
  result = qword_1EAF35198;
  if (!qword_1EAF35198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35198);
  }

  return result;
}

unint64_t sub_1975D74E0()
{
  result = qword_1EAF351A0;
  if (!qword_1EAF351A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF351A0);
  }

  return result;
}

unint64_t sub_1975D7538()
{
  result = qword_1EAF351A8;
  if (!qword_1EAF351A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF351A8);
  }

  return result;
}

unint64_t sub_1975D758C()
{
  result = qword_1EAF351B0;
  if (!qword_1EAF351B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF351B0);
  }

  return result;
}

uint64_t CoreTip.ConstellationContent.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___ConstellationContent_asset + 16);
  *a1 = *(v1 + OBJC_IVAR___ConstellationContent_asset);
  *(a1 + 16) = v2;
}

id sub_1975D7628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = *(a4 + 16);
  *&v4[OBJC_IVAR___ConstellationContent_title] = a1;
  *&v4[OBJC_IVAR___ConstellationContent_message] = a2;
  *&v4[OBJC_IVAR___ConstellationContent_actions] = a3;
  v11 = &v4[OBJC_IVAR___ConstellationContent_asset];
  *v11 = *a4;
  *(v11 + 2) = v10;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id CoreTip.ConstellationContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1975D773C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7465737361 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_197616EF0();

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

uint64_t sub_1975D7894(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = 0x736E6F69746361;
      break;
    case 3:
      result = 0x7465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975D7914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D773C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D793C(uint64_t a1)
{
  v2 = sub_1975D7CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D7978(uint64_t a1)
{
  v2 = sub_1975D7CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CoreTip.ConstellationContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CoreTip.ConstellationContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351D8, &unk_19761F7A0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D7CEC();
  sub_197617260();
  *&v19 = *(v3 + OBJC_IVAR___ConstellationContent_title);
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34898, &qword_19761A880);
  sub_1975D823C(&qword_1ED816198, sub_1975D7D40, MEMORY[0x1E69E6300]);
  v11 = OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_10_13(v11, v12, v13);
  if (!v2)
  {
    *&v19 = *(v3 + OBJC_IVAR___ConstellationContent_message);
    v21 = 1;
    v14 = OUTLINED_FUNCTION_6_11();
    OUTLINED_FUNCTION_10_13(v14, v15, v16);
    *&v19 = *(v3 + OBJC_IVAR___ConstellationContent_actions);
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351E0, &qword_19761F7B0);
    sub_1975D7D94(&qword_1ED816190, &qword_1ED8161B8, &protocol conformance descriptor for CoreTip.ConstellationAction, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_6_11();
    sub_197616E20();
    v17 = *(v3 + OBJC_IVAR___ConstellationContent_asset + 16);
    v19 = *(v3 + OBJC_IVAR___ConstellationContent_asset);
    v20 = v17;
    v21 = 3;
    sub_1975D7E1C();

    OUTLINED_FUNCTION_6_11();
    sub_197616E20();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1975D7CEC()
{
  result = qword_1ED816420;
  if (!qword_1ED816420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816420);
  }

  return result;
}

unint64_t sub_1975D7D40()
{
  result = qword_1ED8161C8;
  if (!qword_1ED8161C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8161C8);
  }

  return result;
}

uint64_t sub_1975D7D94(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF351E0, &qword_19761F7B0);
    sub_1975D82B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1975D7E1C()
{
  result = qword_1ED8161C0;
  if (!qword_1ED8161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8161C0);
  }

  return result;
}

char *CoreTip.ConstellationContent.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351E8, &qword_19761F7B8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D7CEC();
  sub_197617240();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34898, &qword_19761A880);
    sub_1975D823C(&qword_1ED8162B8, sub_1975B2E08, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_7_13();
    *(v1 + OBJC_IVAR___ConstellationContent_title) = v13;
    OUTLINED_FUNCTION_7_13();
    *(v1 + OBJC_IVAR___ConstellationContent_message) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351E0, &qword_19761F7B0);
    sub_1975D7D94(&qword_1ED8162B0, &qword_1ED816440, &protocol conformance descriptor for CoreTip.ConstellationAction, MEMORY[0x1E69E6330]);
    sub_197616D80();
    *(v1 + OBJC_IVAR___ConstellationContent_actions) = v13;
    v15 = 3;
    sub_1975D82F8();
    sub_197616D80();
    v7 = v14;
    v8 = v1 + OBJC_IVAR___ConstellationContent_asset;
    *v8 = v13;
    *(v8 + 2) = v7;
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v12, sel_init);
    v9 = OUTLINED_FUNCTION_4_25();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_1975D823C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34898, &qword_19761A880);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1975D82B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoreTip.ConstellationAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1975D82F8()
{
  result = qword_1ED816448;
  if (!qword_1ED816448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816448);
  }

  return result;
}

char *sub_1975D834C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = CoreTip.ConstellationContent.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1975D8490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6870796C67 && a2 == 0xE500000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7629921 && a2 == 0xE300000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449676E69727473 && a2 == 0xE800000000000000;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449;
        if (v8 || (sub_197616EF0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000197624D30 == a2;
          if (v9 || (sub_197616EF0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1717924456 && a2 == 0xE400000000000000;
            if (v10 || (sub_197616EF0() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_197616EF0();

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

unint64_t sub_1975D86C8(char a1)
{
  result = 0x6870796C67;
  switch(a1)
  {
    case 1:
      result = 7629921;
      break;
    case 2:
      result = 0x6449676E69727473;
      break;
    case 3:
      result = 0x72656469766F7270;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1717924456;
      break;
    case 6:
      result = 0x726F6C6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975D8788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D8490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D87B0(uint64_t a1)
{
  v2 = sub_1975D8A78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D87EC(uint64_t a1)
{
  v2 = sub_1975D8A78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreTip.ConstellationContent.Attributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351F0, &qword_19761F7C0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  v9 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = v9;
  v10 = *(v1 + 32);
  v20 = *(v1 + 40);
  v21 = v10;
  v19 = *(v1 + 48);
  LODWORD(v10) = *(v1 + 56);
  v11 = *(v1 + 64);
  v17 = *(v1 + 72);
  v18 = v10;
  v12 = *(v1 + 80);
  v16[3] = *(v1 + 88);
  v16[4] = v11;
  v13 = *(v1 + 104);
  v16[0] = *(v1 + 96);
  v16[1] = v13;
  v16[2] = v12;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D8A78();
  sub_197617260();
  v31 = 0;
  v14 = v24;
  sub_197616DF0();
  if (!v14)
  {
    v30 = 1;
    OUTLINED_FUNCTION_2_21();
    sub_197616DF0();
    v29 = 2;
    OUTLINED_FUNCTION_2_21();
    sub_197616DF0();
    v28 = 3;
    OUTLINED_FUNCTION_2_21();
    sub_197616E10();
    v27 = 4;
    OUTLINED_FUNCTION_2_21();
    sub_197616E10();
    v26 = 5;
    OUTLINED_FUNCTION_2_21();
    sub_197616DF0();
    v25 = 6;
    OUTLINED_FUNCTION_2_21();
    sub_197616DF0();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1975D8A78()
{
  result = qword_1ED815FF0;
  if (!qword_1ED815FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815FF0);
  }

  return result;
}

uint64_t CoreTip.ConstellationContent.Attributes.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351F8, &qword_19761F7C8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D8A78();
  sub_197617240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_197616D50();
  v13 = v12;
  OUTLINED_FUNCTION_0_31(1);
  v33 = sub_197616D50();
  v36 = v14;
  OUTLINED_FUNCTION_0_31(2);
  v32 = sub_197616D50();
  v35 = v15;
  OUTLINED_FUNCTION_0_31(3);
  v31 = sub_197616D70();
  v47 = v16 & 1;
  OUTLINED_FUNCTION_0_31(4);
  v30 = sub_197616D70();
  v46 = v17 & 1;
  OUTLINED_FUNCTION_0_31(5);
  v29 = sub_197616D50();
  v34 = v18;
  v48 = 6;
  v19 = sub_197616D50();
  v20 = v10;
  v22 = v21;
  (*(v7 + 8))(v20, v5);
  __src[0] = v11;
  __src[1] = v13;
  __src[2] = v33;
  __src[3] = v36;
  __src[4] = v32;
  __src[5] = v35;
  __src[6] = v31;
  v28 = v47;
  LOBYTE(__src[7]) = v47;
  __src[8] = v30;
  v27 = v46;
  LOBYTE(__src[9]) = v46;
  v23 = v29;
  v24 = v34;
  __src[10] = v29;
  __src[11] = v34;
  __src[12] = v19;
  __src[13] = v22;
  memcpy(a2, __src, 0x70uLL);
  sub_1975D8F34(__src, v38);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v38[0] = v11;
  v38[1] = v13;
  v38[2] = v33;
  v38[3] = v36;
  v38[4] = v32;
  v38[5] = v35;
  v38[6] = v31;
  v39 = v28;
  v40 = v30;
  v41 = v27;
  v42 = v23;
  v43 = v24;
  v44 = v19;
  v45 = v22;
  return sub_1975D8F6C(v38);
}

uint64_t CoreTip.ConstellationContent.Color.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_197616D20();

  v6 = 15;
  if (v4 < 0xF)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t CoreTip.ConstellationContent.Color.rawValue.getter()
{
  result = 0x6F43746E65636361;
  switch(*v0)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0x6C426D6574737973;
      break;
    case 3:
    case 6:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x79436D6574737973;
      break;
    case 5:
      result = 0x72476D6574737973;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x694D6D6574737973;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0x69506D6574737973;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x65526D6574737973;
      break;
    case 0xD:
      result = 0x65546D6574737973;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1975D9230()
{
  result = qword_1EAF35200;
  if (!qword_1EAF35200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35200);
  }

  return result;
}

unint64_t sub_1975D92A8@<X0>(unint64_t *a1@<X8>)
{
  result = CoreTip.ConstellationContent.Color.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975D9318(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t sub_1975D936C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s20ConstellationContentC5ColorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20ConstellationContentC5ColorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20ConstellationContentC10AttributesV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s20ConstellationContentC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1975D970C()
{
  result = qword_1EAF35208;
  if (!qword_1EAF35208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35208);
  }

  return result;
}

unint64_t sub_1975D9764()
{
  result = qword_1EAF35210;
  if (!qword_1EAF35210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35210);
  }

  return result;
}

unint64_t sub_1975D97BC()
{
  result = qword_1ED815FE0;
  if (!qword_1ED815FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815FE0);
  }

  return result;
}

unint64_t sub_1975D9814()
{
  result = qword_1ED815FE8;
  if (!qword_1ED815FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815FE8);
  }

  return result;
}

unint64_t sub_1975D986C()
{
  result = qword_1ED816410;
  if (!qword_1ED816410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816410);
  }

  return result;
}

unint64_t sub_1975D98C4()
{
  result = qword_1ED816418;
  if (!qword_1ED816418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816418);
  }

  return result;
}

uint64_t CoreTip.ConstellationText.text.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CoreTip.ConstellationText.attrs.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x70uLL);
  memcpy(a1, (v1 + 24), 0x70uLL);
  return sub_1975D99A0(__dst, v4);
}

uint64_t sub_1975D99A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35148, &unk_19761F320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975D9A18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7372747461 && a2 == 0xE500000000000000;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736B72616DLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_197616EF0();

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

uint64_t sub_1975D9B70(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x7372747461;
      break;
    case 3:
      result = 0x736B72616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975D9BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D9A18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D9C08(uint64_t a1)
{
  v2 = sub_1975D9EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D9C44(uint64_t a1)
{
  v2 = sub_1975D9EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CoreTip.ConstellationText.encode(to:)()
{
  OUTLINED_FUNCTION_20();
  v15 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35218, &qword_19761FC08);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  v10 = *v0;
  v11 = *(v0 + 1);
  v14[1] = *(v0 + 2);
  v14[2] = v11;
  memcpy(v19, v0 + 24, 0x70uLL);
  v14[0] = *(v0 + 17);
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1975D9EF0();
  sub_197617260();
  v18[0] = v10;
  v17[0] = 0;
  sub_1975D9F44();
  v12 = v15;
  sub_197616E60();
  if (!v12)
  {
    v13 = v14[0];
    v18[0] = 1;
    OUTLINED_FUNCTION_1_28();
    sub_197616DF0();
    OUTLINED_FUNCTION_6_12(v18);
    sub_1975D99A0(v19, v17);
    sub_1975D61A0();
    OUTLINED_FUNCTION_1_28();
    sub_197616E20();
    memcpy(v17, v18, sizeof(v17));
    sub_1975D61F4(v17);
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35220, &qword_19761FC10);
    sub_1975DA328(&qword_1ED8161A0, sub_1975D9F98, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_1_28();
    sub_197616E20();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_19_0();
}

unint64_t sub_1975D9EF0()
{
  result = qword_1ED816480;
  if (!qword_1ED816480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816480);
  }

  return result;
}

unint64_t sub_1975D9F44()
{
  result = qword_1ED8161D8;
  if (!qword_1ED8161D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8161D8);
  }

  return result;
}

unint64_t sub_1975D9F98()
{
  result = qword_1ED8161D0;
  if (!qword_1ED8161D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8161D0);
  }

  return result;
}

void CoreTip.ConstellationText.init(from:)()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35228, &qword_19761FC18);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_1975D9EF0();
  sub_197617240();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    LOBYTE(v13[0]) = 0;
    sub_1975B39D0();
    OUTLINED_FUNCTION_8_15();
    sub_197616DC0();
    v6 = v14[0];
    v14[0] = 1;
    OUTLINED_FUNCTION_8_15();
    v12 = sub_197616D50();
    v8 = v7;
    sub_1975B1390();
    OUTLINED_FUNCTION_8_15();
    sub_197616D80();
    memcpy(v19, v18, sizeof(v19));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35220, &qword_19761FC10);
    sub_1975DA328(&qword_1ED8162C0, sub_1975DA3A0, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_8_15();
    sub_197616D80();
    v9 = OUTLINED_FUNCTION_1_30();
    v10(v9);
    v11 = v17[15];
    LOBYTE(v13[0]) = v6;
    v13[1] = v12;
    v13[2] = v8;
    OUTLINED_FUNCTION_6_12(&v13[3]);
    v13[17] = v11;
    memcpy(v4, v13, 0x90uLL);
    sub_1975B929C(v13, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    v14[0] = v6;
    v15 = v12;
    v16 = v8;
    OUTLINED_FUNCTION_6_12(v17);
    v17[14] = v11;
    sub_1975B92F8(v14);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975DA328(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35220, &qword_19761FC10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1975DA3A0()
{
  result = qword_1ED816458;
  if (!qword_1ED816458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816458);
  }

  return result;
}

uint64_t CoreTip.ConstellationText.ContentType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_197616D20();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t CoreTip.ConstellationText.ContentType.rawValue.getter()
{
  result = 112;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6C6F626D7973;
      break;
    case 3:
      result = 1954047348;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1975DA51C@<X0>(unint64_t *a1@<X8>)
{
  result = CoreTip.ConstellationText.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CoreTip.ConstellationText.Mark.attrs.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x70uLL);
  memcpy(a1, (v1 + 8), 0x70uLL);
  return sub_1975D99A0(__dst, v4);
}

uint64_t CoreTip.ConstellationText.Mark.MarkType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_197616D20();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t CoreTip.ConstellationText.Mark.MarkType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F43746E65636361;
  }

  else
  {
    return 97;
  }
}

uint64_t sub_1975DA718@<X0>(uint64_t *a1@<X8>)
{
  result = CoreTip.ConstellationText.Mark.MarkType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975DA7F0(uint64_t a1)
{
  v2 = sub_1975DAA34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975DA82C(uint64_t a1)
{
  v2 = sub_1975DAA34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CoreTip.ConstellationText.Mark.encode(to:)()
{
  OUTLINED_FUNCTION_20();
  v12 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35230, &qword_19761FC20);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8 - 8];
  v10 = *v0;
  memcpy(v15, v0 + 8, 0x70uLL);
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1975DAA34();
  sub_197617260();
  v14[0] = v10;
  v13[0] = 0;
  sub_1975DAA88();
  v11 = v12;
  sub_197616E20();
  if (!v11)
  {
    OUTLINED_FUNCTION_6_12(v14);
    sub_1975D99A0(v15, v13);
    sub_1975D61A0();
    OUTLINED_FUNCTION_1_28();
    sub_197616E20();
    memcpy(v13, v14, sizeof(v13));
    sub_1975D61F4(v13);
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_19_0();
}

unint64_t sub_1975DAA34()
{
  result = qword_1ED8159A8;
  if (!qword_1ED8159A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8159A8);
  }

  return result;
}

unint64_t sub_1975DAA88()
{
  result = qword_1ED8156B0;
  if (!qword_1ED8156B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156B0);
  }

  return result;
}

void CoreTip.ConstellationText.Mark.init(from:)()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35238, &qword_19761FC28);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-v9];
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_1975DAA34();
  sub_197617240();
  if (!v0)
  {
    v11 = sub_1975DAC84();
    OUTLINED_FUNCTION_3_25(&type metadata for CoreTip.ConstellationText.Mark.MarkType, v12, v13, v14, v11);
    v15 = v20[0];
    v16 = sub_1975B1390();
    OUTLINED_FUNCTION_3_25(&type metadata for CoreTip.ConstellationContent.Attributes, v17, v18, v19, v16);
    (*(v7 + 8))(v10, v5);
    memcpy(&v21[7], v20, 0x70uLL);
    *v4 = v15;
    memcpy(v4 + 1, v21, 0x77uLL);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_19_0();
}

unint64_t sub_1975DAC84()
{
  result = qword_1ED8159B0;
  if (!qword_1ED8159B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8159B0);
  }

  return result;
}

unint64_t sub_1975DACDC()
{
  result = qword_1EAF35240;
  if (!qword_1EAF35240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35240);
  }

  return result;
}

unint64_t sub_1975DAD34()
{
  result = qword_1EAF35248;
  if (!qword_1EAF35248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35248);
  }

  return result;
}

uint64_t sub_1975DADB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 144))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1975DAE0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1975DAEA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 120))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1975DAF04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1975DAF88(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_32(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1975DB060(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_32(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975DB13C()
{
  result = qword_1EAF35250;
  if (!qword_1EAF35250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35250);
  }

  return result;
}

unint64_t sub_1975DB194()
{
  result = qword_1EAF35258;
  if (!qword_1EAF35258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35258);
  }

  return result;
}

unint64_t sub_1975DB1EC()
{
  result = qword_1ED815998;
  if (!qword_1ED815998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815998);
  }

  return result;
}

unint64_t sub_1975DB244()
{
  result = qword_1ED8159A0;
  if (!qword_1ED8159A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8159A0);
  }

  return result;
}

unint64_t sub_1975DB29C()
{
  result = qword_1ED816470;
  if (!qword_1ED816470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816470);
  }

  return result;
}

unint64_t sub_1975DB2F4()
{
  result = qword_1ED816478;
  if (!qword_1ED816478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816478);
  }

  return result;
}

unint64_t sub_1975DB348()
{
  result = qword_1ED8159B8[0];
  if (!qword_1ED8159B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8159B8);
  }

  return result;
}

unint64_t sub_1975DB39C()
{
  result = qword_1ED816468;
  if (!qword_1ED816468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816468);
  }

  return result;
}

uint64_t sub_1975DB3F8()
{
  v0 = OUTLINED_FUNCTION_24_6();
  v1 = type metadata accessor for DeviceProfile.ProfileContent(v0);
  v2 = OUTLINED_FUNCTION_5_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_26();
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_22_7();
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_0_32();
  sub_19758CA08();
  return v4;
}

uint64_t sub_1975DB484()
{
  v0 = OUTLINED_FUNCTION_24_6();
  v1 = type metadata accessor for DeviceProfile.ProfileContent(v0);
  v2 = OUTLINED_FUNCTION_5_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_26();
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_22_7();
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_0_32();
  sub_19758CA08();
  return v4;
}

uint64_t sub_1975DB510(uint64_t a1)
{
  v2 = type metadata accessor for DeviceProfile.ProfileContent(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  swift_beginAccess();
  sub_19758C664(v1 + v5, v4);
  swift_getAtKeyPath();
  sub_19758CA08();
  return v7[4];
}

uint64_t sub_1975DB5E4(uint64_t a1)
{
  v2 = type metadata accessor for DeviceProfile.ProfileContent(0);
  v3 = OUTLINED_FUNCTION_5_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  swift_beginAccess();
  sub_19758C664(v1 + v6, v5);
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_0_32();
  return sub_19758CA08();
}

uint64_t sub_1975DB6A8(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);
  if (!v4)
  {
    v15 = 1;
    return v15 & 1;
  }

  if (pthread_main_np() != 1 || !_CFRunLoopCurrentIsMain())
  {
    sub_197615CF0();
    v18 = *(v2 + 48);
    v17 = *(v2 + 56);

    sub_19755D67C(v4, 0, v18, v17);
    v15 = sub_19757FEE4(a1);

    if (v3)
    {
      return result;
    }

    return v15 & 1;
  }

  v7 = sub_197616590();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32_4();
  *(v8 - 16) = a2;
  OUTLINED_FUNCTION_21_7();
  v15 = sub_1975DE8C4(v9, v10, v11, v12, v13, v14);

  if (!v3)
  {
    return v15 & 1;
  }

  return result;
}

uint64_t sub_1975DB7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v10 = OUTLINED_FUNCTION_5_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  sub_1975DEE5C(a3, v25 - v11);
  v13 = sub_1976165B0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_19755C820(v12, &qword_1EAF35140, &qword_197621F80);
  }

  else
  {
    sub_1976165A0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_197616560();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_197616230() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_19755C820(a3, &qword_1EAF35140, &qword_197621F80);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19755C820(a3, &qword_1EAF35140, &qword_197621F80);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1975DBACC()
{
  v1 = v0;
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  memcpy(__dst, &qword_1ED817518, 0x6AuLL);
  if ((__dst[13] & 1) == 0)
  {
    sub_19757FBA0(__dst, v9);
    sub_1976172D0();
    v2 = sub_1976172C0();
    sub_19757FB70(__dst);
    if (v2)
    {
      return 2;
    }
  }

  if (byte_1ED817568)
  {
    return 2;
  }

  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v3);
  (*(v4 + 72))(v9, v3, v4);
  sub_19756D1E8(v9);
  if (v10 == 1)
  {
    return 2;
  }

  v6 = sub_19757F670();
  if ((v7 & 1) != 0 || v6)
  {
    return 2;
  }

  if (byte_1ED817580 != 1)
  {
    goto LABEL_14;
  }

  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  if (byte_1ED8172A5)
  {
LABEL_14:
    v8 = sub_1975DBF4C();
    if (v8 == 2 || (v8 & 1) != 0)
    {
      return 1;
    }

    return 2;
  }

  return sub_1975DBC84(v1[2], v1[3]);
}