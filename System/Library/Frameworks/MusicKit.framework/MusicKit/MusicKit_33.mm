unint64_t sub_2174F1264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_4();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v20 = v8;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x21CEA2610](a1, MEMORY[0x277D837D0]);
  MEMORY[0x21CEA23B0](v10);

  MEMORY[0x21CEA23B0](0xD00000000000001BLL, v20, v11);

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v21 = v12;
  v13 = MEMORY[0x21CEA2610](a2, v9);
  MEMORY[0x21CEA23B0](v13);

  MEMORY[0x21CEA23B0](0xD000000000000013, v21, v14);

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v22 = v15;
  v16 = Optional<A>.musicKit_prettyDescription.getter(a3, a4);
  MEMORY[0x21CEA23B0](v16);

  MEMORY[0x21CEA23B0](0xD00000000000001DLL, v22, v17);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v18);
  return 0xD000000000000011;
}

uint64_t sub_2174F1424(void *a1)
{
  v1 = [a1 developmentLocalization];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_217751F48();

  return v3;
}

uint64_t sub_2174F1488(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2174F14C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2174F151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28AD8;
  if (!qword_27CB28AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28AD8);
  }

  return result;
}

uint64_t sub_2174F1570(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a4 == 2 || ((a4 ^ a1) & 1) != 0)
    {
      return result;
    }
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    v8 = a2 == a5 && a3 == a6;
    if (!v8 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2174F1600(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574706D65747461 && a2 == 0xE900000000000064;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
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

uint64_t sub_2174F16CC(char a1)
{
  if (a1)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x6574706D65747461;
  }
}

uint64_t sub_2174F1704(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B10, &qword_2177708D0);
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174F2160(v12, v13, v14);
  sub_2177532F8();
  v18 = 0;
  sub_217752F08();
  if (!v4)
  {
    v17 = 1;
    sub_217752EF8();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_2174F1870(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!a4)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_2174F1908(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_2177531E8();
  if (v4 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  sub_217753208();
  if (a3)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_2174F19AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B00, &qword_2177708C8);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  v9 = a1[3];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2174F2160(v10, v11, v12);
  sub_2177532C8();
  if (!v1)
  {
    v14[15] = 0;
    v9 = sub_217752E28();
    v14[14] = 1;
    sub_217752E18();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_2174F1B4C(uint64_t a1)
{
  v1 = sub_217752DC8();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2174F1B98(char a1)
{
  result = 0x73736563637573;
  switch(a1)
  {
    case 1:
      result = 0x6369666675736E69;
      break;
    case 2:
      v3 = 0x657269707865;
      goto LABEL_6;
    case 3:
      v3 = 0x696C61766E69;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 4:
      result = 0x726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2174F1C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2174F1600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2174F1C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174F2160(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2174F1C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174F2160(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2174F1CD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2174F19AC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_2174F1D54(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  sub_2177531E8();
  if (v2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  sub_217753208();
  if (v3)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

unint64_t sub_2174F1DEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2174F1B4C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2174F1E1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2174F1B98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2174F1E7C(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x73736563637573;
  switch(a1)
  {
    case 1:
      v2 = 0xEC000000746E6569;
      v3 = 0x6369666675736E69;
      break;
    case 2:
      v4 = 0x657269707865;
      goto LABEL_6;
    case 3:
      v4 = 0x696C61766E69;
LABEL_6:
      v3 = v4 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 4:
      v2 = 0xE500000000000000;
      v3 = 0x726F727265;
      break;
    default:
      break;
  }

  MEMORY[0x21CEA23B0](v3, v2);

  return 46;
}

_BYTE *_s14AuthenticationV6StatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2174F203C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28AE0;
  if (!qword_27CB28AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28AE0);
  }

  return result;
}

unint64_t sub_2174F2094()
{
  result = qword_27CB28AE8;
  if (!qword_27CB28AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28AF0, qword_217770798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28AE8);
  }

  return result;
}

unint64_t sub_2174F210C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28AF8;
  if (!qword_27CB28AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28AF8);
  }

  return result;
}

unint64_t sub_2174F2160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28B08;
  if (!qword_27CB28B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B08);
  }

  return result;
}

_BYTE *_s14AuthenticationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2174F2294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28B18;
  if (!qword_27CB28B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B18);
  }

  return result;
}

unint64_t sub_2174F22EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28B20;
  if (!qword_27CB28B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B20);
  }

  return result;
}

unint64_t sub_2174F2344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28B28;
  if (!qword_27CB28B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B28);
  }

  return result;
}

uint64_t sub_2174F2398@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MusicLibrarySectionedResponse<>.== infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v9 = *(a2 + 8);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a7;
  type metadata accessor for MusicLibrarySection(0, v11);
  swift_getWitnessTable();
  return sub_217752448() & (v8 == v9);
}

uint64_t MusicLibrarySectionedResponse<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v6 = *(a2 + 32);
  v8[0] = *(a2 + 16);
  v8[1] = v6;
  type metadata accessor for MusicLibrarySection(0, v8);
  swift_getWitnessTable();
  sub_217752438();
  return MEMORY[0x21CEA3550](v5);
}

uint64_t MusicLibrarySectionedResponse<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[1];
  v10 = *v3;
  v11 = v7;
  sub_2177531E8();
  MusicLibrarySectionedResponse<>.hash(into:)(v9, a1, a2, a3);
  return sub_217753238();
}

uint64_t sub_2174F2590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_2177531E8();
  MusicLibrarySectionedResponse<>.hash(into:)(v7, a2, v4, v5);
  return sub_217753238();
}

unint64_t sub_2174F25E8(char a1, uint64_t a2)
{
  v4 = *v2;
  v36 = 0;
  v37 = 0xE000000000000000;
  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  sub_217751DE8();
  v32 = v5;
  v30 = *(a2 + 24);
  v33 = v30;
  v34 = v6;
  v7 = type metadata accessor for MusicLibrarySection(0, &v32);
  v8 = sub_2177522A8();
  v35 = v8;
  if (v8 == sub_217752388())
  {
LABEL_8:

    if (dynamic_cast_existential_1_conditional(v30, v30, &protocol descriptor for MusicItemTypeValueProviding))
    {
      (*(v21 + 8))(&v32);
      v23 = *(&v33 + 1);
      v22 = v34;
    }

    else
    {
      v23 = sub_217753348();
      v22 = v24;
    }

    v32 = 0;
    *&v33 = 0xE000000000000000;
    sub_217752AA8();

    v32 = 0xD00000000000001ELL;
    *&v33 = 0x80000002177AF430;
    v25 = sub_217753348();
    MEMORY[0x21CEA23B0](v25);

    MEMORY[0x21CEA23B0](8236, 0xE200000000000000, v26);
    MEMORY[0x21CEA23B0](v23, v22);

    MEMORY[0x21CEA23B0](10302, 0xE200000000000000, v27);
    MEMORY[0x21CEA23B0](0x697463657320200ALL, 0xEE005B203A736E6FLL);
    MEMORY[0x21CEA23B0](v36, v37);

    MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000, v28);
    MEMORY[0x21CEA23B0](10, 0xE100000000000000);
    MEMORY[0x21CEA23B0](41, 0xE100000000000000);
    return v32;
  }

  else
  {
    while (1)
    {
      v9 = sub_217752358();
      sub_2177522D8();
      if ((v9 & 1) == 0)
      {
        break;
      }

      v10 = *(v7 - 8);
      (*(v10 + 16))(&v32, v4 + 32 + 112 * v8, v7);
      sub_2177523E8();
      sub_217685674(a1 & 1, 1, v7);
      v11 = (*(v10 + 8))(&v32, v7);
      sub_21733A5C8(v11, v12, v13);
      v14 = sub_217752998();
      v16 = v15;

      v18 = v36 & 0xFFFFFFFFFFFFLL;
      if ((v37 & 0x2000000000000000) != 0)
      {
        v18 = HIBYTE(v37) & 0xF;
      }

      if (v18)
      {
        MEMORY[0x21CEA23B0](44, 0xE100000000000000, v17);
      }

      MEMORY[0x21CEA23B0](v14, v16, v17);

      MEMORY[0x21CEA23B0](0x202020200ALL, 0xE500000000000000, v19);

      v20 = sub_217752388();
      v8 = v35;
      if (v35 == v20)
      {
        goto LABEL_8;
      }
    }

    result = sub_217752AC8();
    __break(1u);
  }

  return result;
}

void StationPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v42 = v0;
  v43 = v1;
  v41 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  memcpy(__dst, v13, sizeof(__dst));
  v14 = *v10;
  v15 = v10[1];
  v16 = *(v10 + 16);
  type metadata accessor for Station._AirTime(0);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = type metadata accessor for StationPropertyProvider(0);
  v22 = v21[5];
  sub_2172A497C(__src);
  memcpy((v12 + v22), __src, 0x221uLL);
  *(v12 + v21[6]) = 2;
  v23 = v12 + v21[7];
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v12 + v21[8]) = 0;
  v24 = (v12 + v21[9]);
  *v24 = xmmword_2177586D0;
  v24[1] = 0u;
  v24[2] = 0u;
  v24[3] = 0u;
  *(v12 + v21[10]) = 0;
  v25 = v12 + v21[11];
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v12 + v21[12]) = 2;
  *(v12 + v21[13]) = 14;
  memcpy((v12 + v21[14]), __src, 0x221uLL);
  OUTLINED_FUNCTION_182_3(v21[15]);
  v26 = v12 + v21[16];
  *(v26 + 112) = 0;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *v26 = 0u;
  OUTLINED_FUNCTION_182_3(v21[17]);
  v27 = sub_2177516D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  OUTLINED_FUNCTION_182_3(v21[19]);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v27);
  v34 = v12 + v21[21];
  *v34 = xmmword_2177586D0;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  OUTLINED_FUNCTION_182_3(v21[22]);
  *(v12 + v21[23]) = 0;
  v35 = (v12 + v21[24]);
  v35[6] = 0u;
  v35[7] = 0u;
  v35[4] = 0u;
  v35[5] = 0u;
  v35[2] = 0u;
  v35[3] = 0u;
  *v35 = 0u;
  v35[1] = 0u;
  v36 = v12 + v21[25];
  *(v36 + 96) = 0;
  *(v36 + 64) = 0u;
  *(v36 + 80) = 0u;
  *(v36 + 32) = 0u;
  *(v36 + 48) = 0u;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  if (qword_280BE3758 != -1)
  {
    swift_once();
  }

  v37 = qword_280C01FC0;
  if (qword_280C01FC0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v40 = sub_217752D28();

    v37 = v40;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v12 + v21[26]) = v37;
  v38 = (v12 + v21[29]);
  memcpy((v12 + v21[27]), __dst, 0x161uLL);
  v39 = v12 + v21[28];
  *v39 = v14;
  *(v39 + 8) = v15;
  *(v39 + 16) = v16;
  *v38 = v8;
  v38[1] = v6;
  *(v12 + v21[30]) = v4;
  *(v12 + v21[31]) = v41;
  *(v12 + v21[32]) = v42;
  *(v12 + v21[33]) = v43;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for StationPropertyProvider(uint64_t a1)
{
  result = qword_280BE3738;
  if (!qword_280BE3738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StationPropertyProvider.artwork.getter()
{
  v1 = OUTLINED_FUNCTION_59_11();
  memcpy(__dst, (v0 + *(v1 + 20)), 0x221uLL);
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x221uLL);
  return sub_21726A630(__dst, &v5, &qword_27CB24400, &unk_21775E9A0);
}

void *StationPropertyProvider.artwork.setter()
{
  v0 = OUTLINED_FUNCTION_8_20();
  v1 = type metadata accessor for StationPropertyProvider(v0);
  v9 = OUTLINED_FUNCTION_233(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15[0]);
  memcpy(v9, v10, 0x221uLL);
  sub_2171F0738(v15, &qword_27CB24400, &unk_21775E9A0);
  v11 = OUTLINED_FUNCTION_232_1();
  return memcpy(v11, v12, 0x221uLL);
}

uint64_t StationPropertyProvider.artwork.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.contentRating.getter()
{
  result = OUTLINED_FUNCTION_59_11();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t StationPropertyProvider.contentRating.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StationPropertyProvider(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t StationPropertyProvider.contentRating.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

void StationPropertyProvider.duration.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for StationPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 28));
}

uint64_t StationPropertyProvider.duration.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.editorialArtworks.getter()
{
  type metadata accessor for StationPropertyProvider(0);

  return sub_217751DE8();
}

void StationPropertyProvider.editorialArtworks.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = *(type metadata accessor for StationPropertyProvider(v2) + 32);

  *(v1 + v3) = v0;
}

uint64_t StationPropertyProvider.editorialArtworks.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.editorialNotes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_59_11() + 36));
  v4 = v2[3];
  v9 = v2[2];
  v3 = v9;
  v10 = v4;
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  *v0 = v8[0];
  v0[1] = v5;
  v0[2] = v3;
  v0[3] = v4;
  return sub_21726A630(v8, &v7, &qword_27CB24B70, &unk_217759460);
}

__n128 StationPropertyProvider.editorialNotes.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = (v1 + *(type metadata accessor for StationPropertyProvider(v2) + 36));
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  sub_2171F0738(v9, &qword_27CB24B70, &unk_217759460);
  v6 = *(v0 + 16);
  *v3 = *v0;
  v3[1] = v6;
  result = *(v0 + 32);
  v8 = *(v0 + 48);
  v3[2] = result;
  v3[3] = v8;
  return result;
}

uint64_t StationPropertyProvider.editorialNotes.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.editorialVideoArtworks.getter()
{
  type metadata accessor for StationPropertyProvider(0);

  return sub_217751DE8();
}

void StationPropertyProvider.editorialVideoArtworks.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = *(type metadata accessor for StationPropertyProvider(v2) + 40);

  *(v1 + v3) = v0;
}

uint64_t StationPropertyProvider.editorialVideoArtworks.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

void StationPropertyProvider.episodeNumber.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for StationPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 44));
}

uint64_t StationPropertyProvider.episodeNumber.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.isLive.setter(char a1)
{
  result = type metadata accessor for StationPropertyProvider(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t StationPropertyProvider.isLive.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.kind.getter()
{
  result = OUTLINED_FUNCTION_59_11();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t StationPropertyProvider.kind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StationPropertyProvider(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t StationPropertyProvider.kind.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.mainUberArtwork.getter()
{
  v1 = OUTLINED_FUNCTION_59_11();
  memcpy(__dst, (v0 + *(v1 + 56)), 0x221uLL);
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x221uLL);
  return sub_21726A630(__dst, &v5, &qword_27CB24400, &unk_21775E9A0);
}

void *StationPropertyProvider.mainUberArtwork.setter()
{
  v0 = OUTLINED_FUNCTION_8_20();
  v1 = type metadata accessor for StationPropertyProvider(v0);
  v9 = OUTLINED_FUNCTION_233(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15[0]);
  memcpy(v9, v10, 0x221uLL);
  sub_2171F0738(v15, &qword_27CB24400, &unk_21775E9A0);
  v11 = OUTLINED_FUNCTION_232_1();
  return memcpy(v11, v12, 0x221uLL);
}

uint64_t StationPropertyProvider.mainUberArtwork.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.name.getter()
{
  type metadata accessor for StationPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void StationPropertyProvider.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for StationPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t StationPropertyProvider.name.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.playParameters.getter()
{
  v1 = OUTLINED_FUNCTION_59_11();
  memcpy(__dst, (v0 + *(v1 + 64)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x78uLL);
  return sub_21726A630(__dst, &v5, &qword_27CB244D0, &unk_21775D620);
}

void *StationPropertyProvider.playParameters.setter()
{
  v0 = OUTLINED_FUNCTION_8_20();
  v1 = type metadata accessor for StationPropertyProvider(v0);
  v9 = OUTLINED_FUNCTION_233(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15[0]);
  memcpy(v9, v10, 0x78uLL);
  sub_2171F0738(v15, &qword_27CB244D0, &unk_21775D620);
  v11 = OUTLINED_FUNCTION_232_1();
  return memcpy(v11, v12, 0x78uLL);
}

uint64_t StationPropertyProvider.playParameters.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.providerBundleIdentifier.getter()
{
  type metadata accessor for StationPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void StationPropertyProvider.providerBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for StationPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t StationPropertyProvider.providerBundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.providerUniversalLink.setter()
{
  v0 = OUTLINED_FUNCTION_8_20();
  v1 = type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_175_2(&unk_27CB277C0, &qword_217758DC0, *(v1 + 72));
}

uint64_t StationPropertyProvider.providerUniversalLink.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.stationProviderName.getter()
{
  type metadata accessor for StationPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void StationPropertyProvider.stationProviderName.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for StationPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t StationPropertyProvider.stationProviderName.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.url.setter()
{
  v0 = OUTLINED_FUNCTION_8_20();
  v1 = type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_175_2(&unk_27CB277C0, &qword_217758DC0, *(v1 + 80));
}

uint64_t StationPropertyProvider.url.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

void StationPropertyProvider.pivotMetadata.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_59_11() + 84));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;

  sub_2172838F8(v3, v4, v5, v6);
}

__n128 StationPropertyProvider.pivotMetadata.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = (v1 + *(type metadata accessor for StationPropertyProvider(v2) + 84));
  sub_217283940(*v3, v3[1], v3[2], v3[3]);
  result = *v0;
  v5 = *(v0 + 16);
  *v3 = *v0;
  *(v3 + 1) = v5;
  return result;
}

uint64_t StationPropertyProvider.pivotMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.recommendationReason.getter()
{
  type metadata accessor for StationPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void StationPropertyProvider.recommendationReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for StationPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t StationPropertyProvider.recommendationReason.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.searchContextSnippets.getter()
{
  type metadata accessor for StationPropertyProvider(0);

  return sub_217751DE8();
}

void StationPropertyProvider.searchContextSnippets.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = *(type metadata accessor for StationPropertyProvider(v2) + 92);

  *(v1 + v3) = v0;
}

uint64_t StationPropertyProvider.searchContextSnippets.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.friendsWhoListened.setter()
{
  v0 = OUTLINED_FUNCTION_8_20();
  v1 = type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_175_2(&qword_27CB24230, &unk_21775E9D0, *(v1 + 96));
}

uint64_t StationPropertyProvider.friendsWhoListened.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.recommendedEntryTracks.setter()
{
  v0 = OUTLINED_FUNCTION_8_20();
  v1 = type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_175_2(&unk_27CB28A60, &qword_217770B60, *(v1 + 100));
}

uint64_t StationPropertyProvider.recommendedEntryTracks.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

void StationPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v97 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_45_0(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B30, &qword_217770B68);
  if (!swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_52_17();
    sub_217752AA8();
    OUTLINED_FUNCTION_49_16();
    MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177AF480);
    v100[0] = v3;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    v92 = v101;
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    OUTLINED_FUNCTION_55_12();
    v96 = 58;
    goto LABEL_140;
  }

  v18 = qword_280BE6758;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_37_22(&qword_280BE6758);
  }

  if (OUTLINED_FUNCTION_168(qword_280C02098))
  {
    sub_21726A630(v1, v17, &qword_27CB255C0, &unk_21775D480);
    v19 = type metadata accessor for Station._AirTime(0);
    OUTLINED_FUNCTION_73(v17);
    if (v20)
    {

      sub_2171F0738(v17, &qword_27CB255C0, &unk_21775D480);
      OUTLINED_FUNCTION_86_10();
LABEL_16:
      v27 = *(v21 + 70);
      *v5 = *(v21 + 69);
      *(v5 + 16) = v27;
      goto LABEL_74;
    }

    *(&v101[1] + 1) = v19;
    __swift_allocate_boxed_opaque_existential_0(v101);
    OUTLINED_FUNCTION_9_39();
    sub_2174F8388(v17, v25, v26);
    goto LABEL_14;
  }

  v22 = qword_280BE6760;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_36_22(&qword_280BE6760);
  }

  OUTLINED_FUNCTION_168(qword_280C020A0);
  OUTLINED_FUNCTION_161();
  if (v22)
  {
    type metadata accessor for StationPropertyProvider(0);
    OUTLINED_FUNCTION_111_10(v100);
    OUTLINED_FUNCTION_111_10(v101);
    OUTLINED_FUNCTION_104(v101);
    if (!v20)
    {
LABEL_71:
      v24 = swift_allocObject();
      memcpy(v99, v100, sizeof(v99));
      sub_217284028(v99, &v98);

      memcpy((v24 + 16), v101, 0x221uLL);
      v23 = &type metadata for Artwork;
      goto LABEL_72;
    }

    goto LABEL_13;
  }

  v28 = qword_280BE6818;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_34_22(&qword_280BE6818);
  }

  OUTLINED_FUNCTION_168(qword_280C02128);
  OUTLINED_FUNCTION_161();
  if ((v28 & 1) == 0)
  {
    v32 = qword_280BE6750;

    if (v32 != -1)
    {
      OUTLINED_FUNCTION_32_24(&qword_280BE6750);
    }

    OUTLINED_FUNCTION_168(qword_280C02090);
    OUTLINED_FUNCTION_161();
    if (v32)
    {
      v33 = 0;
      v34 = 0;
      v35 = v1 + *(type metadata accessor for StationPropertyProvider(0) + 28);
      if ((*(v35 + 8) & 1) == 0)
      {
        v34 = *v35;
        v33 = MEMORY[0x277D839F8];
      }

LABEL_29:

      *v5 = v34;
LABEL_30:
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 24) = v33;
      goto LABEL_74;
    }

    v36 = qword_280BE67D8;

    if (v36 != -1)
    {
      OUTLINED_FUNCTION_3_59(&qword_280BE67D8);
    }

    OUTLINED_FUNCTION_168(qword_280C020F8);
    OUTLINED_FUNCTION_161();
    if (v36)
    {
      v37 = *(v1 + *(type metadata accessor for StationPropertyProvider(0) + 32));
      if (v37)
      {
        v38 = &qword_27CB24BE8;
        v39 = &qword_2177595F0;
LABEL_36:
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
        sub_217751DE8();
LABEL_124:

        *v5 = v37;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(v5 + 24) = v40;
        goto LABEL_74;
      }

      goto LABEL_123;
    }

    v41 = qword_280BE6800;

    if (v41 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_280BE6800);
    }

    OUTLINED_FUNCTION_168(qword_280C02110);
    OUTLINED_FUNCTION_161();
    if (v41)
    {
      v42 = v1 + *(type metadata accessor for StationPropertyProvider(0) + 36);
      v44 = *v42;
      v43 = *(v42 + 8);
      v45 = *(v42 + 48);
      *&v99[16] = *(v42 + 32);
      *&v99[32] = v45;
      *v99 = *(v42 + 16);
      if (v43 != 1)
      {
        v24 = swift_allocObject();
        *&v101[0] = v44;
        *(&v101[0] + 1) = v43;
        v46 = *(v42 + 32);
        v101[1] = *(v42 + 16);
        v101[2] = v46;
        v101[3] = *(v42 + 48);
        sub_217350F74(v101, v100);

        *(v24 + 16) = v44;
        *(v24 + 24) = v43;
        v47 = *&v99[16];
        *(v24 + 32) = *v99;
        *(v24 + 48) = v47;
        *(v24 + 64) = *&v99[32];
        v23 = &type metadata for EditorialNotes;
        goto LABEL_72;
      }

LABEL_13:

      v23 = 0;
      v24 = 0;
LABEL_72:
      *v5 = v24;
LABEL_73:
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 24) = v23;
      goto LABEL_74;
    }

    v48 = qword_280BE6798;

    if (v48 != -1)
    {
      OUTLINED_FUNCTION_2_71(&qword_280BE6798);
    }

    OUTLINED_FUNCTION_168(qword_280C020D0);
    OUTLINED_FUNCTION_161();
    if (v48)
    {
      v37 = *(v1 + *(type metadata accessor for StationPropertyProvider(0) + 40));
      if (v37)
      {
        v38 = &qword_27CB24BE0;
        v39 = &unk_2177657E0;
        goto LABEL_36;
      }

LABEL_123:
      v40 = 0;
      goto LABEL_124;
    }

    v49 = qword_280BE6810;

    if (v49 != -1)
    {
      OUTLINED_FUNCTION_29_27(&qword_280BE6810);
    }

    OUTLINED_FUNCTION_168(qword_280C02120);
    OUTLINED_FUNCTION_161();
    if (v49)
    {
      v33 = 0;
      v34 = 0;
      v50 = v1 + *(type metadata accessor for StationPropertyProvider(0) + 44);
      if ((*(v50 + 8) & 1) == 0)
      {
        v34 = *v50;
        v33 = MEMORY[0x277D83B88];
      }

      goto LABEL_29;
    }

    v51 = qword_280BE6768;

    if (v51 != -1)
    {
      OUTLINED_FUNCTION_28_28(&qword_280BE6768);
    }

    OUTLINED_FUNCTION_168(qword_280C020A8);
    OUTLINED_FUNCTION_161();
    if (v51)
    {
      v29 = *(v1 + *(type metadata accessor for StationPropertyProvider(0) + 48));

      v30 = v29 & 1;
      v31 = MEMORY[0x277D839B0];
      goto LABEL_21;
    }

    v52 = qword_280BE6770;

    if (v52 != -1)
    {
      OUTLINED_FUNCTION_45_21(&qword_280BE6770);
    }

    OUTLINED_FUNCTION_168(qword_280C020B0);
    OUTLINED_FUNCTION_161();
    if (v52)
    {
      v53 = *(v1 + *(type metadata accessor for StationPropertyProvider(0) + 52));

      v23 = &type metadata for Station._Kind;
      if (v53 == 14)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      if (v53 == 14)
      {
        v23 = 0;
      }

      *v5 = v54;
      goto LABEL_73;
    }

    v55 = qword_280BE67E0;

    if (v55 != -1)
    {
      OUTLINED_FUNCTION_44_18(&qword_280BE67E0);
    }

    OUTLINED_FUNCTION_168(qword_280C02100);
    OUTLINED_FUNCTION_161();
    if (v55)
    {
      type metadata accessor for StationPropertyProvider(0);
      OUTLINED_FUNCTION_111_10(v100);
      OUTLINED_FUNCTION_111_10(v101);
      OUTLINED_FUNCTION_104(v101);
      if (!v20)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    v56 = qword_280BE6778;

    if (v56 != -1)
    {
      OUTLINED_FUNCTION_6_19(&qword_280BE6778);
    }

    OUTLINED_FUNCTION_168(qword_280C020B8);
    OUTLINED_FUNCTION_161();
    if (v56)
    {
      v57 = *(type metadata accessor for StationPropertyProvider(0) + 60);
LABEL_79:
      v58 = (v1 + v57);
      v59 = v58[1];
      if (v59)
      {
        v60 = *v58;
        sub_217751DE8();
        v61 = MEMORY[0x277D837D0];
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      *v5 = v60;
      *(v5 + 8) = v59;
      *(v5 + 16) = 0;
      *(v5 + 24) = v61;
      goto LABEL_74;
    }

    v62 = qword_280BE67F0;

    if (v62 != -1)
    {
      OUTLINED_FUNCTION_42_19(&qword_280BE67F0);
    }

    OUTLINED_FUNCTION_168(qword_280C02108);
    OUTLINED_FUNCTION_161();
    if (v62)
    {
      v63 = (v1 + *(type metadata accessor for StationPropertyProvider(0) + 64));
      v65 = *v63;
      v64 = v63[1];
      memcpy(v99, v63 + 2, 0x68uLL);
      if (v64)
      {
        v24 = swift_allocObject();
        *&v101[0] = v65;
        *(&v101[0] + 1) = v64;
        memcpy(&v101[1], v63 + 2, 0x68uLL);
        sub_2172DF5A4(v101, v100);

        *(v24 + 16) = v65;
        *(v24 + 24) = v64;
        memcpy((v24 + 32), v99, 0x68uLL);
        v23 = &type metadata for PlayParameters;
        goto LABEL_72;
      }

LABEL_70:

      v24 = 0;
      v23 = 0;
      goto LABEL_72;
    }

    v66 = qword_280BE6790;

    if (v66 != -1)
    {
      OUTLINED_FUNCTION_41_19(&qword_280BE6790);
    }

    OUTLINED_FUNCTION_168(qword_280C020C8);
    OUTLINED_FUNCTION_161();
    if (v66)
    {
      v57 = *(type metadata accessor for StationPropertyProvider(0) + 68);
      goto LABEL_79;
    }

    v67 = qword_280BE67A8;

    if (v67 != -1)
    {
      OUTLINED_FUNCTION_40_21(&qword_280BE67A8);
    }

    OUTLINED_FUNCTION_168(qword_280C020D8);
    OUTLINED_FUNCTION_161();
    if (v67)
    {
      v68 = type metadata accessor for StationPropertyProvider(0);
      sub_21726A630(v1 + *(v68 + 72), v13, &unk_27CB277C0, &qword_217758DC0);
      v69 = sub_2177516D8();
      OUTLINED_FUNCTION_73(v13);
      if (!v20)
      {
        *(&v101[1] + 1) = v69;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v101);
        (*(*(v69 - 8) + 32))(boxed_opaque_existential_0, v13, v69);
LABEL_14:

LABEL_15:
        v21 = v99;
        goto LABEL_16;
      }

      v70 = v13;
      goto LABEL_98;
    }

    v71 = qword_280BE67C8;

    if (v71 != -1)
    {
      OUTLINED_FUNCTION_39_16(&qword_280BE67C8);
    }

    OUTLINED_FUNCTION_168(qword_280C020E8);
    OUTLINED_FUNCTION_161();
    if (v71)
    {
      v57 = *(type metadata accessor for StationPropertyProvider(0) + 76);
      goto LABEL_79;
    }

    v73 = qword_280BE6780;

    if (v73 != -1)
    {
      OUTLINED_FUNCTION_38_19(&qword_280BE6780);
    }

    OUTLINED_FUNCTION_168(qword_280C020C0);
    OUTLINED_FUNCTION_161();
    if (v73)
    {
      v74 = type metadata accessor for StationPropertyProvider(0);
      sub_21726A630(v1 + *(v74 + 80), v10, &unk_27CB277C0, &qword_217758DC0);
      v75 = sub_2177516D8();
      OUTLINED_FUNCTION_73(v10);
      if (!v20)
      {
        *(&v101[1] + 1) = v75;
        v80 = __swift_allocate_boxed_opaque_existential_0(v101);
        (*(*(v75 - 8) + 32))(v80, v10, v75);
        goto LABEL_14;
      }

      v70 = v10;
LABEL_98:
      sub_2171F0738(v70, &unk_27CB277C0, &qword_217758DC0);
      OUTLINED_FUNCTION_86_10();
      goto LABEL_15;
    }

    v76 = qword_280BE6808;

    if (v76 != -1)
    {
      OUTLINED_FUNCTION_7_44(&qword_280BE6808);
    }

    OUTLINED_FUNCTION_168(qword_280C02118);
    OUTLINED_FUNCTION_161();
    if (v76)
    {
      v77 = (v1 + *(type metadata accessor for StationPropertyProvider(0) + 84));
      v78 = v77[1];
      if (v78 == 1)
      {

        v79 = 0;
        v23 = 0;
      }

      else
      {
        v83 = v77[2];
        v82 = v77[3];
        v84 = *v77;
        v79 = swift_allocObject();
        sub_217751DE8();
        sub_217751DE8();

        v79[2] = v84;
        v79[3] = v78;
        v79[4] = v83;
        v79[5] = v82;
        v23 = &type metadata for CloudPivotMetadata;
      }

      *v5 = v79;
      goto LABEL_73;
    }

    v81 = qword_280BE67B8;

    if (v81 != -1)
    {
      OUTLINED_FUNCTION_6_48(&qword_280BE67B8);
    }

    OUTLINED_FUNCTION_168(qword_280C020E0);
    OUTLINED_FUNCTION_161();
    if (v81)
    {
      v57 = *(type metadata accessor for StationPropertyProvider(0) + 88);
      goto LABEL_79;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25478, &unk_217770B70);
    swift_allocObject();
    v85 = OUTLINED_FUNCTION_54_0();
    v86 = OUTLINED_FUNCTION_168(v85);

    if (v86)
    {
      v37 = *(v1 + *(type metadata accessor for StationPropertyProvider(0) + 92));
      if (v37)
      {
        v38 = &qword_27CB24BD8;
        v39 = &unk_2177595E0;
        goto LABEL_36;
      }

      goto LABEL_123;
    }

    v87 = qword_280BE67D0;

    if (v87 != -1)
    {
      OUTLINED_FUNCTION_5_50(&qword_280BE67D0);
    }

    OUTLINED_FUNCTION_168(qword_280C020F0);
    OUTLINED_FUNCTION_161();
    if (v87)
    {
      v88 = type metadata accessor for StationPropertyProvider(0);
      sub_21726A630(v1 + *(v88 + 96), v101, &qword_27CB24230, &unk_21775E9D0);
      if (*&v101[1])
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24238, &unk_21775EA00);
        v89 = swift_allocObject();
        v90 = (v89 + 16);
        v91 = 128;
LABEL_134:
        memcpy(v90, v101, v91);

LABEL_138:
        *v5 = v89;
        goto LABEL_30;
      }

      v94 = &qword_27CB24230;
      v95 = &unk_21775E9D0;
    }

    else
    {
      v92 = qword_27CB23B00;

      if (v92 != -1)
      {
        goto LABEL_141;
      }

      while (1)
      {
        OUTLINED_FUNCTION_168(qword_27CB8A238);
        OUTLINED_FUNCTION_161();
        if (v92)
        {
          break;
        }

        OUTLINED_FUNCTION_52_17();
        sub_217752AA8();
        OUTLINED_FUNCTION_49_16();
        MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
        v100[0] = v3;
        type metadata accessor for AnyMusicProperty();
        sub_217752C78();
        v92 = v101;
        MEMORY[0x21CEA23B0](46, 0xE100000000000000);
        OUTLINED_FUNCTION_55_12();
        v96 = 110;
LABEL_140:
        v97 = v96;
        OUTLINED_FUNCTION_58_1("Fatal error");
        __break(1u);
LABEL_141:
        OUTLINED_FUNCTION_4_64(&qword_27CB23B00);
      }

      v93 = type metadata accessor for StationPropertyProvider(0);
      sub_21726A630(v1 + *(v93 + 100), v101, &unk_27CB28A60, &qword_217770B60);
      if (*(&v101[5] + 1))
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240D0, &unk_21775D400);
        v89 = swift_allocObject();
        v90 = (v89 + 16);
        v91 = 104;
        goto LABEL_134;
      }

      v94 = &unk_27CB28A60;
      v95 = &qword_217770B60;
    }

    sub_2171F0738(v101, v94, v95);
    v89 = 0;
    v33 = 0;
    goto LABEL_138;
  }

  v29 = *(v1 + *(type metadata accessor for StationPropertyProvider(0) + 24));

  v30 = v29 & 1;
  v31 = &type metadata for ContentRating;
LABEL_21:
  if (v29 == 2)
  {
    v31 = 0;
  }

  *v5 = v30;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = v31;
LABEL_74:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174F4CFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_21726A630(a1, v5, &qword_27CB2AD40, &qword_2177583F0);

  return StationPropertyProvider.subscript.setter(v5, v3);
}

uint64_t StationPropertyProvider.subscript.setter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B30, &qword_217770B68);
  if (!swift_dynamicCastClass())
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177AF480);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    goto LABEL_28;
  }

  v3 = qword_280BE67D8;
  swift_retain_n();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_3_59(&qword_280BE67D8);
  }

  OUTLINED_FUNCTION_139_7(qword_280C020F8);
  OUTLINED_FUNCTION_5_4();

  if (v3)
  {
    swift_getKeyPath(byte_217770C48);
    OUTLINED_FUNCTION_79_1();
    sub_217351C74(v4, v5);
  }

  else
  {
    v6 = qword_280BE6798;

    if (v6 != -1)
    {
      OUTLINED_FUNCTION_2_71(&qword_280BE6798);
    }

    OUTLINED_FUNCTION_139_7(qword_280C020D0);
    OUTLINED_FUNCTION_5_4();

    if (v6)
    {
      swift_getKeyPath(byte_217770C28);
      OUTLINED_FUNCTION_79_1();
      sub_217351C78(v7, v8);
    }

    else
    {
      v9 = qword_280BE6808;

      if (v9 != -1)
      {
        OUTLINED_FUNCTION_7_44(&qword_280BE6808);
      }

      OUTLINED_FUNCTION_139_7(qword_280C02118);
      OUTLINED_FUNCTION_5_4();

      if (v9)
      {
        swift_getKeyPath(byte_217770C08);
        OUTLINED_FUNCTION_79_1();
        sub_217351C9C();
      }

      else
      {
        v10 = qword_280BE67B8;

        if (v10 != -1)
        {
          OUTLINED_FUNCTION_6_48(&qword_280BE67B8);
        }

        OUTLINED_FUNCTION_139_7(qword_280C020E0);
        OUTLINED_FUNCTION_5_4();

        if (v10)
        {
          swift_getKeyPath(byte_217770BE8);
          OUTLINED_FUNCTION_79_1();
          sub_217351C94();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25478, &unk_217770B70);
          swift_initStackObject();
          v11 = OUTLINED_FUNCTION_54_0();
          OUTLINED_FUNCTION_139_7(v11);
          OUTLINED_FUNCTION_5_4();

          v12 = qword_280BE67D0;

          if (v12 != -1)
          {
            OUTLINED_FUNCTION_5_50(&qword_280BE67D0);
          }

          OUTLINED_FUNCTION_139_7(qword_280C020F0);
          OUTLINED_FUNCTION_5_4();

          if (v12)
          {
            swift_getKeyPath(" l=e");
            OUTLINED_FUNCTION_79_1();
            sub_217351CC0(v13, v14);
          }

          else
          {
            v15 = qword_27CB23B00;

            if (v15 != -1)
            {
              OUTLINED_FUNCTION_4_64(&qword_27CB23B00);
            }

            OUTLINED_FUNCTION_139_7(qword_27CB8A238);
            OUTLINED_FUNCTION_5_4();

            if ((v15 & 1) == 0)
            {
              while (1)
              {
                sub_217752AA8();
                MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
                type metadata accessor for AnyMusicProperty();
                sub_217752C78();
                MEMORY[0x21CEA23B0](46, 0xE100000000000000);
LABEL_28:
                OUTLINED_FUNCTION_58_1("Fatal error");
                __break(1u);
              }
            }

            swift_getKeyPath("@l=e");
            OUTLINED_FUNCTION_79_1();
            sub_217351CBC(v16, v17);
          }
        }
      }
    }
  }

  return sub_2171F0738(a1, &qword_27CB2AD40, &qword_2177583F0);
}

void (*StationPropertyProvider.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  StationPropertyProvider.subscript.getter();
  return sub_2174F51DC;
}

void sub_2174F51DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    StationPropertyProvider.subscript.setter(v2 + 32, v3);
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    StationPropertyProvider.subscript.setter(v2, v3);
  }

  free(v2);
}

void StationPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B38, &unk_217770C68);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_63_15();
  v10 = type metadata accessor for StationPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28068, &qword_21776C030);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    OUTLINED_FUNCTION_64_18();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002CLL, 0x80000002177AF4B0);
    v40[0] = v6;
    type metadata accessor for PartialMusicAsyncProperty(0, *(v7 + 216), v34, v35);
    sub_217753018();
    OUTLINED_FUNCTION_78_11();
    OUTLINED_FUNCTION_62_14();
    v36 = 145;
    goto LABEL_47;
  }

  v1 = v16;
  sub_2171FF30C(v4, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v10);
    sub_2171F0738(v0, &qword_27CB28B38, &unk_217770C68);
    OUTLINED_FUNCTION_64_18();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177AF4E0);
    sub_217752C78();
    OUTLINED_FUNCTION_78_11();
    OUTLINED_FUNCTION_62_14();
    v36 = 148;
    goto LABEL_47;
  }

  __swift_storeEnumTagSinglePayload(v0, 0, 1, v10);
  sub_2174F8388(v0, v14, type metadata accessor for StationPropertyProvider);
  v17 = qword_280BE67D8;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_3_59(&qword_280BE67D8);
  }

  OUTLINED_FUNCTION_174(qword_280C020F8);
  OUTLINED_FUNCTION_55_16();

  if (v17)
  {

    v18 = *(v14 + v10[8]);
    sub_217751DE8();
    OUTLINED_FUNCTION_0_67();
    v19 = v10[8];
LABEL_11:
    if (!v18)
    {
      v18 = sub_217751DE8();
    }

    *(v2 + v19) = v18;
    goto LABEL_14;
  }

  v20 = qword_280BE6798;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_2_71(&qword_280BE6798);
  }

  OUTLINED_FUNCTION_174(qword_280C020D0);
  OUTLINED_FUNCTION_55_16();

  if (v20)
  {

    v18 = *(v14 + v10[10]);
    sub_217751DE8();
    OUTLINED_FUNCTION_0_67();
    v19 = v10[10];
    goto LABEL_11;
  }

  v21 = qword_280BE6808;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_7_44(&qword_280BE6808);
  }

  OUTLINED_FUNCTION_174(qword_280C02118);
  OUTLINED_FUNCTION_55_16();

  if (v21)
  {

    OUTLINED_FUNCTION_65_16((v14 + v10[21]));
    OUTLINED_FUNCTION_0_67();
    if (v6 == 1)
    {
      OUTLINED_FUNCTION_65_16((v2 + v10[21]));
    }

    v22 = (v2 + v10[21]);
    sub_217283940(*v22, v22[1], v22[2], v22[3]);
    *v22 = v21;
    v22[1] = v6;
    v22[2] = v15;
    v22[3] = v1;
  }

  else
  {
    v23 = qword_280BE67B8;

    if (v23 != -1)
    {
      OUTLINED_FUNCTION_6_48(&qword_280BE67B8);
    }

    OUTLINED_FUNCTION_174(qword_280C020E0);
    OUTLINED_FUNCTION_55_16();

    if (v23)
    {

      v24 = (v14 + v10[22]);
      v26 = *v24;
      v25 = v24[1];
      sub_217751DE8();
      OUTLINED_FUNCTION_0_67();
      v27 = (v2 + v10[22]);
      if (!v25)
      {
        v26 = *v27;
        v25 = sub_217751DE8();
      }

      *v27 = v26;
      v27[1] = v25;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25478, &unk_217770B70);
      swift_initStackObject();
      v28 = OUTLINED_FUNCTION_54_0();
      OUTLINED_FUNCTION_174(v28);
      OUTLINED_FUNCTION_55_16();

      v29 = qword_280BE67D0;

      if (v29 != -1)
      {
        OUTLINED_FUNCTION_5_50(&qword_280BE67D0);
      }

      OUTLINED_FUNCTION_174(qword_280C020F0);
      OUTLINED_FUNCTION_55_16();

      if (v29)
      {

        sub_21726A630(v14 + v10[24], v40, &qword_27CB24230, &unk_21775E9D0);
        OUTLINED_FUNCTION_0_67();
        if (v40[2])
        {
          memcpy(v41, v40, 0x80uLL);
        }

        else
        {
          sub_21726A630(v2 + v10[24], v41, &qword_27CB24230, &unk_21775E9D0);
          if (v40[2])
          {
            sub_2171F0738(v40, &qword_27CB24230, &unk_21775E9D0);
          }
        }

        v31 = v10[24];
        v32 = &qword_27CB24230;
        v33 = &unk_21775E9D0;
      }

      else
      {
        v30 = qword_27CB23B00;

        if (v30 != -1)
        {
          OUTLINED_FUNCTION_4_64(&qword_27CB23B00);
        }

        OUTLINED_FUNCTION_174(qword_27CB8A238);
        OUTLINED_FUNCTION_55_16();

        if ((v30 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_64_18();
            sub_217752AA8();
            MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AF510);
            v40[0] = v1;
            sub_217752C78();
            OUTLINED_FUNCTION_78_11();
            OUTLINED_FUNCTION_62_14();
            v36 = 170;
LABEL_47:
            v40[0] = v36;
            OUTLINED_FUNCTION_58_1("Fatal error");
            __break(1u);
          }
        }

        sub_21726A630(v14 + v10[25], v40, &unk_27CB28A60, &qword_217770B60);
        OUTLINED_FUNCTION_0_67();
        if (v40[11])
        {
          memcpy(v41, v40, 0x68uLL);
        }

        else
        {
          sub_21726A630(v2 + v10[25], v41, &unk_27CB28A60, &qword_217770B60);
          if (v40[11])
          {
            sub_2171F0738(v40, &unk_27CB28A60, &qword_217770B60);
          }
        }

        v31 = v10[25];
        v32 = &unk_27CB28A60;
        v33 = &qword_217770B60;
      }

      sub_21733BBDC(v41, v2 + v31, v32, v33);
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174F59AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217770B50;
  if (qword_280BE6758 != -1)
  {
    OUTLINED_FUNCTION_37_22(&qword_280BE6758);
  }

  *(v0 + 32) = qword_280C02098;
  v1 = qword_280BE6760;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_36_22(&qword_280BE6760);
  }

  *(v0 + 40) = qword_280C020A0;
  v2 = qword_280BE6818;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_34_22(&qword_280BE6818);
  }

  *(v0 + 48) = qword_280C02128;
  v3 = qword_280BE6750;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_32_24(&qword_280BE6750);
  }

  *(v0 + 56) = qword_280C02090;
  v4 = qword_280BE67D8;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_3_59(&qword_280BE67D8);
  }

  *(v0 + 64) = qword_280C020F8;
  v5 = qword_280BE6800;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_280BE6800);
  }

  *(v0 + 72) = qword_280C02110;
  v6 = qword_280BE6798;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_2_71(&qword_280BE6798);
  }

  *(v0 + 80) = qword_280C020D0;
  v7 = qword_280BE6810;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_29_27(&qword_280BE6810);
  }

  *(v0 + 88) = qword_280C02120;
  v8 = qword_280BE6768;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_28_28(&qword_280BE6768);
  }

  *(v0 + 96) = qword_280C020A8;
  v9 = qword_280BE6770;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_45_21(&qword_280BE6770);
  }

  *(v0 + 104) = qword_280C020B0;
  v10 = qword_280BE67E0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_44_18(&qword_280BE67E0);
  }

  *(v0 + 112) = qword_280C02100;
  v11 = qword_280BE6778;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_6_19(&qword_280BE6778);
  }

  *(v0 + 120) = qword_280C020B8;
  v12 = qword_280BE67F0;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_42_19(&qword_280BE67F0);
  }

  *(v0 + 128) = qword_280C02108;
  v13 = qword_280BE6790;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_41_19(&qword_280BE6790);
  }

  *(v0 + 136) = qword_280C020C8;
  v14 = qword_280BE67A8;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_40_21(&qword_280BE67A8);
  }

  *(v0 + 144) = qword_280C020D8;
  v15 = qword_280BE67C8;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_39_16(&qword_280BE67C8);
  }

  *(v0 + 152) = qword_280C020E8;
  v16 = qword_280BE6780;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_38_19(&qword_280BE6780);
  }

  *(v0 + 160) = qword_280C020C0;
  v17 = qword_280BE6808;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_7_44(&qword_280BE6808);
  }

  *(v0 + 168) = qword_280C02118;
  v18 = qword_280BE67B8;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_6_48(&qword_280BE67B8);
  }

  *(v0 + 176) = qword_280C020E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25478, &unk_217770B70);
  swift_allocObject();
  *(v0 + 184) = OUTLINED_FUNCTION_54_0();
  v19 = qword_280BE67D0;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_5_50(&qword_280BE67D0);
  }

  *(v0 + 192) = qword_280C020F0;
  v20 = qword_27CB23B00;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_4_64(&qword_27CB23B00);
  }

  *(v0 + 200) = qword_27CB8A238;
  qword_280C01FC0 = v0;
}

uint64_t StationPropertyProvider.knownProperties.getter()
{
  type metadata accessor for StationPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.identifierSet.getter()
{
  v1 = OUTLINED_FUNCTION_59_11();
  memcpy(__dst, (v0 + *(v1 + 108)), 0x161uLL);
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x161uLL);
  return sub_217269EF4(__dst, &v5);
}

void *StationPropertyProvider.identifierSet.setter()
{
  v0 = OUTLINED_FUNCTION_8_20();
  v1 = type metadata accessor for StationPropertyProvider(v0);
  v9 = OUTLINED_FUNCTION_233(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15[0]);
  memcpy(v9, v10, 0x161uLL);
  sub_217269F50(v15);
  v11 = OUTLINED_FUNCTION_232_1();
  return memcpy(v11, v12, 0x161uLL);
}

uint64_t StationPropertyProvider.identifierSet.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.type.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_59_11() + 112));
  v4 = *v2;
  v3 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v2;

  return sub_217751DE8();
}

void StationPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for StationPropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t StationPropertyProvider.type.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.href.getter()
{
  type metadata accessor for StationPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void StationPropertyProvider.href.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for StationPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t StationPropertyProvider.href.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for StationPropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for StationPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for StationPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for StationPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for StationPropertyProvider(0);

  return sub_217751DE8();
}

void static StationPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v419 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v416 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v414 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_1();
  v413 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v417 = &v411 - v15;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_1();
  v415 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v420 = &v411 - v20;
  type metadata accessor for Station._AirTime(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_45_0(v25);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = &v411 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B40, &qword_217770C78);
  OUTLINED_FUNCTION_45_0(v29);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_63_15();
  v32 = *(v31 + 56);
  OUTLINED_FUNCTION_80_3();
  sub_21726A630(v33, v34, v35, &unk_21775D480);
  v421 = v3;
  sub_21726A630(v3, v0 + v32, &qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_26_28(v0);
  if (v50)
  {
    OUTLINED_FUNCTION_26_28(v0 + v32);
    if (v50)
    {
      sub_2171F0738(v0, &qword_27CB255C0, &unk_21775D480);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  sub_21726A630(v0, v28, &qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_26_28(v0 + v32);
  if (v50)
  {
    OUTLINED_FUNCTION_23_32();
    sub_2174F83E4();
LABEL_14:
    v51 = &qword_27CB28B40;
    v52 = &qword_217770C78;
LABEL_15:
    v53 = v0;
LABEL_26:
    sub_2171F0738(v53, v51, v52);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_9_39();
  sub_2174F8388(v0 + v32, v24, v54);
  v55 = sub_2177517B8();
  if ((v55 & 1) == 0)
  {
    sub_2174F83E4();
    sub_2174F83E4();
    v51 = &qword_27CB255C0;
    v52 = &unk_21775D480;
    goto LABEL_15;
  }

  v56 = sub_2177517B8();
  sub_2174F83E4();
  sub_2174F83E4();
  sub_2171F0738(v0, &qword_27CB255C0, &unk_21775D480);
  if ((v56 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v36 = type metadata accessor for StationPropertyProvider(0);
  v37 = OUTLINED_FUNCTION_67_14();
  OUTLINED_FUNCTION_80_12(v37);
  v38 = OUTLINED_FUNCTION_68_15();
  v39 = v421;
  OUTLINED_FUNCTION_105_10(v38);
  v40 = OUTLINED_FUNCTION_19_25();
  OUTLINED_FUNCTION_80_12(v40);
  OUTLINED_FUNCTION_105_10(v440);
  OUTLINED_FUNCTION_80_12(v441);
  OUTLINED_FUNCTION_104(v441);
  if (v50)
  {
    v41 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_223_2(v41);
    v42 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_104(v42);
    if (!v50)
    {
      v70 = OUTLINED_FUNCTION_67_14();
      OUTLINED_FUNCTION_157(v70, &v434);
      v71 = OUTLINED_FUNCTION_68_15();
      v72 = &v434;
LABEL_24:
      OUTLINED_FUNCTION_157(v71, v72);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_18_32();
    memcpy(v43, v44, 0x221uLL);
    v45 = OUTLINED_FUNCTION_67_14();
    OUTLINED_FUNCTION_157(v45, v432);
    v46 = OUTLINED_FUNCTION_68_15();
    OUTLINED_FUNCTION_157(v46, v432);
    OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v47, v48, v49);
  }

  else
  {
    OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_18_32();
    memcpy(v57, v58, 0x221uLL);
    OUTLINED_FUNCTION_18_32();
    memcpy(v59, v60, 0x221uLL);
    v61 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_223_2(v61);
    v62 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_104(v62);
    if (v63)
    {
      OUTLINED_FUNCTION_18_32();
      memcpy(v64, v65, 0x221uLL);
      v66 = OUTLINED_FUNCTION_67_14();
      OUTLINED_FUNCTION_157(v66, v428);
      v67 = OUTLINED_FUNCTION_68_15();
      OUTLINED_FUNCTION_157(v67, v428);
      v68 = OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_157(v68, v428);
      v69 = v429;
LABEL_22:
      sub_217284084(v69);
LABEL_25:
      OUTLINED_FUNCTION_17_30();
      OUTLINED_FUNCTION_18_32();
      memcpy(v73, v74, 0x449uLL);
      v53 = OUTLINED_FUNCTION_17_30();
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_223_2(v429);
    v75 = OUTLINED_FUNCTION_67_14();
    OUTLINED_FUNCTION_194_4(v75, v428);
    v76 = OUTLINED_FUNCTION_68_15();
    OUTLINED_FUNCTION_194_4(v76, v428);
    v77 = OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_194_4(v77, v428);
    v78 = static Artwork.== infix(_:_:)(v432, v429);
    memcpy(v427, v429, 0x221uLL);
    sub_217284084(v427);
    memcpy(v428, v432, 0x221uLL);
    sub_217284084(v428);
    OUTLINED_FUNCTION_18_32();
    memcpy(v79, v80, 0x221uLL);
    OUTLINED_FUNCTION_149_0();
    sub_2171F0738(v81, v82, v83);
    if ((v78 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v84 = v36[6];
  v85 = *(v5 + v84);
  v86 = *(v39 + v84);
  if (v85 == 2)
  {
    if (v86 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v86 == 2 || ((v86 ^ v85) & 1) != 0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_99_11();
  if (v90)
  {
    if (!v87)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v88 != *v89)
    {
      LOBYTE(v87) = 1;
    }

    if (v87)
    {
      goto LABEL_27;
    }
  }

  v91 = v36[8];
  v92 = *(v39 + v91);
  if (*(v5 + v91))
  {
    if (!v92)
    {
      goto LABEL_27;
    }

    sub_217751DE8();
    sub_217262A00();
    v94 = v93;

    if ((v94 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v92)
  {
    goto LABEL_27;
  }

  v95 = (v5 + v36[9]);
  v96 = v95[1];
  v430[2] = v95[2];
  v97 = v95[2];
  v430[3] = v95[3];
  v98 = v95[1];
  v430[0] = *v95;
  v430[1] = v98;
  v99 = (v39 + v36[9]);
  v100 = v99[2];
  v431[3] = v99[3];
  v101 = v99[1];
  v431[2] = v99[2];
  v102 = v99[1];
  v431[0] = *v99;
  v431[1] = v102;
  v428[0] = v96;
  v428[1] = v97;
  v428[2] = v95[3];
  v103 = v430[0];
  v105 = *(&v431[0] + 1);
  v104 = *&v431[0];
  v427[0] = v101;
  v427[1] = v100;
  v427[2] = v99[3];
  if (*(&v430[0] + 1) == 1)
  {
    if (*(&v431[0] + 1) == 1)
    {
      *&v438 = *&v430[0];
      *(&v438 + 1) = 1;
      v106 = v95[2];
      v439[0] = v95[1];
      v439[1] = v106;
      OUTLINED_FUNCTION_87_13();
      *(v107 + 255) = v108;
      OUTLINED_FUNCTION_25_35(v430);
      OUTLINED_FUNCTION_25_35(v431);
      OUTLINED_FUNCTION_19_25();
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v109, v110, v111);
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_18_32();
    sub_21726A630(v123, v124, &qword_27CB24B70, &unk_217759460);
    OUTLINED_FUNCTION_18_32();
    sub_21726A630(v125, v126, &qword_27CB24B70, &unk_217759460);
LABEL_51:
    v438 = v103;
    v439[0] = v428[0];
    v439[1] = v428[1];
    OUTLINED_FUNCTION_87_13();
    *(v127 + 255) = v128;
    *&v439[3] = v104;
    *(&v439[3] + 1) = v105;
    v439[4] = v427[0];
    v439[5] = v427[1];
    v439[6] = v427[2];
    goto LABEL_52;
  }

  v438 = v430[0];
  v112 = v95[2];
  v439[0] = v95[1];
  v439[1] = v112;
  OUTLINED_FUNCTION_87_13();
  *(v114 + 255) = v115;
  v433[0] = v438;
  v433[1] = v116;
  v433[2] = v117;
  v433[3] = v115;
  if (v105 == 1)
  {
    v434 = v438;
    v435 = v439[0];
    OUTLINED_FUNCTION_87_13();
    v119 = *(v118 + 255);
    v436 = v120;
    v437 = v119;
    OUTLINED_FUNCTION_75_12(v430);
    OUTLINED_FUNCTION_75_12(v431);
    v121 = OUTLINED_FUNCTION_19_25();
    OUTLINED_FUNCTION_75_12(v121);
    v122 = OUTLINED_FUNCTION_35_20();
    sub_217351248(v122);
    goto LABEL_51;
  }

  v129 = v113[2];
  v435 = v113[1];
  v436 = v129;
  v437 = v113[3];
  v434 = __PAIR128__(v105, v104);
  v130 = OUTLINED_FUNCTION_17_30();
  v131 = static EditorialNotes.== infix(_:_:)(v130, &v434);
  v429[0] = v434;
  v429[1] = v435;
  v429[2] = v436;
  v429[3] = v437;
  OUTLINED_FUNCTION_76_11(v430);
  OUTLINED_FUNCTION_76_11(v431);
  v132 = OUTLINED_FUNCTION_19_25();
  OUTLINED_FUNCTION_76_11(v132);
  sub_217351248(v429);
  v432[0] = v433[0];
  v432[1] = v433[1];
  v432[2] = v433[2];
  v432[3] = v433[3];
  sub_217351248(v432);
  v434 = v103;
  v435 = v428[0];
  v436 = v428[1];
  v437 = v428[2];
  v133 = OUTLINED_FUNCTION_35_20();
  sub_2171F0738(v133, &qword_27CB24B70, &unk_217759460);
  if ((v131 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_54:
  v134 = v36[10];
  v135 = *(v39 + v134);
  if (*(v5 + v134))
  {
    if (!v135)
    {
      goto LABEL_27;
    }

    sub_217751DE8();
    sub_217262CB4();
    v137 = v136;

    if ((v137 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v135)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_99_11();
  if (v141)
  {
    if (!v138)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v139 != *v140)
    {
      LOBYTE(v138) = 1;
    }

    if (v138)
    {
      goto LABEL_27;
    }
  }

  v142 = v36[12];
  v143 = *(v5 + v142);
  v144 = *(v39 + v142);
  if (v143 == 2)
  {
    if (v144 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v144 == 2 || ((v144 ^ v143) & 1) != 0)
  {
    goto LABEL_27;
  }

  v145 = v36[13];
  v146 = *(v5 + v145);
  v147 = *(v39 + v145);
  if (v146 == 14)
  {
    if (v147 != 14)
    {
      goto LABEL_27;
    }
  }

  else
  {
    LOBYTE(v438) = v146;
    if (v147 == 14)
    {
      goto LABEL_27;
    }

    LOBYTE(v433[0]) = v147;
    v148 = OUTLINED_FUNCTION_15_37();
    if (!static Station._Kind.== infix(_:_:)(v148, v149))
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_80_12(v429);
  v412 = v36;
  OUTLINED_FUNCTION_105_10(v432);
  v150 = OUTLINED_FUNCTION_19_25();
  OUTLINED_FUNCTION_80_12(v150);
  OUTLINED_FUNCTION_105_10(v440);
  v151 = OUTLINED_FUNCTION_35_20();
  OUTLINED_FUNCTION_80_12(v151);
  v152 = OUTLINED_FUNCTION_35_20();
  OUTLINED_FUNCTION_104(v152);
  if (v50)
  {
    v153 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_223_2(v153);
    v154 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_104(v154);
    if (v50)
    {
      OUTLINED_FUNCTION_18_32();
      memcpy(v155, v156, 0x221uLL);
      OUTLINED_FUNCTION_49_20();
      sub_21726A630(v157, v158, v159, &unk_21775E9A0);
      OUTLINED_FUNCTION_49_20();
      sub_21726A630(v160, v161, v162, &unk_21775E9A0);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v163, v164, v165);
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_157(v429, v428);
    v71 = v432;
    v72 = v428;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_18_32();
  memcpy(v166, v167, 0x221uLL);
  OUTLINED_FUNCTION_18_32();
  memcpy(v168, v169, 0x221uLL);
  v170 = OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_223_2(v170);
  v171 = OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_104(v171);
  if (v172)
  {
    OUTLINED_FUNCTION_18_32();
    memcpy(v173, v174, 0x221uLL);
    OUTLINED_FUNCTION_157(v429, v423);
    OUTLINED_FUNCTION_157(v432, v423);
    OUTLINED_FUNCTION_157(v428, v423);
    v69 = v424;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_223_2(v424);
  OUTLINED_FUNCTION_194_4(v429, v423);
  OUTLINED_FUNCTION_194_4(v432, v423);
  OUTLINED_FUNCTION_194_4(v428, v423);
  v175 = static Artwork.== infix(_:_:)(v427, v424);
  memcpy(v422, v424, 0x221uLL);
  sub_217284084(v422);
  memcpy(v423, v427, 0x221uLL);
  sub_217284084(v423);
  OUTLINED_FUNCTION_18_32();
  memcpy(v176, v177, 0x221uLL);
  OUTLINED_FUNCTION_149_0();
  sub_2171F0738(v178, v179, v180);
  if ((v175 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_84:
  OUTLINED_FUNCTION_8_44();
  if (v183)
  {
    if (!v181)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_59_0(v182);
    v186 = v50 && v184 == v185;
    if (!v186 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v181)
  {
    goto LABEL_27;
  }

  v187 = v5 + v412[16];
  memcpy(v425, v187, sizeof(v425));
  v188 = v421 + v412[16];
  memcpy(v426, v188, sizeof(v426));
  v189 = *v425;
  v190 = *&v425[8];
  memcpy(v423, (v187 + 16), 0x68uLL);
  v191 = v426[0];
  v192 = v426[1];
  memcpy(v422, (v188 + 16), 0x68uLL);
  if (!*&v425[8])
  {
    if (!v426[1])
    {
      v438 = *v425;
      OUTLINED_FUNCTION_79_13(&v438);
      OUTLINED_FUNCTION_25_35(v425);
      OUTLINED_FUNCTION_25_35(v426);
      OUTLINED_FUNCTION_19_25();
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v225, v226, v227);
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_18_32();
    sub_21726A630(v210, v211, &qword_27CB244D0, &unk_21775D620);
    OUTLINED_FUNCTION_18_32();
    sub_21726A630(v212, v213, &qword_27CB244D0, &unk_21775D620);
LABEL_100:
    *&v438 = v189;
    *(&v438 + 1) = v190;
    memcpy(v439, v423, 0x68uLL);
    *(&v439[6] + 1) = v191;
    *&v439[7] = v192;
    memcpy(&v439[7] + 8, v422, 0x68uLL);
    goto LABEL_52;
  }

  v438 = *v425;
  OUTLINED_FUNCTION_79_13(&v438);
  OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_18_32();
  memcpy(v193, v194, 0x78uLL);
  if (!v192)
  {
    OUTLINED_FUNCTION_18_32();
    memcpy(v214, v215, 0x78uLL);
    OUTLINED_FUNCTION_49_20();
    sub_21726A630(v216, v217, v218, &unk_21775D620);
    OUTLINED_FUNCTION_49_20();
    sub_21726A630(v219, v220, v221, &unk_21775D620);
    OUTLINED_FUNCTION_19_25();
    OUTLINED_FUNCTION_49_20();
    sub_21726A630(v222, v223, v224, &unk_21775D620);
    sub_2172848C0(v428);
    goto LABEL_100;
  }

  memcpy(&v428[1], (v188 + 16), 0x68uLL);
  *&v428[0] = v191;
  *(&v428[0] + 1) = v192;
  OUTLINED_FUNCTION_49_20();
  sub_21726A630(v195, v196, v197, &unk_21775D620);
  OUTLINED_FUNCTION_49_20();
  sub_21726A630(v198, v199, v200, &unk_21775D620);
  OUTLINED_FUNCTION_19_25();
  OUTLINED_FUNCTION_49_20();
  sub_21726A630(v201, v202, v203, &unk_21775D620);
  v204 = OUTLINED_FUNCTION_17_30();
  static PlayParameters.== infix(_:_:)(v204, v428);
  v206 = v205;
  memcpy(v424, v428, 0x78uLL);
  sub_2172848C0(v424);
  memcpy(v427, v433, 0x78uLL);
  sub_2172848C0(v427);
  *&v428[0] = v189;
  *(&v428[0] + 1) = v190;
  memcpy(&v428[1], v423, 0x68uLL);
  OUTLINED_FUNCTION_149_0();
  sub_2171F0738(v207, v208, v209);
  if ((v206 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_102:
  OUTLINED_FUNCTION_8_44();
  if (v230)
  {
    if (!v228)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_59_0(v229);
    v233 = v50 && v231 == v232;
    if (!v233 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v228)
  {
    goto LABEL_27;
  }

  v234 = v412[18];
  v235 = *(v418 + 48);
  v236 = v420;
  OUTLINED_FUNCTION_157(v5 + v234, v420);
  OUTLINED_FUNCTION_157(v421 + v234, v236 + v235);
  OUTLINED_FUNCTION_27_29(v236);
  if (v50)
  {
    if (__swift_getEnumTagSinglePayload(v420 + v235, 1, v419) == 1)
    {
      sub_2171F0738(v420, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_120;
    }

LABEL_118:
    v51 = &qword_27CB24840;
    v52 = &unk_217758DD0;
    v53 = v420;
    goto LABEL_26;
  }

  v237 = v420;
  sub_21726A630(v420, v417, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_27_29(v237 + v235);
  if (v238)
  {
    (*(v416 + 8))(v417, v419);
    goto LABEL_118;
  }

  v239 = v416;
  v240 = v419;
  v241 = v420;
  v242 = v414;
  (*(v416 + 32))(v414, v420 + v235, v419);
  OUTLINED_FUNCTION_1_64();
  sub_2174F8480(v243, v244, MEMORY[0x277CC9278]);
  v245 = v417;
  v246 = OUTLINED_FUNCTION_101_7();
  v247 = *(v239 + 8);
  v247(v242, v240);
  v247(v245, v240);
  sub_2171F0738(v241, &unk_27CB277C0, &qword_217758DC0);
  if ((v246 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_120:
  OUTLINED_FUNCTION_8_44();
  if (v250)
  {
    if (!v248)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_59_0(v249);
    v253 = v50 && v251 == v252;
    if (!v253 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v248)
  {
    goto LABEL_27;
  }

  v254 = v412[20];
  v255 = *(v418 + 48);
  v256 = v415;
  OUTLINED_FUNCTION_157(v5 + v254, v415);
  OUTLINED_FUNCTION_157(v421 + v254, v256 + v255);
  OUTLINED_FUNCTION_27_29(v256);
  if (v50)
  {
    OUTLINED_FUNCTION_27_29(v415 + v255);
    if (v50)
    {
      sub_2171F0738(v415, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_139;
    }

LABEL_137:
    v51 = &qword_27CB24840;
    v52 = &unk_217758DD0;
    v53 = v415;
    goto LABEL_26;
  }

  v257 = v415;
  sub_21726A630(v415, v413, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_27_29(v257 + v255);
  if (v258)
  {
    (*(v416 + 8))(v413, v419);
    goto LABEL_137;
  }

  v260 = v415;
  v259 = v416;
  v261 = v415 + v255;
  v262 = v414;
  v263 = v419;
  (*(v416 + 32))(v414, v261, v419);
  OUTLINED_FUNCTION_1_64();
  sub_2174F8480(v264, v265, MEMORY[0x277CC9278]);
  v266 = v413;
  v267 = OUTLINED_FUNCTION_101_7();
  v268 = *(v259 + 8);
  v268(v262, v263);
  v268(v266, v263);
  sub_2171F0738(v260, &unk_27CB277C0, &qword_217758DC0);
  if ((v267 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_139:
  v269 = v412[21];
  v270 = *(v5 + v269);
  v271 = *(v5 + v269 + 8);
  v273 = *(v5 + v269 + 16);
  v272 = *(v5 + v269 + 24);
  v274 = (v421 + v269);
  v276 = *v274;
  v275 = v274[1];
  v278 = v274[2];
  v277 = v274[3];
  if (v271 == 1)
  {
    v279 = OUTLINED_FUNCTION_83_12();
    sub_2172838F8(v279, v280, v281, v282);
    if (v275 == 1)
    {
      OUTLINED_FUNCTION_100_11();
      v283 = OUTLINED_FUNCTION_83_12();
      sub_217283940(v283, v284, v285, v286);
      goto LABEL_147;
    }

    v295 = OUTLINED_FUNCTION_30_26();
    sub_2172838F8(v295, v296, v297, v298);
LABEL_145:
    v299 = OUTLINED_FUNCTION_3_7();
    sub_217283940(v299, v300, v301, v302);
    v303 = OUTLINED_FUNCTION_30_26();
    sub_217283940(v303, v304, v305, v306);
    goto LABEL_27;
  }

  *&v438 = v270;
  *(&v438 + 1) = v271;
  *&v439[0] = v273;
  *(&v439[0] + 1) = v272;
  if (v275 == 1)
  {
    v287 = OUTLINED_FUNCTION_3_7();
    sub_2172838F8(v287, v288, v289, v290);
    OUTLINED_FUNCTION_100_11();
    v291 = OUTLINED_FUNCTION_3_7();
    sub_2172838F8(v291, v292, v293, v294);

    goto LABEL_145;
  }

  *&v433[0] = v276;
  *(&v433[0] + 1) = v275;
  *&v433[1] = v278;
  *(&v433[1] + 1) = v277;
  v307 = OUTLINED_FUNCTION_15_37();
  LODWORD(v420) = static CloudPivotMetadata.== infix(_:_:)(v307, v308);
  v418 = *(&v433[0] + 1);
  v419 = *(&v433[1] + 1);
  v309 = OUTLINED_FUNCTION_3_7();
  sub_2172838F8(v309, v310, v311, v312);
  v313 = OUTLINED_FUNCTION_30_26();
  sub_2172838F8(v313, v314, v315, v316);
  v317 = OUTLINED_FUNCTION_3_7();
  sub_2172838F8(v317, v318, v319, v320);

  v321 = OUTLINED_FUNCTION_3_7();
  sub_217283940(v321, v322, v323, v324);
  if ((v420 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_147:
  OUTLINED_FUNCTION_8_44();
  if (v327)
  {
    if (!v325)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_59_0(v326);
    v330 = v50 && v328 == v329;
    if (!v330 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v325)
  {
    goto LABEL_27;
  }

  v331 = v412[23];
  v332 = *(v421 + v331);
  if (*(v5 + v331))
  {
    if (!v332)
    {
      goto LABEL_27;
    }

    sub_217751DE8();
    sub_21726F358();
    v334 = v333;

    if ((v334 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v332)
  {
    goto LABEL_27;
  }

  v335 = v412[24];
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_157(v336, v337);
  OUTLINED_FUNCTION_157(v421 + v335, &v439[7]);
  if (!*&v439[0])
  {
    if (!*&v439[8])
    {
      v348 = OUTLINED_FUNCTION_19_25();
      sub_2171F0738(v348, v349, v350);
      goto LABEL_167;
    }

LABEL_52:
    v53 = OUTLINED_FUNCTION_19_25();
    goto LABEL_26;
  }

  v338 = OUTLINED_FUNCTION_15_37();
  sub_21726A630(v338, v339, v340, v341);
  if (!*&v439[8])
  {
    v364 = OUTLINED_FUNCTION_17_30();
    sub_2171F0738(v364, v365, v366);
    goto LABEL_52;
  }

  memcpy(v428, &v439[7], 0x80uLL);
  v342 = OUTLINED_FUNCTION_17_30();
  v343 = sub_2172DE0D0(v342, v428);
  OUTLINED_FUNCTION_110_8(v428);
  v344 = OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_110_8(v344);
  v345 = OUTLINED_FUNCTION_19_25();
  sub_2171F0738(v345, v346, v347);
  if ((v343 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_167:
  v351 = v412[25];
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_157(v352, v353);
  OUTLINED_FUNCTION_157(v421 + v351, &v439[5] + 8);
  if (!*(&v439[4] + 1))
  {
    if (!*&v439[11])
    {
      v367 = OUTLINED_FUNCTION_19_25();
      sub_2171F0738(v367, v368, v369);
      goto LABEL_175;
    }

    goto LABEL_52;
  }

  v354 = OUTLINED_FUNCTION_15_37();
  sub_21726A630(v354, v355, v356, v357);
  if (!*&v439[11])
  {
    v397 = OUTLINED_FUNCTION_17_30();
    sub_2171F0738(v397, v398, v399);
    goto LABEL_52;
  }

  memcpy(v428, &v439[5] + 8, 0x68uLL);
  v358 = OUTLINED_FUNCTION_17_30();
  v359 = sub_21733E778(v358, v428);
  OUTLINED_FUNCTION_110_8(v428);
  v360 = OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_110_8(v360);
  v361 = OUTLINED_FUNCTION_19_25();
  sub_2171F0738(v361, v362, v363);
  if ((v359 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_175:
  v370 = OUTLINED_FUNCTION_22_32(v412[26]);
  sub_217270140(v370, v371, v372, v373, v374, v375, v376, v377, v411, v412, v413, v414);
  if (v378)
  {
    v379 = v412[27];
    memcpy(v427, (v5 + v379), 0x161uLL);
    memcpy(v424, (v5 + v379), 0x161uLL);
    v380 = v412[27];
    memcpy(v428, (v421 + v380), 0x161uLL);
    memcpy(v423, (v421 + v380), 0x161uLL);
    sub_217269EF4(v427, v422);
    sub_217269EF4(v428, v422);
    static MusicIdentifierSet.== infix(_:_:)();
    LOBYTE(v380) = v381;
    v382 = OUTLINED_FUNCTION_17_30();
    memcpy(v382, v423, 0x161uLL);
    v383 = OUTLINED_FUNCTION_17_30();
    sub_217269F50(v383);
    v384 = OUTLINED_FUNCTION_19_25();
    memcpy(v384, v424, 0x161uLL);
    v385 = OUTLINED_FUNCTION_19_25();
    sub_217269F50(v385);
    if (v380)
    {
      v386 = v412[28];
      v387 = *(v5 + v386);
      v388 = *(v5 + v386 + 8);
      v389 = (v421 + v386);
      v390 = v387 == *v389 && v388 == v389[1];
      if (v390 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_8_44();
        if (!v393)
        {
          if (v391)
          {
            goto LABEL_27;
          }

          goto LABEL_193;
        }

        if (v391)
        {
          OUTLINED_FUNCTION_59_0(v392);
          v396 = v50 && v394 == v395;
          if (v396 || (sub_217753058() & 1) != 0)
          {
LABEL_193:
            v400 = OUTLINED_FUNCTION_22_32(v412[30]);
            sub_217261FB0(v400, v401);
            if (v402)
            {
              v403 = OUTLINED_FUNCTION_22_32(v412[31]);
              sub_217261FB0(v403, v404);
              if (v405)
              {
                v406 = OUTLINED_FUNCTION_22_32(v412[32]);
                sub_217261FB0(v406, v407);
                if (v408)
                {
                  v409 = OUTLINED_FUNCTION_22_32(v412[33]);
                  sub_217261FB0(v409, v410);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_13();
}

void StationPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  OUTLINED_FUNCTION_168_0();
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v65 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v64 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  v63 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = type metadata accessor for Station._AirTime(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_45_0(v20);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_63_15();
  sub_21726A630(v0, v0, &qword_27CB255C0, &unk_21775D480);
  if (__swift_getEnumTagSinglePayload(v0, 1, v15) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_9_39();
    sub_2174F8388(v0, v19, v22);
    OUTLINED_FUNCTION_119();
    sub_2177517D8();
    sub_2174F8480(&qword_27CB25C68, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_217751EB8();
    OUTLINED_FUNCTION_95_6();
    sub_217751EB8();
    OUTLINED_FUNCTION_23_32();
    sub_2174F83E4();
  }

  v23 = type metadata accessor for StationPropertyProvider(0);
  OUTLINED_FUNCTION_258(v72);
  OUTLINED_FUNCTION_258(v73);
  OUTLINED_FUNCTION_104(v73);
  if (v24)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v69, v72, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v70, v72, 0x221uLL);
    sub_217284028(v70, v71);
    Artwork.hash(into:)(v1);
    memcpy(v71, v69, 0x221uLL);
    sub_217284084(v71);
  }

  v25 = *(v0 + v23[6]);
  if (v25 == 2)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v25 & 1);
  }

  if (*(v0 + v23[7] + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_99_2();
    if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    MEMORY[0x21CEA3580](v26);
  }

  if (*(v0 + v23[8]))
  {
    OUTLINED_FUNCTION_119();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v27 = (v0 + v23[9]);
  v28 = v27[1];
  *&v73[552] = *v27;
  v74 = v28;
  v29 = v27[3];
  v75 = v27[2];
  v76 = v29;
  sub_217265238();
  if (*(v0 + v23[10]))
  {
    OUTLINED_FUNCTION_119();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v23[11] + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_99_2();
    MEMORY[0x21CEA3550](v25);
  }

  if (*(v0 + v23[12]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + v23[13]) == 14)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v71[0] = *(v0 + v23[13]);
    OUTLINED_FUNCTION_119();
    Station._Kind.hash(into:)(v1);
  }

  OUTLINED_FUNCTION_258(v70);
  OUTLINED_FUNCTION_258(v71);
  OUTLINED_FUNCTION_104(v71);
  if (v24)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v67, v70, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v68, v70, 0x221uLL);
    sub_217284028(v68, v69);
    Artwork.hash(into:)(v1);
    memcpy(v69, v67, 0x221uLL);
    sub_217284084(v69);
  }

  if (*(v0 + v23[15] + 8))
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v30 = (v0 + v23[16]);
  v31 = *v30;
  v32 = v30[1];
  memcpy(v66, v30 + 2, sizeof(v66));
  if (v32)
  {
    OUTLINED_FUNCTION_79_13(v67);
    v67[0] = v31;
    v67[1] = v32;
    OUTLINED_FUNCTION_119();
    v68[0] = v31;
    v68[1] = v32;
    memcpy(&v68[2], v66, 0x68uLL);
    sub_2172DF5A4(v68, v69);
    PlayParameters.hash(into:)(v1);
    memcpy(v69, v67, 0x78uLL);
    sub_2172848C0(v69);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v2 + v23[17] + 8))
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v2 + v23[18], v14, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_26_28(v14);
  if (v24)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v33 = OUTLINED_FUNCTION_94_9();
    v34(v33, v14, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_64();
    v37 = sub_2174F8480(v35, v36, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_102_10(v37);
    (*(v31 + 8))(v32, v3);
  }

  if (*(v2 + v23[19] + 8))
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v38 = v63;
  sub_21726A630(v2 + v23[20], v63, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_26_28(v38);
  if (v24)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_149_0();
    v39();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_64();
    v42 = sub_2174F8480(v40, v41, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_102_10(v42);
    (*(v31 + 8))(v32, v3);
  }

  v43 = v2 + v23[21];
  v44 = *(v43 + 8);
  if (v44 != 1)
  {
    v45 = *(v43 + 24);
    OUTLINED_FUNCTION_119();
    if (v44)
    {
      OUTLINED_FUNCTION_119();
      sub_217751FF8();
      if (v45)
      {
LABEL_54:
        OUTLINED_FUNCTION_119();
        sub_217751FF8();
        goto LABEL_57;
      }
    }

    else
    {
      OUTLINED_FUNCTION_120();
      if (v45)
      {
        goto LABEL_54;
      }
    }
  }

  OUTLINED_FUNCTION_120();
LABEL_57:
  if (*(v2 + v23[22] + 8))
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v46 = *(v2 + v23[23]);
  if (v46)
  {
    OUTLINED_FUNCTION_119();
    sub_21727DDE0(v1, v46, v47, v48, v49, v50, v51);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v2 + v23[24], v69, &qword_27CB24230, &unk_21775E9D0);
  if (v69[2])
  {
    memcpy(v68, v69, 0x80uLL);
    OUTLINED_FUNCTION_119();
    sub_2172DE694(v1);
    sub_2171F0738(v68, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v2 + v23[25], v68, &unk_27CB28A60, &qword_217770B60);
  if (v68[11])
  {
    memcpy(v69, v68, 0x68uLL);
    OUTLINED_FUNCTION_119();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v69, &qword_27CB240D0, &unk_21775D400);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v52 = OUTLINED_FUNCTION_201();
  sub_217281970(v52, v53);
  memcpy(v69, (v2 + v23[27]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v1);
  sub_217751FF8();
  if (*(v2 + v23[29] + 8))
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v54 = OUTLINED_FUNCTION_201();
  sub_217265A08(v54, v55);
  v56 = OUTLINED_FUNCTION_201();
  sub_217265A08(v56, v57);
  v58 = OUTLINED_FUNCTION_201();
  sub_217265A08(v58, v59);
  v60 = OUTLINED_FUNCTION_201();
  sub_217265A08(v60, v61);
  OUTLINED_FUNCTION_13();
}

uint64_t StationPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  StationPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_2174F828C(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  StationPropertyProvider.subscript.getter();
  return sub_2174F51DC;
}

uint64_t sub_2174F8304(uint64_t a1)
{
  sub_2177531E8();
  StationPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2174F8388(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

uint64_t sub_2174F83E4()
{
  v1 = OUTLINED_FUNCTION_8_20();
  v2(v1);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2174F8480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2174F84F0(uint64_t a1)
{
  sub_2174F8904(319, qword_280BE2740, type metadata accessor for Station._AirTime, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7698, &type metadata for Artwork);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE7E08, &type metadata for ContentRating);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2172E2E58(319, &qword_280BE7538, MEMORY[0x277D839F8]);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_2172E2E58(319, &qword_280BE7DE8, &type metadata for EditorialNotes);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
      if (v11 > 0x3F)
      {
        return v6;
      }

      sub_2172E2E58(319, &qword_280BE7528, MEMORY[0x277D83B88]);
      if (v12 > 0x3F)
      {
        return v6;
      }

      sub_2172E2E58(319, &qword_280BE7540, MEMORY[0x277D839B0]);
      if (v13 > 0x3F)
      {
        return v6;
      }

      sub_2172E2E58(319, &qword_280BE2780, &type metadata for Station._Kind);
      if (v14 > 0x3F)
      {
        return v6;
      }

      sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
      v2 = v15;
      if (v16 > 0x3F)
      {
        return v2;
      }

      sub_2172E2E58(319, &qword_280BE7DD0, &type metadata for PlayParameters);
      if (v17 > 0x3F)
      {
        return v6;
      }

      sub_2174F8904(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v18 > 0x3F)
      {
        return v6;
      }

      sub_2172E2E58(319, qword_280BE7C10, &type metadata for CloudPivotMetadata);
      if (v19 > 0x3F)
      {
        return v6;
      }

      sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
      if (v20 > 0x3F)
      {
        return v6;
      }

      sub_217351B44(319, &qword_280BE7AB8, &qword_27CB24238, &unk_21775EA00);
      if (v21 > 0x3F)
      {
        return v6;
      }

      sub_217351B44(319, &qword_280BE7FA8, &qword_27CB240D0, &unk_21775D400);
      if (v22 > 0x3F)
      {
        return v6;
      }

      sub_2174F8904(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
      if (v23 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_217351BFC();
        v2 = v24;
        if (v25 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_2174F8904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_29_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_59_11()
{

  return type metadata accessor for StationPropertyProvider(0);
}

void OUTLINED_FUNCTION_65_16(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];

  sub_2172838F8(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_76_11(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 3792, v2, v3);
}

void OUTLINED_FUNCTION_78_11()
{

  JUMPOUT(0x21CEA23B0);
}

void *OUTLINED_FUNCTION_79_13@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 16), 0x68uLL);
}

double OUTLINED_FUNCTION_86_10()
{
  result = 0.0;
  *(v0 + 1664) = 0u;
  *(v0 + 1680) = 0u;
  return result;
}

void OUTLINED_FUNCTION_100_11()
{

  sub_2172838F8(v2, 1, v1, v0);
}

uint64_t OUTLINED_FUNCTION_102_10(uint64_t a1)
{

  return sub_217751EB8();
}

void *OUTLINED_FUNCTION_105_10(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x221uLL);
}

uint64_t OUTLINED_FUNCTION_110_8(uint64_t a1)
{

  return sub_2171F0738(a1, v1, v2);
}

void *OUTLINED_FUNCTION_111_10(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x221uLL);
}

uint64_t *static LibrarySortDescriptorResolver.resolving<A>(keyPath:propertyKey:relatedType:relatedPropertyKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v28 = a7;
  v25 = a6;
  v26 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  OUTLINED_FUNCTION_2_72();
  v16 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - v20;
  type metadata accessor for LibrarySortDescriptorResolver(0, v8, *(v7 + 104), v22);
  (*(v18 + 16))(v21, v26, v16);
  (*(v12 + 16))(v15, v27, AssociatedTypeWitness);

  return sub_2174F9470(v23, v21, a5, v15, a5, v25, v28);
}

void *static LibrarySortDescriptorResolver.resolving<>(keyPath:propertyKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  type metadata accessor for LibrarySortDescriptorResolver(0, v7, *(v3 + 104), v14);
  (*(v10 + 16))(v13, a2, AssociatedTypeWitness);

  return sub_2174F92E4(v7, a1, v13, v7, a3);
}

void *static LibrarySortDescriptorResolver.resolving(keyPath:rawPropertyKeys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LibrarySortDescriptorResolver(0, *(v4 + 96), *(v4 + 104), a4);
  v7 = sub_2174F99E0(a1, a2);

  sub_217751DE8();
  return v7;
}

uint64_t *static LibrarySortDescriptorResolver.resolving<A, B>(keyPath:propertyKey:relatedType:relatedPropertyKey:nestedRelatedType:nestedRelatedPropertyKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a1;
  v42 = a8;
  v37 = a2;
  v38 = a4;
  v33 = a9;
  v34 = a10;
  v35 = a7;
  v39 = a11;
  v40 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v20 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  OUTLINED_FUNCTION_2_72();
  v24 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v26 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  v29 = &v33 - v28;
  type metadata accessor for LibrarySortDescriptorResolver(0, v12, *(v11 + 104), v30);
  (*(v26 + 16))(v29, v37, v24);
  (*(v20 + 16))(v23, v38, v18);
  (*(v14 + 16))(v17, v40, AssociatedTypeWitness);

  return sub_2174F96C8(v31, v29, v35, v23, v42, v17, v35, v42, v33, v34, v39);
}

void sub_2174F9208()
{
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000066, 0x80000002177AF570);
  type metadata accessor for AnyMusicSortDescriptorResolver();
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  sub_217752D08();
  __break(1u);
}

void *sub_2174F9350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v6[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2177586E0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_2177521E8();

  (*(*(AssociatedTypeWitness - 8) + 8))(a3, AssociatedTypeWitness);
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = v8;
  return v6;
}

uint64_t *sub_2174F94F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_217759200;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_2177521E8();
  v11 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2177521E8();

  (*(*(v11 - 8) + 8))(a4, v11);
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v7[4] = 0;
  v7[5] = 0;
  v7[3] = v9;
  return v7;
}

uint64_t *sub_2174F977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2177643C0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_2177521E8();
  v14 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2177521E8();
  v15 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2177521E8();

  (*(*(v15 - 8) + 8))(a6, v15);
  (*(*(v14 - 8) + 8))(a4, v14);
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v11[4] = 0;
  v11[5] = 0;
  v11[3] = v12;
  return v11;
}

void *sub_2174F99E0(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  return result;
}

id sub_2174F9A24(void *a1, char a2)
{
  result = a1[2];
  if (result)
  {
    if (result == 1)
    {
      v6 = a1[4];
      v5 = a1[5];
      sub_2174F9BE0();
      sub_217751DE8();
      return sub_2174715A0(v6, v5, a2 & 1);
    }

    else
    {
      sub_2174F9BE0();
      v7 = sub_217751DE8();
      return sub_217471618(v7, a2 & 1);
    }
  }

  return result;
}

uint64_t sub_2174F9B00()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_2171FF138(v1, v2);
}

uint64_t LibrarySortDescriptorResolver.deinit()
{

  sub_2171FF138(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t LibrarySortDescriptorResolver.__deallocating_deinit()
{
  LibrarySortDescriptorResolver.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_2174F9BE0()
{
  result = qword_280BE8400;
  if (!qword_280BE8400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE8400);
  }

  return result;
}

uint64_t sub_2174F9C24()
{
  if (qword_280BE4788 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4790);

  return sub_217751DE8();
}

uint64_t sub_2174F9C90()
{
  if (qword_280BE52E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE52F0);

  return sub_217751DE8();
}

uint64_t sub_2174F9CFC()
{
  if (qword_280BE24E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE24F0);

  return sub_217751DE8();
}

uint64_t sub_2174F9D68()
{
  if (qword_280BE6EC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE6ED0);

  return sub_217751DE8();
}

uint64_t sub_2174F9DD4()
{
  if (qword_280BE5740 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE5748);

  return sub_217751DE8();
}

uint64_t sub_2174F9E40()
{
  v10 = MEMORY[0x277D84F90];
  if (qword_280BE6EA0 != -1)
  {
    swift_once();
  }

  v0 = sub_217751DE8();
  sub_21754365C(v0);
  if (qword_280BE6EC8 != -1)
  {
    swift_once();
  }

  v2 = qword_280BE6ED0;
  v1 = *algn_280BE6ED8;
  v3 = byte_280BE6EE0;
  v4 = v10;
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2172B199C();
    v4 = v8;
  }

  v5 = *(v4 + 16);
  if (v5 >= *(v4 + 24) >> 1)
  {
    sub_2172B199C();
    v4 = v9;
  }

  *(v4 + 16) = v5 + 1;
  v6 = v4 + 24 * v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v6 + 48) = v3;
  return v4;
}

uint64_t sub_2174F9F84()
{
  v10 = MEMORY[0x277D84F90];
  if (qword_280BE7620 != -1)
  {
    swift_once();
  }

  v0 = sub_217751DE8();
  sub_21754365C(v0);
  if (qword_280BE24E8 != -1)
  {
    swift_once();
  }

  v2 = qword_280BE24F0;
  v1 = *algn_280BE24F8;
  v3 = byte_280BE2500;
  v4 = v10;
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2172B199C();
    v4 = v8;
  }

  v5 = *(v4 + 16);
  if (v5 >= *(v4 + 24) >> 1)
  {
    sub_2172B199C();
    v4 = v9;
  }

  *(v4 + 16) = v5 + 1;
  v6 = v4 + 24 * v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v6 + 48) = v3;
  return v4;
}

uint64_t UncheckedSendableWeakWrapper.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2174FA118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for UncheckedSendableWeakWrapper(0, *(a2 + a3 - 8), a3, a4);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a5 = Strong;
  return result;
}

uint64_t UncheckedSendableWeakWrapper.wrapped.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*UncheckedSendableWeakWrapper.wrapped.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2174FA264;
}

uint64_t sub_2174FA264(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for ForgivingInt(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ForgivingInt(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t MusicLibraryResponse.items.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for MusicItemCollection(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

void MusicLibraryResponse<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MusicItemCollection(0, *(a2 + 16), *(a2 + 24), a4);

  MusicItemCollection<>.hash(into:)(a1, v5);
}

uint64_t MusicLibraryResponse<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  MusicLibraryResponse<>.hash(into:)(v6, a1, a2, v4);
  return sub_217753238();
}

uint64_t sub_2174FA42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  MusicLibraryResponse<>.hash(into:)(v7, a2, v4, v5);
  return sub_217753238();
}

unint64_t sub_2174FA480(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v53 - v7;
  MEMORY[0x28223BE20](v8);
  v54 = &v53 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v72 = 0;
  v73 = 0xE000000000000000;
  v18 = type metadata accessor for MusicItemCollection(0, v3, *(v16 + 24), v17);
  (*(*(v18 - 8) + 16))(&v69, v2, v18);
  v22 = MusicItemCollection.startIndex.getter(v18, v19, v20, v21);
  v71 = v22;
  if (v22 != MusicItemCollection.endIndex.getter(v18, v23, v24, v25))
  {
    v28 = (v4 + 32);
    v29 = (v4 + 16);
    v30 = (v4 + 8);
    v58 = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v56 = (v4 + 16);
    do
    {
      MusicItemCollection.subscript.getter(v22, v18, v15, v26, v27);
      MusicItemCollection.formIndex(after:)(&v71);
      (*v28)(v12, v15, v3);
      v31 = *v29;
      if (v57)
      {
        v31(v54, v12, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B58, &qword_2177711B0);
        if (swift_dynamicCast())
        {
          sub_2171F3F0C(&v63, &v66);
          __swift_project_boxed_opaque_existential_1(&v66, v68);
          v32 = sub_217753068();
          goto LABEL_9;
        }

        v65 = 0;
        v64 = 0u;
        v63 = 0u;
        sub_2171F06D8(&v63, &qword_27CB28B60, &qword_2177711B8);
      }

      v35 = v58;
      v31(v55, v12, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B48, &qword_2177711A0);
      v36 = swift_dynamicCast();
      v58 = v35;
      if (!v36)
      {
        v65 = 0;
        v64 = 0u;
        v63 = 0u;
        sub_2171F06D8(&v63, &qword_27CB28B50, &qword_2177711A8);
        v31(v53, v12, v3);
        v37 = sub_217751FA8();
        v39 = v40;
        goto LABEL_11;
      }

      sub_2171F3F0C(&v63, &v66);
      __swift_project_boxed_opaque_existential_1(&v66, v68);
      v32 = sub_217752FC8();
LABEL_9:
      *&v63 = v32;
      *(&v63 + 1) = v33;
      v61 = 10;
      v62 = 0xE100000000000000;
      v59 = 0x202020200ALL;
      v60 = 0xE500000000000000;
      sub_21733A5C8(v32, v33, v34);
      v37 = sub_217752998();
      v39 = v38;

      __swift_destroy_boxed_opaque_existential_1(&v66);
LABEL_11:
      v41 = v72 & 0xFFFFFFFFFFFFLL;
      if ((v73 & 0x2000000000000000) != 0)
      {
        v41 = HIBYTE(v73) & 0xF;
      }

      if (v41)
      {
        MEMORY[0x21CEA23B0](44, 0xE100000000000000);
      }

      v66 = 0x202020200ALL;
      v67 = 0xE500000000000000;
      MEMORY[0x21CEA23B0](v37, v39);

      MEMORY[0x21CEA23B0](v66, v67, v42);

      (*v30)(v12, v3, v43);
      v47 = MusicItemCollection.endIndex.getter(v18, v44, v45, v46);
      v22 = v71;
      v29 = v56;
    }

    while (v71 != v47);
  }

  swift_getWitnessTable();
  v48 = sub_217752C88();
  (*(*(v48 - 8) + 8))(&v69, v48);
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_217752AA8();

  v69 = 0xD000000000000015;
  v70 = 0x80000002177AF650;
  v49 = sub_217753348();
  MEMORY[0x21CEA23B0](v49);

  MEMORY[0x21CEA23B0](10302, 0xE200000000000000, v50);
  MEMORY[0x21CEA23B0](0x736D65746920200ALL, 0xEB000000005B203ALL);
  MEMORY[0x21CEA23B0](v72, v73);

  MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000, v51);
  MEMORY[0x21CEA23B0](10, 0xE100000000000000);
  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v69;
}

uint64_t static CloudConversionError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_217753058();
}

uint64_t CloudConversionError.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x21CEA3550](1);
  }

  MEMORY[0x21CEA3550](0);

  return sub_217751FF8();
}

uint64_t CloudConversionError.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2177531E8();
  if (v1)
  {
    MEMORY[0x21CEA3550](0);
    sub_217751FF8();
  }

  else
  {
    MEMORY[0x21CEA3550](1);
  }

  return sub_217753238();
}

uint64_t sub_2174FACA0(uint64_t a1)
{
  v4 = *v1;
  sub_2177531E8();
  CloudConversionError.hash(into:)(v3);
  return sub_217753238();
}

uint64_t CloudConversionError.convertToDecodingError(for:decodedTypeDescription:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_217752B38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v4[1];
  if (v13)
  {
    v25 = a2;
    v26 = v9;
    v14 = *v4;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_217753298();
    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2172B240C();
      v15 = isUniquelyReferenced_nonNull_native;
    }

    v19 = *(v15 + 16);
    if (v19 >= *(v15 + 24) >> 1)
    {
      sub_2172B240C();
      v15 = isUniquelyReferenced_nonNull_native;
    }

    v28 = &type metadata for DynamicCodingKey;
    v29 = sub_21738B390(isUniquelyReferenced_nonNull_native, v17, v18);
    *&v27 = v14;
    *(&v27 + 1) = v13;
    *(v15 + 16) = v19 + 1;
    sub_2171F3F0C(&v27, v15 + 40 * v19 + 32);
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177AF670);
    MEMORY[0x21CEA23B0](v25, a3);
    MEMORY[0x21CEA23B0](0xD000000000000020, 0x80000002177AF6B0);
    MEMORY[0x21CEA23B0](v14, v13);
    MEMORY[0x21CEA23B0](11810, 0xE200000000000000);
    sub_217752B08();
    v9 = v26;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217753298();
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_217752AA8();

    *&v27 = 0xD000000000000011;
    *(&v27 + 1) = 0x80000002177AF670;
    MEMORY[0x21CEA23B0](a2, a3, v20);
    MEMORY[0x21CEA23B0](0xD00000000000001ALL, 0x80000002177AF690);
    sub_217752B08();
  }

  (*(v10 + 32))(a4, v12, v9);
  v21 = *MEMORY[0x277D84168];
  v22 = sub_217752B48();
  return (*(*(v22 - 8) + 104))(a4, v21, v22);
}

unint64_t sub_2174FB020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28B68;
  if (!qword_27CB28B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActiveMonitoring(_BYTE *result, int a2, int a3)
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

uint64_t sub_2174FB174(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_2174FB2B0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2174FB4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *(v9 + 16) = v10;
  *v10 = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v9;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 769) = 0;
  return v4;
}

uint64_t sub_2174FB530()
{
  OUTLINED_FUNCTION_1_65();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_0_68(v2, v3);
  os_unfair_lock_unlock(*(v1 + 16));

  v4 = v7;
  sub_217751DE8();
  sub_217284734(v6);
  return v4;
}

uint64_t sub_2174FB5A0()
{
  OUTLINED_FUNCTION_1_65();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_0_68(v2, v3);
  os_unfair_lock_unlock(*(v1 + 16));

  v4 = v7;
  sub_217751DE8();
  sub_217284734(v6);
  return v4;
}

void *sub_2174FB610@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_2174FB8A8(v1, v8);
  os_unfair_lock_unlock(*(v3 + 16));

  memcpy(__dst, v9, 0x221uLL);
  sub_217202078(__dst, v6, &qword_27CB24400, &unk_21775E9A0);
  sub_217284734(v8);
  return memcpy(a1, __dst, 0x221uLL);
}

uint64_t sub_2174FB6D8()
{
  OUTLINED_FUNCTION_2_73();
  os_unfair_lock_lock(v1);
  OUTLINED_FUNCTION_0_68(v3, v4);
  os_unfair_lock_unlock(*(v2 + 16));

  sub_217202078(&v7, v0, &qword_27CB245B8, &qword_217758AE0);
  return sub_217284734(v6);
}

uint64_t sub_2174FB754()
{
  OUTLINED_FUNCTION_2_73();
  os_unfair_lock_lock(v1);
  OUTLINED_FUNCTION_0_68(v3, v4);
  os_unfair_lock_unlock(*(v2 + 16));

  sub_217202078(&v7, v0, &qword_27CB24418, &unk_21777F680);
  return sub_217284734(v6);
}

uint64_t sub_2174FB7D0()
{
  OUTLINED_FUNCTION_1_65();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_0_68(v2, v3);
  os_unfair_lock_unlock(*(v1 + 16));

  v4 = v7;
  sub_217284734(v6);
  return v4;
}

uint64_t sub_2174FB83C()
{
  OUTLINED_FUNCTION_1_65();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_0_68(v2, v3);
  os_unfair_lock_unlock(*(v1 + 16));

  v4 = v7;
  sub_217284734(v6);
  return v4;
}

void *sub_2174FB8A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = sub_217284788(a1 + 40, __src);
  if (v8)
  {
    return memcpy(a2, __src, 0x2D9uLL);
  }

  (*__src)(v4);

  sub_2174FBF40(a2, v6);
  v6[729] = 1;
  swift_beginAccess();
  sub_2174FBF9C(v6, a1 + 40);
  return swift_endAccess();
}

uint64_t sub_2174FB980(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    v11 = 1;
    goto LABEL_10;
  }

  v5 = sub_217753058();
  result = 0;
  v11 = v5 & 1;
  if (v5)
  {
LABEL_10:
    v7 = a1[4];
    v8 = *(v7 + 16);

    os_unfair_lock_lock(v8);
    v9 = a2[4];
    v10 = *(v9 + 16);

    os_unfair_lock_lock(v10);
    sub_2174FBA98(a1);
    os_unfair_lock_unlock(*(v9 + 16));

    os_unfair_lock_unlock(*(v7 + 16));

    return v11;
  }

  return result;
}

uint64_t sub_2174FBA98(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_beginAccess();
  sub_217284788(v6 + 40, __src);
  swift_beginAccess();
  memcpy(__dst, __src, 0x2DAuLL);
  sub_217284788(v4 + 40, v13);
  if (__dst[729] == 1)
  {
    sub_217284788(__dst, v11);
    if (v13[729] == 1)
    {
      memcpy(v10, v11, 0x2D9uLL);
      memcpy(v9, v13, 0x2D9uLL);
      v7 = sub_2173E2640(v10);
      sub_217284734(v9);
      sub_217284734(v10);
      *v2 = v7;
      return sub_2172847E4(__dst);
    }

    sub_217284734(v11);
  }

  return sub_2174FBED8(__dst);
}

uint64_t sub_2174FBBE0()
{

  sub_2172847E4(v0 + 40);
  return v0;
}

uint64_t sub_2174FBC10()
{
  sub_2174FBBE0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2174FBC68()
{
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_2174FBCC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 730))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 729);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_2174FBCFC(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
    bzero(a1, 0x2DAuLL);
    *a1 = v5;
    if (a3 >= 0xFF)
    {
      *(a1 + 730) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 730) = 0;
    }

    if (a2)
    {
      *(a1 + 729) = -a2;
    }
  }
}

void sub_2174FBD70(unsigned int *a1, unsigned int a2)
{
  if (a2 > 1)
  {
    v3 = a2 - 2;
    bzero(a1, 0x2D9uLL);
    *a1 = v3;
    LOBYTE(a2) = 2;
  }

  *(a1 + 729) = a2;
}

uint64_t sub_2174FBE30(uint64_t a1)
{
  sub_2177531E8();
  sub_2174FBBD8(v2);
  return sub_217753238();
}

uint64_t sub_2174FBE70@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
  return sub_217751DE8();
}

unint64_t sub_2174FBE84()
{
  result = qword_27CB28B70;
  if (!qword_27CB28B70)
  {
    _s25LazyEntryPropertyProviderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B70);
  }

  return result;
}

uint64_t sub_2174FBED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B78, &unk_217771680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(MusicKit::CloudResourceIdentifier *__return_ptr retstr, MusicKit::ResourceType_optional catalogType, MusicKit::ResourceType_optional libraryType)
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 16);
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v10 + 16);
  memcpy(__dst, v3, 0x161uLL);
  if ((MusicIdentifierSet.isLibraryResource.getter() & 1) != 0 && (v14 = __dst[6]) != 0)
  {
    if (v11)
    {
      v15 = __dst[5];
      goto LABEL_8;
    }
  }

  else
  {
    v14 = __dst[3];
    if (!__dst[3])
    {
      if (qword_280BE8358 != -1)
      {
        swift_once();
      }

      v23 = sub_217751AF8();
      __swift_project_value_buffer(v23, qword_280C02570);
      sub_217269EF4(__dst, v106);
      v24 = sub_217751AD8();
      v25 = sub_217752808();
      sub_217269F50(__dst);
      if (os_log_type_enabled(v24, v25))
      {
        bufa = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v105 = v26;
        *bufa = 136446210;
        OUTLINED_FUNCTION_31_25(v26, v27, v28, v29, v30, v31, v32, v33, v54, v55, v56, bufa, v26, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *v106);
        sub_217269EF4(__dst, &v60);
        v34 = sub_217751FA8();
        HIDWORD(v56) = v25;
        v36 = v8;
        v37 = sub_21729C0E8(v34, v35, &v105);

        *(buf + 4) = v37;
        v8 = v36;
        _os_log_impl(&dword_2171EE000, v24, v25, "MusicIdentifierSet: Unable to create a valid cloud resource identifier for %{public}s without a catalogID or libraryID.", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x21CEA4360](v59, -1, -1);
        MEMORY[0x21CEA4360](buf, -1, -1);
      }

      if (v7)
      {
        v11 = v7;
        v13 = v9;
        v12 = v8;
      }

      else
      {
        if (!v11)
        {
          *v106 = 0;
          v107 = 0xE000000000000000;
          sub_217752AA8();
          v60 = *v106;
          v61 = v107;
          OUTLINED_FUNCTION_33_22();
          OUTLINED_FUNCTION_37_23();
          v46 = MEMORY[0x21CEA23B0]();
          OUTLINED_FUNCTION_31_25(v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, buf, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *v106);
          sub_217752C78();
          MEMORY[0x21CEA23B0](46, 0xE100000000000000);
          goto LABEL_31;
        }

        sub_217751DE8();
      }

      v15 = __dst[0];
      v14 = __dst[1];
      sub_217751DE8();
      sub_217751DE8();
      goto LABEL_26;
    }

    if (v7)
    {
      v15 = __dst[2];
      v11 = v7;
      v13 = v9;
      v12 = v8;
LABEL_8:
      sub_217751DE8();
      sub_217751DE8();
      v16 = qword_280BE8AC8;
      sub_217751DE8();
      if (v16 != -1)
      {
        swift_once();
      }

      if (v12 == xmmword_280BE8AD0 && *(&xmmword_280BE8AD0 + 1) == v11)
      {
      }

      else
      {
        v18 = sub_217753058();

        if ((v18 & 1) == 0)
        {
          *v106 = v12;
          v107 = v11;
          v108 = v13 & 1;
          sub_217751DE8();
          v19.rawValue._countAndFlagsBits = v15;
          v19.rawValue._object = v14;
          v20 = ResourceType.hrefForResource(with:)(v19);
          countAndFlagsBits = v20.value._countAndFlagsBits;
          object = v20.value._object;

LABEL_27:
          *v5 = v15;
          *(v5 + 8) = v14;
          *(v5 + 16) = v12;
          *(v5 + 24) = v11;
          *(v5 + 32) = v13 & 1;
          *(v5 + 40) = countAndFlagsBits;
          *(v5 + 48) = object;
          OUTLINED_FUNCTION_13();
          return;
        }
      }

LABEL_26:
      countAndFlagsBits = 0;
      object = 0;
      goto LABEL_27;
    }
  }

  v107 = 0xE000000000000000;
  sub_217751DE8();
  sub_217752AA8();
  OUTLINED_FUNCTION_33_22();
  OUTLINED_FUNCTION_37_23();
  v38 = MEMORY[0x21CEA23B0]();
  OUTLINED_FUNCTION_31_25(v38, v39, v40, v41, v42, v43, v44, v45, v54, v55, v56, buf, v59, 0, 0xE000000000000000, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, 0);
  sub_217752C78();
  OUTLINED_FUNCTION_37_23();
  MEMORY[0x21CEA23B0](0xD000000000000028);
LABEL_31:
  sub_217752D08();
  __break(1u);
}

double MusicIdentifierSet.union(_:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[33];
  v6 = *(v0 + 2);
  v7 = *(v0 + 3);
  v15 = *(v0 + 32);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_217751DE8();
    v9 = OUTLINED_FUNCTION_15();
    if (sub_2174FC648(v9, v10, v5))
    {
      OUTLINED_FUNCTION_35_21();
      v11 = v15;
      if (v3)
      {
        v12 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v12 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          sub_217751DE8();

          v11 = v15;
        }

        else
        {
          OUTLINED_FUNCTION_35_21();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_35_21();
      v11 = v15;
    }
  }

  else
  {
LABEL_11:
    sub_217751DE8();
    v11 = v15;
  }

  v19 = *v0;
  v20 = v6;
  v21 = v7;
  v22 = v11;
  memcpy(v23, v0 + 33, sizeof(v23));
  memcpy(v16, v2 + 33, sizeof(v16));
  v17 = v5;
  memcpy(v18, v2 + 34, sizeof(v18));
  sub_2174FC7B8();
  OUTLINED_FUNCTION_13();
}

char *sub_2174FC648(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_2177531E8();
  OUTLINED_FUNCTION_114();
  sub_217751FF8();
  v7 = &v13;
  sub_217753238();
  OUTLINED_FUNCTION_22_33();
  do
  {
    OUTLINED_FUNCTION_28_29();
    if (!v8)
    {
      break;
    }

    v9 = (a3[6] + 16 * v3);
    v10 = v9[1];
    v11 = *v9 == a1 && v10 == a2;
  }

  while (!v11 && (OUTLINED_FUNCTION_196(*v9, v10) & 1) == 0);
  return v7;
}

char *sub_2174FC700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5[2])
  {
    return 0;
  }

  sub_2177531E8();
  OUTLINED_FUNCTION_114();
  sub_217751FF8();
  v9 = &v16;
  sub_217753238();
  OUTLINED_FUNCTION_22_33();
  do
  {
    OUTLINED_FUNCTION_28_29();
    if (!v10)
    {
      break;
    }

    v11 = a5[6] + 32 * v5;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v14 = v12 == a3 && v13 == a4;
  }

  while (!v14 && (OUTLINED_FUNCTION_196(v12, v13) & 1) == 0);
  return v9;
}

void sub_2174FC7B8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v98 = *(v3 + 40);
  v114 = *(v3 + 48);
  v40 = *(v3 + 56);
  v81 = *(v3 + 88);
  v83 = *(v3 + 72);
  v77 = *(v3 + 120);
  v79 = *(v3 + 104);
  v54 = *(v3 + 136);
  v112 = *(v3 + 144);
  v4 = *(v3 + 152);
  v52 = *(v3 + 160);
  v48 = *(v3 + 176);
  v49 = *(v3 + 168);
  v41 = *(v3 + 192);
  v42 = *(v3 + 184);
  v56 = *(v3 + 200);
  v87 = *(v3 + 208);
  v47 = *(v3 + 232);
  v45 = *(v3 + 216);
  v43 = *(v3 + 248);
  v62 = *(v3 + 272);
  v66 = *(v3 + 264);
  v67 = *(v3 + 280);
  v5 = *(v3 + 352);
  v7 = *(v6 + 8);
  v75 = *v6;
  v68 = *(v6 + 16);
  v85 = *v0;
  v99 = *(v0 + 8);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v93 = *(v0 + 56);
  v101 = *(v0 + 64);
  v92 = *(v0 + 72);
  v102 = *(v0 + 80);
  v91 = *(v0 + 88);
  v103 = *(v0 + 96);
  v90 = *(v0 + 104);
  v104 = *(v0 + 112);
  v89 = *(v0 + 120);
  v100 = *(v0 + 128);
  v110 = *(v0 + 144);
  v111 = *(v0 + 136);
  v105 = *(v0 + 160);
  v106 = *(v0 + 152);
  v61 = *(v0 + 168);
  v109 = *(v0 + 184);
  v107 = *(v0 + 176);
  v108 = *(v0 + 192);
  v97 = *(v0 + 200);
  v116 = *(v0 + 208);
  v10 = *(v0 + 224);
  v11 = *(v0 + 240);
  v95 = *(v0 + 232);
  v96 = *(v0 + 216);
  v94 = *(v0 + 248);
  v60 = *(v0 + 256);
  v63 = *(v0 + 264);
  v64 = *(v0 + 272);
  v65 = *(v0 + 280);
  v12 = *(v0 + 296);
  v13 = *(v0 + 304);
  v14 = *(v0 + 312);
  v59 = *(v0 + 320);
  v58 = *(v0 + 328);
  v74 = *(v0 + 336);
  v73 = *(v0 + 344);
  v15 = *(v0 + 352);
  if (v15 == 4)
  {
    v15 = v5;
  }

  v70 = *(v0 + 296);
  v71 = *(v0 + 288);
  v120[0] = v71;
  v120[1] = v12;
  v69 = v13;
  v120[2] = v13;
  v120[3] = v14;
  v16 = v9;
  v17 = v8;
  v117 = v8;
  if (!v8)
  {
    if (v114)
    {
      v18 = v15;
      v19 = sub_217751DE8();
      v15 = v18;
      v16 = v98;
      v17 = v19;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

  v57 = v14;
  v72 = v15;
  if (v15 == 4)
  {
    LOBYTE(v15) = v5;
  }

  LOBYTE(v119) = v15;
  sub_217751DE8();
  sub_217751DE8();
  v20 = static MusicIdentifierSet.preferredIdentifierKinds(for:libraryID:preferredIdentifierKind:)(v120, v16, v17, &v119);

  v21 = v20[2];
  v22 = v114;
  v23 = v10;
  v24 = v87;
  if (!v21)
  {
LABEL_25:
    sub_217751DE8();

    sub_217751DE8();
    v27 = v85;
    goto LABEL_26;
  }

  v25 = 1 - v21;
  v26 = 32;
  while (2)
  {
    if (v25 == 1)
    {
      __break(1u);
      return;
    }

    switch(*(v20 + v26))
    {
      case 1:
        if (v110)
        {
          sub_217751DE8();
          sub_217751DE8();

          v27 = v111;
          v99 = v110;
        }

        else
        {
          if (!v112)
          {
            goto LABEL_23;
          }

          sub_217751DE8();
          sub_217751DE8();

          v27 = v54;
          v99 = v112;
        }

        goto LABEL_26;
      case 2:
        if (v117)
        {
          sub_217751DE8();
          sub_217751DE8();

          v98 = v9;
          v99 = v117;
          v22 = v117;
          v24 = v87;
          goto LABEL_33;
        }

        if (v114)
        {
          sub_217751DE8();
          sub_217751DE8();

          v27 = v98;
          v99 = v114;
          goto LABEL_31;
        }

        goto LABEL_23;
      case 3:
        if (!v116)
        {
          if (v87)
          {
            sub_217751DE8();
            sub_217751DE8();

            v27 = v56;
            v99 = v87;
            goto LABEL_26;
          }

LABEL_23:
          if (!v25)
          {
            goto LABEL_25;
          }

          ++v25;
          ++v26;
          continue;
        }

        sub_217751DE8();
        sub_217751DE8();

        v27 = v97;
        v99 = v116;
        v24 = v87;
LABEL_26:
        if (v117)
        {
          v98 = v9;
          v22 = v117;
          goto LABEL_32;
        }

LABEL_31:
        sub_217751DE8();
LABEL_32:
        v9 = v27;
LABEL_33:
        v88 = v101;
        if (!v101)
        {
          v93 = v40;
          v88 = sub_217751DE8();
        }

        v86 = v102;
        if (!v102)
        {
          v92 = v83;
          v86 = sub_217751DE8();
        }

        v84 = v103;
        if (!v103)
        {
          v91 = v81;
          v84 = sub_217751DE8();
        }

        v82 = v104;
        if (!v104)
        {
          v90 = v79;
          v82 = sub_217751DE8();
        }

        v80 = v100;
        if (!v100)
        {
          v89 = v77;
          v80 = sub_217751DE8();
        }

        v115 = v22;
        v28 = v111;
        v29 = v110;
        v78 = v106;
        v76 = v105;
        if (!v110)
        {
          v28 = v54;
          sub_2172A5428(v54, v112, v4, v52);
          v29 = v112;
          v76 = v52;
          v78 = v4;
        }

        v51 = v29;
        v53 = v28;
        v30 = v116;
        if (!v116)
        {
          sub_217751DE8();
          v97 = v56;
          v30 = v24;
        }

        v50 = v30;
        v31 = v61;
        v32 = v108;
        v33 = v107;
        v113 = v109;
        if (!v107)
        {
          v33 = v48;
          v31 = v49;
          sub_2172A5428(v49, v48, v42, v41);
          v113 = v42;
          v32 = v41;
        }

        v34 = v23;
        if (!v23)
        {
          v96 = v45;
          v34 = sub_217751DE8();
        }

        v35 = v11;
        if (!v11)
        {
          v35 = sub_217751DE8();
          v95 = v47;
        }

        v46 = v35;
        v55 = v9;
        v36 = v60;
        if (!v60)
        {
          v36 = sub_217751DE8();
          v94 = v43;
        }

        v44 = v36;
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2172A5428(v111, v110, v106, v105);
        sub_2172A5428(v61, v107, v109, v108);
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2174FF70C(v66, v63);
        v38 = v37;
        v118 = v65;
        v119 = v67;
        sub_217751DE8();
        sub_2172AC64C(v59, v58, v74, v73);
        sub_217751DE8();
        sub_217751DE8();
        MusicItemDataSourceCollection.union(_:)(&v118);

        v39 = v120[0];
        OUTLINED_FUNCTION_16_38();
        *v2 = v55;
        *(v2 + 8) = v99;

        *(v2 + 16) = v75;
        *(v2 + 24) = v7;
        *(v2 + 32) = v68;
        *(v2 + 40) = v98;
        *(v2 + 48) = v115;
        *(v2 + 56) = v93;
        *(v2 + 64) = v88;
        *(v2 + 72) = v92;
        *(v2 + 80) = v86;
        *(v2 + 88) = v91;
        *(v2 + 96) = v84;
        *(v2 + 104) = v90;
        *(v2 + 112) = v82;
        *(v2 + 120) = v89;
        *(v2 + 128) = v80;
        OUTLINED_FUNCTION_47_18();
        *(v2 + 136) = v53;
        *(v2 + 144) = v51;
        *(v2 + 152) = v78;
        *(v2 + 160) = v76;
        *(v2 + 200) = v97;
        *(v2 + 208) = v50;
        sub_2172B8404(*(v2 + 168), *(v2 + 176));
        *(v2 + 168) = v31;
        *(v2 + 176) = v33;
        *(v2 + 184) = v113;
        *(v2 + 192) = v32;
        *(v2 + 216) = v96;
        *(v2 + 224) = v34;
        *(v2 + 232) = v95;
        *(v2 + 240) = v46;
        *(v2 + 248) = v94;
        *(v2 + 256) = v44;
        *(v2 + 264) = v38;
        *(v2 + 272) = (v64 | v62) & 1;
        *(v2 + 288) = v71;
        *(v2 + 296) = v70;
        *(v2 + 304) = v69;
        *(v2 + 312) = v57;
        sub_2172AC65C(*(v2 + 320));
        *(v2 + 320) = v59;
        *(v2 + 328) = v58;
        *(v2 + 336) = v74;
        *(v2 + 344) = v73;
        *(v2 + 280) = v39;
        *(v2 + 352) = v72;
        OUTLINED_FUNCTION_13();
        return;
      default:
        if (!v7)
        {
          goto LABEL_23;
        }

        swift_bridgeObjectRetain_n();

        v27 = v75;
        v99 = v7;
        goto LABEL_26;
    }
  }
}

void *static MusicIdentifierSet.preferredIdentifierKinds(for:libraryID:preferredIdentifierKind:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a4;
  if (dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for MusicItemIdentifierPolicyProviding))
  {
    v10 = (*(v9 + 8))();
  }

  else
  {
    v10 = &unk_282959D58;
  }

  if (dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for PolymorphicMusicItem))
  {
    if (qword_280BE90D0 != -1)
    {
      swift_once();
    }

    if (v6 != qword_280BE90E8 || v7 != unk_280BE90F0)
    {
      OUTLINED_FUNCTION_15();
      if ((sub_217753058() & 1) == 0)
      {
        if (a3)
        {
          if (sub_2177520C8())
          {
            v12 = &unk_282959D08;
LABEL_17:

            v10 = v12;
            goto LABEL_18;
          }

          if (sub_2177520C8())
          {
            v12 = &unk_282959C18;
            goto LABEL_17;
          }
        }
      }
    }
  }

LABEL_18:
  if (v8 != 4)
  {
    v13 = sub_2174FF868(v8, v10);
    if ((v14 & 1) == 0)
    {
      v15 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2175035F8(v10);
        v10 = v18;
      }

      v16 = v10[2];
      if (v15 >= v16)
      {
        __break(1u);
      }

      else
      {
        memmove(v10 + v15 + 32, v10 + v15 + 33, v16 - 1 - v15);
        v10[2] = v16 - 1;
        if (v16 <= v10[3] >> 1)
        {
LABEL_24:
          sub_21750390C(0, 0, 1, v8);
          return v10;
        }
      }

      sub_2172B2580(1, v16, 1, v10);
      v10 = v19;
      goto LABEL_24;
    }
  }

  return v10;
}

void MusicIdentifierSet.init(catalogID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  v1 = v0;
  v3 = v2;
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v4 + 16);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v11 = *v10;
  bzero((v2 + 56), 0xD0uLL);
  *(v3 + 264) = MEMORY[0x277D84FA0];
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *v3 = v6;
  *(v3 + 8) = v5;
  sub_217751DE8();

  *(v3 + 16) = v6;
  *(v3 + 24) = v5;
  *(v3 + 32) = v7;
  *(v3 + 272) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 288) = *v1;
  *(v3 + 304) = v8;
  *(v3 + 312) = v9;
  *(v3 + 280) = v11;
  *(v3 + 352) = 4;
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(libraryID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_3_60();
  bzero((v3 + 56), 0xD0uLL);
  OUTLINED_FUNCTION_10_38(MEMORY[0x277D84FA0]);

  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = v1;
  *(v2 + 48) = v0;
  *(v2 + 272) = 1;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(cloudAlbumLibraryID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_3_60();
  bzero((v3 + 72), 0xC0uLL);
  OUTLINED_FUNCTION_10_38(MEMORY[0x277D84FA0]);

  OUTLINED_FUNCTION_21_30();
  *(v2 + 56) = v1;
  *(v2 + 64) = v0;
  *(v2 + 272) = 1;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(deviceLocalID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_27_30(v5);
  bzero(v6, 0xD0uLL);
  v0[33] = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_40_22(0);

  OUTLINED_FUNCTION_34_23();
  OUTLINED_FUNCTION_47_18();
  v0[17] = v2;
  v0[18] = v1;
  v0[19] = v3;
  v0[20] = v4;
  OUTLINED_FUNCTION_20_30();
  OUTLINED_FUNCTION_44_19();
  OUTLINED_FUNCTION_13();
}

void MusicIdentifierSet.init(occurrenceID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v10 = *v9;
  bzero((v4 + 56), 0x90uLL);
  *(v5 + 248) = 0u;
  *(v5 + 232) = 0u;
  v11 = MEMORY[0x277D84FA0];
  *(v5 + 216) = 0u;
  *(v5 + 264) = v11;
  OUTLINED_FUNCTION_40_22(0);

  OUTLINED_FUNCTION_34_23();
  OUTLINED_FUNCTION_47_18();
  *(v5 + 152) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 200) = v3;
  *(v5 + 208) = v1;
  OUTLINED_FUNCTION_20_30();
  *(v5 + 304) = v7;
  *(v5 + 312) = v8;
  *(v5 + 280) = v10;
  *(v5 + 352) = 4;
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(playbackID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_3_60();
  bzero((v3 + 56), 0xB0uLL);
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  OUTLINED_FUNCTION_10_38(MEMORY[0x277D84FA0]);

  OUTLINED_FUNCTION_21_30();
  sub_2172B8404(*(v2 + 136), *(v2 + 144));
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 232) = v1;
  *(v2 + 240) = v0;
  *(v2 + 272) = 0;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(containedDeviceLocalID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_27_30(v5);
  bzero(v6, 0xC0uLL);
  v0[33] = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_40_22(0);

  OUTLINED_FUNCTION_34_23();
  sub_2172B8404(v0[21], v0[22]);
  v0[21] = v2;
  v0[22] = v1;
  v0[23] = v3;
  v0[24] = v4;
  v0[31] = 0;
  v0[32] = 0;
  OUTLINED_FUNCTION_20_30();
  OUTLINED_FUNCTION_44_19();
  OUTLINED_FUNCTION_13();
}

Swift::Bool __swiftcall MusicIdentifierSet.contains(_:)(MusicKit::MusicItemID a1)
{
  object = a1.rawValue._object;
  countAndFlagsBits = a1.rawValue._countAndFlagsBits;
  v4 = *v1;
  v5 = v1[1];
  v6 = *v1 == countAndFlagsBits && v5 == object;
  if (v6 || (v7 = v1[2], v8 = v1[3], v9 = v1[5], v10 = v1[6], v11 = v1[7], v12 = v1[8], v13 = v1[10], v45 = v1[11], v46 = v1[12], v47 = v1[9], v43 = v1[13], v44 = v1[14], v41 = v1[15], v42 = v1[16], v39 = v1[17], v40 = v1[18], v35 = v1[21], v36 = v1[22], v37 = v1[25], v38 = v1[26], v33 = v1[27], v34 = v1[28], v31 = v1[29], v32 = v1[30], v14 = v1[33], (OUTLINED_FUNCTION_9_40(v4, v5) & 1) != 0) || v8 && (v7 == countAndFlagsBits ? (v15 = v8 == object) : (v15 = 0), v15 || (OUTLINED_FUNCTION_9_40(v7, v8) & 1) != 0) || v10 && (v9 == countAndFlagsBits ? (v16 = v10 == object) : (v16 = 0), v16 || (OUTLINED_FUNCTION_9_40(v9, v10) & 1) != 0) || v12 && (v11 == countAndFlagsBits ? (v17 = v12 == object) : (v17 = 0), v17 || (v18 = OUTLINED_FUNCTION_15(), (OUTLINED_FUNCTION_9_40(v18, v19) & 1) != 0)) || v13 && (v47 == countAndFlagsBits ? (v20 = v13 == object) : (v20 = 0), v20 || (OUTLINED_FUNCTION_9_40(v47, v13) & 1) != 0) || v46 && (v45 == countAndFlagsBits ? (v21 = v46 == object) : (v21 = 0), v21 || (OUTLINED_FUNCTION_9_40(v45, v46) & 1) != 0) || v44 && (v43 == countAndFlagsBits ? (v22 = v44 == object) : (v22 = 0), v22 || (OUTLINED_FUNCTION_9_40(v43, v44) & 1) != 0) || v42 && (v41 == countAndFlagsBits ? (v23 = v42 == object) : (v23 = 0), v23 || (OUTLINED_FUNCTION_9_40(v41, v42) & 1) != 0) || v40 && (v39 == countAndFlagsBits ? (v24 = v40 == object) : (v24 = 0), v24 || (OUTLINED_FUNCTION_9_40(v39, v40) & 1) != 0) || v38 && (v37 == countAndFlagsBits ? (v25 = v38 == object) : (v25 = 0), v25 || (OUTLINED_FUNCTION_9_40(v37, v38) & 1) != 0) || v36 && (v35 == countAndFlagsBits ? (v26 = v36 == object) : (v26 = 0), v26 || (OUTLINED_FUNCTION_9_40(v35, v36) & 1) != 0) || v34 && (v33 == countAndFlagsBits ? (v27 = v34 == object) : (v27 = 0), v27 || (OUTLINED_FUNCTION_9_40(v33, v34) & 1) != 0) || v32 && (v31 == countAndFlagsBits ? (v28 = v32 == object) : (v28 = 0), v28 || (OUTLINED_FUNCTION_9_40(v31, v32) & 1) != 0))
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_2174FC648(countAndFlagsBits, object, v14);
  }

  return v29 & 1;
}

uint64_t MusicIdentifierSet.isLibraryResource.getter()
{
  v1 = *(v0 + 280);
  if (!v1[2] || (v2 = *(v0 + 272), v3 = v1[4], v4 = v1[5], v5 = OUTLINED_FUNCTION_20_6(), sub_21726B87C(v5, v6), v4 == 9))
  {
    v23 = OUTLINED_FUNCTION_38_20();
    sub_21726B8B4(v23, v24);
    v25 = OUTLINED_FUNCTION_38_20();
    sub_21726B890(v25, v26);
    sub_21726B890(0, 6uLL);
    v27 = OUTLINED_FUNCTION_38_20();
    sub_21726B8B4(v27, v28);
    v29 = OUTLINED_FUNCTION_38_20();
    sub_21726B890(v29, v30);
    sub_21726B890(0, 1uLL);
    v31 = OUTLINED_FUNCTION_38_20();
    sub_21726B890(v31, v32);
    sub_21726B890(0, 5uLL);
    return 0;
  }

  v40 = v3;
  v41 = v4;
  v39 = xmmword_21775A450;
  v7 = OUTLINED_FUNCTION_20_6();
  sub_21726B8B4(v7, v8);
  v9 = OUTLINED_FUNCTION_20_6();
  sub_21726B8B4(v9, v10);
  v11 = static MusicItemDataSource.== infix(_:_:)(&v40, &v39);
  sub_21726B8A0(v39, *(&v39 + 1));
  sub_21726B8A0(v40, v41);
  v12 = OUTLINED_FUNCTION_20_6();
  sub_21726B890(v12, v13);
  if ((v11 & 1) == 0)
  {
    v40 = v3;
    v41 = v4;
    v39 = xmmword_2177586D0;
    v14 = OUTLINED_FUNCTION_20_6();
    sub_21726B8B4(v14, v15);
    v16 = OUTLINED_FUNCTION_20_6();
    sub_21726B8B4(v16, v17);
    v18 = static MusicItemDataSource.== infix(_:_:)(&v40, &v39);
    sub_21726B8A0(v39, *(&v39 + 1));
    sub_21726B8A0(v40, v41);
    v19 = OUTLINED_FUNCTION_20_6();
    sub_21726B890(v19, v20);
    if ((v18 & 1) == 0)
    {
      v40 = v3;
      v41 = v4;
      v39 = xmmword_21775A430;
      v34 = OUTLINED_FUNCTION_20_6();
      sub_21726B8B4(v34, v35);
      v36 = static MusicItemDataSource.== infix(_:_:)(&v40, &v39);
      sub_21726B8A0(v39, *(&v39 + 1));
      sub_21726B8A0(v40, v41);
      v37 = OUTLINED_FUNCTION_20_6();
      sub_21726B890(v37, v38);
      if (v36)
      {
        return v2;
      }

      return 0;
    }
  }

  v21 = OUTLINED_FUNCTION_20_6();
  sub_21726B890(v21, v22);
  return 1;
}

void static MusicIdentifierSet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v291 = *(v0 + 48);
  v282 = *(v0 + 56);
  v289 = *(v0 + 40);
  v290 = *(v0 + 64);
  v280 = *(v0 + 72);
  v288 = *(v0 + 80);
  v275 = *(v0 + 88);
  v286 = *(v0 + 96);
  v278 = *(v0 + 112);
  v264 = *(v0 + 120);
  v272 = *(v0 + 104);
  v273 = *(v0 + 128);
  v270 = *(v0 + 144);
  v271 = *(v0 + 136);
  v268 = *(v0 + 152);
  v269 = *(v0 + 160);
  v262 = *(v0 + 168);
  v263 = *(v0 + 176);
  v261 = *(v0 + 184);
  v258 = *(v0 + 192);
  v251 = *(v0 + 200);
  v255 = *(v0 + 208);
  v247 = *(v0 + 216);
  v253 = *(v0 + 224);
  v243 = *(v0 + 232);
  v249 = *(v0 + 240);
  v241 = *(v0 + 248);
  v245 = *(v0 + 256);
  v239 = *(v0 + 264);
  v237 = *(v0 + 272);
  v235 = *(v0 + 280);
  v229 = *(v0 + 312);
  v230 = *(v0 + 304);
  v226 = *(v0 + 328);
  v232 = *(v0 + 336);
  v233 = *(v0 + 344);
  v234 = *(v0 + 320);
  v5 = *v0 == *v1 && *(v0 + 8) == *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v10 = *(v1 + 40);
  v9 = *(v1 + 48);
  v12 = *(v1 + 56);
  v11 = *(v1 + 64);
  v279 = *(v1 + 72);
  v283 = *(v1 + 80);
  v274 = *(v1 + 88);
  v281 = *(v1 + 96);
  v284 = *(v1 + 104);
  v276 = *(v1 + 112);
  v285 = *(v1 + 120);
  v277 = *(v1 + 128);
  v287 = *(v1 + 136);
  v265 = *(v1 + 152);
  v266 = *(v1 + 160);
  v267 = *(v1 + 144);
  v259 = *(v1 + 176);
  v260 = *(v1 + 168);
  v256 = *(v1 + 184);
  v257 = *(v1 + 192);
  v250 = *(v1 + 200);
  v254 = *(v1 + 208);
  v246 = *(v1 + 216);
  v252 = *(v1 + 224);
  v242 = *(v1 + 232);
  v248 = *(v1 + 240);
  v240 = *(v1 + 248);
  v244 = *(v1 + 256);
  v238 = *(v1 + 264);
  v236 = *(v1 + 272);
  v227 = *(v1 + 312);
  v228 = *(v1 + 304);
  v231 = *(v1 + 320);
  v224 = *(v1 + 336);
  v225 = *(v1 + 344);
  if (!v5 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_113;
  }

  if (!v3)
  {
    if (!v7)
    {

      goto LABEL_20;
    }

LABEL_15:
    sub_217751DE8();

    goto LABEL_113;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  if (v2 == v6 && v3 == v7)
  {
    OUTLINED_FUNCTION_43_14();
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v14 = sub_217753058();
    OUTLINED_FUNCTION_43_14();
    swift_bridgeObjectRetain_n();
    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_43_14();
      swift_bridgeObjectRelease_n();
      goto LABEL_113;
    }
  }

  OUTLINED_FUNCTION_43_14();
  swift_bridgeObjectRelease_n();
  if (v4 != v8)
  {
    goto LABEL_113;
  }

LABEL_20:
  if (!v291)
  {
    if (v9)
    {
      goto LABEL_113;
    }

LABEL_29:
    if (v290)
    {
      if (!v11)
      {
        goto LABEL_113;
      }

      v16 = v282 == v12 && v290 == v11;
      if (!v16 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else if (v11)
    {
      goto LABEL_113;
    }

    if (v288)
    {
      v17 = v286;
      v18 = v287;
      v20 = v284;
      v19 = v285;
      if (!v283)
      {
        goto LABEL_113;
      }

      v21 = v280 == v279 && v288 == v283;
      if (!v21 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v17 = v286;
      v18 = v287;
      v20 = v284;
      v19 = v285;
      if (v283)
      {
        goto LABEL_113;
      }
    }

    if (v17)
    {
      if (!v281)
      {
        goto LABEL_113;
      }

      v22 = v275 == v274 && v17 == v281;
      if (!v22 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else if (v281)
    {
      goto LABEL_113;
    }

    if (v278)
    {
      v23 = v277;
      if (!v276)
      {
        goto LABEL_113;
      }

      v24 = v272 == v20 && v278 == v276;
      if (!v24 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v23 = v277;
      if (v276)
      {
        goto LABEL_113;
      }
    }

    if (v273)
    {
      if (!v23)
      {
        goto LABEL_113;
      }

      if (v264 != v19 || v273 != v23)
      {
        OUTLINED_FUNCTION_742();
        if ((sub_217753058() & 1) == 0)
        {
          goto LABEL_113;
        }
      }
    }

    else if (v23)
    {
      goto LABEL_113;
    }

    v26 = v270;
    if (v270)
    {
      v27 = v271;
      v28 = v267;
      if (v267)
      {
        if (v271 != v18 || v270 != v267)
        {
          OUTLINED_FUNCTION_16_0();
          if ((sub_217753058() & 1) == 0)
          {
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_742();
            sub_2172A5428(v112, v113, v114, v115);
            OUTLINED_FUNCTION_184_1();
            sub_2172A5428(v116, v117, v118, v119);
            v120 = OUTLINED_FUNCTION_4_65();
            sub_2172A5428(v120, v121, v122, v123);
            goto LABEL_135;
          }
        }

        if (v268 != v265 || v269 != v266)
        {
          OUTLINED_FUNCTION_23_33();
          v31 = sub_217753058();
          v32 = OUTLINED_FUNCTION_5_1();
          sub_2172A5428(v32, v33, v34, v35);
          OUTLINED_FUNCTION_17_31();
          sub_2172A5428(v36, v37, v38, v39);
          v40 = OUTLINED_FUNCTION_5_1();
          sub_2172A5428(v40, v41, v42, v43);
          OUTLINED_FUNCTION_17_31();
          sub_2172B8404(v44, v45);

          v46 = OUTLINED_FUNCTION_5_1();
          sub_2172B8404(v46, v47);
          if ((v31 & 1) == 0)
          {
            goto LABEL_113;
          }

          goto LABEL_94;
        }

        v68 = OUTLINED_FUNCTION_4_65();
        sub_2172A5428(v68, v69, v70, v71);
        OUTLINED_FUNCTION_6_49();
        sub_2172A5428(v72, v73, v74, v75);
        v76 = OUTLINED_FUNCTION_4_65();
        sub_2172A5428(v76, v77, v78, v79);
        OUTLINED_FUNCTION_6_49();
        sub_2172B8404(v80, v81);

LABEL_93:
        v82 = OUTLINED_FUNCTION_4_65();
        sub_2172B8404(v82, v83);
LABEL_94:
        v84 = v262;
        if (v263)
        {
          v85 = v258;
          v86 = v259;
          if (v259)
          {
            v87 = v262 == v260 && v263 == v259;
            if (v87 || (v88 = sub_217753058(), v84 = v262, (v88 & 1) != 0))
            {
              if (v261 != v256 || v258 != v257)
              {
                OUTLINED_FUNCTION_23_33();
                v90 = sub_217753058();
                v91 = OUTLINED_FUNCTION_5_1();
                sub_2172A5428(v91, v92, v93, v94);
                OUTLINED_FUNCTION_17_31();
                sub_2172A5428(v95, v96, v97, v98);
                v99 = OUTLINED_FUNCTION_5_1();
                sub_2172A5428(v99, v100, v101, v102);
                OUTLINED_FUNCTION_17_31();
                sub_2172B8404(v103, v104);

                v105 = OUTLINED_FUNCTION_5_1();
                sub_2172B8404(v105, v106);
                if ((v90 & 1) == 0)
                {
                  goto LABEL_113;
                }

LABEL_117:
                if (v255)
                {
                  if (!v254)
                  {
                    goto LABEL_113;
                  }

                  v147 = v251 == v250 && v255 == v254;
                  if (!v147 && (sub_217753058() & 1) == 0)
                  {
                    goto LABEL_113;
                  }
                }

                else if (v254)
                {
                  goto LABEL_113;
                }

                if (v253)
                {
                  if (!v252)
                  {
                    goto LABEL_113;
                  }

                  v148 = v247 == v246 && v253 == v252;
                  if (!v148 && (sub_217753058() & 1) == 0)
                  {
                    goto LABEL_113;
                  }
                }

                else if (v252)
                {
                  goto LABEL_113;
                }

                if (v249)
                {
                  if (!v248)
                  {
                    goto LABEL_113;
                  }

                  v165 = v243 == v242 && v249 == v248;
                  if (!v165 && (sub_217753058() & 1) == 0)
                  {
                    goto LABEL_113;
                  }
                }

                else if (v248)
                {
                  goto LABEL_113;
                }

                if (v245)
                {
                  if (!v244)
                  {
                    goto LABEL_113;
                  }

                  v166 = v241 == v240 && v245 == v244;
                  if (!v166 && (sub_217753058() & 1) == 0)
                  {
                    goto LABEL_113;
                  }
                }

                else if (v244)
                {
                  goto LABEL_113;
                }

                if ((sub_2172A9110(v239, v238) & 1) == 0)
                {
                  goto LABEL_113;
                }

                if ((v237 ^ v236))
                {
                  goto LABEL_113;
                }

                v292 = v235;
                sub_217751DE8();
                sub_217751DE8();
                sub_217710EFC();
                sub_217710EFC();
                v167 = OUTLINED_FUNCTION_93();
                sub_217275068(v167, v168, v169, v170, v171, v172, v173);
                v175 = v174;

                if ((v175 & 1) == 0)
                {
                  goto LABEL_113;
                }

                v176 = v230 == v228 && v229 == v227;
                if (!v176 && (sub_217753058() & 1) == 0)
                {
                  goto LABEL_113;
                }

                if (v234)
                {
                  if (v231)
                  {
                    if (v232 != v224 || v233 != v225)
                    {
                      OUTLINED_FUNCTION_23_33();
                      sub_217753058();
                      OUTLINED_FUNCTION_114();
                      sub_2172AC64C(v178, v179, v180, v233);
                      OUTLINED_FUNCTION_23_33();
                      sub_2172AC64C(v181, v182, v183, v184);
                      OUTLINED_FUNCTION_114();
                      sub_2172AC64C(v185, v186, v187, v233);
                      OUTLINED_FUNCTION_23_33();
                      sub_2172AC65C(v188);

                      OUTLINED_FUNCTION_114();
                      sub_2172AC65C(v189);
                      goto LABEL_113;
                    }

                    OUTLINED_FUNCTION_742();
                    sub_2172AC64C(v207, v208, v209, v210);
                    OUTLINED_FUNCTION_6_49();
                    sub_2172AC64C(v211, v212, v213, v214);
                    OUTLINED_FUNCTION_742();
                    sub_2172AC64C(v215, v216, v217, v218);
                    OUTLINED_FUNCTION_6_49();
                    sub_2172AC65C(v219);

LABEL_176:
                    sub_2172AC65C(v234);
                    goto LABEL_113;
                  }

                  OUTLINED_FUNCTION_742();
                  sub_2172AC64C(v194, v195, v196, v197);
                  OUTLINED_FUNCTION_41_20();
                  sub_2172AC64C(v198, v199, v200, v201);
                  OUTLINED_FUNCTION_742();
                  sub_2172AC64C(v202, v203, v204, v205);
                }

                else
                {
                  sub_2172AC64C(0, v226, v232, v233);
                  if (!v231)
                  {
                    OUTLINED_FUNCTION_41_20();
                    sub_2172AC64C(v220, v221, v222, v223);
                    v234 = 0;
                    goto LABEL_176;
                  }

                  OUTLINED_FUNCTION_41_20();
                  sub_2172AC64C(v190, v191, v192, v193);
                }

                sub_2172AC65C(v234);
                OUTLINED_FUNCTION_41_20();
                sub_2172AC65C(v206);
                goto LABEL_113;
              }

              sub_2172A5428(v84, v263, v261, v258);
              OUTLINED_FUNCTION_6_49();
              sub_2172A5428(v136, v137, v138, v139);
              OUTLINED_FUNCTION_742();
              sub_2172A5428(v140, v141, v142, v143);
              OUTLINED_FUNCTION_6_49();
              sub_2172B8404(v144, v145);

              v146 = v263;
LABEL_116:
              sub_2172B8404(v262, v146);
              goto LABEL_117;
            }

            OUTLINED_FUNCTION_742();
            sub_2172A5428(v149, v150, v151, v152);
            OUTLINED_FUNCTION_184_1();
            sub_2172A5428(v153, v154, v155, v156);
            v157 = OUTLINED_FUNCTION_4_65();
            sub_2172A5428(v157, v158, v159, v160);
LABEL_135:
            OUTLINED_FUNCTION_184_1();
            sub_2172B8404(v161, v162);

            v163 = OUTLINED_FUNCTION_4_65();
            sub_2172B8404(v163, v164);
            goto LABEL_113;
          }

          OUTLINED_FUNCTION_742();
          sub_2172A5428(v124, v125, v126, v127);
          v107 = v260;
          v49 = v256;
          v48 = v257;
          OUTLINED_FUNCTION_184_1();
          sub_2172A5428(v128, v129, v130, v131);
          v132 = OUTLINED_FUNCTION_4_65();
          sub_2172A5428(v132, v133, v134, v135);
        }

        else
        {
          v85 = v258;
          sub_2172A5428(v262, 0, v261, v258);
          v86 = v259;
          if (!v259)
          {
            sub_2172A5428(v260, 0, v256, v257);
            v146 = 0;
            goto LABEL_116;
          }

          v107 = v260;
          v49 = v256;
          v48 = v257;
          OUTLINED_FUNCTION_184_1();
          sub_2172A5428(v108, v109, v110, v111);
        }

        v292 = v262;
        v293 = v263;
        v294 = v261;
        v295 = v85;
        v296 = v107;
        v297 = v86;
LABEL_112:
        v298 = v49;
        v299 = v48;
        sub_2171F0738(&v292, &qword_27CB28B80, &qword_217771690);
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_16_0();
      v55 = v268;
      v54 = v269;
      OUTLINED_FUNCTION_742();
      sub_2172A5428(v56, v57, v58, v59);
      v49 = v265;
      v48 = v266;
      OUTLINED_FUNCTION_184_1();
      sub_2172A5428(v60, v61, v62, v63);
      v64 = OUTLINED_FUNCTION_4_65();
      sub_2172A5428(v64, v65, v66, v67);
    }

    else
    {
      sub_2172A5428(v271, 0, v268, v269);
      v28 = v267;
      if (!v267)
      {
        sub_2172A5428(v18, 0, v265, v266);
        goto LABEL_93;
      }

      v49 = v265;
      v48 = v266;
      OUTLINED_FUNCTION_184_1();
      sub_2172A5428(v50, v51, v52, v53);
      v55 = v268;
      v54 = v269;
      v26 = 0;
      v27 = v271;
    }

    v292 = v27;
    v293 = v26;
    v294 = v55;
    v295 = v54;
    v296 = v18;
    v297 = v28;
    goto LABEL_112;
  }

  if (v9)
  {
    v15 = v289 == v10 && v291 == v9;
    if (v15 || (sub_217753058() & 1) != 0)
    {
      goto LABEL_29;
    }
  }

LABEL_113:
  OUTLINED_FUNCTION_13();
}

Swift::Void __swiftcall MusicIdentifierSet.removingDeviceLocalIdentifiers()()
{
  sub_2172B8404(*(v0 + 136), *(v0 + 144));
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
}

void sub_2174FE570()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v43 = *(v0 + 288);
  v44 = v3;
  v45 = v4;
  v42 = *(v0 + 280);
  v41 = 4;
  swift_unknownObjectRetain();
  sub_217751DE8();
  sub_217751DE8();
  sub_2172B6904(v2, &v43, &v42, &v41, v46);
  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 32);
  }

  else
  {
    v6 = v47;
    v7 = v48;
    v5 = sub_217751DE8();
  }

  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v7;
  v8 = *(v0 + 48);
  if (v8)
  {
    v9 = *(v0 + 40);
  }

  else
  {
    v9 = v49;
    v8 = sub_217751DE8();
  }

  *(v0 + 40) = v9;
  *(v0 + 48) = v8;
  v10 = *(v0 + 64);
  if (v10)
  {
    v11 = *(v0 + 56);
  }

  else
  {
    v11 = v50;
    v10 = sub_217751DE8();
  }

  *(v0 + 56) = v11;
  *(v0 + 64) = v10;
  v12 = *(v0 + 80);
  if (v12)
  {
    v13 = *(v0 + 72);
  }

  else
  {
    v13 = v51;
    v12 = sub_217751DE8();
  }

  *(v0 + 72) = v13;
  *(v0 + 80) = v12;
  v14 = *(v0 + 96);
  if (v14)
  {
    v15 = *(v0 + 88);
  }

  else
  {
    v15 = v52;
    v14 = sub_217751DE8();
  }

  *(v0 + 88) = v15;
  *(v0 + 96) = v14;
  v16 = *(v0 + 112);
  if (v16)
  {
    v17 = *(v0 + 104);
  }

  else
  {
    v17 = v53;
    v16 = sub_217751DE8();
  }

  *(v0 + 104) = v17;
  *(v0 + 112) = v16;
  v18 = *(v0 + 128);
  if (v18)
  {
    v19 = *(v0 + 120);
  }

  else
  {
    v19 = v54;
    v18 = sub_217751DE8();
  }

  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v22 = *(v0 + 144);
  v23 = *(v0 + 136);
  *(v0 + 120) = v19;
  *(v0 + 128) = v18;
  v39 = v22;
  v40 = v23;
  v38 = v20;
  v24 = v21;
  if (!v22)
  {
    v24 = v58;
    v39 = v56;
    v40 = v55;
    v38 = v57;
    sub_2172A5428(v55, v56, v57, v58);
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
  }

  v25 = OUTLINED_FUNCTION_20_6();
  sub_2172A5428(v25, v26, v20, v21);
  sub_2172B8404(v23, v22);
  *(v0 + 136) = v40;
  *(v0 + 144) = v39;
  *(v0 + 152) = v38;
  *(v0 + 160) = v24;
  v27 = *(v0 + 208);
  if (v27)
  {
    v28 = *(v0 + 200);
  }

  else
  {
    v28 = v59;
    v27 = sub_217751DE8();
  }

  *(v0 + 200) = v28;
  *(v0 + 208) = v27;
  v29 = *(v0 + 240);
  if (v29)
  {
    v30 = *(v0 + 232);
  }

  else
  {
    v30 = v60;
    v29 = sub_217751DE8();
  }

  *(v0 + 232) = v30;
  *(v0 + 240) = v29;
  v31 = *(v0 + 264);
  v32 = sub_217751DE8();
  sub_2174FF70C(v32, v31);
  *(v0 + 264) = v33;
  v34 = *(v0 + 256);
  if (v34)
  {
    v35 = *(v0 + 248);
  }

  else
  {
    v35 = v61;
    v34 = sub_217751DE8();
  }

  *(v0 + 248) = v35;
  *(v0 + 256) = v34;
  v36 = *(v0 + 352);
  sub_217269F50(v46);
  v37 = v62;
  if (v36 != 4)
  {
    v37 = v36;
  }

  *(v0 + 352) = v37;
  OUTLINED_FUNCTION_13();
}

__n128 MusicIdentifierSet.init(id:catalogID:libraryID:cloudAlbumLibraryID:cloudID:reportingAdamID:purchasedAdamID:assetAdamID:deviceLocalID:occurrenceID:containedDeviceLocalID:syncID:playbackID:userID:formerIDs:isLibrary:typeValue:innerTypeValue:dataSources:preferredIdentifierKind:)@<Q0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __int128 a8, __int128 a9, __int128 a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14, __int128 *a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t *a23, char *a24)
{
  v27 = *a1;
  v28 = a1[1];
  v29 = *(a1 + 16);
  v39 = *(a21 + 24);
  v40 = *(a21 + 16);
  v42 = *a23;
  v41 = *a24;
  OUTLINED_FUNCTION_16_38();
  *a7 = v30;
  *(a7 + 8) = v31;

  *(a7 + 16) = v27;
  *(a7 + 24) = v28;
  *(a7 + 32) = v29;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  *(a7 + 80) = a8;
  *(a7 + 96) = a9;
  *(a7 + 112) = a10;
  *(a7 + 128) = a11;
  OUTLINED_FUNCTION_47_18();
  v32 = *a12;
  *(a7 + 152) = a12[1];
  *(a7 + 136) = v32;
  *(a7 + 200) = a13;
  *(a7 + 208) = a14;
  sub_2172B8404(*(a7 + 168), *(a7 + 176));
  v33 = *a15;
  *(a7 + 184) = a15[1];
  *(a7 + 168) = v33;
  *(a7 + 216) = a16;
  *(a7 + 232) = a17;
  *(a7 + 248) = a18;
  *(a7 + 264) = a19;
  *(a7 + 272) = a20;
  *(a7 + 288) = *a21;
  *(a7 + 304) = v40;
  *(a7 + 312) = v39;
  sub_2172AC65C(*(a7 + 320));
  result = *a22;
  v35 = *(a22 + 16);
  *(a7 + 320) = *a22;
  *(a7 + 336) = v35;
  *(a7 + 280) = v42;
  *(a7 + 352) = v41;
  return result;
}

void MusicIdentifierSet.init(userID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_3_60();
  bzero((v3 + 56), 0xC0uLL);
  OUTLINED_FUNCTION_10_38(MEMORY[0x277D84FA0]);

  OUTLINED_FUNCTION_21_30();
  *(v2 + 248) = v1;
  *(v2 + 256) = v0;
  *(v2 + 272) = 0;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(purchasedAdamID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_3_60();
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  v4 = MEMORY[0x277D84FA0];
  *(v2 + 232) = 0u;
  *(v2 + 264) = v4;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *v2 = v5;
  *(v2 + 8) = v6;
  sub_217751DE8();

  OUTLINED_FUNCTION_21_30();
  *(v2 + 104) = v1;
  *(v2 + 112) = v0;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 272) = 1;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_218();
}

uint64_t MusicIdentifierSet.catalogID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_217751DE8();
}

void MusicIdentifierSet.catalogID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
}

void MusicIdentifierSet.libraryID.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
}

void MusicIdentifierSet.cloudAlbumLibraryID.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
}

void MusicIdentifierSet.cloudID.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
}

void MusicIdentifierSet.reportingAdamID.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
}

void MusicIdentifierSet.purchasedAdamID.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
}

void MusicIdentifierSet.assetAdamID.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
}

__n128 MusicIdentifierSet.deviceLocalID.setter(uint64_t a1)
{
  sub_2172B8404(*(v1 + 136), *(v1 + 144));
  result = *a1;
  *(v1 + 152) = *(a1 + 16);
  *(v1 + 136) = result;
  return result;
}

__n128 MusicIdentifierSet.containedDeviceLocalID.setter(uint64_t a1)
{
  sub_2172B8404(*(v1 + 168), *(v1 + 176));
  result = *a1;
  *(v1 + 184) = *(a1 + 16);
  *(v1 + 168) = result;
  return result;
}

void MusicIdentifierSet.occurrenceID.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
}

void MusicIdentifierSet.syncID.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
}

void MusicIdentifierSet.playbackID.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
}

void MusicIdentifierSet.userID.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
}

void MusicIdentifierSet.dataSources.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 280) = v2;
}

uint64_t MusicIdentifierSet.typeValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 304);
  v2 = *(v1 + 312);
  *a1 = *(v1 + 288);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  return sub_217751DE8();
}

__n128 MusicIdentifierSet.typeValue.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];

  result = *a1;
  v1[18] = *a1;
  v1[19].n128_u64[0] = v3;
  v1[19].n128_u64[1] = v4;
  return result;
}

uint64_t MusicIdentifierSet.innerTypeValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[40];
  v3 = v1[41];
  v4 = v1[42];
  v5 = v1[43];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2172AC64C(v2, v3, v4, v5);
}

__n128 MusicIdentifierSet.innerTypeValue.setter(uint64_t a1)
{
  sub_2172AC65C(*(v1 + 320));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 320) = *a1;
  *(v1 + 336) = v4;
  return result;
}

uint64_t MusicIdentifierSet.isFromLocalDatabase.getter()
{
  if (v0[18])
  {
    v2 = v0[19];
    v1 = v0[20];
    v3 = objc_opt_self();
    sub_217751DE8();
    v4 = [v3 deviceLibrary];
    v5 = [v4 uniqueIdentifier];

    v6 = sub_217751F48();
    v8 = v7;

    if (v2 == v6 && v1 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_196(v2, v1);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void MusicIdentifierSet.intersects(_:)()
{
  OUTLINED_FUNCTION_12();
  v47 = v1[2];
  v53 = v1[3];
  v59 = v1[5];
  v65 = v1[6];
  v55 = v1[7];
  v61 = v1[8];
  v63 = v1[9];
  v73 = v1[10];
  v43 = v1[11];
  v49 = v1[12];
  v39 = v1[13];
  v45 = v1[14];
  v35 = v1[15];
  v41 = v1[16];
  v75 = v1[17];
  v78 = v1[18];
  v70 = v1[20];
  v71 = v1[19];
  v32 = v1[21];
  v37 = v1[22];
  v28 = v1[24];
  v29 = v1[23];
  v2 = v1[26];
  v77 = v1[25];
  v25 = v1[27];
  v30 = v1[28];
  v67 = v1[29];
  v76 = v1[30];
  v57 = v1[32];
  v3 = v1[36];
  v4 = v1[38];
  v5 = v1[39];
  v46 = v0[2];
  v51 = v1[31];
  v52 = v0[3];
  v58 = v0[5];
  v64 = v0[6];
  v54 = v0[7];
  v60 = v0[8];
  v62 = v0[9];
  v72 = v0[10];
  v42 = v0[11];
  v48 = v0[12];
  v38 = v0[13];
  v44 = v0[14];
  v34 = v0[15];
  v40 = v0[16];
  v6 = v0[18];
  v74 = v0[17];
  v68 = v0[20];
  v69 = v0[19];
  v31 = v0[21];
  v36 = v0[22];
  v26 = v0[24];
  v27 = v0[23];
  v8 = v0[25];
  v7 = v0[26];
  v24 = v0[27];
  v33 = v0[28];
  v9 = v0[30];
  v66 = v0[29];
  v50 = v0[31];
  v56 = v0[32];
  v10 = v0[36];
  v12 = v0[38];
  v11 = v0[39];
  if (!dynamic_cast_existential_1_conditional(v10, v10, &protocol descriptor for InnerMusicItemProviding) && !dynamic_cast_existential_1_conditional(v3, v3, &protocol descriptor for InnerMusicItemProviding))
  {
    v13 = v12 == v4 && v11 == v5;
    if (!v13 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  if (!v7 || !v2)
  {
    if (v6 && v78)
    {
      v15 = v74 == v75 && v6 == v78;
      if (!v15 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_72;
      }

      v17 = v70;
      v16 = v71;
      v19 = v68;
      v18 = v69;
    }

    else
    {
      if (v9 && v76)
      {
        if (v66 != v67 || v9 != v76)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }

      v19 = v72;
      v17 = v73;
      if (v72 && v73)
      {
        v18 = v62;
        v16 = v63;
      }

      else
      {
        v19 = v64;
        v17 = v65;
        if (v64 && v65)
        {
          v18 = v58;
          v16 = v59;
        }

        else
        {
          v19 = v60;
          v17 = v61;
          if (v60 && v61)
          {
            v18 = v54;
            v16 = v55;
          }

          else
          {
            v19 = v56;
            v17 = v57;
            if (v56 && v57)
            {
              v18 = v50;
              v16 = v51;
            }

            else
            {
              v19 = v52;
              v17 = v53;
              if (v52 && v53)
              {
                v18 = v46;
                v16 = v47;
              }

              else
              {
                v19 = v48;
                v17 = v49;
                if (v48 && v49)
                {
                  v18 = v42;
                  v16 = v43;
                }

                else
                {
                  v19 = v44;
                  v17 = v45;
                  if (v44 && v45)
                  {
                    v18 = v38;
                    v16 = v39;
                  }

                  else
                  {
                    v19 = v40;
                    v17 = v41;
                    if (v40 && v41)
                    {
                      v18 = v34;
                      v16 = v35;
                    }

                    else if (v36 && v37)
                    {
                      v21 = v31 == v32 && v36 == v37;
                      if (!v21 && (sub_217753058() & 1) == 0)
                      {
                        goto LABEL_72;
                      }

                      v17 = v28;
                      v16 = v29;
                      v19 = v26;
                      v18 = v27;
                    }

                    else
                    {
                      v19 = v33;
                      if (!v33)
                      {
                        goto LABEL_72;
                      }

                      v17 = v30;
                      if (!v30)
                      {
                        goto LABEL_72;
                      }

                      v18 = v24;
                      v16 = v25;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v18 != v16 || v19 != v17)
    {
      goto LABEL_69;
    }

LABEL_72:
    OUTLINED_FUNCTION_13();
    return;
  }

  if (v8 == v77 && v7 == v2)
  {
    goto LABEL_72;
  }

LABEL_69:
  OUTLINED_FUNCTION_13();

  sub_217753058();
}

void sub_2174FF70C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v15 = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_217751DE8();
    sub_21750074C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *MusicItemTypeValue.preferredIdentifierKinds.getter()
{
  if (dynamic_cast_existential_1_conditional(*v0, *v0, &protocol descriptor for MusicItemIdentifierPolicyProviding))
  {
    return (*(v1 + 8))();
  }

  else
  {
    return &unk_282959D58;
  }
}

uint64_t sub_2174FF868(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

void sub_2174FF8AC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = sub_217204DD0(v0);
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_11:
      OUTLINED_FUNCTION_13();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v11 = OUTLINED_FUNCTION_16_0();
      v6 = MEMORY[0x21CEA2E30](v11);
      goto LABEL_6;
    }

    if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v6 = *(v1 + 8 * v5 + 32);

LABEL_6:
    v7 = OUTLINED_FUNCTION_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v9 = static AnyMusicProperty.== infix(_:_:)(v6, v3);

    if (v9)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_2174FF994()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v0 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; i >> 14 != v7; i = sub_217752018())
  {
    OUTLINED_FUNCTION_20_6();
    if (sub_2177520F8() == v4 && v9 == v2)
    {

      break;
    }

    v11 = sub_217753058();

    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_20_6();
  }

  OUTLINED_FUNCTION_13();
}

uint64_t MusicIdentifierSet.hash(into:)(void *a1)
{
  v3 = *(v1 + 24);
  v12 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  v13 = *(v1 + 80);
  v14 = *(v1 + 96);
  v15 = *(v1 + 112);
  v16 = *(v1 + 128);
  v6 = *(v1 + 144);
  v7 = *(v1 + 176);
  v17 = *(v1 + 208);
  v8 = *(v1 + 224);
  v18 = *(v1 + 240);
  v19 = *(v1 + 256);
  v20 = *(v1 + 264);
  v9 = *(v1 + 320);
  v10 = *(v1 + 352);
  sub_217751FF8();
  if (v3)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
    MEMORY[0x21CEA3550](v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v4)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v5)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v13)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v14)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v15)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v16)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v6)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
    sub_217751FF8();
    if (v7)
    {
      goto LABEL_24;
    }

LABEL_27:
    OUTLINED_FUNCTION_25();
    if (v17)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_25();
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_24:
  OUTLINED_FUNCTION_11_41();
  sub_217753208();
  sub_217751FF8();
  sub_217751FF8();
  if (v17)
  {
LABEL_25:
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
    goto LABEL_29;
  }

LABEL_28:
  OUTLINED_FUNCTION_25();
LABEL_29:
  if (v8)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
    if (v18)
    {
      goto LABEL_31;
    }

LABEL_34:
    OUTLINED_FUNCTION_25();
    if (v19)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_25();
  if (!v18)
  {
    goto LABEL_34;
  }

LABEL_31:
  OUTLINED_FUNCTION_11_41();
  sub_217753208();
  sub_217751FF8();
  if (v19)
  {
LABEL_32:
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
    goto LABEL_36;
  }

LABEL_35:
  OUTLINED_FUNCTION_25();
LABEL_36:
  sub_2172A98C8(a1, v20);
  sub_217753208();
  MusicItemDataSourceCollection.hash(into:)();
  sub_217751FF8();
  if (v9)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751DE8();
    sub_217751FF8();
    sub_2172AC65C(v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v10 == 4)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_11_41();
  sub_217753208();
  return MEMORY[0x21CEA3550](v10);
}

uint64_t MusicIdentifierSet.hashValue.getter()
{
  sub_2177531E8();
  MusicIdentifierSet.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2174FFE78(uint64_t a1)
{
  sub_2177531E8();
  MusicIdentifierSet.hash(into:)(v2);
  return sub_217753238();
}

void *MusicIdentifierSet.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2171FF30C(a1, v8);
  sub_217729A9C(v8, __src);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  memcpy(v6, __src, sizeof(v6));
  sub_21772A7F4(v7, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return memcpy(a2, v7, 0x161uLL);
}

uint64_t MusicIdentifierSet.encode(to:)(void *a1)
{
  memcpy(v4, v1, 0x161uLL);
  sub_21772AD94(__src);
  memcpy(v4, __src, sizeof(v4));
  sub_21772B3EC(a1);
  return sub_217503D9C(__src);
}

unint64_t sub_217500000(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_217500020(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_217500044(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[752 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_66(a3, result, 752 * a2);
  }

  return result;
}

char *sub_21750009C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2175000D8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_217500190(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[768 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

void sub_217500220(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_42_20();
  if (v8 && (a4(0), OUTLINED_FUNCTION_43(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = OUTLINED_FUNCTION_8_45();

      MEMORY[0x2821FE820](v10);
    }
  }

  else
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_8_45();

    MEMORY[0x2821FE828](v11);
  }
}

char *sub_217500374(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[152 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_66(a3, result, 152 * a2);
  }

  return result;
}

void sub_2175003B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_42_20();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_43(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = OUTLINED_FUNCTION_8_45();

      MEMORY[0x2821FE820](v12);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v13 = OUTLINED_FUNCTION_8_45();

    MEMORY[0x2821FE828](v13);
  }
}

char *sub_21750047C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[128 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_21750049C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[360 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_66(a3, result, 360 * a2);
  }

  return result;
}

void sub_2175004C8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v23 = v3;
  v4 = sub_217751428();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v0;
  v8 = *v0;
  sub_217503FC8(&qword_27CB24868, MEMORY[0x277CC8920]);
  v28 = v2;
  v9 = sub_217751EA8();
  v25 = v8;
  v26 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v27 = v5 + 2;
  v24 = v5 + 1;
  while (1)
  {
    v11 = v9 & v10;
    if (((1 << (v9 & v10)) & *(v26 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v16 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_114();
      v18();
      v29 = *v16;
      v19 = OUTLINED_FUNCTION_15();
      sub_21750199C(v19, v20, isUniquelyReferenced_nonNull_native);
      *v16 = v29;
      OUTLINED_FUNCTION_114();
      v21();
      goto LABEL_7;
    }

    v12 = v5[9] * v11;
    v13 = v5[2];
    v13(v7, *(v25 + 48) + v12, v4);
    sub_217503FC8(&qword_27CB24AC0, MEMORY[0x277CC8928]);
    v14 = sub_217751F08();
    v15 = v5[1];
    v15(v7, v4);
    if (v14)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v15(v28, v4);
  v13(v23, *(v25 + 48) + v12, v4);
LABEL_7:
  OUTLINED_FUNCTION_13();
}

BOOL sub_21750074C(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2177531E8();
  sub_217751FF8();
  v8 = sub_217753238();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_217753058() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;
      sub_217751DE8();
      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  sub_217751DE8();
  sub_217501C00(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_217500898(char *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_2177531E8();
  sub_217342E54();
  v5 = sub_217753238();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xEB00000000736F6DLL;
      v10 = 0x74612D79626C6F64;
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          break;
        case 2:
          v10 = 0x75612D79626C6F64;
          v9 = 0xEB000000006F6964;
          break;
        case 3:
          v9 = 0xE800000000000000;
          v10 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v10 = 0x6C2D7365722D6968;
          v9 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v10 = 0x74732D7973736F6CLL;
          v9 = 0xEC0000006F657265;
          break;
        case 6:
          v10 = 0x2D6C616974617073;
          v9 = 0xED00006F69647561;
          break;
        case 7:
          v9 = 0xE700000000000000;
          v10 = 0x6C616974617073;
          break;
        case 8:
          v10 = 0xD000000000000013;
          v9 = 0x80000002177AA7E0;
          break;
        case 9:
          v9 = 0xE500000000000000;
          v10 = 0x736F6D7461;
          break;
        case 0xA:
          v9 = 0xE800000000000000;
          v10 = 0x646E756F72727573;
          break;
        default:
          v10 = 0xD000000000000014;
          v9 = 0x80000002177AA770;
          break;
      }

      v11 = 0x74612D79626C6F64;
      v12 = 0xEB00000000736F6DLL;
      switch(v3)
      {
        case 1:
          break;
        case 2:
          v11 = 0x75612D79626C6F64;
          v12 = 0xEB000000006F6964;
          break;
        case 3:
          v12 = 0xE800000000000000;
          v11 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v11 = 0x6C2D7365722D6968;
          v12 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v11 = 0x74732D7973736F6CLL;
          v12 = 0xEC0000006F657265;
          break;
        case 6:
          v11 = 0x2D6C616974617073;
          v12 = 0xED00006F69647561;
          break;
        case 7:
          v12 = 0xE700000000000000;
          v11 = 0x6C616974617073;
          break;
        case 8:
          v11 = 0xD000000000000013;
          v12 = 0x80000002177AA7E0;
          break;
        case 9:
          v12 = 0xE500000000000000;
          v11 = 0x736F6D7461;
          break;
        case 10:
          v12 = 0xE800000000000000;
          v11 = 0x646E756F72727573;
          break;
        default:
          v11 = 0xD000000000000014;
          v12 = 0x80000002177AA770;
          break;
      }

      if (v10 == v11 && v9 == v12)
      {
        break;
      }

      v14 = sub_217753058();

      if (v14)
      {
        goto LABEL_33;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_31:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_217501D68(v3, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = v3;
  return result;
}

BOOL sub_217500C88(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v11 = *v5;
  sub_2177531E8();
  OUTLINED_FUNCTION_114();
  sub_217751FF8();
  sub_217753238();
  OUTLINED_FUNCTION_22_33();
  while (1)
  {
    v13 = v12 & v6;
    v14 = (v7 << (v12 & v6)) & *(v11 + 56 + (((v12 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = *(v11 + 48) + 32 * v13;
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v18 = v16 == a4 && v17 == a5;
    if (v18 || (OUTLINED_FUNCTION_196(v16, v17) & 1) != 0)
    {

      v19 = *(v11 + 48) + 32 * v13;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      *a1 = *v19;
      *(a1 + 16) = v21;
      *(a1 + 24) = v20;
      sub_217751DE8();
      return v14 == 0;
    }

    v12 = v13 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v5;
  sub_217751DE8();
  sub_217502198(a2, a3, a4, a5, v13, isUniquelyReferenced_nonNull_native);
  *v5 = v26;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  return v14 == 0;
}

uint64_t sub_217500DD4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_217751428();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BA0, &qword_217771938);
  result = sub_217752A68();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_217747368(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_217503FC8(&qword_27CB24868, MEMORY[0x277CC8920]);
    result = sub_217751EA8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_217501118(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B90, &unk_217771910);
  result = sub_217752A68();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_217747368(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2177531E8();
    sub_217751FF8();
    result = sub_217753238();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_217501374(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B98, &unk_217771920);
  result = sub_217752A68();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_217747368(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_2177531E8();
    sub_217751FF8();

    result = sub_217753238();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_217501730(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241E8, &qword_217771930);
  result = sub_217752A68();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_217747368(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 32 * (v13 | (v6 << 6));
    v29 = *v16;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    sub_2177531E8();
    sub_217751FF8();
    result = sub_217753238();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v5 + 48) + 32 * v22;
    *v27 = v29;
    *(v27 + 16) = v17;
    *(v27 + 24) = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}