unint64_t sub_2173411CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B78;
  if (!qword_27CB25B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B78);
  }

  return result;
}

unint64_t sub_217341224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B80;
  if (!qword_27CB25B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B80);
  }

  return result;
}

unint64_t sub_21734127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B88;
  if (!qword_27CB25B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B88);
  }

  return result;
}

unint64_t sub_2173412D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B90;
  if (!qword_27CB25B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B90);
  }

  return result;
}

unint64_t sub_21734132C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B98;
  if (!qword_27CB25B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B98);
  }

  return result;
}

unint64_t sub_217341384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25BA0;
  if (!qword_27CB25BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BA0);
  }

  return result;
}

uint64_t static MusicCatalogSearchSuggestionsResponse.Suggestion.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (v10 || (sub_217753058() & 1) != 0)
  {
    v11 = v2 == v6 && v4 == v7;
    if (v11 || (sub_217753058() & 1) != 0)
    {
      if (v5)
      {
        if (v8)
        {
          if (v3 == v9 && v5 == v8)
          {
            return 1;
          }

          OUTLINED_FUNCTION_93();
          if (sub_217753058())
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_217341538(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5479616C70736964 && a2 == 0xEB000000006D7265;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

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

uint64_t sub_217341650(char a1)
{
  if (!a1)
  {
    return 0x5479616C70736964;
  }

  if (a1 == 1)
  {
    return 0x6554686372616573;
  }

  return 0x656372756F73;
}

uint64_t sub_2173416B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217341538(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2173416E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173418FC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21734171C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173418FC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BA8, &qword_21775E6E0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = v1[2];
  v16[3] = v1[3];
  v16[4] = v9;
  v10 = v1[4];
  v16[1] = v1[5];
  v16[2] = v10;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173418FC(v11, v12, v13);
  sub_2177532F8();
  v19 = 0;
  v14 = v16[5];
  sub_217752F48();
  if (!v14)
  {
    v18 = 1;
    sub_217752F48();
    v17 = 2;
    sub_217752EF8();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_2173418FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25BB0;
  if (!qword_27CB25BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BB0);
  }

  return result;
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_217751FF8();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_2177531E8();
  sub_217751FF8();
  sub_217751FF8();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void MusicCatalogSearchSuggestionsResponse.Suggestion.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BB8, &qword_21775E6E8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173418FC(v11, v12, v13);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v29 = 0;
    v14 = sub_217752E68();
    v26 = v15;
    v28 = 1;
    v24 = sub_217752E68();
    v25 = v16;
    v27 = 2;
    v17 = sub_217752E18();
    v19 = v18;
    v20 = v17;
    (*(v7 + 8))(v10, v5);
    v22 = v25;
    v21 = v26;
    *a2 = v14;
    a2[1] = v21;
    a2[2] = v24;
    a2[3] = v22;
    a2[4] = v20;
    a2[5] = v19;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_217341D24(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v1[2];
  sub_2177531E8();
  MusicCatalogSearchSuggestionsResponse.Suggestion.hash(into:)(v5);
  return sub_217753238();
}

uint64_t sub_217341D7C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCatalogSearchSuggestionsResponse.Suggestion.searchTerm.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.description.getter()
{
  OUTLINED_FUNCTION_1_20();
  sub_217752AA8();
  OUTLINED_FUNCTION_3_27();
  MEMORY[0x21CEA23B0]();
  MEMORY[0x21CEA23B0](v0, v1);
  OUTLINED_FUNCTION_3_27();
  MEMORY[0x21CEA23B0](0xD000000000000010);
  MEMORY[0x21CEA23B0](v2, v3);
  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return v5;
}

uint64_t MusicCatalogSearchSuggestionsResponse.Suggestion.debugDescription.getter()
{
  OUTLINED_FUNCTION_1_20();
  sub_217752AA8();
  OUTLINED_FUNCTION_3_27();
  MEMORY[0x21CEA23B0]();
  MEMORY[0x21CEA23B0](v0, v1);
  OUTLINED_FUNCTION_3_27();
  MEMORY[0x21CEA23B0](0xD000000000000012);
  MEMORY[0x21CEA23B0](v2, v3);
  MEMORY[0x21CEA23B0](2689570, 0xE300000000000000);
  return v5;
}

unint64_t sub_217341F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25BC0;
  if (!qword_27CB25BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BC0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_217341F9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_217341FDC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *_s10SuggestionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217342118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25BC8;
  if (!qword_27CB25BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BC8);
  }

  return result;
}

unint64_t sub_217342170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25BD0;
  if (!qword_27CB25BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BD0);
  }

  return result;
}

unint64_t sub_2173421C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25BD8;
  if (!qword_27CB25BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25BD8);
  }

  return result;
}

double sub_217342220(uint64_t a1, unsigned __int8 a2)
{
  sub_217751FF8();
}

double sub_2173422A4()
{
  OUTLINED_FUNCTION_19_8();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_66_6();
      break;
    case 4:
      OUTLINED_FUNCTION_44_8();
      break;
    case 8:
      OUTLINED_FUNCTION_154_2();
      break;
    case 9:
      OUTLINED_FUNCTION_65_7();
      break;
    case 10:
      OUTLINED_FUNCTION_32_10();
      break;
    case 11:
      OUTLINED_FUNCTION_191_3();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

double sub_217342404(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217342474(uint64_t a1)
{
  OUTLINED_FUNCTION_208_3();
  sub_217751FF8();
}

double sub_217342580(uint64_t a1)
{
  OUTLINED_FUNCTION_208_3();
  sub_217751FF8();
}

double sub_21734269C(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217342734(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_2173427B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  sub_217751FF8();
}

double sub_21734281C(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_2173428D8()
{
  OUTLINED_FUNCTION_19_8();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_66_6();
      break;
    case 4:
      OUTLINED_FUNCTION_32_10();
      break;
    case 5:
      OUTLINED_FUNCTION_60_7();
      break;
    case 6:
      OUTLINED_FUNCTION_164_3();
      break;
    case 7:
      OUTLINED_FUNCTION_151_1();
      break;
    case 8:
      OUTLINED_FUNCTION_191_3();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

double sub_2173429C4(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217342A28()
{
  OUTLINED_FUNCTION_19_8();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_32_10();
      break;
    case 2:
      OUTLINED_FUNCTION_60_7();
      break;
    case 3:
      OUTLINED_FUNCTION_151_1();
      break;
    case 5:
      OUTLINED_FUNCTION_72_0();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

double sub_217342ACC(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217342B98(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217342C00(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_239();
  }

  sub_217751FF8();
}

double sub_217342C94(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217342CFC(uint64_t a1, unsigned __int8 a2)
{
  sub_217751FF8();
}

double sub_217342DD4(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217342E54()
{
  OUTLINED_FUNCTION_238_0();
  switch(v0)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
      break;
    case 2:
      OUTLINED_FUNCTION_238_0();
      break;
    default:
      OUTLINED_FUNCTION_72_0();
      break;
  }

  sub_217751FF8();
}

double sub_217342FCC()
{
  OUTLINED_FUNCTION_44_8();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_72_0();
      break;
    case 4:
      OUTLINED_FUNCTION_65_7();
      break;
    case 6:
      OUTLINED_FUNCTION_247();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

double sub_217343094(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_163_2();
  }

  sub_217751FF8();
}

double sub_217343118()
{
  OUTLINED_FUNCTION_163_2();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_72_0();
      OUTLINED_FUNCTION_199_1();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

double sub_2173431D0(uint64_t a1, unsigned __int8 a2)
{
  sub_217751FF8();
}

double sub_217343250(uint64_t a1)
{
  OUTLINED_FUNCTION_208_3();
  sub_217751FF8();
}

double sub_217343300(uint64_t a1)
{
  OUTLINED_FUNCTION_208_3();
  sub_217751FF8();
}

double sub_2173433B0()
{
  OUTLINED_FUNCTION_19_8();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_44_8();
      break;
    case 2:
      OUTLINED_FUNCTION_72_0();
      break;
    case 3:
      OUTLINED_FUNCTION_154_2();
      break;
    case 4:
      OUTLINED_FUNCTION_32_10();
      break;
    case 5:
      OUTLINED_FUNCTION_60_7();
      break;
    case 6:
      OUTLINED_FUNCTION_191_3();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

double sub_217343454(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
      break;
    default:
      OUTLINED_FUNCTION_72_0();
      break;
  }

  sub_217751FF8();
}

double sub_2173435DC(uint64_t a1, unsigned __int8 a2)
{
  sub_217751FF8();
}

double sub_217343668(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_2173436D0()
{
  OUTLINED_FUNCTION_66_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_44_8();
      break;
    case 2:
      OUTLINED_FUNCTION_154_2();
      break;
    case 3:
      OUTLINED_FUNCTION_247();
      break;
    case 4:
      OUTLINED_FUNCTION_65_7();
      break;
    case 5:
      OUTLINED_FUNCTION_164_3();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

double sub_217343760(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_21734382C(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_21734388C()
{
  OUTLINED_FUNCTION_83_5();
  switch(v0)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_199_1();
      OUTLINED_FUNCTION_72_0();
      break;
    case 4:
    case 5:
    case 6:
    case 7:
      OUTLINED_FUNCTION_42();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

double sub_21734397C(uint64_t a1)
{
  OUTLINED_FUNCTION_208_3();
  sub_217751FF8();
}

double sub_217343A2C(uint64_t a1, unsigned __int8 a2)
{
  sub_217751FF8();
}

double sub_217343AC0(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217343B88(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217343C54(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_239();
  }

  sub_217751FF8();
}

double sub_217343CD8(uint64_t a1, unsigned __int8 a2)
{
  sub_217751FF8();
}

double sub_217343D58(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217343DB0()
{
  OUTLINED_FUNCTION_83_5();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_199_1();
      goto LABEL_3;
    case 4:
    case 6:
      OUTLINED_FUNCTION_42();
      break;
    case 5:
LABEL_3:
      OUTLINED_FUNCTION_72_0();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

double sub_217343EA0(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217343F60(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_239();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  sub_217751FF8();
}

double sub_217343FDC(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_217344038(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_239();
  }

  else
  {
    OUTLINED_FUNCTION_72_0();
  }

  sub_217751FF8();
}

double sub_2173440C8()
{
  OUTLINED_FUNCTION_19_8();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_66_6();
      break;
    case 2:
      OUTLINED_FUNCTION_44_8();
      break;
    case 3:
      OUTLINED_FUNCTION_154_2();
      break;
    case 4:
      OUTLINED_FUNCTION_65_7();
      break;
    case 5:
      OUTLINED_FUNCTION_151_1();
      break;
    default:
      break;
  }

  sub_217751FF8();
}

double sub_217344154(uint64_t a1, char a2)
{
  sub_217751FF8();
}

double sub_2173441FC(uint64_t a1, unsigned __int8 a2)
{
  sub_217751FF8();
}

void PlaylistPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v44 = v0;
  v45 = v1;
  v42 = v2;
  v43 = v3;
  v40 = v4;
  v41 = v5;
  v7 = v6;
  v9 = v8;
  memcpy(__dst, v10, sizeof(__dst));
  v11 = *v7;
  v12 = v7[1];
  v13 = *(v7 + 16);
  sub_2172A497C(__src);
  memcpy(v9, __src, 0x221uLL);
  *(v9 + 552) = 0;
  memcpy((v9 + 560), __src, 0x221uLL);
  sub_21733B8A4(v48);
  memcpy((v9 + 1112), v48, 0xE8uLL);
  *(v9 + 1344) = 0;
  *(v9 + 1352) = 0u;
  *(v9 + 1368) = 1;
  *(v9 + 1376) = 0u;
  *(v9 + 1392) = 1;
  *(v9 + 1400) = 0u;
  *(v9 + 1416) = 0u;
  *(v9 + 1432) = 0u;
  *(v9 + 1448) = 0;
  *(v9 + 1456) = 2;
  *(v9 + 1464) = 0u;
  *(v9 + 1480) = 0u;
  *(v9 + 1496) = 0;
  *(v9 + 1504) = 33686018;
  *(v9 + 1508) = 514;
  *(v9 + 1510) = 5;
  v14 = type metadata accessor for PlaylistPropertyProvider(0);
  v15 = v14[22];
  v16 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(v9 + v15, 1, 1, v16);
  memcpy((v9 + v14[23]), __src, 0x221uLL);
  OUTLINED_FUNCTION_182_3(v14[24]);
  v17 = v9 + v14[25];
  *(v17 + 112) = 0;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  OUTLINED_FUNCTION_182_3(v14[26]);
  OUTLINED_FUNCTION_182_3(v14[27]);
  *(v9 + v14[28]) = 2;
  v18 = v9 + v14[29];
  *v18 = 0;
  *(v18 + 8) = 1;
  memcpy((v9 + v14[30]), __src, 0x221uLL);
  *(v9 + v14[31]) = 0;
  v19 = v14[32];
  v20 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(v9 + v19, 1, 1, v20);
  OUTLINED_FUNCTION_182_3(v14[33]);
  OUTLINED_FUNCTION_182_3(v14[34]);
  OUTLINED_FUNCTION_102_6(v14[35]);
  *(v9 + v14[36]) = 3;
  *(v9 + v14[37]) = 2;
  *(v9 + v14[38]) = 5;
  *(v9 + v14[39]) = 7;
  v21 = v9 + v14[40];
  *v21 = 0;
  *(v21 + 8) = 1;
  OUTLINED_FUNCTION_102_6(v14[41]);
  OUTLINED_FUNCTION_102_6(v14[42]);
  OUTLINED_FUNCTION_102_6(v14[43]);
  *(v9 + v14[44]) = 2;
  *(v9 + v14[45]) = 2;
  *(v9 + v14[46]) = 2;
  *(v9 + v14[47]) = 2;
  *(v9 + v14[48]) = 2;
  v22 = (v9 + v14[49]);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = v9 + v14[50];
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v9 + v14[51]) = 10;
  OUTLINED_FUNCTION_2_3(v14[52], 0);
  OUTLINED_FUNCTION_2_3(v14[53], v24);
  OUTLINED_FUNCTION_2_3(v14[54], v25);
  OUTLINED_FUNCTION_2_3(v14[55], v26);
  OUTLINED_FUNCTION_2_3(v14[56], v27);
  OUTLINED_FUNCTION_2_3(v14[57], v28);
  OUTLINED_FUNCTION_2_3(v14[58], v29);
  OUTLINED_FUNCTION_2_3(v14[59], v30);
  v31 = v9 + v14[60];
  *v31 = xmmword_2177586D0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  OUTLINED_FUNCTION_182_3(v14[61]);
  *(v9 + v14[62]) = 0;
  v32 = (v9 + v14[63]);
  v32[6] = v33;
  v32[7] = v33;
  v32[4] = v33;
  v32[5] = v33;
  v32[2] = v33;
  v32[3] = v33;
  *v32 = v33;
  v32[1] = v33;
  v34 = v9 + v14[64];
  *(v34 + 96) = 0;
  *(v34 + 64) = v33;
  *(v34 + 80) = v33;
  *(v34 + 32) = v33;
  *(v34 + 48) = v33;
  *v34 = v33;
  *(v34 + 16) = v33;
  v35 = v9 + v14[65];
  *(v35 + 32) = 0;
  *v35 = v33;
  *(v35 + 16) = v33;
  if (qword_280BE8800 != -1)
  {
    swift_once();
  }

  v36 = qword_280C02598;
  if (qword_280C02598 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v39 = sub_217752D28();

    v36 = v39;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v9 + v14[66]) = v36;
  v37 = (v9 + v14[69]);
  memcpy((v9 + v14[67]), __dst, 0x161uLL);
  v38 = v9 + v14[68];
  *v38 = v11;
  *(v38 + 8) = v12;
  *(v38 + 16) = v13;
  *v37 = v40;
  v37[1] = v41;
  *(v9 + v14[70]) = v42;
  *(v9 + v14[71]) = v43;
  *(v9 + v14[72]) = v44;
  *(v9 + v14[73]) = v45;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for PlaylistPropertyProvider(uint64_t a1)
{
  result = qword_280BE87F0;
  if (!qword_280BE87F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaylistPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *PlaylistPropertyProvider.artwork.setter()
{
  OUTLINED_FUNCTION_225_3(v3);
  sub_2171F0738(v3, &qword_27CB24400, &unk_21775E9A0);
  v0 = OUTLINED_FUNCTION_56_0();
  return memcpy(v0, v1, 0x221uLL);
}

uint64_t PlaylistPropertyProvider.coverArtwork.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_229_2(v5);
  memcpy(a1, (v1 + 560), 0x221uLL);
  return sub_21726A630(v5, v4, &qword_27CB24400, &unk_21775E9A0);
}

void *PlaylistPropertyProvider.coverArtwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_229_2(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + 560), a1, 0x221uLL);
}

uint64_t PlaylistPropertyProvider.coverArtworkRecipe.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_222_2(v5);
  memcpy(a1, (v1 + 1112), 0xE8uLL);
  return sub_21726A630(v5, v4, &qword_27CB25BE0, &qword_217794B20);
}

void *PlaylistPropertyProvider.coverArtworkRecipe.setter(const void *a1)
{
  OUTLINED_FUNCTION_222_2(v4);
  sub_2171F0738(v4, &qword_27CB25BE0, &qword_217794B20);
  return memcpy((v1 + 1112), a1, 0xE8uLL);
}

void PlaylistPropertyProvider.curatorName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 1344) = a1;
  *(v2 + 1352) = a2;
}

uint64_t PlaylistPropertyProvider.downloadedEntryCount.setter(uint64_t result, char a2)
{
  *(v2 + 1360) = result;
  *(v2 + 1368) = a2 & 1;
  return result;
}

uint64_t PlaylistPropertyProvider.editorialNotes.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 1400);
  v7[0] = *(v1 + 1384);
  v7[1] = v2;
  v4 = *(v1 + 1432);
  v8 = *(v1 + 1416);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_21726A630(v7, &v6, &qword_27CB24B70, &unk_217759460);
}

__n128 PlaylistPropertyProvider.editorialNotes.setter(uint64_t a1)
{
  v3 = (v1 + 1384);
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v9[2] = v3[2];
  v9[3] = v5;
  sub_2171F0738(v9, &qword_27CB24B70, &unk_217759460);
  v6 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v8;
  return result;
}

uint64_t PlaylistPropertyProvider.geoLocation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[183];
  v3 = v1[184];
  v4 = v1[185];
  v5 = v1[186];
  v6 = v1[187];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_21733B8BC(v2, v3, v4, v5, v6);
}

__n128 PlaylistPropertyProvider.geoLocation.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_21733B90C(v1[183], v1[184], v1[185], v1[186], v1[187]);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 183) = *a1;
  *(v1 + 185) = v5;
  v1[187] = v3;
  return result;
}

uint64_t PlaylistPropertyProvider.mainUberArtwork.getter()
{
  v1 = OUTLINED_FUNCTION_166_3();
  memcpy(__dst, (v0 + *(v1 + 92)), 0x221uLL);
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x221uLL);
  return sub_21726A630(__dst, &v5, &qword_27CB24400, &unk_21775E9A0);
}

void *PlaylistPropertyProvider.mainUberArtwork.setter()
{
  v0 = OUTLINED_FUNCTION_158_2();
  v8 = OUTLINED_FUNCTION_233(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14[0]);
  memcpy(v8, v9, 0x221uLL);
  sub_2171F0738(v14, &qword_27CB24400, &unk_21775E9A0);
  v10 = OUTLINED_FUNCTION_232_1();
  return memcpy(v10, v11, 0x221uLL);
}

uint64_t PlaylistPropertyProvider.name.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void PlaylistPropertyProvider.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for PlaylistPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t PlaylistPropertyProvider.playParameters.getter()
{
  v1 = OUTLINED_FUNCTION_166_3();
  memcpy(__dst, (v0 + *(v1 + 100)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x78uLL);
  return sub_21726A630(__dst, &v5, &qword_27CB244D0, &unk_21775D620);
}

void *PlaylistPropertyProvider.playParameters.setter()
{
  v0 = OUTLINED_FUNCTION_158_2();
  v8 = OUTLINED_FUNCTION_233(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14[0]);
  memcpy(v8, v9, 0x78uLL);
  sub_2171F0738(v14, &qword_27CB244D0, &unk_21775D620);
  v10 = OUTLINED_FUNCTION_232_1();
  return memcpy(v10, v11, 0x78uLL);
}

uint64_t PlaylistPropertyProvider.shortDescription.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void PlaylistPropertyProvider.shortDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for PlaylistPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t PlaylistPropertyProvider.standardDescription.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void PlaylistPropertyProvider.standardDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for PlaylistPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t PlaylistPropertyProvider.supportsSing.setter()
{
  result = OUTLINED_FUNCTION_158_2();
  *(v1 + *(result + 112)) = v0;
  return result;
}

uint64_t PlaylistPropertyProvider.trackCount.setter(uint64_t a1, char a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  result = type metadata accessor for PlaylistPropertyProvider(v5);
  v7 = v2 + *(result + 116);
  *v7 = v3;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t PlaylistPropertyProvider.tracksTiledArtwork.getter()
{
  v1 = OUTLINED_FUNCTION_166_3();
  memcpy(__dst, (v0 + *(v1 + 120)), 0x221uLL);
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x221uLL);
  return sub_21726A630(__dst, &v5, &qword_27CB24400, &unk_21775E9A0);
}

void *PlaylistPropertyProvider.tracksTiledArtwork.setter()
{
  v0 = OUTLINED_FUNCTION_158_2();
  v8 = OUTLINED_FUNCTION_233(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14[0]);
  memcpy(v8, v9, 0x221uLL);
  sub_2171F0738(v14, &qword_27CB24400, &unk_21775E9A0);
  v10 = OUTLINED_FUNCTION_232_1();
  return memcpy(v10, v11, 0x221uLL);
}

uint64_t PlaylistPropertyProvider.trackTypes.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);

  return sub_217751DE8();
}

void PlaylistPropertyProvider.trackTypes.setter()
{
  v2 = *(OUTLINED_FUNCTION_158_2() + 124);

  *(v1 + v2) = v0;
}

uint64_t PlaylistPropertyProvider.versionHash.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void PlaylistPropertyProvider.versionHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for PlaylistPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t PlaylistPropertyProvider.editSessionID.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void PlaylistPropertyProvider.editSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for PlaylistPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t PlaylistPropertyProvider.favoriteStatus.setter()
{
  result = OUTLINED_FUNCTION_227_3();
  *(v1 + *(result + 144)) = v0;
  return result;
}

uint64_t PlaylistPropertyProvider.isLibraryAdded.setter()
{
  result = OUTLINED_FUNCTION_158_2();
  *(v1 + *(result + 148)) = v0;
  return result;
}

uint64_t PlaylistPropertyProvider.keepLocalEnabledStatus.setter()
{
  result = OUTLINED_FUNCTION_227_3();
  *(v1 + *(result + 152)) = v0;
  return result;
}

uint64_t PlaylistPropertyProvider.keepLocalManagedStatus.setter()
{
  result = OUTLINED_FUNCTION_227_3();
  *(v1 + *(result + 156)) = v0;
  return result;
}

uint64_t PlaylistPropertyProvider.keepLocalManagedStatusReasons.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for PlaylistPropertyProvider(0);
  v5 = v1 + *(result + 160);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t PlaylistPropertyProvider.contentRating.setter()
{
  result = OUTLINED_FUNCTION_227_3();
  *(v1 + *(result + 176)) = v0;
  return result;
}

uint64_t PlaylistPropertyProvider.isOwner.setter()
{
  result = OUTLINED_FUNCTION_158_2();
  *(v1 + *(result + 180)) = v0;
  return result;
}

uint64_t PlaylistPropertyProvider.isPinned.setter()
{
  result = OUTLINED_FUNCTION_158_2();
  *(v1 + *(result + 184)) = v0;
  return result;
}

uint64_t PlaylistPropertyProvider.isPublic.setter()
{
  result = OUTLINED_FUNCTION_158_2();
  *(v1 + *(result + 188)) = v0;
  return result;
}

uint64_t PlaylistPropertyProvider.isVisible.setter()
{
  result = OUTLINED_FUNCTION_158_2();
  *(v1 + *(result + 192)) = v0;
  return result;
}

void PlaylistPropertyProvider.parentDeviceLocalID.getter()
{
  v0 = OUTLINED_FUNCTION_166_3();
  v1 = OUTLINED_FUNCTION_197_3(*(v0 + 196));

  sub_2172A5428(v1, v2, v3, v4);
}

__n128 PlaylistPropertyProvider.parentDeviceLocalID.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_158_2() + 196);
  sub_2172B8404(*v2, *(v2 + 8));
  result = *v0;
  v4 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 16) = v4;
  return result;
}

uint64_t PlaylistPropertyProvider.editableComponents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for PlaylistPropertyProvider(0);
  v5 = v1 + *(result + 200);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t PlaylistPropertyProvider.variant.setter()
{
  result = OUTLINED_FUNCTION_227_3();
  *(v1 + *(result + 204)) = v0;
  return result;
}

void PlaylistPropertyProvider.pivotMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_166_3();
  v1 = OUTLINED_FUNCTION_197_3(*(v0 + 240));

  sub_2172838F8(v1, v2, v3, v4);
}

__n128 PlaylistPropertyProvider.pivotMetadata.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_158_2() + 240));
  sub_217283940(*v2, v2[1], v2[2], v2[3]);
  result = *v0;
  v4 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 1) = v4;
  return result;
}

uint64_t PlaylistPropertyProvider.recommendationReason.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void PlaylistPropertyProvider.recommendationReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for PlaylistPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t PlaylistPropertyProvider.searchContextSnippets.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);

  return sub_217751DE8();
}

void PlaylistPropertyProvider.searchContextSnippets.setter()
{
  v2 = *(OUTLINED_FUNCTION_158_2() + 248);

  *(v1 + v2) = v0;
}

void PlaylistPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v147 = v0;
  v148 = v2;
  v4 = v3;
  v146 = type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  v145 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v144 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v144 = (v13 - v14);
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v144 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_241();
  MEMORY[0x28223BE20](v19);
  v21 = &v144 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v144 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28220, &unk_21775E9E0);
  if (!swift_dynamicCastClass())
  {
    *&v152[0] = sub_21770B54C(42);
    *(&v152[0] + 1) = v92;
    MEMORY[0x21CEA23B0](0xD000000000000027, 0x80000002177ABD20);
    v151[0] = v4;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_169_0();
    v93 = 102;
LABEL_168:
    v144 = v93;
    OUTLINED_FUNCTION_177_3("Fatal error");
    __break(1u);
    goto LABEL_219;
  }

  v25 = qword_280BE91E8;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_149_3(&qword_280BE91E8);
  }

  if (OUTLINED_FUNCTION_159_3(qword_280C025C8))
  {
    v26 = v147;
    OUTLINED_FUNCTION_225_3(v151);
    v27 = v26;
    goto LABEL_6;
  }

  v29 = qword_280BE93B8;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_30_11(&qword_280BE93B8);
  }

  OUTLINED_FUNCTION_159_3(qword_280C026D0);
  OUTLINED_FUNCTION_161();
  if (v29)
  {
    goto LABEL_16;
  }

  v30 = qword_280BE9390;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_29_12(&qword_280BE9390);
  }

  OUTLINED_FUNCTION_159_3(qword_280C026B0);
  OUTLINED_FUNCTION_161();
  if (v30)
  {
LABEL_16:
    v26 = *(v147 + 552);
    if (v26)
    {
      v31 = &qword_27CB24C70;
      v32 = &unk_217759670;
LABEL_18:
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
      sub_217751DE8();
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_314;
  }

  v38 = qword_280BE8118;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_40_10(&qword_280BE8118);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02440);
  OUTLINED_FUNCTION_161();
  if (v38)
  {
    v26 = v147;
    OUTLINED_FUNCTION_229_2(v151);
    v27 = (v26 + 560);
LABEL_6:
    memcpy(v152, v27, 0x221uLL);
    OUTLINED_FUNCTION_104(v152);
    if (!v28)
    {
      swift_allocObject();
      v33 = OUTLINED_FUNCTION_190_4();
      memcpy(v33, v34, 0x221uLL);
      sub_217284028(v150, v149);

      memcpy((v26 + 16), v152, 0x221uLL);
      v35 = &type metadata for Artwork;
LABEL_20:
      OUTLINED_FUNCTION_76_6();
LABEL_21:
      v37 = v148;
      *v148 = v26;
      v37[1] = v10;
      v37[2] = v36;
      v37[3] = v35;
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  v39 = qword_280BE80E0;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_39_5(&qword_280BE80E0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02418);
  OUTLINED_FUNCTION_161();
  if (v39)
  {
    v26 = v147;
    OUTLINED_FUNCTION_222_2(v151);
    OUTLINED_FUNCTION_222_2(v152);
    if (sub_21726A450(v152) != 1)
    {
      swift_allocObject();
      v40 = OUTLINED_FUNCTION_190_4();
      memcpy(v40, v41, 0xE8uLL);
      sub_217350FD0(v150, v149);

      memcpy((v26 + 16), v152, 0xE8uLL);
      v35 = &type metadata for CloudCoverArtworkRecipe;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v42 = qword_280BE93B0;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_148_2(&qword_280BE93B0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C026C8);
  OUTLINED_FUNCTION_161();
  if (v42)
  {
    v10 = *(v147 + 1352);
    if (v10)
    {
      v26 = *(v147 + 1344);
LABEL_37:
      sub_217751DE8();

      v36 = 0;
      v35 = MEMORY[0x277D837D0];
      goto LABEL_21;
    }

    goto LABEL_122;
  }

  v43 = qword_280BE9230;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_147_3(&qword_280BE9230);
  }

  OUTLINED_FUNCTION_159_3(qword_280C025F0);
  OUTLINED_FUNCTION_161();
  if (v43)
  {
    v44 = *(v147 + 1456);
    goto LABEL_42;
  }

  v45 = qword_280BE80B8;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_146_3(&qword_280BE80B8);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02400);
  OUTLINED_FUNCTION_161();
  if (v45)
  {
    if (*(v147 + 1368))
    {
LABEL_48:

LABEL_49:
      v26 = 0;
LABEL_315:
      v10 = 0;
      goto LABEL_316;
    }

    v26 = *(v147 + 1360);
LABEL_56:

    OUTLINED_FUNCTION_76_6();
    v35 = MEMORY[0x277D83B88];
    goto LABEL_21;
  }

  v46 = qword_280BE9298;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_28_10(&qword_280BE9298);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02640);
  OUTLINED_FUNCTION_161();
  if (v46)
  {
    v26 = *(v147 + 1376);
    if (v26)
    {
      v31 = &qword_27CB24BE8;
      v32 = &qword_2177595F0;
      goto LABEL_18;
    }

    goto LABEL_314;
  }

  v47 = qword_280BE8100;

  if (v47 != -1)
  {
    OUTLINED_FUNCTION_144_2(&qword_280BE8100);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02428);
  OUTLINED_FUNCTION_161();
  if (v47)
  {
    v48 = *(v147 + 1384);
    v10 = *(v147 + 1392);
    v49 = (v147 + 1400);
    v50 = *(v147 + 1416);
    v150[0] = *(v147 + 1400);
    v150[1] = v50;
    v150[2] = *(v147 + 1432);
    if (v10 != 1)
    {
      v26 = swift_allocObject();
      *&v152[0] = v48;
      *(&v152[0] + 1) = v10;
      v51 = v49[1];
      v152[1] = *v49;
      v152[2] = v51;
      v152[3] = v49[2];
      sub_217350F74(v152, v151);

      *(v26 + 16) = v48;
      *(v26 + 24) = v10;
      v52 = v150[1];
      *(v26 + 32) = v150[0];
      *(v26 + 48) = v52;
      *(v26 + 64) = v150[2];
      v35 = &type metadata for EditorialNotes;
      goto LABEL_20;
    }

LABEL_8:

    v35 = 0;
LABEL_9:
    v26 = 0;
    goto LABEL_20;
  }

  v53 = qword_280BE9238;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_27_14(&qword_280BE9238);
  }

  OUTLINED_FUNCTION_159_3(qword_280C025F8);
  OUTLINED_FUNCTION_161();
  if (v53)
  {
    v26 = *(v147 + 1448);
    if (v26)
    {
      v31 = &qword_27CB24BE0;
      v32 = &unk_2177657E0;
      goto LABEL_18;
    }

    goto LABEL_314;
  }

  v54 = qword_280BE93A0;

  if (v54 != -1)
  {
    OUTLINED_FUNCTION_26_13(&qword_280BE93A0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C026C0);
  OUTLINED_FUNCTION_161();
  if (v54)
  {
    v55 = *(v147 + 1496);
    if (v55)
    {
      v56 = *(v147 + 1488);
      v57 = *(v147 + 1480);
      v58 = *(v147 + 1472);
      v59 = *(v147 + 1464);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BF0, &qword_21775EA20);
      OUTLINED_FUNCTION_207_2();
      v26 = swift_allocObject();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_76_6();
      *(v26 + 16) = v59;
      *(v26 + 24) = v58;
      *(v26 + 32) = v57;
      *(v26 + 40) = v56;
      *(v26 + 48) = v55;
      goto LABEL_21;
    }

    goto LABEL_48;
  }

  v60 = qword_280BE80A8;

  if (v60 != -1)
  {
    OUTLINED_FUNCTION_143_3(&qword_280BE80A8);
  }

  OUTLINED_FUNCTION_159_3(qword_280C023F0);
  OUTLINED_FUNCTION_161();
  if (v60)
  {
    v44 = *(v147 + 1504);
    goto LABEL_42;
  }

  v61 = qword_280BE80F0;

  if (v61 != -1)
  {
    OUTLINED_FUNCTION_142_3(&qword_280BE80F0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02420);
  OUTLINED_FUNCTION_161();
  if (v61)
  {
    v44 = *(v147 + 1505);
    goto LABEL_42;
  }

  v62 = qword_280BE9268;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_141_2(&qword_280BE9268);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02618);
  OUTLINED_FUNCTION_161();
  if (v62)
  {
    v44 = *(v147 + 1506);
    goto LABEL_42;
  }

  v63 = qword_280BE91B8;

  if (v63 != -1)
  {
    OUTLINED_FUNCTION_140_5(&qword_280BE91B8);
  }

  OUTLINED_FUNCTION_159_3(qword_280C025C0);
  OUTLINED_FUNCTION_161();
  if (v63)
  {
    v44 = *(v147 + 1507);
    goto LABEL_42;
  }

  v64 = qword_280BE92E8;

  if (v64 != -1)
  {
    OUTLINED_FUNCTION_139_4(&qword_280BE92E8);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02670);
  OUTLINED_FUNCTION_161();
  if (v64)
  {
    v44 = *(v147 + 1508);
    goto LABEL_42;
  }

  v65 = qword_280BE80D0;

  if (v65 != -1)
  {
    OUTLINED_FUNCTION_138_2(&qword_280BE80D0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02410);
  OUTLINED_FUNCTION_161();
  if (v65)
  {
    v44 = *(v147 + 1509);
    goto LABEL_42;
  }

  v66 = qword_280BE9210;

  if (v66 != -1)
  {
    OUTLINED_FUNCTION_137_2(&qword_280BE9210);
  }

  OUTLINED_FUNCTION_159_3(qword_280C025D8);
  OUTLINED_FUNCTION_161();
  if (v66)
  {
    v26 = *(v147 + 1510);

    if (v26 != 5)
    {
      OUTLINED_FUNCTION_76_6();
      v35 = &type metadata for Playlist.Kind;
      goto LABEL_21;
    }

    goto LABEL_49;
  }

  v67 = qword_280BE92C8;

  if (v67 != -1)
  {
    OUTLINED_FUNCTION_136_3(&qword_280BE92C8);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02658);
  OUTLINED_FUNCTION_161();
  if (v67)
  {
    sub_21726A630(v147 + v146[22], v24, &qword_27CB241C0, &qword_217759480);
    sub_2177517D8();
    OUTLINED_FUNCTION_73(v24);
    if (!v28)
    {
      goto LABEL_219;
    }

    v68 = &qword_27CB241C0;
    v69 = &qword_217759480;
    v70 = v24;
LABEL_107:
    sub_2171F0738(v70, v68, v69);
    goto LABEL_49;
  }

  v71 = qword_280BE92E0;

  if (v71 != -1)
  {
    OUTLINED_FUNCTION_135_2(&qword_280BE92E0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02668);
  OUTLINED_FUNCTION_161();
  if (v71)
  {
    v72 = v146[23];
LABEL_112:
    memcpy(v151, v72 + v147, 0x221uLL);
    memcpy(v152, v72 + v147, 0x221uLL);
    OUTLINED_FUNCTION_104(v152);
    if (!v28)
    {
      swift_allocObject();
      v76 = OUTLINED_FUNCTION_190_4();
      memcpy(v76, v77, 0x221uLL);
      sub_217284028(v150, v149);

      v78 = v72;
      memcpy(v72 + 2, v152, 0x221uLL);
      v35 = &type metadata for Artwork;
LABEL_128:
      OUTLINED_FUNCTION_76_6();
      v26 = v78;
      goto LABEL_21;
    }

    v35 = 0;
LABEL_115:
    v78 = 0;
    goto LABEL_128;
  }

  v73 = qword_280BE9208;

  if (v73 != -1)
  {
    OUTLINED_FUNCTION_134_3(&qword_280BE9208);
  }

  OUTLINED_FUNCTION_159_3(qword_280C025D0);
  OUTLINED_FUNCTION_161();
  if (v73)
  {
    v74 = v146[24];
    goto LABEL_120;
  }

  v79 = qword_280BE9340;

  if (v79 != -1)
  {
    OUTLINED_FUNCTION_132_3(&qword_280BE9340);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02688);
  OUTLINED_FUNCTION_161();
  if (v79)
  {
    v80 = (v147 + v146[25]);
    v10 = *v80;
    v35 = v80[1];
    memcpy(v150, v80 + 2, 0x68uLL);
    if (v35)
    {
      v81 = swift_allocObject();
      *&v152[0] = v10;
      *(&v152[0] + 1) = v35;
      memcpy(&v152[1], v80 + 2, 0x68uLL);
      sub_2172DF5A4(v152, v151);

      v81[2] = v10;
      v81[3] = v35;
      v78 = v81;
      memcpy(v81 + 4, v150, 0x68uLL);
      v35 = &type metadata for PlayParameters;
      goto LABEL_128;
    }

    goto LABEL_115;
  }

  v82 = qword_280BE92A8;

  if (v82 != -1)
  {
    OUTLINED_FUNCTION_131_5(&qword_280BE92A8);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02648);
  OUTLINED_FUNCTION_161();
  if (v82)
  {
    v74 = v146[26];
    goto LABEL_120;
  }

  v83 = qword_280BE9270;

  if (v83 != -1)
  {
    OUTLINED_FUNCTION_130_3(&qword_280BE9270);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02620);
  OUTLINED_FUNCTION_161();
  if (v83)
  {
    v74 = v146[27];
    goto LABEL_120;
  }

  v84 = qword_280BE9398;

  if (v84 != -1)
  {
    OUTLINED_FUNCTION_25_13(&qword_280BE9398);
  }

  OUTLINED_FUNCTION_159_3(qword_280C026B8);
  OUTLINED_FUNCTION_161();
  if (v84)
  {
    v85 = v146[28];
LABEL_142:
    v44 = *(v147 + v85);
LABEL_42:

    if (v44 != 2)
    {
      OUTLINED_FUNCTION_76_6();
      v26 = v44 & 1;
      v35 = MEMORY[0x277D839B0];
      goto LABEL_21;
    }

    goto LABEL_49;
  }

  v86 = qword_280BE93C0;

  if (v86 != -1)
  {
    OUTLINED_FUNCTION_24_14(&qword_280BE93C0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C026D8);
  OUTLINED_FUNCTION_161();
  if (v86)
  {
    v87 = v147 + v146[29];
    if (*(v87 + 8))
    {
      goto LABEL_48;
    }

    v26 = *v87;
    goto LABEL_56;
  }

  v88 = qword_280BE9278;

  if (v88 != -1)
  {
    OUTLINED_FUNCTION_129_3(&qword_280BE9278);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02628);
  OUTLINED_FUNCTION_161();
  if (v88)
  {
    v72 = v146[30];
    goto LABEL_112;
  }

  v89 = qword_280BE93D0;

  if (v89 != -1)
  {
    OUTLINED_FUNCTION_128_4(&qword_280BE93D0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C026E0);
  OUTLINED_FUNCTION_161();
  if (v89)
  {
    v26 = *(v147 + v146[31]);
    if (v26)
    {
      v31 = &qword_27CB24C58;
      v32 = &unk_2177677B0;
      goto LABEL_18;
    }

LABEL_314:

    goto LABEL_315;
  }

  v90 = qword_280BE9218;

  if (v90 != -1)
  {
    OUTLINED_FUNCTION_127_4(&qword_280BE9218);
  }

  OUTLINED_FUNCTION_159_3(qword_280C025E0);
  OUTLINED_FUNCTION_161();
  if (v90)
  {
    sub_21726A630(v147 + v146[32], v10, &unk_27CB277C0, &qword_217758DC0);
    sub_2177516D8();
    OUTLINED_FUNCTION_73(v10);
    if (!v28)
    {
      goto LABEL_219;
    }

    v68 = &unk_27CB277C0;
    v69 = &qword_217758DC0;
    v70 = v10;
    goto LABEL_107;
  }

  v91 = qword_280BE8128;

  if (v91 != -1)
  {
    OUTLINED_FUNCTION_23_16(&qword_280BE8128);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02448);
  OUTLINED_FUNCTION_161();
  if (v91)
  {
    v74 = v146[33];
    goto LABEL_120;
  }

  v94 = qword_280BE8110;

  if (v94 != -1)
  {
    OUTLINED_FUNCTION_125_3(&qword_280BE8110);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02438);
  OUTLINED_FUNCTION_161();
  if (v94)
  {
    v74 = v146[34];
    goto LABEL_120;
  }

  v95 = qword_280BE9368;

  if (v95 != -1)
  {
    OUTLINED_FUNCTION_124_5(&qword_280BE9368);
  }

  OUTLINED_FUNCTION_159_3(qword_280C026A0);
  OUTLINED_FUNCTION_161();
  if (v95)
  {
    sub_21726A630(v147 + v146[35], v21, &qword_27CB241C0, &qword_217759480);
    sub_2177517D8();
    OUTLINED_FUNCTION_73(v21);
    if (!v28)
    {
      goto LABEL_219;
    }

    v68 = &qword_27CB241C0;
    v69 = &qword_217759480;
    v70 = v21;
    goto LABEL_107;
  }

  v26 = qword_280BE9320;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_123(&qword_280BE9320);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02678);
  OUTLINED_FUNCTION_161();
  if (v26)
  {
    OUTLINED_FUNCTION_228_3();
    if (v26 != 3)
    {
      OUTLINED_FUNCTION_76_6();
      v35 = &type metadata for LegacyModelFavoriteStatus;
      goto LABEL_21;
    }

    goto LABEL_49;
  }

  v96 = qword_280BE9358;

  if (v96 != -1)
  {
    OUTLINED_FUNCTION_122_3(&qword_280BE9358);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02698);
  OUTLINED_FUNCTION_161();
  if (v96)
  {
    v85 = v146[37];
    goto LABEL_142;
  }

  v26 = qword_280BE9250;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_120_5(&qword_280BE9250);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02608);
  OUTLINED_FUNCTION_161();
  if (v26)
  {
    OUTLINED_FUNCTION_228_3();
    if (v26 != 5)
    {
      OUTLINED_FUNCTION_76_6();
      v35 = &type metadata for LegacyModelKeepLocalEnabledStatus;
      goto LABEL_21;
    }

    goto LABEL_49;
  }

  v26 = qword_280BE9248;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_119_4(&qword_280BE9248);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02600);
  OUTLINED_FUNCTION_161();
  if (v26)
  {
    OUTLINED_FUNCTION_228_3();
    if (v26 != 7)
    {
      OUTLINED_FUNCTION_76_6();
      v35 = &type metadata for LegacyModelKeepLocalManagedStatus;
      goto LABEL_21;
    }

    goto LABEL_49;
  }

  v97 = qword_280BE9220;

  if (v97 != -1)
  {
    OUTLINED_FUNCTION_118_4(&qword_280BE9220);
  }

  OUTLINED_FUNCTION_159_3(qword_280C025E8);
  OUTLINED_FUNCTION_161();
  if (v97)
  {
    v98 = v147 + v146[40];
    if ((*(v98 + 8) & 1) == 0)
    {
      v26 = *v98;

      OUTLINED_FUNCTION_76_6();
      v35 = &type metadata for LegacyModelKeepLocalManagedStatusReasons;
      goto LABEL_21;
    }

    goto LABEL_48;
  }

  v99 = qword_280BE9350;

  if (v99 != -1)
  {
    OUTLINED_FUNCTION_117_6(&qword_280BE9350);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02690);
  OUTLINED_FUNCTION_161();
  if (v99)
  {
    sub_21726A630(v147 + v146[43], v1, &qword_27CB241C0, &qword_217759480);
    sub_2177517D8();
    OUTLINED_FUNCTION_73(v1);
    if (!v28)
    {
      goto LABEL_219;
    }

    v68 = &qword_27CB241C0;
    v69 = &qword_217759480;
    v70 = v1;
    goto LABEL_107;
  }

  v100 = qword_280BE92B8;

  if (v100 != -1)
  {
    OUTLINED_FUNCTION_116_5(&qword_280BE92B8);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02650);
  OUTLINED_FUNCTION_161();
  if (v100)
  {
    sub_21726A630(v147 + v146[41], v17, &qword_27CB241C0, &qword_217759480);
    sub_2177517D8();
    OUTLINED_FUNCTION_73(v17);
    if (!v28)
    {
      goto LABEL_219;
    }

    v68 = &qword_27CB241C0;
    v69 = &qword_217759480;
    v70 = v17;
    goto LABEL_107;
  }

  v101 = qword_280BE9330;

  if (v101 != -1)
  {
    OUTLINED_FUNCTION_114_3(&qword_280BE9330);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02680);
  OUTLINED_FUNCTION_161();
  if (v101)
  {
    v102 = v144;
    sub_21726A630(v147 + v146[42], v144, &qword_27CB241C0, &qword_217759480);
    sub_2177517D8();
    OUTLINED_FUNCTION_73(v102);
    if (v28)
    {

      v68 = &qword_27CB241C0;
      v69 = &qword_217759480;
      v70 = v144;
      goto LABEL_107;
    }

LABEL_219:
    OUTLINED_FUNCTION_224_2();
    OUTLINED_FUNCTION_58();
    (*(v104 + 32))();

    v10 = *(&v152[0] + 1);
    v26 = *&v152[0];
    v35 = *(&v152[1] + 1);
    v36 = *&v152[1];
    goto LABEL_21;
  }

  v103 = qword_280BE9388;

  if (v103 != -1)
  {
    OUTLINED_FUNCTION_113_5(&qword_280BE9388);
  }

  OUTLINED_FUNCTION_159_3(qword_280C026A8);
  OUTLINED_FUNCTION_161();
  if (v103)
  {
    OUTLINED_FUNCTION_228_3();
    if (v103 != 2)
    {
      OUTLINED_FUNCTION_76_6();
      v26 = v103 & 1;
      v35 = &type metadata for ContentRating;
      goto LABEL_21;
    }

    goto LABEL_49;
  }

  v105 = qword_280BE80A0;

  if (v105 != -1)
  {
    OUTLINED_FUNCTION_112_5(&qword_280BE80A0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C023E8);
  OUTLINED_FUNCTION_161();
  if (v105)
  {
    v85 = v146[45];
    goto LABEL_142;
  }

  v106 = qword_280BE8090;

  if (v106 != -1)
  {
    OUTLINED_FUNCTION_111_5(&qword_280BE8090);
  }

  OUTLINED_FUNCTION_159_3(qword_280C023E0);
  OUTLINED_FUNCTION_161();
  if (v106)
  {
    v85 = v146[46];
    goto LABEL_142;
  }

  v107 = qword_280BE9198;

  if (v107 != -1)
  {
    OUTLINED_FUNCTION_110_4(&qword_280BE9198);
  }

  OUTLINED_FUNCTION_159_3(qword_280C025B0);
  OUTLINED_FUNCTION_161();
  if (v107)
  {
    v85 = v146[47];
    goto LABEL_142;
  }

  v108 = qword_280BE8080;

  if (v108 != -1)
  {
    OUTLINED_FUNCTION_109_3(&qword_280BE8080);
  }

  OUTLINED_FUNCTION_159_3(qword_280C023D8);
  OUTLINED_FUNCTION_161();
  if (v108)
  {
    v85 = v146[48];
    goto LABEL_142;
  }

  v109 = qword_280BE80C8;

  if (v109 != -1)
  {
    OUTLINED_FUNCTION_108_4(&qword_280BE80C8);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02408);
  OUTLINED_FUNCTION_161();
  if (v109)
  {
    v110 = (v147 + v146[49]);
    v35 = v110[1];
    if (v35)
    {
      v112 = v110[2];
      v111 = v110[3];
      v113 = *v110;
      v26 = swift_allocObject();
      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_76_6();
      *(v26 + 16) = v113;
      *(v26 + 24) = v35;
      *(v26 + 32) = v112;
      *(v26 + 40) = v111;
      v35 = &type metadata for MusicDeviceLocalID;
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v114 = qword_280BE9288;

  if (v114 != -1)
  {
    OUTLINED_FUNCTION_107_4(&qword_280BE9288);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02630);
  OUTLINED_FUNCTION_161();
  if (v114)
  {
    v115 = v147 + v146[50];
    if ((*(v115 + 8) & 1) == 0)
    {
      v26 = *v115;

      OUTLINED_FUNCTION_76_6();
      v35 = &type metadata for LegacyModelPlaylistEditableComponents;
      goto LABEL_21;
    }

    goto LABEL_48;
  }

  v26 = qword_280BE91A0;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_280BE91A0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C025B8);
  OUTLINED_FUNCTION_161();
  if (v26)
  {
    OUTLINED_FUNCTION_228_3();
    if (v26 != 10)
    {
      OUTLINED_FUNCTION_76_6();
      v35 = &type metadata for LegacyModelPlaylistType;
      goto LABEL_21;
    }

    goto LABEL_49;
  }

  v116 = qword_280BE92D0;

  if (v116 != -1)
  {
    OUTLINED_FUNCTION_22_13(&qword_280BE92D0);
  }

  OUTLINED_FUNCTION_159_3(qword_280C02660);
  OUTLINED_FUNCTION_161();
  if (v116)
  {
    v117 = v146[52];
LABEL_297:
    OUTLINED_FUNCTION_188_3(&qword_27CB25330, &unk_21775E9B0, v117);
    if (*(&v152[5] + 1))
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
      goto LABEL_299;
    }

    v68 = &qword_27CB25330;
    v69 = &unk_21775E9B0;
LABEL_302:
    v70 = v152;
    goto LABEL_107;
  }

  v118 = qword_280BE91D8;

  if (v118 != -1)
  {
    OUTLINED_FUNCTION_21_12(&qword_280BE91D8);
  }

  OUTLINED_FUNCTION_159_3(qword_280BE91E0);
  OUTLINED_FUNCTION_161();
  if (v118)
  {
    OUTLINED_FUNCTION_188_3(&qword_27CB25610, &qword_21775D540, v146[53]);
    if (!*(&v152[5] + 1))
    {

      v68 = &qword_27CB25610;
      v69 = &qword_21775D540;
      goto LABEL_302;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25638, &unk_21775EA10);
LABEL_299:
    v26 = swift_allocObject();
    v126 = (v26 + 16);
    v127 = 104;
LABEL_300:
    memcpy(v126, v152, v127);
    goto LABEL_19;
  }

  v119 = qword_280BE91A8;

  if (v119 != -1)
  {
    OUTLINED_FUNCTION_20_15(&qword_280BE91A8);
  }

  OUTLINED_FUNCTION_159_3(qword_280BE91B0);
  OUTLINED_FUNCTION_161();
  if (v119)
  {
    v117 = v146[55];
    goto LABEL_297;
  }

  v120 = qword_280BE9188;

  if (v120 != -1)
  {
    OUTLINED_FUNCTION_13_15();
    swift_once();
  }

  OUTLINED_FUNCTION_159_3(qword_280BE9190);
  OUTLINED_FUNCTION_161();
  if (v120)
  {
    OUTLINED_FUNCTION_188_3(&qword_27CB25608, &unk_21775D530, v146[54]);
    if (!*(&v152[5] + 1))
    {

      v68 = &qword_27CB25608;
      v69 = &unk_21775D530;
      goto LABEL_302;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25630, &qword_21775D568);
    goto LABEL_299;
  }

  v121 = qword_280BE91F0;

  if (v121 != -1)
  {
    OUTLINED_FUNCTION_12_13();
    swift_once();
  }

  OUTLINED_FUNCTION_159_3(qword_280BE91F8);
  OUTLINED_FUNCTION_161();
  if (v121)
  {
    v122 = v146[56];
LABEL_326:
    OUTLINED_FUNCTION_188_3(&unk_27CB28A60, &qword_217770B60, v122);
    if (*(&v152[5] + 1))
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240D0, &unk_21775D400);
      goto LABEL_299;
    }

    v68 = &unk_27CB28A60;
    v69 = &qword_217770B60;
    goto LABEL_302;
  }

  v123 = qword_280BE91C0;

  if (v123 != -1)
  {
    OUTLINED_FUNCTION_11_22();
    swift_once();
  }

  OUTLINED_FUNCTION_159_3(qword_280BE91C8);
  OUTLINED_FUNCTION_161();
  if (v123)
  {
    OUTLINED_FUNCTION_188_3(&unk_27CB28A30, &unk_21775E9C0, v146[57]);
    if (!*(&v152[5] + 1))
    {

      v68 = &unk_27CB28A30;
      v69 = &unk_21775E9C0;
      goto LABEL_302;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACA0, &unk_217759C60);
    goto LABEL_299;
  }

  v124 = qword_280BE92F8;

  if (v124 != -1)
  {
    OUTLINED_FUNCTION_10_13();
    swift_once();
  }

  OUTLINED_FUNCTION_159_3(qword_280BE9300);
  OUTLINED_FUNCTION_161();
  if (v124)
  {
    OUTLINED_FUNCTION_188_3(&qword_27CB25310, &unk_21775D3D0, v146[58]);
    if (!*(&v152[5] + 1))
    {

      v68 = &qword_27CB25310;
      v69 = &unk_21775D3D0;
      goto LABEL_302;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
    goto LABEL_299;
  }

  v125 = qword_280BE9370;

  if (v125 != -1)
  {
    OUTLINED_FUNCTION_9_16();
    swift_once();
  }

  OUTLINED_FUNCTION_159_3(qword_280BE9378);
  OUTLINED_FUNCTION_161();
  if (v125)
  {
    v117 = v146[59];
    goto LABEL_297;
  }

  v128 = qword_280BE8108;

  if (v128 != -1)
  {
    OUTLINED_FUNCTION_8_19();
    swift_once();
  }

  OUTLINED_FUNCTION_159_3(qword_280C02430);
  OUTLINED_FUNCTION_161();
  if (v128)
  {
    v129 = (v147 + v146[60]);
    v130 = v129[1];
    if (v130 != 1)
    {
      v132 = v129[2];
      v131 = v129[3];
      v133 = *v129;
      v26 = swift_allocObject();
      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_76_6();
      *(v26 + 16) = v133;
      *(v26 + 24) = v130;
      *(v26 + 32) = v132;
      *(v26 + 40) = v131;
      v35 = &type metadata for CloudPivotMetadata;
      goto LABEL_21;
    }

    goto LABEL_48;
  }

  v134 = qword_280BE9260;

  if (v134 != -1)
  {
    OUTLINED_FUNCTION_7_15();
    swift_once();
  }

  OUTLINED_FUNCTION_159_3(qword_280C02610);
  OUTLINED_FUNCTION_161();
  if (v134)
  {
    v74 = v146[61];
LABEL_120:
    v75 = (v147 + v74);
    v10 = v75[1];
    if (v10)
    {
      v26 = *v75;
      goto LABEL_37;
    }

LABEL_122:

    v26 = 0;
LABEL_316:
    v36 = 0;
    v35 = 0;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A8, &unk_21775D4F0);
  swift_allocObject();
  v135 = OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_159_3(v135);
  OUTLINED_FUNCTION_5_4();

  v136 = qword_280BE9290;

  if (v136 != -1)
  {
    OUTLINED_FUNCTION_6_17();
    swift_once();
  }

  OUTLINED_FUNCTION_159_3(qword_280C02638);
  OUTLINED_FUNCTION_161();
  if (v136)
  {
    OUTLINED_FUNCTION_188_3(&qword_27CB24230, &unk_21775E9D0, v146[63]);
    if (*&v152[1])
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24238, &unk_21775EA00);
      v26 = swift_allocObject();
      v126 = (v26 + 16);
      v127 = 128;
      goto LABEL_300;
    }

    v68 = &qword_27CB24230;
    v69 = &unk_21775E9D0;
    goto LABEL_302;
  }

  v137 = qword_280BE80B0;

  if (v137 != -1)
  {
    OUTLINED_FUNCTION_5_20();
    swift_once();
  }

  OUTLINED_FUNCTION_159_3(qword_280C023F8);
  OUTLINED_FUNCTION_161();
  if (v137)
  {
    v122 = v146[64];
    goto LABEL_326;
  }

  v138 = qword_280BE9308;

  if (v138 != -1)
  {
    OUTLINED_FUNCTION_4_30();
    swift_once();
  }

  OUTLINED_FUNCTION_159_3(qword_280BE9310);
  OUTLINED_FUNCTION_161();
  if (v138)
  {
    OUTLINED_FUNCTION_188_3(&qword_27CB24BA8, &unk_217772FF0, v146[65]);
    if (*(&v152[1] + 1))
    {
      OUTLINED_FUNCTION_207_2();
      v26 = swift_allocObject();
      v139 = v152[1];
      *(v26 + 16) = v152[0];
      *(v26 + 32) = v139;
      *(v26 + 48) = *&v152[2];

      OUTLINED_FUNCTION_76_6();
      v35 = &type metadata for AnyPropertyProviderExtendedStorage;
      goto LABEL_21;
    }

    v68 = &qword_27CB24BA8;
    v69 = &unk_217772FF0;
    goto LABEL_302;
  }

  sub_217350E10(v147, v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BE8, &unk_21775E9F0);
  if (!swift_dynamicCast())
  {
    *&v152[0] = sub_21770B54C(24);
    *(&v152[0] + 1) = v142;
    MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
    v151[0] = v4;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_169_0();
    v93 = 241;
    goto LABEL_168;
  }

  __swift_destroy_boxed_opaque_existential_1(v152);
  OUTLINED_FUNCTION_188_3(&qword_27CB24BA8, &unk_217772FF0, v146[65]);
  if (*(&v152[1] + 1))
  {
    __swift_project_boxed_opaque_existential_1(v152, *(&v152[1] + 1));
    v140 = OUTLINED_FUNCTION_240();
    v141(v140);

    sub_217350E74(v152);
  }

  else
  {

    sub_2171F0738(v152, &qword_27CB24BA8, &unk_217772FF0);
    v143 = v148;
    *v148 = 0u;
    *(v143 + 1) = 0u;
  }

LABEL_22:
  OUTLINED_FUNCTION_13();
}

void sub_217348C9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_21726A630(a1, &v3, &qword_27CB2AD40, &qword_2177583F0);

  PlaylistPropertyProvider.subscript.setter();
}

void PlaylistPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_12();
  v3 = v1;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_158_2();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  v9 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28220, &unk_21775E9E0);
  OUTLINED_FUNCTION_148();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    v37 = &v58;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000027, 0x80000002177ABD20);
    *&v55 = v5;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_169_0();
    v52 = 248;
    goto LABEL_97;
  }

  v2 = v10;
  v11 = qword_280BE93B8;
  OUTLINED_FUNCTION_200_2();
  swift_retain_n();
  if (v11 != -1)
  {
    OUTLINED_FUNCTION_30_11(&qword_280BE93B8);
  }

  OUTLINED_FUNCTION_168(qword_280C026D0);
  OUTLINED_FUNCTION_5_4();

  if (v11)
  {
    goto LABEL_8;
  }

  v12 = qword_280BE9390;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_29_12(&qword_280BE9390);
  }

  OUTLINED_FUNCTION_168(qword_280C026B0);
  OUTLINED_FUNCTION_5_4();

  if (v12)
  {
LABEL_8:
    swift_getKeyPath("\bN=e");
LABEL_9:
    OUTLINED_FUNCTION_101_3();
    sub_21734999C();
LABEL_10:
    OUTLINED_FUNCTION_200_2();

LABEL_11:
    sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
    goto LABEL_12;
  }

  v13 = qword_280BE9298;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_28_10(&qword_280BE9298);
  }

  OUTLINED_FUNCTION_168(qword_280C02640);
  OUTLINED_FUNCTION_5_4();

  if (v13)
  {
    swift_getKeyPath(" N=e");
    goto LABEL_9;
  }

  v14 = qword_280BE9238;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_27_14(&qword_280BE9238);
  }

  OUTLINED_FUNCTION_168(qword_280C025F8);
  OUTLINED_FUNCTION_5_4();

  if (v14)
  {
    swift_getKeyPath("8N=e");
    goto LABEL_9;
  }

  v15 = qword_280BE93A0;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_26_13(&qword_280BE93A0);
  }

  OUTLINED_FUNCTION_168(qword_280C026C0);
  OUTLINED_FUNCTION_5_4();

  if (v15)
  {
    swift_getKeyPath("PN=e");
    OUTLINED_FUNCTION_79_1();
    sub_217349F30(v16, v17);
    goto LABEL_10;
  }

  v18 = qword_280BE9398;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_25_13(&qword_280BE9398);
  }

  OUTLINED_FUNCTION_168(qword_280C026B8);
  OUTLINED_FUNCTION_5_4();

  if (v18)
  {
    swift_getKeyPath("hN=e");
    OUTLINED_FUNCTION_79_1();
    sub_217349E1C();
    goto LABEL_10;
  }

  v19 = qword_280BE93C0;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_24_14(&qword_280BE93C0);
  }

  OUTLINED_FUNCTION_168(qword_280C026D8);
  OUTLINED_FUNCTION_5_4();

  if (v19)
  {
    swift_getKeyPath(byte_21775EC08);
    OUTLINED_FUNCTION_101_3();
    sub_217349C7C(v20, v21, v22);
    goto LABEL_10;
  }

  v23 = qword_280BE8128;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_23_16(&qword_280BE8128);
  }

  OUTLINED_FUNCTION_168(qword_280C02448);
  OUTLINED_FUNCTION_5_4();

  if (v23)
  {
    swift_getKeyPath(byte_21775EBE8);
LABEL_37:
    OUTLINED_FUNCTION_79_1();
    sub_217349D9C();
    goto LABEL_10;
  }

  v24 = qword_280BE92D0;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_22_13(&qword_280BE92D0);
  }

  OUTLINED_FUNCTION_168(qword_280C02660);
  OUTLINED_FUNCTION_5_4();

  if (v24)
  {
    swift_getKeyPath(byte_21775EBC8);
LABEL_46:
    OUTLINED_FUNCTION_101_3();
    sub_21734A10C();
    goto LABEL_10;
  }

  v25 = qword_280BE91D8;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_21_12(&qword_280BE91D8);
  }

  OUTLINED_FUNCTION_168(qword_280BE91E0);
  OUTLINED_FUNCTION_5_4();

  if (v25)
  {
    swift_getKeyPath(byte_21775EBA8);
    goto LABEL_46;
  }

  v26 = qword_280BE91C0;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_11_22();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE91C8);
  OUTLINED_FUNCTION_5_4();

  if (v26)
  {
    swift_getKeyPath(byte_21775EB88);
    OUTLINED_FUNCTION_101_3();
    sub_21734A10C();
    OUTLINED_FUNCTION_200_2();

    *(v3 + 1456) = 0;
    goto LABEL_11;
  }

  v27 = qword_280BE91A8;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_20_15(&qword_280BE91A8);
  }

  OUTLINED_FUNCTION_168(qword_280BE91B0);
  OUTLINED_FUNCTION_5_4();

  if (v27)
  {
    swift_getKeyPath(byte_21775EB68);
    goto LABEL_46;
  }

  v28 = qword_280BE9188;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_13_15();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE9190);
  OUTLINED_FUNCTION_5_4();

  if (v28)
  {
    swift_getKeyPath(byte_21775EB48);
    goto LABEL_46;
  }

  v29 = qword_280BE91F0;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_12_13();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE91F8);
  OUTLINED_FUNCTION_5_4();

  if (v29)
  {
    swift_getKeyPath("(O=e");
    goto LABEL_46;
  }

  v30 = qword_280BE92F8;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_10_13();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE9300);
  OUTLINED_FUNCTION_5_4();

  if (v30)
  {
    swift_getKeyPath("@O=e");
    goto LABEL_46;
  }

  v31 = qword_280BE9370;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_9_16();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE9378);
  OUTLINED_FUNCTION_5_4();

  if (v31)
  {
    swift_getKeyPath("XO=e");
    goto LABEL_46;
  }

  v32 = qword_280BE8108;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_8_19();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280C02430);
  OUTLINED_FUNCTION_5_4();

  if (v32)
  {
    swift_getKeyPath("pO=e");
    OUTLINED_FUNCTION_79_1();
    sub_217349EA0();
    goto LABEL_10;
  }

  v33 = qword_280BE9260;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_7_15();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280C02610);
  OUTLINED_FUNCTION_5_4();

  if (v33)
  {
    swift_getKeyPath(byte_21775EAA8);
    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A8, &unk_21775D4F0);
  swift_initStackObject();
  v34 = OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_168(v34);
  OUTLINED_FUNCTION_5_4();

  v35 = qword_280BE9290;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_6_17();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280C02638);
  OUTLINED_FUNCTION_5_4();

  if (v35)
  {
    swift_getKeyPath(byte_21775EA68);
    OUTLINED_FUNCTION_101_3();
    sub_21734A204();
    goto LABEL_10;
  }

  v36 = qword_280BE80B0;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_5_20();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280C023F8);
  OUTLINED_FUNCTION_5_4();

  if (v36)
  {
    swift_getKeyPath(byte_21775EA48);
    goto LABEL_46;
  }

  v37 = qword_280BE9308;

  if (v37 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    OUTLINED_FUNCTION_168(qword_280BE9310);
    OUTLINED_FUNCTION_5_4();

    if (v37)
    {
      swift_getKeyPath(byte_21775EA28);
      OUTLINED_FUNCTION_79_1();
      sub_21734A080();
      goto LABEL_10;
    }

    sub_217350E10(v3, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BE8, &unk_21775E9F0);
    if (swift_dynamicCast())
    {
      break;
    }

    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    v37 = &v58;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000024, 0x80000002177ABD70);
    *&v55 = v2;
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_169_0();
    v52 = 312;
LABEL_97:
    v53 = v52;
    OUTLINED_FUNCTION_177_3("Fatal error");
    __break(1u);
LABEL_98:
    OUTLINED_FUNCTION_4_30();
    swift_once();
  }

  __swift_destroy_boxed_opaque_existential_1(&v58);
  v38 = v3 + *(v6 + 260);
  sub_21726A630(v38, &v55, &qword_27CB24BA8, &unk_217772FF0);
  if (*(&v56 + 1))
  {
    v58 = v55;
    v59 = v56;
    v60 = v57;
    OUTLINED_FUNCTION_253(v0, &v55);
    OUTLINED_FUNCTION_253(&v55, v54);
    v39 = *(&v59 + 1);
    v40 = v60;
    __swift_mutable_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
    (*(v40 + 48))(v54, v5, v39, v40);

    sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
    sub_2171F0738(&v55, &qword_27CB2AD40, &qword_2177583F0);
    sub_2171F0738(v38, &qword_27CB24BA8, &unk_217772FF0);
    v41 = v59;
    *v38 = v58;
    *(v38 + 16) = v41;
    *(v38 + 32) = v60;
  }

  else
  {
    sub_2171F0738(&v55, &qword_27CB24BA8, &unk_217772FF0);
    v42 = dynamic_cast_existential_1_conditional(v6, v6, &protocol descriptor for PropertyProviderExtendedStorage);
    if (v42)
    {
      v44 = v42;
      v45 = v43;
      v46 = *(v43 + 24);
      *(&v59 + 1) = v42;
      v60 = v43;
      __swift_allocate_boxed_opaque_existential_0Tm(&v58);
      v46(v44, v45);
      sub_21726A630(v0, &v55, &qword_27CB2AD40, &qword_2177583F0);
      v47 = *(&v59 + 1);
      v48 = v60;
      __swift_mutable_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
      v49 = *(v45 + 48);

      v49(&v55, v5, v47, v48);
      v50 = *(&v59 + 1);
      v51 = v60;
      __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
      PropertyProviderExtendedStorage.eraseToAnyPropertyProviderExtendedStorage()(v50, v51, &v55);
      OUTLINED_FUNCTION_200_2();

      sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
      sub_21733BBDC(&v55, v38, &qword_27CB24BA8, &unk_217772FF0);
      __swift_destroy_boxed_opaque_existential_1(&v58);
    }

    else
    {
      sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
      OUTLINED_FUNCTION_200_2();
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21734999C()
{
  OUTLINED_FUNCTION_89_6();
  v1 = OUTLINED_FUNCTION_210_3(v0);
  OUTLINED_FUNCTION_253(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v3 = OUTLINED_FUNCTION_240();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  swift_dynamicCast();
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217349A38(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  OUTLINED_FUNCTION_253(a2, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  OUTLINED_FUNCTION_168_0();
  v7 = sub_2177516D8();
  v8 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v6, v8 ^ 1u, 1, v7);
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217349B38()
{
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v0, v1, v2, v3);
  OUTLINED_FUNCTION_194_3();
  swift_dynamicCast();
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217349BC4()
{
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v0, v1, v2, v3);
  OUTLINED_FUNCTION_194_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C70, &unk_217775710);
  if (swift_dynamicCast())
  {
    nullsub_1();
  }

  else
  {
    sub_21733B710(__src);
    memcpy(__dst, __src, sizeof(__dst));
  }

  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217349C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_89_6();
  v4 = OUTLINED_FUNCTION_210_3(v3);
  sub_21726A630(v4, v5, &qword_27CB2AD40, &qword_2177583F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  swift_dynamicCast();
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217349D18()
{
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_210_3(v0);
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v1, v2, v3, v4);
  OUTLINED_FUNCTION_194_3();
  OUTLINED_FUNCTION_168_0();
  type metadata accessor for Album.TracksPopularityProvider();
  swift_dynamicCast();
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217349D9C()
{
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_210_3(v0);
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v1, v2, v3, v4);
  OUTLINED_FUNCTION_194_3();
  swift_dynamicCast();
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217349E1C()
{
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_210_3(v0);
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v1, v2, v3, v4);
  OUTLINED_FUNCTION_194_3();
  swift_dynamicCast();
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217349EA0()
{
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v0, v1, v2, v3);
  OUTLINED_FUNCTION_194_3();
  swift_dynamicCast();
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217349F30(uint64_t a1, uint64_t a2)
{
  sub_21726A630(a2, v3, &qword_27CB2AD40, &qword_2177583F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BF0, &qword_21775EA20);
  swift_dynamicCast();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217349FE4()
{
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v0, v1, v2, v3);
  OUTLINED_FUNCTION_194_3();
  swift_dynamicCast();
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_21734A080()
{
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v0, v1, v2, v3);
  OUTLINED_FUNCTION_194_3();
  swift_dynamicCast();
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_21734A10C()
{
  OUTLINED_FUNCTION_89_6();
  sub_21726A630(v0, v11, &qword_27CB2AD40, &qword_2177583F0);
  if (v12)
  {
    v1 = OUTLINED_FUNCTION_240();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
    if ((OUTLINED_FUNCTION_251(v3, v4, v5, v3, v6, v7, v8, v9, v11[0], v11[1], v11[2], v12, v13) & 1) == 0)
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    sub_2171F0738(v11, &qword_27CB2AD40, &qword_2177583F0);
    OUTLINED_FUNCTION_242();
    v19 = 0;
  }

  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_21734A204()
{
  OUTLINED_FUNCTION_89_6();
  sub_21726A630(v0, v12, &qword_27CB2AD40, &qword_2177583F0);
  if (v13)
  {
    v1 = OUTLINED_FUNCTION_240();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
    if ((OUTLINED_FUNCTION_251(v3, v4, v5, v3, v6, v7, v8, v9, v12[0], v12[1], v12[2], v13, v14) & 1) == 0)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    sub_2171F0738(v12, &qword_27CB2AD40, &qword_2177583F0);
    *&v10 = OUTLINED_FUNCTION_242();
    v20 = v10;
    v21 = v10;
  }

  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

void (*PlaylistPropertyProvider.subscript.modify(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  PlaylistPropertyProvider.subscript.getter();
  return sub_21734A354;
}

void sub_21734A354(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    PlaylistPropertyProvider.subscript.setter();
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    PlaylistPropertyProvider.subscript.setter();
  }

  free(v2);
}

void PlaylistPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v113 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BF8, &unk_217794A10);
  OUTLINED_FUNCTION_45_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v112 - v9;
  v11 = type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v112 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, qword_21775ECD0);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    OUTLINED_FUNCTION_155_3();
    sub_217752AA8();
    OUTLINED_FUNCTION_126_4();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177ABDA0);
    *&v116[0] = v5;
    type metadata accessor for PartialMusicAsyncProperty(0, *(v6 + 216), v107, v108);
    sub_217753018();
    v96 = v117;
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_121_4();
    v109 = 320;
    goto LABEL_181;
  }

  v1 = v20;
  sub_2171FF30C(v3, v117);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  OUTLINED_FUNCTION_39_0();
  if (!swift_dynamicCast())
  {
    v110 = OUTLINED_FUNCTION_181();
    __swift_storeEnumTagSinglePayload(v110, v111, 1, v11);
    sub_2171F0738(v10, &qword_27CB25BF8, &unk_217794A10);
    OUTLINED_FUNCTION_155_3();
    sub_217752AA8();
    OUTLINED_FUNCTION_126_4();
    MEMORY[0x21CEA23B0](0xD000000000000030, 0x80000002177ABDD0);
    sub_217752C78();
    v96 = v117;
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_121_4();
    v109 = 323;
    goto LABEL_181;
  }

  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  sub_2173510D8(v10, v18);
  v21 = qword_280BE93B8;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_30_11(&qword_280BE93B8);
  }

  OUTLINED_FUNCTION_174(qword_280C026D0);
  OUTLINED_FUNCTION_173_3();
  if (v21)
  {
    goto LABEL_9;
  }

  v22 = qword_280BE9390;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_29_12(&qword_280BE9390);
  }

  OUTLINED_FUNCTION_174(qword_280C026B0);
  OUTLINED_FUNCTION_173_3();
  if (v22)
  {
LABEL_9:

    v23 = *(v18 + 69);
    sub_217751DE8();
    sub_21735113C(v18);
    v24 = v113;
    if (!v23)
    {
      v23 = sub_217751DE8();
    }

    v24[69] = v23;
    goto LABEL_12;
  }

  v25 = qword_280BE8118;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_40_10(&qword_280BE8118);
  }

  v26 = qword_280C02440;
  LOBYTE(v3) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28220, &unk_21775E9E0);
  if (static AnyMusicProperty.== infix(_:_:)(v26, v1))
  {
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_257(v116);
    sub_21726A630(v116, v117, &qword_27CB24400, &unk_21775E9A0);
    sub_21735113C(v18);
    memcpy(v117, v116, 0x221uLL);
    OUTLINED_FUNCTION_104(v117);
    if (v27)
    {
      v32 = v113;
      OUTLINED_FUNCTION_229_2(v114);
      sub_21726A630(v114, v115, &qword_27CB24400, &unk_21775E9A0);
      memcpy(v115, v114, sizeof(v115));
    }

    else
    {
      memcpy(v115, v116, sizeof(v115));
      v32 = v113;
    }

    OUTLINED_FUNCTION_229_2(v114);
    sub_2171F0738(v114, &qword_27CB24400, &unk_21775E9A0);
    v33 = v32 + 70;
    v34 = 545;
LABEL_32:
    memcpy(v33, v115, v34);
    goto LABEL_12;
  }

  v28 = qword_280BE80E0;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_39_5(&qword_280BE80E0);
  }

  v29 = OUTLINED_FUNCTION_179();
  static AnyMusicProperty.== infix(_:_:)(v29, v30);
  OUTLINED_FUNCTION_5_4();

  if (v3)
  {
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_256(v116);
    sub_21726A630(v116, v117, &qword_27CB25BE0, &qword_217794B20);
    sub_21735113C(v18);
    memcpy(v117, v116, 0xE8uLL);
    if (sub_21726A450(v117) == 1)
    {
      v31 = v113;
      OUTLINED_FUNCTION_222_2(v114);
      sub_21726A630(v114, v115, &qword_27CB25BE0, &qword_217794B20);
      memcpy(v115, v114, 0xE8uLL);
    }

    else
    {
      memcpy(v115, v116, 0xE8uLL);
      v31 = v113;
    }

    OUTLINED_FUNCTION_222_2(v114);
    sub_2171F0738(v114, &qword_27CB25BE0, &qword_217794B20);
    v33 = v31 + 139;
    v34 = 232;
    goto LABEL_32;
  }

  v35 = qword_280BE91D8;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_21_12(&qword_280BE91D8);
  }

  OUTLINED_FUNCTION_174(qword_280BE91E0);
  OUTLINED_FUNCTION_173_3();
  if ((v35 & 1) == 0)
  {
    v36 = qword_280BE9298;

    if (v36 != -1)
    {
      OUTLINED_FUNCTION_28_10(&qword_280BE9298);
    }

    OUTLINED_FUNCTION_174(qword_280C02640);
    OUTLINED_FUNCTION_173_3();
    if (v36)
    {
      OUTLINED_FUNCTION_170_2();
      v37 = *(v18 + 172);
      sub_217751DE8();
      sub_21735113C(v18);
      v38 = v113;
      if (!v37)
      {
        v37 = sub_217751DE8();
      }

      v38[172] = v37;
      goto LABEL_12;
    }

    v39 = qword_280BE9238;

    if (v39 != -1)
    {
      OUTLINED_FUNCTION_27_14(&qword_280BE9238);
    }

    OUTLINED_FUNCTION_174(qword_280C025F8);
    OUTLINED_FUNCTION_173_3();
    if (v39)
    {
      OUTLINED_FUNCTION_170_2();
      v40 = *(v18 + 181);
      sub_217751DE8();
      sub_21735113C(v18);
      v41 = v113;
      if (!v40)
      {
        v40 = sub_217751DE8();
      }

      v41[181] = v40;
      goto LABEL_12;
    }

    v46 = qword_280BE93A0;

    if (v46 != -1)
    {
      OUTLINED_FUNCTION_26_13(&qword_280BE93A0);
    }

    v47 = OUTLINED_FUNCTION_179();
    static AnyMusicProperty.== infix(_:_:)(v47, v48);
    OUTLINED_FUNCTION_5_4();

    if (v3)
    {
      OUTLINED_FUNCTION_170_2();
      v49 = *(v18 + 183);
      v50 = *(v18 + 184);
      v51 = *(v18 + 185);
      v52 = *(v18 + 186);
      v53 = *(v18 + 187);
      OUTLINED_FUNCTION_36();
      sub_21733B8BC(v54, v55, v56, v52, v53);
      sub_21735113C(v18);
      v57 = v113;
      if (!v53)
      {
        v49 = v113[183];
        v50 = v113[184];
        v51 = v113[185];
        v52 = v113[186];
        v53 = v113[187];
        OUTLINED_FUNCTION_36();
        sub_21733B8BC(v71, v72, v73, v52, v53);
      }

      sub_21733B90C(v57[183], v57[184], v57[185], v57[186], v57[187]);
      v57[183] = v49;
      v57[184] = v50;
      v57[185] = v51;
      v57[186] = v52;
      v57[187] = v53;
      goto LABEL_12;
    }

    v58 = qword_280BE9398;

    if (v58 != -1)
    {
      OUTLINED_FUNCTION_25_13(&qword_280BE9398);
    }

    v59 = qword_280C026B8;

    v60 = OUTLINED_FUNCTION_179();
    static AnyMusicProperty.== infix(_:_:)(v60, v61);
    OUTLINED_FUNCTION_5_4();

    if (v3)
    {
      OUTLINED_FUNCTION_170_2();
      v62 = v18[v11[28]];
      sub_21735113C(v18);
      v63 = v11[28];
      if (v62 == 2)
      {
        LOBYTE(v62) = *(v113 + v63);
      }

      *(v113 + v63) = v62;
      goto LABEL_12;
    }

    v64 = qword_280BE93C0;

    if (v64 != -1)
    {
      OUTLINED_FUNCTION_24_14(&qword_280BE93C0);
    }

    OUTLINED_FUNCTION_174(qword_280C026D8);
    OUTLINED_FUNCTION_173_3();
    if (v64)
    {
      OUTLINED_FUNCTION_170_2();
      v65 = &v18[v11[29]];
      v66 = *v65;
      v67 = v65[8];
      sub_21735113C(v18);
      v68 = v11[29];
      if (v67 == 1)
      {
        v69 = v113;
        v66 = *(v113 + v68);
        v70 = *(v113 + v68 + 8);
      }

      else
      {
        v70 = 0;
        v69 = v113;
      }

      v80 = v69 + v68;
      *v80 = v66;
      v80[8] = v70;
      goto LABEL_12;
    }

    v74 = qword_280BE8128;

    if (v74 != -1)
    {
      OUTLINED_FUNCTION_23_16(&qword_280BE8128);
    }

    OUTLINED_FUNCTION_174(qword_280C02448);
    OUTLINED_FUNCTION_173_3();
    if (v74)
    {
      OUTLINED_FUNCTION_170_2();
      v75 = &v18[v11[33]];
      v77 = *v75;
      v76 = *(v75 + 1);
      sub_217751DE8();
      sub_21735113C(v18);
      v78 = v11[33];
LABEL_72:
      v79 = (v113 + v78);
      if (!v76)
      {
        v77 = *v79;
        v76 = sub_217751DE8();
      }

      *v79 = v77;
      v79[1] = v76;
      goto LABEL_12;
    }

    v35 = qword_280BE92D0;

    if (v35 != -1)
    {
      OUTLINED_FUNCTION_22_13(&qword_280BE92D0);
    }

    OUTLINED_FUNCTION_174(qword_280C02660);
    OUTLINED_FUNCTION_173_3();
    if (v35)
    {
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_183_3(&qword_27CB25330, &unk_21775E9B0, v11[52]);
      sub_21735113C(v18);
      if (*(&v116[5] + 1))
      {
        OUTLINED_FUNCTION_87_7();
        v35 = v113;
      }

      else
      {
        OUTLINED_FUNCTION_219_3(&qword_27CB25330, &unk_21775E9B0, v11[52]);
        if (*(&v116[5] + 1))
        {
          sub_2171F0738(v116, &qword_27CB25330, &unk_21775E9B0);
        }
      }

      v42 = v11[52];
    }

    else
    {
      v35 = qword_280BE91A8;

      if (v35 != -1)
      {
        OUTLINED_FUNCTION_20_15(&qword_280BE91A8);
      }

      OUTLINED_FUNCTION_174(qword_280BE91B0);
      OUTLINED_FUNCTION_173_3();
      if ((v35 & 1) == 0)
      {
        v81 = qword_280BE9188;

        if (v81 != -1)
        {
          OUTLINED_FUNCTION_13_15();
          swift_once();
        }

        OUTLINED_FUNCTION_174(qword_280BE9190);
        OUTLINED_FUNCTION_173_3();
        if (v81)
        {
          OUTLINED_FUNCTION_170_2();
          OUTLINED_FUNCTION_183_3(&qword_27CB25608, &unk_21775D530, v11[54]);
          sub_21735113C(v18);
          if (*(&v116[5] + 1))
          {
            OUTLINED_FUNCTION_87_7();
          }

          else
          {
            OUTLINED_FUNCTION_99_6(&qword_27CB25608, &unk_21775D530, v11[54]);
            if (*(&v116[5] + 1))
            {
              sub_2171F0738(v116, &qword_27CB25608, &unk_21775D530);
            }
          }

          v86 = v11[54];
          v43 = &qword_27CB25608;
          v44 = &unk_21775D530;
          goto LABEL_122;
        }

        v82 = qword_280BE91F0;

        if (v82 != -1)
        {
          OUTLINED_FUNCTION_12_13();
          swift_once();
        }

        OUTLINED_FUNCTION_174(qword_280BE91F8);
        OUTLINED_FUNCTION_173_3();
        if (v82)
        {
          OUTLINED_FUNCTION_170_2();
          OUTLINED_FUNCTION_183_3(&unk_27CB28A60, &qword_217770B60, v11[56]);
          sub_21735113C(v18);
          if (*(&v116[5] + 1))
          {
            OUTLINED_FUNCTION_87_7();
          }

          else
          {
            OUTLINED_FUNCTION_99_6(&unk_27CB28A60, &qword_217770B60, v11[56]);
            if (*(&v116[5] + 1))
            {
              sub_2171F0738(v116, &unk_27CB28A60, &qword_217770B60);
            }
          }

          v86 = v11[56];
          goto LABEL_121;
        }

        v83 = qword_280BE91C0;

        if (v83 != -1)
        {
          OUTLINED_FUNCTION_11_22();
          swift_once();
        }

        OUTLINED_FUNCTION_174(qword_280BE91C8);
        OUTLINED_FUNCTION_173_3();
        if (v83)
        {
          OUTLINED_FUNCTION_170_2();
          OUTLINED_FUNCTION_183_3(&unk_27CB28A30, &unk_21775E9C0, v11[57]);
          if (*(&v116[5] + 1))
          {
            OUTLINED_FUNCTION_87_7();
            v84 = v11[57];
            v85 = v113;
            sub_2171F0738(v113 + v84, &unk_27CB28A30, &unk_21775E9C0);
            memcpy(v85 + v84, v117, 0x68uLL);
            LOBYTE(v84) = v18[1456];
            sub_21735113C(v18);
            *(v85 + 1456) = v84;
            goto LABEL_12;
          }

          sub_21735113C(v18);
          v89 = &unk_27CB28A30;
          v90 = &unk_21775E9C0;
        }

        else
        {
          v87 = qword_280BE92F8;

          if (v87 != -1)
          {
            OUTLINED_FUNCTION_10_13();
            swift_once();
          }

          OUTLINED_FUNCTION_174(qword_280BE9300);
          OUTLINED_FUNCTION_173_3();
          if (v87)
          {
            OUTLINED_FUNCTION_170_2();
            OUTLINED_FUNCTION_183_3(&qword_27CB25310, &unk_21775D3D0, v11[58]);
            sub_21735113C(v18);
            if (*(&v116[5] + 1))
            {
              OUTLINED_FUNCTION_87_7();
            }

            else
            {
              OUTLINED_FUNCTION_99_6(&qword_27CB25310, &unk_21775D3D0, v11[58]);
              if (*(&v116[5] + 1))
              {
                sub_2171F0738(v116, &qword_27CB25310, &unk_21775D3D0);
              }
            }

            v86 = v11[58];
            v43 = &qword_27CB25310;
            v44 = &unk_21775D3D0;
            goto LABEL_122;
          }

          v88 = qword_280BE9370;

          if (v88 != -1)
          {
            OUTLINED_FUNCTION_9_16();
            swift_once();
          }

          OUTLINED_FUNCTION_174(qword_280BE9378);
          OUTLINED_FUNCTION_173_3();
          if (v88)
          {
            OUTLINED_FUNCTION_170_2();
            OUTLINED_FUNCTION_183_3(&qword_27CB25330, &unk_21775E9B0, v11[59]);
            sub_21735113C(v18);
            if (*(&v116[5] + 1))
            {
              OUTLINED_FUNCTION_87_7();
            }

            else
            {
              OUTLINED_FUNCTION_99_6(&qword_27CB25330, &unk_21775E9B0, v11[59]);
              if (*(&v116[5] + 1))
              {
                sub_2171F0738(v116, &qword_27CB25330, &unk_21775E9B0);
              }
            }

            v86 = v11[59];
            v43 = &qword_27CB25330;
            v44 = &unk_21775E9B0;
            goto LABEL_122;
          }

          v91 = qword_280BE8108;

          if (v91 != -1)
          {
            OUTLINED_FUNCTION_8_19();
            swift_once();
          }

          OUTLINED_FUNCTION_174(qword_280C02430);
          OUTLINED_FUNCTION_173_3();
          if (v91)
          {
            OUTLINED_FUNCTION_170_2();
            OUTLINED_FUNCTION_192_3(&v18[v11[60]]);
            sub_21735113C(v18);
            if (v59 == 1)
            {
              OUTLINED_FUNCTION_192_3((v113 + v11[60]));
            }

            v92 = (v113 + v11[60]);
            sub_217283940(*v92, v92[1], v92[2], v92[3]);
            *v92 = v91;
            v92[1] = v59;
            v92[2] = v5;
            v92[3] = v19;
            goto LABEL_12;
          }

          v93 = qword_280BE9260;

          if (v93 != -1)
          {
            OUTLINED_FUNCTION_7_15();
            swift_once();
          }

          OUTLINED_FUNCTION_174(qword_280C02610);
          OUTLINED_FUNCTION_173_3();
          if (v93)
          {
            OUTLINED_FUNCTION_170_2();
            v94 = &v18[v11[61]];
            v77 = *v94;
            v76 = *(v94 + 1);
            sub_217751DE8();
            sub_21735113C(v18);
            v78 = v11[61];
            goto LABEL_72;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A8, &unk_21775D4F0);
          swift_allocObject();
          v95 = OUTLINED_FUNCTION_54_0();
          OUTLINED_FUNCTION_174(v95);
          OUTLINED_FUNCTION_5_4();

          v96 = qword_280BE9290;

          if (v96 != -1)
          {
            goto LABEL_182;
          }

          while (1)
          {
            OUTLINED_FUNCTION_174(qword_280C02638);
            OUTLINED_FUNCTION_173_3();
            if (v96)
            {
              OUTLINED_FUNCTION_170_2();
              OUTLINED_FUNCTION_183_3(&qword_27CB24230, &unk_21775E9D0, v11[63]);
              sub_21735113C(v18);
              if (*&v116[1])
              {
                memcpy(v117, v116, 0x80uLL);
              }

              else
              {
                OUTLINED_FUNCTION_99_6(&qword_27CB24230, &unk_21775E9D0, v11[63]);
                if (*&v116[1])
                {
                  sub_2171F0738(v116, &qword_27CB24230, &unk_21775E9D0);
                }
              }

              v86 = v11[63];
              v43 = &qword_27CB24230;
              v44 = &unk_21775E9D0;
              goto LABEL_122;
            }

            v97 = qword_280BE80B0;

            if (v97 != -1)
            {
              OUTLINED_FUNCTION_5_20();
              swift_once();
            }

            OUTLINED_FUNCTION_174(qword_280C023F8);
            OUTLINED_FUNCTION_173_3();
            if (v97)
            {
              OUTLINED_FUNCTION_170_2();
              OUTLINED_FUNCTION_183_3(&unk_27CB28A60, &qword_217770B60, v11[64]);
              sub_21735113C(v18);
              if (*(&v116[5] + 1))
              {
                OUTLINED_FUNCTION_87_7();
              }

              else
              {
                OUTLINED_FUNCTION_99_6(&unk_27CB28A60, &qword_217770B60, v11[64]);
                if (*(&v116[5] + 1))
                {
                  sub_2171F0738(v116, &unk_27CB28A60, &qword_217770B60);
                }
              }

              v86 = v11[64];
LABEL_121:
              v43 = &unk_27CB28A60;
              v44 = &qword_217770B60;
LABEL_122:
              v45 = v113 + v86;
              goto LABEL_49;
            }

            v98 = qword_280BE9308;

            if (v98 != -1)
            {
              OUTLINED_FUNCTION_4_30();
              swift_once();
            }

            v99 = OUTLINED_FUNCTION_179();
            static AnyMusicProperty.== infix(_:_:)(v99, v100);
            OUTLINED_FUNCTION_173_3();

            if (v3)
            {

              OUTLINED_FUNCTION_183_3(&qword_27CB24BA8, &unk_217772FF0, v11[65]);
              sub_21735113C(v18);
              if (*(&v116[1] + 1))
              {
                OUTLINED_FUNCTION_56_5();
              }

              else
              {
                OUTLINED_FUNCTION_99_6(&qword_27CB24BA8, &unk_217772FF0, v11[65]);
                if (*(&v116[1] + 1))
                {
                  sub_2171F0738(v116, &qword_27CB24BA8, &unk_217772FF0);
                }
              }

              v86 = v11[65];
              v43 = &qword_27CB24BA8;
              v44 = &unk_217772FF0;
              goto LABEL_122;
            }

            sub_217350E10(v113, v15);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BE8, &unk_21775E9F0);
            if (swift_dynamicCast())
            {
              break;
            }

            OUTLINED_FUNCTION_155_3();
            sub_217752AA8();
            OUTLINED_FUNCTION_126_4();
            MEMORY[0x21CEA23B0](0xD000000000000024, 0x80000002177ABD70);
            *&v116[0] = v1;
            sub_217752C78();
            v96 = v117;
            OUTLINED_FUNCTION_217_0();
            OUTLINED_FUNCTION_121_4();
            v109 = 391;
LABEL_181:
            v112 = v109;
            OUTLINED_FUNCTION_177_3("Fatal error");
            __break(1u);
LABEL_182:
            OUTLINED_FUNCTION_6_17();
            swift_once();
          }

          __swift_destroy_boxed_opaque_existential_1(v117);
          v101 = v113 + v11[65];
          sub_21726A630(v101, v116, &qword_27CB24BA8, &unk_217772FF0);
          if (*(&v116[1] + 1))
          {
            OUTLINED_FUNCTION_56_5();
            v102 = sub_21726A630(&v18[v11[65]], v115, &qword_27CB24BA8, &unk_217772FF0);
            if (*&v115[24])
            {
              v116[0] = *v115;
              v116[1] = *&v115[16];
              *&v116[2] = *&v115[32];
              *&v115[24] = &type metadata for AnyPropertyProviderExtendedStorage;
              *&v115[32] = sub_217351198(v102, v103, v104);
              OUTLINED_FUNCTION_207_2();
              *v115 = swift_allocObject();
              sub_2173511EC(v116, *v115 + 16);
              AnyPropertyProviderExtendedStorage.merge<A>(_:with:)(v5, v115);

              sub_217350E74(v116);
              sub_21735113C(v18);
              __swift_destroy_boxed_opaque_existential_1(v115);
LABEL_177:
              sub_2171F0738(v101, &qword_27CB24BA8, &unk_217772FF0);
              v106 = v117[1];
              *v101 = v117[0];
              *(v101 + 16) = v106;
              *(v101 + 32) = *&v117[2];
              goto LABEL_12;
            }

            sub_217350E74(v117);

            v105 = v115;
          }

          else
          {

            v105 = v116;
          }

          sub_2171F0738(v105, &qword_27CB24BA8, &unk_217772FF0);
          OUTLINED_FUNCTION_183_3(&qword_27CB24BA8, &unk_217772FF0, v11[65]);
          sub_21735113C(v18);
          if (*(&v116[1] + 1))
          {
            OUTLINED_FUNCTION_56_5();
            goto LABEL_177;
          }

          v89 = &qword_27CB24BA8;
          v90 = &unk_217772FF0;
        }

        sub_2171F0738(v116, v89, v90);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_183_3(&qword_27CB25330, &unk_21775E9B0, v11[55]);
      sub_21735113C(v18);
      if (*(&v116[5] + 1))
      {
        OUTLINED_FUNCTION_87_7();
        v35 = v113;
      }

      else
      {
        OUTLINED_FUNCTION_219_3(&qword_27CB25330, &unk_21775E9B0, v11[55]);
        if (*(&v116[5] + 1))
        {
          sub_2171F0738(v116, &qword_27CB25330, &unk_21775E9B0);
        }
      }

      v42 = v11[55];
    }

    v43 = &qword_27CB25330;
    v44 = &unk_21775E9B0;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_170_2();
  OUTLINED_FUNCTION_183_3(&qword_27CB25610, &qword_21775D540, v11[53]);
  sub_21735113C(v18);
  if (*(&v116[5] + 1))
  {
    OUTLINED_FUNCTION_87_7();
    v35 = v113;
  }

  else
  {
    OUTLINED_FUNCTION_219_3(&qword_27CB25610, &qword_21775D540, v11[53]);
    if (*(&v116[5] + 1))
    {
      sub_2171F0738(v116, &qword_27CB25610, &qword_21775D540);
    }
  }

  v42 = v11[53];
  v43 = &qword_27CB25610;
  v44 = &qword_21775D540;
LABEL_48:
  v45 = v35 + v42;
LABEL_49:
  sub_21733BBDC(v117, v45, v43, v44);
LABEL_12:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21734B988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21775E990;
  if (qword_280BE91E8 != -1)
  {
    OUTLINED_FUNCTION_149_3(&qword_280BE91E8);
  }

  *(v0 + 32) = qword_280C025C8;
  v1 = qword_280BE93B8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_30_11(&qword_280BE93B8);
  }

  *(v0 + 40) = qword_280C026D0;
  v2 = qword_280BE9390;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_29_12(&qword_280BE9390);
  }

  *(v0 + 48) = qword_280C026B0;
  v3 = qword_280BE8118;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_40_10(&qword_280BE8118);
  }

  *(v0 + 56) = qword_280C02440;
  v4 = qword_280BE80E0;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_39_5(&qword_280BE80E0);
  }

  *(v0 + 64) = qword_280C02418;
  v5 = qword_280BE93B0;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_148_2(&qword_280BE93B0);
  }

  *(v0 + 72) = qword_280C026C8;
  v6 = qword_280BE9230;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_147_3(&qword_280BE9230);
  }

  *(v0 + 80) = qword_280C025F0;
  v7 = qword_280BE80B8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_146_3(&qword_280BE80B8);
  }

  *(v0 + 88) = qword_280C02400;
  v8 = qword_280BE9298;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_28_10(&qword_280BE9298);
  }

  *(v0 + 96) = qword_280C02640;
  v9 = qword_280BE8100;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_144_2(&qword_280BE8100);
  }

  *(v0 + 104) = qword_280C02428;
  v10 = qword_280BE9238;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_27_14(&qword_280BE9238);
  }

  *(v0 + 112) = qword_280C025F8;
  v11 = qword_280BE93A0;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_26_13(&qword_280BE93A0);
  }

  *(v0 + 120) = qword_280C026C0;
  v12 = qword_280BE80A8;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_143_3(&qword_280BE80A8);
  }

  *(v0 + 128) = qword_280C023F0;
  v13 = qword_280BE80F0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_142_3(&qword_280BE80F0);
  }

  *(v0 + 136) = qword_280C02420;
  v14 = qword_280BE9268;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_141_2(&qword_280BE9268);
  }

  *(v0 + 144) = qword_280C02618;
  v15 = qword_280BE91B8;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_140_5(&qword_280BE91B8);
  }

  *(v0 + 152) = qword_280C025C0;
  v16 = qword_280BE92E8;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_139_4(&qword_280BE92E8);
  }

  *(v0 + 160) = qword_280C02670;
  v17 = qword_280BE80D0;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_138_2(&qword_280BE80D0);
  }

  *(v0 + 168) = qword_280C02410;
  v18 = qword_280BE9210;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_137_2(&qword_280BE9210);
  }

  *(v0 + 176) = qword_280C025D8;
  v19 = qword_280BE92C8;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_136_3(&qword_280BE92C8);
  }

  *(v0 + 184) = qword_280C02658;
  v20 = qword_280BE92E0;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_135_2(&qword_280BE92E0);
  }

  *(v0 + 192) = qword_280C02668;
  v21 = qword_280BE9208;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_134_3(&qword_280BE9208);
  }

  *(v0 + 200) = qword_280C025D0;
  v22 = qword_280BE9340;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_132_3(&qword_280BE9340);
  }

  *(v0 + 208) = qword_280C02688;
  v23 = qword_280BE92A8;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_131_5(&qword_280BE92A8);
  }

  *(v0 + 216) = qword_280C02648;
  v24 = qword_280BE9270;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_130_3(&qword_280BE9270);
  }

  *(v0 + 224) = qword_280C02620;
  v25 = qword_280BE9398;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_25_13(&qword_280BE9398);
  }

  *(v0 + 232) = qword_280C026B8;
  v26 = qword_280BE93C0;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_24_14(&qword_280BE93C0);
  }

  *(v0 + 240) = qword_280C026D8;
  v27 = qword_280BE9278;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_129_3(&qword_280BE9278);
  }

  *(v0 + 248) = qword_280C02628;
  v28 = qword_280BE93D0;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_128_4(&qword_280BE93D0);
  }

  *(v0 + 256) = qword_280C026E0;
  v29 = qword_280BE9218;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_127_4(&qword_280BE9218);
  }

  *(v0 + 264) = qword_280C025E0;
  v30 = qword_280BE8128;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_23_16(&qword_280BE8128);
  }

  *(v0 + 272) = qword_280C02448;
  v31 = qword_280BE8110;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_125_3(&qword_280BE8110);
  }

  *(v0 + 280) = qword_280C02438;
  v32 = qword_280BE9368;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_124_5(&qword_280BE9368);
  }

  *(v0 + 288) = qword_280C026A0;
  v33 = qword_280BE9320;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_123(&qword_280BE9320);
  }

  *(v0 + 296) = qword_280C02678;
  v34 = qword_280BE9358;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_122_3(&qword_280BE9358);
  }

  *(v0 + 304) = qword_280C02698;
  v35 = qword_280BE9250;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_120_5(&qword_280BE9250);
  }

  *(v0 + 312) = qword_280C02608;
  v36 = qword_280BE9248;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_119_4(&qword_280BE9248);
  }

  *(v0 + 320) = qword_280C02600;
  v37 = qword_280BE9220;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_118_4(&qword_280BE9220);
  }

  *(v0 + 328) = qword_280C025E8;
  v38 = qword_280BE9330;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_114_3(&qword_280BE9330);
  }

  *(v0 + 336) = qword_280C02680;
  v39 = qword_280BE92B8;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_116_5(&qword_280BE92B8);
  }

  *(v0 + 344) = qword_280C02650;
  v40 = qword_280BE9350;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_117_6(&qword_280BE9350);
  }

  *(v0 + 352) = qword_280C02690;
  v41 = qword_280BE9388;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_113_5(&qword_280BE9388);
  }

  *(v0 + 360) = qword_280C026A8;
  v42 = qword_280BE80A0;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_112_5(&qword_280BE80A0);
  }

  *(v0 + 368) = qword_280C023E8;
  v43 = qword_280BE8090;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_111_5(&qword_280BE8090);
  }

  *(v0 + 376) = qword_280C023E0;
  v44 = qword_280BE9198;

  if (v44 != -1)
  {
    OUTLINED_FUNCTION_110_4(&qword_280BE9198);
  }

  *(v0 + 384) = qword_280C025B0;
  v45 = qword_280BE8080;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_109_3(&qword_280BE8080);
  }

  *(v0 + 392) = qword_280C023D8;
  v46 = qword_280BE80C8;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_108_4(&qword_280BE80C8);
  }

  *(v0 + 400) = qword_280C02408;
  v47 = qword_280BE9288;

  if (v47 != -1)
  {
    OUTLINED_FUNCTION_107_4(&qword_280BE9288);
  }

  *(v0 + 408) = qword_280C02630;
  v48 = qword_280BE91A0;

  if (v48 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_280BE91A0);
  }

  *(v0 + 416) = qword_280C025B8;
  v49 = qword_280BE92D0;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_22_13(&qword_280BE92D0);
  }

  *(v0 + 424) = qword_280C02660;
  v50 = qword_280BE91D8;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_21_12(&qword_280BE91D8);
  }

  *(v0 + 432) = qword_280BE91E0;
  v51 = qword_280BE91C0;

  if (v51 != -1)
  {
    OUTLINED_FUNCTION_11_22();
    swift_once();
  }

  *(v0 + 440) = qword_280BE91C8;
  v52 = qword_280BE91A8;

  if (v52 != -1)
  {
    OUTLINED_FUNCTION_20_15(&qword_280BE91A8);
  }

  *(v0 + 448) = qword_280BE91B0;
  v53 = qword_280BE9188;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_13_15();
    swift_once();
  }

  *(v0 + 456) = qword_280BE9190;
  v54 = qword_280BE91F0;

  if (v54 != -1)
  {
    OUTLINED_FUNCTION_12_13();
    swift_once();
  }

  *(v0 + 464) = qword_280BE91F8;
  v55 = qword_280BE92F8;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_10_13();
    swift_once();
  }

  *(v0 + 472) = qword_280BE9300;
  v56 = qword_280BE9370;

  if (v56 != -1)
  {
    OUTLINED_FUNCTION_9_16();
    swift_once();
  }

  *(v0 + 480) = qword_280BE9378;
  v57 = qword_280BE8108;

  if (v57 != -1)
  {
    OUTLINED_FUNCTION_8_19();
    swift_once();
  }

  *(v0 + 488) = qword_280C02430;
  v58 = qword_280BE9260;

  if (v58 != -1)
  {
    OUTLINED_FUNCTION_7_15();
    swift_once();
  }

  *(v0 + 496) = qword_280C02610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A8, &unk_21775D4F0);
  swift_allocObject();
  *(v0 + 504) = OUTLINED_FUNCTION_54_0();
  v59 = qword_280BE9290;

  if (v59 != -1)
  {
    OUTLINED_FUNCTION_6_17();
    swift_once();
  }

  *(v0 + 512) = qword_280C02638;
  v60 = qword_280BE80B0;

  if (v60 != -1)
  {
    OUTLINED_FUNCTION_5_20();
    swift_once();
  }

  *(v0 + 520) = qword_280C023F8;
  v61 = qword_280BE9308;

  if (v61 != -1)
  {
    OUTLINED_FUNCTION_4_30();
    swift_once();
  }

  *(v0 + 528) = qword_280BE9310;
  qword_280C02598 = v0;
}

uint64_t PlaylistPropertyProvider.knownProperties.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t PlaylistPropertyProvider.identifierSet.getter()
{
  v1 = OUTLINED_FUNCTION_166_3();
  memcpy(__dst, (v0 + *(v1 + 268)), 0x161uLL);
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x161uLL);
  return sub_217269EF4(__dst, &v5);
}

void *PlaylistPropertyProvider.identifierSet.setter()
{
  v0 = OUTLINED_FUNCTION_158_2();
  v8 = OUTLINED_FUNCTION_233(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14[0]);
  memcpy(v8, v9, 0x161uLL);
  sub_217269F50(v14);
  v10 = OUTLINED_FUNCTION_232_1();
  return memcpy(v10, v11, 0x161uLL);
}

uint64_t PlaylistPropertyProvider.type.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_166_3() + 272));
  v4 = *v2;
  v3 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v2;

  return sub_217751DE8();
}

void PlaylistPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t PlaylistPropertyProvider.href.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void PlaylistPropertyProvider.href.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for PlaylistPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t PlaylistPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t PlaylistPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t PlaylistPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t PlaylistPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for PlaylistPropertyProvider(0);

  return sub_217751DE8();
}

void static PlaylistPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v916 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_81();
  v914 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v917 = &v901 - v12;
  v913 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v918 = &v901 - v14;
  v925 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_81();
  v915 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v20 = OUTLINED_FUNCTION_45_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_1();
  v922 = v21 - v22;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_99();
  v921 = v24;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_99();
  v920 = v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_99();
  v919 = v28;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v29);
  v923 = &v901 - v30;
  v924 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C10, &unk_217765A50);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_1();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v901 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v901 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_241();
  MEMORY[0x28223BE20](v42);
  v926 = &v901 - v43;
  v44 = OUTLINED_FUNCTION_215_3();
  memcpy(v44, v5, 0x221uLL);
  v45 = OUTLINED_FUNCTION_216_3();
  memcpy(v45, v3, 0x221uLL);
  v46 = OUTLINED_FUNCTION_50_6();
  memcpy(v46, v5, 0x221uLL);
  memcpy(v965, v3, 0x221uLL);
  memcpy(v976, v5, 0x221uLL);
  OUTLINED_FUNCTION_104(v976);
  if (v66)
  {
    v47 = OUTLINED_FUNCTION_47_8();
    OUTLINED_FUNCTION_226_3(v47);
    OUTLINED_FUNCTION_46_10();
    if (!v66)
    {
      v73 = OUTLINED_FUNCTION_215_3();
      OUTLINED_FUNCTION_157(v73, v960);
      v74 = OUTLINED_FUNCTION_216_3();
      v75 = v960;
      goto LABEL_10;
    }

    v911 = v7;
    v912 = v16;
    OUTLINED_FUNCTION_172_3();
    OUTLINED_FUNCTION_53_7();
    memcpy(v48, v49, 0x221uLL);
    v16 = &unk_21775E9A0;
    OUTLINED_FUNCTION_215_3();
    OUTLINED_FUNCTION_39_0();
    sub_21726A630(v50, v51, v52, v53);
    OUTLINED_FUNCTION_216_3();
    OUTLINED_FUNCTION_39_0();
    sub_21726A630(v54, v55, v56, v57);
    OUTLINED_FUNCTION_172_3();
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v58, v59, v60);
  }

  else
  {
    OUTLINED_FUNCTION_172_3();
    OUTLINED_FUNCTION_53_7();
    memcpy(v61, v62, 0x221uLL);
    OUTLINED_FUNCTION_171_3();
    OUTLINED_FUNCTION_53_7();
    memcpy(v63, v64, 0x221uLL);
    v65 = OUTLINED_FUNCTION_47_8();
    OUTLINED_FUNCTION_226_3(v65);
    OUTLINED_FUNCTION_46_10();
    if (v66)
    {
      OUTLINED_FUNCTION_103_4();
      OUTLINED_FUNCTION_53_7();
      memcpy(v67, v68, 0x221uLL);
      v69 = OUTLINED_FUNCTION_215_3();
      OUTLINED_FUNCTION_69_8(v69);
      v70 = OUTLINED_FUNCTION_216_3();
      OUTLINED_FUNCTION_69_8(v70);
      v71 = OUTLINED_FUNCTION_172_3();
      OUTLINED_FUNCTION_69_8(v71);
      v72 = OUTLINED_FUNCTION_103_4();
      goto LABEL_9;
    }

    v911 = v7;
    v912 = v16;
    v81 = OUTLINED_FUNCTION_103_4();
    OUTLINED_FUNCTION_226_3(v81);
    OUTLINED_FUNCTION_215_3();
    OUTLINED_FUNCTION_95_5();
    sub_21726A630(v82, v83, &qword_27CB24400, &unk_21775E9A0);
    OUTLINED_FUNCTION_216_3();
    OUTLINED_FUNCTION_95_5();
    sub_21726A630(v84, v85, &qword_27CB24400, &unk_21775E9A0);
    OUTLINED_FUNCTION_172_3();
    OUTLINED_FUNCTION_95_5();
    sub_21726A630(v86, v87, &qword_27CB24400, &unk_21775E9A0);
    v88 = OUTLINED_FUNCTION_171_3();
    LOBYTE(v16) = static Artwork.== infix(_:_:)(v88, v954);
    v89 = OUTLINED_FUNCTION_90_5();
    memcpy(v89, v954, 0x221uLL);
    v90 = OUTLINED_FUNCTION_90_5();
    sub_217284084(v90);
    v91 = OUTLINED_FUNCTION_77_4();
    memcpy(v91, v955, 0x221uLL);
    v92 = OUTLINED_FUNCTION_77_4();
    sub_217284084(v92);
    OUTLINED_FUNCTION_103_4();
    OUTLINED_FUNCTION_53_7();
    memcpy(v93, v94, 0x221uLL);
    v95 = OUTLINED_FUNCTION_103_4();
    sub_2171F0738(v95, &qword_27CB24400, &unk_21775E9A0);
    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v96 = v3[69];
  if (v5[69])
  {
    if (!v96 || (sub_2172849D0() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v96)
  {
    goto LABEL_14;
  }

  v97 = OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_257(v97);
  v98 = OUTLINED_FUNCTION_171_3();
  memcpy(v98, v3 + 70, 0x221uLL);
  v99 = OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_257(v99);
  memcpy(v965, v3 + 70, 0x221uLL);
  v100 = OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_257(v100);
  v101 = OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_104(v101);
  if (v66)
  {
    v102 = OUTLINED_FUNCTION_47_8();
    OUTLINED_FUNCTION_226_3(v102);
    OUTLINED_FUNCTION_46_10();
    if (!v66)
    {
      v125 = OUTLINED_FUNCTION_103_4();
      OUTLINED_FUNCTION_69_8(v125);
      OUTLINED_FUNCTION_171_3();
      OUTLINED_FUNCTION_95_5();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_77_4();
    OUTLINED_FUNCTION_53_7();
    memcpy(v103, v104, 0x221uLL);
    v16 = &unk_21775E9A0;
    OUTLINED_FUNCTION_103_4();
    OUTLINED_FUNCTION_49_6();
    sub_21726A630(v105, v106, v107, &unk_21775E9A0);
    OUTLINED_FUNCTION_171_3();
    OUTLINED_FUNCTION_49_6();
    sub_21726A630(v108, v109, v110, &unk_21775E9A0);
    OUTLINED_FUNCTION_77_4();
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v111, v112, v113);
  }

  else
  {
    OUTLINED_FUNCTION_77_4();
    OUTLINED_FUNCTION_53_7();
    memcpy(v114, v115, 0x221uLL);
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_53_7();
    memcpy(v116, v117, 0x221uLL);
    v118 = OUTLINED_FUNCTION_47_8();
    OUTLINED_FUNCTION_226_3(v118);
    OUTLINED_FUNCTION_46_10();
    if (v119)
    {
      OUTLINED_FUNCTION_78_3();
      OUTLINED_FUNCTION_53_7();
      memcpy(v120, v121, 0x221uLL);
      v122 = OUTLINED_FUNCTION_103_4();
      OUTLINED_FUNCTION_55_5(v122);
      v123 = OUTLINED_FUNCTION_171_3();
      OUTLINED_FUNCTION_55_5(v123);
      v124 = OUTLINED_FUNCTION_77_4();
      OUTLINED_FUNCTION_55_5(v124);
      v72 = OUTLINED_FUNCTION_78_3();
      goto LABEL_9;
    }

    v126 = OUTLINED_FUNCTION_78_3();
    OUTLINED_FUNCTION_226_3(v126);
    v5 = v3;
    v3 = &unk_21775E9A0;
    v127 = OUTLINED_FUNCTION_103_4();
    OUTLINED_FUNCTION_68_7(v127);
    v128 = OUTLINED_FUNCTION_171_3();
    OUTLINED_FUNCTION_68_7(v128);
    v129 = OUTLINED_FUNCTION_67_6();
    sub_21726A630(v129, v130, &qword_27CB24400, &unk_21775E9A0);
    v131 = OUTLINED_FUNCTION_90_5();
    static Artwork.== infix(_:_:)(v131, v937);
    v132 = OUTLINED_FUNCTION_243();
    memcpy(v132, v133, 0x221uLL);
    sub_217284084(v935);
    OUTLINED_FUNCTION_85_4();
    OUTLINED_FUNCTION_91_5();
    memcpy(v134, v135, 0x221uLL);
    v136 = OUTLINED_FUNCTION_85_4();
    sub_217284084(v136);
    OUTLINED_FUNCTION_78_3();
    OUTLINED_FUNCTION_53_7();
    memcpy(v137, v138, 0x221uLL);
    v139 = OUTLINED_FUNCTION_78_3();
    OUTLINED_FUNCTION_248(v139);
    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v140 = OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_256(v140);
  v141 = OUTLINED_FUNCTION_214_3();
  memcpy(v141, v3 + 139, 0xE8uLL);
  v142 = OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_256(v142);
  memcpy(&v964[12], v3 + 139, 0xE8uLL);
  OUTLINED_FUNCTION_256(v946);
  if (sub_21726A450(v946) == 1)
  {
    v143 = OUTLINED_FUNCTION_47_8();
    memcpy(v143, &v964[12], 0xE8uLL);
    v144 = OUTLINED_FUNCTION_47_8();
    if (sub_21726A450(v144) == 1)
    {
      OUTLINED_FUNCTION_77_4();
      OUTLINED_FUNCTION_53_7();
      memcpy(v145, v146, 0xE8uLL);
      OUTLINED_FUNCTION_213_0();
      OUTLINED_FUNCTION_49_6();
      sub_21726A630(v147, v148, v149, &qword_217794B20);
      OUTLINED_FUNCTION_214_3();
      OUTLINED_FUNCTION_49_6();
      sub_21726A630(v150, v151, v152, &qword_217794B20);
      OUTLINED_FUNCTION_77_4();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v153, v154, v155);
      goto LABEL_38;
    }

    v168 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_69_8(v168);
    v169 = OUTLINED_FUNCTION_214_3();
    OUTLINED_FUNCTION_69_8(v169);
LABEL_36:
    OUTLINED_FUNCTION_47_8();
    OUTLINED_FUNCTION_53_7();
    memcpy(v170, v171, 0x1D0uLL);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_77_4();
  OUTLINED_FUNCTION_53_7();
  memcpy(v156, v157, 0xE8uLL);
  OUTLINED_FUNCTION_90_5();
  OUTLINED_FUNCTION_53_7();
  memcpy(v158, v159, 0xE8uLL);
  v160 = OUTLINED_FUNCTION_47_8();
  memcpy(v160, &v964[12], 0xE8uLL);
  v161 = OUTLINED_FUNCTION_47_8();
  if (sub_21726A450(v161) == 1)
  {
    OUTLINED_FUNCTION_78_3();
    OUTLINED_FUNCTION_53_7();
    memcpy(v162, v163, 0xE8uLL);
    v164 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_55_5(v164);
    v165 = OUTLINED_FUNCTION_214_3();
    OUTLINED_FUNCTION_55_5(v165);
    v166 = OUTLINED_FUNCTION_77_4();
    OUTLINED_FUNCTION_55_5(v166);
    v167 = OUTLINED_FUNCTION_78_3();
    sub_21735129C(v167);
    goto LABEL_36;
  }

  v172 = OUTLINED_FUNCTION_78_3();
  memcpy(v172, &v964[12], 0xE8uLL);
  v5 = v3;
  v3 = &qword_217794B20;
  v173 = OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_68_7(v173);
  v174 = OUTLINED_FUNCTION_214_3();
  OUTLINED_FUNCTION_68_7(v174);
  v175 = OUTLINED_FUNCTION_67_6();
  sub_21726A630(v175, v176, &qword_27CB25BE0, &qword_217794B20);
  v177 = OUTLINED_FUNCTION_90_5();
  static CloudCoverArtworkRecipe.== infix(_:_:)(v177, v937);
  v178 = OUTLINED_FUNCTION_243();
  memcpy(v178, v179, 0xE8uLL);
  sub_21735129C(v935);
  OUTLINED_FUNCTION_85_4();
  OUTLINED_FUNCTION_91_5();
  memcpy(v180, v181, 0xE8uLL);
  v182 = OUTLINED_FUNCTION_85_4();
  sub_21735129C(v182);
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_53_7();
  memcpy(v183, v184, 0xE8uLL);
  v185 = OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_248(v185);
  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_38:
  v186 = v5[169];
  v187 = v3[169];
  if (v186)
  {
    if (!v187)
    {
      goto LABEL_14;
    }

    v188 = v5[168] == v3[168] && v186 == v187;
    if (!v188 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v187)
  {
    goto LABEL_14;
  }

  v189 = *(v3 + 1368);
  if (v5[171])
  {
    if (!*(v3 + 1368))
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v5[170] != v3[170])
    {
      v189 = 1;
    }

    if (v189)
    {
      goto LABEL_14;
    }
  }

  v190 = v3;
  v191 = v5[172];
  v910 = v190;
  v192 = v190[172];
  if (v191)
  {
    if (!v192)
    {
      goto LABEL_14;
    }

    sub_217751DE8();
    sub_217262A00();
    v194 = v193;

    if ((v194 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v192)
  {
    goto LABEL_14;
  }

  v195 = *(v5 + 175);
  v938 = *(v5 + 173);
  v939 = v195;
  v196 = *(v5 + 179);
  v940 = *(v5 + 177);
  v941 = v196;
  v197 = *(v910 + 175);
  v942 = *(v910 + 173);
  v943 = v197;
  v198 = *(v910 + 179);
  v944 = *(v910 + 177);
  v945 = v198;
  v199 = *(&v938 + 1);
  v200 = v5 + 175;
  v201 = *(v5 + 177);
  v936[0] = *(v5 + 175);
  v936[1] = v201;
  v936[2] = *(v5 + 179);
  v202 = v942;
  v203 = *(v910 + 177);
  v935[0] = *(v910 + 175);
  v935[1] = v203;
  v935[2] = *(v910 + 179);
  if (*(&v938 + 1) == 1)
  {
    if (*(&v942 + 1) == 1)
    {
      *&v961 = v938;
      *(&v961 + 1) = 1;
      v204 = *(v5 + 177);
      v962[0] = *v200;
      v962[1] = v204;
      v962[2] = *(v5 + 179);
      OUTLINED_FUNCTION_245();
      OUTLINED_FUNCTION_74_5();
      OUTLINED_FUNCTION_39_0();
      sub_21726A630(v205, v206, v207, v208);
      OUTLINED_FUNCTION_244();
      OUTLINED_FUNCTION_74_5();
      OUTLINED_FUNCTION_39_0();
      sub_21726A630(v209, v210, v211, v212);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v213, v214, v215);
      goto LABEL_67;
    }

    v217 = v938;
    OUTLINED_FUNCTION_245();
    OUTLINED_FUNCTION_31_9();
    sub_21726A630(v225, v226, v227, &unk_217759460);
    OUTLINED_FUNCTION_244();
    OUTLINED_FUNCTION_31_9();
    sub_21726A630(v228, v229, v230, &unk_217759460);
LABEL_64:
    *&v961 = v217;
    *(&v961 + 1) = v199;
    v962[0] = v936[0];
    v962[1] = v936[1];
    v962[2] = v936[2];
    v962[3] = v202;
    v962[4] = v935[0];
    v962[5] = v935[1];
    v962[6] = v935[2];
    goto LABEL_65;
  }

  v961 = v938;
  v216 = *(v5 + 177);
  v962[0] = *v200;
  v962[1] = v216;
  v962[2] = *(v5 + 179);
  v956 = v938;
  v957 = v962[0];
  v958 = v216;
  v959 = v962[2];
  if (*(&v942 + 1) == 1)
  {
    v217 = v938;
    v950 = v961;
    v951 = v962[0];
    v952 = v962[1];
    v953 = v962[2];
    OUTLINED_FUNCTION_245();
    OUTLINED_FUNCTION_91_5();
    OUTLINED_FUNCTION_195_3(v218, v219);
    OUTLINED_FUNCTION_244();
    OUTLINED_FUNCTION_91_5();
    OUTLINED_FUNCTION_195_3(v220, v221);
    OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_91_5();
    OUTLINED_FUNCTION_195_3(v222, v223);
    v224 = OUTLINED_FUNCTION_77_4();
    sub_217351248(v224);
    goto LABEL_64;
  }

  v231 = *(v910 + 177);
  v951 = *(v910 + 175);
  v952 = v231;
  v953 = *(v910 + 179);
  v950 = v942;
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_95_5();
  v233 = v232;
  LODWORD(v909) = static EditorialNotes.== infix(_:_:)(v234, v235);
  v937[0] = v950;
  v937[1] = v951;
  v937[2] = v952;
  v937[3] = v953;
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_49_6();
  sub_21726A630(v236, v237, v238, &unk_217759460);
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_49_6();
  sub_21726A630(v239, v240, v241, &unk_217759460);
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_49_6();
  sub_21726A630(v242, v243, v244, &unk_217759460);
  v245 = OUTLINED_FUNCTION_78_3();
  sub_217351248(v245);
  *&v946[232] = v956;
  v947 = v957;
  v948 = v958;
  v949 = v959;
  v246 = OUTLINED_FUNCTION_90_5();
  sub_217351248(v246);
  *&v950 = v233;
  *(&v950 + 1) = v199;
  v951 = v936[0];
  v952 = v936[1];
  v953 = v936[2];
  v247 = OUTLINED_FUNCTION_77_4();
  sub_2171F0738(v247, &qword_27CB24B70, &unk_217759460);
  if ((v909 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_67:
  v248 = v910[181];
  if (v5[181])
  {
    if (!v248)
    {
      goto LABEL_14;
    }

    sub_217751DE8();
    sub_217262CB4();
    v250 = v249;

    if ((v250 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v248)
  {
    goto LABEL_14;
  }

  v251 = *(v5 + 1456);
  v252 = *(v910 + 1456);
  if (v251 == 2)
  {
    if (v252 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v252 == 2 || ((v252 ^ v251) & 1) != 0)
  {
    goto LABEL_14;
  }

  v903 = v0;
  v904 = v40;
  v905 = v37;
  v906 = v34;
  v253 = v5[183];
  v254 = v5[184];
  v255 = v5[185];
  v256 = v5[186];
  v907 = v5;
  v257 = v5[187];
  v258 = v910[183];
  v259 = v910[184];
  v260 = v910[185];
  v909 = v910[186];
  v261 = v910[187];
  if (!v257)
  {
    if (!v261)
    {
      v285 = OUTLINED_FUNCTION_63_6();
      sub_21733B8BC(v285, v286, v287, v288, 0);
      sub_21733B8BC(v258, v259, v260, v909, 0);
      v289 = OUTLINED_FUNCTION_63_6();
      sub_21733B90C(v289, v290, v291, v292, 0);
      goto LABEL_84;
    }

LABEL_82:
    v272 = OUTLINED_FUNCTION_63_6();
    sub_21733B8BC(v272, v273, v274, v275, v257);
    v908 = v258;
    sub_21733B8BC(v258, v259, v260, v909, v261);
    v276 = OUTLINED_FUNCTION_63_6();
    sub_21733B90C(v276, v277, v278, v279, v257);
    OUTLINED_FUNCTION_145_1();
    sub_21733B90C(v280, v281, v282, v283, v284);
    goto LABEL_14;
  }

  if (!v261)
  {
    goto LABEL_82;
  }

  v908 = v258;
  v971 = v258;
  v972 = v259;
  v973 = v260;
  v974 = v909;
  v975 = v261;
  v902 = v253;
  v966 = v253;
  v967 = v254;
  v968 = v255;
  v969 = v256;
  v970 = v257;
  sub_21733B8BC(v253, v254, v255, v256, v257);
  OUTLINED_FUNCTION_145_1();
  sub_21733B8BC(v262, v263, v264, v265, v266);
  HIDWORD(v901) = sub_2172AA368();
  OUTLINED_FUNCTION_145_1();
  sub_21733B90C(v267, v268, v269, v270, v271);
  sub_21733B90C(v902, v254, v255, v256, v257);
  if ((v901 & 0x100000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_84:
  v293 = v907[1504];
  v294 = *(v910 + 1504);
  if (v293 == 2)
  {
    if (v294 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v294 == 2 || ((v294 ^ v293) & 1) != 0)
  {
    goto LABEL_14;
  }

  v295 = v907[1505];
  v296 = *(v910 + 1505);
  if (v295 == 2)
  {
    if (v296 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v296 == 2 || ((v296 ^ v295) & 1) != 0)
  {
    goto LABEL_14;
  }

  v297 = v907[1506];
  v298 = *(v910 + 1506);
  if (v297 == 2)
  {
    if (v298 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v298 == 2 || ((v298 ^ v297) & 1) != 0)
  {
    goto LABEL_14;
  }

  v299 = v907[1507];
  v300 = *(v910 + 1507);
  if (v299 == 2)
  {
    if (v300 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v300 == 2 || ((v300 ^ v299) & 1) != 0)
  {
    goto LABEL_14;
  }

  v301 = v907[1508];
  v302 = *(v910 + 1508);
  if (v301 == 2)
  {
    if (v302 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v302 == 2 || ((v302 ^ v301) & 1) != 0)
  {
    goto LABEL_14;
  }

  v303 = v907[1509];
  v304 = *(v910 + 1509);
  if (v303 == 2)
  {
    if (v304 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v304 == 2 || ((v304 ^ v303) & 1) != 0)
  {
    goto LABEL_14;
  }

  v305 = *(v910 + 1510);
  LOBYTE(v961) = v907[1510];
  BYTE1(v961) = v305;
  if (v961 == 5)
  {
    if (v305 != 5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_6();
    if (v306 == 5)
    {
      goto LABEL_14;
    }

    v307 = OUTLINED_FUNCTION_18_14();
    if (!static Playlist.Kind.== infix(_:_:)(v307, v308))
    {
      goto LABEL_14;
    }
  }

  v909 = type metadata accessor for PlaylistPropertyProvider(0);
  v309 = v909[22];
  OUTLINED_FUNCTION_203_3();
  v310 = OUTLINED_FUNCTION_204_2();
  v311 = v926;
  OUTLINED_FUNCTION_157(v310, v926);
  OUTLINED_FUNCTION_157(v910 + v309, v311 + v260);
  OUTLINED_FUNCTION_17_10(v311);
  if (v66)
  {
    OUTLINED_FUNCTION_133(v926 + v260, 1, v925);
    if (v66)
    {
      sub_2171F0738(v926, &qword_27CB241C0, &qword_217759480);
      goto LABEL_129;
    }

LABEL_127:
    v79 = &qword_27CB25C10;
    v80 = &unk_217765A50;
    v78 = v926;
    goto LABEL_13;
  }

  v312 = v926;
  sub_21726A630(v926, v923, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_17_10(v312 + v260);
  if (v313)
  {
    OUTLINED_FUNCTION_202_4();
    v314(v923, v925);
    goto LABEL_127;
  }

  v315 = v912;
  v316 = v925;
  v317 = v926;
  v318 = v915;
  v912[4](v915, v926 + v260, v925);
  OUTLINED_FUNCTION_0_23();
  sub_217351338(v319, v320, MEMORY[0x277CC9598]);
  v321 = v923;
  v322 = sub_217751F08();
  v323 = v315[1];
  v323(v318, v316);
  v323(v321, v316);
  sub_2171F0738(v317, &qword_27CB241C0, &qword_217759480);
  if ((v322 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_129:
  v324 = OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_220_3(v324);
  v325 = OUTLINED_FUNCTION_90_5();
  OUTLINED_FUNCTION_254(v325);
  v326 = OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_220_3(v326);
  OUTLINED_FUNCTION_254(v965);
  v327 = OUTLINED_FUNCTION_77_4();
  OUTLINED_FUNCTION_220_3(v327);
  v328 = OUTLINED_FUNCTION_77_4();
  OUTLINED_FUNCTION_104(v328);
  if (!v66)
  {
    OUTLINED_FUNCTION_85_4();
    OUTLINED_FUNCTION_53_7();
    memcpy(v335, v336, 0x221uLL);
    OUTLINED_FUNCTION_53_7();
    memcpy(v337, v338, 0x221uLL);
    v339 = OUTLINED_FUNCTION_47_8();
    OUTLINED_FUNCTION_223_2(v339);
    OUTLINED_FUNCTION_46_10();
    if (!v340)
    {
      OUTLINED_FUNCTION_223_2(v932);
      v347 = OUTLINED_FUNCTION_78_3();
      OUTLINED_FUNCTION_98_7(v347);
      v348 = OUTLINED_FUNCTION_90_5();
      OUTLINED_FUNCTION_98_7(v348);
      v349 = OUTLINED_FUNCTION_85_4();
      OUTLINED_FUNCTION_98_7(v349);
      v350 = static Artwork.== infix(_:_:)(v935, v932);
      memcpy(v930, v932, 0x221uLL);
      sub_217284084(v930);
      memcpy(v931, v935, sizeof(v931));
      sub_217284084(v931);
      OUTLINED_FUNCTION_53_7();
      memcpy(v351, v352, 0x221uLL);
      OUTLINED_FUNCTION_169_1(v932);
      if ((v350 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_138;
    }

    OUTLINED_FUNCTION_53_7();
    memcpy(v341, v342, 0x221uLL);
    v343 = OUTLINED_FUNCTION_78_3();
    OUTLINED_FUNCTION_98_7(v343);
    v344 = OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_98_7(v344);
    v345 = OUTLINED_FUNCTION_85_4();
    OUTLINED_FUNCTION_98_7(v345);
    v72 = v932;
LABEL_9:
    sub_217284084(v72);
LABEL_11:
    OUTLINED_FUNCTION_47_8();
    OUTLINED_FUNCTION_53_7();
    memcpy(v76, v77, 0x449uLL);
LABEL_12:
    v78 = OUTLINED_FUNCTION_47_8();
LABEL_13:
    sub_2171F0738(v78, v79, v80);
    goto LABEL_14;
  }

  v329 = OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_223_2(v329);
  OUTLINED_FUNCTION_46_10();
  if (!v66)
  {
    v346 = OUTLINED_FUNCTION_78_3();
    OUTLINED_FUNCTION_55_5(v346);
    v74 = OUTLINED_FUNCTION_90_5();
    v75 = v936;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_85_4();
  OUTLINED_FUNCTION_53_7();
  memcpy(v330, v331, 0x221uLL);
  v332 = OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_157(v332, v935);
  v333 = OUTLINED_FUNCTION_90_5();
  OUTLINED_FUNCTION_157(v333, v935);
  v334 = OUTLINED_FUNCTION_85_4();
  OUTLINED_FUNCTION_169_1(v334);
LABEL_138:
  OUTLINED_FUNCTION_15_19();
  if (v355)
  {
    if (!v353)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_59_0(v354);
    v358 = v66 && v356 == v357;
    if (!v358 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v353)
  {
    goto LABEL_14;
  }

  v359 = &v907[v909[25]];
  memcpy(v933, v359, sizeof(v933));
  v360 = v910 + v909[25];
  memcpy(v934, v360, sizeof(v934));
  v361 = v933[0];
  v362 = v933[1];
  memcpy(v931, v359 + 16, 0x68uLL);
  v363 = v934[0];
  v364 = v934[1];
  memcpy(v930, (v360 + 16), 0x68uLL);
  if (v933[1])
  {
    OUTLINED_FUNCTION_235_1();
    OUTLINED_FUNCTION_221_3();
    OUTLINED_FUNCTION_47_8();
    OUTLINED_FUNCTION_53_7();
    memcpy(v365, v366, 0x78uLL);
    if (v364)
    {
      memcpy(&v936[1], (v360 + 16), 0x68uLL);
      *&v936[0] = v363;
      *(&v936[0] + 1) = v364;
      OUTLINED_FUNCTION_195_3(v933, v935);
      OUTLINED_FUNCTION_195_3(v934, v935);
      v367 = OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_195_3(v367, v935);
      v368 = OUTLINED_FUNCTION_47_8();
      static PlayParameters.== infix(_:_:)(v368, v936);
      v370 = v369;
      memcpy(v932, v936, 0x78uLL);
      sub_2172848C0(v932);
      OUTLINED_FUNCTION_74_5();
      memcpy(v371, v372, 0x78uLL);
      sub_2172848C0(v935);
      *&v936[0] = v361;
      *(&v936[0] + 1) = v362;
      memcpy(&v936[1], v931, 0x68uLL);
      v373 = OUTLINED_FUNCTION_85_4();
      sub_2171F0738(v373, &qword_27CB244D0, &unk_21775D620);
      if ((v370 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_156;
    }

    OUTLINED_FUNCTION_85_4();
    OUTLINED_FUNCTION_53_7();
    memcpy(v380, v381, 0x78uLL);
    OUTLINED_FUNCTION_157(v933, v935);
    OUTLINED_FUNCTION_157(v934, v935);
    v382 = OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_157(v382, v935);
    v383 = OUTLINED_FUNCTION_85_4();
    sub_2172848C0(v383);
LABEL_154:
    OUTLINED_FUNCTION_235_1();
    memcpy(v962, v931, 0x68uLL);
    *(&v962[6] + 1) = v363;
    v963 = v364;
    memcpy(v964, v930, 0x68uLL);
    goto LABEL_65;
  }

  if (v934[1])
  {
    OUTLINED_FUNCTION_31_9();
    sub_21726A630(v374, v375, v376, &unk_21775D620);
    OUTLINED_FUNCTION_31_9();
    sub_21726A630(v377, v378, v379, &unk_21775D620);
    goto LABEL_154;
  }

  v961 = v933[0];
  OUTLINED_FUNCTION_221_3();
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_157(v384, v385);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_157(v386, v387);
  v388 = OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_169_1(v388);
LABEL_156:
  OUTLINED_FUNCTION_15_19();
  if (v391)
  {
    if (!v389)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_59_0(v390);
    v394 = v66 && v392 == v393;
    if (!v394 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v389)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_15_19();
  if (v397)
  {
    if (!v395)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_59_0(v396);
    v400 = v66 && v398 == v399;
    if (!v400 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v395)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_34_8();
  if (v402 == 2)
  {
    if (v401 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v401 == 2 || ((v401 ^ v402) & 1) != 0)
  {
    goto LABEL_14;
  }

  v403 = v909[29];
  v404 = &v907[v403];
  v405 = v907[v403 + 8];
  v406 = (v910 + v403);
  v407 = *(v910 + v403 + 8);
  if (v405)
  {
    if (!v407)
    {
      goto LABEL_14;
    }

    goto LABEL_185;
  }

  if (*v404 != *v406)
  {
    LOBYTE(v407) = 1;
  }

  if ((v407 & 1) == 0)
  {
LABEL_185:
    v408 = v907;
    OUTLINED_FUNCTION_220_3(v932);
    OUTLINED_FUNCTION_254(v935);
    v409 = OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_220_3(v409);
    OUTLINED_FUNCTION_254(v965);
    v410 = OUTLINED_FUNCTION_85_4();
    OUTLINED_FUNCTION_220_3(v410);
    v411 = OUTLINED_FUNCTION_85_4();
    OUTLINED_FUNCTION_104(v411);
    if (!v66)
    {
      OUTLINED_FUNCTION_53_7();
      memcpy(v415, v416, 0x221uLL);
      OUTLINED_FUNCTION_53_7();
      memcpy(v417, v418, 0x221uLL);
      v419 = OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_223_2(v419);
      OUTLINED_FUNCTION_46_10();
      if (!v420)
      {
        OUTLINED_FUNCTION_223_2(v929);
        OUTLINED_FUNCTION_115_4(v932);
        OUTLINED_FUNCTION_115_4(v935);
        OUTLINED_FUNCTION_115_4(v931);
        v423 = static Artwork.== infix(_:_:)(v930, v929);
        memcpy(v927, v929, 0x221uLL);
        sub_217284084(v927);
        memcpy(v928, v930, 0x221uLL);
        sub_217284084(v928);
        OUTLINED_FUNCTION_53_7();
        memcpy(v424, v425, 0x221uLL);
        OUTLINED_FUNCTION_169_1(v929);
        if ((v423 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_194:
        if (OUTLINED_FUNCTION_36_8(v909[31]))
        {
          if (!v426)
          {
            goto LABEL_14;
          }

          sub_217270790();
          if ((v427 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else if (v426)
        {
          goto LABEL_14;
        }

        v428 = v909[32];
        v429 = *(v913 + 48);
        v430 = OUTLINED_FUNCTION_204_2();
        v431 = v918;
        OUTLINED_FUNCTION_157(v430, v918);
        OUTLINED_FUNCTION_157(v910 + v428, v431 + v429);
        OUTLINED_FUNCTION_133(v431, 1, v916);
        if (v66)
        {
          OUTLINED_FUNCTION_133(v918 + v429, 1, v916);
          if (v66)
          {
            sub_2171F0738(v918, &unk_27CB277C0, &qword_217758DC0);
            goto LABEL_209;
          }
        }

        else
        {
          v432 = v918;
          sub_21726A630(v918, v917, &unk_27CB277C0, &qword_217758DC0);
          OUTLINED_FUNCTION_133(v432 + v429, 1, v916);
          if (!v433)
          {
            v363 = v911;
            v434 = v918;
            (*(v911 + 32))(v914, v918 + v429, v916);
            OUTLINED_FUNCTION_92_4();
            sub_217351338(v435, v436, MEMORY[0x277CC9278]);
            v431 = v917;
            OUTLINED_FUNCTION_156_3();
            sub_217751F08();
            v437 = OUTLINED_FUNCTION_231_1();
            (v408)(v437);
            v438 = OUTLINED_FUNCTION_211();
            (v408)(v438);
            sub_2171F0738(v434, &unk_27CB277C0, &qword_217758DC0);
            if ((v428 & 1) == 0)
            {
              goto LABEL_14;
            }

LABEL_209:
            OUTLINED_FUNCTION_15_19();
            if (v441)
            {
              if (!v439)
              {
                goto LABEL_14;
              }

              OUTLINED_FUNCTION_59_0(v440);
              v444 = v66 && v442 == v443;
              if (!v444 && (sub_217753058() & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            else if (v439)
            {
              goto LABEL_14;
            }

            OUTLINED_FUNCTION_15_19();
            if (v447)
            {
              if (!v445)
              {
                goto LABEL_14;
              }

              OUTLINED_FUNCTION_59_0(v446);
              v450 = v66 && v448 == v449;
              if (!v450 && (sub_217753058() & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            else if (v445)
            {
              goto LABEL_14;
            }

            v451 = v909[35];
            OUTLINED_FUNCTION_203_3();
            OUTLINED_FUNCTION_204_2();
            v452 = v903;
            OUTLINED_FUNCTION_156_3();
            sub_21726A630(v453, v454, v455, &qword_217759480);
            OUTLINED_FUNCTION_71_7();
            OUTLINED_FUNCTION_17_10(v452);
            if (v66)
            {
              OUTLINED_FUNCTION_17_10(v903 + v431);
              if (v66)
              {
                sub_2171F0738(v903, &qword_27CB241C0, &qword_217759480);
                goto LABEL_237;
              }
            }

            else
            {
              v456 = v903;
              sub_21726A630(v903, v919, &qword_27CB241C0, &qword_217759480);
              OUTLINED_FUNCTION_17_10(v456 + v431);
              if (!v457)
              {
                OUTLINED_FUNCTION_187_3();
                v459 = v903;
                v460 = OUTLINED_FUNCTION_37_7();
                v461(v460);
                OUTLINED_FUNCTION_0_23();
                sub_217351338(v462, v463, MEMORY[0x277CC9598]);
                v431 = v919;
                OUTLINED_FUNCTION_156_3();
                sub_217751F08();
                v464 = OUTLINED_FUNCTION_105_7();
                v363(v464);
                v465 = OUTLINED_FUNCTION_211();
                v363(v465);
                sub_2171F0738(v459, &qword_27CB241C0, &qword_217759480);
                if ((v451 & 1) == 0)
                {
                  goto LABEL_14;
                }

LABEL_237:
                OUTLINED_FUNCTION_14_16(v909[36]);
                if (v467 == 3)
                {
                  if (v466 != 3)
                  {
                    goto LABEL_14;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_57_6();
                  if (v468 == 3)
                  {
                    goto LABEL_14;
                  }

                  v469 = OUTLINED_FUNCTION_18_14();
                  if (!static LegacyModelFavoriteStatus.== infix(_:_:)(v469, v470))
                  {
                    goto LABEL_14;
                  }
                }

                OUTLINED_FUNCTION_34_8();
                if (v472 == 2)
                {
                  if (v471 != 2)
                  {
                    goto LABEL_14;
                  }
                }

                else if (v471 == 2 || ((v471 ^ v472) & 1) != 0)
                {
                  goto LABEL_14;
                }

                OUTLINED_FUNCTION_14_16(v909[38]);
                if (v474 == 5)
                {
                  if (v473 != 5)
                  {
                    goto LABEL_14;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_57_6();
                  if (v475 == 5)
                  {
                    goto LABEL_14;
                  }

                  v476 = OUTLINED_FUNCTION_18_14();
                  if (!static LegacyModelKeepLocalEnabledStatus.== infix(_:_:)(v476, v477))
                  {
                    goto LABEL_14;
                  }
                }

                OUTLINED_FUNCTION_14_16(v909[39]);
                if (v479 == 7)
                {
                  if (v478 != 7)
                  {
                    goto LABEL_14;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_57_6();
                  if (v480 == 7)
                  {
                    goto LABEL_14;
                  }

                  v481 = OUTLINED_FUNCTION_18_14();
                  if (!static LegacyModelKeepLocalManagedStatus.== infix(_:_:)(v481, v482))
                  {
                    goto LABEL_14;
                  }
                }

                OUTLINED_FUNCTION_205_3();
                if (v486)
                {
                  if ((v485 & 1) == 0)
                  {
                    goto LABEL_14;
                  }
                }

                else if ((v485 & 1) != 0 || !sub_21770C140(*v483, *v484))
                {
                  goto LABEL_14;
                }

                v487 = v909[41];
                OUTLINED_FUNCTION_203_3();
                OUTLINED_FUNCTION_204_2();
                v488 = v904;
                OUTLINED_FUNCTION_156_3();
                sub_21726A630(v489, v490, v491, &qword_217759480);
                OUTLINED_FUNCTION_71_7();
                OUTLINED_FUNCTION_17_10(v488);
                if (v66)
                {
                  OUTLINED_FUNCTION_17_10(&v904[v431]);
                  if (v66)
                  {
                    sub_2171F0738(v904, &qword_27CB241C0, &qword_217759480);
                    goto LABEL_272;
                  }
                }

                else
                {
                  v492 = v904;
                  sub_21726A630(v904, v920, &qword_27CB241C0, &qword_217759480);
                  OUTLINED_FUNCTION_17_10(v492 + v431);
                  if (!v493)
                  {
                    OUTLINED_FUNCTION_187_3();
                    v495 = v904;
                    v496 = OUTLINED_FUNCTION_37_7();
                    v497(v496);
                    OUTLINED_FUNCTION_0_23();
                    sub_217351338(v498, v499, MEMORY[0x277CC9598]);
                    v431 = v920;
                    OUTLINED_FUNCTION_156_3();
                    sub_217751F08();
                    v500 = OUTLINED_FUNCTION_105_7();
                    v363(v500);
                    v501 = OUTLINED_FUNCTION_211();
                    v363(v501);
                    sub_2171F0738(v495, &qword_27CB241C0, &qword_217759480);
                    if ((v487 & 1) == 0)
                    {
                      goto LABEL_14;
                    }

LABEL_272:
                    v502 = v909[42];
                    OUTLINED_FUNCTION_203_3();
                    OUTLINED_FUNCTION_204_2();
                    v503 = v905;
                    OUTLINED_FUNCTION_156_3();
                    sub_21726A630(v504, v505, v506, &qword_217759480);
                    OUTLINED_FUNCTION_71_7();
                    OUTLINED_FUNCTION_17_10(v503);
                    if (v66)
                    {
                      OUTLINED_FUNCTION_17_10(&v905[v431]);
                      if (v66)
                      {
                        sub_2171F0738(v905, &qword_27CB241C0, &qword_217759480);
                        goto LABEL_282;
                      }
                    }

                    else
                    {
                      v507 = v905;
                      sub_21726A630(v905, v921, &qword_27CB241C0, &qword_217759480);
                      OUTLINED_FUNCTION_17_10(v507 + v431);
                      if (!v508)
                      {
                        OUTLINED_FUNCTION_187_3();
                        v510 = v905;
                        v511 = OUTLINED_FUNCTION_37_7();
                        v512(v511);
                        OUTLINED_FUNCTION_0_23();
                        sub_217351338(v513, v514, MEMORY[0x277CC9598]);
                        v431 = v921;
                        OUTLINED_FUNCTION_156_3();
                        sub_217751F08();
                        v515 = OUTLINED_FUNCTION_105_7();
                        v363(v515);
                        v516 = OUTLINED_FUNCTION_211();
                        v363(v516);
                        sub_2171F0738(v510, &qword_27CB241C0, &qword_217759480);
                        if ((v502 & 1) == 0)
                        {
                          goto LABEL_14;
                        }

LABEL_282:
                        v517 = v909[43];
                        OUTLINED_FUNCTION_203_3();
                        v518 = &qword_27CB241C0;
                        v519 = v906;
                        OUTLINED_FUNCTION_156_3();
                        sub_21726A630(v520, v521, v522, &qword_217759480);
                        OUTLINED_FUNCTION_71_7();
                        OUTLINED_FUNCTION_17_10(v519);
                        if (v66)
                        {
                          OUTLINED_FUNCTION_17_10(v906 + v431);
                          if (v66)
                          {
                            sub_2171F0738(v906, &qword_27CB241C0, &qword_217759480);
                            goto LABEL_292;
                          }
                        }

                        else
                        {
                          v518 = v906;
                          sub_21726A630(v906, v922, &qword_27CB241C0, &qword_217759480);
                          OUTLINED_FUNCTION_17_10(v518 + v431);
                          if (!v523)
                          {
                            v525 = v906;
                            v526 = OUTLINED_FUNCTION_37_7();
                            v527(v526);
                            OUTLINED_FUNCTION_0_23();
                            sub_217351338(v528, v529, MEMORY[0x277CC9598]);
                            v431 = v922;
                            OUTLINED_FUNCTION_156_3();
                            sub_217751F08();
                            v530 = OUTLINED_FUNCTION_231_1();
                            (v408)(v530);
                            v531 = OUTLINED_FUNCTION_211();
                            (v408)(v531);
                            sub_2171F0738(v525, &qword_27CB241C0, &qword_217759480);
                            if ((v517 & 1) == 0)
                            {
                              goto LABEL_14;
                            }

LABEL_292:
                            OUTLINED_FUNCTION_14_16(v909[44]);
                            if (v533 == 2)
                            {
                              if (v532 != 2)
                              {
                                goto LABEL_14;
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_57_6();
                              if (v534 == 2)
                              {
                                goto LABEL_14;
                              }

                              v535 = OUTLINED_FUNCTION_18_14();
                              if (!static ContentRating.== infix(_:_:)(v535, v536))
                              {
                                goto LABEL_14;
                              }
                            }

                            OUTLINED_FUNCTION_34_8();
                            if (v538 == 2)
                            {
                              if (v537 != 2)
                              {
                                goto LABEL_14;
                              }
                            }

                            else if (v537 == 2 || ((v537 ^ v538) & 1) != 0)
                            {
                              goto LABEL_14;
                            }

                            OUTLINED_FUNCTION_34_8();
                            if (v540 == 2)
                            {
                              if (v539 != 2)
                              {
                                goto LABEL_14;
                              }
                            }

                            else if (v539 == 2 || ((v539 ^ v540) & 1) != 0)
                            {
                              goto LABEL_14;
                            }

                            OUTLINED_FUNCTION_34_8();
                            if (v542 == 2)
                            {
                              if (v541 != 2)
                              {
                                goto LABEL_14;
                              }
                            }

                            else if (v541 == 2 || ((v541 ^ v542) & 1) != 0)
                            {
                              goto LABEL_14;
                            }

                            OUTLINED_FUNCTION_34_8();
                            if (v544 == 2)
                            {
                              if (v543 != 2)
                              {
                                goto LABEL_14;
                              }
                            }

                            else if (v543 == 2 || ((v543 ^ v544) & 1) != 0)
                            {
                              goto LABEL_14;
                            }

                            OUTLINED_FUNCTION_178_3();
                            v546 = *v545;
                            v547 = v545[1];
                            v548 = v545[2];
                            v549 = v545[3];
                            if (v408)
                            {
                              OUTLINED_FUNCTION_235_1();
                              *&v962[0] = v431;
                              *(&v962[0] + 1) = v518;
                              if (v547)
                              {
                                *&v956 = v546;
                                *(&v956 + 1) = v547;
                                *&v957 = v548;
                                *(&v957 + 1) = v549;
                                v550 = OUTLINED_FUNCTION_1_21();
                                v552 = static MusicDeviceLocalID.== infix(_:_:)(v550, v551);
                                v925 = *(&v957 + 1);
                                v926 = *(&v956 + 1);
                                v553 = OUTLINED_FUNCTION_3_7();
                                sub_2172A5428(v553, v554, v555, v556);
                                v557 = OUTLINED_FUNCTION_152_4();
                                sub_2172A5428(v557, v558, v559, v560);
                                v561 = OUTLINED_FUNCTION_3_7();
                                sub_2172A5428(v561, v562, v563, v564);

                                v565 = OUTLINED_FUNCTION_3_7();
                                sub_2172B8404(v565, v566);
                                if ((v552 & 1) == 0)
                                {
                                  goto LABEL_14;
                                }

LABEL_326:
                                OUTLINED_FUNCTION_205_3();
                                if (v592)
                                {
                                  if ((v591 & 1) == 0)
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                else if ((v591 & 1) != 0 || !sub_21770C140(*v589, *v590))
                                {
                                  goto LABEL_14;
                                }

                                OUTLINED_FUNCTION_14_16(v909[51]);
                                if (v594 == 10)
                                {
                                  if (v593 != 10)
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_57_6();
                                  if (v595 == 10)
                                  {
                                    goto LABEL_14;
                                  }

                                  v596 = OUTLINED_FUNCTION_18_14();
                                  if (!static LegacyModelPlaylistType.== infix(_:_:)(v596, v597))
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                OUTLINED_FUNCTION_96_4();
                                OUTLINED_FUNCTION_16_18();
                                OUTLINED_FUNCTION_33_9();
                                if (*(&v962[4] + 1))
                                {
                                  v598 = OUTLINED_FUNCTION_1_21();
                                  sub_21726A630(v598, v599, v600, v601);
                                  if (!v964[7])
                                  {
                                    goto LABEL_395;
                                  }

                                  OUTLINED_FUNCTION_86_2();
                                  v602 = OUTLINED_FUNCTION_35_7();
                                  v604 = sub_21733E390(v602, v603);
                                  OUTLINED_FUNCTION_36();
                                  sub_2171F0738(v605, v606, v607);
                                  OUTLINED_FUNCTION_45_10();
                                  v608 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v608, v609, v610);
                                  if ((v604 & 1) == 0)
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                else
                                {
                                  if (v964[7])
                                  {
                                    goto LABEL_65;
                                  }

                                  v611 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v611, v612, v613);
                                }

                                OUTLINED_FUNCTION_96_4();
                                OUTLINED_FUNCTION_16_18();
                                OUTLINED_FUNCTION_33_9();
                                if (*(&v962[4] + 1))
                                {
                                  v614 = OUTLINED_FUNCTION_1_21();
                                  sub_21726A630(v614, v615, v616, v617);
                                  if (!v964[7])
                                  {
                                    v643 = OUTLINED_FUNCTION_47_8();
                                    sub_2171F0738(v643, v644, v645);
                                    goto LABEL_65;
                                  }

                                  OUTLINED_FUNCTION_86_2();
                                  v618 = OUTLINED_FUNCTION_35_7();
                                  v620 = sub_21733E6D0(v618, v619);
                                  OUTLINED_FUNCTION_36();
                                  sub_2171F0738(v621, v622, v623);
                                  OUTLINED_FUNCTION_45_10();
                                  v624 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v624, v625, v626);
                                  if ((v620 & 1) == 0)
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                else
                                {
                                  if (v964[7])
                                  {
                                    goto LABEL_65;
                                  }

                                  v627 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v627, v628, v629);
                                }

                                OUTLINED_FUNCTION_96_4();
                                OUTLINED_FUNCTION_16_18();
                                OUTLINED_FUNCTION_33_9();
                                if (*(&v962[4] + 1))
                                {
                                  v630 = OUTLINED_FUNCTION_1_21();
                                  sub_21726A630(v630, v631, v632, v633);
                                  if (!v964[7])
                                  {
                                    v662 = OUTLINED_FUNCTION_47_8();
                                    sub_2171F0738(v662, v663, v664);
                                    goto LABEL_65;
                                  }

                                  OUTLINED_FUNCTION_86_2();
                                  v634 = OUTLINED_FUNCTION_35_7();
                                  v636 = sub_21733E724(v634, v635);
                                  OUTLINED_FUNCTION_36();
                                  sub_2171F0738(v637, v638, v639);
                                  OUTLINED_FUNCTION_45_10();
                                  v640 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v640, v641, v642);
                                  if ((v636 & 1) == 0)
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                else
                                {
                                  if (v964[7])
                                  {
                                    goto LABEL_65;
                                  }

                                  v646 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v646, v647, v648);
                                }

                                OUTLINED_FUNCTION_96_4();
                                OUTLINED_FUNCTION_16_18();
                                OUTLINED_FUNCTION_33_9();
                                if (*(&v962[4] + 1))
                                {
                                  v649 = OUTLINED_FUNCTION_1_21();
                                  sub_21726A630(v649, v650, v651, v652);
                                  if (!v964[7])
                                  {
                                    goto LABEL_395;
                                  }

                                  OUTLINED_FUNCTION_86_2();
                                  v653 = OUTLINED_FUNCTION_35_7();
                                  v655 = sub_21733E390(v653, v654);
                                  OUTLINED_FUNCTION_36();
                                  sub_2171F0738(v656, v657, v658);
                                  OUTLINED_FUNCTION_45_10();
                                  v659 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v659, v660, v661);
                                  if ((v655 & 1) == 0)
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                else
                                {
                                  if (v964[7])
                                  {
                                    goto LABEL_65;
                                  }

                                  v665 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v665, v666, v667);
                                }

                                OUTLINED_FUNCTION_96_4();
                                OUTLINED_FUNCTION_16_18();
                                OUTLINED_FUNCTION_33_9();
                                if (*(&v962[4] + 1))
                                {
                                  v668 = OUTLINED_FUNCTION_1_21();
                                  sub_21726A630(v668, v669, v670, v671);
                                  if (!v964[7])
                                  {
LABEL_434:
                                    v861 = OUTLINED_FUNCTION_47_8();
                                    sub_2171F0738(v861, v862, v863);
                                    goto LABEL_65;
                                  }

                                  OUTLINED_FUNCTION_86_2();
                                  v672 = OUTLINED_FUNCTION_35_7();
                                  v674 = sub_21733E778(v672, v673);
                                  OUTLINED_FUNCTION_36();
                                  sub_2171F0738(v675, v676, v677);
                                  OUTLINED_FUNCTION_45_10();
                                  v678 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v678, v679, v680);
                                  if ((v674 & 1) == 0)
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                else
                                {
                                  if (v964[7])
                                  {
                                    goto LABEL_65;
                                  }

                                  v681 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v681, v682, v683);
                                }

                                OUTLINED_FUNCTION_96_4();
                                OUTLINED_FUNCTION_16_18();
                                OUTLINED_FUNCTION_33_9();
                                if (*(&v962[4] + 1))
                                {
                                  v684 = OUTLINED_FUNCTION_1_21();
                                  sub_21726A630(v684, v685, v686, v687);
                                  if (!v964[7])
                                  {
                                    v713 = OUTLINED_FUNCTION_47_8();
                                    sub_2171F0738(v713, v714, v715);
                                    goto LABEL_65;
                                  }

                                  OUTLINED_FUNCTION_86_2();
                                  v688 = OUTLINED_FUNCTION_35_7();
                                  v690 = sub_21733E7CC(v688, v689);
                                  OUTLINED_FUNCTION_36();
                                  sub_2171F0738(v691, v692, v693);
                                  OUTLINED_FUNCTION_45_10();
                                  v694 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v694, v695, v696);
                                  if ((v690 & 1) == 0)
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                else
                                {
                                  if (v964[7])
                                  {
                                    goto LABEL_65;
                                  }

                                  v697 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v697, v698, v699);
                                }

                                OUTLINED_FUNCTION_96_4();
                                OUTLINED_FUNCTION_16_18();
                                OUTLINED_FUNCTION_33_9();
                                if (*(&v962[4] + 1))
                                {
                                  v700 = OUTLINED_FUNCTION_1_21();
                                  sub_21726A630(v700, v701, v702, v703);
                                  if (!v964[7])
                                  {
                                    v733 = OUTLINED_FUNCTION_47_8();
                                    sub_2171F0738(v733, v734, v735);
                                    goto LABEL_65;
                                  }

                                  OUTLINED_FUNCTION_86_2();
                                  v704 = OUTLINED_FUNCTION_35_7();
                                  v706 = sub_21733E820(v704, v705);
                                  OUTLINED_FUNCTION_36();
                                  sub_2171F0738(v707, v708, v709);
                                  OUTLINED_FUNCTION_45_10();
                                  v710 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v710, v711, v712);
                                  if ((v706 & 1) == 0)
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                else
                                {
                                  if (v964[7])
                                  {
                                    goto LABEL_65;
                                  }

                                  v716 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v716, v717, v718);
                                }

                                v719 = v909[59];
                                OUTLINED_FUNCTION_96_4();
                                v720 = &qword_27CB25330;
                                OUTLINED_FUNCTION_16_18();
                                OUTLINED_FUNCTION_33_9();
                                if (!*(&v962[4] + 1))
                                {
                                  if (v964[7])
                                  {
                                    goto LABEL_65;
                                  }

                                  v736 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v736, v737, v738);
LABEL_392:
                                  OUTLINED_FUNCTION_178_3();
                                  v741 = *v739;
                                  v740 = v739[1];
                                  v742 = v739[2];
                                  v743 = v739[3];
                                  if (v408 == 1)
                                  {
                                    OUTLINED_FUNCTION_75_4();
                                    sub_2172838F8(v744, v745, v746, v747);
                                    if (v740 == 1)
                                    {
                                      OUTLINED_FUNCTION_39_0();
                                      sub_2172838F8(v748, v749, v750, v751);
                                      OUTLINED_FUNCTION_75_4();
                                      sub_217283940(v752, v753, v754, v755);
LABEL_402:
                                      OUTLINED_FUNCTION_15_19();
                                      if (v804)
                                      {
                                        if (!v802)
                                        {
                                          goto LABEL_14;
                                        }

                                        OUTLINED_FUNCTION_59_0(v803);
                                        v807 = v66 && v805 == v806;
                                        if (!v807 && (sub_217753058() & 1) == 0)
                                        {
                                          goto LABEL_14;
                                        }
                                      }

                                      else if (v802)
                                      {
                                        goto LABEL_14;
                                      }

                                      v808 = v909[62];
                                      v809 = *(v910 + v808);
                                      if (*&v907[v808])
                                      {
                                        if (!v809)
                                        {
                                          goto LABEL_14;
                                        }

                                        sub_217751DE8();
                                        sub_21726F358();
                                        v811 = v810;

                                        if ((v811 & 1) == 0)
                                        {
                                          goto LABEL_14;
                                        }
                                      }

                                      else if (v809)
                                      {
                                        goto LABEL_14;
                                      }

                                      v812 = v909[63];
                                      OUTLINED_FUNCTION_96_4();
                                      OUTLINED_FUNCTION_16_18();
                                      OUTLINED_FUNCTION_157(v910 + v812, (v743 + 128));
                                      if (*&v962[0])
                                      {
                                        v813 = OUTLINED_FUNCTION_1_21();
                                        sub_21726A630(v813, v814, v815, v816);
                                        if (!v964[1])
                                        {
                                          v842 = OUTLINED_FUNCTION_47_8();
                                          sub_2171F0738(v842, v843, v844);
                                          goto LABEL_65;
                                        }

                                        memcpy(v931, v743 + 128, 0x80uLL);
                                        v817 = OUTLINED_FUNCTION_35_7();
                                        v819 = sub_2172DE0D0(v817, v818);
                                        v743 = &unk_21775EA00;
                                        OUTLINED_FUNCTION_36();
                                        sub_2171F0738(v820, v821, v822);
                                        OUTLINED_FUNCTION_45_10();
                                        v823 = OUTLINED_FUNCTION_50_6();
                                        sub_2171F0738(v823, v824, v825);
                                        if ((v819 & 1) == 0)
                                        {
                                          goto LABEL_14;
                                        }
                                      }

                                      else
                                      {
                                        if (v964[1])
                                        {
                                          goto LABEL_65;
                                        }

                                        v826 = OUTLINED_FUNCTION_50_6();
                                        sub_2171F0738(v826, v827, v828);
                                      }

                                      OUTLINED_FUNCTION_96_4();
                                      OUTLINED_FUNCTION_16_18();
                                      OUTLINED_FUNCTION_33_9();
                                      if (*(&v962[4] + 1))
                                      {
                                        v829 = OUTLINED_FUNCTION_1_21();
                                        sub_21726A630(v829, v830, v831, v832);
                                        if (v964[7])
                                        {
                                          OUTLINED_FUNCTION_86_2();
                                          v833 = OUTLINED_FUNCTION_35_7();
                                          v835 = sub_21733E778(v833, v834);
                                          v743 = &unk_21775D400;
                                          OUTLINED_FUNCTION_36();
                                          sub_2171F0738(v836, v837, v838);
                                          OUTLINED_FUNCTION_45_10();
                                          v839 = OUTLINED_FUNCTION_50_6();
                                          sub_2171F0738(v839, v840, v841);
                                          if ((v835 & 1) == 0)
                                          {
                                            goto LABEL_14;
                                          }

LABEL_430:
                                          v848 = v909[65];
                                          OUTLINED_FUNCTION_96_4();
                                          OUTLINED_FUNCTION_16_18();
                                          OUTLINED_FUNCTION_157(v910 + v848, (v743 + 40));
                                          if (*(&v962[0] + 1))
                                          {
                                            v849 = OUTLINED_FUNCTION_1_21();
                                            sub_21726A630(v849, v850, v851, v852);
                                            if (*&v962[3])
                                            {
                                              v853 = *(v743 + 56);
                                              *v931 = *(v743 + 40);
                                              *&v931[16] = v853;
                                              *&v931[32] = *(v743 + 9);
                                              v854 = OUTLINED_FUNCTION_35_7();
                                              v856 = static AnyPropertyProviderExtendedStorage.== infix(_:_:)(v854, v855);
                                              sub_217350E74(v931);
                                              v857 = OUTLINED_FUNCTION_47_8();
                                              sub_217350E74(v857);
                                              v858 = OUTLINED_FUNCTION_50_6();
                                              sub_2171F0738(v858, v859, v860);
                                              if ((v856 & 1) == 0)
                                              {
                                                goto LABEL_14;
                                              }

LABEL_438:
                                              v867 = OUTLINED_FUNCTION_36_8(v909[66]);
                                              sub_217270140(v867, v868, v869, v870, v871, v872, v873, v874, v901, v902, v903, v904);
                                              if ((v875 & 1) == 0)
                                              {
                                                goto LABEL_14;
                                              }

                                              OUTLINED_FUNCTION_255(v930);
                                              OUTLINED_FUNCTION_255(v929);
                                              OUTLINED_FUNCTION_255(v931);
                                              OUTLINED_FUNCTION_255(v928);
                                              sub_217269EF4(v930, v927);
                                              sub_217269EF4(v931, v927);
                                              static MusicIdentifierSet.== infix(_:_:)();
                                              v877 = v876;
                                              v878 = OUTLINED_FUNCTION_47_8();
                                              memcpy(v878, v928, 0x161uLL);
                                              v879 = OUTLINED_FUNCTION_47_8();
                                              sub_217269F50(v879);
                                              v880 = OUTLINED_FUNCTION_50_6();
                                              memcpy(v880, v929, 0x161uLL);
                                              v881 = OUTLINED_FUNCTION_50_6();
                                              sub_217269F50(v881);
                                              if ((v877 & 1) == 0)
                                              {
                                                goto LABEL_14;
                                              }

                                              v882 = v909[68];
                                              if ((sub_2177060AC(*&v907[v882], *&v907[v882 + 8], v907[v882 + 16], *(v910 + v882), *(v910 + v882 + 8)) & 1) == 0)
                                              {
                                                goto LABEL_14;
                                              }

                                              OUTLINED_FUNCTION_15_19();
                                              if (v885)
                                              {
                                                if (!v883)
                                                {
                                                  goto LABEL_14;
                                                }

                                                OUTLINED_FUNCTION_59_0(v884);
                                                v888 = v66 && v886 == v887;
                                                if (!v888 && (sub_217753058() & 1) == 0)
                                                {
                                                  goto LABEL_14;
                                                }
                                              }

                                              else if (v883)
                                              {
                                                goto LABEL_14;
                                              }

                                              v890 = OUTLINED_FUNCTION_36_8(v909[70]);
                                              sub_217261FB0(v890, v891);
                                              if (v892)
                                              {
                                                v893 = OUTLINED_FUNCTION_36_8(v909[71]);
                                                sub_217261FB0(v893, v894);
                                                if (v895)
                                                {
                                                  v896 = OUTLINED_FUNCTION_36_8(v909[72]);
                                                  sub_217261FB0(v896, v897);
                                                  if (v898)
                                                  {
                                                    v899 = OUTLINED_FUNCTION_36_8(v909[73]);
                                                    sub_217261FB0(v899, v900);
                                                  }
                                                }
                                              }

                                              goto LABEL_14;
                                            }

                                            v889 = OUTLINED_FUNCTION_47_8();
                                            sub_217350E74(v889);
                                          }

                                          else if (!*&v962[3])
                                          {
                                            v864 = OUTLINED_FUNCTION_50_6();
                                            sub_2171F0738(v864, v865, v866);
                                            goto LABEL_438;
                                          }

                                          goto LABEL_65;
                                        }

                                        goto LABEL_434;
                                      }

                                      if (!v964[7])
                                      {
                                        v845 = OUTLINED_FUNCTION_50_6();
                                        sub_2171F0738(v845, v846, v847);
                                        goto LABEL_430;
                                      }

LABEL_65:
                                      v78 = OUTLINED_FUNCTION_50_6();
                                      goto LABEL_13;
                                    }

                                    OUTLINED_FUNCTION_39_0();
                                    sub_2172838F8(v771, v772, v773, v774);
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_235_1();
                                    *&v962[0] = v719;
                                    *(&v962[0] + 1) = v720;
                                    if (v740 != 1)
                                    {
                                      *&v956 = v741;
                                      *(&v956 + 1) = v740;
                                      *&v957 = v742;
                                      *(&v957 + 1) = v743;
                                      v783 = OUTLINED_FUNCTION_1_21();
                                      v785 = static CloudPivotMetadata.== infix(_:_:)(v783, v784);
                                      v925 = *(&v956 + 1);
                                      v926 = *(&v957 + 1);
                                      v786 = OUTLINED_FUNCTION_3_7();
                                      sub_2172838F8(v786, v787, v788, v789);
                                      OUTLINED_FUNCTION_39_0();
                                      sub_2172838F8(v790, v791, v792, v793);
                                      v794 = OUTLINED_FUNCTION_3_7();
                                      sub_2172838F8(v794, v795, v796, v797);

                                      v798 = OUTLINED_FUNCTION_3_7();
                                      sub_217283940(v798, v799, v800, v801);
                                      if ((v785 & 1) == 0)
                                      {
                                        goto LABEL_14;
                                      }

                                      goto LABEL_402;
                                    }

                                    v759 = OUTLINED_FUNCTION_3_7();
                                    sub_2172838F8(v759, v760, v761, v762);
                                    OUTLINED_FUNCTION_39_0();
                                    sub_2172838F8(v763, v764, v765, v766);
                                    v767 = OUTLINED_FUNCTION_3_7();
                                    sub_2172838F8(v767, v768, v769, v770);
                                  }

                                  v775 = OUTLINED_FUNCTION_3_7();
                                  sub_217283940(v775, v776, v777, v778);
                                  OUTLINED_FUNCTION_39_0();
                                  sub_217283940(v779, v780, v781, v782);
                                  goto LABEL_14;
                                }

                                v721 = OUTLINED_FUNCTION_1_21();
                                sub_21726A630(v721, v722, v723, v724);
                                if (v964[7])
                                {
                                  OUTLINED_FUNCTION_86_2();
                                  v725 = OUTLINED_FUNCTION_35_7();
                                  v720 = sub_21733E390(v725, v726);
                                  OUTLINED_FUNCTION_36();
                                  sub_2171F0738(v727, v728, v729);
                                  OUTLINED_FUNCTION_45_10();
                                  v730 = OUTLINED_FUNCTION_50_6();
                                  sub_2171F0738(v730, v731, v732);
                                  if ((v720 & 1) == 0)
                                  {
                                    goto LABEL_14;
                                  }

                                  goto LABEL_392;
                                }

LABEL_395:
                                v756 = OUTLINED_FUNCTION_47_8();
                                sub_2171F0738(v756, v757, v758);
                                goto LABEL_65;
                              }

                              v575 = OUTLINED_FUNCTION_3_7();
                              sub_2172A5428(v575, v576, v577, v578);
                              OUTLINED_FUNCTION_252();
                              v579 = OUTLINED_FUNCTION_3_7();
                              sub_2172A5428(v579, v580, v581, v582);
                            }

                            else
                            {
                              OUTLINED_FUNCTION_75_4();
                              sub_2172A5428(v567, v568, v569, v570);
                              if (!v547)
                              {
                                OUTLINED_FUNCTION_252();
                                OUTLINED_FUNCTION_75_4();
                                sub_2172B8404(v587, v588);
                                goto LABEL_326;
                              }

                              v571 = OUTLINED_FUNCTION_152_4();
                              sub_2172A5428(v571, v572, v573, v574);
                            }

                            v583 = OUTLINED_FUNCTION_3_7();
                            sub_2172B8404(v583, v584);
                            v585 = OUTLINED_FUNCTION_152_4();
                            sub_2172B8404(v585, v586);
                            goto LABEL_14;
                          }

                          OUTLINED_FUNCTION_202_4();
                          v524(v922, v925);
                        }

                        v79 = &qword_27CB25C10;
                        v80 = &unk_217765A50;
                        v78 = v906;
                        goto LABEL_13;
                      }

                      OUTLINED_FUNCTION_202_4();
                      v509(v921, v925);
                    }

                    v79 = &qword_27CB25C10;
                    v80 = &unk_217765A50;
                    v78 = v905;
                    goto LABEL_13;
                  }

                  OUTLINED_FUNCTION_202_4();
                  v494(v920, v925);
                }

                v79 = &qword_27CB25C10;
                v80 = &unk_217765A50;
                v78 = v904;
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_202_4();
              v458(v919, v925);
            }

            v79 = &qword_27CB25C10;
            v80 = &unk_217765A50;
            v78 = v903;
            goto LABEL_13;
          }

          (*(v911 + 8))(v917, v916);
        }

        v79 = &qword_27CB24840;
        v80 = &unk_217758DD0;
        v78 = v918;
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_53_7();
      memcpy(v421, v422, 0x221uLL);
      OUTLINED_FUNCTION_115_4(v932);
      OUTLINED_FUNCTION_115_4(v935);
      OUTLINED_FUNCTION_115_4(v931);
      v72 = v929;
      goto LABEL_9;
    }

    v412 = OUTLINED_FUNCTION_47_8();
    OUTLINED_FUNCTION_223_2(v412);
    OUTLINED_FUNCTION_46_10();
    if (v66)
    {
      OUTLINED_FUNCTION_53_7();
      memcpy(v413, v414, 0x221uLL);
      OUTLINED_FUNCTION_157(v932, v930);
      OUTLINED_FUNCTION_157(v935, v930);
      OUTLINED_FUNCTION_169_1(v931);
      goto LABEL_194;
    }

    OUTLINED_FUNCTION_98_7(v932);
    v74 = v935;
    v75 = v931;
LABEL_10:
    OUTLINED_FUNCTION_157(v74, v75);
    goto LABEL_11;
  }

LABEL_14:
  OUTLINED_FUNCTION_13();
}

void PlaylistPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  v3 = v0;
  OUTLINED_FUNCTION_168_0();
  v135 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v132 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  v131 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v133 = &v129 - v9;
  v10 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_81();
  v139 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_1();
  v138 = v17 - v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_99();
  v137 = v20;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_99();
  v136 = v22;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_99();
  v134 = v24;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v25);
  v27 = &v129 - v26;
  OUTLINED_FUNCTION_225_3(v157);
  OUTLINED_FUNCTION_225_3(v158);
  OUTLINED_FUNCTION_104(v158);
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v147, v157, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v148, v157, 0x221uLL);
    sub_217284028(v148, v149);
    Artwork.hash(into:)(v1);
    v29 = OUTLINED_FUNCTION_246_0();
    memcpy(v29, v147, 0x221uLL);
    v30 = OUTLINED_FUNCTION_246_0();
    sub_217284084(v30);
  }

  if (*(v0 + 552))
  {
    OUTLINED_FUNCTION_119();
    sub_2172849DC();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  memcpy(v148, (v0 + 560), 0x221uLL);
  v31 = OUTLINED_FUNCTION_246_0();
  memcpy(v31, (v0 + 560), 0x221uLL);
  v32 = OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_104(v32);
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v145, v148, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v146, v148, 0x221uLL);
    sub_217284028(v146, v147);
    Artwork.hash(into:)(v1);
    memcpy(v147, v145, 0x221uLL);
    sub_217284084(v147);
  }

  memcpy(v156, (v0 + 1112), sizeof(v156));
  sub_217265348();
  if (*(v0 + 1352))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 1368) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v33 = *(v0 + 1360);
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v33);
  }

  if (*(v0 + 1376))
  {
    OUTLINED_FUNCTION_119();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v34 = *(v0 + 1400);
  v152 = *(v0 + 1384);
  v153 = v34;
  v35 = *(v0 + 1432);
  v154 = *(v0 + 1416);
  v155 = v35;
  sub_217265238();
  if (*(v0 + 1448))
  {
    OUTLINED_FUNCTION_119();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 1456) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v36 = *(v0 + 1496);
  if (v36)
  {
    v37 = *(v0 + 1480);
    *&v149[552] = *(v0 + 1464);
    v150 = v37;
    v151 = v36;
    OUTLINED_FUNCTION_119();
    sub_2172E3DD4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v38 = v12;
  v39 = v139;
  if (*(v0 + 1504) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + 1505) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + 1506) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + 1507) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + 1508) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + 1509) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v40 = *(v0 + 1510);
  if (v40 == 5)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v40);
  }

  v41 = type metadata accessor for PlaylistPropertyProvider(0);
  sub_21726A630(v0 + v41[22], v27, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v27, 1, v10);
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v38 + 32))(v39, v27, v10);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_23();
    v44 = sub_217351338(v42, v43, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_81_5(v44);
    v45 = OUTLINED_FUNCTION_64_8();
    v46(v45);
  }

  OUTLINED_FUNCTION_258(v146);
  OUTLINED_FUNCTION_258(v147);
  OUTLINED_FUNCTION_104(v147);
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v143, v146, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v144, v146, 0x221uLL);
    sub_217284028(v144, v145);
    Artwork.hash(into:)(v1);
    memcpy(v145, v143, 0x221uLL);
    sub_217284084(v145);
  }

  OUTLINED_FUNCTION_180_4();
  if (v27)
  {
    OUTLINED_FUNCTION_150_3();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v47 = (v0 + v41[25]);
  v48 = *v47;
  v49 = v47[1];
  memcpy(v142, v47 + 2, sizeof(v142));
  if (v49)
  {
    memcpy(&v143[1], v47 + 2, 0x68uLL);
    *&v143[0] = v48;
    *(&v143[0] + 1) = v49;
    OUTLINED_FUNCTION_119();
    v144[0] = v48;
    v144[1] = v49;
    memcpy(&v144[2], v142, 0x68uLL);
    sub_2172DF5A4(v144, v145);
    PlayParameters.hash(into:)(v1);
    memcpy(v145, v143, 0x78uLL);
    sub_2172848C0(v145);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_180_4();
  if (v48)
  {
    OUTLINED_FUNCTION_150_3();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_180_4();
  if (v48)
  {
    OUTLINED_FUNCTION_150_3();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v3 + v41[28]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_189_0();
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v51 = *v50;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v51);
  }

  OUTLINED_FUNCTION_258(v144);
  OUTLINED_FUNCTION_258(v145);
  OUTLINED_FUNCTION_104(v145);
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v140, v144, sizeof(v140));
    OUTLINED_FUNCTION_119();
    memcpy(v141, v144, sizeof(v141));
    sub_217284028(v141, v143);
    Artwork.hash(into:)(v1);
    memcpy(v143, v140, 0x221uLL);
    sub_217284084(v143);
  }

  if (*(v3 + v41[31]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_217281100();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v52 = v133;
  sub_21726A630(v3 + v41[32], v133, &unk_27CB277C0, &qword_217758DC0);
  v53 = OUTLINED_FUNCTION_181();
  v54 = v135;
  OUTLINED_FUNCTION_133(v53, v55, v135);
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v56 = v132;
    v57 = *(v132 + 32);
    v130 = v10;
    v58 = v39;
    v59 = v38;
    v60 = v131;
    v57(v131, v52, v54);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_92_4();
    sub_217351338(v61, v62, MEMORY[0x277CC9270]);
    sub_217751EB8();
    v63 = v60;
    v38 = v59;
    v39 = v58;
    v10 = v130;
    (*(v56 + 8))(v63, v54);
  }

  OUTLINED_FUNCTION_180_4();
  if (v54)
  {
    OUTLINED_FUNCTION_150_3();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_180_4();
  if (v54)
  {
    OUTLINED_FUNCTION_150_3();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v3 + v41[35], v134, &qword_27CB241C0, &qword_217759480);
  v64 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v64, v65, v10);
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v66 = OUTLINED_FUNCTION_41_9();
    v67(v66);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_23();
    v70 = sub_217351338(v68, v69, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_81_5(v70);
    v71 = OUTLINED_FUNCTION_64_8();
    v72(v71);
  }

  v73 = *(v3 + v41[36]);
  if (v73 == 3)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v73);
  }

  if (*(v3 + v41[37]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v74 = *(v3 + v41[38]);
  if (v74 == 5)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v74);
  }

  v75 = *(v3 + v41[39]);
  if (v75 == 7)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v75);
  }

  OUTLINED_FUNCTION_189_0();
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v75 = *v76;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v75);
  }

  sub_21726A630(v3 + v41[41], v136, &qword_27CB241C0, &qword_217759480);
  v77 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v77, v78, v10);
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v79 = OUTLINED_FUNCTION_41_9();
    v80(v79);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_23();
    v83 = sub_217351338(v81, v82, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_81_5(v83);
    v84 = OUTLINED_FUNCTION_64_8();
    v85(v84);
  }

  sub_21726A630(v3 + v41[42], v137, &qword_27CB241C0, &qword_217759480);
  v86 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v86, v87, v10);
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v88 = OUTLINED_FUNCTION_41_9();
    v89(v88);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_23();
    v92 = sub_217351338(v90, v91, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_81_5(v92);
    v93 = OUTLINED_FUNCTION_64_8();
    v94(v93);
  }

  sub_21726A630(v3 + v41[43], v138, &qword_27CB241C0, &qword_217759480);
  v95 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v95, v96, v10);
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v97 = OUTLINED_FUNCTION_41_9();
    v98(v97);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_23();
    v101 = sub_217351338(v99, v100, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_81_5(v101);
    (*(v38 + 8))(v39, v10);
  }

  v102 = *(v3 + v41[44]);
  if (v102 == 2)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v102 & 1);
  }

  OUTLINED_FUNCTION_237_1();
  if (!v28)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v28)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v28)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v28)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v103 = v3 + v41[49];
  if (*(v103 + 8))
  {
    v75 = *(v103 + 16);
    OUTLINED_FUNCTION_150_3();
    sub_217751FF8();
    OUTLINED_FUNCTION_179();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_189_0();
  if (v28)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v105 = *v104;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v105);
  }

  v106 = *(v3 + v41[51]);
  if (v106 == 10)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v106);
  }

  OUTLINED_FUNCTION_186_3(&qword_27CB25330, &unk_21775E9B0, v41[52]);
  if (*(&v143[5] + 1))
  {
    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_100_6();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v141, &unk_27CB28230, &unk_21775CD50);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_186_3(&qword_27CB25610, &qword_21775D540, v41[53]);
  if (*(&v143[5] + 1))
  {
    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_100_6();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v141, &qword_27CB25638, &unk_21775EA10);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_186_3(&qword_27CB25608, &unk_21775D530, v41[54]);
  if (*(&v143[5] + 1))
  {
    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_100_6();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v141, &qword_27CB25630, &qword_21775D568);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_186_3(&qword_27CB25330, &unk_21775E9B0, v41[55]);
  if (*(&v143[5] + 1))
  {
    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_100_6();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v141, &unk_27CB28230, &unk_21775CD50);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_186_3(&unk_27CB28A60, &qword_217770B60, v41[56]);
  if (*(&v143[5] + 1))
  {
    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_100_6();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v141, &qword_27CB240D0, &unk_21775D400);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_186_3(&unk_27CB28A30, &unk_21775E9C0, v41[57]);
  if (*(&v143[5] + 1))
  {
    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_100_6();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v141, &unk_27CB2ACA0, &unk_217759C60);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_186_3(&qword_27CB25310, &unk_21775D3D0, v41[58]);
  if (*(&v143[5] + 1))
  {
    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_100_6();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v141, &qword_27CB25398, &unk_21776C4F0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_186_3(&qword_27CB25330, &unk_21775E9B0, v41[59]);
  if (*(&v143[5] + 1))
  {
    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_100_6();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v141, &unk_27CB28230, &unk_21775CD50);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_180_4();
  if (v75 == 1)
  {
    goto LABEL_156;
  }

  v108 = *(v107 + 24);
  OUTLINED_FUNCTION_119();
  if (v75)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (!v108)
  {
LABEL_156:
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_148();
    sub_217751FF8();
  }

  if (*(v3 + v41[61] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v3 + v41[62]))
  {
    OUTLINED_FUNCTION_119();
    v109 = OUTLINED_FUNCTION_148();
    sub_21727DDE0(v109, v110, v111, v112, v113, v114, v115);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_186_3(&qword_27CB24230, &unk_21775E9D0, v41[63]);
  if (*&v143[1])
  {
    memcpy(v141, v143, 0x80uLL);
    OUTLINED_FUNCTION_119();
    v116 = OUTLINED_FUNCTION_100_6();
    sub_2172DE694(v116);
    sub_2171F0738(v141, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_186_3(&unk_27CB28A60, &qword_217770B60, v41[64]);
  if (*(&v143[5] + 1))
  {
    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_100_6();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v141, &qword_27CB240D0, &unk_21775D400);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v3 + v41[65], v141, &qword_27CB24BA8, &unk_217772FF0);
  if (*&v141[24])
  {
    v143[0] = *v141;
    v143[1] = *&v141[16];
    *&v143[2] = *&v141[32];
    OUTLINED_FUNCTION_119();
    __swift_project_boxed_opaque_existential_1(v143, *(&v143[1] + 1));
    v117 = OUTLINED_FUNCTION_148();
    v118(v117);
    sub_217350E74(v143);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v119 = OUTLINED_FUNCTION_201();
  sub_217281970(v119, v120);
  memcpy(v143, (v3 + v41[67]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v1);
  sub_217751FF8();
  if (*(v3 + v41[69] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v121 = OUTLINED_FUNCTION_201();
  sub_217265A08(v121, v122);
  v123 = OUTLINED_FUNCTION_201();
  sub_217265A08(v123, v124);
  v125 = OUTLINED_FUNCTION_201();
  sub_217265A08(v125, v126);
  v127 = OUTLINED_FUNCTION_201();
  sub_217265A08(v127, v128);
  OUTLINED_FUNCTION_13();
}

uint64_t PlaylistPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  PlaylistPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_217350D10(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  PlaylistPropertyProvider.subscript.getter();
  return sub_21734A354;
}

uint64_t sub_217350D8C(uint64_t a1)
{
  sub_2177531E8();
  PlaylistPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t sub_217350E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_31Tm()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t objectdestroy_37Tm()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_79();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
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

uint64_t sub_2173510D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21735113C(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217351198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25C08;
  if (!qword_27CB25C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25C08);
  }

  return result;
}

uint64_t sub_217351338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2173513A8(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7698, &type metadata for Artwork);
  v2 = v1;
  if (v3 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7570, &qword_27CB24C70, &unk_217759670);
  if (v5 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, qword_280BE7AD0, &type metadata for CloudCoverArtworkRecipe);
  if (v6 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
  if (v8 > 0x3F)
  {
    return v7;
  }

  sub_2172E2E58(319, &qword_280BE7528, MEMORY[0x277D83B88]);
  if (v10 > 0x3F)
  {
    return v9;
  }

  sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
  if (v11 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE7DE8, &type metadata for EditorialNotes);
  if (v12 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
  if (v13 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE7540, MEMORY[0x277D839B0]);
  v15 = v14;
  if (v16 > 0x3F)
  {
    return v15;
  }

  sub_217351B44(319, &qword_280BE7E00, &qword_27CB25BF0, &qword_21775EA20);
  if (v17 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &unk_280BE7650, &type metadata for Playlist.Kind);
  if (v18 > 0x3F)
  {
    return v4;
  }

  sub_217351B98(319, &qword_280BE99F0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v20 > 0x3F)
  {
    return v19;
  }

  sub_2172E2E58(319, &qword_280BE7DD0, &type metadata for PlayParameters);
  if (v21 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE7548, &qword_27CB24C58, &unk_2177677B0);
  v2 = v22;
  if (v23 > 0x3F)
  {
    return v2;
  }

  sub_217351B98(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v2 = v24;
  if (v25 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, qword_280BE7948, &type metadata for LegacyModelFavoriteStatus);
  v2 = v26;
  if (v27 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, &qword_280BE77E0, &type metadata for LegacyModelKeepLocalEnabledStatus);
  v2 = v28;
  if (v29 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, &qword_280BE77D8, &type metadata for LegacyModelKeepLocalManagedStatus);
  v2 = v30;
  if (v31 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, &qword_280BE77C0, &type metadata for LegacyModelKeepLocalManagedStatusReasons);
  v2 = v32;
  if (v33 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, &qword_280BE7E08, &type metadata for ContentRating);
  v2 = v34;
  if (v35 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, &qword_280BE8018, &type metadata for MusicDeviceLocalID);
  v2 = v36;
  if (v37 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, &qword_280BE77C8, &type metadata for LegacyModelPlaylistEditableComponents);
  v2 = v38;
  if (v39 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, qword_280BE79D0, &type metadata for LegacyModelPlaylistType);
  v2 = v40;
  if (v41 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7F80, &unk_27CB28230, &unk_21775CD50);
  v2 = v42;
  if (v43 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7F98, &qword_27CB25638, &unk_21775EA10);
  if (v44 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE7F78, &qword_27CB25630, &qword_21775D568);
  if (v45 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE7FA8, &qword_27CB240D0, &unk_21775D400);
  v15 = v46;
  if (v47 > 0x3F)
  {
    return v15;
  }

  sub_217351B44(319, &qword_280BE7F88, &unk_27CB2ACA0, &unk_217759C60);
  if (v48 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE7FA0, &qword_27CB25398, &unk_21776C4F0);
  if (v49 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, qword_280BE7C10, &type metadata for CloudPivotMetadata);
  v2 = v50;
  if (v51 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
    v2 = v52;
    if (v53 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE7AB8, &qword_27CB24238, &unk_21775EA00);
      v2 = v54;
      if (v55 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE77D0, &type metadata for AnyPropertyProviderExtendedStorage);
        v2 = v56;
        if (v57 <= 0x3F)
        {
          sub_217351B98(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
          v2 = v58;
          if (v59 <= 0x3F)
          {
            sub_217351BFC();
            v2 = v60;
            if (v61 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_217351B44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2177528F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_217351B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_217351BFC()
{
  if (!qword_280BE75A0)
  {
    v0 = sub_217751E38();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE75A0);
    }
  }
}

void OUTLINED_FUNCTION_14_16(uint64_t a1@<X8>)
{
  v3 = *(*(v2 + 48) + a1);
  v4 = *(v1 + a1);
  *(v2 + 10152) = v3;
  *(v2 + 10153) = v4;
}

uint64_t OUTLINED_FUNCTION_16_18()
{
  v5 = *(v0 + 48) + v3;

  return sub_21726A630(v5, v0 + 10152, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_10()
{

  return sub_2171F0738(v0 + 8496, v1, v2);
}

uint64_t OUTLINED_FUNCTION_55_5(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 4320, v2, v3);
}

__n128 OUTLINED_FUNCTION_56_5()
{
  result = *(v0 + 1120);
  v2 = *(v0 + 1136);
  *(v0 + 1680) = result;
  *(v0 + 1696) = v2;
  *(v0 + 1712) = *(v0 + 1152);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_7(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 4320, v2, v3);
}

uint64_t OUTLINED_FUNCTION_69_8(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 6832, v2, v3);
}

uint64_t OUTLINED_FUNCTION_71_7()
{
  v7 = *(v0 + 72) + v5;

  return sub_21726A630(v7, v3 + v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_81_5(uint64_t a1)
{

  return sub_217751EB8();
}

void *OUTLINED_FUNCTION_86_2()
{

  return memcpy((v0 + 2416), (v1 + 104), 0x68uLL);
}

void *OUTLINED_FUNCTION_87_7()
{

  return memcpy((v0 + 1680), (v0 + 1120), 0x68uLL);
}

void *OUTLINED_FUNCTION_88_5()
{

  return memcpy((v0 + 640), (v0 + 1296), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_98_7(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2416, v2, v3);
}

uint64_t OUTLINED_FUNCTION_99_6@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8) + a3;

  return sub_21726A630(v5, v3 + 1680, a1, a2);
}

uint64_t OUTLINED_FUNCTION_102_6@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_107_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_108_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_109_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_110_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_111_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_112_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_113_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_114_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_115_4(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 760, v2, v3);
}

uint64_t OUTLINED_FUNCTION_116_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_117_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_118_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_120_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_122_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_124_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_125_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_126_4()
{
  v1 = *(v0 + 1688);
  *(v0 + 1680) = *(v0 + 1680);
  *(v0 + 1688) = v1;
}

uint64_t OUTLINED_FUNCTION_127_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_128_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_129_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_130_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_131_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_132_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_134_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_135_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_136_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_137_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_138_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_139_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_140_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_141_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_142_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_144_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_146_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_147_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_148_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_150_3()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_158_2()
{

  return type metadata accessor for PlaylistPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_159_3(uint64_t a1)
{

  return static AnyMusicProperty.== infix(_:_:)(a1, v1);
}

uint64_t OUTLINED_FUNCTION_166_3()
{

  return type metadata accessor for PlaylistPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_170_2()
{
}

uint64_t OUTLINED_FUNCTION_173_3()
{
}

uint64_t OUTLINED_FUNCTION_175_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21733BBDC(v3, v4 + a3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_177_3(uint64_t a1)
{

  return sub_217752D08();
}

void OUTLINED_FUNCTION_182_3(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_183_3@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 1120, a1, a2);
}

uint64_t OUTLINED_FUNCTION_186_3@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 1296, a1, a2);
}

uint64_t OUTLINED_FUNCTION_188_3@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v3 + a3, v4 + 1704, a1, a2);
}

void OUTLINED_FUNCTION_192_3(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];

  sub_2172838F8(v2, v3, v4, v5);
}

double OUTLINED_FUNCTION_193_3()
{
}

uint64_t OUTLINED_FUNCTION_194_3()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_195_3(uint64_t a1, uint64_t a2)
{

  return sub_21726A630(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_197_3@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  result = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v1 = *v3;
  v1[1] = v5;
  v1[2] = v6;
  v1[3] = v7;
  return result;
}

void OUTLINED_FUNCTION_198_3(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v1 = v4;
  *(v1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_219_3@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8) + a3;

  return sub_21726A630(v5, v3 + 1680, a1, a2);
}

void *OUTLINED_FUNCTION_220_3(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x221uLL);
}

void *OUTLINED_FUNCTION_221_3()
{

  return memcpy((v0 + 10168), (v1 + 16), 0x68uLL);
}

void *OUTLINED_FUNCTION_222_2(void *a1)
{

  return memcpy(a1, (v1 + 1112), 0xE8uLL);
}

void *OUTLINED_FUNCTION_223_2(void *a1)
{

  return memcpy(a1, (v1 + 552), 0x221uLL);
}

uint64_t *OUTLINED_FUNCTION_224_2()
{
  *(v0 + 1728) = v1;

  return __swift_allocate_boxed_opaque_existential_0Tm((v0 + 1704));
}

void *OUTLINED_FUNCTION_225_3(void *a1)
{

  return memcpy(a1, v1, 0x221uLL);
}

void *OUTLINED_FUNCTION_226_3(void *a1)
{

  return memcpy(a1, (v1 + 552), 0x221uLL);
}

uint64_t OUTLINED_FUNCTION_227_3()
{

  return type metadata accessor for PlaylistPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_228_3()
{
}

void *OUTLINED_FUNCTION_229_2(void *a1)
{

  return memcpy(a1, (v1 + 560), 0x221uLL);
}

uint64_t OUTLINED_FUNCTION_248(uint64_t a1)
{

  return sub_2171F0738(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_250()
{

  return sub_21726A630(v0, v0 + 32, v1, v2);
}

uint64_t OUTLINED_FUNCTION_251(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void a8, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_252()
{

  sub_2172A5428(v1, 0, v0, v2);
}

uint64_t OUTLINED_FUNCTION_253(uint64_t a1, uint64_t a2)
{

  return sub_21726A630(a1, a2, v2, v3);
}

void *OUTLINED_FUNCTION_254(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x221uLL);
}

void *OUTLINED_FUNCTION_255(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x161uLL);
}

void *OUTLINED_FUNCTION_256(void *a1)
{

  return memcpy(a1, (v1 + 1112), 0xE8uLL);
}

void *OUTLINED_FUNCTION_257(void *a1)
{

  return memcpy(a1, (v1 + 560), 0x221uLL);
}

void *OUTLINED_FUNCTION_258(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x221uLL);
}

uint64_t CatalogFilterID.rawValue.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t sub_217352D14@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = CatalogFilterID.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217352D54@<X0>(uint64_t *a1@<X8>)
{
  result = CatalogFilterID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217352D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4110[0];
  if (!qword_280BE4110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE4110);
  }

  return result;
}

uint64_t MusicDataRequest.response()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_28(sub_217352E2C);
}