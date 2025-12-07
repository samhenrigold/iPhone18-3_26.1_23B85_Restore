_BYTE *storeEnumTagSinglePayload for PersonalEventBackingItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7043744(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalEventBackingItem.DateRangeCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70438D0()
{
  result = qword_1EC216490;
  if (!qword_1EC216490)
  {
    result = swift_getWitnessTable(byte_1C7564264, &type metadata for PersonalEventBackingItem.DateRangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216490);
  }

  return result;
}

unint64_t sub_1C7043928()
{
  result = qword_1EC216498;
  if (!qword_1EC216498)
  {
    result = swift_getWitnessTable(aK_6, &type metadata for PersonalEventBackingItem.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216498);
  }

  return result;
}

unint64_t sub_1C7043980()
{
  result = qword_1EC2164A0;
  if (!qword_1EC2164A0)
  {
    result = swift_getWitnessTable(aUj, &type metadata for PersonalEventBackingItem.MomentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164A0);
  }

  return result;
}

unint64_t sub_1C70439D8()
{
  result = qword_1EC2164A8;
  if (!qword_1EC2164A8)
  {
    result = swift_getWitnessTable(aMi, &type metadata for PersonalEventBackingItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164A8);
  }

  return result;
}

unint64_t sub_1C7043A30()
{
  result = qword_1EC2164B0;
  if (!qword_1EC2164B0)
  {
    result = swift_getWitnessTable(aH_2, &type metadata for QueryTokenSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164B0);
  }

  return result;
}

unint64_t sub_1C7043A88()
{
  result = qword_1EDD0E710;
  if (!qword_1EDD0E710)
  {
    result = swift_getWitnessTable(byte_1C7564504, &type metadata for QueryTokenSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0E710);
  }

  return result;
}

unint64_t sub_1C7043AE0()
{
  result = qword_1EDD0E718;
  if (!qword_1EDD0E718)
  {
    result = swift_getWitnessTable(byte_1C756452C, &type metadata for QueryTokenSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0E718);
  }

  return result;
}

unint64_t sub_1C7043B38()
{
  result = qword_1EC2164B8;
  if (!qword_1EC2164B8)
  {
    result = swift_getWitnessTable(byte_1C75643FC, &type metadata for PersonalEventBackingItem.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164B8);
  }

  return result;
}

unint64_t sub_1C7043B90()
{
  result = qword_1EC2164C0;
  if (!qword_1EC2164C0)
  {
    result = swift_getWitnessTable(aS_6, &type metadata for PersonalEventBackingItem.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164C0);
  }

  return result;
}

unint64_t sub_1C7043BE8()
{
  result = qword_1EC2164C8;
  if (!qword_1EC2164C8)
  {
    result = swift_getWitnessTable(byte_1C7564344, &type metadata for PersonalEventBackingItem.MomentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164C8);
  }

  return result;
}

unint64_t sub_1C7043C40()
{
  result = qword_1EC2164D0;
  if (!qword_1EC2164D0)
  {
    result = swift_getWitnessTable(byte_1C756436C, &type metadata for PersonalEventBackingItem.MomentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164D0);
  }

  return result;
}

unint64_t sub_1C7043C98()
{
  result = qword_1EC2164D8;
  if (!qword_1EC2164D8)
  {
    result = swift_getWitnessTable(aEx, &type metadata for PersonalEventBackingItem.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164D8);
  }

  return result;
}

unint64_t sub_1C7043CF0()
{
  result = qword_1EC2164E0;
  if (!qword_1EC2164E0)
  {
    result = swift_getWitnessTable(aT_4, &type metadata for PersonalEventBackingItem.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164E0);
  }

  return result;
}

unint64_t sub_1C7043D48()
{
  result = qword_1EC2164E8;
  if (!qword_1EC2164E8)
  {
    result = swift_getWitnessTable(byte_1C75641D4, &type metadata for PersonalEventBackingItem.DateRangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164E8);
  }

  return result;
}

unint64_t sub_1C7043DA0()
{
  result = qword_1EC2164F0;
  if (!qword_1EC2164F0)
  {
    result = swift_getWitnessTable(a5u, &type metadata for PersonalEventBackingItem.DateRangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164F0);
  }

  return result;
}

unint64_t sub_1C7043DF8()
{
  result = qword_1EC2164F8;
  if (!qword_1EC2164F8)
  {
    result = swift_getWitnessTable(byte_1C756444C, &type metadata for PersonalEventBackingItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2164F8);
  }

  return result;
}

unint64_t sub_1C7043E50()
{
  result = qword_1EC216500;
  if (!qword_1EC216500)
  {
    result = swift_getWitnessTable(byte_1C7564474, &type metadata for PersonalEventBackingItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216500);
  }

  return result;
}

unint64_t sub_1C7043EA4()
{
  result = qword_1EC216508;
  if (!qword_1EC216508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenSuggestion.CategoryType, &type metadata for QueryTokenSuggestion.CategoryType, v0, v1);
    atomic_store(result, &qword_1EC216508);
  }

  return result;
}

unint64_t sub_1C7043EF8()
{
  result = qword_1EDD086F8;
  if (!qword_1EDD086F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenCategoryTypeString, &type metadata for QueryTokenCategoryTypeString, v0, v1);
    atomic_store(result, &qword_1EDD086F8);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_89_4@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  *(v1 - 65) = 0;

  return sub_1C70425BC();
}

uint64_t OUTLINED_FUNCTION_95_4(uint64_t a1, uint64_t a2)
{

  return sub_1C7551B4C();
}

uint64_t OUTLINED_FUNCTION_120_2(uint64_t *a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_121_3(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return memcpy(va, __src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_123_2(uint64_t a1, uint64_t a2)
{

  return sub_1C7551CBC();
}

uint64_t OUTLINED_FUNCTION_124_2(uint64_t a1, uint64_t a2)
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_126_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_132_3()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_133_1(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1C7040234(va, a2, a3, a4, a5);
}

void *OUTLINED_FUNCTION_160_0@<X0>(uint64_t a1@<X8>)
{

  return memmove(v1, (v1 + 16), 16 * a1);
}

uint64_t OUTLINED_FUNCTION_161_0(uint64_t a1, uint64_t a2)
{

  return sub_1C7551C6C();
}

void OUTLINED_FUNCTION_162_0()
{

  JUMPOUT(0x1CCA5E460);
}

uint64_t OUTLINED_FUNCTION_163_1@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_1C7551B6C();
}

uint64_t OUTLINED_FUNCTION_165_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_166_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_167_0()
{

  return sub_1C7551F5C();
}

void OUTLINED_FUNCTION_168_0()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_169_0()
{

  return sub_1C7551F5C();
}

uint64_t OUTLINED_FUNCTION_170_0(uint64_t a1)
{

  return sub_1C7551F5C();
}

uint64_t static MemoryCreationURLBuilder.navigationURL(query:launchType:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v40 = sub_1C754D8DC();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  sub_1C754D96C();
  OUTLINED_FUNCTION_3_0();
  v38 = v20;
  v39 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a3;
  sub_1C754D95C();
  sub_1C754D94C();
  MEMORY[0x1CCA59E50](0xD000000000000011, 0x80000001C759A450);
  if (!a2)
  {
    goto LABEL_8;
  }

  v24 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v24 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v36 = v4;
    sub_1C754D8CC();
    sub_1C6FB23E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v26 = v25;
    v28 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1C6FB23E0(v27 > 1, v28 + 1, 1, v25);
      v26 = v35;
    }

    *(v26 + 16) = v28 + 1;
    (*(v12 + 32))(v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v28, v18, v40);
  }

  else
  {
LABEL_8:
    v26 = MEMORY[0x1E69E7CC0];
  }

  switch(v23)
  {
    case 10:
      break;
    default:
      sub_1C754D8CC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB23E0(0, *(v26 + 16) + 1, 1, v26);
        v26 = v33;
      }

      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C6FB23E0(v29 > 1, v30 + 1, 1, v26);
        v26 = v34;
      }

      *(v26 + 16) = v30 + 1;
      (*(v12 + 32))(v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v30, v15, v40);
      break;
  }

  sub_1C754D91C();
  sub_1C754D92C();
  v31 = sub_1C754DD2C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v31) == 1)
  {
    sub_1C7044B24(v10);
    sub_1C7044B8C();
    swift_allocError();
    swift_willThrow();
    return (*(v38 + 8))(v22, v39);
  }

  else
  {
    (*(v38 + 8))(v22, v39);
    return (*(*(v31 - 8) + 32))(v37, v10, v31);
  }
}

uint64_t sub_1C7044B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7044B8C()
{
  result = qword_1EC216528;
  if (!qword_1EC216528)
  {
    result = swift_getWitnessTable(byte_1C7564928, &type metadata for MemoryCreationURLBuilder.Error, v0, v1);
    atomic_store(result, &qword_1EC216528);
  }

  return result;
}

_BYTE *sub_1C7044BF0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7044CA0()
{
  result = qword_1EC216530;
  if (!qword_1EC216530)
  {
    result = swift_getWitnessTable(aIe, &type metadata for MemoryCreationURLBuilder.Error, v0, v1);
    atomic_store(result, &qword_1EC216530);
  }

  return result;
}

uint64_t sub_1C7044CF8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v8 = (a3 + 48);
  while (v6 != v5)
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v11 = *(v8 - 2);
    v15[0] = v5;
    v15[1] = v11;
    v15[2] = v9;
    v15[3] = v10;
    sub_1C75504FC();
    sub_1C75504FC();
    a1(&v14, v15);
    if (v3)
    {

      return v7;
    }

    if (v14)
    {
      MEMORY[0x1CCA5D040](v12);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v7 = v16;
    }

    v8 += 3;
    ++v5;
  }

  return v7;
}

void sub_1C7044E38(void (*result)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v4 = 0;
  v5 = *(a3 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  while (v5 != v4)
  {
    if (v4 >= v5)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v6 = *(type metadata accessor for AssetSummaryInfo(0) - 8);
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_16;
    }

    result(&v23, v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4);
    if (v3)
    {

      return;
    }

    v9 = v23;
    v8 = v24;
    v11 = v25;
    v10 = v26;
    if (v24)
    {
      v12 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB2708(v18);
        v12 = v19;
      }

      v13 = v12;
      v14 = *(v12 + 16);
      v21 = v13;
      v15 = *(v13 + 24);
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        sub_1C6FB2708(v15 > 1);
        v16 = v14 + 1;
        v21 = v20;
      }

      *(v21 + 16) = v16;
      v17 = (v21 + 32 * v14);
      v17[4] = v9;
      v17[5] = v8;
      v17[6] = v11;
      v17[7] = v10;
      v4 = v7;
    }

    else
    {
      sub_1C7045EFC(v23, 0);
      ++v4;
    }
  }
}

void sub_1C7044FEC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v22 = a3 & 0xC000000000000001;
  v23 = sub_1C6FB6304();
  v20 = a3 & 0xFFFFFFFFFFFFFF8;
  v21 = a3;
  v6 = MEMORY[0x1E69E7CC0];
  while (v23 != v5)
  {
    if (v22)
    {
      v7 = MEMORY[0x1CCA5DDD0](v5, v21);
    }

    else
    {
      if (v5 >= *(v20 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(v21 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v28 = v7;
    a1(&v24, &v28);
    if (v3)
    {

      return;
    }

    v9 = v25;
    if (v25)
    {
      v10 = v24;
      v11 = v26;
      v12 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB1DA0(v16);
        v6 = v17;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C6FB1DA0(v13 > 1);
        v6 = v18;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 32 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v9;
      *(v15 + 48) = v11;
      *(v15 + 56) = v12 & 1;
      *(v15 + 57) = HIBYTE(v12) & 1;
    }

    else
    {
    }

    ++v5;
  }
}

void sub_1C7045190(void (*result)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190) - 8);
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    result(&v20, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {

      return;
    }

    v10 = v21;
    ++v6;
    if (v21)
    {
      v19 = v20;
      v11 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v11 = v17;
      }

      v12 = v11;
      v13 = *(v11 + 16);
      v22 = v12;
      v14 = v13 + 1;
      if (v13 >= *(v12 + 24) >> 1)
      {
        sub_1C6FB1814();
        v14 = v13 + 1;
        v22 = v18;
      }

      v15 = v22;
      *(v22 + 16) = v14;
      v16 = v15 + 16 * v13;
      *(v16 + 32) = v19;
      *(v16 + 40) = v10;
      v6 = v9;
    }
  }
}

id static PHCollectionList.folder(with:reuseFolderIfExisting:in:)(uint64_t a1, uint64_t a2, char a3, id a4)
{
  if ((a3 & 1) != 0 && (v7 = [a4 librarySpecificFetchOptions], sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0), v8 = swift_allocObject(), *(v8 + 16) = xmmword_1C75604F0, v9 = MEMORY[0x1E69E6158], *(v8 + 56) = MEMORY[0x1E69E6158], v10 = sub_1C6F6D524(), strcpy((v8 + 32), "localizedTitle"), *(v8 + 47) = -18, *(v8 + 96) = v9, *(v8 + 104) = v10, *(v8 + 64) = v10, *(v8 + 72) = a1, *(v8 + 80) = a2, sub_1C75504FC(), v11 = sub_1C755112C(), objc_msgSend(v7, sel_setPredicate_, v11), v11, v12 = objc_msgSend(objc_opt_self(), sel_fetchCollectionListsWithType_subtype_options_, 2, 100, v7), v13 = objc_msgSend(v12, sel_firstObject), v12, v7, v13))
  {
    return v13;
  }

  else
  {
    return static PHCollectionList.create(with:in:)(a1, a2, a4);
  }
}

uint64_t PHCollectionList.add(albums:preserveOrdersInAlbums:progressReporter:)(uint64_t a1, char a2, uint64_t a3)
{
  v8 = sub_1C754F2CC();
  if (v4)
  {
    goto LABEL_4;
  }

  MEMORY[0x1EEE9AC00](v8);
  v13[2] = a3;
  v13[3] = a1;
  v13[4] = v3;
  v14 = a2 & 1;
  v9 = sub_1C7044CF8(sub_1C7045A6C, v13, a1);
  PHCollectionList.add(albums:)(v9);
  if (v10)
  {

LABEL_4:
    v11 = sub_1C754F2FC();
    return (*(*(v11 - 8) + 8))(a3, v11);
  }

  return sub_1C754F2EC();
}

id static PHCollectionList.create(with:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  OUTLINED_FUNCTION_3_16();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v6;
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_23();
  aBlock[2] = v8;
  aBlock[3] = &block_descriptor_2;
  v9 = _Block_copy(aBlock);
  sub_1C75504FC();

  aBlock[0] = 0;
  LODWORD(a2) = [a3 performChangesAndWait:v9 error:aBlock];
  _Block_release(v9);
  v10 = aBlock[0];
  if (!a2)
  {
    v18 = aBlock[0];
    sub_1C754DBEC();

LABEL_6:
    swift_willThrow();

    return v18;
  }

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C755BAB0;
  swift_beginAccess();
  v13 = *(v6 + 24);
  *(v12 + 32) = *(v6 + 16);
  *(v12 + 40) = v13;
  sub_1C75504FC();
  v14 = v10;
  v15 = sub_1C7550B3C();

  v16 = [a3 librarySpecificFetchOptions];
  v17 = [v11 fetchCollectionListsWithLocalIdentifiers:v15 options:v16];

  v18 = [v17 firstObject];
  if (!v18)
  {
    sub_1C7045C80();
    swift_allocError();
    *v19 = 0;
    goto LABEL_6;
  }

  return v18;
}

uint64_t sub_1C7045898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_1C755065C();
  v6 = [v4 creationRequestForCollectionListWithTitle_];

  v7 = [v6 placeholderForCreatedCollectionList];
  v8 = [v7 localIdentifier];

  v9 = sub_1C755068C();
  v11 = v10;

  swift_beginAccess();
  *(a3 + 16) = v9;
  *(a3 + 24) = v11;
}

void sub_1C704598C(uint64_t *a1@<X0>, void *a3@<X3>, char a4@<W4>, void *a5@<X8>)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  sub_1C754F2DC();
  if (!v5)
  {
    v12 = [a3 photoLibrary];
    if (v12)
    {
      v13 = v12;
      sub_1C6F65BE8(0, &qword_1EDD0FA88, 0x1E6978650);
      v14 = static PHAssetCollection.persistAsAlbum(assetUUIDs:albumName:photoLibrary:preserveOrder:)(v11, v9, v10, v13, a4 & 1);

      *a5 = v14;
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PHCollectionList.add(albums:)(Swift::OpaquePointer albums)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = swift_allocObject();
  *(v4 + 16) = 2;
  v5 = [v2 photoLibrary];
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  OUTLINED_FUNCTION_3_16();
  v7 = swift_allocObject();
  v7[2]._rawValue = v2;
  v7[3]._rawValue = albums._rawValue;
  v7[4]._rawValue = v4;
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_23();
  aBlock[2] = v8;
  aBlock[3] = &block_descriptor_12;
  v9 = _Block_copy(aBlock);
  v10 = v2;
  sub_1C75504FC();

  aBlock[0] = 0;
  v11 = [v6 performChangesAndWait:v9 error:aBlock];
  _Block_release(v9);

  v12 = aBlock[0];
  if (v11)
  {
    swift_beginAccess();
    v13 = *(v4 + 16);
    if (v13 != 2)
    {
      sub_1C7045C80();
      swift_allocError();
      *v14 = v13 & 1;
      swift_willThrow();
    }

    v15 = v12;
  }

  else
  {
    v16 = aBlock[0];
    sub_1C754DBEC();

    swift_willThrow();
  }
}

unint64_t sub_1C7045C80()
{
  result = qword_1EC216538;
  if (!qword_1EC216538)
  {
    result = swift_getWitnessTable(byte_1C75649E4, &_s5ErrorON_0, v0, v1);
    atomic_store(result, &qword_1EC216538);
  }

  return result;
}

void sub_1C7045CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() changeRequestForCollectionList_];
  if (v4)
  {
    v5 = v4;
    sub_1C6F65BE8(0, &qword_1EDD0FA88, 0x1E6978650);
    v6 = sub_1C7550B3C();
    [v5 addChildCollections_];
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
  }
}

_BYTE *_s5ErrorOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7045EA8()
{
  result = qword_1EC216540;
  if (!qword_1EC216540)
  {
    result = swift_getWitnessTable(byte_1C75649BC, &_s5ErrorON_0, v0, v1);
    atomic_store(result, &qword_1EC216540);
  }

  return result;
}

uint64_t sub_1C7045EFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C7045F48()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EDD28C70 = result;
  return result;
}

uint64_t sub_1C7045FB4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28C58);
  __swift_project_value_buffer(v0, qword_1EDD28C58);
  if (qword_1EDD0B048 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD28C70;
  return sub_1C754FF2C();
}

uint64_t QueryAnnotatorV2.init(personGroundingProcessor:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDD0B040 != -1)
  {
    swift_once();
  }

  v4 = sub_1C754FF1C();
  v5 = __swift_project_value_buffer(v4, qword_1EDD28C58);
  (*(*(v4 - 8) + 16))(a2, v5, v4);
  v6 = a2 + *(type metadata accessor for QueryAnnotatorV2(0) + 20);

  return sub_1C6F699F8(a1, v6);
}

uint64_t type metadata accessor for QueryAnnotatorV2(uint64_t a1)
{
  result = qword_1EDD0B030;
  if (!qword_1EDD0B030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static QueryAnnotatorV2.prewarmGroundingComponents()()
{
  v0 = objc_opt_self();

  return [v0 prewarm];
}

uint64_t QueryAnnotatorV2.queryAnnotation(with:photoLibrary:eventRecorder:progressReporter:diagnosticContext:aiEventReporting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[87] = v8;
  v9[86] = a8;
  v9[85] = a7;
  v9[84] = a6;
  v9[83] = a5;
  v9[82] = a4;
  v9[81] = a3;
  v9[80] = a2;
  v9[79] = a1;
  v10 = sub_1C754DF6C();
  v9[88] = v10;
  OUTLINED_FUNCTION_18(v10);
  v9[89] = v11;
  v9[90] = swift_task_alloc();
  v9[91] = swift_task_alloc();
  v12 = sub_1C754F2FC();
  v9[92] = v12;
  OUTLINED_FUNCTION_18(v12);
  v9[93] = v13;
  v9[94] = swift_task_alloc();
  v9[95] = swift_task_alloc();
  v9[96] = swift_task_alloc();
  v9[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  v9[98] = swift_task_alloc();
  v14 = sub_1C754F38C();
  v9[99] = v14;
  OUTLINED_FUNCTION_18(v14);
  v9[100] = v15;
  v9[101] = swift_task_alloc();
  v9[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7046384, 0, 0);
}

uint64_t sub_1C7046384()
{
  v36 = v0;
  v1 = v0[98];
  v2 = v0[83];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_5_18();
  sub_1C754F60C();
  v3 = sub_1C754F61C();
  v0[103] = v3;
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  sub_1C754F16C();
  sub_1C7047600(v1);
  sub_1C754F2CC();
  v28 = v0[82];
  v26 = v0[81];
  v4 = v0[80];
  __swift_project_boxed_opaque_existential_1(v0[83], v2[3]);
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  v5 = objc_opt_self();
  v35[0] = [v5 queryAnnotationPromptBindingNumberOfPersonAndPetNames];
  v35[1] = [v5 queryAnnotationPromptBindingNumberOfLocationNames];
  sub_1C74762C4(v4, v26, v35, v28, v31);
  v6 = v0[93];
  v29 = v0[92];
  v7 = v0[97];
  v27 = v0[95];
  v23 = v0[80];
  v24 = v0[81];
  v8 = v31[1];
  v25 = v31[0];
  v0[104] = v31[0];
  v0[105] = v8;
  v9 = v32;
  v10 = v33;
  v0[106] = v32;
  v0[107] = v10;
  v11 = v34;
  v0[108] = v34;
  v30 = v7;
  v31[0] = v9;
  sub_1C75504FC();
  v12 = sub_1C75504FC();
  sub_1C6FD2568(v12);
  v0[77] = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v13 = OUTLINED_FUNCTION_6_19();
  v15 = v14;

  v0[78] = v11;
  v16 = OUTLINED_FUNCTION_6_19();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550, &unk_1C756BF70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F060;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = v23;
  *(inited + 56) = v24;
  *(inited + 64) = 0x73656D616ELL;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = v13;
  *(inited + 88) = v15;
  *(inited + 96) = 0x54746E6572727563;
  *(inited + 104) = 0xEB00000000656D69;
  *(inited + 112) = v25;
  *(inited + 120) = v8;
  *(inited + 128) = 0x6E6F697461636F6CLL;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = v16;
  *(inited + 152) = v18;
  sub_1C75504FC();
  sub_1C75504FC();
  v0[109] = sub_1C75504DC();
  sub_1C754DF5C();
  v20 = *(v6 + 32);
  v0[110] = v20;
  v0[111] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v20(v27, v30, v29);
  v21 = swift_task_alloc();
  v0[112] = v21;
  *v21 = v0;
  v21[1] = sub_1C704694C;

  return sub_1C735BAEC();
}

uint64_t sub_1C704694C()
{
  *(*v1 + 904) = v0;

  if (v0)
  {

    v2 = sub_1C7047490;
  }

  else
  {
    v2 = sub_1C7046AA8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C7046AA8()
{
  v1 = v0[110];
  v2 = v0[103];
  v31 = v0[113];
  v3 = v0[98];
  v4 = v0[96];
  v5 = v0[94];
  v6 = v0[92];
  memcpy(v0 + 35, v0 + 22, 0x68uLL);
  sub_1C754DF5C();
  sub_1C754DEAC();
  v0[114] = v7;
  v1(v5, v4, v6);
  __swift_project_boxed_opaque_existential_1(v0 + 72, v0[75]);
  OUTLINED_FUNCTION_5_18();
  sub_1C754F60C();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  sub_1C754F16C();
  sub_1C7047600(v3);
  sub_1C754F2CC();
  v0[115] = v31;
  if (v31)
  {
    v8 = v0[101];
    v9 = v0[100];
    v28 = v0[94];
    v10 = v0[93];
    v24 = v0[99];
    v26 = v0[92];
    __swift_project_boxed_opaque_existential_1(v0 + 72, v0[75]);
    sub_1C754F1AC();

    v30 = *(v9 + 8);
    v30(v8, v24);
    (*(v10 + 8))(v28, v26);
    v11 = v0[102];
    v12 = v0[93];
    v27 = v0[99];
    v29 = v0[92];
    v13 = v0[91];
    v14 = v0[90];
    v15 = v0[89];
    v16 = v0[88];
    v25 = v0[84];
    v17 = v0[83];
    sub_1C7047668((v0 + 35));
    v18 = *(v15 + 8);
    v18(v14, v16);
    v18(v13, v16);
    __swift_destroy_boxed_opaque_existential_1(v0 + 72);
    OUTLINED_FUNCTION_0_22(v17, v17[3]);
    sub_1C754F1AC();
    v30(v11, v27);
    (*(v12 + 8))(v25, v29);
    OUTLINED_FUNCTION_1_24();

    OUTLINED_FUNCTION_43();

    return v19();
  }

  else
  {
    memcpy(v0 + 48, v0 + 35, 0x68uLL);
    v21 = swift_task_alloc();
    v0[116] = v21;
    *v21 = v0;
    v21[1] = sub_1C7046E48;
    v22 = v0[81];
    v23 = v0[80];

    return sub_1C717F244((v0 + 48), v23, v22);
  }
}

uint64_t sub_1C7046E48(uint64_t a1)
{
  *(*v1 + 936) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C7046F48, 0, 0);
}

uint64_t sub_1C7046F48()
{
  v45 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  if (v1 == 7562617 && v2 == 0xE300000000000000)
  {
    v40 = 1;
  }

  else
  {
    v40 = OUTLINED_FUNCTION_7_11(v1, v2);
  }

  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  if (v4 == 7562617 && v5 == 0xE300000000000000)
  {
    v36 = 1;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_7_11(v4, v5);
  }

  v7 = *(v0 + 936);
  v43 = *(v0 + 920);
  v8 = *(v0 + 912);
  v9 = *(v0 + 864);
  v10 = *(v0 + 856);
  v11 = *(v0 + 848);
  v12 = *(v0 + 840);
  v13 = *(v0 + 832);
  v14 = *(v0 + 648);
  v15 = *(v0 + 640);
  memcpy(__dst, (v0 + 280), 0x68uLL);
  sub_1C717F724(__dst, (v0 + 514));
  __dst[0] = 0;
  *(v0 + 488) = v15;
  *(v0 + 496) = v14;
  *(v0 + 504) = v7;
  *(v0 + 512) = v40 & 1;
  *(v0 + 513) = v36 & 1;
  *(v0 + 520) = v13;
  *(v0 + 528) = v12;
  *(v0 + 536) = v11;
  *(v0 + 544) = v10;
  *(v0 + 552) = v9;
  *(v0 + 560) = v8;
  *(v0 + 568) = 0;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C754F2EC();
  v16 = *(v0 + 808);
  v17 = *(v0 + 800);
  v41 = *(v0 + 792);
  if (v43)
  {
    sub_1C70476BC(v0 + 488);
    OUTLINED_FUNCTION_0_22((v0 + 576), *(v0 + 600));
    sub_1C754F1AC();

    v38 = *(v17 + 8);
    v38(v16, v41);
    v18 = *(v0 + 816);
    v19 = *(v0 + 744);
    v42 = *(v0 + 736);
    v20 = *(v0 + 728);
    v21 = *(v0 + 720);
    v22 = *(v0 + 712);
    v23 = *(v0 + 704);
    v35 = *(v0 + 672);
    v37 = *(v0 + 792);
    v24 = *(v0 + 664);
    sub_1C7047668(v0 + 280);
    v25 = *(v22 + 8);
    v25(v21, v23);
    v25(v20, v23);
    __swift_destroy_boxed_opaque_existential_1((v0 + 576));
    OUTLINED_FUNCTION_0_22(v24, v24[3]);
    sub_1C754F1AC();
    v38(v18, v37);
    (*(v19 + 8))(v35, v42);
    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_0_22((v0 + 576), *(v0 + 600));
    sub_1C754F1AC();
    sub_1C7047668(v0 + 280);

    v39 = *(v17 + 8);
    v39(v16, v41);
    sub_1C754F2EC();
    v26 = *(v0 + 816);
    v29 = *(v0 + 792);
    v30 = *(v0 + 728);
    v31 = *(v0 + 704);
    v32 = *(v0 + 664);
    v33 = *(v0 + 632);
    v34 = *(*(v0 + 712) + 8);
    v34(*(v0 + 720), v31);
    v34(v30, v31);
    __swift_destroy_boxed_opaque_existential_1((v0 + 576));
    memcpy(v33, (v0 + 488), 0x51uLL);
    OUTLINED_FUNCTION_0_22(v32, v32[3]);
    sub_1C754F1AC();
    v39(v26, v29);
  }

  OUTLINED_FUNCTION_43();

  return v27();
}

uint64_t sub_1C7047490()
{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[96];
  v4 = v0[93];
  v5 = v0[92];
  v10 = v0[84];
  v11 = v0[99];
  v6 = v0[83];
  (*(v0[89] + 8))(v0[91], v0[88]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  v7 = *(v4 + 8);
  v7(v3, v5);
  OUTLINED_FUNCTION_0_22(v6, v6[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v11);
  v7(v10, v5);
  OUTLINED_FUNCTION_3_17(v0[102]);

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C7047600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7047738(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = sub_1C70477BC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C70477BC()
{
  result = qword_1EDD07998;
  if (!qword_1EDD07998)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDD07998);
  }

  return result;
}

unint64_t sub_1C7047818()
{
  result = qword_1EDD0FA60;
  if (!qword_1EDD0FA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0FA60);
  }

  return result;
}

void sub_1C704785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1C719D92C();
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v7;
    v35 = v8 + 56;
    v36 = v8;
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
        v37 = v9;
        v19 = sub_1C75506FC();
        v21 = v20;
        v23 = *(v39 + 16);
        v22 = *(v39 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1C6F7ED9C(v22 > 1, v23 + 1, 1, v15, v16, v17, v18);
        }

        *(v39 + 16) = v23 + 1;
        v24 = v39 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v35;
        v8 = v36;
        v25 = 1 << *(v36 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v35 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v36 + 36) != v37)
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
              sub_1C6F9ED50(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_1C6F9ED50(v11, v37, 0);
        }

LABEL_19:
        if (++v12 == v34)
        {
          return;
        }

        v10 = 0;
        v9 = *(v36 + 36);
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

void sub_1C7047A98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 8);
  if (v3 < v4)
  {
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 258;
    return;
  }

  v51 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 8);
  v52 = v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
  v6 = 0;
  v7 = (a1 + 32);
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 16);
  if (!v3)
  {
LABEL_10:
    v13 = *(v52 + 32);
    OUTLINED_FUNCTION_124_3();
    if (v17 ^ v18 | v16)
    {
      if (v15 > -9.22337204e18)
      {
        if (v15 < 9.22337204e18)
        {
          v19 = 0;
          v20 = v15;
          v47 = *(v14 + 16);
          v48 = v15;
          if (v47 > v15)
          {
            v20 = *(v14 + 16);
          }

          v53 = v20;
          v21 = a1 + 32;
          v22 = MEMORY[0x1E69E7CC0];
          v49 = a1 + 32;
LABEL_17:
          v23 = (v21 + (v19 << 7));
          while (v3 != v19)
          {
            if (v19 >= v3)
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            memcpy(__dst, v23, 0x80uLL);
            v24 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_38;
            }

            if (__dst[14])
            {
              sub_1C6FBC6B8();
              OUTLINED_FUNCTION_9_10();
              v44 = swift_allocError();
              OUTLINED_FUNCTION_134_1(v44, v45, v46);

              return;
            }

            v25 = __dst[13];
            sub_1C6FB7BB8(__dst, v54);
            if ([v25 count] >= v53)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C716D668(0, *(v22 + 16) + 1, 1, v26, v27, v28, v29);
              }

              v31 = *(v22 + 16);
              v30 = *(v22 + 24);
              if (v31 >= v30 >> 1)
              {
                OUTLINED_FUNCTION_15(v30);
                OUTLINED_FUNCTION_146();
                sub_1C716D668(v32, v33, v34, v35, v36, v37, v38);
              }

              *(v22 + 16) = v31 + 1;
              memcpy((v22 + (v31 << 7) + 32), __dst, 0x80uLL);
              v19 = v24;
              v21 = v49;
              goto LABEL_17;
            }

            sub_1C6FBC664(__dst);
            ++v19;
            v23 += 128;
          }

          v42 = *(v22 + 16);

          if (v42 >= v51)
          {
            *a2 = 0;
            *(a2 + 8) = 0;
            *(a2 + 24) = 0;
            *(a2 + 16) = 0;
          }

          else
          {
            *a2 = v8;
            if (v47 >= v48)
            {
              *(a2 + 8) = v53;
              *(a2 + 16) = 0;
              v43 = 259;
            }

            else
            {
              *(a2 + 8) = v6;
              *(a2 + 16) = v13;
              v43 = 262;
            }

            *(a2 + 24) = v43;
          }

          return;
        }

LABEL_41:
        __break(1u);
        return;
      }
    }

    else
    {
LABEL_39:
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  while (1)
  {
    memcpy(__dst, v7, 0x80uLL);
    if (__dst[14])
    {
      break;
    }

    v10 = __dst[13];
    sub_1C6FB7BB8(__dst, v54);
    sub_1C6FBC70C(v10);
    v11 = [v10 count];
    if (v11 < v8)
    {
      v8 = v11;
    }

    v12 = [v10 count];
    sub_1C6FBC718(v10);
    sub_1C6FBC664(__dst);
    if (v12 > v6)
    {
      v6 = v12;
    }

    v7 += 128;
    if (!--v9)
    {
      goto LABEL_10;
    }
  }

  sub_1C6FBC6B8();
  OUTLINED_FUNCTION_9_10();
  v39 = swift_allocError();
  OUTLINED_FUNCTION_134_1(v39, v40, v41);
}

uint64_t sub_1C7047DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_42();
  v11 = v9;
  v13 = v12;
  v10[238] = v11;
  v10[237] = a9;
  v10[236] = v14;
  v10[235] = v15;
  v10[234] = v16;
  v10[233] = v17;
  v10[232] = v18;
  v10[231] = v19;
  v10[230] = v20;
  v10[239] = *v11;
  v21 = sub_1C754DFFC();
  OUTLINED_FUNCTION_76(v21);
  v10[240] = OUTLINED_FUNCTION_77();
  v22 = sub_1C754F2FC();
  v10[241] = v22;
  OUTLINED_FUNCTION_18(v22);
  v10[242] = v23;
  v10[243] = swift_task_alloc();
  v10[244] = swift_task_alloc();
  v10[245] = swift_task_alloc();
  v10[246] = swift_task_alloc();
  v24 = sub_1C754F38C();
  v10[247] = v24;
  OUTLINED_FUNCTION_18(v24);
  v10[248] = v25;
  v10[249] = OUTLINED_FUNCTION_77();
  memcpy(v10 + 2, v13, 0x130uLL);
  v26 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v26, v27, v28);
}

uint64_t sub_1C7047F60()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[236];
  v2 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v2, v3);
  OUTLINED_FUNCTION_71_2("FreeformStoryGenerator.curatedChapters", 38);
  sub_1C754F2CC();
  v4 = v0[235];
  OUTLINED_FUNCTION_70(v0[236], *(v1 + 24));
  OUTLINED_FUNCTION_116_3();
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  OUTLINED_FUNCTION_139_1(v0 + 40);
  v5 = *(v4 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  v0[250] = v5;
  v6 = swift_task_alloc();
  v0[251] = v6;
  *v6 = v0;
  v6[1] = sub_1C70481D0;
  v7 = OUTLINED_FUNCTION_61_3(v0[230]);

  return sub_1C704C3D0(v7, v8, v9, v10, v5);
}

uint64_t sub_1C70481D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2016) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C70482BC()
{
  OUTLINED_FUNCTION_123();
  v11 = v0;
  v1 = [objc_opt_self() chapterCurationRandomizerSeed];
  v0[253] = v1;
  if (v1)
  {
    v2 = [v1 unsignedLongLongValue];
    v0[226] = &type metadata for Random.Arc4Random;
    v0[227] = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v2, (v0 + 223));
  }

  else
  {
    v3 = v0[240];
    sub_1C754DFEC();
    v0[226] = &type metadata for Random.Arc4Random;
    v0[227] = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v3, (v0 + 223));
  }

  if (v0[250])
  {
    v10 = 14;
    StoryGenerationDiagnosticContext.generationStage.setter(&v10);
  }

  v4 = v0[231];
  OUTLINED_FUNCTION_139_1(v0 + 78);
  v5 = v4[4];
  OUTLINED_FUNCTION_10_3(v4);
  v9 = (*(v5 + 48) + **(v5 + 48));
  v6 = swift_task_alloc();
  v0[254] = v6;
  *v6 = v0;
  v6[1] = sub_1C704847C;
  v7 = OUTLINED_FUNCTION_57_0();

  return v9(v7);
}

uint64_t sub_1C704847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_49_0();
  v13 = v12;
  OUTLINED_FUNCTION_47();
  v15 = v14;
  OUTLINED_FUNCTION_6_4();
  *v16 = v15;
  v17 = *v11;
  OUTLINED_FUNCTION_14();
  *v18 = v17;
  v15[255] = v13;
  v15[256] = v10;

  if (v10)
  {

    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {
    v22 = v15[246];
    v23 = v15[244];
    v24 = v15[242];
    v25 = v15[241];
    v26 = *(v24 + 32);
    v15[257] = v26;
    v15[258] = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v26(v23, v22, v25);
    v27 = swift_task_alloc();
    v15[259] = v27;
    *v27 = v17;
    v27[1] = sub_1C7048648;
    v28 = OUTLINED_FUNCTION_61_3(v15[230]);

    return sub_1C704C678(v28, v29, v30, v31, v32, v13, v33, v34, a9, a10);
  }
}

uint64_t sub_1C7048648()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2080) = v5;
  *(v3 + 2088) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C7048774()
{
  v39 = v0;
  v1 = 0;
  v2 = *(v0 + 2080);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v2 + 32 + (v1 << 7));
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    memcpy((v0 + 1232), v5, 0x80uLL);
    v6 = *(v0 + 1336);
    if (*(v0 + 1344))
    {
      v7 = OUTLINED_FUNCTION_67_5();
      sub_1C6FBC70C(v7);
      goto LABEL_10;
    }

    sub_1C6FB7BB8(v0 + 1232, v0 + 1360);
    sub_1C6FBC70C(v6);
    if ([v6 count] <= 0)
    {
      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      v8 = swift_allocError();
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 3;
      *(v9 + 24) = 12;
      sub_1C6FBC664(v0 + 1232);
      sub_1C6FBC718(v6);
      v6 = v8;
LABEL_10:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1E00();
        v4 = v12;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_15(v10);
        OUTLINED_FUNCTION_146();
        sub_1C6FB1E00();
        v4 = v13;
      }

      ++v1;
      *(v4 + 16) = v11 + 1;
      *(v4 + 8 * v11 + 32) = v6;
      goto LABEL_2;
    }

    sub_1C6FBC664(v0 + 1232);
    sub_1C6FBC718(v6);
    v5 += 16;
    ++v1;
  }

  if (*(v4 + 16) >= 2uLL)
  {
    v22 = *(v0 + 2024);
    OUTLINED_FUNCTION_72_3();
    v23 = *(v0 + 1928);
    v35 = v24;
    v37 = *(v0 + 1896);

    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    v25[1] = 0;
    v25[2] = 0;
    *v25 = v4;
    OUTLINED_FUNCTION_73_3(v25, 10);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1((v0 + 1784));
    v19 = *(v3 + 8);
    v19(v2, v23);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1744));
    v26 = OUTLINED_FUNCTION_85_2();
    OUTLINED_FUNCTION_70(v26, v27);
    OUTLINED_FUNCTION_85_2();
    sub_1C754F1AC();
    v5[1](v35);
    v20 = v37;
    v21 = v23;
LABEL_19:
    v19(v20, v21);
    v28 = OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_17_13(v28);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_129();

    __asm { BRAA            X1, X16 }
  }

  v14 = *(v0 + 2088);

  sub_1C754F2DC();
  if (v14)
  {
    v15 = *(v0 + 2024);
    OUTLINED_FUNCTION_72_3();
    v16 = *(v0 + 1928);
    v34 = v17;
    v36 = *(v0 + 1896);
    v18 = *(v0 + 1888);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1784));

    v19 = *(v3 + 8);
    v19(v2, v16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1744));
    OUTLINED_FUNCTION_70(v18, v18[3]);
    sub_1C754F1AC();
    v5[1](v34);
    v20 = v36;
    v21 = v16;
    goto LABEL_19;
  }

  if (*(v0 + 2000))
  {
    v38[0] = 15;
    StoryGenerationDiagnosticContext.generationStage.setter(v38);
  }

  v31 = *(v0 + 2056);
  OUTLINED_FUNCTION_139_1((v0 + 928));
  OUTLINED_FUNCTION_99_3();
  v31();
  v32 = swift_task_alloc();
  *(v0 + 2096) = v32;
  *v32 = v0;
  v32[1] = sub_1C7048BB8;
  OUTLINED_FUNCTION_61_3(*(v0 + 2080));
  OUTLINED_FUNCTION_129();

  sub_1C704E668();
}

uint64_t sub_1C7048BB8()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 2104) = v7;
  *(v5 + 2112) = v0;

  if (!v0)
  {
    *(v5 + 2144) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7048CDC()
{
  OUTLINED_FUNCTION_115_0();
  v84 = v1;
  if (*(v1 + 2144))
  {
    v10 = *(v1 + 2024);
    OUTLINED_FUNCTION_14_13();
    __swift_destroy_boxed_opaque_existential_1((v1 + 1784));

    __swift_destroy_boxed_opaque_existential_1((v1 + 1744));
    v11 = OUTLINED_FUNCTION_0_22(v0, v0[3]);
    OUTLINED_FUNCTION_103_4(v11);
    v12 = OUTLINED_FUNCTION_22_12();
    v13(v12);
    v14 = OUTLINED_FUNCTION_55_3();
    v15(v14);
    v16 = *(v1 + 2104);
    v17 = *(v1 + 2144);
    OUTLINED_FUNCTION_10_15();

    OUTLINED_FUNCTION_82_0();

    return v18(v16, v17 & 1);
  }

  else
  {
    v20 = 0;
    v21 = (v1 + 16);
    v22 = *(v1 + 2104);
    *(v1 + 1824) = MEMORY[0x1E69E7CD0];
    v23 = *(v22 + 16);
    v24 = v22 + 32;
    v73 = (v1 + 16);
    v74 = v1;
    v76 = v23;
    v77 = v22;
    v75 = v22 + 32;
    while (v20 != v23)
    {
      if (v20 >= *(v22 + 16))
      {
        goto LABEL_38;
      }

      v2 = memcpy((v1 + 1488), (v24 + (v20 << 7)), 0x80uLL);
      if ((*(v1 + 1600) & 1) == 0)
      {
        v25 = *(v1 + 1592);
        sub_1C6FB7BB8(v1 + 1488, v1 + 1616);
        sub_1C6FBC70C(v25);
        v26 = [v25 fetchedObjects];
        if (v26)
        {
          v27 = v26;
          v78 = v25;
          v80 = v20;
          sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
          OUTLINED_FUNCTION_63();
          v28 = sub_1C7550B5C();

          v29 = sub_1C6FB6304();
          if (v29)
          {
            v34 = v29;
            v83[0] = MEMORY[0x1E69E7CC0];
            sub_1C6F7ED9C(0, v29 & ~(v29 >> 63), 0, v30, v31, v32, v33);
            if ((v34 & 0x8000000000000000) == 0)
            {
              v35 = 0;
              v36 = v83[0];
              while (1)
              {
                v37 = (v28 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](v35, v28) : *(v28 + 8 * v35 + 32);
                v38 = v37;
                v39 = [v38 uuid];
                if (v39)
                {
                  v40 = v39;
                  v41 = sub_1C755068C();
                  v43 = v42;
                }

                else
                {
                  v41 = 0;
                  v43 = 0;
                }

                if (!v43)
                {
                  break;
                }

                v83[0] = v36;
                v45 = *(v36 + 16);
                v44 = *(v36 + 24);
                if (v45 >= v44 >> 1)
                {
                  OUTLINED_FUNCTION_15(v44);
                  OUTLINED_FUNCTION_146();
                  sub_1C6F7ED9C(v47, v48, v49, v50, v51, v52, v53);
                  v36 = v83[0];
                }

                ++v35;
                *(v36 + 16) = v45 + 1;
                v46 = v36 + 16 * v45;
                *(v46 + 32) = v41;
                *(v46 + 40) = v43;
                if (v34 == v35)
                {

                  v21 = v73;
                  v1 = v74;
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_38:
              __break(1u);
            }

            __break(1u);
            return MEMORY[0x1EEE2A6A0](v2, v3, v4, v5, v6, v7, v8, v9);
          }

          v36 = MEMORY[0x1E69E7CC0];
LABEL_26:
          v23 = v76;
          v22 = v77;
          v25 = v78;
          v20 = v80;
          v24 = v75;
        }

        else
        {
          v36 = MEMORY[0x1E69E7CC0];
        }

        sub_1C73978C4(v36);
        sub_1C6FBC664(v1 + 1488);
        sub_1C6FBC718(v25);
      }

      ++v20;
    }

    v54 = *(v1 + 2112);
    v55 = *(v1 + 1904);
    v56 = *(*(v1 + 1824) + 16);

    memcpy(__dst, (v55 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration), 0x4CuLL);
    memcpy(v83, v21, 0x130uLL);
    static FreeformStoryGenerator.validate(numberOfCuratedAssets:configuration:storyElements:)(v56, __dst, v83);
    if (!v54)
    {
      sub_1C754F2DC();
      v65 = *(v1 + 1912);
      v66 = *(v1 + 1904);
      v67 = *(v1 + 1896);
      v68 = v22;
      v69 = *(v1 + 1776);
      __swift_project_boxed_opaque_existential_1((v1 + 1744), *(v1 + 1768));
      v70 = swift_task_alloc();
      *(v1 + 2120) = v70;
      v70[2] = v67;
      v70[3] = v68;
      v70[4] = v21;
      v70[5] = v66;
      v70[6] = v65;
      v71 = swift_task_alloc();
      *(v1 + 2128) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216560, &qword_1C756EAE0);
      *v71 = v1;
      v71[1] = sub_1C7049280;
      v86 = v69;
      OUTLINED_FUNCTION_44();

      return MEMORY[0x1EEE2A6A0](v2, v3, v4, v5, v6, v7, v8, v9);
    }

    v57 = *(v1 + 2104);
    v58 = *(v1 + 2024);
    v59 = *(v1 + 1936);
    v79 = *(v1 + 1896);
    v81 = *(v1 + 1928);
    v60 = *(v1 + 1888);
    __swift_destroy_boxed_opaque_existential_1((v1 + 1784));

    sub_1C6F9ED74(v57, 0);
    __swift_destroy_boxed_opaque_existential_1((v1 + 1744));
    OUTLINED_FUNCTION_0_22(v60, v60[3]);
    sub_1C754F1AC();
    v61 = OUTLINED_FUNCTION_457();
    v62(v61);
    (*(v59 + 8))(v79, v81);
    v63 = OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_36_6(v63);

    OUTLINED_FUNCTION_6_0();

    return v64();
  }
}

uint64_t sub_1C7049280()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2136) = v0;

  sub_1C6F9ED74(*(v2 + 2104), 0);

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C70493C0()
{
  OUTLINED_FUNCTION_115_0();
  v1 = v0[250];
  v2 = v0[229];
  if (v1)
  {
    v3 = v0[232];
    OUTLINED_FUNCTION_56_0();
    sub_1C755180C();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD00000000000001FLL);
    sub_1C73E69B8(*v3);
    MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
    sub_1C75504FC();
    v4 = OUTLINED_FUNCTION_57_3();
    sub_1C716A8F0(v4, v5, v1, v2);
  }

  v6 = v0[267];
  sub_1C754F2EC();
  v7 = v0[253];
  v8 = v0[236];
  __swift_destroy_boxed_opaque_existential_1(v0 + 223);

  if (v6)
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 218);
    OUTLINED_FUNCTION_10_3(v8);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v9 = OUTLINED_FUNCTION_15_1();
    v10(v9);
    v11 = OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_36_6(v11);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_87_5();

    __asm { BRAA            X1, X16 }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 218);
  v14 = OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_70(v14, v15);
  OUTLINED_FUNCTION_154();
  sub_1C754F1AC();
  v16 = OUTLINED_FUNCTION_15_1();
  v17(v16);
  v18 = OUTLINED_FUNCTION_98_3();
  OUTLINED_FUNCTION_17_13(v18);

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_87_5();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1C70495EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 1936);
  v16 = *(v14 + 1928);
  v32 = *(v14 + 1896);
  v33 = *(v14 + 1976);
  v17 = *(v14 + 1888);

  __swift_destroy_boxed_opaque_existential_1((v14 + 1784));
  v18 = *(v15 + 8);
  v19 = OUTLINED_FUNCTION_15_1();
  v18(v19);
  v20 = OUTLINED_FUNCTION_82();
  v18(v20);
  __swift_destroy_boxed_opaque_existential_1((v14 + 1744));
  OUTLINED_FUNCTION_0_22(v17, v17[3]);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_120_3();
  v22(v21);
  (v18)(v32, v16);
  OUTLINED_FUNCTION_10_15();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C704971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 1936);
  v16 = *(v14 + 1928);
  v32 = *(v14 + 1896);
  v33 = *(v14 + 1976);

  __swift_destroy_boxed_opaque_existential_1((v14 + 1784));
  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_57_3();
  v17(v18);
  __swift_destroy_boxed_opaque_existential_1((v14 + 1744));
  v19 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_0_22(v19, v20);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_120_3();
  v22(v21);
  (v17)(v32, v16);
  OUTLINED_FUNCTION_10_15();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C7049834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_14_13();

  __swift_destroy_boxed_opaque_existential_1((v13 + 1784));
  __swift_destroy_boxed_opaque_existential_1((v13 + 1744));
  v15 = OUTLINED_FUNCTION_0_22(v12, v12[3]);
  OUTLINED_FUNCTION_103_4(v15);
  v16 = OUTLINED_FUNCTION_22_12();
  v17(v16);
  v18 = OUTLINED_FUNCTION_55_3();
  v19(v18);
  OUTLINED_FUNCTION_10_15();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1C704990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_14_13();

  __swift_destroy_boxed_opaque_existential_1((v13 + 1784));
  __swift_destroy_boxed_opaque_existential_1((v13 + 1744));
  v15 = OUTLINED_FUNCTION_0_22(v12, v12[3]);
  OUTLINED_FUNCTION_103_4(v15);
  v16 = OUTLINED_FUNCTION_22_12();
  v17(v16);
  v18 = OUTLINED_FUNCTION_55_3();
  v19(v18);
  OUTLINED_FUNCTION_10_15();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1C70499E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (![objc_opt_self() enableChapterValidator])
  {
    v13 = *(a1 + 16);
    result = sub_1C75504FC();
    if (!v13)
    {
      if (a3)
      {
LABEL_6:
        sub_1C755180C();

        sub_1C733C094();
        v14 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v14);

        v13 = a3;
        sub_1C7161CDC(0xD000000000000017, 0x80000001C759A990);
      }

LABEL_7:
      v15 = sub_1C733C094();
      v16 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 24);
      if (v15 >= v16)
      {

        return a1;
      }

      sub_1C733C094();
      OUTLINED_FUNCTION_24_2();

      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      a1 = swift_allocError();
      *v17 = v13;
      *(v17 + 8) = v16;
      *(v17 + 16) = 0;
      v18 = 4;
LABEL_12:
      *(v17 + 24) = v18;
      return a1;
    }

LABEL_15:
    v35 = a3;
    v21 = 0;
    v36 = a1 + 32;
    v37 = v13;
    v38 = a1;
    do
    {
      if (v21 >= *(a1 + 16))
      {
        __break(1u);
        return result;
      }

      v40 = v21;
      v22 = v36 + 104 * v21;
      v23 = *(v22 + 40);
      v24 = *(v22 + 64);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v41 = v23;
      sub_1C75504FC();
      sub_1C75504FC();
      v25 = v24;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      if ([v25 fetchedObjectIDs])
      {
        v26 = OUTLINED_FUNCTION_300();
        sub_1C6F65BE8(v26, &qword_1EDD0FAB0, 0x1E695D630);
        v27 = sub_1C7550B5C();
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      sub_1C7397BB0(v27);
      v28 = *(v41 + 16);
      if (v28)
      {
        v39 = v25;
        v29 = sub_1C75504FC() + 64;
        do
        {
          v30 = *(v29 - 16);
          sub_1C75504FC();
          v31 = v30;
          sub_1C75504FC();
          sub_1C75504FC();
          v32 = [v31 fetchedObjectIDs];
          if (v32)
          {
            v33 = v32;
            sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
            OUTLINED_FUNCTION_63();
            v34 = sub_1C7550B5C();
          }

          else
          {
            v34 = MEMORY[0x1E69E7CC0];
          }

          sub_1C7397BB0(v34);

          v29 += 40;
          --v28;
        }

        while (v28);

        swift_bridgeObjectRelease_n();
        v13 = v37;
        a1 = v38;
      }

      else
      {

        v13 = v37;
        a1 = v38;
      }

      v21 = v40 + 1;
    }

    while (v40 + 1 != v13);
    a3 = v35;
    if (v35)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v7 = OUTLINED_FUNCTION_41_3();
  result = sub_1C7054CAC(v7, v8, a3);
  v10 = result;
  if ((v11 & 1) == 0)
  {
    v13 = *(result + 16);
    if (v13 < 2)
    {
      v19 = OUTLINED_FUNCTION_12_5();
      sub_1C6F9ED74(v19, v20);
      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      a1 = swift_allocError();
      *v17 = v13;
      *(v17 + 8) = xmmword_1C755FEA0;
      v18 = 2;
      goto LABEL_12;
    }

    a1 = result;
    goto LABEL_15;
  }

  sub_1C70554BC();
  OUTLINED_FUNCTION_9_10();
  a1 = swift_allocError();
  *v12 = v10;
  return a1;
}

uint64_t sub_1C7049E94()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  v1[220] = v2;
  v1[219] = v5;
  v1[218] = v6;
  v1[217] = v7;
  v1[216] = v8;
  v1[221] = *v2;
  v9 = sub_1C754F38C();
  v1[222] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[223] = v10;
  v1[224] = OUTLINED_FUNCTION_77();
  memcpy(v1 + 2, v4, 0x130uLL);
  v11 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1C7049F84()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v1, v2);
  OUTLINED_FUNCTION_71_2("FreeformStoryGenerator.createChapters", 37);
  sub_1C754F2CC();
  v3 = *(v0 + 1760);
  v4 = *(v0 + 1728);
  v5 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
  sub_1C7055874(v3 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyAssetsFetcher, v0 + 1640);
  v6 = type metadata accessor for FreeformStoryChapterGenerator(0);
  OUTLINED_FUNCTION_137(v6);
  *(v0 + 1800) = sub_1C73995B8(v5, (v0 + 1640));
  OUTLINED_FUNCTION_10_3(v4);
  *(v0 + 1704) = swift_getAssociatedTypeWitness();
  *(v0 + 1712) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0((v0 + 1680));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1808) = v7;
  *v7 = v8;
  v7[1] = sub_1C704A22C;
  OUTLINED_FUNCTION_93_0();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1C704A22C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 1816) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C704A328()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1768);
  v3 = *(v0 + 1736);
  v4 = *(v3 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 1824) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DC0, &qword_1C755BF48);
  v5 = swift_task_alloc();
  *(v0 + 1832) = v5;
  v6 = *(v0 + 1744);
  *(v5 + 16) = v0 + 1680;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  *(v5 + 48) = v0 + 16;
  *(v5 + 56) = v4;
  *(v5 + 64) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216590, &unk_1C7564C30);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1840) = v7;
  *v7 = v8;
  v7[1] = sub_1C704A474;
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1C704A474()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1848) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C704A574()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1720);
  *(v0 + 1856) = v3;
  *(v0 + 1864) = *(v3 + 16);
  sub_1C754F2DC();
  if (v2)
  {
    OUTLINED_FUNCTION_111_2();
    v4 = *(v0 + 1744);

    __swift_destroy_boxed_opaque_existential_1((v0 + 1680));
    OUTLINED_FUNCTION_10_3(v4);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v5 = OUTLINED_FUNCTION_15_1();
    v6(v5);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v7 + 8))(v1);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_93_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_10_3(*(v0 + 1728));
  v10 = swift_task_alloc();
  *(v0 + 1872) = v10;
  *v10 = v0;
  v10[1] = sub_1C704A76C;
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_93_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C704A76C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[235] = v5;
  v3[236] = v6;
  v3[237] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C704A87C()
{
  v90 = v0;
  v1 = *(v0 + 1856);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    __src = (v0 + 728);
    v74 = (v0 + 1040);
    v78 = (v0 + 1144);
    v4 = (v1 + 32);
    v5 = (v0 + 360);
    v75 = *(v0 + 1864) - 1;
    v79 = *(v0 + 1824);
    v6 = *(v0 + 1896);
    v7 = MEMORY[0x1E69E7CC0];
    v77 = v2 - 1;
    v8 = 0.2;
    while (v3 < v2)
    {
      v81 = v3;
      memcpy((v0 + 320), v4, 0x98uLL);
      v82 = *(v0 + 336);
      v9 = *(v0 + 344);
      sub_1C70555F8(v0 + 320, v0 + 472, &qword_1EC214DC0, &qword_1C755BF48);
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v10 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v10, qword_1EDD28B68);
      sub_1C6FC061C(v5, v0 + 624);
      v11 = sub_1C754FEEC();
      v12 = sub_1C75511BC();
      sub_1C70552E0(v5);
      v80 = v4;
      v83 = v6;
      if (os_log_type_enabled(v11, v12))
      {
        v14 = *(v0 + 376);
        v13 = *(v0 + 384);
        v15 = OUTLINED_FUNCTION_41_0();
        v76 = v7;
        v16 = OUTLINED_FUNCTION_20_1();
        __dst[0] = v16;
        *v15 = 136642819;
        sub_1C75504FC();
        v17 = sub_1C6F765A4(v14, v13, __dst);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_1C6F5C000, v11, v12, "Successfully created chapter %{sensitive}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v7 = v76;
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      if (v82 == *(v0 + 1880) && v9 == *(v0 + 1888))
      {

        v20 = 0;
      }

      else
      {
        v19 = sub_1C7551DBC();

        v20 = 0;
        if ((v19 & 1) == 0)
        {
          v21 = *(v0 + 464);
          if (v21)
          {
            if (v21 == v75)
            {
              v20 = 2;
            }

            else
            {
              v20 = 3;
            }
          }

          else
          {
            v20 = 1;
          }
        }
      }

      v87 = *v5;
      v88 = *(v0 + 376);
      memcpy(__dst, (v0 + 393), 0x47uLL);
      v22 = *(v0 + 376);
      *__src = *v5;
      *(v0 + 744) = v22;
      *(v0 + 760) = v20;
      memcpy((v0 + 761), (v0 + 393), 0x47uLL);
      v23 = *(v0 + 744);
      v24 = *(v0 + 752);
      v25 = *(v0 + 728);
      v26 = *(v0 + 736);
      sub_1C6FC061C(v5, v0 + 832);
      sub_1C6FC061C(__src, v0 + 936);
      sub_1C75504FC();
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB1EB4(v29);
        v7 = v30;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      if (v28 >= v27 >> 1)
      {
        v31 = OUTLINED_FUNCTION_15(v27);
        sub_1C6FB1EB4(v31);
        v7 = v32;
      }

      *(v7 + 16) = v28 + 1;
      memcpy((v7 + 104 * v28 + 32), __src, 0x68uLL);
      *(v0 + 1560) = v23;
      *(v0 + 1568) = v24;
      *(v0 + 1576) = v25;
      *(v0 + 1584) = v26;
      *(v0 + 1592) = 0u;
      *(v0 + 1608) = 0u;
      *(v0 + 1624) = 0u;
      if (v79)
      {

        sub_1C7031BAC((v0 + 1560));
        sub_1C703307C(v0 + 1560);
      }

      else
      {
        sub_1C703307C(v0 + 1560);
      }

      sub_1C754F2DC();
      if (v83)
      {
        v33 = *(v0 + 1792);
        v34 = *(v0 + 1784);
        v84 = *(v0 + 1776);
        __srca = *(v0 + 1752);
        v35 = *(v0 + 1744);

        sub_1C70552E0(v5);
        *v74 = v87;
        *(v0 + 1056) = v88;
        *(v0 + 1072) = v20;
        memcpy((v0 + 1073), __dst, 0x47uLL);
        sub_1C70552E0(v74);

        __swift_destroy_boxed_opaque_existential_1((v0 + 1680));
        OUTLINED_FUNCTION_10_3(v35);
        sub_1C754F1AC();
        (*(v34 + 8))(v33, v84);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v36 + 8))(__srca);
        goto LABEL_47;
      }

      *v78 = v87;
      *(v0 + 1160) = v88;
      *(v0 + 1176) = v20;
      memcpy((v0 + 1177), __dst, 0x47uLL);
      sub_1C70552E0(v78);
      sub_1C70552E0(v5);
      if (v77 == v81)
      {

        v6 = 0;
        goto LABEL_32;
      }

      v6 = 0;
      v8 = v8 + 0.8 / *(v0 + 1864);
      v2 = *(*(v0 + 1856) + 16);
      v4 = v80 + 152;
      v3 = v81 + 1;
    }

    __break(1u);
    goto LABEL_54;
  }

  v6 = *(v0 + 1896);
  v7 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v37 = *(v7 + 16);
  v38 = 32;
  if (!v37)
  {
LABEL_35:
    if (qword_1EDD09CF0 == -1)
    {
LABEL_36:
      v39 = sub_1C754FF1C();
      __swift_project_value_buffer(v39, qword_1EDD28B68);
      OUTLINED_FUNCTION_24_2();
      sub_1C75504FC();
      sub_1C75504FC();
      v40 = sub_1C754FEEC();
      sub_1C75511AC();

      v41 = OUTLINED_FUNCTION_140_0();
      v42 = *(v0 + 1888);
      if (v41)
      {
        v43 = *(v0 + 1880);
        v44 = OUTLINED_FUNCTION_23_1();
        __dst[0] = swift_slowAlloc();
        *v44 = 136315394;
        v45 = sub_1C6F765A4(v43, v42, __dst);

        *(v44 + 4) = v45;
        *(v44 + 12) = 2080;
        v52 = sub_1C7050F8C(v7, v46, v47, v48, v49, v50, v51);
        v54 = sub_1C6F765A4(v52, v53, __dst);

        *(v44 + 14) = v54;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v55, v56, v57, v58, v44, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_10_1();
LABEL_42:

        goto LABEL_45;
      }

      goto LABEL_45;
    }

LABEL_54:
    OUTLINED_FUNCTION_0_23();
    swift_once();
    goto LABEL_36;
  }

  while (1)
  {
    memcpy((v0 + 1248), (v7 + v38), 0x68uLL);
    if (!*(v0 + 1280))
    {
      break;
    }

    v38 += 104;
    if (!--v37)
    {
      goto LABEL_35;
    }
  }

  v59 = *(v0 + 1272);
  v60 = *(v0 + 1264);
  sub_1C6FC061C(v0 + 1248, v0 + 1352);

  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v61 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v61, qword_1EDD28B68);
  sub_1C6FC061C(v0 + 1248, v0 + 1456);
  v40 = sub_1C754FEEC();
  v62 = sub_1C75511BC();
  sub_1C70552E0(v0 + 1248);
  if (os_log_type_enabled(v40, v62))
  {
    v63 = OUTLINED_FUNCTION_41_0();
    v64 = OUTLINED_FUNCTION_20_1();
    __dst[0] = v64;
    *v63 = 136315138;
    sub_1C75504FC();
    v65 = sub_1C6F765A4(v60, v59, __dst);

    *(v63 + 4) = v65;
    _os_log_impl(&dword_1C6F5C000, v40, v62, "Key chapter is '%s'", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
    sub_1C70552E0(v0 + 1248);
    goto LABEL_42;
  }

  sub_1C70552E0(v0 + 1248);
LABEL_45:
  sub_1C754F2EC();
  v66 = *(v0 + 1744);

  if (v6)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 1680));
    OUTLINED_FUNCTION_10_3(v66);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v67 = OUTLINED_FUNCTION_15_1();
    v68(v67);
LABEL_47:

    OUTLINED_FUNCTION_6_0();

    return v69();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 1680));
    OUTLINED_FUNCTION_10_3(v66);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v71 = OUTLINED_FUNCTION_15_1();
    v72(v71);

    OUTLINED_FUNCTION_116();

    return v73(v7);
  }
}

void sub_1C704B1B0()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_92_4();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 1680);
  v2 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_0_22(v2, v3);
  sub_1C754F1AC();
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v1);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C704B280()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 1752);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1680));
  v2 = OUTLINED_FUNCTION_55();
  v4 = OUTLINED_FUNCTION_0_22(v2, v3);
  OUTLINED_FUNCTION_103_4(v4);
  v5 = OUTLINED_FUNCTION_22_12();
  v6(v5);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v7 + 8))(v1);

  OUTLINED_FUNCTION_43();

  return v8();
}

void sub_1C704B370()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_92_4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1680));
  v2 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_0_22(v2, v3);
  sub_1C754F1AC();
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v1);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C704B440()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[127] = v0;
  v1[126] = v4;
  v1[125] = v5;
  v1[124] = v6;
  v1[123] = v7;
  v1[122] = v2;
  v1[121] = v8;
  v9 = sub_1C754F2FC();
  v1[128] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[129] = v10;
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v11 = sub_1C754F38C();
  v1[134] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[135] = v12;
  v1[136] = OUTLINED_FUNCTION_77();
  memcpy(v1 + 2, v3, 0x130uLL);
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C704B588()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v1 = v0[125];
  v2 = OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_141_1(v2, v3);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v4 = v0[133];
  v12 = v0[131];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[122];
  OUTLINED_FUNCTION_70(v0[125], *(v1 + 24));
  OUTLINED_FUNCTION_116_3();
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  memcpy(v0 + 40, v7, 0x130uLL);
  v8 = *(v5 + 32);
  v0[137] = v8;
  v0[138] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v12, v4, v6);
  v9 = swift_task_alloc();
  v0[139] = v9;
  *v9 = v0;
  v9[1] = sub_1C704B7EC;
  OUTLINED_FUNCTION_61_3(v0[121]);
  OUTLINED_FUNCTION_17_1();

  return sub_1C7049E94();
}

uint64_t sub_1C704B7EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1120) = v4;
  *(v2 + 1128) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C704B8F4()
{
  v1 = v0[141];
  sub_1C754F2DC();
  if (v1)
  {
    v2 = v0[132];
    v3 = v0[129];
    v4 = v0[128];
    v20 = v0[126];
    v5 = v0[125];
    __swift_destroy_boxed_opaque_existential_1(v0 + 116);

    v6 = *(v3 + 8);
    v6(v2, v4);
    OUTLINED_FUNCTION_0_22(v5, v5[3]);
    sub_1C754F1AC();
    v7 = OUTLINED_FUNCTION_120_3();
    v8(v7);
    v6(v20, v4);
    OUTLINED_FUNCTION_54_7();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_129();

    __asm { BRAA            X1, X16 }
  }

  v11 = v0[137];
  OUTLINED_FUNCTION_139_1(v0 + 78);
  OUTLINED_FUNCTION_99_3();
  v11();
  v12 = swift_task_alloc();
  v0[142] = v12;
  *v12 = v0;
  v12[1] = sub_1C704BAD8;
  OUTLINED_FUNCTION_61_3(v0[140]);
  OUTLINED_FUNCTION_129();

  return sub_1C704BF9C(v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1C704BAD8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1144) = v5;
  *(v3 + 1152) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C704BBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[124];
  v16 = *(v15 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  if (v16)
  {
    v17 = v14[143];
    sub_1C75504FC();
    sub_1C716260C(0xD000000000000014, 0x80000001C759A950, v16, v17);
  }

  v18 = v14[144];
  sub_1C754F2EC();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v14 + 116);

    v19 = OUTLINED_FUNCTION_55();
    v21 = OUTLINED_FUNCTION_0_22(v19, v20);
    OUTLINED_FUNCTION_103_4(v21);
    v22 = OUTLINED_FUNCTION_457();
    v23(v22);
    OUTLINED_FUNCTION_54_7();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_17_1();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v44 = v14[130];
    v33 = v14[125];
    __swift_destroy_boxed_opaque_existential_1(v14 + 116);
    OUTLINED_FUNCTION_0_22(v33, v33[3]);
    sub_1C754F1AC();
    v34 = OUTLINED_FUNCTION_57_0();
    v35(v34);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_17_1();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, v44, a11, a12, a13, a14);
  }
}

uint64_t sub_1C704BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[129];
  v16 = v14[128];
  v32 = v14[126];
  v33 = v14[134];
  __swift_destroy_boxed_opaque_existential_1(v14 + 116);
  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_57_3();
  v17(v18);
  v19 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_0_22(v19, v20);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_120_3();
  v22(v21);
  (v17)(v32, v16);
  OUTLINED_FUNCTION_105_4();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C704BEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 1000);
  __swift_destroy_boxed_opaque_existential_1((v12 + 928));
  v14 = OUTLINED_FUNCTION_0_22(v13, v13[3]);
  OUTLINED_FUNCTION_103_4(v14);
  v15 = OUTLINED_FUNCTION_22_12();
  v16(v15);
  v17 = OUTLINED_FUNCTION_55_3();
  v18(v17);
  OUTLINED_FUNCTION_105_4();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1C704BF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C704BFCC()
{
  OUTLINED_FUNCTION_115_0();
  if (**(v0 + 32) > 0x1Fu)
  {
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    v2 = *(v1 + 8);
    sub_1C75504FC();
    v3 = OUTLINED_FUNCTION_43_2();
    v2(v3);
    goto LABEL_4;
  }

  sub_1C754F2CC();
  v6 = *(v0 + 40);
  v7 = *(*(v0 + 56) + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 73);
  v8 = *(type metadata accessor for StoryGenerationSession(0) + 24);
  v9 = *(v6 + v8);
  if (v7 < 0xFE)
  {
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    v10 = swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 6;
    *(v22 + 24) = 12;
  }

  else
  {
    v10 = sub_1C70499E4(*(v0 + 16), *(v0 + 24), *(v6 + v8));
    if ((v11 & 1) == 0)
    {
      v12 = qword_1EDD09CF0;
      sub_1C75504FC();
      if (v12 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v13 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v13, qword_1EDD28B68);
      v14 = sub_1C754FEEC();
      v15 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v15))
      {
        v16 = OUTLINED_FUNCTION_127();
        *v16 = 0;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v17, v18, v19, v20, v16, 2u);
        OUTLINED_FUNCTION_37();
      }

      v21 = 0;
LABEL_22:
      sub_1C754F2EC();
      sub_1C6FDE438(v10, v21);
LABEL_4:
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_108_3();

      __asm { BRAA            X2, X16 }
    }
  }

  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v23 = sub_1C754FF1C();
  __swift_project_value_buffer(v23, qword_1EDD28B68);
  v24 = OUTLINED_FUNCTION_24_2();
  v25 = sub_1C754FEEC();
  v26 = sub_1C75511BC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_41_0();
    v28 = OUTLINED_FUNCTION_102();
    *v27 = 138412290;
    v29 = v10;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_1C6FB5FC8(v28, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  if (v9)
  {
    v36 = *(v0 + 32);
    OUTLINED_FUNCTION_90_3();
    sub_1C755180C();
    OUTLINED_FUNCTION_78_4();
    MEMORY[0x1CCA5CD70]();
    sub_1C73E69B8(*v36);
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_78_4();
    MEMORY[0x1CCA5CD70](0xD00000000000001ALL);
    OUTLINED_FUNCTION_78_4();
    MEMORY[0x1CCA5CD70]();
    sub_1C7161CDC(v37, v38);
  }

  **(v0 + 32) = 32;
  sub_1C75504FC();
  v21 = 1;
  goto LABEL_22;
}

uint64_t sub_1C704C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a4;
  v6[5] = a5;
  v6[2] = a1;
  v6[3] = a3;
  v7 = *(a2 + 168);
  v6[6] = v5;
  v6[7] = v7;
  v8 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C704C404()
{
  OUTLINED_FUNCTION_75_1();
  if ([objc_opt_self() dontSplitMomentsAcrossChaptersForImplicitMontage] && (v1 = **(v0 + 24), v1 <= 0x1F) && (v1 & 1) == 0)
  {
    v5 = *(v0 + 40);
    sub_1C7464138();
    v2 = v6;
    v7 = sub_1C70548E8(v6, v5);
    if (v8)
    {
      v9 = v7;

      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v10 = sub_1C754FF1C();
      __swift_project_value_buffer(v10, qword_1EDD28B68);
      v11 = OUTLINED_FUNCTION_24_2();
      v12 = sub_1C754FEEC();
      sub_1C75511BC();
      sub_1C6F9EDA4(v9, 1);
      if (OUTLINED_FUNCTION_140_0())
      {
        v13 = OUTLINED_FUNCTION_41_0();
        v14 = OUTLINED_FUNCTION_102();
        *v13 = 138412290;
        v15 = v9;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v17, v18, v19, v20, v13, 0xCu);
        sub_1C6FB5FC8(v14, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_37();
      }

      v21 = *(v0 + 40);

      if (v21)
      {
        v22 = *(v0 + 24);
        OUTLINED_FUNCTION_90_3();
        sub_1C755180C();
        OUTLINED_FUNCTION_78_4();
        MEMORY[0x1CCA5CD70]();
        sub_1C73E69B8(*v22);
        OUTLINED_FUNCTION_104();
        OUTLINED_FUNCTION_78_4();
        MEMORY[0x1CCA5CD70](0xD00000000000001ALL);
        OUTLINED_FUNCTION_78_4();
        MEMORY[0x1CCA5CD70]();
        sub_1C7161CDC(v23, v24);
        sub_1C6F9EDA4(v9, 1);
      }

      else
      {
        sub_1C6F9EDA4(v9, 1);
      }

      v2 = 0;
      **(v0 + 24) = 32;
    }
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_116();

  return v3(v2);
}

uint64_t sub_1C704C678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_42();
  v13 = v12;
  v11[381] = v10;
  v11[380] = a10;
  v11[379] = a9;
  v11[378] = v14;
  v11[377] = v15;
  v11[376] = v16;
  v11[375] = v17;
  v11[374] = v18;
  v11[373] = v19;
  v11[372] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v21);
  v11[382] = swift_task_alloc();
  v11[383] = swift_task_alloc();
  v22 = sub_1C754F38C();
  v11[384] = v22;
  OUTLINED_FUNCTION_18(v22);
  v11[385] = v23;
  v11[386] = OUTLINED_FUNCTION_77();
  memcpy(v11 + 40, v13, 0x130uLL);
  v24 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v24, v25, v26);
}

uint64_t sub_1C704C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[379];
  OUTLINED_FUNCTION_141_1(v13, v13[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v14 = 0;
  v152 = v13;
  v157 = (v12 + 333);
  v148 = v12 + 348;
  v162 = v12 + 354;
  v24 = v12[376];
  v165 = v12;
  v25 = v12[77];
  v159 = v12[381] + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
  LOBYTE(__dst[0]) = *(v159 + 72);
  static FreeformStoryGenerator.Configuration.traitTitle(of:from:)(__dst, v25);
  v27 = v26;
  sub_1C704785C(v26, v28, v29, v30, v31, v32, v33);

  v34 = 0;
  v35 = *(v24 + 16);
  v36 = v24 + 40;
  v147 = MEMORY[0x1E69E7CC0];
  v160 = v24 + 40;
LABEL_5:
  v37 = (v36 + 16 * v34);
  while (v35 != v34)
  {
    if (v34 >= v35)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (__OFADD__(v34, 1))
    {
      goto LABEL_55;
    }

    v39 = *(v37 - 1);
    v38 = *v37;
    OUTLINED_FUNCTION_41_3();
    v40 = sub_1C75506FC();
    v27 = v41;
    v165[354] = v40;
    v165[355] = v41;
    v14 = swift_task_alloc();
    *(v14 + 16) = v162;
    sub_1C75504FC();
    v42 = sub_1C70735F4();

    if (v42)
    {
      v27 = v147;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v147;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C(0, *(v147 + 16) + 1, 1, v44, v45, v46, v47);
        v27 = __dst[0];
      }

      v49 = *(v27 + 16);
      v48 = *(v27 + 24);
      v14 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v51 = OUTLINED_FUNCTION_15(v48);
        sub_1C6F7ED9C(v51, v49 + 1, 1, v52, v53, v54, v55);
        v27 = __dst[0];
      }

      *(v27 + 16) = v14;
      v147 = v27;
      v50 = v27 + 16 * v49;
      *(v50 + 32) = v39;
      *(v50 + 40) = v38;
      ++v34;
      v36 = v160;
      goto LABEL_5;
    }

    ++v34;
    v37 += 2;
  }

  v35 = v165;
  v14 = *(v165[372] + 16);
  if (v14)
  {
    v37 = *(v159 + 40);
    v56 = v37 + v14;
    if (__OFADD__(v37, v14))
    {
      goto LABEL_56;
    }

    v27 = (v56 - 1);
    if (__OFSUB__(v56, 1))
    {
LABEL_57:
      __break(1u);
    }

    else if (qword_1EDD09CF0 == -1)
    {
LABEL_20:
      v57 = v27 / v14;
      v58 = sub_1C754FF1C();
      v35[387] = __swift_project_value_buffer(v58, qword_1EDD28B68);
      v59 = sub_1C754FEEC();
      v60 = sub_1C75511BC();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = OUTLINED_FUNCTION_20_1();
        *v61 = 134218496;
        *(v61 + 4) = v14;
        *(v61 + 12) = 2048;
        *(v61 + 14) = v37;
        *(v61 + 22) = 2048;
        *(v61 + 24) = v57;
        _os_log_impl(&dword_1C6F5C000, v59, v60, "Curating %ld chapters, aiming for %ld assets in total, target is %ld assets per chapter", v61, 0x20u);
        OUTLINED_FUNCTION_37();
      }

      v150 = v14;
      v62 = v35[381];
      v63 = v35[377];
      v64 = v35[375];
      v163 = v35[374];

      v65 = *(v63 + *(type metadata accessor for StoryGenerationSession(0) + 24));
      v35[388] = v65;
      memcpy(__dst, v35 + 40, sizeof(__dst));
      v67 = *(v62 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
      v68 = v57;
      v69 = *(v62 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16);
      v167 = *(v62 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
      v66 = v167;
      v168 = v67;
      v169 = v69;
      sub_1C7055874(v62 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyAssetsFetcher, (v35 + 338));
      sub_1C7055874(v62 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting, v157);
      v70 = type metadata accessor for FreeformStoryChapterCurator(0);
      OUTLINED_FUNCTION_137(v70);
      sub_1C6FDE884((v165 + 40), (v165 + 2));

      sub_1C75504FC();

      v71 = v66;

      v72 = v165;
      v151 = sub_1C71A12F8(v68, __dst, v163, v64, v147, &v167, v165 + 338, v65, v157);
      v165[389] = v151;
      v73 = [objc_opt_self() forceSequentialAssetCurationCalls];
      v74 = sub_1C754FEEC();
      v75 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v75))
      {
        v76 = OUTLINED_FUNCTION_41_0();
        v77 = OUTLINED_FUNCTION_20_1();
        __dst[0] = v77;
        *v76 = 136315138;
        if (v73)
        {
          v78 = 0x69746E6575716573;
        }

        else
        {
          v78 = 0x65727275636E6F63;
        }

        if (v73)
        {
          v79 = 0xEC000000796C6C61;
        }

        else
        {
          v79 = 0xEC000000796C746ELL;
        }

        v80 = sub_1C6F765A4(v78, v79, __dst);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_1C6F5C000, v74, v75, "Running chapter curations %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_109();
      }

      v81 = v152;
      sub_1C754F2DC();
      v149 = v73;
      v89 = v165[372];
      v167 = MEMORY[0x1E69E7CC0];
      sub_1C716DB00(0, v150, 0);
      v90 = (v89 + 32);
      v91 = 1;
      v161 = v167;
      v164 = 0;
      while (1)
      {
        v155 = v72[383];
        v92 = v72[379];
        v156 = v72[373];
        v158 = v72[382];
        memcpy(v72 + 227, v90, 0x68uLL);
        v153 = v90;
        memcpy(v72 + 240, v90, 0x68uLL);
        __swift_project_boxed_opaque_existential_1(v92, v81[3]);
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1C6FC061C((v165 + 227), (v165 + 292));
        sub_1C755180C();

        __dst[0] = 0x4372657470616843;
        __dst[1] = 0xEF6E6F6974617275;
        v165[369] = v91;
        v93 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v93);

        v72 = v165;
        sub_1C754F17C();

        v94 = OUTLINED_FUNCTION_15_1();
        __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
        OUTLINED_FUNCTION_55();
        v96 = sub_1C755057C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
        v97 = swift_allocBox();
        v99 = v98;
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;

        sub_1C755180C();

        __dst[0] = 0x4372657470616843;
        __dst[1] = 0xEF6E6F6974617275;
        v165[371] = v91;
        v100 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v100);

        sub_1C754F29C();

        v154 = sub_1C754F2FC();
        __swift_storeEnumTagSinglePayload(v99, 0, 1, v154);
        v101 = sub_1C7550D5C();
        v102 = OUTLINED_FUNCTION_67_5();
        __swift_storeEnumTagSinglePayload(v102, v103, 1, v101);
        sub_1C7055874((v72 + 328), (v72 + 343));
        v104 = swift_allocObject();
        *(v104 + 16) = 0;
        *(v104 + 24) = 0;
        *(v104 + 32) = v149;
        *(v104 + 40) = v164;
        *(v104 + 48) = v96;
        *(v104 + 56) = v97;
        *(v104 + 64) = v151;
        memcpy((v104 + 72), v165 + 240, 0x68uLL);
        *(v104 + 176) = v156;
        sub_1C6F699F8((v165 + 343), v104 + 184);
        sub_1C70555F8(v155, v158, &qword_1EC2158F8, &qword_1C755FF40);
        v105 = OUTLINED_FUNCTION_67_5();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v105, v106, v101);

        v108 = v165[382];
        v109 = (v165 + 240);
        if (EnumTagSinglePayload == 1)
        {
          sub_1C6FC061C(v109, (v165 + 253));
          sub_1C75504FC();

          v110 = OUTLINED_FUNCTION_82();
          sub_1C6FB5FC8(v110, v111, &qword_1C755FF40);
        }

        else
        {
          sub_1C6FC061C(v109, (v165 + 305));
          sub_1C75504FC();

          sub_1C7550D4C();
          OUTLINED_FUNCTION_62_2();
          (*(v112 + 8))(v108, v101);
        }

        v113 = *(v104 + 16);
        swift_unknownObjectRetain();

        v81 = v152;
        if (v113)
        {
          swift_getObjectType();
          v114 = sub_1C7550C8C();
          v116 = v115;
          swift_unknownObjectRelease();
        }

        else
        {
          v114 = 0;
          v116 = 0;
        }

        v117 = v161;
        sub_1C6FB5FC8(v165[383], &qword_1EC2158F8, &qword_1C755FF40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570, &qword_1C7564BD0);
        if (v116 | v114)
        {
          *v148 = 0;
          v148[1] = 0;
          v165[350] = v114;
          v165[351] = v116;
        }

        v118 = swift_task_create();
        v165[390] = v118;
        __swift_destroy_boxed_opaque_existential_1(v165 + 328);

        memcpy(__dst, v165 + 240, 0x68uLL);
        v167 = v161;
        v120 = v161[2];
        v119 = v161[3];
        if (v120 >= v119 >> 1)
        {
          v122 = OUTLINED_FUNCTION_15(v119);
          sub_1C716DB00(v122, v120 + 1, 1);
          v117 = v167;
        }

        v165[391] = v117;
        v117[2] = v120 + 1;
        v121 = &v117[14 * v120];
        memcpy(v121 + 4, __dst, 0x68uLL);
        v121[17] = v118;
        if (v150 == v91)
        {
          break;
        }

        v161 = v117;
        v164 = v118;
        ++v91;
        v90 = v153 + 104;
      }

      v131 = v117[2];
      v165[392] = v131;
      v165[395] = MEMORY[0x1E69E7CC0];
      v165[394] = 0;
      v165[393] = 0x3FE0000000000000;
      v132 = v165[391];
      if (v131)
      {
        if (*(v132 + 16))
        {
          memcpy(v165 + 158, (v132 + 32), 0x70uLL);
          v165[396] = v165[171];
          sub_1C70555F8((v165 + 158), (v165 + 200), &qword_1EC216578, &qword_1C7564BD8);
          sub_1C754F2DC();
          OUTLINED_FUNCTION_114_3();
          sub_1C75504FC();
          v133 = swift_task_alloc();
          v165[399] = v133;
          v165[400] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570, &qword_1C7564BD0);
          *v133 = v165;
          OUTLINED_FUNCTION_42_8();
          OUTLINED_FUNCTION_76_3();
          OUTLINED_FUNCTION_44();
        }

        else
        {
          __break(1u);
        }

        return MEMORY[0x1EEE6DE18](v123, v124, v125, v126, v127, v128, v129, v130, a9, a10, a11, a12);
      }

      else
      {

        sub_1C754F2EC();
        OUTLINED_FUNCTION_115_3();

        v135 = OUTLINED_FUNCTION_98_1();
        OUTLINED_FUNCTION_0_22(v135, v136);
        sub_1C754F1AC();
        v137 = OUTLINED_FUNCTION_57_0();
        v138(v137);

        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_44();

        return v141(v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12);
      }
    }

    OUTLINED_FUNCTION_0_23();
    swift_once();
    goto LABEL_20;
  }

  v82 = v165[380];

  sub_1C6FE0D14();
  OUTLINED_FUNCTION_9_10();
  swift_allocError();
  v83[1] = 0;
  v83[2] = 0;
  *v83 = 4;
  OUTLINED_FUNCTION_73_3(v83, 12);
  swift_willThrow();
  v84 = OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_70(v84, v85);
  OUTLINED_FUNCTION_154();
  sub_1C754F1AC();
  v86 = OUTLINED_FUNCTION_15_1();
  v87(v86);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v88 + 8))(v82);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1C704D668()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 3208) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C704D768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v125 = v12;
  v14 = *(v12 + 1712);
  v15 = *(v12 + 1720);
  v16 = *(v12 + 1728);
  v17 = *(v12 + 1729);
  memcpy((v12 + 2544), (v12 + 1736), 0x50uLL);
  sub_1C75504FC();
  v122 = v17;
  v18 = OUTLINED_FUNCTION_21_13();
  if (v17)
  {
    sub_1C70553C8(v18, v19, v20, 1);
    v21 = sub_1C754FEEC();
    v22 = sub_1C755119C();

    v23 = OUTLINED_FUNCTION_21_13();
    sub_1C70553E0(v23, v24, v25, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v13 = *(v12 + 3184);
      LODWORD(v123) = v16;
      v16 = v15;
      v26 = OUTLINED_FUNCTION_23_1();
      v27 = OUTLINED_FUNCTION_102();
      v28 = OUTLINED_FUNCTION_20_1();
      v124 = v28;
      *v26 = 136643075;
      v29 = OUTLINED_FUNCTION_112_1();
      *(v26 + 4) = sub_1C6F765A4(v29, v30, v31);
      *(v26 + 12) = 2112;
      sub_1C70553F8();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v32 = v14;
      *(v32 + 8) = v16;
      *(v32 + 16) = v123 & 1;
      OUTLINED_FUNCTION_41_3();
      sub_1C70553D8();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_1C6F5C000, v21, v22, "Failed to curate chapter %{sensitive}s: %@", v26, 0x16u);
      sub_1C6FB5FC8(v27, &qword_1EC215190, &qword_1C755C730);
      OUTLINED_FUNCTION_109();
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_109();
      v15 = v16;
      LOBYTE(v16) = v123;
      OUTLINED_FUNCTION_109();
    }

    sub_1C70553F8();
    OUTLINED_FUNCTION_9_10();
    v34 = swift_allocError();
    *v35 = v14;
    *(v35 + 8) = v15;
    *(v35 + 16) = v16 & 1;
    memcpy((v12 + 1136), (v12 + 1264), 0x68uLL);
    LOBYTE(v124) = 1;
    *(v12 + 1240) = v34;
    *(v12 + 1248) = 1;
    *(v12 + 1256) = MEMORY[0x1E69E7CC8];
    v36 = OUTLINED_FUNCTION_21_13();
    sub_1C70553C8(v36, v37, v38, 1);
    sub_1C6FC061C(v12 + 1264, v12 + 2232);
    sub_1C6FB7BB8(v12 + 1136, v12 + 1008);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v12 + 3160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v109 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB1B04(v109, v110, v111, v112);
      v42 = isUniquelyReferenced_nonNull_native;
    }

    v44 = *(v42 + 16);
    v43 = *(v42 + 24);
    if (v44 >= v43 >> 1)
    {
      v113 = OUTLINED_FUNCTION_15(v43);
      sub_1C6FB1B04(v113, v44 + 1, 1, v114);
      v42 = isUniquelyReferenced_nonNull_native;
    }

    v45 = OUTLINED_FUNCTION_97_2(isUniquelyReferenced_nonNull_native, v40, v41, v42);
    memcpy(v45, (v12 + 1136), 0x80uLL);
    v46 = *(v12 + 3184);
    if (v13)
    {
      v47 = *(v12 + 3176);
      *(v12 + 2864) = 0;
      *(v12 + 2872) = 0xE000000000000000;
      sub_1C755180C();

      *(v12 + 2848) = 0xD000000000000024;
      *(v12 + 2856) = 0x80000001C759A7C0;
      MEMORY[0x1CCA5CD70](v47, v46);

      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      if (v16)
      {
        v48 = 0xD000000000000022;
      }

      else
      {
        v48 = 0xD00000000000001FLL;
      }

      if (v16)
      {
        v49 = "d to curate chapter ";
      }

      else
      {
        v49 = "et IDs In Response";
      }

      MEMORY[0x1CCA5CD70](v48, v49 | 0x8000000000000000);

      sub_1C7161CDC(*(v12 + 2848), *(v12 + 2856));
      sub_1C6FBC664(v12 + 1136);
      goto LABEL_25;
    }

    sub_1C703307C(v12 + 2544);
    v76 = OUTLINED_FUNCTION_21_13();
    sub_1C70553E0(v76, v77, v78, 1);

    sub_1C6FBC664(v12 + 1136);
  }

  else
  {
    sub_1C70553C8(v18, v19, v20, 0);
    v50 = sub_1C754FEEC();
    v51 = sub_1C75511BC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v12 + 3184);
      v53 = *(v12 + 3176);
      v54 = OUTLINED_FUNCTION_23_1();
      v13 = OUTLINED_FUNCTION_20_1();
      v124 = v13;
      *v54 = 136643075;
      *(v54 + 4) = sub_1C6F765A4(v53, v52, &v124);
      *(v54 + 12) = 2048;
      *(v54 + 14) = [v14 count];
      v55 = OUTLINED_FUNCTION_154();
      sub_1C70553E0(v55, v56, v16, 0);
      _os_log_impl(&dword_1C6F5C000, v50, v51, "Successfully curated chapter %{sensitive}s with %ld assets", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_109();
    }

    else
    {
      v57 = OUTLINED_FUNCTION_154();
      sub_1C70553E0(v57, v58, v16, 0);
    }

    memcpy((v12 + 752), (v12 + 1264), 0x68uLL);
    LOBYTE(v124) = 0;
    *(v12 + 856) = v14;
    *(v12 + 864) = 0;
    *(v12 + 872) = MEMORY[0x1E69E7CC8];
    v59 = OUTLINED_FUNCTION_154();
    sub_1C70553C8(v59, v60, v16, 0);
    sub_1C6FC061C(v12 + 1264, v12 + 2128);
    sub_1C6FB7BB8(v12 + 752, v12 + 880);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v12 + 3160);
    if ((v61 & 1) == 0)
    {
      v115 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB1B04(v115, v116, v117, v118);
      v64 = v61;
    }

    v66 = *(v64 + 16);
    v65 = *(v64 + 24);
    if (v66 >= v65 >> 1)
    {
      v119 = OUTLINED_FUNCTION_15(v65);
      sub_1C6FB1B04(v119, v66 + 1, 1, v120);
      v64 = v61;
    }

    v67 = OUTLINED_FUNCTION_97_2(v61, v62, v63, v64);
    memcpy(v67, (v12 + 752), 0x80uLL);
    v68 = *(v12 + 3184);
    if (v13)
    {
      v69 = *(v12 + 3176);
      *(v12 + 2896) = 0;
      *(v12 + 2904) = 0xE000000000000000;
      sub_1C755180C();
      v70 = *(v12 + 2904);
      *(v12 + 2880) = *(v12 + 2896);
      *(v12 + 2888) = v70;
      MEMORY[0x1CCA5CD70](0xD000000000000028, 0x80000001C759A840);
      MEMORY[0x1CCA5CD70](v69, v68);
      MEMORY[0x1CCA5CD70](0x206874697720, 0xE600000000000000);
      *(v12 + 2960) = [v14 count];
      v71 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v71);

      MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
      sub_1C7161CDC(*(v12 + 2880), *(v12 + 2888));

      *(v12 + 2928) = 0;
      *(v12 + 2936) = 0xE000000000000000;
      sub_1C755180C();

      *(v12 + 2912) = 0xD000000000000010;
      *(v12 + 2920) = 0x80000001C759A870;
      MEMORY[0x1CCA5CD70](v69, v68);

      MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
      sub_1C6FB7BB8(v12 + 752, v12 + 624);
      OUTLINED_FUNCTION_82();
      sub_1C7162388(v72);
      sub_1C6FBC664(v12 + 752);
LABEL_25:

      sub_1C7031BAC((v12 + 2544));
      sub_1C703307C(v12 + 2544);
      v73 = OUTLINED_FUNCTION_21_13();
      sub_1C70553E0(v73, v74, v75, v122);

      goto LABEL_28;
    }

    sub_1C703307C(v12 + 2544);
    sub_1C6FBC664(v12 + 752);

    v79 = OUTLINED_FUNCTION_21_13();
    sub_1C70553E0(v79, v80, v81, 0);
  }

LABEL_28:
  v82 = *(v12 + 3208);
  sub_1C754F2DC();
  if (v82)
  {
    v83 = *(v12 + 3088);
    v84 = *(v12 + 3080);
    v85 = *(v12 + 3072);
    v86 = *(v12 + 3040);
    v87 = *(v12 + 3032);

    sub_1C70552E0(v12 + 1264);

    OUTLINED_FUNCTION_70(v87, v87[3]);
    sub_1C754F1AC();
    (*(v84 + 8))(v83, v85);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v88 + 8))(v86);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_84_3();

    __asm { BRAA            X1, X16 }
  }

  v91 = *(v12 + 3144);
  v92 = *(v12 + 3136);

  sub_1C70552E0(v12 + 1264);
  v100 = *(v12 + 3152) + 1;
  *(v12 + 3160) = v123;
  *(v12 + 3152) = v100;
  *(v12 + 3144) = 0.5 / (v92 + v92) + v91 + 0.5 / (v92 + v92);
  v101 = *(v12 + 3128);
  if (v100 == *(v12 + 3136))
  {

    sub_1C754F2EC();
    OUTLINED_FUNCTION_115_3();
    v102 = *(v12 + 3032);

    OUTLINED_FUNCTION_0_22(v102, v102[3]);
    sub_1C754F1AC();
    v103 = OUTLINED_FUNCTION_457();
    v104(v103);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_84_3();

    __asm { BRAA            X2, X16 }
  }

  if (v100 >= *(v101 + 16))
  {
    __break(1u);
  }

  else
  {
    memcpy((v12 + 1264), (v101 + 112 * v100 + 32), 0x70uLL);
    *(v12 + 3168) = *(v12 + 1368);
    sub_1C70555F8(v12 + 1264, v12 + 1600, &qword_1EC216578, &qword_1C7564BD8);
    sub_1C754F2DC();
    OUTLINED_FUNCTION_114_3();
    sub_1C75504FC();
    v107 = swift_task_alloc();
    *(v12 + 3192) = v107;
    *(v12 + 3200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570, &qword_1C7564BD0);
    *v107 = v12;
    OUTLINED_FUNCTION_42_8();
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_84_3();
  }

  return MEMORY[0x1EEE6DE18](v101, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12);
}

void sub_1C704E2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  v25 = v22[401];
  sub_1C75504FC();
  v26 = v25;
  v27 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_140_0())
  {
    v28 = v22[398];
    v29 = v22[397];
    v30 = OUTLINED_FUNCTION_23_1();
    v31 = OUTLINED_FUNCTION_102();
    v32 = OUTLINED_FUNCTION_20_1();
    a9 = v32;
    *v30 = 136643075;
    v33 = sub_1C6F765A4(v29, v28, &a9);
    OUTLINED_FUNCTION_136_1(v33);
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v34;
    *v31 = v34;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v35, v36, v37, v38, v30, 0x16u);
    sub_1C6FB5FC8(v31, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_109();
  }

  if (v22[388])
  {
    v39 = v22[401];
    OUTLINED_FUNCTION_56_0();
    sub_1C755180C();
    v40 = a10;
    v22[352] = a9;
    v22[353] = v40;
    MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C759A7C0);
    v41 = OUTLINED_FUNCTION_154();
    MEMORY[0x1CCA5CD70](v41);

    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
    v22[368] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C75519EC();
    OUTLINED_FUNCTION_138_2(v22[352]);
  }

  v42 = 1;
  for (i = 32; ; i += 112)
  {
    v44 = v22[391];
    if ((v42 - 1) >= *(v44 + 16))
    {
      __break(1u);
      return;
    }

    v45 = v22[392];
    memcpy(v22 + 186, (v44 + i), 0x70uLL);
    sub_1C70555F8((v22 + 186), (v22 + 172), &qword_1EC216578, &qword_1C7564BD8);
    sub_1C70552E0((v22 + 186));
    v46 = OUTLINED_FUNCTION_112_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
    sub_1C7550E1C();

    if (v42 == v45)
    {
      break;
    }

    ++v42;
  }

  v48 = v22[380];
  v49 = v22[379];

  swift_willThrow();

  sub_1C70552E0((v22 + 158));

  OUTLINED_FUNCTION_70(v49, v49[3]);
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  v50 = OUTLINED_FUNCTION_98_1();
  v51(v50);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v52 + 8))(v48);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C704E668()
{
  OUTLINED_FUNCTION_42();
  v1[85] = v0;
  v1[84] = v2;
  v1[83] = v3;
  v1[82] = v4;
  v1[81] = v5;
  v1[80] = v6;
  v1[79] = v7;
  v8 = sub_1C754F38C();
  v1[86] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[87] = v9;
  v1[88] = OUTLINED_FUNCTION_77();
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C704E724()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v3, v4);
  OUTLINED_FUNCTION_71_2("FreeformStoryGenerator.finalCuratedChapters", 43);
  v5 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_70(v5, v6);
  sub_1C754F15C();
  memcpy((v0 + 16), v2, 0x130uLL);
  *(v0 + 752) = *v1;
  v7 = swift_task_alloc();
  *(v0 + 712) = v7;
  *v7 = v0;
  v7[1] = sub_1C704E848;
  OUTLINED_FUNCTION_61_3(*(v0 + 632));
  OUTLINED_FUNCTION_142();

  return sub_1C7051B14();
}

uint64_t sub_1C704E848()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 720) = v7;
  *(v5 + 728) = v0;

  if (!v0)
  {
    *(v5 + 754) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C704E95C()
{
  OUTLINED_FUNCTION_115_0();
  if ((*(v0 + 754) & 1) == 0)
  {
    v9 = *(v0 + 656);
    if (*(v9 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      sub_1C7161CDC(0xD000000000000045, 0x80000001C759A650);
    }

LABEL_14:
    v10 = *(v0 + 664);
    __swift_destroy_boxed_opaque_existential_1((v0 + 576));
    v11 = *(v10 + 24);
    v12 = OUTLINED_FUNCTION_57_0();
    __swift_project_boxed_opaque_existential_1(v12, v13);
    OUTLINED_FUNCTION_26_8();
    sub_1C754F1AC();
    v14 = *(v0 + 704);
    OUTLINED_FUNCTION_12_16();
    v15(v14);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v16 + 8))(v11);

    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_108_3();

    __asm { BRAA            X3, X16 }
  }

  v1 = *(v0 + 656);
  v2 = *(v0 + 720);
  v3 = *(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 736) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_90_3();
    sub_1C755180C();
    *(v0 + 616) = v31;
    *(v0 + 624) = v32;
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD00000000000003ALL);
    *(v0 + 753) = v2;
    sub_1C75519EC();
    OUTLINED_FUNCTION_138_2(*(v0 + 616));
  }

  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  if (byte_1EC218F88 != 2)
  {
    goto LABEL_14;
  }

  v4 = **(v0 + 648);
  if (v4 <= 0x1F && (v4 & 1) == 0)
  {
    v19 = *(v0 + 664);
    sub_1C705501C();
    OUTLINED_FUNCTION_9_10();
    v20 = swift_allocError();
    *v21 = v2;
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    v22[1] = 0;
    v22[2] = 0;
    *v22 = v20;
    OUTLINED_FUNCTION_73_3(v22, 11);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1((v0 + 576));
    v23 = *(v19 + 24);
    v24 = OUTLINED_FUNCTION_154();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    OUTLINED_FUNCTION_26_8();
    sub_1C754F1AC();
    v26 = *(v0 + 704);
    OUTLINED_FUNCTION_12_16();
    v27(v26);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v28 + 8))(v23);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_108_3();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 744) = v5;
  *v5 = v6;
  v5[1] = sub_1C704ECD4;
  OUTLINED_FUNCTION_108_3();

  return sub_1C70526E8();
}

uint64_t sub_1C704ECD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C704EDB8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[81];
  memcpy(v0 + 40, v0 + 56, 0x80uLL);
  v2 = *v1;
  switch(v2 >> 5)
  {
    case 1u:
      goto LABEL_10;
    case 2u:
    case 4u:
      goto LABEL_13;
    case 3u:
      if (v2 == 96)
      {
        goto LABEL_10;
      }

LABEL_13:
      v18 = v0[83];
      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      v19[1] = 0;
      v19[2] = 0;
      *v19 = v2;
      OUTLINED_FUNCTION_73_3(v19, 9);
      swift_willThrow();
      sub_1C6FBC664((v0 + 40));
      __swift_destroy_boxed_opaque_existential_1(v0 + 72);
      v20 = *(v18 + 24);
      v21 = OUTLINED_FUNCTION_154();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      OUTLINED_FUNCTION_26_8();
      sub_1C754F1AC();
      v23 = v0[88];
      OUTLINED_FUNCTION_12_16();
      v24(v23);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v25 + 8))(v20);

      OUTLINED_FUNCTION_43();

      result = v26();
      break;
    default:
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v3 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v3, qword_1EDD28B68);
      v4 = sub_1C754FEEC();
      v5 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v5))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_6(&dword_1C6F5C000, v6, v7, "Failed to create non-chronological Montage, downgrading to chronological.");
        OUTLINED_FUNCTION_109();
      }

      v8 = v0[92];

      if (v8)
      {
        v9 = v0[81];
        OUTLINED_FUNCTION_56_0();
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C759A5C0);
        sub_1C73E69B8(*v9);
        OUTLINED_FUNCTION_104();
        OUTLINED_FUNCTION_10_2();
        MEMORY[0x1CCA5CD70](0xD00000000000001BLL);
        OUTLINED_FUNCTION_138_2(v27);
      }

      *v0[81] = 33;
LABEL_10:
      v10 = v0[83];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B8, &qword_1C755C2C0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1C755BAB0;
      memcpy((v11 + 32), v0 + 40, 0x80uLL);
      __swift_destroy_boxed_opaque_existential_1(v0 + 72);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      OUTLINED_FUNCTION_63();
      sub_1C754F1AC();
      v12 = v0[88];
      OUTLINED_FUNCTION_12_16();
      v13(v12);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v14 + 8))(v10);

      OUTLINED_FUNCTION_82_0();
      v15 = OUTLINED_FUNCTION_12_5();

      result = v16(v15);
      break;
  }

  return result;
}

uint64_t sub_1C704F11C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[83];
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  OUTLINED_FUNCTION_26_8();
  sub_1C754F1AC();
  v5 = v0[88];
  OUTLINED_FUNCTION_12_16();
  v6(v5);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v7 + 8))(v2);

  OUTLINED_FUNCTION_43();

  return v8();
}

void static FreeformStoryGenerator.validate(numberOfCuratedAssets:configuration:storyElements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 48);
  if (v4 > a1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_124_3();
  if (!(v8 ^ v9 | v7))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v6 <= -9.22337204e18)
  {
    goto LABEL_12;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v4 = *(v5 + 24) >= v6 ? v6 : *(v5 + 24);
  if (v4 > a1)
  {
LABEL_10:
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v10 = a1;
    v10[1] = v4;
    v10[2] = 0;
    OUTLINED_FUNCTION_73_3(v10, 5);
    swift_willThrow();
  }
}

_BYTE *_s27MontageChapterCurationErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C704F398()
{
  result = qword_1EC216558;
  if (!qword_1EC216558)
  {
    result = swift_getWitnessTable(aMc_0, &_s27MontageChapterCurationErrorON, v0, v1);
    atomic_store(result, &qword_1EC216558);
  }

  return result;
}

uint64_t sub_1C704F3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1C754F2FC();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C704F4C0, 0, 0);
}

uint64_t sub_1C704F4C0()
{
  OUTLINED_FUNCTION_75_1();
  sub_1C754F2BC();
  OUTLINED_FUNCTION_113_3();
  v1();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1C704F5C4;
  OUTLINED_FUNCTION_61_3(*(v0 + 32));
  OUTLINED_FUNCTION_88_0();

  return static FreeformStoryGenerator.updateChapterCuratedAssetsHighlights(storyChapters:queryTokens:storyGenerationCache:progressReporter:)(v3, v4, v5, v6);
}

uint64_t sub_1C704F5C4()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C704F6CC()
{
  OUTLINED_FUNCTION_42();
  **(v0 + 16) = *(v0 + 112);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C704F73C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C704F7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[180] = v12;
  v8[179] = a8;
  v8[178] = a7;
  v8[177] = a6;
  v8[176] = a5;
  v8[175] = a4;
  v8[174] = a3;
  v8[173] = a2;
  v8[172] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216598, &qword_1C7564C40);
  v8[181] = v9;
  v8[182] = *(v9 - 8);
  v8[183] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v8[184] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C704F8CC, 0, 0);
}

uint64_t sub_1C704F8CC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v1 = swift_allocObject();
  *(v0 + 1480) = v1;
  *(v1 + 16) = 0;
  v2 = OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_70(v2, v3);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_99_3();
  v4();
  sub_1C7550E8C();

  swift_beginAccess();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C704F9E8()
{
  OUTLINED_FUNCTION_75_1();
  sub_1C7055658(v0 + 928, v0 + 976);
  if (*(v0 + 1016))
  {
    sub_1C6F699F8((v0 + 976), v0 + 1024);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 1024, *(v0 + 1048));
    OUTLINED_FUNCTION_24_2();
    sub_1C755150C();
    v1 = *(v0 + 1096);
    v10 = *(v0 + 1080);
    v11 = *(v0 + 1064);
    sub_1C70556B4(v0 + 928);
    sub_1C7055874(v0 + 1024, v0 + 928);
    *(v0 + 968) = 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 1024));
    *(v0 + 1536) = v1;
    *(v0 + 1520) = v10;
    *(v0 + 1504) = v11;
    v2 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C6F699F8((v0 + 976), v0 + 1184);
    v5 = *(v0 + 1208);
    v6 = *(v0 + 1216);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 1184, v5);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 1488) = v7;
    *v7 = v8;
    v7[1] = sub_1C704FB74;

    return MEMORY[0x1EEE6D8C8](v0 + 1224, v5, v6);
  }
}

uint64_t sub_1C704FB74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 1496) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C704FC70()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 1256);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 1224);
  sub_1C70556B4(v0 + 928);
  sub_1C7055874(v0 + 1184, v0 + 928);
  *(v0 + 968) = 0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 1184));
  *(v0 + 1536) = v1;
  *(v0 + 1520) = v6;
  *(v0 + 1504) = v7;
  v2 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C704FD04()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1184));
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C704FD60()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 1368) = *(v0 + 1496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C704FDE4()
{
  OUTLINED_FUNCTION_42();
  sub_1C7055708(v0 + 928);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C704FE60()
{
  v1 = *(v0 + 1512);
  if (!v1)
  {
    sub_1C7055708(v0 + 928);
    goto LABEL_11;
  }

  v40 = *(v0 + 1528);
  v2 = *(v0 + 1480);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1400), *(*(v0 + 1400) + 24));
  *(v0 + 1304) = 0;
  *(v0 + 1312) = 0xE000000000000000;
  sub_1C755180C();

  *(v0 + 1288) = 0x4372657470616843;
  *(v0 + 1296) = 0xEF6E6F6974616572;
  v6 = *(v2 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v39 = v1;
  v9 = *(v0 + 1480);
  *(v0 + 1352) = v8;
  v10 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v10);

  sub_1C754F17C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  v11 = swift_allocBox();
  v13 = v12;
  *(v0 + 1336) = 0;
  *(v0 + 1344) = 0xE000000000000000;
  sub_1C755180C();

  *(v0 + 1320) = 0x4372657470616843;
  *(v0 + 1328) = 0xEF6E6F6974616572;
  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, 1);
  v15 = v14 + 1;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v35 = *(v0 + 1504);
  v36 = *(v0 + 1520);
  v16 = *(v0 + 1472);
  v37 = *(v0 + 1440);
  v38 = *(v0 + 1480);
  v17 = *(v0 + 1432);
  v18 = *(v0 + 1424);
  v19 = *(v0 + 1416);
  *(v0 + 1360) = v15;
  v20 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v20);

  sub_1C754F29C();

  v21 = sub_1C754F2FC();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v21);
  sub_1C7550D5C();
  v22 = OUTLINED_FUNCTION_67_5();
  __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  sub_1C7055874(v0 + 1104, v0 + 1144);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v11;
  *(v25 + 40) = v19;
  *(v25 + 48) = v35;
  *(v25 + 56) = v39;
  *(v25 + 64) = v36;
  *(v25 + 72) = v40;
  memcpy((v25 + 88), v18, 0x130uLL);
  sub_1C6F699F8((v0 + 1144), v25 + 392);
  *(v25 + 432) = v17;
  *(v25 + 440) = v38;
  *(v25 + 448) = v37;

  sub_1C6FDE884(v18, v0 + 16);

  LOBYTE(v25) = sub_1C7050D8C(v16, &unk_1C7564C58, v25);
  sub_1C6FB5FC8(v16, &qword_1EC2158F8, &qword_1C755FF40);
  v3 = __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  if ((v25 & 1) == 0)
  {
    sub_1C7055708(v0 + 928);

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DC0, &qword_1C755BF48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    OUTLINED_FUNCTION_57_0();
    sub_1C7550E7C();
    *(v0 + 1544) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_53_8(&qword_1EC2165A0, &qword_1EC216598, &qword_1C7564C40);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 1552) = v32;
    *v32 = v33;
    v3 = OUTLINED_FUNCTION_33_8(v32);

    return MEMORY[0x1EEE6D8C8](v3, v4, v5);
  }

  v26 = *(v0 + 1480);
  v27 = *(v26 + 16);
  v7 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v7)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v3, v4, v5);
  }

  *(v26 + 16) = v28;

  v29 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1C70502C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[195] = v0;

  if (v0)
  {
    (*(v3[182] + 8))(v3[183], v3[181]);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70503E8()
{
  OUTLINED_FUNCTION_123();
  memcpy(v0 + 59, v0 + 40, 0x98uLL);
  if (sub_1C6F9ED5C((v0 + 59)) == 1)
  {
    v1 = v0[193];
    v2 = v0[172];
    (*(v0[182] + 8))(v0[183], v0[181]);
    memcpy(v0 + 78, v0 + 40, 0x98uLL);
    sub_1C6FB5FC8((v0 + 78), &qword_1EC2165A8, &qword_1C7564C48);
    *v2 = v1;

    OUTLINED_FUNCTION_43();

    return v3();
  }

  else
  {
    memcpy(v0 + 97, v0 + 40, 0x98uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[193];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB24E8();
      v6 = v13;
    }

    v7 = *(v6 + 16);
    if (v7 >= *(v6 + 24) >> 1)
    {
      sub_1C6FB24E8();
      v6 = v14;
    }

    *(v6 + 16) = v7 + 1;
    memcpy((v6 + 152 * v7 + 32), v0 + 97, 0x98uLL);
    v0[193] = v6;
    OUTLINED_FUNCTION_53_8(&qword_1EC2165A0, &qword_1EC216598, &qword_1C7564C40);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[194] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_33_8(v8);

    return MEMORY[0x1EEE6D8C8](v10, v11, v12);
  }
}

uint64_t sub_1C70505E0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7050650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[83] = v13;
  v8[82] = v12;
  v8[81] = a8;
  v8[80] = a7;
  v8[79] = a6;
  v8[78] = a5;
  v8[77] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  v8[84] = swift_task_alloc();
  v9 = sub_1C754F2FC();
  v8[85] = v9;
  v8[86] = *(v9 - 8);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C7050784, 0, 0);
}

uint64_t sub_1C7050784()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_107_3(v1, v0 + 544);
  v2 = OUTLINED_FUNCTION_43_2();
  sub_1C705544C(v2, v3);
  OUTLINED_FUNCTION_27_9();
  if (v4)
  {
    v5 = *(v0 + 672);
    v6 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v6, v7, v8) != 1)
    {
      sub_1C6FB5FC8(v5, &unk_1EC218C90, &qword_1C7564BC0);
    }

    return OUTLINED_FUNCTION_31_8();
  }

  else
  {
    v10 = *(v0 + 640);
    v11 = *(v0 + 632);
    v12 = *(*(v0 + 688) + 32);
    (v12)(*(v0 + 704), *(v0 + 672), *(v0 + 680));
    v13 = *(v11 + 32);
    v14 = *(v11 + 16);
    *(v0 + 424) = *v11;
    *(v0 + 440) = v14;
    *(v0 + 456) = v13;
    *(v0 + 736) = 3;
    memcpy((v0 + 16), v10, 0x130uLL);
    OUTLINED_FUNCTION_113_3();
    v12();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 720) = v15;
    *v15 = v16;
    v15[1] = sub_1C7050960;
    v17 = *(v0 + 696);
    v18 = *(v0 + 656);
    v19 = *(v0 + 648);

    return sub_1C7398254(v0 + 320, v0 + 424, (v0 + 736), (v0 + 16), v19, v17, v18);
  }
}

uint64_t sub_1C7050960()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 728) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7050A5C()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v1 = v0[83];
  v2 = v0[79];
  v3 = v0[77];
  v4 = *v2;
  v5 = *(v2 + 16);
  *(v3 + 32) = *(v2 + 32);
  *v3 = v4;
  *(v3 + 16) = v5;
  memcpy((v3 + 40), v0 + 40, 0x68uLL);
  swift_beginAccess();
  *(v3 + 144) = *(v1 + 16);
  sub_1C70558D4(v2, (v0 + 63));

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_142();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

void sub_1C7050B30()
{
  OUTLINED_FUNCTION_115_0();
  v22 = v0;
  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v1 = v0[91];
  v2 = v0[79];
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v3, qword_1EDD28B68);
  sub_1C70558D4(v2, (v0 + 58));
  v4 = v1;
  v5 = sub_1C754FEEC();
  sub_1C755119C();
  sub_1C7055930(v2);

  if (OUTLINED_FUNCTION_140_0())
  {
    v6 = v0[79];
    v7 = OUTLINED_FUNCTION_23_1();
    v8 = OUTLINED_FUNCTION_102();
    v9 = OUTLINED_FUNCTION_20_1();
    v21[0] = v9;
    *v7 = 136643075;
    v10 = sub_1C6F765A4(*v6, *(v6 + 8), v21);
    OUTLINED_FUNCTION_136_1(v10);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v12, v13, v14, v15, v7, 0x16u);
    sub_1C6FB5FC8(v8, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_109();
  }

  if (v0[82])
  {
    v16 = v0[91];
    v17 = v0[79];
    OUTLINED_FUNCTION_56_0();
    sub_1C755180C();
    v18 = v21[1];
    v0[74] = v21[0];
    v0[75] = v18;
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD000000000000021);
    MEMORY[0x1CCA5CD70](*v17, v17[1]);
    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
    v0[76] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C75519EC();
    OUTLINED_FUNCTION_138_2(v0[74]);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_87_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C7050D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = *v3;
  v10 = swift_taskGroup_addPending();
  if (v10)
  {
    sub_1C70555F8(a1, v8, &qword_1EC2158F8, &qword_1C755FF40);
    v11 = sub_1C7550D5C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
    {
      sub_1C6FB5FC8(v8, &qword_1EC2158F8, &qword_1C755FF40);
    }

    else
    {
      sub_1C7550D4C();
      (*(*(v11 - 8) + 8))(v8, v11);
    }

    if (*(a3 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1C7550C8C();
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DC0, &qword_1C755BF48);
    v15 = (v14 | v12);
    if (v14 | v12)
    {
      v18[0] = 0;
      v18[1] = 0;
      v15 = v18;
      v18[2] = v12;
      v18[3] = v14;
    }

    v17[1] = 1;
    v17[2] = v15;
    v17[3] = v9;
    swift_task_create();
  }

  return v10 & 1;
}

uint64_t sub_1C7050F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
    v9 = (a1 + 88);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v21 + 16);
      v12 = *(v21 + 24);
      sub_1C75504FC();
      if (v13 >= v12 >> 1)
      {
        sub_1C6F7ED9C(v12 > 1, v13 + 1, 1, v14, v15, v16, v17);
      }

      *(v21 + 16) = v13 + 1;
      v18 = v21 + 16 * v13;
      *(v18 + 32) = v11;
      *(v18 + 40) = v10;
      v9 += 13;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C705575C(&qword_1EDD0CF58, &unk_1EC217A00, &qword_1C755BD70);
  v19 = sub_1C75505FC();

  return v19;
}

uint64_t sub_1C70510D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 560) = v13;
  *(v8 + 544) = v12;
  *(v8 + 536) = a8;
  *(v8 + 528) = a6;
  *(v8 + 520) = a5;
  *(v8 + 121) = a4;
  *(v8 + 512) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  *(v8 + 568) = swift_task_alloc();
  v9 = sub_1C754F2FC();
  *(v8 + 576) = v9;
  *(v8 + 584) = *(v9 - 8);
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C705120C, 0, 0);
}

uint64_t sub_1C705120C()
{
  OUTLINED_FUNCTION_123();
  v3 = *(v1 + 520);
  v4 = *(v1 + 121) != 1 || v3 == 0;
  if (v4)
  {
    OUTLINED_FUNCTION_126_4();
    *(v1 + 472) = &type metadata for Random.Arc4Random;
    *(v1 + 480) = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v2, v1 + 448);
    OUTLINED_FUNCTION_107_3(v5, v1 + 488);
    v6 = OUTLINED_FUNCTION_43_2();
    sub_1C705544C(v6, v7);
    OUTLINED_FUNCTION_27_9();
    if (v4)
    {
      v8 = *(v1 + 568);
      v9 = OUTLINED_FUNCTION_69_2();
      if (__swift_getEnumTagSinglePayload(v9, v10, v11) != 1)
      {
        sub_1C6FB5FC8(v8, &unk_1EC218C90, &qword_1C7564BC0);
      }

      OUTLINED_FUNCTION_118_2();
      return OUTLINED_FUNCTION_31_8();
    }

    else
    {
      v19 = OUTLINED_FUNCTION_68_6();
      v2(v19);
      memcpy((v1 + 240), v3, 0x68uLL);
      if (v0)
      {
        sub_1C6FE3768();
      }

      v20 = OUTLINED_FUNCTION_123_3();
      v2(v20);
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v1 + 632) = v21;
      *v21 = v22;
      OUTLINED_FUNCTION_28_5(v21);

      return sub_1C719EE4C();
    }
  }

  else
  {

    v13 = swift_task_alloc();
    *(v1 + 616) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570, &qword_1C7564BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    *v13 = v1;
    v13[1] = sub_1C7051448;
    OUTLINED_FUNCTION_99_3();

    return MEMORY[0x1EEE6DA20](v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C7051448()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  memcpy((v2 + 16), (v2 + 128), 0x69uLL);
  sub_1C6FB5FC8(v2 + 16, &qword_1EC216588, &qword_1C7564BF8);
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C705154C()
{
  OUTLINED_FUNCTION_123();

  OUTLINED_FUNCTION_126_4();
  v2[59] = &type metadata for Random.Arc4Random;
  v2[60] = sub_1C7054F1C();
  Random.Arc4Random.init(seed:)(v3, (v2 + 56));
  OUTLINED_FUNCTION_107_3(v4, (v2 + 61));
  v5 = OUTLINED_FUNCTION_43_2();
  sub_1C705544C(v5, v6);
  OUTLINED_FUNCTION_27_9();
  if (v7)
  {
    v8 = v2[71];
    v9 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v9, v10, v11) != 1)
    {
      sub_1C6FB5FC8(v8, &unk_1EC218C90, &qword_1C7564BC0);
    }

    OUTLINED_FUNCTION_118_2();
    return OUTLINED_FUNCTION_31_8();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_68_6();
    v3(v13);
    memcpy(v2 + 30, v1, 0x68uLL);
    if (v0)
    {
      sub_1C6FE3768();
    }

    v14 = OUTLINED_FUNCTION_123_3();
    v3(v14);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v2[79] = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_28_5(v15);

    return sub_1C719EE4C();
  }
}

uint64_t sub_1C70516BC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 640) = v0;
  *(v6 + 648) = *v7;
  *(v6 + 122) = *(v6 + 360);
  *(v6 + 123) = *(v6 + 361);
  *(v6 + 664) = *(v8 + 368);
  *(v6 + 672) = *(v6 + 376);
  v9 = *(v8 + 392);
  v10 = *(v6 + 416);
  *(v6 + 696) = *(v6 + 400);
  *(v6 + 688) = v9;
  *(v6 + 712) = v10;
  *(v6 + 728) = *(v6 + 432);

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C7051860()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 664);
  v4 = *(v0 + 123);
  v5 = *(v0 + 122);
  v6 = *(v0 + 512);
  v7 = *(v0 + 696);
  v8 = *(v0 + 712);
  v9 = *(v0 + 728);
  *v6 = *(v0 + 648);
  *(v6 + 16) = v5;
  *(v6 + 17) = v4;
  *(v6 + 24) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  *(v6 + 56) = v7;
  *(v6 + 72) = v8;
  *(v6 + 88) = v9;
  __swift_destroy_boxed_opaque_existential_1((v0 + 448));

  OUTLINED_FUNCTION_43();

  return v10();
}

uint64_t sub_1C7051934()
{
  OUTLINED_FUNCTION_49_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 448));

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C70519BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570, &qword_1C7564BD0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  *v5 = v2;
  v5[1] = sub_1C6F738F4;
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v6, v7, v8);
}

uint64_t sub_1C7051AA4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570, &qword_1C7564BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");

  return sub_1C7550E1C();
}

uint64_t sub_1C7051B14()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  *(v1 + 344) = v6;
  *(v1 + 352) = v0;
  *(v1 + 328) = v7;
  *(v1 + 336) = v8;
  v9 = sub_1C754F38C();
  *(v1 + 360) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 368) = v10;
  *(v1 + 376) = OUTLINED_FUNCTION_77();
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  *(v1 + 384) = TokenCategoryType;
  OUTLINED_FUNCTION_76(TokenCategoryType);
  v12 = OUTLINED_FUNCTION_77();
  v13 = *(v5 + 208);
  *(v1 + 392) = v12;
  *(v1 + 400) = v13;
  *(v1 + 321) = *v3;
  v14 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C7051BFC()
{
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 321);
  switch(v1 >> 5)
  {
    case 1uLL:
      goto LABEL_16;
    case 2uLL:
    case 4uLL:
      goto LABEL_19;
    case 3uLL:
      if (v1 == 96)
      {
        goto LABEL_16;
      }

LABEL_19:
      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      v29[1] = 0;
      v29[2] = 0;
      *v29 = v1;
      OUTLINED_FUNCTION_73_3(v29, 9);
      swift_willThrow();

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_87_5();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v2 = *(v0 + 392);
      swift_storeEnumTagMultiPayload();
      *(swift_task_alloc() + 16) = v2;
      v3 = sub_1C707351C();

      OUTLINED_FUNCTION_48_7();
      sub_1C7055128();
      if (v3)
      {
LABEL_16:

        OUTLINED_FUNCTION_82_0();
        OUTLINED_FUNCTION_69_2();
        OUTLINED_FUNCTION_87_5();

        __asm { BRAA            X3, X16 }
      }

      v4 = *(v0 + 352);
      v5 = *(v0 + 328);
      OUTLINED_FUNCTION_141_1(*(v0 + 344), *(*(v0 + 344) + 24));
      OUTLINED_FUNCTION_132("FreeformStoryGenerator.montageFinalCuratedChapters", 50);
      v6 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 16);
      *(v0 + 272) = 8;
      *(v0 + 280) = v6;
      *(v0 + 288) = v6;
      *(v0 + 296) = 5;
      *(v0 + 304) = 0x3FE0000000000000;
      v7 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
      v8 = type metadata accessor for FreeformStoryCurator(0);
      OUTLINED_FUNCTION_137(v8);
      result = FreeformStoryCurator.init(configuration:photoLibrary:)((v0 + 272), v7);
      v10 = 0;
      *(v0 + 408) = result;
      v11 = *(v5 + 16);
      v12 = v5 + 32;
      v13 = MEMORY[0x1E69E7CC0];
      break;
  }

LABEL_4:
  *(v0 + 416) = v13;
  v14 = (v12 + (v10 << 7));
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    result = memcpy((v0 + 16), v14, 0x80uLL);
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_26;
    }

    if ((*(v0 + 128) & 1) == 0)
    {
      sub_1C6FB7BB8(v0 + 16, v0 + 144);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C716D668(0, *(v13 + 16) + 1, 1, v16, v17, v18, v19);
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        v22 = OUTLINED_FUNCTION_15(v20);
        sub_1C716D668(v22, v21 + 1, 1, v23, v24, v25, v26);
      }

      *(v13 + 16) = v21 + 1;
      result = memcpy((v13 + (v21 << 7) + 32), (v0 + 16), 0x80uLL);
      v10 = v15;
      goto LABEL_4;
    }

    ++v10;
    v14 += 128;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 424) = v32;
  *v32 = v33;
  v32[1] = sub_1C7051F78;
  OUTLINED_FUNCTION_87_5();

  return FreeformStoryCurator.finalizeChapterCurations(storyChapters:)(v34, v35);
}

uint64_t sub_1C7051F78()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7052098()
{
  v88 = v0;
  v1 = *(v0 + 312);
  if (*(v0 + 320))
  {
    if (*(v0 + 320) == 1)
    {
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v2 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v2, qword_1EDD28B68);
      v3 = sub_1C754FEEC();
      v4 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v4))
      {
        v5 = OUTLINED_FUNCTION_23_1();
        *v5 = 134218240;
        *(v5 + 4) = v1;
        *(v5 + 12) = 2048;
        *(v5 + 14) = 0x3FE0000000000000;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v6, v7, v8, v9, v5, 0x16u);
        OUTLINED_FUNCTION_37();
      }

      v10 = 1;
      v1 = 3;
    }

    else
    {
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v32 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v32, qword_1EDD28B68);
      v33 = sub_1C754FEEC();
      v34 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v34))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_88_1();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        OUTLINED_FUNCTION_10_1();

        sub_1C7055178(v1, 2);
      }

      else
      {
      }

      v10 = 1;
      v1 = 4;
    }

LABEL_24:
    v41 = *(v0 + 368);
    v40 = *(v0 + 376);
    v42 = *(v0 + 360);
    OUTLINED_FUNCTION_70(*(v0 + 344), *(*(v0 + 344) + 24));
    OUTLINED_FUNCTION_112_1();
    sub_1C754F1AC();
    (*(v41 + 8))(v40, v42);

    OUTLINED_FUNCTION_82_0();

    return v43(v1, v10);
  }

  v11 = qword_1EDD09CF0;
  sub_1C75504FC();
  if (v11 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v12 = sub_1C754FF1C();
  __swift_project_value_buffer(v12, qword_1EDD28B68);
  v13 = sub_1C754FEEC();
  v14 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_66(v14))
  {
    v15 = OUTLINED_FUNCTION_127();
    *v15 = 0;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v16, v17, v18, v19, v15, 2u);
    OUTLINED_FUNCTION_37();
  }

  v20 = *(v0 + 336);

  v21 = *(v20 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  if (v21)
  {
    sub_1C75504FC();
    sub_1C716A8F0(0xD000000000000018, 0x80000001C759A770, v21, v1);
  }

  v22 = *(v0 + 432);
  sub_1C7047A98(v1, v85);
  if (!v22)
  {
    v45 = v85[0];
    v44 = v85[1];
    v46 = v85[2];
    v47 = v86;
    if (v87)
    {
      v48 = OUTLINED_FUNCTION_12_5();
      sub_1C7055178(v48, v49);
      v50 = OUTLINED_FUNCTION_11_13();
      sub_1C7055188(v50, v51, v52, v53);
      v54 = sub_1C754FEEC();
      v55 = sub_1C75511BC();
      v56 = OUTLINED_FUNCTION_11_13();
      sub_1C70551B0(v56, v57, v58, v59, 1);
      if (os_log_type_enabled(v54, v55))
      {
        v60 = OUTLINED_FUNCTION_41_0();
        v84 = OUTLINED_FUNCTION_102();
        *v60 = 138412290;
        sub_1C6FE0D14();
        OUTLINED_FUNCTION_9_10();
        swift_allocError();
        *v61 = v45;
        *(v61 + 8) = v44;
        *(v61 + 16) = v46;
        *(v61 + 24) = v47;
        v62 = OUTLINED_FUNCTION_11_13();
        sub_1C7055188(v62, v63, v64, v65);
        v66 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 4) = v66;
        *v84 = v66;
        _os_log_impl(&dword_1C6F5C000, v54, v55, "Failed generating chapters that match the criteria: %@.", v60, 0xCu);
        sub_1C6FB5FC8(v84, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v67 = OUTLINED_FUNCTION_12_5();
      sub_1C7055178(v67, v68);
      v10 = 1;
      v69 = OUTLINED_FUNCTION_11_13();
      sub_1C70551B0(v69, v70, v71, v72, 1);

      v1 = 2;
    }

    else
    {
      v73 = sub_1C754FEEC();
      v74 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v74))
      {
        v75 = OUTLINED_FUNCTION_127();
        *v75 = 0;
        _os_log_impl(&dword_1C6F5C000, v73, v74, "Successfully generated chapters that match the criteria, proceeding.", v75, 2u);
        OUTLINED_FUNCTION_109();

        v76 = OUTLINED_FUNCTION_11_13();
        sub_1C70551B0(v76, v77, v78, v79, 0);
        v80 = OUTLINED_FUNCTION_12_5();
        sub_1C7055178(v80, v81);
      }

      else
      {

        v82 = OUTLINED_FUNCTION_12_5();
        sub_1C7055178(v82, v83);
      }

      v10 = 0;
    }

    goto LABEL_24;
  }

  v23 = *(v0 + 344);
  v24 = OUTLINED_FUNCTION_12_5();
  sub_1C7055178(v24, v25);

  v26 = OUTLINED_FUNCTION_12_5();
  sub_1C7055178(v26, v27);
  OUTLINED_FUNCTION_10_3(v23);
  OUTLINED_FUNCTION_41_3();
  sub_1C754F1AC();
  v28 = OUTLINED_FUNCTION_15_1();
  v29(v28);

  OUTLINED_FUNCTION_6_0();

  return v30();
}

uint64_t sub_1C7052638()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();

  v0 = OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_0_22(v0, v1);
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_142();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C70526E8()
{
  OUTLINED_FUNCTION_42();
  v1[83] = v0;
  v1[82] = v2;
  v1[81] = v3;
  v1[80] = v4;
  v5 = sub_1C754DFFC();
  v1[84] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[85] = v6;
  v1[86] = OUTLINED_FUNCTION_77();
  v7 = type metadata accessor for PhotoAnalysisPhotoLibraryService(0);
  OUTLINED_FUNCTION_76(v7);
  v1[87] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754F38C();
  v1[88] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[89] = v9;
  v1[90] = OUTLINED_FUNCTION_77();
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C7052804()
{
  v185 = v0;
  v1 = v0;
  v2 = v0 + 608;
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = v3[3];
  OUTLINED_FUNCTION_141_1(v3, v5);
  OUTLINED_FUNCTION_132("FreeformStoryGenerator.chronologicalChapter", 43);
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = *(v4 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v172 = v1;
  __src = (v4 + 32);
  v169 = v8;
  for (i = v2; ; v2 = i)
  {
    *(v1 + 736) = v7;
    *(v1 + 728) = v9;
    if (v6 == v8)
    {
      v50 = *(v1 + 664);
      v9 = *(v50 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
      *(v1 + 744) = v9;
      v51 = sub_1C6FB6304();
      v2 = v50 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
      if (v51 < *(v50 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 48))
      {
        v16 = v51;
        if (qword_1EDD09CF0 != -1)
        {
          goto LABEL_100;
        }

        goto LABEL_57;
      }

      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v73 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v73, qword_1EDD28B68);
      v74 = sub_1C754FEEC();
      v75 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v75))
      {
        v76 = OUTLINED_FUNCTION_127();
        *v76 = 0;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v77, v78, v79, v80, v76, 2u);
LABEL_85:
        OUTLINED_FUNCTION_109();
      }

LABEL_87:

      v122 = *(v1 + 664);
      v123 = objc_autoreleasePoolPush();
      sub_1C70545E8(v122, v7, v184);
      v124 = v1;
      v125 = *(v1 + 744);
      v170 = v124[90];
      v173 = v124[89];
      v177 = v124[88];
      v182 = v124[87];
      v126 = v124[86];
      v127 = v124[85];
      v158 = v124[84];
      v164 = v124[91];
      __srca = v124[82];
      v128 = v124[80];

      objc_autoreleasePoolPop(v123);
      v161 = v184[0];
      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1C739D74C(ObjCClassFromMetadata);
      sub_1C71BA830(MEMORY[0x1E69E7CC0], v137, v138, v130, v131, v132, v133, v134, v135, v136, v153, v154, v155, v156, v158, v161, v164, __srca, v170, v173, v177, v182, v183, v184[0], v184[1], v184[2]);

      v139 = objc_allocWithZone(MEMORY[0x1E69788E0]);
      v140 = v125;
      OUTLINED_FUNCTION_5_10();
      sub_1C71C8A5C();
      v142 = v141;
      OUTLINED_FUNCTION_85_2();
      v143 = sub_1C75504DC();
      OUTLINED_FUNCTION_85_2();
      v144 = sub_1C75504DC();
      v145 = v142;
      OUTLINED_FUNCTION_81_5();
      sub_1C75504FC();
      v146 = v145;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C754DFEC();
      v147 = sub_1C754DF8C();
      v149 = v148;
      OUTLINED_FUNCTION_81_5();

      (*(v127 + 8))(v126, v159);
      *v128 = v147;
      *(v128 + 8) = v149;
      *(v128 + 16) = 0;
      *(v128 + 24) = 0xE000000000000000;
      *(v128 + 32) = 3;
      OUTLINED_FUNCTION_59_4();
      *(v128 + 40) = v165;
      *(v128 + 48) = v150;
      *(v128 + 56) = 0xEA00000000006E6FLL;
      *(v128 + 64) = v146;
      *(v128 + 72) = v143;
      *(v128 + 80) = v144;
      *(v128 + 88) = 0;
      *(v128 + 96) = 0;
      *(v128 + 104) = v162;
      *(v128 + 112) = 0;
      *(v128 + 120) = MEMORY[0x1E69E7CC8];
      OUTLINED_FUNCTION_70(__srcb, __srcb[3]);
      OUTLINED_FUNCTION_75();
      sub_1C754F1AC();
      (*(v174 + 8))(v171, v178);

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_130_0();

      __asm { BRAA            X1, X16 }
    }

    v175 = v6;
    memcpy((v1 + 16), &__src[128 * v6], 0x80uLL);
    if (*(v1 + 128))
    {
      sub_1C6FB7BB8(v1 + 16, v1 + 144);
      goto LABEL_36;
    }

    v10 = *(v1 + 120);
    sub_1C6FB7BB8(v1 + 16, v1 + 272);
    sub_1C6FBC70C(v10);
    if ([v10 fetchedObjects])
    {
      v11 = OUTLINED_FUNCTION_300();
      sub_1C6F65BE8(v11, &qword_1EDD0FA70, 0x1E6978630);
      v12 = sub_1C7550B5C();
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    if (v12 >> 62)
    {
      v13 = sub_1C75516BC();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v7 >> 62;
    if (v7 >> 62)
    {
      v15 = sub_1C75516BC();
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_93;
    }

    v160 = v13;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v14)
      {
        v17 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v18 >= v16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_1C75516BC();
      goto LABEL_19;
    }

    if (v14)
    {
      goto LABEL_18;
    }

LABEL_19:
    v7 = sub_1C75518CC();
    v17 = v7 & 0xFFFFFFFFFFFFFF8;
    v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_20:
    v19 = *(v17 + 16);
    v16 = v18 - v19;
    v20 = v17 + 8 * v19;
    v157 = v17;
    if (v12 >> 62)
    {
      v22 = sub_1C75516BC();
      if (!v22)
      {
LABEL_34:

        if (v160 > 0)
        {
          goto LABEL_94;
        }

        goto LABEL_35;
      }

      v23 = v22;
      v24 = sub_1C75516BC();
      if (v16 < v24)
      {
        goto LABEL_97;
      }

      if (v23 < 1)
      {
        goto LABEL_99;
      }

      v154 = v24;
      v155 = v10;
      v156 = v9;
      v179 = v7;
      sub_1C705575C(&qword_1EDD06A58, &unk_1EC215150, &qword_1C756AD90);
      for (j = 0; j != v23; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150, &qword_1C756AD90);
        v16 = sub_1C6FDD09C(v2, j, v12);
        v27 = *v26;
        (v16)(v2, 0);
        *(v20 + 32 + 8 * j) = v27;
      }

      v1 = v172;
      v7 = v179;
      v21 = v154;
    }

    else
    {
      v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_34;
      }

      if (v16 < v21)
      {
        goto LABEL_98;
      }

      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      swift_arrayInitWithCopy();
    }

    if (v21 < v160)
    {
      goto LABEL_94;
    }

    if (v21 > 0)
    {
      v28 = *(v157 + 16);
      v29 = __OFADD__(v28, v21);
      v30 = v28 + v21;
      if (v29)
      {
        goto LABEL_96;
      }

      *(v157 + 16) = v30;
    }

LABEL_35:
    sub_1C6FBC718(v10);
LABEL_36:
    v31 = *(v1 + 56);
    v32 = *(v31 + 16);
    v33 = v9[2];
    v16 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    sub_1C75504FC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v16 > v9[3] >> 1)
    {
      if (v33 <= v16)
      {
        v35 = v33 + v32;
      }

      else
      {
        v35 = v33;
      }

      sub_1C6FB25A8(isUniquelyReferenced_nonNull_native, v35, 1, v9);
      v9 = v36;
    }

    v180 = v7;
    if (*(v31 + 16))
    {
      if ((v9[3] >> 1) - v9[2] < v32)
      {
        goto LABEL_92;
      }

      swift_arrayInitWithCopy();

      v37 = v9[2];
      if (v32)
      {
        v29 = __OFADD__(v37, v32);
        v37 += v32;
        if (v29)
        {
          goto LABEL_95;
        }

        v9[2] = v37;
      }
    }

    else
    {

      if (v32)
      {
        goto LABEL_91;
      }

      v37 = v9[2];
    }

    v38 = v1;
    v39 = *(v1 + 64);
    v40 = v38[9];
    v41 = v38[10];
    v5 = v38[11];
    v42 = v38[12];
    v43 = v9[3];
    sub_1C75504FC();
    v44 = v41;
    sub_1C75504FC();
    sub_1C75504FC();
    if (v37 >= v43 >> 1)
    {
      OUTLINED_FUNCTION_146();
      sub_1C6FB25A8(v46, v47, v48, v9);
      v9 = v49;
    }

    v9[2] = v37 + 1;
    v45 = &v9[5 * v37];
    v45[4] = v39;
    v45[5] = v40;
    v45[6] = v44;
    v45[7] = v5;
    v45[8] = v42;
    v8 = v169;
    v1 = v172;
    sub_1C6FBC664(v172 + 16);
    v6 = v175 + 1;
    v7 = v180;
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
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
LABEL_100:
  OUTLINED_FUNCTION_0_23();
  swift_once();
LABEL_57:
  v52 = sub_1C754FF1C();
  *(v1 + 752) = __swift_project_value_buffer(v52, qword_1EDD28B68);
  v53 = sub_1C754FEEC();
  v54 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v54))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_91();
    _os_log_impl(v55, v56, v57, v58, v59, 2u);
    OUTLINED_FUNCTION_37();
  }

  v60 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
LABEL_73:
    *(v1 + 760) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168, &qword_1C755C700);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1C75604F0;
    *(v81 + 32) = sub_1C755068C();
    *(v81 + 40) = v82;
    v83 = *(v2 + 40);
    *(v81 + 72) = MEMORY[0x1E69E6530];
    *(v81 + 48) = v83;
    *(v81 + 80) = sub_1C755068C();
    *(v81 + 88) = v84;
    *(v81 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215170, &qword_1C755C708);
    *(v81 + 96) = v60;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
    v85 = v1;
    v1 = sub_1C75504DC();
    v85[96] = v1;
    v86 = [v9 photoAnalysisClient];
    v9 = v85;
    v85[97] = v86;
    if (v86)
    {
      v87 = v86;
      v88 = objc_allocWithZone(MEMORY[0x1E69BE630]);
      v61 = v87;
      v54 = [v88 initWithServiceProvider_];
      if (qword_1EC213F98 != -1)
      {
        goto LABEL_102;
      }

      goto LABEL_75;
    }

    v74 = sub_1C754FEEC();
    v116 = sub_1C755119C();
    if (OUTLINED_FUNCTION_66(v116))
    {
      v117 = OUTLINED_FUNCTION_127();
      *v117 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v118, v119, v120, v121, v117, 2u);
      v1 = v85;
      goto LABEL_85;
    }

    v1 = v85;
    goto LABEL_87;
  }

  v184[0] = MEMORY[0x1E69E7CC0];
  v61 = v184;
  sub_1C716C9F0(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v176 = v9;
    v181 = v52;
    v62 = 0;
    v60 = v184[0];
    v63 = v7 & 0xC000000000000001;
    v64 = v7;
    do
    {
      if (v63)
      {
        v65 = MEMORY[0x1CCA5DDD0](v62, v7);
      }

      else
      {
        v65 = *(v7 + 8 * v62 + 32);
      }

      v66 = v65;
      v67 = sub_1C70CAC04(v65);
      v69 = v68;

      v184[0] = v60;
      v71 = *(v60 + 16);
      v70 = *(v60 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1C716C9F0(v70 > 1, v71 + 1, 1);
        v60 = v184[0];
      }

      ++v62;
      *(v60 + 16) = v71 + 1;
      v72 = v60 + 16 * v71;
      *(v72 + 32) = v67;
      *(v72 + 40) = v69;
      v7 = v64;
    }

    while (v16 != v62);
    v1 = v172;
    v9 = v176;
    v52 = v181;
    goto LABEL_73;
  }

  __break(1u);
LABEL_102:
  swift_once();
LABEL_75:
  v89 = v9[87];
  __swift_project_value_buffer(v52, qword_1EC219F58);
  OUTLINED_FUNCTION_62_2();
  (*(v90 + 16))(v89);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
  v92 = (v89 + *(v91 + 28));
  v93 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v94 = [v93 processName];

  v95 = sub_1C755068C();
  v97 = v96;

  *v92 = v95;
  v92[1] = v97;
  *(v89 + *(v91 + 32)) = v54;
  v98 = MEMORY[0x1E69E7CC0];
  v99 = v169;
  if (v169)
  {
    v184[0] = MEMORY[0x1E69E7CC0];
    sub_1C716D9B8(0, v169, 0);
    v98 = v184[0];
    v100 = __src;
    do
    {
      memcpy(v9 + 50, v100, 0x68uLL);
      sub_1C6FC061C((v9 + 50), (v9 + 63));
      v184[0] = v98;
      v102 = *(v98 + 16);
      v101 = *(v98 + 24);
      if (v102 >= v101 >> 1)
      {
        v103 = OUTLINED_FUNCTION_15(v101);
        sub_1C716D9B8(v103, v102 + 1, 1);
        v98 = v184[0];
      }

      *(v98 + 16) = v102 + 1;
      memcpy((v98 + 104 * v102 + 32), v9 + 50, 0x68uLL);
      v100 += 128;
      --v99;
    }

    while (v99);
  }

  v9[98] = sub_1C70541E8(v98);

  v104 = sub_1C75504FC();
  v105 = sub_1C71CD90C(v104);
  v9[99] = v105;
  v106 = swift_task_alloc();
  v9[100] = v106;
  *(v106 + 16) = v105;
  *(v106 + 24) = v1;
  v107 = swift_task_alloc();
  v9[101] = v107;
  *v107 = v9;
  v107[1] = sub_1C7053600;
  OUTLINED_FUNCTION_61_3(0x4164657461727563);
  OUTLINED_FUNCTION_130_0();

  return sub_1C729961C(v108, v109, v110, v111, v112, v113);
}

uint64_t sub_1C7053600()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 816) = v5;
  *(v3 + 824) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C705370C()
{
  v102 = v0;
  v1 = v0[102];

  if (*(v1 + 16))
  {

    sub_1C75504FC();
    v2 = sub_1C754FEEC();
    v3 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v3))
    {
      v4 = OUTLINED_FUNCTION_41_0();
      *v4 = 134217984;
      *(v4 + 4) = *(v1 + 16);

      OUTLINED_FUNCTION_91();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    v16 = 0;
    v17 = v0[102];
    v97 = v0;
    v18 = v0[98];
    v101[0] = MEMORY[0x1E69E7CC0];
    v19 = *(v1 + 16);
    v94 = v17 + 32;
    v20 = v17 + 40;
    v87 = MEMORY[0x1E69E7CC0];
    v90 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v21 = v20 + 16 * v16;
    while (v19 != v16)
    {
      if (v16 >= *(v1 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      if (*(v18 + 16))
      {
        sub_1C75504FC();
        v22 = OUTLINED_FUNCTION_112_1();
        v24 = sub_1C6F78124(v22, v23);
        if (v25)
        {
          v26 = *(*(v18 + 56) + 8 * v24);

          MEMORY[0x1CCA5D040](v27);
          v28 = *((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v28 >> 1)
          {
            OUTLINED_FUNCTION_15(v28);
            sub_1C7550B9C();
          }

          ++v16;
          OUTLINED_FUNCTION_154();
          sub_1C7550BEC();
          v87 = v101[0];
          goto LABEL_9;
        }
      }

      v21 += 16;
      ++v16;
    }

    v91 = v18;
    sub_1C706D7E0();
    v30 = v29;
    v31 = 0;
    v100 = MEMORY[0x1E69E7CC0];
    v32 = v29 + 56;
    while (1)
    {
      if (v31 == v19)
      {
        v0 = v97;

        OUTLINED_FUNCTION_7_12();
        sub_1C7055128();
        v15 = v87;
        goto LABEL_41;
      }

      if (v31 >= *(v1 + 16))
      {
        goto LABEL_49;
      }

      v33 = (v94 + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      ++v31;
      if (!*(v30 + 16))
      {
        break;
      }

      sub_1C7551F3C();
      sub_1C7551F5C();
      sub_1C75504FC();
      sub_1C75505AC();
      v36 = sub_1C7551FAC();
      v37 = -1 << *(v30 + 32);
      v38 = v36 & ~v37;
      if ((*(v32 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
      {
        v39 = ~v37;
        v40 = *(v30 + 48);
        while (1)
        {
          v41 = (v40 + 16 * v38);
          v42 = v41[1];
          if (v42)
          {
            v43 = *v41 == v35 && v42 == v34;
            if (v43 || (sub_1C7551DBC() & 1) != 0)
            {
              break;
            }
          }

          v38 = (v38 + 1) & v39;
          if (((*(v32 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_36:
      }

      else
      {
LABEL_34:
        if (!*(v91 + 16))
        {
          goto LABEL_36;
        }

        v44 = sub_1C6F78124(v35, v34);
        if ((v45 & 1) == 0)
        {
          goto LABEL_36;
        }

        v46 = *(*(v91 + 56) + 8 * v44);

        MEMORY[0x1CCA5D040](v47);
        v48 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v48 >> 1)
        {
          OUTLINED_FUNCTION_15(v48);
          sub_1C7550B9C();
        }

        OUTLINED_FUNCTION_55();
        sub_1C7550BEC();
        v90 = v100;
      }
    }

    sub_1C75504FC();
    goto LABEL_34;
  }

  v10 = sub_1C754FEEC();
  v11 = sub_1C755119C();
  if (OUTLINED_FUNCTION_128(v11))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v12, v13, "Re-curation unexpectedly returned 0 assets.");
    OUTLINED_FUNCTION_109();
  }

  v14 = v0[97];

  OUTLINED_FUNCTION_7_12();
  sub_1C7055128();
  v15 = v0[92];
  v90 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v49 = v0[103];
  v50 = v0[83];
  v51 = objc_autoreleasePoolPush();
  sub_1C70545E8(v50, v15, v101);
  if (v49)
  {

    objc_autoreleasePoolPop(v51);
  }

  else
  {
    v52 = v0[93];
    v88 = v0[90];
    v92 = v0[89];
    v95 = v0[88];
    v98 = v0[87];
    v53 = v0[86];
    v54 = v0[85];
    OUTLINED_FUNCTION_125_3();
    v55 = v0[80];

    objc_autoreleasePoolPop(v51);
    v81 = v101[0];
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1C739D74C(ObjCClassFromMetadata);
    sub_1C71BA830(v90, v64, v65, v57, v58, v59, v60, v61, v62, v63, v79, v81, v83, v85, v88, v90, v92, v95, v98, v99, v100, v101[0], v101[1], v101[2], v101[3], v101[4]);

    v66 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v67 = v52;
    OUTLINED_FUNCTION_5_10();
    sub_1C71C8A5C();
    v69 = v68;
    OUTLINED_FUNCTION_15_1();
    v70 = sub_1C75504DC();
    OUTLINED_FUNCTION_15_1();
    v71 = sub_1C75504DC();
    v72 = v69;
    OUTLINED_FUNCTION_81_5();
    sub_1C75504FC();
    v73 = v72;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C754DFEC();
    v74 = sub_1C754DF8C();
    v76 = v75;
    OUTLINED_FUNCTION_81_5();

    (*(v54 + 8))(v53, v80);
    *v55 = v74;
    *(v55 + 8) = v76;
    *(v55 + 16) = 0;
    *(v55 + 24) = 0xE000000000000000;
    *(v55 + 32) = 3;
    OUTLINED_FUNCTION_59_4();
    *(v55 + 40) = v84;
    *(v55 + 48) = v77;
    *(v55 + 56) = 0xEA00000000006E6FLL;
    *(v55 + 64) = v73;
    *(v55 + 72) = v70;
    *(v55 + 80) = v71;
    *(v55 + 88) = 0;
    *(v55 + 96) = 0;
    *(v55 + 104) = v82;
    *(v55 + 112) = 0;
    *(v55 + 120) = MEMORY[0x1E69E7CC8];
    OUTLINED_FUNCTION_10_3(v86);
    OUTLINED_FUNCTION_113_3();
    sub_1C754F1AC();
    (*(v93 + 8))(v89, v96);

    OUTLINED_FUNCTION_43();

    v78();
  }
}

uint64_t sub_1C7053E00()
{
  v64 = v0;
  v1 = v0[103];

  v2 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[103];
    v6 = OUTLINED_FUNCTION_41_0();
    v7 = OUTLINED_FUNCTION_102();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_91();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1C6FB5FC8(v7, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  v15 = v0[103];
  v16 = v0[97];

  OUTLINED_FUNCTION_7_12();
  sub_1C7055128();
  v17 = v0[92];
  v18 = v0[83];
  v19 = objc_autoreleasePoolPush();
  sub_1C70545E8(v18, v17, v63);
  v20 = v0[93];
  v56 = v0[90];
  v58 = v0[89];
  v60 = v0[88];
  v62 = v0[87];
  v21 = v0[86];
  v22 = v0[85];
  OUTLINED_FUNCTION_125_3();
  v23 = v0[80];

  objc_autoreleasePoolPop(v19);
  v50 = v63[0];
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1C739D74C(ObjCClassFromMetadata);
  sub_1C71BA830(MEMORY[0x1E69E7CC0], v32, v33, v25, v26, v27, v28, v29, v30, v31, v48, v50, v52, v54, v56, v58, v60, v62, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7]);

  v34 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v35 = v20;
  OUTLINED_FUNCTION_5_10();
  sub_1C71C8A5C();
  v37 = v36;
  OUTLINED_FUNCTION_85_2();
  v38 = sub_1C75504DC();
  OUTLINED_FUNCTION_85_2();
  v39 = sub_1C75504DC();
  v40 = v37;
  OUTLINED_FUNCTION_81_5();
  sub_1C75504FC();
  v41 = v40;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C754DFEC();
  v42 = sub_1C754DF8C();
  v44 = v43;
  OUTLINED_FUNCTION_81_5();

  (*(v22 + 8))(v21, v49);
  *v23 = v42;
  *(v23 + 8) = v44;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0xE000000000000000;
  *(v23 + 32) = 3;
  OUTLINED_FUNCTION_59_4();
  *(v23 + 40) = v53;
  *(v23 + 48) = v45;
  *(v23 + 56) = 0xEA00000000006E6FLL;
  *(v23 + 64) = v41;
  *(v23 + 72) = v38;
  *(v23 + 80) = v39;
  *(v23 + 88) = 0;
  *(v23 + 96) = 0;
  *(v23 + 104) = v51;
  *(v23 + 112) = 0;
  *(v23 + 120) = MEMORY[0x1E69E7CC8];
  OUTLINED_FUNCTION_70(v55, v55[3]);
  OUTLINED_FUNCTION_154();
  sub_1C754F1AC();
  (*(v59 + 8))(v57, v61);

  OUTLINED_FUNCTION_43();

  return v46();
}

void *sub_1C70541E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x1E69E7CC8];
    v34 = a1 + 32;
    v35 = *(a1 + 16);
    while (1)
    {
      v5 = v3 + 104 * v2;
      v6 = *(v5 + 40);
      v39 = *(v6 + 16);
      if (v39)
      {
        v37 = v2;
        v7 = *(v5 + 64);
        v40 = v6 + 32;
        sub_1C75504FC();
        swift_bridgeObjectRetain_n();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v36 = v7;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v8 = 0;
        v38 = v6;
        while (2)
        {
          if (v8 >= *(v6 + 16))
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            result = sub_1C7551E4C();
            __break(1u);
            return result;
          }

          v9 = *(v40 + 40 * v8 + 16);
          sub_1C75504FC();
          v10 = v9;
          sub_1C75504FC();
          sub_1C75504FC();
          v41 = v10;
          if ([v10 fetchedObjects])
          {
            v11 = OUTLINED_FUNCTION_300();
            sub_1C6F65BE8(v11, &qword_1EDD0FA70, 0x1E6978630);
            v12 = sub_1C7550B5C();
          }

          else
          {
            v12 = MEMORY[0x1E69E7CC0];
          }

          v42 = v8 + 1;
          v13 = 0;
          v43 = sub_1C6FB6304();
          while (v43 != v13)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1CCA5DDD0](v13, v12);
            }

            else
            {
              if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v14 = *(v12 + 8 * v13 + 32);
            }

            if (__OFADD__(v13, 1))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            v15 = v14;
            v16 = sub_1C6FCA214(v15);
            if (!v17)
            {
              goto LABEL_37;
            }

            v18 = v16;
            v19 = v17;
            v20 = v15;
            swift_isUniquelyReferenced_nonNull_native();
            v21 = sub_1C6F78124(v18, v19);
            if (__OFADD__(v4[2], (v22 & 1) == 0))
            {
              goto LABEL_34;
            }

            v23 = v21;
            v24 = v22;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215188, &unk_1C755C720);
            if (sub_1C7551A2C())
            {
              v25 = sub_1C6F78124(v18, v19);
              if ((v24 & 1) != (v26 & 1))
              {
                goto LABEL_38;
              }

              v23 = v25;
            }

            if (v24)
            {

              v27 = v4[7];
              v28 = *(v27 + 8 * v23);
              *(v27 + 8 * v23) = v20;
            }

            else
            {
              v4[(v23 >> 6) + 8] |= 1 << v23;
              v29 = (v4[6] + 16 * v23);
              *v29 = v18;
              v29[1] = v19;
              *(v4[7] + 8 * v23) = v20;

              v30 = v4[2];
              v31 = __OFADD__(v30, 1);
              v32 = v30 + 1;
              if (v31)
              {
                goto LABEL_35;
              }

              v4[2] = v32;
            }

            ++v13;
          }

          v6 = v38;
          ++v8;
          if (v42 != v39)
          {
            continue;
          }

          break;
        }

        swift_bridgeObjectRelease_n();

        v3 = v34;
        v1 = v35;
        v2 = v37;
      }

      if (++v2 == v1)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1C70545E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
  v6 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);

  v7 = [v6 librarySpecificFetchOptions];
  [v7 setSharingFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C7564A90;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v8 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 1);
  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v8 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  sub_1C71F8834(v8, v7);
  v11 = sub_1C6FB6304();
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = v11;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C716D6A4(0, v11 & ~(v11 >> 63), 0);
    if (v13 < 0)
    {
      goto LABEL_17;
    }

    v23 = a3;
    v14 = 0;
    v12 = v26;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1CCA5DDD0](v14, a2);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
LABEL_18:
          sub_1C7551AAC();
          __break(1u);
          return;
        }

        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v15 = *(a2 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 objectID];
      v25 = sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);

      *&v24 = v17;
      v26 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C716D6A4(v18 > 1, v19 + 1, 1);
        v12 = v26;
      }

      ++v14;
      *(v12 + 16) = v19 + 1;
      sub_1C6F9ED18(&v24, (v12 + 32 * v19 + 32));
      if (v13 == v14)
      {
        a3 = v23;
        break;
      }
    }
  }

  v20 = objc_opt_self();
  v21 = sub_1C740A230(v12, v7, v20);
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = v21;

  *a3 = v22;
}

uint64_t sub_1C70548E8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
  v7 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 8);
  if (v5 >= v7)
  {
    v13 = 0;
    v14 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 64);
    v18 = (v15 + 63) >> 6;
    do
    {
      if (!v17)
      {
        while (1)
        {
          v19 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          if (v19 >= v18)
          {
            break;
          }

          ++v13;
          if (*(v14 + 8 * v19))
          {
            goto LABEL_10;
          }
        }

        v36 = 0;
        v37 = 0;
        v38 = 1 << *(a1 + 32);
        v39 = -1;
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        v40 = v39 & *(a1 + 64);
        v41 = (v38 + 63) >> 6;
        do
        {
          if (!v40)
          {
            do
            {
              v42 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                goto LABEL_34;
              }

              if (v42 >= v41)
              {
                goto LABEL_24;
              }

              ++v36;
            }

            while (!*(v14 + 8 * v42));
          }

          OUTLINED_FUNCTION_109_2();
          v45 = *(*(*(a1 + 56) + ((v43 << 9) | (8 * v44))) + 16);
          v46 = __OFADD__(v37, v45);
          v37 += v45;
        }

        while (!v46);
        __break(1u);
LABEL_24:
        if (a2)
        {
          sub_1C755180C();

          v51[0] = 0xD000000000000020;
          v51[1] = 0x80000001C759A8F0;
          v47 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v47);

          sub_1C7161CDC(0xD000000000000020, 0x80000001C759A8F0);
        }

        v48 = *(v6 + 24);
        if (v37 < v48)
        {
          sub_1C6FE0D14();
          OUTLINED_FUNCTION_9_10();
          v9 = swift_allocError();
          *v8 = v37;
          *(v8 + 8) = v48;
          *(v8 + 16) = 0;
          v10 = 4;
          goto LABEL_28;
        }

        return 0;
      }

LABEL_10:
      OUTLINED_FUNCTION_109_2();
      v22 = v21 | (v20 << 6);
      v3 = *(*(*(a1 + 56) + 8 * v22) + 16);
      v4 = *(v6 + 16);
    }

    while (v3 >= v4);
    v23 = (*(a1 + 48) + 16 * v22);
    v6 = *v23;
    a2 = v23[1];
    v24 = qword_1EDD09CF0;
    sub_1C75504FC();
    sub_1C75504FC();
    if (v24 != -1)
    {
LABEL_35:
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v25 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v25, qword_1EDD28B68);
    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_20_1();
      v29 = OUTLINED_FUNCTION_20_1();
      v51[0] = v29;
      *v28 = 136315650;
      v30 = sub_1C6F765A4(v6, a2, v51);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v3;
      *(v28 + 22) = 2048;
      *(v28 + 24) = v4;
      OUTLINED_FUNCTION_88_1();
      _os_log_impl(v31, v32, v33, v34, v35, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    *v50 = v3;
    *(v50 + 8) = v4;
    *(v50 + 16) = 0;
    *(v50 + 24) = 3;
  }

  else
  {
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    v10 = 2;
LABEL_28:
    *(v8 + 24) = v10;
  }

  return v9;
}

uint64_t sub_1C7054CAC(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v43, a2, sizeof(v43));
  v10 = a2[26];
  memcpy(v42, a2 + 27, sizeof(v42));
  swift_storeEnumTagMultiPayload();
  v28[2] = v9;
  sub_1C75504FC();
  v11 = sub_1C706CC1C(sub_1C7055510, v28, v10);
  OUTLINED_FUNCTION_48_7();
  sub_1C7055128();
  v12 = *(v11 + 2);

  v13 = v12 < 2;
  v14 = objc_opt_self();
  [v14 chapterValidatorMatchingRatioThresholdPerShotForFocusedChapters];
  v16 = v15;
  [v14 chapterValidatorMinimumRatioOfMatchingShotsForFocusedChapters];
  v18 = v17;
  v19 = [v14 chapterValidatorMinimumNumberOfMatchingShotsForFocusedChapters];
  [v14 chapterValidatorMinimumRatioOfNonoverlappingAssetsForDistinctShot];
  v21 = v20;
  v22 = [v14 chapterValidatorMinimumNumberOfRetrievedFilteredAssetPerChapter];
  [v14 chapterValidatorMinimumCoverageOfStoryAssetsInFinalChapters];
  v32[0] = v13;
  v32[1] = v13;
  v32[2] = 0;
  v33 = 2;
  v34 = v16;
  v35 = v18;
  v36 = v19;
  v37 = 0;
  v38 = 0x3FE0000000000000;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v24 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
  v25 = type metadata accessor for FreeformStoryChapterValidator(0);
  OUTLINED_FUNCTION_137(v25);

  sub_1C70B0168(v32, v24, a3);
  memcpy(v29, v43, sizeof(v29));
  v30 = v10;
  memcpy(v31, v42, sizeof(v31));
  v26 = sub_1C70AF904(a1, v29);

  return v26;
}

unint64_t sub_1C7054F1C()
{
  result = qword_1EDD06CE8[0];
  if (!qword_1EDD06CE8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Random.Arc4Random, &type metadata for Random.Arc4Random, v0, v1);
    atomic_store(result, qword_1EDD06CE8);
  }

  return result;
}

uint64_t sub_1C7054F70(uint64_t a1)
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  *v2 = v3;
  v2[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_142();

  return sub_1C704F3EC(v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1C705501C()
{
  result = qword_1EC216568;
  if (!qword_1EC216568)
  {
    result = swift_getWitnessTable(byte_1C7564B24, &_s27MontageChapterCurationErrorON, v0, v1);
    atomic_store(result, &qword_1EC216568);
  }

  return result;
}

uint64_t sub_1C7055070(uint64_t a1)
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  *v2 = v3;
  v2[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_142();

  return sub_1C72A2C40(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C7055128()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C7055178(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

id sub_1C7055188(id result, id a2, uint64_t a3, char a4)
{
  if (a4 == 11)
  {
    return result;
  }

  if (a4 == 10 || !a4)
  {
    return sub_1C75504FC();
  }

  return result;
}

void sub_1C70551B0(void *result, id a2, uint64_t a3, char a4, char a5)
{
  if (a5)
  {
    sub_1C70551BC(result, a2, a3, a4);
  }
}

void sub_1C70551BC(void *a1, id a2, uint64_t a3, char a4)
{
  if (a4 == 11)
  {
  }

  else if (a4 == 10 || !a4)
  {
  }
}

uint64_t sub_1C7055204()
{
  OUTLINED_FUNCTION_115_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_44();

  return sub_1C70510D4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7055334()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  *v2 = v3;
  v2[1] = sub_1C6F739D4;
  v4 = OUTLINED_FUNCTION_119_3();

  return sub_1C70519BC(v4, v0);
}

id sub_1C70553C8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1C70553D8();
  }

  else
  {
    return a1;
  }
}

void sub_1C70553E0(void *a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    sub_1C70553F0();
  }

  else
  {
  }
}

unint64_t sub_1C70553F8()
{
  result = qword_1EC216580;
  if (!qword_1EC216580)
  {
    result = swift_getWitnessTable(aI_27, &type metadata for FreeformStoryChapterCurator.Error, v0, v1);
    atomic_store(result, &qword_1EC216580);
  }

  return result;
}

uint64_t sub_1C705544C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C70554BC()
{
  result = qword_1EDD08190;
  if (!qword_1EDD08190)
  {
    result = swift_getWitnessTable(byte_1C75688E8, &type metadata for FreeformStoryChapterValidator.Error, v0, v1);
    atomic_store(result, &qword_1EDD08190);
  }

  return result;
}

uint64_t sub_1C7055530()
{
  OUTLINED_FUNCTION_115_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_44();

  return sub_1C704F7A0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C70555F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C705575C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v5 = OUTLINED_FUNCTION_63();
    result = swift_getWitnessTable(v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C70557A0()
{
  OUTLINED_FUNCTION_115_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_87_5();

  return sub_1C7050650(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7055874(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_62_2();
  (*v3)(a2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_53_8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C705575C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_54_7()
{
}

double OUTLINED_FUNCTION_92_4()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_103_4(uint64_t a1)
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_105_4()
{
}

uint64_t OUTLINED_FUNCTION_107_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_114_3()
{
  v0[397] = v0[160];
  result = v0[161];
  v0[398] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_134_1(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a2 = 2;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_136_1(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  return v2;
}

void OUTLINED_FUNCTION_138_2(uint64_t a1)
{

  sub_1C7161CDC(a1, v1);
}

void *OUTLINED_FUNCTION_139_1(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x130uLL);
}

uint64_t sub_1C7055CDC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD09AE0);
  __swift_project_value_buffer(v0, qword_1EDD09AE0);
  return sub_1C754FEFC();
}

uint64_t PersonalTraitGenerator.__allocating_init(configuration:storyPhotoLibraryContext:)(const void *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = a2[2];
  memcpy((v4 + 16), a1, 0xD8uLL);
  *(v4 + 232) = v5;
  *(v4 + 240) = v6;
  *(v4 + 248) = v7;
  return v4;
}

uint64_t PersonalTraitGenerator.init(configuration:storyPhotoLibraryContext:)(void *__src, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = a2[2];
  memcpy((v2 + 16), __src, 0xD8uLL);
  *(v2 + 232) = v3;
  *(v2 + 240) = v4;
  *(v2 + 248) = v5;
  return v2;
}

uint64_t PersonalTraitGenerator.generate(from:assetUUIDs:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[15] = v4;
  v1[16] = v0;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v8 = sub_1C754F38C();
  v1[17] = v8;
  v1[18] = *(v8 - 8);
  v1[19] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x50uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7055EFC()
{
  __swift_project_boxed_opaque_existential_1(v0[14], *(v0[14] + 24));
  sub_1C754F1CC();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[20] = v1;
  *v1 = v2;
  v1[1] = sub_1C7055FDC;
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];

  return sub_1C7056238(v6, v0 + 2, v4, v5, v3);
}

uint64_t sub_1C7055FDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70560D8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  OUTLINED_FUNCTION_70(*(v0 + 112), *(*(v0 + 112) + 24));
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7056188()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  OUTLINED_FUNCTION_70(*(v0 + 112), *(*(v0 + 112) + 24));
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7056238(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[429] = v5;
  v6[428] = a5;
  v6[427] = a4;
  v6[426] = a3;
  v6[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v6[430] = swift_task_alloc();
  v8 = sub_1C754F2FC();
  v6[431] = v8;
  v6[432] = *(v8 - 8);
  v6[433] = swift_task_alloc();
  v6[434] = swift_task_alloc();
  v6[435] = swift_task_alloc();
  v6[436] = swift_task_alloc();
  v6[437] = swift_task_alloc();
  memcpy(v6 + 390, a2, 0x50uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C7056384, 0, 0);
}

uint64_t sub_1C7056384(uint64_t a1)
{
  v64 = v1;
  sub_1C754F2CC();
  v2 = *(v1 + 3448);
  v58 = *(v1 + 3440);
  v3 = *(v1 + 3432);
  v4 = *(v1 + 3416);
  v60 = *(v1 + 3408);
  sub_1C754F2BC();
  sub_1C754F2BC();
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C754F17C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  v5 = swift_allocBox();
  v7 = v6;
  *(v1 + 3504) = v5;
  sub_1C754F29C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v2);
  v8 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v8);
  sub_1C6FB5E28(v1 + 3240, v1 + 3280);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v3;
  memcpy(v9 + 6, (v1 + 3120), 0x50uLL);
  v9[16] = v60;
  sub_1C6FD80E4((v1 + 3280), (v9 + 17));

  sub_1C7027A20(v1 + 3120, v1 + 3040);
  sub_1C75504FC();
  sub_1C7293D80(0, 0, v58, &unk_1C7564D48, v9);
  *(v1 + 3512) = v10;
  type metadata accessor for LibraryUnderstandingAvailabilityMonitor();
  memcpy((v1 + 16), (v3 + 16), 0xD8uLL);
  memcpy((v1 + 448), (v3 + 16), 0xD8uLL);
  sub_1C70592B4(v1 + 16, v1 + 664);
  static LibraryUnderstandingAvailabilityMonitor.isAvailableForPersonalTraits(configuration:)(v1 + 448, (v1 + 3384));
  memcpy((v1 + 1096), (v1 + 448), 0xD8uLL);
  sub_1C7059364(v1 + 1096);
  v11 = *(v1 + 3384);
  *(v1 + 3376) = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    if (qword_1EDD09AD8 != -1)
    {
      OUTLINED_FUNCTION_1_25(&qword_1EDD09AD8);
    }

    v12 = sub_1C754FF1C();
    __swift_project_value_buffer(v12, qword_1EDD09AE0);
    sub_1C75504FC();
    v13 = sub_1C754FEEC();
    v14 = sub_1C75511BC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v61 = v5;
      *v15 = 136315138;
      sub_1C705968C();
      v16 = sub_1C7550F9C();
      v18 = v17;

      v19 = sub_1C6F765A4(v16, v18, &v61);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1C6F5C000, v13, v14, "Library Understanding for Personal Trait is not available for the following reasons: %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    if (qword_1EDD09AD8 != -1)
    {
      OUTLINED_FUNCTION_1_25(&qword_1EDD09AD8);
    }

    __swift_project_value_buffer(v12, qword_1EDD09AE0);
    sub_1C754FEEC();
    v40 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v40))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v41, v42, "Using the Entity Net data source for Personal Traits in addition to the graph");
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_18_9();
    v43 = v5[29];
    type metadata accessor for PersonalTraitGenerator.VUAssetSampler();
    swift_allocObject();
    sub_1C75504FC();
    v44 = sub_1C7499708(v12, v43);
    OUTLINED_FUNCTION_27_10(v44);
    memcpy((v1 + 1744), v5 + 2, 0xD8uLL);
    OUTLINED_FUNCTION_15_16();
    swift_allocObject();
    *(v1 + 3576) = PersonalTraitEntityNetDataSource.init(configuration:storyPhotoLibraryContext:)((v1 + 1744), (v1 + 3320));
    OUTLINED_FUNCTION_8_12();
    sub_1C70596E0(v45, v46, protocol conformance descriptor for PersonalTraitGenerator.VUAssetSampler);
    v47 = OUTLINED_FUNCTION_21_14();
    v48(v47);
    sub_1C70592B4(v1 + 1528, v1 + 1960);
    v49 = &unk_1EDD09000;

    v50 = swift_task_alloc();
    *(v1 + 3584) = v50;
    *v50 = v1;
    OUTLINED_FUNCTION_4_14(v50);
    OUTLINED_FUNCTION_25_7();

    return PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(assetSampler:eventRecorder:progressReporter:)(v51, v52, v53, v54);
  }

  else
  {
    if (qword_1EDD09AD8 != -1)
    {
      OUTLINED_FUNCTION_1_25(&qword_1EDD09AD8);
    }

    v20 = sub_1C754FF1C();
    *(v1 + 3520) = __swift_project_value_buffer(v20, qword_1EDD09AE0);
    v21 = sub_1C754FEEC();
    v22 = sub_1C75511BC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_127();
      *v23 = 0;
      _os_log_impl(&dword_1C6F5C000, v21, v22, "Using the Library Understanding data source for Personal Traits in addition to the graph", v23, 2u);
      OUTLINED_FUNCTION_109();
    }

    v59 = *(v1 + 3472);
    v24 = *(v1 + 3456);
    v56 = *(v1 + 3480);
    v57 = *(v1 + 3448);
    v25 = *(v1 + 3432);
    v26 = *(v1 + 3416);

    v27 = *(v25 + 240);
    v28 = *(v25 + 248);
    v61 = *(v25 + 232);
    v62 = v27;
    v63 = v28;
    type metadata accessor for PersonalTraitGenerator.MomentSampler();
    swift_allocObject();
    sub_1C75504FC();
    v29 = v61;

    v30 = OUTLINED_FUNCTION_15_1();
    *(v1 + 3528) = sub_1C749B0EC(v30, v31, 0, v32);
    OUTLINED_FUNCTION_70(v26, v4[3]);
    sub_1C754F17C();
    sub_1C754F29C();
    OUTLINED_FUNCTION_26_9((v1 + 2824));
    OUTLINED_FUNCTION_26_9((v1 + 1312));
    v33 = *(v25 + 232);
    v34 = *(v25 + 240);
    v35 = *(v25 + 248);
    *(v1 + 3344) = v33;
    *(v1 + 3352) = v34;
    *(v1 + 3360) = v35;
    type metadata accessor for PersonalTraitLibraryUnderstandingDataSource();
    swift_allocObject();
    sub_1C70592B4(v1 + 2824, v1 + 232);
    v36 = v33;

    *(v1 + 3536) = PersonalTraitLibraryUnderstandingDataSource.init(configuration:storyPhotoLibraryContext:)((v1 + 1312), (v1 + 3344));
    sub_1C70596E0(&qword_1EC2165D0, type metadata accessor for PersonalTraitGenerator.MomentSampler, protocol conformance descriptor for PersonalTraitGenerator.MomentSampler);
    (*(v24 + 32))(v59, v56, v57);

    v37 = swift_task_alloc();
    *(v1 + 3544) = v37;
    *v37 = v1;
    v37[1] = sub_1C7056C8C;
    OUTLINED_FUNCTION_25_7();

    return PersonalTraitLibraryUnderstandingDataSource.generatePersonalTraits(assetSampler:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C7056C8C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 3552) = v1;

  if (!v1)
  {
    *(v4 + 3560) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7056DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  sub_1C6FD2904(v10[445]);

  __swift_destroy_boxed_opaque_existential_1(v10 + 400);
  v11 = OUTLINED_FUNCTION_15_1();
  v12(v11);
  v13 = v10[444];
  sub_1C754F2CC();
  if (v13)
  {
    OUTLINED_FUNCTION_17_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8, &qword_1C7564C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1(v10 + 405);

    v14 = OUTLINED_FUNCTION_15_1();
    v15(v14);
    OUTLINED_FUNCTION_24_13();
    v16 = OUTLINED_FUNCTION_0_24();
    v17(v16);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_88_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = v10[426];
    OUTLINED_FUNCTION_26_9(v10 + 272);
    OUTLINED_FUNCTION_26_9(v10 + 299);
    v28 = *(v27 + 16);
    v29 = type metadata accessor for PersonalTraitSelector(0);
    OUTLINED_FUNCTION_137(v29);
    sub_1C70592B4((v10 + 272), (v10 + 326));
    v10[451] = PersonalTraitSelector.init(configuration:totalNumberOfAssets:)(v10 + 299, v28);
    v30 = swift_task_alloc();
    v10[452] = v30;
    v10[453] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8, &qword_1C7564C88);
    v10[454] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    *v30 = v10;
    OUTLINED_FUNCTION_6_20();
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6DA10](v31, v32, v33, v34, v35);
  }
}

uint64_t sub_1C7057020(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 3592) = v1;

  if (!v1)
  {
    *(v5 + 3600) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7057134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  sub_1C6FD2904(v10[450]);

  v11 = v10[449];
  sub_1C754F2CC();
  if (v11)
  {
    OUTLINED_FUNCTION_17_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8, &qword_1C7564C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1(v10 + 405);

    v12 = OUTLINED_FUNCTION_15_1();
    v13(v12);
    OUTLINED_FUNCTION_24_13();
    v14 = OUTLINED_FUNCTION_0_24();
    v15(v14);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_88_0();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = v10[426];
    OUTLINED_FUNCTION_26_9(v10 + 272);
    OUTLINED_FUNCTION_26_9(v10 + 299);
    v26 = *(v25 + 16);
    v27 = type metadata accessor for PersonalTraitSelector(0);
    OUTLINED_FUNCTION_137(v27);
    sub_1C70592B4((v10 + 272), (v10 + 326));
    v10[451] = PersonalTraitSelector.init(configuration:totalNumberOfAssets:)(v10 + 299, v26);
    v28 = swift_task_alloc();
    v10[452] = v28;
    v10[453] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8, &qword_1C7564C88);
    v10[454] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    *v28 = v10;
    OUTLINED_FUNCTION_6_20();
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6DA10](v29, v30, v31, v32, v33);
  }
}

uint64_t sub_1C7057368()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 3640) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C705746C()
{
  v32 = v0;
  v1 = *(v0 + 3640);
  v2 = *(v0 + 3376);
  v30._rawValue = *(v0 + 3368);
  sub_1C6FD2904(v2);
  sub_1C754F2DC();
  if (v1)
  {
    OUTLINED_FUNCTION_22_13();
    v3 = *(v0 + 3488);
    v4 = *(v0 + 3456);
    v5 = *(v0 + 3448);

    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 3240));

    (*(v4 + 8))(v3, v5);
LABEL_10:
    OUTLINED_FUNCTION_24_13();
    v20 = OUTLINED_FUNCTION_0_24();
    v21(v20);

    OUTLINED_FUNCTION_43();
    goto LABEL_11;
  }

  PersonalTraitSelector.selectTraits(from:)(v30);
  if (v6)
  {
    OUTLINED_FUNCTION_22_13();
    v7 = *(v0 + 3488);
    v8 = *(v0 + 3456);
    v9 = *(v0 + 3448);

    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 3240));

    (*(v8 + 8))(v7, v9);
    goto LABEL_10;
  }

  rawValue = v30._rawValue;
  v11 = v31;
  if (qword_1EDD09AD8 != -1)
  {
    OUTLINED_FUNCTION_1_25(&qword_1EDD09AD8);
  }

  v12 = sub_1C754FF1C();
  __swift_project_value_buffer(v12, qword_1EDD09AE0);
  sub_1C75504FC();
  sub_1C75504FC();
  v13 = sub_1C754FEEC();
  v14 = sub_1C75511BC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    v31 = v11;
    v17 = PersonalTraitSelector.SelectionResult.description.getter();
    v19 = sub_1C6F765A4(v17, v18, &v29);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1C6F5C000, v13, v14, "Personal traits selection results:\n\n%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  sub_1C754F2DC();
  sub_1C754F2EC();
  v23 = rawValue;
  v24 = *(v0 + 3456);
  v27 = *(v0 + 3424);
  v28 = *(v0 + 3448);
  v25 = *(v0 + 3400);

  *v25 = v23;
  v25[1] = v11;
  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1((v0 + 3240));

  (*(v24 + 8))(v27, v28);

  OUTLINED_FUNCTION_43();
LABEL_11:

  return v26();
}

uint64_t sub_1C7057938()
{
  v4 = *(v1 + 3552);
  *(v1 + 3392) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  if ((swift_dynamicCast() & 1) != 0 && *(v1 + 3648) == 1)
  {

    v6 = sub_1C754FEEC();
    v7 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v7))
    {
      v8 = OUTLINED_FUNCTION_127();
      *v8 = 0;
      _os_log_impl(&dword_1C6F5C000, v6, v0, "Not enough processing of overnight Library Understanding themes", v8, 2u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1((v1 + 3200));

    if (qword_1EDD09AD8 != -1)
    {
      OUTLINED_FUNCTION_1_25(&qword_1EDD09AD8);
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EDD09AE0);
    sub_1C754FEEC();
    v19 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v19))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v20, v21, "Using the Entity Net data source for Personal Traits in addition to the graph");
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_18_9();
    v22 = *(v2 + 232);
    type metadata accessor for PersonalTraitGenerator.VUAssetSampler();
    swift_allocObject();
    sub_1C75504FC();
    v23 = sub_1C7499708(v0, v22);
    OUTLINED_FUNCTION_27_10(v23);
    memcpy((v1 + 1744), (v2 + 16), 0xD8uLL);
    OUTLINED_FUNCTION_15_16();
    swift_allocObject();
    *(v1 + 3576) = PersonalTraitEntityNetDataSource.init(configuration:storyPhotoLibraryContext:)((v1 + 1744), (v1 + 3320));
    OUTLINED_FUNCTION_8_12();
    sub_1C70596E0(v24, v25, protocol conformance descriptor for PersonalTraitGenerator.VUAssetSampler);
    v26 = OUTLINED_FUNCTION_21_14();
    v27(v26);
    sub_1C70592B4(v1 + 1528, v1 + 1960);
    v28 = v3;

    v29 = swift_task_alloc();
    *(v1 + 3584) = v29;
    *v29 = v1;
    v30 = OUTLINED_FUNCTION_4_14(v29);

    return PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(assetSampler:eventRecorder:progressReporter:)(v30, v31, v32, v33);
  }

  else
  {
    v9 = *(v1 + 3496);
    v10 = *(v1 + 3488);
    v11 = *(v1 + 3456);
    v12 = *(v1 + 3448);

    __swift_destroy_boxed_opaque_existential_1((v1 + 3200));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8, &qword_1C7564C88);
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1((v1 + 3240));

    v13 = *(v11 + 8);
    v13(v10, v12);
    v13(v9, v12);
    v14 = OUTLINED_FUNCTION_0_24();
    v15(v14);

    OUTLINED_FUNCTION_43();

    return v16();
  }
}

uint64_t sub_1C7057D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8, &qword_1C7564C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1((v10 + 3240));

  v11 = OUTLINED_FUNCTION_15_1();
  v12(v11);
  v13 = OUTLINED_FUNCTION_0_24();
  v14(v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C7057E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[436];
  v12 = v10[432];
  v13 = v10[431];

  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1(v10 + 405);

  (*(v12 + 8))(v11, v13);
  v14 = OUTLINED_FUNCTION_0_24();
  v15(v14);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C7057F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  v8[20] = swift_task_alloc();
  v9 = sub_1C754F2FC();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C7058088, 0, 0);
}

uint64_t sub_1C7058088()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];
  swift_beginAccess();
  sub_1C705544C(v1, v3);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v4 = v0[20];
    if (__swift_getEnumTagSinglePayload(v4, 1, v0[21]) != 1)
    {
      sub_1C7059728(v4);
    }

    return sub_1C7551AAC();
  }

  else
  {
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[21];
    v9 = v0[17];
    v10 = *(v0[22] + 32);
    v10(v7, v0[20], v8);
    memcpy(v0 + 2, v9, 0x50uLL);
    v10(v6, v7, v8);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[26] = v11;
    *v11 = v12;
    v11[1] = sub_1C7058260;

    return PersonalTraitGenerator.generateGraphBasedPersonalTraits(from:assetUUIDs:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C7058260(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 216) = v1;

  if (!v1)
  {
    *(v5 + 224) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7058374()
{
  OUTLINED_FUNCTION_42();
  **(v0 + 120) = *(v0 + 224);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C70583F0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PersonalTraitGenerator.generateGraphBasedPersonalTraits(from:assetUUIDs:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[163] = v0;
  v1[162] = v4;
  v1[161] = v5;
  v1[160] = v6;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  v1[164] = swift_task_alloc();
  v7 = sub_1C754F38C();
  v1[165] = v7;
  v1[166] = *(v7 - 8);
  v1[167] = swift_task_alloc();
  memcpy(v1 + 137, v3, 0x50uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7058564()
{
  v61 = v0;
  v1 = v0[161];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v4 = v0[163];
  v5 = [*(v4 + 232) photoAnalysisClient];
  v0[168] = v5;
  if (!v5)
  {
    v22 = v0[167];
    v23 = v0[166];
    v24 = v0[165];
    v25 = v0[162];
    v26 = v0[161];
    sub_1C7059190();
    swift_allocError();
    *v27 = 0;
    v27[1] = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_70(v26, v1[3]);
    sub_1C754F1AC();
    (*(v23 + 8))(v22, v24);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v28 + 8))(v25);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_20_4();

    __asm { BRAA            X1, X16 }
  }

  v6 = v5;
  v56 = v4;
  v7 = objc_allocWithZone(MEMORY[0x1E69BE620]);
  v57 = v6;
  v8 = [v7 initWithServiceProvider_];
  if (qword_1EC213F98 != -1)
  {
    swift_once();
  }

  v9 = v0[164];
  v10 = sub_1C754FF1C();
  v11 = __swift_project_value_buffer(v10, qword_1EC219F58);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
  v13 = (v9 + *(v12 + 28));
  v14 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v15 = [v14 processName];

  v16 = sub_1C755068C();
  v18 = v17;

  *v13 = v16;
  v13[1] = v18;
  *(v9 + *(v12 + 32)) = v8;
  v19 = sub_1C754DBCC();
  OUTLINED_FUNCTION_137(v19);
  v0[169] = sub_1C754DBBC();
  memcpy(v0 + 147, v0 + 137, 0x50uLL);
  sub_1C7059260();
  v20 = sub_1C754DBAC();
  v0[170] = v20;
  v0[171] = v21;
  v29 = v20;
  v30 = v21;
  v31 = v0[163];
  memcpy(v0 + 2, (v31 + 16), 0xD8uLL);
  memcpy(v0 + 29, (v31 + 16), 0xD8uLL);
  sub_1C70592B4((v0 + 2), (v0 + 56));
  sub_1C7059310();
  v32 = sub_1C754DBAC();
  v0[172] = v32;
  v0[173] = v33;
  v34 = v32;
  v35 = v33;
  v36 = v0[163];
  v37 = v0[160];
  memcpy(v0 + 110, v0 + 29, 0xD8uLL);
  sub_1C7059364((v0 + 110));
  sub_1C75504FC();
  sub_1C706D154();
  v39 = v38;
  v40 = *(v36 + 240);
  v41 = *(v36 + 248);
  v58 = *(v56 + 232);
  v59 = v40;
  v60 = v41;
  v42 = v58;

  v43 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v39, &v58);
  v0[174] = v43;

  v44 = swift_task_alloc();
  v0[175] = v44;
  v44[2] = v37;
  v44[3] = v43;
  v44[4] = v29;
  v44[5] = v30;
  v44[6] = v34;
  v44[7] = v35;
  v44[8] = v40;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[176] = v45;
  *v45 = v46;
  v45[1] = sub_1C7058BFC;
  OUTLINED_FUNCTION_20_4();

  return sub_1C7299A58(v47, v48, v49, v50, v51, v52, v53);
}

uint64_t sub_1C7058BFC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1416) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7058D0C()
{
  v1 = v0[177];
  v2 = v0[157];
  v3 = v0[158];
  v4 = sub_1C754DB8C();
  OUTLINED_FUNCTION_137(v4);
  sub_1C754DB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8, &qword_1C7564C88);
  sub_1C70594B8();
  v30 = v3;
  v31 = v2;
  sub_1C754DB5C();
  if (v1)
  {
    v5 = v0[173];
    v6 = v0[172];
    v7 = v0[170];
    v25 = v0[171];
    v8 = v0[168];
    v9 = v0[167];
    v10 = v0[166];
    v27 = v0[165];
    v29 = v0[162];
    sub_1C6FF6930(v0[164]);

    sub_1C6FC1640(v31, v3);
    sub_1C6FC1640(v6, v5);
    sub_1C6FC1640(v7, v25);

    v11 = OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_70(v11, v12);
    sub_1C754F1AC();
    (*(v10 + 8))(v9, v27);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v13 + 8))(v29);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_20_4();

    __asm { BRAA            X1, X16 }
  }

  sub_1C754F2EC();
  v14 = v0[173];
  v15 = v0[172];
  v16 = v0[171];
  v17 = v0[170];
  v18 = v0[168];
  v28 = v0[167];
  v19 = v0[166];
  v26 = v0[165];
  v20 = v0[161];
  sub_1C6FF6930(v0[164]);

  sub_1C6FC1640(v31, v30);
  sub_1C6FC1640(v15, v14);
  sub_1C6FC1640(v17, v16);

  OUTLINED_FUNCTION_70(v20, v20[3]);
  sub_1C754F1AC();
  (*(v19 + 8))(v28, v26);

  OUTLINED_FUNCTION_20_4();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C7059020()
{
  v1 = v0[173];
  v2 = v0[172];
  v3 = v0[171];
  v4 = v0[170];
  v11 = v0[168];
  v12 = v0[167];
  v5 = v0[166];
  v6 = v0[164];
  v13 = v0[165];
  v14 = v0[162];
  v7 = v0[161];

  sub_1C6FC1640(v2, v1);
  sub_1C6FC1640(v4, v3);

  sub_1C6FF6930(v6);
  OUTLINED_FUNCTION_70(v7, v7[3]);
  sub_1C754F1AC();
  (*(v5 + 8))(v12, v13);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v8 + 8))(v14);

  OUTLINED_FUNCTION_43();

  return v9();
}

unint64_t sub_1C7059190()
{
  result = qword_1EC2165B0;
  if (!qword_1EC2165B0)
  {
    result = swift_getWitnessTable(byte_1C7564D00, &type metadata for PersonalTraitGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC2165B0);
  }

  return result;
}

uint64_t PersonalTraitGenerator.deinit()
{
  OUTLINED_FUNCTION_26_9(v3);
  sub_1C7059364(v3);
  v1 = *(v0 + 232);

  return v0;
}

uint64_t PersonalTraitGenerator.__deallocating_deinit()
{
  PersonalTraitGenerator.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C7059260()
{
  result = qword_1EDD09930;
  if (!qword_1EDD09930)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExtendedTokenCollection, &type metadata for ExtendedTokenCollection, v0, v1);
    atomic_store(result, &qword_1EDD09930);
  }

  return result;
}