unint64_t sub_2175E6188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB00;
  if (!qword_27CB2AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB00);
  }

  return result;
}

unint64_t sub_2175E61E0()
{
  result = qword_27CB2AB08;
  if (!qword_27CB2AB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2AB10, &qword_217784FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB08);
  }

  return result;
}

unint64_t sub_2175E6248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB18;
  if (!qword_27CB2AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB18);
  }

  return result;
}

unint64_t sub_2175E62A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB20;
  if (!qword_27CB2AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB20);
  }

  return result;
}

unint64_t sub_2175E62F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB28;
  if (!qword_27CB2AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB28);
  }

  return result;
}

void sub_2175E64B0(uint64_t a1)
{
  type metadata accessor for CloudGenre.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE5520, &type metadata for CloudGenre.Relationships);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE5548, &type metadata for CloudGenre.Associations);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE5510, &type metadata for CloudGenre.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2175E65CC(uint64_t a1)
{
  sub_217351B44(319, &qword_280BE7DF0, &qword_27CB243F0, &qword_21775D690);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_217351B44(319, &qword_280BE4308, &qword_27CB25040, &qword_21775B518);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_2172E2E58(319, &qword_280BE4F80, &type metadata for CloudCurator.Kind);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_2172E2E58(319, &qword_280BE5928, &type metadata for MusicItemID);
      if (v11 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2172E2DB0(319);
        v2 = v12;
        if (v13 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *sub_2175E67D4(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudGenre.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudGenre.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2175E6A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB40;
  if (!qword_27CB2AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB40);
  }

  return result;
}

unint64_t sub_2175E6AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB48;
  if (!qword_27CB2AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB48);
  }

  return result;
}

unint64_t sub_2175E6AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB50;
  if (!qword_27CB2AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB50);
  }

  return result;
}

unint64_t sub_2175E6B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB58;
  if (!qword_27CB2AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB58);
  }

  return result;
}

unint64_t sub_2175E6BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB60;
  if (!qword_27CB2AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB60);
  }

  return result;
}

unint64_t sub_2175E6C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB68;
  if (!qword_27CB2AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB68);
  }

  return result;
}

unint64_t sub_2175E6C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB70;
  if (!qword_27CB2AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB70);
  }

  return result;
}

unint64_t sub_2175E6CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5630;
  if (!qword_280BE5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5630);
  }

  return result;
}

unint64_t sub_2175E6D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5638;
  if (!qword_280BE5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5638);
  }

  return result;
}

unint64_t sub_2175E6D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5558;
  if (!qword_280BE5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5558);
  }

  return result;
}

unint64_t sub_2175E6DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5560;
  if (!qword_280BE5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5560);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_41()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_45_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_61_17()
{

  return type metadata accessor for CloudGenre(0);
}

void *sub_2175E6EE4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  if (!dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for MusicItemTypeValueProviding))
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_217752AA8();
    OUTLINED_FUNCTION_102();
    MEMORY[0x21CEA23B0]();
    v51 = sub_217753348();
    MEMORY[0x21CEA23B0](v51);

    OUTLINED_FUNCTION_102();
    MEMORY[0x21CEA23B0]();
    OUTLINED_FUNCTION_102();
    MEMORY[0x21CEA23B0](0xD00000000000001CLL);
    MEMORY[0x21CEA23B0](0x7075732065726120, 0xEF2E646574726F70);
    goto LABEL_53;
  }

  (*(v10 + 8))(__dst);
  v11 = __dst[3];
  if (qword_280BE62F0 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_280BE62F0);
  }

  v12 = OUTLINED_FUNCTION_27_44(&xmmword_280BE6308);
  v14 = v14 && v13 == v11;
  if (!v14 && (OUTLINED_FUNCTION_16_9(v12, v13) & 1) == 0)
  {
    if (qword_280BE6378 != -1)
    {
      OUTLINED_FUNCTION_15_0(&qword_280BE6378);
    }

    v30 = OUTLINED_FUNCTION_27_44(&xmmword_280BE6390);
    v32 = v14 && v31 == v11;
    if (v32 || (OUTLINED_FUNCTION_16_9(v30, v31) & 1) != 0)
    {

      v33 = OUTLINED_FUNCTION_9_63();
      sub_2175E937C(v33, v34, v7, v35);
      if (!__dst[11])
      {
        v21 = &unk_27CB25338;
        v22 = &unk_21775D3E0;
        goto LABEL_14;
      }

      v18 = &qword_27CB25380;
      v19 = &unk_21775DAA0;
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
      type metadata accessor for MusicItemCollection(0, a1, a2, v20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(__src, 0, 104);
      }

      goto LABEL_15;
    }

    if (qword_280BE6220 != -1)
    {
      OUTLINED_FUNCTION_473(&qword_280BE6220);
    }

    v36 = OUTLINED_FUNCTION_27_44(&xmmword_280BE6238);
    v38 = v14 && v37 == v11;
    if (v38 || (OUTLINED_FUNCTION_16_9(v36, v37) & 1) != 0)
    {

      v39 = OUTLINED_FUNCTION_9_63();
      sub_2175E9500(v39, v40, v9, v41);
      if (!__dst[11])
      {
        v21 = &qword_27CB25330;
        v22 = &unk_21775E9B0;
        goto LABEL_14;
      }

      v18 = &unk_27CB28230;
      v19 = &unk_21775CD50;
      goto LABEL_11;
    }

    if (qword_280BEB138 != -1)
    {
      OUTLINED_FUNCTION_14_1(&qword_280BEB138);
    }

    v42 = OUTLINED_FUNCTION_27_44(&xmmword_280BEB150);
    if (v14 && v43 == v11)
    {
    }

    else
    {
      v45 = OUTLINED_FUNCTION_16_9(v42, v43);

      if ((v45 & 1) == 0)
      {
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_217752AA8();
        OUTLINED_FUNCTION_102();
        MEMORY[0x21CEA23B0]();
        v46 = sub_217753348();
        MEMORY[0x21CEA23B0](v46);

        MEMORY[0x21CEA23B0](46, 0xE100000000000000, v47);
LABEL_53:
        result = sub_217752D08();
        __break(1u);
        return result;
      }
    }

    v48 = OUTLINED_FUNCTION_9_63();
    sub_2175E9684(v48, v49, v8, v50);
    if (!__dst[11])
    {
      v21 = &unk_27CB255A8;
      v22 = &unk_21775D450;
      goto LABEL_14;
    }

    v18 = &qword_27CB27820;
    v19 = &qword_21775DAB0;
    goto LABEL_11;
  }

  v15 = OUTLINED_FUNCTION_9_63();
  sub_2175E91F8(v15, v16, v6, v17);
  if (__dst[11])
  {
    v18 = &qword_27CB25388;
    v19 = &unk_21775D410;
    goto LABEL_11;
  }

  v21 = &qword_27CB25318;
  v22 = &qword_2177657C0;
LABEL_14:
  sub_2171F06D8(__dst, v21, v22);
  memset(__src, 0, 104);
LABEL_15:
  memcpy(__dst, __src, 0x68uLL);
  type metadata accessor for MusicItemCollection(255, a1, a2, v23);
  v24 = sub_2177528F8();
  v25 = *(v24 - 8);
  (*(v25 + 16))(__src, __dst, v24);
  if (*(&__src[5] + 1))
  {
    (*(v25 + 8))(__dst, v24);
    return memcpy(a3, __src, 0x68uLL);
  }

  else
  {
    v27 = sub_217752338();
    v28 = MusicItemCollection.init(arrayLiteral:)(v27, a1, a2, a3);
    v29 = *(v25 + 8);
    result = v29(__dst, v24, v28);
    if (*(&__src[5] + 1))
    {
      return (v29)(__src, v24);
    }
  }

  return result;
}

uint64_t sub_2175E7450@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v5 = *(v4 + 64);
  if (v5)
  {
    v7 = result;
    v9 = *(v4 + 56);
    sub_2172CA838(a3, &__src[4]);
    __src[0] = v7;
    __src[1] = a2;
    __src[2] = v9;
    __src[3] = v5;
    v10 = swift_allocObject();
    memcpy((v10 + 16), __src, 0x48uLL);
    sub_217751DE8();
    sub_217751DE8();
    result = sub_2171F06D8(a4, &qword_27CB24188, &dword_217758930);
    *a4 = v10;
    *(a4 + 24) = &type metadata for MusicCatalogChartsIncrementalLoader;
    *(a4 + 32) = &off_282960BF0;
  }

  return result;
}

void sub_2175E7528(uint64_t result, uint64_t *a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
LABEL_2:
  while (v3 != v4)
  {
    v6 = *(v5 + v3++);
    v7 = *a2;
    v8 = *(*a2 + 16);
    v9 = (*a2 + 32);
    while (v8)
    {
      v10 = *v9++;
      --v8;
      if (v10 == v6)
      {
        goto LABEL_2;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2172B1BB0(0, *(v7 + 16) + 1, 1, v7);
      v7 = v14;
      *a2 = v14;
    }

    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_2172B1BB0(v12 > 1, v13 + 1, 1, v7);
      v7 = v15;
      *a2 = v15;
    }

    *(v7 + 16) = v13 + 1;
    *(v7 + v13 + 32) = v6;
  }
}

void sub_2175E7628()
{
  OUTLINED_FUNCTION_12();
  v34 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *v0;
  v14 = *(v0 + 3);
  v15 = v6[4];
  if (v15)
  {
    swift_bridgeObjectRetain_n();
    v38 = v14;
    v16 = v15;
  }

  else
  {
    v17 = 0x616C702D74736F6DLL;
    v18 = 0xE800000000000000;
    v19 = 0x706F742D79746963;
    if (v13 == 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v13 != 1)
    {
      v19 = 0xD000000000000010;
      v18 = 0x80000002177AA870;
    }

    v21 = v13 == 0;
    if (v13)
    {
      LOBYTE(v13) = v20;
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    if (!v21)
    {
      v17 = v19;
    }

    v38 = v17;
    if (v21)
    {
      v16 = 0xEB00000000646579;
    }

    else
    {
      v16 = v18;
    }
  }

  v37 = v14;
  if (v6[2])
  {
    v36 = v6[1];
    v35 = v6[2];
  }

  else
  {
    v36 = 0;
    v35 = 0xE000000000000000;
  }

  sub_217751DE8();
  v22 = sub_2175E7450(v38, v16, v10, v44);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11_4();
  *(v23 - 16) = v8;
  *(v23 - 8) = v10;
  v24 = v3(v5);
  sub_2174A87A0(v44, v42, &qword_27CB24188, &dword_217758930);
  if (*&v42[24])
  {
    sub_2171F06D8(v44, &qword_27CB24188, &dword_217758930);
    v39 = *v42;
    v40 = *&v42[16];
    v41 = *&v42[32];
  }

  else
  {
    v34(&v39, v10);
    sub_2171F06D8(v44, &qword_27CB24188, &dword_217758930);
    if (*&v42[24])
    {
      sub_2171F06D8(v42, &qword_27CB24188, &dword_217758930);
    }
  }

  *&v42[7] = v39;
  *&v42[23] = v40;
  v25 = *&v42[16];
  *(v12 + 49) = *v42;
  v26 = v6[5];
  v27 = v6[6];
  if (v27 == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = v6[5];
  }

  if (v27 == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = v6[6];
  }

  v30 = v6[8];
  v31 = v6[9];
  v33 = v6[19];
  v32 = v6[20];
  v43 = 0;
  *&v42[39] = v41;
  *v12 = v38;
  *(v12 + 8) = v16;
  *(v12 + 16) = v13;
  *(v12 + 24) = v36;
  *(v12 + 32) = v35;
  *(v12 + 40) = v24;
  *(v12 + 48) = 0;
  *(v12 + 65) = v25;
  *(v12 + 80) = *&v42[31];
  *(v12 + 96) = v28;
  *(v12 + 104) = v29;
  *(v12 + 112) = v30;
  *(v12 + 120) = v31;
  *(v12 + 128) = v33;
  *(v12 + 136) = v32;
  *(v12 + 144) = v37;
  *(v12 + 152) = v15;
  sub_2171FB568(v26, v27);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175E7ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, void)@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v11 = *(a1 + 144);
  v10 = *(a1 + 152);
  sub_217751DE8();
  sub_217751DE8();
  result = a3(a2, 0);
  *a4 = v7;
  *(a4 + 8) = v9;
  *(a4 + 16) = v8;
  *(a4 + 24) = v11;
  *(a4 + 32) = v10;
  return result;
}

void sub_2175E7B50()
{
  OUTLINED_FUNCTION_12();
  v81 = v0;
  v82 = v1;
  v3 = v2;
  v69 = v4;
  v6 = v5;
  v71 = v7;
  v8 = *v5;
  v9 = v5[1];
  v11 = v5[2];
  v10 = v5[3];
  v12 = v5[5];
  v78 = v5[4];
  v77 = v12;
  v76 = v10;
  if (v8 == 1)
  {
    v66 = 0;
    v79 = 0;
    v67 = 0;
    v68 = 0;
    v13 = &v86;
  }

  else
  {
    sub_217751DE8();
    if (v8)
    {
      OUTLINED_FUNCTION_24_39();
      MEMORY[0x28223BE20](v14);
      OUTLINED_FUNCTION_0_115();
      v68 = sub_2172E4BB0(sub_2175EA354, v15, v8);
    }

    else
    {
      v68 = 0;
    }

    sub_217751DE8();
    if (v9)
    {
      OUTLINED_FUNCTION_24_39();
      MEMORY[0x28223BE20](v16);
      OUTLINED_FUNCTION_0_115();
      v67 = sub_2172E4B84(sub_2175EA338, v17, v9);
    }

    else
    {
      v67 = 0;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_35_31();

    if (v11)
    {
      OUTLINED_FUNCTION_24_39();
      MEMORY[0x28223BE20](v18);
      OUTLINED_FUNCTION_0_115();
      v79 = sub_2172E4B58(sub_2175EA31C, v19, v11);
    }

    else
    {
      v79 = 0;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_35_31();

    if (v10)
    {
      OUTLINED_FUNCTION_24_39();
      MEMORY[0x28223BE20](v20);
      OUTLINED_FUNCTION_0_115();
      v66 = sub_2172E47E0(sub_2175EA300, v21, v10);
      v63 = 0;

      goto LABEL_16;
    }

    v63 = 0;
    v13 = &v87;
  }

  *(v13 - 32) = 0;
LABEL_16:
  if (v3)
  {
    v22 = v3;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v70 = v3;
  sub_217751DE8();
  v23 = 0;
  do
  {
    v24 = 0;
    v25 = byte_28295BB18[v23++ + 32];
    v26 = *(v22 + 16);
    while (v26 != v24)
    {
      v27 = v22 + v24++;
      if (*(v27 + 32) == v25)
      {
        goto LABEL_29;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172B1BB0(0, v26 + 1, 1, v22);
      v22 = v30;
    }

    v29 = *(v22 + 16);
    v28 = *(v22 + 24);
    v26 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v31 = OUTLINED_FUNCTION_57(v28);
      sub_2172B1BB0(v31, v29 + 1, 1, v22);
      v22 = v32;
    }

    *(v22 + 16) = v26;
    *(v22 + v29 + 32) = v25;
LABEL_29:
    ;
  }

  while (v23 != 3);
  if (!v26)
  {
LABEL_89:

    sub_2173DCA60(v6);
    v88 = v69;
    sub_2175E8440();

    sub_21733AB9C(v82);
    v60 = v84;
    v61 = v85;
    v62 = v71;
    *v71 = v83;
    v62[1] = v60;
    v62[2] = v61;
    OUTLINED_FUNCTION_13();
    return;
  }

  v75 = v11;
  v33 = 0;
  v80 = v22 + 32;
  v65 = v77 + 32;
  OUTLINED_FUNCTION_21_42();
  v64 = v25 + 32;
  v34 = MEMORY[0x277D84F90];
  v72 = v6;
  v73 = v8;
  v74 = v9;
  while (1)
  {
    if (*(v80 + v33))
    {
      if (*(v80 + v33) == 1)
      {
        if (v8 == 1)
        {
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_35_31();

        if (!v25)
        {
          goto LABEL_88;
        }

        v35 = *(v25 + 16);
        if (v35)
        {
          OUTLINED_FUNCTION_22_49(MEMORY[0x277D84F90]);
          v25 = v88;
          v36 = v64;
          do
          {
            OUTLINED_FUNCTION_6_77();
            OUTLINED_FUNCTION_19_34();
            OUTLINED_FUNCTION_29_36();
            if (v38)
            {
              v39 = OUTLINED_FUNCTION_57(v37);
              sub_2172764C8(v39, v23, 1);
              v25 = v88;
            }

            OUTLINED_FUNCTION_18_48();
            v36 += 168;
            --v35;
          }

          while (v35);

          v6 = v72;
        }

        else
        {

          v25 = MEMORY[0x277D84F90];
        }

        v50 = *(v25 + 16);
        v23 = *(v34 + 16);
        if (__OFADD__(v23, v50))
        {
          goto LABEL_93;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v23 + v50 > *(v34 + 24) >> 1)
        {
          OUTLINED_FUNCTION_33_36(isUniquelyReferenced_nonNull_native);
          v34 = v52;
        }

        v8 = v73;
        if (*(v25 + 16))
        {
          OUTLINED_FUNCTION_14_53();
          if (v42 != v43)
          {
            goto LABEL_99;
          }

          v23 = v34 + 160 * v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24918, &unk_217768490);
          OUTLINED_FUNCTION_32_37();

          if (!v50)
          {
            goto LABEL_84;
          }

          v54 = *(v34 + 16);
          v43 = __OFADD__(v54, v50);
          v45 = v54 + v50;
          v25 = v78;
          if (v43)
          {
            goto LABEL_100;
          }

          goto LABEL_83;
        }

        OUTLINED_FUNCTION_21_42();
        if (v50)
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (v8 == 1)
        {
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_35_31();

        if (!v77)
        {
          goto LABEL_88;
        }

        v46 = *(v77 + 16);
        if (v46)
        {
          OUTLINED_FUNCTION_22_49(MEMORY[0x277D84F90]);
          v25 = v88;
          v47 = v65;
          do
          {
            OUTLINED_FUNCTION_6_77();
            OUTLINED_FUNCTION_19_34();
            OUTLINED_FUNCTION_29_36();
            if (v38)
            {
              v49 = OUTLINED_FUNCTION_57(v48);
              sub_2172764C8(v49, v23, 1);
              v25 = v88;
            }

            OUTLINED_FUNCTION_18_48();
            v47 += 168;
            --v46;
          }

          while (v46);

          v6 = v72;
        }

        else
        {

          v25 = MEMORY[0x277D84F90];
        }

        v55 = *(v25 + 16);
        v23 = *(v34 + 16);
        if (__OFADD__(v23, v55))
        {
          goto LABEL_94;
        }

        v56 = swift_isUniquelyReferenced_nonNull_native();
        if ((v56 & 1) == 0 || v23 + v55 > *(v34 + 24) >> 1)
        {
          OUTLINED_FUNCTION_33_36(v56);
          v34 = v57;
        }

        v8 = v73;
        if (*(v25 + 16))
        {
          OUTLINED_FUNCTION_14_53();
          if (v42 != v43)
          {
            goto LABEL_98;
          }

          v23 = v34 + 160 * v58;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24918, &unk_217768490);
          OUTLINED_FUNCTION_32_37();

          if (!v55)
          {
LABEL_84:
            OUTLINED_FUNCTION_21_42();
            goto LABEL_88;
          }

          v59 = *(v34 + 16);
          v43 = __OFADD__(v59, v55);
          v45 = v59 + v55;
          v25 = v78;
          if (v43)
          {
            goto LABEL_101;
          }

          goto LABEL_83;
        }

        OUTLINED_FUNCTION_21_42();
        if (v55)
        {
          goto LABEL_95;
        }
      }

      goto LABEL_88;
    }

    if (!v79)
    {
      goto LABEL_88;
    }

    v40 = *(v79 + 16);
    v23 = *(v34 + 16);
    v25 = v23 + v40;
    if (__OFADD__(v23, v40))
    {
      break;
    }

    sub_217751DE8();
    if (!swift_isUniquelyReferenced_nonNull_native() || v25 > *(v34 + 24) >> 1)
    {
      sub_2172B1AF0();
      v34 = v41;
    }

    OUTLINED_FUNCTION_21_42();
    if (*(v79 + 16))
    {
      OUTLINED_FUNCTION_14_53();
      if (v42 != v43)
      {
        goto LABEL_92;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24918, &unk_217768490);
      v23 = v79;
      swift_arrayInitWithCopy();

      if (v40)
      {
        v44 = *(v34 + 16);
        v43 = __OFADD__(v44, v40);
        v45 = v44 + v40;
        if (v43)
        {
          goto LABEL_97;
        }

LABEL_83:
        *(v34 + 16) = v45;
      }
    }

    else
    {

      if (v40)
      {
        goto LABEL_91;
      }
    }

LABEL_88:
    if (++v33 == v26)
    {
      goto LABEL_89;
    }
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
  __break(1u);
LABEL_101:
  __break(1u);
}

void sub_2175E8440()
{
  OUTLINED_FUNCTION_12();
  v67 = v1;
  v69 = v2;
  v4 = *v3;
  v68 = v5;
  v70 = v6;
  v72 = v7;
  v71 = v0;
  if (v0 && (v8 = v0, (v9 = *(v0 + 16)) != 0))
  {
    v75 = MEMORY[0x277D84F90];
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172763EC(0, v9, 0);
    v10 = v75;
    v11 = v8 + 32;
    do
    {
      sub_2174A87A0(v11, v73, &qword_27CB24918, &unk_217768490);
      v12 = v74;
      sub_2171F06D8(v73, &qword_27CB24918, &unk_217768490);
      v75 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = OUTLINED_FUNCTION_57(v13);
        sub_2172763EC(v15, v14 + 1, 1);
        v10 = v75;
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + v14 + 32) = v12;
      v11 += 160;
      --v9;
    }

    while (v9);
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v10 = MEMORY[0x277D84F90];
  }

  v16 = *(v10 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = (v10 + 32);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v21 = *v18++;
      v20 = v21;
      if ((v21 - 1) > 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73[0] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2172763EC(0, *(v19 + 16) + 1, 1);
          v19 = v73[0];
        }

        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          v25 = OUTLINED_FUNCTION_57(v23);
          sub_2172763EC(v25, v24 + 1, 1);
          v19 = v73[0];
        }

        *(v19 + 16) = v24 + 1;
        *(v19 + v24 + 32) = v20;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  if (v4)
  {
    v26 = v4;
  }

  else
  {
    v26 = v17;
  }

  v27 = v70;
  if (!v70)
  {
    v30 = v68;
LABEL_33:
    OUTLINED_FUNCTION_28_42();
    goto LABEL_34;
  }

  v16 = v72;
  if (qword_280BE62F0 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_280BE62F0);
  }

  OUTLINED_FUNCTION_1_108();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_26_37(v29);
  OUTLINED_FUNCTION_31_37();
  v30 = v68;
  if (!sub_2173DE19C())
  {
    v66 = xmmword_280BE62F8;
    v31 = xmmword_280BE6308;
    sub_217751DE8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_95();
      v26 = v58;
    }

    OUTLINED_FUNCTION_8_67();
    if (v33)
    {
      OUTLINED_FUNCTION_3_94(v32);
      v26 = v59;
    }

    *(v26 + 16) = v72;
    v34 = v26 + 32 * &v66;
    *(v34 + 32) = v66;
    *(v34 + 48) = v31;
    goto LABEL_33;
  }

LABEL_34:
  if (v16)
  {

    if (qword_280BE6378 != -1)
    {
      OUTLINED_FUNCTION_15_0(&qword_280BE6378);
    }

    OUTLINED_FUNCTION_1_108();
    MEMORY[0x28223BE20](v35);
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_26_37(v36);
    OUTLINED_FUNCTION_31_37();
    if (!sub_2173DE19C())
    {
      OUTLINED_FUNCTION_17_48();
      v37 = xmmword_280BE6390;
      sub_217751DE8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_95();
        v26 = v60;
      }

      OUTLINED_FUNCTION_8_67();
      if (v33)
      {
        OUTLINED_FUNCTION_3_94(v38);
        v26 = v61;
      }

      OUTLINED_FUNCTION_5_78();
      *(v39 + 48) = v37;
      OUTLINED_FUNCTION_28_42();
    }
  }

  v40 = *(v19 + 16);

  if (v40)
  {
    if (qword_280BE6220 != -1)
    {
      OUTLINED_FUNCTION_473(&qword_280BE6220);
    }

    OUTLINED_FUNCTION_1_108();
    MEMORY[0x28223BE20](v41);
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_26_37(v42);
    OUTLINED_FUNCTION_31_37();
    if (!sub_2173DE19C())
    {
      OUTLINED_FUNCTION_17_48();
      v43 = xmmword_280BE6238;
      sub_217751DE8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_95();
        v26 = v62;
      }

      OUTLINED_FUNCTION_8_67();
      if (v33)
      {
        OUTLINED_FUNCTION_3_94(v44);
        v26 = v63;
      }

      OUTLINED_FUNCTION_5_78();
      *(v45 + 48) = v43;
      OUTLINED_FUNCTION_28_42();
    }
  }

  v46 = MEMORY[0x277D84F90];
  if (v30)
  {

    if (qword_280BEB138 != -1)
    {
      OUTLINED_FUNCTION_14_1(&qword_280BEB138);
    }

    OUTLINED_FUNCTION_1_108();
    MEMORY[0x28223BE20](v47);
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_26_37(v48);
    OUTLINED_FUNCTION_31_37();
    if (!sub_2173DE19C())
    {
      OUTLINED_FUNCTION_17_48();
      v49 = xmmword_280BEB150;
      sub_217751DE8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_95();
        v26 = v64;
      }

      OUTLINED_FUNCTION_8_67();
      if (v33)
      {
        OUTLINED_FUNCTION_3_94(v50);
        v26 = v65;
      }

      OUTLINED_FUNCTION_5_78();
      *(v51 + 48) = v49;
      v27 = v70;
      OUTLINED_FUNCTION_28_42();
    }
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v52 = v67;
  if (!v67)
  {
    v52 = v46;
  }

  v73[0] = v52;
  if (v71)
  {
    v53 = v71;
  }

  else
  {
    v53 = v46;
  }

  if (v16)
  {
    v54 = v16;
  }

  else
  {
    v54 = v46;
  }

  if (v27)
  {
    v55 = v27;
  }

  else
  {
    v55 = v46;
  }

  sub_217751DE8();
  sub_2175E7528(v10, v73);

  v56 = v73[0];
  v57 = v69;
  *v69 = v55;
  v57[1] = v54;
  v57[2] = v53;
  v57[3] = v30;
  v57[4] = v26;
  v57[5] = v56;
  OUTLINED_FUNCTION_13();
}

void sub_2175E8A30(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v43 = a1;
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = v3 + 32;
    v7 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
    do
    {
      sub_2174A87A0(v6, &v46, &qword_27CB24918, &unk_217768490);
      if (v47)
      {
        if (v47 == 1)
        {
          sub_2174A87A0(&v46, v45, &qword_27CB24918, &unk_217768490);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B1AF0();
            v7 = v13;
          }

          v8 = *(v7 + 16);
          if (v8 >= *(v7 + 24) >> 1)
          {
            sub_2172B1AF0();
            v7 = v14;
          }

          sub_2171F06D8(&v46, &qword_27CB24918, &unk_217768490);
          *(v7 + 16) = v8 + 1;
          v9 = v7 + 160 * v8;
        }

        else
        {
          sub_2174A87A0(&v46, v45, &qword_27CB24918, &unk_217768490);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B1AF0();
            v48 = v17;
          }

          v11 = *(v48 + 16);
          if (v11 >= *(v48 + 24) >> 1)
          {
            sub_2172B1AF0();
            v48 = v18;
          }

          sub_2171F06D8(&v46, &qword_27CB24918, &unk_217768490);
          v12 = v48;
          *(v48 + 16) = v11 + 1;
          v9 = v12 + 160 * v11;
        }
      }

      else
      {
        sub_2174A87A0(&v46, v45, &qword_27CB24918, &unk_217768490);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2172B1AF0();
          v5 = v15;
        }

        v10 = *(v5 + 16);
        if (v10 >= *(v5 + 24) >> 1)
        {
          sub_2172B1AF0();
          v5 = v16;
        }

        sub_2171F06D8(&v46, &qword_27CB24918, &unk_217768490);
        *(v5 + 16) = v10 + 1;
        v9 = v5 + 160 * v10;
      }

      a1 = memcpy((v9 + 32), v45, 0xA0uLL);
      v6 += 160;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
  }

  if (qword_280BE62F0 != -1)
  {
    a1 = swift_once();
  }

  v46 = xmmword_280BE62F8;
  v47 = xmmword_280BE6308;
  MEMORY[0x28223BE20](a1);
  v39 = &v46;
  v19 = sub_2173DE19C();
  v20 = v43;
  if (v19)
  {
    MEMORY[0x28223BE20](v19);
    v39 = v43;
    v19 = sub_2172E5188(sub_2175EA2E4, v38, v21);
    v41 = v19;
  }

  else
  {
    v41 = 0;
  }

  if (qword_280BE6378 != -1)
  {
    v19 = swift_once();
  }

  v46 = xmmword_280BE6380;
  v47 = xmmword_280BE6390;
  MEMORY[0x28223BE20](v19);
  v39 = &v46;
  v22 = sub_2173DE19C();
  if (v22)
  {
    MEMORY[0x28223BE20](v22);
    v39 = v20;
    v22 = sub_2172E515C(sub_2175EA284, v38, v23);
    v40 = v22;
  }

  else
  {
    v40 = 0;
  }

  if (qword_280BE6220 != -1)
  {
    v22 = swift_once();
  }

  v46 = xmmword_280BE6228;
  v47 = xmmword_280BE6238;
  MEMORY[0x28223BE20](v22);
  v39 = &v46;
  v24 = sub_2173DE19C();
  if (v24)
  {
    MEMORY[0x28223BE20](v24);
    v39 = v20;
    v25 = sub_2172E5130(sub_2175EA370, v38, v5);
  }

  else
  {

    v25 = 0;
  }

  if (qword_280BEB138 != -1)
  {
    v26 = swift_once();
  }

  v46 = xmmword_280BEB140;
  v47 = xmmword_280BEB150;
  MEMORY[0x28223BE20](v26);
  v39 = &v46;
  v27 = sub_2173DE19C();
  if (v27)
  {
    v28 = v44;
    MEMORY[0x28223BE20](v27);
    v39 = v20;
    v30 = sub_2172E5104(sub_2175EA224, v38, v29);
  }

  else
  {
    v30 = 0;
    v28 = v44;
  }

  v31 = *(v28 + 40);
  v32 = sub_217696E10(1u, v31);
  if (v32)
  {
    MEMORY[0x28223BE20](v32);
    v39 = v20;
    v33 = sub_2172E5130(sub_2175EA370, v38, v7);
  }

  else
  {

    v33 = 0;
  }

  v34 = sub_217696E10(2u, v31);
  if (v34)
  {
    MEMORY[0x28223BE20](v34);
    v39 = v43;
    v35 = sub_2172E5130(sub_2175EA208, v38, v48);
  }

  else
  {

    v35 = 0;
  }

  v36 = v42;
  v37 = v40;
  *v42 = v41;
  v36[1] = v37;
  v36[2] = v25;
  v36[3] = v30;
  v36[4] = v33;
  v36[5] = v35;
}

double sub_2175E91F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  if (v7)
  {
    while (1)
    {
      sub_2174A87A0(v8, &v21, &qword_27CB248E8, &qword_21775A380);
      v9 = v22;
      if (v21 == a1 && v22 == a2)
      {
        break;
      }

      if (sub_217753058())
      {
        a1 = v21;
        v9 = v22;
        break;
      }

      sub_2171F06D8(&v21, &qword_27CB248E8, &qword_21775A380);
      v8 += 160;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  else
  {
LABEL_8:
    v9 = 0;
    a1 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v21 = a1;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  if (v9)
  {
    sub_2174A87A0(&v24 + 8, a4, &qword_27CB25388, &unk_21775D410);
    sub_2171F06D8(&v21, &qword_27CB248E8, &qword_21775A380);
  }

  else
  {
    sub_2171F06D8(&v21, &qword_27CB2AB80, &unk_217785A58);
    *(a4 + 96) = 0;
    result = 0.0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_2175E937C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  if (v7)
  {
    while (1)
    {
      sub_2174A87A0(v8, &v21, &qword_27CB248F8, &unk_21775A370);
      v9 = v22;
      if (v21 == a1 && v22 == a2)
      {
        break;
      }

      if (sub_217753058())
      {
        a1 = v21;
        v9 = v22;
        break;
      }

      sub_2171F06D8(&v21, &qword_27CB248F8, &unk_21775A370);
      v8 += 160;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  else
  {
LABEL_8:
    v9 = 0;
    a1 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v21 = a1;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  if (v9)
  {
    sub_2174A87A0(&v24 + 8, a4, &qword_27CB25380, &unk_21775DAA0);
    sub_2171F06D8(&v21, &qword_27CB248F8, &unk_21775A370);
  }

  else
  {
    sub_2171F06D8(&v21, &qword_27CB2AB88, &qword_217785A68);
    *(a4 + 96) = 0;
    result = 0.0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_2175E9500@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  if (v7)
  {
    while (1)
    {
      sub_2174A87A0(v8, &v21, &qword_27CB24918, &unk_217768490);
      v9 = v22;
      if (v21 == a1 && v22 == a2)
      {
        break;
      }

      if (sub_217753058())
      {
        a1 = v21;
        v9 = v22;
        break;
      }

      sub_2171F06D8(&v21, &qword_27CB24918, &unk_217768490);
      v8 += 160;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  else
  {
LABEL_8:
    v9 = 0;
    a1 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v21 = a1;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  if (v9)
  {
    sub_2174A87A0(&v24 + 8, a4, &unk_27CB28230, &unk_21775CD50);
    sub_2171F06D8(&v21, &qword_27CB24918, &unk_217768490);
  }

  else
  {
    sub_2171F06D8(&v21, &qword_27CB2AB90, &unk_217785A70);
    *(a4 + 96) = 0;
    result = 0.0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_2175E9684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  if (v7)
  {
    while (1)
    {
      sub_2174A87A0(v8, &v21, &qword_27CB24908, &unk_21775A360);
      v9 = v22;
      if (v21 == a1 && v22 == a2)
      {
        break;
      }

      if (sub_217753058())
      {
        a1 = v21;
        v9 = v22;
        break;
      }

      sub_2171F06D8(&v21, &qword_27CB24908, &unk_21775A360);
      v8 += 160;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  else
  {
LABEL_8:
    v9 = 0;
    a1 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v21 = a1;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  if (v9)
  {
    sub_2174A87A0(&v24 + 8, a4, &qword_27CB27820, &qword_21775DAB0);
    sub_2171F06D8(&v21, &qword_27CB24908, &unk_21775A360);
  }

  else
  {
    sub_2171F06D8(&v21, &qword_27CB2AB98, &unk_217785A80);
    *(a4 + 96) = 0;
    result = 0.0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void static MusicCatalogChartsResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  sub_2172741E0();
  if (v0 & 1) != 0 && (sub_21727456C(), (v1) && (sub_2172748F8(), (v2) && (sub_217274C84(), (v3) && (sub_217270BE0(), (v4))
  {
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_13();

    sub_2172849D0();
  }

  else
  {
    OUTLINED_FUNCTION_13();
  }
}

uint64_t MusicCatalogChartsResponse.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_217283728(a1, *v1);
  sub_217283714(a1, v3);
  sub_217283520(a1, v4);
  sub_21728350C(a1, v5);
  sub_21727D7C8();
  OUTLINED_FUNCTION_93();

  return sub_2172849DC();
}

uint64_t MusicCatalogChartsResponse.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2177531E8();
  sub_217283728(v6, v1);
  sub_217283714(v6, v2);
  sub_217283520(v6, v3);
  sub_21728350C(v6, v4);
  sub_21727D7C8();
  sub_2172849DC();
  return sub_217753238();
}

uint64_t sub_2175E99F4(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  sub_2177531E8();
  MusicCatalogChartsResponse.hash(into:)(v4);
  return sub_217753238();
}

uint64_t MusicCatalogChartsResponse.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2171FF30C(a1, v14);
  sub_2173DC46C(v14, v15);
  if (!v2)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v7, v8);
    Decoder.dataRequestConfiguration.getter(v5, v6);
    v9 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v9, v10);
    Decoder.sharedRelatedItemStore.getter();
    sub_2175E7B50();
    v11 = v14[1];
    v12 = v14[2];
    *a2 = v14[0];
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCatalogChartsResponse.encode(to:)(void *a1)
{
  v4 = v1[1];
  v10 = *v1;
  v11 = v4;
  v12 = v1[2];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  Encoder.dataRequestConfiguration.getter(v5, v6);
  sub_2175E8A30(v8, v9);
  result = sub_21733AB9C(v8);
  if (!v2)
  {
    sub_2173DC224(a1);
    return sub_2173DCA60(v9);
  }

  return result;
}

void sub_2175E9BFC(char a1)
{
  v4 = *v1;
  v3 = v1[1];
  v26 = v1[3];
  v27 = v1[2];
  v5 = v1[4];
  v29 = 0;
  v30 = 0xE000000000000000;
  v6 = *(v5 + 16);
  v28 = v3;
  sub_217751DE8();
  v7 = 0;
  v8 = (v5 + 56);
  while (v6 != v7)
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    v10 = *(v8 - 1);
    v9 = *v8;
    v11 = qword_280BE62F0;
    sub_217751DE8();
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = xmmword_280BE6308 == v10 && *(&xmmword_280BE6308 + 1) == v9;
    if (v12 || (sub_217753058() & 1) != 0)
    {

      sub_21759AEF0(0x6168436D75626C61, 0xEB00000000737472, a1 & 1, &v29, v4, v13);
      goto LABEL_12;
    }

    if (qword_280BE6378 != -1)
    {
      swift_once();
    }

    v14 = xmmword_280BE6390 == v10 && *(&xmmword_280BE6390 + 1) == v9;
    if (v14 || (sub_217753058() & 1) != 0)
    {

      sub_21759B0BC(0xD000000000000010, 0x80000002177B2630, a1 & 1, &v29, v28, v15);
      goto LABEL_12;
    }

    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    v16 = xmmword_280BE6238 == v10 && *(&xmmword_280BE6238 + 1) == v9;
    if (v16 || (sub_217753058() & 1) != 0)
    {

      sub_21759B288(0x7473696C79616C70, 0xEE00737472616843, a1 & 1, &v29, v27, v17);
      goto LABEL_12;
    }

    if (qword_280BEB138 != -1)
    {
      swift_once();
    }

    if (xmmword_280BEB150 == v10 && *(&xmmword_280BEB150 + 1) == v9)
    {
    }

    else
    {
      v19 = sub_217753058();

      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_21759B454(0x72616843676E6F73, 0xEA00000000007374, a1 & 1, &v29, v26, v20);
LABEL_12:
    v8 += 4;
    ++v7;
  }

  v22 = v29;
  v23 = v30;
  MEMORY[0x21CEA23B0](v29, v30, v21);

  v25 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    MEMORY[0x21CEA23B0](10, 0xE100000000000000, v24);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v24);
}

unint64_t sub_2175E9FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AB78;
  if (!qword_27CB2AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB78);
  }

  return result;
}

uint64_t sub_2175EA024(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2175EA064(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *OUTLINED_FUNCTION_18_48()
{
  *(v1 + 16) = v0;

  return memcpy((v1 + 160 * v2 + 32), (v3 - 256), 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_22_49@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  return sub_2172764C8(0, v1, 0);
}

uint64_t sub_2175EA414(uint64_t a1)
{
  v2 = type metadata accessor for CloudRadioShow(0);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CloudRawCurator(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB264F0, &qword_217786380);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v46 - v13;
  v14 = 0;
  v51 = MEMORY[0x277D84F90];
  v52 = v6;
  v15 = *(a1 + 16);
  v62 = a1;
  v63 = v15;
  v53 = v4;
  v60 = v16;
  while (v63 != v14)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
    v18 = v62 + ((*(*(v17 - 1) + 80) + 32) & ~*(*(v17 - 1) + 80));
    v19 = *(*(v17 - 1) + 72);
    v66 = v14;
    v20 = v18 + v19 * v14;
    sub_2175F70D8(v20, v6, type metadata accessor for CloudRawCurator);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v21 = v61;
      sub_2175F7134(v6, v61, type metadata accessor for CloudRadioShow);
      sub_2175F70D8(v21, v9, type metadata accessor for CloudRadioShow);
      v22 = v17[10];
      v23 = v20 + v17[9];
      v24 = *v23;
      v25 = *(v23 + 8);
      v55 = *(v23 + 16);
      v26 = *(v20 + v22 + 8);
      v58 = *(v20 + v22);
      v27 = v17[11];
      v56 = v24;
      v57 = v27;
      memcpy(v65, (v20 + v27), 0x180uLL);
      v28 = *(v20 + v17[12]);
      v29 = *(v20 + v17[13]);
      v30 = v17[15];
      v59 = *(v20 + v17[14]);
      v31 = v59;
      v54 = *(v20 + v30);
      v32 = v60;
      v33 = &v9[v60[9]];
      *v33 = v56;
      *(v33 + 1) = v25;
      v33[16] = v55;
      v34 = &v9[v32[10]];
      *v34 = v58;
      *(v34 + 1) = v26;
      memcpy(&v9[v32[11]], (v20 + v57), 0x180uLL);
      *&v9[v32[12]] = v28;
      *&v9[v32[13]] = v29;
      *&v9[v32[14]] = v31;
      *&v9[v32[15]] = v54;
      v6 = v52;
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v65, &v64, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2175F7190(v61, type metadata accessor for CloudRadioShow);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v32);
    }

    else
    {
      v32 = v60;
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v60);
      sub_2175F7190(v6, type metadata accessor for CloudRawCurator);
    }

    v35 = __swift_getEnumTagSinglePayload(v9, 1, v32) == 1;
    v36 = v66;
    if (v35)
    {
      sub_2171F0738(v9, &qword_27CB264F0, &qword_217786380);
      v14 = v36 + 1;
    }

    else
    {
      v37 = v48;
      sub_21726A594(v9, v48, &qword_27CB247C0, &unk_21779AA10);
      sub_21726A594(v37, v50, &qword_27CB247C0, &unk_21779AA10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2172B1E84(0, *(v51 + 16) + 1, 1, v51);
        v51 = v43;
      }

      v40 = *(v51 + 16);
      v39 = *(v51 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2172B1E84(v39 > 1, v40 + 1, 1, v51);
        v51 = v44;
      }

      v14 = v66 + 1;
      v41 = v50;
      v42 = v51;
      *(v51 + 16) = v40 + 1;
      sub_21726A594(v41, v42 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v40, &qword_27CB247C0, &unk_21779AA10);
      v9 = v47;
    }
  }

  return v51;
}

uint64_t sub_2175EA9B4(uint64_t a1)
{
  v2 = type metadata accessor for CloudCurator(0);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CloudRawCurator(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB264E8, &qword_217763640);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v47 - v13;
  v14 = 0;
  v50 = MEMORY[0x277D84F90];
  v51 = v6;
  v15 = *(a1 + 16);
  v61 = a1;
  v62 = v15;
  v52 = v4;
  while (v62 != v14)
  {
    v16 = v10;
    v17 = v14;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
    v19 = v61 + ((*(*(v18 - 1) + 80) + 32) & ~*(*(v18 - 1) + 80));
    v20 = *(*(v18 - 1) + 72);
    v65 = v17;
    v21 = v19 + v20 * v17;
    sub_2175F70D8(v21, v6, type metadata accessor for CloudRawCurator);
    if (swift_getEnumCaseMultiPayload())
    {
      v10 = v16;
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
      sub_2175F7190(v6, type metadata accessor for CloudRawCurator);
    }

    else
    {
      v22 = v60;
      sub_2175F7134(v6, v60, type metadata accessor for CloudCurator);
      sub_2175F70D8(v22, v9, type metadata accessor for CloudCurator);
      v23 = v18[10];
      v24 = v21 + v18[9];
      v25 = *v24;
      v55 = *(v24 + 8);
      v56 = *(v24 + 16);
      v26 = v21 + v23;
      v27 = *(v21 + v23);
      v28 = *(v26 + 8);
      v57 = v25;
      v58 = v27;
      v29 = v18[11];
      memcpy(v64, (v21 + v29), 0x180uLL);
      v30 = *(v21 + v18[12]);
      v31 = *(v21 + v18[13]);
      v32 = v18[15];
      v59 = *(v21 + v18[14]);
      v33 = v59;
      v53 = *(v21 + v32);
      v54 = v31;
      v34 = &v9[v16[9]];
      v35 = v55;
      *v34 = v57;
      *(v34 + 1) = v35;
      v34[16] = v56;
      v36 = &v9[v16[10]];
      *v36 = v58;
      *(v36 + 1) = v28;
      v37 = (v21 + v29);
      v10 = v16;
      memcpy(&v9[v16[11]], v37, 0x180uLL);
      *&v9[v16[12]] = v30;
      *&v9[v16[13]] = v54;
      *&v9[v16[14]] = v33;
      *&v9[v16[15]] = v53;
      v6 = v51;
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v64, &v63, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2175F7190(v60, type metadata accessor for CloudCurator);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_2171F0738(v9, &qword_27CB264E8, &qword_217763640);
      v14 = v65 + 1;
    }

    else
    {
      v38 = v47;
      sub_21726A594(v9, v47, &qword_27CB24490, &qword_21775A250);
      sub_21726A594(v38, v49, &qword_27CB24490, &qword_21775A250);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B1EC0(0, *(v50 + 16) + 1, 1, v50);
        v50 = v44;
      }

      v40 = *(v50 + 16);
      v39 = *(v50 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2172B1EC0(v39 > 1, v40 + 1, 1, v50);
        v50 = v45;
      }

      v41 = v65 + 1;
      v42 = v49;
      v43 = v50;
      *(v50 + 16) = v40 + 1;
      sub_21726A594(v42, v43 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40, &qword_27CB24490, &qword_21775A250);
      v14 = v41;
    }
  }

  return v50;
}

uint64_t sub_2175EAF5C(uint64_t a1)
{
  v30 = type metadata accessor for CloudRawCurator(0);
  MEMORY[0x28223BE20](v30);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC18, &qword_217786388);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v27 = &v26 - v11;
  v12 = 0;
  v31 = a1;
  v13 = *(a1 + 16);
  v29 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = *(v8 + 72);
    v16 = v31 + v14 + v15 * v12;
    sub_2175F70D8(v16, v3, type metadata accessor for CloudRawCurator);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21726A630(v16, v6, &qword_27CB247B0, &qword_21775A1C0);
      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v17, 1, v7);
    sub_2175F7190(v3, type metadata accessor for CloudRawCurator);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_2171F0738(v6, &qword_27CB2AC18, &qword_217786388);
      ++v12;
    }

    else
    {
      sub_21726A594(v6, v27, &qword_27CB247B0, &qword_21775A1C0);
      sub_21726A594(v27, v28, &qword_27CB247B0, &qword_21775A1C0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B20DC(0, *(v29 + 16) + 1, 1, v29);
        v29 = v23;
      }

      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v26 = v19 + 1;
        sub_2172B20DC(v18 > 1, v19 + 1, 1, v29);
        v20 = v26;
        v29 = v24;
      }

      ++v12;
      v21 = v28;
      v22 = v29;
      *(v29 + 16) = v20;
      sub_21726A594(v21, v22 + v14 + v19 * v15, &qword_27CB247B0, &qword_21775A1C0);
    }
  }

  return v29;
}

uint64_t sub_2175EB2B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  if (a2)
  {
    goto LABEL_2;
  }

  sub_21726A630(a1, v23, &qword_27CB24188, &dword_217758930);
  v8 = v24;
  if (!v24)
  {
    sub_2171F0738(&v26, &qword_27CB24188, &dword_217758930);
    v7 = v23;
    goto LABEL_7;
  }

  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  sub_217283154(v23);
  if (!v12)
  {
LABEL_2:
    v7 = &v26;
LABEL_7:
    sub_2171F0738(v7, &qword_27CB24188, &dword_217758930);
    sub_21726A630(a1, &v26, &qword_27CB24188, &dword_217758930);
    v10 = 0;
    v12 = 0;
  }

  v13 = *v4;
  v14 = *(v4 + 8);
  v16 = *(v4 + 16);
  v15 = *(v4 + 24);
  v17 = *(v4 + 48);
  v18 = *(v4 + 112);
  v19 = *(v4 + 120);
  *a3 = *v4;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16;
  *(a3 + 24) = v15;
  *(a3 + 32) = *(v4 + 32);
  *(a3 + 48) = v17;
  *(a3 + 56) = v10;
  *(a3 + 64) = v12;
  v20 = v26;
  v21 = v28;
  *(a3 + 88) = v27;
  *(a3 + 72) = v20;
  *(a3 + 104) = v21;
  *(a3 + 112) = v18;
  *(a3 + 120) = v19;
  sub_2171FB568(v13, v14);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

double sub_2175EB460(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v262 = v1;
  v266 = 0;
  v267 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v269 = type metadata accessor for CatalogSearchRawResponse.TopResult(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v15);
  v17 = &v252 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  v268 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  boxed_opaque_existential_0 = &v252 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v252 - v22;
  sub_21726A630(v12, v365, &qword_27CB24268, &qword_21777DBE0);
  if (!v6)
  {
    v6 = *(v12 + 160);
    if (v6 >= 2)
    {
      sub_217751DE8();
    }

    else
    {
      sub_217221010(*(v12 + 160));
      v6 = MEMORY[0x277D84F90];
    }
  }

  sub_21726A630(v365, v361, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  v263 = v12;
  if (v96)
  {
    v24 = &qword_27CB24268;
    v25 = &qword_21777DBE0;
    v26 = v361;
LABEL_12:
    v31 = sub_2171F0738(v26, v24, v25);
    memset(v363, 0, sizeof(v363));
    v364 = 0;
    goto LABEL_13;
  }

  sub_21726A630(v361, v347, &qword_27CB24270, &unk_21775D640);
  sub_217269E58(v361);
  if (!v347[2])
  {
    v24 = &qword_27CB24270;
    v25 = &unk_21775D640;
    v26 = v347;
    goto LABEL_12;
  }

  if (qword_280BE62F0 != -1)
  {
    goto LABEL_251;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_33();
    OUTLINED_FUNCTION_9_64(v27, v28, v29, v30, v363);
    v31 = sub_2171F0738(v347, &qword_27CB24278, &unk_217759070);
LABEL_13:
    OUTLINED_FUNCTION_10_55(v31, v32, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v96)
    {
      v33 = &qword_27CB24268;
      v34 = &qword_21777DBE0;
      v35 = v361;
LABEL_21:
      v40 = sub_2171F0738(v35, v33, v34);
      memset(v359, 0, sizeof(v359));
      v360 = 0;
      goto LABEL_22;
    }

    sub_21726A630((v12 + 8), v347, &qword_27CB24280, &unk_21775D680);
    sub_217269E58(v361);
    if (!v347[2])
    {
      v33 = &qword_27CB24280;
      v34 = &unk_21775D680;
      v35 = v347;
      goto LABEL_21;
    }

    if (qword_280BE6270 != -1)
    {
      OUTLINED_FUNCTION_2_91(&qword_280BE6270);
    }

    OUTLINED_FUNCTION_34_33();
    OUTLINED_FUNCTION_9_64(v36, v37, v38, v39, v359);
    v40 = sub_2171F0738(v347, &qword_27CB24288, &qword_217758F80);
LABEL_22:
    OUTLINED_FUNCTION_10_55(v40, v41, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v96)
    {
      v42 = &qword_27CB24268;
      v43 = &qword_21777DBE0;
      v44 = v361;
LABEL_30:
      v49 = sub_2171F0738(v44, v42, v43);
      memset(v357, 0, sizeof(v357));
      v358 = 0;
      goto LABEL_31;
    }

    sub_21726A630((v12 + 32), v347, &qword_27CB242B0, &unk_21775D630);
    sub_217269E58(v361);
    if (!v347[2])
    {
      v42 = &qword_27CB242B0;
      v43 = &unk_21775D630;
      v44 = v347;
      goto LABEL_30;
    }

    if (qword_280BE6378 != -1)
    {
      OUTLINED_FUNCTION_15_0(&qword_280BE6378);
    }

    OUTLINED_FUNCTION_34_33();
    OUTLINED_FUNCTION_9_64(v45, v46, v47, v48, v357);
    v49 = sub_2171F0738(v347, &qword_27CB242B8, &unk_21777EEA0);
LABEL_31:
    OUTLINED_FUNCTION_10_55(v49, v50, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v96)
    {
      v51 = &qword_27CB24268;
      v52 = &qword_21777DBE0;
      v53 = v361;
LABEL_39:
      v58 = sub_2171F0738(v53, v51, v52);
      memset(v355, 0, sizeof(v355));
      v356 = 0;
      goto LABEL_40;
    }

    sub_21726A630((v12 + 40), v347, &qword_27CB242C0, &unk_21775D650);
    sub_217269E58(v361);
    if (!v347[2])
    {
      v51 = &qword_27CB242C0;
      v52 = &unk_21775D650;
      v53 = v347;
      goto LABEL_39;
    }

    if (qword_280BE6220 != -1)
    {
      OUTLINED_FUNCTION_473(&qword_280BE6220);
    }

    OUTLINED_FUNCTION_34_33();
    OUTLINED_FUNCTION_9_64(v54, v55, v56, v57, v355);
    v58 = sub_2171F0738(v347, &qword_27CB242C8, &unk_217758970);
LABEL_40:
    OUTLINED_FUNCTION_10_55(v58, v59, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v96)
    {
      v60 = &qword_27CB24268;
      v61 = &qword_21777DBE0;
      v62 = v361;
LABEL_48:
      v67 = sub_2171F0738(v62, v60, v61);
      memset(v353, 0, sizeof(v353));
      v354 = 0;
      goto LABEL_49;
    }

    sub_21726A630((v12 + 48), v347, &qword_27CB242D0, &unk_21775D660);
    sub_217269E58(v361);
    if (!v347[2])
    {
      v60 = &qword_27CB242D0;
      v61 = &unk_21775D660;
      v62 = v347;
      goto LABEL_48;
    }

    if (qword_280BE6348 != -1)
    {
      OUTLINED_FUNCTION_24_40(&qword_280BE6348);
    }

    OUTLINED_FUNCTION_34_33();
    OUTLINED_FUNCTION_9_64(v63, v64, v65, v66, v353);
    v67 = sub_2171F0738(v347, &qword_27CB242D8, &unk_21777EEB0);
LABEL_49:
    OUTLINED_FUNCTION_10_55(v67, v68, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v96)
    {
      v69 = &qword_27CB24268;
      v70 = &qword_21777DBE0;
      v71 = v361;
LABEL_57:
      v76 = sub_2171F0738(v71, v69, v70);
      memset(v351, 0, sizeof(v351));
      v352 = 0;
      goto LABEL_58;
    }

    sub_21726A630((v12 + 56), v347, &qword_27CB242E0, &unk_21777EEE0);
    sub_217269E58(v361);
    if (!v347[2])
    {
      v69 = &qword_27CB242E0;
      v70 = &unk_21777EEE0;
      v71 = v347;
      goto LABEL_57;
    }

    if (qword_280BEB138 != -1)
    {
      OUTLINED_FUNCTION_14_1(&qword_280BEB138);
    }

    OUTLINED_FUNCTION_34_33();
    OUTLINED_FUNCTION_9_64(v72, v73, v74, v75, v351);
    v76 = sub_2171F0738(v347, &qword_27CB242E8, &unk_21775D6B0);
LABEL_58:
    OUTLINED_FUNCTION_10_55(v76, v77, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v96)
    {
      v78 = &qword_27CB24268;
      v79 = &qword_21777DBE0;
      v80 = v361;
LABEL_66:
      sub_2171F0738(v80, v78, v79);
      memset(v349, 0, sizeof(v349));
      v350 = 0;
      goto LABEL_67;
    }

    sub_21726A630((v12 + 64), v347, &qword_27CB242F0, &unk_217797B80);
    sub_217269E58(v361);
    if (!v347[2])
    {
      v78 = &qword_27CB242F0;
      v79 = &unk_217797B80;
      v80 = v347;
      goto LABEL_66;
    }

    if (qword_280BE6248 != -1)
    {
      OUTLINED_FUNCTION_22_50(&qword_280BE6248);
    }

    OUTLINED_FUNCTION_34_33();
    OUTLINED_FUNCTION_9_64(v81, v82, v83, v84, v349);
    sub_2171F0738(v347, &qword_27CB242F8, &qword_21775D6C0);
LABEL_67:
    v85 = sub_2172CA838(v4, &v341);
    OUTLINED_FUNCTION_10_55(v85, v86, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v96)
    {
      v87 = sub_2171F0738(v361, &qword_27CB24268, &qword_21777DBE0);
      memset(v347, 0, 128);
    }

    else
    {
      sub_21726A630((v12 + 24), v347, &qword_27CB242A0, &unk_21777EEF0);
      v87 = sub_217269E58(v361);
    }

    OUTLINED_FUNCTION_10_55(v87, v88, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v96)
    {
      sub_2171F0738(v361, &qword_27CB24268, &qword_21777DBE0);
      OUTLINED_FUNCTION_29_37();
    }

    else
    {
      sub_21726A630((v12 + 16), v346, &qword_27CB24290, &unk_21775D550);
      sub_217269E58(v361);
    }

    memcpy(v361, v347, sizeof(v361));
    memcpy(v362, v346, sizeof(v362));
    sub_217751DE8();
    sub_217751DE8();
    v12 = v267;

    v89 = sub_2175EDD2C(v10, v8, &v341, v361, v6, v12, v347);
    OUTLINED_FUNCTION_10_55(v89, v90, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    v264 = v6;
    v265 = v10;
    if (v96)
    {
      v91 = &qword_27CB24268;
      v92 = &qword_21777DBE0;
      v93 = v361;
      goto LABEL_93;
    }

    v260 = boxed_opaque_existential_0;
    sub_21726A630((v12 + 72), &v341, &qword_27CB24300, &qword_217771D70);
    sub_217269E58(v361);
    boxed_opaque_existential_0 = v342;
    if (!v342)
    {
      break;
    }

    v257 = v8;
    v258 = v4;
    v259 = v14;
    v6 = *(v342 + 16);
    v255 = *(&v341 + 1);
    v256 = v341;
    sub_2171FB568(v341, *(&v341 + 1));
    sub_217751DE8();
    v8 = 0;
    v261 = MEMORY[0x277D84F90];
    v4 = &qword_27CB24708;
    v10 = &unk_217758C90;
    while (1)
    {
      if (v6 == v8)
      {

        v103 = *(&v342 + 1);
        v104 = *(&v343 + 1);
        v10 = v343;
        v105 = *(&v344 + 1);
        boxed_opaque_existential_0 = v344;
        v23 = *&v345[0];
        sub_21726A630(v345 + 8, &v346[4] + 8, &qword_27CB24188, &dword_217758930);
        *&v346[0] = v256;
        *(&v346[0] + 1) = v255;
        *&v346[1] = v261;
        *(&v346[1] + 1) = v103;
        v346[2] = __PAIR128__(v104, v10);
        v346[3] = __PAIR128__(v105, boxed_opaque_existential_0);
        *&v346[4] = v23;
        v346[7] = v345[3];
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(&v341, &qword_27CB24308, &unk_217767A90);
        v4 = v258;
        v14 = v259;
        v6 = v264;
        v8 = v257;
        goto LABEL_94;
      }

      if (v8 >= *(boxed_opaque_existential_0 + 2))
      {
        break;
      }

      v14 = (*(v268 + 80) + 32) & ~*(v268 + 80);
      v12 = v17;
      v94 = *(v268 + 72);
      sub_21726A630(&boxed_opaque_existential_0[v14 + v94 * v8], v23, &qword_27CB24708, &unk_217758C90);
      sub_2175F70D8(v23, v12, type metadata accessor for CatalogSearchRawResponse.TopResult);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v96 = EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 10;
      if (v96)
      {
        sub_2171F0738(v23, &qword_27CB24708, &unk_217758C90);
        OUTLINED_FUNCTION_17_49();
        sub_2175F7190(v12, v97);
        ++v8;
        v17 = v12;
      }

      else
      {
        OUTLINED_FUNCTION_17_49();
        v254 = v12;
        sub_2175F7190(v12, v98);
        sub_21726A594(v23, v260, &qword_27CB24708, &unk_217758C90);
        v12 = v261;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v346[0] = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_217276528(0, *(v12 + 2) + 1, 1);
          v12 = *&v346[0];
        }

        v101 = *(v12 + 2);
        v100 = *(v12 + 3);
        v102 = (v101 + 1);
        if (v101 >= v100 >> 1)
        {
          v261 = (v101 + 1);
          v253 = v101;
          sub_217276528((v100 > 1), v101 + 1, 1);
          v102 = v261;
          v101 = v253;
          v12 = *&v346[0];
        }

        ++v8;
        *(v12 + 2) = v102;
        v261 = v12;
        sub_21726A594(v260, v12 + v14 + v101 * v94, &qword_27CB24708, &unk_217758C90);
        v17 = v254;
      }
    }

    __break(1u);
LABEL_251:
    OUTLINED_FUNCTION_3_6(&qword_280BE62F0);
  }

  v91 = &qword_27CB24300;
  v92 = &qword_217771D70;
  v93 = &v341;
LABEL_93:
  sub_2171F0738(v93, v91, v92);
  OUTLINED_FUNCTION_29_37();
LABEL_94:
  v340 = 0;
  v339 = 0u;
  v338 = 0u;
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchResponse, &type metadata for MusicCatalogSearchResponse, &protocol descriptor for MusicCatalogSearchExtendedResponse))
  {
    v12 = (*(v106 + 8))();
    v10 = v107;
    sub_2172CA838(v4, &v331);
    sub_21726A630(&v347[13], v361, &qword_27CB24290, &unk_21775D550);
    *&v324 = v6;
    v108 = v8;
    v23 = v10 + 8;
    v109 = *(v10 + 1);
    *(&v342 + 1) = v12;
    *&v343 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v341);
    sub_217751DE8();
    v110 = v267;

    sub_217751DE8();
    v109(v265, v108, &v331, v361, &v324, v110, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v12, v10);
    v8 = v108;
    sub_2171F0738(&v338, &qword_27CB2ABB8, &unk_217785AB0);
    v338 = v341;
    v339 = v342;
    v340 = v343;
  }

  if (!v8)
  {
    sub_21726A630(v365, v361, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v96)
    {
      sub_2171F0738(v361, &qword_27CB24268, &qword_21777DBE0);
      v265 = 0;
      v8 = 0;
    }

    else
    {
      v12 = v361;
      v265 = sub_2175A2DE8();
      v8 = v111;
      sub_217269E58(v361);
    }
  }

  v112 = v8;
  sub_21726A630(v365, v361, &qword_27CB24268, &qword_21777DBE0);
  if (*&v361[1] == 1)
  {
    v113 = &qword_27CB24268;
    v114 = &qword_21777DBE0;
    v115 = v361;
    goto LABEL_107;
  }

  sub_21726A630(v361, &v341, &qword_27CB24270, &unk_21775D640);
  sub_217269E58(v361);
  if (v342)
  {
    OUTLINED_FUNCTION_35_32();
    MEMORY[0x28223BE20](v116);
    OUTLINED_FUNCTION_0_116();
    sub_2172E49B0(sub_21733B438, v117, v118);
    OUTLINED_FUNCTION_7_62();
    sub_21726A630(v363, &v321, &qword_27CB24188, &dword_217758930);
    if (*(&v322 + 1))
    {
      v324 = v321;
      v325 = v322;
      *&v326 = v323;
    }

    else
    {
      *&v316 = 0;
      v314 = 0u;
      v315 = 0u;
      v10 = *&v345[0];
      if (*&v345[0])
      {
        v211 = *(&v344 + 1);
        OUTLINED_FUNCTION_43_24(&v331);
        *&v331 = v211;
        *(&v331 + 1) = v10;
        OUTLINED_FUNCTION_197();
        boxed_opaque_existential_0 = swift_allocObject();
        v212 = v332;
        *(boxed_opaque_existential_0 + 1) = v331;
        *(boxed_opaque_existential_0 + 2) = v212;
        *(boxed_opaque_existential_0 + 3) = v333;
        OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v334);
        sub_2171F0738(&v314, &qword_27CB24188, &dword_217758930);
        *&v314 = boxed_opaque_existential_0;
        *(&v315 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *&v326 = &off_2829650B8;
        v324 = v314;
        v325 = v315;
        if (*(&v322 + 1))
        {
          sub_2171F0738(&v321, &qword_27CB24188, &dword_217758930);
        }
      }

      else
      {
        *&v326 = 0;
        v325 = 0uLL;
        v324 = 0uLL;
      }
    }

    OUTLINED_FUNCTION_1_109();
    OUTLINED_FUNCTION_2_102();
    *&v331 = v12;
    BYTE8(v331) = 0;
    v332 = v324;
    v333 = v325;
    *&v334 = v326;
    *(&v334 + 1) = v119;
    *&v335 = v120;
    *(&v335 + 1) = v121;
    *&v336 = v10;
    *(&v336 + 1) = boxed_opaque_existential_0;
    v337 = v23;
    OUTLINED_FUNCTION_46_26(v122, v123);
    sub_217751DE8();
    sub_217751DE8();
    v124 = sub_2171F0738(&v341, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    v113 = &qword_27CB24270;
    v114 = &unk_21775D640;
    v115 = &v341;
LABEL_107:
    v124 = sub_2171F0738(v115, v113, v114);
    v331 = 0u;
    v332 = 0u;
    v333 = 0u;
    v334 = 0u;
    v335 = 0u;
    v336 = 0u;
    v337 = 0;
  }

  OUTLINED_FUNCTION_10_55(v124, v125, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v96)
  {
    v126 = &qword_27CB24268;
    v127 = &qword_21777DBE0;
    v128 = v361;
LABEL_116:
    sub_2171F0738(v128, v126, v127);
    v324 = 0u;
    v325 = 0u;
    v326 = 0u;
    v327 = 0u;
    v328 = 0u;
    v329 = 0u;
    v330 = 0;
    goto LABEL_117;
  }

  sub_21726A630((v12 + 8), &v341, &qword_27CB24280, &unk_21775D680);
  sub_217269E58(v361);
  if (!v342)
  {
    v126 = &qword_27CB24280;
    v127 = &unk_21775D680;
    v128 = &v341;
    goto LABEL_116;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_0_116();
  sub_2172E48C0(sub_21733B4A8, v130, v131);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v359, &v314, &qword_27CB24188, &dword_217758930);
  if (*(&v315 + 1))
  {
    v321 = v314;
    v322 = v315;
    v323 = v316;
  }

  else
  {
    *&v309 = 0;
    v307 = 0u;
    v308 = 0u;
    v10 = *&v345[0];
    if (*&v345[0])
    {
      v213 = *(&v344 + 1);
      OUTLINED_FUNCTION_43_24(&v324);
      *&v324 = v213;
      *(&v324 + 1) = v10;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v214 = v325;
      *(boxed_opaque_existential_0 + 1) = v324;
      *(boxed_opaque_existential_0 + 2) = v214;
      *(boxed_opaque_existential_0 + 3) = v326;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v327);
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      *&v307 = boxed_opaque_existential_0;
      *(&v308 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v323 = &off_2829650B8;
      v321 = v307;
      v322 = v308;
      if (*(&v315 + 1))
      {
        sub_2171F0738(&v314, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      v323 = 0;
      v322 = 0uLL;
      v321 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v324 = v12;
  BYTE8(v324) = 0;
  v325 = v321;
  v326 = v322;
  *&v327 = v323;
  *(&v327 + 1) = v132;
  *&v328 = v133;
  *(&v328 + 1) = v134;
  *&v329 = v10;
  *(&v329 + 1) = boxed_opaque_existential_0;
  v330 = v23;
  OUTLINED_FUNCTION_46_26(v135, v136);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(&v341, &qword_27CB24288, &qword_217758F80);
LABEL_117:
  v137 = sub_21726A630(v347, &v321, &qword_27CB25638, &unk_21775EA10);
  OUTLINED_FUNCTION_10_55(v137, v138, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v96)
  {
    v139 = &qword_27CB24268;
    v140 = &qword_21777DBE0;
    v141 = v361;
LABEL_125:
    v150 = sub_2171F0738(v141, v139, v140);
    v314 = 0u;
    v315 = 0u;
    v316 = 0u;
    v317 = 0u;
    v318 = 0u;
    v319 = 0u;
    v320 = 0;
    goto LABEL_126;
  }

  sub_21726A630((v12 + 32), &v341, &qword_27CB242B0, &unk_21775D630);
  sub_217269E58(v361);
  if (!v342)
  {
    v139 = &qword_27CB242B0;
    v140 = &unk_21775D630;
    v141 = &v341;
    goto LABEL_125;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_0_116();
  sub_2172E4884(sub_21733B41C, v143, v144);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v357, &v304, &qword_27CB24188, &dword_217758930);
  if (*(&v305 + 1))
  {
    v307 = v304;
    v308 = v305;
    *&v309 = v306;
  }

  else
  {
    *&v299 = 0;
    v297 = 0u;
    v298 = 0u;
    v10 = *&v345[0];
    if (*&v345[0])
    {
      v215 = *(&v344 + 1);
      OUTLINED_FUNCTION_43_24(&v314);
      *&v314 = v215;
      *(&v314 + 1) = v10;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v216 = v315;
      *(boxed_opaque_existential_0 + 1) = v314;
      *(boxed_opaque_existential_0 + 2) = v216;
      *(boxed_opaque_existential_0 + 3) = v316;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v317);
      sub_2171F0738(&v297, &qword_27CB24188, &dword_217758930);
      *&v297 = boxed_opaque_existential_0;
      *(&v298 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      *&v309 = &off_2829650B8;
      v307 = v297;
      v308 = v298;
      if (*(&v305 + 1))
      {
        sub_2171F0738(&v304, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      *&v309 = 0;
      v307 = 0uLL;
      v308 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v314 = v12;
  BYTE8(v314) = 0;
  v315 = v307;
  v316 = v308;
  *&v317 = v309;
  *(&v317 + 1) = v145;
  *&v318 = v146;
  *(&v318 + 1) = v147;
  *&v319 = v10;
  *(&v319 + 1) = boxed_opaque_existential_0;
  v320 = v23;
  OUTLINED_FUNCTION_46_26(v148, v149);
  sub_217751DE8();
  sub_217751DE8();
  v150 = sub_2171F0738(&v341, &qword_27CB242B8, &unk_21777EEA0);
LABEL_126:
  OUTLINED_FUNCTION_10_55(v150, v151, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v96)
  {
    v152 = &qword_27CB24268;
    v153 = &qword_21777DBE0;
    v154 = v361;
LABEL_134:
    sub_2171F0738(v154, v152, v153);
    v307 = 0u;
    v308 = 0u;
    v309 = 0u;
    v310 = 0u;
    v311 = 0u;
    v312 = 0u;
    v313 = 0;
    goto LABEL_135;
  }

  sub_21726A630((v12 + 40), &v341, &qword_27CB242C0, &unk_21775D650);
  sub_217269E58(v361);
  if (!v342)
  {
    v152 = &qword_27CB242C0;
    v153 = &unk_21775D650;
    v154 = &v341;
    goto LABEL_134;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_0_116();
  sub_2172E48FC(sub_21733B454, v156, v157);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v355, &v297, &qword_27CB24188, &dword_217758930);
  if (*(&v298 + 1))
  {
    v304 = v297;
    v305 = v298;
    v306 = v299;
  }

  else
  {
    *&v292 = 0;
    v290 = 0u;
    v291 = 0u;
    v10 = *&v345[0];
    if (*&v345[0])
    {
      v217 = *(&v344 + 1);
      OUTLINED_FUNCTION_43_24(&v307);
      *&v307 = v217;
      *(&v307 + 1) = v10;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v218 = v308;
      *(boxed_opaque_existential_0 + 1) = v307;
      *(boxed_opaque_existential_0 + 2) = v218;
      *(boxed_opaque_existential_0 + 3) = v309;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v310);
      sub_2171F0738(&v290, &qword_27CB24188, &dword_217758930);
      *&v290 = boxed_opaque_existential_0;
      *(&v291 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v306 = &off_2829650B8;
      v304 = v290;
      v305 = v291;
      if (*(&v298 + 1))
      {
        sub_2171F0738(&v297, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      v306 = 0;
      v304 = 0uLL;
      v305 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v307 = v12;
  BYTE8(v307) = 0;
  v308 = v304;
  v309 = v305;
  *&v310 = v306;
  *(&v310 + 1) = v158;
  *&v311 = v159;
  *(&v311 + 1) = v160;
  *&v312 = v10;
  *(&v312 + 1) = boxed_opaque_existential_0;
  v313 = v23;
  OUTLINED_FUNCTION_46_26(v161, v162);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(&v341, &qword_27CB242C8, &unk_217758970);
LABEL_135:
  v163 = sub_21726A630(&v348, &v304, &qword_27CB25630, &qword_21775D568);
  OUTLINED_FUNCTION_10_55(v163, v164, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v96)
  {
    v165 = &qword_27CB24268;
    v166 = &qword_21777DBE0;
    v167 = v361;
LABEL_143:
    v176 = sub_2171F0738(v167, v165, v166);
    v297 = 0u;
    v298 = 0u;
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    v302 = 0u;
    v303 = 0;
    goto LABEL_144;
  }

  sub_21726A630((v12 + 48), &v341, &qword_27CB242D0, &unk_21775D660);
  sub_217269E58(v361);
  if (!v342)
  {
    v165 = &qword_27CB242D0;
    v166 = &unk_21775D660;
    v167 = &v341;
    goto LABEL_143;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_0_116();
  sub_2172E49EC(sub_21733B470, v169, v170);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v353, &v283, &qword_27CB24188, &dword_217758930);
  if (*(&v284 + 1))
  {
    v290 = v283;
    v291 = v284;
    *&v292 = v285;
  }

  else
  {
    v278 = 0;
    v276 = 0u;
    v277 = 0u;
    v10 = *&v345[0];
    if (*&v345[0])
    {
      v219 = *(&v344 + 1);
      OUTLINED_FUNCTION_43_24(&v297);
      *&v297 = v219;
      *(&v297 + 1) = v10;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v220 = v298;
      *(boxed_opaque_existential_0 + 1) = v297;
      *(boxed_opaque_existential_0 + 2) = v220;
      *(boxed_opaque_existential_0 + 3) = v299;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v300);
      sub_2171F0738(&v276, &qword_27CB24188, &dword_217758930);
      *&v276 = boxed_opaque_existential_0;
      *(&v277 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      *&v292 = &off_2829650B8;
      v290 = v276;
      v291 = v277;
      if (*(&v284 + 1))
      {
        sub_2171F0738(&v283, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      *&v292 = 0;
      v290 = 0uLL;
      v291 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v297 = v12;
  BYTE8(v297) = 0;
  v298 = v290;
  v299 = v291;
  *&v300 = v292;
  *(&v300 + 1) = v171;
  *&v301 = v172;
  *(&v301 + 1) = v173;
  *&v302 = v10;
  *(&v302 + 1) = boxed_opaque_existential_0;
  v303 = v23;
  OUTLINED_FUNCTION_46_26(v174, v175);
  sub_217751DE8();
  sub_217751DE8();
  v176 = sub_2171F0738(&v341, &qword_27CB242D8, &unk_21777EEB0);
LABEL_144:
  OUTLINED_FUNCTION_10_55(v176, v177, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v96)
  {
    v178 = &qword_27CB24268;
    v179 = &qword_21777DBE0;
    v180 = v361;
LABEL_152:
    v189 = sub_2171F0738(v180, v178, v179);
    v290 = 0u;
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    v294 = 0u;
    v295 = 0u;
    v296 = 0;
    goto LABEL_153;
  }

  sub_21726A630((v12 + 56), &v341, &qword_27CB242E0, &unk_21777EEE0);
  sub_217269E58(v361);
  if (!v342)
  {
    v178 = &qword_27CB242E0;
    v179 = &unk_21777EEE0;
    v180 = &v341;
    goto LABEL_152;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_0_116();
  sub_2172E480C(sub_21733B5A4, v182, v183);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v351, &v276, &qword_27CB24188, &dword_217758930);
  if (*(&v277 + 1))
  {
    v283 = v276;
    v284 = v277;
    *&v285 = v278;
  }

  else
  {
    v282 = 0;
    v280 = 0u;
    v281 = 0u;
    v10 = *&v345[0];
    if (*&v345[0])
    {
      v221 = *(&v344 + 1);
      OUTLINED_FUNCTION_43_24(&v290);
      *&v290 = v221;
      *(&v290 + 1) = v10;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v222 = v291;
      *(boxed_opaque_existential_0 + 1) = v290;
      *(boxed_opaque_existential_0 + 2) = v222;
      *(boxed_opaque_existential_0 + 3) = v292;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v293);
      sub_2171F0738(&v280, &qword_27CB24188, &dword_217758930);
      *&v280 = boxed_opaque_existential_0;
      *(&v281 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      *&v285 = &off_2829650B8;
      v283 = v280;
      v284 = v281;
      if (*(&v277 + 1))
      {
        sub_2171F0738(&v276, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      *&v285 = 0;
      v283 = 0uLL;
      v284 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v290 = v12;
  BYTE8(v290) = 0;
  v291 = v283;
  v292 = v284;
  *&v293 = v285;
  *(&v293 + 1) = v184;
  *&v294 = v185;
  *(&v294 + 1) = v186;
  *&v295 = v10;
  *(&v295 + 1) = boxed_opaque_existential_0;
  v296 = v23;
  OUTLINED_FUNCTION_46_26(v187, v188);
  sub_217751DE8();
  sub_217751DE8();
  v189 = sub_2171F0738(&v341, &qword_27CB242E8, &unk_21775D6B0);
LABEL_153:
  OUTLINED_FUNCTION_10_55(v189, v190, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v96)
  {
    v191 = &qword_27CB24268;
    v192 = &qword_21777DBE0;
    v193 = v361;
LABEL_161:
    sub_2171F0738(v193, v191, v192);
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v286 = 0u;
    v287 = 0u;
    v288 = 0u;
    v289 = 0;
    goto LABEL_162;
  }

  sub_21726A630((v12 + 64), &v341, &qword_27CB242F0, &unk_217797B80);
  sub_217269E58(v361);
  if (!v342)
  {
    v191 = &qword_27CB242F0;
    v192 = &unk_217797B80;
    v193 = &v341;
    goto LABEL_161;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_0_116();
  sub_2172E4848(sub_21733B5C0, v195, v196);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v349, &v280, &qword_27CB24188, &dword_217758930);
  if (*(&v281 + 1))
  {
    v276 = v280;
    v277 = v281;
    v278 = v282;
  }

  else
  {
    v275 = 0;
    v273 = 0u;
    v274 = 0u;
    v10 = *&v345[0];
    if (*&v345[0])
    {
      v223 = *(&v344 + 1);
      OUTLINED_FUNCTION_43_24(&v283);
      *&v283 = v223;
      *(&v283 + 1) = v10;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v224 = v284;
      *(boxed_opaque_existential_0 + 1) = v283;
      *(boxed_opaque_existential_0 + 2) = v224;
      *(boxed_opaque_existential_0 + 3) = v285;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v286);
      sub_2171F0738(&v273, &qword_27CB24188, &dword_217758930);
      *&v273 = boxed_opaque_existential_0;
      *(&v274 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v278 = &off_2829650B8;
      v276 = v273;
      v277 = v274;
      if (*(&v281 + 1))
      {
        sub_2171F0738(&v280, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      v278 = 0;
      v276 = 0uLL;
      v277 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v283 = v12;
  BYTE8(v283) = 0;
  v284 = v276;
  v285 = v277;
  *&v286 = v278;
  *(&v286 + 1) = v197;
  *&v287 = v198;
  *(&v287 + 1) = v199;
  *&v288 = v10;
  *(&v288 + 1) = boxed_opaque_existential_0;
  v289 = v23;
  OUTLINED_FUNCTION_46_26(v200, v201);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(&v341, &qword_27CB242F8, &qword_21775D6C0);
LABEL_162:
  v202 = sub_21726A630(v346, v361, &qword_27CB24300, &qword_217771D70);
  if (*&v361[1])
  {
    v278 = 0;
    v276 = 0u;
    v277 = 0u;
    MEMORY[0x28223BE20](v202);
    OUTLINED_FUNCTION_0_116();
    v205 = sub_2172E4CDC(sub_2175F70BC, v203, v204);
    sub_21726A630(&v276, &v273, &qword_27CB24188, &dword_217758930);
    if (*(&v274 + 1))
    {
      sub_2171F0738(&v276, &qword_27CB24188, &dword_217758930);
      v280 = v273;
      v281 = v274;
      v282 = v275;
      v206 = v264;
    }

    else
    {
      v272 = 0;
      v270 = 0u;
      v271 = 0u;
      v207 = *&v361[4];
      if (*&v361[4])
      {
        v208 = *(&v361[3] + 1);
        OUTLINED_FUNCTION_43_24(&v341);
        *&v341 = v208;
        *(&v341 + 1) = v207;
        OUTLINED_FUNCTION_197();
        v209 = swift_allocObject();
        v210 = v342;
        v209[1] = v341;
        v209[2] = v210;
        v209[3] = v343;
        OUTLINED_FUNCTION_42_33(v209, v344);
        sub_2171F0738(&v270, &qword_27CB24188, &dword_217758930);
        sub_2171F0738(&v276, &qword_27CB24188, &dword_217758930);
        *&v270 = v209;
        *(&v271 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
        v272 = &off_2829650B8;
      }

      else
      {
        sub_2171F0738(&v276, &qword_27CB24188, &dword_217758930);
      }

      v206 = v264;
      v280 = v270;
      v281 = v271;
      v282 = v272;
      if (*(&v274 + 1))
      {
        sub_2171F0738(&v273, &qword_27CB24188, &dword_217758930);
      }
    }

    if (*(&v361[0] + 1) == 1)
    {
      v225 = 0;
    }

    else
    {
      v225 = *&v361[0];
    }

    if (*(&v361[0] + 1) == 1)
    {
      v226 = 0;
    }

    else
    {
      v226 = *(&v361[0] + 1);
    }

    *&v341 = v205;
    BYTE8(v341) = 0;
    v342 = v280;
    v343 = v281;
    *&v344 = v282;
    *(&v344 + 1) = v225;
    *&v345[0] = v226;
    *(&v345[0] + 1) = *(&v361[1] + 1);
    *&v345[1] = *&v361[2];
    *(&v345[1] + 8) = v361[7];
    OUTLINED_FUNCTION_46_26(*&v361[0], *(&v361[0] + 1));
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v361, &qword_27CB24308, &unk_217767A90);
  }

  else
  {
    sub_2171F0738(v361, &qword_27CB24300, &qword_217771D70);
    v341 = 0u;
    v342 = 0u;
    v343 = 0u;
    v344 = 0u;
    memset(v345, 0, 40);
    v206 = v264;
  }

  sub_21726A630(&v338, &v280, &qword_27CB2ABB8, &unk_217785AB0);
  *(v14 + 1080) = v265;
  *(v14 + 1088) = v112;
  *(v14 + 1096) = v206;
  sub_21726A630(&v331, &v276, &qword_27CB25318, &qword_2177657C0);
  if (v279)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA1AC(MEMORY[0x277D84F90]);
    if (v279)
    {
      sub_2171F0738(&v276, &qword_27CB25318, &qword_2177657C0);
    }
  }

  memcpy(v14, v361, 0x68uLL);
  sub_21726A630(&v324, &v276, &qword_27CB25310, &unk_21775D3D0);
  if (v279)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA180(MEMORY[0x277D84F90]);
    if (v279)
    {
      sub_2171F0738(&v276, &qword_27CB25310, &unk_21775D3D0);
    }
  }

  OUTLINED_FUNCTION_40_30((v14 + 104));
  sub_21726A630(&v321, &v276, &qword_27CB25610, &qword_21775D540);
  if (v279)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA154(MEMORY[0x277D84F90]);
    if (v279)
    {
      sub_2171F0738(&v276, &qword_27CB25610, &qword_21775D540);
    }
  }

  OUTLINED_FUNCTION_40_30((v14 + 208));
  sub_21726A630(&v314, &v276, &qword_27CB25338, &unk_21775D3E0);
  if (v279)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA128(MEMORY[0x277D84F90]);
    if (v279)
    {
      sub_2171F0738(&v276, &qword_27CB25338, &unk_21775D3E0);
    }
  }

  OUTLINED_FUNCTION_40_30((v14 + 312));
  sub_21726A630(&v307, &v276, &qword_27CB25330, &unk_21775E9B0);
  if (v279)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA0FC(MEMORY[0x277D84F90]);
    if (v279)
    {
      sub_2171F0738(&v276, &qword_27CB25330, &unk_21775E9B0);
    }
  }

  OUTLINED_FUNCTION_40_30((v14 + 416));
  sub_21726A630(&v304, &v276, &qword_27CB25608, &unk_21775D530);
  if (v279)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA0D0(MEMORY[0x277D84F90]);
    if (v279)
    {
      sub_2171F0738(&v276, &qword_27CB25608, &unk_21775D530);
    }
  }

  OUTLINED_FUNCTION_40_30((v14 + 520));
  sub_21726A630(&v297, &v276, &qword_27CB25328, &unk_21775D3F0);
  if (v279)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA0A4(MEMORY[0x277D84F90]);
    if (v279)
    {
      sub_2171F0738(&v276, &qword_27CB25328, &unk_21775D3F0);
    }
  }

  OUTLINED_FUNCTION_40_30((v14 + 624));
  sub_21726A630(&v290, &v276, &qword_27CB255A8, &unk_21775D450);
  if (v279)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA078(MEMORY[0x277D84F90]);
    if (v279)
    {
      sub_2171F0738(&v276, &qword_27CB255A8, &unk_21775D450);
    }
  }

  OUTLINED_FUNCTION_40_30((v14 + 728));
  sub_21726A630(&v283, &v276, &qword_27CB255B0, &unk_217793B50);
  if (v279)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA04C(MEMORY[0x277D84F90]);
    if (v279)
    {
      sub_2171F0738(&v276, &qword_27CB255B0, &unk_217793B50);
    }
  }

  OUTLINED_FUNCTION_40_30((v14 + 832));
  sub_21726A630(&v341, &v276, &qword_27CB26E78, &qword_217785AC0);
  if (v279)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA020(MEMORY[0x277D84F90]);
    if (v279)
    {
      sub_2171F0738(&v276, &qword_27CB26E78, &qword_217785AC0);
    }
  }

  OUTLINED_FUNCTION_40_30((v14 + 936));
  sub_21726A630(&v280, &v276, &qword_27CB2ABB8, &unk_217785AB0);
  v227 = *(&v277 + 1);
  if (*(&v277 + 1))
  {
    v228 = v278;
    __swift_project_boxed_opaque_existential_1(&v276, *(&v277 + 1));
    sub_2171F9380(v227, v228, v361);

    sub_2171F0738(v262, &qword_27CB2AC08, &qword_217786368);
    sub_2175A336C(v263);
    OUTLINED_FUNCTION_169_1(&v280);
    sub_2171F0738(&v341, &qword_27CB26E78, &qword_217785AC0);
    sub_2171F0738(&v283, &qword_27CB255B0, &unk_217793B50);
    sub_2171F0738(&v290, &qword_27CB255A8, &unk_21775D450);
    sub_2171F0738(&v297, &qword_27CB25328, &unk_21775D3F0);
    sub_2171F0738(&v304, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(&v307, &qword_27CB25330, &unk_21775E9B0);
    sub_2171F0738(&v314, &qword_27CB25338, &unk_21775D3E0);
    sub_2171F0738(&v321, &qword_27CB25610, &qword_21775D540);
    sub_2171F0738(&v324, &qword_27CB25310, &unk_21775D3D0);
    sub_2171F0738(&v331, &qword_27CB25318, &qword_2177657C0);
    OUTLINED_FUNCTION_169_1(&v338);
    sub_2171F0738(v346, &qword_27CB24300, &qword_217771D70);
    sub_2175F6E84(v347);
    OUTLINED_FUNCTION_169_1(v349);
    OUTLINED_FUNCTION_169_1(v351);
    OUTLINED_FUNCTION_169_1(v353);
    OUTLINED_FUNCTION_169_1(v355);
    OUTLINED_FUNCTION_169_1(v357);
    OUTLINED_FUNCTION_169_1(v359);
    OUTLINED_FUNCTION_169_1(v363);
    sub_2171F0738(v365, &qword_27CB24268, &qword_21777DBE0);
    sub_21733AB9C(v4);
    __swift_destroy_boxed_opaque_existential_1(&v276);
  }

  else
  {

    sub_2171F0738(v262, &qword_27CB2AC08, &qword_217786368);
    sub_2175A336C(v263);
    OUTLINED_FUNCTION_169_1(&v280);
    sub_2171F0738(&v341, &qword_27CB26E78, &qword_217785AC0);
    sub_2171F0738(&v283, &qword_27CB255B0, &unk_217793B50);
    sub_2171F0738(&v290, &qword_27CB255A8, &unk_21775D450);
    sub_2171F0738(&v297, &qword_27CB25328, &unk_21775D3F0);
    sub_2171F0738(&v304, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(&v307, &qword_27CB25330, &unk_21775E9B0);
    sub_2171F0738(&v314, &qword_27CB25338, &unk_21775D3E0);
    sub_2171F0738(&v321, &qword_27CB25610, &qword_21775D540);
    sub_2171F0738(&v324, &qword_27CB25310, &unk_21775D3D0);
    sub_2171F0738(&v331, &qword_27CB25318, &qword_2177657C0);
    OUTLINED_FUNCTION_169_1(&v338);
    sub_2171F0738(v346, &qword_27CB24300, &qword_217771D70);
    sub_2175F6E84(v347);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v229, v230, v231);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v232, v233, v234);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v235, v236, v237);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v238, v239, v240);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v241, v242, v243);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v244, v245, v246);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v247, v248, v249);
    sub_2171F0738(v365, &qword_27CB24268, &qword_21777DBE0);
    sub_21733AB9C(v4);
    OUTLINED_FUNCTION_169_1(&v276);
    memset(v361, 0, 40);
  }

  result = *v361;
  v251 = v361[1];
  *(v14 + 1040) = v361[0];
  *(v14 + 1056) = v251;
  *(v14 + 1072) = *&v361[2];
  return result;
}

uint64_t sub_2175EDB88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = result;
  *(a8 + 32) = 0;
  *a8 = 0u;
  *(a8 + 16) = 0u;
  v9 = *(v8 + 64);
  if (v9)
  {
    v17 = *(v8 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2177586E0;
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;
    *(v18 + 48) = a5;
    *(v18 + 56) = a6;
    sub_2172CA838(a7, v27);
    sub_217751DE8();
    sub_217751DE8();
    if (a2)
    {
      v19 = a2;
      v20 = v17;
      v21 = v26;
    }

    else
    {
      sub_217751DE8();
      static URL.valueForQueryItem(named:extractedFrom:)();
      v21 = v22;
      v19 = v23;

      v20 = v17;
    }

    v29 = v27[0];
    v30 = v27[1];
    v31 = v28;
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = v19;
    *(v24 + 32) = v18;
    *(v24 + 40) = v20;
    *(v24 + 48) = v9;
    v25 = v30;
    *(v24 + 56) = v29;
    *(v24 + 72) = v25;
    *(v24 + 88) = v31;
    sub_217751DE8();
    result = sub_2171F0738(a8, &qword_27CB24188, &dword_217758930);
    *a8 = v24;
    *(a8 + 24) = &type metadata for MusicCatalogSearchIncrementalLoader;
    *(a8 + 32) = &protocol witness table for MusicCatalogSearchIncrementalLoader;
  }

  return result;
}

uint64_t sub_2175EDD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X8>)
{
  v80 = a5;
  v81 = a1;
  v82 = a2;
  v84 = a4;
  sub_21726A630(a4, v133, &qword_27CB242A0, &unk_21777EEF0);
  v83 = a3;
  v78 = a7;
  v79 = a6;
  if (v134)
  {
    sub_21726A630(v133, &v125, &qword_27CB242A8, &unk_21775D570);
    if (qword_280BE7FE8 != -1)
    {
      swift_once();
    }

    sub_2175EDB88(v81, v82, xmmword_280BE7FF0, *(&xmmword_280BE7FF0 + 1), xmmword_280BE8000, *(&xmmword_280BE8000 + 1), a3, v131);
    sub_2171F0738(&v125, &qword_27CB242A8, &unk_21775D570);
    if (v134)
    {
      sub_21726A630(v133, &v119, &qword_27CB242A8, &unk_21775D570);
      memset(&v129[1], 0, 40);
      sub_2171F0738(&v129[1], &qword_27CB24188, &dword_217758930);
      sub_21726A630(v131, &v129[1], &qword_27CB24188, &dword_217758930);
      v10 = v119;
      v11 = v120;
      v12 = v121;
      v13 = v122;
      v15 = *(&v124 + 1);
      v14 = v124;
      sub_2171FB568(v119, *(&v119 + 1));
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(&v119, &qword_27CB242A8, &unk_21775D570);
      v125 = v10;
      v126 = v11;
      v127 = v12;
      v129[0] = 0;
      v128 = v13;
      goto LABEL_8;
    }
  }

  else
  {
    v132 = 0;
    memset(v131, 0, sizeof(v131));
  }

  v14 = 0;
  v15 = 0;
  memset(v129, 0, sizeof(v129));
  v128 = 0u;
  v127 = 0u;
  v126 = 0u;
  v125 = 0u;
LABEL_8:
  *&v130 = v14;
  *(&v130 + 1) = v15;
  sub_21733BBDC(&v125, v133, &qword_27CB242A0, &unk_21777EEF0);
  sub_21726A630(v84 + 128, &v119, &qword_27CB24290, &unk_21775D550);
  v16 = v120;
  if (!v120)
  {
    sub_2171F0738(&v119, &qword_27CB24290, &unk_21775D550);
    v85 = 0;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    memset(v129, 0, sizeof(v129));
    v130 = 0u;
    goto LABEL_14;
  }

  v17 = v119;
  sub_2171FB568(v119, *(&v119 + 1));
  v18 = sub_2175EA9B4(v16);
  v85 = 0;
  v19 = *(&v120 + 1);
  v20 = v121;
  v76 = *(&v122 + 1);
  v21 = v122;
  v77 = v18;
  v22 = v123[0];
  sub_21726A630(&v123[1], &v129[1], &qword_27CB24188, &dword_217758930);
  v125 = v17;
  *&v126 = v77;
  *(&v126 + 1) = v19;
  v127 = v20;
  v128 = __PAIR128__(v76, v21);
  v129[0] = v22;
  v130 = v124;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(&v119, &qword_27CB24298, &qword_21777CD60);
  if (!v126)
  {
LABEL_14:
    v23 = v83;
    v118 = 0;
    memset(v117, 0, sizeof(v117));
    goto LABEL_15;
  }

  sub_21726A630(&v125, &v119, &qword_27CB242A8, &unk_21775D570);
  v23 = v83;
  if (qword_280BE7FE8 != -1)
  {
    swift_once();
  }

  sub_2175EDB88(v81, v82, xmmword_280BE7FF0, *(&xmmword_280BE7FF0 + 1), xmmword_280BE8000, *(&xmmword_280BE8000 + 1), v83, v117);
  sub_2171F0738(&v119, &qword_27CB242A8, &unk_21775D570);
LABEL_15:
  if (v126)
  {
    sub_21726A630(&v125, v116, &qword_27CB242A8, &unk_21775D570);
    memset(&v123[1], 0, 40);
    sub_2171F0738(&v123[1], &qword_27CB24188, &dword_217758930);
    sub_21726A630(v117, &v123[1], &qword_27CB24188, &dword_217758930);
    v25 = *(&v116[0] + 1);
    v24 = *&v116[0];
    v26 = v116[1];
    v27 = v116[2];
    v28 = *&v116[3];
    v30 = *(&v116[7] + 1);
    v29 = *&v116[7];
    sub_2171FB568(*&v116[0], *(&v116[0] + 1));
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v116, &qword_27CB242A8, &unk_21775D570);
    v119 = __PAIR128__(v25, v24);
    v120 = v26;
    v121 = v27;
    v23 = v83;
    v123[0] = 0;
    v122 = v28;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    memset(v123, 0, sizeof(v123));
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
  }

  *&v124 = v29;
  *(&v124 + 1) = v30;
  sub_21733BBDC(&v119, &v125, &qword_27CB242A0, &unk_21777EEF0);
  v124 = 0u;
  memset(v123, 0, sizeof(v123));
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  sub_21726A630(&v125, v115, &qword_27CB242A0, &unk_21777EEF0);
  if (!*&v115[1])
  {
    v32 = v115;
LABEL_23:
    sub_2171F0738(v32, &qword_27CB242A0, &unk_21777EEF0);
    sub_21726A630(&v125, v115, &qword_27CB242A0, &unk_21777EEF0);
    if (*&v115[1])
    {
      memcpy(v116, v115, sizeof(v116));
    }

    else
    {
      sub_21726A630(v133, v116, &qword_27CB242A0, &unk_21777EEF0);
      if (*&v115[1])
      {
        sub_2171F0738(v115, &qword_27CB242A0, &unk_21777EEF0);
      }
    }

    v31 = v116;
    goto LABEL_28;
  }

  memcpy(v116, v115, sizeof(v116));
  sub_21726A630(v133, v114, &qword_27CB242A0, &unk_21777EEF0);
  if (!*&v114[1])
  {
    sub_2171F0738(v116, &qword_27CB242A8, &unk_21775D570);
    v32 = v114;
    goto LABEL_23;
  }

  memcpy(v115, v114, sizeof(v115));
  sub_217312AC8(v115, v23, 0, v114);
  sub_2171F0738(v115, &qword_27CB242A8, &unk_21775D570);
  sub_2171F0738(v116, &qword_27CB242A8, &unk_21775D570);
  v31 = v114;
LABEL_28:
  sub_21733BBDC(v31, &v119, &qword_27CB242A0, &unk_21777EEF0);
  sub_21726A630(v84 + 128, v115, &qword_27CB24290, &unk_21775D550);
  v33 = *&v115[1];
  if (*&v115[1])
  {
    v34 = v115[0];
    sub_2171FB568(*&v115[0], *(&v115[0] + 1));
    v35 = sub_2175EA414(v33);
    v36 = *(&v115[1] + 1);
    v76 = *(&v115[2] + 1);
    v37 = *&v115[2];
    v77 = v35;
    v38 = v115[3];
    v39 = *&v115[4];
    sub_21726A630(&v115[4] + 8, &v116[4] + 8, &qword_27CB24188, &dword_217758930);
    v116[0] = v34;
    *&v116[1] = v77;
    *(&v116[1] + 1) = v36;
    v116[2] = __PAIR128__(v76, v37);
    v116[3] = v38;
    *&v116[4] = v39;
    v116[7] = v115[7];
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v115, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_2171F0738(v115, &qword_27CB24290, &unk_21775D550);
    memset(v116, 0, sizeof(v116));
  }

  sub_21726A630(v84 + 128, v114, &qword_27CB24290, &unk_21775D550);
  v40 = *&v114[1];
  if (*&v114[1])
  {
    v41 = v114[0];
    sub_2171FB568(*&v114[0], *(&v114[0] + 1));
    v42 = sub_2175EAF5C(v40);
    v43 = *(&v114[1] + 1);
    v76 = *(&v114[2] + 1);
    v44 = *&v114[2];
    v77 = v42;
    v45 = v114[3];
    v46 = *&v114[4];
    sub_21726A630(&v114[4] + 8, &v115[4] + 8, &qword_27CB24188, &dword_217758930);
    v115[0] = v41;
    *&v115[1] = v77;
    *(&v115[1] + 1) = v43;
    v115[2] = __PAIR128__(v76, v44);
    v115[3] = v45;
    *&v115[4] = v46;
    v115[7] = v114[7];
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v47 = sub_2171F0738(v114, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    v47 = sub_2171F0738(v114, &qword_27CB24290, &unk_21775D550);
    memset(v115, 0, sizeof(v115));
  }

  v48 = v83;
  v49 = v79;
  if (!*(v80 + 16))
  {
    goto LABEL_44;
  }

  if (qword_280BE7FE8 != -1)
  {
    v47 = swift_once();
  }

  v114[0] = xmmword_280BE7FF0;
  v114[1] = xmmword_280BE8000;
  MEMORY[0x28223BE20](v47);
  v74 = v114;
  v50 = sub_2173DE19C();
  if ((v50 & 1) == 0)
  {
    v50 = sub_2171F0738(&v119, &qword_27CB242A0, &unk_21777EEF0);
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    memset(v123, 0, sizeof(v123));
    v124 = 0u;
  }

  if (*(v80 + 16))
  {
    if (qword_280BE61F8 != -1)
    {
      v50 = swift_once();
    }

    v114[0] = xmmword_280BE6200;
    v114[1] = xmmword_280BE6210;
    MEMORY[0x28223BE20](v50);
    v74 = v114;
    v51 = sub_2173DE19C();

    if (!v51)
    {
      sub_2171F0738(v116, &qword_27CB2AC10, &unk_217786370);
      memset(v116, 0, sizeof(v116));
    }
  }

  else
  {
LABEL_44:
  }

  if (!v120)
  {
    goto LABEL_53;
  }

  sub_21726A630(&v123[1], v92, &qword_27CB24188, &dword_217758930);
  if (*(&v92[1] + 1))
  {
    v111 = v92[0];
    v112 = v92[1];
    v113 = *&v92[2];
    goto LABEL_54;
  }

  if (v120)
  {
    sub_21726A630(&v119, v114, &qword_27CB242A8, &unk_21775D570);
    if (qword_280BE7FE8 != -1)
    {
      swift_once();
    }

    sub_2175EDB88(v81, v82, xmmword_280BE7FF0, *(&xmmword_280BE7FF0 + 1), xmmword_280BE8000, *(&xmmword_280BE8000 + 1), v83, &v111);
    sub_2171F0738(v114, &qword_27CB242A8, &unk_21775D570);
    if (*(&v92[1] + 1))
    {
      sub_2171F0738(v92, &qword_27CB24188, &dword_217758930);
    }
  }

  else
  {
LABEL_53:
    v113 = 0;
    v111 = 0u;
    v112 = 0u;
  }

LABEL_54:
  if (*&v116[1])
  {
    sub_21726A630(v116, v114, &qword_27CB25628, &qword_21775D560);
    if (qword_280BE61F8 != -1)
    {
      swift_once();
    }

    sub_2175EDB88(v81, v82, xmmword_280BE6200, *(&xmmword_280BE6200 + 1), xmmword_280BE6210, *(&xmmword_280BE6210 + 1), v83, v109);

    sub_2171F0738(v114, &qword_27CB25628, &qword_21775D560);
  }

  else
  {

    v110 = 0;
    memset(v109, 0, sizeof(v109));
  }

  if (v120)
  {
    v52 = sub_21726A630(&v119, v114, &qword_27CB242A8, &unk_21775D570);
    MEMORY[0x28223BE20](v52);
    v74 = v49;
    v75 = v48;
    v53 = v85;
    v55 = sub_2172E4974(sub_21733B9E0, v73, v54);
    v85 = v53;
    sub_21726A630(&v111, &v103, &qword_27CB24188, &dword_217758930);
    if (*(&v104 + 1))
    {
      v92[0] = v103;
      v92[1] = v104;
      *&v92[2] = v105;
    }

    else
    {
      *&v98 = 0;
      v96 = 0u;
      v97 = 0u;
      v65 = *&v114[4];
      if (*&v114[4])
      {
        v66 = *(&v114[3] + 1);
        sub_2172CA838(v48, &v92[1]);
        *&v92[0] = v66;
        *(&v92[0] + 1) = v65;
        v67 = swift_allocObject();
        v68 = v92[1];
        *(v67 + 16) = v92[0];
        *(v67 + 32) = v68;
        *(v67 + 48) = v92[2];
        *(v67 + 64) = *&v92[3];
        sub_217751DE8();
        sub_2171F0738(&v96, &qword_27CB24188, &dword_217758930);
        *&v96 = v67;
        *(&v97 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *&v92[2] = &off_2829650B8;
        v92[0] = v96;
        v92[1] = v97;
        if (*(&v104 + 1))
        {
          sub_2171F0738(&v103, &qword_27CB24188, &dword_217758930);
        }
      }

      else
      {
        memset(v92, 0, 40);
      }
    }

    if (*(&v114[0] + 1) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *&v114[0];
    }

    if (*(&v114[0] + 1) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(&v114[0] + 1);
    }

    *&v103 = v55;
    BYTE8(v103) = 0;
    v104 = v92[0];
    v105 = v92[1];
    *&v106 = *&v92[2];
    *(&v106 + 1) = v56;
    *&v107 = v57;
    *(&v107 + 1) = *(&v114[1] + 1);
    v108[0] = *&v114[2];
    *&v108[1] = v114[7];
    sub_2171FB568(*&v114[0], *(&v114[0] + 1));
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v114, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    v107 = 0u;
    memset(v108, 0, 24);
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
  }

  sub_21726A630(v115, v114, &qword_27CB24290, &unk_21775D550);
  if (*&v116[1])
  {
    v58 = sub_21726A630(v116, v92, &qword_27CB25628, &qword_21775D560);
    MEMORY[0x28223BE20](v58);
    v74 = v49;
    v75 = v48;
    v60 = sub_2172E4938(sub_21733B9C4, v73, v59);
    sub_21726A630(v109, &v89, &qword_27CB24188, &dword_217758930);
    if (*(&v90 + 1))
    {
      v95[0] = v89;
      v95[1] = v90;
      *&v95[2] = v91;
    }

    else
    {
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      v69 = *&v92[4];
      if (*&v92[4])
      {
        v70 = *(&v92[3] + 1);
        sub_2172CA838(v48, &v97);
        *&v96 = v70;
        *(&v96 + 1) = v69;
        v71 = swift_allocObject();
        v72 = v97;
        *(v71 + 16) = v96;
        *(v71 + 32) = v72;
        *(v71 + 48) = v98;
        *(v71 + 64) = v99;
        sub_217751DE8();
        sub_2171F0738(&v86, &qword_27CB24188, &dword_217758930);
        *&v86 = v71;
        *(&v87 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *&v95[2] = &off_2829650B8;
        v95[0] = v86;
        v95[1] = v87;
        if (*(&v90 + 1))
        {
          sub_2171F0738(&v89, &qword_27CB24188, &dword_217758930);
        }
      }

      else
      {
        memset(v95, 0, 40);
      }
    }

    if (*(&v92[0] + 1) == 1)
    {
      v61 = 0;
    }

    else
    {
      v61 = *&v92[0];
    }

    if (*(&v92[0] + 1) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = *(&v92[0] + 1);
    }

    *&v96 = v60;
    BYTE8(v96) = 0;
    v97 = v95[0];
    v98 = v95[1];
    *&v99 = *&v95[2];
    *(&v99 + 1) = v61;
    *&v100 = v62;
    *(&v100 + 1) = *(&v92[1] + 1);
    *&v101 = *&v92[2];
    *(&v101 + 1) = v93;
    v102 = v94;
    sub_2171FB568(*&v92[0], *(&v92[0] + 1));
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v92, &qword_27CB25628, &qword_21775D560);
  }

  else
  {
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
  }

  sub_21726A630(&v103, v95, &qword_27CB25610, &qword_21775D540);
  v63 = v78;
  if (*(&v95[5] + 1))
  {
    memcpy(v92, v95, 0x68uLL);
  }

  else
  {
    sub_2174AA154(MEMORY[0x277D84F90]);
    if (*(&v95[5] + 1))
    {
      sub_2171F0738(v95, &qword_27CB25610, &qword_21775D540);
    }
  }

  memcpy(v63, v92, 0x68uLL);
  sub_21726A630(v114, v63 + 104, &qword_27CB24290, &unk_21775D550);
  sub_21726A630(&v96, v95, &qword_27CB25608, &unk_21775D530);
  if (*(&v95[5] + 1))
  {
    sub_2171F0738(&v96, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(v114, &qword_27CB24290, &unk_21775D550);
    sub_2171F0738(&v103, &qword_27CB25610, &qword_21775D540);
    memcpy(v92, v95, 0x68uLL);
  }

  else
  {
    sub_2174AA0D0(MEMORY[0x277D84F90]);
    sub_2171F0738(&v96, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(v114, &qword_27CB24290, &unk_21775D550);
    sub_2171F0738(&v103, &qword_27CB25610, &qword_21775D540);
    if (*(&v95[5] + 1))
    {
      sub_2171F0738(v95, &qword_27CB25608, &unk_21775D530);
    }
  }

  memcpy((v63 + 232), v92, 0x68uLL);

  sub_2175F6ED8(v84);
  sub_2171F0738(v109, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(&v111, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(v115, &qword_27CB24290, &unk_21775D550);
  sub_2171F0738(v117, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(v131, &qword_27CB24188, &dword_217758930);
  sub_21733AB9C(v48);
  sub_2171F0738(v116, &qword_27CB2AC10, &unk_217786370);
  sub_2171F0738(&v119, &qword_27CB242A0, &unk_21777EEF0);
  sub_2171F0738(&v125, &qword_27CB242A0, &unk_21777EEF0);
  return sub_2171F0738(v133, &qword_27CB242A0, &unk_21777EEF0);
}

uint64_t sub_2175EF160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v43 = a3;
  sub_21726A630(v3 + 1040, v29, &qword_27CB2ABA8, &qword_217785A90);
  v7 = *(&v29[1] + 1);
  if (*(&v29[1] + 1))
  {
    v8 = *(v3 + 1096);
    v9 = *&v29[2];
    __swift_project_boxed_opaque_existential_1(v29, *(&v29[1] + 1));
    v32[0] = v8;
    (*(v9 + 16))(v35, a2, v32, a1, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v7, v9);
    result = sub_2175F3478(v29);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_2171F0738(v29, &qword_27CB2ABA8, &qword_217785A90);
    v35[0] = 0;
    v35[1] = 0;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35[2] = 1;
    v42 = 0;
  }

  sub_21726A630(v3 + 208, v28, &qword_27CB25638, &unk_21775EA10);
  sub_21726A630(v35, v30, &qword_27CB2ABD8, &qword_217786300);
  if (v30[2] == 1)
  {
    sub_2171F0738(v30, &qword_27CB2ABD8, &qword_217786300);
    memset(v29, 0, 128);
  }

  else
  {
    sub_21726A630(v30, v29, &qword_27CB24290, &unk_21775D550);
    sub_2175F6F2C(v30);
  }

  sub_21726A630(v3 + 520, v30, &qword_27CB25630, &qword_21775D568);
  sub_21726A630(v28, v26, &qword_27CB25610, &qword_21775D540);
  if (v26[11])
  {
    memcpy(v27, v26, 0x68uLL);
  }

  else
  {
    sub_2174AA154(MEMORY[0x277D84F90]);
    if (v26[11])
    {
      sub_2171F0738(v26, &qword_27CB25610, &qword_21775D540);
    }
  }

  memcpy(v32, v27, sizeof(v32));
  sub_21726A630(v29, &v33, &qword_27CB24290, &unk_21775D550);
  sub_21726A630(v30, v26, &qword_27CB25608, &unk_21775D530);
  if (v26[11])
  {
    sub_2171F0738(v30, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(v29, &qword_27CB24290, &unk_21775D550);
    sub_2171F0738(v28, &qword_27CB25610, &qword_21775D540);
    memcpy(v27, v26, 0x68uLL);
  }

  else
  {
    sub_2174AA0D0(MEMORY[0x277D84F90]);
    sub_2171F0738(v30, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(v29, &qword_27CB24290, &unk_21775D550);
    sub_2171F0738(v28, &qword_27CB25610, &qword_21775D540);
    if (v26[11])
    {
      sub_2171F0738(v26, &qword_27CB25608, &unk_21775D530);
    }
  }

  memcpy(v34, v27, sizeof(v34));
  v11 = sub_2175EFC58(a2, *(v3 + 1096), a1, v30);
  if (v4)
  {
    sub_2175F6E84(v32);
    return sub_2171F0738(v35, &qword_27CB2ABD8, &qword_217786300);
  }

  else
  {
    if (qword_280BE62F0 != -1)
    {
      v11 = swift_once();
    }

    v29[0] = xmmword_280BE62F8;
    v29[1] = xmmword_280BE6308;
    MEMORY[0x28223BE20](v11);
    v12 = sub_2173DE19C();
    if (v12)
    {
      sub_2172EBBF4();
    }

    else
    {
      memset(v28, 0, sizeof(v28));
    }

    if (qword_280BE6270 != -1)
    {
      v12 = swift_once();
    }

    v29[0] = xmmword_280BE6278;
    v29[1] = xmmword_280BE6288;
    MEMORY[0x28223BE20](v12);
    if (sub_2173DE19C())
    {
      sub_2172EBD40();
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    sub_21726A630(&v31, v26, &qword_27CB24290, &unk_21775D550);
    v13 = sub_21726A630(v30, v25, &qword_27CB242A0, &unk_21777EEF0);
    if (qword_280BE6378 != -1)
    {
      v13 = swift_once();
    }

    v29[0] = xmmword_280BE6380;
    v29[1] = xmmword_280BE6390;
    MEMORY[0x28223BE20](v13);
    v14 = sub_2173DE19C();
    if (v14)
    {
      sub_2172EC0A8();
    }

    else
    {
      memset(v24, 0, sizeof(v24));
    }

    if (qword_280BE6220 != -1)
    {
      v14 = swift_once();
    }

    v29[0] = xmmword_280BE6228;
    v29[1] = xmmword_280BE6238;
    MEMORY[0x28223BE20](v14);
    v15 = sub_2173DE19C();
    if (v15)
    {
      sub_2172EC1F4();
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    if (qword_280BE6348 != -1)
    {
      v15 = swift_once();
    }

    v29[0] = xmmword_280BE6350;
    v29[1] = xmmword_280BE6360;
    MEMORY[0x28223BE20](v15);
    v16 = sub_2173DE19C();
    if (v16)
    {
      sub_2172ECA8C();
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    if (qword_280BEB138 != -1)
    {
      v16 = swift_once();
    }

    v29[0] = xmmword_280BEB140;
    v29[1] = xmmword_280BEB150;
    MEMORY[0x28223BE20](v16);
    v17 = sub_2173DE19C();
    if (v17)
    {
      sub_2172EC48C();
    }

    else
    {
      memset(v21, 0, sizeof(v21));
    }

    if (qword_280BE6248 != -1)
    {
      v17 = swift_once();
    }

    v29[0] = xmmword_280BE6250;
    v29[1] = xmmword_280BE6260;
    MEMORY[0x28223BE20](v17);
    if (sub_2173DE19C())
    {
      sub_2172EC340();
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    sub_2172ECBD8();
    sub_2175F6ED8(v30);
    sub_2175F6E84(v32);
    sub_2171F0738(v35, &qword_27CB2ABD8, &qword_217786300);
    memcpy(v29, v28, 0x80uLL);
    memcpy(&v29[8], v27, 0x80uLL);
    memcpy(&v29[16], v26, 0x80uLL);
    memcpy(&v29[24], v25, 0x80uLL);
    memcpy(&v29[32], v24, 0x80uLL);
    memcpy(&v29[40], v23, 0x80uLL);
    memcpy(&v29[48], v22, 0x80uLL);
    memcpy(&v29[56], v21, 0x80uLL);
    memcpy(&v29[64], v20, 0x80uLL);
    v18 = *(v3 + 1096);
    v19 = v43;
    memcpy(v43, v29, 0x500uLL);
    v19[160] = v18;
    return sub_217751DE8();
  }
}

uint64_t sub_2175EFC58@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v185 = a3;
  v175 = a4;
  v8 = &v209;
  v202 = sub_217752B68();
  v9 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v11 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v13 = *(v12 - 8);
  v187 = v12;
  v188 = v13;
  MEMORY[0x28223BE20](v12);
  v186 = &v166 - v14;
  v196 = type metadata accessor for CloudRawCurator(0);
  MEMORY[0x28223BE20](v196);
  v228 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
  v194 = *(v16 - 8);
  v195 = v16;
  MEMORY[0x28223BE20](v16);
  v200 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v199 = (&v166 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v21 = *(v20 - 8);
  v204 = v20;
  v205 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v176 = &v166 - v25;
  MEMORY[0x28223BE20](v26);
  v201 = &v166 - v27;
  MEMORY[0x28223BE20](v28);
  v183 = &v166 - v29;
  MEMORY[0x28223BE20](v30);
  v203 = &v166 - v32;
  memset(__dst, 0, 128);
  memset(v226, 0, sizeof(v226));
  if (qword_280BE7FE8 != -1)
  {
    goto LABEL_105;
  }

  while (1)
  {
    v33 = xmmword_280BE8000;
    *(v8 + 30) = xmmword_280BE7FF0;
    v216[1] = v33;
    MEMORY[0x28223BE20](v31);
    *(&v166 - 2) = v34;
    v35 = v5;
    v36 = sub_2173DE19C();
    v37 = a2;
    if ((v36 & 1) == 0)
    {
      goto LABEL_60;
    }

    v169 = v5;
    v214 = 0;
    v212 = 0u;
    v213 = 0u;
    v211 = 0;
    v209 = 0u;
    v210 = 0u;
    sub_21726A630(v177 + 16, v215, &qword_27CB24188, &dword_217758930);
    v198 = v23;
    if (!*(&v215[1] + 1))
    {
      v166 = a2;
      sub_2171F0738(v215, &qword_27CB24188, &dword_217758930);
      goto LABEL_19;
    }

    v197 = v9;
    v38 = a1;
    v216[0] = v215[0];
    v216[1] = v215[1];
    *&v216[2] = *&v215[2];
    KeyPath = swift_getKeyPath(byte_217786308);
    v42 = sub_2175F1A0C(KeyPath, v40, v41);

    if (qword_280BE4BF0 != -1)
    {
      swift_once();
    }

    v190 = qword_280BE4C00;
    v191 = qword_280BE4BF8;
    v43 = sub_2176324F4(qword_280BE4BF8, qword_280BE4C00, byte_280BE4C08);
    if (v44)
    {
      v45 = v43;
      swift_isUniquelyReferenced_nonNull_native();
      *&v215[0] = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABE0, &qword_217786338);
      sub_217752CB8();
      v46 = *&v215[0];

      v47 = v46[7] + 40 * v45;
      v48 = *v47;
      v192 = *(v47 + 16);
      v193 = v48;
      v49 = *(v47 + 32);
      sub_2172CA7E4(v50, v51, v52);
      sub_217752CD8();
    }

    else
    {
      v49 = 0;
      v192 = 0u;
      v193 = 0u;
      v46 = v42;
    }

    sub_2171F0738(&v212, &qword_27CB24188, &dword_217758930);
    v212 = v193;
    v213 = v192;
    v214 = v49;
    if (qword_280BE7E50 != -1)
    {
      swift_once();
    }

    v189 = qword_280BE7E58;
    v184 = qword_280BE7E60;
    v53 = sub_2176324F4(qword_280BE7E58, qword_280BE7E60, byte_280BE7E68);
    if (v54)
    {
      v55 = v53;
      swift_isUniquelyReferenced_nonNull_native();
      *&v215[0] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABE0, &qword_217786338);
      sub_217752CB8();
      v46 = *&v215[0];

      v56 = v46[7] + 40 * v55;
      v57 = *v56;
      v192 = *(v56 + 16);
      v193 = v57;
      v58 = *(v56 + 32);
      sub_2172CA7E4(v59, v60, v61);
      sub_217752CD8();
    }

    else
    {
      v58 = 0;
      v192 = 0u;
      v193 = 0u;
    }

    a2 = v38;
    sub_2171F0738(&v209, &qword_27CB24188, &dword_217758930);
    v209 = v193;
    v210 = v192;
    v211 = v58;
    v62 = v197;
    if (v46[2])
    {
      break;
    }

    v166 = v37;
    sub_217283154(v216);

LABEL_19:
    sub_2172EC940();
    v202 = v218;
    v8 = *(v218 + 16);
    v173 = *(&v217 + 1);
    v174 = v217;
    sub_2171FB568(v217, *(&v217 + 1));
    v9 = 0;
    a1 = &qword_27CB24490;
    v23 = &qword_21775A250;
    v184 = MEMORY[0x277D84F90];
    while (v8 != v9)
    {
      if (v9 >= *(v202 + 16))
      {
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v11 = (*(v205 + 80) + 32) & ~*(v205 + 80);
      v5 = *(v205 + 72);
      v64 = v203;
      sub_21726A630(v202 + v11 + v5 * v9, v203, &qword_27CB24490, &qword_21775A250);
      v65 = (v64 + v204[9]);
      v66 = *v65;
      a2 = v65[1];
      if (qword_280BE7E50 != -1)
      {
        swift_once();
      }

      v67 = v66 == qword_280BE7E58 && a2 == qword_280BE7E60;
      if (v67 || (sub_217753058() & 1) != 0)
      {
        sub_2171F0738(v203, &qword_27CB24490, &qword_21775A250);
        ++v9;
      }

      else
      {
        sub_21726A594(v203, v198, &qword_27CB24490, &qword_21775A250);
        v68 = v184;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v216[0] = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2172767B8(0, *(v68 + 16) + 1, 1);
          v68 = *&v216[0];
        }

        a2 = *(v68 + 16);
        v70 = *(v68 + 24);
        v71 = a2 + 1;
        if (a2 >= v70 >> 1)
        {
          v197 = a2 + 1;
          sub_2172767B8((v70 > 1), a2 + 1, 1);
          v71 = v197;
          v68 = *&v216[0];
        }

        ++v9;
        *(v68 + 16) = v71;
        v184 = v68;
        sub_21726A594(v198, v68 + v11 + a2 * v5, &qword_27CB24490, &qword_21775A250);
      }
    }

    v72 = *(&v218 + 1);
    v73 = v219;
    v74 = v220;
    v75 = v221;
    v76 = v222;
    v77 = v223;
    sub_21726A630(v224, v208, &qword_27CB24188, &dword_217758930);
    a1 = v173;
    v9 = v174;
    v207[0] = v174;
    v207[1] = v173;
    v207[2] = v184;
    v207[3] = v72;
    v171 = v74;
    v172 = v72;
    v78 = v75;
    v5 = v77;
    v23 = v73;
    v79 = *(&v225 + 1);
    v207[4] = v23;
    v207[5] = v74;
    a2 = v225;
    v207[6] = v78;
    v207[7] = v76;
    v170 = v76;
    v207[8] = v5;
    *&v208[40] = v225;
    v11 = *(v184 + 16);
    v181 = v225;
    v182 = v5;
    v180 = *(&v225 + 1);
    v167 = v78;
    v168 = v23;
    if (v11)
    {
      sub_2171FB568(v174, v173);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171FB568(v9, a1);
      v206 = MEMORY[0x277D84F90];
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217276778(0, v11, 0);
      v80 = 0;
      v81 = v184;
      v178 = v184 + ((*(v205 + 80) + 32) & ~*(v205 + 80));
      v179 = v11;
      v203 = v206;
      v8 = v199;
      while (v80 < *(v81 + 16))
      {
        v82 = v178 + *(v205 + 72) * v80;
        v198 = v80;
        v83 = v183;
        sub_21726A630(v82, v183, &qword_27CB24490, &qword_21775A250);
        v84 = v228;
        sub_2175F70D8(v83, v228, type metadata accessor for CloudCurator);
        swift_storeEnumTagMultiPayload();
        sub_2175F70D8(v84, v8, type metadata accessor for CloudRawCurator);
        v85 = v204[10];
        v86 = v83 + v204[9];
        v87 = *(v86 + 8);
        *&v192 = *v86;
        *&v193 = v87;
        LODWORD(v191) = *(v86 + 16);
        v23 = *(v83 + v85 + 8);
        v197 = *(v83 + v85);
        v88 = v204[11];
        memcpy(v216, (v83 + v88), sizeof(v216));
        v89 = *(v83 + v204[12]);
        v90 = *(v83 + v204[13]);
        v91 = *(v83 + v204[14]);
        v189 = *(v83 + v204[15]);
        v190 = v90;
        v92 = v195;
        v93 = v199 + v195[9];
        *v93 = v192;
        *(v93 + 1) = v87;
        v93[16] = v191;
        v8 = v199;
        v94 = v199 + v92[10];
        *v94 = v197;
        *(v94 + 1) = v23;
        memcpy(v8 + v92[11], (v83 + v88), 0x180uLL);
        *(v8 + v92[12]) = v89;
        v95 = v189;
        v9 = v190;
        *(v8 + v92[13]) = v190;
        *(v8 + v92[14]) = v91;
        *(v8 + v92[15]) = v95;
        sub_217751DE8();
        sub_217751DE8();
        sub_21726A630(v216, v215, &qword_27CB25620, &qword_21776A5F0);
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2175F7190(v228, type metadata accessor for CloudRawCurator);
        sub_2171F0738(v83, &qword_27CB24490, &qword_21775A250);
        v206 = v203;
        a2 = *(v203 + 16);
        v96 = *(v203 + 24);
        a1 = (a2 + 1);
        if (a2 >= v96 >> 1)
        {
          sub_217276778((v96 > 1), a2 + 1, 1);
          v203 = v206;
        }

        v97 = v198 + 1;
        v98 = v203;
        *(v203 + 16) = a1;
        sub_21726A594(v8, v98 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * a2, &qword_27CB247B0, &qword_21775A1C0);
        v11 = v179;
        v5 = v182;
        v81 = v184;
        v80 = v97;
        if (v179 == v97)
        {
          v99 = v173;
          v9 = v174;
          v100 = v167;
          v23 = v168;
          v11 = v181;
          v79 = v180;
          goto LABEL_43;
        }
      }

      goto LABEL_104;
    }

    sub_2171FB568(v174, v173);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171FB568(v9, a1);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v203 = MEMORY[0x277D84F90];
    v11 = a2;
    v100 = v78;
    v99 = a1;
LABEL_43:
    a1 = &qword_27CB24188;
    sub_21726A630(v208, &v215[4] + 8, &qword_27CB24188, &dword_217758930);
    *&v215[0] = v9;
    *(&v215[0] + 1) = v99;
    v101 = v203;
    *&v215[1] = v203;
    *(&v215[1] + 1) = v172;
    *&v215[2] = v23;
    *(&v215[2] + 1) = v171;
    *&v215[3] = v100;
    *(&v215[3] + 1) = v170;
    *&v215[4] = v5;
    *&v215[7] = v11;
    *(&v215[7] + 1) = v79;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v207, &qword_27CB242A8, &unk_21775D570);
    *(&v216[4] + 8) = 0u;
    *(&v216[5] + 8) = 0u;
    *(&v216[6] + 1) = 0;
    sub_2171F0738(&v216[4] + 8, &qword_27CB24188, &dword_217758930);
    sub_21726A630(&v212, &v216[4] + 8, &qword_27CB24188, &dword_217758930);
    v102 = v173;
    v9 = v174;
    sub_2171FB568(v174, v173);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v215, &qword_27CB24298, &qword_21777CD60);
    *&v216[0] = v9;
    *(&v216[0] + 1) = v102;
    *&v216[1] = v101;
    *(&v216[1] + 1) = v172;
    *&v216[2] = v23;
    *(&v216[2] + 1) = v171;
    v216[3] = v100;
    *&v216[4] = 0;
    *&v216[7] = v11;
    *(&v216[7] + 1) = v79;
    sub_21733BBDC(v216, __dst, &qword_27CB24290, &unk_21775D550);
    v5 = 0;
    v103 = v202;
    v203 = *(v202 + 16);
    v104 = MEMORY[0x277D84F90];
    v8 = &qword_27CB24490;
    a2 = &qword_21775A250;
    while (v203 != v5)
    {
      if (v5 >= *(v103 + 16))
      {
        goto LABEL_102;
      }

      v9 = (*(v205 + 80) + 32) & ~*(v205 + 80);
      v11 = *(v205 + 72);
      v105 = v201;
      sub_21726A630(v103 + v9 + v11 * v5, v201, &qword_27CB24490, &qword_21775A250);
      v106 = v105 + v204[9];
      a1 = *v106;
      v23 = *(v106 + 8);
      if (qword_280BE7E50 != -1)
      {
        swift_once();
      }

      v107 = a1 == qword_280BE7E58 && v23 == qword_280BE7E60;
      if (v107 || (sub_217753058() & 1) != 0)
      {
        sub_21726A594(v201, v176, &qword_27CB24490, &qword_21775A250);
        v108 = swift_isUniquelyReferenced_nonNull_native();
        *&v216[0] = v104;
        if ((v108 & 1) == 0)
        {
          sub_2172767B8(0, *(v104 + 16) + 1, 1);
          v104 = *&v216[0];
        }

        v23 = *(v104 + 16);
        v109 = *(v104 + 24);
        a1 = (v23 + 1);
        if (v23 >= v109 >> 1)
        {
          sub_2172767B8((v109 > 1), v23 + 1, 1);
          v104 = *&v216[0];
        }

        ++v5;
        *(v104 + 16) = a1;
        sub_21726A594(v176, v104 + v9 + v23 * v11, &qword_27CB24490, &qword_21775A250);
        v103 = v202;
      }

      else
      {
        sub_2171F0738(v201, &qword_27CB24490, &qword_21775A250);
        ++v5;
        v103 = v202;
      }
    }

    sub_21726A630(v224, &v215[4] + 8, &qword_27CB24188, &dword_217758930);
    *&v215[0] = v174;
    *(&v215[0] + 1) = v173;
    *&v215[1] = v104;
    *(&v215[1] + 1) = v172;
    *&v215[2] = v168;
    *(&v215[2] + 1) = v171;
    *&v215[3] = v167;
    *(&v215[3] + 1) = v170;
    *&v215[4] = v182;
    *&v215[7] = v181;
    *(&v215[7] + 1) = v180;
    sub_2175EB2B8(&v209, 0, v216);
    sub_2171F0738(v215, &qword_27CB242A8, &unk_21775D570);
    sub_2171F0738(&v209, &qword_27CB24188, &dword_217758930);
    sub_2171F0738(&v212, &qword_27CB24188, &dword_217758930);
    sub_2171F0738(v226, &qword_27CB242A0, &unk_21777EEF0);
    sub_2171F0738(&v217, &qword_27CB242A8, &unk_21775D570);
    v36 = memcpy(v226, v216, sizeof(v226));
    v35 = v169;
LABEL_60:
    if (qword_280BE61F8 != -1)
    {
      v36 = swift_once();
    }

    v216[0] = xmmword_280BE6200;
    v216[1] = xmmword_280BE6210;
    MEMORY[0x28223BE20](v36);
    *(&v166 - 2) = v216;
    v110 = sub_2173DE19C();
    v190 = v35;
    v111 = MEMORY[0x277D84F90];
    v9 = v200;
    if (!v110)
    {
      goto LABEL_74;
    }

    sub_2172EC7F4();
    v8 = v218;
    v5 = *(v218 + 16);
    if (!v5)
    {
      v131 = *(&v217 + 1);
      v130 = v217;
      sub_2171FB568(v217, *(&v217 + 1));
      v205 = MEMORY[0x277D84F90];
LABEL_71:
      v228 = *(&v218 + 1);
      v132 = v219;
      v133 = v220;
      v134 = v221;
      v135 = v222;
      v136 = v223;
      sub_21726A630(v224, &v216[4] + 8, &qword_27CB24188, &dword_217758930);
      *&v216[0] = v130;
      *(&v216[0] + 1) = v131;
      *&v216[1] = v205;
      *(&v216[1] + 1) = v228;
      *&v216[2] = v132;
      *(&v216[2] + 1) = v133;
      *&v216[3] = v134;
      *(&v216[3] + 1) = v135;
      *&v216[4] = v136;
      v216[7] = v225;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(&v217, &qword_27CB25628, &qword_21775D560);
      sub_21726A630(v216, v215, &qword_27CB24298, &qword_21777CD60);
      sub_2172B2EE8();
      v111 = v137;
      v138 = *(v137 + 16);
      if (v138 >= *(v137 + 24) >> 1)
      {
        sub_2172B2EE8();
        v111 = v165;
      }

      sub_2171F0738(v216, &qword_27CB24298, &qword_21777CD60);
      *(v111 + 16) = v138 + 1;
      memcpy((v111 + (v138 << 7) + 32), v215, 0x80uLL);
LABEL_74:
      sub_21726A630(v177 + 104, v215, &qword_27CB24290, &unk_21775D550);
      if (*&v215[1])
      {
        memcpy(v216, v215, 0x80uLL);
        sub_21726A630(v216, v215, &qword_27CB24298, &qword_21777CD60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2172B2EE8();
          v111 = v163;
        }

        v139 = *(v111 + 16);
        if (v139 >= *(v111 + 24) >> 1)
        {
          sub_2172B2EE8();
          v111 = v164;
        }

        sub_2171F0738(v216, &qword_27CB24298, &qword_21777CD60);
        *(v111 + 16) = v139 + 1;
        memcpy((v111 + (v139 << 7) + 32), v215, 0x80uLL);
      }

      else
      {
        sub_2171F0738(v215, &qword_27CB24290, &unk_21775D550);
      }

      v140 = *(v111 + 16);
      if (v140)
      {
        v141 = v111 + 32;
        do
        {
          sub_21726A630(v141, v216, &qword_27CB24298, &qword_21777CD60);
          sub_21726A630(__dst, v215, &qword_27CB24290, &unk_21775D550);
          v142 = *&v215[1];
          sub_2171F0738(v215, &qword_27CB24290, &unk_21775D550);
          if (v142)
          {
            if (__dst[2])
            {
              sub_21726A630(__dst, &v217, &qword_27CB24298, &qword_21777CD60);
              sub_217312AF4(v216, v185, 1, v215);
              sub_2171F0738(&v217, &qword_27CB24298, &qword_21777CD60);
              sub_2171F0738(v216, &qword_27CB24298, &qword_21777CD60);
            }

            else
            {
              sub_2171F0738(v216, &qword_27CB24298, &qword_21777CD60);
              memset(v215, 0, 128);
            }

            sub_21733BBDC(v215, __dst, &qword_27CB24290, &unk_21775D550);
          }

          else
          {
            sub_2171F0738(__dst, &qword_27CB24290, &unk_21775D550);
            memcpy(__dst, v216, 0x80uLL);
          }

          v141 += 128;
          --v140;
        }

        while (v140);
      }

      if (__dst[2])
      {
        sub_21726A630(__dst, v215, &qword_27CB24298, &qword_21777CD60);
        if (__dst[2])
        {
          sub_21726A630(&__dst[9], v216, &qword_27CB24188, &dword_217758930);
          if (*(&v216[1] + 1))
          {
            sub_21765D1E8(&v217);
            sub_217283154(v216);
            goto LABEL_97;
          }

          sub_2171F0738(v216, &qword_27CB24188, &dword_217758930);
        }

        v217 = 0u;
        v218 = 0u;
        v219 = 0;
LABEL_97:
        sub_2175EB2B8(&v217, 0, v216);
        sub_2171F0738(&v217, &qword_27CB24188, &dword_217758930);
        sub_2171F0738(v215, &qword_27CB24298, &qword_21777CD60);
      }

      else
      {
        memset(v216, 0, 128);
      }

      sub_21733BBDC(v216, __dst, &qword_27CB24290, &unk_21775D550);
      v143 = v175;
      memcpy(v175, v226, 0x80uLL);
      sub_21726A630(__dst, v143 + 128, &qword_27CB24290, &unk_21775D550);
      return sub_2171F0738(__dst, &qword_27CB24290, &unk_21775D550);
    }

    v184 = *(&v217 + 1);
    v189 = v217;
    sub_2171FB568(v217, *(&v217 + 1));
    v207[0] = v111;
    sub_217276778(0, v5, 0);
    a2 = 0;
    v191 = v8 + ((*(v188 + 80) + 32) & ~*(v188 + 80));
    *&v192 = v5;
    v112 = v207[0];
    *&v193 = v8;
    while (a2 < v8[2])
    {
      v113 = v191 + *(v188 + 72) * a2;
      v205 = v112;
      v114 = v186;
      sub_21726A630(v113, v186, &qword_27CB247C0, &unk_21779AA10);
      v115 = v228;
      sub_2175F70D8(v114, v228, type metadata accessor for CloudRadioShow);
      swift_storeEnumTagMultiPayload();
      sub_2175F70D8(v115, v9, type metadata accessor for CloudRawCurator);
      v116 = v187[10];
      v117 = v114 + v187[9];
      v118 = *(v117 + 8);
      v201 = *v117;
      v202 = v118;
      LODWORD(v199) = *(v117 + 16);
      v119 = *(v114 + v116 + 8);
      v203 = *(v114 + v116);
      v120 = v187[11];
      memcpy(v216, (v114 + v120), sizeof(v216));
      v121 = *(v114 + v187[12]);
      v122 = *(v114 + v187[13]);
      v11 = *(v114 + v187[14]);
      v197 = *(v114 + v187[15]);
      v198 = v122;
      v204 = a2;
      v123 = v195;
      v124 = &v200[v195[9]];
      *v124 = v201;
      *(v124 + 1) = v118;
      v124[16] = v199;
      v9 = v200;
      v125 = &v200[v123[10]];
      *v125 = v203;
      *(v125 + 1) = v119;
      memcpy((v9 + v123[11]), (v114 + v120), 0x180uLL);
      *(v9 + v123[12]) = v121;
      v126 = v197;
      v23 = v198;
      *(v9 + v123[13]) = v198;
      *(v9 + v123[14]) = v11;
      *(v9 + v123[15]) = v126;
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v216, v215, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2175F7190(v228, type metadata accessor for CloudRawCurator);
      v127 = v114;
      v112 = v205;
      sub_2171F0738(v127, &qword_27CB247C0, &unk_21779AA10);
      v207[0] = v112;
      v129 = *(v112 + 16);
      v128 = *(v112 + 24);
      a1 = (v129 + 1);
      if (v129 >= v128 >> 1)
      {
        sub_217276778((v128 > 1), v129 + 1, 1);
        v112 = v207[0];
      }

      a2 = v204 + 1;
      *(v112 + 16) = a1;
      sub_21726A594(v9, v112 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v129, &qword_27CB247B0, &qword_21775A1C0);
      v5 = v192;
      v8 = v193;
      if (v192 == a2)
      {
        v130 = v189;
        v131 = v184;
        v205 = v112;
        goto LABEL_71;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    v31 = swift_once();
  }

  sub_21726A630(a2, v215, &qword_27CB2ABC0, &qword_217785AC8);
  v182 = v11;
  if (*(&v215[1] + 1))
  {
    __swift_project_boxed_opaque_existential_1(v215, *(&v215[1] + 1));
    v63 = sub_2177532D8();
    __swift_destroy_boxed_opaque_existential_1(v215);
  }

  else
  {
    sub_2171F0738(v215, &qword_27CB2ABC0, &qword_217785AC8);
    v63 = MEMORY[0x277D84F90];
  }

  v207[0] = v63;
  v145 = static MusicCatalogSearchResponse.relativeCodingPathForRawResponseAppleCuratorResultsIncrementalLoader.getter();
  sub_217543F4C(v145);
  *&v215[0] = 0;
  *(&v215[0] + 1) = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD00000000000006ELL, 0x80000002177B28C0);
  *&v217 = 34;
  *(&v217 + 1) = 0xE100000000000000;
  MEMORY[0x21CEA23B0](v191, v190);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v217, *(&v217 + 1));

  MEMORY[0x21CEA23B0](544370464, 0xE400000000000000, v146);
  *&v217 = 34;
  *(&v217 + 1) = 0xE100000000000000;
  MEMORY[0x21CEA23B0](v189, v184);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v217, *(&v217 + 1));

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v147);
  *&v217 = 0;
  *(&v217 + 1) = 0xE000000000000000;
  sub_217752AA8();

  *&v217 = 0xD00000000000001DLL;
  *(&v217 + 1) = 0x80000002177B2930;
  sub_2172CA7E4(v148, v149, v150);
  v151 = sub_217751DA8();
  v153 = v152;

  MEMORY[0x21CEA23B0](v151, v153, v154);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v155);
  MEMORY[0x21CEA23B0](v217, *(&v217 + 1));

  v156 = v182;
  sub_217752B08();
  v157 = sub_217752B78();
  swift_allocError();
  v159 = v158;
  v160 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26EC0, &qword_217786330) + 48);
  v159[3] = &type metadata for AnyMusicItemCollectionIncrementalLoader;
  v161 = swift_allocObject();
  *v159 = v161;
  sub_2172830F8(v216, v161 + 16);
  v162 = v202;
  (*(v62 + 16))(v159 + v160, v156, v202);
  (*(*(v157 - 8) + 104))(v159, *MEMORY[0x277D841A8], v157);
  swift_willThrow();
  (*(v62 + 8))(v156, v162);
  sub_217283154(v216);
  sub_2171F0738(&v209, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(&v212, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(v226, &qword_27CB242A0, &unk_21777EEF0);
  return sub_2171F0738(__dst, &qword_27CB24290, &unk_21775D550);
}

void *sub_2175F1A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2172CA7E4(a1, a2, a3);
  v108 = sub_217751DC8();
  sub_2171FF30C(v3, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  if (swift_dynamicCast())
  {
    v4 = *&__dst[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A2C8, &qword_21777F1E8);
    v5 = sub_217751DC8();
    v109 = v4 + 32;
    v110 = *(v4 + 16);
    v111 = v4;
    sub_217751DE8();
    for (i = 0; i != v110; i = v112)
    {
      if (i >= *(v111 + 16))
      {
        goto LABEL_81;
      }

      sub_2172830F8(v109 + 40 * i, v127);
      sub_2171FF30C(v127, v125);
      sub_2171FF30C(v125, v123);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_88;
      }

      v112 = i + 1;
      memcpy(__dst, __src, sizeof(__dst));
      swift_getAtKeyPath();
      v7 = *&__src[0] + 64;
      v8 = 1 << *(*&__src[0] + 32);
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v10 = v9 & *(*&__src[0] + 64);
      v11 = (v8 + 63) >> 6;
      v118 = *&__src[0];
      sub_217751DE8();
      v12 = 0;
      v113 = v7;
      v115 = v11;
      if (v10)
      {
        while (1)
        {
LABEL_14:
          v14 = __clz(__rbit64(v10)) | (v12 << 6);
          v15 = *(v118 + 48) + 24 * v14;
          v17 = *v15;
          v16 = *(v15 + 8);
          v18 = *(v15 + 16);
          sub_2175F6F80(*(v118 + 56) + 80 * v14, &__src[1] + 8);
          *&__src[0] = v17;
          *(&__src[0] + 1) = v16;
          LOBYTE(__src[1]) = v18;
          if (*(v5 + 16))
          {
            sub_217751DE8();
            v19 = sub_2176324F4(v17, v16, v18);
            v20 = MEMORY[0x277D84F90];
            if ((v21 & 1) == 0)
            {
              goto LABEL_19;
            }

            v20 = *(*(v5 + 56) + 8 * v19);
          }

          else
          {
            v20 = MEMORY[0x277D84F90];
          }

          sub_217751DE8();
LABEL_19:
          sub_2172830F8(v127, v123);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B2028();
            v20 = v39;
          }

          v22 = *(v20 + 16);
          if (v22 >= *(v20 + 24) >> 1)
          {
            sub_2172B2028();
            v20 = v40;
          }

          *(v20 + 16) = v22 + 1;
          v119 = v20;
          v23 = v20 + 40 * v22;
          v24 = v123[0];
          v25 = v123[1];
          *(v23 + 64) = v124;
          *(v23 + 32) = v24;
          *(v23 + 48) = v25;
          swift_isUniquelyReferenced_nonNull_native();
          *&v123[0] = v5;
          v26 = v17;
          v27 = v18;
          v28 = sub_2176324F4(v17, v16, v18);
          if (__OFADD__(*(v5 + 16), (v29 & 1) == 0))
          {
            goto LABEL_77;
          }

          v30 = v28;
          v31 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABF8, &qword_217786350);
          if (sub_217752CB8())
          {
            v32 = sub_2176324F4(v26, v16, v27);
            if ((v31 & 1) != (v33 & 1))
            {
              goto LABEL_87;
            }

            v30 = v32;
          }

          v34 = *&v123[0];
          if (v31)
          {
            *(*(*&v123[0] + 56) + 8 * v30) = v119;

            v5 = v34;
          }

          else
          {
            *(*&v123[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
            v35 = v34[6] + 24 * v30;
            *v35 = v26;
            *(v35 + 8) = v16;
            *(v35 + 16) = v27;
            *(v34[7] + 8 * v30) = v119;
            v36 = v34[2];
            v37 = __OFADD__(v36, 1);
            v38 = v36 + 1;
            if (v37)
            {
              goto LABEL_78;
            }

            v5 = v34;
            v34[2] = v38;
            sub_217751DE8();
          }

          v10 &= v10 - 1;
          sub_2171F0738(__src, &qword_27CB2AC00, &unk_217786358);
          v7 = v113;
          v11 = v115;
          if (!v10)
          {
            goto LABEL_10;
          }
        }
      }

      while (1)
      {
LABEL_10:
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        if (v13 >= v11)
        {
          break;
        }

        v10 = *(v7 + 8 * v13);
        ++v12;
        if (v10)
        {
          v12 = v13;
          goto LABEL_14;
        }
      }

      sub_2175F6FDC(__dst);
      __swift_destroy_boxed_opaque_existential_1(v125);

      sub_217283154(v127);
    }

    swift_bridgeObjectRelease_n();

    v63 = v5 + 64;
    v64 = 1 << *(v5 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(v5 + 64);
    v67 = (v64 + 63) >> 6;
    v68 = v5;
    sub_217751DE8();
    v69 = 0;
    v114 = v63;
    v117 = v67;
    if (!v66)
    {
      while (1)
      {
LABEL_51:
        v70 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_80;
        }

        if (v70 >= v67)
        {
          break;
        }

        v66 = *(v63 + 8 * v70);
        ++v69;
        if (v66)
        {
          v69 = v70;
          goto LABEL_55;
        }
      }

      return v108;
    }

    while (1)
    {
LABEL_55:
      v71 = __clz(__rbit64(v66));
      v66 &= v66 - 1;
      v72 = v71 | (v69 << 6);
      v73 = *(v68 + 48) + 24 * v72;
      v75 = *v73;
      v74 = *(v73 + 8);
      v76 = *(v73 + 16);
      v77 = *(*(v68 + 56) + 8 * v72);
      v121 = *v73;
      if (*(v77 + 16) == 1)
      {
        sub_2172830F8(v77 + 32, __src);
        swift_bridgeObjectRetain_n();
        sub_217751DE8();
        swift_isUniquelyReferenced_nonNull_native();
        *&__dst[0] = v108;
        v78 = v75;
        v79 = v76;
        v80 = sub_2176324F4(v78, v74, v76);
        if (__OFADD__(*(v108 + 16), (v81 & 1) == 0))
        {
          goto LABEL_83;
        }

        v82 = v80;
        v83 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABE0, &qword_217786338);
        if (sub_217752CB8())
        {
          v84 = sub_2176324F4(v121, v74, v79);
          if ((v83 & 1) != (v85 & 1))
          {
            goto LABEL_87;
          }

          v82 = v84;
        }

        v86 = *&__dst[0];
        v108 = *&__dst[0];
        if (v83)
        {
          goto LABEL_68;
        }

        *(*&__dst[0] + 8 * (v82 >> 6) + 64) |= 1 << v82;
        v96 = v86[6] + 24 * v82;
        *v96 = v121;
        *(v96 + 8) = v74;
        *(v96 + 16) = v79;
        v97 = v86[7] + 40 * v82;
        v98 = __src[0];
        v99 = __src[1];
        *(v97 + 32) = *&__src[2];
        *v97 = v98;
        *(v97 + 16) = v99;
        v100 = v86[2];
        v37 = __OFADD__(v100, 1);
        v101 = v100 + 1;
        if (v37)
        {
          goto LABEL_85;
        }

        v86[2] = v101;
      }

      else
      {
        __src[0] = 0uLL;
        *&__src[1] = v77;
        *(&__src[1] + 1) = &type metadata for MusicItemCollectionCombinationIncrementalLoader;
        *&__src[2] = &off_282971898;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_isUniquelyReferenced_nonNull_native();
        *&__dst[0] = v108;
        v87 = v75;
        v88 = v76;
        v89 = sub_2176324F4(v87, v74, v76);
        if (__OFADD__(*(v108 + 16), (v90 & 1) == 0))
        {
          goto LABEL_84;
        }

        v82 = v89;
        v91 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABE0, &qword_217786338);
        if (sub_217752CB8())
        {
          v92 = v74;
          v93 = sub_2176324F4(v121, v74, v88);
          if ((v91 & 1) != (v94 & 1))
          {
            goto LABEL_87;
          }

          v82 = v93;
        }

        else
        {
          v92 = v74;
        }

        v95 = *&__dst[0];
        v108 = *&__dst[0];
        if (v91)
        {
LABEL_68:
          sub_2175F7030(__src, *(*&__dst[0] + 56) + 40 * v82);

          goto LABEL_73;
        }

        *(*&__dst[0] + 8 * (v82 >> 6) + 64) |= 1 << v82;
        v102 = v95[6] + 24 * v82;
        *v102 = v121;
        *(v102 + 8) = v92;
        *(v102 + 16) = v88;
        v103 = v95[7] + 40 * v82;
        v104 = __src[0];
        v105 = __src[1];
        *(v103 + 32) = *&__src[2];
        *v103 = v104;
        *(v103 + 16) = v105;
        v106 = v95[2];
        v37 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v37)
        {
          goto LABEL_86;
        }

        v95[2] = v107;
      }

LABEL_73:

      v63 = v114;
      v67 = v117;
      if (!v66)
      {
        goto LABEL_51;
      }
    }
  }

  sub_2171FF30C(v3, v127);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_90;
  }

  memcpy(__src, __dst, 0x50uLL);
  swift_getAtKeyPath();
  v41 = v127[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABF0, &unk_217786340);
  v42 = sub_217752D48();
  v43 = 0;
  v44 = *(v41 + 64);
  v120 = v42;
  v45 = 1 << *(v41 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v44;
  v48 = (v45 + 63) >> 6;
  v116 = v42 + 64;
  if ((v46 & v44) != 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  v50 = v43;
  while (1)
  {
    v43 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_79;
    }

    if (v43 >= v48)
    {
      break;
    }

    v51 = *(v41 + 64 + 8 * v43);
    ++v50;
    if (v51)
    {
      v49 = __clz(__rbit64(v51));
      v47 = (v51 - 1) & v51;
      while (2)
      {
        v52 = v49 | (v43 << 6);
        v53 = *(v41 + 48) + 24 * v52;
        v54 = *v53;
        v55 = *(v53 + 8);
        v56 = *(v53 + 16);
        sub_2175F6F80(*(v41 + 56) + 80 * v52, __dst);
        v57 = swift_allocObject();
        memcpy((v57 + 16), __dst, 0x50uLL);
        *(v116 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        v58 = v120[6] + 24 * v52;
        *v58 = v54;
        *(v58 + 8) = v55;
        *(v58 + 16) = v56;
        v59 = (v120[7] + 40 * v52);
        *v59 = v57;
        v59[3] = &type metadata for MusicCatalogSearchIncrementalLoader;
        v59[4] = &protocol witness table for MusicCatalogSearchIncrementalLoader;
        v60 = v120[2];
        v37 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (!v37)
        {
          v120[2] = v61;
          sub_217751DE8();
          if (!v47)
          {
            goto LABEL_39;
          }

LABEL_38:
          v49 = __clz(__rbit64(v47));
          v47 &= v47 - 1;
          continue;
        }

        break;
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      sub_217753178();
      __break(1u);
LABEL_88:
      memset(__src, 0, 80);
      sub_2171F0738(__src, &qword_27CB2ABE8, &unk_217797100);
      *&__src[0] = 0;
      *(&__src[0] + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177B18C0);
      MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177B2950);
      MEMORY[0x21CEA23B0](0xD000000000000019, 0x80000002177B18A0);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000092, 0x80000002177B18F0);
      while (1)
      {
        sub_217752D08();
        __break(1u);
LABEL_90:
        memset(__dst, 0, sizeof(__dst));
        sub_2171F0738(__dst, &qword_27CB2ABE8, &unk_217797100);
        *&__src[0] = 0;
        *(&__src[0] + 1) = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD00000000000002CLL, 0x80000002177B1870);
        MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177B2950);
        MEMORY[0x21CEA23B0](0xD000000000000019, 0x80000002177B18A0);
        sub_217752C78();
        MEMORY[0x21CEA23B0](46, 0xE100000000000000);
      }
    }
  }

  sub_2175F6FDC(__src);

  return v120;
}

void *sub_2175F289C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for MusicItemTypeValueProviding))
  {
    (*(v6 + 8))(__src);
    v7 = sub_2175F2B98(__src);
    swift_getAtPartialKeyPath();
    type metadata accessor for MusicItemCollection(0, a1, a2, v8);
    if (swift_dynamicCast())
    {

      return memcpy(a3, __src, 0x68uLL);
    }

    sub_2177528F8();
    memset(__src, 0, 104);
    OUTLINED_FUNCTION_43();
    (*(v11 + 8))(__src);
    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    OUTLINED_FUNCTION_44_25();
    MEMORY[0x21CEA23B0]();
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABD0, &qword_2177862F8);
    sub_217752C78();
    OUTLINED_FUNCTION_44_25();
    MEMORY[0x21CEA23B0]();
    v12 = sub_217753348();
    MEMORY[0x21CEA23B0](v12);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v13);
  }

  else
  {
    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    OUTLINED_FUNCTION_44_25();
    MEMORY[0x21CEA23B0]();
    v10 = sub_217753348();
    MEMORY[0x21CEA23B0](v10);

    OUTLINED_FUNCTION_44_25();
    MEMORY[0x21CEA23B0]();
    OUTLINED_FUNCTION_44_25();
    MEMORY[0x21CEA23B0](0xD000000000000016);
    MEMORY[0x21CEA23B0](0x7075732065726120, 0xEF2E646574726F70);
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2175F2B98(uint64_t *a1)
{
  v1 = sub_2175F30F4();
  if (v1[2] && (v2 = sub_217632574(), (v3 & 1) != 0))
  {
    v4 = *(v1[7] + 8 * v2);

    return v4;
  }

  else
  {

    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6C61762065707954, 0xEB00000000206575);
    sub_217751DE8();
    sub_217285954(1);
    v6 = sub_217752918();
    v8 = v7;

    MEMORY[0x21CEA23B0](v6, v8, v9);

    sub_217751DE8();
    v14 = sub_2172857F8(1uLL);
    sub_217285A70(v14, v10, v11);
    sub_217751DE8();
    sub_217752048();

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v12);

    MEMORY[0x21CEA23B0](0xD000000000000046, 0x80000002177B2850, v13);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

void *sub_2175F2D88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC20, &qword_217786390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217777380;
  if (qword_280BE62F0 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_280BE62F0);
  }

  *(inited + 32) = OUTLINED_FUNCTION_19_35(&xmmword_280BE62F8);
  *(inited + 48) = v2;
  *(inited + 56) = v0;
  *(inited + 64) = swift_getKeyPath(byte_217786398);
  v3 = qword_280BE6270;
  sub_217751DE8();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_2_91(&qword_280BE6270);
  }

  *(inited + 72) = OUTLINED_FUNCTION_19_35(&xmmword_280BE6278);
  *(inited + 88) = v4;
  *(inited + 96) = v0;
  *(inited + 104) = swift_getKeyPath(byte_2177863B8);
  v5 = qword_280BE7FE8;
  sub_217751DE8();
  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 112) = OUTLINED_FUNCTION_19_35(&xmmword_280BE7FF0);
  *(inited + 128) = v6;
  *(inited + 136) = v0;
  *(inited + 144) = swift_getKeyPath(byte_2177863D8);
  v7 = qword_280BE6378;
  sub_217751DE8();
  if (v7 != -1)
  {
    OUTLINED_FUNCTION_15_0(&qword_280BE6378);
  }

  *(inited + 152) = OUTLINED_FUNCTION_19_35(&xmmword_280BE6380);
  *(inited + 168) = v8;
  *(inited + 176) = v0;
  *(inited + 184) = swift_getKeyPath("ȭ=e");
  v9 = qword_280BE6220;
  sub_217751DE8();
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_473(&qword_280BE6220);
  }

  *(inited + 192) = OUTLINED_FUNCTION_19_35(&xmmword_280BE6228);
  *(inited + 208) = v10;
  *(inited + 216) = v0;
  *(inited + 224) = swift_getKeyPath(byte_217786418);
  v11 = qword_280BE61F8;
  sub_217751DE8();
  if (v11 != -1)
  {
    swift_once();
  }

  *(inited + 232) = OUTLINED_FUNCTION_19_35(&xmmword_280BE6200);
  *(inited + 248) = v12;
  *(inited + 256) = v0;
  *(inited + 264) = swift_getKeyPath(byte_217786438);
  v13 = qword_280BE6348;
  sub_217751DE8();
  if (v13 != -1)
  {
    OUTLINED_FUNCTION_24_40(&qword_280BE6348);
  }

  *(inited + 272) = OUTLINED_FUNCTION_19_35(&xmmword_280BE6350);
  *(inited + 288) = v14;
  *(inited + 296) = v0;
  *(inited + 304) = swift_getKeyPath(byte_217786458);
  v15 = qword_280BEB138;
  sub_217751DE8();
  if (v15 != -1)
  {
    OUTLINED_FUNCTION_14_1(&qword_280BEB138);
  }

  *(inited + 312) = OUTLINED_FUNCTION_19_35(&xmmword_280BEB140);
  *(inited + 328) = v16;
  *(inited + 336) = v0;
  *(inited + 344) = swift_getKeyPath(aH_0);
  v17 = qword_280BE6248;
  sub_217751DE8();
  if (v17 != -1)
  {
    OUTLINED_FUNCTION_22_50(&qword_280BE6248);
  }

  *(inited + 352) = OUTLINED_FUNCTION_19_35(&xmmword_280BE6250);
  *(inited + 368) = v18;
  *(inited + 376) = v0;
  *(inited + 384) = swift_getKeyPath(aP_0);
  sub_217751DE8();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABD0, &qword_2177862F8);
  sub_21759E770(v19, v20, v21);
  result = sub_217751DC8();
  off_27CB2ABA0 = result;
  return result;
}

void *sub_2175F30F4()
{
  if (qword_27CB23D78 != -1)
  {
    swift_once();
  }

  v0 = off_27CB2ABA0;
  v1 = dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchResponse, &type metadata for MusicCatalogSearchResponse, &protocol descriptor for MusicCatalogSearchExtendedResponse);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v2 + 8);
    sub_217751DE8();
    v5(v3, v4);
    v7 = (*(v6 + 40))();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v0;
    sub_2176F7C9C(v7, sub_2176F8828, 0, isUniquelyReferenced_nonNull_native, &v10);
    return v10;
  }

  else
  {
    sub_217751DE8();
  }

  return v0;
}

uint64_t static MusicCatalogSearchResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_21733E33C(a1, a2) & 1) == 0 || (sub_21733E820(a1 + 104, a2 + 104) & 1) == 0 || (sub_21733E6D0(a1 + 208, a2 + 208) & 1) == 0 || (sub_21733E8C8(a1 + 312, a2 + 312) & 1) == 0 || (sub_21733E390(a1 + 416, a2 + 416) & 1) == 0 || (sub_21733E724(a1 + 520, a2 + 520) & 1) == 0 || (sub_21733E9C4(a1 + 624, a2 + 624) & 1) == 0 || (sub_21733E970(a1 + 728, a2 + 728) & 1) == 0 || (sub_21733E91C(a1 + 832, a2 + 832) & 1) == 0 || (sub_21733EA18(a1 + 936, a2 + 936) & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_21726A630(a1 + 1040, v19, &qword_27CB2ABA8, &qword_217785A90);
  sub_21726A630(a2 + 1040, &v21, &qword_27CB2ABA8, &qword_217785A90);
  if (v20)
  {
    sub_21726A630(v19, v16, &qword_27CB2ABA8, &qword_217785A90);
    if (*(&v22 + 1))
    {
      v14[0] = v21;
      v14[1] = v22;
      v15 = v23;
      v4 = v17;
      v5 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v6 = *(v5 + 48);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29EE8, &qword_21777CD50);
      v8 = v6(v14, v7, v4, v5);
      sub_2175F3478(v14);
      sub_2175F3478(v16);
      sub_2171F0738(v19, &qword_27CB2ABA8, &qword_217785A90);
      if ((v8 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    sub_2175F3478(v16);
LABEL_26:
    sub_2171F0738(v19, &qword_27CB2ABB0, &unk_217785A98);
    goto LABEL_27;
  }

  if (*(&v22 + 1))
  {
    goto LABEL_26;
  }

  sub_2171F0738(v19, &qword_27CB2ABA8, &qword_217785A90);
LABEL_17:
  v9 = *(a1 + 1088);
  v10 = *(a2 + 1088);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = *(a1 + 1080) == *(a2 + 1080) && v9 == v10;
    if (!v11 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    sub_217270BE0();
    return v12 & 1;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_27:
  v12 = 0;
  return v12 & 1;
}

void MusicCatalogSearchResponse.hash(into:)(uint64_t a1)
{
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  sub_21726A630(v1 + 1040, &v9, &qword_27CB2ABA8, &qword_217785A90);
  if (*(&v10 + 1))
  {
    v6 = v9;
    v7 = v10;
    v8 = v11;
    sub_217753208();
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    OUTLINED_FUNCTION_171_1();
    v5(v2, v3, v4);
    sub_2175F3478(&v6);
  }

  else
  {
    sub_217753208();
  }

  if (*(v1 + 1088))
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_21727D7C8();
}

uint64_t MusicCatalogSearchResponse.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchResponse.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175F3694(uint64_t a1)
{
  sub_2177531E8();
  MusicCatalogSearchResponse.hash(into:)(v2);
  return sub_217753238();
}

uint64_t MusicCatalogSearchResponse.libraryMapped(policy:scope:)()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 3240) = v0;
  *(v1 + 3232) = v2;
  *(v1 + 3410) = *v3;
  v5 = *v4;
  *(v1 + 3411) = *v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 3248) = v6;
  *v6 = v7;
  v6[1] = sub_2175F377C;

  return sub_217509E2C(v1 + 16, v5);
}

uint64_t sub_2175F377C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 3256) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25_21();
    OUTLINED_FUNCTION_36_1();
    *(v3 + 3264) = v10;
    *v10 = v11;
    v10[1] = sub_2175F38E0;
    OUTLINED_FUNCTION_6_78();

    return v12();
  }
}

uint64_t sub_2175F38E0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 3272) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_33_37();
    OUTLINED_FUNCTION_25_21();
    OUTLINED_FUNCTION_36_1();
    *(v3 + 3280) = v10;
    *v10 = v11;
    v10[1] = sub_2175F3A68;
    OUTLINED_FUNCTION_6_78();

    return v12();
  }
}

uint64_t sub_2175F3A68()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 3288) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_33_37();
    OUTLINED_FUNCTION_25_21();
    OUTLINED_FUNCTION_36_1();
    *(v3 + 3296) = v10;
    *v10 = v11;
    v10[1] = sub_2175F3BCC;
    OUTLINED_FUNCTION_6_78();

    return v12();
  }
}

uint64_t sub_2175F3BCC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 3304) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_33_37();
    OUTLINED_FUNCTION_25_21();
    OUTLINED_FUNCTION_36_1();
    *(v3 + 3312) = v10;
    *v10 = v11;
    v10[1] = sub_2175F3D30;
    OUTLINED_FUNCTION_6_78();

    return v12();
  }
}

uint64_t sub_2175F3D30()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 3320) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_33_37();
    OUTLINED_FUNCTION_25_21();
    OUTLINED_FUNCTION_36_1();
    *(v3 + 3328) = v10;
    *v10 = v11;
    v10[1] = sub_2175F3E94;
    OUTLINED_FUNCTION_6_78();

    return v12();
  }
}

uint64_t sub_2175F3E94()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 3336) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_33_37();
    OUTLINED_FUNCTION_25_21();
    OUTLINED_FUNCTION_36_1();
    *(v3 + 3344) = v10;
    *v10 = v11;
    v10[1] = sub_2175F3FF8;
    OUTLINED_FUNCTION_6_78();

    return v12();
  }
}

uint64_t sub_2175F3FF8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 3352) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_33_37();
    OUTLINED_FUNCTION_25_21();
    OUTLINED_FUNCTION_36_1();
    *(v3 + 3360) = v10;
    *v10 = v11;
    v10[1] = sub_2175F415C;
    OUTLINED_FUNCTION_6_78();

    return v12();
  }
}

uint64_t sub_2175F415C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 3368) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_33_37();
    OUTLINED_FUNCTION_25_21();
    OUTLINED_FUNCTION_36_1();
    *(v3 + 3376) = v10;
    *v10 = v11;
    v10[1] = sub_2175F42C0;
    OUTLINED_FUNCTION_6_78();

    return v12();
  }
}

uint64_t sub_2175F42C0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 3384) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2175F43C0()
{
  v114 = v0;
  sub_21726A630(*(v0 + 3240) + 1040, v0 + 3032, &qword_27CB2ABA8, &qword_217785A90);
  v1 = *(v0 + 3056);
  if (v1)
  {
    v2 = *(v0 + 3411);
    v3 = *(v0 + 3410);
    v4 = *(v0 + 3064);
    __swift_project_boxed_opaque_existential_1((v0 + 3032), *(v0 + 3056));
    *(v0 + 3408) = v3;
    *(v0 + 3409) = v2;
    v103 = (*(v4 + 32) + **(v4 + 32));
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 3392) = v5;
    *v5 = v6;
    v5[1] = sub_2175F4FF0;

    return v103(v0 + 3192, v0 + 3408, v0 + 3409, v1, v4);
  }

  else
  {
    sub_2171F0738(v0 + 3032, &qword_27CB2ABA8, &qword_217785A90);
    *(v0 + 3112) = 0u;
    *(v0 + 3128) = 0u;
    *(v0 + 3144) = 0;
    v8 = *(v0 + 3240);
    v9 = *(v0 + 3232);
    v10 = v8[135];
    v11 = v8[136];
    v12 = v8[137];
    sub_21726A630(v0 + 1888, v0 + 952, &qword_27CB25388, &unk_21775D410);
    sub_21726A630(v0 + 224, v0 + 1056, &qword_27CB25398, &unk_21776C4F0);
    sub_21726A630(v0 + 328, v0 + 1160, &qword_27CB25638, &unk_21775EA10);
    sub_21726A630(v0 + 432, v0 + 1264, &qword_27CB25380, &unk_21775DAA0);
    sub_21726A630(v0 + 536, v0 + 1368, &unk_27CB28230, &unk_21775CD50);
    sub_21726A630(v0 + 640, v0 + 1472, &qword_27CB25630, &qword_21775D568);
    sub_21726A630(v0 + 744, v0 + 1576, &qword_27CB25390, &qword_217771CA0);
    sub_21726A630(v0 + 848, v0 + 1680, &qword_27CB27820, &qword_21775DAB0);
    sub_21726A630((v8 + 104), v0 + 1992, &qword_27CB255B8, &unk_21775D470);
    sub_21726A630(v0 + 16, v0 + 2096, &qword_27CB28BB0, &qword_217771940);
    sub_21726A630(v0 + 3112, v0 + 3072, &qword_27CB2ABB8, &unk_217785AB0);
    v9[135] = v10;
    v9[136] = v11;
    v9[137] = v12;
    sub_21726A630(v0 + 952, v0 + 2304, &qword_27CB25318, &qword_2177657C0);
    if (*(v0 + 2392))
    {
      memcpy(__dst, (v0 + 2304), 0x68uLL);
      sub_217751DE8();
      sub_217751DE8();
    }

    else
    {
      sub_217751DE8();
      sub_217751DE8();
      sub_2174AA1AC(MEMORY[0x277D84F90]);
      if (*(v0 + 2392))
      {
        sub_2171F0738(v0 + 2304, &qword_27CB25318, &qword_2177657C0);
      }
    }

    OUTLINED_FUNCTION_39_26(*(v0 + 3232), v13, v14, v15, v16, v17, v18, v19, v92, v102);
    sub_21726A630(v0 + 1056, v0 + 2408, &qword_27CB25310, &unk_21775D3D0);
    if (*(v0 + 2496))
    {
      memcpy(__dst, (v0 + 2408), 0x68uLL);
    }

    else
    {
      sub_2174AA180(MEMORY[0x277D84F90]);
      if (*(v0 + 2496))
      {
        sub_2171F0738(v0 + 2408, &qword_27CB25310, &unk_21775D3D0);
      }
    }

    OUTLINED_FUNCTION_39_26((*(v0 + 3232) + 104), v20, v21, v22, v23, v24, v25, v26, v93, v104);
    sub_21726A630(v0 + 1160, v0 + 2512, &qword_27CB25610, &qword_21775D540);
    if (*(v0 + 2600))
    {
      memcpy(__dst, (v0 + 2512), 0x68uLL);
    }

    else
    {
      sub_2174AA154(MEMORY[0x277D84F90]);
      if (*(v0 + 2600))
      {
        sub_2171F0738(v0 + 2512, &qword_27CB25610, &qword_21775D540);
      }
    }

    OUTLINED_FUNCTION_39_26((*(v0 + 3232) + 208), v27, v28, v29, v30, v31, v32, v33, v94, v105);
    sub_21726A630(v0 + 1264, v0 + 2616, &qword_27CB25338, &unk_21775D3E0);
    if (*(v0 + 2704))
    {
      memcpy(__dst, (v0 + 2616), 0x68uLL);
    }

    else
    {
      sub_2174AA128(MEMORY[0x277D84F90]);
      if (*(v0 + 2704))
      {
        sub_2171F0738(v0 + 2616, &qword_27CB25338, &unk_21775D3E0);
      }
    }

    OUTLINED_FUNCTION_39_26((*(v0 + 3232) + 312), v34, v35, v36, v37, v38, v39, v40, v95, v106);
    sub_21726A630(v0 + 1368, v0 + 2720, &qword_27CB25330, &unk_21775E9B0);
    if (*(v0 + 2808))
    {
      memcpy(__dst, (v0 + 2720), 0x68uLL);
    }

    else
    {
      sub_2174AA0FC(MEMORY[0x277D84F90]);
      if (*(v0 + 2808))
      {
        sub_2171F0738(v0 + 2720, &qword_27CB25330, &unk_21775E9B0);
      }
    }

    OUTLINED_FUNCTION_39_26((*(v0 + 3232) + 416), v41, v42, v43, v44, v45, v46, v47, v96, v107);
    sub_21726A630(v0 + 1472, v0 + 2824, &qword_27CB25608, &unk_21775D530);
    if (*(v0 + 2912))
    {
      memcpy(__dst, (v0 + 2824), 0x68uLL);
    }

    else
    {
      sub_2174AA0D0(MEMORY[0x277D84F90]);
      if (*(v0 + 2912))
      {
        sub_2171F0738(v0 + 2824, &qword_27CB25608, &unk_21775D530);
      }
    }

    OUTLINED_FUNCTION_39_26((*(v0 + 3232) + 520), v48, v49, v50, v51, v52, v53, v54, v97, v108);
    sub_21726A630(v0 + 1576, v0 + 2928, &qword_27CB25328, &unk_21775D3F0);
    if (*(v0 + 3016))
    {
      memcpy(__dst, (v0 + 2928), 0x68uLL);
    }

    else
    {
      sub_2174AA0A4(MEMORY[0x277D84F90]);
      if (*(v0 + 3016))
      {
        sub_2171F0738(v0 + 2928, &qword_27CB25328, &unk_21775D3F0);
      }
    }

    OUTLINED_FUNCTION_39_26((*(v0 + 3232) + 624), v55, v56, v57, v58, v59, v60, v61, v98, v109);
    sub_21726A630(v0 + 1680, v0 + 120, &qword_27CB255A8, &unk_21775D450);
    if (*(v0 + 208))
    {
      memcpy(__dst, (v0 + 120), 0x68uLL);
    }

    else
    {
      sub_2174AA078(MEMORY[0x277D84F90]);
      if (*(v0 + 208))
      {
        sub_2171F0738(v0 + 120, &qword_27CB255A8, &unk_21775D450);
      }
    }

    OUTLINED_FUNCTION_39_26((*(v0 + 3232) + 728), v62, v63, v64, v65, v66, v67, v68, v99, v110);
    sub_21726A630(v0 + 1992, v0 + 2200, &qword_27CB255B0, &unk_217793B50);
    if (*(v0 + 2288))
    {
      memcpy(__dst, (v0 + 2200), 0x68uLL);
    }

    else
    {
      sub_2174AA04C(MEMORY[0x277D84F90]);
      if (*(v0 + 2288))
      {
        sub_2171F0738(v0 + 2200, &qword_27CB255B0, &unk_217793B50);
      }
    }

    OUTLINED_FUNCTION_39_26((*(v0 + 3232) + 832), v69, v70, v71, v72, v73, v74, v75, v100, v111);
    sub_21726A630(v0 + 2096, v0 + 1784, &qword_27CB26E78, &qword_217785AC0);
    if (*(v0 + 1872))
    {
      memcpy(__dst, (v0 + 1784), 0x68uLL);
    }

    else
    {
      sub_2174AA020(MEMORY[0x277D84F90]);
      if (*(v0 + 1872))
      {
        sub_2171F0738(v0 + 1784, &qword_27CB26E78, &qword_217785AC0);
      }
    }

    OUTLINED_FUNCTION_39_26((*(v0 + 3232) + 936), v76, v77, v78, v79, v80, v81, v82, v101, v112);
    sub_21726A630(v0 + 3072, v0 + 3152, &qword_27CB2ABB8, &unk_217785AB0);
    v83 = *(v0 + 3176);
    if (v83)
    {
      v84 = *(v0 + 3184);
      __swift_project_boxed_opaque_existential_1((v0 + 3152), *(v0 + 3176));
      sub_2171F9380(v83, v84, __dst);
      OUTLINED_FUNCTION_169_1(v0 + 3072);
      sub_2171F0738(v0 + 2096, &qword_27CB26E78, &qword_217785AC0);
      sub_2171F0738(v0 + 1992, &qword_27CB255B0, &unk_217793B50);
      sub_2171F0738(v0 + 1680, &qword_27CB255A8, &unk_21775D450);
      sub_2171F0738(v0 + 1576, &qword_27CB25328, &unk_21775D3F0);
      sub_2171F0738(v0 + 1472, &qword_27CB25608, &unk_21775D530);
      sub_2171F0738(v0 + 1368, &qword_27CB25330, &unk_21775E9B0);
      sub_2171F0738(v0 + 1264, &qword_27CB25338, &unk_21775D3E0);
      sub_2171F0738(v0 + 1160, &qword_27CB25610, &qword_21775D540);
      sub_2171F0738(v0 + 1056, &qword_27CB25310, &unk_21775D3D0);
      sub_2171F0738(v0 + 952, &qword_27CB25318, &qword_2177657C0);
      v85 = OUTLINED_FUNCTION_93();
      sub_2171F0738(v85, v86, &unk_217785AB0);
      sub_2171F0738(v0 + 848, &qword_27CB27820, &qword_21775DAB0);
      sub_2171F0738(v0 + 744, &qword_27CB25390, &qword_217771CA0);
      sub_2171F0738(v0 + 640, &qword_27CB25630, &qword_21775D568);
      sub_2171F0738(v0 + 536, &unk_27CB28230, &unk_21775CD50);
      sub_2171F0738(v0 + 432, &qword_27CB25380, &unk_21775DAA0);
      sub_2171F0738(v0 + 328, &qword_27CB25638, &unk_21775EA10);
      sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
      sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
      sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
      __swift_destroy_boxed_opaque_existential_1((v0 + 3152));
    }

    else
    {
      OUTLINED_FUNCTION_169_1(v0 + 3072);
      sub_2171F0738(v0 + 2096, &qword_27CB26E78, &qword_217785AC0);
      sub_2171F0738(v0 + 1992, &qword_27CB255B0, &unk_217793B50);
      sub_2171F0738(v0 + 1680, &qword_27CB255A8, &unk_21775D450);
      sub_2171F0738(v0 + 1576, &qword_27CB25328, &unk_21775D3F0);
      sub_2171F0738(v0 + 1472, &qword_27CB25608, &unk_21775D530);
      sub_2171F0738(v0 + 1368, &qword_27CB25330, &unk_21775E9B0);
      sub_2171F0738(v0 + 1264, &qword_27CB25338, &unk_21775D3E0);
      sub_2171F0738(v0 + 1160, &qword_27CB25610, &qword_21775D540);
      sub_2171F0738(v0 + 1056, &qword_27CB25310, &unk_21775D3D0);
      sub_2171F0738(v0 + 952, &qword_27CB25318, &qword_2177657C0);
      v87 = OUTLINED_FUNCTION_93();
      sub_2171F0738(v87, v88, &unk_217785AB0);
      sub_2171F0738(v0 + 848, &qword_27CB27820, &qword_21775DAB0);
      sub_2171F0738(v0 + 744, &qword_27CB25390, &qword_217771CA0);
      sub_2171F0738(v0 + 640, &qword_27CB25630, &qword_21775D568);
      sub_2171F0738(v0 + 536, &unk_27CB28230, &unk_21775CD50);
      sub_2171F0738(v0 + 432, &qword_27CB25380, &unk_21775DAA0);
      sub_2171F0738(v0 + 328, &qword_27CB25638, &unk_21775EA10);
      sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
      sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
      sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
      OUTLINED_FUNCTION_169_1(v0 + 3152);
      memset(__dst, 0, 40);
    }

    v89 = *(v0 + 3232);
    v90 = __dst[1];
    *(v89 + 1040) = __dst[0];
    *(v89 + 1056) = v90;
    *(v89 + 1072) = *&__dst[2];
    OUTLINED_FUNCTION_20_0();

    return v91();
  }
}

uint64_t sub_2175F4FF0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 3400) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2175F50F0()
{
  v83 = v0;
  sub_2171F3F0C((v0 + 3192), v0 + 3112);
  sub_2175F3478(v0 + 3032);
  v1 = *(v0 + 3240);
  v2 = *(v0 + 3232);
  v3 = v1[135];
  v4 = v1[136];
  v5 = v1[137];
  sub_21726A630(v0 + 1888, v0 + 952, &qword_27CB25388, &unk_21775D410);
  sub_21726A630(v0 + 224, v0 + 1056, &qword_27CB25398, &unk_21776C4F0);
  sub_21726A630(v0 + 328, v0 + 1160, &qword_27CB25638, &unk_21775EA10);
  sub_21726A630(v0 + 432, v0 + 1264, &qword_27CB25380, &unk_21775DAA0);
  sub_21726A630(v0 + 536, v0 + 1368, &unk_27CB28230, &unk_21775CD50);
  sub_21726A630(v0 + 640, v0 + 1472, &qword_27CB25630, &qword_21775D568);
  sub_21726A630(v0 + 744, v0 + 1576, &qword_27CB25390, &qword_217771CA0);
  sub_21726A630(v0 + 848, v0 + 1680, &qword_27CB27820, &qword_21775DAB0);
  sub_21726A630((v1 + 104), v0 + 1992, &qword_27CB255B8, &unk_21775D470);
  sub_21726A630(v0 + 16, v0 + 2096, &qword_27CB28BB0, &qword_217771940);
  sub_21726A630(v0 + 3112, v0 + 3072, &qword_27CB2ABB8, &unk_217785AB0);
  v2[135] = v3;
  v2[136] = v4;
  v2[137] = v5;
  sub_21726A630(v0 + 952, v0 + 2304, &qword_27CB25318, &qword_2177657C0);
  if (*(v0 + 2392))
  {
    memcpy(v82, (v0 + 2304), sizeof(v82));
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_2174AA1AC(MEMORY[0x277D84F90]);
    if (*(v0 + 2392))
    {
      sub_2171F0738(v0 + 2304, &qword_27CB25318, &qword_2177657C0);
    }
  }

  OUTLINED_FUNCTION_38_29(*(v0 + 3232), v6, v7, v8, v9, v10, v11, v12, *v82);
  sub_21726A630(v0 + 1056, v0 + 2408, &qword_27CB25310, &unk_21775D3D0);
  if (*(v0 + 2496))
  {
    memcpy(v82, (v0 + 2408), sizeof(v82));
  }

  else
  {
    sub_2174AA180(MEMORY[0x277D84F90]);
    if (*(v0 + 2496))
    {
      sub_2171F0738(v0 + 2408, &qword_27CB25310, &unk_21775D3D0);
    }
  }

  OUTLINED_FUNCTION_38_29((*(v0 + 3232) + 104), v13, v14, v15, v16, v17, v18, v19, *v82);
  sub_21726A630(v0 + 1160, v0 + 2512, &qword_27CB25610, &qword_21775D540);
  if (*(v0 + 2600))
  {
    memcpy(v82, (v0 + 2512), sizeof(v82));
  }

  else
  {
    sub_2174AA154(MEMORY[0x277D84F90]);
    if (*(v0 + 2600))
    {
      sub_2171F0738(v0 + 2512, &qword_27CB25610, &qword_21775D540);
    }
  }

  OUTLINED_FUNCTION_38_29((*(v0 + 3232) + 208), v20, v21, v22, v23, v24, v25, v26, *v82);
  sub_21726A630(v0 + 1264, v0 + 2616, &qword_27CB25338, &unk_21775D3E0);
  if (*(v0 + 2704))
  {
    memcpy(v82, (v0 + 2616), sizeof(v82));
  }

  else
  {
    sub_2174AA128(MEMORY[0x277D84F90]);
    if (*(v0 + 2704))
    {
      sub_2171F0738(v0 + 2616, &qword_27CB25338, &unk_21775D3E0);
    }
  }

  OUTLINED_FUNCTION_38_29((*(v0 + 3232) + 312), v27, v28, v29, v30, v31, v32, v33, *v82);
  sub_21726A630(v0 + 1368, v0 + 2720, &qword_27CB25330, &unk_21775E9B0);
  if (*(v0 + 2808))
  {
    memcpy(v82, (v0 + 2720), sizeof(v82));
  }

  else
  {
    sub_2174AA0FC(MEMORY[0x277D84F90]);
    if (*(v0 + 2808))
    {
      sub_2171F0738(v0 + 2720, &qword_27CB25330, &unk_21775E9B0);
    }
  }

  OUTLINED_FUNCTION_38_29((*(v0 + 3232) + 416), v34, v35, v36, v37, v38, v39, v40, *v82);
  sub_21726A630(v0 + 1472, v0 + 2824, &qword_27CB25608, &unk_21775D530);
  if (*(v0 + 2912))
  {
    memcpy(v82, (v0 + 2824), sizeof(v82));
  }

  else
  {
    sub_2174AA0D0(MEMORY[0x277D84F90]);
    if (*(v0 + 2912))
    {
      sub_2171F0738(v0 + 2824, &qword_27CB25608, &unk_21775D530);
    }
  }

  OUTLINED_FUNCTION_38_29((*(v0 + 3232) + 520), v41, v42, v43, v44, v45, v46, v47, *v82);
  sub_21726A630(v0 + 1576, v0 + 2928, &qword_27CB25328, &unk_21775D3F0);
  if (*(v0 + 3016))
  {
    memcpy(v82, (v0 + 2928), sizeof(v82));
  }

  else
  {
    sub_2174AA0A4(MEMORY[0x277D84F90]);
    if (*(v0 + 3016))
    {
      sub_2171F0738(v0 + 2928, &qword_27CB25328, &unk_21775D3F0);
    }
  }

  OUTLINED_FUNCTION_38_29((*(v0 + 3232) + 624), v48, v49, v50, v51, v52, v53, v54, *v82);
  sub_21726A630(v0 + 1680, v0 + 120, &qword_27CB255A8, &unk_21775D450);
  if (*(v0 + 208))
  {
    memcpy(v82, (v0 + 120), sizeof(v82));
  }

  else
  {
    sub_2174AA078(MEMORY[0x277D84F90]);
    if (*(v0 + 208))
    {
      sub_2171F0738(v0 + 120, &qword_27CB255A8, &unk_21775D450);
    }
  }

  OUTLINED_FUNCTION_38_29((*(v0 + 3232) + 728), v55, v56, v57, v58, v59, v60, v61, *v82);
  sub_21726A630(v0 + 1992, v0 + 2200, &qword_27CB255B0, &unk_217793B50);
  if (*(v0 + 2288))
  {
    memcpy(v82, (v0 + 2200), sizeof(v82));
  }

  else
  {
    sub_2174AA04C(MEMORY[0x277D84F90]);
    if (*(v0 + 2288))
    {
      sub_2171F0738(v0 + 2200, &qword_27CB255B0, &unk_217793B50);
    }
  }

  OUTLINED_FUNCTION_38_29((*(v0 + 3232) + 832), v62, v63, v64, v65, v66, v67, v68, *v82);
  sub_21726A630(v0 + 2096, v0 + 1784, &qword_27CB26E78, &qword_217785AC0);
  if (*(v0 + 1872))
  {
    memcpy(v82, (v0 + 1784), sizeof(v82));
  }

  else
  {
    sub_2174AA020(MEMORY[0x277D84F90]);
    if (*(v0 + 1872))
    {
      sub_2171F0738(v0 + 1784, &qword_27CB26E78, &qword_217785AC0);
    }
  }

  OUTLINED_FUNCTION_38_29((*(v0 + 3232) + 936), v69, v70, v71, v72, v73, v74, v75, *v82);
  sub_21726A630(v0 + 3072, v0 + 3152, &qword_27CB2ABB8, &unk_217785AB0);
  v76 = *(v0 + 3176);
  if (v76)
  {
    v77 = *(v0 + 3184);
    __swift_project_boxed_opaque_existential_1((v0 + 3152), *(v0 + 3176));
    sub_2171F9380(v76, v77, v82);
    OUTLINED_FUNCTION_224(v0 + 3072);
    sub_2171F0738(v0 + 2096, &qword_27CB26E78, &qword_217785AC0);
    sub_2171F0738(v0 + 1992, &qword_27CB255B0, &unk_217793B50);
    sub_2171F0738(v0 + 1680, &qword_27CB255A8, &unk_21775D450);
    sub_2171F0738(v0 + 1576, &qword_27CB25328, &unk_21775D3F0);
    sub_2171F0738(v0 + 1472, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(v0 + 1368, &qword_27CB25330, &unk_21775E9B0);
    sub_2171F0738(v0 + 1264, &qword_27CB25338, &unk_21775D3E0);
    sub_2171F0738(v0 + 1160, &qword_27CB25610, &qword_21775D540);
    sub_2171F0738(v0 + 1056, &qword_27CB25310, &unk_21775D3D0);
    sub_2171F0738(v0 + 952, &qword_27CB25318, &qword_2177657C0);
    OUTLINED_FUNCTION_224(v0 + 3112);
    sub_2171F0738(v0 + 848, &qword_27CB27820, &qword_21775DAB0);
    sub_2171F0738(v0 + 744, &qword_27CB25390, &qword_217771CA0);
    sub_2171F0738(v0 + 640, &qword_27CB25630, &qword_21775D568);
    sub_2171F0738(v0 + 536, &unk_27CB28230, &unk_21775CD50);
    sub_2171F0738(v0 + 432, &qword_27CB25380, &unk_21775DAA0);
    sub_2171F0738(v0 + 328, &qword_27CB25638, &unk_21775EA10);
    sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
    sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
    sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
    __swift_destroy_boxed_opaque_existential_1((v0 + 3152));
  }

  else
  {
    OUTLINED_FUNCTION_224(v0 + 3072);
    sub_2171F0738(v0 + 2096, &qword_27CB26E78, &qword_217785AC0);
    sub_2171F0738(v0 + 1992, &qword_27CB255B0, &unk_217793B50);
    sub_2171F0738(v0 + 1680, &qword_27CB255A8, &unk_21775D450);
    sub_2171F0738(v0 + 1576, &qword_27CB25328, &unk_21775D3F0);
    sub_2171F0738(v0 + 1472, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(v0 + 1368, &qword_27CB25330, &unk_21775E9B0);
    sub_2171F0738(v0 + 1264, &qword_27CB25338, &unk_21775D3E0);
    sub_2171F0738(v0 + 1160, &qword_27CB25610, &qword_21775D540);
    sub_2171F0738(v0 + 1056, &qword_27CB25310, &unk_21775D3D0);
    sub_2171F0738(v0 + 952, &qword_27CB25318, &qword_2177657C0);
    OUTLINED_FUNCTION_224(v0 + 3112);
    sub_2171F0738(v0 + 848, &qword_27CB27820, &qword_21775DAB0);
    sub_2171F0738(v0 + 744, &qword_27CB25390, &qword_217771CA0);
    sub_2171F0738(v0 + 640, &qword_27CB25630, &qword_21775D568);
    sub_2171F0738(v0 + 536, &unk_27CB28230, &unk_21775CD50);
    sub_2171F0738(v0 + 432, &qword_27CB25380, &unk_21775DAA0);
    sub_2171F0738(v0 + 328, &qword_27CB25638, &unk_21775EA10);
    sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
    sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
    sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
    OUTLINED_FUNCTION_224(v0 + 3152);
    memset(v82, 0, 40);
  }

  v78 = *(v0 + 3232);
  v79 = *&v82[16];
  *(v78 + 1040) = *v82;
  *(v78 + 1056) = v79;
  *(v78 + 1072) = *&v82[32];
  OUTLINED_FUNCTION_20_0();

  return v80();
}

uint64_t sub_2175F5BB8()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 848, &qword_27CB27820, &qword_21775DAB0);
  sub_2171F0738(v0 + 744, &qword_27CB25390, &qword_217771CA0);
  sub_2171F0738(v0 + 640, &qword_27CB25630, &qword_21775D568);
  sub_2171F0738(v0 + 536, &unk_27CB28230, &unk_21775CD50);
  sub_2171F0738(v0 + 432, &qword_27CB25380, &unk_21775DAA0);
  sub_2171F0738(v0 + 328, &qword_27CB25638, &unk_21775EA10);
  sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
  sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
  sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  sub_2175F3478(v0 + 3032);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175F5CEC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175F5D58()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
  sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175F5DDC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
  sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
  sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175F5E78()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 328, &qword_27CB25638, &unk_21775EA10);
  sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
  sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
  sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175F5F2C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 432, &qword_27CB25380, &unk_21775DAA0);
  sub_2171F0738(v0 + 328, &qword_27CB25638, &unk_21775EA10);
  sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
  sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
  sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175F5FF8()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 536, &unk_27CB28230, &unk_21775CD50);
  sub_2171F0738(v0 + 432, &qword_27CB25380, &unk_21775DAA0);
  sub_2171F0738(v0 + 328, &qword_27CB25638, &unk_21775EA10);
  sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
  sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
  sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175F60DC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 640, &qword_27CB25630, &qword_21775D568);
  sub_2171F0738(v0 + 536, &unk_27CB28230, &unk_21775CD50);
  sub_2171F0738(v0 + 432, &qword_27CB25380, &unk_21775DAA0);
  sub_2171F0738(v0 + 328, &qword_27CB25638, &unk_21775EA10);
  sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
  sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
  sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175F61D8()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 744, &qword_27CB25390, &qword_217771CA0);
  sub_2171F0738(v0 + 640, &qword_27CB25630, &qword_21775D568);
  sub_2171F0738(v0 + 536, &unk_27CB28230, &unk_21775CD50);
  sub_2171F0738(v0 + 432, &qword_27CB25380, &unk_21775DAA0);
  sub_2171F0738(v0 + 328, &qword_27CB25638, &unk_21775EA10);
  sub_2171F0738(v0 + 224, &qword_27CB25398, &unk_21776C4F0);
  sub_2171F0738(v0 + 1888, &qword_27CB25388, &unk_21775D410);
  sub_2171F0738(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175F62EC()
{
  OUTLINED_FUNCTION_30_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_217282D8C;

  return MusicCatalogSearchResponse.libraryMapped(policy:scope:)();
}

uint64_t MusicCatalogSearchResponse.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v12);
  CatalogSearchRawResponse.init(from:)();
  if (!v1)
  {
    sub_2175A3334(v13, v12);
    v3 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v5 = OUTLINED_FUNCTION_140_9();
    Decoder.dataRequestConfiguration.getter(v5, v6);
    v7 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v7, v8);
    OUTLINED_FUNCTION_140_9();
    Decoder.sharedRelatedItemStore.getter();
    sub_2171FF30C(a1, &v11);
    OUTLINED_FUNCTION_35_1();
    sub_2175EB460(v9);
    sub_2175A336C(v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCatalogSearchResponse.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_140_9();
  Encoder.dataRequestConfiguration.getter(v3, v4);
  sub_2171FF30C(a1, v6);
  sub_2175EF160(v7, v6, v8);
  sub_2171F0738(v6, &qword_27CB2ABC0, &qword_217785AC8);
  result = sub_21733AB9C(v7);
  if (!v1)
  {
    CatalogSearchRawResponse.encode(to:)(a1);
    return sub_2175A336C(v8);
  }

  return result;
}

void sub_2175F6570(char a1)
{
  v2 = v1;
  v32 = 0;
  v33 = 0xE000000000000000;
  v4 = *(v1 + 1096);
  v5 = *(v4 + 16);
  sub_217751DE8();
  v6 = 0;
  v7 = (v4 + 56);
  while (v5 != v6)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = qword_280BE62F0;
    sub_217751DE8();
    if (v10 != -1)
    {
      swift_once();
    }

    v11 = xmmword_280BE6308 == v9 && *(&xmmword_280BE6308 + 1) == v8;
    if (v11 || (sub_217753058() & 1) != 0)
    {

      sub_21759899C();
      goto LABEL_12;
    }

    if (qword_280BE6270 != -1)
    {
      swift_once();
    }

    v12 = xmmword_280BE6288 == v9 && *(&xmmword_280BE6288 + 1) == v8;
    if (v12 || (sub_217753058() & 1) != 0)
    {

      sub_2175996FC();
      goto LABEL_12;
    }

    if (qword_280BE7FE8 != -1)
    {
      swift_once();
    }

    v13 = xmmword_280BE8000 == v9 && *(&xmmword_280BE8000 + 1) == v8;
    if (v13 || (sub_217753058() & 1) != 0)
    {

      sub_21759A458();
      goto LABEL_12;
    }

    if (qword_280BE6378 != -1)
    {
      swift_once();
    }

    v14 = xmmword_280BE6390 == v9 && *(&xmmword_280BE6390 + 1) == v8;
    if (v14 || (sub_217753058() & 1) != 0)
    {

      sub_217599B64();
      goto LABEL_12;
    }

    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    v15 = xmmword_280BE6238 == v9 && *(&xmmword_280BE6238 + 1) == v8;
    if (v15 || (sub_217753058() & 1) != 0)
    {

      sub_217598C8C();
      goto LABEL_12;
    }

    if (qword_280BE61F8 != -1)
    {
      swift_once();
    }

    v16 = xmmword_280BE6210 == v9 && *(&xmmword_280BE6210 + 1) == v8;
    if (v16 || (sub_217753058() & 1) != 0)
    {

      sub_21759A748();
      goto LABEL_12;
    }

    if (qword_280BE6348 != -1)
    {
      swift_once();
    }

    v17 = xmmword_280BE6360 == v9 && *(&xmmword_280BE6360 + 1) == v8;
    if (v17 || (sub_217753058() & 1) != 0)
    {

      sub_21759AA38();
      goto LABEL_12;
    }

    if (qword_280BEB138 != -1)
    {
      swift_once();
    }

    v18 = xmmword_280BEB150 == v9 && *(&xmmword_280BEB150 + 1) == v8;
    if (v18 || (sub_217753058() & 1) != 0)
    {

      sub_217599E54();
      goto LABEL_12;
    }

    if (qword_280BE6248 != -1)
    {
      swift_once();
    }

    if (xmmword_280BE6260 == v9 && *(&xmmword_280BE6260 + 1) == v8)
    {
    }

    else
    {
      v20 = sub_217753058();

      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_217598F7C();
LABEL_12:
    v7 += 4;
    ++v6;
  }

  sub_217597CE0();
  sub_21726A630(v2 + 1040, v29, &qword_27CB2ABA8, &qword_217785A90);
  v21 = v30;
  if (v30)
  {
    v22 = *(v2 + 1096);
    v23 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v28 = v22;
    (*(v23 + 24))(&v28, a1 & 1, &v32, v21, v23);
    sub_2175F3478(v29);
  }

  else
  {
    sub_2171F0738(v29, &qword_27CB2ABA8, &qword_217785A90);
  }

  v29[0] = 0xD00000000000001BLL;
  v29[1] = 0x80000002177B28A0;
  v24 = v32;
  v25 = v33;
  MEMORY[0x21CEA23B0](v32, v33);

  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    MEMORY[0x21CEA23B0](10, 0xE100000000000000, v26);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v26);
}

unint64_t sub_2175F6C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2ABC8;
  if (!qword_27CB2ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2ABC8);
  }

  return result;
}

uint64_t sub_2175F6CBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 1104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_2175F6CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1096) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1104) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 1104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2175F70D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

uint64_t sub_2175F7134(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

uint64_t sub_2175F7190(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_22_50(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_29_37()
{
  result = 0.0;
  v0[99] = 0u;
  v0[100] = 0u;
  v0[101] = 0u;
  v0[102] = 0u;
  v0[103] = 0u;
  v0[104] = 0u;
  v0[105] = 0u;
  v0[106] = 0u;
  return result;
}

void *OUTLINED_FUNCTION_40_30(void *a1)
{

  return memcpy(a1, (v1 + 2336), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_42_33@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 64) = a2;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_43_24@<X0>(uint64_t a1@<X8>)
{

  return sub_2172CA838(v1, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_46_26(uint64_t a1, uint64_t a2)
{
  sub_2171FB568(a1, a2);

  return sub_217751DE8();
}

void Dictionary<>.extractEditorialNotes(shortKey:standardKey:nameKey:taglineKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v93 = a1;
  v94 = a8;
  v90 = a4;
  v83 = a3;
  v85 = a2;
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v91 = v12;
  v92 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31();
  v89 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v78 - v16;
  OUTLINED_FUNCTION_0();
  v88 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_31();
  v81 = v20;
  MEMORY[0x28223BE20](v21);
  v78 = &v78 - v22;
  v23 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_31();
  v79 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v78 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v78 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v78 - v35;
  v93 = *(v94 + 8);
  v94 = a5;
  sub_217751E68();
  v37 = OUTLINED_FUNCTION_73(v36);
  if (v40)
  {
    (*(v25 + 8))(v36, v23);
    v86 = 0;
    v87 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_68(v37, v38, v39, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_6_79();
    if (v40)
    {
      v43 = 0;
    }

    else
    {
      v43 = v41;
    }

    if (v40)
    {
      v44 = 0;
    }

    else
    {
      v44 = v42;
    }

    v86 = v44;
    v87 = v43;
  }

  OUTLINED_FUNCTION_5_79(v85);
  OUTLINED_FUNCTION_73(v33);
  v45 = v91;
  v82 = v23;
  v80 = v25;
  if (v40)
  {
    (*(v25 + 8))(v33, v23);
    v84 = 0;
    v85 = 0;
  }

  else
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_6_79();
    if (v46)
    {
      v49 = 0;
    }

    else
    {
      v49 = v47;
    }

    if (v46)
    {
      v50 = 0;
    }

    else
    {
      v50 = v48;
    }

    v84 = v50;
    v85 = v49;
  }

  v51 = v92;
  v52 = *(v92 + 16);
  v52(v17, v83, v45);
  if (__swift_getEnumTagSinglePayload(v17, 1, a6) == 1)
  {
    (*(v51 + 8))(v17, v45);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v55 = v88;
    v56 = v78;
    (*(v88 + 32))(v78, v17, a6);
    OUTLINED_FUNCTION_5_79(v56);
    (*(v55 + 8))(v56, a6);
    OUTLINED_FUNCTION_73(v30);
    if (v40)
    {
      (*(v80 + 8))(v30, v82);
      v53 = 0;
      v54 = 0;
    }

    else
    {
      swift_dynamicCast();
      OUTLINED_FUNCTION_6_79();
      if (v57)
      {
        v53 = 0;
      }

      else
      {
        v53 = v58;
      }

      if (v57)
      {
        v54 = 0;
      }

      else
      {
        v54 = v59;
      }
    }

    v51 = v92;
  }

  v60 = v89;
  v52(v89, v90, v45);
  if (__swift_getEnumTagSinglePayload(v60, 1, a6) == 1)
  {
    (*(v51 + 8))(v60, v45);
LABEL_38:
    v68 = 0;
    v69 = 0;
    goto LABEL_45;
  }

  v61 = v88;
  v62 = v81;
  (*(v88 + 32))(v81, v60, a6);
  v63 = v79;
  OUTLINED_FUNCTION_5_79(v62);
  (*(v61 + 8))(v62, a6);
  v64 = OUTLINED_FUNCTION_73(v63);
  if (v40)
  {
    (*(v80 + 8))(v63, v82);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_8_68(v64, v65, v66, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_6_79();
  if (v67)
  {
    v68 = 0;
  }

  if (v67)
  {
    v69 = 0;
  }

LABEL_45:
  v70 = v84;
  v71 = (v86 | v84 | v54 | v69) == 0;
  v72 = v87;
  if (v86 | v84 | v54 | v69)
  {
    v73 = v86;
  }

  else
  {
    v72 = 0;
    v73 = 1;
  }

  *a9 = v72;
  a9[1] = v73;
  v74 = v85;
  if (v71)
  {
    v74 = 0;
    v75 = 0;
  }

  else
  {
    v75 = v70;
  }

  a9[2] = v74;
  a9[3] = v75;
  if (v71)
  {
    v76 = 0;
  }

  else
  {
    v76 = v53;
  }

  if (v71)
  {
    v77 = 0;
  }

  else
  {
    v77 = v54;
  }

  if (v71)
  {
    v68 = 0;
  }

  a9[4] = v76;
  a9[5] = v77;
  a9[6] = v68;
  a9[7] = v69;
}

uint64_t EditorialNotes.debugDescription.getter()
{
  OUTLINED_FUNCTION_0_117();
  if (*(sub_2175F7F5C(1) + 16))
  {
    MEMORY[0x21CEA23B0](2105354, 0xE300000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2173C2F20();
    v0 = sub_217751ED8();
    v2 = v1;

    MEMORY[0x21CEA23B0](v0, v2, v3);

    MEMORY[0x21CEA23B0](10, 0xE100000000000000, v4);
  }

  else
  {
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v5);
  return v7;
}

uint64_t static EditorialNotes.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v34 = a1[5];
      v35 = a2[5];
      v18 = a1[4];
      v19 = a2[6];
      v20 = a2[7];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_217753058();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v34;
      v15 = v35;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_217753058();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v30 = v7;
      v31 = sub_217753058();
      v7 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16)
    {
      v32 = v7 == v14 && v9 == v16;
      if (v32 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t EditorialNotes.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  if (v1[1])
  {
    sub_217753208();
    sub_217751FF8();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_217753208();
    if (v2)
    {
LABEL_3:
      sub_217753208();
      sub_217751FF8();
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_217753208();
      if (v4)
      {
        goto LABEL_5;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_217753208();
  sub_217751FF8();
  if (!v4)
  {
    return sub_217753208();
  }

LABEL_5:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t EditorialNotes.hashValue.getter()
{
  sub_2177531E8();
  EditorialNotes.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175F7CB4(uint64_t a1)
{
  sub_2177531E8();
  EditorialNotes.hash(into:)(v2);
  return sub_217753238();
}

uint64_t EditorialNotes.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2171FF30C(a1, v18);
  sub_2171FF30C(v18, v15);
  CloudEditorialNotes.init(from:)(v15, v17);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_2171FF30C(v18, v16);
    v19[0] = v17[0];
    v19[1] = v17[1];
    v19[2] = v17[2];
    v19[3] = v17[3];
    sub_2175B7B74(v19, v15);
    sub_2173865A4();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_4_96();
    v15[8] = v7;
    v9 = v15[0];
    v8 = v15[1];
    v11 = v15[2];
    v10 = v15[3];
    v13 = v15[4];
    v12 = v15[5];
    v14 = v15[7];
    v20 = v15[6];
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    result = sub_2175F83C8(v15);
    *a2 = v9;
    a2[1] = v8;
    a2[2] = v11;
    a2[3] = v10;
    a2[4] = v13;
    a2[5] = v12;
    a2[6] = v20;
    a2[7] = v14;
  }

  return result;
}

uint64_t EditorialNotes.encode(to:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v12[0] = v4;
  v12[1] = v3;
  v12[2] = v6;
  v12[3] = v5;
  v12[4] = v8;
  v12[5] = v7;
  v12[6] = v9;
  v12[7] = v10;
  v12[8] = sub_217751DC8();
  sub_2175B38E0(a1);
  return sub_2175F83C8(v12);
}

uint64_t sub_2175F7F5C(char a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  if (!v1[5])
  {
    v13 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v37 = v1[1];
  v38 = *v1;
  v10 = v1[3];
  v11 = v1[2];
  MEMORY[0x21CEA23B0](v1[4]);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  sub_2172AFF2C(0, 1, 1, MEMORY[0x277D84F90]);
  v13 = v12;
  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_2172AFF2C(v14 > 1, v15 + 1, 1, v12);
    v13 = v29;
  }

  *(v13 + 16) = v15 + 1;
  v16 = v13 + 16 * v15;
  *(v16 + 32) = 0x22203A656D616ELL;
  *(v16 + 40) = 0xE700000000000000;
  v6 = v11;
  v5 = v10;
  v2 = a1;
  v4 = v37;
  v3 = v38;
  if (v8)
  {
LABEL_7:
    MEMORY[0x21CEA23B0](v7, v8);
    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172AFF2C(0, *(v13 + 16) + 1, 1, v13);
      v13 = v30;
    }

    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2172AFF2C(v17 > 1, v18 + 1, 1, v13);
      v13 = v31;
    }

    *(v13 + 16) = v18 + 1;
    v19 = v13 + 16 * v18;
    *(v19 + 32) = 0x3A656E696C676174;
    *(v19 + 40) = 0xEA00000000002220;
  }

LABEL_12:
  if (v4)
  {
    MEMORY[0x21CEA23B0](v3, v4);
    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172AFF2C(0, *(v13 + 16) + 1, 1, v13);
      v13 = v32;
    }

    v21 = *(v13 + 16);
    v20 = *(v13 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_2172AFF2C(v20 > 1, v21 + 1, 1, v13);
      v13 = v33;
    }

    *(v13 + 16) = v21 + 1;
    v22 = v13 + 16 * v21;
    *(v22 + 32) = 0x22203A74726F6873;
    *(v22 + 40) = 0xE800000000000000;
  }

  if (v5)
  {
    if (v2)
    {
      MEMORY[0x21CEA23B0](v6, v5);
      MEMORY[0x21CEA23B0](34, 0xE100000000000000);
      v23 = 0xEB0000000022203ALL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172AFF2C(0, *(v13 + 16) + 1, 1, v13);
        v13 = v34;
      }

      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      v26 = v25 + 1;
      if (v25 < v24 >> 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172AFF2C(0, *(v13 + 16) + 1, 1, v13);
        v13 = v35;
      }

      v23 = 0xAD0000A680E2203ALL;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      v26 = v25 + 1;
      if (v25 < v24 >> 1)
      {
        goto LABEL_28;
      }
    }

    sub_2172AFF2C(v24 > 1, v25 + 1, 1, v13);
    v13 = v36;
LABEL_28:
    *(v13 + 16) = v26;
    v27 = v13 + 16 * v25;
    *(v27 + 32) = 0x647261646E617473;
    *(v27 + 40) = v23;
  }

  return v13;
}

uint64_t EditorialNotes.description.getter()
{
  OUTLINED_FUNCTION_0_117();
  if (*(sub_2175F7F5C(0) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2173C2F20();
    v0 = sub_217751ED8();
    v2 = v1;

    MEMORY[0x21CEA23B0](v0, v2, v3);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v4);
  return v6;
}

uint64_t sub_2175F83C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2175F8434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AC28;
  if (!qword_27CB2AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AC28);
  }

  return result;
}

_BYTE *_s11RetryReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2175F8594(uint64_t a1, unsigned int a2)
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

uint64_t sub_2175F85D4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2175F8638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AC30;
  if (!qword_27CB2AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AC30);
  }

  return result;
}

uint64_t sub_2175F877C()
{
  v0 = OUTLINED_FUNCTION_8_69();
  OUTLINED_FUNCTION_2_103(v0);
  return sub_217753238();
}

uint64_t sub_2175F88A4()
{
  v0 = OUTLINED_FUNCTION_238();
  v8 = OUTLINED_FUNCTION_0_118(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  OUTLINED_FUNCTION_17_50(v8, v9, v10);
  return sub_217753238();
}

uint64_t sub_2175F89D8()
{
  v0 = OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_118(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_2175F8B88(uint64_t a1)
{
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](a1);
  return sub_217753238();
}

uint64_t sub_2175F8C0C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_238();
  v4 = a2(a1);
  OUTLINED_FUNCTION_1_110(v4, v5, v6);

  return sub_217753238();
}

uint64_t sub_2175F8C88()
{
  v0 = OUTLINED_FUNCTION_238();
  v8 = OUTLINED_FUNCTION_0_118(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  OUTLINED_FUNCTION_17_50(v8, v9, v10);
  return sub_217753238();
}

uint64_t sub_2175F8CEC(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_238();
  a2(v5, a1);
  return sub_217753238();
}

uint64_t sub_2175F8D58(uint64_t a1, char a2)
{
  v3 = sub_2177531E8();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000026;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  OUTLINED_FUNCTION_16_58(v3, v5, v4);

  return sub_217753238();
}

uint64_t sub_2175F8E30(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_80(a1);
  if (v1)
  {
    v4 = 0x73616364616F7262;
  }

  else
  {
    v4 = 0x65646F73697065;
  }

  OUTLINED_FUNCTION_7_63(v2, v4, v3);

  return sub_217753238();
}

uint64_t sub_2175F8ED4(uint64_t a1)
{
  v1 = sub_2177531E8();
  OUTLINED_FUNCTION_0_118(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_2175F8F38(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_80(a1);
  if (v1)
  {
    v4 = 0xD000000000000024;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  OUTLINED_FUNCTION_16_58(v2, v4, v3);

  return sub_217753238();
}

uint64_t sub_2175F8FD4(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  MEMORY[0x21CEA3550](a2);
  return sub_217753238();
}

uint64_t sub_2175F9030(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_13_53(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_1_110(v3, v4, v5);

  return sub_217753238();
}