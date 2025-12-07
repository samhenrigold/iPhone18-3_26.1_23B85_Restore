unint64_t sub_1BF96B88C()
{
  result = qword_1EBDEA010;
  if (!qword_1EBDEA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA010);
  }

  return result;
}

unint64_t sub_1BF96B8E0()
{
  result = qword_1EBDEA018;
  if (!qword_1EBDEA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA018);
  }

  return result;
}

unint64_t sub_1BF96B934()
{
  result = qword_1EBDEA020;
  if (!qword_1EBDEA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA020);
  }

  return result;
}

unint64_t sub_1BF96B988()
{
  result = qword_1EBDEA028;
  if (!qword_1EBDEA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA028);
  }

  return result;
}

unint64_t sub_1BF96B9DC()
{
  result = qword_1EBDEA030;
  if (!qword_1EBDEA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA030);
  }

  return result;
}

unint64_t sub_1BF96BA30()
{
  result = qword_1EBDEA038;
  if (!qword_1EBDEA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA038);
  }

  return result;
}

unint64_t sub_1BF96BA84()
{
  result = qword_1EBDEA040;
  if (!qword_1EBDEA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA040);
  }

  return result;
}

unint64_t sub_1BF96BAD8()
{
  result = qword_1EBDEA048;
  if (!qword_1EBDEA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA048);
  }

  return result;
}

unint64_t sub_1BF96BB2C()
{
  result = qword_1EBDEA050;
  if (!qword_1EBDEA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA050);
  }

  return result;
}

uint64_t HomeEntity.EntityType.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

uint64_t HomeEntity.EntityType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v85 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA058, &qword_1BF9C3AE8);
  OUTLINED_FUNCTION_1();
  v80 = v4;
  v81 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v88 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA060, &qword_1BF9C3AF0);
  OUTLINED_FUNCTION_1();
  v78 = v8;
  v79 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v84 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA068, &qword_1BF9C3AF8);
  OUTLINED_FUNCTION_1();
  v76 = v12;
  v77 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v87 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA070, &qword_1BF9C3B00);
  OUTLINED_FUNCTION_1();
  v74 = v15;
  v75 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12();
  v83 = v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA078, &qword_1BF9C3B08);
  OUTLINED_FUNCTION_1();
  v73 = v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  v82 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA080, &qword_1BF9C3B10);
  OUTLINED_FUNCTION_1();
  v71 = v23;
  v72 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  v86 = v25;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA088, &qword_1BF9C3B18);
  OUTLINED_FUNCTION_1();
  v68 = v26;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA090, &qword_1BF9C3B20);
  OUTLINED_FUNCTION_1();
  v67 = v31;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v62 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA098, &unk_1BF9C3B28);
  OUTLINED_FUNCTION_1();
  v36 = v35;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v38 = a1[3];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1BF96B88C();
  v39 = v90;
  sub_1BF9B5868();
  if (v39)
  {
    goto LABEL_8;
  }

  v65 = v34;
  v64 = v30;
  v66 = v29;
  v40 = v86;
  v90 = v36;
  sub_1BF9B5568();
  result = sub_1BF8D21BC();
  if (v43 == v44 >> 1)
  {
LABEL_7:
    v53 = sub_1BF9B5308();
    swift_allocError();
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400);
    *v55 = &type metadata for HomeEntity.EntityType;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = OUTLINED_FUNCTION_7_14();
    v57(v56);
LABEL_8:
    v58 = v89;
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v62 = 0;
  if (v43 < (v44 >> 1))
  {
    v63 = *(v42 + v43);
    sub_1BF8D21AC();
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    if (v46 == v48 >> 1)
    {
      v49 = v85;
      switch(v63)
      {
        case 1:
          v92 = 1;
          sub_1BF96BAD8();
          OUTLINED_FUNCTION_1_21(&type metadata for HomeEntity.EntityType.HomeCodingKeys, &v92);
          swift_unknownObjectRelease();
          v50 = OUTLINED_FUNCTION_11_16();
          v52 = &v100;
          goto LABEL_15;
        case 2:
          v93 = 2;
          sub_1BF96BA84();
          OUTLINED_FUNCTION_3_22(&type metadata for HomeEntity.EntityType.ZoneCodingKeys, &v93);
          swift_unknownObjectRelease();
          (*(v71 + 8))(v40, v72);
          goto LABEL_20;
        case 3:
          OUTLINED_FUNCTION_10_14();
          sub_1BF96BA30();
          OUTLINED_FUNCTION_1_21(&type metadata for HomeEntity.EntityType.RoomCodingKeys, &v94);
          swift_unknownObjectRelease();
          v50 = OUTLINED_FUNCTION_11_16();
          v59 = v70;
          break;
        case 4:
          v95 = 4;
          sub_1BF96B9DC();
          OUTLINED_FUNCTION_1_21(&type metadata for HomeEntity.EntityType.GroupCodingKeys, &v95);
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 5:
          v96 = 5;
          sub_1BF96B988();
          OUTLINED_FUNCTION_3_22(&type metadata for HomeEntity.EntityType.SceneCodingKeys, &v96);
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 6:
          v97 = 6;
          sub_1BF96B934();
          OUTLINED_FUNCTION_1_21(&type metadata for HomeEntity.EntityType.TriggerCodingKeys, &v97);
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 7:
          v98 = 7;
          sub_1BF96B8E0();
          OUTLINED_FUNCTION_1_21(&type metadata for HomeEntity.EntityType.DeviceCodingKeys, &v98);
          swift_unknownObjectRelease();
LABEL_18:
          v50 = OUTLINED_FUNCTION_11_16();
          break;
        default:
          v91 = 0;
          sub_1BF96BB2C();
          OUTLINED_FUNCTION_1_21(&type metadata for HomeEntity.EntityType.UnknownCodingKeys, &v91);
          swift_unknownObjectRelease();
          v50 = OUTLINED_FUNCTION_11_16();
          v52 = &v99;
LABEL_15:
          v59 = *(v52 - 32);
          break;
      }

      v51(v50, v59);
LABEL_20:
      v60 = OUTLINED_FUNCTION_7_14();
      v61(v60);
      v58 = v89;
      *v49 = v63;
      return __swift_destroy_boxed_opaque_existential_1(v58);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t static HomeEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1BF9B44F8())
  {
    v4 = type metadata accessor for HomeEntity(0);
    v5 = v4[5];
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_1BF9B56D8()) && *(a1 + v4[6]) == *(a2 + v4[6]))
    {
      v10 = v4[7];
      v11 = (a1 + v10);
      v12 = *(a1 + v10 + 8);
      v13 = (a2 + v10);
      v14 = v13[1];
      if (v12)
      {
        if (v14)
        {
          v15 = *v11 == *v13 && v12 == v14;
          if (v15 || (sub_1BF9B56D8() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1BF96C594(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x80000001BF9CD4B0 == a2)
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

unint64_t sub_1BF96C704(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF96C780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF96C7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF96C594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF96C7FC(uint64_t a1)
{
  v2 = sub_1BF96CE74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96C838(uint64_t a1)
{
  v2 = sub_1BF96CE74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HomeEntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA0A0, &qword_1BF9C3B38);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF96CE74();
  sub_1BF9B5898();
  v13[15] = 0;
  sub_1BF9B4518();
  sub_1BF96CF1C(&qword_1EDBF4740, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_12_15();
  sub_1BF9B5638();
  if (!v2)
  {
    v11 = type metadata accessor for HomeEntity(0);
    v13[14] = 1;
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B55F8();
    v13[13] = *(v3 + *(v11 + 24));
    v13[12] = 2;
    sub_1BF96CEC8();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    OUTLINED_FUNCTION_10_14();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B55B8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t HomeEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1BF9B4518();
  OUTLINED_FUNCTION_1();
  v32 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA0B8, &qword_1BF9C3B40);
  OUTLINED_FUNCTION_1();
  v31 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for HomeEntity(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF96CE74();
  sub_1BF9B5868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v31;
  v16 = v32;
  v29 = v15;
  v38 = 0;
  sub_1BF96CF1C(&qword_1EDBF3F78, MEMORY[0x1E69695D0]);
  sub_1BF9B5558();
  (*(v16 + 32))(v29, v33, v4);
  v37 = 1;
  v18 = sub_1BF9B5518();
  v19 = &v29[*(v12 + 20)];
  *v19 = v18;
  v19[1] = v20;
  v35 = 2;
  sub_1BF96CF60();
  sub_1BF9B5558();
  v33 = v12;
  v29[*(v12 + 24)] = v36;
  OUTLINED_FUNCTION_10_14();
  v21 = a1;
  v22 = sub_1BF9B54D8();
  v24 = v23;
  (*(v17 + 8))(v11, v34);
  v26 = v29;
  v25 = v30;
  v27 = &v29[*(v33 + 7)];
  *v27 = v22;
  v27[1] = v24;
  sub_1BF96CFB4(v26, v25);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1BF96D018(v26);
}

unint64_t sub_1BF96CE74()
{
  result = qword_1EBDEA0A8;
  if (!qword_1EBDEA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0A8);
  }

  return result;
}

unint64_t sub_1BF96CEC8()
{
  result = qword_1EBDEA0B0;
  if (!qword_1EBDEA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0B0);
  }

  return result;
}

uint64_t sub_1BF96CF1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BF9B4518();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF96CF60()
{
  result = qword_1EBDEA0C0;
  if (!qword_1EBDEA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0C0);
  }

  return result;
}

uint64_t sub_1BF96CFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF96D018(uint64_t a1)
{
  v2 = type metadata accessor for HomeEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF96D078()
{
  result = qword_1EBDEA0C8;
  if (!qword_1EBDEA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0C8);
  }

  return result;
}

void sub_1BF96D0F4(uint64_t a1)
{
  sub_1BF9B4518();
  if (v1 <= 0x3F)
  {
    sub_1BF96D190();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BF96D190()
{
  if (!qword_1EDBF4750)
  {
    v0 = sub_1BF9B50F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF4750);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HomeEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF96D2CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF96D42C()
{
  result = qword_1EBDEA0E0;
  if (!qword_1EBDEA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0E0);
  }

  return result;
}

unint64_t sub_1BF96D484()
{
  result = qword_1EBDEA0E8;
  if (!qword_1EBDEA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0E8);
  }

  return result;
}

unint64_t sub_1BF96D4DC()
{
  result = qword_1EBDEA0F0;
  if (!qword_1EBDEA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0F0);
  }

  return result;
}

unint64_t sub_1BF96D534()
{
  result = qword_1EBDEA0F8;
  if (!qword_1EBDEA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0F8);
  }

  return result;
}

unint64_t sub_1BF96D58C()
{
  result = qword_1EBDEA100;
  if (!qword_1EBDEA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA100);
  }

  return result;
}

unint64_t sub_1BF96D5E4()
{
  result = qword_1EBDEA108;
  if (!qword_1EBDEA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA108);
  }

  return result;
}

unint64_t sub_1BF96D63C()
{
  result = qword_1EBDEA110;
  if (!qword_1EBDEA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA110);
  }

  return result;
}

unint64_t sub_1BF96D694()
{
  result = qword_1EBDEA118;
  if (!qword_1EBDEA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA118);
  }

  return result;
}

unint64_t sub_1BF96D6EC()
{
  result = qword_1EBDEA120;
  if (!qword_1EBDEA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA120);
  }

  return result;
}

unint64_t sub_1BF96D744()
{
  result = qword_1EBDEA128;
  if (!qword_1EBDEA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA128);
  }

  return result;
}

unint64_t sub_1BF96D79C()
{
  result = qword_1EBDEA130;
  if (!qword_1EBDEA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA130);
  }

  return result;
}

unint64_t sub_1BF96D7F4()
{
  result = qword_1EBDEA138;
  if (!qword_1EBDEA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA138);
  }

  return result;
}

unint64_t sub_1BF96D84C()
{
  result = qword_1EBDEA140;
  if (!qword_1EBDEA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA140);
  }

  return result;
}

unint64_t sub_1BF96D8A4()
{
  result = qword_1EBDEA148;
  if (!qword_1EBDEA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA148);
  }

  return result;
}

unint64_t sub_1BF96D8FC()
{
  result = qword_1EBDEA150;
  if (!qword_1EBDEA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA150);
  }

  return result;
}

unint64_t sub_1BF96D954()
{
  result = qword_1EBDEA158;
  if (!qword_1EBDEA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA158);
  }

  return result;
}

unint64_t sub_1BF96D9AC()
{
  result = qword_1EBDEA160;
  if (!qword_1EBDEA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA160);
  }

  return result;
}

unint64_t sub_1BF96DA04()
{
  result = qword_1EBDEA168;
  if (!qword_1EBDEA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA168);
  }

  return result;
}

unint64_t sub_1BF96DA5C()
{
  result = qword_1EBDEA170;
  if (!qword_1EBDEA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA170);
  }

  return result;
}

unint64_t sub_1BF96DAB4()
{
  result = qword_1EBDEA178;
  if (!qword_1EBDEA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA178);
  }

  return result;
}

unint64_t sub_1BF96DB0C()
{
  result = qword_1EBDEA180;
  if (!qword_1EBDEA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA180);
  }

  return result;
}

unint64_t sub_1BF96DB64()
{
  result = qword_1EBDEA188;
  if (!qword_1EBDEA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA188);
  }

  return result;
}

uint64_t sub_1BF96DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF8C187C(a1, v10);
  if (swift_dynamicCast())
  {
    if (v8 == a2 && v9 == a3)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_1BF9B56D8();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL sub_1BF96DC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BF8C187C(a1, v34);
  if (!OUTLINED_FUNCTION_20_15(v9, v10, v11, &type metadata for InAppIdentifier, v12, v13, v14, v15, v26, v28, v30, v32, v34[0]))
  {
    v21 = OUTLINED_FUNCTION_1_22();
LABEL_18:
    sub_1BF911DC8(v21, v22);
    return 0;
  }

  v16 = v27 == a2 && v29 == a3;
  if (!v16 && (sub_1BF9B56D8() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!a5)
  {
    if (!v33)
    {
      v24 = OUTLINED_FUNCTION_8_10();
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (!v33)
  {
LABEL_17:
    v21 = OUTLINED_FUNCTION_8_10();
    goto LABEL_18;
  }

  if (v31 == a4 && v33 == a5)
  {
    v24 = v27;
    v25 = v29;
LABEL_23:
    sub_1BF911DC8(v24, v25);
    return 1;
  }

  v18 = sub_1BF9B56D8();
  v19 = OUTLINED_FUNCTION_8_10();
  sub_1BF911DC8(v19, v20);
  return (v18 & 1) != 0;
}

uint64_t sub_1BF96DDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BF8C187C(a1, v34);
  if (!OUTLINED_FUNCTION_20_15(v9, v10, v11, &type metadata for AppEntitySignalValue, v12, v13, v14, v15, v26, v28, v30, v32, v34[0]))
  {
    v21 = OUTLINED_FUNCTION_1_22();
LABEL_13:
    sub_1BF911DC8(v21, v22);
    v18 = 0;
    return v18 & 1;
  }

  v16 = v27 == a2 && v29 == a3;
  if (!v16 && (sub_1BF9B56D8() & 1) == 0)
  {
    v21 = OUTLINED_FUNCTION_26();
    goto LABEL_13;
  }

  if (v31 == a4 && v33 == a5)
  {
    v23 = OUTLINED_FUNCTION_26();
    sub_1BF911DC8(v23, v24);
    v18 = 1;
  }

  else
  {
    v18 = sub_1BF9B56D8();
    v19 = OUTLINED_FUNCTION_26();
    sub_1BF911DC8(v19, v20);
  }

  return v18 & 1;
}

uint64_t sub_1BF96DEBC(uint64_t a1, uint64_t a2)
{
  sub_1BF8C187C(a1, v17);
  if (!swift_dynamicCast())
  {
    v10 = OUTLINED_FUNCTION_1_22();
LABEL_15:
    sub_1BF911DC8(v10, v11);
    v7 = 0;
    return v7 & 1;
  }

  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a2 == v13 && v14 == *(a2 + 8);
  if (!v5 && (sub_1BF9B56D8() & 1) == 0 || (v3 == v15 ? (v6 = v16 == v4) : (v6 = 0), !v6 && (sub_1BF9B56D8() & 1) == 0))
  {
    v10 = OUTLINED_FUNCTION_10_15();
    goto LABEL_15;
  }

  v7 = sub_1BF8CA8AC(*(a2 + 32));
  v8 = OUTLINED_FUNCTION_10_15();
  sub_1BF911DC8(v8, v9);
  return v7 & 1;
}

void sub_1BF96DFC4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v133 - v5;
  v146 = *(a1 + 24);
  if (!v146)
  {
    OUTLINED_FUNCTION_17_15();
    if (v49)
    {
LABEL_12:
      v24 = sub_1BF9B47C8();
      OUTLINED_FUNCTION_49_3(v24, qword_1EDBF5570);
      v149 = sub_1BF9B47A8();
      v25 = sub_1BF9B5028();
      if (os_log_type_enabled(v149, v25))
      {
        v26 = OUTLINED_FUNCTION_12_0();
        *v26 = 0;
        _os_log_impl(&dword_1BF8B8000, v149, v25, "No intent discovery for third party apps will be performed, no intent name provided", v26, 2u);
        OUTLINED_FUNCTION_54();
      }

      v27 = v149;

      return;
    }

LABEL_98:
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    goto LABEL_12;
  }

  v141 = *(a1 + 16);
  sub_1BF8EE390(v2 + 16, &v150, &qword_1EBDEA198, qword_1BF9C44B0);
  if (!*(&v151 + 1))
  {
    sub_1BF8EE3F8(&v150, &qword_1EBDEA198, qword_1BF9C44B0);
    OUTLINED_FUNCTION_17_15();
    if (!v49)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v28 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v28, qword_1EDBF5570);
    v29 = sub_1BF9B47A8();
    v30 = sub_1BF9B5028();
    if (os_log_type_enabled(v29, v30))
    {
      *OUTLINED_FUNCTION_12_0() = 0;
      OUTLINED_FUNCTION_22_7(&dword_1BF8B8000, v31, v32, "No app discoverer set");
      OUTLINED_FUNCTION_87();
    }

    return;
  }

  sub_1BF8C2C9C(&v150, v156);
  sub_1BF8EE390(v2 + 56, &v153, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v7 = v154;
  if (!v154)
  {
    sub_1BF8EE3F8(&v153, &qword_1EBDE9E28, &qword_1BF9C2CE8);
LABEL_24:
    v150 = 0u;
    v151 = 0u;
    v152 = 0;
LABEL_25:
    sub_1BF8EE3F8(&v150, &qword_1EBDEA1B0, &qword_1BF9C4678);
    OUTLINED_FUNCTION_17_15();
    if (!v49)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v33 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v33, qword_1EDBF5570);
    v34 = sub_1BF9B47A8();
    v35 = sub_1BF9B5028();
    if (os_log_type_enabled(v34, v35))
    {
      *OUTLINED_FUNCTION_12_0() = 0;
      OUTLINED_FUNCTION_22_7(&dword_1BF8B8000, v36, v37, "No appUtils instance set on the lifecycle container");
      OUTLINED_FUNCTION_87();
    }

    goto LABEL_30;
  }

  v139 = a1;
  v148 = v6;
  v8 = v155;
  __swift_project_boxed_opaque_existential_1(&v153, v154);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1B8, &unk_1BF9C4680);
  v10 = *(v8 + 16);

  v11 = v10(v9, v9, v7, v8);
  if (!v11)
  {

    __swift_destroy_boxed_opaque_existential_1(&v153);
    goto LABEL_24;
  }

  sub_1BF8F19D4(v11, &v150);

  __swift_destroy_boxed_opaque_existential_1(&v153);
  if (!*(&v151 + 1))
  {

    goto LABEL_25;
  }

  sub_1BF8EE3F8(&v150, &qword_1EBDEA1B0, &qword_1BF9C4678);
  v12 = v157;
  v13 = v158;
  __swift_project_boxed_opaque_existential_1(v156, v157);
  v14 = (*(v13 + 8))(v141, v146, v12, v13);
  *&v150 = v14;

  sub_1BF970084(&v150);
  v144 = 0;

  v15 = v150;
  OUTLINED_FUNCTION_17_15();
  v16 = v139;
  if (!v49)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v17 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v17, qword_1EDBF5570);
  v18 = v146;

  v140 = v14;
  v19 = sub_1BF9B47A8();
  v20 = sub_1BF9B5038();

  v21 = os_log_type_enabled(v19, v20);
  v134 = v17;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_35_4();
    *&v150 = v23;
    *v22 = 134218242;
    *(v22 + 4) = *(v15 + 16);

    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1BF8DE810(v141, v146, &v150);
    _os_log_impl(&dword_1BF8B8000, v19, v20, "Found %ld apps that support intent %s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v18 = v146;
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {
  }

  v137 = v2;
  v38 = *(v15 + 16);
  v142 = v15;
  v147 = v38;
  if (!v38)
  {
    goto LABEL_56;
  }

  v145 = v15 + 32;
  swift_beginAccess();
  v39 = 0;
  *&v40 = 136315138;
  v136 = v40;
  *&v40 = 136315394;
  v135 = v40;
  v41 = v141;
  do
  {
    if (v39 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_98;
    }

    v42 = v145 + 24 * v39;
    v43 = *(v42 + 16);
    if (!*(v43 + 16))
    {
      goto LABEL_55;
    }

    v44 = *(v42 + 8);
    v149 = *v42;
    sub_1BF9B57A8();
    swift_bridgeObjectRetain_n();

    sub_1BF9B4B48();
    v45 = sub_1BF9B57E8();
    v46 = ~(-1 << *(v43 + 32));
    do
    {
      v47 = v45 & v46;
      if (((*(v43 + 56 + (((v45 & v46) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v46)) & 1) == 0)
      {

        swift_bridgeObjectRelease_n();
LABEL_54:
        v15 = v142;
        goto LABEL_55;
      }

      v48 = (*(v43 + 48) + 16 * v47);
      v49 = *v48 == v41 && v18 == v48[1];
      if (v49)
      {
        break;
      }

      v50 = sub_1BF9B56D8();
      v45 = v47 + 1;
    }

    while ((v50 & 1) == 0);

    v51 = sub_1BF970B1C(1, v149, v44, MEMORY[0x1E69E7CC0], 0, 0);

    v143 = v51;
    v52 = static SignalLookupKey.getLookupKey(for:)(v51, &v150);
    MEMORY[0x1EEE9AC00](v52);
    OUTLINED_FUNCTION_9_15();
    *(v53 - 16) = &v150;
    v54 = v144;
    v55 = sub_1BF906404();

    sub_1BF9324B4(&v150);

    v144 = v54;
    if (!v55)
    {

      v62 = sub_1BF9B47A8();
      v63 = v16;
      v64 = sub_1BF9B5038();

      if (os_log_type_enabled(v62, v64))
      {
        v65 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *&v150 = v138;
        *v65 = v135;
        v66 = v149;
        *(v65 + 4) = sub_1BF8DE810(v149, v44, &v150);
        *(v65 + 12) = 2080;
        v67 = sub_1BF978FA0();
        v69 = sub_1BF8DE810(v67, v68, &v150);

        *(v65 + 14) = v69;
        v70 = v64;
        v71 = v66;
        _os_log_impl(&dword_1BF8B8000, v62, v70, "Registering a signal for %s - %s", v65, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_54();
        v41 = v141;
        v18 = v146;
        OUTLINED_FUNCTION_87();
      }

      else
      {

        v71 = v149;
      }

      v72 = sub_1BF978FA0();
      v74 = v73;
      type metadata accessor for ThirdPartySuggestionConfigurator();
      v75 = swift_allocObject();
      v75[2] = v72;
      v75[3] = v74;
      v75[4] = v71;
      v75[5] = v44;
      static SignalLookupKey.getLookupKey(for:)(v143, &v150);
      sub_1BF970E0C(&v150, v75, v63, type metadata accessor for ThirdPartySuggestionConfigurator, &off_1F3EFD140);

      sub_1BF9324B4(&v150);
      v16 = v63;
      goto LABEL_54;
    }

    v56 = sub_1BF9B47A8();
    v57 = sub_1BF9B5038();

    v58 = os_log_type_enabled(v56, v57);
    v15 = v142;
    if (v58)
    {
      v59 = OUTLINED_FUNCTION_109();
      v60 = OUTLINED_FUNCTION_35_4();
      *&v150 = v60;
      *v59 = v136;
      v61 = sub_1BF8DE810(v149, v44, &v150);

      *(v59 + 4) = v61;
      _os_log_impl(&dword_1BF8B8000, v56, v57, "There's a signal for %s already registered, won't register a duplicate", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      v16 = v139;
      OUTLINED_FUNCTION_87();
      v41 = v141;
      v18 = v146;
      OUTLINED_FUNCTION_87();
    }

    else
    {
    }

LABEL_55:
    ++v39;
  }

  while (v39 != v147);
LABEL_56:
  swift_beginAccess();
  v76 = qword_1EDBF0818;

  if (v76 != -1)
  {
    swift_once();
  }

  v77 = qword_1EDBF0820;
  v78 = static SignalLookupKey.getLookupKey(for:)(qword_1EDBF0820, &v150);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_9_15();
  *(v79 - 16) = &v150;
  v80 = sub_1BF906404();

  sub_1BF9324B4(&v150);
  v81 = 0x1EDBF0000uLL;
  v82 = v137;
  if (!v80)
  {
    v83 = qword_1EDBF0840;

    if (v83 != -1)
    {
      OUTLINED_FUNCTION_3_23(&qword_1EDBF0840);
    }

    v84 = &v150;
    v85 = static SignalLookupKey.getLookupKey(for:)(qword_1EDBF0848, &v150);
    MEMORY[0x1EEE9AC00](v85);
    OUTLINED_FUNCTION_9_15();
    *(v86 - 16) = &v150;
    v87 = sub_1BF906404();

    sub_1BF9324B4(&v150);
    if (!v87)
    {

      goto LABEL_79;
    }
  }

  v88 = sub_1BF978FA0();
  v90 = v88;
  v91 = v89;
  v84 = v142;
  v92 = *(v142 + 16);
  if (v92)
  {
    v145 = v89;
    v147 = v88;
    v149 = v77;
    *&v150 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0(0, v92, 0);
    v93 = v150;
    v84 = (v84 + 40);
    do
    {
      v94 = *(v84 - 1);
      v95 = *v84;
      *&v150 = v93;
      v97 = *(v93 + 16);
      v96 = *(v93 + 24);

      if (v97 >= v96 >> 1)
      {
        sub_1BF8D01C0(v96 > 1, v97 + 1, 1);
        v93 = v150;
      }

      *(v93 + 16) = v97 + 1;
      v98 = v93 + 16 * v97;
      *(v98 + 32) = v94;
      *(v98 + 40) = v95;
      v84 = (v84 + 24);
      --v92;
    }

    while (v92);

    v82 = v137;
    v77 = v149;
    v81 = 0x1EDBF0000;
    v90 = v147;
    v91 = v145;
  }

  else
  {

    v93 = MEMORY[0x1E69E7CC0];
  }

  sub_1BF96F1A0(v82, &v150);
  type metadata accessor for ThirdPartyHomescreenSuggestionConfigurator();
  OUTLINED_FUNCTION_28_2();
  v99 = swift_allocObject();
  *(v99 + 16) = v90;
  *(v99 + 24) = v91;
  *(v99 + 32) = v93;
  *(v99 + 40) = v150;
  sub_1BF8EE390(v82 + 96, &v153, &qword_1EBDE9E38, &qword_1BF9C2D10);
  if (!v154)
  {
    sub_1BF8EE3F8(&v153, &qword_1EBDE9E38, &qword_1BF9C2D10);
LABEL_77:
    v103 = v139;
    swift_retain_n();
    goto LABEL_78;
  }

  v100 = v81;
  sub_1BF8C2C9C(&v153, &v150);
  v101 = *(&v151 + 1);
  v102 = v152;
  __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
  if (((*(v102 + 128))(v101, v102) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v150);
    goto LABEL_77;
  }

  v103 = v139;
  if (qword_1EDBF0840 != -1)
  {
    OUTLINED_FUNCTION_3_23(&qword_1EDBF0840);
  }

  v77 = *(v100 + 2120);
  swift_retain_n();
  __swift_destroy_boxed_opaque_existential_1(&v150);
LABEL_78:
  static SignalLookupKey.getLookupKey(for:)(v77, &v150);
  sub_1BF970E0C(&v150, v99, v103, type metadata accessor for ThirdPartyHomescreenSuggestionConfigurator, &off_1F3EFD188);

  sub_1BF9324B4(&v150);
LABEL_79:
  v104 = 0;
  v105 = 0;
  v147 = 0x80000001BF9CD610;
  do
  {
    LODWORD(v149) = v104;
    v106 = *(&unk_1F3EF5F30 + v105 + 32);
    v152 = 0;
    if (v106)
    {
      v107 = 0xD000000000000011;
    }

    else
    {
      v107 = 0x7261506472696874;
    }

    if (v106)
    {
      v108 = v147;
    }

    else
    {
      v108 = 0xEF64497070417974;
    }

    v150 = 0u;
    v151 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
    OUTLINED_FUNCTION_19_15();
    if (v106)
    {
      v109 = &unk_1BF9C9A70;
    }

    else
    {
      v109 = &unk_1BF9C9CA8;
    }

    v110 = v109;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
    v154 = v111;
    v112 = sub_1BF9710C4();
    v155 = v112;
    v153 = v110;
    type metadata accessor for ResolvableParameter(0);
    v113 = swift_allocObject();
    v114 = __swift_mutable_project_boxed_opaque_existential_1(&v153, v111);
    MEMORY[0x1EEE9AC00](v114);
    v116 = &v133 - v115;
    (*(v117 + 16))(&v133 - v115);
    v118 = sub_1BF9AD0D0(v107, v108, 0, v84, v116, v113, v111, v112);
    __swift_destroy_boxed_opaque_existential_1(&v153);
    v104 = 1;
    sub_1BF97A1F4(v107, v108, &v150, v118, 1);

    sub_1BF8EE3F8(&v150, &qword_1EBDE9E58, &qword_1BF9C30B0);
    v105 = 1u;
  }

  while ((v149 & 1) == 0);
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
  }

  OUTLINED_FUNCTION_49_3(v134, qword_1EDBF57F8);
  v119 = v146;

  v120 = sub_1BF9B47A8();
  v121 = sub_1BF9B5038();

  v122 = os_log_type_enabled(v120, v121);
  v123 = v141;
  v124 = v137;
  if (v122)
  {
    v125 = OUTLINED_FUNCTION_109();
    v126 = OUTLINED_FUNCTION_35_4();
    *&v150 = v126;
    *v125 = 136315138;
    v127 = OUTLINED_FUNCTION_26();
    *(v125 + 4) = sub_1BF8DE810(v127, v128, v129);
    _os_log_impl(&dword_1BF8B8000, v120, v121, "Adding RegisteredIntents to lifecycle: %s", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v126);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  sub_1BF8EE390(v124 + 56, &v150, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v130 = *(&v151 + 1);
  if (*(&v151 + 1))
  {
    v131 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_1BF9B6370;
    *(v132 + 32) = v123;
    *(v132 + 40) = v119;
    v154 = &type metadata for RegisteredIntents;
    *&v153 = v132;
    (*(v131 + 32))(&v153, v130, v131);
    __swift_destroy_boxed_opaque_existential_1(&v153);
    __swift_destroy_boxed_opaque_existential_1(&v150);
  }

  else
  {

    sub_1BF8EE3F8(&v150, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  }

LABEL_30:
  __swift_destroy_boxed_opaque_existential_1(v156);
}

uint64_t sub_1BF96F164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  v5 = *(a2 + 16);
  *(v3 + 56) = *a2;
  *(v3 + 72) = v5;
  *(v3 + 88) = *(a2 + 32);
  *(v3 + 128) = *(a3 + 32);
  v6 = *(a3 + 16);
  *(v3 + 96) = *a3;
  *(v3 + 112) = v6;
  return v3;
}

uint64_t sub_1BF96F1A0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  sub_1BF8EE390(a1 + 56, &v14, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v3 = v15;
  if (v15)
  {
    v4 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    v5 = (*(v4 + 16))(&type metadata for ThirdPartyHomeScreenAppPicker, &type metadata for ThirdPartyHomeScreenAppPicker, v3, v4);
    if (v5)
    {
      if (v5[2])
      {
        v7 = v5[4];
        v6 = v5[5];

        result = __swift_destroy_boxed_opaque_existential_1(&v14);
        goto LABEL_13;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_1BF8EE3F8(&v14, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  }

  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v9 = sub_1BF9B47C8();
  __swift_project_value_buffer(v9, qword_1EDBF5570);
  v10 = sub_1BF9B47A8();
  v11 = sub_1BF9B5028();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BF8B8000, v10, v11, "[warning] No homescreen app picker specified in lifecycle. Creating new instance", v12, 2u);
    MEMORY[0x1BFB5F320](v12, -1, -1);
  }

  v15 = MEMORY[0x1E69E70B8];
  v16 = MEMORY[0x1E69E70C0];
  sub_1BF8C2C9C(&v14, v13);
  v6 = swift_allocObject();
  result = sub_1BF8C2C9C(v13, v6 + 16);
  v7 = sub_1BF97117C;
LABEL_13:
  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t ThirdPartyHomeScreenAppPicker.init(randSeed:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  if (a2)
  {
    v11 = MEMORY[0x1E69E70B8];
    v12 = MEMORY[0x1E69E70C0];
  }

  else
  {
    v8 = &type metadata for SimpleRNG;
    v9 = sub_1BF96FF48();
    *&v7 = swift_allocObject();
    SimpleRNG.init(seed:)(a1, v7 + 16);
    sub_1BF8C2C9C(&v7, &v10);
  }

  sub_1BF8C2C9C(&v10, &v7);
  OUTLINED_FUNCTION_28_2();
  v5 = swift_allocObject();
  result = sub_1BF8C2C9C(&v7, v5 + 16);
  *a3 = sub_1BF96FF28;
  a3[1] = v5;
  return result;
}

uint64_t ThirdPartySuggestionDetailsBuilderConfigurator.deinit()
{
  sub_1BF8EE3F8(v0 + 16, &qword_1EBDEA198, qword_1BF9C44B0);
  sub_1BF8EE3F8(v0 + 56, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  sub_1BF8EE3F8(v0 + 96, &qword_1EBDE9E38, &qword_1BF9C2D10);
  return v0;
}

uint64_t ThirdPartySuggestionDetailsBuilderConfigurator.__deallocating_deinit()
{
  ThirdPartySuggestionDetailsBuilderConfigurator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

Swift::String_optional __swiftcall Context.getThirdPartyAppId()()
{
  Context.getAppId()();
  v0 = v4;
  if (v4)
  {
    if (v5 == 2)
    {
      v1 = v3;
    }

    else
    {

      v1 = 0;
      v0 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  result.value._object = v0;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1BF96F588(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = *a4;
  return v4;
}

uint64_t sub_1BF96F5A0(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF96F5B4()
{
  v21 = v0;
  v1 = *(v0 + 64);
  v2 = v1[6];
  v3._rawValue = v1[4];
  v20[0] = v1[5];
  v20[1] = v2;

  v4 = ThirdPartyHomeScreenAppPicker.getHomeScreenApp(appIds:)(v3);

  *(v0 + 72) = v4;
  if (v4.value._object)
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v5 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v5, qword_1EDBF5570);

    v6 = sub_1BF9B47A8();
    v7 = sub_1BF9B5028();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_109();
      v9 = OUTLINED_FUNCTION_35_4();
      v20[0] = v9;
      *v8 = 136315138;

      v10 = sub_1BF8DE810(v4.value._countAndFlagsBits, v4.value._object, v20);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_1BF8B8000, v6, v7, "#ThirdPartyHomescreenSuggestionConfigurator injecting appId=%s into the context", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    v11 = *(v0 + 56);
    *(v0 + 88) = *v11;
    *(v0 + 96) = v11[1];
    *(v0 + 104) = swift_getObjectType();
    v13 = sub_1BF9B4E28();
    *(v0 + 112) = v13;
    *(v0 + 120) = v12;

    return MEMORY[0x1EEE6DFA0](sub_1BF96F848, v13, v12);
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v14 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v14, qword_1EDBF5570);
    v15 = sub_1BF9B47A8();
    v16 = sub_1BF9B5028();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_12_0();
      *v17 = 0;
      _os_log_impl(&dword_1BF8B8000, v15, v16, "#ThirdPartyHomescreenSuggestionConfigurator. Not using 3P variant on homescreen", v17, 2u);
      OUTLINED_FUNCTION_54();
    }

    OUTLINED_FUNCTION_77();

    return v18();
  }
}

uint64_t sub_1BF96F848()
{
  OUTLINED_FUNCTION_7();
  sub_1BF96F554(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6DFA0](sub_1BF96F8C0, 0, 0);
}

uint64_t sub_1BF96F8C0()
{
  OUTLINED_FUNCTION_7();
  *(v0 + 40) = &type metadata for CoreSuggestionGroups;
  v1 = sub_1BF937F68();
  OUTLINED_FUNCTION_15_17(v1);

  return MEMORY[0x1EEE6DFA0](sub_1BF96F928, v2, v3);
}

uint64_t sub_1BF96F928()
{
  OUTLINED_FUNCTION_7();
  sub_1BF9696C0(v0 + 2, v0[13], v0[12]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_77();

  return v1();
}

Swift::String_optional __swiftcall ThirdPartyHomeScreenAppPicker.getHomeScreenApp(appIds:)(Swift::OpaquePointer appIds)
{
  (*v1)(v11);
  v3 = *(appIds._rawValue + 2);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_1BF96FF9C();
  sub_1BF9B5388();
  v4 = 0;
  if (v10 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (v10 < v3)
    {
      v6 = appIds._rawValue + 16 * v10;
      v4 = *(v6 + 4);
      v5 = *(v6 + 5);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  v7 = v4;
  v8 = v5;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1BF96FA60()
{

  return v0;
}

uint64_t sub_1BF96FA90()
{
  sub_1BF96FA60();
  OUTLINED_FUNCTION_28_2();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF96FAC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF96A880;

  return sub_1BF96F5A0(a1);
}

uint64_t sub_1BF96FB58(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF96FB6C()
{
  v13 = v0;
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v1 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v1, qword_1EDBF5570);

  v2 = sub_1BF9B47A8();
  v3 = sub_1BF9B5028();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = OUTLINED_FUNCTION_109();
    v6 = OUTLINED_FUNCTION_35_4();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1BF8DE810(*(v4 + 32), *(v4 + 40), &v12);
    _os_log_impl(&dword_1BF8B8000, v2, v3, "#ThirdPartySuggestionConfigurator injecting appId=%s into the context", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_54();
  }

  v7 = v0[7];
  v8 = v0[8];
  v0[9] = *v7;
  v0[10] = v7[1];
  v0[11] = swift_getObjectType();
  v0[12] = *(v8 + 32);
  v0[13] = *(v8 + 40);
  v10 = sub_1BF9B4E28();
  v0[14] = v10;
  v0[15] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BF96FCF8, v10, v9);
}

uint64_t sub_1BF96FCF8()
{
  OUTLINED_FUNCTION_7();
  sub_1BF96F554(*(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6DFA0](sub_1BF96FD64, 0, 0);
}

uint64_t sub_1BF96FD64()
{
  OUTLINED_FUNCTION_7();
  *(v0 + 40) = &type metadata for CoreSuggestionGroups;
  v1 = sub_1BF937F68();
  OUTLINED_FUNCTION_15_17(v1);

  return MEMORY[0x1EEE6DFA0](sub_1BF96FDCC, v2, v3);
}

uint64_t sub_1BF96FDCC()
{
  OUTLINED_FUNCTION_7();
  sub_1BF9696C0(v0 + 2, v0[11], v0[10]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_77();

  return v1();
}

uint64_t _s18SiriSuggestionsKit11DomainOwnerCfd_0()
{

  return v0;
}

uint64_t sub_1BF96FE5C()
{
  _s18SiriSuggestionsKit11DomainOwnerCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BF96FE90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF966964;

  return sub_1BF96FB58(a1);
}

unint64_t sub_1BF96FF48()
{
  result = qword_1EBDEA190;
  if (!qword_1EBDEA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA190);
  }

  return result;
}

unint64_t sub_1BF96FF9C()
{
  result = qword_1EBDEA1A0;
  if (!qword_1EBDEA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA1A0);
  }

  return result;
}

uint64_t sub_1BF970084(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF95DD10();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF9700F0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1BF9700F0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF9B5658();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BF9B4D88();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF9702C0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BF9701E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF9701E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1BF9B56D8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF9702C0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1BF9B56D8();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1BF9B56D8()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v93 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1BF9B56D8() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v93;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF8DCF6C();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1BF8DCF6C();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v92 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1BF970948((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v92;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1BF970810(&v96, *a1, a3);
LABEL_103:
}

uint64_t sub_1BF970810(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BF95B0FC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1BF970948((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1BF970948(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1BF958EB4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1BF9B56D8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1BF958EB4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1BF9B56D8() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

void *sub_1BF970B1C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = MEMORY[0x1E69E6158];
  v21 = MEMORY[0x1E69E61C8];
  v22 = MEMORY[0x1E69E6190];
  v23 = MEMORY[0x1E69E6160];
  v24 = MEMORY[0x1E69E6168];
  v19[0] = a2;
  v19[1] = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v25 = sub_1BF8E8194;
  v26 = v12;
  type metadata accessor for Signal();
  v13 = swift_allocObject();
  v18[3] = &type metadata for CoreSignalTypes;
  v18[4] = sub_1BF8E62B8();
  LOBYTE(v18[0]) = a1;
  sub_1BF8D2004(v18, (v13 + 2));
  sub_1BF8E0940(v19, (v13 + 7));
  v13[17] = a4;
  v13[18] = a5;
  v13[19] = a6;
  __swift_project_boxed_opaque_existential_1(v19, v20);

  sub_1BF9B5668();
  OUTLINED_FUNCTION_21_13();
  v14 = CoreSignalTypes.description.getter();
  MEMORY[0x1BFB5DE90](v14);

  sub_1BF8E09DC(v19);
  v13[20] = v16;
  v13[21] = v17;
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v13;
}

void *sub_1BF970CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a1;
  v17 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69E61C8];
  v19 = MEMORY[0x1E69E6190];
  v20 = MEMORY[0x1E69E6160];
  v21 = MEMORY[0x1E69E6168];
  v16[1] = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v22 = sub_1BF971180;
  v23 = v10;
  type metadata accessor for Signal();
  v11 = swift_allocObject();
  v15[3] = &type metadata for UnknownSignalType;
  v15[4] = sub_1BF971128();
  sub_1BF8D2004(v15, (v11 + 2));
  sub_1BF8E0940(v16, (v11 + 7));
  v11[17] = a3;
  v11[18] = a4;
  v11[19] = a5;
  __swift_project_boxed_opaque_existential_1(v16, v17);

  sub_1BF9B5668();
  OUTLINED_FUNCTION_21_13();
  MEMORY[0x1BFB5DE90](0x6E776F6E6B6E75, 0xE700000000000000);
  sub_1BF8E09DC(v16);
  v11[20] = v13;
  v11[21] = v14;
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
}

uint64_t sub_1BF970E0C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  swift_beginAccess();
  sub_1BF944C38();
  v10 = *(*(a3 + 40) + 16);
  sub_1BF944CF0(v10);
  v11 = *(a3 + 40);
  *(v11 + 16) = v10 + 1;
  sub_1BF932458(a1, v11 + 120 * v10 + 32);
  *(a3 + 40) = v11;
  swift_endAccess();
  sub_1BF978FA0();

  v23[3] = a4(v12);
  v23[4] = a5;
  v23[0] = a2;
  swift_beginAccess();
  v13 = *(a3 + 48);

  sub_1BF92523C(v13, &v21, a1);
  if (v22)
  {
    sub_1BF8C2C9C(&v21, v20);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B28, &unk_1BF9B8640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF9B6380;
    sub_1BF8D2004(v20, inited + 32);
    sub_1BF8D2004(v23, inited + 72);
    static CandidateSuggestionConfigurators.merge(_:)(inited, &v21);
    swift_setDeallocating();
    sub_1BF906498();
    if (!v22)
    {
      sub_1BF8EE3F8(&v21, &qword_1EBDE99C8, qword_1BF9C2D00);
      if (qword_1EDBF57F0 != -1)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v16 = sub_1BF9B47C8();
        OUTLINED_FUNCTION_49_3(v16, qword_1EDBF57F8);
        v17 = sub_1BF9B47A8();
        v18 = sub_1BF9B5048();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = OUTLINED_FUNCTION_12_0();
          *v19 = 0;
          _os_log_impl(&dword_1BF8B8000, v17, v18, "Unable to merge configurators. This shouldnt be happening", v19, 2u);
          OUTLINED_FUNCTION_54();
        }

        __break(1u);
LABEL_10:
        OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1BF8C2C9C(&v21, v23);
  }

  else
  {
    sub_1BF8EE3F8(&v21, &qword_1EBDE99C8, qword_1BF9C2D00);
    swift_endAccess();
  }

  sub_1BF932458(a1, v20);
  sub_1BF8D2004(v23, &v21);
  swift_beginAccess();
  sub_1BF932964(&v21, v20);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v23);
}

unint64_t sub_1BF9710C4()
{
  result = qword_1EDBF3A08[0];
  if (!qword_1EDBF3A08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDEA1C0, qword_1BF9C4690);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF3A08);
  }

  return result;
}

unint64_t sub_1BF971128()
{
  result = qword_1EBDEA1C8;
  if (!qword_1EBDEA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA1C8);
  }

  return result;
}

void OUTLINED_FUNCTION_21_13()
{

  JUMPOUT(0x1BFB5DE90);
}

uint64_t sub_1BF9711D8()
{
  result = sub_1BF9B4A98();
  qword_1EDC033C8 = result;
  return result;
}

uint64_t sub_1BF971210()
{
  result = sub_1BF9B4A98();
  qword_1EDC033C0 = result;
  return result;
}

SiriSuggestionsKit::EventObserverToken __swiftcall NSDistributedNotificationCenter.observeAppRegistrationEvent(appInstallChangeHandlers:)(Swift::OpaquePointer appInstallChangeHandlers)
{
  v4 = v1;
  if (qword_1EDBF0560 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDC033C8;
  v6 = swift_allocObject();
  v6[2]._rawValue = appInstallChangeHandlers._rawValue;
  v23 = sub_1BF971880;
  v24 = v6;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1BF971ED0;
  v22 = &block_descriptor_1;
  v7 = _Block_copy(&v19);

  v8 = [v2 addObserverForName:v5 object:0 queue:0 usingBlock:v7];
  _Block_release(v7);
  if (qword_1EDBF0558 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDC033C0;
  v10 = swift_allocObject();
  v10[2]._rawValue = appInstallChangeHandlers._rawValue;
  v23 = sub_1BF972188;
  v24 = v10;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1BF971ED0;
  v22 = &block_descriptor_6;
  v11 = _Block_copy(&v19);

  v12 = [v2 addObserverForName:v9 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v13 = sub_1BF9B47C8();
  __swift_project_value_buffer(v13, qword_1EDBF5570);
  v14 = sub_1BF9B47A8();
  v15 = sub_1BF9B5028();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1BF8B8000, v14, v15, "finished registering notification.", v16, 2u);
    OUTLINED_FUNCTION_87();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A18, &qword_1BF9B8510);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BF9B6380;
  *(v17 + 56) = swift_getObjectType();
  *(v17 + 32) = v8;
  result.notificationCenterTokens._rawValue = swift_getObjectType();
  *(v17 + 88) = result;
  *(v17 + 64) = v12;
  *v4 = v17;
  return result;
}

void sub_1BF971570(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-2] - v4;
  v6 = sub_1BF9B42A8();
  if (!v6)
  {
    v20 = 0u;
    v21 = 0u;
    goto LABEL_10;
  }

  v7 = v6;
  strcpy(v18, "isPlaceholder");
  HIWORD(v18[3]) = -4864;
  sub_1BF9B5228();
  sub_1BF925294(v7, &v20, v19);

  sub_1BF972B34(v19);
  if (!*(&v21 + 1))
  {
LABEL_10:
    sub_1BF972ACC(&v20);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) != 0 && !v19[0])
  {
    v8 = sub_1BF9B42A8();
    if (v8)
    {
      v9 = v8;
      strcpy(v18, "bundleIDs");
      HIWORD(v18[2]) = 0;
      v18[3] = -385875968;
      sub_1BF9B5228();
      sub_1BF925294(v9, &v20, v19);

      sub_1BF972B34(v19);
      if (*(&v21 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
        if (swift_dynamicCast())
        {
          v10 = v19[0];
          v11 = sub_1BF9B4EB8();
          __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
          v12 = swift_allocObject();
          v12[2] = 0;
          v12[3] = 0;
          v12[4] = a2;
          v12[5] = v10;

          sub_1BF939C48(0, 0, v5, &unk_1BF9C47E0, v12);
        }

        return;
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    sub_1BF972ACC(&v20);
    return;
  }

LABEL_11:
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v13 = sub_1BF9B47C8();
  __swift_project_value_buffer(v13, qword_1EDBF5570);
  v14 = sub_1BF9B47A8();
  v15 = sub_1BF9B5028();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1BF8B8000, v14, v15, "Install notification was from a placeholder event. Ignoring", v16, 2u);
    MEMORY[0x1BFB5F320](v16, -1, -1);
  }
}

uint64_t sub_1BF971888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BF9718A8, 0, 0);
}

void sub_1BF9718A8()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  v0[16] = v2;
  if (v2)
  {
    v0[17] = 0;
    sub_1BF8D2004(v1 + 32, (v0 + 2));
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v3 = sub_1BF9B47C8();
    __swift_project_value_buffer(v3, qword_1EDBF5570);
    sub_1BF8D2004((v0 + 2), (v0 + 7));
    v4 = sub_1BF9B47A8();
    v5 = sub_1BF9B5038();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = v7;
      v8 = OUTLINED_FUNCTION_10_16(4.8149e-34);
      v9 = v0[11];
      v0[12] = v8;
      v0[13] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1D0, &qword_1BF9C47E8);
      v10 = sub_1BF9B4B08();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v13 = sub_1BF8DE810(v10, v12, &v21);

      *(v6 + 4) = v13;
      OUTLINED_FUNCTION_14_13(&dword_1BF8B8000, v14, v15, "calling appInstallChangeHandler - %s");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }

    OUTLINED_FUNCTION_4_22(v0 + 2);
    OUTLINED_FUNCTION_5_0();
    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_1BF971B34;
    OUTLINED_FUNCTION_0_23(v0[15]);
    OUTLINED_FUNCTION_13_11();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_13_11();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BF971B34()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BF971C28, 0, 0);
}

void sub_1BF971C28()
{
  v1 = v0[16];
  v2 = v0[17] + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_13_11();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[17];
  v0[17] = v5 + 1;
  sub_1BF8D2004(v0[14] + 40 * v5 + 72, (v0 + 2));
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v6 = sub_1BF9B47C8();
  __swift_project_value_buffer(v6, qword_1EDBF5570);
  sub_1BF8D2004((v0 + 2), (v0 + 7));
  v7 = sub_1BF9B47A8();
  v8 = sub_1BF9B5038();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    v11 = OUTLINED_FUNCTION_10_16(4.8149e-34);
    v12 = v0[11];
    v0[12] = v11;
    v0[13] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1D0, &qword_1BF9C47E8);
    v13 = sub_1BF9B4B08();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v16 = sub_1BF8DE810(v13, v15, &v22);

    *(v9 + 4) = v16;
    OUTLINED_FUNCTION_14_13(&dword_1BF8B8000, v17, v18, "calling appInstallChangeHandler - %s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  OUTLINED_FUNCTION_4_22(v0 + 2);
  OUTLINED_FUNCTION_5_0();
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_1BF971B34;
  OUTLINED_FUNCTION_0_23(v0[15]);
  OUTLINED_FUNCTION_13_11();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1BF971ED0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF9B42B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1BF9B4298();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BF971FDC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - v4;
  v6 = sub_1BF9B42A8();
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    return sub_1BF972ACC(&v14);
  }

  v7 = v6;
  v12[1] = 0x4449656C646E7562;
  v12[2] = 0xE900000000000073;
  sub_1BF9B5228();
  sub_1BF925294(v7, &v14, v13);

  sub_1BF972B34(v13);
  if (!*(&v15 + 1))
  {
    return sub_1BF972ACC(&v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  result = swift_dynamicCast();
  if (result)
  {
    v9 = v13[0];
    v10 = sub_1BF9B4EB8();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a2;
    v11[5] = v9;

    sub_1BF939C48(0, 0, v5, &unk_1BF9C47D0, v11);
  }

  return result;
}

uint64_t sub_1BF972190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BF9721B0, 0, 0);
}

uint64_t sub_1BF9721B0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = 0;
    OUTLINED_FUNCTION_4_22((v1 + 32));
    OUTLINED_FUNCTION_5_0();
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1BF9722F8;
    v4 = OUTLINED_FUNCTION_0_23(v0[3]);

    return v5(v4);
  }

  else
  {
    OUTLINED_FUNCTION_77();

    return v7();
  }
}

uint64_t sub_1BF9722F8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BF9723EC, 0, 0);
}

uint64_t sub_1BF9723EC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {
    OUTLINED_FUNCTION_77();

    return v2();
  }

  else
  {
    v0[5] = v1;
    OUTLINED_FUNCTION_4_22((v0[2] + 40 * v1 + 32));
    OUTLINED_FUNCTION_5_0();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1BF9722F8;
    v5 = OUTLINED_FUNCTION_0_23(v0[3]);

    return v6(v5);
  }
}

void sub_1BF97256C(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF9B47C8();
  __swift_project_value_buffer(v4, qword_1EDBF5570);

  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5028();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1BFB5E030](v3, MEMORY[0x1E69E7CA0] + 8);
    v11 = sub_1BF8DE810(v9, v10, v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BF8B8000, v5, v6, "Removing observer token %s from notification center", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB5F320](v8, -1, -1);
    MEMORY[0x1BFB5F320](v7, -1, -1);
  }

  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = v3 + 32;
    do
    {
      sub_1BF8C187C(v13, v14);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      [v2 removeObserver_];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v14);
      v13 += 32;
      --v12;
    }

    while (v12);
  }
}

uint64_t dispatch thunk of OnAppInstallChange.appInstalled(bundleIds:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_2(v4);

  return v7(v6);
}

uint64_t sub_1BF972884()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t dispatch thunk of OnAppInstallChange.appUnInstalled(bundleIds:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_2(v4);

  return v7(v6);
}

uint64_t sub_1BF972ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF972B88()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_24(v1);

  return sub_1BF972190(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF972C70()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_24(v1);

  return sub_1BF971888(v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_10_16(float a1)
{
  *v1 = a1;
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));

  return swift_getDynamicType();
}

uint64_t sub_1BF972D58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9778, &unk_1BF9BF990);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF9783A4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t SiriSuggestions.IntentQuery.init(intentType:parameters:appBundleId:hydratedIntent:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[1];
  v15 = *a1;
  v10 = *(a1 + 16);
  if (a4)
  {
    if (sub_1BF9B4C08())
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    a3 = 0;
    v12 = 0;
  }

  v13 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  sub_1BF9502F0(a5, a6 + *(v13 + 32), &qword_1EBDE8E78, &unk_1BF9B9DD0);
  sub_1BF9B4508();
  result = sub_1BF8DFBF0(a5, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  *(a6 + 24) = v10;
  *(a6 + 8) = v15;
  *(a6 + 16) = v9;
  *a6 = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = v12;
  return result;
}

unint64_t SiriSuggestions.IntentType.broadIndexKey.getter()
{
  v1 = 0xD000000000000011;
  if (*(v0 + 16) == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*(v0 + 16))
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void SiriSuggestions.IntentQuery.toV1Representation()(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v2 = v1[2];
  if (*(v1 + 24))
  {
    if (*(v1 + 24) == 1)
    {
      if (v2)
      {
        v4 = v1[1];
      }

      else
      {
        v4 = 0;
      }

      v5 = 0xE000000000000000;
      if (v2)
      {
        v5 = v1[2];
      }

      *a1 = v4;
      *(a1 + 8) = v5;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 40) = 0;
    }

    else
    {
      *a1 = v3;
      *(a1 + 8) = v2;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 40) = 4;
    }
  }

  else
  {
    v6 = v1[4];
    v7 = v1[5];
    if (!v7)
    {
      v6 = 0;
    }

    v53 = v6;
    v8 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1D8, &qword_1BF9C4808);
    v9 = sub_1BF9B5458();
    v10 = v8 + 64;
    v11 = 1 << *(v8 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v8 + 64);
    v55 = v3;
    v56 = v2;
    sub_1BF9439F0(v3, v2, 0);
    v14 = (v11 + 63) >> 6;
    v15 = v9 + 64;
    v54 = v7;

    v16 = 0;
    v58 = v9;
    if (v13)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v59 = (v13 - 1) & v13;
LABEL_20:
        v20 = v17 | (v16 << 6);
        v21 = (*(v8 + 48) + 16 * v20);
        v22 = v21[1];
        v60 = *v21;
        sub_1BF9502F0(*(v8 + 56) + 56 * v20, &v77, &qword_1EBDE95F0, &qword_1BF9B85D0);
        *(&v65 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
        *&v64 = swift_allocObject();
        sub_1BF9502F0(&v77, v64 + 16, &qword_1EBDE95F0, &qword_1BF9B85D0);
        sub_1BF8C187C(&v64, &v67);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9238, &unk_1BF9BD1F0);
        if (swift_dynamicCast())
        {
          sub_1BF8C2C9C(&v74, &v70);
          v23 = v15;
          v24 = v8;
          v26 = *(&v71 + 1);
          v25 = v72;
          __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
          v27 = *(v25 + 8);
          v28 = v25;
          v8 = v24;
          v15 = v23;
          v27(&v74, v26, v28);
          v9 = v58;
          __swift_destroy_boxed_opaque_existential_1(&v70);
        }

        else
        {
          *&v76 = 0;
          v74 = 0u;
          v75 = 0u;
          sub_1BF8DFBF0(&v74, &qword_1EBDE9240, &unk_1BF9C1A70);
          sub_1BF8C187C(&v64, &v74);
        }

        __swift_destroy_boxed_opaque_existential_1(&v64);
        sub_1BF8DFBF0(&v77, &qword_1EBDE95F0, &qword_1BF9B85D0);
        *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v29 = (*(v9 + 48) + 16 * v20);
        *v29 = v60;
        v29[1] = v22;
        v30 = (*(v9 + 56) + 32 * v20);
        v31 = v75;
        *v30 = v74;
        v30[1] = v31;
        v32 = *(v9 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          break;
        }

        *(v9 + 16) = v34;
        v13 = v59;
        if (!v59)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v18 = v16;
      while (1)
      {
        v16 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v16 >= v14)
        {
          break;
        }

        ++v18;
        if (*(v10 + 8 * v16))
        {
          OUTLINED_FUNCTION_28_11();
          v59 = v19;
          goto LABEL_20;
        }
      }

      v35 = 1 << *(v9 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v9 + 64);
      v38 = (v35 + 63) >> 6;

      v39 = 0;
      v40 = MEMORY[0x1E69E7CC0];
      while (v37)
      {
LABEL_38:
        v42 = __clz(__rbit64(v37)) | (v39 << 6);
        v43 = (*(v58 + 48) + 16 * v42);
        v44 = *v43;
        v45 = v43[1];
        sub_1BF9502F0(*(v58 + 56) + 32 * v42, &v75, &qword_1EBDE9208, &unk_1BF9C2A50);
        *&v74 = v44;
        *(&v74 + 1) = v45;
        sub_1BF9502F0(&v74, &v64, &qword_1EBDEA1E0, &unk_1BF9C4810);

        v62 = v65;
        v63 = v66;
        if (*(&v66 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v69 = 0;
            v67 = 0u;
            v68 = 0u;
          }
        }

        else
        {
          sub_1BF8DFBF0(&v62, &qword_1EBDE9208, &unk_1BF9C2A50);
          v67 = 0u;
          v68 = 0u;
          v69 = 0;
        }

        sub_1BF9502F0(&v67, &v62, &qword_1EBDE99E0, &unk_1BF9C6700);
        if (*(&v63 + 1))
        {
          sub_1BF8C2C9C(&v62, v61);
          v64 = v74;
          v65 = v75;
          v66 = v76;
          v70 = v74;
          sub_1BF8C2C9C(v61, &v71);
          sub_1BF8DFBF0(&v65, &qword_1EBDE9208, &unk_1BF9C2A50);
        }

        else
        {
          sub_1BF8DFBF0(&v74, &qword_1EBDEA1E0, &unk_1BF9C4810);
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0;
        }

        v37 &= v37 - 1;
        sub_1BF8DFBF0(&v67, &qword_1EBDE99E0, &unk_1BF9C6700);
        if (*(&v70 + 1))
        {
          v77 = v70;
          v78 = v71;
          v79 = v72;
          v80 = v73;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BF8DD020();
            v40 = v51;
          }

          v46 = *(v40 + 16);
          if (v46 >= *(v40 + 24) >> 1)
          {
            sub_1BF8DD020();
            v40 = v52;
          }

          *(v40 + 16) = v46 + 1;
          v47 = v40 + 56 * v46;
          v48 = v77;
          v49 = v78;
          v50 = v79;
          *(v47 + 80) = v80;
          *(v47 + 48) = v49;
          *(v47 + 64) = v50;
          *(v47 + 32) = v48;
        }

        else
        {
          sub_1BF8DFBF0(&v70, &qword_1EBDEA1E8, &qword_1BF9C4820);
        }
      }

      while (1)
      {
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v41 >= v38)
        {

          *a1 = v53;
          *(a1 + 8) = v54;
          *(a1 + 16) = v55;
          *(a1 + 24) = v56;
          *(a1 + 32) = v40;
          *(a1 + 40) = 2;
          return;
        }

        v37 = *(v15 + 8 * v41);
        ++v39;
        if (v37)
        {
          v39 = v41;
          goto LABEL_38;
        }
      }

LABEL_54:
      __break(1u);
    }

    __break(1u);
  }
}

BOOL static SiriSuggestions.IntentQuery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v14 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v15 = *(v14 + 32);
  sub_1BF9502F0(a1 + v15, v13, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  type metadata accessor for SiriSuggestions.Intent(0);
  v16 = OUTLINED_FUNCTION_32_10(v13);
  v17 = v13;
  v18 = v42;
  sub_1BF8DFBF0(v17, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  if (v16 == 1 || (sub_1BF9502F0(v18 + *(v14 + 32), v11, &qword_1EBDE8E78, &unk_1BF9B9DD0), v19 = 1, v20 = v18, v21 = OUTLINED_FUNCTION_32_10(v11), sub_1BF8DFBF0(v11, &qword_1EBDE8E78, &unk_1BF9B9DD0), v39 = v21 == 1, v18 = v20, v39))
  {
    sub_1BF9502F0(a1 + v15, v8, &qword_1EBDE8E78, &unk_1BF9B9DD0);
    v22 = OUTLINED_FUNCTION_32_10(v8);
    sub_1BF8DFBF0(v8, &qword_1EBDE8E78, &unk_1BF9B9DD0);
    if (v22 == 1)
    {
      v23 = v41;
      sub_1BF9502F0(v18 + *(v14 + 32), v41, &qword_1EBDE8E78, &unk_1BF9B9DD0);
      v19 = OUTLINED_FUNCTION_32_10(v23) == 1;
      sub_1BF8DFBF0(v23, &qword_1EBDE8E78, &unk_1BF9B9DD0);
    }

    else
    {
      v19 = 0;
    }
  }

  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v45[0] = *(a1 + 8);
  v24 = v45[0];
  v45[1] = v25;
  v46 = v26;
  v28 = *(v18 + 16);
  v29 = *(v18 + 24);
  v43[0] = *(v18 + 8);
  v27 = v43[0];
  v43[1] = v28;
  v44 = v29;
  v30 = v18;
  v31 = static SiriSuggestions.IntentType.== infix(_:_:)(v45, v43);
  sub_1BF9439F0(v24, v25, v26);
  sub_1BF9439F0(v27, v28, v29);
  sub_1BF8F5A94(v27, v28, v29);
  sub_1BF8F5A94(v24, v25, v26);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  v32 = *(a1 + 40);
  v33 = v30[5];
  v34 = v30;
  if (!v32)
  {
    if (!v33)
    {

      v37 = v30;
      goto LABEL_20;
    }

LABEL_18:

    return 0;
  }

  if (!v33)
  {
    goto LABEL_18;
  }

  v35 = *(a1 + 48);
  v36 = v34[4];
  v37 = v34;
  v38 = *(v34 + 48);
  v39 = *(a1 + 32) == v36 && v32 == v33;
  if (!v39 && (sub_1BF9B56D8() & 1) == 0 || v35 != v38)
  {
    return 0;
  }

LABEL_20:
  if ((sub_1BF974DD4(*v37, *a1) & 1) == 0)
  {
    return 0;
  }

  return v19;
}

uint64_t SiriSuggestions.IntentType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      sub_1BF9B5288();

      OUTLINED_FUNCTION_8_11();
      v13 = v11;
      v14 = v10;
      MEMORY[0x1BFB5DE90](v2, v1);
      goto LABEL_10;
    }

    sub_1BF9B5288();

    OUTLINED_FUNCTION_8_11();
    v13 = v4 + 2;
    v14 = v3;
    if (!v1)
    {
      v5 = OUTLINED_FUNCTION_15_18();
      v7 = 1;
LABEL_7:
      sub_1BF8F5A94(v5, v6, v7);
      v1 = 0xE500000000000000;
      v2 = &v13;
    }
  }

  else
  {

    sub_1BF9B5288();

    OUTLINED_FUNCTION_8_11();
    v13 = v9 + 3;
    v14 = v8;
    if (!v1)
    {
      v5 = OUTLINED_FUNCTION_15_18();
      v7 = 0;
      goto LABEL_7;
    }
  }

  MEMORY[0x1BFB5DE90](v2, v1);

LABEL_10:
  MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
  return v13;
}

Swift::String_optional __swiftcall SiriSuggestions.IntentType.getIdentifier()()
{
  v0 = OUTLINED_FUNCTION_36();
  sub_1BF9439F0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_36();
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void static SiriSuggestions.IntentType.inIntent(intentType:)(uint64_t a2@<X8>)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = [v3 typeName];

  v5 = sub_1BF9B4AA8();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
}

uint64_t static SiriSuggestions.IntentType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      if (v9 == 1)
      {
        goto LABEL_7;
      }
    }

    else if (!v6 && !v9)
    {
LABEL_7:
      v10 = (v5 | v8) == 0;
      if (!v5 || !v8)
      {
        return v10;
      }

      goto LABEL_11;
    }

    return 0;
  }

  if (v9 != 2)
  {
    return 0;
  }

LABEL_11:
  if (v4 != v7 || v5 != v8)
  {
    return sub_1BF9B56D8();
  }

  return 1;
}

uint64_t SiriSuggestions.IntentType.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
      v2 = sub_1BF9B4B08();
      OUTLINED_FUNCTION_21_14(v2, v3);
    }
  }

  else
  {
    if (!*(v1 + 8))
    {
      return sub_1BF9B57C8();
    }

    sub_1BF9B57C8();
  }

  return sub_1BF9B4B48();
}

void SiriSuggestions.IntentType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1F0, &qword_1BF9C4828);
  OUTLINED_FUNCTION_1();
  v33 = v32;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  v37 = v28[3];
  __swift_project_boxed_opaque_existential_1(v28, v37);
  sub_1BF9773AC();
  sub_1BF9B5868();
  if (!v24)
  {
    v38 = sub_1BF9B5568();
    if (*(v38 + 16))
    {
      v39 = *(v38 + 32);

      if (v39)
      {
        if (v39 == 1)
        {
          a13 = 1;
          OUTLINED_FUNCTION_19_16(&a13);
          v40 = OUTLINED_FUNCTION_4_23();
          v41(v40);
          v42 = 0;
        }

        else
        {
          v42 = 2;
          a14 = 2;
          OUTLINED_FUNCTION_19_16(&a14);
          v46 = OUTLINED_FUNCTION_4_23();
          v47(v46);
        }
      }

      else
      {
        a12 = 0;
        OUTLINED_FUNCTION_19_16(&a12);
        v44 = OUTLINED_FUNCTION_4_23();
        v45(v44);
        v42 = 1;
      }

      *v30 = v39;
      *(v30 + 8) = v37;
      *(v30 + 16) = v42;
    }

    else
    {

      sub_1BF920A3C();
      swift_allocError();
      *v43 = 0;
      swift_willThrow();
      (*(v33 + 8))(v36, v31);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_37();
}

void SiriSuggestions.IntentType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v25 = v24;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1F8, &qword_1BF9C4830);
  OUTLINED_FUNCTION_1();
  v27 = v26;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v35 - v29;
  v32 = *v23;
  v31 = v23[1];
  v33 = *(v23 + 16);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1BF9773AC();
  sub_1BF9B5898();
  if (v33)
  {
    if (v33 != 1)
    {
      LOBYTE(v37) = 2;
      v34 = v36;
      sub_1BF9B55F8();
      goto LABEL_7;
    }

    v37 = v32;
    v38 = v31;
  }

  else
  {
    v37 = v32;
    v38 = v31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9782C8(&qword_1EDBF3F90, &qword_1EBDE96F8, &qword_1BF9BF440, MEMORY[0x1E69E7C70]);
  v34 = v36;
  sub_1BF9B5638();
LABEL_7:
  (*(v27 + 8))(v30, v34);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF974044(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E496E69 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_70(0x746E65746E496E69, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
    if (v6 || (OUTLINED_FUNCTION_70(0x6E65746E49707061, 0xE900000000000074) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_70(0x6E6F69746361, 0xE600000000000000);

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

uint64_t sub_1BF97414C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF974044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF974174(uint64_t a1)
{
  v2 = sub_1BF9773AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9741B0(uint64_t a1)
{
  v2 = sub_1BF9773AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.IntentType.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1BF9B57A8();
  if (!v2)
  {
    if (!v1)
    {
      sub_1BF9B57C8();
      return sub_1BF9B57E8();
    }

    sub_1BF9B57C8();
    goto LABEL_6;
  }

  if (v2 != 1)
  {
LABEL_6:
    sub_1BF9B4B48();
    return sub_1BF9B57E8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9B4B08();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF9742C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1BF9B57A8();
  SiriSuggestions.IntentType.hash(into:)(v4);
  return sub_1BF9B57E8();
}

uint64_t SiriSuggestions.IntentType.intentType.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return OUTLINED_FUNCTION_3_25(*(v1 + 16), a1, v2, v3);
}

uint64_t SiriSuggestions.IntentType.isMatched(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v13 = *v1;
  v14 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v11[1] = v3;
  v12 = v4;
  v5 = static SiriSuggestions.IntentType.== infix(_:_:)(&v13, v11);
  v6 = OUTLINED_FUNCTION_43();
  sub_1BF9439F0(v6, v7, v4);
  v8 = OUTLINED_FUNCTION_43();
  sub_1BF8F5A94(v8, v9, v4);
  return v5 & 1;
}

void static SiriSuggestions.IntentType.appIntent()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void static SiriSuggestions.IntentType.inIntent()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

double static SiriSuggestions.IntentType.action()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1BF9C47F0;
  *(a1 + 16) = 2;
  return result;
}

uint64_t SiriSuggestions.IntentMatch.intentType.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return OUTLINED_FUNCTION_3_25(*(v1 + 16), a1, v2, v3);
}

uint64_t SiriSuggestions.IntentMatch.init(intentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = sub_1BF977400;
  *(a2 + 32) = v6;

  return sub_1BF9439F0(v3, v4, v5);
}

uint64_t sub_1BF9744D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v4 = v11[0];
  v11[1] = v5;
  v12 = v6;
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  v7 = static SiriSuggestions.IntentType.== infix(_:_:)(v11, v9);
  sub_1BF9439F0(v4, v5, v6);
  sub_1BF8F5A94(v4, v5, v6);
  return v7 & 1;
}

__n128 SiriSuggestions.IntentMatch.init(intentType:matcher:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

uint64_t static SiriSuggestions.IntentMatch.createINIntentMatch<A>(type:matcher:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [v9 typeName];

  v11 = sub_1BF9B4AA8();
  v13 = v12;

  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a2;
  v14[4] = a3;
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = 1;
  *(a5 + 24) = sub_1BF97740C;
  *(a5 + 32) = v14;
}

uint64_t sub_1BF974668(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v17 - v7);
  v9 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  sub_1BF9502F0(a1 + *(v9 + 32), v8, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  v10 = type metadata accessor for SiriSuggestions.Intent(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_1BF8DFBF0(v8, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    sub_1BF9777A4(v8, type metadata accessor for SiriSuggestions.Intent);
  }

  else
  {
    v13 = *v8;
    v14 = swift_dynamicCastUnknownClass();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      v11 = a2(v15);

      return v11 & 1;
    }
  }

  v11 = 0;
  return v11 & 1;
}

void *SiriSuggestions.IntentQuery.parameters.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1D8, &qword_1BF9C4808);
  result = sub_1BF9B5458();
  v3 = result;
  v4 = 0;
  v26 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 8;
  v27 = v8;
  v28 = v1;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v29 = (v7 - 1) & v7;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v15 = v14[1];
      v30 = *v14;
      sub_1BF9502F0(*(v1 + 56) + 56 * v13, v40, &qword_1EBDE95F0, &qword_1BF9B85D0);
      v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
      v39[0] = swift_allocObject();
      sub_1BF9502F0(v40, v39[0] + 16, &qword_1EBDE95F0, &qword_1BF9B85D0);
      sub_1BF8C187C(v39, v35);
      v31 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9238, &unk_1BF9BD1F0);
      if (swift_dynamicCast())
      {
        sub_1BF8C2C9C(&v32, v36);
        v17 = v37;
        v16 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        v18 = *(v16 + 8);
        v19 = v16;
        v1 = v28;
        v18(&v32, v17, v19);
        v8 = v27;
        __swift_destroy_boxed_opaque_existential_1(v36);
      }

      else
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        sub_1BF8DFBF0(&v32, &qword_1EBDE9240, &unk_1BF9C1A70);
        sub_1BF8C187C(v39, &v32);
      }

      __swift_destroy_boxed_opaque_existential_1(v39);
      result = sub_1BF8DFBF0(v40, &qword_1EBDE95F0, &qword_1BF9B85D0);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v20 = (v3[6] + 16 * v13);
      *v20 = v30;
      v20[1] = v31;
      v21 = (v3[7] + 32 * v13);
      v22 = v33;
      *v21 = v32;
      v21[1] = v22;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      v7 = v29;
      if (!v29)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      ++v11;
      if (*(v26 + 8 * v4))
      {
        OUTLINED_FUNCTION_28_11();
        v29 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SiriSuggestions.IntentQuery.intentType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_3_25(*(v1 + 24), a1, v2, v3);
}

uint64_t SiriSuggestions.IntentQuery.appBundleId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t SiriSuggestions.IntentQuery.queryUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.IntentQuery(0) + 28);
  sub_1BF9B4518();
  OUTLINED_FUNCTION_13();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SiriSuggestions.IntentQuery.init(intentType:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
  sub_1BF9B4988();
  v7 = OUTLINED_FUNCTION_23_0();
  v8 = *(type metadata accessor for SiriSuggestions.IntentQuery(v7) + 32);
  v9 = type metadata accessor for SiriSuggestions.Intent(0);
  __swift_storeEnumTagSinglePayload(a2 + v8, 1, 1, v9);
  result = sub_1BF9B4508();
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *a2 = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t SiriSuggestions.IntentQuery.init(intentType:parameters:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = *(type metadata accessor for SiriSuggestions.IntentQuery(0) + 32);
  v9 = type metadata accessor for SiriSuggestions.Intent(0);
  __swift_storeEnumTagSinglePayload(a3 + v8, 1, 1, v9);
  result = sub_1BF9B4508();
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *a3 = a2;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return result;
}

uint64_t SiriSuggestions.IntentQuery.init(intentType:parameters:appBundleId:hydratedIntent:queryUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a3 + 16);
  *(a6 + 8) = *a1;
  *(a6 + 24) = v9;
  *a6 = a2;
  *(a6 + 32) = *a3;
  *(a6 + 48) = v10;
  v11 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  sub_1BF977418(a4, a6 + *(v11 + 32));
  v12 = *(v11 + 28);
  sub_1BF9B4518();
  OUTLINED_FUNCTION_13();
  v14 = *(v13 + 32);

  return v14(a6 + v12, a5);
}

uint64_t sub_1BF974DD4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == *(a1 + 16))
  {
    v4 = a2 + 64;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
LABEL_10:
      v11 = __clz(__rbit64(v7)) | (v9 << 6);
      v12 = (*(a2 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      sub_1BF9502F0(*(a2 + 56) + 56 * v11, &v18, &qword_1EBDE95F0, &qword_1BF9B85D0);
      v17[0] = v13;
      v17[1] = v14;

      LOBYTE(v14) = sub_1BF976A80(v17, a1);
      v7 &= v7 - 1;
      sub_1BF8DFBF0(v17, &qword_1EBDEA260, &qword_1BF9C4F50);
      if ((v14 & 1) == 0)
      {
        v15 = 0;
LABEL_14:

        return v15;
      }
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        v15 = 1;
        goto LABEL_14;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);

    result = sub_1BF8DFBF0(v17, &qword_1EBDEA260, &qword_1BF9C4F50);
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t SiriSuggestions.IntentQuery.hash(into:)(uint64_t a1)
{
  if (*(v1 + 24))
  {
    if (*(v1 + 24) == 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
      v2 = sub_1BF9B4B08();
      OUTLINED_FUNCTION_21_14(v2, v3);
    }
  }

  else
  {
    if (!*(v1 + 16))
    {
      return sub_1BF9B57C8();
    }

    sub_1BF9B57C8();
  }

  return sub_1BF9B4B48();
}

Swift::String_optional __swiftcall SiriSuggestions.IntentQuery.getToolId()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 2 || v2 == 1)
  {
  }

  else if (v1)
  {
    v5 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v5 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = *(v0 + 40);
      if (v6)
      {
        v7 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v7 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          sub_1BF904C28();

          if ((sub_1BF9B5198() & 1) == 0)
          {

            MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
            v8 = OUTLINED_FUNCTION_36();
            MEMORY[0x1BFB5DE90](v8);
            v9 = OUTLINED_FUNCTION_36();
            sub_1BF8F5A94(v9, v10, 0);
          }
        }
      }
    }
  }

  v3 = OUTLINED_FUNCTION_36();
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void SiriSuggestions.IntentQuery.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v42 = v3;
  v43 = v1;
  OUTLINED_FUNCTION_23_0();
  sub_1BF9B4518();
  OUTLINED_FUNCTION_1();
  v40 = v5;
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA200, &qword_1BF9C4838);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_11_0();
  v13 = v0[3];
  v44 = v0;
  __swift_project_boxed_opaque_existential_1(v0, v13);
  sub_1BF977488();
  v14 = v43;
  sub_1BF9B5868();
  if (!v14)
  {
    v39 = v8;
    v43 = v11;
    v15 = v42;
    sub_1BF9774DC();
    OUTLINED_FUNCTION_25_11();
    sub_1BF9B5558();
    v17 = v45;
    v16 = v46;
    v48 = v47;
    type metadata accessor for SiriSuggestions.Intent(0);
    LOBYTE(v45) = 1;
    OUTLINED_FUNCTION_6_15();
    sub_1BF977530(v18, v19, &protocol conformance descriptor for SiriSuggestions.Intent);
    sub_1BF9B5508();
    v38 = v17;
    sub_1BF8D7600();
    OUTLINED_FUNCTION_25_11();
    sub_1BF9B5508();
    v20 = v45;
    v37 = v46;
    LODWORD(v17) = v47;
    v21 = sub_1BF9755C0(3, v2);
    v34 = v20;
    v35 = v21;
    v33 = v17;
    v36 = v16;
    LOBYTE(v45) = 4;
    OUTLINED_FUNCTION_7_15();
    sub_1BF977530(v22, v23, MEMORY[0x1E69695D0]);
    v24 = v39;
    v25 = v41;
    sub_1BF9B5558();
    v26 = OUTLINED_FUNCTION_13_12();
    v27(v26);
    v28 = type metadata accessor for SiriSuggestions.IntentQuery(0);
    sub_1BF977418(v43, v15 + *(v28 + 32));
    (*(v40 + 32))(v15 + *(v28 + 28), v24, v25);
    v29 = v36;
    *(v15 + 24) = v48;
    *(v15 + 8) = v38;
    *(v15 + 16) = v29;
    v30 = v34;
    *v15 = v35;
    v31 = v37;
    *(v15 + 32) = v30;
    *(v15 + 40) = v31;
    *(v15 + 48) = v33;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9755C0(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA200, &qword_1BF9C4838);
  sub_1BF919B68();
  sub_1BF9B54A8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    v14 = 0;
    sub_1BF978328();
    sub_1BF9B5558();
    v9 = v13[1];
    v10 = sub_1BF976D38(1);
    v12 = sub_1BF919EE8(v9, v10);

    a2 = sub_1BF972D58(v12);
    (*(v6 + 8))(v8, v5);
  }

  return a2;
}

uint64_t SiriSuggestions.IntentQuery.encode(to:)(void *a1)
{
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA208, &qword_1BF9C4840);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_1BF977488();
  OUTLINED_FUNCTION_30_9(&_s11IntentQueryV10CodingKeysON, v8, v7);
  v18 = *(v4 + 8);
  v19 = *(v4 + 16);
  v20 = *(v4 + 24);
  sub_1BF9439F0(v18, v19, v20);
  sub_1BF977578();
  sub_1BF9B5638();
  if (v2)
  {
    sub_1BF8F5A94(v18, v19, v20);
  }

  else
  {
    sub_1BF8F5A94(v18, v19, v20);
    type metadata accessor for SiriSuggestions.IntentQuery(0);
    type metadata accessor for SiriSuggestions.Intent(0);
    OUTLINED_FUNCTION_6_15();
    sub_1BF977530(v9, v10, &protocol conformance descriptor for SiriSuggestions.Intent);
    OUTLINED_FUNCTION_9_16();
    sub_1BF9B55E8();
    v11 = sub_1BF8D6B34();

    OUTLINED_FUNCTION_27_8();
    sub_1BF9B55E8();

    if (!v11)
    {
      sub_1BF91BA00(*v4);
      sub_1BF975A7C(v3, 3, v15);

      sub_1BF9B4518();
      OUTLINED_FUNCTION_7_15();
      sub_1BF977530(v16, v17, MEMORY[0x1E69695B0]);
      OUTLINED_FUNCTION_9_16();
      sub_1BF9B5638();
    }
  }

  v12 = OUTLINED_FUNCTION_7_3();
  return v13(v12);
}

uint64_t sub_1BF975A7C(uint64_t a1, char a2, uint64_t a3)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = v39 - v5;
  v56 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA208, &qword_1BF9C4840);
  sub_1BF919B68();
  v40 = v6;
  sub_1BF9B5598();
  sub_1BF8DD6D4();
  v8 = v7;
  sub_1BF8DD788();
  v10 = v9;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v44 = a3;

  v17 = 0;
  v43 = v11;
  if (v14)
  {
    while (1)
    {
      v45 = v10;
LABEL_9:
      v19 = __clz(__rbit64(v14)) | (v17 << 6);
      v20 = (*(v44 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      sub_1BF9502F0(*(v44 + 56) + 40 * v19, v54, &qword_1EBDE8AB8, &qword_1BF9B85C0);
      v49[0] = v21;
      v49[1] = v22;
      v50 = v54[0];
      v51 = v54[1];
      v52 = v55;
      sub_1BF9502F0(v49, v46, &qword_1EBDEA248, &qword_1BF9C7790);
      v24 = v46[0];
      v23 = v46[1];
      v25 = v8;
      v26 = *(v8 + 16);
      v27 = v25;
      v28 = *(v25 + 24);

      if (v26 >= v28 >> 1)
      {
        sub_1BF8DD6D4();
        v27 = v34;
      }

      *(v27 + 16) = v26 + 1;
      v29 = v27 + 16 * v26;
      v8 = v27;
      *(v29 + 32) = v24;
      *(v29 + 40) = v23;
      sub_1BF8DFBF0(v47, &qword_1EBDE8AB8, &qword_1BF9B85C0);
      sub_1BF9502F0(v49, v46, &qword_1EBDEA248, &qword_1BF9C7790);

      v10 = v45;
      v30 = *(v45 + 16);
      if (v30 >= *(v45 + 24) >> 1)
      {
        sub_1BF8DD788();
        v10 = v35;
      }

      v11 = v43;
      v14 &= v14 - 1;
      result = sub_1BF8DFBF0(v49, &qword_1EBDEA248, &qword_1BF9C7790);
      *(v10 + 16) = v30 + 1;
      v31 = v10 + 40 * v30;
      v32 = v48;
      v33 = v47[1];
      *(v31 + 32) = v47[0];
      *(v31 + 48) = v33;
      *(v31 + 64) = v32;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v45 = v10;
      v17 = v18;
      goto LABEL_9;
    }
  }

  v53 = v8;
  LOBYTE(v49[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF9782C8(&qword_1EDBF4B20, &qword_1EBDE88A0, &qword_1BF9B7FC0, MEMORY[0x1E69E6300]);
  v36 = v42;
  v37 = v40;
  v38 = v39[1];
  sub_1BF9B5638();
  if (v38)
  {
    (*(v41 + 8))(v37, v36);
  }

  else
  {

    sub_1BF996908();
    (*(v41 + 8))(v37, v36);
  }
}

uint64_t sub_1BF975F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
  if (v4 || (OUTLINED_FUNCTION_70(0x7954746E65746E69, 0xEA00000000006570) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_18_12();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_70(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_22_8();
      v11 = a1 == v9 && a2 == v10;
      if (v11 || (OUTLINED_FUNCTION_70(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
        if (v12 || (OUTLINED_FUNCTION_70(0x6574656D61726170, 0xEA00000000007372) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4955557972657571 && a2 == 0xE900000000000044)
        {

          return 4;
        }

        else
        {
          v14 = OUTLINED_FUNCTION_70(0x4955557972657571, 0xE900000000000044);

          if (v14)
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

uint64_t sub_1BF976064(char a1)
{
  result = 0x7954746E65746E69;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_18_12();
      break;
    case 2:
      result = OUTLINED_FUNCTION_22_8();
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    case 4:
      result = 0x4955557972657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF976120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF976174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF975F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9761A8(uint64_t a1)
{
  v2 = sub_1BF977488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9761E4(uint64_t a1)
{
  v2 = sub_1BF977488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.IntentQuery.hashValue.getter()
{
  type metadata accessor for SiriSuggestions.IntentQuery(0);
  OUTLINED_FUNCTION_1_23();
  sub_1BF977530(v0, v1, &protocol conformance descriptor for SiriSuggestions.IntentQuery);

  return sub_1BF9B4A48();
}

uint64_t sub_1BF976290(uint64_t a1)
{
  sub_1BF9B57A8();
  if (!*(v1 + 24))
  {
    if (!*(v1 + 16))
    {
      sub_1BF9B57C8();
      return sub_1BF9B57E8();
    }

    sub_1BF9B57C8();
    goto LABEL_6;
  }

  if (*(v1 + 24) != 1)
  {
LABEL_6:
    sub_1BF9B4B48();
    return sub_1BF9B57E8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9B4B08();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t SiriSuggestions.IntentQueryWithExecutionParameters.executionParameters.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SiriSuggestions.IntentQueryWithExecutionParameters(0) + 20));
}

uint64_t SiriSuggestions.IntentQueryWithExecutionParameters.init(intentQuery:executionParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BF9775EC(a1, a3);
  result = type metadata accessor for SiriSuggestions.IntentQueryWithExecutionParameters(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1BF976444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7551746E65746E69 && a2 == 0xEB00000000797265;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BF9CD720 == a2)
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

uint64_t sub_1BF976518(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7551746E65746E69;
  }
}

uint64_t sub_1BF976564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF976444(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF97658C(uint64_t a1)
{
  v2 = sub_1BF977650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9765C8(uint64_t a1)
{
  v2 = sub_1BF977650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.IntentQueryWithExecutionParameters.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA218, &qword_1BF9C4848);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_11_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1BF977650();
  OUTLINED_FUNCTION_30_9(&_s34IntentQueryWithExecutionParametersV10CodingKeysON, v5, v4);
  type metadata accessor for SiriSuggestions.IntentQuery(0);
  OUTLINED_FUNCTION_1_23();
  sub_1BF977530(v6, v7, &protocol conformance descriptor for SiriSuggestions.IntentQuery);
  OUTLINED_FUNCTION_9_16();
  sub_1BF9B5638();
  if (!v1)
  {
    type metadata accessor for SiriSuggestions.IntentQueryWithExecutionParameters(0);
    sub_1BF9776A4();

    OUTLINED_FUNCTION_27_8();
    sub_1BF9B5638();
  }

  v8 = OUTLINED_FUNCTION_7_3();
  return v9(v8);
}

void SiriSuggestions.IntentQueryWithExecutionParameters.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v25 = v24;
  v46 = v26;
  type metadata accessor for SiriSuggestions.IntentQuery(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_17();
  v49 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA220, &qword_1BF9C4850);
  OUTLINED_FUNCTION_1();
  v47 = v31;
  v48 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v45 - v33;
  v35 = type metadata accessor for SiriSuggestions.IntentQueryWithExecutionParameters(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v39 = v38 - v37;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1BF977650();
  sub_1BF9B5868();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v40 = v47;
    v41 = v39;
    OUTLINED_FUNCTION_1_23();
    sub_1BF977530(v42, v43, &protocol conformance descriptor for SiriSuggestions.IntentQuery);
    v44 = v48;
    sub_1BF9B5558();
    sub_1BF9775EC(v49, v41);
    sub_1BF9776F8();
    sub_1BF9B5558();
    (*(v40 + 8))(v34, v44);
    *(v41 + *(v35 + 20)) = v50;
    sub_1BF97774C(v41, v46);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1BF9777A4(v41, type metadata accessor for SiriSuggestions.IntentQueryWithExecutionParameters);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF976A80(uint64_t a1, uint64_t a2)
{
  sub_1BF9502F0(a1, &v18, &qword_1EBDEA260, &qword_1BF9C4F50);
  sub_1BF925014(v18, *(&v18 + 1), a2, &v14);
  if (*(&v15 + 1) == 1)
  {
    sub_1BF8DFBF0(&v14, &qword_1EBDEA268, &qword_1BF9C4F58);
    sub_1BF8DFBF0(&v19, &qword_1EBDE95F0, &qword_1BF9B85D0);

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  sub_1BF8DFBF0(&v19, &qword_1EBDE95F0, &qword_1BF9B85D0);

  sub_1BF9502F0(&v22, &v18, &qword_1EBDE95F0, &qword_1BF9B85D0);
  if (!*(&v19 + 1))
  {
    sub_1BF8DFBF0(&v18, &qword_1EBDE95F0, &qword_1BF9B85D0);
    goto LABEL_8;
  }

  sub_1BF8E8174(&v18, &v14);
  sub_1BF9502F0(a1, &v18, &qword_1EBDEA260, &qword_1BF9C4F50);
  if (!v21)
  {
    sub_1BF8DFBF0(&v19, &qword_1EBDE95F0, &qword_1BF9B85D0);

    __swift_destroy_boxed_opaque_existential_1(&v14);
LABEL_8:
    if (!*(&v23 + 1) && !*(a1 + 40))
    {
      sub_1BF8DFBF0(&v22, &qword_1EBDE95F0, &qword_1BF9B85D0);
      v9 = 1;
      return v9 & 1;
    }

    sub_1BF8DFBF0(&v22, &qword_1EBDE95F0, &qword_1BF9B85D0);
    goto LABEL_11;
  }

  sub_1BF8E8174(&v19, v11);

  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  v4 = v12;
  v5 = v13;
  v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
  *(&v19 + 1) = v4;
  v20 = v5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v18);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1Tm, v6, v4);
  sub_1BF90AB90();
  v9 = v8;
  sub_1BF8DFBF0(&v22, &qword_1EBDE95F0, &qword_1BF9B85D0);
  __swift_destroy_boxed_opaque_existential_1(&v18);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(&v14);
  return v9 & 1;
}

uint64_t sub_1BF976D38(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - v6;
  v72 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  sub_1BF8DF500();
  sub_1BF9B54A8();
  if (!v1)
  {
    v56 = v5;
    v57 = v4;
    v8 = sub_1BF9B5568();
    v9 = *(v8 + 16);
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    v10 = sub_1BF9876DC(&v68, v9);
    v62 = *(v8 + 16);
    v63 = v7;
    if (v62)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_93;
      }

      while (1)
      {
        v11 = 0;
        v60 = v8;
        v61 = v8 + 32;
        v58 = &v68 + 1;
        v59 = v10 + 32;
        while (v11 < *(v8 + 16))
        {
          v12 = v61 + 32 * v11;
          v14 = *v12;
          v13 = *(v12 + 8);
          v15 = HIBYTE(v13) & 0xF;
          v16 = *v12 & 0xFFFFFFFFFFFFLL;
          if ((v13 & 0x2000000000000000) != 0)
          {
            v17 = HIBYTE(v13) & 0xF;
          }

          else
          {
            v17 = *v12 & 0xFFFFFFFFFFFFLL;
          }

          if (!v17)
          {
            goto LABEL_85;
          }

          v18 = *(v12 + 16);
          v19 = *(v12 + 24);
          if ((v13 & 0x1000000000000000) == 0)
          {
            if ((v13 & 0x2000000000000000) != 0)
            {
              *&v68 = *v12;
              *(&v68 + 1) = v13 & 0xFFFFFFFFFFFFFFLL;
              if (v14 == 43)
              {
                if (!v15)
                {
                  goto LABEL_89;
                }

                if (--v15)
                {
                  v8 = 0;
                  v31 = v58;
                  while (1)
                  {
                    v32 = *v31 - 48;
                    if (v32 > 9)
                    {
                      break;
                    }

                    v33 = 10 * v8;
                    if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                    {
                      break;
                    }

                    v8 = v33 + v32;
                    if (__OFADD__(v33, v32))
                    {
                      break;
                    }

                    ++v31;
                    if (!--v15)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v14 == 45)
              {
                if (!v15)
                {
                  goto LABEL_92;
                }

                if (--v15)
                {
                  v8 = 0;
                  v25 = v58;
                  while (1)
                  {
                    v26 = *v25 - 48;
                    if (v26 > 9)
                    {
                      break;
                    }

                    v27 = 10 * v8;
                    if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                    {
                      break;
                    }

                    v8 = v27 - v26;
                    if (__OFSUB__(v27, v26))
                    {
                      break;
                    }

                    ++v25;
                    if (!--v15)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v15)
              {
                v8 = 0;
                v36 = &v68;
                while (1)
                {
                  v37 = *v36 - 48;
                  if (v37 > 9)
                  {
                    break;
                  }

                  v38 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    break;
                  }

                  v8 = v38 + v37;
                  if (__OFADD__(v38, v37))
                  {
                    break;
                  }

                  ++v36;
                  if (!--v15)
                  {
                    goto LABEL_67;
                  }
                }
              }
            }

            else
            {
              if ((v14 & 0x1000000000000000) != 0)
              {
                v20 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v20 = sub_1BF9B5318();
              }

              v21 = *v20;
              if (v21 == 43)
              {
                if (v16 < 1)
                {
                  goto LABEL_91;
                }

                v15 = v16 - 1;
                if (v16 != 1)
                {
                  v8 = 0;
                  if (!v20)
                  {
                    goto LABEL_58;
                  }

                  v28 = v20 + 1;
                  while (1)
                  {
                    v29 = *v28 - 48;
                    if (v29 > 9)
                    {
                      break;
                    }

                    v30 = 10 * v8;
                    if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                    {
                      break;
                    }

                    v8 = v30 + v29;
                    if (__OFADD__(v30, v29))
                    {
                      break;
                    }

                    ++v28;
                    if (!--v15)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v21 == 45)
              {
                if (v16 < 1)
                {
                  goto LABEL_90;
                }

                v15 = v16 - 1;
                if (v16 != 1)
                {
                  v8 = 0;
                  if (v20)
                  {
                    v22 = v20 + 1;
                    while (1)
                    {
                      v23 = *v22 - 48;
                      if (v23 > 9)
                      {
                        goto LABEL_66;
                      }

                      v24 = 10 * v8;
                      if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                      {
                        goto LABEL_66;
                      }

                      v8 = v24 - v23;
                      if (__OFSUB__(v24, v23))
                      {
                        goto LABEL_66;
                      }

                      ++v22;
                      if (!--v15)
                      {
                        goto LABEL_67;
                      }
                    }
                  }

LABEL_58:
                  LOBYTE(v15) = 0;
LABEL_67:
                  LOBYTE(v64) = v15;
                  v39 = v15;

                  if (v39)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_68;
                }
              }

              else
              {
                if (!v16)
                {
                  goto LABEL_66;
                }

                v8 = 0;
                if (!v20)
                {
                  goto LABEL_58;
                }

                while (1)
                {
                  v34 = *v20 - 48;
                  if (v34 > 9)
                  {
                    break;
                  }

                  v35 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    break;
                  }

                  v8 = v35 + v34;
                  if (__OFADD__(v35, v34))
                  {
                    break;
                  }

                  ++v20;
                  if (!--v16)
                  {
                    goto LABEL_58;
                  }
                }
              }
            }

LABEL_66:
            v8 = 0;
            LOBYTE(v15) = 1;
            goto LABEL_67;
          }

          swift_bridgeObjectRetain_n();
          v8 = sub_1BF99854C(v14, v13, 10);
          v44 = v43;

          if (v44)
          {
            goto LABEL_86;
          }

LABEL_68:
          sub_1BF8E21AC(v14, v13, v18, v19, v63, v40, v41, v42, v56, v57, SWORD2(v57), SBYTE6(v57), SHIBYTE(v57), v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, *(&v65 + 1));

          if (v8 < 0)
          {
            goto LABEL_87;
          }

          if (v8 >= *(v10 + 16))
          {
            goto LABEL_88;
          }

          ++v11;
          sub_1BF97860C(&v68, v59 + 56 * v8);
          v8 = v60;
          if (v11 == v62)
          {
            goto LABEL_75;
          }
        }

        __break(1u);
LABEL_85:

LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        sub_1BF98C660();
        v10 = v55;
      }
    }

LABEL_75:

    v45 = *(v10 + 16);
    v62 = v10;
    v2 = MEMORY[0x1E69E7CC0];
    if (v45)
    {
      v46 = v10 + 32;
      do
      {
        sub_1BF9502F0(v46, &v68, &qword_1EBDE95F0, &qword_1BF9B85D0);
        v64 = v68;
        v65 = v69;
        v66 = v70;
        v67 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF8DD558();
          v2 = v52;
        }

        v47 = *(v2 + 16);
        if (v47 >= *(v2 + 24) >> 1)
        {
          sub_1BF8DD558();
          v2 = v53;
        }

        *(v2 + 16) = v47 + 1;
        v48 = v2 + 56 * v47;
        v49 = v64;
        v50 = v65;
        v51 = v66;
        *(v48 + 80) = v67;
        *(v48 + 48) = v50;
        *(v48 + 64) = v51;
        *(v48 + 32) = v49;
        v46 += 56;
        --v45;
      }

      while (v45);
    }

    (*(v56 + 8))(v63, v57);
  }

  return v2;
}

unint64_t sub_1BF9773AC()
{
  result = qword_1EDBF4A60;
  if (!qword_1EDBF4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A60);
  }

  return result;
}

uint64_t sub_1BF977418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF977488()
{
  result = qword_1EDBF4A48;
  if (!qword_1EDBF4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A48);
  }

  return result;
}

unint64_t sub_1BF9774DC()
{
  result = qword_1EDBF3AA0;
  if (!qword_1EDBF3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3AA0);
  }

  return result;
}

uint64_t sub_1BF977530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BF977578()
{
  result = qword_1EDBF45B0;
  if (!qword_1EDBF45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF45B0);
  }

  return result;
}

uint64_t sub_1BF9775EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF977650()
{
  result = qword_1EDBF45A0;
  if (!qword_1EDBF45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF45A0);
  }

  return result;
}

unint64_t sub_1BF9776A4()
{
  result = qword_1EDBF1EC0;
  if (!qword_1EDBF1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF1EC0);
  }

  return result;
}

unint64_t sub_1BF9776F8()
{
  result = qword_1EDBF1EB8;
  if (!qword_1EDBF1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF1EB8);
  }

  return result;
}

uint64_t sub_1BF97774C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_23_0();
  v4(v3);
  OUTLINED_FUNCTION_13();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1BF9777A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BF977800()
{
  result = qword_1EDBF3AA8;
  if (!qword_1EDBF3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3AA8);
  }

  return result;
}

uint64_t sub_1BF97789C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BF9778DC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF977960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BF9779A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BF977A20(uint64_t a1)
{
  sub_1BF977ADC(319);
  if (v1 <= 0x3F)
  {
    sub_1BF977B50();
    if (v2 <= 0x3F)
    {
      sub_1BF9B4518();
      if (v3 <= 0x3F)
      {
        sub_1BF977BA0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BF977ADC(uint64_t a1)
{
  if (!qword_1EDBF4B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
    v1 = sub_1BF9B49D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBF4B28);
    }
  }
}

void sub_1BF977B50()
{
  if (!qword_1EDBF4CE8)
  {
    v0 = sub_1BF9B50F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF4CE8);
    }
  }
}

void sub_1BF977BA0(uint64_t a1)
{
  if (!qword_1EDBF4D00)
  {
    type metadata accessor for SiriSuggestions.Intent(255);
    v1 = sub_1BF9B50F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBF4D00);
    }
  }
}

uint64_t sub_1BF977C20(uint64_t a1)
{
  result = type metadata accessor for SiriSuggestions.IntentQuery(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s34IntentQueryWithExecutionParametersV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s11IntentQueryV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11IntentQueryV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s10IntentTypeO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF977FB4()
{
  result = qword_1EBDEA230;
  if (!qword_1EBDEA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA230);
  }

  return result;
}

unint64_t sub_1BF97800C()
{
  result = qword_1EBDEA238;
  if (!qword_1EBDEA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA238);
  }

  return result;
}

unint64_t sub_1BF978064()
{
  result = qword_1EBDEA240;
  if (!qword_1EBDEA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA240);
  }

  return result;
}

unint64_t sub_1BF9780BC()
{
  result = qword_1EDBF4590;
  if (!qword_1EDBF4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4590);
  }

  return result;
}

unint64_t sub_1BF978114()
{
  result = qword_1EDBF4598;
  if (!qword_1EDBF4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4598);
  }

  return result;
}

unint64_t sub_1BF97816C()
{
  result = qword_1EDBF4A38;
  if (!qword_1EDBF4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A38);
  }

  return result;
}

unint64_t sub_1BF9781C4()
{
  result = qword_1EDBF4A40;
  if (!qword_1EDBF4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A40);
  }

  return result;
}

unint64_t sub_1BF97821C()
{
  result = qword_1EDBF4A50;
  if (!qword_1EDBF4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A50);
  }

  return result;
}

unint64_t sub_1BF978274()
{
  result = qword_1EDBF4A58;
  if (!qword_1EDBF4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A58);
  }

  return result;
}

uint64_t sub_1BF9782C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1BF978328()
{
  result = qword_1EDBF0578;
  if (!qword_1EDBF0578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0578);
  }

  return result;
}

uint64_t sub_1BF9783A4(uint64_t a1, char a2, uint64_t *a3)
{
  v40 = a3;
  v28 = *(a1 + 16);
  if (!v28)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_1BF9502F0(v6, &v34, &qword_1EBDEA250, &qword_1BF9C4F38);
    v8 = v34;
    v7 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v9 = *v40;
    v11 = sub_1BF8C2E64(v34, v35);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (*(v9 + 24) >= v12 + v13)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA258, &unk_1BF9C4F40);
        sub_1BF9B53B8();
        if (v14)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_1BF95B984();
      v15 = sub_1BF8C2E64(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v11 = v15;
      if (v14)
      {
LABEL_11:
        v17 = *v40;
        sub_1BF9502F0(*(*v40 + 56) + 56 * v11, v29, &qword_1EBDE95F0, &qword_1BF9B85D0);
        sub_1BF8DFBF0(&v30, &qword_1EBDE95F0, &qword_1BF9B85D0);

        sub_1BF97860C(v29, *(v17 + 56) + 56 * v11);
        goto LABEL_15;
      }
    }

    v18 = *v40;
    v18[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    v20 = v18[7] + 56 * v11;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    *(v20 + 48) = v33;
    *(v20 + 16) = v22;
    *(v20 + 32) = v23;
    *v20 = v21;
    v24 = v18[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v18[2] = v26;
LABEL_15:
    ++v5;
    v6 += 72;
    a2 = 1;
    if (v28 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF97860C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_21_14(uint64_t a1, uint64_t a2)
{

  return sub_1BF9B4B48();
}

uint64_t ThirdPartyParameter.parameterName.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x7261506472696874;
  }
}

uint64_t sub_1BF978728(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF978748, 0, 0);
}

uint64_t sub_1BF978748()
{
  v20 = v0;
  v1 = sub_1BF8C2F90();
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v1;
  v4 = v2;
  if (sub_1BF9B4C08())
  {

LABEL_4:
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v5 = sub_1BF9B47C8();
    __swift_project_value_buffer(v5, qword_1EDBF5570);
    v6 = sub_1BF9B47A8();
    v7 = sub_1BF9B5038();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BF8B8000, v6, v7, "Unable to determine appId from INIntent", v8, 2u);
      MEMORY[0x1BFB5F320](v8, -1, -1);
    }

    v9 = *(v0 + 16);

    *v9 = 0u;
    v9[1] = 0u;
    v10 = 2;
    goto LABEL_14;
  }

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v11 = sub_1BF9B47C8();
  __swift_project_value_buffer(v11, qword_1EDBF5570);

  v12 = sub_1BF9B47A8();
  v13 = sub_1BF9B5038();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1BF8DE810(v3, v4, &v19);
    _os_log_impl(&dword_1BF8B8000, v12, v13, "Determined appId from INIntent as: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1BFB5F320](v15, -1, -1);
    MEMORY[0x1BFB5F320](v14, -1, -1);
  }

  v16 = *(v0 + 16);
  v16[3] = MEMORY[0x1E69E6158];
  *v16 = v3;
  v16[1] = v4;
  v10 = 1;
LABEL_14:
  *(*(v0 + 16) + 32) = v10;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t ThirdPartyParameter.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

unint64_t sub_1BF978A70()
{
  result = qword_1EBDEA270;
  if (!qword_1EBDEA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA270);
  }

  return result;
}

unint64_t sub_1BF978AC8()
{
  result = qword_1EBDEA278;
  if (!qword_1EBDEA278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDEA280, &qword_1BF9C4FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA278);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ThirdPartyParameter(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF978C18(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D70, &qword_1BF9C5560);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF97FBA0(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1BF978CB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B0, &qword_1BF9C9210);
    v1 = sub_1BF9B5478();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1BF97F5EC(v2, 1, &v4);

  return v4;
}

uint64_t sub_1BF978D64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D60, &qword_1BF9C2B38);
    v2 = sub_1BF9B5478();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v4 = v2;
  sub_1BF97F8E0(a1, 1, &v4);
  return v4;
}

uint64_t sub_1BF978E0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  result = sub_1BF8D2004(a3, a4);
  if (v6)
  {
    v8 = a4[3];
    v9 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v8);
    (*(v9 + 8))(&v13, a1, v8, v9);
    v16[3] = &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator;
    v16[4] = &off_1F3EFBD28;
    v10 = swift_allocObject();
    v16[0] = v10;
    sub_1BF8D2004(&v13, v10 + 24);
    *(v10 + 16) = v6;

    __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    v11 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator);
    v14 = &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator;
    v15 = off_1F3EFBD30;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v13);
    (*(off_1F3EFBC18 + 2))(boxed_opaque_existential_1Tm, v11, &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator);
    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    sub_1BF8C2C9C(&v13, a4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return result;
}

uint64_t sub_1BF978F54()
{
  OUTLINED_FUNCTION_40_3();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_62_6();
  sub_1BF97E160(v3, v2, v0);
  return v1;
}

uint64_t sub_1BF978FA0()
{
  OUTLINED_FUNCTION_15_3(*(v0 + 32) + 16, v2);

  return OUTLINED_FUNCTION_43();
}

void sub_1BF978FE4()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  sub_1BF97AD14();
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v4 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v4, qword_1EDBF5570);
  sub_1BF8C4A08(v3, &v24);
  sub_1BF8C4A08(v3, v23);

  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5038();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315650;

    v8 = sub_1BF8E9F70(&v24);
    v11 = OUTLINED_FUNCTION_46_4(v8, v9, v10);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    OUTLINED_FUNCTION_15_3(v1 + 40, &v21);

    MEMORY[0x1BFB5E030](v12, &type metadata for SignalLookupKey);

    v16 = OUTLINED_FUNCTION_46_4(v13, v14, v15);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2080;
    type metadata accessor for ResolvableParameter(0);
    v17 = sub_1BF9B4978();
    v19 = v18;
    sub_1BF8E9F70(v23);
    v20 = sub_1BF8DE810(v17, v19, &v22);

    *(v7 + 24) = v20;
    _os_log_impl(&dword_1BF8B8000, v5, v6, "Built suggestion with Id: %s \nsignalSubscriptions: %s \nresolvableParams: %s", v7, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    sub_1BF8E9F70(v23);
    sub_1BF8E9F70(&v24);
  }

  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF979210()
{
  OUTLINED_FUNCTION_32_11();
  sub_1BF97A1F4(v0, v1, v2, v3, v4);
}

uint64_t sub_1BF979258(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *(v3 + 32);
  v12 = &type metadata for SiriSuggestions.IntentType;
  v13 = &protocol witness table for SiriSuggestions.IntentType;
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  sub_1BF8D2004(v10, v9);
  swift_beginAccess();
  sub_1BF9439F0(a1, a2, a3);
  sub_1BF981A78(v9, v7 + 80, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t SuggestionDetailsBuilder.intentType(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v11 - v10;
  v15 = *v13;
  v14 = *(v13 + 8);
  v16 = *(v13 + 16);
  v21 = &type metadata for SiriSuggestions.IntentType;
  v22 = &protocol witness table for SiriSuggestions.IntentType;
  v19[0] = v15;
  v19[1] = v14;
  v20 = v16;
  v17 = *(a2 + 144);
  sub_1BF9439F0(v15, v14, v16);
  v17(v19, a1, a2);
  (*(v8 + 8))(v12, a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return (*(v8 + 16))(a3, v3, a1);
}

uint64_t SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  (*(v11 + 176))();
  (*(v6 + 8))(v10, a1);
  return (*(v6 + 16))(a2, v2, a1);
}

uint64_t sub_1BF979574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2C0, &qword_1BF9C5528);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BF9B6370;
  if (qword_1EDBF26B8 != -1)
  {
    swift_once();
  }

  v1 = *algn_1EDBF26C8;
  *(v0 + 32) = qword_1EDBF26C0;
  *(v0 + 40) = v1;
  v2 = qword_1EDBF28A8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDC03438;
  v4 = unk_1EDC03440;
  v5 = qword_1EDC03448;
  v6 = unk_1EDC03450;
  type metadata accessor for SystemClock();
  v7 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v8 = sub_1BF981B0C(v0, v3, v4, v5, v6, 0, v7);

  qword_1EDBF1948 = v8;
  return result;
}

uint64_t sub_1BF9796D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1BF979758(v1, v2);
}

uint64_t sub_1BF979718()
{
  OUTLINED_FUNCTION_15_3(v0 + 16, v2);

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1BF979758(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1BF979870(uint64_t a1)
{
  OUTLINED_FUNCTION_23(v1 + 32, v4);
  sub_1BF9798B8(a1, v1 + 32);
  return swift_endAccess();
}

uint64_t GenericSuggestionDetailsBuilder.__allocating_init(suggestionId:catId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GenericSuggestionDetailsBuilder();
  OUTLINED_FUNCTION_60_4();
  v4 = swift_allocObject();
  GenericSuggestionDetailsBuilder.init(suggestionId:dialogDetails:)();
  return v4;
}

uint64_t GenericSuggestionDetailsBuilder.__allocating_init(suggestionId:dialogDetails:)()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_60_4();
  swift_allocObject();
  OUTLINED_FUNCTION_62_6();
  GenericSuggestionDetailsBuilder.init(suggestionId:dialogDetails:)();
  return v0;
}

uint64_t GenericSuggestionDetailsBuilder.init(suggestionId:dialogDetails:)()
{
  OUTLINED_FUNCTION_40_3();
  *(v1 + 128) = 0;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 136) = -1;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0;
  *(v1 + 216) = 514;
  v4 = type metadata accessor for UtteranceActionProvider();
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0;
  v5 = OUTLINED_FUNCTION_69_2(v4);
  *(v1 + 288) = v4;
  *(v1 + 296) = &off_1F3EFDBC0;
  *(v1 + 264) = v5;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 368) = 0xD000000000000010;
  *(v1 + 376) = 0x80000001BF9CD740;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 384) = 0xD000000000000010;
  *(v1 + 392) = 0x80000001BF9CB2D0;
  *(v1 + 400) = 0x7470697263736564;
  *(v1 + 408) = 0xEB000000006E6F69;
  *(v1 + 416) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 480) = 0u;
  *(v1 + 496) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  v6 = v0[1];
  *(v1 + 32) = *v0;
  *(v1 + 48) = v6;
  *(v1 + 57) = *(v0 + 25);
  return v1;
}

uint64_t sub_1BF979B80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(v1 + 168) = a1;
  }
}

uint64_t sub_1BF979BCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(v1 + 176) = a1;
  }
}

uint64_t sub_1BF979C18(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t sub_1BF979C68(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1BF980D2C(v4, v1, v2, v3);
}

uint64_t sub_1BF979CB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(v1 + 184) = a1;
  }
}

uint64_t sub_1BF979D00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(v1 + 192) = a1;
  }
}

uint64_t sub_1BF979D4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(v1 + 200) = a1;
  }
}

uint64_t sub_1BF979D98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(v1 + 208) = a1;
  }
}

uint64_t sub_1BF979DE4()
{
  v2 = v0;
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
  }

  v3 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v3, qword_1EDBF57F8);

  v4 = sub_1BF9B47A8();
  v5 = sub_1BF9B5038();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_109();
    v6 = OUTLINED_FUNCTION_39_0();
    v17[3] = v6;
    *v1 = 136315138;
    OUTLINED_FUNCTION_15_3(v2 + 16, v17);

    v10 = OUTLINED_FUNCTION_46_4(v7, v8, v9);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_19_17();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  *(v2 + 216) = 1;
}

uint64_t sub_1BF979F28(uint64_t a1)
{
  sub_1BF8D2004(a1, v11);
  OUTLINED_FUNCTION_11_2(v1 + 264, v2, v3, v4, v5, v6, v7, v8, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 264);
  sub_1BF8C2C9C(v11, v1 + 264);
  swift_endAccess();
}

uint64_t sub_1BF979F78(uint64_t a1)
{
  sub_1BF8D2004(a1, v11);
  OUTLINED_FUNCTION_11_2(v1 + 224, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1BF981A78(v11, v1 + 224, &qword_1EBDEA288, &qword_1BF9C5060);
  swift_endAccess();
}

uint64_t sub_1BF979FD0(uint64_t a1)
{
  sub_1BF8D2004(a1, v11);
  OUTLINED_FUNCTION_11_2(v1 + 304, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1BF981A78(v11, v1 + 304, &qword_1EBDEA290, &qword_1BF9C5068);
  swift_endAccess();
}

uint64_t sub_1BF97A028(uint64_t a1, uint64_t a2)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
}

uint64_t sub_1BF97A070(uint64_t a1, uint64_t a2)
{
  *(v2 + 368) = a1;
  *(v2 + 376) = a2;
}

uint64_t sub_1BF97A0B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 400) = a1;
  *(v2 + 408) = a2;
}

uint64_t sub_1BF97A100(uint64_t a1)
{
  sub_1BF8D2004(a1, v11);
  OUTLINED_FUNCTION_11_2(v1 + 416, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1BF981A78(v11, v1 + 416, &qword_1EBDE8E10, &qword_1BF9B9980);
  swift_endAccess();
}

uint64_t sub_1BF97A158(uint64_t a1)
{
  *(v1 + 456) = a1;
}

uint64_t sub_1BF97A19C(uint64_t a1)
{
  sub_1BF8D2004(a1, v11);
  OUTLINED_FUNCTION_11_2(v1 + 464, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1BF981A78(v11, v1 + 464, &qword_1EBDEA298, &qword_1BF9C9D00);
  swift_endAccess();
}

uint64_t sub_1BF97A1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  swift_beginAccess();
  if (*(v6 + 144))
  {
    if (a5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(v6 + 144) = sub_1BF9B4988();

    if (a5)
    {
LABEL_10:
      v16 = sub_1BF979938(v24);
      if (*v17)
      {
        sub_1BF981D14(a3, &v21, &qword_1EBDE9E58, &qword_1BF9C30B0);
        v23 = a4;

        sub_1BF932A1C();
      }

      (v16)(v24, 0);
    }
  }

  sub_1BF981D14(a3, &v21, &qword_1EBDE9E58, &qword_1BF9C30B0);
  if (!v22)
  {
    sub_1BF8DFBF0(&v21, &qword_1EBDE9E58, &qword_1BF9C30B0);
    goto LABEL_10;
  }

  sub_1BF8C2C9C(&v21, v24);
  type metadata accessor for FilterResolver();
  v11 = v25;
  v10 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v12 = (*(*(v10 + 8) + 16))(v11);
  static FilterResolver.filterLockscreen(for:using:)(v12, v13, v24, v20);

  v14 = sub_1BF979938(v19);
  if (*v15)
  {
    sub_1BF8D2004(v20, &v21);
    v23 = a4;

    sub_1BF932A1C();
  }

  (v14)(v19, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t sub_1BF97A440(uint64_t a1)
{
  *(v1 + 360) = a1;
}

void sub_1BF97A49C()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v57 = v8;
  v56 = v9;
  v58 = sub_1BF9B4378();
  OUTLINED_FUNCTION_2_0();
  v59 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v53 - v13;
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
  }

  v15 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v15, qword_1EDBF57F8);

  v16 = sub_1BF9B47A8();
  v17 = sub_1BF9B5038();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1BF8DE810(v57, v7, v70);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1BF8DE810(v5, v3, v70);
    _os_log_impl(&dword_1BF8B8000, v16, v17, "trying to load cat from %s and %s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  sub_1BF9B4358();
  OUTLINED_FUNCTION_15_3(v1 + 224, &v66);
  sub_1BF981D14(v1 + 224, &v67, &qword_1EBDEA288, &qword_1BF9C5060);
  if (v68)
  {
    sub_1BF8C2C9C(&v67, v70);
  }

  else
  {
    v19 = type metadata accessor for StaticIconUrlProvider();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_7_16(v20);
    v70[3] = v19;
    v70[4] = &protocol witness table for StaticIconUrlProvider;
    v70[0] = v21;
  }

  v22 = type metadata accessor for UtteranceActionProvider();
  v23 = OUTLINED_FUNCTION_69_2(v22);
  v68 = v22;
  v69 = &off_1F3EFDBC0;
  *&v67 = v23;
  v53[1] = "Clock";
  v24 = *(v59 + 16);
  v25 = OUTLINED_FUNCTION_72_3();
  v26 = v58;
  v24(v25);
  v27 = type metadata accessor for TemplateOverrideDialogIdCallback(0);
  OUTLINED_FUNCTION_52_5(v27);
  v28 = OUTLINED_FUNCTION_9_17();
  v57 = sub_1BF900AA8(v28, v29, v30, v31, v32, 1);
  v33 = OUTLINED_FUNCTION_72_3();
  v24(v33);
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_9_17();
  sub_1BF8FF2BC();
  v54 = v34;
  v35 = OUTLINED_FUNCTION_72_3();
  v55 = v14;
  v24(v35);

  sub_1BF8FF2BC();
  v37 = v36;
  v38 = OUTLINED_FUNCTION_72_3();
  v24(v38);

  OUTLINED_FUNCTION_9_17();
  sub_1BF8FF2BC();
  v40 = v39;
  sub_1BF8D2004(&v67, v65);
  sub_1BF8D2004(v70, v62);
  OUTLINED_FUNCTION_28_2();
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = *&v65[7];
  *(v41 + 40) = v27;
  *(v41 + 48) = &off_1F3EF9308;
  OUTLINED_FUNCTION_28_2();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = *&v65[5];
  *(v42 + 40) = v27;
  *(v42 + 48) = &off_1F3EF9308;
  v43 = type metadata accessor for ViewCallbacksWrapper();
  v44 = OUTLINED_FUNCTION_68_3(v43);
  v45 = v63;
  v46 = v64;
  __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_17();
  v49 = OUTLINED_FUNCTION_22_4(v48);
  v50(v49);
  v61 = v57;
  v60 = v54;
  v51 = sub_1BF902974(&v61, &v60, sub_1BF981CD0, v41, sub_1BF981CD0, v42, v65, v26, v44, v27, v27, v45, &off_1F3EF9308, &off_1F3EF9308, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  v52 = v56;
  v56[3] = v43;
  v52[4] = &protocol witness table for ViewCallbacksWrapper;
  *v52 = v51;
  (*(v59 + 8))(v55, v58);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  OUTLINED_FUNCTION_64();
}

BOOL sub_1BF97AA80()
{
  v3 = v0;
  v4 = *(v0 + 360);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = *(v4 + 16);

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    for (i = 32; ; i += 16)
    {
      if (v6 == v7)
      {

        v5 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }

      if (v7 >= *(v4 + 16))
      {
        break;
      }

      v1 = *(v4 + i);
      v2 = *(v1 + 16);
      v10 = *(v8 + 16);
      v5 = v10 + v2;
      if (__OFADD__(v10, v2))
      {
        goto LABEL_28;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v5 > *(v8 + 24) >> 1)
      {
        sub_1BF8DCDC8();
        v8 = v11;
      }

      if (*(v1 + 16))
      {
        v12 = *(v8 + 16);
        if ((*(v8 + 24) >> 1) - v12 < v2)
        {
          goto LABEL_30;
        }

        memcpy((v8 + 2 * v12 + 32), (v1 + 32), 2 * v2);

        if (v2)
        {
          v13 = *(v8 + 16);
          v14 = __OFADD__(v13, v2);
          v15 = v13 + v2;
          if (v14)
          {
            goto LABEL_31;
          }

          *(v8 + 16) = v15;
        }
      }

      else
      {

        if (v2)
        {
          goto LABEL_29;
        }
      }

      ++v7;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:
  i = *(v8 + 16);
  v2 = *(sub_1BF927580(v8) + 16);

  if (i != v2)
  {
    if (qword_1EDBF57F0 == -1)
    {
LABEL_20:
      v16 = sub_1BF9B47C8();
      OUTLINED_FUNCTION_49_3(v16, qword_1EDBF57F8);

      v17 = sub_1BF9B47A8();
      v18 = sub_1BF9B5048();

      if (os_log_type_enabled(v17, v18))
      {
        OUTLINED_FUNCTION_109();
        v19 = OUTLINED_FUNCTION_39_0();
        v31 = v19;
        *v1 = 136315138;
        if (*(v3 + 360))
        {
          v20 = *(v3 + 360);
        }

        else
        {
          v20 = v5;
        }

        v21 = MEMORY[0x1BFB5E030](v20, &type metadata for VersionedInvocation);
        v23 = v22;

        v24 = sub_1BF8DE810(v21, v23, &v31);

        *(v1 + 4) = v24;
        OUTLINED_FUNCTION_19_17();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_87();
      }

      return i == v2;
    }

LABEL_32:
    OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
    goto LABEL_20;
  }

  return i == v2;
}

void sub_1BF97AD14()
{
  OUTLINED_FUNCTION_65_0();
  v102 = v0;
  v5 = v4;
  v7 = v6;
  v101 = v8;
  sub_1BF981D14(v8, &v128, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v99 = v5;
  v100 = v7;
  if (!*(&v129 + 1))
  {
    sub_1BF8DFBF0(&v128, &qword_1EBDE9E28, &qword_1BF9C2CE8);
LABEL_25:
    OUTLINED_FUNCTION_53_7();
    goto LABEL_26;
  }

  v1 = v130;
  __swift_project_boxed_opaque_existential_1(&v128, *(&v129 + 1));
  OUTLINED_FUNCTION_23_0();
  type metadata accessor for AllOwnerConfigs();
  OUTLINED_FUNCTION_55_6();
  v10 = v9();
  if (!v10)
  {
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    goto LABEL_25;
  }

  v11 = v10;
  v12 = sub_1BF965210();
  if (!v12)
  {

    goto LABEL_24;
  }

  v1 = v12;
  v2 = v11 & 0xC000000000000001;
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_103;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFF8;
  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v3 = *(v11 + 32);

  while (1)
  {
    for (i = 1; v1 != i; ++i)
    {
      if (v2)
      {
        v15 = MEMORY[0x1BFB5E5E0](i, v11);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }

        if (i >= *(v13 + 16))
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v15 = *(v11 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_98;
      }

      if (*(v3 + 24) < *(v15 + 24))
      {

        v3 = v15;
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    v16 = *(v3 + 16);
    v17 = v5[3];
    v1 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v17);
    v2 = v1 + 48;
    v18 = *(v1 + 48);

    v19 = v18(v17, v1);
    if (*(v16 + 16))
    {
      v21 = sub_1BF8C2E64(v19, v20);
      v1 = v22;

      if (v1)
      {
        v23 = (*(v16 + 56) + 32 * v21);
        v7 = *v23;
        v3 = v23[1];
        v5 = v23[2];
        v1 = v23[3];

        goto LABEL_26;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_53_7();
LABEL_26:
    sub_1BF981D14(v101, &v128, &qword_1EBDE9E28, &qword_1BF9C2CE8);
    if (!*(&v129 + 1))
    {
      sub_1BF8DFBF0(&v128, &qword_1EBDE9E28, &qword_1BF9C2CE8);
      goto LABEL_32;
    }

    v11 = __swift_project_boxed_opaque_existential_1(&v128, *(&v129 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2B0, &qword_1BF9C5088);
    OUTLINED_FUNCTION_55_6();
    v25 = v24();
    if (!v25)
    {
      break;
    }

    if (*(v25 + 16))
    {
      sub_1BF8D2004(v25 + 32, v135);

      __swift_destroy_boxed_opaque_existential_1Tm(&v128);
      goto LABEL_33;
    }

    __break(1u);
LABEL_103:
    v3 = MEMORY[0x1BFB5E5E0](0, v11);
    v13 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
LABEL_32:
  memset(v135, 0, sizeof(v135));
  v136 = 0;
LABEL_33:
  if (qword_1EDBF57F0 != -1)
  {
LABEL_101:
    OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
  }

  v26 = sub_1BF9B47C8();
  __swift_project_value_buffer(v26, qword_1EDBF57F8);
  v27 = sub_1BF9B47A8();
  v28 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_95(v28))
  {
    v29 = OUTLINED_FUNCTION_109();
    v30 = swift_slowAlloc();
    *&v128 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1BF8DE810(0x6C616E6F6974704FLL, 0xEF3E6B636F6C433CLL, &v128);
    _os_log_impl(&dword_1BF8B8000, v27, v28, "Got clock of type: %s from lifecycle", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  v31 = v102;
  OUTLINED_FUNCTION_15_3((v102 + 38), &v133);
  sub_1BF981D14((v102 + 38), &v128, &qword_1EBDEA290, &qword_1BF9C5068);
  if (*(&v129 + 1))
  {
    sub_1BF8C2C9C(&v128, v134);
  }

  else
  {

    sub_1BF97CE3C();

    if (*(&v129 + 1))
    {
      sub_1BF8DFBF0(&v128, &qword_1EBDEA290, &qword_1BF9C5068);
    }
  }

  if (!v3)
  {
    goto LABEL_58;
  }

  sub_1BF980DF0(v7, v3);
  v32 = *(v1 + 16);
  OUTLINED_FUNCTION_15_3((v102 + 2), v107);
  v33 = (v1 + 80);
  v34 = v32 + 1;
  do
  {
    if (!--v34)
    {

LABEL_57:
      v31 = v102;
      goto LABEL_58;
    }

    v36 = *(v33 - 3);
    v35 = *(v33 - 2);
    v37 = *(v33 - 1);
    v38 = *v33;
    if (*(v33 - 6) == v102[2] && *(v33 - 5) == v102[3])
    {
      break;
    }

    v33 += 7;
  }

  while ((sub_1BF9B56D8() & 1) == 0);

  v40 = OUTLINED_FUNCTION_5_16();
  sub_1BF911868(v40, v41);

  if (!v35)
  {

    sub_1BF911DC8(v36, 0);
    goto LABEL_57;
  }

  v42 = OUTLINED_FUNCTION_5_16();
  sub_1BF911DC8(v42, v43);
  v44 = v37;
  v45 = v38;
  v31 = v102;
  if (v38)
  {
    goto LABEL_52;
  }

  v45 = v102[44];
  if (v45)
  {
    v44 = v102[43];

LABEL_52:
    v46 = OUTLINED_FUNCTION_5_16();
    sub_1BF911868(v46, v47);

    v48 = sub_1BF9B47A8();
    v49 = sub_1BF9B5038();
    v50 = OUTLINED_FUNCTION_5_16();
    sub_1BF911DC8(v50, v51);

    if (os_log_type_enabled(v48, v49))
    {
      v52 = swift_slowAlloc();
      *&v128 = swift_slowAlloc();
      *v52 = 136315394;

      v53 = sub_1BF8DE810(v36, v35, &v128);

      *(v52 + 4) = v53;
      v31 = v102;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_1BF8DE810(v44, v45, &v128);
      _os_log_impl(&dword_1BF8B8000, v48, v49, "Loading catId - %s from templates in directory - %s", v52, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    sub_1BF97A49C();
    v54 = OUTLINED_FUNCTION_5_16();
    sub_1BF911DC8(v54, v55);

    __swift_destroy_boxed_opaque_existential_1Tm(v134);
    sub_1BF8C2C9C(&v128, v134);
  }

  else
  {
    sub_1BF911DC8(v36, v35);
  }

LABEL_58:
  OUTLINED_FUNCTION_15_3((v31 + 18), &v132);
  v1 = v31[18];
  v56 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v57 = *(v1 + 16);
    v58 = MEMORY[0x1E69E7CC0];
    if (v57)
    {
      v116 = MEMORY[0x1E69E7CC0];

      sub_1BF8D0768(0, v57, 0);
      v58 = v116;
      v61 = sub_1BF95FA38();
      v7 = 0;
      v3 = v1 + 64;
      v103 = v57;
      if ((v61 & 0x8000000000000000) == 0)
      {
        while (v61 < 1 << *(v1 + 32))
        {
          v62 = v61 >> 6;
          if ((*(v3 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
          {
            goto LABEL_93;
          }

          if (*(v1 + 36) != v59)
          {
            goto LABEL_94;
          }

          v104 = v60;
          v105 = v59;
          v63 = (*(v1 + 48) + 16 * v61);
          v65 = *v63;
          v64 = v63[1];
          sub_1BF9650B0(*(v1 + 56) + 48 * v61, &v129);
          *&v124 = v65;
          *(&v124 + 1) = v64;
          v125 = v129;
          v126 = v130;
          v127 = v131;
          sub_1BF981D14(&v124, v122, &qword_1EBDE9E50, &unk_1BF9C5070);
          v3 = v122[1];
          v106 = v122[0];
          v119 = v124;
          v120[0] = v125;
          v120[1] = v126;
          v121 = v127;

          v66 = *(&v121 + 1);

          sub_1BF96515C(v120);
          sub_1BF96515C(&v123);
          v116 = v58;
          v68 = *(v58 + 16);
          v67 = *(v58 + 24);
          if (v68 >= v67 >> 1)
          {
            v78 = OUTLINED_FUNCTION_11_3(v67);
            sub_1BF8D0768(v78, v68 + 1, 1);
            v58 = v116;
          }

          *(v58 + 16) = v68 + 1;
          v69 = (v58 + 24 * v68);
          v69[4] = v106;
          v69[5] = v3;
          v69[6] = v66;
          v70 = 1 << *(v1 + 32);
          if (v61 >= v70)
          {
            goto LABEL_95;
          }

          v3 = v1 + 64;
          v71 = *(v1 + 64 + 8 * v62);
          if ((v71 & (1 << v61)) == 0)
          {
            goto LABEL_96;
          }

          if (*(v1 + 36) != v105)
          {
            goto LABEL_97;
          }

          v72 = v71 & (-2 << (v61 & 0x3F));
          if (v72)
          {
            v70 = __clz(__rbit64(v72)) | v61 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v73 = v62 << 6;
            v74 = v62 + 1;
            v75 = (v1 + 72 + 8 * v62);
            while (v74 < (v70 + 63) >> 6)
            {
              v77 = *v75++;
              v76 = v77;
              v73 += 64;
              ++v74;
              if (v77)
              {
                sub_1BF90E758(v61, v105, v104 & 1);
                v70 = __clz(__rbit64(v76)) + v73;
                goto LABEL_76;
              }
            }

            sub_1BF90E758(v61, v105, v104 & 1);
          }

LABEL_76:
          if (++v7 == v103)
          {

            v31 = v102;
            v56 = MEMORY[0x1E69E7CC0];
            goto LABEL_81;
          }

          v60 = 0;
          v59 = *(v1 + 36);
          v61 = v70;
          if (v70 < 0)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
  }

LABEL_81:
  v79 = sub_1BF978C18(v58);
  sub_1BF97CB7C(v101, v99, &v128);
  OUTLINED_FUNCTION_15_3((v31 + 10), v118);
  OUTLINED_FUNCTION_59_7();
  sub_1BF981D14(v80, v81, v82, v83);
  sub_1BF8DFBF0(&v124, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  OUTLINED_FUNCTION_15_3((v31 + 2), v117);
  v85 = v31[2];
  v84 = v31[3];
  sub_1BF8D2004(v134, &v124);

  sub_1BF97BA00(v122);
  sub_1BF97BCB8();
  OUTLINED_FUNCTION_59_7();
  sub_1BF981D14(v86, v87, v88, v89);
  OUTLINED_FUNCTION_15_3((v31 + 52), v113);
  sub_1BF981D14((v31 + 52), v114, &qword_1EBDE8E10, &qword_1BF9B9980);
  v90 = v31[57];
  *v100 = v85;
  *(v100 + 8) = v84;
  *(v100 + 96) = v79;
  *(v100 + 16) = v85;
  *(v100 + 24) = v84;
  sub_1BF8D2004(&v124, v100 + 104);
  sub_1BF8D2004(v122, v100 + 144);
  sub_1BF8D2004(&v119, v100 + 184);
  OUTLINED_FUNCTION_59_7();
  sub_1BF981D14(v91, v92, v93, v94);
  if (v109)
  {

    sub_1BF8DFBF0(&v116, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1Tm(&v119);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    __swift_destroy_boxed_opaque_existential_1Tm(&v124);
    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    __swift_destroy_boxed_opaque_existential_1Tm(v134);
    sub_1BF8DFBF0(v135, &qword_1EBDEA2A8, &qword_1BF9C5080);
    sub_1BF8C2C9C(&v108, &v110);
  }

  else
  {
    *(&v111 + 1) = &type metadata for SiriSuggestions.IntentType;
    v112 = &protocol witness table for SiriSuggestions.IntentType;
    swift_bridgeObjectRetain_n();

    *&v110 = v85;
    *(&v110 + 1) = v84;
    LOBYTE(v111) = 2;
    sub_1BF8DFBF0(&v116, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1Tm(&v119);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    __swift_destroy_boxed_opaque_existential_1Tm(&v124);
    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    __swift_destroy_boxed_opaque_existential_1Tm(v134);
    sub_1BF8DFBF0(v135, &qword_1EBDEA2A8, &qword_1BF9C5080);
    if (v109)
    {
      sub_1BF8DFBF0(&v108, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    }
  }

  if (v90)
  {
    v95 = v90;
  }

  else
  {
    v95 = v56;
  }

  v96 = v111;
  *(v100 + 32) = v110;
  *(v100 + 48) = v96;
  v97 = v112;
  v98 = v114[1];
  *(v100 + 224) = v114[0];
  *(v100 + 240) = v98;
  *(v100 + 256) = v115;
  *(v100 + 264) = v95;
  *(v100 + 72) = 0;
  *(v100 + 80) = 0;
  *(v100 + 64) = v97;
  *(v100 + 88) = -1;
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF97BA00@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  OUTLINED_FUNCTION_15_3(v1 + 464, v14);
  sub_1BF981D14(v1 + 464, &v15, &qword_1EBDEA298, &qword_1BF9C9D00);
  if (v16)
  {
    return sub_1BF8C2C9C(&v15, a1);
  }

  v11 = *(v1 + 152);
  v10 = *(v1 + 160);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9B4598();
  v12 = type metadata accessor for SimpleActionKeyMapper(0);
  v13 = OUTLINED_FUNCTION_52_5(v12);
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  result = (*(v5 + 32))(v13 + OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer, v8, v3);
  a1[3] = v12;
  a1[4] = &protocol witness table for SimpleActionKeyMapper;
  *a1 = v13;
  if (v16)
  {
    return sub_1BF8DFBF0(&v15, &qword_1EBDEA298, &qword_1BF9C9D00);
  }

  return result;
}

uint64_t sub_1BF97BBB0()
{
  if (qword_1EDBF28A8 != -1)
  {
    OUTLINED_FUNCTION_23_14(&qword_1EDBF28A8);
  }

  v1 = qword_1EDC03438;
  v2 = unk_1EDC03440;
  v3 = qword_1EDC03448;
  v4 = unk_1EDC03450;
  v11[3] = &unk_1F3EFDAF0;
  v11[4] = &off_1F3EFDB90;
  OUTLINED_FUNCTION_35_9();
  v5 = swift_allocObject();
  v10 = 0;
  v11[0] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v4;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));

  sub_1BF97BCB8();
  sub_1BF8DFBF0(v7, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  sub_1BF8DFBF0(v9, &qword_1EBDEA2A8, &qword_1BF9C5080);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

void sub_1BF97BCB8()
{
  OUTLINED_FUNCTION_65_0();
  v4 = v0;
  HIDWORD(v136) = v5;
  v134 = v6;
  v7 = v2;
  v135 = v8;
  v9 = v3;
  if (*(v0 + 168))
  {
    v10 = v3;
    v11 = v2;

    sub_1BF927614();
    v13 = v12;
    if (qword_1EDBF5838 != -1)
    {
      OUTLINED_FUNCTION_17_16(&qword_1EDBF5838);
    }

    v14 = qword_1EDBF56F8;
    v1 = type metadata accessor for LocalePrerequisite();
    OUTLINED_FUNCTION_35_9();
    v0 = swift_allocObject();
    *(v0 + 16) = v13;
    *(v0 + 24) = 1;
    *(v0 + 32) = v14;
    *(v0 + 40) = &off_1F3EFC740;

    sub_1BF8DE328();
    v16 = v15;
    v17 = *(v15 + 16);
    if (v17 >= *(v15 + 24) >> 1)
    {
      OUTLINED_FUNCTION_4_24();
      v16 = v118;
    }

    *(&v151 + 1) = v1;
    OUTLINED_FUNCTION_16_14();
    v152 = sub_1BF981AC4(v18, v19, &protocol conformance descriptor for LocalePrerequisite);
    *&v150 = v0;
    *(v16 + 16) = v17 + 1;
    sub_1BF8C2C9C(&v150, v16 + 40 * v17 + 32);
    v7 = v11;
    v9 = v10;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (*(v4 + 176))
  {

    sub_1BF927614();
    v21 = v20;
    if (qword_1EDBF5838 != -1)
    {
      OUTLINED_FUNCTION_17_16(&qword_1EDBF5838);
    }

    v22 = qword_1EDBF56F8;
    v1 = type metadata accessor for LocalePrerequisite();
    OUTLINED_FUNCTION_35_9();
    v0 = swift_allocObject();
    *(v0 + 16) = v21;
    *(v0 + 24) = 0;
    *(v0 + 32) = v22;
    *(v0 + 40) = &off_1F3EFC740;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_12();
      v16 = v119;
    }

    OUTLINED_FUNCTION_10_17();
    if (v23)
    {
      OUTLINED_FUNCTION_4_24();
      v16 = v120;
    }

    *(&v151 + 1) = v1;
    OUTLINED_FUNCTION_16_14();
    v26 = sub_1BF981AC4(v24, v25, &protocol conformance descriptor for LocalePrerequisite);
    OUTLINED_FUNCTION_1_24(v26);
  }

  if (*(v4 + 184))
  {

    sub_1BF9274A4();
    OUTLINED_FUNCTION_23_0();
    v27 = type metadata accessor for DevicePrerequisite();
    v28 = OUTLINED_FUNCTION_26_14(v27);
    v29 = v0;
    v0 = v28;
    DevicePrerequisite.init(devices:includes:)(v29, 1, v28, v30, v31, v32, v33, v34, v133, v134, v135, v136, v137, v138, v139, v140, v141, *(&v141 + 1), v142, v143, v144, v145, v146, v147, v148, v149, v150, *(&v150 + 1), v151, *(&v151 + 1));
    OUTLINED_FUNCTION_62_6();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_12();
      v16 = v121;
    }

    OUTLINED_FUNCTION_10_17();
    if (v23)
    {
      OUTLINED_FUNCTION_4_24();
      v16 = v122;
    }

    *(&v151 + 1) = v1;
    OUTLINED_FUNCTION_15_19();
    v37 = sub_1BF981AC4(v35, v36, &protocol conformance descriptor for DevicePrerequisite);
    OUTLINED_FUNCTION_1_24(v37);
  }

  v38 = *(v4 + 192);
  if (v38)
  {

    sub_1BF9274A4();
    OUTLINED_FUNCTION_23_0();
    v39 = type metadata accessor for DevicePrerequisite();
    v40 = OUTLINED_FUNCTION_26_14(v39);
    DevicePrerequisite.init(devices:includes:)(v0, 0, v40, v41, v42, v43, v44, v45, v133, v134, v135, v136, v137, v138, v139, v140, v141, *(&v141 + 1), v142, v143, v144, v145, v146, v147, v148, v149, v150, *(&v150 + 1), v151, *(&v151 + 1));
    OUTLINED_FUNCTION_62_6();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_12();
      v16 = v123;
    }

    OUTLINED_FUNCTION_10_17();
    if (v23)
    {
      OUTLINED_FUNCTION_4_24();
      v16 = v124;
    }

    *(&v151 + 1) = v1;
    OUTLINED_FUNCTION_15_19();
    v48 = sub_1BF981AC4(v46, v47, &protocol conformance descriptor for DevicePrerequisite);
    v38 = OUTLINED_FUNCTION_1_24(v48);
  }

  v49 = *(v4 + 200);
  if (v49)
  {
    v150 = 0u;
    v151 = 0u;
    LOBYTE(v152) = 1;
    MEMORY[0x1EEE9AC00](v38);
    swift_bridgeObjectRetain_n();
    v1 = sub_1BF906310();

    if (v1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF8BE424(0, *(v49 + 16) + 1, 1, v49);
        v49 = v129;
      }

      v51 = *(v49 + 16);
      v50 = *(v49 + 24);
      v1 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v130 = OUTLINED_FUNCTION_11_3(v50);
        sub_1BF8BE424(v130, v51 + 1, 1, v49);
        v49 = v131;
      }

      *(v49 + 16) = v1;
      v52 = v49 + 40 * v51;
      *(v52 + 32) = 4;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 64) = 2;
    }

    sub_1BF9277BC(v49);
    v54 = v53;
    v55 = type metadata accessor for DeliveryVehiclePrerequisite();
    v56 = OUTLINED_FUNCTION_26_14(v55);
    *(v56 + 16) = v54;
    *(v56 + 24) = 1;
  }

  else
  {
    sub_1BF97FD64(&unk_1F3EF5F58);
    v58 = v57;
    v59 = type metadata accessor for DeliveryVehiclePrerequisite();
    v60 = OUTLINED_FUNCTION_26_14(v59);
    *(v60 + 16) = v58;
    *(v60 + 24) = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_12();
    v16 = v116;
  }

  OUTLINED_FUNCTION_10_17();
  if (v23)
  {
    OUTLINED_FUNCTION_4_24();
    v16 = v117;
  }

  *(&v151 + 1) = v1;
  OUTLINED_FUNCTION_14_14();
  v63 = sub_1BF981AC4(v61, v62, &protocol conformance descriptor for DeliveryVehiclePrerequisite);
  OUTLINED_FUNCTION_1_24(v63);
  if (*(v4 + 208))
  {

    sub_1BF9277BC(v65);
    v67 = v66;
    v68 = type metadata accessor for DeliveryVehiclePrerequisite();
    v69 = OUTLINED_FUNCTION_26_14(v68);
    *(v69 + 16) = v67;
    *(v69 + 24) = 0;
    OUTLINED_FUNCTION_10_17();
    if (v23)
    {
      OUTLINED_FUNCTION_4_24();
      v16 = v125;
    }

    *(&v151 + 1) = v1;
    OUTLINED_FUNCTION_14_14();
    v72 = sub_1BF981AC4(v70, v71, &protocol conformance descriptor for DeliveryVehiclePrerequisite);
    OUTLINED_FUNCTION_1_24(v72);
  }

  v73 = *(v4 + 216);
  if (v73 != 2 && (v73 & 1) != 0)
  {
    if (qword_1EDBF57F0 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
    }

    v74 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v74, qword_1EDBF57F8);
    v75 = sub_1BF9B47A8();
    v76 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_95(v76))
    {
      v77 = OUTLINED_FUNCTION_12_0();
      *v77 = 0;
      _os_log_impl(&dword_1BF8B8000, v75, v76, "adding pre-req because onlyEnableThroughConfig is set", v77, 2u);
      OUTLINED_FUNCTION_87();
    }

    OUTLINED_FUNCTION_15_3(v4 + 16, &v138);
    v78 = *(v4 + 16);
    v79 = *(v4 + 24);
    ShouldBeEnabledFromConfigPrerequisite = type metadata accessor for ShouldBeEnabledFromConfigPrerequisite();
    v81 = swift_allocObject();
    *(v81 + 16) = v78;
    *(v81 + 24) = v79;
    v82 = *(v16 + 16);
    v83 = *(v16 + 24);

    if (v82 >= v83 >> 1)
    {
      OUTLINED_FUNCTION_31_12();
      v16 = v132;
    }

    *(&v151 + 1) = ShouldBeEnabledFromConfigPrerequisite;
    v84 = sub_1BF981AC4(&qword_1EDBF0D80, type metadata accessor for ShouldBeEnabledFromConfigPrerequisite, &protocol conformance descriptor for ShouldBeEnabledFromConfigPrerequisite);
    OUTLINED_FUNCTION_1_24(v84);
  }

  if (*(v4 + 217) != 2)
  {
    v86 = *(v16 + 16);
    v85 = *(v16 + 24);
    if (v86 >= v85 >> 1)
    {
      OUTLINED_FUNCTION_11_3(v85);
      OUTLINED_FUNCTION_31_12();
      v16 = v127;
    }

    v87 = type metadata accessor for NetworkPrerequisite();
    inited = swift_initStaticObject();
    *(&v151 + 1) = v87;
    v152 = sub_1BF981AC4(&qword_1EDBF2AF8, type metadata accessor for NetworkPrerequisite, &protocol conformance descriptor for NetworkPrerequisite);
    *&v150 = inited;
    *(v16 + 16) = v86 + 1;
    OUTLINED_FUNCTION_6_16();
  }

  if (*(v4 + 360))
  {
    sub_1BF8D2004(v135, &v150);
    sub_1BF981D14(v7, &v141, &qword_1EBDEA2A8, &qword_1BF9C5080);
    if (v143)
    {
      sub_1BF8C2C9C(&v141, &v145);
    }

    else
    {
      v94 = type metadata accessor for SystemClock();
      v95 = OUTLINED_FUNCTION_69_2(v94);
      v148 = v94;
      v149 = &off_1F3EF85D8;
      v145 = v95;
    }

    v96 = type metadata accessor for InvocationTypePrerequisite();
    v97 = *(&v151 + 1);
    __swift_mutable_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
    OUTLINED_FUNCTION_2_0();
    MEMORY[0x1EEE9AC00](v98);
    OUTLINED_FUNCTION_17();
    v100 = OUTLINED_FUNCTION_43_8(v99);
    v101(v100);
    sub_1BF931988();
    v103 = v102;
    __swift_destroy_boxed_opaque_existential_1Tm(&v150);
    *(&v151 + 1) = v96;
    OUTLINED_FUNCTION_13_13();
    v106 = sub_1BF981AC4(v104, v105, &protocol conformance descriptor for InvocationTypePrerequisite);
    v152 = v106;
    *&v150 = v103;
    v145 = v16;
    v108 = *(v16 + 16);
    v107 = *(v16 + 24);
    if (v108 >= v107 >> 1)
    {
      OUTLINED_FUNCTION_11_3(v107);
      OUTLINED_FUNCTION_31_12();
      v16 = v126;
      v145 = v126;
      v96 = *(&v151 + 1);
      v109 = v152;
    }

    else
    {
      v109 = v106;
    }

    __swift_mutable_project_boxed_opaque_existential_1(&v150, v96);
    OUTLINED_FUNCTION_2_0();
    MEMORY[0x1EEE9AC00](v110);
    OUTLINED_FUNCTION_17();
    v112 = OUTLINED_FUNCTION_54_5(v111);
    v113(v112);
    sub_1BF9808B8(v108, v97, &v145, v96, v109);
    __swift_destroy_boxed_opaque_existential_1Tm(&v150);
  }

  else
  {
    v89 = sub_1BF97C6E0(v134, v135, BYTE4(v136) & 1, v7, v64);
    v91 = *(v16 + 16);
    v90 = *(v16 + 24);
    if (v91 >= v90 >> 1)
    {
      OUTLINED_FUNCTION_11_3(v90);
      OUTLINED_FUNCTION_31_12();
      v16 = v128;
    }

    *(&v151 + 1) = type metadata accessor for InvocationTypePrerequisite();
    OUTLINED_FUNCTION_13_13();
    v152 = sub_1BF981AC4(v92, v93, &protocol conformance descriptor for InvocationTypePrerequisite);
    *&v150 = v89;
    *(v16 + 16) = v91 + 1;
    OUTLINED_FUNCTION_6_16();
  }

  v114 = type metadata accessor for UnionPrerequisite();
  v115 = swift_allocObject();
  *(v115 + 16) = v16;
  v9[3] = v114;
  v9[4] = sub_1BF981AC4(&qword_1EDBF2F18, type metadata accessor for UnionPrerequisite, &protocol conformance descriptor for UnionPrerequisite);
  *v9 = v115;
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF97C6E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  sub_1BF981D14(a1, &v41, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  if (!v42)
  {
    sub_1BF8DFBF0(&v41, &qword_1EBDE9E28, &qword_1BF9C2CE8);
    if (qword_1EDBF57F0 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
    }

    v21 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v21, qword_1EDBF57F8);
    v22 = sub_1BF9B47A8();
    v23 = sub_1BF9B5028();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_12_0();
      *v24 = 0;
      _os_log_impl(&dword_1BF8B8000, v22, v23, "[warning] no lifecycle container available. This adoptor is likely not on the v2 API using a builderFactory. Using the disabled Prerequisite", v24, 2u);
      OUTLINED_FUNCTION_87();
    }

    if (qword_1EDBF1940 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDBF1948;

    return v12;
  }

  sub_1BF8C2C9C(&v41, v43);
  if (a3)
  {
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  OUTLINED_FUNCTION_23_0();
  type metadata accessor for InvocationTypePrerequisite();
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_59_7();
  v9 = v8();
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v9;
  result = sub_1BF965210();
  if (!result)
  {

LABEL_21:
    if (qword_1EDBF57F0 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
    }

    v25 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v25, qword_1EDBF57F8);
    v26 = sub_1BF9B47A8();
    v27 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_95(v27))
    {
      v28 = OUTLINED_FUNCTION_12_0();
      *v28 = 0;
      _os_log_impl(&dword_1BF8B8000, v26, v27, "unable to get default invocation type prerequisite from lifecycle. Building our own", v28, 2u);
      OUTLINED_FUNCTION_87();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2C0, &qword_1BF9C5528);
    OUTLINED_FUNCTION_35_9();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BF9B6370;
    if (qword_1EDBF26B8 != -1)
    {
      swift_once();
    }

    v30 = *algn_1EDBF26C8;
    *(v29 + 32) = qword_1EDBF26C0;
    *(v29 + 40) = v30;
    sub_1BF8D2004(a2, &v41);
    sub_1BF981D14(a4, &v38, &qword_1EBDEA2A8, &qword_1BF9C5080);
    if (v39)
    {
      sub_1BF8C2C9C(&v38, v40);
    }

    else
    {
      v31 = type metadata accessor for SystemClock();
      v32 = OUTLINED_FUNCTION_69_2(v31);
      v40[3] = v31;
      v40[4] = &off_1F3EF85D8;
      v40[0] = v32;
    }

    type metadata accessor for InvocationTypePrerequisite();
    __swift_mutable_project_boxed_opaque_existential_1(&v41, v42);
    OUTLINED_FUNCTION_2_0();
    MEMORY[0x1EEE9AC00](v33);
    OUTLINED_FUNCTION_17();
    v35 = OUTLINED_FUNCTION_54_5(v34);
    v36(v35);
    sub_1BF931988();
    v12 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(&v41);
    goto LABEL_31;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1BFB5E5E0](0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);

LABEL_8:

    if (qword_1EDBF57F0 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
    }

    v13 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v13, qword_1EDBF57F8);
    v14 = sub_1BF9B47A8();
    v15 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_95(v15))
    {
      *OUTLINED_FUNCTION_12_0() = 0;
      OUTLINED_FUNCTION_19_17();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_87();
    }

LABEL_31:
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF97CB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1BF981D14(a1, v23, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v6 = v24;
  if (!v24)
  {
    sub_1BF8DFBF0(v23, &qword_1EBDE9E28, &qword_1BF9C2CE8);
LABEL_7:
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2E0, &qword_1BF9C5558);
  OUTLINED_FUNCTION_55_6();
  v8 = v7();
  if (!v8)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    goto LABEL_7;
  }

  sub_1BF8F19D4(v8, &v25);

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (*(&v26 + 1))
  {
    sub_1BF8C2C9C(&v25, &v28);
    return sub_1BF8C2C9C(&v28, a3);
  }

LABEL_8:
  sub_1BF8DFBF0(&v25, &qword_1EBDEA2D8, &qword_1BF9C5550);
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
  }

  v10 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v10, qword_1EDBF57F8);
  sub_1BF8D2004(a2, &v28);
  v11 = sub_1BF9B47A8();
  v12 = sub_1BF9B5028();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_109();
    v13 = OUTLINED_FUNCTION_39_0();
    *&v25 = v13;
    *v6 = 136315138;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    v14 = sub_1BF9B5668();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    v17 = sub_1BF8DE810(v14, v16, &v25);

    *(v6 + 4) = v17;
    _os_log_impl(&dword_1BF8B8000, v11, v12, "[warning] No Policy config on the lifecycle -- SiriHints won't be enabled for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  }

  if (qword_1EDBF28A8 != -1)
  {
    OUTLINED_FUNCTION_23_14(&qword_1EDBF28A8);
  }

  v18 = qword_1EDC03438;
  v19 = unk_1EDC03440;
  v20 = qword_1EDC03448;
  v21 = unk_1EDC03450;
  a3[3] = &unk_1F3EFDAF0;
  a3[4] = &off_1F3EFDB90;
  OUTLINED_FUNCTION_35_9();
  v22 = swift_allocObject();
  *a3 = v22;
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v22[5] = v21;
}

void sub_1BF97CE3C()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v151 = v7;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_2_0();
  v153 = v9;
  v154 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v141 - v13;
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v15 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v15, qword_1EDBF5570);

  v16 = sub_1BF9B47A8();
  v17 = sub_1BF9B5028();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_109();
    v150 = v4;
    v18 = OUTLINED_FUNCTION_39_0();
    v149 = v6;
    v19 = v18;
    *&v177[0] = v18;
    *v4 = 136315138;
    OUTLINED_FUNCTION_15_3((v2 + 2), &v155);
    v1 = v14;
    v21 = v2[2];
    v20 = v2[3];

    v22 = sub_1BF8DE810(v21, v20, v177);
    v14 = v1;

    *(v4 + 4) = v22;
    OUTLINED_FUNCTION_19_17();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  sub_1BF9B4358();
  OUTLINED_FUNCTION_15_3((v2 + 4), &v176);
  sub_1BF9649CC((v2 + 4), v177);
  v152 = v14;
  if (!v178)
  {
    OUTLINED_FUNCTION_15_3((v2 + 28), v162);
    sub_1BF981D14((v2 + 28), &v170, &qword_1EBDEA288, &qword_1BF9C5060);
    if (v171)
    {
      sub_1BF8C2C9C(&v170, v173);
    }

    else
    {
      v70 = type metadata accessor for StaticIconUrlProvider();
      v71 = OUTLINED_FUNCTION_47_5(v70);
      OUTLINED_FUNCTION_7_16(v71);
      v174 = v16;
      v175 = &protocol witness table for StaticIconUrlProvider;
      v173[0] = v72;
    }

    OUTLINED_FUNCTION_15_3((v2 + 33), v161);
    sub_1BF8D2004((v2 + 33), &v170);
    v74 = v2[46];
    v73 = v2[47];
    v75 = v2[50];
    v145 = v2[51];
    v146 = v75;
    v76 = v2[49];
    v147 = v2[48];
    v148 = v74;
    v150 = v76;
    v77 = *(v153 + 16);
    v78 = v12;
    v79 = v152;
    (v77)(v12, v152, v154);
    v144 = type metadata accessor for TemplateOverrideDialogIdCallback(0);
    OUTLINED_FUNCTION_52_5(v144);
    v80 = OUTLINED_FUNCTION_24_9();
    v149 = sub_1BF900AA8(v80, v81, v82, v74, v73, 1);
    (v77)(v12, v79, v154);
    v143 = v77;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    OUTLINED_FUNCTION_24_9();
    v83 = v144;
    sub_1BF8FF2BC();
    v148 = v84;
    OUTLINED_FUNCTION_42_9();
    v77();

    OUTLINED_FUNCTION_24_9();
    sub_1BF8FF2BC();
    v86 = v85;
    OUTLINED_FUNCTION_42_9();
    v143();
    OUTLINED_FUNCTION_24_9();
    sub_1BF8FF2BC();
    v88 = v87;
    sub_1BF8D2004(&v170, &v168);
    OUTLINED_FUNCTION_51_6();
    OUTLINED_FUNCTION_28_2();
    v89 = swift_allocObject();
    *(v89 + 16) = v86;
    *(v89 + 24) = v158;
    *(v89 + 40) = v83;
    *(v89 + 48) = &off_1F3EF9308;
    OUTLINED_FUNCTION_28_2();
    v90 = swift_allocObject();
    *(v90 + 16) = v88;
    *(v90 + 24) = v167;
    *(v90 + 40) = v83;
    *(v90 + 48) = &off_1F3EF9308;
    v91 = type metadata accessor for ViewCallbacksWrapper();
    v92 = OUTLINED_FUNCTION_68_3(v91);
    v93 = v164;
    v94 = v165;
    v95 = __swift_mutable_project_boxed_opaque_existential_1(&v163, v164);
    OUTLINED_FUNCTION_41_6(v95, v96, v97, v98, v99, v100, v101, v102, v141);
    OUTLINED_FUNCTION_2_0();
    MEMORY[0x1EEE9AC00](v103);
    OUTLINED_FUNCTION_17();
    v105 = OUTLINED_FUNCTION_43_8(v104);
    v106(v105);
    OUTLINED_FUNCTION_58_6();
    v146 = &off_1F3EF9308;
    v147 = v94;
    v144 = v93;
    v145 = &off_1F3EF9308;
    v142 = v83;
    v143 = v83;
    v141 = v92;
    v107 = OUTLINED_FUNCTION_57_7();
    v113 = sub_1BF902974(v107, v108, v109, v110, v111, v90, v112, v78, v141, v142, v143, v144, v145, v146, v147);
    __swift_destroy_boxed_opaque_existential_1Tm(&v163);
    v114 = v151;
    v151[3] = v91;
    v114[4] = &protocol witness table for ViewCallbacksWrapper;
    *v114 = v113;
    goto LABEL_17;
  }

  if (v178 == 1)
  {
    v28 = v177[0];
    OUTLINED_FUNCTION_15_3((v2 + 28), v162);
    sub_1BF981D14((v2 + 28), &v170, &qword_1EBDEA288, &qword_1BF9C5060);
    if (v171)
    {
      sub_1BF8C2C9C(&v170, v173);
    }

    else
    {
      v29 = type metadata accessor for StaticIconUrlProvider();
      v30 = OUTLINED_FUNCTION_47_5(v29);
      OUTLINED_FUNCTION_7_16(v30);
      v174 = v16;
      v175 = &protocol witness table for StaticIconUrlProvider;
      v173[0] = v31;
    }

    OUTLINED_FUNCTION_15_3((v2 + 33), v161);
    sub_1BF8D2004((v2 + 33), &v170);
    v32 = v2[46];
    v33 = v2[47];
    v34 = v2[50];
    v144 = v2[51];
    v145 = v34;
    v35 = v2[49];
    v147 = v2[48];
    v148 = v32;
    v150 = v35;
    v142 = *(v153 + 16);
    (v142)(v12, v14, v154);
    v143 = type metadata accessor for TemplateOverrideCATTemplatingCallback(0);
    OUTLINED_FUNCTION_52_5(v143);
    v36 = v33;
    v37 = v12;
    v149 = sub_1BF900358(v12, v32, v36, 1, v28, *(&v28 + 1));
    OUTLINED_FUNCTION_42_9();
    v38 = v142;
    v142();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    v39 = v143;
    sub_1BF8FEB88();
    v148 = v40;
    OUTLINED_FUNCTION_42_9();
    v38();

    sub_1BF8FEB88();
    v145 = v41;
    OUTLINED_FUNCTION_42_9();
    v38();
    v146 = *(&v28 + 1);

    sub_1BF8FEB88();
    v43 = v42;
    sub_1BF8D2004(&v170, &v168);
    OUTLINED_FUNCTION_51_6();
    OUTLINED_FUNCTION_28_2();
    v44 = swift_allocObject();
    *(v44 + 16) = v145;
    *(v44 + 24) = v158;
    *(v44 + 40) = v39;
    *(v44 + 48) = &off_1F3EF92F0;
    OUTLINED_FUNCTION_28_2();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    *(v45 + 24) = v167;
    *(v45 + 40) = v39;
    *(v45 + 48) = &off_1F3EF92F0;
    v46 = type metadata accessor for ViewCallbacksWrapper();
    v47 = OUTLINED_FUNCTION_68_3(v46);
    v48 = v164;
    v49 = v165;
    v50 = __swift_mutable_project_boxed_opaque_existential_1(&v163, v164);
    OUTLINED_FUNCTION_41_6(v50, v51, v52, v53, v54, v55, v56, v57, v141);
    OUTLINED_FUNCTION_2_0();
    MEMORY[0x1EEE9AC00](v58);
    OUTLINED_FUNCTION_17();
    v60 = OUTLINED_FUNCTION_22_4(v59);
    v61(v60);
    OUTLINED_FUNCTION_58_6();
    v146 = &off_1F3EF92F0;
    v147 = v49;
    v144 = v48;
    v145 = &off_1F3EF92F0;
    v142 = v39;
    v143 = v39;
    v141 = v47;
    v62 = OUTLINED_FUNCTION_57_7();
    v68 = sub_1BF902974(v62, v63, v64, v65, v66, v45, v67, v37, v141, v142, v143, v144, v145, v146, v147);
    __swift_destroy_boxed_opaque_existential_1Tm(&v163);
    v69 = v151;
    v151[3] = v46;
    v69[4] = &protocol witness table for ViewCallbacksWrapper;

    *v69 = v68;
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1Tm(&v170);
    (*(v153 + 8))(v152, v154);
    v115 = v173;
    goto LABEL_20;
  }

  sub_1BF8C2C9C(v177, v173);
  OUTLINED_FUNCTION_15_3((v2 + 28), &v167);
  sub_1BF981D14((v2 + 28), &v168, &qword_1EBDEA288, &qword_1BF9C5060);
  if (v169)
  {
    sub_1BF8C2C9C(&v168, &v170);
  }

  else
  {
    v116 = type metadata accessor for StaticIconUrlProvider();
    v117 = OUTLINED_FUNCTION_47_5(v116);
    OUTLINED_FUNCTION_7_16(v117);
    v171 = v16;
    v172 = &protocol witness table for StaticIconUrlProvider;
    *&v170 = v118;
  }

  OUTLINED_FUNCTION_15_3((v2 + 33), &v166);
  sub_1BF8D2004((v2 + 33), &v168);
  OUTLINED_FUNCTION_51_6();
  OUTLINED_FUNCTION_28_2();
  v119 = swift_allocObject();
  sub_1BF8C2C9C(&v163, v119 + 16);
  OUTLINED_FUNCTION_51_6();
  OUTLINED_FUNCTION_28_2();
  v120 = swift_allocObject();
  sub_1BF8C2C9C(&v163, v120 + 16);
  OUTLINED_FUNCTION_51_6();
  OUTLINED_FUNCTION_28_2();
  v121 = swift_allocObject();
  sub_1BF8C2C9C(&v163, v121 + 16);
  sub_1BF8D2004(v173, v162);
  OUTLINED_FUNCTION_28_2();
  v122 = swift_allocObject();
  sub_1BF8C2C9C(v162, v122 + 16);
  sub_1BF8D2004(&v168, v161);
  sub_1BF8D2004(&v170, &v158);
  v123 = type metadata accessor for ViewCallbacksWrapper();
  v124 = OUTLINED_FUNCTION_68_3(v123);
  v125 = v159;
  v126 = v160;
  v127 = __swift_mutable_project_boxed_opaque_existential_1(&v158, v159);
  OUTLINED_FUNCTION_41_6(v127, v128, v129, v130, v131, v132, v133, v134, v141);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_17();
  v137 = OUTLINED_FUNCTION_22_4(v136);
  v138(v137);
  v157[0] = sub_1BF90322C;
  v157[1] = v119;
  v156[0] = sub_1BF903234;
  v156[1] = v120;
  v139 = sub_1BF902974(v157, v156, sub_1BF90323C, v121, sub_1BF903244, v122, v161, v1, v124, &type metadata for DelegateDialogCallback, &type metadata for DelegateDialogCallback, v125, &off_1F3EF92D8, &off_1F3EF92D8, v126);
  __swift_destroy_boxed_opaque_existential_1Tm(&v158);
  v140 = v151;
  v151[3] = v123;
  v140[4] = &protocol witness table for ViewCallbacksWrapper;
  *v140 = v139;
  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  __swift_destroy_boxed_opaque_existential_1Tm(v173);
  (*(v153 + 8))(v152, v154);
  v115 = &v170;
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1Tm(v115);
  OUTLINED_FUNCTION_64();
}