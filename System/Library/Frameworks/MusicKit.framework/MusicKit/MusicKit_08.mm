unint64_t sub_2172AD8B0()
{
  result = qword_27CB24D38;
  if (!qword_27CB24D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24D30, &qword_217759C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D38);
  }

  return result;
}

uint64_t CloudPivotMetadata.title.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t CloudPivotMetadata.description.getter()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

uint64_t static CloudPivotMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2172ADA1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

uint64_t sub_2172ADAE4(char a1)
{
  sub_2177531E8();
  MEMORY[0x21CEA3550](a1 & 1);
  return sub_217753238();
}

uint64_t sub_2172ADB2C(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_2172ADB70(uint64_t a1)
{
  v2 = *v1;
  sub_2177531E8();
  sub_217230408(v4, v2);
  return sub_217753238();
}

uint64_t sub_2172ADBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172ADA1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172ADBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172ADDCC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2172ADC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172ADDCC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudPivotMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D40, &qword_217759C70);
  OUTLINED_FUNCTION_0_0();
  v15 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = *(v1 + 16);
  v14[1] = *(v1 + 24);
  v14[2] = v9;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2172ADDCC(v10, v11, v12);
  sub_2177532F8();
  v17 = 0;
  sub_217752EF8();
  if (!v2)
  {
    v16 = 1;
    sub_217752EF8();
  }

  return (*(v15 + 8))(v8, v4);
}

unint64_t sub_2172ADDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24D48;
  if (!qword_27CB24D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D48);
  }

  return result;
}

uint64_t CloudPivotMetadata.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudPivotMetadata.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudPivotMetadata.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D50, &qword_217759C78);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2172ADDCC(v11, v12, v13);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    v14 = sub_217752E18();
    v16 = v15;
    v23 = 1;
    v17 = sub_217752E18();
    v19 = v18;
    v20 = *(v7 + 8);
    v22 = v17;
    v20(v10, v5);
    *a2 = v14;
    a2[1] = v16;
    a2[2] = v22;
    a2[3] = v19;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2172AE1B0(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_2177531E8();
  CloudPivotMetadata.hash(into:)(v4);
  return sub_217753238();
}

unint64_t sub_2172AE1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24D58;
  if (!qword_27CB24D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D58);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2172AE25C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2172AE2B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPivotMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2172AE3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24D60;
  if (!qword_27CB24D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D60);
  }

  return result;
}

unint64_t sub_2172AE44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24D68;
  if (!qword_27CB24D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D68);
  }

  return result;
}

unint64_t sub_2172AE4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24D70;
  if (!qword_27CB24D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D70);
  }

  return result;
}

uint64_t BatchNotificationCoalescer.__allocating_init(notifications:batchSize:debounceInterval:)(unint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  BatchNotificationCoalescer.init(notifications:batchSize:debounceInterval:)(a1, a2, a3);
  return v6;
}

uint64_t sub_2172AE558()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 40) = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2172AE5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2171F5110(a3, v24 - v10, &qword_27CB24D78, &qword_217759EA0);
  v12 = sub_217752538();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2171F0738(v11, &qword_27CB24D78, &qword_217759EA0);
  }

  else
  {
    sub_217752528();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_217752498();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_217751FB8() + 32;
      OUTLINED_FUNCTION_28_6();
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_28_6();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t BatchNotificationCoalescer.deinit(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_126(v2 + 32, a2);
  v3 = *(*(v2 + 32) + 16);
  if (v3)
  {
    sub_217751DE8();
    v4 = 32;
    do
    {

      sub_217752558();

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t BatchNotificationCoalescer.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  BatchNotificationCoalescer.deinit(a1, a2);

  return MEMORY[0x2821FE8D8](v2);
}

void sub_2172AE9A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v40 = a1;
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return;
  }

  v7 = v5 + 32;
  sub_217751DE8();
  v8 = 0;
  v9 = 0;
  v37 = v5;
  v35 = v5 + 32;
  while (1)
  {
    v10 = *(v5 + 16);
    if (v6 == v10)
    {
      v11 = *(v5 + 16);
    }

    else
    {
      v11 = v9;
    }

    v9 = v11 - 1;
    if (__OFSUB__(v11, 1))
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      sub_217503624();
      v26 = v34;
      *(v40 + 40) = v34;
LABEL_41:
      if (v9 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v28 = *(v26 + 32 + 8 * v9);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v26 + 32 + 8 * v9) = v28;
        if (!isUniquelyReferenced_nonNull_bridgeObject || v28 < 0 || (v28 & 0x4000000000000000) != 0)
        {
          v28 = sub_217504020();
          *(v26 + 32 + 8 * v9) = v28;
        }

        if ((v2 & 0x8000000000000000) == 0)
        {
          if (v2 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            *((v28 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v8;
            *(v40 + 40) = v26;
            swift_endAccess();

            goto LABEL_51;
          }

          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      return;
    }

    if (v6 > v10)
    {
      goto LABEL_63;
    }

    --v6;
    v12 = *(v7 + 8 * v6);
    v13 = sub_2171F63F0(v12);
    if (v13)
    {
      break;
    }

LABEL_38:
    if (!v6)
    {

      goto LABEL_51;
    }
  }

  v14 = v13;
  v36 = v6;
  v39 = sub_2171F63F0(v12);
  v38 = sub_2171F63F0(v12);
  swift_bridgeObjectRetain_n();
  v2 = 0;
  while (1)
  {
    v15 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v39 == v14)
    {
      if (v12 >> 62)
      {
        v2 = sub_217752D38();
      }

      else
      {
        v2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    if (__OFSUB__(v2--, 1))
    {
      goto LABEL_55;
    }

    if (v15 < 0 || v15 >= v38)
    {
      goto LABEL_56;
    }

    if ((v12 & 0xC000000000000001) == 0)
    {
      break;
    }

    v17 = MEMORY[0x21CEA2E30](v14 - 1, v12);
    if (!v8)
    {
      goto LABEL_22;
    }

LABEL_26:
    if (sub_2177517F8())
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      v22 = *(v40 + 40);
      if (v9 >= *(v22 + 16))
      {
        goto LABEL_58;
      }

      v23 = *(v22 + 8 * v9 + 32);
      v24 = v23 >> 62 ? sub_217752D38() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2 < v24)
      {

        swift_bridgeObjectRelease_n();
        swift_beginAccess();
        v26 = *(v40 + 40);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v40 + 40) = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_41;
      }
    }

    v14 = v15;
    if (!v15)
    {
      swift_bridgeObjectRelease_n();
      v5 = v37;
      v6 = v36;
      v7 = v35;
      goto LABEL_38;
    }
  }

  if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_59;
  }

  v17 = *(v12 + 32 + 8 * v15);

  if (v8)
  {
    goto LABEL_26;
  }

LABEL_22:
  v18 = a2;
  swift_retain_n();
  sub_217751DE8();
  v8 = sub_2172AEE70(1, v12);
  swift_beginAccess();
  v19 = *(v40 + 40);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(v40 + 40) = v19;
  if (v20)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    sub_217503624();
    v19 = v25;
    *(v40 + 40) = v25;
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }
  }

  if (v9 >= *(v19 + 16))
  {
    goto LABEL_61;
  }

  *(v19 + 8 * v9 + 32) = v8;
  *(v40 + 40) = v19;
  swift_endAccess();

  a2 = v18;
  v21 = sub_2177517F8();

  v8 = v17;
  if ((v21 & 1) == 0)
  {
    goto LABEL_26;
  }

  swift_bridgeObjectRelease_n();

  v30 = *(v40 + 40);
  if (v9 >= *(v30 + 16))
  {
    goto LABEL_68;
  }

  if (!sub_217204DD0(*(v30 + 8 * v9 + 32)))
  {
    v31 = *(v40 + 40);
    sub_217751DE8();
    sub_2172AF0BC(1, v31);
    v33 = v32;

    *(v40 + 40) = v33;

    return;
  }

LABEL_51:
}

unint64_t sub_2172AEE70(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a1)
  {
    v18 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    v4 = sub_2171F63F0(a2);
    v17 = 0;
    v5 = 0;
    while (1)
    {
      if (v4 == v5)
      {

        v11 = v19;

        return v11;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CEA2E30](v5, a2);
      }

      else
      {
        if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v6 = *(a2 + 8 * v5 + 32);
      }

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = v18;
      v9 = *(v18 + 16);
      if (v9 >= a1)
      {
        if (v17 >= v9)
        {
          goto LABEL_27;
        }

        sub_217752BC8();
        sub_217752C08();
        sub_217752C18();
        sub_217752BD8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2174923D8();
          v18 = v8;
        }

        if (v17 >= *(v8 + 16))
        {
          goto LABEL_28;
        }

        *(v8 + 8 * v17 + 32) = v6;

        sub_217752BD8();
        if ((v17 + 1) < a1)
        {
          v10 = v17 + 1;
        }

        else
        {
          v10 = 0;
        }

        v17 = v10;
        v5 = v7;
      }

      else
      {
        sub_217752BC8();
        sub_217752C08();
        sub_217752C18();
        sub_217752BD8();
        ++v5;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!(a2 >> 62))
  {
    return a2 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_29:
  v13 = sub_217752D38();
  if (!v13)
  {
LABEL_32:

    return MEMORY[0x277D84F90];
  }

  v14 = v13;
  v11 = sub_2176F7A10();
  sub_217545B8C();
  v16 = v15;

  if (v16 != v14)
  {
    __break(1u);
    goto LABEL_32;
  }

  return v11;
}

void sub_2172AF0BC(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
      return;
    }

    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v6 == v5)
      {

        return;
      }

      if (v5 >= *(a2 + 16))
      {
        break;
      }

      v8 = *(a2 + 8 * v5 + 32);
      v9 = *(v7 + 16);
      if (v9 >= a1)
      {
        if (v4 >= v9)
        {
          goto LABEL_27;
        }

        v12 = *(v7 + 8 * v4 + 32);
        sub_217751DE8();
        v13 = v12;
        sub_217751DE8();
        v14 = v19;
        v18 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2172768C8(0, *(v19 + 16) + 1, 1);
          v14 = v19;
        }

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2172768C8(v15 > 1, v16 + 1, 1);
          v14 = v19;
        }

        *(v14 + 16) = v16 + 1;
        v19 = v14;
        *(v14 + 8 * v16 + 32) = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2174923C0();
          v7 = v17;
        }

        if (v18 >= *(v7 + 16))
        {
          goto LABEL_28;
        }

        ++v5;
        *(v7 + 8 * v18 + 32) = v8;

        if ((v18 + 1) < a1)
        {
          v4 = v18 + 1;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        sub_217751DE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2172768C8(0, v9 + 1, 1);
        }

        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2172768C8(v10 > 1, v11 + 1, 1);
        }

        *(v7 + 16) = v11 + 1;
        *(v7 + 8 * v11 + 32) = v8;
        ++v5;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_2172AF2F0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-v4 - 8];
  v6 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_2171F5110(a2, v10, &qword_27CB24DB0, &qword_217759FE0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_21721E6D0(v10, v7 + 32);
  sub_21765A6D8(0, 0, v5, &unk_217759FF0, v7);
}

uint64_t sub_2172AF410()
{
  OUTLINED_FUNCTION_10();
  Strong = swift_weakLoadStrong();
  *(v0 + 24) = Strong;
  if (Strong)
  {
    sub_217752518();

    *(v0 + 32) = sub_217752508();
    v3 = sub_217752498();

    return MEMORY[0x2822009F8](sub_2172AF4E8, v3, v2);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v4();
  }
}

uint64_t sub_2172AF4E8()
{
  OUTLINED_FUNCTION_10();

  sub_2172AF5B0();

  return MEMORY[0x2822009F8](sub_2172AF558, 0, 0);
}

uint64_t sub_2172AF558()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

double sub_2172AF5B0()
{
  [*(v0 + 56) invalidate];
  v1 = *(v0 + 56);
  *(v0 + 56) = 0;

  v2 = *(v0 + 48);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  OUTLINED_FUNCTION_126(v0 + 40, v4);
  v5 = *(v0 + 40);
  v6 = *(v2 + 16);
  sub_217751DE8();
  os_unfair_lock_unlock(v6);

  sub_2172AF658(v5);
}

void sub_2172AF658(uint64_t a1)
{
  v3 = sub_217751C58();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217751C88();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v34 = v1;
    v35 = v11;
    v36 = v10;
    v37 = v5;
    v14 = *(a1 + 32);
    v15 = sub_2171F63F0(v14);
    if (v15)
    {
      v16 = v15;
      if (v15 < 1)
      {
        __break(1u);
        goto LABEL_26;
      }

      v33 = v3;
      sub_217751DE8();
      for (i = 0; i != v16; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x21CEA2E30](i, v14);
        }

        else
        {
          v18 = *(v14 + 8 * i + 32);
        }

        swift_beginAccess();
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = *(v18 + 24);

          v19(v21);
          sub_2172202A4(v19, v20);
        }
      }

      v3 = v33;
    }

    sub_217751DE8();
    v1 = sub_217285890(1, a1);
    a1 = v22;
    v14 = v23;
    v16 = v24;
    if ((v24 & 1) == 0)
    {
LABEL_13:
      sub_2172C9160(v1, a1, v14, v16);
      v26 = v25;
      goto LABEL_20;
    }

    sub_217753138();
    swift_unknownObjectRetain_n();
    v27 = swift_dynamicCastClass();
    if (!v27)
    {
      swift_unknownObjectRelease();
      v27 = MEMORY[0x277D84F90];
    }

    v28 = *(v27 + 16);

    if (!__OFSUB__(v16 >> 1, v14))
    {
      if (v28 == (v16 >> 1) - v14)
      {
        v26 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v26)
        {
          goto LABEL_21;
        }

        v26 = MEMORY[0x277D84F90];
LABEL_20:
        swift_unknownObjectRelease();
LABEL_21:
        if (*(v26 + 16))
        {
          v29 = MEMORY[0x277D84F90];
          sub_2172B38C0();
          v30 = sub_217752838();
          OUTLINED_FUNCTION_28_6();
          v31 = swift_allocObject();
          *(v31 + 16) = v34;
          *(v31 + 24) = v26;
          aBlock[4] = sub_2172B3904;
          aBlock[5] = v31;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2172B5448;
          aBlock[3] = &block_descriptor_1;
          v32 = _Block_copy(aBlock);

          sub_217751C78();
          aBlock[0] = v29;
          sub_2171FC248(&qword_280BE99E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA8, &qword_217768C60);
          sub_2172B3934();
          sub_217752A08();
          MEMORY[0x21CEA2BA0](0, v13, v8, v32);
          _Block_release(v32);

          (*(v37 + 8))(v8, v3);
          (*(v35 + 8))(v13, v36);
        }

        else
        {
        }

        return;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }
}

uint64_t BatchNotificationCoalescer.Observer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_217751808();
  return v0;
}

uint64_t BatchNotificationCoalescer.Observer.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_217751808();
  return v0;
}

uint64_t sub_2172AFB14@<X0>(uint64_t (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2172AFC64(a2, a3);
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_2172B3A60;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t sub_2172AFBAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_2172B3A38;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_21722063C(v1, v2);
  return sub_2171FF0E4(v4, v3);
}

uint64_t sub_2172AFC64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_126(v2 + 16, a2);
  v3 = *(v2 + 16);
  sub_21722063C(v3, *(v2 + 24));
  return v3;
}

uint64_t BatchNotificationCoalescer.Observer.deinit()
{
  sub_2172202A4(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtCC8MusicKit26BatchNotificationCoalescer8Observer_id;
  sub_217751818();
  OUTLINED_FUNCTION_43();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t BatchNotificationCoalescer.Observer.__deallocating_deinit()
{
  sub_2172202A4(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtCC8MusicKit26BatchNotificationCoalescer8Observer_id;
  sub_217751818();
  OUTLINED_FUNCTION_43();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2172AFE20()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

void sub_2172AFF5C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217500044(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_12_9();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0010()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EE0, &unk_21775A230);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AF10, &unk_217787490);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0100()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EF0, &qword_21775A258);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AEA0, &unk_21775A260);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B01B4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246B8, &qword_217758C28);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AF80, &qword_217758C30);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0270()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB249E0, &qword_217758F88);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28A90, &qword_217758F90);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B032C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244E8, &qword_21775A0B0);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275E0, &qword_2177589D0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B03E8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F10, &qword_21775A308);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDA0, &qword_21775A310);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B049C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24528, &unk_217758A20);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277F0, &unk_21775A2B0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0558()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24548, &qword_217758A50);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24550, &qword_217758A58);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0614()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245D8, &unk_217758B00);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD90, &unk_21775A2C0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B06D0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24698, &qword_217758BF8);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AF60, &qword_217758C00);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B078C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24670, &qword_217758BC8);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24678, &qword_217758BD0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0848()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246E0, &unk_217758C60);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246E8, &qword_21776C140);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0904()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24650, &unk_217758BA0);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28AA0, &qword_21775A020);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B09B8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245F8, &unk_217758B30);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27760, &unk_21775A2D0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0A74()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24588, &qword_217758AA0);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACC0, &qword_217758AA8);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0B30()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DC8, &qword_21775A008);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750009C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD10, &unk_21775A010);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0BF0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DE8, &qword_21775A058);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ADA0, &unk_21775A060);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0CB0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E00, &unk_21775A090);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E08, &qword_2177872B0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0D70()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E58, &qword_21775A128);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E60, &qword_21775A130);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0E60()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DE0, &unk_21775A040);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD90, &unk_217771C70);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B0F44()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E80, &qword_21775A170);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E88, &qword_21775A178);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B1028()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E68, &qword_21775A138);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AF40, &unk_21775A140);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B110C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DF8, &unk_21775A080);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADF0, &qword_217787260);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B11F0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E28, &unk_21775A0D0);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE80, &qword_217787390);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B12D4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EA0, &unk_21775A1A0);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AFB0, &unk_217771CF0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B13B8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E10, &unk_21775A0A0);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE40, &qword_217787300);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B149C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DB8, &qword_217759FF8);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DC0, &qword_21775A000);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B1550()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E30, &unk_21775A0E0);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E38, &unk_217771D50);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B1650()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E18, &qword_21775A0B8);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E20, &unk_21775A0C0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B1704()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E50, &qword_21775A118);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AEF0, &qword_21775A120);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B17C4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E40, &qword_21775A0F0);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E48, &qword_21775A0F8);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B1884()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24F30, &qword_21775A388);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504038(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B199C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_2175000D8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_12_9();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B1AF0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24910, &unk_217758EA0);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504034(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24918, &unk_217768490);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B1BD8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24900, &unk_217758E90);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504034(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24908, &unk_21775A360);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B1C98()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248F0, &unk_217758E80);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504034(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248F8, &unk_21775A370);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B1D58()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248E0, &unk_217758E70);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504034(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248E8, &qword_21775A380);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B1F7C()
{
  OUTLINED_FUNCTION_20_12();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_102_0();
    if (v4)
    {
      v14 = OUTLINED_FUNCTION_179_0(v8, v9, v10, v11, v12, v13);
      v15 = OUTLINED_FUNCTION_187(v14);
      OUTLINED_FUNCTION_225(v15);
      OUTLINED_FUNCTION_83_0();
      *(v4 + 16) = v3;
      *(v4 + 24) = v16;
      if (v2)
      {
LABEL_8:
        v17 = OUTLINED_FUNCTION_104_1();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B2028()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D80, &unk_217759FA0);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_2172268D4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_12_9();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B2118()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24960, &qword_217758EF0);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_13_7(v6);
      OUTLINED_FUNCTION_7_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217500190(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A8, &unk_217758980);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B2338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  OUTLINED_FUNCTION_38_2();
  if ((v12 & 1) == 0)
  {
    v16 = v11;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v17 == v18)
  {
LABEL_7:
    v19 = *(v7 + 16);
    if (v16 <= v19)
    {
      v20 = *(v7 + 16);
    }

    else
    {
      v20 = v16;
    }

    if (v20)
    {
      v21 = OUTLINED_FUNCTION_179_0(v10, v11, v12, v13, v14, v15);
      v22 = OUTLINED_FUNCTION_187(v21);
      _swift_stdlib_malloc_size(v22);
      OUTLINED_FUNCTION_83_0();
      v22[2] = v19;
      v22[3] = v23;
      if (v8)
      {
LABEL_12:
        a7(v7 + 32, v19, v22 + 4);
        *(v7 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    memcpy(v22 + 4, (v7 + 32), 16 * v19);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v17)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B240C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504038(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24850, &qword_217758DE0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B24CC()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA0, &unk_217759FD0);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217500374(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_12_9();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B26A4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245B0, &qword_217758AD8);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245B8, &qword_217758AE0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B2758()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DF0, &qword_21775A070);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504030(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ADC0, &qword_21775A078);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B28A8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E90, &unk_21775A190);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E98, &qword_217787540);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B295C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24638, &unk_21775A100);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27D20, &qword_217758B80);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B2A70()
{
  OUTLINED_FUNCTION_20_12();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_102_0();
    if (v4)
    {
      OUTLINED_FUNCTION_179_0(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_225(v14);
      *(v4 + 16) = v3;
      *(v4 + 24) = 2 * (v15 / 56);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_104_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B2B60()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24890, &unk_217758E20);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24898, &unk_21775A270);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B2C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(unint64_t, uint64_t, unint64_t))
{
  OUTLINED_FUNCTION_38_2();
  if (v15)
  {
    OUTLINED_FUNCTION_6_10();
    if (v17 != v18)
    {
      OUTLINED_FUNCTION_35_0();
      if (v17)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_8();
    }
  }

  else
  {
    v16 = v13;
  }

  v19 = *(v8 + 16);
  v20 = v14(v19, v16);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7) - 8);
  if (v9)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(v8 + v22, v19, v20 + v22);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2172B2D7C()
{
  OUTLINED_FUNCTION_20_12();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_102_0();
    if (v4)
    {
      v14 = OUTLINED_FUNCTION_179_0(v8, v9, v10, v11, v12, v13);
      v15 = OUTLINED_FUNCTION_187(v14);
      OUTLINED_FUNCTION_225(v15);
      OUTLINED_FUNCTION_83_0();
      *(v4 + 16) = v3;
      *(v4 + 24) = v16;
      if (v2)
      {
LABEL_8:
        v17 = OUTLINED_FUNCTION_104_1();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B2E28()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EC8, &unk_21775A1F0);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504038(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B2EE8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EE8, &unk_21775A240);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_13_7(v6);
      OUTLINED_FUNCTION_7_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750047C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24298, &qword_21777CD60);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B2FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  OUTLINED_FUNCTION_38_2();
  if (v13)
  {
    OUTLINED_FUNCTION_6_10();
    if (v15 != v16)
    {
      OUTLINED_FUNCTION_35_0();
      if (v15)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_8();
    }
  }

  else
  {
    v14 = v11;
  }

  v17 = *(v7 + 16);
  v18 = v12(v17, v14);
  v19 = *(a6(0) - 8);
  if (v8)
  {
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    a7(v7 + v20, v17, v18 + v20);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2172B30E0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E78, &qword_21775A160);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504040(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28A40, &qword_21775A168);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B31A0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24E70, &qword_21775A150);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504040(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28A70, &qword_21775A158);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B3260()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24510, &unk_21775A290);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB276C0, &qword_217758A00);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B3314()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24828, &unk_217758DB0);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24830, &qword_217771D40);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B33C8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246D0, &unk_21775A280);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_1_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28090, &qword_217758C50);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B347C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D90, &qword_217759FC0);
      v7 = OUTLINED_FUNCTION_187(v6);
      OUTLINED_FUNCTION_13_7(v7);
      OUTLINED_FUNCTION_7_9(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217230498(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D98, &qword_217759FC8);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B353C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D88, &unk_217759FB0);
      v7 = OUTLINED_FUNCTION_187(v6);
      OUTLINED_FUNCTION_13_7(v7);
      OUTLINED_FUNCTION_7_9(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504014(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B3624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, int64_t, void *))
{
  OUTLINED_FUNCTION_38_2();
  if ((v12 & 1) == 0)
  {
    v16 = v11;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v17 == v18)
  {
LABEL_7:
    v19 = *(v7 + 16);
    if (v16 <= v19)
    {
      v20 = *(v7 + 16);
    }

    else
    {
      v20 = v16;
    }

    if (v20)
    {
      OUTLINED_FUNCTION_179_0(v10, v11, v12, v13, v14, v15);
      v21 = swift_allocObject();
      v22 = _swift_stdlib_malloc_size(v21);
      v21[2] = v19;
      v21[3] = 2 * v22 - 64;
      if (v8)
      {
LABEL_12:
        a7(v7 + 32, v19, v21 + 4);
        *(v7 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    memcpy(v21 + 4, (v7 + 32), v19);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v17)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2172B3758()
{
  OUTLINED_FUNCTION_20_12();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_102_0();
    if (v4)
    {
      OUTLINED_FUNCTION_179_0(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_225(v14);
      OUTLINED_FUNCTION_83_0();
      *(v4 + 16) = v3;
      *(v4 + 24) = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_104_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2172B380C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EA8, &unk_217766C00);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750049C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_12_9();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_2172B38C0()
{
  result = qword_280BE8490;
  if (!qword_280BE8490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE8490);
  }

  return result;
}

unint64_t sub_2172B3934()
{
  result = qword_280BE84B0;
  if (!qword_280BE84B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24DA8, &qword_217768C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE84B0);
  }

  return result;
}

uint64_t sub_2172B39A0()
{
  OUTLINED_FUNCTION_30_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_2172849C8;
  v3 = OUTLINED_FUNCTION_35_3();

  return sub_2172AF3F0(v3, v4, v5, v6);
}

uint64_t Sequence<>.hasSingleElement.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_6();
  v3 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v25[0] = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  OUTLINED_FUNCTION_7();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v25 - v19;
  (*(v9 + 16))(v13, v25[1], a1, v18);
  sub_217752128();
  OUTLINED_FUNCTION_25_0();
  swift_getAssociatedConformanceWitness();
  v21 = 0;
  v22 = (v25[0] + 8);
  while (1)
  {
    sub_217752968();
    OUTLINED_FUNCTION_29_1(v7);
    if (v23)
    {
      (*(v16 + 8))(v20, v14);
      return v21 & 1;
    }

    if (v21)
    {
      break;
    }

    (*v22)(v7, v3);
    v21 = 1;
  }

  (*(v16 + 8))(v20, v14);
  (*v22)(v7, v3);
  v21 = 0;
  return v21 & 1;
}

uint64_t Sequence<>.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_6();
  sub_2177528F8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_0_0();
  v17 = v16;
  OUTLINED_FUNCTION_7();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v26 - v20;
  (*(v10 + 16))(v14, v26[1], a1, v19);
  v22 = a3;
  sub_217752128();
  OUTLINED_FUNCTION_25_0();
  swift_getAssociatedConformanceWitness();
  sub_217752968();
  (*(v17 + 8))(v21, v15);
  v23 = 1;
  OUTLINED_FUNCTION_29_1(v8);
  if (!v24)
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(v22, v8, AssociatedTypeWitness);
    v23 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v22, v23, 1, AssociatedTypeWitness);
}

BOOL Sequence<>.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  Sequence<>.first.getter(a1, &v11 - v5);
  v7 = __swift_getEnumTagSinglePayload(v6, 1, AssociatedTypeWitness) != 1;
  v8 = OUTLINED_FUNCTION_25_0();
  v9(v8);
  return v7;
}

uint64_t Sequence<>.compactMap<A>(batchSize:qos:maxConcurrentTasks:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[19] = a8;
  v9[20] = v8;
  v9[17] = a6;
  v9[18] = a7;
  v9[15] = a4;
  v9[16] = a5;
  v9[13] = a2;
  v9[14] = a3;
  v9[12] = a1;
  v9[21] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v9[22] = v10;
  v9[23] = OUTLINED_FUNCTION_28_7();
  sub_2177528F8();
  v9[24] = OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_0();
  v9[25] = v11;
  v9[26] = OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_20_13();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[27] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_15_3(AssociatedTypeWitness);
  v9[28] = v13;
  v9[29] = OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2172B423C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 200);
  v6 = *(v4 + 208);
  v25 = *(v4 + 176);
  v7 = *(v4 + 160);
  v8 = *(v4 + 136);
  *(v4 + 240) = OUTLINED_FUNCTION_14_11(0, *(v4 + 144), a3, a4);
  *(v4 + 48) = sub_217752338();
  OUTLINED_FUNCTION_9_6();
  *(v4 + 56) = sub_217752338();
  v9 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for Batch(v9, v10, v11, v12);
  OUTLINED_FUNCTION_20_13();
  *(v4 + 64) = sub_217752338();
  (*(v5 + 16))(v6, v7, v8);
  sub_217752128();
  while (1)
  {
    v13 = *(v4 + 192);
    swift_getAssociatedConformanceWitness();
    sub_217752968();
    OUTLINED_FUNCTION_29_1(v13);
    if (v14)
    {
      break;
    }

    v15 = *(v4 + 96);
    (*(v25 + 32))(*(v4 + 184), *(v4 + 192), *(v4 + 168));
    sub_217752418();
    sub_2177523C8();
    v16 = *(v4 + 56);
    if (sub_217752388() == v15)
    {
      *(v4 + 32) = sub_217752388();
      *(v4 + 40) = v16;
      OUTLINED_FUNCTION_20_13();
      sub_217752418();
      sub_217751DE8();
      sub_2177523C8();
      sub_2177523F8();
    }
  }

  (*(*(v4 + 224) + 8))(*(v4 + 232), *(v4 + 216));
  v17 = *(v4 + 56);
  *(v4 + 72) = v17;
  *(v4 + 248) = v17;
  sub_217752418();
  swift_getWitnessTable();
  if ((sub_217752738() & 1) == 0)
  {
    *(v4 + 16) = sub_217752388();
    *(v4 + 24) = v17;
    OUTLINED_FUNCTION_20_13();
    sub_217752418();
    sub_217751DE8();
    sub_2177523C8();
  }

  v18 = *(v4 + 152);
  v20 = *(v4 + 104);
  v19 = *(v4 + 112);
  v21 = swift_task_alloc();
  *(v4 + 256) = v21;
  v22 = *(v4 + 120);
  *(v21 + 16) = *(v4 + 136);
  *(v21 + 32) = v18;
  *(v21 + 40) = v4 + 64;
  *(v21 + 48) = v19;
  *(v21 + 56) = v20;
  *(v21 + 64) = v22;
  *(v21 + 80) = v4 + 48;
  v23 = swift_task_alloc();
  *(v4 + 264) = v23;
  *v23 = v4;
  v23[1] = sub_2172B45A8;

  return MEMORY[0x282200600]();
}

uint64_t sub_2172B45A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2172B46AC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v0[10] = v0[6];
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  sub_217752418();
  sub_217751DE8();
  swift_getWitnessTable();
  v5 = sub_2177521A8();

  v0[11] = v5;
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  sub_217752418();
  swift_getWitnessTable();
  v7 = sub_2177521B8();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_2172B489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v14;
  *(v8 + 144) = v13;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a3;
  *(v8 + 104) = a4;
  *(v8 + 88) = a2;
  v9 = sub_217751C68();
  *(v8 + 168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 + 64);
  *(v8 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2172B49BC, 0, 0);
}

uint64_t sub_2172B49BC()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *v2;
  *(v0 + 208) = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 216) = type metadata accessor for Batch(0, AssociatedTypeWitness, v5, v6);
  sub_217751DE8();
  v7 = sub_2177522A8();
  *(v0 + 80) = v7;
  v8 = (v0 + 80);
  sub_217751DE8();
  v9 = sub_217752388();

  if (v9 < v1)
  {
    v1 = v9;
  }

  if (v1 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1)
  {
    v41 = v3 + 32;
    v42 = *(v0 + 176);
    v40 = *(v0 + 184) + 7;
    while (1)
    {
      v10 = sub_217752388();
      v11 = *v8;
      if (*v8 != v10)
      {
        v12 = sub_217752358();
        sub_2177522D8();
        if ((v12 & 1) == 0)
        {
          OUTLINED_FUNCTION_25_0();
          sub_217752AC8();
          __break(1u);
          goto LABEL_19;
        }

        v14 = *(v0 + 192);
        v13 = *(v0 + 200);
        v15 = *(v0 + 168);
        v43 = v14;
        v47 = v13;
        v48 = *(v0 + 120);
        v16 = *(v0 + 112);
        v49 = *(v0 + 128);
        v17 = (v41 + 16 * v11);
        v46 = *v17;
        v44 = *(v0 + 144);
        v45 = v17[1];
        sub_217751DE8();
        v50 = *(v0 + 152);
        sub_2177523E8();
        v18 = sub_217752538();
        __swift_storeEnumTagSinglePayload(v13, 1, 1, v18);
        (*(v42 + 16))(v14, v16, v15);
        v19 = v3;
        v20 = (*(v42 + 80) + 56) & ~*(v42 + 80);
        v21 = (v40 + v20) & 0xFFFFFFFFFFFFFFF8;
        v22 = swift_allocObject();
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        *(v22 + 32) = v44;
        *(v22 + 40) = v50;
        v23 = v22 + v20;
        v3 = v19;
        (*(v42 + 32))(v23, v43, v15);
        v24 = (v22 + v21);
        *v24 = v46;
        v24[1] = v45;
        v25 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v25 = v48;
        v25[1] = v49;
        OUTLINED_FUNCTION_14_11(255, v50, v26, v27);
        v28 = sub_2177524D8();

        sub_2172B548C(v47, &unk_21775A408, v22, v28);
        sub_2172B5F50(v47);
      }

      if (!--v1)
      {
        v7 = *v8;
        break;
      }
    }
  }

  if (v7 == sub_217752388())
  {

    v29 = swift_task_alloc();
    OUTLINED_FUNCTION_7_10(v29, v30, v31, v32);
    OUTLINED_FUNCTION_16_14();
    *v1 = v33;
    OUTLINED_FUNCTION_1_15();
    goto LABEL_15;
  }

  v34 = *(v0 + 208);
  v35 = sub_217752358();
  sub_2177522D8();
  if ((v35 & 1) == 0)
  {
LABEL_20:
    sub_217752AC8();
    __break(1u);
    return MEMORY[0x2822002D0]();
  }

  OUTLINED_FUNCTION_17_8();
  sub_2177523E8();
  v36 = swift_task_alloc();
  *(v0 + 240) = v36;
  *(v0 + 248) = OUTLINED_FUNCTION_14_11(255, v34, v37, v38);
  *(v0 + 256) = sub_2177524D8();
  *v36 = v0;
  OUTLINED_FUNCTION_5_15();
LABEL_15:
  OUTLINED_FUNCTION_4_25();

  return MEMORY[0x2822002D0]();
}

uint64_t sub_2172B4DA8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2172B4E90()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 72) = v1;
    sub_217752418();
    sub_2177523C8();
  }

  v30 = *(v0 + 224);
  v31 = *(v0 + 232);
  v32 = *(v0 + 256);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 128);
  v28 = *(v0 + 160);
  v29 = *(v0 + 120);
  v8 = *(v0 + 112);
  v9 = sub_217752538();
  v27 = *(v0 + 144);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  (*(v4 + 16))(v3, v8, v6);
  v10 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v11 = (v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v27;
  *(v12 + 48) = v28;
  (*(v4 + 32))(v12 + v10, v3, v6);
  v13 = (v12 + v11);
  *v13 = v30;
  v13[1] = v31;
  v14 = (v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v14 = v29;
  v14[1] = v7;

  sub_2172B548C(v2, &unk_21775A418, v12, v32);
  sub_2172B5F50(v2);
  v15 = sub_217752388();
  v16 = *(v0 + 208);
  if (*(v0 + 80) == v15)
  {

    v17 = swift_task_alloc();
    OUTLINED_FUNCTION_7_10(v17, v18, v19, v20);
    OUTLINED_FUNCTION_16_14();
    *v16 = v21;
    OUTLINED_FUNCTION_1_15();
  }

  else
  {
    v22 = sub_217752358();
    sub_2177522D8();
    if ((v22 & 1) == 0)
    {
      sub_217752AC8();
      __break(1u);
      return MEMORY[0x2822002D0]();
    }

    OUTLINED_FUNCTION_17_8();
    sub_2177523E8();
    v23 = swift_task_alloc();
    *(v0 + 240) = v23;
    *(v0 + 248) = OUTLINED_FUNCTION_14_11(255, v22, v24, v25);
    *(v0 + 256) = sub_2177524D8();
    *v23 = v0;
    OUTLINED_FUNCTION_5_15();
  }

  OUTLINED_FUNCTION_4_25();

  return MEMORY[0x2822002D0]();
}

uint64_t sub_2172B5158()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2172B5240()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[5];
  if (v1)
  {
    v0[6] = v0[4];
    v0[7] = v1;
    sub_217752418();
    sub_2177523C8();
    v2 = swift_task_alloc();
    OUTLINED_FUNCTION_7_10(v2, v3, v4, v5);
    OUTLINED_FUNCTION_16_14();
    v0[6] = v6;
    OUTLINED_FUNCTION_1_15();
    OUTLINED_FUNCTION_4_25();

    return MEMORY[0x2822002D0]();
  }

  else
  {

    OUTLINED_FUNCTION_20_0();

    return v7();
  }
}

uint64_t sub_2172B5324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 64) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2172B5360, 0, 0);
}

uint64_t sub_2172B5360()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_8_15(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_23_13(v3, v4, v5, v6, v7, v8, v9, v10, v13);
  *v1 = v11;
  v1[1] = sub_2172B6624;
  OUTLINED_FUNCTION_4_25();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2172B5448(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2172B548C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  sub_2172B6210(a1, v21 - v11);
  v13 = sub_217752538();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2172B5F50(v12);
  }

  else
  {
    sub_217752528();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_217752498();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v5;
  v18 = swift_allocObject();
  v18[2] = *(a4 + 16);
  v18[3] = a2;
  v18[4] = a3;
  v19 = (v16 | v14);
  if (v16 | v14)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v14;
    v22[3] = v16;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v17;
  swift_task_create();
}

uint64_t sub_2172B5668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 64) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2172B56A4, 0, 0);
}

uint64_t sub_2172B56A4()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_8_15(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_23_13(v3, v4, v5, v6, v7, v8, v9, v10, v13);
  *v1 = v11;
  v1[1] = sub_2172B578C;
  OUTLINED_FUNCTION_4_25();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2172B578C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2172B5888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48 = a7;
  v49 = a6;
  v52 = a12;
  v50 = a5;
  v51 = a11;
  v46 = a9;
  v47 = a3;
  v45 = a10;
  v53 = sub_217751C58();
  OUTLINED_FUNCTION_0_0();
  v56 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  sub_217751C88();
  OUTLINED_FUNCTION_0_0();
  v54 = v21;
  v55 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_14_11(255, a8, v25, v26);
  v27 = sub_2177524B8();
  OUTLINED_FUNCTION_0_0();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v43 - v31;
  sub_2172B38C0();
  v44 = sub_217752858();
  (*(v29 + 16))(v32, a1, v27);
  v33 = (*(v29 + 80) + 72) & ~*(v29 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = v48;
  *(v34 + 3) = a8;
  v35 = v47;
  *(v34 + 4) = v46;
  *(v34 + 5) = v35;
  v37 = v49;
  v36 = v50;
  *(v34 + 6) = a4;
  *(v34 + 7) = v36;
  *(v34 + 8) = v37;
  (*(v29 + 32))(&v34[v33], v32, v27);
  aBlock[4] = v51;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2172B5448;
  aBlock[3] = v52;
  v38 = _Block_copy(aBlock);
  sub_217751DE8();

  sub_217751C78();
  v57 = MEMORY[0x277D84F90];
  sub_2172B61B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA8, &qword_217768C60);
  sub_2172B3934();
  v39 = v53;
  sub_217752A08();
  v40 = OUTLINED_FUNCTION_20_13();
  v41 = v44;
  MEMORY[0x21CEA2BA0](v40);
  _Block_release(v38);

  (*(v56 + 8))(v19, v39);
  (*(v54 + 8))(v24, v55);
}

uint64_t sub_2172B5BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  sub_217752418();
  sub_217751DE8();
  swift_getWitnessTable();
  sub_217752148();

  OUTLINED_FUNCTION_14_11(255, a7, v9, v10);
  sub_2177524B8();
  return sub_2177524A8();
}

uint64_t sub_2172B5D1C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_10();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2172849C8;
  OUTLINED_FUNCTION_22_10();

  return sub_2172B489C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2172B5E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2172B5F50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_217751C68();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_2172B61B8()
{
  result = qword_280BE99E8;
  if (!qword_280BE99E8)
  {
    sub_217751C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE99E8);
  }

  return result;
}

uint64_t sub_2172B6210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2172B6280(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2172AFE20;

  return v6(a1);
}

uint64_t sub_2172B6378(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_217282D8C;

  return sub_2172B6280(a1, v4);
}

uint64_t objectdestroy_12Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_11(255, *(v4 + 24), a3, a4);
  v5 = sub_2177524B8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  v8 = (*(v6 + 80) + 72) & ~*(v6 + 80);

  (*(v7 + 8))(v4 + v8, v5);

  return MEMORY[0x2821FE8E8](v4);
}

uint64_t sub_2172B6588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  OUTLINED_FUNCTION_14_11(255, v6, a3, a4);
  v8 = *(sub_2177524B8() - 8);
  return sub_2172B5BF4(v4[5], v4[6], v4[7], v4[8], v4 + ((*(v8 + 80) + 72) & ~*(v8 + 80)), v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_217751C68();
}

void sub_2172B66CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_217275C90(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_2172B83A4(v8);
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v8 + 56;
    v35 = v8;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v8 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v8 + 36) != v9)
        {
          goto LABEL_25;
        }

        v38 = v10;
        v36 = v12;
        v37 = v9;
        v15 = (*(v8 + 48) + 16 * v11);
        v16 = *v15;
        v17 = v15[1];
        v19 = *(v39 + 16);
        v18 = *(v39 + 24);
        sub_217751DE8();
        if (v19 >= v18 >> 1)
        {
          sub_217275C90(v18 > 1, v19 + 1, 1, v20, v21, v22, v23);
        }

        *(v39 + 16) = v19 + 1;
        v24 = v39 + 16 * v19;
        *(v24 + 32) = v16;
        *(v24 + 40) = v17;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v34;
        v8 = v35;
        v25 = 1 << *(v35 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v34 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v35 + 36) != v37)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v33 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_2172A54C8(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_2172A54C8(v11, v37, 0);
        }

LABEL_19:
        v12 = v36 + 1;
        if (v36 + 1 == v7)
        {
          return;
        }

        v10 = 0;
        v9 = *(v35 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_2172B6904(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v242 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = *a3;
  LODWORD(v11) = *a4;
  v255 = xmmword_21775A430;
  v262 = xmmword_21775A430;
  v260 = &v262;
  v243 = v10;
  if (!sub_2173DD938())
  {
    OUTLINED_FUNCTION_14_12();
    v221 = 36;
    goto LABEL_133;
  }

  *&v257 = [a1 musicKit_catalogID];
  v12 = [a1 musicKit_libraryID];
  if (v12)
  {
    v13 = v12;
    v256 = sub_217751F48();
    v258 = v14;
  }

  else
  {
    v256 = 0;
    v258 = 0;
  }

  *&v259 = a1;
  v15 = [a1 musicKit_cloudAlbumLibraryID];
  if (v15)
  {
    v16 = v15;
    v17 = sub_217751F48();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v251 = [v259 musicKit_deviceLocalID];
  v20 = [v259 musicKit_occurrenceID];
  if (v20)
  {
    v21 = v20;
    v241 = sub_217751F48();
    v23 = v22;
  }

  else
  {
    v241 = 0;
    v23 = 0;
  }

  *&v262 = v7;
  *(&v262 + 1) = v242;
  *&v263 = v9;
  *(&v263 + 1) = v8;
  LOBYTE(v261) = v11;
  v24 = static MusicIdentifierSet.preferredIdentifierKinds(for:libraryID:preferredIdentifierKind:)(&v262, v256, v258, &v261);
  v25 = v24;
  v26 = v24[2];
  v240 = v7;
  v234 = v9;
  v252 = v8;
  if (!v26)
  {
LABEL_27:

LABEL_28:

LABEL_29:

    v19 = &v221;
    v262 = xmmword_21775A440;
    MEMORY[0x28223BE20](v29);
    OUTLINED_FUNCTION_11_4();
    *(v30 - 16) = &v262;
    v33 = OUTLINED_FUNCTION_13_11(v31, v32);
    v25 = v259;
    if (v33 || (v19 = &v221, v262 = v255, MEMORY[0x28223BE20](v33), OUTLINED_FUNCTION_11_4(), *(v41 - 16) = &v262, v44 = OUTLINED_FUNCTION_13_11(v42, v43)) && (v262 = xmmword_21775A450, MEMORY[0x28223BE20](v44), OUTLINED_FUNCTION_11_4(), *(v45 - 16) = &v262, !OUTLINED_FUNCTION_13_11(v46, v47)))
    {
      v34 = [v25 musicKit_playbackID];
      if (v34)
      {
        v35 = v34;
        v17 = sub_217751F48();
        v37 = v36;

        sub_217751DE8();
        sub_217751DE8();

        v38 = OUTLINED_FUNCTION_4_4();
        sub_2172B8404(v38, v39);
        OUTLINED_FUNCTION_1_16();
        v253 = 0;
        v254 = 0;
        *&v255 = 0;
        OUTLINED_FUNCTION_0_18();
        v23 = 0;
        v232 = 0;
        v238 = v17;
        v233 = v37;
        v244 = v37;
        v9 = 0;
        goto LABEL_78;
      }
    }

    v48 = [v25 musicKit_playbackID];
    v8 = &selRef_musicKit_playbackID;
    if (!v48)
    {
LABEL_52:
      if (qword_280BE90D0 == -1)
      {
        goto LABEL_53;
      }

      goto LABEL_131;
    }

    v49 = v48;
    v17 = sub_217751F48();
    v23 = v50;

    v51 = [v25 musicKit_identifierSetSources];
    if (v51)
    {
      v52 = v51;
      v19 = sub_217752298();

      if (*(v19 + 16))
      {
        v9 = 0xD000000000000010;
        v54 = *(v19 + 32);
        v53 = *(v19 + 40);
        sub_217751DE8();

        if (v54 == 0xD000000000000010 && 0x80000002177AB6E0 == v53)
        {

          v25 = v259;
        }

        else
        {
          v19 = sub_217753058();

          v9 = v234;
          v25 = v259;
          if ((v19 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        OUTLINED_FUNCTION_9_13();
        sub_217751DE8();
        sub_217751DE8();

        v112 = OUTLINED_FUNCTION_4_4();
        sub_2172B8404(v112, v113);
        OUTLINED_FUNCTION_1_16();
        OUTLINED_FUNCTION_5_16();
        OUTLINED_FUNCTION_0_18();
        v114 = v23;
        v23 = 0;
        v232 = 0;
        v238 = v17;
        v233 = v114;
        v244 = v114;
        goto LABEL_78;
      }
    }

LABEL_51:

    goto LABEL_52;
  }

  v27 = 1 - v26;
  v28 = 32;
  while (2)
  {
    if (v27 == 1)
    {
      __break(1u);
LABEL_131:
      swift_once();
LABEL_53:
      v97 = v9 == qword_280BE90E8 && v252 == unk_280BE90F0;
      if (v97 || (sub_217753058() & 1) != 0)
      {
        v98 = [v25 musicKit_containedDeviceLocalID];
        if (v98)
        {
          v99 = v98;
          *&v262 = [v99 value];
          v17 = sub_217752FC8();
          v101 = v100;
          v19 = [v99 databaseID];
          v249 = sub_217751F48();
          v248 = v102;

          OUTLINED_FUNCTION_9_13();
          sub_217751DE8();
          sub_217751DE8();

          v103 = OUTLINED_FUNCTION_4_4();
          sub_2172B8404(v103, v104);

          OUTLINED_FUNCTION_1_16();
          OUTLINED_FUNCTION_5_16();
          v241 = 0;
          OUTLINED_FUNCTION_3_24();
          OUTLINED_FUNCTION_8_16();
          v247 = v17;
          v233 = v101;
          v245 = v101;
          goto LABEL_78;
        }
      }

      OUTLINED_FUNCTION_9_13();
      sub_217751DE8();
      sub_217751DE8();
      if (([v25 musicKit_hasValidIdentifier] & 1) == 0)
      {
        v105 = [v25 v8[1]];
        if (v105)
        {
          v106 = v105;
          v107 = sub_217752298();

          if (v107[2])
          {
            v19 = 0x6D6552616964654DLL;
            v109 = v107[4];
            v108 = v107[5];
            sub_217751DE8();

            if (v109 == 0x6D6552616964654DLL && v108 == 0xEB0000000065746FLL)
            {

              v17 = 0;
              OUTLINED_FUNCTION_7_11();
              OUTLINED_FUNCTION_2_22();
              OUTLINED_FUNCTION_0_18();
              OUTLINED_FUNCTION_3_24();
              OUTLINED_FUNCTION_10_11();
              goto LABEL_49;
            }

            v111 = sub_217753058();

            v25 = v259;
            if (v111)
            {
              goto LABEL_77;
            }
          }

          else
          {
          }
        }
      }

      if (qword_280BE8358 != -1)
      {
        swift_once();
      }

      v115 = sub_217751AF8();
      __swift_project_value_buffer(v115, qword_280C02570);
      sub_217751DE8();
      v116 = v259;
      swift_unknownObjectRetain();
      v117 = sub_217751AD8();
      v19 = sub_217752808();
      v25 = v116;

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v117, v19))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        *v118 = 136315394;
        v261 = v119;
        *&v262 = v259;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24F40, &unk_21775A460);
        v120 = sub_217751FA8();
        v122 = sub_21729C0E8(v120, v121, &v261);

        *(v118 + 4) = v122;
        *(v118 + 12) = 2080;
        *&v262 = v240;
        *(&v262 + 1) = v242;
        *&v263 = v234;
        *(&v263 + 1) = v252;
        v123 = MusicItemTypeValue.debugDescription.getter();
        v9 = sub_21729C0E8(v123, v124, &v261);

        *(v118 + 14) = v9;
        _os_log_impl(&dword_2171EE000, v117, v19, "No catalogID, libraryID, or deviceLocalID was found from underlying identifier set %s. A MusicIdentifierSet with empty string, for type %s, is being used.", v118, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEA4360](v119, -1, -1);
        v125 = v118;
        v25 = v259;
        MEMORY[0x21CEA4360](v125, -1, -1);
      }

LABEL_77:
      v17 = 0;
      OUTLINED_FUNCTION_7_11();
      OUTLINED_FUNCTION_2_22();
      OUTLINED_FUNCTION_0_18();
      OUTLINED_FUNCTION_3_24();
      OUTLINED_FUNCTION_10_11();
      goto LABEL_78;
    }

    switch(*(v24 + v28))
    {
      case 1:
        if (!v251)
        {
          goto LABEL_25;
        }

        v56 = v251;
        *&v262 = [v56 value];
        v17 = sub_217752FC8();
        v9 = v57;
        v58 = [v56 databaseID];
        v59 = sub_217751F48();
        v254 = v60;
        *&v255 = v59;

        swift_bridgeObjectRetain_n();

        OUTLINED_FUNCTION_9_13();
        sub_217751DE8();

        v61 = OUTLINED_FUNCTION_4_4();
        sub_2172B8404(v61, v62);
        OUTLINED_FUNCTION_1_16();
        OUTLINED_FUNCTION_0_18();
        OUTLINED_FUNCTION_3_24();
        OUTLINED_FUNCTION_8_16();
        v253 = v17;
        v233 = v9;
        goto LABEL_49;
      case 2:
        if (v258)
        {
          swift_bridgeObjectRetain_n();

          v232 = 1;
          OUTLINED_FUNCTION_6();
          sub_2172B8448(v79, v80, v81, v82, 1u);

          sub_217751DE8();
          OUTLINED_FUNCTION_6();
          sub_2172B84C4(v83, v84, v85, v86, 1u);

          sub_217751DE8();
          swift_bridgeObjectRelease_n();
          v244 = 0;
          v238 = 0;
          v23 = 0;
          v241 = 0;
          v248 = 0;
          v249 = 0;
          v245 = 0;
          v247 = 0;
          v254 = 0;
          *&v255 = 0;
          v9 = 0;
          v253 = 0;
          v19 = 0;
          v239 = 0;
          v7 = 0;
          OUTLINED_FUNCTION_7_11();
          v233 = v258;
          v231 = v256;
          v25 = v259;
          goto LABEL_81;
        }

        if (v19)
        {

          sub_217751DE8();
          sub_217751DE8();

          OUTLINED_FUNCTION_7_11();
          v7 = 0;
          OUTLINED_FUNCTION_5_16();
          OUTLINED_FUNCTION_0_18();
          OUTLINED_FUNCTION_3_24();
          OUTLINED_FUNCTION_8_16();
          v233 = v19;
          v239 = v17;
          goto LABEL_49;
        }

        if (!v27)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      case 3:
        if (v23)
        {
          sub_217751DE8();

          v17 = v241;
          OUTLINED_FUNCTION_6();
          sub_2172B8448(v87, v88, v89, v90, 4u);

          sub_217751DE8();
          OUTLINED_FUNCTION_6();
          sub_2172B84C4(v91, v92, v93, v94, 4u);

          v95 = OUTLINED_FUNCTION_4_4();
          sub_2172B8404(v95, v96);
          OUTLINED_FUNCTION_1_16();
          OUTLINED_FUNCTION_5_16();
          v247 = 0;
          v245 = 0;
          v249 = 0;
          v248 = 0;
          v238 = 0;
          v244 = 0;
          OUTLINED_FUNCTION_8_16();
          v233 = v23;
          goto LABEL_49;
        }

        if (!v27)
        {

          v23 = v19;
          goto LABEL_29;
        }

        goto LABEL_26;
      default:
        if (!v257)
        {
LABEL_25:
          if (!v27)
          {
            goto LABEL_27;
          }

LABEL_26:
          ++v27;
          ++v28;
          continue;
        }

        v63 = v257;
        v64 = [v63 value];
        v17 = sub_217751F48();
        v66 = v65;

        v67 = [v63 kind];
        v68 = v67 == 8;
        if (v67 >= 8)
        {
          while (1)
          {
            if (v68)
            {
              OUTLINED_FUNCTION_14_12();
              v221 = 49;
            }

LABEL_133:
            sub_217752D08();
            __break(1u);
          }
        }

        v7 = v67;

        sub_217751DE8();

        v69 = OUTLINED_FUNCTION_12_10();
        sub_2172B8448(v69, v70, v71, v72, v73);

        OUTLINED_FUNCTION_9_13();
        sub_217751DE8();
        v74 = OUTLINED_FUNCTION_12_10();
        sub_2172B84C4(v74, v75, v76, v77, v78);

        v239 = 0;
        v19 = 0;
        v253 = 0;
        v254 = 0;
        *&v255 = 0;
        OUTLINED_FUNCTION_0_18();
        OUTLINED_FUNCTION_3_24();
        v232 = 0;
        v237 = v17;
        v233 = v66;
        v40 = v66;
        v9 = 0;
LABEL_49:
        v25 = v259;
LABEL_78:
        v126 = v256;
        if (!v258)
        {
          v126 = 0;
        }

        v231 = v126;
        v256 = v17;
LABEL_81:
        v250 = v19;
        if (v40)
        {
          v127 = v240;
        }

        else
        {
          v127 = v240;
          if (v257)
          {
            sub_21750DA18(v257, &v262);
            v237 = v262;
            v7 = v263;
          }
        }

        OUTLINED_FUNCTION_15_8();
        v230 = v130;
        if (v9 || !v128)
        {
          v246 = v9;
        }

        else
        {
          v131 = v128;
          *&v262 = [v131 value];
          v132 = sub_217752FC8();
          v246 = v133;
          v134 = [v131 databaseID];
          v135 = sub_217751F48();
          v137 = v136;

          v25 = v259;
          v129 = sub_2172B8404(v253, 0);
          v253 = v132;
          v254 = v137;
          *&v255 = v135;
        }

        v138 = [v25 musicKit_cloudID];
        if (v138)
        {
          *&v262 = v138;
          v229 = sub_217752FC8();
          v139 = OUTLINED_FUNCTION_16_15(v140, &v257 + 8);
        }

        else
        {
          v229 = 0;
          v228 = 0;
        }

        v141 = [v25 musicKit_cloudAlbumLibraryID];
        if (v141)
        {
          v142 = v141;
          v239 = sub_217751F48();
          v144 = v143;

          v250 = v144;
        }

        v145 = [v25 musicKit_reportingAdamID];
        if (v145)
        {
          *&v262 = v145;
          v227 = sub_217752FC8();
          v146 = OUTLINED_FUNCTION_16_15(v147, &v256);
        }

        else
        {
          v227 = 0;
          v226 = 0;
        }

        v148 = [v25 musicKit_purchasedAdamID];
        if (v148)
        {
          *&v262 = v148;
          v225 = sub_217752FC8();
          v149 = OUTLINED_FUNCTION_16_15(v150, &v255 + 8);
        }

        else
        {
          v225 = 0;
          v224 = 0;
        }

        v151 = [v25 musicKit_assetAdamID];
        if (v151)
        {
          *&v262 = v151;
          v223 = sub_217752FC8();
          v152 = OUTLINED_FUNCTION_16_15(v153, &v254);
        }

        else
        {
          v223 = 0;
          v222 = 0;
        }

        v235 = v23;
        v154 = [v25 musicKit_deviceLocalID];
        if (v154)
        {
          v155 = v154;
          *&v262 = [v154 value];
          v156 = sub_217752FC8();
          v158 = v157;
          v159 = [v155 databaseID];
          v160 = sub_217751F48();
          v162 = v161;

          sub_2172B8404(v253, v246);
          v253 = v156;
          v246 = v158;
          v25 = v259;
          v254 = v162;
          *&v255 = v160;
        }

        v163 = [v25 musicKit_formerIDs];
        v236 = v7;
        if (v163)
        {
          v165 = v163;
          v166 = sub_217752298();

          v167 = *(v166 + 16);
          if (v167)
          {
            LODWORD(v221) = v11;
            *&v262 = MEMORY[0x277D84F90];
            sub_217276568(0, v167, 0);
            v168 = v262;
            v169 = (v166 + 40);
            do
            {
              v171 = *(v169 - 1);
              v170 = *v169;
              *&v262 = v168;
              v172 = *(v168 + 16);
              v173 = *(v168 + 24);
              sub_217751DE8();
              if (v172 >= v173 >> 1)
              {
                sub_217276568(v173 > 1, v172 + 1, 1);
                v168 = v262;
              }

              *(v168 + 16) = v172 + 1;
              v174 = v168 + 16 * v172;
              *(v174 + 32) = v171;
              *(v174 + 40) = v170;
              v169 += 2;
              --v167;
            }

            while (v167);

            LOBYTE(v11) = v221;
            v127 = v240;
            v25 = v259;
            LOBYTE(v7) = v236;
          }

          else
          {

            v168 = MEMORY[0x277D84F90];
          }

          sub_2173B1C18(v168, v175, v176);
          v177 = v178;
        }

        else
        {
          v177 = MEMORY[0x277D84FA0];
        }

        v179 = [v25 musicKit_containedDeviceLocalID];
        if (v179)
        {
          v180 = v179;
          *&v262 = [v179 value];
          v181 = sub_217752FC8();
          v183 = v182;
          v184 = [v180 databaseID];
          v185 = sub_217751F48();
          v7 = v186;

          sub_2172B8404(v247, v245);
          v247 = v181;
          v245 = v183;
          v25 = v259;
          v249 = v185;
          v248 = v7;
          LOBYTE(v7) = v236;
        }

        v187 = v235;
        v188 = [v25 musicKit_playbackID];
        if (v188)
        {
          v189 = v188;
          v238 = sub_217751F48();
          v191 = v190;

          v244 = v191;
        }

        v192 = [v25 musicKit_syncID];
        if (v192)
        {
          *&v262 = v192;
          v193 = sub_217752FC8();
          v195 = v194;
          OUTLINED_FUNCTION_9_13();
        }

        else
        {
          OUTLINED_FUNCTION_9_13();

          v193 = 0;
          v195 = 0;
        }

        if (dynamic_cast_existential_1_conditional(v127, v127, &protocol descriptor for SupportedMusicItemTypeValuesVending))
        {
          v197 = v196;
          v221 = v195;
          v198 = [v259 musicKit_modelKind];
          if (v198)
          {
            v199 = v11;
            v11 = *(v197 + 16);
            v200 = v198;
            v11(&v262);
            v127 = v240;
            LOBYTE(v11) = v199;
            LOBYTE(v7) = v236;
            swift_unknownObjectRelease();

            v187 = v235;
            OUTLINED_FUNCTION_15_8();

            v259 = v262;
            v257 = v263;
            v202 = OUTLINED_FUNCTION_4_4();
            sub_2172AC65C(v202);
            v203 = v257;
            v204 = v259;
          }

          else
          {
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_15_8();

            v204 = 0uLL;
            v203 = 0uLL;
          }

          v195 = v221;
        }

        else
        {
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_15_8();

          v204 = 0uLL;
          v203 = 0uLL;
        }

        v207 = v233;
        *a5 = v256;
        *(a5 + 8) = v207;
        v208 = v230;
        *(a5 + 16) = v237;
        *(a5 + 24) = v208;
        *(a5 + 32) = v7;
        v209 = v258;
        *(a5 + 40) = v231;
        *(a5 + 48) = v209;
        v210 = v250;
        *(a5 + 56) = v239;
        *(a5 + 64) = v210;
        v211 = v228;
        *(a5 + 72) = v229;
        *(a5 + 80) = v211;
        v212 = v226;
        *(a5 + 88) = v227;
        *(a5 + 96) = v212;
        v213 = v224;
        *(a5 + 104) = v225;
        *(a5 + 112) = v213;
        v214 = v222;
        *(a5 + 120) = v223;
        *(a5 + 128) = v214;
        v215 = v246;
        *(a5 + 136) = v253;
        *(a5 + 144) = v215;
        v216 = v254;
        *(a5 + 152) = v255;
        *(a5 + 160) = v216;
        v217 = v245;
        *(a5 + 168) = v247;
        *(a5 + 176) = v217;
        v218 = v248;
        *(a5 + 184) = v249;
        *(a5 + 192) = v218;
        *(a5 + 200) = v241;
        *(a5 + 208) = v187;
        *(a5 + 216) = v193;
        *(a5 + 224) = v195;
        v219 = v244;
        *(a5 + 232) = v238;
        *(a5 + 240) = v219;
        *(a5 + 248) = 0;
        *(a5 + 256) = 0;
        *(a5 + 264) = v177;
        *(a5 + 272) = v232;
        *(a5 + 280) = v243;
        *(a5 + 288) = v127;
        v220 = v234;
        *(a5 + 296) = v242;
        *(a5 + 304) = v220;
        *(a5 + 312) = v252;
        *(a5 + 320) = v204;
        *(a5 + 336) = v203;
        *(a5 + 352) = v11;
        return;
    }
  }
}

id sub_2172B7F78(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[8];
  v4 = v1[10];
  v5 = v1[12];
  v6 = v1[14];
  v7 = v1[16];
  v8 = v1[18];
  v30 = v1[22];
  v28 = v1[26];
  v32 = v1[28];
  v34 = v1[30];
  v36 = v1[33];
  if (v1[3])
  {
    sub_217751DE8();
    v41 = sub_21750D924();

    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v41 = 0;
    if (v2)
    {
LABEL_3:
      v40 = sub_217751F18();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v40 = 0;
  if (v3)
  {
LABEL_4:
    v37 = sub_217751F18();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v37 = 0;
  if (v4)
  {
LABEL_5:
    v35 = sub_217751F18();
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v35 = 0;
  if (v5)
  {
LABEL_6:
    v33 = sub_217751F18();
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v33 = 0;
  if (v6)
  {
LABEL_7:
    v31 = sub_217751F18();
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_16:
    v29 = 0;
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v31 = 0;
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_8:
  v29 = sub_217751F18();
  if (v8)
  {
LABEL_9:
    sub_217751DE8();
    sub_217751DE8();
    sub_21725D480();
    v27 = v9;

    goto LABEL_18;
  }

LABEL_17:
  v27 = 0;
LABEL_18:
  if (v28)
  {
    v10 = sub_217751F18();
  }

  else
  {
    v10 = 0;
  }

  if (v30)
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_21725D480();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v32)
  {
    v13 = sub_217751F18();
  }

  else
  {
    v13 = 0;
  }

  if (v34)
  {
    v14 = sub_217751F18();
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_opt_self();
  sub_2172B66CC(v36, v16, v17, v18, v19, v20, v21);
  v23 = v22;
  v24 = sub_2173AAFE0();
  *&v26 = v10;
  *(&v26 + 1) = v12;
  v39 = sub_2172B82C8(v41, v40, v37, v35, v33, v31, v29, v27, v26, v13, v14, v23, a1, v24, v15);

  return v39;
}

id sub_2172B82C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = sub_217752288();

  v19 = [a15 identifierSetWithCatalogID:a1 libraryID:a2 cloudAlbumLibraryID:a3 cloudID:a4 reportingAdamID:a5 purchasedAdamID:a6 assetAdamID:a7 deviceLocalID:a8 occurrenceID:a9 containedDeviceLocalID:a10 syncID:a11 playbackID:v18 formerIDs:a13 modelObjectType:a14 source:?];

  return v19;
}

double sub_2172B8404(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_2172B8448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_2172B845C(a1, a2, a3, a4, a5);
  }

  return result;
}

double sub_2172B845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 3u && a5 != 4)
  {
    if (a5 != 3)
    {
      return result;
    }
  }
}

void sub_2172B84C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_2172B84D8(a1, a2, a3, a4, a5);
  }
}

void sub_2172B84D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 3u && a5 != 4)
  {
    if (a5 != 3)
    {
      return;
    }

    sub_217751DE8();
  }

  sub_217751DE8();
}

double OUTLINED_FUNCTION_16_15@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
}

double sub_2172B8588@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, char *a5@<X3>, int a6@<W4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  HIDWORD(v38) = a6;
  v14 = *a1;
  v13 = a1[1];
  v15 = *a5;
  *a4 = 0;
  v16 = OUTLINED_FUNCTION_111_2();
  type metadata accessor for PartialMusicAsyncProperty(v16, v19, v17, v18);
  OUTLINED_FUNCTION_81_2();
  v20 = sub_217752338();
  v21 = MEMORY[0x277D84F90];
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  OUTLINED_FUNCTION_109(v20, v50);
  v22 = off_280BEBCD0;

  (v22)(&v42);

  v23 = v44;
  __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
  v24 = OUTLINED_FUNCTION_108_2();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v24, v23, v25);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  *(a4 + 168) = v21;
  *(a4 + 176) = 0;
  HIBYTE(v40) = v15;
  sub_2172B86E8(&v41, a2, a3, v26, &v40 + 7, HIDWORD(v38), a7, a8, a9, v36, a3, v38, a8, v40, v14, v13, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, *v50, *&v50[8], *&v50[16], *&v50[24], v51, v52, v53, v54, v55);
  v27 = *(&v44 + 1);
  v28 = v48;
  v29 = v49;
  v30 = v44 & 1;
  v31 = v45 & 0xCFFFFFFFFFFFFFF8;
  v32 = v46 & 7 | 0x8000000000000000;
  result = *&v42;
  v34 = v43;
  v35 = v47;
  *(a4 + 32) = v42;
  *(a4 + 48) = v34;
  *(a4 + 64) = v30;
  *(a4 + 72) = v27;
  *(a4 + 80) = v31;
  *(a4 + 88) = v32;
  *(a4 + 96) = v35;
  *(a4 + 112) = v28;
  *(a4 + 120) = v29;
  return result;
}

void sub_2172B86E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_226_0();
  a32 = v34;
  a33 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = *v44;
  v46 = v44[1];
  v48 = *v47;
  if (dynamic_cast_existential_1_conditional(v36, v36, &protocol descriptor for CloudContentLookupRequestable))
  {
    a15 = v45;
    a16 = v46;
    sub_2172C31F4(&a15, &a17);

    LOBYTE(v48) = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = a17;
    v53 = a18;
    v54 = a19;
    v55 = 1;
LABEL_21:
    v63 = a20;
    *v43 = v52;
    *(v43 + 16) = v53;
    *(v43 + 32) = v54;
    *(v43 + 48) = v63;
    *(v43 + 56) = v48;
    *(v43 + 64) = v49;
    *(v43 + 72) = v50;
    *(v43 + 80) = v55;
    *(v43 + 88) = v51;
    OUTLINED_FUNCTION_225_1();
    return;
  }

  v73 = v45;
  if (dynamic_cast_existential_1_conditional(v37, v37, &protocol descriptor for CatalogMusicItemRepresentable))
  {
    v57 = (*(v56 + 8))();
    v58 = v57;
    if (v48 == 5)
    {
      if (!*(v57 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      if ((*(v57 + 48) & 1) == 0)
      {
        v48 = *(v57 + 40);
        a13 = v57;
        v59 = qword_280BE4BA8;
        sub_217751DE8();
        if (v59 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_42;
      }

      v48 = 1;
    }

    while (1)
    {
      a13 = v41;
      if ((v39 & 1) == 0)
      {
        break;
      }

      if (*(v58 + 16))
      {
        v50 = *(v58 + 32);
        v55 = *(v58 + 40);
        v49 = v48;
        v51 = *(v58 + 48);
        v62 = v58;
        sub_217751DE8();
        v58 = v62;
        goto LABEL_20;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      OUTLINED_FUNCTION_102_4(&qword_280BE4BA8);
LABEL_9:
      OUTLINED_FUNCTION_146_1();
      v61 = v61 && v48 == v60;
      if (v61 || (OUTLINED_FUNCTION_150_0(), (sub_217753058() & 1) != 0))
      {

        v48 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          OUTLINED_FUNCTION_100_3(&qword_280BE4B60);
        }

        OUTLINED_FUNCTION_146_1();
        v65 = v61 && v48 == v64;
        if (v65 || (OUTLINED_FUNCTION_150_0(), (sub_217753058() & 1) != 0))
        {

          v48 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            OUTLINED_FUNCTION_99_5(&qword_280BE4C10);
          }

          OUTLINED_FUNCTION_146_1();
          if (v61 && v48 == v66)
          {

            v48 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_150_0();
            v68 = sub_217753058();

            if (v68)
            {
              v48 = 4;
            }

            else
            {
              v48 = 0;
            }
          }
        }
      }

      v58 = a13;
    }

    v49 = 0;
    v50 = 0;
    v55 = 0;
    v51 = 0;
LABEL_20:
    a15 = v73;
    a16 = v46;
    sub_2172B9364(&a15, v58, &a17);

    v52 = a17;
    v53 = a18;
    v54 = a19;
    goto LABEL_21;
  }

  *&a17 = 0;
  *(&a17 + 1) = 0xE000000000000000;
  sub_217752AA8();

  OUTLINED_FUNCTION_211_0();
  *&a17 = v70;
  *(&a17 + 1) = v69;
  v71 = sub_217753348();
  MEMORY[0x21CEA23B0](v71);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v72);
  OUTLINED_FUNCTION_231("Fatal error");
  __break(1u);
}

void MusicCatalogResourceRequest.init<>()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = OUTLINED_FUNCTION_111_2();
  type metadata accessor for PartialMusicAsyncProperty(v4, a1, v5, v6);
  OUTLINED_FUNCTION_81_2();
  v7 = sub_217752338();
  v8 = MEMORY[0x277D84F90];
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  OUTLINED_FUNCTION_109(v7, v30);
  v9 = off_280BEBCD0;

  (v9)(&v31);

  v10 = v34;
  __swift_project_boxed_opaque_existential_1(&v31, v33);
  v11 = OUTLINED_FUNCTION_108_2();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v11, v10, v12);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  *(a2 + 168) = v8;
  *(a2 + 176) = 0;
  v13 = dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for CatalogMusicItemRepresentable);
  if (v13)
  {
    v15 = v13;
    v16 = (*(v14 + 8))();
    if (*(v16 + 16))
    {
      v15 = *(v16 + 32);
      a1 = *(v16 + 40);
      v8 = *(v16 + 48);
      sub_217751DE8();

      if (v8)
      {
        v17 = 0x8000000000000001;
LABEL_12:
        *(a2 + 32) = v15;
        *(a2 + 40) = a1;
        *(a2 + 48) = v8;
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 72) = 0;
        *(a2 + 80) = 0x8000000000000000;
        *(a2 + 88) = v17;
        *(a2 + 104) = 0;
        *(a2 + 112) = 0;
        *(a2 + 96) = 0;
        *(a2 + 120) = 0;
        return;
      }

      v18 = qword_280BE4BA8;
      sub_217751DE8();
      if (v18 == -1)
      {
LABEL_6:
        OUTLINED_FUNCTION_146_1();
        v20 = v20 && a1 == v19;
        if (v20 || (OUTLINED_FUNCTION_35(), (sub_217753058() & 1) != 0))
        {
          v17 = 0x8000000000000002;
        }

        else
        {
          if (qword_280BE4B60 != -1)
          {
            OUTLINED_FUNCTION_100_3(&qword_280BE4B60);
          }

          OUTLINED_FUNCTION_146_1();
          v22 = v20 && a1 == v21;
          if (v22 || (OUTLINED_FUNCTION_35(), (sub_217753058() & 1) != 0))
          {

            v17 = 0x8000000000000003;
          }

          else
          {
            if (qword_280BE4C10 != -1)
            {
              OUTLINED_FUNCTION_99_5(&qword_280BE4C10);
            }

            OUTLINED_FUNCTION_146_1();
            if (v20 && a1 == v23)
            {

              v17 = 0x8000000000000004;
            }

            else
            {
              OUTLINED_FUNCTION_35();
              v25 = sub_217753058();

              if (v25)
              {
                v17 = 0x8000000000000004;
              }

              else
              {
                v17 = 0x8000000000000000;
              }
            }
          }
        }

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_102_4(&qword_280BE4BA8);
    goto LABEL_6;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_217752AA8();

  OUTLINED_FUNCTION_211_0();
  v31 = v27;
  v32 = v26;
  v28 = sub_217753348();
  MEMORY[0x21CEA23B0](v28);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v29);
  OUTLINED_FUNCTION_231("Fatal error");
  __break(1u);
}

void MusicCatalogResourceRequest.init<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(*v7 + *MEMORY[0x277D84DE8] + 8);
  v9 = OUTLINED_FUNCTION_119_2();
  type metadata accessor for MusicPredicateValue(v9, v10, v11, v12);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_206_0();
  v14 = *(v2 + 8);
  v25[0] = v4;
  v25[1] = v15;
  v25[2] = v8;
  v25[3] = v14;
  type metadata accessor for MusicPredicate(0, v25);
  (*(*(v8 - 8) + 16))(v0, v6, v8);
  OUTLINED_FUNCTION_178_0();
  swift_storeEnumTagMultiPayload();
  v16 = OUTLINED_FUNCTION_150_0();
  MusicPredicate.__allocating_init(_:_:)(v16, v17);
  OUTLINED_FUNCTION_114();
  sub_2172B8EA0(v18, v19, v20, v22, v21);
  v23 = OUTLINED_FUNCTION_123_2();
  v24(v23);
  OUTLINED_FUNCTION_13();
}

double sub_2172B8EA0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v8 = *a1;
  *a4 = 0;
  *(a4 + 8) = 1;
  v9 = *(v8 + 104);
  type metadata accessor for PartialMusicAsyncProperty(0, v9, a3, a5);
  v10 = sub_217752338();
  v11 = MEMORY[0x277D84F90];
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  swift_beginAccess();
  v12 = off_280BEBCD0;

  (v12)(&v30);

  v13 = *(&v31 + 1);
  v14 = v32;
  __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v13, v14, a4 + 128);
  __swift_destroy_boxed_opaque_existential_1(&v30);
  *(a4 + 168) = v11;
  *(a4 + 176) = 0;
  sub_21758F538();
  v15 = sub_21758F6F0();
  HIBYTE(v26) = 5;
  sub_2172B86E8(&v27, v15, v16, v16, &v26 + 7, 0, v9, *(a2 + 8), a3, v26, v28, v29, v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34, *(&v34 + 1), v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);

  v17 = *(&v32 + 1);
  v18 = v35;
  v19 = v36;
  v20 = v32 & 1;
  v21 = v33 & 0xCFFFFFFFFFFFFFF8;
  v22 = BYTE8(v33) & 7 | 0x8000000000000000;
  result = *&v30;
  v24 = v31;
  v25 = v34;
  *(a4 + 32) = v30;
  *(a4 + 48) = v24;
  *(a4 + 64) = v20;
  *(a4 + 72) = v17;
  *(a4 + 80) = v21;
  *(a4 + 88) = v22;
  *(a4 + 96) = v25;
  *(a4 + 112) = v18;
  *(a4 + 120) = v19;
  return result;
}

void MusicCatalogResourceRequest.init<A>(matching:memberOf:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(*v9 + *MEMORY[0x277D84DE8] + 8);
  v14 = OUTLINED_FUNCTION_25_6();
  type metadata accessor for MusicPredicateValue(v14, v15, v16, v17);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_206_0();
  v19 = *(v4 + 8);
  v23[0] = v6;
  v23[1] = v20;
  v23[2] = v13;
  v23[3] = v19;
  type metadata accessor for MusicPredicate(0, v23);
  *v0 = v8;
  OUTLINED_FUNCTION_178_0();
  swift_storeEnumTagMultiPayload();
  v21 = MusicPredicate.__allocating_init(_:_:)(v10, v0);
  sub_2172B8EA0(v21, v4, v2, v12, v22);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172B9148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  v6 = OUTLINED_FUNCTION_111_2();
  type metadata accessor for PartialMusicAsyncProperty(v6, v7, v7, v8);
  OUTLINED_FUNCTION_81_2();
  v9 = sub_217752338();
  v10 = MEMORY[0x277D84F90];
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  OUTLINED_FUNCTION_109(v9, &v16);
  v11 = off_280BEBCD0;

  (v11)(v17);

  v12 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v13 = OUTLINED_FUNCTION_108_2();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v13, v12, v14);
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  *(a3 + 168) = v10;
  *(a3 + 176) = 0;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  *(a3 + 64) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

void MusicCatalogResourceRequest.init(catalogFilterID:catalogFilterValue:catalogTypes:cloudEndpointKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_226_0();
  a33 = v34;
  a34 = v35;
  v37 = v36;
  v39 = v38;
  v41 = *v40;
  v42 = v40[1];
  v58 = *v43;
  *v38 = 0;
  v44 = OUTLINED_FUNCTION_111_2();
  type metadata accessor for PartialMusicAsyncProperty(v44, v47, v45, v46);
  OUTLINED_FUNCTION_81_2();
  v48 = sub_217752338();
  v49 = MEMORY[0x277D84F90];
  v39[2] = v48;
  v39[3] = v49;
  OUTLINED_FUNCTION_109(v48, &a20);
  v50 = off_280BEBCD0;

  (v50)(&a15);

  v51 = a17;
  __swift_project_boxed_opaque_existential_1(&a15, *(&a16 + 1));
  v52 = OUTLINED_FUNCTION_108_2();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v52, v51, v53);
  __swift_destroy_boxed_opaque_existential_1(&a15);
  v39[21] = v49;
  *(v39 + 88) = 0;
  a13 = v41;
  a14 = v42;
  sub_2172B9364(&a13, v37, &a15);

  v54 = a18;
  v55 = a17 & 1;
  v56 = a19 & 0xCFFFFFFFFFFFFFF8;
  v57 = a16;
  *(v39 + 2) = a15;
  *(v39 + 3) = v57;
  v39[8] = v55;
  v39[9] = v54;
  v39[10] = v56;
  v39[11] = v58 & 7 | 0x8000000000000000;
  v39[13] = 0;
  v39[14] = 0;
  v39[12] = 0;
  *(v39 + 120) = 0;
  OUTLINED_FUNCTION_225_1();
}

void sub_2172B9364(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  v7 = *a1;
  v35 = a1[1];
  v38 = 44;
  v39 = 0xE100000000000000;
  v37 = &v38;
  sub_217751DE8();
  OUTLINED_FUNCTION_188_0(sub_2172CB708, v36, v8);
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v33 = x8_0;
    v34 = a2;
    v38 = MEMORY[0x277D84F90];
    sub_217275C90(0, v15, 0, v9, v10, v11, v12);
    v16 = 0;
    v17 = v38;
    v18 = v14 + 56;
    while (v16 < *(v14 + 16))
    {
      sub_217751DE8();
      v19 = OUTLINED_FUNCTION_37_4();
      v20 = MEMORY[0x21CEA2320](v19);
      v22 = v21;

      v38 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_57(v23);
        sub_217275C90(v26, v24 + 1, 1, v27, v28, v29, v30);
        v17 = v38;
      }

      ++v16;
      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v18 += 32;
      if (v15 == v16)
      {

        x8_0 = v33;
        a2 = v34;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    sub_2172C3424();
    v38 = v7;
    v39 = v35;
    sub_2172C384C(&v38, a2, v31, v32, x8_0);

    OUTLINED_FUNCTION_96();
  }
}

void MusicCatalogResourceRequest.init(cloudResourceIdentifiers:cloudEndpointKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_226_0();
  a35 = v36;
  a36 = v37;
  v39 = v38;
  v41 = v40;
  v43 = *v42;
  *v40 = 0;
  *(v40 + 8) = 1;
  type metadata accessor for PartialMusicAsyncProperty(0, v44, v44, v37);
  OUTLINED_FUNCTION_81_2();
  v45 = sub_217752338();
  v46 = MEMORY[0x277D84F90];
  *(v41 + 16) = v45;
  *(v41 + 24) = v46;
  OUTLINED_FUNCTION_109(v45, &a17);
  v47 = off_280BEBCD0;

  (v47)(&a20);

  __swift_project_boxed_opaque_existential_1(&a20, a23);
  v48 = OUTLINED_FUNCTION_35();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v48, v49, v50);
  __swift_destroy_boxed_opaque_existential_1(&a20);
  *(v41 + 168) = v46;
  *(v41 + 176) = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27720, &unk_21775A490);
  sub_2172CA7E4(v51, v52, v53);
  v54 = sub_217751DC8();
  v98 = *(v39 + 16);
  if (!v98)
  {

LABEL_32:
    *(v41 + 32) = xmmword_21775A470;
    *(v41 + 48) = v54;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    *(v41 + 72) = 0;
    *(v41 + 80) = 0xC000000000000000;
    *(v41 + 88) = v43 & 7 | 0x8000000000000000;
    *(v41 + 104) = 0;
    *(v41 + 112) = 0;
    *(v41 + 96) = 0;
    *(v41 + 120) = 0;
    OUTLINED_FUNCTION_225_1();
    return;
  }

  v94 = v43;
  v95 = v41;
  v55 = 0;
  v96 = v39;
  v97 = v39 + 32;
  while (v55 < *(v39 + 16))
  {
    v56 = v97 + 56 * v55;
    v57 = *(v56 + 8);
    v58 = *(v56 + 16);
    v59 = *(v56 + 24);
    v60 = *(v56 + 32);
    v61 = v54[2];
    sub_217751DE8();
    swift_bridgeObjectRetain_n();
    sub_217751DE8();
    v100 = v58;
    v99 = v60;
    if (v61 && (v62 = sub_2176324F4(v58, v59, v60), (v63 & 1) != 0))
    {
      v64 = (v54[7] + 16 * v62);
      v66 = *v64;
      v65 = v64[1];
    }

    else
    {
      sub_2172C3424();
      v66 = v67;
      v65 = v68;
    }

    a20 = v66;
    a21 = v65;
    v69 = *(v65 + 16);
    if (!v66)
    {
      v76 = v65 + 40;
      v77 = v69 + 1;
      while (--v77)
      {
        OUTLINED_FUNCTION_216_0();
        v79 = v79 && v78 == v57;
        if (!v79)
        {
          v76 += 16;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        v66 = 0;
        goto LABEL_21;
      }

LABEL_19:
      v80 = OUTLINED_FUNCTION_132();
      sub_2172C97D8(v80, v81);

      v66 = a20;
      v65 = a21;
      goto LABEL_20;
    }

    v70 = OUTLINED_FUNCTION_132();
    sub_2172CA228(v70, v71, v72, v69, v73);
    v75 = v74;

    if (v75)
    {
      goto LABEL_19;
    }

LABEL_20:
    v39 = v96;
LABEL_21:

    swift_isUniquelyReferenced_nonNull_native();
    v82 = sub_2176324F4(v100, v59, v99);
    if (__OFADD__(v54[2], (v83 & 1) == 0))
    {
      goto LABEL_34;
    }

    v84 = v82;
    v85 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277E0, &qword_21776B230);
    if (sub_217752CB8())
    {
      v86 = sub_2176324F4(v100, v59, v99);
      if ((v85 & 1) != (v87 & 1))
      {
        goto LABEL_36;
      }

      v84 = v86;
    }

    if (v85)
    {

      v88 = (v54[7] + 16 * v84);
      *v88 = v66;
      v88[1] = v65;
    }

    else
    {
      OUTLINED_FUNCTION_183_0(&v54[v84 >> 6]);
      v89 = v54[6] + 24 * v84;
      *v89 = v100;
      *(v89 + 8) = v59;
      *(v89 + 16) = v99;
      v90 = (v54[7] + 16 * v84);
      *v90 = v66;
      v90[1] = v65;
      v91 = v54[2];
      v92 = __OFADD__(v91, 1);
      v93 = v91 + 1;
      if (v92)
      {
        goto LABEL_35;
      }

      v54[2] = v93;
    }

    ++v55;

    if (v55 == v98)
    {

      v43 = v94;
      v41 = v95;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_217753178();
  __break(1u);
}

uint64_t MusicCatalogResourceRequest.limit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MusicCatalogResourceRequest.response()()
{
  OUTLINED_FUNCTION_30_0();
  v0[18] = v1;
  v0[19] = v2;
  v3 = sub_217751908();
  v0[20] = v3;
  OUTLINED_FUNCTION_15_3(v3);
  v0[21] = v4;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v5 = sub_217751928();
  v0[24] = v5;
  OUTLINED_FUNCTION_15_3(v5);
  v0[25] = v6;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[28] = v7;
  *v7 = v8;
  v7[1] = sub_2172B9C90;
  OUTLINED_FUNCTION_39_3();

  return sub_2172BA08C(v9, v10);
}

uint64_t sub_2172B9C90()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172B9D88()
{
  OUTLINED_FUNCTION_30_0();
  memcpy(*(v0 + 144), (v0 + 16), 0x68uLL);

  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_2172B9E14()
{
  v18 = v0;
  v1 = *(v0 + 232);
  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  OUTLINED_FUNCTION_93();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 168);
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
    OUTLINED_FUNCTION_24_12();
    sub_2171FF238(v4, v5, MEMORY[0x277CC9AE0]);
    sub_2177515E8();
    sub_2177518B8();
    sub_2171FF238(&qword_27CB276D0, MEMORY[0x277CC9AC8], MEMORY[0x277CC9AD8]);
    OUTLINED_FUNCTION_148();
    sub_2177521E8();
    OUTLINED_FUNCTION_148();
    sub_2177521E8();
    v6 = *(v3 + 8);
    v7 = OUTLINED_FUNCTION_89_4();
    v6(v7);
    v8 = OUTLINED_FUNCTION_20_6();
    v6(v8);
    if (*(v0 + 128) == *(v0 + 136))
    {
      v9 = *(v0 + 144);
      v10 = *(v0 + 152);

      v11 = *(v10 + 16);
      OUTLINED_FUNCTION_20_13();
      v12 = sub_217752338();
      MusicItemCollection.init(arrayLiteral:)(v12, v11, *(v10 + 24), __src);
      v13 = OUTLINED_FUNCTION_56_0();
      v14(v13);
      sub_2173AA804(__src, v9);

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  }

  OUTLINED_FUNCTION_20_0();
LABEL_6:

  return v15();
}

uint64_t sub_2172BA08C(uint64_t a1, uint64_t a2)
{
  v3[398] = v2;
  v3[397] = a2;
  v3[396] = a1;
  v4 = *(a2 + 16);
  v3[399] = v4;
  v5 = sub_2177528F8();
  v3[400] = v5;
  v3[401] = *(v5 - 8);
  v3[402] = swift_task_alloc();
  v3[403] = *(v4 - 8);
  v3[404] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2172BA1B0, 0, 0);
}

uint64_t sub_2172BA1B0()
{
  v98 = v1;
  v2 = *(v1 + 3184);
  OUTLINED_FUNCTION_187_0((v1 + 1760));
  v3 = *(v1 + 1816);
  if ((v3 & 0x8000000000000000) == 0)
  {
    *(v1 + 952) = 0;
    *(v1 + 920) = 0u;
    *(v1 + 936) = 0u;
    *(v1 + 888) = 0u;
    *(v1 + 904) = 0u;
    *(v1 + 856) = 0u;
    *(v1 + 872) = 0u;
    *(v1 + 840) = 0u;
    type metadata accessor for SharedRelatedItemStore();
    v4 = swift_allocObject();
    v7 = SharedRelatedItemStore.init()(v4, v5, v6);
    *(v1 + 3272) = v7;
    memcpy((v1 + 960), (v1 + 840), 0x78uLL);
    if (*(v1 + 1064))
    {
      OUTLINED_FUNCTION_209_0();
      if (v10 && (v9 & 0xF000000000000007) == 0)
      {
        v11 = *(v1 + 3176);
        memcpy((v1 + 1440), (v1 + 840), 0x78uLL);
        v12 = *(v11 + 24);
        v13 = *(v11 + 32);
        OUTLINED_FUNCTION_118_3();
        OUTLINED_FUNCTION_174_1();
        type metadata accessor for MusicCatalogResourceRequest.MusicItemCacheLookupHelper(v14, v15, v16, v17);
        OUTLINED_FUNCTION_43();
        (*(v18 + 16))(v1 + 1320, v1 + 1440);
        sub_2174CEE70(v1 + 712);
        memcpy(__dst, (v1 + 960), sizeof(__dst));
        OUTLINED_FUNCTION_119_2();
        OUTLINED_FUNCTION_174_1();
        type metadata accessor for MusicCatalogResourceRequest.MusicItemCacheLookupHelper(v19, v20, v21, v22);
        sub_2172BE0A0();
        v23 = OUTLINED_FUNCTION_119_2();
        type metadata accessor for CloudResourceCollection(v23, v24, v25, v26);
        OUTLINED_FUNCTION_6_0();
        (*(v27 + 8))(v1 + 712);
        OUTLINED_FUNCTION_25_6();
        sub_2177528F8();
        OUTLINED_FUNCTION_6_0();
        (*(v28 + 8))(v1 + 840);
        *(v1 + 3400) = v12;
        *(v1 + 3392) = v13;
        v29 = *(v1 + 3272);
        v30 = *(v1 + 3184);
        v33 = type metadata accessor for CloudResourceCollection(0, *(v1 + 3192), v31, v32);
        OUTLINED_FUNCTION_53_4(v33);
        *(v1 + 3416) = v34;
        v35 = OUTLINED_FUNCTION_95_3();
        v36(v35);
        OUTLINED_FUNCTION_236();

        v37 = OUTLINED_FUNCTION_51_4();
        sub_2175AFAC0(v37, v38, v39, v40, v41, v42);
        if (*(v30 + 176))
        {
          OUTLINED_FUNCTION_205_1();
          OUTLINED_FUNCTION_41_0();
          (*(v43 + 16))(v1 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          OUTLINED_FUNCTION_112_3();
          if (swift_dynamicCast())
          {
            v44 = *(v1 + 3216);
            sub_2171F3F0C(v29, v1 + 3008);
            v45 = OUTLINED_FUNCTION_20_13();
            type metadata accessor for MusicItemCollection(v45, v46, v12, v47);
            OUTLINED_FUNCTION_4_26();
            swift_getWitnessTable();
            sub_217752728();
            OUTLINED_FUNCTION_135_1(v44);
            if (v10)
            {
              v48 = OUTLINED_FUNCTION_49_5();
              v49(v48);
            }

            else
            {
              (*(*(v1 + 3224) + 32))(*(v1 + 3232), *(v1 + 3216), *(v1 + 3192));
              __swift_project_boxed_opaque_existential_1((v1 + 3008), *(v1 + 3032));
              OUTLINED_FUNCTION_113();
              v89();
              v90 = OUTLINED_FUNCTION_145_0();
              v91(v90);
            }

            __swift_destroy_boxed_opaque_existential_1((v1 + 3008));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2172CB34C(v29, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        *(v1 + 3424) = v92;
        *v92 = v93;
        v94 = OUTLINED_FUNCTION_7_12(v92);

        return sub_2172BE698(v94, v95, v96);
      }

      v74 = *(v1 + 976);
      *(v1 + 2144) = *(v1 + 960);
      OUTLINED_FUNCTION_62_5(v8, v74);
      *(v1 + 3280) = *(v75 + 24);
      v76 = *(v75 + 32);
      *(v1 + 3288) = v76;
      OUTLINED_FUNCTION_88_3();
      type metadata accessor for MusicCatalogResourceRequest.FilterContext(v77, v78, v79, v76);
      OUTLINED_FUNCTION_81_2();
      v80 = sub_2177528F8();
      *(v1 + 3296) = v80;
      OUTLINED_FUNCTION_79();
      *(v1 + 3304) = v81;
      v82 = *(v81 + 16);
      v82(v1 + 2240, v1 + 960, v80);
      v82(v1 + 2336, v1 + 960, v80);
      OUTLINED_FUNCTION_88_3();
      type metadata accessor for MusicCatalogResourceRequest.MusicItemCacheLookupHelper(v83, v84, v85, v76);
      OUTLINED_FUNCTION_81_2();
      *(v1 + 3312) = sub_2177528F8();
      OUTLINED_FUNCTION_79();
      *(v1 + 3320) = v86;
      (*(v86 + 16))(v1 + 1200, v1 + 840);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      *(v1 + 3328) = v87;
      *v87 = v88;
      v71 = OUTLINED_FUNCTION_68_6(v87);
    }

    else
    {
      OUTLINED_FUNCTION_168_1();
      OUTLINED_FUNCTION_187_0((v1 + 2432));
      *(v1 + 3344) = *(v0 + 24);
      *(v1 + 3352) = *(v0 + 32);
      v64 = OUTLINED_FUNCTION_118_3();
      *(v1 + 3360) = type metadata accessor for MusicCatalogResourceRequest.Kind(v64, v65, v66, v67);
      OUTLINED_FUNCTION_79();
      *(v1 + 3368) = v68;
      (*(v68 + 16))(v1 + 2048, v1 + 2720);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      *(v1 + 3376) = v69;
      *v69 = v70;
      v71 = OUTLINED_FUNCTION_67_5(v69);
    }

    return sub_2172BD71C(v71, v72, v7, v73);
  }

  v50 = *(v1 + 3176);
  v51 = *(v1 + 1848);
  v52 = *(v1 + 1840);
  v53 = *(v1 + 1808);
  *(v1 + 2816) = *(v1 + 1760);
  *(v1 + 2832) = *(v1 + 1776);
  *(v1 + 2848) = *(v1 + 1792);
  *(v1 + 2864) = v53;
  *(v1 + 2872) = v3 & 0x7FFFFFFFFFFFFFFFLL;
  *(v1 + 2880) = *(v1 + 1824);
  *(v1 + 2896) = v52;
  *(v1 + 2904) = v51;
  sub_2172CA838(v2 + 128, v1 + 3088);
  v54 = *(v50 + 32);
  v55 = OUTLINED_FUNCTION_29_9();
  v58 = type metadata accessor for MusicCatalogResourceRequest.Kind(v55, v56, v57, v54);
  *(v1 + 3240) = v58;
  OUTLINED_FUNCTION_79();
  *(v1 + 3248) = v59;
  v60 = *(v59 + 16);
  v60(v1 + 2912, v1 + 1760, v58);
  v60(v1 + 1664, v1 + 1760, v58);
  sub_217751DE8();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 3256) = v61;
  *v61 = v62;
  v61[1] = sub_2172BA910;
  v100 = &protocol witness table for AnyMusicDataRequestConfiguration;

  return sub_2172BBC20();
}

uint64_t sub_2172BA910()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 3264) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172BAA08()
{
  v3 = OUTLINED_FUNCTION_220_0();
  v4(v3);
  memcpy((v1 + 840), (v1 + 1080), 0x78uLL);
  type metadata accessor for SharedRelatedItemStore();
  v5 = swift_allocObject();
  v8 = SharedRelatedItemStore.init()(v5, v6, v7);
  *(v1 + 3272) = v8;
  memcpy((v1 + 960), (v1 + 840), 0x78uLL);
  if (!*(v1 + 1064))
  {
    OUTLINED_FUNCTION_168_1();
    OUTLINED_FUNCTION_187_0((v1 + 2432));
    *(v1 + 3344) = *(v0 + 24);
    *(v1 + 3352) = *(v0 + 32);
    v61 = OUTLINED_FUNCTION_118_3();
    *(v1 + 3360) = type metadata accessor for MusicCatalogResourceRequest.Kind(v61, v62, v63, v64);
    OUTLINED_FUNCTION_79();
    *(v1 + 3368) = v65;
    (*(v65 + 16))(v1 + 2048, v1 + 2720);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v1 + 3376) = v66;
    *v66 = v67;
    v68 = OUTLINED_FUNCTION_67_5(v66);
LABEL_12:

    return sub_2172BD71C(v68, v69, v8, v70);
  }

  OUTLINED_FUNCTION_209_0();
  if (!v11 || (v10 & 0xF000000000000007) != 0)
  {
    v71 = *(v1 + 976);
    *(v1 + 2144) = *(v1 + 960);
    OUTLINED_FUNCTION_62_5(v9, v71);
    *(v1 + 3280) = *(v72 + 24);
    *(v1 + 3288) = *(v72 + 32);
    OUTLINED_FUNCTION_174_1();
    type metadata accessor for MusicCatalogResourceRequest.FilterContext(v73, v74, v75, v76);
    OUTLINED_FUNCTION_81_2();
    v77 = sub_2177528F8();
    *(v1 + 3296) = v77;
    OUTLINED_FUNCTION_79();
    *(v1 + 3304) = v78;
    v79 = *(v78 + 16);
    v79(v1 + 2240, v1 + 960, v77);
    v79(v1 + 2336, v1 + 960, v77);
    OUTLINED_FUNCTION_174_1();
    type metadata accessor for MusicCatalogResourceRequest.MusicItemCacheLookupHelper(v80, v81, v82, v83);
    OUTLINED_FUNCTION_81_2();
    *(v1 + 3312) = sub_2177528F8();
    OUTLINED_FUNCTION_79();
    *(v1 + 3320) = v84;
    (*(v84 + 16))(v1 + 1200, v1 + 840);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v1 + 3328) = v85;
    *v85 = v86;
    v68 = OUTLINED_FUNCTION_68_6(v85);
    goto LABEL_12;
  }

  v12 = *(v1 + 3192);
  v13 = *(v1 + 3176);
  memcpy((v1 + 1440), (v1 + 840), 0x78uLL);
  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  OUTLINED_FUNCTION_118_3();
  OUTLINED_FUNCTION_93_3();
  type metadata accessor for MusicCatalogResourceRequest.MusicItemCacheLookupHelper(v16, v17, v18, v19);
  OUTLINED_FUNCTION_43();
  (*(v20 + 16))(v1 + 1320, v1 + 1440);
  sub_2174CEE70(v1 + 712);
  OUTLINED_FUNCTION_228_0(v21, v22, v23, v24, v25, v26, v27, v28, v99);
  v29 = OUTLINED_FUNCTION_29_9();
  type metadata accessor for MusicCatalogResourceRequest.MusicItemCacheLookupHelper(v29, v30, v31, v15);
  OUTLINED_FUNCTION_190_2();
  v32 = OUTLINED_FUNCTION_20_13();
  type metadata accessor for CloudResourceCollection(v32, v33, v34, v35);
  OUTLINED_FUNCTION_6_0();
  (*(v36 + 8))(v1 + 712);
  OUTLINED_FUNCTION_119_2();
  sub_2177528F8();
  OUTLINED_FUNCTION_6_0();
  v38 = (*(v37 + 8))(v1 + 840);
  *(v1 + 3400) = v14;
  *(v1 + 3392) = v15;
  v42 = OUTLINED_FUNCTION_94_1(v38, v39, v40, v41);
  OUTLINED_FUNCTION_53_4(v42);
  *(v1 + 3416) = v43;
  v44 = OUTLINED_FUNCTION_95_3();
  v45(v44);
  OUTLINED_FUNCTION_236();

  v46 = OUTLINED_FUNCTION_51_4();
  sub_2175AFAC0(v46, v47, v48, v49, v50, v51);
  if (*(v2 + 176))
  {
    OUTLINED_FUNCTION_205_1();
    OUTLINED_FUNCTION_41_0();
    (*(v52 + 16))(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    OUTLINED_FUNCTION_112_3();
    if (swift_dynamicCast())
    {
      v53 = *(v1 + 3216);
      sub_2171F3F0C(v12, v1 + 3008);
      v54 = OUTLINED_FUNCTION_29_9();
      type metadata accessor for MusicItemCollection(v54, v55, v56, v57);
      OUTLINED_FUNCTION_4_26();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_131_3(WitnessTable);
      OUTLINED_FUNCTION_135_1(v53);
      if (v11)
      {
        v59 = OUTLINED_FUNCTION_49_5();
        v60(v59);
      }

      else
      {
        v88 = OUTLINED_FUNCTION_35_4();
        v89(v88);
        __swift_project_boxed_opaque_existential_1((v1 + 3008), *(v1 + 3032));
        v90 = OUTLINED_FUNCTION_34_6();
        v91(v90);
        v92 = OUTLINED_FUNCTION_85_3();
        v93(v92);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 3008));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2172CB34C(v12, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 3424) = v94;
  *v94 = v95;
  v96 = OUTLINED_FUNCTION_7_12(v94);

  return sub_2172BE698(v96, v97, v98);
}

uint64_t sub_2172BAF4C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v3[417] = v0;

  if (v0)
  {
    v7 = v3[415];
    v8 = v3[414];
    v9 = *(v7 + 8);
    v3[430] = v9;
    v3[431] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v3 + 105, v8);
    memcpy(v3 + 316, v3 + 268, 0x59uLL);
    OUTLINED_FUNCTION_20_13();
    OUTLINED_FUNCTION_138_0();
    type metadata accessor for MusicCatalogResourceRequest.Kind(v10, v11, v12, v13);
    OUTLINED_FUNCTION_6_0();
    (*(v14 + 8))(v3 + 316);
  }

  else
  {
    memcpy(v3 + 328, v3 + 268, 0x59uLL);
    OUTLINED_FUNCTION_20_13();
    OUTLINED_FUNCTION_138_0();
    type metadata accessor for MusicCatalogResourceRequest.Kind(v15, v16, v17, v18);
    OUTLINED_FUNCTION_6_0();
    (*(v19 + 8))(v3 + 328);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2172BB114()
{
  (*(v1[413] + 8))(v1 + 120, v1[412]);
  v3 = memcpy(v1 + 89, v1 + 57, 0x80uLL);
  v4 = v1[411];
  v5 = v1[410];
  OUTLINED_FUNCTION_228_0(v3, v6, v7, v8, v9, v10, v11, v12, v58);
  v13 = OUTLINED_FUNCTION_29_9();
  type metadata accessor for MusicCatalogResourceRequest.MusicItemCacheLookupHelper(v13, v14, v15, v4);
  OUTLINED_FUNCTION_190_2();
  v16 = OUTLINED_FUNCTION_20_13();
  type metadata accessor for CloudResourceCollection(v16, v17, v18, v19);
  OUTLINED_FUNCTION_6_0();
  (*(v20 + 8))(v1 + 89);
  OUTLINED_FUNCTION_119_2();
  sub_2177528F8();
  OUTLINED_FUNCTION_6_0();
  v22 = (*(v21 + 8))(v1 + 105);
  v1[425] = v5;
  v1[424] = v4;
  v26 = OUTLINED_FUNCTION_94_1(v22, v23, v24, v25);
  OUTLINED_FUNCTION_53_4(v26);
  v1[427] = v27;
  v28 = OUTLINED_FUNCTION_95_3();
  v29(v28);
  OUTLINED_FUNCTION_236();

  v30 = OUTLINED_FUNCTION_51_4();
  sub_2175AFAC0(v30, v31, v32, v33, v34, v35);
  if (*(v2 + 176) == 1)
  {
    OUTLINED_FUNCTION_205_1();
    OUTLINED_FUNCTION_41_0();
    (*(v36 + 16))(v1 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    OUTLINED_FUNCTION_112_3();
    if (swift_dynamicCast())
    {
      v37 = v1[402];
      sub_2171F3F0C(v0, (v1 + 376));
      v38 = OUTLINED_FUNCTION_29_9();
      type metadata accessor for MusicItemCollection(v38, v39, v40, v41);
      OUTLINED_FUNCTION_4_26();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_131_3(WitnessTable);
      OUTLINED_FUNCTION_135_1(v37);
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_49_5();
        v45(v44);
      }

      else
      {
        v46 = OUTLINED_FUNCTION_35_4();
        v47(v46);
        __swift_project_boxed_opaque_existential_1(v1 + 376, v1[379]);
        v48 = OUTLINED_FUNCTION_34_6();
        v49(v48);
        v50 = OUTLINED_FUNCTION_85_3();
        v51(v50);
      }

      __swift_destroy_boxed_opaque_existential_1(v1 + 376);
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2172CB34C(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[428] = v52;
  *v52 = v53;
  v54 = OUTLINED_FUNCTION_7_12(v52);

  return sub_2172BE698(v54, v55, v56);
}

uint64_t sub_2172BB3D4()
{
  OUTLINED_FUNCTION_209();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v2[421];
  *v4 = *v1;
  v3[423] = v0;

  v6 = (v5 + 8);
  v7 = v2[420];
  if (v0)
  {
    memcpy(v3 + 244, v3 + 304, 0x59uLL);
    (*v6)((v3 + 244), v7);
  }

  else
  {
    memcpy(v3 + 232, v3 + 304, 0x59uLL);
    (*v6)((v3 + 232), v7);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2172BB564()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  v3 = memcpy(v1 + 25, v1 + 41, 0x80uLL);
  v4 = v1[419];
  v1[425] = v1[418];
  v1[424] = v4;
  v8 = OUTLINED_FUNCTION_94_1(v3, v5, v6, v7);
  OUTLINED_FUNCTION_53_4(v8);
  v1[427] = v9;
  v10 = OUTLINED_FUNCTION_95_3();
  v11(v10);
  OUTLINED_FUNCTION_236();

  v12 = OUTLINED_FUNCTION_51_4();
  sub_2175AFAC0(v12, v13, v14, v15, v16, v17);
  if (*(v2 + 176) == 1)
  {
    OUTLINED_FUNCTION_205_1();
    OUTLINED_FUNCTION_41_0();
    (*(v18 + 16))(v1 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    OUTLINED_FUNCTION_112_3();
    if (swift_dynamicCast())
    {
      v19 = v1[402];
      sub_2171F3F0C(v0, (v1 + 376));
      v20 = OUTLINED_FUNCTION_29_9();
      type metadata accessor for MusicItemCollection(v20, v21, v22, v23);
      OUTLINED_FUNCTION_4_26();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_131_3(WitnessTable);
      OUTLINED_FUNCTION_135_1(v19);
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_49_5();
        v27(v26);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_35_4();
        v29(v28);
        __swift_project_boxed_opaque_existential_1(v1 + 376, v1[379]);
        v30 = OUTLINED_FUNCTION_34_6();
        v31(v30);
        v32 = OUTLINED_FUNCTION_85_3();
        v33(v32);
      }

      __swift_destroy_boxed_opaque_existential_1(v1 + 376);
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2172CB34C(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[428] = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_7_12(v34);
  OUTLINED_FUNCTION_234();

  return sub_2172BE698(v36, v37, v38);
}

uint64_t sub_2172BB788()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 3432) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172BB880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  v11 = v10[427];
  v12 = v10[426];
  v13 = v10[425];
  v14 = v10[424];
  v15 = v10[399];

  type metadata accessor for MusicCatalogResourceRequest.MusicItemCacheLookupHelper(255, v15, v13, v14);
  OUTLINED_FUNCTION_81_2();
  sub_2177528F8();
  OUTLINED_FUNCTION_6_0();
  (*(v16 + 8))(v10 + 105);
  v17 = OUTLINED_FUNCTION_25_6();
  type metadata accessor for MusicCatalogResourceResponse(v17, v18, v13, v19);
  OUTLINED_FUNCTION_6_0();
  (*(v20 + 8))(v10 + 195);
  (*(v11 + 8))(v10 + 25, v12);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_234();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_2172BB994()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_220_0();
  v1(v0);
  OUTLINED_FUNCTION_240_0();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2172BBA04()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[430];
  v2 = v0[414];
  (*(v0[413] + 8))(v0 + 120, v0[412]);

  v1(v0 + 105, v2);
  OUTLINED_FUNCTION_240_0();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2172BBAAC()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_240_0();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2172BBB14()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 3416);
  v2 = *(v0 + 3408);

  OUTLINED_FUNCTION_93_3();
  type metadata accessor for MusicCatalogResourceRequest.MusicItemCacheLookupHelper(v3, v4, v5, v6);
  OUTLINED_FUNCTION_81_2();
  sub_2177528F8();
  OUTLINED_FUNCTION_6_0();
  (*(v7 + 8))(v0 + 840);
  v8 = OUTLINED_FUNCTION_29_9();
  type metadata accessor for MusicCatalogResourceResponse(v8, v9, v10, v11);
  OUTLINED_FUNCTION_6_0();
  (*(v12 + 8))(v0 + 1560);
  (*(v1 + 8))(v0 + 200, v2);
  OUTLINED_FUNCTION_240_0();

  OUTLINED_FUNCTION_20_0();

  return v13();
}

uint64_t sub_2172BBC20()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v0[46] = v7;
  v0[47] = v25;
  v0[44] = v8;
  v0[45] = v1;
  v0[42] = v9;
  v0[43] = v3;
  v0[40] = v10;
  v0[41] = v11;
  v0[48] = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v0[49] = v12;
  v0[50] = OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_20_13();
  v13 = sub_2177528F8();
  v0[51] = v13;
  OUTLINED_FUNCTION_15_3(v13);
  v0[52] = v14;
  v0[53] = OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_0();
  v0[54] = v15;
  v0[55] = OUTLINED_FUNCTION_28_7();
  v0[56] = type metadata accessor for MusicItemCacheResult(0, v4, v2, v16);
  OUTLINED_FUNCTION_0();
  v0[57] = v17;
  v0[58] = OUTLINED_FUNCTION_28_7();
  v0[59] = swift_getTupleTypeMetadata2();
  v18 = sub_2177528F8();
  v0[60] = v18;
  OUTLINED_FUNCTION_15_3(v18);
  v0[61] = v19;
  v0[62] = swift_task_alloc();
  v0[63] = swift_task_alloc();
  memcpy(v0 + 2, v6, 0x59uLL);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2172BBE80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 360);
  v67 = *(v0 + 368);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 512) = v1;
  *(v0 + 520) = v3;
  *(v0 + 528) = v4;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  *(v0 + 536) = v5;
  *(v0 + 544) = v6;
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  *(v0 + 552) = v7;
  *(v0 + 560) = v8;
  v69 = v3;
  OUTLINED_FUNCTION_155_0();
  sub_2172CAEFC(v9, v10, v11, v12, v13, v7, v8);
  v14 = OUTLINED_FUNCTION_118_3();
  *(v0 + 568) = type metadata accessor for MusicCatalogResourceRequest.FilterContext.Filter(v14, v15, v2, v67);
  sub_2172C338C(v16);
  v18 = *(v17 + 16);

  if (v18)
  {
    if (qword_27CB23EE0 != -1)
    {
      swift_once();
    }

    v19 = qword_27CB8A338;
    *(v0 + 192) = type metadata accessor for GenreCache();
    *(v0 + 200) = &off_282980450;
    *(v0 + 168) = v19;
    v65 = v7;

    sub_2172C2A54();
    v20 = __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
    v21 = *(*v20 + 24);
    v22 = *(*v20 + 32);
    *(v0 + 248) = *(*v20 + 16);
    *(v0 + 256) = v21;
    *(v0 + 264) = v22;
    *(swift_task_alloc() + 16) = v0 + 248;
    sub_217751DE8();
    v23 = sub_2173DD9E8();

    if (v23)
    {
      v62 = *(v0 + 376);
      v24 = *(v0 + 352);
      v63 = *(v0 + 336);
      __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
      *(v0 + 112) = v1;
      *(v0 + 120) = v69;
      *(v0 + 128) = v4;
      *(v0 + 136) = v5;
      *(v0 + 144) = v6;
      *(v0 + 152) = v65;
      *(v0 + 160) = v8;
      *(v0 + 576) = sub_2172C338C(v25);
      *(v0 + 584) = v26;
      v27 = OUTLINED_FUNCTION_119_2();
      type metadata accessor for PartialMusicAsyncProperty(v27, v28, v29, v30);
      type metadata accessor for AnyMusicProperty();
      *(v0 + 592) = sub_217752C68();

      *(v0 + 232) = v24;
      *(v0 + 240) = v62;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 208));
      v32 = *(v24 - 8);
      *(v0 + 600) = v32;
      (*(v32 + 16))(boxed_opaque_existential_0, v63, v24);
      v33 = swift_task_alloc();
      *(v0 + 608) = v33;
      *v33 = v0;
      v33[1] = sub_2172BC358;
      OUTLINED_FUNCTION_139_1();

      return sub_2177324D8(v34, v35, v36, v37, v38, v39);
    }

    OUTLINED_FUNCTION_41_0();
    (*(v48 + 8))();
    OUTLINED_FUNCTION_155_0();
    sub_2172CB00C(v49, v50, v51, v52, v53, v65, v54);

    OUTLINED_FUNCTION_119_2();
    OUTLINED_FUNCTION_138_0();
    type metadata accessor for MusicCatalogResourceRequest.FilterContext(v55, v56, v57, v58);
    OUTLINED_FUNCTION_6_0();
    (*(v59 + 8))(v0 + 16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  }

  else
  {
    v66 = *(v0 + 360);
    v68 = *(v0 + 368);
    v64 = *(v0 + 344);
    OUTLINED_FUNCTION_41_0();
    (*(v41 + 8))();
    OUTLINED_FUNCTION_155_0();
    sub_2172CB00C(v42, v43, v44, v45, v46, v7, v8);

    type metadata accessor for MusicCatalogResourceRequest.FilterContext(0, v64, v66, v68);
    OUTLINED_FUNCTION_6_0();
    (*(v47 + 8))(v0 + 16);
  }

  v60 = *(v0 + 320);
  *(v60 + 112) = 0;
  *(v60 + 80) = 0u;
  *(v60 + 96) = 0u;
  *(v60 + 48) = 0u;
  *(v60 + 64) = 0u;
  *(v60 + 16) = 0u;
  *(v60 + 32) = 0u;
  *v60 = 0u;
  OUTLINED_FUNCTION_191_1();

  OUTLINED_FUNCTION_0_2();

  return v61();
}

uint64_t sub_2172BC358(uint64_t a1)
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  v4 = v3;
  OUTLINED_FUNCTION_155();
  v6 = v5;
  OUTLINED_FUNCTION_42_0();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v9 = v8;
  v6[77] = v10;
  v6[78] = v11;
  v6[79] = v1;

  if (v1)
  {
    v13 = v6[45];
    v12 = v6[46];

    v14 = OUTLINED_FUNCTION_219_0();
    type metadata accessor for MusicCatalogResourceRequest.FilterContext(v14, v15, v13, v12);
    OUTLINED_FUNCTION_6_0();
    (*(v16 + 8))(v6 + 2);
  }

  else
  {

    v6[80] = v4;

    __swift_destroy_boxed_opaque_existential_1(v6 + 26);
  }

  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_234();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

void sub_2172BC500()
{
  v261 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 560);
  v240 = *(v0 + 472);
  v243 = *(v0 + 504);
  v5 = *(v0 + 432);
  v245 = *(v0 + 416);
  v232 = *(v0 + 392);
  v236 = *(v0 + 456);
  v6 = *(v0 + 528);
  v257 = *(v0 + 512);
  v258 = v6;
  v259 = *(v0 + 544);
  v260 = v4;

  v7 = sub_2172C2A54();
  v8 = swift_task_alloc();
  v209 = (v0 + 168);
  *(v8 + 16) = v0 + 168;
  sub_21744D3F0(sub_2172CB210, v8, v7);
  v10 = v9;

  OUTLINED_FUNCTION_139_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_81_2();
  v11 = sub_217752338();
  sub_2172CAE0C(v11, v12, v13);
  OUTLINED_FUNCTION_139_1();
  v248 = sub_217751A88();
  v249 = v14;
  v250 = v15;
  sub_217492B20();
  v17 = v16;
  v210 = 0;
  v211 = 0;
  v251 = v18;
  v252 = v16;
  *&v257 = v1;
  *(&v257 + 1) = v3;
  v233 = (v232 + 8);
  v237 = v236 + 32;
  v224 = v10;
  v228 = (v245 + 8);
  v220 = (v5 + 8);
  v258 = v2;
  v20 = v19;
  v212 = (v5 + 16);
  v214 = (v5 + 32);
  v207 = (v10 + 48);
LABEL_2:
  v244 = v17;
LABEL_3:
  v246 = v20;
  while (1)
  {
    v21 = *(v0 + 504);
    v22 = *(v0 + 472);
    OUTLINED_FUNCTION_25_6();
    sub_217751AB8();
    sub_217751AA8();
    v23 = OUTLINED_FUNCTION_20_6();
    v24(v23);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      break;
    }

    v25 = *(v0 + 504);
    v26 = *v25;
    v27 = *(v243 + 8);
    (*v237)(*(v0 + 464), &v25[*(v240 + 48)], *(v0 + 448));
    OUTLINED_FUNCTION_56_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v20 = v246;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v36 = *(v0 + 400);
        v37 = *(v0 + 384);
        __swift_storeEnumTagSinglePayload(v36, 1, 1, *(v0 + 344));
        *(v0 + 272) = v26;
        *(v0 + 280) = v27;
        OUTLINED_FUNCTION_118_3();
        sub_217751AC8();
        sub_217751A78();
        (*v233)(v36, v37);
        v38 = OUTLINED_FUNCTION_20_6();
        v39(v38);
        v40 = 0;
        v217 = *(v224 + 16);
        v41 = v207;
        v42 = v244;
        for (i = v210; ; i = sub_21749A870)
        {
          if (v217 == v40)
          {
            v210 = i;
            v244 = v42;

            goto LABEL_3;
          }

          if (v40 >= *(v224 + 16))
          {
            __break(1u);
LABEL_77:
            __break(1u);
            return;
          }

          v247 = v40;
          v44 = *v41;
          sub_217751DE8();
          sub_2172202A4(i, 0);
          v45 = *(v42 + 16);
          if (v251)
          {

            v46 = OUTLINED_FUNCTION_83();
            sub_2172CA2C4(v46, v47, v44, v48, v45, v49, v50);
            v52 = v51;
            v54 = v53;

            if ((v54 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v55 = OUTLINED_FUNCTION_83();
            v58 = sub_2172CA1AC(v55, v56, v44, v57, v45);
            if ((v59 & 1) == 0)
            {
              v52 = v58;
LABEL_22:

              goto LABEL_23;
            }
          }

          OUTLINED_FUNCTION_83();
          sub_2172C9A08();

          v60 = *(v252 + 16);
          sub_21749A870(&v253);
          v61 = v253;
          v62 = v254;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_227_0(*(v20 + 16));
          }

          v64 = *(v20 + 16);
          v63 = *(v20 + 24);
          if (v64 >= v63 >> 1)
          {
            v85 = OUTLINED_FUNCTION_57(v63);
            sub_2172768E8(v85, v64 + 1, 1);
          }

          v52 = v60 - 1;
          *(v20 + 16) = v64 + 1;
          v65 = v20 + 16 * v64;
          *(v65 + 32) = v61;
          *(v65 + 40) = v62;
          v42 = v252;
LABEL_23:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2174923F0();
            v20 = v66;
          }

          v67 = v20 + 16 * v52;
          v68 = *(v67 + 40);
          v253 = *(v67 + 32);
          v254 = v68;
          v69 = *(v68 + 16);
          if (!v253)
          {
            v76 = OUTLINED_FUNCTION_147_2();
            sub_2172CA130(v76, v77, v78, v69);
            if ((v79 & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_29:
            v80 = OUTLINED_FUNCTION_147_2();
            sub_2172C98F0(v80, v81);
            goto LABEL_30;
          }

          v70 = OUTLINED_FUNCTION_147_2();
          sub_2172CA228(v70, v71, v72, v69, v73);
          v75 = v74;

          if (v75)
          {
            goto LABEL_29;
          }

LABEL_30:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2174923F0();
            v20 = v82;
          }

          v83 = v20 + 16 * v52;
          v84 = v254;
          *(v83 + 32) = v253;
          *(v83 + 40) = v84;
          v41 += 24;
          v40 = v247 + 1;
        }
      }

      v86 = *(v0 + 424);
      v87 = *(v0 + 400);
      v88 = *(v0 + 408);
      v89 = *(v0 + 344);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24520, &unk_217758A10);
      OUTLINED_FUNCTION_118_3();
      swift_getTupleTypeMetadata2();

      __swift_storeEnumTagSinglePayload(v87, 1, 1, v89);
      *(v0 + 288) = v26;
      *(v0 + 296) = v27;
      OUTLINED_FUNCTION_25_6();
      sub_217751AC8();
      sub_217751A78();
      v90 = OUTLINED_FUNCTION_145_0();
      v91(v90);
      (*v228)(v86, v88);
      __swift_project_boxed_opaque_existential_1(v209, *(v0 + 192));
      sub_217751DE8();
      sub_2172202A4(v211, 0);
      v17 = v244;
      v92 = *(v244 + 16);
      if (v251)
      {

        v93 = OUTLINED_FUNCTION_158_1();
        sub_2172CA2C4(v93, v94, v95, v96, v92, v97, v98);
        v100 = v99;
        v102 = v101;

        if ((v102 & 1) == 0)
        {
LABEL_44:

          v20 = v246;
          v115 = v100;
          goto LABEL_45;
        }
      }

      else
      {
        v103 = OUTLINED_FUNCTION_158_1();
        v107 = sub_2172CA1AC(v103, v104, v105, v106, v92);
        if ((v108 & 1) == 0)
        {
          v100 = v107;
          goto LABEL_44;
        }
      }

      OUTLINED_FUNCTION_158_1();
      sub_2172C9A08();

      v109 = *(v252 + 16);
      sub_21749A870(&v253);
      v110 = v253;
      v111 = v254;
      v112 = v246;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_227_0(*(v246 + 16));
        v112 = v246;
      }

      v114 = *(v112 + 16);
      v113 = *(v112 + 24);
      if (v114 >= v113 >> 1)
      {
        v138 = OUTLINED_FUNCTION_57(v113);
        sub_2172768E8(v138, v114 + 1, 1);
        v112 = v246;
      }

      v115 = v109 - 1;
      *(v112 + 16) = v114 + 1;
      v116 = v112 + 16 * v114;
      *(v116 + 32) = v110;
      *(v116 + 40) = v111;
      v17 = v252;
      v20 = v112;
LABEL_45:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2174923F0();
        v20 = v117;
      }

      v118 = v20 + 16 * v115;
      v119 = *(v118 + 40);
      v253 = *(v118 + 32);
      v254 = v119;
      v120 = *(v119 + 16);
      if (v253)
      {

        v121 = OUTLINED_FUNCTION_156_1();
        sub_2172CA228(v121, v122, v123, v120, v124);
        v126 = v125;

        if ((v126 & 1) == 0)
        {
          goto LABEL_52;
        }

LABEL_51:
        v131 = OUTLINED_FUNCTION_156_1();
        sub_2172C98F0(v131, v132);
      }

      else
      {
        v127 = OUTLINED_FUNCTION_156_1();
        sub_2172CA130(v127, v128, v129, v120);
        if (v130)
        {
          goto LABEL_51;
        }
      }

LABEL_52:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2174923F0();
        v20 = v133;
      }

      v134 = *(v0 + 464);
      v135 = *(v0 + 344);
      v136 = v20 + 16 * v115;
      v137 = v254;
      *(v136 + 32) = v253;
      *(v136 + 40) = v137;
      (*v220)(v134, v135);
      v211 = sub_21749A870;
      goto LABEL_2;
    }

    v29 = *(v0 + 440);
    v30 = v26;
    v31 = *(v0 + 400);
    v32 = *(v0 + 384);
    v33 = *(v0 + 344);
    (*v214)(v29, *(v0 + 464), v33);
    (*v212)(v31, v29, v33);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v33);
    *(v0 + 304) = v30;
    *(v0 + 312) = v27;
    sub_217751AC8();
    sub_217751A78();
    (*v233)(v31, v32);
    v34 = OUTLINED_FUNCTION_145_0();
    v35(v34);
    (*v220)(v29, v33);
  }

  v139 = *(v244 + 16);
  if (v139)
  {
    if (v139 == 1)
    {
      if (!*(v246 + 16))
      {
        goto LABEL_77;
      }

      v140 = *(v244 + 48);
      v141 = *(v244 + 32);
      v142 = *(v244 + 40);

      sub_217751DE8();
      v143 = OUTLINED_FUNCTION_56_0();
      v145 = sub_2172C62BC(v143, v144);
      v147 = v146;

      v148 = v140;
    }

    else
    {

      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27720, &unk_21775A490);
      sub_2172CA7E4(v162, v163, v164);
      v141 = sub_217751DC8();
      v253 = v251;
      v254 = v244;
      v255 = v246;
      v256 = 0;

      while (1)
      {
        sub_21744D578(&v257);
        v145 = *(&v257 + 1);
        if (!*(&v257 + 1))
        {
          break;
        }

        sub_2172C62BC(*(&v258 + 1), v259);
        swift_isUniquelyReferenced_nonNull_native();
        *&v257 = v141;
        sub_2172C8720();

        v141 = v257;
      }

      v142 = 0;
      v148 = 0;
      v147 = 0xC000000000000000;
    }

    v165 = *(v0 + 80);
    v160 = *(v0 + 96);
    v166 = *(v0 + 104);
    v219 = v145;
    v222 = v148;
    v216 = v147;
    v223 = *(v0 + 88);
    if (v160)
    {
      if (v160 == 1)
      {
        v242 = *(v0 + 104);
        OUTLINED_FUNCTION_38_3();
        OUTLINED_FUNCTION_194_0(v167, v168, v169, v170, v171, v172, v173);

        (*(v142 + 8))(v165, v166);
        v174 = v142;

        v175 = OUTLINED_FUNCTION_219_0();
        type metadata accessor for MusicCatalogResourceRequest.FilterContext(v175, v176, v147, v233);
        OUTLINED_FUNCTION_6_0();
        (*(v177 + 8))(v0 + 16);
        v160 = 1;
      }

      else
      {
        v257 = xmmword_21775A470;
        *&v258 = v141;
        *(&v258 + 1) = v142;
        v235 = v142;
        *&v259 = v148;
        *(&v259 + 1) = v145;
        v260 = v147;
        sub_217751DE8();
        v188 = sub_2172C2A54();
        v189 = *(v0 + 600);
        v190 = *(v0 + 544);
        v239 = v160;
        v191 = *(v0 + 520);
        v231 = *(v0 + 368);
        v227 = *(v0 + 360);
        v208 = *(v0 + 352);
        v213 = *(v0 + 344);
        v206 = *(v0 + 336);
        if (*(v188 + 16))
        {
          v205 = *(v188 + 32);
          v201 = *(v0 + 560);
          v202 = *(v0 + 512);
          v203 = *(v188 + 40);
          v204 = *(v188 + 48);
          v192 = *(v0 + 552);
          v193 = v165;
          v165 = *(v0 + 536);
          v166 = *(v0 + 528);
          sub_217751DE8();
          v194 = v165;
          LOBYTE(v165) = v193;
          sub_2172CB00C(v202, v191, v166, v194, v190, v192, v201);

          (*(v189 + 8))(v206, v208, v195);

          sub_2172CB1C4(v193, v223, v239);
          type metadata accessor for MusicCatalogResourceRequest.FilterContext(0, v213, v227, v231);
          OUTLINED_FUNCTION_6_0();
          (*(v196 + 8))(v0 + 16);
          v223 = v205;
          v160 = v203;
          LOBYTE(v166) = v204;
        }

        else
        {
          sub_2172CB00C(*(v0 + 512), v191, *(v0 + 528), *(v0 + 536), v190, *(v0 + 552), *(v0 + 560));

          (*(v189 + 8))(v206, v208, v197);

          type metadata accessor for MusicCatalogResourceRequest.FilterContext(0, v213, v227, v231);
          OUTLINED_FUNCTION_6_0();
          (*(v198 + 8))(v0 + 16);
        }

        v237 = v165;
        v242 = v166 & 1;
        v174 = v235;
      }
    }

    else
    {
      v242 = *(v0 + 104);
      OUTLINED_FUNCTION_38_3();
      OUTLINED_FUNCTION_194_0(v178, v179, v180, v181, v182, v183, v184);

      (*(v142 + 8))(v165, v166);
      v174 = v142;

      v185 = OUTLINED_FUNCTION_219_0();
      type metadata accessor for MusicCatalogResourceRequest.FilterContext(v185, v186, v147, v233);
      OUTLINED_FUNCTION_6_0();
      (*(v187 + 8))(v0 + 16);
      v160 = 0;
    }

    v234 = *(v0 + 72);
    v226 = 25705;
    v230 = 0xE200000000000000;
    v157 = v219;
    v161 = v222;
    v158 = v216;
    v159 = v223;
    v156 = v174;
  }

  else
  {
    v149 = *(v0 + 600);
    v215 = *(v0 + 552);
    v218 = *(v0 + 560);
    v150 = *(v0 + 544);
    v151 = *(v0 + 536);
    v152 = *(v0 + 528);
    v153 = *(v0 + 520);
    v154 = *(v0 + 512);
    v229 = *(v0 + 368);
    v225 = *(v0 + 360);
    v221 = *(v0 + 344);
    v238 = *(v0 + 336);
    v241 = *(v0 + 352);

    sub_2172CB00C(v154, v153, v152, v151, v150, v215, v218);

    type metadata accessor for MusicCatalogResourceRequest.FilterContext(0, v221, v225, v229);
    OUTLINED_FUNCTION_6_0();
    (*(v155 + 8))(v0 + 16);
    (*(v149 + 8))(v238, v241);

    v226 = 0;
    v230 = 0;
    v141 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v234 = 0;
    v237 = 0;
    v159 = 0;
    v160 = 0;
    v242 = 0;
    v161 = 0x1FFFFFFFELL;
  }

  v199 = *(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v209);
  sub_2172202A4(v211, 0);
  sub_2172202A4(v210, 0);
  *v199 = v226;
  *(v199 + 8) = v230;
  *(v199 + 16) = v141;
  *(v199 + 24) = v156;
  *(v199 + 32) = v161;
  *(v199 + 40) = v157;
  *(v199 + 48) = v158;
  *(v199 + 56) = v234;
  *(v199 + 64) = v237;
  *(v199 + 72) = v159;
  *(v199 + 80) = v160;
  *(v199 + 88) = v242;
  *(v199 + 96) = v248;
  *(v199 + 104) = v249;
  *(v199 + 112) = v250;
  OUTLINED_FUNCTION_191_1();

  OUTLINED_FUNCTION_0_2();

  v200();
}

uint64_t sub_2172BD628()
{
  OUTLINED_FUNCTION_38_3();
  sub_2172CB00C(v0[64], v1, v2, v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_178_0();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  OUTLINED_FUNCTION_20_0();

  return v9();
}

uint64_t sub_2172BD71C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v5[49] = a4;
  v5[50] = v4;
  v5[47] = a1;
  v5[48] = a3;
  v8 = sub_2177516D8();
  v5[51] = v8;
  v5[52] = *(v8 - 8);
  v5[53] = swift_task_alloc();
  v9 = sub_2177512F8();
  v5[54] = v9;
  v5[55] = *(v9 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = type metadata accessor for MusicDataRequest(0);
  v5[58] = swift_task_alloc();
  type metadata accessor for MusicAPI.Endpoint(0);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[61] = v10;
  memcpy(v5 + 18, a2, 0x59uLL);
  v11 = swift_task_alloc();
  v5[62] = v11;
  *v11 = v5;
  v11[1] = sub_2172BD910;

  return sub_2172BE9FC(v10, (v5 + 18), a4);
}

uint64_t sub_2172BD910()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 504) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172BDA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v16 = v14[58];
  v15 = v14[59];
  v18 = v14[52];
  v17 = v14[53];
  v19 = v14[51];
  v47 = v14[57];
  v48 = v14[50];
  sub_2172CB230(v14[61], v14[60]);
  v20 = OUTLINED_FUNCTION_93();
  sub_2172CB230(v20, v21);
  (*(v18 + 16))(v17, v15, v19);
  sub_2177512B8();
  sub_2172CB294(v15, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  OUTLINED_FUNCTION_88_3();
  v23 = v22();
  v24 = v16 + *(v47 + 20);
  OUTLINED_FUNCTION_109(v23, (v14 + 40));
  v25 = off_280BEBCD0;

  (v25)(v14 + 30);

  v26 = v14[33];
  v27 = v14[34];
  __swift_project_boxed_opaque_existential_1(v14 + 30, v26);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v26, v27, v24);
  v28 = OUTLINED_FUNCTION_85_3();
  v29(v28);
  v30 = OUTLINED_FUNCTION_123_2();
  sub_2172CB294(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(v14 + 30);
  sub_21725EE54(v48 + 128, v24);
  v32 = *(v24 + 32);
  v33 = OUTLINED_FUNCTION_124_2();
  __swift_project_boxed_opaque_existential_1(v33, v34);
  OUTLINED_FUNCTION_66_3();
  v49 = v35 + *v35;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v14[64] = v36;
  *v36 = v37;
  v36[1] = sub_2172BDC6C;
  OUTLINED_FUNCTION_93_3();
  OUTLINED_FUNCTION_120_0();

  return v42(v38, v39, v40, v41, v42, v43, v44, v45, a9, v32 + 104, v49, a12, a13, a14);
}

uint64_t sub_2172BDC6C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 520) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172BDD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v15 = v14[65];
  v17 = v14[49];
  v16 = v14[50];
  v18 = v14[45];
  sub_217751348();
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v16 + 128, (v14 + 35));
  JSONDecoder.dataRequestConfiguration.setter((v14 + 35));

  JSONDecoder.sharedRelatedItemStore.setter(v19);
  type metadata accessor for CloudResourceCollection(0, *(v17 + 16), v20, v21);
  v14[46] = *(v17 + 32);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_139_1();
  sub_217751308();
  v22 = v14[61];
  if (v15)
  {
    v23 = v14[58];

    v24 = OUTLINED_FUNCTION_145_0();
    sub_217275694(v24, v25);

    OUTLINED_FUNCTION_1_17();
    sub_2172CB294(v22, v26);
    OUTLINED_FUNCTION_21();
    sub_2172CB294(v23, v27);

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v28 = v14[58];
    a9 = v14[56];
    a10 = v14[53];
    v29 = v14[47];

    v30 = OUTLINED_FUNCTION_145_0();
    sub_217275694(v30, v31);

    OUTLINED_FUNCTION_1_17();
    sub_2172CB294(v22, v32);
    memcpy(v29, v14 + 2, 0x80uLL);
    OUTLINED_FUNCTION_21();
    sub_2172CB294(v28, v33);

    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_120_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2172BDF64()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 464);
  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v2, v3);
  OUTLINED_FUNCTION_21();
  sub_2172CB294(v1, v4);
  OUTLINED_FUNCTION_229_0();

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2172BE010()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_229_0();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

void sub_2172BE0A0()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v61 = v5;
  v6 = *(v1 + 16);
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v64 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  v70 = v11;
  v69 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v63 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v68 = &v58 - v14;
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v60 = v18;
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0[12];
  v20 = v0[13];
  v22 = v0[14];
  v75 = v21;
  v76 = v20;
  v77 = v22;
  v23 = v4[2];

  v67 = v22;

  sub_217751DE8();
  v24 = sub_2177522A8();
  v74 = v24;
  OUTLINED_FUNCTION_147_2();
  if (v24 != sub_217752388())
  {
    v59 = v4;
    v58 = v2;
    v67 = *(v2 + 24);
    v65 = *(v67 + 8);
    v66 = v67 + 8;
    v28 = (v16 + 16);
    ++v63;
    v64 += 8;
    v62 = (v16 + 8);
    while (1)
    {
      OUTLINED_FUNCTION_147_2();
      v29 = sub_217752358();
      sub_2177522D8();
      if (v29)
      {
        v30 = *(v16 + 16);
        v31 = v28;
        v30(v19, (v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v24), v6);
      }

      else
      {
        OUTLINED_FUNCTION_150_0();
        v38 = sub_217752AC8();
        if (v60 != 8)
        {
          __break(1u);
          return;
        }

        v71 = v38;
        v30 = *v28;
        v31 = v28;
        (*v28)(v19, &v71, v6);
        swift_unknownObjectRelease();
      }

      sub_2177523E8();
      v30(v10, v19, v6);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
      v71 = v65(v6, v67);
      v72 = v32;
      sub_2172CAE0C(v71, v32, v33);
      sub_217751AC8();
      v34 = v68;
      sub_217751A78();

      v35 = OUTLINED_FUNCTION_124_2();
      v36(v35);
      (*v63)(v34, v69);
      (*v62)(v19, v6);
      OUTLINED_FUNCTION_147_2();
      v37 = sub_217752388();
      v24 = v74;
      v28 = v31;
      if (v74 == v37)
      {

        v21 = v75;
        v26 = v76;
        v27 = v77;
        v4 = v59;
        goto LABEL_10;
      }
    }
  }

  v26 = v20;
  v27 = v67;
LABEL_10:
  v66 = v21;
  v71 = v21;
  v72 = v26;
  v73 = v27;
  v39 = MEMORY[0x28223BE20](v25);
  v41 = v40;
  KeyPath = swift_getKeyPath(byte_21775A9D8, v39);
  v69 = &v58;
  MEMORY[0x28223BE20](KeyPath);
  sub_2172CAE0C(v43, v44, v45);
  sub_217751A98();

  v68 = v41;

  v67 = v27;

  swift_getWitnessTable();
  v70 = sub_217752148();

  v46 = v4[4];
  v69 = v4[3];
  v48 = v4[5];
  v47 = v4[6];
  v49 = v4[7];
  v50 = v4[8];
  sub_2172CAE8C((v4 + 9), &v71);
  v57 = v4[15];
  v56 = v4[14];
  v51 = OUTLINED_FUNCTION_35();
  sub_2174CEEB0(v51, v52, v70, v69, v46, v48, v47, v49, v53, v50, &v71, v56, v57);
  v54 = OUTLINED_FUNCTION_35();
  sub_2171FB568(v54, v55);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();

  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172BE698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_2172BE6BC, 0, 0);
}

uint64_t sub_2172BE6BC()
{
  OUTLINED_FUNCTION_209();
  __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 128), *(*(v0 + 144) + 152));
  v1 = OUTLINED_FUNCTION_16_1();
  if (v2(v1))
  {
    v4 = *(v0 + 136);
    *(v0 + 152) = *(v4 + 16);
    v5 = *(v4 + 24);
    *(v0 + 160) = v5;
    OUTLINED_FUNCTION_56_0();
    sub_2173E02B4(v6);
    *(v0 + 185) = *(v0 + 184);
    OUTLINED_FUNCTION_56_0();
    sub_2173E02B4(v7);
    *(v0 + 187) = *(v0 + 186);
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    v9 = OUTLINED_FUNCTION_118_3();
    type metadata accessor for MusicItemCollection(v9, v10, v5, v11);
    *v8 = v0;
    v8[1] = sub_2172BE85C;
    OUTLINED_FUNCTION_88_3();

    return MusicItemCollection.libraryMapped(policy:scope:)(v12, v13, v14, v15);
  }

  else
  {
    type metadata accessor for MusicCatalogResourceResponse(0, *(*(v0 + 136) + 16), *(*(v0 + 136) + 24), v3);
    OUTLINED_FUNCTION_43();
    v17 = OUTLINED_FUNCTION_93();
    v18(v17);
    OUTLINED_FUNCTION_0_2();

    return v19();
  }
}

uint64_t sub_2172BE85C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172BE954()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v0;
  v1 = *(v0 + 120);
  memcpy(v4, (v0 + 16), sizeof(v4));
  sub_2173AA804(v4, v1);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2172BE9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = v3;
  *(v4 + 168) = a1;
  v6 = sub_217751428();
  *(v4 + 192) = v6;
  *(v4 + 200) = *(v6 - 8);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  sub_217751908();
  *(v4 + 280) = swift_task_alloc();
  v7 = sub_217751928();
  *(v4 + 288) = v7;
  *(v4 + 296) = *(v7 - 8);
  *(v4 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = type metadata accessor for MusicAPI.Endpoint(0);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  v8 = *(a2 + 16);
  *(v4 + 352) = *a2;
  *(v4 + 368) = v8;
  v9 = *(a2 + 48);
  *(v4 + 384) = *(a2 + 32);
  *(v4 + 400) = v9;
  *(v4 + 416) = *(a2 + 64);
  *(v4 + 432) = *(a2 + 80);
  *(v4 + 105) = *(a2 + 88);

  return MEMORY[0x2822009F8](sub_2172BEC54, 0, 0);
}

uint64_t sub_2172BEC54()
{
  v124 = v0;
  v3 = *(v0 + 408);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = *(v0 + 312);
    v4 = *(v0 + 320);
    sub_2172CA838(*(v0 + 184) + 128, v0 + 112);
    sub_217751DE8();
    OUTLINED_FUNCTION_93();
    sub_217434F08();
    v6 = 1;
    if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
    {
      sub_2172CB34C(*(v0 + 312), &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_24_12();
      sub_2171FF238(v7, v8, MEMORY[0x277CC9AE0]);
      OUTLINED_FUNCTION_113();
      sub_217751618();
      sub_217751918();
      v9 = OUTLINED_FUNCTION_20_6();
      v10(v9);
      swift_willThrow();
      OUTLINED_FUNCTION_73_5();

      OUTLINED_FUNCTION_20_0();
      goto LABEL_44;
    }

    v20 = *(v0 + 336);
    v21 = *(v0 + 344);
    sub_2172CB2E8(*(v0 + 312), v20);
    v22 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v22, v23);
    *(v0 + 107) = 0;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0;
    *(v0 + 106) = 1;
    OUTLINED_FUNCTION_116_3();
    if (v24)
    {
      v25 = *(v21 + 152);
      sub_217751DE8();
      __swift_project_boxed_opaque_existential_1((v21 + 128), v25);
      OUTLINED_FUNCTION_66_3();
      v26 = swift_task_alloc();
      *(v0 + 504) = v26;
      *v26 = v0;
      OUTLINED_FUNCTION_71_4(v26);
      OUTLINED_FUNCTION_129_1();

      __asm { BRAA            X2, X16 }
    }

    v29 = *(v21 + 177);
    sub_217751DE8();
    if (v29 == 1 || v29 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v29 != 3)
      {
LABEL_24:
        v42 = *(v0 + 184);
        if ((*(v42 + 8) & 1) == 0)
        {
          OUTLINED_FUNCTION_101_2(v42);
          v43 = sub_217752FC8();
          OUTLINED_FUNCTION_48_6(v43, v44);

          v45 = OUTLINED_FUNCTION_32_7();
          v117 = v46;
          (v46)(v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = OUTLINED_FUNCTION_17();
            sub_2172B1A50(v99, v100, v101, v20);
            v20 = v102;
          }

          OUTLINED_FUNCTION_162_0();
          if (v37)
          {
            v103 = OUTLINED_FUNCTION_11_1(v47);
            sub_2172B1A50(v103, v104, v105, v20);
            v20 = v106;
          }

          v48 = OUTLINED_FUNCTION_26_11();
          (v6)(v48);
          *(v0 + 152) = v20;
          if (v2 >= 301 && (v49 = [objc_opt_self() mainBundle], v50 = NSBundle.isMusicApp.getter(), v49, v50))
          {
            OUTLINED_FUNCTION_25_10();
            OUTLINED_FUNCTION_149_0();
            v117();
            OUTLINED_FUNCTION_161_1();
            v118 = v52;
            if (v37)
            {
              v107 = OUTLINED_FUNCTION_57(v51);
              OUTLINED_FUNCTION_126_2(v107, v108);
              v20 = v109;
            }

            v53 = OUTLINED_FUNCTION_144_0();
            v1(v53);
            v54 = OUTLINED_FUNCTION_148();
            v55 = (v1)(v54);
            v63 = OUTLINED_FUNCTION_143_0(v55, v56, v57, v58, v59, v60, v61, v62, v110, v111, v112, v113, v114, v115, v116, v6, v0 + 160, v118);
            v64(v63);
            *(v0 + 152) = v20;
          }

          else
          {
            v65 = OUTLINED_FUNCTION_160_2();
            v66(v65);
          }
        }

LABEL_35:
        v119 = *(v0 + 472);
        v67 = OUTLINED_FUNCTION_70_4();
        v120 = v68;
        v121 = v69;
        v122 = v70;
        v123 = v71;
        v73 = *(v72 + 16);
        Array<A>.appendQueryItems<A>(for:cloudResourceRequestKind:baseResourceType:)(v67, &v119, &v122, v73, *(v72 + 24));

        sub_2172CB1C4(v119, *(&v119 + 1), v120);
        if (dynamic_cast_existential_1_conditional(v73, v73, &protocol descriptor for CloudRequestable))
        {
          OUTLINED_FUNCTION_76_4();
          v76 = v75(v74 + 128, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration);
          sub_21754383C(v76);
        }

        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_31_6(&qword_280BE7420);
        }

        v77 = *(v0 + 208);
        __swift_project_value_buffer(*(v0 + 192), qword_280BE7428);
        v78 = OUTLINED_FUNCTION_110_2();
        v79(v78);
        v80 = *(v0 + 152);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = OUTLINED_FUNCTION_17();
          sub_2172B1A50(v87, v88, v89, v80);
        }

        OUTLINED_FUNCTION_159_0();
        if (v37)
        {
          v90 = OUTLINED_FUNCTION_57(v81);
          OUTLINED_FUNCTION_195_2(v90);
        }

        OUTLINED_FUNCTION_98_4();
        v82 = OUTLINED_FUNCTION_23_14();
        v83(v82);
        MusicAPI.Endpoint.applying(_:)();

        OUTLINED_FUNCTION_1_17();
        sub_2172CB294(v77, v84);

        OUTLINED_FUNCTION_0_2();
LABEL_44:
        OUTLINED_FUNCTION_129_1();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_46_7();
    }

    v6 = *(v0 + 192);
    v1 = *(v0 + 200);
    OUTLINED_FUNCTION_82_3(v31, v32, v33);

    v34 = OUTLINED_FUNCTION_32_7();
    v35(v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v91, v92, v93, v20);
      v20 = v94;
    }

    OUTLINED_FUNCTION_103();
    if (v37)
    {
      v95 = OUTLINED_FUNCTION_11_1(v36);
      sub_2172B1A50(v95, v96, v97, v20);
      v20 = v98;
    }

    v38 = OUTLINED_FUNCTION_177_0();
    v39(v38);
    v40 = OUTLINED_FUNCTION_86_1();
    v41(v40);
    *(v0 + 152) = v20;
    if (*(v0 + 106) != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v11 = *(v0 + 105);
  v12 = *(v0 + 432);
  v13 = *(v0 + 400);
  v14 = *(v0 + 368);
  *(v0 + 16) = *(v0 + 352);
  v15 = *(v0 + 384);
  *(v0 + 32) = v14;
  *(v0 + 48) = v15;
  *(v0 + 64) = v13;
  *(v0 + 72) = v3 & 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 80) = *(v0 + 416);
  *(v0 + 96) = v12;
  *(v0 + 104) = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 440) = v16;
  *v16 = v17;
  v16[1] = sub_2172BF410;
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_129_1();

  return sub_2172C0FC8();
}

uint64_t sub_2172BF410()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172BF508()
{
  v106 = v1;
  v3 = *(v1 + 400);
  v95 = *(v1 + 352);
  v96 = *(v1 + 384);
  v93 = *(v1 + 368);
  sub_2172CB2E8(*(v1 + 328), *(v1 + 344));
  v102 = v95;
  v103 = v93;
  v104 = v96;
  v105 = v3;
  sub_2172C2A18(&v100);
  if (*(&v100 + 1))
  {
    if (v100 == 25705 && *(&v100 + 1) == 0xE200000000000000)
    {

      v5 = 0;
    }

    else
    {
      v0 = sub_217753058();

      v5 = v0 ^ 1;
    }
  }

  else
  {

    v5 = 1;
  }

  OUTLINED_FUNCTION_180_1();
  sub_2172CB1B0(v6, v7, v8);
  v9 = *(sub_2172C2A54() + 16);

  if (v9 == 1)
  {
    OUTLINED_FUNCTION_180_1();
    v10 = sub_2172C2A54();
    v0 = v10;
    if (*(v10 + 16))
    {
      v12 = *(v10 + 32);
      v11 = *(v10 + 40);
      v13 = *(v10 + 48);
      sub_217751DE8();
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v13 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v13 = 0;
  }

  v14 = *(v1 + 432);
  *(v1 + 108) = *(v1 + 105);
  *(v1 + 488) = v14;
  *(v1 + 472) = *(v1 + 416);
  *(v1 + 107) = v13;
  *(v1 + 456) = v12;
  *(v1 + 464) = v11;
  *(v1 + 106) = v5 & 1;
  OUTLINED_FUNCTION_116_3();
  if (v15 == 1)
  {
    v16 = *(v11 + 152);
    sub_217751DE8();
    __swift_project_boxed_opaque_existential_1((v11 + 128), v16);
    OUTLINED_FUNCTION_66_3();
    v97 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v1 + 504) = v18;
    *v18 = v1;
    v19 = OUTLINED_FUNCTION_71_4(v18);

    return v97(v19);
  }

  v21 = *(v11 + 177);
  sub_217751DE8();
  if (v21 == 1 || v21 == 4)
  {
    OUTLINED_FUNCTION_72_4();
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    OUTLINED_FUNCTION_46_7();
LABEL_27:
    v12 = *(v1 + 248);
    v13 = *(v1 + 192);
    OUTLINED_FUNCTION_82_3(v23, v24, v25);

    v26 = OUTLINED_FUNCTION_32_7();
    v27(v26);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v73, v74, v75, v0);
      v0 = v76;
    }

    OUTLINED_FUNCTION_103();
    if (v29)
    {
      v77 = OUTLINED_FUNCTION_11_1(v28);
      sub_2172B1A50(v77, v78, v79, v0);
      v0 = v80;
    }

    v30 = OUTLINED_FUNCTION_177_0();
    v31(v30);
    v32 = OUTLINED_FUNCTION_86_1();
    v33(v32);
    *(v1 + 152) = v0;
    if ((*(v1 + 106) & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_34;
  }

  if (v5)
  {
LABEL_34:
    v34 = *(v1 + 184);
    if ((*(v34 + 8) & 1) == 0)
    {
      OUTLINED_FUNCTION_101_2(v34);
      v35 = sub_217752FC8();
      OUTLINED_FUNCTION_48_6(v35, v36);

      v37 = OUTLINED_FUNCTION_32_7();
      v98 = v38;
      (v38)(v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = OUTLINED_FUNCTION_17();
        sub_2172B1A50(v81, v82, v83, v0);
        v0 = v84;
      }

      OUTLINED_FUNCTION_162_0();
      if (v29)
      {
        v85 = OUTLINED_FUNCTION_11_1(v39);
        sub_2172B1A50(v85, v86, v87, v0);
        v0 = v88;
      }

      v40 = OUTLINED_FUNCTION_26_11();
      v13(v40);
      *(v1 + 152) = v0;
      if (v2 >= 301 && (v41 = [objc_opt_self() mainBundle], v42 = NSBundle.isMusicApp.getter(), v41, v42))
      {
        v94 = v13;
        OUTLINED_FUNCTION_25_10();
        OUTLINED_FUNCTION_149_0();
        v98();
        OUTLINED_FUNCTION_161_1();
        v99 = v44;
        if (v29)
        {
          v89 = OUTLINED_FUNCTION_57(v43);
          OUTLINED_FUNCTION_126_2(v89, v90);
          v0 = v91;
        }

        v92 = *(v1 + 216);
        v45 = *(v1 + 192);
        v46 = *(*(v1 + 200) + 8);
        (v46)(*(v1 + 224), v45);
        v47 = OUTLINED_FUNCTION_148();
        v46(v47);
        *(v0 + 16) = v99;
        (v94)(v0 + v1 + 160 + v2 * v12, v92, v45);
        *(v1 + 152) = v0;
      }

      else
      {
        v48 = OUTLINED_FUNCTION_160_2();
        v49(v48);
      }
    }
  }

LABEL_45:
  v102 = *(v1 + 472);
  v50 = OUTLINED_FUNCTION_70_4();
  *&v103 = v51;
  BYTE8(v103) = v52;
  v100 = v53;
  v101 = v54;
  v56 = *(v55 + 16);
  Array<A>.appendQueryItems<A>(for:cloudResourceRequestKind:baseResourceType:)(v50, &v102, &v100, v56, *(v55 + 24));

  sub_2172CB1C4(v102, *(&v102 + 1), v103);
  if (dynamic_cast_existential_1_conditional(v56, v56, &protocol descriptor for CloudRequestable))
  {
    OUTLINED_FUNCTION_76_4();
    v59 = v58(v57 + 128, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration);
    sub_21754383C(v59);
  }

  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_31_6(&qword_280BE7420);
  }

  v60 = *(v1 + 208);
  __swift_project_value_buffer(*(v1 + 192), qword_280BE7428);
  v61 = OUTLINED_FUNCTION_110_2();
  v62(v61);
  v63 = *(v1 + 152);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = OUTLINED_FUNCTION_17();
    sub_2172B1A50(v69, v70, v71, v63);
  }

  OUTLINED_FUNCTION_159_0();
  if (v29)
  {
    v72 = OUTLINED_FUNCTION_57(v64);
    OUTLINED_FUNCTION_195_2(v72);
  }

  OUTLINED_FUNCTION_98_4();
  v65 = OUTLINED_FUNCTION_23_14();
  v66(v65);
  MusicAPI.Endpoint.applying(_:)();

  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v60, v67);

  OUTLINED_FUNCTION_0_2();

  return v68();
}