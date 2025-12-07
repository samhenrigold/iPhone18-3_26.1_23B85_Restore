id sub_1D9890608(void *a1, uint64_t a2, char a3)
{
  result = sub_1D992B9C4();
  if (!v3)
  {
    return [a1 writeBOOL:a3 & 1 forTag:2];
  }

  return result;
}

uint64_t sub_1D9890684(uint64_t result)
{
  v2 = *(result + 16);
  v3 = (result + 32);
  if (v2)
  {
    while (1)
    {
      v4 = *v3;
      v5[3] = &type metadata for TagPredicate;
      v5[4] = sub_1D9891570();
      v5[0] = v4;
      sub_1D98907D8(v4);
      sub_1D98907D8(v4);
      sub_1D992B9D4();
      if (v1)
      {
        break;
      }

      sub_1D9890810(v4);
      result = __swift_destroy_boxed_opaque_existential_1(v5);
      ++v3;
      if (!--v2)
      {
        return result;
      }
    }

    sub_1D9890810(v4);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_1D9890740(uint64_t a1, unint64_t a2)
{
  v4[3] = &type metadata for TagPredicate;
  v4[4] = sub_1D9891570();
  v4[0] = a2;
  sub_1D98907D8(a2);
  sub_1D992B9D4();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

unint64_t sub_1D98907D8(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D9890810(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9890884(uint64_t a1)
{
  v2 = type metadata accessor for MessageGroupIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t static TagPredicate.read(from:)()
{
  sub_1D9890E38();
  sub_1D992B964();
  if (!v2)
  {
    v3 = sub_1D992B484();
    v4 = sub_1D98847C8();
    OUTLINED_FUNCTION_4_6(v4);
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E6999BA8], v3);
    swift_willThrow();
  }

  return sub_1D9890E8C(0xF000000000000007);
}

id sub_1D9890A0C(unsigned __int8 *a1, void *a2, unint64_t *a3)
{
  v7 = type metadata accessor for MessageGroupIdentifier(0);
  MEMORY[0x1EEE9AC00](*(*(v7 - 8) + 64));
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  MEMORY[0x1EEE9AC00](*(*(v10 - 8) + 64));
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = *a1;
  switch(v15)
  {
    case 1:
      v25 = *a3;
      v26 = 0xA000000000000000;
      goto LABEL_14;
    case 2:
      __swift_storeEnumTagSinglePayload(&v37 - v13, 1, 1, v7);
      HIBYTE(v37) = 0;
      MEMORY[0x1EEE9AC00](v21);
      *(&v37 - 4) = a2;
      *(&v37 - 3) = v14;
      *(&v37 - 2) = &v37 + 7;
      sub_1D992B974();
      if (!v3)
      {
        sub_1D988F478(v14, v12);
        if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
        {
          sub_1D988F410(v12);
          v22 = sub_1D992B484();
          v23 = sub_1D98847C8();
          OUTLINED_FUNCTION_4_6(v23);
          (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E6999BA8], v22);
          swift_willThrow();
        }

        else
        {
          sub_1D9891600(v12, v9);
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
          v32 = swift_allocBox();
          v34 = v33;
          v35 = *(v31 + 48);
          sub_1D9891600(v9, v33);
          *(v34 + v35) = HIBYTE(v37);
          v36 = *a3;
          *a3 = v32 | 0x2000000000000000;
          sub_1D9890E8C(v36);
        }
      }

      return sub_1D988F410(v14);
    case 3:
      v25 = *a3;
      v26 = 0xA000000000000008;
LABEL_14:
      *a3 = v26;
      sub_1D9890E8C(v25);
      return [a2 readBOOL];
    case 4:
    case 5:
    case 6:
      v38 = MEMORY[0x1E69E7CC0];
      MEMORY[0x1EEE9AC00](MEMORY[0x1E69E7CC0]);
      *(&v37 - 2) = a2;
      *(&v37 - 1) = &v38;
      sub_1D992B974();
      v16 = v38;
      if (v3)
      {
      }

      v17 = *(v38 + 16);
      if (!v17)
      {
      }

      if (v15 == 4)
      {
        v28 = 0x6000000000000000;
LABEL_17:
        OUTLINED_FUNCTION_3();
        v29 = swift_allocObject();
        *(v29 + 16) = v16;
        v30 = v28 | v29;
        v20 = *a3;
        *a3 = v30;

        goto LABEL_18;
      }

      if (v15 != 6)
      {
        v28 = 0x4000000000000000;
        goto LABEL_17;
      }

      if (v17 != 1)
      {
      }

      v18 = *(v38 + 32);
      OUTLINED_FUNCTION_3();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      v20 = *a3;
      *a3 = v19 | 0x8000000000000000;
      sub_1D98907D8(v18);
LABEL_18:
      sub_1D9890E8C(v20);

    default:
      MEMORY[0x1EEE9AC00](&v37);
      *(&v37 - 2) = a2;
      *(&v37 - 1) = a3;
      return sub_1D992B974();
  }
}

unint64_t sub_1D9890E38()
{
  result = qword_1ECB47F98;
  if (!qword_1ECB47F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47F98);
  }

  return result;
}

unint64_t sub_1D9890E8C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D9890810(result);
  }

  return result;
}

unint64_t sub_1D9890EA4()
{
  result = qword_1ECB47F80;
  if (!qword_1ECB47F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47F80);
  }

  return result;
}

void *sub_1D9890EF8(uint64_t a1, unint64_t *a2)
{
  result = static TimestampRange.read(from:)();
  if (!v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v7;
    *(v5 + 24) = v8;
    *(v5 + 32) = v9;
    v6 = *a2;
    *a2 = v5;
    return sub_1D9890E8C(v6);
  }

  return result;
}

id sub_1D9890FDC(unsigned __int8 *a1, id a2, uint64_t a3, _BYTE *a4)
{
  v4 = *a1;
  if (v4)
  {
    result = [a2 readBOOL];
    *a4 = result;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    return sub_1D992B974();
  }

  return result;
}

uint64_t sub_1D9891080(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  MEMORY[0x1EEE9AC00](((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v10 - v6;
  result = static MessageGroupIdentifier.read(from:)(a2, &v10 - v6);
  if (!v2)
  {
    v9 = type metadata accessor for MessageGroupIdentifier(0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
    return sub_1D988F8B4(v7, a1);
  }

  return result;
}

unint64_t sub_1D98911A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D9890E38();
  sub_1D992B964();
  if (!v3)
  {
    v4 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6999BA8], v4);
    swift_willThrow();
  }

  return sub_1D9890E8C(0xF000000000000007);
}

uint64_t sub_1D98913B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1D9891440(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D989151C()
{
  result = qword_1ECB486C0;
  if (!qword_1ECB486C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486C0);
  }

  return result;
}

unint64_t sub_1D9891570()
{
  result = qword_1ECB47F88;
  if (!qword_1ECB47F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47F88);
  }

  return result;
}

uint64_t sub_1D9891600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageGroupIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D98916A0()
{
  result = qword_1ECB47F90;
  if (!qword_1ECB47F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47F90);
  }

  return result;
}

unint64_t sub_1D989172C()
{
  result = qword_1ECB486C8;
  if (!qword_1ECB486C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486C8);
  }

  return result;
}

_BYTE *sub_1D98917A8(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1D9891850(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D989192C()
{
  result = qword_1ECB486D0;
  if (!qword_1ECB486D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486D0);
  }

  return result;
}

unint64_t sub_1D9891984()
{
  result = qword_1ECB486D8;
  if (!qword_1ECB486D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486D8);
  }

  return result;
}

id TimestampRange.write(to:)(id a1)
{
  v2 = a1;
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v4 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = v1[1];
    [a1 writeUint64:v3 forTag:1];
    a1 = v2;
    v3 = v5;
  }

  v4 = 2;
LABEL_6:

  return [a1 writeUint64:v3 forTag:v4];
}

uint64_t static TimestampRange.read(from:)()
{
  sub_1D9891C38();
  result = sub_1D992B964();
  if (!v2)
  {
    v4 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6999BA8], v4);
    return swift_willThrow();
  }

  return result;
}

id sub_1D9891BE0(_BYTE *a1)
{
  v2 = v1 + 2;
  v3 = v1[3];
  if (*a1)
  {
    v2 = v1 + 4;
  }

  v4 = *v2;
  result = [v3 readUint64];
  *v4 = result;
  *(v4 + 8) = 0;
  return result;
}

unint64_t sub_1D9891C38()
{
  result = qword_1ECB47ED0;
  if (!qword_1ECB47ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47ED0);
  }

  return result;
}

unint64_t sub_1D9891C90()
{
  result = qword_1ECB486E0;
  if (!qword_1ECB486E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486E0);
  }

  return result;
}

_BYTE *_s6FieldsOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9891E9C()
{
  result = qword_1ECB486E8;
  if (!qword_1ECB486E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486E8);
  }

  return result;
}

unint64_t sub_1D9891EF0()
{
  result = qword_1ECB486F0;
  if (!qword_1ECB486F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486F0);
  }

  return result;
}

uint64_t type metadata accessor for StagingPoolEntry(uint64_t a1)
{
  result = qword_1ED8BF298;
  if (!qword_1ED8BF298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9891FB8(uint64_t a1)
{
  sub_1D989203C(319);
  if (v1 <= 0x3F)
  {
    sub_1D9892094();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D989203C(uint64_t a1)
{
  if (!qword_1ED8BF1E0)
  {
    type metadata accessor for MonotonicTimestamp(255);
    v1 = sub_1D992BC04();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8BF1E0);
    }
  }
}

unint64_t sub_1D9892094()
{
  result = qword_1ED8BF0B8;
  if (!qword_1ED8BF0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BF0B8);
  }

  return result;
}

void sub_1D98920E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1D98B9860(0, v1, 0);
    v3 = v56;
    sub_1D9894910(v2);
    v5 = v4;
    v55 = v6;
    v7 = v2 + 56;
    v8 = 0;
    v47 = sub_1D992AE84();
    OUTLINED_FUNCTION_0();
    v45 = v9 + 16;
    v11 = *(v10 + 64);
    v46 = v9;
    v43 = v2;
    v44 = v9 + 8;
    v12 = (v2 + 64);
    v40 = v2 + 64;
    v41 = v11;
    v42 = v1;
    v48 = v2 + 56;
    while (1)
    {
      MEMORY[0x1EEE9AC00](v12);
      if ((v14 & 0x8000000000000000) != 0 || v14 >= v13 << *(v2 + 32))
      {
        break;
      }

      v49 = v8;
      v15 = v14 >> 6;
      v16 = v13 << v14;
      if ((*(v7 + 8 * (v14 >> 6)) & (v13 << v14)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v2 + 36) != v5)
      {
        goto LABEL_25;
      }

      v50 = v14;
      v51 = v5;
      v17 = v46;
      v18 = v47;
      v19 = *(v2 + 48) + *(v46 + 72) * v14;
      v54 = v3;
      v20 = *(v46 + 16);
      v20(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v47);
      v52 = &v39;
      MEMORY[0x1EEE9AC00](&v39);
      v21 = OUTLINED_FUNCTION_29_2();
      (v20)(v21);
      v22 = sub_1D992AE24();
      v53 = v23;
      v24 = *(v17 + 8);
      v24(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      v24(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      v3 = v54;
      v56 = v54;
      v26 = *(v54 + 16);
      v25 = *(v54 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D98B9860(v25 > 1, v26 + 1, 1);
        v3 = v56;
      }

      *(v3 + 16) = v26 + 1;
      v27 = v3 + 24 * v26;
      v28 = v53;
      *(v27 + 32) = v22;
      *(v27 + 40) = v28;
      *(v27 + 48) = 0;
      v7 = v48;
      if (v55)
      {
        goto LABEL_29;
      }

      v2 = v43;
      v29 = 1 << *(v43 + 32);
      if (v50 >= v29)
      {
        goto LABEL_26;
      }

      v30 = *(v48 + 8 * v15);
      if ((v30 & v16) == 0)
      {
        goto LABEL_27;
      }

      if (*(v43 + 36) != v51)
      {
        goto LABEL_28;
      }

      v31 = v30 & (-2 << (v50 & 0x3F));
      if (v31)
      {
        v12 = __clz(__rbit64(v31));
        v32 = v42;
        v33 = v49;
      }

      else
      {
        v34 = v15 << 6;
        v35 = v15 + 1;
        v36 = (v40 + 8 * v15);
        v32 = v42;
        v33 = v49;
        while (v35 < (v29 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_1D988AD24(v50, v51, 0);
            v12 = __clz(__rbit64(v37));
            goto LABEL_20;
          }
        }

        sub_1D988AD24(v50, v51, 0);
      }

LABEL_20:
      v8 = v33 + 1;
      if (v8 == v32)
      {
        return;
      }

      v55 = 0;
      v5 = *(v2 + 36);
      v11 = v41;
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

uint64_t sub_1D9892478(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4 && (a2 | a1) == 0)
  {
    return 0;
  }

  if (!a3)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48410, &qword_1D992FD50);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9892528(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4 && (a2 | a1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48718, &qword_1D9931348);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98925C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 4 && (a2 | result) == 0)
  {
    return 0;
  }

  if (a3 == 1 && result < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48720, &unk_1D9931350);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9892670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a3;
  if (a3 == 4 && (a2 | a1) == 0)
  {
    sub_1D992AE04();
    OUTLINED_FUNCTION_10_4();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_20_0();
    MEMORY[0x1EEE9AC00](v7);
    v9 = &v18 - v8;
    if (v5 == 2)
    {
      sub_1D992ADB4();
      v10 = sub_1D992AE04();
      v11 = 0;
    }

    else
    {
      v10 = sub_1D992AE04();
      v11 = 1;
    }

    __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
    sub_1D992AE04();
    v17 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a4, v17 ^ 1u, 1, v10);
  }
}

uint64_t sub_1D98927C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 4 && (a2 | result) == 0)
  {
    v4 = 0;
    v5 = 1;
    return v4 | (v5 << 32);
  }

  if (a3 != 1)
  {
LABEL_10:
    OUTLINED_FUNCTION_22_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48730, &qword_1D9931368);
    v6 = swift_dynamicCast();
    v4 = v7;
    if (!v6)
    {
      v4 = 0;
    }

    v5 = v6 ^ 1;
    return v4 | (v5 << 32);
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9892880(unint64_t result, uint64_t a2, char a3)
{
  if (a3 == 4 && (a2 | result) == 0)
  {
    v4 = 0;
    v5 = 1;
    return v4 | (v5 << 32);
  }

  if (a3 != 1)
  {
LABEL_10:
    OUTLINED_FUNCTION_22_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48728, &qword_1D9931360);
    v6 = swift_dynamicCast();
    v4 = v7;
    if (!v6)
    {
      v4 = 0;
    }

    v5 = v6 ^ 1;
    return v4 | (v5 << 32);
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9892930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LogicalClocksTable.Record(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v5 + 64));
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = sub_1D992AE84();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33_0();
  v216 = v14 - (v13 & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = &v205 - v16;
  if (!*(a1 + 16) || (v18 = OUTLINED_FUNCTION_6_8(), sub_1D9889410(v18, 0xE800000000000000), (v19 & 1) == 0))
  {

    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v9);
LABEL_17:
    v43 = v17;
    goto LABEL_18;
  }

  v213 = v11;
  v214 = a2;
  v215 = v4;
  OUTLINED_FUNCTION_1_13();
  v21 = *(v20 + 16);
  v22 = *(v20 + 8) | *v20;
  v23 = v21 == 4 && v22 == 0;
  if (v23)
  {
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v9);
LABEL_16:

    v4 = v215;
    goto LABEL_17;
  }

  v211 = &v205;
  v212 = v8;
  MEMORY[0x1EEE9AC00](&v205);
  OUTLINED_FUNCTION_8_5();
  v26 = v24 - v25;
  if (v21 == 3)
  {
    v33 = OUTLINED_FUNCTION_9_0();
    sub_1D987BA38(v33, v34);
    OUTLINED_FUNCTION_9_0();
    sub_1D992AD64();
  }

  else if (v21)
  {
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v9);
    v38 = OUTLINED_FUNCTION_9_0();
    sub_1D986C8B8(v38, v39, v21);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    sub_1D992AE14();
  }

  v40 = OUTLINED_FUNCTION_24_1(v17, v26);
  __swift_storeEnumTagSinglePayload(v17, v40 ^ 1u, 1, v9);
  v41 = OUTLINED_FUNCTION_9_0();
  sub_1D986C908(v41, v42, v21);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_18_1(v17);
  if (v23)
  {
    goto LABEL_16;
  }

  v48 = v213;
  v49 = v216;
  v210 = *(v213 + 32);
  v210(v216, v17, v9);
  v50 = *(v48 + 16);
  v50(v212, v49, v9);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_33_0();
  v54 = v53 - (v52 & 0xFFFFFFFFFFFFFFF0);
  v211 = &v205;
  MEMORY[0x1EEE9AC00](&v205);
  OUTLINED_FUNCTION_8_5();
  v57 = v55 - v56;
  if (*(a1 + 16))
  {
    sub_1D9889410(0xD000000000000011, 0x80000001D9936910);
    if (v58)
    {
      v209 = &v205;
      OUTLINED_FUNCTION_1_13();
      v60 = *v59;
      v61 = v59[1];
      v62 = *(v59 + 16);
      if (v62 == 4)
      {
        v59 = (v61 | v60);
        if (!(v61 | v60))
        {
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v63, v64, v65, v9);
LABEL_34:
          v79 = OUTLINED_FUNCTION_21_1();
          (v54)(v79);

          v4 = v215;
          goto LABEL_35;
        }
      }

      MEMORY[0x1EEE9AC00](v59);
      OUTLINED_FUNCTION_8_5();
      v207 = v71;
      v208 = v70;
      v205 = v74;
      v206 = v72 - v73;
      if (v62 == 3)
      {
        sub_1D987BA38(v70, v71);
        sub_1D992AD64();
      }

      else if (v62)
      {
        OUTLINED_FUNCTION_10_4();
        __swift_storeEnumTagSinglePayload(v75, v76, v77, v9);
        sub_1D986C8B8(v208, v207, v62);
      }

      else
      {

        sub_1D992AE14();
      }

      v78 = OUTLINED_FUNCTION_24_1(v57, v206);
      __swift_storeEnumTagSinglePayload(v57, v78 ^ 1u, 1, v9);
      sub_1D986C908(v208, v207, v62);
      OUTLINED_FUNCTION_18_1(v57);
      if (v23)
      {
        goto LABEL_34;
      }

      v210(v54, v57, v9);
      OUTLINED_FUNCTION_30_1();
      v82 = v54;
      v83 = v212;
      v84 = v212 + v215[5];
      v210 = v82;
      (v50)(v84);
      MEMORY[0x1EEE9AC00](v85);
      OUTLINED_FUNCTION_8_5();
      v88 = v86 - v87;
      if (*(a1 + 16) && (v89 = OUTLINED_FUNCTION_15_1(), sub_1D9889410(v89, v90), (v91 & 1) != 0) && ((OUTLINED_FUNCTION_1_13(), v93 = *v92, v94 = v92[1], v95 = *(v92 + 16), v95 != 4) || (v92 = (v94 | v93)) != 0))
      {
        MEMORY[0x1EEE9AC00](v92);
        OUTLINED_FUNCTION_8_5();
        v194 = v192 - v193;
        if (v95 == 3)
        {
          v195 = OUTLINED_FUNCTION_9_0();
          sub_1D987BA38(v195, v196);
          OUTLINED_FUNCTION_9_0();
          sub_1D992AD64();
        }

        else if (v95)
        {
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v197, v198, v199, v9);
          v200 = OUTLINED_FUNCTION_9_0();
          sub_1D986C8B8(v200, v201, v95);
        }

        else
        {

          OUTLINED_FUNCTION_9_0();
          sub_1D992AE14();
        }

        v202 = OUTLINED_FUNCTION_24_1(v88, v194);
        __swift_storeEnumTagSinglePayload(v88, v202 ^ 1u, 1, v9);
        v203 = OUTLINED_FUNCTION_9_0();
        sub_1D986C908(v203, v204, v95);
        v83 = v212;
      }

      else
      {
        OUTLINED_FUNCTION_10_4();
        __swift_storeEnumTagSinglePayload(v96, v97, v98, v9);
      }

      v4 = v215;
      sub_1D989437C(v88, v83 + v215[6], &qword_1ECB481D0, &qword_1D992F9F0);
      if (*(a1 + 16))
      {
        OUTLINED_FUNCTION_36_0();
        sub_1D9889410(v99, v100);
        if (v101)
        {
          OUTLINED_FUNCTION_1_13();
          v102 = OUTLINED_FUNCTION_0_19();
          sub_1D986C8B8(v102, v103, v104);
          v105 = OUTLINED_FUNCTION_0_19();
          v108 = sub_1D9892528(v105, v106, v107);
          v110 = v109;
          v111 = OUTLINED_FUNCTION_0_19();
          v4 = v215;
          sub_1D986C908(v111, v112, v113);
          if (v110)
          {
            v114 = 0;
          }

          else
          {
            v114 = v108;
          }
        }

        else
        {
          v114 = 0;
          v110 = 1;
        }

        if (*(a1 + 16))
        {
          sub_1D9889410(0x6E6F5F6465646E65, 0xE800000000000000);
          if (v118)
          {
            OUTLINED_FUNCTION_1_13();
            v119 = OUTLINED_FUNCTION_0_19();
            sub_1D986C8B8(v119, v120, v121);
            v122 = OUTLINED_FUNCTION_0_19();
            v125 = v114;
            v126 = sub_1D9892528(v122, v123, v124);
            v117 = v127;
            v128 = OUTLINED_FUNCTION_0_19();
            v4 = v215;
            sub_1D986C908(v128, v129, v130);
            if (v117)
            {
              v115 = 0;
            }

            else
            {
              v115 = v126;
            }

            v114 = v125;
          }

          else
          {
            v115 = 0;
            v117 = 1;
          }

          if (*(a1 + 16))
          {
            sub_1D9889410(0x6576655F7473616CLL, 0xEA0000000000746ELL);
            if (v131)
            {
              OUTLINED_FUNCTION_1_13();
              v133 = *v132;
              v134 = *(v132 + 8);
              v211 = v114;
              v135 = *(v132 + 16);
              sub_1D986C8B8(v133, v134, v135);
              v116 = sub_1D9892528(v133, v134, v135);
              v137 = v136;
              v138 = v133;
              v4 = v215;
              v139 = v135;
              v114 = v211;
              sub_1D986C908(v138, v134, v139);
LABEL_63:
              v140 = v212 + v4[8];
              *v140 = v116;
              *(v140 + 8) = v137 & 1;
              if (v110 & 1) != 0 && (v117)
              {
                v141 = v212 + v4[7];
                *v141 = 0;
                *(v141 + 8) = 0;
                *(v141 + 16) = 0;
                *(v141 + 24) = 256;
              }

              else
              {
                v142 = v212 + v4[7];
                *v142 = v114;
                *(v142 + 8) = v110 & 1;
                *(v142 + 16) = v115;
                *(v142 + 24) = v117 & 1;
                *(v142 + 25) = 0;
              }

              v143 = *(a1 + 16);
              if (v143)
              {
                v144 = OUTLINED_FUNCTION_16_3();
                sub_1D9889410(v144, v145);
                if (v146)
                {
                  OUTLINED_FUNCTION_1_13();
                  v148 = *v147;
                  v149 = *(v147 + 8);
                  v150 = *(v147 + 16);
                  v151 = OUTLINED_FUNCTION_9_0();
                  sub_1D986C8B8(v151, v152, v150);
                  v153 = OUTLINED_FUNCTION_9_0();
                  v155 = sub_1D98925C0(v153, v154, v150);
                  v54 = v156;
                  v157 = v149;
                  v4 = v215;
                  sub_1D986C908(v148, v157, v150);
                  if (v54)
                  {
                    v143 = 0;
                  }

                  else
                  {
                    v143 = v155;
                  }

                  goto LABEL_74;
                }

                v143 = 0;
              }

              v54 = 1;
LABEL_74:
              v158 = v212 + v4[9];
              *v158 = v143;
              *(v158 + 8) = v54 & 1;
              v159 = sub_1D992AE04();
              v211 = &v205;
              OUTLINED_FUNCTION_0();
              v161 = v160;
              MEMORY[0x1EEE9AC00](*(v162 + 64));
              OUTLINED_FUNCTION_13();
              v165 = (v164 - v163);
              v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
              OUTLINED_FUNCTION_9(v166);
              OUTLINED_FUNCTION_20_0();
              MEMORY[0x1EEE9AC00](v167);
              v169 = &v205 - v168;
              if (*(a1 + 16) && (OUTLINED_FUNCTION_14_2(), OUTLINED_FUNCTION_36_0(), sub_1D9889410(v170, v171), (v172 & 1) != 0))
              {
                OUTLINED_FUNCTION_1_13();
                v54 = *v173;
                v174 = *(v173 + 8);
                v175 = *(v173 + 16);
                v176 = OUTLINED_FUNCTION_0_19();
                sub_1D986C8B8(v176, v177, v178);

                v179 = OUTLINED_FUNCTION_0_19();
                sub_1D9892670(v179, v180, v181, v182);
                v183 = v175;
                v4 = v215;
                sub_1D986C908(v54, v174, v183);
                v184 = OUTLINED_FUNCTION_38_0();
                (v54)(v184);
                (v54)(v216, v9);
                if (__swift_getEnumTagSinglePayload(v169, 1, v159) != 1)
                {
                  v185 = *(v161 + 32);
                  v185(v165, v169, v159);
                  v186 = v212;
                  v185(v212 + v4[10], v165, v159);
                  OUTLINED_FUNCTION_30_1();
                  v187 = v214;
                  sub_1D98943CC(v186, v214);
                  __swift_storeEnumTagSinglePayload(v187, 0, 1, v4);
                  return sub_1D9894430(v186);
                }
              }

              else
              {

                v188 = OUTLINED_FUNCTION_38_0();
                (v54)(v188);
                (v54)(v216, v9);
                OUTLINED_FUNCTION_10_4();
                __swift_storeEnumTagSinglePayload(v189, v190, v191, v159);
              }

              sub_1D986B804(v169, &qword_1ECB48710, &qword_1D9931340);
              v80 = 1;
              goto LABEL_36;
            }
          }

          v116 = 0;
        }

        else
        {
          v115 = 0;
          v116 = 0;
          v117 = 1;
        }
      }

      else
      {
        v115 = 0;
        v114 = 0;
        v116 = 0;
        v117 = 1;
        v110 = 1;
      }

      v137 = 1;
      goto LABEL_63;
    }
  }

  v66 = OUTLINED_FUNCTION_21_1();
  (v54)(v66);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v9);
  v4 = v215;
LABEL_35:
  sub_1D986B804(v57, &qword_1ECB481D0, &qword_1D992F9F0);
  v80 = 0;
LABEL_36:
  OUTLINED_FUNCTION_30_1();
  v81 = v212;
  (v54)(v212, v9);
  if (!v80)
  {
    goto LABEL_19;
  }

  (v54)(v81 + v4[5], v9);
  v43 = v81 + v4[6];
LABEL_18:
  sub_1D986B804(v43, &qword_1ECB481D0, &qword_1D992F9F0);
LABEL_19:
  OUTLINED_FUNCTION_10_4();
  return __swift_storeEnumTagSinglePayload(v44, v45, v46, v4);
}

uint64_t sub_1D9893494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48738, &qword_1D9932140);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9931220;
  *(v1 + 32) = 0x64695F6B636F6C63;
  *(v1 + 40) = 0xE800000000000000;
  *(v1 + 48) = 0;
  v2 = sub_1D992AE84();
  v72 = v2;
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v73 = v5[8];
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = *(v4 + 16);
  v8(&v64 - v7, v0, v2);
  v9 = sub_1D992AE24();
  v11 = v10;
  v66 = v4;
  v12 = *(v4 + 8);
  v69 = v4 + 8;
  v12(&v64 - v7, v2);
  *(v1 + 56) = xmmword_1D9931230;
  *(v1 + 72) = v9;
  *(v1 + 80) = v11;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0xD000000000000011;
  *(v1 + 104) = 0x80000001D9936910;
  *(v1 + 112) = 0;
  v74 = type metadata accessor for LogicalClocksTable.Record(0);
  MEMORY[0x1EEE9AC00](v74[5]);
  v13 = v72;
  v67 = v8;
  v68 = v4 + 16;
  v8(&v64 - v7, v71 + v14, v72);
  v15 = v7;
  v16 = sub_1D992AE24();
  v18 = v17;
  v70 = v12;
  v12(&v64 - v7, v13);
  *(v1 + 120) = 0xD000000000000011;
  *(v1 + 128) = 0x80000001D9936910;
  *(v1 + 136) = v16;
  *(v1 + 144) = v18;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0x5F64657461657263;
  *(v1 + 168) = 0xEA00000000006E6FLL;
  *(v1 + 176) = 3;
  v19 = v74;
  v20 = v74[10];
  v21 = sub_1D992AE04();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](*(v24 + 64));
  OUTLINED_FUNCTION_13();
  v27 = v26 - v25;
  v28 = v71;
  (*(v23 + 16))(v26 - v25, v71 + v20, v21);
  sub_1D992ADC4();
  v30 = v29;
  v31 = OUTLINED_FUNCTION_28_1();
  v32(v31);
  *(v1 + 184) = xmmword_1D9931240;
  *(v1 + 200) = v30;
  *(v1 + 208) = 0;
  *(v1 + 216) = 2;
  MEMORY[0x1EEE9AC00](2);
  v65 = v15;
  v33 = v19[6];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v34);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_19_0();
  v36 = v28 + v33;
  v37 = v28;
  sub_1D9866D90(v36, v27, &qword_1ECB481D0, &qword_1D992F9F0);
  v38 = v72;
  if (__swift_getEnumTagSinglePayload(v27, 1, v72) == 1)
  {
    sub_1D986B804(v27, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    (*(v66 + 32))(&v64 - v15, v27, v38);
    MEMORY[0x1EEE9AC00](v39);
    v40 = &v64 - v65;
    v41 = OUTLINED_FUNCTION_28_1();
    v67(v41);
    v42 = sub_1D992AE24();
    v44 = v43;
    v45 = v70;
    v70(v40, v38);
    v37 = v28;
    sub_1D98BD920();
    v1 = v46;
    v45(&v64 - v15, v38);
    *(v1 + 16) = 4;
    strcpy((v1 + 224), "root_clock_id");
    *(v1 + 238) = -4864;
    *(v1 + 240) = 256;
    *(v1 + 242) = v75;
    *(v1 + 246) = v76;
    *(v1 + 248) = xmmword_1D9931250;
    *(v1 + 264) = v42;
    *(v1 + 272) = v44;
    *(v1 + 280) = 0;
  }

  v47 = v74;
  v48 = (v37 + v74[7]);
  if ((*(v48 + 25) & 1) == 0)
  {
    v49 = *(v48 + 24);
    if ((v48[1] & 1) == 0)
    {
      v50 = *v48;
      v51 = *(v1 + 16);
      if (v51 >= *(v1 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_3();
        v1 = v62;
      }

      *(v1 + 16) = v51 + 1;
      v52 = v1 + (v51 << 6);
      *(v52 + 32) = 0x5F64657472617473;
      *(v52 + 40) = 0xEA00000000006E6FLL;
      OUTLINED_FUNCTION_5_7(v52);
      *(v53 + 56) = xmmword_1D9931260;
      *(v53 + 72) = v50;
      *(v53 + 80) = 0;
      *(v53 + 88) = 1;
    }

    if ((v49 & 1) == 0)
    {
      v54 = *(v1 + 16);
      if (v54 >= *(v1 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_3();
        v1 = v63;
      }

      *(v1 + 16) = v54 + 1;
      v55 = v1 + (v54 << 6);
      *(v55 + 32) = 0x6E6F5F6465646E65;
      *(v55 + 40) = 0xE800000000000000;
      OUTLINED_FUNCTION_5_7(v55);
      OUTLINED_FUNCTION_32_1(v56, xmmword_1D9931270);
    }
  }

  if ((*(v37 + v47[8] + 8) & 1) == 0)
  {
    v57 = *(v1 + 16);
    if (v57 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_12_3();
      v1 = v61;
    }

    *(v1 + 16) = v57 + 1;
    v58 = v1 + (v57 << 6);
    *(v58 + 32) = 0x6576655F7473616CLL;
    *(v58 + 40) = 0xEA0000000000746ELL;
    OUTLINED_FUNCTION_5_7(v58);
    OUTLINED_FUNCTION_32_1(v59, xmmword_1D9931280);
  }

  return v1;
}

uint64_t sub_1D9893AC8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SQLDelete;
  a1[4] = &off_1F5516CC0;
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = type metadata accessor for LogicalClocksTable.Predicate(0);
  *(v2 + 56) = v3;
  *(v2 + 64) = &off_1F55170B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = boxed_opaque_existential_1 + v3[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v11 = *(v10 + 48);
  v12 = sub_1D992AE04();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](*(v16 + 64));
  OUTLINED_FUNCTION_13();
  sub_1D992ADF4();
  sub_1D992AD94();
  v17 = OUTLINED_FUNCTION_28_1();
  v18(v17);
  __swift_storeEnumTagSinglePayload(v9 + v11, 0, 1, v12);
  result = __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  *(boxed_opaque_existential_1 + v3[5]) = 0;
  *(boxed_opaque_existential_1 + v3[7]) = 2;
  strcpy((v2 + 16), "logical_clocks");
  *(v2 + 31) = -18;
  return result;
}

uint64_t sub_1D9893CEC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1D9893D00(uint64_t a1)
{
  v1 = sub_1D9893E60(a1);
  MEMORY[0x1DA739C30](v1);

  sub_1D992BD64();

  MEMORY[0x1DA739C30](0x6F6C635F746F6F72, 0xED000064695F6B63);
  MEMORY[0x1DA739C30](8236, 0xE200000000000000);
  v2 = OUTLINED_FUNCTION_6_8();
  MEMORY[0x1DA739C30](v2, 0xE800000000000000);
  MEMORY[0x1DA739C30](0x2073612029, 0xE500000000000000);
  MEMORY[0x1DA739C30](0x6F6C635F746F6F72, 0xED000064695F6B63);
  OUTLINED_FUNCTION_23_2();
  v3 = OUTLINED_FUNCTION_7_5();
  MEMORY[0x1DA739C30](v3);
  MEMORY[0x1DA739C30](10, 0xE100000000000000);
  MEMORY[0x1DA739C30](32, 0xE100000000000000);

  MEMORY[0x1DA739C30](59, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1D9893E60(uint64_t a1)
{
  sub_1D992AE24();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_6_8();
  sub_1D986F118(v3, 0xE800000000000000, 61, 0xE100000000000000, v4, v2, 0);

  v5 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x1DA739C30](v5);

  MEMORY[0x1DA739C30](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  OUTLINED_FUNCTION_34_0();
  v6 = sub_1D992B5E4();
  v8 = v7;

  OUTLINED_FUNCTION_37();
  v11 = v9;
  MEMORY[0x1DA739C30](v6, v8);

  return v11;
}

uint64_t sub_1D9893FC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1D986C620(0, v4, 0);
      v5 = (a1 + 40);
      do
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v9 = *(v17 + 16);
        v8 = *(v17 + 24);

        if (v9 >= v8 >> 1)
        {
          sub_1D986C620(v8 > 1, v9 + 1, 1);
        }

        *(v17 + 16) = v9 + 1;
        v10 = v17 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 3;
        --v4;
      }

      while (v4);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
    sub_1D986FD2C();
    v11 = sub_1D992B5E4();
    v13 = v12;
  }

  else
  {
    v11 = 42;
    v13 = 0xE100000000000000;
  }

  v14 = sub_1D98941C4(a2);
  MEMORY[0x1DA739C30](v14);

  sub_1D992BD64();

  MEMORY[0x1DA739C30](v11, v13);

  OUTLINED_FUNCTION_23_2();
  v15 = OUTLINED_FUNCTION_7_5();
  MEMORY[0x1DA739C30](v15);
  MEMORY[0x1DA739C30](10, 0xE100000000000000);
  MEMORY[0x1DA739C30](32, 0xE100000000000000);

  MEMORY[0x1DA739C30](59, 0xE100000000000000);
  return 0x205443454C4553;
}

uint64_t sub_1D98941C4(uint64_t a1)
{
  sub_1D98920E8(a1);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_6_8();
  sub_1D987B5CC(v4, 0xE800000000000000, 0, v3);

  sub_1D98920E8(a1);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_15_1();
  sub_1D987B5CC(v7, v8, 0, v6);

  v9 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x1DA739C30](v9);

  MEMORY[0x1DA739C30](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  OUTLINED_FUNCTION_34_0();
  v10 = sub_1D992B5E4();
  v12 = v11;

  OUTLINED_FUNCTION_37();
  v15 = v13;
  MEMORY[0x1DA739C30](v10, v12);

  return v15;
}

uint64_t sub_1D989437C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_39(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1D98943CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogicalClocksTable.Record(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9894430(uint64_t a1)
{
  v2 = type metadata accessor for LogicalClocksTable.Record(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9894550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D98945C0(uint64_t a1)
{
  sub_1D98946B4(319);
  if (v1 <= 0x3F)
  {
    sub_1D9894860(319, &qword_1ECB479B0, &qword_1ECB48740, &qword_1D99313F0);
    if (v2 <= 0x3F)
    {
      sub_1D9894860(319, &qword_1ED8BD8E0, &qword_1ECB48700, &qword_1D9931330);
      if (v3 <= 0x3F)
      {
        sub_1D98948B4(319, &qword_1ECB47980, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D98946B4(uint64_t a1)
{
  if (!qword_1ED8BF690)
  {
    sub_1D992AE84();
    v1 = sub_1D992BC04();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8BF690);
    }
  }
}

void sub_1D9894744(uint64_t a1)
{
  sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    sub_1D98946B4(319);
    if (v2 <= 0x3F)
    {
      sub_1D9894860(319, &qword_1ECB47890, &qword_1ECB48748, &qword_1D9931430);
      if (v3 <= 0x3F)
      {
        sub_1D98948B4(319, &qword_1ECB47888, MEMORY[0x1E69E76D8]);
        if (v4 <= 0x3F)
        {
          sub_1D98948B4(319, &qword_1ECB478A8, MEMORY[0x1E69E6810]);
          if (v5 <= 0x3F)
          {
            sub_1D992AE04();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D9894860(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D992BC04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D98948B4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D992BC04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void OUTLINED_FUNCTION_23_2()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_24_1(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_32_1(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 56) = a2;
  *(a1 + 72) = v2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
}

uint64_t sub_1D9894A18()
{
  v1 = type metadata accessor for LogicalClockEnd(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v2 + 64));
  OUTLINED_FUNCTION_13();
  v5 = v4 - v3;
  v6 = type metadata accessor for LogicalClockStart(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  type metadata accessor for LogicalClockEvent(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v11 + 64));
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_2_11();
  sub_1D989631C(v0, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D98962BC(v14, v5, type metadata accessor for LogicalClockEnd);
    v22 = v1;
    v23 = sub_1D98963D4(&qword_1ECB48770, type metadata accessor for LogicalClockEnd, &unk_1D99314B0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    sub_1D989631C(v5, boxed_opaque_existential_1, type metadata accessor for LogicalClockEnd);
    sub_1D992B9D4();
    v17 = type metadata accessor for LogicalClockEnd;
    v18 = v5;
  }

  else
  {
    sub_1D98962BC(v14, v10, type metadata accessor for LogicalClockStart);
    v22 = v6;
    v23 = sub_1D98963D4(&qword_1ECB48778, type metadata accessor for LogicalClockStart, &unk_1D9931518);
    v19 = __swift_allocate_boxed_opaque_existential_1(v21);
    sub_1D989631C(v10, v19, type metadata accessor for LogicalClockStart);
    sub_1D992B9D4();
    v17 = type metadata accessor for LogicalClockStart;
    v18 = v10;
  }

  sub_1D989637C(v18, v17);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1D9894C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48760, &qword_1D99315B8);
  MEMORY[0x1EEE9AC00](*(*(v5 - 8) + 64));
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-v8];
  v10 = type metadata accessor for LogicalClockEvent(0);
  v11 = OUTLINED_FUNCTION_4_7();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v22 = a1;
  v23 = v9;
  sub_1D9896268();
  sub_1D992B964();
  if (!v2)
  {
    sub_1D9866DE0(v9, v7, &qword_1ECB48760, &qword_1D99315B8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
    {
      sub_1D986B804(v7, &qword_1ECB48760, &qword_1D99315B8);
      v14 = sub_1D992B484();
      OUTLINED_FUNCTION_0_20();
      v17 = sub_1D98963D4(v15, v16, MEMORY[0x1E6999BD8]);
      OUTLINED_FUNCTION_7_6(v17);
      (*(*(v14 - 8) + 104))(v18, *MEMORY[0x1E6999BA8], v14);
      swift_willThrow();
    }

    else
    {
      OUTLINED_FUNCTION_2_11();
      sub_1D98962BC(v7, a2, v19);
    }
  }

  return sub_1D986B804(v9, &qword_1ECB48760, &qword_1D99315B8);
}

uint64_t sub_1D9894E98(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogicalClockEnd(0);
  MEMORY[0x1EEE9AC00](*(*(v6 - 8) + 64));
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogicalClockStart(0);
  MEMORY[0x1EEE9AC00](*(*(v9 - 8) + 64));
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_1D98963D4(&qword_1ECB48770, type metadata accessor for LogicalClockEnd, &unk_1D99314B0);
    result = sub_1D992B984();
    if (v3)
    {
      return result;
    }

    sub_1D986B804(a3, &qword_1ECB48760, &qword_1D99315B8);
    sub_1D98962BC(v8, a3, type metadata accessor for LogicalClockEnd);
  }

  else
  {
    sub_1D98963D4(&qword_1ECB48778, type metadata accessor for LogicalClockStart, &unk_1D9931518);
    result = sub_1D992B984();
    if (v3)
    {
      return result;
    }

    sub_1D986B804(a3, &qword_1ECB48760, &qword_1D99315B8);
    sub_1D98962BC(v11, a3, type metadata accessor for LogicalClockStart);
  }

  v13 = type metadata accessor for LogicalClockEvent(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
}

uint64_t sub_1D98950D8(unsigned int a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t sub_1D9895224@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D98950D8(*a1);
  *a2 = result;
  return result;
}

id sub_1D9895250(void *a1)
{
  v2 = v1;
  sub_1D992B9F4();
  v4 = type metadata accessor for LogicalClockStart(0);
  if (*(v2 + v4[5]))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [a1 writeUint32:v5 forTag:2];
  sub_1D992B9F4();
  [a1 writeUint64:*(v2 + v4[7]) forTag:4];
  return [a1 writeUint64:*(v2 + v4[8]) forTag:5];
}

uint64_t sub_1D9895310@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v30 - v7;
  v9 = sub_1D992AE84();
  v10 = OUTLINED_FUNCTION_4_7();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v46 = 2;
  MEMORY[0x1EEE9AC00](2);
  v13 = &v30 - v7;
  __swift_storeEnumTagSinglePayload(&v30 - v7, 1, 1, v9);
  v44 = 0;
  v45 = 1;
  v43 = 1;
  v38 = &v30 - v7;
  v39 = a1;
  v40 = &v46;
  v41 = &v30 - v7;
  OUTLINED_FUNCTION_6_9();
  sub_1D9896440();
  sub_1D992B964();
  if (!v2)
  {
    v35 = a2;
    v37 = *(v9 - 8);
    v14 = v37[8];
    MEMORY[0x1EEE9AC00](v37);
    v36 = &v30;
    MEMORY[0x1EEE9AC00](&v30);
    v15 = &v30 - v7;
    sub_1D9866DE0(v8, v15, &qword_1ECB481D0, &qword_1D992F9F0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
    {
      sub_1D986B804(v15, &qword_1ECB481D0, &qword_1D992F9F0);
    }

    else
    {
      v34 = &v30;
      v33 = v37[4];
      v33(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v9);
      v16 = v46;
      if (v46 == 2)
      {
        (v37[1])(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      }

      else
      {
        v36 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = v37;
        v32 = &v30;
        MEMORY[0x1EEE9AC00](&v30);
        v18 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        v31 = &v30;
        MEMORY[0x1EEE9AC00](&v30);
        v19 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1D9866DE0(v13, v19, &qword_1ECB481D0, &qword_1D992F9F0);
        if (__swift_getEnumTagSinglePayload(v19, 1, v9) == 1)
        {
          (v17[1])(v36, v9);
          sub_1D986B804(v19, &qword_1ECB481D0, &qword_1D992F9F0);
        }

        else
        {
          v33(v18, v19, v9);
          if (v45 == 1)
          {
            v20 = v17[1];
            v20(v18, v9);
            v20(v36, v9);
          }

          else
          {
            v21 = v36;
            if (v43 != 1)
            {
              v31 = v44;
              v37 = v42;
              v28 = v35;
              v33(v35, v36, v9);
              v29 = type metadata accessor for LogicalClockStart(0);
              v33(&v28[v29[6]], v18, v9);
              v28[v29[5]] = v16 & 1;
              *&v28[v29[7]] = v31;
              *&v28[v29[8]] = v37;
              goto LABEL_14;
            }

            v22 = v17[1];
            v22(v18, v9);
            v22(v21, v9);
          }
        }
      }
    }

    v23 = sub_1D992B484();
    OUTLINED_FUNCTION_0_20();
    sub_1D98963D4(v24, v25, MEMORY[0x1E6999BD8]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v26, *MEMORY[0x1E6999BA8], v23);
    swift_willThrow();
  }

LABEL_14:
  sub_1D986B804(v13, &qword_1ECB481D0, &qword_1D992F9F0);
  return sub_1D986B804(v8, &qword_1ECB481D0, &qword_1D992F9F0);
}

id sub_1D9895874(_BYTE *a1, uint64_t a2, id a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(*a1)
  {
    case 1:
      result = [a3 readUint32];
      if (result == 2)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (result == 1)
      {
        v21 = 0;
      }

      *a4 = v21;
      break;
    case 2:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      MEMORY[0x1EEE9AC00](((*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v18 = v22 - v17;
      sub_1D992B9B4();
      v11 = v18;
      v12 = a5;
      goto LABEL_5;
    case 3:
      result = [a3 readUint64];
      *a6 = result;
      *(a6 + 8) = 0;
      break;
    case 4:
      result = [a3 readUint64];
      *a7 = result;
      *(a7 + 8) = 0;
      break;
    default:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      MEMORY[0x1EEE9AC00](((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = v22 - v9;
      sub_1D992B9B4();
      v11 = v10;
      v12 = a2;
LABEL_5:
      result = sub_1D98901A0(v11, v12);
      break;
  }

  return result;
}

uint64_t sub_1D9895A20(unsigned int a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

uint64_t sub_1D9895B68@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9895A20(*a1);
  *a2 = result;
  return result;
}

id sub_1D9895B94(void *a1)
{
  v2 = v1;
  sub_1D992B9F4();
  v4 = type metadata accessor for LogicalClockEnd(0);
  result = [a1 writeUint64:*(v2 + *(v4 + 20)) forTag:2];
  if (!HIDWORD(*(v2 + *(v4 + 24))))
  {
    return [a1 writeUint32_forTag_];
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9895C24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]((v5 + 15));
  v7 = sub_1D992AE84();
  v8 = OUTLINED_FUNCTION_4_7();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v28 = 0;
  v29 = 1;
  v27 = 1;
  v26[4] = v26 - v6;
  v26[5] = a1;
  OUTLINED_FUNCTION_6_9();
  sub_1D98964B4();
  sub_1D992B964();
  if (!v2)
  {
    v30 = a2;
    v11 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](*(v11 + 64));
    OUTLINED_FUNCTION_13();
    v14 = (v13 - v12);
    MEMORY[0x1EEE9AC00](v12);
    sub_1D9866DE0(v26 - v6, v26 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
    if (__swift_getEnumTagSinglePayload(v26 - v6, 1, v7) == 1)
    {
      sub_1D986B804(v26 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
    }

    else
    {
      v26[1] = v26;
      v15 = *(v11 + 32);
      v15(v14, v26 - v6, v7);
      if (v29 != 1 && v27 != 1)
      {
        v22 = v28;
        v23 = v26[8];
        v24 = v30;
        v15(v30, v14, v7);
        v25 = type metadata accessor for LogicalClockEnd(0);
        *&v24[*(v25 + 20)] = v22;
        *&v24[*(v25 + 24)] = v23;
        return sub_1D986B804(v26 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
      }

      (*(v11 + 8))(v14, v7);
    }

    v16 = sub_1D992B484();
    OUTLINED_FUNCTION_0_20();
    v19 = sub_1D98963D4(v17, v18, MEMORY[0x1E6999BD8]);
    OUTLINED_FUNCTION_7_6(v19);
    (*(*(v16 - 8) + 104))(v20, *MEMORY[0x1E6999BA8], v16);
    swift_willThrow();
  }

  return sub_1D986B804(v26 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
}

id sub_1D9895F50(_BYTE *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      result = [a3 readUint64];
      *a4 = result;
      *(a4 + 8) = 0;
    }

    else
    {
      result = [a3 readUint32];
      *a5 = result;
      *(a5 + 8) = 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    MEMORY[0x1EEE9AC00](((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = &v12 - v9;
    sub_1D992B9B4();
    return sub_1D98901A0(v10, a2);
  }

  return result;
}

unint64_t sub_1D9896268()
{
  result = qword_1ECB48768;
  if (!qword_1ECB48768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48768);
  }

  return result;
}

uint64_t sub_1D98962BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D989631C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D989637C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D98963D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D9896440()
{
  result = qword_1ECB48780;
  if (!qword_1ECB48780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48780);
  }

  return result;
}

unint64_t sub_1D98964B4()
{
  result = qword_1ECB48788;
  if (!qword_1ECB48788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48788);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrchestratorTimeoutError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1D9896590(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D9896668(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D9896740(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D989681C()
{
  result = qword_1ECB48790;
  if (!qword_1ECB48790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48790);
  }

  return result;
}

unint64_t sub_1D9896874()
{
  result = qword_1ECB48798;
  if (!qword_1ECB48798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48798);
  }

  return result;
}

unint64_t sub_1D98968CC()
{
  result = qword_1ECB487A0;
  if (!qword_1ECB487A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB487A0);
  }

  return result;
}

id sub_1D989692C()
{
  v1 = OBJC_IVAR___SiriAnalyticsClientRuntimeConnection____lazy_storage___underlying;
  v2 = *(v0 + OBJC_IVAR___SiriAnalyticsClientRuntimeConnection____lazy_storage___underlying);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SiriAnalyticsClientRuntimeConnection____lazy_storage___underlying);
  }

  else
  {
    v4 = v0;
    swift_unknownObjectUnownedInit();
    sub_1D9880418();
    Strong = swift_unknownObjectUnownedLoadStrong();
    v6 = *&Strong[OBJC_IVAR___SiriAnalyticsClientRuntimeConnection_machServiceName];
    v7 = *&Strong[OBJC_IVAR___SiriAnalyticsClientRuntimeConnection_machServiceName + 8];

    v8 = sub_1D988045C(v6, v7);
    swift_unknownObjectUnownedDestroy();
    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id ClientRuntimeConnection.init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___SiriAnalyticsClientRuntimeConnection____lazy_storage___underlying] = 0;
  v3 = &v2[OBJC_IVAR___SiriAnalyticsClientRuntimeConnection_machServiceName];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ClientRuntimeConnection();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1D9896AD8(uint64_t a1, uint64_t a2)
{
  sub_1D989692C();
  OUTLINED_FUNCTION_0_21();
  v4[1] = 1107296256;
  v4[2] = sub_1D9896B7C;
  v4[3] = &block_descriptor_2;
  v3 = _Block_copy(v4);

  [v2 resetLogicalClockWithCompletion_];
  _Block_release(v3);
}

uint64_t sub_1D9896B7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v15 - v9;
  if (a3)
  {
    sub_1D992AE64();
    v11 = sub_1D992AE84();
    v12 = 0;
  }

  else
  {
    v11 = sub_1D992AE84();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v12, 1, v11);

  v13 = a4;
  v7(a2, v10, a4);

  return sub_1D987625C(v10);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D9896CCC(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v13 - v9;
  sub_1D9879FF8(a2, &v13 - v9);
  v11 = sub_1D992AE84();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v12 = sub_1D992AE44();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (a3)
  {
    a3 = sub_1D992AC84();
  }

  (*(a4 + 16))(a4, a1 & 1, v12, a3);
}

void sub_1D9896DFC(uint64_t a1, uint64_t a2)
{
  sub_1D989692C();
  OUTLINED_FUNCTION_0_21();
  v4[1] = 1107296256;
  v4[2] = sub_1D9896EA0;
  v4[3] = &block_descriptor_3;
  v3 = _Block_copy(v4);

  [v2 runPipelineWithCompletion_];
  _Block_release(v3);
}

void sub_1D9896EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D9896F4C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_1D9896FE0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D992AC84();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id ClientRuntimeConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientRuntimeConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientRuntimeConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SiriAnalyticsMessageStaging.init(internalTelemetry:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D992AD44();
  MEMORY[0x1EEE9AC00](*(*(v4 - 8) + 64));
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  v8 = a1;
  sub_1D9897300(v7);
  type metadata accessor for MessageStagingProvider(0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC13SiriAnalytics27SiriAnalyticsMessageStaging_stagingStreamProvider] = sub_1D98CDA34(v7, a1);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SiriAnalyticsMessageStaging();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t sub_1D9897300@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResourceType(0);
  MEMORY[0x1EEE9AC00](*(*(v2 - 8) + 64));
  OUTLINED_FUNCTION_13();
  v5 = v4 - v3;
  type metadata accessor for PersistentStorage();
  v6 = sub_1D992AD44();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  sub_1D98F97F8();
  v11 = type metadata accessor for DataVault(0);
  v12 = objc_allocWithZone(v11);
  (*(v7 + 16))(v12 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v10, v6);
  v15.receiver = v12;
  v15.super_class = v11;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v7 + 8))(v10, v6);
  sub_1D98CB5CC();

  sub_1D98C601C(a1);
  return sub_1D98876F0(v5);
}

uint64_t sub_1D98974CC()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_8(v1);

  return sub_1D98CDC68();
}

uint64_t sub_1D9897580(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D98981C0;

  return sub_1D98974B8();
}

uint64_t sub_1D989763C()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_8(v1);

  return sub_1D9900D9C();
}

uint64_t sub_1D98976D0()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D98977D8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D9897880;

  return sub_1D9897628();
}

uint64_t sub_1D9897880()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1D98979C0()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_8(v1);

  return sub_1D9901338();
}

uint64_t sub_1D9897A74(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_1D9905654(a5, v8);
}

uint64_t sub_1D9897AE4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D98981C0;

  return sub_1D98979AC();
}

id SiriAnalyticsMessageStaging.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriAnalyticsMessageStaging.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriAnalyticsMessageStaging();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of SiriAnalyticsMessageStaging.bootstrap()()
{
  OUTLINED_FUNCTION_26();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_12(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_5_8(v3);

  return v6();
}

uint64_t dispatch thunk of SiriAnalyticsMessageStaging.prune()()
{
  OUTLINED_FUNCTION_26();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_12(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_5_8(v3);

  return v6();
}

uint64_t dispatch thunk of SiriAnalyticsMessageStaging.purge()()
{
  OUTLINED_FUNCTION_26();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_12(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_5_8(v3);

  return v6();
}

uint64_t sub_1D9897FD0()
{
  OUTLINED_FUNCTION_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_14(v1);

  return v4(v3);
}

uint64_t sub_1D9898060()
{
  OUTLINED_FUNCTION_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_14(v1);

  return v4(v3);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9898130()
{
  OUTLINED_FUNCTION_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_14(v1);

  return v4(v3);
}

uint64_t sub_1D98981E8()
{
  v0[7] = *(v0[6] + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped);
  v3 = (*MEMORY[0x1E6999B80] + MEMORY[0x1E6999B80]);

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1D98982B0;

  return v3();
}

uint64_t sub_1D98982B0()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D98983DC, v1, 0);
}

uint64_t sub_1D98983DC()
{
  v1 = sub_1D992AE04();
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  v4 = swift_task_alloc();
  sub_1D992ADF4();
  sub_1D992AD94();
  v5 = *(v2 + 8);
  v5(v4, v1);

  sub_1D9898728();
  v6 = sub_1D992B3B4();
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000001CLL, 0x80000001D99384E0);
  *(v0 + 40) = v6;
  v7 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v7);

  MEMORY[0x1DA739C30](0xD000000000000016, 0x80000001D9938500);
  OUTLINED_FUNCTION_1_15();
  sub_1D98DCECC(v8, 0xE000000000000000, v9, v10, 0xD00000000000001DLL, v11);

  v5(v3, v1);

  v12 = *(v0 + 8);

  return v12();
}

unint64_t sub_1D9898728()
{
  result = qword_1ECB479C8;
  if (!qword_1ECB479C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB483A8, &unk_1D9935540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB479C8);
  }

  return result;
}

id Metastore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Metastore.init()()
{
  v1 = v0;
  v2 = type metadata accessor for ResourceType(0);
  MEMORY[0x1EEE9AC00](*(*(v2 - 8) + 64));
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___SiriAnalyticsMetastore_db] = 0;
  v0[OBJC_IVAR___SiriAnalyticsMetastore_bootstrapped] = 0;
  v5 = OBJC_IVAR___SiriAnalyticsMetastore_schemas;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487C0, &qword_1D9931880);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D9931220;
  *(v6 + 32) = &type metadata for LogicalClocksTable;
  *(v6 + 40) = &off_1ED8BE200;
  *(v6 + 48) = &type metadata for TagsTable;
  *(v6 + 56) = &off_1ED8BDC38;
  *(v6 + 64) = &type metadata for ComponentIdentifiersTable;
  *(v6 + 72) = &off_1ED8BDE80;
  *&v1[v5] = v6;
  type metadata accessor for PersistentStorage();
  v7 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1D98F97F8();
  v13 = type metadata accessor for DataVault(0);
  v14 = objc_allocWithZone(v13);
  (*(v9 + 16))(v14 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, &v19 - v12, v7);
  v20.receiver = v14;
  v20.super_class = v13;
  v15 = objc_msgSendSuper2(&v20, sel_init);
  (*(v9 + 8))(&v19 - v12, v7);
  sub_1D98CB3AC();

  MEMORY[0x1EEE9AC00](v16);
  sub_1D98C601C(&v19 - v12);
  sub_1D98876F0(v4);
  (*(v9 + 32))(&v1[OBJC_IVAR___SiriAnalyticsMetastore_storageURL], &v19 - v12, v7);
  v17 = type metadata accessor for Metastore(0);
  v19.receiver = v1;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1D9898A84()
{
  if ((sub_1D986AC54(1) & 1) != 0 && (v1 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db)) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487C8, &unk_1D99324B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D992FCB0;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x80000001D99385A0;

    swift_bridgeObjectRetain_n();
    sub_1D992BD64();

    MEMORY[0x1DA739C30](0xD00000000000001ALL, 0x80000001D99385A0);

    MEMORY[0x1DA739C30](59, 0xE100000000000000);
    sub_1D987005C(0xD000000000000015, 0x80000001D99380A0, 0);

    swift_setDeallocating();
    sub_1D98993B4();
    v3 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_schemas);
    v4 = (v3 + 40);
    v5 = -*(v3 + 16);
    v6 = -1;
    while (v5 + v6 != -1)
    {
      if (++v6 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v7 = v4 + 2;
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = (*(*v4 + 96))(v1, v8, *v4);
      v4 = v7;
      if ((v10 & 1) == 0)
      {
        if (qword_1ED8BD6D0 != -1)
        {
          OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
        }

        sub_1D992BD64();

        v11 = (*(v9 + 72))(v8, v9);
        MEMORY[0x1DA739C30](v11);

        OUTLINED_FUNCTION_4_1();
        sub_1D98DCEB4(v13, 0x80000001D99385C0, 0xD000000000000059, v12 | 0x8000000000000000, v14, v15);

        return;
      }
    }

    if (qword_1ED8BD6D0 != -1)
    {
      OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
    }

    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_2_13();
    sub_1D986A454(v22, v23, v24, v25, v26, v27);

    *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_bootstrapped) = 1;
  }

  else
  {
    if (qword_1ED8BD6D0 != -1)
    {
LABEL_16:
      OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
    }

    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_2_13();
    sub_1D98DCEB4(v16, v17, v18, v19, v20, v21);
  }
}

void sub_1D9898E24()
{
  if ((sub_1D986AC54(0) & 1) != 0 && *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    v1 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_schemas);
    v2 = *(v1 + 16);
    if (v2)
    {

      v3 = 0;
      v4 = (v1 + 40);
      while (1)
      {
        if (v3 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v5 = *(v4 - 1);
        v6 = *v4;
        if (dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for PrunableDbTableDefinition))
        {
          (*(v7 + 8))(&v23);
          __swift_project_boxed_opaque_existential_1(&v23, v25);
          v8 = sub_1D986D1D0();
          __swift_destroy_boxed_opaque_existential_1(&v23);
          if ((v8 & 1) == 0)
          {
            break;
          }
        }

        ++v3;
        v4 += 2;
        if (v2 == v3)
        {
          goto LABEL_13;
        }
      }

      if (qword_1ED8BD6D0 != -1)
      {
        OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
      }

      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1D992BD64();

      v23 = 0xD000000000000017;
      v24 = 0x80000001D9938630;
      v18 = (*(v6 + 72))(v5, v6);
      MEMORY[0x1DA739C30](v18);

      v19 = v24;
      OUTLINED_FUNCTION_3_7();
      sub_1D98DCEB4(v21, v19, 0xD000000000000059, v20 | 0x8000000000000000, v22, 0xE700000000000000);
    }

    else
    {

LABEL_13:
      if (qword_1ED8BD6D0 != -1)
      {
        OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
      }

      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_2_13();
      sub_1D986A454(v13, v14, v15, v16, v17, 0xE700000000000000);
    }
  }

  else
  {
    if (qword_1ED8BD6D0 != -1)
    {
LABEL_21:
      OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
    }

    OUTLINED_FUNCTION_3_7();
    sub_1D98DCEB4(v10, v11, 0xD000000000000059, v9 | 0x8000000000000000, v12, 0xE700000000000000);
  }
}

void sub_1D989912C()
{
  if (*(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {

    sub_1D990B67C();
  }
}

id Metastore.__deallocating_deinit()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR___SiriAnalyticsMetastore_db])
  {
    v2 = qword_1ED8BD6D0;

    if (v2 != -1)
    {
      OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
    }

    sub_1D986A454(0xD000000000000011, 0x80000001D9938650, 0xD000000000000059, 0x80000001D9938540, 0x74696E696564, 0xE600000000000000);
    sub_1D990BF54();
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Metastore(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for Metastore(uint64_t a1)
{
  result = qword_1ED8BD6B0;
  if (!qword_1ED8BD6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98993B4()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D989943C()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9899484()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487D0, &qword_1D99318D8);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9899510(uint64_t a1)
{
  result = sub_1D992AD44();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id Orchestrator.init(host:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_38();
  *a2 = 0xD00000000000002CLL;
  a2[1] = v4;
  result = sub_1D98D0D9C();
  a2[2] = result;
  a2[3] = v6;
  a2[4] = a1;
  return result;
}

uint64_t Orchestrator.ingest()()
{
  OUTLINED_FUNCTION_26();
  v2 = sub_1D992B004();
  *(v1 + 256) = v2;
  OUTLINED_FUNCTION_23(v2);
  *(v1 + 264) = v3;
  *(v1 + 272) = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v0;
  *(v1 + 280) = v4;
  *(v1 + 288) = v5;
  v6 = *(v0 + 1);
  v7 = *(v0 + 3);
  *(v1 + 296) = v6;
  *(v1 + 312) = v7;
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  v8 = swift_task_alloc();
  *(v1 + 328) = v8;
  *v8 = v1;
  v8[1] = sub_1D98997CC;

  return sub_1D989A7F8();
}

uint64_t sub_1D98997CC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 336) = v3;

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D98998BC()
{
  v1 = *(v0 + 336);
  if (v1)
  {
    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
    }

    *(v0 + 344) = qword_1ED8BFBA0;
    sub_1D992BD64();

    *(v0 + 240) = *(v1 + 16);
    v2 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v2);

    MEMORY[0x1DA739C30](0xD000000000000016, 0x80000001D99387F0);
    OUTLINED_FUNCTION_40();
    sub_1D986A454(v3, v4, v5, v6, v7, v8);

    v9 = *(v1 + 16);
    *(v0 + 352) = v9;
    if (v9)
    {
      v10 = *(v0 + 264);
      *(v0 + 360) = sub_1D989CECC();
      v11 = *(v10 + 16);
      v10 += 16;
      v12 = *(v10 + 64);
      *(v0 + 448) = v12;
      v13 = v1 + ((v12 + 32) & ~v12);
      v14 = (v10 - 8);
      v55 = *(v10 + 56);
      v56 = v10 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v15 = (v10 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      *(v0 + 368) = v55;
      *(v0 + 376) = v11;
      v57 = v11;
      do
      {
        v16 = *(v0 + 312);
        v17 = *(v0 + 280);
        v18 = *(v0 + 256);
        *(v0 + 384) = v56;
        v57(v17, v13, v18);
        v19 = sub_1D992AFF4();
        v21 = v20;
        v22 = *v14;
        *(v0 + 392) = *v14;
        *(v0 + 400) = v15;
        v22(v17, v18);
        v23 = sub_1D992BBB4();
        MEMORY[0x1DA739C30](v19, v21);

        v24 = objc_allocWithZone(MEMORY[0x1E698EC68]);
        OUTLINED_FUNCTION_23_3();
        v28 = OUTLINED_FUNCTION_9_5(v23, 778398831, 0xE400000000000000, 0x7261745320746F4ELL, 0xEB00000000646574, v25, v26, v27, v54);
        [v16 sendEvent_];

        v13 += v55;
        --v9;
      }

      while (v9);
      *(v0 + 408) = MEMORY[0x1E69E7CC8];
      *(v0 + 416) = 0;
      v29 = *(v0 + 360);
      v30 = *(v0 + 288);
      v58 = *(v0 + 296);
      v59 = *(v0 + 312);
      (*(v0 + 376))(*(v0 + 272), *(v0 + 336) + ((*(v0 + 448) + 32) & ~*(v0 + 448)), *(v0 + 256));
      v31 = sub_1D992AFF4();
      v33 = v32;
      v34 = v29;
      v35 = sub_1D992BBB4();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA739C30](v31, v33);

      v36 = *v34;
      v37 = *(v0 + 104);
      v38 = objc_allocWithZone(MEMORY[0x1E698EC68]);
      OUTLINED_FUNCTION_11_3();
      v43 = OUTLINED_FUNCTION_9_5(v35, v36, v37, v39, 0xE700000000000000, v40, v41, v42, v54);
      [v59 sendEvent_];

      *(v0 + 16) = v30;
      *(v0 + 24) = v58;
      *(v0 + 40) = v59;
      v44 = swift_task_alloc();
      *(v0 + 424) = v44;
      *v44 = v0;
      OUTLINED_FUNCTION_5_9(v44);

      return sub_1D989AE90();
    }
  }

  else
  {
    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
    }

    OUTLINED_FUNCTION_40();
    sub_1D986A454(v46, v47, v48, v49, v50, v51);
  }

  OUTLINED_FUNCTION_29_0();
  v53 = MEMORY[0x1E69E7CC8];

  return v52(v53);
}

uint64_t sub_1D9899D40()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  v5 = v4;
  OUTLINED_FUNCTION_16();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_17();
  *v8 = v7;
  *(v5 + 432) = v0;

  if (!v0)
  {
    *(v5 + 440) = v3;
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D9899E50()
{
  v1 = *(v0 + 440);
  v2 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result;
  v53 = v1;
  swift_beginAccess();
  LODWORD(v1) = *&v1[v2];
  v3 = sub_1D992AFF4();
  v5 = v4;
  v6 = sub_1D992BBB4();
  if (v1 == 1)
  {
    *(v0 + 160) = 778398831;
    *(v0 + 168) = 0xE400000000000000;
    MEMORY[0x1DA739C30](v3, v5);

    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = objc_allocWithZone(MEMORY[0x1E698EC68]);
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_35_1();
    v11 = v6;
    v12 = v8;
    v13 = v7;
    v14 = 0xE900000000000064;
  }

  else
  {
    *(v0 + 144) = 778398831;
    *(v0 + 152) = 0xE400000000000000;
    MEMORY[0x1DA739C30](v3, v5);

    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = objc_allocWithZone(MEMORY[0x1E698EC68]);
    OUTLINED_FUNCTION_23_3();
    v10 = 0x64656C696146;
    v11 = v6;
    v12 = v16;
    v13 = v15;
    v14 = 0xE600000000000000;
  }

  v18 = sub_1D989CF10(v11, v12, v13, v10, v14, 0x41532E454C4FLL, 0xE600000000000000, 0, v49);
  v19 = *(v0 + 408);
  v20 = *(v0 + 392);
  v51 = *(v0 + 352);
  v21 = *(v0 + 272);
  v22 = *(v0 + 256);
  v23 = *(v0 + 416) + 1;
  [*(v0 + 312) sendEvent_];

  v24 = sub_1D992AFF4();
  v26 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D989D5C4(v53, v24, v26, isUniquelyReferenced_nonNull_native);

  v20(v21, v22);
  if (v23 == v51)
  {

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_34();

    __asm { BRAA            X2, X16 }
  }

  v30 = *(v0 + 416) + 1;
  *(v0 + 408) = v19;
  *(v0 + 416) = v30;
  v31 = *(v0 + 360);
  v32 = *(v0 + 288);
  v52 = *(v0 + 296);
  v54 = *(v0 + 312);
  (*(v0 + 376))(*(v0 + 272), *(v0 + 336) + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(v0 + 368) * v30, *(v0 + 256));
  v33 = sub_1D992AFF4();
  v35 = v34;
  v36 = v31;
  v37 = sub_1D992BBB4();
  OUTLINED_FUNCTION_12_4();
  MEMORY[0x1DA739C30](v33, v35);

  v38 = *v36;
  v39 = *(v0 + 104);
  v40 = objc_allocWithZone(MEMORY[0x1E698EC68]);
  OUTLINED_FUNCTION_11_3();
  v45 = OUTLINED_FUNCTION_9_5(v37, v38, v39, v41, 0xE700000000000000, v42, v43, v44, v50);
  [v54 sendEvent_];

  *(v0 + 16) = v32;
  *(v0 + 24) = v52;
  *(v0 + 40) = v54;
  v46 = swift_task_alloc();
  *(v0 + 424) = v46;
  *v46 = v0;
  OUTLINED_FUNCTION_5_9(v46);
  OUTLINED_FUNCTION_34();

  return sub_1D989AE90();
}

uint64_t sub_1D989A1B8()
{
  v1 = *(v0 + 432);
  *(v0 + 248) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 452);
    if (v3 == 2)
    {
      *(v0 + 224) = 0;
      *(v0 + 232) = 0xE000000000000000;
      sub_1D992BD64();

      *(v0 + 208) = 0xD000000000000024;
      *(v0 + 216) = 0x80000001D9938850;
      v4 = sub_1D992AFF4();
      MEMORY[0x1DA739C30](v4);

      OUTLINED_FUNCTION_22_2(*(v0 + 208));

      v5 = objc_allocWithZone(type metadata accessor for StagingReport());
      v6 = 4;
    }

    else
    {
      *(v0 + 192) = 0;
      *(v0 + 200) = 0xE000000000000000;
      sub_1D992BD64();
      v12 = *(v0 + 200);
      *(v0 + 176) = *(v0 + 192);
      *(v0 + 184) = v12;
      MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D9938830);
      v13 = sub_1D992AFF4();
      MEMORY[0x1DA739C30](v13);

      MEMORY[0x1DA739C30](0x3A726F727265202CLL, 0xE900000000000020);
      *(v0 + 453) = v3;
      sub_1D992BE24();
      OUTLINED_FUNCTION_22_2(*(v0 + 176));

      v14 = objc_allocWithZone(type metadata accessor for StagingReport());
      v6 = 3;
    }

    v15 = sub_1D988C7F4(v6);
    v16 = *(v0 + 248);
    v11 = v15;
  }

  else
  {
    v7 = *(v0 + 432);

    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    sub_1D992BD64();

    *(v0 + 112) = 0xD000000000000015;
    *(v0 + 120) = 0x80000001D9938810;
    v8 = sub_1D992AFF4();
    MEMORY[0x1DA739C30](v8);

    sub_1D98DCEB4(*(v0 + 112), *(v0 + 120), 0xD00000000000006BLL, 0x80000001D9938780, 0x2928747365676E69, 0xE800000000000000);

    v9 = objc_allocWithZone(type metadata accessor for StagingReport());
    v10 = sub_1D988C7F4(2);

    v11 = v10;
  }

  v17 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result;
  swift_beginAccess();
  v69 = v11;
  LODWORD(v17) = *&v11[v17];
  v18 = sub_1D992AFF4();
  v20 = v19;
  v21 = sub_1D992BBB4();
  if (v17 == 1)
  {
    *(v0 + 160) = 778398831;
    *(v0 + 168) = 0xE400000000000000;
    MEMORY[0x1DA739C30](v18, v20);

    v22 = *(v0 + 160);
    v23 = *(v0 + 168);
    v24 = objc_allocWithZone(MEMORY[0x1E698EC68]);
    v66 = 0;
    OUTLINED_FUNCTION_35_1();
    v28 = v27 | v26;
    v29 = v21;
    v30 = v22;
    v31 = v23;
  }

  else
  {
    *(v0 + 144) = 778398831;
    *(v0 + 152) = 0xE400000000000000;
    MEMORY[0x1DA739C30](v18, v20);

    v32 = *(v0 + 144);
    v33 = *(v0 + 152);
    v34 = objc_allocWithZone(MEMORY[0x1E698EC68]);
    OUTLINED_FUNCTION_23_3();
    v25 = 0x64656C696146;
    v29 = v21;
    v30 = v32;
    v31 = v33;
    v28 = 0xE600000000000000;
  }

  v35 = sub_1D989CF10(v29, v30, v31, v25, v28, 0x41532E454C4FLL, 0xE600000000000000, 0, v66);
  v36 = *(v0 + 408);
  v37 = *(v0 + 392);
  v68 = *(v0 + 352);
  v38 = *(v0 + 272);
  v39 = *(v0 + 256);
  v40 = *(v0 + 416) + 1;
  [*(v0 + 312) sendEvent_];

  v41 = sub_1D992AFF4();
  v43 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D989D5C4(v69, v41, v43, isUniquelyReferenced_nonNull_native);

  v37(v38, v39);
  if (v40 == v68)
  {

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_34();

    __asm { BRAA            X2, X16 }
  }

  v47 = *(v0 + 416) + 1;
  *(v0 + 408) = v36;
  *(v0 + 416) = v47;
  v48 = *(v0 + 360);
  v49 = *(v0 + 288);
  v70 = *(v0 + 296);
  v71 = *(v0 + 312);
  (*(v0 + 376))(*(v0 + 272), *(v0 + 336) + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(v0 + 368) * v47, *(v0 + 256));
  v50 = sub_1D992AFF4();
  v52 = v51;
  v53 = v48;
  v54 = sub_1D992BBB4();
  OUTLINED_FUNCTION_12_4();
  MEMORY[0x1DA739C30](v50, v52);

  v55 = *v53;
  v56 = *(v0 + 104);
  v57 = objc_allocWithZone(MEMORY[0x1E698EC68]);
  OUTLINED_FUNCTION_11_3();
  v62 = OUTLINED_FUNCTION_9_5(v54, v55, v56, v58, 0xE700000000000000, v59, v60, v61, v67);
  [v71 sendEvent_];

  *(v0 + 16) = v49;
  *(v0 + 24) = v70;
  *(v0 + 40) = v71;
  v63 = swift_task_alloc();
  *(v0 + 424) = v63;
  *v63 = v0;
  OUTLINED_FUNCTION_5_9(v63);
  OUTLINED_FUNCTION_34();

  return sub_1D989AE90();
}

uint64_t sub_1D989A7F8()
{
  OUTLINED_FUNCTION_18();
  v2 = sub_1D992AF54();
  v1[6] = v2;
  OUTLINED_FUNCTION_23(v2);
  v1[7] = v3;
  v1[8] = swift_task_alloc();
  v4 = sub_1D992AF64();
  v1[9] = v4;
  OUTLINED_FUNCTION_23(v4);
  v1[10] = v5;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = sub_1D992AF84();
  v1[13] = v6;
  OUTLINED_FUNCTION_23(v6);
  v1[14] = v7;
  v8 = swift_task_alloc();
  v10 = *v0;
  v9 = v0[1];
  v1[15] = v8;
  v1[16] = v10;
  v1[17] = v9;

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D989A96C()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  sub_1D992AF44();
  sub_1D992AF74();
  (*(v4 + 16))(v2, v1, v3);
  sub_1D989ECE4(&qword_1ECB47A20, MEMORY[0x1E6966C30], MEMORY[0x1E6966C38]);
  sub_1D992B8E4();
  v5 = sub_1D989ECE4(qword_1ECB47A28, MEMORY[0x1E6966C20], MEMORY[0x1E6966C28]);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[18] = v6;
  *v6 = v7;
  v6[1] = sub_1D989AAD8;
  v8 = v0[6];

  return MEMORY[0x1EEE6D8C8](v0 + 4, v8, v5);
}

uint64_t sub_1D989AAD8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[7] + 8))(v3[8], v3[6]);
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D989ABEC()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[4];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v3 + 8))(v1, v2);
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_29_0();

  return v5(v4);
}

uint64_t sub_1D989ACD0()
{
  OUTLINED_FUNCTION_39_0();
  (*(v0[10] + 8))(v0[12], v0[9]);
  if (qword_1ED8BF430 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
  }

  v1 = v0[19];
  sub_1D992BD64();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1DA739C30](0xD00000000000001BLL, 0x80000001D9938A30);
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(v0[2], v0[3], 0xD00000000000006BLL, 0x80000001D9938780, 0x6F69736E65747865, 0xEA0000000000736ELL);

  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_29_0();

  return v2(0);
}

uint64_t sub_1D989AE90()
{
  OUTLINED_FUNCTION_18();
  v1[40] = v2;
  v3 = sub_1D992B004();
  v1[41] = v3;
  OUTLINED_FUNCTION_23(v3);
  v1[42] = v4;
  v5 = swift_task_alloc();
  v6 = *(v0 + 32);
  v1[43] = v5;
  v1[44] = v6;
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D989AF44()
{
  if (qword_1ED8BF430 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
  }

  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v0[45] = qword_1ED8BFBA0;
  sub_1D992BD64();

  OUTLINED_FUNCTION_38();
  v5 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v5);

  OUTLINED_FUNCTION_31_2();
  sub_1D98DCECC(v6, v7, v8, v9, v10, v11);

  (*(v2 + 16))(v1, v4, v3);
  type metadata accessor for ExtensionConnection(0);
  swift_allocObject();
  v12 = swift_task_alloc();
  v0[46] = v12;
  *v12 = v0;
  v12[1] = sub_1D989B0F4;

  return sub_1D98F3A20();
}

uint64_t sub_1D989B0F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 376) = v3;

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D989B1E4()
{
  if (!*(v0 + 376))
  {
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v23 = sub_1D992AFF4();
    MEMORY[0x1DA739C30](v23);

    OUTLINED_FUNCTION_31_2();
    sub_1D98DCEB4(v24, v25, v26, v27, v28, v29);

    sub_1D989E7E8();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_41_0();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 352);
  v35 = v1;
  sub_1D992BD64();
  *(v0 + 272) = 0;
  *(v0 + 280) = 0xE000000000000000;
  MEMORY[0x1DA739C30](0x6820676E696B7341, 0xEC0000002074736FLL);
  *(v0 + 304) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48868, &qword_1D9931B90);
  sub_1D992BE24();
  MEMORY[0x1DA739C30](0xD000000000000027, 0x80000001D99388E0);
  v2 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v2);

  MEMORY[0x1DA739C30](32, 0xE100000000000000);
  OUTLINED_FUNCTION_31_2();
  sub_1D986A454(v3, v4, v5, v6, v7, v8);

  v9 = sub_1D992AF94();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = HIDWORD(v9);
  v18 = HIDWORD(v11);
  v19 = HIDWORD(v13);
  v34 = HIDWORD(v15);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 288;
  *(v0 + 24) = sub_1D989B58C;
  v20 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48870, &qword_1D9931B98);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1D989BDA0;
  *(v0 + 168) = &block_descriptor_3;
  *(v0 + 176) = v20;
  *(v0 + 464) = v10;
  *(v0 + 468) = v17;
  *(v0 + 472) = v12;
  *(v0 + 476) = v18;
  *(v0 + 480) = v14;
  *(v0 + 484) = v19;
  *(v0 + 488) = v16;
  *(v0 + 492) = v34;
  [v35 vendStagingAccessWithAuditToken:v0 + 464 completionHandler:?];
  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6DEC8](v21);
}

uint64_t sub_1D989B58C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 384) = *(v3 + 48);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D989B68C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[44];
  v2 = v0[37];
  v0[49] = v0[36];
  v0[50] = v2;
  v3 = sub_1D992AD44();
  v0[51] = v3;
  OUTLINED_FUNCTION_23(v3);
  v0[52] = v4;
  v0[53] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[54] = v5;
  v0[10] = v0;
  v0[15] = v5;
  v0[11] = sub_1D989B808;
  v6 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48878, &qword_1D9931BA0);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1D989BE38;
  v0[29] = &block_descriptor_20;
  v0[30] = v6;
  [v1 dataPoolUrlWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1D989B808()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D989B8D8()
{
  v1 = v0[53];
  v18 = v0[50];
  v16 = v0[49];
  v2 = v0[47];
  v3 = v0[40];
  (*(v0[52] + 32))(v1, v0[54], v0[51]);

  sub_1D992BD64();

  OUTLINED_FUNCTION_38();
  v4 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v4);

  OUTLINED_FUNCTION_31_2();
  sub_1D986A454(v5, v6, v7, v8, v9, v10);

  v11 = type metadata accessor for StagingReport();
  v12 = swift_task_alloc();
  v0[55] = v12;
  v12[2] = v2;
  v12[3] = v1;
  v12[4] = v16;
  v12[5] = v18;
  v12[6] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[56] = v13;
  *v13 = v14;
  v13[1] = sub_1D989BAC4;

  return MEMORY[0x1EEE6DD58](v0 + 39, v11, v11, 0, 0, &unk_1D9931BB0, v12, v11);
}

uint64_t sub_1D989BAC4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D989BBD4()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];

  v4 = v0[39];
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_29_0();

  return v5(v4);
}

uint64_t sub_1D989BC7C()
{
  OUTLINED_FUNCTION_26();
  swift_willThrow();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_1D989BCF0()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_1D989BDA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1D98F1C38();
  }

  else
  {
    v8 = sub_1D992B624();

    return sub_1D98EF898(v4, v8, v7);
  }
}

uint64_t sub_1D989BE38(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = sub_1D992AD44();
  MEMORY[0x1EEE9AC00](*(*(v3 - 8) + 64));
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AD14();
  return sub_1D98E3EF8(v2, v5);
}

uint64_t sub_1D989BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = sub_1D992B004();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v7[13] = *(v9 + 64);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D989BFDC, 0, 0);
}

uint64_t sub_1D989BFDC()
{
  v1 = v0[15];
  v2 = v0[12];
  v25 = v0[14];
  v26 = v0[13];
  v23 = v0[10];
  v24 = v0[11];
  v20 = v0[8];
  v21 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v22 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v22);
  v5 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = swift_task_alloc();
  (*(v7 + 16))(v10, v4, v5);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v3;
  (*(v7 + 32))(&v12[v11], v10, v5);
  v13 = &v12[(v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v13 = v20;
  *(v13 + 1) = v21;

  sub_1D98BF6D0(v1, &unk_1D9931BC8, v12);
  sub_1D988C380(v1);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v22);
  (*(v2 + 16))(v25, v23, v24);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v2 + 32))(v15 + v14, v25, v24);
  *(v15 + ((v26 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;

  sub_1D98BF6D0(v1, &unk_1D9931BD8, v15);
  sub_1D988C380(v1);
  v16 = swift_task_alloc();
  v0[16] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48880, &unk_1D9931BE0);
  *v16 = v0;
  v16[1] = sub_1D989C2C0;
  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6DAB8](v17);
}

uint64_t sub_1D989C2C0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
    *(v3 + 144) = *(v3 + 16);
    *(v3 + 25) = *(v3 + 24);
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D989C3CC()
{
  OUTLINED_FUNCTION_26_2();
  v1 = *(v0 + 25);
  type metadata accessor for StagingReport();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992B8D4();
  if (v1 == 255)
  {
    sub_1D989EC44();
    swift_allocError();
    *v3 = 0;
  }

  else if ((*(v0 + 25) & 1) == 0)
  {
    **(v0 + 32) = *(v0 + 144);

    OUTLINED_FUNCTION_25();
    goto LABEL_6;
  }

  swift_willThrow();

  OUTLINED_FUNCTION_25();
LABEL_6:

  return v2();
}

uint64_t sub_1D989C504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D989C52C, 0, 0);
}

uint64_t sub_1D989C52C()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 48);
  v5 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1D989C600;

  return sub_1D98F503C(sub_1D989EC98, v2);
}

uint64_t sub_1D989C600()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  v5 = v4;
  OUTLINED_FUNCTION_16();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_17();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D989C718()
{
  **(v0 + 16) = *(v0 + 80);
  OUTLINED_FUNCTION_25();
  return v1();
}

uint64_t sub_1D989C748()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_25();

  return v0();
}

void sub_1D989C7A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1D992ACD4();
  v10 = sub_1D992B614();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v13[4] = sub_1D989ECA4;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D989C8CC;
  v13[3] = &block_descriptor_39;
  v12 = _Block_copy(v13);

  [a1 ingestWithDataPoolUrl:v9 sandboxExtensionToken:v10 callback:v12];
  _Block_release(v12);
}

void sub_1D989C8CC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D989C958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D992BE04();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D989CA18, 0, 0);
}

uint64_t sub_1D989CA18()
{
  OUTLINED_FUNCTION_18();
  sub_1D992BFF4();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D989CADC;
  OUTLINED_FUNCTION_17_1();

  return sub_1D98C2604();
}

uint64_t sub_1D989CADC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = *v1;
  OUTLINED_FUNCTION_17();
  *v9 = v8;
  *(v10 + 64) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D989CC34()
{
  OUTLINED_FUNCTION_39_0();
  if (qword_1ED8BF430 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1ED8BF430);
  }

  sub_1D992BD64();
  MEMORY[0x1DA739C30](0x6F69736E65747845, 0xEA0000000000206ELL);
  v0 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v0);

  MEMORY[0x1DA739C30](0xD000000000000033, 0x80000001D99389B0);
  OUTLINED_FUNCTION_31_2();
  sub_1D98DCEB4(v1, v2, v3, v4, v5, v6);

  sub_1D98F5758(0x6D69742064726148, 0xEC00000074756F65);
  sub_1D989EC44();
  swift_allocError();
  *v7 = 2;
  swift_willThrow();

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_1D989CDDC()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t OrchestratorTimeoutError.hashValue.getter()
{
  v1 = *v0;
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](v1);
  return sub_1D992C0C4();
}

unint64_t sub_1D989CECC()
{
  result = qword_1ECB478B8;
  if (!qword_1ECB478B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB478B8);
  }

  return result;
}

id sub_1D989CF10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v10 = v9;
  if (a3)
  {
    v15 = sub_1D992B614();
  }

  else
  {
    v15 = 0;
  }

  if (!a5)
  {
    v16 = 0;
    if (a7)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v16 = sub_1D992B614();

  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = sub_1D992B614();

LABEL_9:
  v18 = [v10 initWithVersion:a1 taskName:v15 taskState:v16 taskSource:v17 pushMetadata:a8 pullMetadata:a9];

  return v18;
}

uint64_t sub_1D989D07C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), void (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_1D989ED2C(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1D989D128(unint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D989D174(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v9 = OUTLINED_FUNCTION_1_16(a1, a2, a3, a4);
  v10 = type metadata accessor for StreamTelemetryKey(v9);
  result = sub_1D989ED2C(v4, v6 + *(*(v10 - 8) + 72) * v5, type metadata accessor for StreamTelemetryKey);
  *(*(a4 + 56) + 4 * v5) = v8;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

unint64_t sub_1D989D200(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D989D248(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_1D992AE84();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

unint64_t sub_1D989D31C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_1D989D368(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_16(a1, a2, a3, a4);
  sub_1D992AE84();
  OUTLINED_FUNCTION_14_3();
  (*(v8 + 32))(v6 + *(v8 + 72) * v5, v4);
  OUTLINED_FUNCTION_21_2();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

uint64_t sub_1D989D3E0(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
  result = sub_1D989E778(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1D989D480(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1D989D4C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D992AE84();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void sub_1D989D5C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1D9889410(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48860, &qword_1D9931B88);
  if ((sub_1D992BE34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1D9889410(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_1D989D200(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1D989D704()
{
  result = qword_1ECB487D8;
  if (!qword_1ECB487D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB487D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics26OrchestratedExtensionErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D989D77C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
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

  if (v3 >= 5)
  {
    return (v3 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D989D7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1D989D82C(void *result, unsigned int a2)
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

uint64_t sub_1D989D868(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D989D8A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for OrchestratorTimeoutError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D989D9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_34_1();
  sub_1D9889568();
  OUTLINED_FUNCTION_0_22();
  if (v30)
  {
    __break(1u);
    goto LABEL_11;
  }

  v31 = v28;
  v32 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48818, &qword_1D9931B40);
  if ((sub_1D992BE34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v33 = sub_1D9889568();
  if ((v32 & 1) != (v34 & 1))
  {
LABEL_11:
    sub_1D992AE84();
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  v31 = v33;
LABEL_5:
  v35 = *v21;
  if (v32)
  {
    v36 = (v35[7] + 24 * v31);
    *v36 = v23;
    v36[1] = v22;
    v36[2] = v20;
    OUTLINED_FUNCTION_7();

    sub_1D987106C(v37, v38);
  }

  else
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    MEMORY[0x1EEE9AC00](*(v40 + 64));
    v42 = &a9 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v42, v27);
    sub_1D989D248(v31, v42, v23, v22, v20, v35);
    OUTLINED_FUNCTION_7();
  }
}

void sub_1D989DB88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_34_1();
  sub_1D9889738(v8, v9);
  OUTLINED_FUNCTION_0_22();
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48820, &qword_1D9931B48);
  if (sub_1D992BE34())
  {
    v15 = OUTLINED_FUNCTION_33_1();
    sub_1D9889738(v15, v4);
    OUTLINED_FUNCTION_8_6();
    if (!v17)
    {
      goto LABEL_12;
    }

    v13 = v16;
  }

  v18 = *v5;
  if (v14)
  {
    *(v18[7] + 8 * v13) = v7;
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    sub_1D989D200(v13, v6, v4, v7, v18);
    OUTLINED_FUNCTION_37_0();

    sub_1D987BA38(v19, v20);
  }
}

unint64_t sub_1D989DC88()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1D98897E0(v3, v1);
  OUTLINED_FUNCTION_0_22();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48828, &qword_1D9931B50);
  if ((sub_1D992BE34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1D98897E0(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48830, &qword_1D9931B58);
    result = sub_1D992BFC4();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    v16 = (*(*v0 + 56) + 16 * v12);
    *v16 = v8;
    v16[1] = v6;
    OUTLINED_FUNCTION_7();

    return sub_1D987106C(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_7();

    return sub_1D989D31C(v21, v22, v23, v24, v25, v26);
  }
}

void sub_1D989DDBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5(a1, a2);
  OUTLINED_FUNCTION_0_22();
  if (v4)
  {
    __break(1u);
LABEL_11:
    sub_1D992AE84();
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_32_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487F8, &qword_1D9931B20);
  if (OUTLINED_FUNCTION_15_2(v5))
  {
    OUTLINED_FUNCTION_33_1();
    sub_1D9889568();
    OUTLINED_FUNCTION_8_6();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    MEMORY[0x1EEE9AC00](*(v8 + 64));
    v10 = OUTLINED_FUNCTION_3_8(v9, v16);
    v11(v10, v2);
    v12 = OUTLINED_FUNCTION_13_1();
    sub_1D989D368(v12, v13, v14, v15);
    OUTLINED_FUNCTION_37_0();
  }
}

void sub_1D989E078(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5(a1, a2);
  OUTLINED_FUNCTION_0_22();
  if (v4)
  {
    __break(1u);
LABEL_11:
    sub_1D992AE84();
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_32_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48808, &qword_1D9931B30);
  if (OUTLINED_FUNCTION_15_2(v5))
  {
    OUTLINED_FUNCTION_33_1();
    sub_1D9889568();
    OUTLINED_FUNCTION_8_6();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    MEMORY[0x1EEE9AC00](*(v9 + 64));
    v11 = OUTLINED_FUNCTION_3_8(v10, v17);
    v12(v11, v2);
    v13 = OUTLINED_FUNCTION_13_1();
    sub_1D989D368(v13, v14, v15, v16);
    OUTLINED_FUNCTION_37_0();
  }
}

uint64_t sub_1D989E1B0(uint64_t a1, uint64_t a2)
{
  sub_1D988B5F0();
  OUTLINED_FUNCTION_0_22();
  if (v3)
  {
    __break(1u);
LABEL_13:
    type metadata accessor for SISchemaDeviceSensitivityState(0);
    result = sub_1D992BFC4();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_32_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48850, &qword_1D9931B78);
  if (OUTLINED_FUNCTION_15_2(v4))
  {
    sub_1D988B5F0();
    OUTLINED_FUNCTION_8_6();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    OUTLINED_FUNCTION_37_0();

    return sub_1D989E708(v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_37_0();

    return sub_1D989D3E0(v10, v11, v12, v13);
  }
}

void sub_1D989E2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_6_2();
  v15 = v14;
  v17 = v16;
  OUTLINED_FUNCTION_10_5(v18, v19);
  OUTLINED_FUNCTION_0_22();
  if (v20)
  {
    __break(1u);
LABEL_11:
    sub_1D992AE84();
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_32_2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v15);
  if (OUTLINED_FUNCTION_15_2(v21))
  {
    OUTLINED_FUNCTION_33_1();
    sub_1D9889568();
    OUTLINED_FUNCTION_8_6();
    if (!v22)
    {
      goto LABEL_11;
    }
  }

  if (v13)
  {
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_7();

    v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }

  else
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    MEMORY[0x1EEE9AC00](*(v31 + 64));
    v33 = OUTLINED_FUNCTION_3_8(v32, v39);
    v34(v33, v12);
    v35 = OUTLINED_FUNCTION_13_1();
    sub_1D989D368(v35, v36, v37, v38);
    OUTLINED_FUNCTION_7();
  }
}

id sub_1D989E438(uint64_t a1, void *a2, char a3)
{
  sub_1D9889858();
  OUTLINED_FUNCTION_0_22();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48840, &qword_1D9931B68);
  if ((sub_1D992BE34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_1D9889858();
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    sub_1D992B1A4();
    result = sub_1D992BFC4();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  v12 = *v3;
  if (v9)
  {
    *(v12[7] + 8 * v8) = a1;
  }

  else
  {
    sub_1D989D480(v8, a2, a1, v12);

    return a2;
  }
}

void sub_1D989E558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D9889568();
  OUTLINED_FUNCTION_0_22();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1D992AE84();
    sub_1D992BFC4();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E0, &qword_1D9931B08);
  if (OUTLINED_FUNCTION_15_2(v11))
  {
    sub_1D9889568();
    OUTLINED_FUNCTION_8_6();
    if (!v13)
    {
      goto LABEL_12;
    }

    v9 = v12;
  }

  v14 = *v2;
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    OUTLINED_FUNCTION_37_0();

    __asm { BRAA            X3, X16 }
  }

  sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](*(v17 + 64));
  v19 = OUTLINED_FUNCTION_3_8(v18, v21);
  v20(v19, a2);
  sub_1D989D4C4(v9, v3, a1, v14);
  OUTLINED_FUNCTION_37_0();
}

uint64_t sub_1D989E708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D989E778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D989E7E8()
{
  result = qword_1ECB48088;
  if (!qword_1ECB48088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48088);
  }

  return result;
}

uint64_t sub_1D989E854()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1D98692C4;

  return sub_1D989BED0(v5, v3, v6, v7, v8, v9, v10);
}

uint64_t sub_1D989E924()
{
  OUTLINED_FUNCTION_39_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D992AD44();
  OUTLINED_FUNCTION_23(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = (v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1D98692C4;

  return sub_1D989C504(v4, v9, v10, v11, v0 + v7, v13, v14);
}

uint64_t sub_1D989EA54()
{
  OUTLINED_FUNCTION_26_2();
  v3 = v2;
  v4 = sub_1D992B004();
  OUTLINED_FUNCTION_23(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1D989EB64;

  return sub_1D989C958(v3, v8, v9, v0 + v6, v10);
}

uint64_t sub_1D989EB64()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

unint64_t sub_1D989EC44()
{
  result = qword_1ED8BF0D0[0];
  if (!qword_1ED8BF0D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8BF0D0);
  }

  return result;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D989ECE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D989ED2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_22_2(uint64_t a1)
{

  sub_1D98DCEB4(a1, v1, 0xD00000000000006BLL, v2 | 0x8000000000000000, 0x2928747365676E69, 0xE800000000000000);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_unknownObjectRelease();
}

void sub_1D989EE44(void *a1)
{
  sub_1D986E35C(0, &qword_1ECB478C8, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48888, &qword_1D9931C78);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9931BF0;
  v2 = sub_1D986E35C(0, &unk_1ED8BD668, 0x1E695DF20);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48890, &qword_1D9931C80);
  *(v1 + 32) = v2;
  v3 = sub_1D986E35C(0, &qword_1ECB478B0, 0x1E696AEC0);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48898, &qword_1D9931C88);
  *(v1 + 64) = v3;
  v4 = type metadata accessor for StagingReport();
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488A0, &qword_1D9931C90);
  *(v1 + 96) = v4;
  v5 = sub_1D986E35C(0, &qword_1ECB478C0, 0x1E696ABC0);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488A8, &qword_1D9931C98);
  *(v1 + 128) = v5;
  v6 = sub_1D989F318(v1);
  sub_1D992B914();

  sub_1D992BE94();
  __break(1u);
}

uint64_t sub_1D989F06C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = &v8 - v2;
  v4 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1D98C91CC(0, 0, v3, &unk_1D9931C70, v6);
}

uint64_t sub_1D989F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D989F1B8, 0, 0);
}

uint64_t sub_1D989F1B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D989F27C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D989F27C()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D989F2F0, 0, 0);
}

id sub_1D989F318(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1D992B7A4();

  v3 = [v1 initWithArray_];

  return v3;
}

uint64_t sub_1D989F3B0()
{
  if (qword_1ECB47AE0 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1ECB47AE0);
  }

  v1 = *(v0 + 24);
  sub_1D986A454(0x2928747365676E69, 0xE800000000000000, 0xD00000000000007ELL, 0x80000001D9938B10, 0x2928747365676E69, 0xE800000000000000);
  v2 = sub_1D989FF90();
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B0, &qword_1D9931CA0);
  *v3 = v0;
  v3[1] = sub_1D989F500;
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v0 + 16, v1, v2, 0x2928747365676E69, 0xE800000000000000, sub_1D989FFE4, v5, v4);
}

uint64_t sub_1D989F500()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1D989F648;
  }

  else
  {
    v4 = sub_1D989F62C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1D989F660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = aBlock - v4;
  v6 = sub_1D989F980(a1);
  if (v6)
  {
    v7 = v6;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, v5, v2);
    aBlock[4] = sub_1D989FFEC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D989F8DC;
    aBlock[3] = &block_descriptor_4;
    v10 = _Block_copy(aBlock);

    [v7 ingest_];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

uint64_t sub_1D989F828(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
    return sub_1D992B824();
  }

  if (!a1)
  {
    sub_1D989E7E8();
    swift_allocError();
    *v4 = 4;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
  return sub_1D992B834();
}

uint64_t sub_1D989F8DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for StagingReport();
    v4 = sub_1D992B5A4();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1D989F980(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = aBlock - v5;
  v7 = *(v1 + 112);
  if (v7)
  {
    (*(v4 + 16))(v6, a1, v3);
    v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v9 = swift_allocObject();
    (*(v4 + 32))(v9 + v8, v6, v3);
    aBlock[4] = sub_1D98A0124;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D989FD64;
    aBlock[3] = &block_descriptor_21;
    v10 = _Block_copy(aBlock);
    v11 = v7;

    v12 = [v11 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);

    sub_1D992BC24();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488C0, &qword_1D9931CB8);
    if (swift_dynamicCast())
    {
      return aBlock[0];
    }
  }

  sub_1D989E7E8();
  v14 = swift_allocError();
  *v15 = 0;
  aBlock[0] = v14;
  sub_1D992B824();
  return 0;
}

uint64_t sub_1D989FBDC(uint64_t a1)
{
  if (qword_1ECB47AE0 != -1)
  {
    swift_once();
  }

  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000001ELL, 0x80000001D9938BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(0, 0xE000000000000000, 0xD00000000000007ELL, 0x80000001D9938B10, 0x3A5F2879786F7270, 0xE900000000000029);

  v1 = sub_1D992AC84();
  sub_1D989E7E8();
  swift_allocError();
  *v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
  return sub_1D992B824();
}

void sub_1D989FD64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D989FDCC()
{
  if (qword_1ECB47AE0 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1ECB47AE0);
  }

  sub_1D986A454(0x61636F6C6C616544, 0xEC000000676E6974, 0xD00000000000007ELL, 0x80000001D9938B10, 0x74696E696564, 0xE600000000000000);
  v1 = *(v0 + 112);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 112);
  }

  else
  {
    v2 = 0;
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D989FE8C()
{
  sub_1D989FDCC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D989FEDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D988AED8;

  return sub_1D989F198(a1, v4, v5, v6);
}

unint64_t sub_1D989FF90()
{
  result = qword_1ECB47BA0;
  if (!qword_1ECB47BA0)
  {
    type metadata accessor for ExtensionOrchestratorConnection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47BA0);
  }

  return result;
}

uint64_t sub_1D989FFEC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);

  return sub_1D989F828(a1, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_14Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D98A0124(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488B8, &unk_1D9931CA8);

  return sub_1D989FBDC(a1);
}

uint64_t sub_1D98A01A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResourceType(0);
  MEMORY[0x1EEE9AC00](*(*(v2 - 8) + 64));
  OUTLINED_FUNCTION_13();
  v5 = v4 - v3;
  type metadata accessor for PersistentStorage();
  v6 = sub_1D992AD44();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  sub_1D98F97F8();
  v11 = type metadata accessor for DataVault(0);
  v12 = objc_allocWithZone(v11);
  (*(v7 + 16))(v12 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v10, v6);
  v15.receiver = v12;
  v15.super_class = v11;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v7 + 8))(v10, v6);
  sub_1D98CB648();

  sub_1D98C601C(a1);
  return sub_1D98876F0(v5);
}

id MetastoreStreamsShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetastoreStreamsShim.init()()
{
  v1 = v0;
  type metadata accessor for MetastoreStreams();
  v2 = swift_allocObject();
  sub_1D98A096C();
  *&v1[OBJC_IVAR___SiriAnalyticsMetastoreStreams_underlying] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MetastoreStreamsShim();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1D98A0434()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D98A04CC;

  return sub_1D98A0B54();
}

uint64_t sub_1D98A04CC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1D98A0628(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D98A06D0;

  return sub_1D98A0418();
}

uint64_t sub_1D98A06D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_25();

  return v6();
}

id sub_1D98A07F4(void *a1, void *a2)
{
  v5 = *(*(v2 + OBJC_IVAR___SiriAnalyticsMetastoreStreams_underlying) + 16);
  type metadata accessor for LogicalClocksProvider();
  swift_allocObject();
  v6 = sub_1D98E165C(a1, a2, v5);
  v7 = type metadata accessor for LogicalClocksProviderShim();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___SiriAnalyticsLogicalClocksProvider_provider] = v6;
  v12.receiver = v8;
  v12.super_class = v7;

  v9 = a1;
  v10 = a2;
  return objc_msgSendSuper2(&v12, sel_init);
}

id MetastoreStreamsShim.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetastoreStreamsShim();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D98A096C()
{
  v1 = v0;
  v2 = sub_1D992AD44();
  MEMORY[0x1EEE9AC00](*(*(v2 - 8) + 64));
  OUTLINED_FUNCTION_13();
  v5 = v4 - v3;
  sub_1D98A01A8(v4 - v3);
  type metadata accessor for LogicalClockStream(0);
  swift_allocObject();
  *(v1 + 16) = sub_1D9876B8C(v5);
  if (qword_1ED8BD6D0 != -1)
  {
    swift_once();
  }

  v10[0] = 1;
  v10[1] = 0xE000000000000000;
  sub_1D992BD64();

  v11 = 0xD000000000000018;
  v12 = 0x80000001D9938C60;
  v10[3] = &type metadata for PlatformFeatures;
  v10[4] = sub_1D98698A0();
  v6 = sub_1D992AE94();
  __swift_destroy_boxed_opaque_existential_1(v10);
  if (v6)
  {
    v7 = 0x736D6165727473;
  }

  else
  {
    v7 = 25188;
  }

  if (v6)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  MEMORY[0x1DA739C30](v7, v8);

  sub_1D98DCECC(v11, v12, 0xD00000000000007FLL, 0x80000001D9938C80, 0x292874696E69, 0xE600000000000000);

  return v1;
}

uint64_t sub_1D98A0B70()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_0_3(sub_1D98A0B90, v1);
}

uint64_t sub_1D98A0B90()
{
  OUTLINED_FUNCTION_18();
  sub_1D9876D2C();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D98A0C24;

  return sub_1D98981C8();
}

uint64_t sub_1D98A0C24()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1D98A0D04()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of MetastoreStreamsShim.bootstrapAndPrune()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D989EB64;

  return v5();
}

uint64_t sub_1D98A0EA8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98692C4;

  return sub_1D98A0628(v2, v3);
}

void sub_1D98A0F54(uint64_t a1)
{
  if (!MEMORY[0x1E69D4F78])
  {
    return;
  }

  sub_1D98814A4();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {

    return;
  }

  v35 = *(a1 + *(type metadata accessor for PreprocessorTelemetry(0) + 32));
  v36 = a1;
  v5 = 0;
  v6 = 0;
  v7 = *(sub_1D992AE84() - 8);
  v34 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v32 = "ts for uploaded clock ";
  v33 = v7 + 16;
  v28 = 0x80000001D9938D40;
  v29 = 0x80000001D9938DE0;
  v30 = v4 - 1;
  v31 = v7 + 8;
  while (1)
  {
    if (v6 >= v4)
    {
      __break(1u);
      goto LABEL_26;
    }

    MEMORY[0x1EEE9AC00](*(v7 + 64));
    v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    MEMORY[0x1EEE9AC00](v10);
    v27 = v9;
    v11 = sub_1D98A2E80(MEMORY[0x1E69E7CC8], sub_1D98A1570, (&v28 - 4), v35);
    v12 = sub_1D98A14CC(v11);

    if (v12)
    {
      if (qword_1ED8BD6F0 != -1)
      {
        OUTLINED_FUNCTION_1_17();
        swift_once();
      }

      aBlock = 0;
      v38 = 0xE000000000000000;
      sub_1D992BD64();

      aBlock = 0xD000000000000024;
      v38 = v29;
      sub_1D98A19C4();
      v14 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v14);

      OUTLINED_FUNCTION_0_24();

      v5 = 1;
    }

    MEMORY[0x1EEE9AC00](v13);
    v27 = v9;
    sub_1D98827BC();
    v16 = sub_1D98A14CC(v15);

    if ((v16 & 1) == 0)
    {
      break;
    }

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_1_17();
      swift_once();
    }

    aBlock = 0;
    v38 = 0xE000000000000000;
    sub_1D992BD64();

    aBlock = 0xD000000000000026;
    v38 = v28;
    sub_1D98A19C4();
    v17 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v17);

    OUTLINED_FUNCTION_0_24();

    v18 = OUTLINED_FUNCTION_2_15();
    v19(v18);
    if (v30 == v6)
    {

      goto LABEL_21;
    }

    v5 = 1;
LABEL_15:
    v4 = *(v3 + 16);
    ++v6;
  }

  v20 = OUTLINED_FUNCTION_2_15();
  v21(v20);
  if (v30 != v6)
  {
    goto LABEL_15;
  }

  if ((v5 & 1) == 0)
  {
    return;
  }

LABEL_21:
  v22 = [objc_allocWithZone(MEMORY[0x1E69D4F78]) init];
  v23 = sub_1D98A17FC(0xD000000000000019, 0x80000001D9938D00, 0x65636F7270657250, 0xED0000676E697373, 0x73694D6B636F6C43, 0xEF4D4944676E6973, 0x6E61747369737361, 0xEA00000000006474, 0, v22);
  if (!v23)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v23;
  aBlock = 0;
  sub_1D992B594();
  v25 = aBlock;
  if (aBlock)
  {

    v41 = sub_1D98A1594;
    v42 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1D98A176C;
    v40 = &block_descriptor_5;
    v26 = _Block_copy(&aBlock);
    sub_1D98A190C(v25, 0, 0, 0, v26, v22, 0.0);
    _Block_release(v26);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1D98A14CC(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = v7 | (v6 << 6);
    LODWORD(v7) = *(*(result + 48) + 16 * v8);
    v9 = *(*(result + 56) + 8 * v8);
    if (v7 == 17 && v9 != 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 1;
    }

    v4 = *(result + 64 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1D98A1594(uint64_t a1)
{
  if (!a1)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_9;
  }

  sub_1D992B624();
  sub_1D992BCF4();
  sub_1D98B0E5C(a1, &v3);
  sub_1D988B4A8(v2);
  if (!*(&v4 + 1))
  {
LABEL_9:
    sub_1D98A1A10(&v3);
    goto LABEL_10;
  }

  if (swift_dynamicCast() & 1) != 0 && (v2[0])
  {
    if (qword_1ED8BD6F0 != -1)
    {
      swift_once();
    }

    sub_1D98DCECC(0xD000000000000013, 0x80000001D9938E30, 0xD00000000000006CLL, 0x80000001D9938D70, 0x726F466B63656863, 0xEF293A5F28434241);
    return;
  }

LABEL_10:
  if (qword_1ED8BD6F0 != -1)
  {
    swift_once();
  }

  sub_1D98DCEB4(0xD00000000000001ELL, 0x80000001D9938E10, 0xD00000000000006CLL, 0x80000001D9938D70, 0x726F466B63656863, 0xEF293A5F28434241);
}

uint64_t sub_1D98A176C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1D992B5A4();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

id sub_1D98A17FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v10 = sub_1D992B614();

  v11 = sub_1D992B614();

  v12 = sub_1D992B614();

  v13 = sub_1D992B614();

  v14 = [a10 signatureWithDomain:v10 type:v11 subType:v12 detectedProcess:v13 triggerThresholdValues:a9];

  return v14;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D98A190C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  v13 = sub_1D992B584();

  v14 = [a6 snapshotWithSignature:v13 delay:a2 events:a3 payload:a4 actions:a5 reply:a7];

  return v14;
}

unint64_t sub_1D98A19C4()
{
  result = qword_1ED8BD8D0;
  if (!qword_1ED8BD8D0)
  {
    sub_1D992AE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD8D0);
  }

  return result;
}

uint64_t sub_1D98A1A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB488D0, &unk_1D99335F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ClockInactivityScheduler.__allocating_init(seconds:queue:expiration:creation:)()
{
  OUTLINED_FUNCTION_3_9();
  v1 = objc_allocWithZone(v0);
  return ClockInactivityScheduler.init(seconds:queue:expiration:creation:)();
}

id ClockInactivityScheduler.init(seconds:queue:expiration:creation:)()
{
  OUTLINED_FUNCTION_3_9();
  *&v1[OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_inactivityTimer] = 0;
  v7 = OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_timerLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB488E0, &unk_1D9931D50);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v1[v7] = v8;
  v9 = &v1[OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_expiration];
  *v9 = v4;
  *(v9 + 1) = v3;
  v10 = &v1[OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_creation];
  *v10 = v2;
  *(v10 + 1) = v0;
  *&v1[OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_queue] = v5;
  v11 = OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_interval;
  *&v1[OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_interval] = v6;
  v12 = *MEMORY[0x1E69E7F48];
  v13 = sub_1D992B504();
  (*(*(v13 - 8) + 104))(&v1[v11], v12, v13);
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ClockInactivityScheduler(0);
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t type metadata accessor for ClockInactivityScheduler(uint64_t a1)
{
  result = qword_1ED8BD760;
  if (!qword_1ED8BD760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D98A1D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D98F9B34;
    v5[3] = &block_descriptor_6;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v4);
  _Block_release(v4);
}

void sub_1D98A1DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v55 = a1;
  v56 = a2;
  sub_1D992B514();
  OUTLINED_FUNCTION_6();
  v62 = v6;
  v63 = v5;
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v59 = v9 - v8;
  sub_1D992B544();
  OUTLINED_FUNCTION_6();
  v60 = v11;
  v61 = v10;
  MEMORY[0x1EEE9AC00](*(v12 + 64));
  OUTLINED_FUNCTION_13();
  v53 = v14 - v13;
  sub_1D992B504();
  OUTLINED_FUNCTION_6();
  v51 = v16;
  v52 = v15;
  MEMORY[0x1EEE9AC00](*(v17 + 64));
  v50 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v48 - v19;
  v20 = sub_1D992B564();
  v48 = v20;
  v64 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](*(v64 + 64));
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v48 - v23;
  v25 = sub_1D992BA64();
  OUTLINED_FUNCTION_6();
  v27 = v26;
  MEMORY[0x1EEE9AC00](*(v28 + 64));
  OUTLINED_FUNCTION_13();
  v31 = v30 - v29;
  v54 = *(v4 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_timerLock);
  os_unfair_lock_lock(v54 + 4);
  sub_1D98A2D40();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D98A2D84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488F0, &qword_1D9931DC8);
  sub_1D98A2DDC();
  sub_1D992BC44();
  v32 = sub_1D992BA74();
  (*(v27 + 8))(v31, v25);
  ObjectType = swift_getObjectType();
  sub_1D992B554();
  v34 = v4;
  MEMORY[0x1DA739AC0](v22, v4 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_interval);
  v35 = *(v64 + 8);
  v64 += 8;
  v35(v22, v20);
  v36 = v49;
  sub_1D98A23D8(v49);
  v37 = v50;
  sub_1D98A244C(v50);
  v38 = v37;
  MEMORY[0x1DA73A070](v24, v36, v37, ObjectType);
  v39 = v52;
  v40 = *(v51 + 8);
  v40(v38, v52);
  v40(v36, v39);
  v35(v24, v48);
  *(v34 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_inactivityTimer) = v32;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v41 = swift_allocObject();
  v42 = v56;
  v41[2] = v55;
  v41[3] = v42;
  v44 = v57;
  v43 = v58;
  v41[4] = v57;
  v41[5] = v43;
  aBlock[4] = sub_1D98A2E40;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D98F9B34;
  aBlock[3] = &block_descriptor_21_0;
  v45 = _Block_copy(aBlock);

  sub_1D988C370(v44, v43);
  v46 = v53;
  sub_1D98BFA14(ObjectType);
  v47 = v59;
  sub_1D98BFA18();
  sub_1D992BA94();
  _Block_release(v45);
  (*(v62 + 8))(v47, v63);
  (*(v60 + 8))(v46, v61);

  sub_1D992BAB4();
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
  }

  sub_1D986A454(0xD000000000000018, 0x80000001D9939050, 0xD00000000000006ELL, 0x80000001D9938E70, 0xD000000000000026, 0x80000001D9939070);
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v54 + 4);
}

uint64_t sub_1D98A23D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1D992B504();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D98A244C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1D992B504();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1D98A24C4()
{
  v1 = *(v0 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_creation);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_creation + 8);

    sub_1D98A1DDC(v1, v2, 0, 0);

    sub_1D98750DC(v1, v2);
  }
}

void sub_1D98A258C()
{
  v1 = *(v0 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_timerLock);
  os_unfair_lock_lock(v1 + 4);
  if (*(v0 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_inactivityTimer))
  {
    *(v0 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_inactivityTimer) = 0;
    swift_getObjectType();
    sub_1D992BAA4();
    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
    }

    sub_1D986A454(0xD00000000000001ALL, 0x80000001D9938E50, 0xD00000000000006ELL, 0x80000001D9938E70, 0xD000000000000018, 0x80000001D9938EE0);
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v1 + 4);
}

void sub_1D98A26C0(uint64_t a1, uint64_t a2)
{
  sub_1D98A258C();
  v5 = *(v2 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_expiration);
  v6 = *(v2 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_expiration + 8);

  sub_1D98A1DDC(v5, v6, a1, a2);
}

uint64_t sub_1D98A27D0(uint64_t a1, uint64_t a2)
{
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
  }

  OUTLINED_FUNCTION_2_16(0xD00000000000001ALL, "destroyInactivityTimer()");
  sub_1D98A258C();
  OUTLINED_FUNCTION_2_16(0xD000000000000022, "estroyed(completion:)");
  return (*(v2 + OBJC_IVAR___SiriAnalyticsClockInactivityScheduler_expiration))(a1, a2);
}

id ClockInactivityScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClockInactivityScheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClockInactivityScheduler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98A2B24(uint64_t a1)
{
  result = sub_1D992B504();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D98A2D40()
{
  result = qword_1ED8BF3F0;
  if (!qword_1ED8BF3F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BF3F0);
  }

  return result;
}

unint64_t sub_1D98A2D84()
{
  result = qword_1ED8BD658;
  if (!qword_1ED8BD658)
  {
    sub_1D992BA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD658);
  }

  return result;
}

unint64_t sub_1D98A2DDC()
{
  result = qword_1ED8BD678;
  if (!qword_1ED8BD678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB488F0, &qword_1D9931DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD678);
  }

  return result;
}

uint64_t sub_1D98A2E80(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484C0, &qword_1D9930160);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v26 - v9;
  v30 = a1;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;
  v28 = a4;

  v17 = 0;
  while (v14)
  {
    v29 = v5;
    v18 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v28;
    v22 = *(v28 + 48);
    v23 = type metadata accessor for PreprocessorCounterKey(0);
    OUTLINED_FUNCTION_9(v23);
    sub_1D98AB648(v22 + *(v24 + 72) * v20, v10, type metadata accessor for PreprocessorCounterKey);
    *&v10[*(v26 + 48)] = *(*(v21 + 56) + 8 * v20);
    v25 = v29;
    v27(&v30, v10);
    v5 = v25;
    result = sub_1D986B804(v10, &qword_1ECB484C0, &qword_1D9930160);
    if (v25)
    {
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v30;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v29 = v5;
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98A3064(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_defaultActor_initialize();
  *(v10 + 200) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  OUTLINED_FUNCTION_0_0();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a1;
  *(v10 + 112) = v18;
  *(v10 + 120) = a1;
  *(v10 + 128) = a2;
  *(v10 + 136) = a4;
  *(v10 + 144) = a3;
  *(v10 + 152) = a5;
  *(v10 + 160) = a6;
  *(v10 + 168) = a7;
  *(v10 + 176) = a8;
  *(v10 + 184) = a9;
  *(v10 + 192) = a10;
  v19 = a3;
  v20 = a1;
  return v10;
}

uint64_t sub_1D98A3120()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v3);
  v1[4] = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D98A31A4()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[3];
  if (*(v1 + 200))
  {
    v2 = *(v1 + 200);
  }

  else
  {
    v2 = v0[4];
    v3 = v0[2];
    sub_1D992B874();
    v4 = OUTLINED_FUNCTION_79();
    __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
    v7 = sub_1D98AB364();
    OUTLINED_FUNCTION_128();
    v8 = swift_allocObject();
    v8[2] = v1;
    v8[3] = v7;
    v8[4] = v1;
    v8[5] = v3;
    swift_retain_n();
    sub_1D98BFAD0(0, 0, v2, &unk_1D9931EC8, v8);
    OUTLINED_FUNCTION_13_0();
  }

  v0[5] = v2;
  *(v1 + 200) = v2;

  v9 = swift_task_alloc();
  v0[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  *v9 = v0;
  v9[1] = sub_1D98A3328;
  v11 = MEMORY[0x1E69E7288];
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v10, v2, v12, v10, v11);
}

uint64_t sub_1D98A3328()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  OUTLINED_FUNCTION_141();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D98A3448()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_16_0();

  return v0();
}

uint64_t sub_1D98A34A8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_1D98A350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_1D98A35AC;

  return sub_1D98A3738();
}

uint64_t sub_1D98A35AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_141();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1D98A36D8()
{
  OUTLINED_FUNCTION_18();
  *(*(v0 + 16) + 200) = 0;

  OUTLINED_FUNCTION_16_0();

  return v1();
}

uint64_t sub_1D98A3738()
{
  OUTLINED_FUNCTION_18();
  v1[34] = v2;
  v1[35] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v3);
  v1[36] = OUTLINED_FUNCTION_163();
  v1[37] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F0, &qword_1D992FB38);
  v1[38] = v4;
  OUTLINED_FUNCTION_23(v4);
  v1[39] = v5;
  v1[40] = *(v6 + 64);
  v1[41] = OUTLINED_FUNCTION_163();
  v1[42] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483E8, &qword_1D992FB30);
  OUTLINED_FUNCTION_9(v7);
  v1[43] = OUTLINED_FUNCTION_20();
  v8 = type metadata accessor for MonotonicTimestamp(0);
  v1[44] = v8;
  OUTLINED_FUNCTION_9(v8);
  v1[45] = OUTLINED_FUNCTION_163();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v9 = sub_1D992B2C4();
  v1[48] = v9;
  OUTLINED_FUNCTION_23(v9);
  v1[49] = v10;
  v1[50] = OUTLINED_FUNCTION_20();
  v11 = type metadata accessor for PreprocessorTelemetry(0);
  v1[51] = v11;
  OUTLINED_FUNCTION_9(v11);
  v1[52] = OUTLINED_FUNCTION_163();
  v1[53] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D98A3918()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[53];
  v2 = v0[51];
  v4 = v0[34];
  v3 = v0[35];
  v5 = swift_allocBox();
  v7 = v6;
  v0[54] = v5;
  v0[55] = v6;

  sub_1D992AE74();
  *(v7 + v2[5]) = v4;
  sub_1D98DC10C((v7 + v2[6]));
  v8 = (v7 + v2[7]);
  *v8 = &unk_1D9931E88;
  v8[1] = v3;
  v9 = MEMORY[0x1E69E7CC8];
  *(v7 + v2[8]) = MEMORY[0x1E69E7CC8];
  *(v7 + v2[9]) = v9;
  *(v7 + v2[10]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_25();
  sub_1D98AB648(v7, v1, v10);
  v11 = swift_task_alloc();
  v0[56] = v11;
  *v11 = v0;
  v11[1] = sub_1D98A3A48;

  return sub_1D990CAE8();
}

uint64_t sub_1D98A3A48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  v3 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98A3B60()
{
  v1 = sub_1D992AE84();
  v0[57] = v1;
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v0[58] = v2;
  v0[59] = *(v4 + 64);
  v5 = swift_task_alloc();
  v0[60] = v5;
  if (qword_1ECB47FB0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_1ECB496F0);
  v0[61] = v6;
  v7 = *(v3 + 16);
  v0[62] = v7;
  v0[63] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v5, v6, v1);
  sub_1D992BAD4();
  if (qword_1ED8BD720 != -1)
  {
    swift_once();
  }

  v9 = v0[49];
  v8 = v0[50];
  v10 = v0[48];
  v0[64] = qword_1ED8BFB30;
  sub_1D992B2B4();
  sub_1D992B2A4();
  v11 = *(v9 + 8);
  v0[65] = v11;
  v0[66] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v10);
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
  }

  v12 = v0[55];
  v13 = v0[34];
  v0[67] = qword_1ECB49658;
  sub_1D992BD64();

  v14 = sub_1D990E940(v13);
  MEMORY[0x1DA739C30](v14);

  MEMORY[0x1DA739C30](0x6974756365786520, 0xED00003A64496E6FLL);
  v15 = swift_task_alloc();
  v7(v15, v12, v1);
  v0[68] = sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
  v16 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v16);

  v0[69] = *(v3 + 8);
  v0[70] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17 = OUTLINED_FUNCTION_113();
  v18(v17);

  OUTLINED_FUNCTION_36_2();
  sub_1D98DCECC(v19, v20, v21, v22, v23, v24);

  v25 = swift_task_alloc();
  v0[71] = v25;
  *v25 = v0;
  OUTLINED_FUNCTION_5_8(v25);

  return sub_1D9867CE8();
}

uint64_t sub_1D98A3F10()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  *(v6 + 576) = v5;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98A400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_143();
  v17 = v16[72];
  if (v17)
  {
    v18 = v16[35];
    if (*(v18 + 160) == 1)
    {
      OUTLINED_FUNCTION_36_2();
      sub_1D986A454(v19, v20, v21, v22, v23, v24);
      sub_1D98811F8(0);
      type metadata accessor for ExternalDataIngestion(0);
      swift_allocObject();

      v25 = OUTLINED_FUNCTION_50();
      v16[73] = sub_1D98FA908(v25, v26);
      v27 = swift_task_alloc();
      v16[74] = v27;
      *v27 = v16;
      OUTLINED_FUNCTION_5_8(v27);
      OUTLINED_FUNCTION_24();

      return sub_1D98FAAF8();
    }

    else
    {
      OUTLINED_FUNCTION_36_2();
      sub_1D986A454(v48, v49, v50, v51, v52, v53);
      if (qword_1ED8BF440 != -1)
      {
        OUTLINED_FUNCTION_1_7(&qword_1ED8BF440);
      }

      OUTLINED_FUNCTION_138();
      if (v54)
      {
        OUTLINED_FUNCTION_161(&qword_1ED8BF060);
        OUTLINED_FUNCTION_50();
        v17 = sub_1D992B5B4();
        sub_1D98AB584();
        v18 = MEMORY[0x1E6969088];
        sub_1D992B5B4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48830, &qword_1D9931B58);
        sub_1D98AB5CC();
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_44();
      }

      else
      {
        OUTLINED_FUNCTION_119();
      }

      OUTLINED_FUNCTION_80();
      v55 = swift_allocObject();
      OUTLINED_FUNCTION_85(v55);
      OUTLINED_FUNCTION_128();
      swift_allocObject();
      v56 = MetadataExtractor.init(metastore:)(v17);
      v16[80] = v56;
      OUTLINED_FUNCTION_80();
      swift_allocObject();
      if (*(v18 + 16))
      {
        OUTLINED_FUNCTION_104();
        OUTLINED_FUNCTION_101();

        sub_1D98BDBDC(0, 1, 1, MEMORY[0x1E69E7CC0]);
        OUTLINED_FUNCTION_127();
        if (v57)
        {
          OUTLINED_FUNCTION_78();
          sub_1D98BDBDC(v72, v73, v74, v75);
          v17 = v76;
        }

        OUTLINED_FUNCTION_47();
      }

      else
      {
        OUTLINED_FUNCTION_80();
        swift_deallocUninitializedObject();
        v58 = v17;
        v17 = MEMORY[0x1E69E7CC0];
      }

      v59 = v16[54];
      OUTLINED_FUNCTION_0_0();
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v56;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_78();
        sub_1D98BDBDC(v63, v64, v65, v66);
        v17 = v67;
      }

      if (v17[2] >= v17[3] >> 1)
      {
        OUTLINED_FUNCTION_78();
        sub_1D98BDBDC(v68, v69, v70, v71);
      }

      OUTLINED_FUNCTION_34_2();
      sub_1D98811F8(1);
      swift_endAccess();
      v61 = swift_task_alloc();
      v16[82] = v61;
      *v61 = v16;
      OUTLINED_FUNCTION_32_3(v61);
      OUTLINED_FUNCTION_24();

      return sub_1D98AACF4();
    }
  }

  else
  {
    v30 = v16[67];
    OUTLINED_FUNCTION_36_2();
    sub_1D986A454(v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_5_10();
    v77 = v38;
    v78 = v37;
    v79 = v16[37];
    v80 = v16[36];
    v39(v30);

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_24();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v77, v78, v79, v80, a14, a15, a16);
  }
}

uint64_t sub_1D98A44D4()
{
  OUTLINED_FUNCTION_26_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 600) = v0;

  if (!v0)
  {
    *(v4 + 608) = v3;
  }

  OUTLINED_FUNCTION_141();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D98A4600()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_0_25();
  sub_1D98AB648(v1, v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 616) = v4;
  *v4 = v0;
  v4[1] = sub_1D98A46A0;
  v5 = OUTLINED_FUNCTION_93(*(v0 + 608));

  return sub_1D990CD88(v5);
}

uint64_t sub_1D98A46A0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 280);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();

  return MEMORY[0x1EEE6DFA0](sub_1D98A47E4, v2, 0);
}

uint64_t sub_1D98A47E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_134();

  if (qword_1ED8BF440 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1ED8BF440);
  }

  OUTLINED_FUNCTION_138();
  if (v19)
  {
    OUTLINED_FUNCTION_161(&qword_1ED8BF060);
    OUTLINED_FUNCTION_50();
    v16 = sub_1D992B5B4();
    sub_1D98AB584();
    v18 = MEMORY[0x1E6969088];
    sub_1D992B5B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48830, &qword_1D9931B58);
    sub_1D98AB5CC();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_44();
  }

  else
  {
    OUTLINED_FUNCTION_119();
  }

  OUTLINED_FUNCTION_80();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_85(v20);
  OUTLINED_FUNCTION_128();
  swift_allocObject();
  v21 = MetadataExtractor.init(metastore:)(v16);
  v17[80] = v21;
  OUTLINED_FUNCTION_80();
  swift_allocObject();
  if (*(v18 + 16))
  {
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_101();

    sub_1D98BDBDC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_127();
    if (v22)
    {
      OUTLINED_FUNCTION_78();
      sub_1D98BDBDC(v38, v39, v40, v41);
      v16 = v42;
    }

    OUTLINED_FUNCTION_47();
  }

  else
  {
    OUTLINED_FUNCTION_80();
    swift_deallocUninitializedObject();
    v23 = v16;
    v16 = MEMORY[0x1E69E7CC0];
  }

  v24 = v17[54];
  OUTLINED_FUNCTION_0_0();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v21;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_78();
    sub_1D98BDBDC(v29, v30, v31, v32);
    v16 = v33;
  }

  if (v16[2] >= v16[3] >> 1)
  {
    OUTLINED_FUNCTION_78();
    sub_1D98BDBDC(v34, v35, v36, v37);
  }

  OUTLINED_FUNCTION_34_2();
  sub_1D98811F8(1);
  swift_endAccess();
  v26 = swift_task_alloc();
  v17[82] = v26;
  *v26 = v17;
  OUTLINED_FUNCTION_32_3(v26);
  OUTLINED_FUNCTION_106();

  return sub_1D98AACF4();
}

uint64_t sub_1D98A4A60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  *(v3 + 664) = v0;

  if (v0)
  {
    v7 = *(v3 + 280);

    v8 = sub_1D98A88B0;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 280);
    v8 = sub_1D98A4B74;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1D98A4B74()
{
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  sub_1D98AB1B0();
  v1 = sub_1D992B814();

  return MEMORY[0x1EEE6DFA0](sub_1D98A4C08, v1, v0);
}

uint64_t sub_1D98A4C08()
{
  OUTLINED_FUNCTION_18();
  sub_1D98E8F24();
  v0 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D98A4C6C()
{
  v163 = v0;
  v3 = *(v0 + 424);
  v4 = *(v0 + 472) + 15;
  OUTLINED_FUNCTION_0_25();
  sub_1D98AB648(v5, v3, v6);
  sub_1D98814A4();
  v8 = v7;
  *(v0 + 672) = v7;
  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  *(v0 + 680) = swift_task_alloc();
  v9 = *(v8 + 16);
  *(v0 + 688) = v9;
  if (v9)
  {
    *(v0 + 1080) = *(*(v0 + 464) + 80);
    OUTLINED_FUNCTION_130();
    *(v0 + 696) = v10;
    v11 = *(v0 + 664);
    *(v0 + 712) = 0;
    *(v0 + 704) = v11;
    (*(v0 + 496))();
    OUTLINED_FUNCTION_0_25();
    v12 = OUTLINED_FUNCTION_50();
    sub_1D98AB648(v12, v13, v14);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_53();

    return MEMORY[0x1EEE6DFA0](v15, v16, v17);
  }

  else
  {

    OUTLINED_FUNCTION_144();
    *(v0 + 752) = sub_1D992B104();
    OUTLINED_FUNCTION_161(&qword_1ED8BF060);
    sub_1D992B5B4();
    if (v4 == 1)
    {

      sub_1D98E9E5C();
    }

    OUTLINED_FUNCTION_82();
    v19 = *(v0 + 352);
    v20 = *(v0 + 280);
    v21 = mach_absolute_time();
    v162[0] = 0;
    MonotonicTimestamp.init(cpuTicks:clockType:)(v21, v162);
    *(v0 + 768) = *(v2 + *(v19 + 20));
    OUTLINED_FUNCTION_3_10();
    sub_1D98AB6A4();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_123(v22);

    v23 = v20;
    v24 = OUTLINED_FUNCTION_72();
    sub_1D98E4DC0(v24, v25, v26, v27);
    OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_36_2();
    sub_1D98DCECC(v28, v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_97(v1, v0 + 112);
    sub_1D98811F8(2);
    swift_endAccess();
    *(v0 + 792) = sub_1D992B394();
    if (v159)
    {
      OUTLINED_FUNCTION_105();

      sub_1D98A8BC4("Begin processing reason:");

      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_25_1();
      v34 = OUTLINED_FUNCTION_84();
      v35(v34);

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_53();

      __asm { BRAA            X1, X16 }
    }

    v38 = sub_1D992B4B4();
    OUTLINED_FUNCTION_74(v38);
    v39 = OUTLINED_FUNCTION_79();
    if (__swift_getEnumTagSinglePayload(v39, v40, 0) == 1)
    {
      v41 = OUTLINED_FUNCTION_89();
      sub_1D98F63BC(v41);
      OUTLINED_FUNCTION_88();
      sub_1D98811F8(4);
      swift_endAccess();
      OUTLINED_FUNCTION_0_25();
      v42 = OUTLINED_FUNCTION_49();
      sub_1D98AB648(v42, v43, v44);
      v45 = swift_task_alloc();
      *(v0 + 856) = v45;
      *v45 = v0;
      OUTLINED_FUNCTION_10_6(v45);
      OUTLINED_FUNCTION_53();

      return sub_1D990D23C();
    }

    else
    {
      v47 = *(v0 + 312);
      v49 = *(v47 + 32);
      v48 = v47 + 32;
      v49(*(v0 + 336), *(v0 + 344), *(v0 + 304));
      v50 = mach_absolute_time();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v51);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_147(v52);
      if (qword_1ECB47DD0 != -1)
      {
        v53 = OUTLINED_FUNCTION_63(&qword_1ECB47DD0);
      }

      v54 = v50 == -1 || qword_1ECB47DC8 == HIDWORD(qword_1ECB47DC8);
      if (v54 || !is_mul_ok(v50, qword_1ECB47DC8) || HIDWORD(qword_1ECB47DC8))
      {
        OUTLINED_FUNCTION_103();
        v55 = OUTLINED_FUNCTION_92();
        sub_1D9866D34(v55, v56, &qword_1ECB481D0, &qword_1D992F9F0);
        swift_task_alloc();
        v57 = swift_task_alloc();
        OUTLINED_FUNCTION_95();
        sub_1D9866D34(v58, v59, v60, &qword_1D992F9F0);
        OUTLINED_FUNCTION_55();
        if (v54)
        {
          v61 = OUTLINED_FUNCTION_116();
          v62(v61);
          OUTLINED_FUNCTION_90();
          OUTLINED_FUNCTION_91();
          OUTLINED_FUNCTION_55();
          if (!v54)
          {
            sub_1D986B804(v57, &qword_1ECB481D0, &qword_1D992F9F0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_90();
          OUTLINED_FUNCTION_91();
          v63 = OUTLINED_FUNCTION_33();
          v64(v63);
        }

        OUTLINED_FUNCTION_151();
        v65 = OUTLINED_FUNCTION_135();
        v66(v65);

        OUTLINED_FUNCTION_37_1(v67, v68, v69, v70, v71, v72, v73, v74, v122, v126, v130, v134, v138, v142, v146, v150, v154, v48, 0);

        OUTLINED_FUNCTION_3_10();
        sub_1D98AB6A4();
        v75 = OUTLINED_FUNCTION_39_1();
        v76 = OUTLINED_FUNCTION_18_2();
        __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
        v79 = OUTLINED_FUNCTION_113();
        v80(v79);
        sub_1D98AB364();
        OUTLINED_FUNCTION_41_1();
        v81 = swift_allocObject();
        v89 = OUTLINED_FUNCTION_77(v81, v82, v83, v84, v85, v86, v87, v88, v123, v127, v131, v135, v139, v143, v147, v151, v155, v157, v160);
        v91 = v90(v89);
        v99 = OUTLINED_FUNCTION_83(v91, v92, v93, v94, v95, v96, v97, v98, v124, v128, v132, v136, v140, v144, v148, v152);
        sub_1D9866D34(v99, v141, &qword_1ECB48BB0, &qword_1D9930970);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v141, 1, v75);
        OUTLINED_FUNCTION_122(EnumTagSinglePayload, v101, v102, v103, v104, v105, v106, v107, v125, v129, v133, v137, v141, v145, v149, v153, v156, v158, v161);

        v108 = *(v0 + 288);
        if (v75 == 1)
        {
          sub_1D986B804(*(v0 + 288), &qword_1ECB48BB0, &qword_1D9930970);
        }

        else
        {
          sub_1D992B864();
          OUTLINED_FUNCTION_112();
          (*(v109 + 8))(v108);
        }

        v110 = *(v48 + 16);
        swift_unknownObjectRetain();

        if (v110)
        {
          swift_getObjectType();
          sub_1D992B814();
          OUTLINED_FUNCTION_115();
          swift_unknownObjectRelease();
        }

        sub_1D986B804(*(v0 + 296), &qword_1ECB48BB0, &qword_1D9930970);
        OUTLINED_FUNCTION_0_0();
        v111 = swift_allocObject();
        v112 = OUTLINED_FUNCTION_12_5(v111);
        if (v116)
        {
          OUTLINED_FUNCTION_98();
        }

        else
        {
          v117 = 0;
        }

        *(v0 + 840) = OUTLINED_FUNCTION_15_3(v112, v117, v113, v114, v115);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        *(v0 + 848) = v118;
        *v118 = v119;
        OUTLINED_FUNCTION_13_2(v118);
        OUTLINED_FUNCTION_64();
        OUTLINED_FUNCTION_53();
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DA20](v53);
    }
  }
}

id sub_1D98A53E4()
{
  v21 = sub_1D990DA00();
  v0[90] = v21;
  result = [objc_allocWithZone(MEMORY[0x1E69CF470]) init];
  v0[91] = result;
  if (result)
  {
    v2 = result;
    v19 = v0[88];
    v3 = v0[85];
    v4 = v0[62];
    v5 = v0[57];
    v6 = v0[51];
    v7 = v0[52];
    sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
    v8 = swift_task_alloc();
    v4(v8, v3, v5);
    v9 = sub_1D98B5B94(v8);

    [v2 setClockIdentifier_];

    sub_1D9881858();
    v11 = sub_1D98B0EC0(v3, v10);
    LOBYTE(v8) = v12;

    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    [v2 setMessageCount_];
    v14 = *(v7 + *(v6 + 32));
    v15 = swift_task_alloc();
    *(v15 + 16) = v3;
    v16 = sub_1D98A2E80(MEMORY[0x1E69E7CC8], sub_1D98A1570, v15, v14);
    v0[92] = v20;

    v17 = sub_1D990E35C(v16);

    sub_1D98AB214(v17, v2);
    [v21 setPreprocessorSessionStartStatsReported_];
    v18 = swift_task_alloc();
    v0[93] = v18;
    *v18 = v0;
    v18[1] = sub_1D98A5624;

    return sub_1D990DDE8(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D98A5624()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D98A5710, 0, 0);
}

uint64_t sub_1D98A5710()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 720);

  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  v2 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D98A5790()
{
  v160 = v2;
  v5 = *(v2 + 688);
  OUTLINED_FUNCTION_139();
  v6();
  if (v0 == v5)
  {

    OUTLINED_FUNCTION_144();
    *(v2 + 752) = sub_1D992B104();
    OUTLINED_FUNCTION_161(&qword_1ED8BF060);
    sub_1D992B5B4();
    if (v1 == 1)
    {

      sub_1D98E9E5C();
    }

    OUTLINED_FUNCTION_82();
    v7 = *(v2 + 352);
    v8 = *(v2 + 280);
    v9 = mach_absolute_time();
    v159[0] = 0;
    MonotonicTimestamp.init(cpuTicks:clockType:)(v9, v159);
    *(v2 + 768) = *(v4 + *(v7 + 20));
    OUTLINED_FUNCTION_3_10();
    sub_1D98AB6A4();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_123(v10);

    v11 = v8;
    v12 = OUTLINED_FUNCTION_72();
    sub_1D98E4DC0(v12, v13, v14, v15);
    OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_36_2();
    sub_1D98DCECC(v16, v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_97(v3, v2 + 112);
    sub_1D98811F8(2);
    swift_endAccess();
    *(v2 + 792) = sub_1D992B394();
    if (v156)
    {
      OUTLINED_FUNCTION_105();

      sub_1D98A8BC4("Begin processing reason:");

      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_25_1();
      v22 = OUTLINED_FUNCTION_84();
      v23(v22);

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_53();

      __asm { BRAA            X1, X16 }
    }

    v35 = sub_1D992B4B4();
    OUTLINED_FUNCTION_74(v35);
    v36 = OUTLINED_FUNCTION_79();
    if (__swift_getEnumTagSinglePayload(v36, v37, 0) == 1)
    {
      v38 = OUTLINED_FUNCTION_89();
      sub_1D98F63BC(v38);
      OUTLINED_FUNCTION_88();
      sub_1D98811F8(4);
      swift_endAccess();
      OUTLINED_FUNCTION_0_25();
      v39 = OUTLINED_FUNCTION_49();
      sub_1D98AB648(v39, v40, v41);
      v42 = swift_task_alloc();
      *(v2 + 856) = v42;
      *v42 = v2;
      OUTLINED_FUNCTION_10_6(v42);
      OUTLINED_FUNCTION_53();

      return sub_1D990D23C();
    }

    else
    {
      v44 = *(v2 + 312);
      v46 = *(v44 + 32);
      v45 = v44 + 32;
      v46(*(v2 + 336), *(v2 + 344), *(v2 + 304));
      v47 = mach_absolute_time();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v48);
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_147(v49);
      if (qword_1ECB47DD0 != -1)
      {
        v50 = OUTLINED_FUNCTION_63(&qword_1ECB47DD0);
      }

      v51 = v47 == -1 || qword_1ECB47DC8 == HIDWORD(qword_1ECB47DC8);
      if (v51 || !is_mul_ok(v47, qword_1ECB47DC8) || HIDWORD(qword_1ECB47DC8))
      {
        OUTLINED_FUNCTION_103();
        v52 = OUTLINED_FUNCTION_92();
        sub_1D9866D34(v52, v53, &qword_1ECB481D0, &qword_1D992F9F0);
        swift_task_alloc();
        v54 = swift_task_alloc();
        OUTLINED_FUNCTION_95();
        sub_1D9866D34(v55, v56, v57, &qword_1D992F9F0);
        OUTLINED_FUNCTION_55();
        if (v51)
        {
          v58 = OUTLINED_FUNCTION_116();
          v59(v58);
          OUTLINED_FUNCTION_90();
          OUTLINED_FUNCTION_91();
          OUTLINED_FUNCTION_55();
          if (!v51)
          {
            sub_1D986B804(v54, &qword_1ECB481D0, &qword_1D992F9F0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_90();
          OUTLINED_FUNCTION_91();
          v60 = OUTLINED_FUNCTION_33();
          v61(v60);
        }

        OUTLINED_FUNCTION_151();
        v62 = OUTLINED_FUNCTION_135();
        v63(v62);

        OUTLINED_FUNCTION_37_1(v64, v65, v66, v67, v68, v69, v70, v71, v119, v123, v127, v131, v135, v139, v143, v147, v151, v45, 0);

        OUTLINED_FUNCTION_3_10();
        sub_1D98AB6A4();
        v72 = OUTLINED_FUNCTION_39_1();
        v73 = OUTLINED_FUNCTION_18_2();
        __swift_storeEnumTagSinglePayload(v73, v74, v75, v72);
        v76 = OUTLINED_FUNCTION_113();
        v77(v76);
        sub_1D98AB364();
        OUTLINED_FUNCTION_41_1();
        v78 = swift_allocObject();
        v86 = OUTLINED_FUNCTION_77(v78, v79, v80, v81, v82, v83, v84, v85, v120, v124, v128, v132, v136, v140, v144, v148, v152, v154, v157);
        v88 = v87(v86);
        v96 = OUTLINED_FUNCTION_83(v88, v89, v90, v91, v92, v93, v94, v95, v121, v125, v129, v133, v137, v141, v145, v149);
        sub_1D9866D34(v96, v138, &qword_1ECB48BB0, &qword_1D9930970);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v138, 1, v72);
        OUTLINED_FUNCTION_122(EnumTagSinglePayload, v98, v99, v100, v101, v102, v103, v104, v122, v126, v130, v134, v138, v142, v146, v150, v153, v155, v158);

        v105 = *(v2 + 288);
        if (v72 == 1)
        {
          sub_1D986B804(*(v2 + 288), &qword_1ECB48BB0, &qword_1D9930970);
        }

        else
        {
          sub_1D992B864();
          OUTLINED_FUNCTION_112();
          (*(v106 + 8))(v105);
        }

        v107 = *(v45 + 16);
        swift_unknownObjectRetain();

        if (v107)
        {
          swift_getObjectType();
          sub_1D992B814();
          OUTLINED_FUNCTION_115();
          swift_unknownObjectRelease();
        }

        sub_1D986B804(*(v2 + 296), &qword_1ECB48BB0, &qword_1D9930970);
        OUTLINED_FUNCTION_0_0();
        v108 = swift_allocObject();
        v109 = OUTLINED_FUNCTION_12_5(v108);
        if (v113)
        {
          OUTLINED_FUNCTION_98();
        }

        else
        {
          v114 = 0;
        }

        *(v2 + 840) = OUTLINED_FUNCTION_15_3(v109, v114, v110, v111, v112);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        *(v2 + 848) = v115;
        *v115 = v116;
        OUTLINED_FUNCTION_13_2(v115);
        OUTLINED_FUNCTION_64();
        OUTLINED_FUNCTION_53();
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DA20](v50);
    }
  }

  else
  {
    v26 = *(v2 + 736);
    v27 = *(v2 + 712) + 1;
    *(v2 + 712) = v27;
    *(v2 + 704) = v26;
    (*(v2 + 496))(*(v2 + 680), *(v2 + 672) + ((*(v2 + 1080) + 32) & ~*(v2 + 1080)) + *(v2 + 696) * v27, *(v2 + 456));
    OUTLINED_FUNCTION_0_25();
    v28 = OUTLINED_FUNCTION_50();
    sub_1D98AB648(v28, v29, v30);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_53();

    return MEMORY[0x1EEE6DFA0](v31, v32, v33);
  }
}

uint64_t sub_1D98A5EE4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98A5FF8()
{
  sub_1D992B4A4();
  v1 = OUTLINED_FUNCTION_49();
  v2(v1);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  *(v0 + 1090) = 0;
  *(v0 + 816) = v3;
  *(v0 + 808) = v4;
  v5 = *(v0 + 304);
  sub_1D992B4C4();
  v6 = OUTLINED_FUNCTION_79();
  if (__swift_getEnumTagSinglePayload(v6, v7, v5) == 1)
  {
    v8 = OUTLINED_FUNCTION_89();
    sub_1D98F63BC(v8);
    OUTLINED_FUNCTION_88();
    sub_1D98811F8(4);
    swift_endAccess();
    OUTLINED_FUNCTION_0_25();
    v9 = OUTLINED_FUNCTION_49();
    sub_1D98AB648(v9, v10, v11);
    v12 = swift_task_alloc();
    *(v0 + 856) = v12;
    *v12 = v0;
    OUTLINED_FUNCTION_10_6(v12);

    return sub_1D990D23C();
  }

  else
  {
    v57 = *(*(v0 + 312) + 32);
    v57(*(v0 + 336), *(v0 + 344), *(v0 + 304));
    *(v0 + 832) = v3;
    *(v0 + 824) = v4;
    v55 = *(v0 + 640);
    v56 = *(v0 + 624);
    v15 = *(v0 + 328);
    v14 = *(v0 + 336);
    v17 = *(v0 + 312);
    v16 = *(v0 + 320);
    v18 = *(v0 + 304);
    v50 = v18;
    v51 = v15;
    v52 = *(v0 + 296);
    v53 = *(v0 + 432);
    v54 = *(v0 + 288);
    v58 = *(v0 + 776);
    v59 = *(v0 + 280);
    v19 = sub_1D992B874();
    v20 = OUTLINED_FUNCTION_18_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    (*(v17 + 16))(v15, v14, v18);
    v23 = sub_1D98AB364();
    v24 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 2) = v59;
    *(v28 + 3) = v23;
    *(v28 + 4) = v59;
    v57(&v28[v24], v15, v50);
    *&v28[v25] = v53;
    *&v28[v26] = v55;
    *&v28[v27] = v58;
    *&v28[(v27 + 15) & 0xFFFFFFFFFFFFFFF8] = v56;
    LODWORD(v15) = v54;
    sub_1D9866D34(v52, v54, &qword_1ECB48BB0, &qword_1D9930970);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v19);
    OUTLINED_FUNCTION_122(EnumTagSinglePayload, v30, v31, v32, v33, v34, v35, v36, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);

    v37 = *(v0 + 288);
    if (v15 == 1)
    {
      sub_1D986B804(*(v0 + 288), &qword_1ECB48BB0, &qword_1D9930970);
    }

    else
    {
      sub_1D992B864();
      (*(*(v19 - 8) + 8))(v37, v19);
    }

    v38 = *(v28 + 2);
    swift_unknownObjectRetain();

    if (v38)
    {
      swift_getObjectType();
      sub_1D992B814();
      OUTLINED_FUNCTION_115();
      swift_unknownObjectRelease();
    }

    sub_1D986B804(*(v0 + 296), &qword_1ECB48BB0, &qword_1D9930970);
    OUTLINED_FUNCTION_0_0();
    v39 = swift_allocObject();
    v40 = OUTLINED_FUNCTION_12_5(v39);
    if (v44)
    {
      OUTLINED_FUNCTION_98();
    }

    else
    {
      v45 = 0;
    }

    *(v0 + 840) = OUTLINED_FUNCTION_15_3(v40, v45, v41, v42, v43);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 848) = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_13_2(v46);
    v48 = OUTLINED_FUNCTION_64();

    return MEMORY[0x1EEE6DA20](v48);
  }
}

uint64_t sub_1D98A63FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  v3 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98A6514()
{
  v115 = v0;
  v3 = *(v0 + 424);
  v4 = *(v0 + 472) + 15;
  OUTLINED_FUNCTION_0_25();
  sub_1D98AB648(v5, v3, v6);
  sub_1D98814A4();
  v8 = v7;
  *(v0 + 864) = v7;
  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  *(v0 + 872) = swift_task_alloc();
  v9 = *(v8 + 16);
  *(v0 + 880) = v9;
  if (v9)
  {
    *(v0 + 1084) = *(*(v0 + 464) + 80);
    OUTLINED_FUNCTION_130();
    *(v0 + 888) = v10;
    *(v0 + 896) = 0;
    (*(v0 + 496))();
    OUTLINED_FUNCTION_0_25();
    v11 = OUTLINED_FUNCTION_50();
    sub_1D98AB648(v11, v12, v13);
    v14 = swift_task_alloc();
    *(v0 + 904) = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_31_3(v14);
    OUTLINED_FUNCTION_42();

    return sub_1D990D594(v15);
  }

  OUTLINED_FUNCTION_86();
  v18 = mach_absolute_time();
  LOBYTE(v109) = 0;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v18, &v109);
  v104 = *(v8 + *(v3 + 20));
  OUTLINED_FUNCTION_3_10();
  sub_1D98AB6A4();
  OUTLINED_FUNCTION_69();
  sub_1D992BD64();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_51();
  sub_1D98AB648(v1, v4, v19);
  sub_1D9881BC8();
  OUTLINED_FUNCTION_45();
  sub_1D98AB6A4();
  *(v0 + 248) = v4;
  sub_1D992BF34();
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_124();
  v20 = OUTLINED_FUNCTION_94();
  v22 = sub_1D98AB648(v20, v21, 0xD000000000000010);
  sub_1D98816F8(v22, v23, v24, v25, v26, v27, v28, v29, v101, v102, v103, v104, v106, v107, v109, v110, v111, v112, v113, v114);
  sub_1D98AB6A4();
  OUTLINED_FUNCTION_133();
  sub_1D992BF34();
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_2();
  sub_1D98DCECC(v30, v31, v32, v33, v34, v35);

  if (*(v108 + 136))
  {
    v36 = *(v0 + 768);
    if (v105 < v36)
    {
      __break(1u);
    }

    else if (((v105 - v36) & 0x8000000000000000) == 0)
    {
      if (*(v0 + 1090))
      {
        v1 = 0;
LABEL_12:
        v39 = *(v0 + 424);
        v40 = *(v0 + 272);
        OUTLINED_FUNCTION_0_25();
        sub_1D98AB648(v41, v39, v42);
        sub_1D9881BC8();
        v2 = v43;
        OUTLINED_FUNCTION_1_18();
        sub_1D98AB6A4();
        sub_1D990E940(v40);
        v44 = sub_1D992B614();

        OUTLINED_FUNCTION_99(v45, sel_trackMessageStreamProcessed_timeToFirstMessage_messageCount_processingReason_failureReason_);

        goto LABEL_13;
      }

      v37 = *(v0 + 816);
      v38 = *(v0 + 808);
      v1 = v37 - v38;
      if (v37 >= v38)
      {
        if ((v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_13:
  v46 = *(v0 + 776);
  v47 = *(v0 + 536);
  OUTLINED_FUNCTION_69();
  sub_1D992BD64();
  OUTLINED_FUNCTION_121();
  *(v0 + 264) = *(*(v46 + 48) + 16);
  sub_1D992BF34();
  OUTLINED_FUNCTION_115();

  v109 = v0 + 264;
  v110 = v1;
  OUTLINED_FUNCTION_124();
  v48 = v110;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_2();
  sub_1D986A454(v49, v50, v51, v52, v53, v54);

  OUTLINED_FUNCTION_43_0();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48900, &qword_1D9931E90);
  OUTLINED_FUNCTION_9(v55);
  *(v0 + 920) = *(v56 + 64);
  *(v0 + 928) = swift_task_alloc();

  swift_task_alloc();
  if (v1)
  {
    v57 = 0;
LABEL_18:
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_109();
    (*"First pass analysis running")();
    v60 = *(*(v47 + 56) + 8 * v2);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    v62 = OUTLINED_FUNCTION_59();
    v63(v62, v1, v48);
    v64 = OUTLINED_FUNCTION_23_4();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v61);

    v67 = v60;
    v68 = v108;
    v48 = v57;
  }

  else
  {
    OUTLINED_FUNCTION_137();
    while (1)
    {
      v57 = v48 + 1;
      if (v48 + 1 >= v58)
      {
        break;
      }

      v1 = *(v59 + 8 * v48++);
      if (v1)
      {
        goto LABEL_18;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    v97 = OUTLINED_FUNCTION_18_2();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
    v68 = 0;
  }

  *(v0 + 944) = v48;
  *(v0 + 936) = v68;
  v69 = OUTLINED_FUNCTION_50();
  sub_1D98AB298(v69, v70);

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
  OUTLINED_FUNCTION_28_2(v71);
  if (v72)
  {
    OUTLINED_FUNCTION_7_7();

    sub_1D992BAC4();
    v73 = OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_29_3(v73, &dword_1D9863000, v74, "Process queue");

    v75 = OUTLINED_FUNCTION_49();
    (v1)(v75);

    sub_1D98A8BC4("First pass analysis running");

    OUTLINED_FUNCTION_5_10();
    v76 = OUTLINED_FUNCTION_26_3();
    v77(v76);

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_42();

    __asm { BRAA            X1, X16 }
  }

  v80 = OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_17_2(v80);
  OUTLINED_FUNCTION_95();
  v81();
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_57(0xD00000000000001FLL);
  OUTLINED_FUNCTION_156();

  OUTLINED_FUNCTION_36_2();
  sub_1D986A454(v82, v83, v84, v85, v86, v87);

  v88 = [objc_allocWithZone(MEMORY[0x1E69CED38]) init];
  OUTLINED_FUNCTION_155(v88, sel_setPreProcessorInfo_);

  if ([v48 preProcessorInfo])
  {
    [v88 setPreProcessorTriggerReason_];
  }

  sub_1D992AE04();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_159();
  sub_1D992ADC4();
  v90 = OUTLINED_FUNCTION_24_2();
  v92 = v91(v90);
  OUTLINED_FUNCTION_154(v92, sel_setMessageCreationTimeSince1970_);

  v93 = swift_task_alloc();
  v94 = OUTLINED_FUNCTION_125(v93);
  *v94 = v95;
  OUTLINED_FUNCTION_6_10(v94);
  OUTLINED_FUNCTION_42();

  return sub_1D98E2FA8();
}

uint64_t sub_1D98A6CB4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  v3 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98A6DCC()
{
  v112 = v2;
  v5 = *(v2 + 880);
  OUTLINED_FUNCTION_139();
  v6();
  if (v0 != v5)
  {
    v27 = *(v2 + 896) + 1;
    *(v2 + 896) = v27;
    (*(v2 + 496))(*(v2 + 872), *(v2 + 864) + ((*(v2 + 1084) + 32) & ~*(v2 + 1084)) + *(v2 + 888) * v27, *(v2 + 456));
    OUTLINED_FUNCTION_0_25();
    v28 = OUTLINED_FUNCTION_50();
    sub_1D98AB648(v28, v29, v30);
    v31 = swift_task_alloc();
    *(v2 + 904) = v31;
    *v31 = v2;
    OUTLINED_FUNCTION_31_3(v31);
    OUTLINED_FUNCTION_42();

    return sub_1D990D594(v32);
  }

  OUTLINED_FUNCTION_86();
  v7 = mach_absolute_time();
  LOBYTE(v106) = 0;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v7, &v106);
  v101 = *(v5 + *(v0 + 20));
  OUTLINED_FUNCTION_3_10();
  sub_1D98AB6A4();
  OUTLINED_FUNCTION_69();
  sub_1D992BD64();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_51();
  sub_1D98AB648(v3, v1, v8);
  sub_1D9881BC8();
  OUTLINED_FUNCTION_45();
  sub_1D98AB6A4();
  *(v2 + 248) = v1;
  sub_1D992BF34();
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_124();
  v9 = OUTLINED_FUNCTION_94();
  v11 = sub_1D98AB648(v9, v10, 0xD000000000000010);
  sub_1D98816F8(v11, v12, v13, v14, v15, v16, v17, v18, v98, v99, v100, v101, v103, v104, v106, v107, v108, v109, v110, v111);
  sub_1D98AB6A4();
  OUTLINED_FUNCTION_133();
  sub_1D992BF34();
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_2();
  sub_1D98DCECC(v19, v20, v21, v22, v23, v24);

  if (*(v105 + 136))
  {
    v26 = *(v2 + 768);
    if (v102 < v26)
    {
      __break(1u);
    }

    else if (((v102 - v26) & 0x8000000000000000) == 0)
    {
      if (*(v2 + 1090))
      {
        v3 = 0;
LABEL_12:
        v36 = *(v2 + 424);
        v37 = *(v2 + 272);
        OUTLINED_FUNCTION_0_25();
        sub_1D98AB648(v38, v36, v39);
        sub_1D9881BC8();
        v4 = v40;
        OUTLINED_FUNCTION_1_18();
        sub_1D98AB6A4();
        sub_1D990E940(v37);
        v41 = sub_1D992B614();

        OUTLINED_FUNCTION_99(v42, sel_trackMessageStreamProcessed_timeToFirstMessage_messageCount_processingReason_failureReason_);

        goto LABEL_13;
      }

      v34 = *(v2 + 816);
      v35 = *(v2 + 808);
      v3 = v34 - v35;
      if (v34 >= v35)
      {
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_13:
  v43 = *(v2 + 776);
  v44 = *(v2 + 536);
  OUTLINED_FUNCTION_69();
  sub_1D992BD64();
  OUTLINED_FUNCTION_121();
  *(v2 + 264) = *(*(v43 + 48) + 16);
  sub_1D992BF34();
  OUTLINED_FUNCTION_115();

  v106 = v2 + 264;
  v107 = v3;
  OUTLINED_FUNCTION_124();
  v45 = v107;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_2();
  sub_1D986A454(v46, v47, v48, v49, v50, v51);

  OUTLINED_FUNCTION_43_0();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48900, &qword_1D9931E90);
  OUTLINED_FUNCTION_9(v52);
  *(v2 + 920) = *(v53 + 64);
  *(v2 + 928) = swift_task_alloc();

  swift_task_alloc();
  if (v3)
  {
    v54 = 0;
LABEL_18:
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_109();
    (*"First pass analysis running")();
    v57 = *(*(v44 + 56) + 8 * v4);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    v59 = OUTLINED_FUNCTION_59();
    v60(v59, v3, v45);
    v61 = OUTLINED_FUNCTION_23_4();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v58);

    v64 = v57;
    v65 = v105;
    v45 = v54;
  }

  else
  {
    OUTLINED_FUNCTION_137();
    while (1)
    {
      v54 = v45 + 1;
      if (v45 + 1 >= v55)
      {
        break;
      }

      v3 = *(v56 + 8 * v45++);
      if (v3)
      {
        goto LABEL_18;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    v94 = OUTLINED_FUNCTION_18_2();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
    v65 = 0;
  }

  *(v2 + 944) = v45;
  *(v2 + 936) = v65;
  v66 = OUTLINED_FUNCTION_50();
  sub_1D98AB298(v66, v67);

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
  OUTLINED_FUNCTION_28_2(v68);
  if (v69)
  {
    OUTLINED_FUNCTION_7_7();

    sub_1D992BAC4();
    v70 = OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_29_3(v70, &dword_1D9863000, v71, "Process queue");

    v72 = OUTLINED_FUNCTION_49();
    (v3)(v72);

    sub_1D98A8BC4("First pass analysis running");

    OUTLINED_FUNCTION_5_10();
    v73 = OUTLINED_FUNCTION_26_3();
    v74(v73);

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_42();

    __asm { BRAA            X1, X16 }
  }

  v77 = OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_17_2(v77);
  OUTLINED_FUNCTION_95();
  v78();
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_57(0xD00000000000001FLL);
  OUTLINED_FUNCTION_156();

  OUTLINED_FUNCTION_36_2();
  sub_1D986A454(v79, v80, v81, v82, v83, v84);

  v85 = [objc_allocWithZone(MEMORY[0x1E69CED38]) init];
  OUTLINED_FUNCTION_155(v85, sel_setPreProcessorInfo_);

  if ([v45 preProcessorInfo])
  {
    [v85 setPreProcessorTriggerReason_];
  }

  sub_1D992AE04();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_159();
  sub_1D992ADC4();
  v87 = OUTLINED_FUNCTION_24_2();
  v89 = v88(v87);
  OUTLINED_FUNCTION_154(v89, sel_setMessageCreationTimeSince1970_);

  v90 = swift_task_alloc();
  v91 = OUTLINED_FUNCTION_125(v90);
  *v91 = v92;
  OUTLINED_FUNCTION_6_10(v91);
  OUTLINED_FUNCTION_42();

  return sub_1D98E2FA8();
}

uint64_t sub_1D98A7548()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  *(v6 + 976) = v5;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

id sub_1D98A7644()
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_134();
  if (*(v0 + 976))
  {
    v1 = [*(v0 + 960) preProcessorInfo];
    if (v1)
    {
      v2 = v1;
      sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
      [v2 setBootSessionUUIDChanged_];
    }

    else
    {
    }
  }

  else
  {
    *(v0 + 232) = 0;
    *(v0 + 240) = 0xE000000000000000;
    sub_1D992BD64();

    *(v0 + 216) = 0xD00000000000001ALL;
    *(v0 + 224) = 0x80000001D9939510;
    v3 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v3);

    OUTLINED_FUNCTION_36_2();
    sub_1D98DCEB4(v4, v5, v6, v7, v8, v9);
  }

  v10 = *(v0 + 952);
  v11 = *(v0 + 496);
  v12 = *(v0 + 456);
  v13 = OUTLINED_FUNCTION_20();
  v11(v13, v10, v12);
  v14 = mach_absolute_time();
  SiriAnalyticsMachAbsoluteTimeGetNanoseconds(v14);
  v15 = objc_allocWithZone(sub_1D992B164());
  v16 = sub_1D992B144();
  *(v0 + 984) = v16;

  result = [objc_allocWithZone(MEMORY[0x1E69CED28]) init];
  *(v0 + 992) = result;
  if (result)
  {
    v18 = result;
    v19 = *(v0 + 752);
    v20 = *(v0 + 496);
    v21 = *(v0 + 456);
    v22 = *(v0 + 280);
    [result setRedactionSummaryReported_];
    v23 = swift_task_alloc();
    *(v0 + 1000) = v23;
    sub_1D992AE74();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    OUTLINED_FUNCTION_9(v24);
    v25 = OUTLINED_FUNCTION_20();
    v20(v25, v23, v21);
    OUTLINED_FUNCTION_76();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
    objc_allocWithZone(v19);
    v29 = v16;
    v30 = v18;
    *(v0 + 1008) = sub_1D992B0A4();

    *(v0 + 1016) = *(v22 + 176);
    v31 = swift_task_alloc();
    *(v0 + 1024) = v31;
    *v31 = v0;
    OUTLINED_FUNCTION_5_8(v31);
    OUTLINED_FUNCTION_106();

    return sub_1D98BF3EC(v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D98A7984()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98A7A7C()
{
  OUTLINED_FUNCTION_18();
  v0[129] = *(v0[35] + 192);
  v1 = swift_task_alloc();
  v0[130] = v1;
  *v1 = v0;
  v1[1] = sub_1D98A7B14;
  v2 = OUTLINED_FUNCTION_93(v0[126]);

  return sub_1D987C088(v2);
}

uint64_t sub_1D98A7B14()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D98A7C0C()
{
  v3 = *(v0 + 1008);
  v4 = *(v0 + 952);
  *(v0 + 1048) = *(*(v0 + 280) + 184);
  sub_1D98D4378(v3);
  OUTLINED_FUNCTION_49();
  v5 = sub_1D98B3970();
  *(v0 + 1056) = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 1064) = v6;
    *v6 = v0;
    v6[1] = sub_1D98A80FC;
    OUTLINED_FUNCTION_58();

    sub_1D98BF3EC(v7);
  }

  else
  {
    v9 = *(v0 + 960);

    v10 = *(v0 + 992);
    OUTLINED_FUNCTION_102();

    v11 = OUTLINED_FUNCTION_92();
    v1(v11);
    v12 = OUTLINED_FUNCTION_49();
    v1(v12);

    v13 = *(v0 + 944);
    v14 = *(v0 + 936);
    OUTLINED_FUNCTION_20();
    if (v14)
    {
      v15 = *(v0 + 912);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_110();
      v2();
      v18 = *(*(v15 + 56) + 8 * v1);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
      v19 = OUTLINED_FUNCTION_59();
      v20(v19, v14, v4);
      v21 = OUTLINED_FUNCTION_23_4();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v10);

      v24 = v18;
      v25 = v59;
LABEL_11:
      *(v0 + 944) = v13;
      *(v0 + 936) = v25;
      v26 = OUTLINED_FUNCTION_50();
      sub_1D98AB298(v26, v27);

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
      OUTLINED_FUNCTION_28_2(v28);
      if (v29)
      {
        OUTLINED_FUNCTION_7_7();

        sub_1D992BAC4();
        v30 = OUTLINED_FUNCTION_164();
        OUTLINED_FUNCTION_29_3(v30, &dword_1D9863000, v31, "Process queue");

        v32 = OUTLINED_FUNCTION_49();
        (v10)(v32);

        sub_1D98A8BC4(v58);

        OUTLINED_FUNCTION_5_10();
        v33 = OUTLINED_FUNCTION_26_3();
        v34(v33);

        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_58();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_107();
      v37 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_17_2(v37);
      OUTLINED_FUNCTION_95();
      v38();
      OUTLINED_FUNCTION_56();

      OUTLINED_FUNCTION_57(0xD00000000000001FLL);
      OUTLINED_FUNCTION_156();

      OUTLINED_FUNCTION_36_2();
      sub_1D986A454(v39, v40, v41, v42, v43, v44);

      v45 = [objc_allocWithZone(MEMORY[0x1E69CED38]) init];
      OUTLINED_FUNCTION_155(v45, sel_setPreProcessorInfo_);

      if ([v14 preProcessorInfo])
      {
        [v45 setPreProcessorTriggerReason_];
      }

      sub_1D992AE04();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_159();
      sub_1D992ADC4();
      v47 = OUTLINED_FUNCTION_24_2();
      v49 = v48(v47);
      OUTLINED_FUNCTION_154(v49, sel_setMessageCreationTimeSince1970_);

      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_125(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_6_10(v51);
      OUTLINED_FUNCTION_58();

      sub_1D98E2FA8();
    }

    else
    {
      while (!__OFADD__(v13, 1))
      {
        OUTLINED_FUNCTION_131();
        if (v16 == v17)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
          v54 = OUTLINED_FUNCTION_18_2();
          __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
          v25 = 0;
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_132();
      }

      __break(1u);
    }
  }
}