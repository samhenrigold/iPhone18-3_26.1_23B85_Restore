unint64_t sub_26940C010(uint64_t a1, uint64_t a2)
{
  v2 = sub_2694245A8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26940C05C(char a1)
{
  result = 0x53555F6E65;
  switch(a1)
  {
    case 1:
      v3 = 1113551984;
      goto LABEL_21;
    case 2:
      v6 = 1130326138;
      goto LABEL_14;
    case 3:
      v3 = 1180660326;
      goto LABEL_21;
    case 4:
      return 0x54495F7469;
    case 5:
      v5 = 1147102564;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 6:
      v3 = 1264545643;
      goto LABEL_21;
    case 7:
      return 0x55525F7572;
    case 8:
      return 0x53455F7365;
    case 9:
      v5 = 1096774241;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 10:
      return OUTLINED_FUNCTION_0_17();
    case 11:
      v4 = 1314876526;
      goto LABEL_19;
    case 12:
      return OUTLINED_FUNCTION_2_9();
    case 13:
      v4 = 1348430960;
LABEL_19:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
      break;
    case 14:
      result = 0x48545F6874;
      break;
    case 15:
      v3 = 1415541364;
LABEL_21:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
      break;
    case 16:
      result = OUTLINED_FUNCTION_1_10();
      break;
    case 17:
      v6 = 1449093494;
LABEL_14:
      result = v6 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
      break;
    case 18:
      result = 0x61696E6961726B75;
      break;
    case 19:
      result = 0x73656E6F746E6163;
      break;
    case 20:
      result = 0x4E495F6968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26940C22C(char a1)
{
  result = 28261;
  switch(a1)
  {
    case 1:
      result = 29808;
      break;
    case 2:
      result = 26746;
      break;
    case 3:
      result = 29286;
      break;
    case 4:
      result = 29801;
      break;
    case 5:
      result = 25956;
      break;
    case 6:
      result = 28523;
      break;
    case 7:
      result = 30066;
      break;
    case 8:
      result = 29541;
      break;
    case 9:
      result = 29281;
      break;
    case 10:
      result = 24938;
      break;
    case 11:
      result = 27758;
      break;
    case 12:
      result = 25705;
      break;
    case 13:
      result = 27760;
      break;
    case 14:
      result = 26740;
      break;
    case 15:
      result = 29300;
      break;
    case 16:
      result = 30580;
      break;
    case 17:
      result = 26998;
      break;
    case 18:
      result = 27509;
      break;
    case 19:
      result = 6649209;
      break;
    case 20:
      result = 26984;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26940C37C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26940BCAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26940C3AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26940BD14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26940C3E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26940C22C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for SupportedSourceLocales(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD9)
  {
    if (a2 + 39 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 39) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 40;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v5 = v6 - 40;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportedSourceLocales(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD8)
  {
    v6 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
        JUMPOUT(0x26940C564);
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
          *result = a2 + 39;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26940C5A0()
{
  result = qword_280310030;
  if (!qword_280310030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310030);
  }

  return result;
}

uint64_t sub_26940C624(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_269424688(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_269424688();
    }
  }

  return result;
}

uint64_t sub_26940C6AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614C746567726174 && a2 == 0xEE0065676175676ELL;
  if (v4 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657361726870 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_269424688();

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

uint64_t sub_26940C778(char a1)
{
  sub_269424738();
  MEMORY[0x26D63C2F0](a1 & 1);
  return sub_269424758();
}

uint64_t sub_26940C7C0(char a1)
{
  if (a1)
  {
    return 0x657361726870;
  }

  else
  {
    return 0x614C746567726174;
  }
}

uint64_t sub_26940C810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26940C6AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26940C838(uint64_t a1)
{
  v2 = sub_26940CDD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26940C874(uint64_t a1)
{
  v2 = sub_26940CDD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26940C8B0()
{

  return v0;
}

uint64_t sub_26940C8D8()
{
  sub_26940C8B0();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_26940C930(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310050, &qword_269428328);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26940CDD8();
  sub_269424788();
  v10[15] = 0;
  sub_269424638();
  if (!v1)
  {
    v10[14] = 1;
    sub_269424638();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_26940CA88(void *a1)
{
  v2 = swift_allocObject();
  sub_26940CAD8(a1);
  return v2;
}

uint64_t sub_26940CAD8(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310040, &qword_269428320);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26940CDD8();
  sub_269424778();
  if (v2)
  {
    type metadata accessor for TranslateAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = sub_2694245E8();
    *(v1 + 24) = v6;
    v8 = sub_2694245E8();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_0_18();
    v12(v11);
    *(v3 + 32) = v8;
    *(v3 + 40) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26940CC98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26940CA88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26940CD0C(void *a1)
{
  a1[1] = sub_26940CD98(&qword_28030FC60, &unk_2694282D8);
  a1[2] = sub_26940CD98(&qword_28030FD98, &unk_2694282B0);
  result = sub_26940CD98(&qword_280310038, &unk_269428288);
  a1[3] = result;
  return result;
}

uint64_t sub_26940CD98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TranslateAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26940CDD8()
{
  result = qword_280310048;
  if (!qword_280310048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310048);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranslateAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26940CEF8);
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

unint64_t sub_26940CF34()
{
  result = qword_280310058;
  if (!qword_280310058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310058);
  }

  return result;
}

unint64_t sub_26940CF8C()
{
  result = qword_280310060;
  if (!qword_280310060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310060);
  }

  return result;
}

unint64_t sub_26940CFE4()
{
  result = qword_280310068;
  if (!qword_280310068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310068);
  }

  return result;
}

uint64_t sub_26940D09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_19_5(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_26940D120(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x6552657361726870;
  }

  if (v2)
  {
    v4 = 0xEF65636E65726566;
  }

  else
  {
    v4 = 0x8000000269428FA0;
  }

  if (a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x6552657361726870;
  }

  if (a2)
  {
    v6 = 0x8000000269428FA0;
  }

  else
  {
    v6 = 0xEF65636E65726566;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_5(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_26940D1C4(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x74616C736E617274;
  }

  else
  {
    v3 = 0x65676175676E616CLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEF6E6F6974634165;
  }

  if (a2)
  {
    v5 = 0x74616C736E617274;
  }

  else
  {
    v5 = 0x65676175676E616CLL;
  }

  if (a2)
  {
    v6 = 0xEF6E6F6974634165;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_5(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_26940D264(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1954047348;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1954047348;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6570795464726F77;
      break;
    case 2:
      v5 = 0x6974696E69666564;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v5 = 0x7463416B61657073;
      v3 = 0xEB000000006E6F69;
      break;
    case 4:
      v5 = 0x61657053706F7473;
      v3 = 0xEF6E6F697463416BLL;
      break;
    case 5:
      v5 = 0x696669746E656469;
      v3 = 0xEA00000000007265;
      break;
    case 6:
      v5 = 0x617A696E616D6F72;
      v3 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6570795464726F77;
      break;
    case 2:
      v2 = 0x6974696E69666564;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v2 = 0x7463416B61657073;
      v6 = 0xEB000000006E6F69;
      break;
    case 4:
      v2 = 0x61657053706F7473;
      v6 = 0xEF6E6F697463416BLL;
      break;
    case 5:
      v2 = 0x696669746E656469;
      v6 = 0xEA00000000007265;
      break;
    case 6:
      v2 = 0x617A696E616D6F72;
      v6 = 0xEC0000006E6F6974;
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
    v8 = OUTLINED_FUNCTION_19_5(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_26940D4B8(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x73656E6F746E6163;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6E697261646E616DLL;
    }

    else
    {
      v5 = 0x6573656E696863;
    }

    if (v4 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0x73656E6F746E6163;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6E697261646E616DLL;
    }

    else
    {
      v3 = 0x6573656E696863;
    }

    if (a2 == 1)
    {
      v2 = 0xE800000000000000;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_269424688();
  }

  return v8 & 1;
}

void *sub_26940D5B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = sub_269423038();
  v3 = v1;
  if (v2)
  {
    v11[0] = v1;
    v11[1] = v2;
    v10[0] = 45;
    v10[1] = 0xE100000000000000;
    v9[0] = 95;
    v9[1] = 0xE100000000000000;
    sub_2693D50A4();
    v3 = v11;
    OUTLINED_FUNCTION_11_8(v10, v9, v4, v5, v6, v7, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_26_2();
  }

  return v3;
}

void sub_26940D664()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDB0, &qword_2694275A8);
  v5 = OUTLINED_FUNCTION_12_2(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  type metadata accessor for NLConverter(0);
  v8 = sub_26940D5B8(v3);
  v10 = v8;
  v11 = v9;
  if (v9)
  {
    v12 = v8 == 0x41535F7261 && v9 == 0xE500000000000000;
    if (v12 || (sub_269424688() & 1) != 0)
    {

      v11 = 0xE500000000000000;
      v10 = 0x45415F7261;
    }
  }

  sub_269410938(v1, v7, &qword_28030FDB0, &qword_2694275A8);
  sub_269423FC8();
  v13 = OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_109(v13);
  if (v12)
  {
    sub_2693FD518(v7, &qword_28030FDB0, &qword_2694275A8);
  }

  else
  {

    v14 = sub_269423FA8();
    v15 = sub_269424368();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = OUTLINED_FUNCTION_17_0();
      v18 = OUTLINED_FUNCTION_16_0();
      v23[2] = v11;
      v24 = v18;
      *v17 = 136315138;
      v23[1] = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      v19 = sub_269424128();
      v21 = sub_2693DB6E0(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2693C9000, v14, v15, "Source locale: %s.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_20_5();
    (*(v22 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_16_3();
}

void sub_26940D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_3();
  v127 = v24;
  v128 = v25;
  v27 = v26;
  v132 = v28;
  v30 = v29;
  v130 = v31;
  v33 = v32;
  v35 = v34;
  v36 = a24;
  v37 = sub_269422D48();
  OUTLINED_FUNCTION_0_19();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_5();
  v126 = v42 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDB0, &qword_2694275A8);
  v44 = OUTLINED_FUNCTION_12_2(v43);
  MEMORY[0x28223BE20](v44);
  v124 = &v123 - v45;

  v46 = sub_269423FA8();
  v47 = sub_269424368();

  v48 = os_log_type_enabled(v46, v47);
  v131 = a24;
  v129 = v33;
  if (v48)
  {
    v49 = OUTLINED_FUNCTION_16_0();
    v125 = v35;
    v50 = v49;
    v51 = swift_slowAlloc();
    v123 = v51;
    *v50 = 136315650;
    v133 = v51;
    v134 = v125;
    v135 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v52 = sub_269424128();
    v53 = v39;
    v54 = v37;
    v56 = sub_2693DB6E0(v52, v55, &v133);

    *(v50 + 4) = v56;
    *(v50 + 12) = 2080;
    v134 = v130;
    v135 = v30;

    v57 = sub_269424128();
    v59 = sub_2693DB6E0(v57, v58, &v133);

    *(v50 + 14) = v59;
    v37 = v54;
    v39 = v53;
    *(v50 + 22) = 2080;
    v36 = v131;
    v134 = v132;
    v135 = v27;

    v60 = sub_269424128();
    v62 = sub_2693DB6E0(v60, v61, &v133);

    *(v50 + 24) = v62;
    _os_log_impl(&dword_2693C9000, v46, v47, "intentTargetLanguage: %s intentPhrase: %s intentSourceLanguage: %s", v50, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_10();
    v35 = v125;
    OUTLINED_FUNCTION_6_0();
  }

  if (v30)
  {
    v63 = v130;
  }

  else
  {
    v63 = 0;
  }

  if (v30)
  {
    v64 = v30;
  }

  else
  {
    v64 = 0xE000000000000000;
  }

  if (v27)
  {

    v65 = v27;
  }

  else
  {
    v130 = v37;
    v66 = sub_269423FC8();
    OUTLINED_FUNCTION_4_5();
    v68 = v124;
    (*(v67 + 16))(v124, v36, v66);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v66);

    sub_26940D664();
    v132 = v69;
    v65 = v70;
    sub_2693FD518(v68, &qword_28030FDB0, &qword_2694275A8);
    if (!v65)
    {
      goto LABEL_17;
    }

    v37 = v130;
  }

  swift_bridgeObjectRetain_n();

  v71 = v126;
  sub_269422D28();
  v72 = String.firstConditionallyCapitalized(with:)(v71, v63, v64);
  v74 = v73;

  (*(v39 + 8))(v71, v37);

  v75 = sub_269423FA8();
  v76 = sub_269424368();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    *v77 = 136315394;

    v78 = sub_2693DB6E0(v72, v74, &v134);

    *(v77 + 4) = v78;
    *(v77 + 12) = 2080;
    v79 = sub_2693DB6E0(v132, v65, &v134);

    *(v77 + 14) = v79;
    _os_log_impl(&dword_2693C9000, v75, v76, "Capitalized intentPhrase: %s intentSourceLanguage: %s", v77, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

LABEL_17:
  v80 = v129;
  [objc_allocWithZone(type metadata accessor for TranslatePhraseIntent()) init];
  if (v80)
  {
    v81 = v35;
  }

  else
  {
    v81 = 0;
  }

  if (v80)
  {
    v82 = v80;
  }

  else
  {
    v82 = 0xE000000000000000;
  }

  v83._countAndFlagsBits = v81;
  v83._object = v82;
  TranslationLanguages.init(rawValue:)(v83);
  OUTLINED_FUNCTION_5_1();
  if (v85)
  {

    switch(sub_2693D8BA0(v81, v82))
    {
      case 3u:
        if (v129)
        {
        }

        break;
      default:
        break;
    }
  }

  else
  {
    TranslationLanguages.rawValue.getter(v84);
  }

  v130 = a22;
  v86 = sub_269424108();

  OUTLINED_FUNCTION_34_4();
  v87 = sub_269424108();
  v88 = OUTLINED_FUNCTION_15_9();
  [v88 v89];

  v90 = sub_269424108();

  v91 = OUTLINED_FUNCTION_38_2();
  v92 = OUTLINED_FUNCTION_15_9();
  [v92 v93];

  if (v65)
  {

    v94 = sub_269424108();
  }

  else
  {
    v94 = 0;
  }

  OUTLINED_FUNCTION_32_2();
  v95 = sub_269424108();
  v96 = OUTLINED_FUNCTION_15_9();
  [v96 v97];
  swift_unknownObjectRelease();

  if (v127 == 2)
  {
    v98 = 0;
  }

  else
  {
    v99 = 0x8000000269428FA0;
    if (v127)
    {
      v100 = 0xD000000000000017;
    }

    else
    {
      v100 = 0x6552657361726870;
    }

    if ((v127 & 1) == 0)
    {
      v99 = 0xEF65636E65726566;
    }

    v134 = v100;
    v135 = v99;
    v98 = sub_269424678();
    sub_2694108E4(&v134);
  }

  v101 = sub_269424108();
  v102 = OUTLINED_FUNCTION_15_9();
  [v102 v103];
  swift_unknownObjectRelease();

  v104 = sub_2694242E8();
  v105 = sub_269424108();
  v106 = OUTLINED_FUNCTION_15_9();
  [v106 v107];

  type metadata accessor for ConverterUtils();
  sub_269411F8C(v130);
  v108 = sub_2694242E8();
  v109 = sub_269424108();
  v110 = OUTLINED_FUNCTION_15_9();
  [v110 v111];

  v112 = sub_2694242E8();
  v113 = sub_269424108();
  v114 = OUTLINED_FUNCTION_15_9();
  [v114 v115];

  v116 = sub_269423FA8();
  v117 = sub_269424368();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = OUTLINED_FUNCTION_17_0();
    v119 = OUTLINED_FUNCTION_16_0();
    v134 = v119;
    *v118 = 136315138;
    LOBYTE(v133) = a21 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310098, qword_2694284A0);
    v120 = sub_269424128();
    v122 = sub_2693DB6E0(v120, v121, &v134);

    *(v118 + 4) = v122;

    _os_log_impl(&dword_2693C9000, v116, v117, "Confirmation value: %s.", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v119);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_26940E238(uint64_t a1)
{
  sub_269423468();
  if (qword_28030F168 != -1)
  {
    swift_once();
  }

  v1 = qword_2803150A8;
  v2 = type metadata accessor for SiriReferenceResolutionConverter(0);
  v18[3] = v2;
  v18[4] = &off_2879F5168;
  v18[0] = v1;
  type metadata accessor for NLConverter(0);
  v3 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v18, v2);
  OUTLINED_FUNCTION_0_19();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_5();
  v7 = (v6 - v5);
  (*(v8 + 16))(v6 - v5);
  v9 = *v7;
  v16 = v2;
  v17 = &off_2879F5168;
  *&v15 = v9;
  v10 = OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_log;
  v11 = qword_28030F078;
  swift_retain_n();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_269423FC8();
  __swift_project_value_buffer(v12, qword_280314E28);
  OUTLINED_FUNCTION_20_5();
  (*(v13 + 16))(v3 + v10);
  sub_2693DBCC8(&v19, v3 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState);
  sub_2693DBCC8(&v15, v3 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_srrEntityProvider);
  __swift_destroy_boxed_opaque_existential_1(v18);

  qword_280315088 = v3;
  return result;
}

void sub_26940E444()
{
  OUTLINED_FUNCTION_17_3();
  HIDWORD(v242) = v1;
  v3 = v2;
  v243 = sub_269423448();
  OUTLINED_FUNCTION_0_19();
  v245 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v6);
  v244 = &v231 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  v9 = OUTLINED_FUNCTION_12_2(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v13);
  v234 = &v231 - v14;
  v247 = type metadata accessor for TranslationNLIntent(0);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_5();
  v248 = (v17 - v16);
  v251 = sub_2694239E8();
  OUTLINED_FUNCTION_0_19();
  v250 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_5();
  v22 = v21 - v20;
  v23 = sub_269423458();
  OUTLINED_FUNCTION_0_19();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10();
  v29 = (v27 - v28);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = (&v231 - v32);
  MEMORY[0x28223BE20](v31);
  v35 = &v231 - v34;
  v36 = *(v25 + 16);
  v36(&v231 - v34, v3, v23);
  v37 = (*(v25 + 88))(v35, v23);
  v65 = v37 == *MEMORY[0x277D5C128];
  v249 = v0;
  v252 = v23;
  v253 = v35;
  if (v65)
  {
    v36(v33, v35, v23);
    (*(v25 + 96))(v33, v23);
    v38 = v250;
    v39 = v251;
    (*(v250 + 32))(v22, v33, v251);
    v245 = v0 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_log;
    v40 = sub_269423FA8();
    v41 = sub_269424368();
    v33 = v25;
    if (OUTLINED_FUNCTION_12_6(v41))
    {
      v42 = OUTLINED_FUNCTION_12_0();
      *v42 = 0;
      _os_log_impl(&dword_2693C9000, v40, v29, "Parsing NLV3 intent.", v42, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v43 = v248;
    (*(v38 + 16))(v248, v22, v39);
    if (qword_28030F130 != -1)
    {
      swift_once();
    }

    v44 = sub_269410830();
    v45 = v247;
    OUTLINED_FUNCTION_20_6();
    sub_269423758();
    v240 = v258;
    v267 = v258;
    v268 = v259;
    v238 = v259;
    if (qword_28030F120 != -1)
    {
      swift_once();
    }

    v231 = v22;
    v243 = v44;
    OUTLINED_FUNCTION_20_6();
    sub_269423758();
    v46 = v258;
    v47 = v259;
    v48 = 0xE000000000000000;
    if (v259)
    {
      v256 = 32;
      v257 = 0xE100000000000000;
      v254 = 0;
      v255 = 0xE000000000000000;
      sub_2693D50A4();
      v49 = OUTLINED_FUNCTION_14_5();
      v231 = MEMORY[0x277D837D0];
      v55 = OUTLINED_FUNCTION_11_8(v49, v50, v51, v52, v53, v54, MEMORY[0x277D837D0]);
      v48 = v56;

      v57 = v55;
      v58 = v48;
    }

    else
    {
      v55 = 0;
      v58 = 0;
      v57 = v258;
    }

    v74._countAndFlagsBits = v55;
    v74._object = v48;
    TranslationLanguages.init(rawValue:)(v74);
    OUTLINED_FUNCTION_5_1();
    if (v65)
    {
      v75 = v47;
    }

    else
    {
      v46 = v57;
      v75 = v58;
    }

    v239 = v46;
    v265 = v46;
    v266 = v75;
    if (qword_28030F128 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_20_6();
    sub_269423758();
    if (v259)
    {
      v76 = v258;
    }

    else
    {
      v76 = 0;
    }

    if (v259)
    {
      v77 = v259;
    }

    else
    {
      v77 = 0xE000000000000000;
    }

    TranslationLanguages.init(rawValue:)(*&v76);
    object = 0;
    OUTLINED_FUNCTION_5_1();
    if (!v65)
    {
      v80 = TranslationLanguages.getLocaleString()();
      countAndFlagsBits = v80._countAndFlagsBits;
      object = v80._object;
    }

    v241 = v75;
    v237 = countAndFlagsBits;
    v263 = countAndFlagsBits;
    v264 = object;
    if (qword_28030F138 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_20_6();
    v81 = sub_269423758();
    v82 = v258;
    v83 = OUTLINED_FUNCTION_24_4(v81);
    v84 = sub_269424368();
    v85 = OUTLINED_FUNCTION_12_6(v84);
    v244 = object;
    if (v85)
    {
      v86 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      *v86 = 136315906;
      v258 = v240;
      v259 = v238;

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      v246 = v33;
      v88 = v87;
      v89 = sub_269424128();
      v91 = sub_2693DB6E0(v89, v90, &v256);

      *(v86 + 4) = v91;
      v43 = v82;
      *(v86 + 12) = 2080;
      v258 = v239;
      v259 = v241;

      v92 = sub_269424128();
      v33 = sub_2693DB6E0(v92, v93, &v256);

      *(v86 + 14) = v33;
      *(v86 + 22) = 2080;
      v258 = v237;
      v259 = object;

      v94 = sub_269424128();
      sub_2693DB6E0(v94, v95, &v256);
      OUTLINED_FUNCTION_30_3();
      *(v86 + 24) = v88;
      *(v86 + 32) = 2080;
      LOBYTE(v258) = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310000, &qword_269427FA0);
      v96 = sub_269424128();
      sub_2693DB6E0(v96, v97, &v256);
      OUTLINED_FUNCTION_30_3();
      *(v86 + 34) = v88;
      v45 = v247;
      OUTLINED_FUNCTION_35_3();
      _os_log_impl(&dword_2693C9000, v83, v47, "IntentPhrase: %s IntentTargetLanguage: %s IntentSourceLanguage: %s Reference: %s", v86, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_36_4();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    if ((v242 & 0x100000000) == 0)
    {
      v100 = 0;
      v98 = v238;
LABEL_45:
      OUTLINED_FUNCTION_31_3();
      goto LABEL_153;
    }

    v98 = v238;
    OUTLINED_FUNCTION_31_3();
    if (v47)
    {
      if (v98)
      {
        v100 = 0;
LABEL_153:
        v225 = qword_28030F118;
        v226 = v47;

        if (v225 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_20_6();
        sub_269423758();
        v227 = v260;
        if (qword_28030F140 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_20_6();
        v228 = sub_269423768();
        LOBYTE(v230) = v227;
        sub_26940D8A8(v239, v226, v240, v98, v237, v244, v82, v100, v230, v228, v249 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState, v245, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);

        sub_269410888(v43);
        (*(v250 + 8))(v231, v251);

        goto LABEL_158;
      }

      if (v82 == 2)
      {
        v100 = 0;
        v98 = 0;
        goto LABEL_153;
      }

LABEL_112:
      v241 = v47;
      v187 = OUTLINED_FUNCTION_24_4(v99);
      v188 = sub_269424368();
      if (OUTLINED_FUNCTION_8_6(v188))
      {
        v189 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_9_8(v189);
        OUTLINED_FUNCTION_1_11(&dword_2693C9000, v190, v191, "SRR fallback, intentPhrase missing, reference present.");
        OUTLINED_FUNCTION_2_10();
      }

      v192 = OUTLINED_FUNCTION_23_5(OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_srrEntityProvider);
      __swift_project_boxed_opaque_existential_1(v192, v192[3]);
      v193 = v236;
      sub_269413780(v236);
      v194 = v235;
      sub_269410938(v193, v235, &qword_28030FFF0, &unk_269428490);
      v47 = sub_269424038();
      OUTLINED_FUNCTION_109(v194);
      if (v65)
      {
        sub_2693FD518(v194, &qword_28030FFF0, &unk_269428490);
      }

      else
      {
        sub_269424028();
        OUTLINED_FUNCTION_20_5();
        (*(v195 + 8))(v194, v47);
      }

      sub_269423808();
      OUTLINED_FUNCTION_17_6();

      if (v258)
      {
        v197 = OUTLINED_FUNCTION_24_4(v196);
        v198 = sub_269424368();
        if (OUTLINED_FUNCTION_12_6(v198))
        {
          v199 = OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_9_8(v199);
          OUTLINED_FUNCTION_35_2(&dword_2693C9000, v200, v47, "Got SRR uso entity.");
          OUTLINED_FUNCTION_2_10();
        }

        if (sub_2694237E8())
        {
          sub_269423888();
          v43 = v201;
        }

        else
        {
          v43 = 0;
        }

        OUTLINED_FUNCTION_16_7();
        OUTLINED_FUNCTION_28_2();
        if (!sub_2694237E8())
        {
          goto LABEL_144;
        }

        sub_269423898();
        OUTLINED_FUNCTION_25_4();

        if (!v47)
        {
          goto LABEL_144;
        }

        v203 = sub_269423778();
        v205 = v204;

        if (!v205)
        {
          goto LABEL_144;
        }

        v47 = v241;
        if (v244)
        {

LABEL_146:
          if (v47 && (OUTLINED_FUNCTION_21_5(), v218))
          {
            if (v43)
            {
              v219 = OUTLINED_FUNCTION_24_4(v217);
              v220 = sub_269424368();
              if (OUTLINED_FUNCTION_12_6(v220))
              {
                v221 = OUTLINED_FUNCTION_17_0();
                v246 = OUTLINED_FUNCTION_16_0();
                v261 = v43;
                v262 = v246;
                *v221 = 136315138;
                v260 = v240;

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
                v222 = sub_269424128();
                sub_2693DB6E0(v222, v223, &v262);
                OUTLINED_FUNCTION_30_3();
                *(v221 + 4) = v193;
                _os_log_impl(&dword_2693C9000, v219, v47, "Setting translateToSourceLanguage to TRUE based on localized uso entity and intentPhrase is %s.", v221, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v246);
                OUTLINED_FUNCTION_2_10();
                OUTLINED_FUNCTION_6_0();

                v224 = v236;
              }

              else
              {

                v224 = v193;
              }

              sub_2693FD518(v224, &qword_28030FFF0, &unk_269428490);
              v100 = 1;
              v98 = v43;
              OUTLINED_FUNCTION_36_4();
              goto LABEL_45;
            }

            sub_2693FD518(v193, &qword_28030FFF0, &unk_269428490);
            v100 = 0;
            v98 = 0;
          }

          else
          {
            sub_2693FD518(v193, &qword_28030FFF0, &unk_269428490);
            v100 = 0;
            v98 = v43;
          }

          OUTLINED_FUNCTION_36_4();
          goto LABEL_153;
        }

        v215 = v203;
      }

      else
      {
        v202 = v232;
        sub_269410938(v193, v232, &qword_28030FFF0, &unk_269428490);
        OUTLINED_FUNCTION_109(v202);
        if (v65)
        {
          sub_2693FD518(v202, &qword_28030FFF0, &unk_269428490);
        }

        else
        {
          sub_269424028();
          OUTLINED_FUNCTION_20_5();
          (*(v206 + 8))(v202, v47);
        }

        sub_2694238B8();
        OUTLINED_FUNCTION_17_6();

        if (!v258)
        {
          v43 = 0;
LABEL_145:
          OUTLINED_FUNCTION_31_3();
          goto LABEL_146;
        }

        v208 = OUTLINED_FUNCTION_24_4(v207);
        v209 = sub_269424368();
        if (OUTLINED_FUNCTION_12_6(v209))
        {
          v210 = OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_9_8(v210);
          OUTLINED_FUNCTION_35_2(&dword_2693C9000, v211, v47, "Got SRR localized USO entity.");
          OUTLINED_FUNCTION_2_10();
        }

        sub_269423888();
        v43 = v212;
        OUTLINED_FUNCTION_16_7();
        OUTLINED_FUNCTION_28_2();
        if (v244)
        {
LABEL_144:

          goto LABEL_145;
        }

        if (!sub_269423898() || (v213 = sub_269423778(), v205 = v214, , !v205))
        {

          v213 = 0;
          v205 = 0xE000000000000000;
        }

        v215 = v213;
      }

      v47 = static TranslationLanguages.getByLocale(locale:)(v215, v205);

      if (v47 == 23)
      {

        v237 = 0;
        v244 = 0;
        goto LABEL_145;
      }

      v216 = TranslationLanguages.getLocaleString()();
      v237 = v216._countAndFlagsBits;
      v244 = v216._object;

      goto LABEL_144;
    }

    if (v98)
    {
      v100 = 0;
LABEL_65:
      v47 = 0;
      goto LABEL_153;
    }

    if (v82 == 2)
    {
      v100 = 0;
      v98 = 0;
      goto LABEL_65;
    }

    v127 = OUTLINED_FUNCTION_24_4(v99);
    v128 = sub_269424368();
    if (OUTLINED_FUNCTION_8_6(v128))
    {
      v129 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_9_8(v129);
      OUTLINED_FUNCTION_1_11(&dword_2693C9000, v130, v131, "SRR fallback when target language and phrase aren't known. Reference is present.");
      OUTLINED_FUNCTION_2_10();
    }

    v132 = OUTLINED_FUNCTION_23_5(OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_srrEntityProvider);
    __swift_project_boxed_opaque_existential_1(v132, v132[3]);
    v133 = v234;
    sub_269413780(v234);
    v134 = v133;
    v135 = v233;
    sub_269410938(v134, v233, &qword_28030FFF0, &unk_269428490);
    v136 = sub_269424038();
    if (__swift_getEnumTagSinglePayload(v135, 1, v136) == 1)
    {
      sub_2693FD518(v135, &qword_28030FFF0, &unk_269428490);
    }

    else
    {
      sub_269424028();
      OUTLINED_FUNCTION_20_5();
      (*(v137 + 8))(v135, v136);
    }

    sub_269423808();
    OUTLINED_FUNCTION_17_6();

    v139 = v258;
    if (!v258)
    {
      v99 = OUTLINED_FUNCTION_42_1(v138, &qword_28030FFF0, &unk_269428490);
      v47 = 0;
      goto LABEL_112;
    }

    v140 = OUTLINED_FUNCTION_24_4(v138);
    v141 = sub_269424368();
    if (OUTLINED_FUNCTION_8_6(v141))
    {
      v142 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_9_8(v142);
      OUTLINED_FUNCTION_1_11(&dword_2693C9000, v143, v144, "Got SRR entity.");
      OUTLINED_FUNCTION_2_10();
    }

    if (sub_2694237F8())
    {
      sub_2694238A8();
      OUTLINED_FUNCTION_25_4();
    }

    v145 = sub_2694237F8();
    if (v145 && (v47 = v145, v146 = v145, sub_269423888(), OUTLINED_FUNCTION_26_2(), , v136))
    {
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v146 = 0;
      v136 = 0xE000000000000000;
    }

    v147._countAndFlagsBits = v146;
    v147._object = v136;
    TranslationLanguages.init(rawValue:)(v147);
    OUTLINED_FUNCTION_5_1();
    if (v65)
    {
      if (sub_2694237F8() && (sub_269423898(), OUTLINED_FUNCTION_25_4(), , v47))
      {
        v149 = v47;
        sub_269423778();
        OUTLINED_FUNCTION_26_2();
      }

      else
      {

        v149 = 0;
        v136 = 0xE000000000000000;
      }

      v156 = static TranslationLanguages.getByLocale(locale:)(v149, v136);

      if (v156 == 23)
      {
        v150 = OUTLINED_FUNCTION_23_5(OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState);
        v151 = sub_26940D5B8(v150);
        if (v152)
        {
          v153 = v152;
        }

        else
        {
          v151 = 0;
          v153 = 0xE000000000000000;
        }

        v156 = static TranslationLanguages.getByLocale(locale:)(v151, v153);

        v154 = 0;
        v155 = 0;
        if (v156 == 23)
        {
LABEL_93:
          v246 = v139;
          v159 = v154;
          swift_beginAccess();
          v265 = v159;
          v266 = v155;

          v161 = OUTLINED_FUNCTION_24_4(v160);
          v162 = sub_269424368();
          v163 = os_log_type_enabled(v161, v162);
          v239 = v159;
          v241 = v155;
          if (v163)
          {
            v164 = OUTLINED_FUNCTION_17_0();
            v165 = OUTLINED_FUNCTION_16_0();
            v254 = v165;
            *v164 = 136315138;
            v258 = v159;
            v259 = v155;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
            v166 = sub_269424128();
            sub_2693DB6E0(v166, v167, &v254);
            OUTLINED_FUNCTION_30_3();
            *(v164 + 4) = v45;
            v45 = v247;
            _os_log_impl(&dword_2693C9000, v161, v162, "Target Language: %s.", v164, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v165);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();
          }

          v43 = v246;
          if (!sub_2694237E8() || (sub_269423898(), OUTLINED_FUNCTION_25_4(), , !v155) || (v168 = sub_269423778(), v170 = v169, , !v170))
          {

            v168 = 0;
            v170 = 0xE000000000000000;
          }

          v171 = static TranslationLanguages.getByLocale(locale:)(v168, v170);

          v47 = v241;
          if (v171 == 23)
          {
            v172 = v244;

            v173 = v237;
          }

          else
          {
            v174 = TranslationLanguages.getLocaleString()();
            v173 = v174._countAndFlagsBits;
            v172 = v174._object;
          }

          swift_beginAccess();
          v237 = v173;
          v263 = v173;
          v264 = v172;

          v244 = v172;
          if (v47)
          {
            OUTLINED_FUNCTION_21_5();
            if (!v176)
            {
              OUTLINED_FUNCTION_42_1(v175, &qword_28030FFF0, &unk_269428490);

              goto LABEL_112;
            }

            if (sub_2694237E8())
            {

              if (!sub_2694237E8() || (v177 = sub_269423888(), v179 = v178, , !v179))
              {

                v177 = 0;
                v179 = 0xE000000000000000;
              }

              v238 = v179;
              OUTLINED_FUNCTION_16_7();
              v267 = v177;
              v268 = v179;

              v181 = OUTLINED_FUNCTION_24_4(v180);
              v182 = sub_269424368();
              v183 = OUTLINED_FUNCTION_8_6(v182);
              v240 = v177;
              if (v183)
              {
                v47 = OUTLINED_FUNCTION_17_0();
                v43 = OUTLINED_FUNCTION_16_0();
                v262 = v43;
                *v47 = 136315138;
                v260 = v177;
                v261 = v238;

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
                v184 = sub_269424128();
                sub_2693DB6E0(v184, v185, &v262);
                OUTLINED_FUNCTION_30_3();
                *(v47 + 4) = v45;
                _os_log_impl(&dword_2693C9000, v181, v172, "Setting translateToSourceLanguage to TRUE and intentPhrase is %s.", v47, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v43);
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_31_3();
                OUTLINED_FUNCTION_6_0();
              }

              OUTLINED_FUNCTION_42_1(v229, &qword_28030FFF0, &unk_269428490);
              v100 = 1;
              OUTLINED_FUNCTION_36_4();
              v98 = v238;
              goto LABEL_153;
            }
          }

          v99 = OUTLINED_FUNCTION_42_1(v186, &qword_28030FFF0, &unk_269428490);
          goto LABEL_112;
        }
      }
    }

    else
    {
      v156 = v148;
    }

    TranslationLanguages.rawValue.getter(v156);
    v154 = v157;
    v155 = v158;
    goto LABEL_93;
  }

  v246 = v25;
  if (v37 == *MEMORY[0x277D5C150])
  {
    v33 = &qword_280310000;
    v36(v29, v253, v23);
    (v246[12])(v29, v23);
    v59 = v245;
    v60 = v244;
    v61 = v243;
    (*(v245 + 32))(v244, v29, v243);
    v62 = sub_269423428();
    v64 = v63;
    v258 = 0xD00000000000002BLL;
    v259 = 0x80000002694296D0;
    MEMORY[0x26D63BD80](46, 0xE100000000000000);
    MEMORY[0x26D63BD80](0x74616C736E617254, 0xEF6E6F6974634165);
    v65 = v62 == v258 && v64 == v259;
    if (v65)
    {
    }

    else
    {
      v66 = sub_269424688();

      if ((v66 & 1) == 0)
      {
        (*(v59 + 8))(v60, v61);
LABEL_62:
        OUTLINED_FUNCTION_35_3();
LABEL_158:
        v69 = v253;
        goto LABEL_159;
      }
    }

    v101 = v249;
    v102 = v249 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_log;
    v103 = sub_269423FA8();
    v104 = sub_269424368();
    v105 = os_log_type_enabled(v103, v104);
    v69 = v253;
    if (v105)
    {
      v106 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_9_8(v106);
      OUTLINED_FUNCTION_35_2(&dword_2693C9000, v107, v104, "Parsing Direct Invocation for Translate.");
      OUTLINED_FUNCTION_2_10();
    }

    v108 = v241;
    (*(v59 + 16))(v241, v60, v61);
    v109 = sub_2693EA2B0(v108);
    if (v109)
    {
      v110 = v109[2];
      v251 = v109[3];
      v111 = v109[5];
      v250 = v109[4];
      v112 = v101 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState;
      v33 = *(v101 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState + 32);
      __swift_project_boxed_opaque_existential_1((v101 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState), *(v101 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState + 24));
      v113 = sub_269423038();
      v115 = v113;
      if (v114)
      {
        v33 = v114;
        v258 = v113;
        v259 = v114;
        v256 = 45;
        v257 = 0xE100000000000000;
        v254 = 95;
        v255 = 0xE100000000000000;
        sub_2693D50A4();
        v116 = OUTLINED_FUNCTION_14_5();
        v231 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_11_8(v116, v117, v118, v119, v120, v121, MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_26_2();
      }

      else
      {
        v101 = 0;
      }

      LOBYTE(v230) = 1;
      sub_26940D8A8(v110, v251, v250, v111, v115, v101, 2, 0, v230, MEMORY[0x277D84F90], v112, v102, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);

      (*(v245 + 8))(v244, v61);

      goto LABEL_62;
    }

    v122 = sub_269423FA8();
    v123 = sub_269424378();
    if (OUTLINED_FUNCTION_8_6(v123))
    {
      v124 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_9_8(v124);
      OUTLINED_FUNCTION_1_11(&dword_2693C9000, v125, v126, "Unable to convert DI into expected action type instance.");
      OUTLINED_FUNCTION_2_10();
    }

    (*(v59 + 8))(v60, v61);
    OUTLINED_FUNCTION_35_3();
  }

  else
  {
    if (v37 != *MEMORY[0x277D5C160])
    {
      goto LABEL_62;
    }

    v67 = sub_269423FA8();
    v68 = sub_269424378();
    OUTLINED_FUNCTION_8_6(v68);
    OUTLINED_FUNCTION_35_3();
    v69 = v253;
    if (v70)
    {
      v71 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_9_8(v71);
      OUTLINED_FUNCTION_1_11(&dword_2693C9000, v72, v73, "Invalid parse type (usoParse).");
      OUTLINED_FUNCTION_2_10();
    }
  }

LABEL_159:
  (v33[1])(v69, v252);
  OUTLINED_FUNCTION_16_3();
}

void sub_26940FE58()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  v3 = OUTLINED_FUNCTION_12_2(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &countAndFlagsBits - v8;
  v10 = OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_log;
  v11 = sub_269423FA8();
  v12 = sub_269424368();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_9_8(v13);
    OUTLINED_FUNCTION_35_2(&dword_2693C9000, v14, v12, "Getting SRR Entity.");
    OUTLINED_FUNCTION_2_10();
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_srrEntityProvider), *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_srrEntityProvider + 24));
  sub_269413780(v9);
  sub_269410938(v9, v6, &qword_28030FFF0, &unk_269428490);
  v15 = sub_269424038();
  if (__swift_getEnumTagSinglePayload(v6, 1, v15) == 1)
  {
    sub_2693FD518(v6, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    sub_269424028();
    OUTLINED_FUNCTION_20_5();
    (*(v16 + 8))(v6, v15);
  }

  sub_269423808();
  sub_2694237D8();

  v17 = v91;
  if (v91)
  {
    if (!sub_2694237F8() || (v18 = sub_2694238A8(), , !v18) || (v19 = sub_2694237B8(), v21 = v20, , !v21))
    {
      if (sub_2694237F8() && (v19 = sub_269423888(), v21 = v22, , v21))
      {
      }

      else
      {
        swift_bridgeObjectRelease_n();
        v19 = 0;
        v21 = 0xE000000000000000;
      }
    }

    v28._countAndFlagsBits = v19;
    v28._object = v21;
    TranslationLanguages.init(rawValue:)(v28);
    OUTLINED_FUNCTION_5_1();
    if (v53)
    {
      if (!sub_2694237F8() || (v30 = sub_269423898(), , !v30) || (v31 = sub_269423778(), v33 = v32, , !v33))
      {

        v31 = 0;
        v33 = 0xE000000000000000;
      }

      v36 = static TranslationLanguages.getByLocale(locale:)(v31, v33);

      if (v36 == 23)
      {
        v34 = 0;
        v35 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v36 = v29;
    }

    TranslationLanguages.rawValue.getter(v36);
    v34 = v37;
    v35 = v38;
LABEL_26:
    v87 = v10;

    if (sub_2694237E8())
    {
      v84 = sub_269423888();
      v40 = v39;
    }

    else
    {
      v84 = 0;
      v40 = 0;
    }

    v41 = sub_2694237E8();
    v88 = v9;
    v86 = v17;
    if (v41 && (v42 = sub_269423898(), , v42) && (v43 = sub_269423778(), v45 = v44, , v45) && (v46 = static TranslationLanguages.getByLocale(locale:)(v43, v45), , v46 != 23))
    {
      v82 = TranslationLanguages.getLocaleString()();
      countAndFlagsBits = v82._countAndFlagsBits;
      object = v82._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v48 = [objc_allocWithZone(type metadata accessor for TranslatePhraseIntent()) init];
    v49 = sub_26940D5B8((v1 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState));
    v51 = v49;
    v52 = v50;
    if (v50)
    {
      v53 = v49 == 0x41535F7261 && v50 == 0xE500000000000000;
      if (v53 || (sub_269424688() & 1) != 0)
      {

        v52 = 0xE500000000000000;
        v51 = 0x45415F7261;
      }
    }

    if (v35)
    {
      v54 = v34;
    }

    else
    {
      v54 = 0;
    }

    if (v35)
    {
      v55 = v35;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    TranslationLanguages.init(rawValue:)(*&v54);
    OUTLINED_FUNCTION_5_1();
    if (v53)
    {
      if (v35)
      {
      }
    }

    else
    {
      TranslationLanguages.rawValue.getter(v56);
    }

    v57 = sub_269424108();

    OUTLINED_FUNCTION_34_4();
    v58 = sub_269424108();
    OUTLINED_FUNCTION_37_3();

    if (v40)
    {
      sub_269424108();
    }

    v59 = OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_37_3();
    swift_unknownObjectRelease();

    v85 = v35;
    if (object)
    {
      v90 = MEMORY[0x277D837D0];
      *&v89 = countAndFlagsBits;
      *(&v89 + 1) = object;
      sub_2693FD0E8(&v89, &v91);
      if (v93)
      {
LABEL_55:
        v60 = v93;
        __swift_project_boxed_opaque_existential_1(&v91, v93);
        OUTLINED_FUNCTION_0_19();
        v62 = v61;
        MEMORY[0x28223BE20](v63);
        OUTLINED_FUNCTION_2_5();
        v66 = v65 - v64;
        (*(v62 + 16))(v65 - v64);
        v67 = sub_269424678();
        (*(v62 + 8))(v66, v60);
        __swift_destroy_boxed_opaque_existential_1(&v91);
LABEL_61:
        OUTLINED_FUNCTION_32_2();
        v70 = sub_269424108();
        [v48 setValue:v67 forKey:v70];
        swift_unknownObjectRelease();

        v71 = v48;
        v72 = sub_269423FA8();
        v73 = sub_269424368();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = OUTLINED_FUNCTION_17_0();
          v75 = OUTLINED_FUNCTION_16_0();
          *&v91 = v75;
          *v74 = 136315138;
          v76 = v71;
          v77 = [v76 description];
          v78 = sub_269424118();
          v80 = v79;

          v81 = sub_2693DB6E0(v78, v80, &v91);

          *(v74 + 4) = v81;
          _os_log_impl(&dword_2693C9000, v72, v73, "Constructed intent: %s.", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v75);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        sub_2693FD518(v88, &qword_28030FFF0, &unk_269428490);
        goto LABEL_65;
      }
    }

    else
    {
      if (v52)
      {
        v68 = MEMORY[0x277D837D0];
        v69 = v52;
      }

      else
      {
        v51 = 0;
        v69 = 0;
        v68 = 0;
        v92 = 0;
      }

      *&v91 = v51;
      *(&v91 + 1) = v69;
      v93 = v68;

      if (v68)
      {
        goto LABEL_55;
      }
    }

    v67 = 0;
    goto LABEL_61;
  }

  v23 = sub_269423FA8();
  v24 = sub_269424368();
  if (OUTLINED_FUNCTION_8_6(v24))
  {
    v25 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_9_8(v25);
    OUTLINED_FUNCTION_1_11(&dword_2693C9000, v26, v27, "Could not get entity (it came back nil).");
    OUTLINED_FUNCTION_2_10();
  }

  sub_2693FD518(v9, &qword_28030FFF0, &unk_269428490);
LABEL_65:
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_269410670()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_log;
  sub_269423FC8();
  OUTLINED_FUNCTION_4_5();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents11NLConverter_srrEntityProvider));
  return v0;
}

uint64_t sub_2694106E8()
{
  sub_269410670();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NLConverter(uint64_t a1)
{
  result = qword_280310088;
  if (!qword_280310088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269410794(uint64_t a1)
{
  result = sub_269423FC8();
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

unint64_t sub_269410830()
{
  result = qword_28030FE70;
  if (!qword_28030FE70)
  {
    type metadata accessor for TranslationNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FE70);
  }

  return result;
}

uint64_t sub_269410888(uint64_t a1)
{
  v2 = type metadata accessor for TranslationNLIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269410938(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_5();
  (*(v6 + 16))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_1_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_2_10()
{

  JUMPOUT(0x26D63C8E0);
}

BOOL OUTLINED_FUNCTION_8_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x28211F2F8](a1, a2, 0, 0, 0, 1, a7, a7);
}

BOOL OUTLINED_FUNCTION_12_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double OUTLINED_FUNCTION_16_7()
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_2694237D8();
}

uint64_t OUTLINED_FUNCTION_19_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1)
{

  return sub_269423FA8();
}

uint64_t OUTLINED_FUNCTION_28_2()
{
  *(v2 - 344) = v0;
  *(v2 - 104) = v0;
  *(v2 - 96) = v1;
}

uint64_t OUTLINED_FUNCTION_30_3()
{
}

id OUTLINED_FUNCTION_37_3()
{

  return [v1 (v0 + 3192)];
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return sub_269424108();
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 392);

  return sub_2693FD518(v5, a2, a3);
}

uint64_t sub_269410C20()
{
  sub_2694120D8();
  if (!v1)
  {

    sub_269423798();
    if (v32)
    {
      v3 = sub_269423918();
      if (OUTLINED_FUNCTION_4_10(v3, v4))
      {

        if (qword_28030F160 != -1)
        {
          OUTLINED_FUNCTION_0_20();
          swift_once();
        }

        v5 = sub_269423FC8();
        __swift_project_value_buffer(v5, qword_280315090);
        v6 = sub_269423FA8();
        v7 = sub_269424368();
        v8 = OUTLINED_FUNCTION_16_6();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_33_1();
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_8(v10);
        v11 = "Got translate task.";
LABEL_22:
        _os_log_impl(&dword_2693C9000, v6, v7, v11, v2, 2u);
        OUTLINED_FUNCTION_12_5();
        MEMORY[0x26D63C8E0]();
LABEL_23:

        v0 = 1;
LABEL_30:

        return v0 & 1;
      }
    }

    else
    {
      sub_2693CDA8C(v31, &qword_280310008, &qword_269427FA8);
    }

    sub_269423798();
    if (v32)
    {
      v12 = sub_2694238C8();
      if (OUTLINED_FUNCTION_4_10(v12, v13))
      {

        if (qword_28030F160 != -1)
        {
          OUTLINED_FUNCTION_0_20();
          swift_once();
        }

        v14 = sub_269423FC8();
        __swift_project_value_buffer(v14, qword_280315090);
        v6 = sub_269423FA8();
        v7 = sub_269424368();
        v15 = OUTLINED_FUNCTION_16_6();
        if (!os_log_type_enabled(v15, v16))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_33_1();
        v17 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_8(v17);
        v11 = "Got noVerb task.";
        goto LABEL_22;
      }
    }

    else
    {
      sub_2693CDA8C(v31, &qword_280310008, &qword_269427FA8);
    }

    sub_269423798();

    if (v32)
    {
      v18 = sub_2694239C8();
      if (OUTLINED_FUNCTION_4_10(v18, v19))
      {
        if (qword_28030F160 != -1)
        {
          OUTLINED_FUNCTION_0_20();
          swift_once();
        }

        v20 = sub_269423FC8();
        __swift_project_value_buffer(v20, qword_280315090);
        v6 = sub_269423FA8();
        v7 = sub_269424368();
        v21 = OUTLINED_FUNCTION_16_6();
        if (!os_log_type_enabled(v21, v22))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_33_1();
        v23 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_8(v23);
        v11 = "Got discoverCapabilities task.";
        goto LABEL_22;
      }
    }

    else
    {
      sub_2693CDA8C(v31, &qword_280310008, &qword_269427FA8);
    }

    if (qword_28030F160 != -1)
    {
      OUTLINED_FUNCTION_0_20();
      swift_once();
    }

    v24 = sub_269423FC8();
    __swift_project_value_buffer(v24, qword_280315090);
    v25 = sub_269423FA8();
    v26 = sub_269424378();
    v27 = OUTLINED_FUNCTION_16_6();
    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_33_1();
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2693C9000, v25, v26, "userStartUSOGraph is NOT a supported task.", v29, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    v0 = 0;
    goto LABEL_30;
  }

  return v0 & 1;
}

uint64_t sub_269410F8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_2694110B8(uint64_t a1, char *a2, uint64_t (*a3)(void), const char *a4)
{
  sub_2694120D8();
  if (!v4)
  {
    if (qword_28030F160 != -1)
    {
      OUTLINED_FUNCTION_0_20();
      swift_once();
    }

    v9 = sub_269423FC8();
    __swift_project_value_buffer(v9, qword_280315090);
    v10 = sub_269423FA8();
    v11 = sub_269424368();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_33_1();
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2693C9000, v10, v11, a2, v12, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    sub_269423798();

    if (v19[3])
    {
      a3(0);
      if (swift_dynamicCast())
      {

        v8 = 1;
        return v8 & 1;
      }
    }

    else
    {
      sub_2693CDA8C(v19, &qword_280310008, &qword_269427FA8);
    }

    v13 = sub_269423FA8();
    v14 = sub_269424378();
    v15 = OUTLINED_FUNCTION_16_6();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_33_1();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_8(v17);
      _os_log_impl(&dword_2693C9000, v13, v14, a4, a2, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    v8 = 0;
  }

  return v8 & 1;
}

BOOL sub_2694112A0()
{
  v1 = sub_269423458();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_11();
  v5 = OUTLINED_FUNCTION_3_11();
  v6(v5);
  v7 = (*(v3 + 88))(v0, v1) == *MEMORY[0x277D5C160];
  (*(v3 + 8))(v0, v1);
  return v7;
}

uint64_t sub_269411390(char *a1)
{
  v91 = a1;
  v1 = sub_269423538();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v83 - v9;
  v88 = sub_2694234E8();
  OUTLINED_FUNCTION_2();
  v90 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10();
  v84 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v86 = &v83 - v16;
  v17 = sub_269423488();
  OUTLINED_FUNCTION_2();
  v89 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_269423458();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10();
  v83 = v26 - v27;
  v29 = MEMORY[0x28223BE20](v28);
  v87 = &v83 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v83 - v31;
  v85 = *(v24 + 16);
  v85(&v83 - v31, v91, v22);
  if ((*(v24 + 88))(v32, v22) == *MEMORY[0x277D5C160])
  {
    (*(v24 + 96))(v32, v22);
    v33 = *(v89 + 32);
    v87 = v17;
    v33(v21, v32, v17);
    v34 = v86;
    v91 = v21;
    sub_269423478();
    v35 = sub_2694234D8();
    v36 = *(v90 + 1);
    v90 += 8;
    v86 = v36;
    (v36)(v34, v88);
    v37 = 0;
    v38 = *(v35 + 16);
    v24 = v3 + 16;
    v22 = v3 + 8;
    while (1)
    {
      if (v38 == v37)
      {

        v66 = v84;
        v67 = v91;
        sub_269423478();
        v68 = sub_2694234D8();
        (v86)(v66, v88);
        v69 = 0;
        v70 = *(v68 + 16);
        do
        {
          if (v70 == v69)
          {
            (*(v89 + 8))(v67, v87);

            return 0;
          }

          if (v69 >= *(v68 + 16))
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_9_9();
          (*(v3 + 16))(v7, v71 + v72 * v69++, v1);
          v73 = sub_269423518();
          (*(v3 + 8))(v7, v1);
        }

        while ((v73 & 1) == 0);

        if (qword_28030F160 != -1)
        {
          OUTLINED_FUNCTION_0_20();
          swift_once();
        }

        v74 = sub_269423FC8();
        __swift_project_value_buffer(v74, qword_280315090);
        v75 = sub_269423FA8();
        v76 = sub_269424368();
        v77 = os_log_type_enabled(v75, v76);
        v78 = v87;
        v79 = v89;
        if (v77)
        {
          OUTLINED_FUNCTION_33_1();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_2(&dword_2693C9000, v80, v81, "ConfirmSettingsIntentStrategy userDialogAct is UserCancelled");
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        (*(v79 + 8))(v67, v78);
        return 1;
      }

      if (v37 >= *(v35 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_9_9();
      (*(v3 + 16))(v10, v39 + v40 * v37++, v1);
      v41 = sub_269423508();
      (*(v3 + 8))(v10, v1);
      if (v41)
      {

        if (qword_28030F160 != -1)
        {
          OUTLINED_FUNCTION_0_20();
          swift_once();
        }

        v42 = sub_269423FC8();
        __swift_project_value_buffer(v42, qword_280315090);
        v43 = sub_269423FA8();
        v44 = sub_269424368();
        v45 = os_log_type_enabled(v43, v44);
        v46 = v87;
        v47 = v89;
        v48 = v91;
        if (v45)
        {
          OUTLINED_FUNCTION_33_1();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_2(&dword_2693C9000, v49, v50, "ConfirmSettingsIntentStrategy userDialogAct is UserRejected");
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        (*(v47 + 8))(v48, v46);
        return 1;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v90 = v32;
    if (qword_28030F160 == -1)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_0_20();
  swift_once();
LABEL_12:
  v51 = sub_269423FC8();
  __swift_project_value_buffer(v51, qword_280315090);
  v52 = v87;
  v53 = v85;
  v85(v87, v91, v22);
  v54 = sub_269423FA8();
  v55 = sub_269424378();
  v56 = OUTLINED_FUNCTION_16_6();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v92 = v59;
    *v58 = 136315138;
    v53(v83, v52, v22);
    v60 = sub_269424128();
    v61 = v52;
    v63 = v62;
    v64 = *(v24 + 8);
    v64(v61, v22);
    v65 = sub_2693DB6E0(v60, v63, &v92);

    *(v58 + 4) = v65;
    _os_log_impl(&dword_2693C9000, v54, v55, "ConfirmSettingsIntentStrategy received unsupported parse object: %s.", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  else
  {

    v64 = *(v24 + 8);
    v64(v52, v22);
  }

  v64(v90, v22);
  return 0;
}

id sub_269411B2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100A0, &qword_2694284D8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_269423748();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_11();
  sub_269423878();
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = sub_269423628();
  if (!v9)
  {
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
    goto LABEL_18;
  }

  sub_269410F8C(v9, MEMORY[0x277D5E688], v3);

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
LABEL_18:
    sub_2693CDA8C(v3, &qword_2803100A0, &qword_2694284D8);
LABEL_21:
    LOBYTE(v21) = 0;
    return (v21 & 1);
  }

  (*(v6 + 32))(v0, v3, v4);
  sub_269423C48();
  if (!sub_269423C28())
  {
    goto LABEL_20;
  }

  sub_269423C18();

  v10 = sub_269423F18();

  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = [v10 recognition];
  if (!v11 || (v11, (v12 = [v10 unfilteredRecognition]) == 0))
  {

LABEL_20:
    v24 = OUTLINED_FUNCTION_3_11();
    v25(v24);
    goto LABEL_21;
  }

  result = [v10 recognition];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v14 = result;
  v15 = sub_269412A94();
  v17 = v16;

  if (!v17)
  {
    v26 = OUTLINED_FUNCTION_3_11();
    v27(v26);

    goto LABEL_21;
  }

  result = [v10 unfilteredRecognition];
  if (result)
  {
    v18 = result;
    v19 = sub_269412A94();
    v21 = v20;

    if (v21)
    {
      if (v15 == v19 && v17 == v21)
      {

        LOBYTE(v21) = 0;
      }

      else
      {
        v23 = sub_269424688();

        LOBYTE(v21) = v23 ^ 1;
      }

      v30 = OUTLINED_FUNCTION_3_11();
      v31(v30);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_3_11();
      v29(v28);
    }

    return (v21 & 1);
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_269411EA4()
{
  sub_269423788();
  if (v8 && (v0 = sub_2694237E8(), , v0) && (sub_269423888(), v2 = v1, , v2))
  {

    return 0;
  }

  else
  {
    sub_269423788();
    if (v8 && (v4 = sub_2694237F8(), , v4) && (v5 = sub_2694238A8(), , v5) && (sub_2694237B8(), v7 = v6, , v7))
    {

      return 1;
    }

    else
    {
      return 2;
    }
  }
}

BOOL sub_269411F8C(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    if (*(v1 - 1) == 0x74696E61666F7270 && *v1 == 0xE900000000000079)
    {
      break;
    }

    v1 += 2;
  }

  while ((sub_269424688() & 1) == 0);
  return v2 != 0;
}

uint64_t sub_269412010()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280315090);
  v1 = __swift_project_value_buffer(v0, qword_280315090);
  if (qword_28030F078 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280314E28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2694120D8()
{
  v0 = sub_269423588();
  v60 = *(v0 - 8);
  v61 = v0;
  MEMORY[0x28223BE20](v0);
  v59 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_269423538();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v56 - v7;
  v8 = sub_2694234C8();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - v11;
  if (qword_28030F160 != -1)
  {
LABEL_32:
    swift_once();
  }

  v12 = sub_269423FC8();
  v66 = __swift_project_value_buffer(v12, qword_280315090);
  v13 = sub_269423FA8();
  v14 = sub_269424368();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2693C9000, v13, v14, "Getting first user dialog act.", v15, 2u);
    MEMORY[0x26D63C8E0](v15, -1, -1);
  }

  v16 = sub_2694234D8();
  v17 = 0;
  v18 = *(v16 + 16);
  while (1)
  {
    if (v18 == v17)
    {

      v19 = sub_269423FA8();
      v20 = sub_269424378();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2693C9000, v19, v20, "No first userStatedTask found", v21, 2u);
        MEMORY[0x26D63C8E0](v21, -1, -1);
      }

      v22 = sub_269423C78();
      sub_269412E00();
      swift_allocError();
      *v23 = 0xD000000000000039;
      v23[1] = 0x800000026942A190;
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D61E00], v22);
      swift_willThrow();
      return v22;
    }

    if (v17 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    (*(v3 + 16))(v6, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);
    if (sub_2694234F8())
    {
      break;
    }

    ++v17;
    (*(v3 + 8))(v6, v2);
  }

  v24 = v58;
  (*(v3 + 32))(v58, v6, v2);
  v25 = v59;
  sub_269423528();
  (*(v3 + 8))(v24, v2);
  v26 = v57;
  sub_269423578();
  (*(v60 + 8))(v25, v61);
  v28 = v63;
  v27 = v64;
  v29 = v65;
  (*(v64 + 32))(v63, v26, v65);
  v30 = sub_269423FA8();
  v31 = sub_269424368();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2693C9000, v30, v31, "Converting from swift to protobuf.", v32, 2u);
    MEMORY[0x26D63C8E0](v32, -1, -1);
  }

  v33 = v62;
  v34 = sub_2694235C8();
  if (v33)
  {

    v35 = sub_269423FA8();
    v36 = sub_269424378();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2693C9000, v35, v36, "userDialogAct.userStarted.task serialization error", v37, 2u);
      MEMORY[0x26D63C8E0](v37, -1, -1);
    }

    v22 = sub_269423C78();
    sub_269412E00();
    swift_allocError();
    *v38 = 0xD00000000000004ELL;
    v38[1] = 0x800000026942A140;
    (*(*(v22 - 8) + 104))(v38, *MEMORY[0x277D61E00], v22);
    swift_willThrow();
LABEL_18:
    (*(v27 + 8))(v28, v29);
    return v22;
  }

  v40 = v34;
  v41 = sub_269423FA8();
  v42 = sub_269424368();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2693C9000, v41, v42, "Converting to graph.", v43, 2u);
    MEMORY[0x26D63C8E0](v43, -1, -1);
  }

  v44 = MEMORY[0x26D63B2C0](v40);
  if (!sub_26941C9D4())
  {

    v52 = sub_269423FA8();
    v53 = sub_269424378();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2693C9000, v52, v53, "userStartUSOGraph has no tasks", v54, 2u);
      MEMORY[0x26D63C8E0](v54, -1, -1);
    }

    v22 = sub_269423C78();
    sub_269412E00();
    swift_allocError();
    *v55 = 0xD00000000000003ALL;
    v55[1] = 0x800000026942A100;
    (*(*(v22 - 8) + 104))(v55, *MEMORY[0x277D61E00], v22);
    swift_willThrow();

    goto LABEL_18;
  }

  sub_26942008C();
  if ((v44 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26D63C060](0, v44);
  }

  else
  {
    v22 = *(v44 + 32);
  }

  v45 = sub_269423FA8();
  v46 = sub_269424368();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v68 = v48;
    *v47 = 136315138;
    v67 = v22;
    sub_2694239D8();

    v49 = sub_269424128();
    v51 = sub_2693DB6E0(v49, v50, &v68);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_2693C9000, v45, v46, "Got first task: %s.", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x26D63C8E0](v48, -1, -1);
    MEMORY[0x26D63C8E0](v47, -1, -1);

    (*(v64 + 8))(v63, v65);
  }

  else
  {

    (*(v27 + 8))(v28, v29);
  }

  return v22;
}

uint64_t sub_269412A94()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100A8, qword_2694284E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_269423688();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_11();
  v9 = sub_269423738();
  sub_269410F8C(v9, MEMORY[0x277D5E500], v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2693CDA8C(v4, &qword_2803100A8, qword_2694284E0);
    return 0;
  }

  (*(v7 + 32))(v1, v4, v5);
  v10 = sub_269412DA8(v0);
  if (!v10)
  {
    v19 = OUTLINED_FUNCTION_3_11();
    v20(v19);
    return 0;
  }

  v11 = v10;
  if (*(v10 + 16) <= sub_269423728())
  {
LABEL_10:
    v21 = OUTLINED_FUNCTION_3_11();
    v22(v21);

    return 0;
  }

  result = sub_269423728();
  if (*(v11 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    v13 = v11 + 16 * result;
    v15 = *(v13 + 32);
    v14 = *(v13 + 40);

    sub_269423668();
    v16 = sub_269423668();
    if (v16 >= sub_269423678())
    {
      goto LABEL_10;
    }

    v17 = sub_269423678();

    v18 = MEMORY[0x26D63BDA0](v15, v14);

    if (v18 < v17)
    {
      goto LABEL_10;
    }

    v24 = sub_269423668();
    v25 = OUTLINED_FUNCTION_11_9(v24);

    v26 = sub_269423678();
    v27 = OUTLINED_FUNCTION_11_9(v26);

    if (v27 >> 14 >= v25 >> 14)
    {
      v28 = MEMORY[0x26D63BDC0](v25, v27, v15, v14);
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v23 = MEMORY[0x26D63BDE0](v28, v30, v32, v34);
      v35 = OUTLINED_FUNCTION_3_11();
      v36(v35);
      return v23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269412DA8(void *a1)
{
  v1 = [a1 nBestTranscripts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269424288();

  return v3;
}

unint64_t sub_269412E00()
{
  result = qword_280310010;
  if (!qword_280310010)
  {
    sub_269423C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310010);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_9(unsigned int a1)
{

  return MEMORY[0x2821FBF10](15, a1, v2, v1);
}

uint64_t sub_269412EF8()
{
  v0 = sub_269423F68();
  v1 = sub_269423F58();
  v9 = v0;
  v10 = MEMORY[0x277D5FDD8];
  *&v8 = v1;
  type metadata accessor for SiriReferenceResolutionConverter(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_log;
  v4 = qword_28030F0C0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_269423FC8();
  v6 = __swift_project_value_buffer(v5, qword_280314F00);
  (*(*(v5 - 8) + 16))(v2 + v3, v6, v5);

  result = sub_2693DBCC8(&v8, v2 + OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_rReferenceResolverProtocol);
  qword_2803150A8 = v2;
  return result;
}

uint64_t sub_269413010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269423FE8();
  OUTLINED_FUNCTION_2();
  v73 = v5;
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  v72 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v76 = v67 - v9;
  v10 = sub_269424048();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v75 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = v67 - v17;
  v19 = sub_269424008();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = (v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100C8, qword_269428580);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  if (a1)
  {
    v68 = v18;
    v69 = v12;
    v70 = v10;
    v71 = v67 - v30;
    v77 = a2;
    v31 = OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_rReferenceResolverProtocol;
    sub_2693DBDF8(v78 + OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_rReferenceResolverProtocol, v79);
    __swift_project_boxed_opaque_existential_1(v79, v80);

    v32 = sub_269423F78();
    __swift_destroy_boxed_opaque_existential_1(v79);
    if (v32)
    {
      sub_2693DBDF8(v78 + v31, v79);
      __swift_project_boxed_opaque_existential_1(v79, v80);
      *v24 = a1;
      (*(v21 + 104))(v24, *MEMORY[0x277D5FEA8], v19);
      v67[1] = a1;

      v33 = v71;
      sub_269423F88();
      (*(v21 + 8))(v24, v19);
      __swift_destroy_boxed_opaque_existential_1(v79);
      sub_269413BA4(v33, v28);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_269413C14(v28);
        v34 = sub_269423FA8();
        v35 = sub_269424378();
        v36 = os_log_type_enabled(v34, v35);
        v37 = v77;
        if (v36)
        {
          v38 = OUTLINED_FUNCTION_12_0();
          *v38 = 0;
          _os_log_impl(&dword_2693C9000, v34, v35, "Siri Reference Resolution resolve call was unsuccessful", v38, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        sub_269413C14(v33);
      }

      else
      {
        v42 = v68;
        v41 = v69;
        v43 = v70;
        (*(v69 + 32))(v68, v28, v70);
        v44 = v75;
        (*(v41 + 16))(v75, v42, v43);
        v45 = (*(v41 + 88))(v44, v43);
        v37 = v77;
        if (v45 == *MEMORY[0x277D5FEC0])
        {
          (*(v41 + 96))(v44, v43);
          v47 = v73;
          v46 = v74;
          v48 = v76;
          (*(v73 + 32))(v76, v44, v74);
          v49 = v72;
          (*(v47 + 16))(v72, v48, v46);
          v50 = sub_269423FA8();
          v51 = sub_269424368();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = v49;
            v53 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v79[0] = v78;
            *v53 = 136315138;
            sub_269413C7C();
            v54 = sub_269424668();
            v56 = v55;
            v57 = *(v47 + 8);
            v57(v52, v46);
            v58 = sub_2693DB6E0(v54, v56, v79);
            v33 = v71;

            *(v53 + 4) = v58;
            _os_log_impl(&dword_2693C9000, v50, v51, "Siri Reference Resolution resolve call was successful with resolved entity match: %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v78);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();
          }

          else
          {

            v57 = *(v47 + 8);
            v57(v49, v46);
          }

          v66 = v76;
          sub_269423FD8();

          v57(v66, v46);
          (*(v69 + 8))(v68, v70);
          sub_269413C14(v33);
          v63 = sub_269424038();
          v64 = v37;
          v65 = 0;
          return __swift_storeEnumTagSinglePayload(v64, v65, 1, v63);
        }

        v59 = sub_269423FA8();
        v60 = sub_269424368();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = OUTLINED_FUNCTION_12_0();
          *v61 = 0;
          _os_log_impl(&dword_2693C9000, v59, v60, "Siri Reference Resolution resolve call was successful but returned ambiguous or empty matches", v61, 2u);
          v33 = v71;
          OUTLINED_FUNCTION_6_0();
        }

        v62 = *(v41 + 8);
        v62(v42, v43);
        sub_269413C14(v33);
        v62(v44, v43);
      }
    }

    else
    {

      v37 = v77;
    }

    v63 = sub_269424038();
    v64 = v37;
    v65 = 1;
    return __swift_storeEnumTagSinglePayload(v64, v65, 1, v63);
  }

  v39 = sub_269424038();

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v39);
}

uint64_t sub_269413780@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269423818();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269423FA8();
  v9 = sub_269424368();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_12_0();
    *v10 = 0;
    _os_log_impl(&dword_2693C9000, v8, v9, "Constructing a lookup instance of usoEntity for Translation to look up in SRR.", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  sub_269423948();
  swift_allocObject();
  sub_269423938();
  (*(v4 + 104))(v7, *MEMORY[0x277D5EE50], v2);
  sub_269423928();
  (*(v4 + 8))(v7, v2);
  sub_269423908();
  swift_allocObject();
  v11 = sub_2694238F8();

  sub_2694237C8();

  v12 = MEMORY[0x26D63B350](v11);
  if (v12)
  {
    sub_269413010(v12, a1);
  }

  else
  {
    v14 = sub_269423FA8();
    v15 = sub_269424378();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_12_0();
      *v16 = 0;
      _os_log_impl(&dword_2693C9000, v14, v15, "Creation of was common_translation entity was unsuccessful", v16, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v17 = sub_269424038();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
  }
}

uint64_t sub_269413A0C()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_log;
  v2 = sub_269423FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents32SiriReferenceResolutionConverter_rReferenceResolverProtocol));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SiriReferenceResolutionConverter(uint64_t a1)
{
  result = qword_2803100B8;
  if (!qword_2803100B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269413B0C(uint64_t a1)
{
  result = sub_269423FC8();
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

uint64_t sub_269413BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100C8, qword_269428580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269413C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100C8, qword_269428580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269413C7C()
{
  result = qword_2803100D0;
  if (!qword_2803100D0)
  {
    sub_269423FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803100D0);
  }

  return result;
}

uint64_t sub_269413CD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100D8, "B/");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2694256B0;
  *(v1 + 56) = type metadata accessor for TranslatePhraseIntent();
  *(v1 + 64) = &off_2879F4F48;
  *(v1 + 32) = v0;
  v2 = v0;
  return v1;
}

BOOL sub_269413D40(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_269413DF4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_269424588();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_269413E18()
{
  OUTLINED_FUNCTION_11_0();
  v1[44] = v2;
  v1[45] = v0;
  v3 = sub_269422D78();
  v1[46] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[47] = v4;
  v1[48] = OUTLINED_FUNCTION_82();
  v5 = sub_269423C68();
  v1[49] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[50] = v6;
  v1[51] = OUTLINED_FUNCTION_82();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310150, qword_269428710);
  v1[52] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[53] = v8;
  v1[54] = OUTLINED_FUNCTION_82();
  v9 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269413F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  *(v10 + 440) = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v11 = sub_269423FA8();
  v12 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v12))
  {
    v13 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v13);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v19 = *(v10 + 360);

  sub_269423EE8();
  sub_269423ED8();
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  *(v10 + 448) = v21;
  type metadata accessor for TranslatePhraseIntent();
  type metadata accessor for TranslatePhraseIntentResponse();
  v20;
  v22 = v21;
  sub_2694232B8();
  v23 = OBJC_IVAR___TranslatePhraseIntentResponse_code;
  swift_beginAccess();
  v24 = *&v22[v23];
  switch(v24)
  {
    case 'd':
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      *(v10 + 536) = v25;
      *v25 = v26;
      v25[1] = sub_269414CFC;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_73();

      result = sub_2694187EC();
      break;
    case 'e':
      sub_2693DBDF8(*(v10 + 360) + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher, v10 + 176);
      v43 = *(v10 + 200);
      *(v10 + 544) = v43;
      *(v10 + 560) = __swift_project_boxed_opaque_existential_1((v10 + 176), v43);
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      *(v10 + 568) = v44;
      *v44 = v45;
      v44[1] = sub_269414DE0;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_73();

      result = sub_269417060();
      break;
    case 'f':
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      *(v10 + 600) = v36;
      *v36 = v37;
      v36[1] = sub_269415114;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_73();

      result = sub_269417A3C();
      break;
    case 'g':
      sub_2693DBDF8(*(v10 + 360) + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher, v10 + 96);
      v39 = *(v10 + 120);
      *(v10 + 608) = v39;
      *(v10 + 624) = __swift_project_boxed_opaque_existential_1((v10 + 96), v39);
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      *(v10 + 632) = v40;
      *v40 = v41;
      v40[1] = sub_269415278;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_73();

      result = sub_2694175BC();
      break;
    default:
      if (v24 == 4)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_56_0();
        *(v10 + 456) = v29;
        *v29 = v30;
        v29[1] = sub_2694143E4;
        OUTLINED_FUNCTION_73();

        result = sub_269419420();
      }

      else
      {
        sub_2693DBDF8(*(v10 + 360) + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher, v10 + 16);
        v32 = *(v10 + 40);
        *(v10 + 664) = v32;
        *(v10 + 680) = __swift_project_boxed_opaque_existential_1((v10 + 16), v32);
        swift_task_alloc();
        OUTLINED_FUNCTION_56_0();
        *(v10 + 688) = v33;
        *v33 = v34;
        v33[1] = sub_2694155AC;
        OUTLINED_FUNCTION_73();

        result = sub_26941B564();
      }

      break;
  }

  return result;
}

uint64_t sub_2694143E4()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  *v3 = *v1;
  v2[58] = v4;
  v2[59] = v5;
  v2[60] = v6;
  v2[61] = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2694144E8()
{
  OUTLINED_FUNCTION_58();
  v34 = v0;
  v2 = v0[58];
  v1 = v0[59];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v0[40] = v2;
    v0[41] = v1;
    v4 = swift_task_alloc();
    *(v4 + 16) = v0 + 40;
    sub_269413D40(sub_26941C460, v4, &unk_2879F4260);
  }

  else
  {
    v6 = v0[50];
    v5 = v0[51];
    v7 = v0[49];
    sub_269423C48();
    sub_269423C38();
    sub_269423C18();

    sub_269423EF8();

    v8 = sub_269423C58();
    v10 = v9;
    (*(v6 + 8))(v5, v7);
    v0[42] = v8;
    v0[43] = v10;
    v11 = swift_task_alloc();
    *(v11 + 16) = v0 + 42;
    sub_269413D40(sub_26941C9D8, v11, &unk_2879F4260);
  }

  v12 = v0[45];

  v13 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_43_2();

  v14 = OUTLINED_FUNCTION_46_0();
  v15 = v0[59];
  if (v14)
  {
    v16 = v0[58];
    v17 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = sub_2693DB6E0(v16, v15, v33);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    v19 = MEMORY[0x26D63BE40](&unk_2879F4260, MEMORY[0x277D837D0]);
    v21 = sub_2693DB6E0(v19, v20, v33);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_2693C9000, v13, v12, "TranslatePhraseResponseFlow | Response mode is %s, voice modes are %s.", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v22 = v0[45];
  v23 = sub_26941AF1C((v0 + 32));
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v24)
  {
    v26 = v24;
  }

  *&xmmword_28030FC28 = v25;
  *(&xmmword_28030FC28 + 1) = v26;

  __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher), *(v22 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[62] = v27;
  *v27 = v28;
  v27[1] = sub_269414810;
  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821BB5D0](v29, v30, v31);
}

uint64_t sub_269414810()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269414910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v12 = OUTLINED_FUNCTION_20_7(v11);
  v13 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v13))
  {
    v14 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v14);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v15, v16, v17, v18, v19, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v20 = v10[60];

  v21 = v10[60];
  if (*(v20 + 16))
  {
  }

  v22 = v10[45];
  v23 = OUTLINED_FUNCTION_79_0();
  v24(v23);
  OUTLINED_FUNCTION_62_0();
  sub_269416C38(v25, v26, v27);

  v28 = OUTLINED_FUNCTION_55_0();
  v29(v28);
  v30 = swift_task_alloc();
  v10[64] = v30;
  *(v30 + 16) = v22;
  *(v30 + 24) = v21;
  v31 = swift_task_alloc();
  v10[65] = v31;
  *v31 = v10;
  v31[1] = sub_269414AA8;
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_73();

  return MEMORY[0x2822008A0](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_269414AA8()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 528) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_269414BE8()
{
  OUTLINED_FUNCTION_23_2();
  v2 = OUTLINED_FUNCTION_20_7(v1);
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v10 = __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  v11 = OUTLINED_FUNCTION_20_7(v10);
  v12 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v12))
  {
    v13 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v13);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v19 = OUTLINED_FUNCTION_0_21();
  v20(v19);

  OUTLINED_FUNCTION_4_6();

  return v21();
}

uint64_t sub_269414CFC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_269414DE0()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v3[72] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_56_0();
    v3[73] = v10;
    *v10 = v11;
    v10[1] = sub_269414F40;
    v12 = v3[69];
    v13 = v3[68];

    return MEMORY[0x2821BB5D0](v3 + 27, v13, v12);
  }
}

uint64_t sub_269414F40()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 592) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 216));
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269415040()
{
  OUTLINED_FUNCTION_23_2();
  v1 = __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v2 = OUTLINED_FUNCTION_20_7(v1);
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v10 = OUTLINED_FUNCTION_0_21();
  v11(v10);

  OUTLINED_FUNCTION_4_6();

  return v12();
}

uint64_t sub_269415114()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2694151F8()
{
  OUTLINED_FUNCTION_23_2();
  v0 = OUTLINED_FUNCTION_0_21();
  v1(v0);

  OUTLINED_FUNCTION_4_6();

  return v2();
}

uint64_t sub_269415278()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v3[80] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_56_0();
    v3[81] = v10;
    *v10 = v11;
    v10[1] = sub_2694153D8;
    v12 = v3[77];
    v13 = v3[76];

    return MEMORY[0x2821BB5D0](v3 + 17, v13, v12);
  }
}

uint64_t sub_2694153D8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 656) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 136));
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2694154D8()
{
  OUTLINED_FUNCTION_23_2();
  v1 = __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v2 = OUTLINED_FUNCTION_20_7(v1);
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v10 = OUTLINED_FUNCTION_0_21();
  v11(v10);

  OUTLINED_FUNCTION_4_6();

  return v12();
}

uint64_t sub_2694155AC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v3[87] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_56_0();
    v3[88] = v10;
    *v10 = v11;
    v10[1] = sub_26941570C;
    v12 = v3[84];
    v13 = v3[83];

    return MEMORY[0x2821BB5D0](v3 + 7, v13, v12);
  }
}

uint64_t sub_26941570C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 712) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 56));
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26941580C()
{
  OUTLINED_FUNCTION_23_2();
  v1 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = OUTLINED_FUNCTION_20_7(v1);
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v10 = OUTLINED_FUNCTION_0_21();
  v11(v10);

  OUTLINED_FUNCTION_4_6();

  return v12();
}

uint64_t sub_2694158E0()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 488);
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v10 = OUTLINED_FUNCTION_20_7(v9);
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v11))
  {
    v12 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v12);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269415A30()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  v1 = *(v0 + 504);
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v10 = OUTLINED_FUNCTION_20_7(v9);
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v11))
  {
    v12 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v12);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269415B88()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  v1 = *(v0 + 528);
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v10 = OUTLINED_FUNCTION_20_7(v9);
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v11))
  {
    v12 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v12);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269415CE0()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v1 = *(v0 + 576);
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v10 = OUTLINED_FUNCTION_20_7(v9);
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v11))
  {
    v12 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v12);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269415E38()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v1 = *(v0 + 592);
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v10 = OUTLINED_FUNCTION_20_7(v9);
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v11))
  {
    v12 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v12);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269415F90()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 640);
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v10 = OUTLINED_FUNCTION_20_7(v9);
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v11))
  {
    v12 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v12);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_2694160E8()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 656);
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v10 = OUTLINED_FUNCTION_20_7(v9);
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v11))
  {
    v12 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v12);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269416240()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 696);
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v10 = OUTLINED_FUNCTION_20_7(v9);
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v11))
  {
    v12 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v12);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_269416398()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 712);
  OUTLINED_FUNCTION_27_2();
  v2 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_54_0();
  if (OUTLINED_FUNCTION_46_0())
  {
    OUTLINED_FUNCTION_29_2();
    v3 = OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_28_3(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_1_3();
  }

  v10 = OUTLINED_FUNCTION_20_7(v9);
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v11))
  {
    v12 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v12);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();
  v18 = OUTLINED_FUNCTION_0_21();
  v19(v18);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_75();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_2694164F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v28 = *(a2 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_translationApiClient);
  v10 = [*(a2 + 16) targetLanguage];
  if (v10)
  {
    v11 = v10;
    v27 = sub_269424118();
    v13 = v12;
  }

  else
  {
    v27 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = [*(a2 + 24) translationResultItems];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  type metadata accessor for TranslationResultItem();
  v16 = sub_269424288();

  if (!sub_26941C9D4())
  {

LABEL_11:

    v21 = 0;
    v22 = 0xE000000000000000;
    goto LABEL_12;
  }

  sub_26942008C();
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x26D63C060](0, v16);
  }

  else
  {
    v17 = *(v16 + 32);
  }

  v18 = v17;

  v19 = sub_26941C140(v18, &selRef_translatedText);
  if (!v20)
  {
    goto LABEL_11;
  }

  v21 = v19;
  v22 = v20;
LABEL_12:
  (*(v7 + 16))(v9, a1, v6);
  v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  (*(v7 + 32))(v24 + v23, v9, v6);

  v29 = 1;
  sub_2693D4578(v27, v13, v21, v22, 0x100000000, sub_26941C554, v24);
}

void sub_269416794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[0] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v26 - v14;
  v16 = sub_269424338();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a5, v9);
  v17 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  (*(v10 + 32))(&v18[v17], v12, v9);

  sub_2693EBBE0(0, 0, v15, &unk_269428748, v18);

  v19 = sub_269423FA8();
  v20 = sub_269424368();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26[2] = a2;
    v27 = v22;
    *v21 = 136315138;
    v26[1] = v26[0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v23 = sub_269424128();
    v25 = sub_2693DB6E0(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2693C9000, v19, v20, "Speak request executed. Error: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x26D63C8E0](v22, -1, -1);
    MEMORY[0x26D63C8E0](v21, -1, -1);
  }
}

uint64_t sub_269416A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_269422D78();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269416B48, 0, 0);
}

uint64_t sub_269416B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  if (*(*(v10 + 24) + 16))
  {
  }

  v11 = OUTLINED_FUNCTION_79_0();
  v12(v11);
  OUTLINED_FUNCTION_62_0();
  sub_269416C38(v13, v14, v15);

  v16 = OUTLINED_FUNCTION_55_0();
  v17(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  sub_269424318();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

void sub_269416C38(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_269422D78();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  v51 = a1;
  sub_269422D88();

  v16 = sub_269422DF8();

  __swift_destroy_boxed_opaque_existential_1(v53);
  if (v16)
  {
    v17 = *(v10 + 16);
    v52 = v15;
    v17(v15, a3, v8);
    v18 = v16;

    v19 = sub_269423FA8();
    v20 = sub_269424368();

    if (OUTLINED_FUNCTION_84())
    {
      v21 = swift_slowAlloc();
      v45 = v8;
      v22 = v21;
      v47 = swift_slowAlloc();
      v53[0] = v47;
      *v22 = 136315906;
      v23 = v18;
      v49 = v4;
      v24 = v23;
      v25 = [v23 description];
      v46 = v20;
      v26 = v25;
      v27 = sub_269424118();
      v48 = v18;
      v28 = v27;
      v44 = v17;
      v30 = v29;

      v31 = sub_2693DB6E0(v28, v30, v53);

      *(v22 + 4) = v31;
      *(v22 + 12) = 2080;
      v32 = xmmword_28030FC28;

      v33 = sub_2693DB6E0(v32, *(&v32 + 1), v53);

      *(v22 + 14) = v33;
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_2693DB6E0(v51, a2, v53);
      *(v22 + 32) = 2080;
      v18 = v48;
      v34 = v52;
      v35 = v45;
      v44(v50, v52, v45);
      v36 = v35;
      v37 = sub_269424128();
      v39 = v38;
      (*(v10 + 8))(v34, v36);
      v40 = sub_2693DB6E0(v37, v39, v53);

      *(v22 + 34) = v40;
      _os_log_impl(&dword_2693C9000, v19, v46, "Constructed command: %s with viewId %s and play button id %s and state %s", v22, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      (*(v10 + 8))(v52, v8);
    }

    sub_269423018();
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    sub_269423298();
    __swift_destroy_boxed_opaque_existential_1(v53);
    v41 = sub_269423FA8();
    v42 = sub_269424368();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_12_0();
      *v43 = 0;
      _os_log_impl(&dword_2693C9000, v41, v42, "Sent off the command.", v43, 2u);
      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269417060()
{
  OUTLINED_FUNCTION_11_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  OUTLINED_FUNCTION_12_2(v4);
  v1[10] = OUTLINED_FUNCTION_82();
  v5 = sub_269423248();
  v1[11] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_82();
  v7 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269417134()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v2 = OUTLINED_FUNCTION_85_0(*(v1 + 64));
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_17_0();
    v3 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_52_1(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_4_1();
  }

  v9 = *(v1 + 64);

  sub_2693D54EC(v9, &selRef_sourceLanguage);
  *(v1 + 112) = v10;
  sub_2693D54EC(v9, &selRef_targetLanguage);
  *(v1 + 120) = v11;
  sub_2693D54EC(v9, &selRef_phrase);
  *(v1 + 128) = v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v1 + 136) = v13;
  *v13 = v14;
  v13[1] = sub_2694172CC;
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_73();

  return sub_2693F9414();
}

uint64_t sub_2694172CC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_269417440()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_78_0();
  v3 = sub_2694231F8();
  OUTLINED_FUNCTION_71_0(v0, v4, v5, v3);
  OUTLINED_FUNCTION_61_0();
  v6 = MEMORY[0x277D5C1D8];
  v1[3] = v7;
  v1[4] = v6;
  __swift_allocate_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_41_0();
  sub_2694230F8();
  sub_2693EE27C(v2, &qword_280310190, qword_269427220);
  sub_2693EE27C(v0, &qword_28030FC98, &qword_269427710);
  v8 = OUTLINED_FUNCTION_91();
  v9(v8);

  OUTLINED_FUNCTION_4_6();

  return v10();
}

uint64_t sub_269417554()
{
  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_4_6();

  return v0();
}

uint64_t sub_2694175BC()
{
  OUTLINED_FUNCTION_11_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  OUTLINED_FUNCTION_12_2(v4);
  v1[10] = OUTLINED_FUNCTION_82();
  v5 = sub_269423248();
  v1[11] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_82();
  v7 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269417690()
{
  OUTLINED_FUNCTION_60();
  v2 = OUTLINED_FUNCTION_85_0(*(v1 + 64));
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_17_0();
    v3 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_52_1(v3, 5.7779e-34);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_2693EE27C(v3, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_4_1();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v1 + 112) = v9;
  *v9 = v10;
  v9[1] = sub_2694177C8;

  return sub_2693FA4C8();
}

uint64_t sub_2694177C8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2694178C0()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_78_0();
  v3 = sub_2694231F8();
  OUTLINED_FUNCTION_71_0(v0, v4, v5, v3);
  OUTLINED_FUNCTION_61_0();
  v6 = MEMORY[0x277D5C1D8];
  v1[3] = v7;
  v1[4] = v6;
  __swift_allocate_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_41_0();
  sub_269423128();
  sub_2693EE27C(v2, &qword_280310190, qword_269427220);
  sub_2693EE27C(v0, &qword_28030FC98, &qword_269427710);
  v8 = OUTLINED_FUNCTION_91();
  v9(v8);

  OUTLINED_FUNCTION_4_6();

  return v10();
}

uint64_t sub_2694179D4()
{
  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_4_6();

  return v0();
}

uint64_t sub_269417A3C()
{
  OUTLINED_FUNCTION_11_0();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  OUTLINED_FUNCTION_12_2(v4);
  v1[16] = OUTLINED_FUNCTION_82();
  v5 = sub_269423248();
  v1[17] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[18] = v6;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269417B24()
{
  OUTLINED_FUNCTION_60();
  v2 = v1[14];
  v1[21] = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v3 = OUTLINED_FUNCTION_85_0(v2);
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_17_0();
    v4 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_52_1(v4, 5.7779e-34);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    sub_2693EE27C(v4, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_4_1();
  }

  v10 = v1[15];

  v1[22] = *(v10 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v1[23] = v11;
  *v11 = v12;
  v11[1] = sub_269417C68;

  return sub_2693F8524();
}

uint64_t sub_269417C68()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269417D60()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 112);
  v2 = sub_2693D54EC(v1, &selRef_sourceLanguage);
  v4 = v3;
  v5 = sub_2693D54EC(v1, &selRef_targetLanguage);
  if (!v6)
  {
    v5 = 0;
  }

  v7 = 0xE000000000000000;
  if (!v6)
  {
    v6 = 0xE000000000000000;
  }

  if (TranslationLanguages.init(rawValue:)(*&v5).value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  else
  {
    v10 = TranslationLanguages.getLocaleString()();
    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
  }

  if (!v4)
  {
    v4 = 0xE000000000000000;
    v2 = 0;
  }

  v11 = sub_2693D54EC(*(v0 + 112), &selRef_phrase);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v7 = v12;
  }

  type metadata accessor for TranslationUtil();
  sub_2693D554C(0, &qword_28030F7A8, 0x277D479F0);
  v14 = sub_2693D6460(v2, v4, countAndFlagsBits, object, v13, v7);
  v16 = v15;

  *(v0 + 200) = sub_2693D6744(v14, v16);

  *(v0 + 208) = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 216) = v17;
  *v17 = v18;
  v17[1] = sub_269417F34;

  return sub_2693F9048();
}

uint64_t sub_269417F34()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26941802C()
{
  v1 = *(v0 + 144);
  v2 = sub_269423238();
  *(v0 + 232) = *(v1 + 8);
  *(v0 + 240) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3 = OUTLINED_FUNCTION_91();
  v4(v3);
  if (v2[2])
  {
    v6 = v2[4];
    v5 = v2[5];
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x74616C736E617254;
  }

  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);

  sub_269405CAC(v6, v5, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_269427450;
  *(v11 + 32) = v7;
  v12 = v7;
  sub_26941C284(v11, v8);
  v13 = *(v10 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher + 24);
  v24 = *(v10 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher + 32);
  __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher), v13);
  __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_deviceState), *(v10 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_deviceState + 24));
  sub_269423028();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269427450;
  *(v14 + 32) = v8;
  v15 = sub_2694231F8();
  v18 = OUTLINED_FUNCTION_71_0(v9, v16, v17, v15);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v19 = MEMORY[0x277D5C1D8];
  *(v0 + 40) = v18;
  *(v0 + 48) = v19;
  __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  v20 = v8;
  sub_2694230F8();

  sub_2693EE27C(v0 + 56, &qword_280310190, qword_269427220);
  sub_2693EE27C(v9, &qword_28030FC98, &qword_269427710);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 248) = v21;
  *v21 = v22;
  v21[1] = sub_2694182D8;

  return MEMORY[0x2821BB5D0](v0 + 16, v13, v24);
}

uint64_t sub_2694182D8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2694183D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_83_0();

  v2 = OUTLINED_FUNCTION_13_5();
  v3 = v0(v2);
  OUTLINED_FUNCTION_53_1(v3);

  OUTLINED_FUNCTION_4_6();

  return v4();
}

uint64_t sub_2694187EC()
{
  OUTLINED_FUNCTION_11_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_269423078();
  OUTLINED_FUNCTION_12_2(v4);
  v1[11] = OUTLINED_FUNCTION_82();
  v5 = sub_269423368();
  v1[12] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_82();
  v7 = sub_2694233D8();
  v1[15] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_82();
  v9 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269418900()
{
  OUTLINED_FUNCTION_60();
  v2 = v1[9];
  v1[18] = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v3 = OUTLINED_FUNCTION_85_0(v2);
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_17_0();
    v4 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_52_1(v4, 5.7779e-34);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    sub_2693EE27C(v4, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_4_1();
  }

  sub_2694233C8();
  v10 = swift_task_alloc();
  v1[19] = v10;
  *v10 = v1;
  v10[1] = sub_269418A58;

  return sub_2693F6BF4();
}

uint64_t sub_269418A58()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v7 + 160) = v6;
  *(v7 + 168) = v0;

  v8 = OUTLINED_FUNCTION_91();
  v9(v8);
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_269418BAC()
{
  OUTLINED_FUNCTION_23_2();
  sub_269423068();
  OUTLINED_FUNCTION_31_4();
  sub_2694232E8();
  v1 = sub_269423218();
  OUTLINED_FUNCTION_10_2(v1);
  v0[22] = sub_269423208();
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D5BD48]);
  v8 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[23] = v3;
  *v3 = v4;
  v3[1] = sub_269418C90;
  v5 = v0[20];
  v6 = v0[14];

  return v8(v0 + 2, v5, v6);
}

uint64_t sub_269418C90()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269418DA4()
{
  OUTLINED_FUNCTION_23_2();
  __swift_project_boxed_opaque_existential_1((*(v0 + 80) + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher), *(*(v0 + 80) + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 200) = v1;
  *v1 = v2;
  v1[1] = sub_269418E60;
  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821BB5D0](v3, v4, v5);
}

uint64_t sub_269418E60()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269418F58()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_67();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_36_5();
  v3 = v2(v1);
  OUTLINED_FUNCTION_32_3(v3);

  OUTLINED_FUNCTION_4_6();

  return v4();
}

uint64_t sub_269419360(void (*a1)(uint64_t))
{
  v3 = sub_269423158();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_0();
  sub_269423148();
  a1(v1);
  return (*(v5 + 8))(v1, v3);
}

uint64_t sub_269419420()
{
  OUTLINED_FUNCTION_11_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_2694233D8();
  v1[15] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_82();
  v6 = sub_269423C68();
  v1[18] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[19] = v7;
  v1[20] = OUTLINED_FUNCTION_82();
  v8 = sub_269423078();
  OUTLINED_FUNCTION_12_2(v8);
  v1[21] = OUTLINED_FUNCTION_82();
  v9 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  OUTLINED_FUNCTION_12_2(v9);
  v1[22] = OUTLINED_FUNCTION_82();
  v10 = sub_269423368();
  v1[23] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[24] = v11;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310150, qword_269428710);
  v1[27] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[28] = v13;
  v1[29] = OUTLINED_FUNCTION_82();
  v14 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26941960C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[13];
  v0[30] = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_269423FA8();
  v6 = sub_269424368();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_17_0();
    v12 = OUTLINED_FUNCTION_49_0();
    *v11 = 138412290;
    v13 = sub_2694232A8();
    (*(v9 + 8))(v8, v10);
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_2693C9000, v5, v6, "makeIntentHandledResponse: %@", v11, 0xCu);
    sub_2693EE27C(v12, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  __swift_project_boxed_opaque_existential_1((v0[14] + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_featureFlags), *(v0[14] + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_featureFlags + 24));
  v14 = OUTLINED_FUNCTION_91();
  v16 = v15(v14);
  v17 = sub_269423FA8();
  v18 = sub_269424368();
  v19 = os_log_type_enabled(v17, v18);
  if (v16)
  {
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_20_0(v20);
      OUTLINED_FUNCTION_81_0(&dword_2693C9000, v21, v22, "makeIntentHandledResponse() using RF 2.0");
      OUTLINED_FUNCTION_4_1();
    }

    OUTLINED_FUNCTION_76_0();

    v23 = sub_2694232A8();
    v24 = sub_26941C1AC(v23);
    v0[31] = v24;
    if (v24)
    {
      v0[32] = sub_2694232C8();
      v0[33] = sub_2694232A8();
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      v0[34] = v25;
      *v25 = v26;
      v25[1] = sub_269419C48;
      OUTLINED_FUNCTION_44_0();

      return sub_2693F37B8();
    }

    goto LABEL_30;
  }

  if (v19)
  {
    v29 = OUTLINED_FUNCTION_12_0();
    *v29 = 0;
    _os_log_impl(&dword_2693C9000, v17, v18, "makeIntentHandledResponse() using RF 1.0", v29, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_76_0();

  v30 = sub_2694232C8();
  sub_26941C140(v30, &selRef_phrase);
  if (!v31)
  {
    sub_2693FD35C();
    swift_allocError();
    *v49 = 0;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_76_0();

  v32 = sub_2694232C8();
  sub_26941C140(v32, &selRef_targetLanguage);
  if (!v33)
  {
    sub_2693FD35C();
    swift_allocError();
    v51 = 1;
LABEL_31:
    *v50 = v51;
LABEL_32:
    swift_willThrow();
    OUTLINED_FUNCTION_9_10();

    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_44_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_76_0();

  v34 = sub_2694232A8();
  v35 = sub_26941C1AC(v34);
  if (!v35)
  {
LABEL_30:
    sub_2693FD35C();
    swift_allocError();
    v51 = 2;
    goto LABEL_31;
  }

  v36 = v35;
  if (!sub_26941C9D4())
  {

    goto LABEL_30;
  }

  sub_26942008C();
  if ((v36 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D63C060](0, v36);
  }

  else
  {
    v37 = *(v36 + 32);
  }

  OUTLINED_FUNCTION_84_0();
  sub_26941C140((v36 & 0xC000000000000001), &selRef_translatedText);
  if (!v38)
  {
    goto LABEL_30;
  }

  v39 = sub_269423FA8();
  v40 = sub_269424368();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v41);
    OUTLINED_FUNCTION_81_0(&dword_2693C9000, v42, v43, "Constructing dialog.");
    OUTLINED_FUNCTION_4_1();
  }

  v44 = v0[27];

  sub_2694233C8();
  v45 = sub_2694232A8();
  v46 = sub_26941C1AC(v45);
  if (v46 && (sub_269413DF4(v46), OUTLINED_FUNCTION_84_0(), v44 == 1))
  {
    v0[41] = sub_2694232C8();
    v0[42] = sub_2694232A8();
    v47 = swift_task_alloc();
    v0[43] = v47;
    *v47 = v0;
    OUTLINED_FUNCTION_50_1(v47);
    OUTLINED_FUNCTION_44_0();

    return sub_2693F5758();
  }

  else
  {
    v0[47] = sub_2694232C8();
    v0[48] = sub_2694232A8();
    v54 = swift_task_alloc();
    v0[49] = v54;
    *v54 = v0;
    OUTLINED_FUNCTION_50_1(v54);
    OUTLINED_FUNCTION_44_0();

    return sub_2693F4FC4();
  }
}

uint64_t sub_269419C48()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *v1;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7_5();
  *v6 = v5;
  v9[35] = v7;
  v9[36] = v8;
  v9[37] = v0;

  v10 = *(v2 + 256);

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_269419DA4()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 176);
  *(v0 + 40) = type metadata accessor for SiriTranslationModels(0);
  *(v0 + 48) = sub_26941C30C();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  sub_26941C364(v1, boxed_opaque_existential_0);
  swift_storeEnumTagMultiPayload();
  v3 = sub_2694232A8();
  v4 = sub_26941C1AC(v3);
  if (v4)
  {
    sub_269413DF4(v4);
    OUTLINED_FUNCTION_84_0();
  }

  v5 = *(v0 + 280);
  v13 = *(v0 + 104);
  sub_269423068();
  *(swift_task_alloc() + 16) = vextq_s8(v13, v13, 8uLL);
  sub_2694232E8();

  sub_2694232F8();
  v6 = sub_269423218();
  OUTLINED_FUNCTION_10_2(v6);
  *(v0 + 304) = sub_269423208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
  v7 = swift_allocObject();
  *(v0 + 312) = v7;
  *(v7 + 16) = xmmword_269427450;
  *(v7 + 32) = v5;
  v14 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
  v8 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 320) = v9;
  *v9 = v10;
  v9[1] = sub_269419FB4;
  v11 = *(v0 + 208);

  return v14(v0 + 56, v0 + 16, v7, v11);
}

uint64_t sub_269419FB4()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26941A0D0()
{
  OUTLINED_FUNCTION_58();
  v1 = v0[35];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];
  sub_2693DBDF8((v0 + 7), v0[12]);
  v9 = sub_269423C58();
  v14 = v10;

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  (*(v6 + 8))(v7, v8);
  sub_26941C3D0(v5);
  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v11 = v0[36];
  OUTLINED_FUNCTION_63_0();

  v12 = v0[1];

  return v12(v9, v14, v11);
}

uint64_t sub_26941A20C()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_5();
  v7 = v6;
  OUTLINED_FUNCTION_8_4();
  *v8 = v7;
  v10 = *(v9 + 336);
  v11 = *(v9 + 328);
  v12 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v13 = v12;
  v7[44] = v0;

  if (!v0)
  {
    v7[45] = v3;
    v7[46] = v5;
  }

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_73();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26941A34C()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[45];
  v1 = v0[46];
  v0[52] = v1;
  v0[53] = v2;
  v3 = v1;
  v4 = sub_269423FA8();
  v5 = sub_269424368();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_12_0() = 0;
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_1_3();
  }

  OUTLINED_FUNCTION_82_0();
  sub_269423068();
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_26_3(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);

  v21 = sub_269423218();
  OUTLINED_FUNCTION_10_2(v21);
  v0[54] = sub_269423208();
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[55] = v22;
  *v22 = v23;
  v24 = OUTLINED_FUNCTION_24_5(v22);

  return v25(v24);
}

uint64_t sub_26941A474(uint64_t a1)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_10_5();
  v6 = v5;
  OUTLINED_FUNCTION_8_4();
  *v7 = v6;
  v9 = *(v8 + 384);
  v10 = *(v8 + 376);
  v11 = *v2;
  OUTLINED_FUNCTION_9_0();
  *v12 = v11;
  *(v6 + 400) = v1;

  if (!v1)
  {
    *(v6 + 408) = v4;
  }

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_75();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26941A5B0()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[51];
  v2 = MEMORY[0x277D84F90];
  v0[52] = v1;
  v0[53] = v2;
  v3 = v1;
  v4 = sub_269423FA8();
  v5 = sub_269424368();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_12_0() = 0;
    OUTLINED_FUNCTION_3_12();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_1_3();
  }

  OUTLINED_FUNCTION_82_0();
  sub_269423068();
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_26_3(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);

  v21 = sub_269423218();
  OUTLINED_FUNCTION_10_2(v21);
  v0[54] = sub_269423208();
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[55] = v22;
  *v22 = v23;
  v24 = OUTLINED_FUNCTION_24_5(v22);

  return v25(v24);
}

uint64_t sub_26941A6E0()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 448) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26941A804()
{
  OUTLINED_FUNCTION_58();
  v1 = v0[52];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];
  v8 = [v1 responseMode];
  sub_269424118();

  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v6, v7);
  OUTLINED_FUNCTION_63_0();

  OUTLINED_FUNCTION_62_0();

  return v9();
}

uint64_t sub_26941A934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_26941A9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  (*(v10[16] + 8))(v10[17], v10[15]);
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26941AA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  (*(v10[16] + 8))(v10[17], v10[15]);
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26941AB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v11 = *(v10 + 416);

  v12 = OUTLINED_FUNCTION_13_5();
  v13(v12);
  v14 = OUTLINED_FUNCTION_55_0();
  v15(v14);
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_26941ABE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310150, qword_269428710);
  v3 = sub_2694232C8();
  v4 = sub_2694232A8();
  sub_26941D9EC();

  v5 = sub_2694231F8();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  sub_269423348();
  return sub_269423318();
}

uint64_t sub_26941AD08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310150, qword_269428710);
  v3 = sub_2694232C8();
  v4 = sub_2694232A8();
  sub_26941D9EC();

  v5 = sub_2694231F8();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  sub_269423348();
  return sub_269423318();
}

uint64_t sub_26941AE2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310150, qword_269428710);
  v3 = sub_2694232C8();
  sub_26941D9EC();

  v4 = sub_2694231F8();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  return sub_269423348();
}

uint64_t sub_26941AF1C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310130, &qword_2694286F8);
  v5 = OUTLINED_FUNCTION_12_2(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v52 - v6;
  v8 = sub_2694234B8();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59_0();
  sub_2693DBDF8(a1, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310138, &unk_269428700);
  if (swift_dynamicCast())
  {
    v52[1] = v1;
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    v52[3] = v10;
    v53 = v8;
    (v10)[4](v2, v7, v8);
    v52[2] = v2;
    v12 = sub_2694234A8();
    v13 = MEMORY[0x277D84F90];
    v56[0] = MEMORY[0x277D84F90];
    v14 = sub_26941C9D4();
    v15 = 0;
    v10 = (v12 & 0xFFFFFFFFFFFFFF8);
    v16 = 0x277D47000;
    v54 = v13;
    while (v14 != v15)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D63C060](v15, v12);
      }

      else
      {
        if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x26D63BE10]();
        if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2694242A8();
        }

        sub_2694242C8();
        v13 = v56[0];
        ++v15;
      }

      else
      {

        ++v15;
      }
    }

    if (!sub_26941C9D4())
    {
      v43 = OUTLINED_FUNCTION_74_0();
      v44(v43, v53);

      goto LABEL_40;
    }

    v16 = (v13 & 0xC000000000000001);
    sub_26942008C();
    if ((v13 & 0xC000000000000001) == 0)
    {
      v19 = *(v13 + 32);
      goto LABEL_18;
    }

LABEL_50:
    MEMORY[0x26D63C060](0, v13);
LABEL_18:
    OUTLINED_FUNCTION_84_0();
    v52[0] = v16;
    result = sub_26941C214(v16);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v21 = result;
    v56[0] = MEMORY[0x277D84F90];
    v22 = sub_26941C9D4();
    v13 = 0;
    v10 = (v21 & 0xFFFFFFFFFFFFFF8);
    v16 = 0x277D47000;
    while (v22 != v13)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x26D63C060](v13, v21);
      }

      else
      {
        if (v13 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v23 = *(v21 + 8 * v13 + 32);
      }

      v24 = v23;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_48;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x26D63BE10]();
        if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2694242A8();
        }

        sub_2694242C8();
        v54 = v56[0];
        ++v13;
      }

      else
      {

        ++v13;
      }
    }

    v25 = v54;
    if (sub_26941C9D4())
    {
      sub_26942008C();
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x26D63C060](0, v25);
      }

      else
      {
        v26 = *(v25 + 32);
      }

      v27 = v26;

      v28 = v27;
      v29 = sub_269423FA8();
      v30 = sub_269424368();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_17_0();
        v32 = swift_slowAlloc();
        v55 = v32;
        *v31 = 136315138;
        v56[0] = sub_2693D54EC(v28, &selRef_viewId);
        v56[1] = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
        v34 = sub_269424128();
        v36 = sub_2693DB6E0(v34, v35, &v55);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_2693C9000, v29, v30, "First SAUISnippet.viewId in visualResponseSnippet %s ", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v37 = v53;
      v38 = [v28 viewId];
      if (v38)
      {
        v39 = v38;
        v40 = sub_269424118();

        v41 = OUTLINED_FUNCTION_74_0();
        v42(v41, v37);
        return v40;
      }

      v50 = OUTLINED_FUNCTION_74_0();
      v51(v50, v37);

      return 0;
    }

    v45 = OUTLINED_FUNCTION_74_0();
    v46(v45, v53);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_2693EE27C(v7, &qword_280310130, &qword_2694286F8);
  }

LABEL_40:
  v47 = sub_269423FA8();
  v48 = sub_269424368();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v49);
    _os_log_impl(&dword_2693C9000, v47, v48, "visual id is nil ", v10, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  return 0;
}

uint64_t sub_26941B564()
{
  OUTLINED_FUNCTION_11_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269423078();
  OUTLINED_FUNCTION_12_2(v3);
  v1[4] = OUTLINED_FUNCTION_82();
  v4 = sub_269423368();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_82();
  v6 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26941B628()
{
  OUTLINED_FUNCTION_23_2();
  *(v0 + 64) = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v1 = sub_269423FA8();
  v2 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v2))
  {
    v3 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v3);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_26941B71C;

  return sub_2693FB290();
}

uint64_t sub_26941B71C()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 80) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_26941B864()
{
  OUTLINED_FUNCTION_23_2();
  v1 = sub_269423FA8();
  v2 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v2))
  {
    v3 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v3);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423068();
  OUTLINED_FUNCTION_31_4();
  sub_2694232E8();
  v9 = sub_269423218();
  OUTLINED_FUNCTION_10_2(v9);
  v0[11] = sub_269423208();
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D5BD48]);
  v17 = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[12] = v11;
  *v11 = v12;
  v11[1] = sub_26941B998;
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[2];

  return v17(v15, v13, v14);
}

uint64_t sub_26941B998()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26941BAAC()
{
  OUTLINED_FUNCTION_23_2();

  v1 = OUTLINED_FUNCTION_13_5();
  v2(v1);

  OUTLINED_FUNCTION_4_6();

  return v3();
}

uint64_t sub_26941BB3C()
{
  OUTLINED_FUNCTION_23_2();

  v1 = OUTLINED_FUNCTION_36_5();
  v2(v1);

  OUTLINED_FUNCTION_4_6();

  return v3();
}

uint64_t sub_26941BBCC()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  sub_269423FC8();
  OUTLINED_FUNCTION_8_3();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_featureFlags));
  return v0;
}

uint64_t sub_26941BC90()
{
  sub_26941BBCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TranslatePhraseResponseFlow(uint64_t a1)
{
  result = qword_280310120;
  if (!qword_280310120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26941BD3C(uint64_t a1)
{
  result = sub_269423FC8();
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

uint64_t sub_26941BE14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2693EC8CC;

  return sub_269413E18();
}

uint64_t sub_26941BEB0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TranslatePhraseResponseFlow(0);

  return sub_269422FC8();
}

uint64_t sub_26941BEEC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101C0, &qword_269425D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2694256B0;
  *(inited + 32) = sub_269424118();
  *(inited + 40) = v2;
  v3 = sub_269424128();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  return sub_2694240B8();
}

uint64_t sub_26941BF98(uint64_t a1)
{
  v2 = sub_26941C980();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26941BFD4(uint64_t a1)
{
  v2 = sub_26941C980();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_26941C040(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_26941C0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_269424688() & 1;
  }
}

uint64_t sub_26941C140(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_269424118();

  return v4;
}

uint64_t sub_26941C1AC(void *a1)
{
  v2 = [a1 translationResultItems];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for TranslationResultItem();
  v3 = sub_269424288();

  return v3;
}

uint64_t sub_26941C214(void *a1)
{
  v1 = [a1 views];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2693D554C(0, &qword_280310148, 0x277D47140);
  v3 = sub_269424288();

  return v3;
}

void sub_26941C284(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310198, &qword_269428728);
  v3 = sub_269424278();

  [a2 setCommands_];
}

unint64_t sub_26941C30C()
{
  result = qword_280310160;
  if (!qword_280310160)
  {
    type metadata accessor for SiriTranslationModels(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310160);
  }

  return result;
}

uint64_t sub_26941C364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26941C3D0(uint64_t a1)
{
  v2 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26941C488()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

void sub_26941C554(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_12_2(v5);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  sub_269416794(a1, a2, v7, v8, v9);
}

uint64_t sub_26941C5E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_26941C6B4()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_12_2(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_2693EC8CC;
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_73();

  return sub_269416A84(v4, v5, v6, v7, v8, v9);
}

uint64_t getEnumTagSinglePayload for HandleIntentStrategyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HandleIntentStrategyError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26941C8ECLL);
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

unint64_t sub_26941C92C()
{
  result = qword_2803101B0;
  if (!qword_2803101B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803101B0);
  }

  return result;
}

unint64_t sub_26941C980()
{
  result = qword_2803101B8;
  if (!qword_2803101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803101B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_10()
{
}

void OUTLINED_FUNCTION_19_6()
{

  JUMPOUT(0x26D63C8E0);
}

uint64_t OUTLINED_FUNCTION_20_7(uint64_t a1)
{

  return sub_269423FA8();
}

uint64_t OUTLINED_FUNCTION_26_3(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  a1[1] = vextq_s8(a10, a10, 8uLL);

  return sub_2694232E8();
}

uint64_t OUTLINED_FUNCTION_27_2()
{
}

id OUTLINED_FUNCTION_28_3(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_3(uint64_t a1)
{

  return sub_269423148();
}

BOOL OUTLINED_FUNCTION_46_0()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_47_1(float a1)
{
  *v3 = a1;
  *(v2 + 56) = v1;

  return v1;
}

id OUTLINED_FUNCTION_48_1(float a1)
{
  *v3 = a1;
  *(v2 + 96) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_52_1(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1)
{

  return sub_269423148();
}

uint64_t OUTLINED_FUNCTION_54_0()
{
}

double OUTLINED_FUNCTION_61_0()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_63_0()
{
}

uint64_t OUTLINED_FUNCTION_64_0(uint64_t a1)
{

  return sub_269424128();
}

id OUTLINED_FUNCTION_65()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_66()
{
}

void OUTLINED_FUNCTION_67()
{
  v2 = *(v0 + 160);
}

unint64_t OUTLINED_FUNCTION_68_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2693DB6E0(a1, a2, &a9);
}

id OUTLINED_FUNCTION_69_0()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_71_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_2694234B8();
}

void OUTLINED_FUNCTION_81_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_82_0()
{
}

void OUTLINED_FUNCTION_83_0()
{
  v2 = *(v0 + 208);
}

uint64_t OUTLINED_FUNCTION_84_0()
{
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1)
{

  return sub_269423FA8();
}

void sub_26941CF28()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v2 = sub_269423DA8();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_5();
  v8 = v7 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *(v1 + 16);
  if (v14)
  {
    v25 = MEMORY[0x277D84F90];
    sub_26941F75C(0, v14, 0);
    v15 = v25;
    OUTLINED_FUNCTION_93();
    v17 = v1 + v16;
    v22 = *(v4 + 72);
    v23 = v18;
    do
    {
      v23(v8, v17, v2);
      swift_dynamicCast();
      v25 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26941F75C((v19 > 1), v20 + 1, 1);
        v15 = v25;
      }

      *(v15 + 16) = v20 + 1;
      OUTLINED_FUNCTION_93();
      sub_2693D03F8(v13, v15 + v21 + *(v10 + 72) * v20);
      v17 += v22;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_26941D124(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_26941F8C4(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 32);
    do
    {
      v11 = *v4;
      v5 = *v4;
      v6 = *(&v11 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310208, &qword_2694288B8);
      swift_dynamicCast();
      v8 = *(v15 + 16);
      v7 = *(v15 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26941F8C4((v7 > 1), v8 + 1, 1);
      }

      *(v15 + 16) = v8 + 1;
      v9 = v15 + 40 * v8;
      *(v9 + 64) = v14;
      *(v9 + 32) = v12;
      *(v9 + 48) = v13;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_26941D258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = sub_269424038();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v27 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26941D124(a3);
  v14 = *(v13 + 16);
  if (!v14)
  {

    return MEMORY[0x277D84F90];
  }

  v25[1] = v13;
  v26 = v11;
  v15 = v13 + 32;
  v16 = (v11 + 32);
  v17 = MEMORY[0x277D84F90];
  do
  {
    sub_26942001C(v15, v33);
    sub_26942001C(v33, v30);
    v18 = v31;
    if (!v31)
    {
      sub_2693FD518(v33, &qword_280310208, &qword_2694288B8);
      sub_2693FD518(v30, &qword_280310208, &qword_2694288B8);
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
LABEL_11:
      sub_2693FD518(v9, &qword_28030FFF0, &unk_269428490);
      goto LABEL_12;
    }

    v19 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v20 = sub_269423FF8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
    sub_2693D5F38(v6, v18, v19, v9);
    sub_2693FD518(v6, &qword_28030F798, "JM");
    sub_2693FD518(v33, &qword_280310208, &qword_2694288B8);
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      goto LABEL_11;
    }

    v21 = *v16;
    (*v16)(v27, v9, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_26941F23C(0, *(v17 + 2) + 1, 1, v17);
    }

    v23 = *(v17 + 2);
    v22 = *(v17 + 3);
    if (v23 >= v22 >> 1)
    {
      v17 = sub_26941F23C((v22 > 1), v23 + 1, 1, v17);
    }

    *(v17 + 2) = v23 + 1;
    v21(&v17[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23], v27, v10);
LABEL_12:
    v15 += 40;
    --v14;
  }

  while (v14);

  return v17;
}

char *sub_26941D5CC(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v23 - v6;
  v8 = sub_269424038();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v25 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269413CD4();
  v12 = *(v11 + 16);
  if (!v12)
  {

    return MEMORY[0x277D84F90];
  }

  v23[1] = v11;
  v24 = v9;
  v13 = v11 + 32;
  v14 = (v9 + 32);
  v15 = MEMORY[0x277D84F90];
  do
  {
    sub_26942001C(v13, v31);
    sub_26942001C(v31, v28);
    v16 = v29;
    if (!v29)
    {
      sub_2693FD518(v31, &qword_280310208, &qword_2694288B8);
      sub_2693FD518(v28, &qword_280310208, &qword_2694288B8);
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
LABEL_11:
      sub_2693FD518(v7, &qword_28030FFF0, &unk_269428490);
      goto LABEL_12;
    }

    v17 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v18 = sub_269423FF8();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v18);
    sub_2693D5F38(v4, v16, v17, v7);
    sub_2693FD518(v4, &qword_28030F798, "JM");
    sub_2693FD518(v31, &qword_280310208, &qword_2694288B8);
    __swift_destroy_boxed_opaque_existential_1(v28);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      goto LABEL_11;
    }

    v19 = *v14;
    (*v14)(v25, v7, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_26941F23C(0, *(v15 + 2) + 1, 1, v15);
    }

    v21 = *(v15 + 2);
    v20 = *(v15 + 3);
    if (v21 >= v20 >> 1)
    {
      v15 = sub_26941F23C((v20 > 1), v21 + 1, 1, v15);
    }

    *(v15 + 2) = v21 + 1;
    v19(&v15[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21], v25, v8);
LABEL_12:
    v13 += 40;
    --v12;
  }

  while (v12);

  return v15;
}

uint64_t sub_26941D938()
{
  v0 = type metadata accessor for NLContextProvider(0);
  v1 = OUTLINED_FUNCTION_10_2(v0);
  v2 = OBJC_IVAR____TtC22SiriTranslationIntents17NLContextProvider_log;
  if (qword_28030F0B8 != -1)
  {
    OUTLINED_FUNCTION_3_13();
    swift_once();
  }

  v3 = sub_269423FC8();
  v4 = __swift_project_value_buffer(v3, qword_280314EE8);
  result = (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  qword_2803150B8 = v1;
  return result;
}

void sub_26941D9EC()
{
  OUTLINED_FUNCTION_17_3();
  v2 = v1;
  v106 = v3;
  v107 = v4;
  v101 = v5;
  v110 = sub_269424038();
  OUTLINED_FUNCTION_2();
  v108 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10();
  v111 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v112 = &v95 - v11;
  v105 = sub_2694234C8();
  OUTLINED_FUNCTION_2();
  *&v103 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v95 - v18;
  v97 = sub_269423568();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v95 - v27;
  v98 = sub_2694235B8();
  OUTLINED_FUNCTION_2();
  v96 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_5();
  v33 = v32 - v31;
  v100 = sub_2694231F8();
  OUTLINED_FUNCTION_2();
  v99 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_5();
  v102 = v37 - v36;
  v104 = v0;
  v109 = OBJC_IVAR____TtC22SiriTranslationIntents17NLContextProvider_log;
  v38 = sub_269423FA8();
  v39 = sub_269424368();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2693C9000, v38, v39, "NLContextProvider providing NL Context.", v40, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  type metadata accessor for NLContextProvider(0);
  sub_26941E398(&unk_2879F4220);
  if ((v2 & 1) == 0)
  {
    sub_2694235A8();
    sub_269423558();
    sub_26941EBD8();
    sub_26941E408();

    v41 = v19;
    v95 = v19;
    v42 = v103;
    v43 = v105;
    (*(v103 + 16))(v16, v41, v105);
    sub_269423548();
    v44 = v97;
    (*(v21 + 16))(v25, v28, v97);
    sub_269423598();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803101E8, &qword_269428898);
    v45 = v96;
    v46 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_2694256B0;
    v48 = v98;
    (*(v45 + 16))(v47 + v46, v33, v98);
    sub_269423188();
    (*(v42 + 8))(v95, v43);
    (*(v21 + 8))(v28, v44);
    (*(v45 + 8))(v33, v48);
  }

  v49 = v111;
  v50 = v107;
  if (!v107)
  {
    goto LABEL_15;
  }

  v50 = sub_26941FFC0(v107);
  if (!v50)
  {
    goto LABEL_15;
  }

  v51 = v50;
  if (!sub_269413DF4(v50))
  {

LABEL_15:
    v64 = OUTLINED_FUNCTION_26_4(v50);
    v65 = sub_269424368();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2693C9000, v64, v65, "Donating rrentities without intentResponse", v66, 2u);
      v49 = v111;
      OUTLINED_FUNCTION_6_0();
    }

    sub_26941D5CC(0xD000000000000025, 0x80000002694297C0);
    v51 = v102;
    v62 = sub_269423178();
    v63 = v110;
    goto LABEL_18;
  }

  if ((v51 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v51 + 32); ; i = MEMORY[0x26D63C060](0, v51))
    {
      v53 = i;

      v55 = OUTLINED_FUNCTION_26_4(v54);
      v56 = sub_269424368();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2693C9000, v55, v56, "Donating rrentities with intentResponse", v57, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310200, &qword_2694288B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2694256B0;
      v59 = v106;
      *(inited + 32) = v106;
      *(inited + 40) = v53;
      v60 = v53;
      v61 = v59;
      sub_26941D258(0xD000000000000025, 0x80000002694297C0, inited);
      swift_setDeallocating();
      sub_26941F644();
      v51 = v102;
      sub_269423178();

      v63 = v110;
      v49 = v111;
LABEL_18:
      v67 = OUTLINED_FUNCTION_26_4(v62);
      v68 = sub_269424368();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 134217984;
        OUTLINED_FUNCTION_11_10();
        v70 = sub_269423168();
        if (v70)
        {
          v51 = v70;
          swift_endAccess();
          v71 = *(v51 + 16);
        }

        else
        {
          swift_endAccess();
          v71 = 0;
        }

        *(v69 + 4) = v71;
        _os_log_impl(&dword_2693C9000, v67, v68, "Donating: %ld rrentities", v69, 0xCu);
        OUTLINED_FUNCTION_6_0();
        v63 = v110;
        v49 = v111;
      }

      OUTLINED_FUNCTION_11_10();
      v72 = sub_269423168();
      if (!v72)
      {
        break;
      }

      v73 = v72;
      swift_endAccess();
      v74 = 0;
      v75 = *(v73 + 16);
      v106 = (v108 + 16);
      v107 = v75;
      v76 = (v108 + 8);
      *&v77 = 136315138;
      v103 = v77;
      v105 = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        if (v107 == v74)
        {

          goto LABEL_33;
        }

        if (v74 >= *(v73 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_93();
        v78 = v73;
        v81 = v73 + v79 + *(v80 + 72) * v74;
        v82 = *(v80 + 16);
        v51 = v112;
        v82(v112, v81, v63);
        v83 = (v82)(v49, v51, v63);
        v84 = OUTLINED_FUNCTION_26_4(v83);
        v85 = sub_269424368();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v113 = v87;
          *v86 = v103;
          sub_26941F6DC();
          v88 = sub_269424668();
          v90 = v89;
          v91 = *v76;
          (*v76)(v111, v110);
          v51 = sub_2693DB6E0(v88, v90, &v113);

          *(v86 + 4) = v51;
          _os_log_impl(&dword_2693C9000, v84, v85, "%s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v87);
          v63 = v110;
          OUTLINED_FUNCTION_6_0();
          v49 = v111;
          OUTLINED_FUNCTION_6_0();
        }

        else
        {

          v91 = *v76;
          (*v76)(v49, v63);
        }

        v91(v112, v63);
        ++v74;
        v73 = v78;
      }

      __break(1u);
LABEL_35:
      ;
    }

    swift_endAccess();
LABEL_33:
    v92 = v100;
    v93 = v99;
    v94 = v102;
    (*(v99 + 16))(v101, v102, v100);
    (*(v93 + 8))(v94, v92);
    OUTLINED_FUNCTION_16_3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26941E398(uint64_t a1)
{
  sub_2694231E8();
  sub_2694231B8();
  sub_269423198();
  sub_2694231A8();

  sub_2694231D8();
  return sub_2694231C8();
}

uint64_t sub_26941E408()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803101F0, &unk_2694288A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269427450;
  *(v4 + 32) = v0;

  sub_2694236F8();
  v5 = sub_269423708();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  MEMORY[0x26D63B270](v4, v3);

  sub_2693FD518(v3, &qword_2803101F0, &unk_2694288A0);
  sub_2694235D8();
}

void sub_26941E6B0()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_24_6(v2);
  OUTLINED_FUNCTION_2();
  v36 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_8(v9, v10, v11, v12, v13, v14, v15, v16, v35);
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_25_5();
  v22 = OUTLINED_FUNCTION_13_7(v21);
  v24 = v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_5();
  v27 = v26 - v25;
  type metadata accessor for NLContextProvider(0);
  sub_26941E398(&unk_2879F40C8);
  sub_2694235A8();
  sub_269423558();
  sub_26941EC08();
  sub_26941E408();

  v28 = OUTLINED_FUNCTION_7_6();
  v29(v28);
  sub_269423548();
  v30 = OUTLINED_FUNCTION_8_7();
  v31(v30);
  sub_269423598();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803101E8, &qword_269428898);
  v32 = OUTLINED_FUNCTION_15_10();
  v33 = OUTLINED_FUNCTION_6_9(v32, xmmword_2694256B0);
  v34(v33);
  sub_269423188();
  (*(v36 + 8))();
  (*(v18 + 8))(v1, v7);
  (*(v24 + 8))(v27, v0);
  OUTLINED_FUNCTION_16_3();
}

void sub_26941E944()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_24_6(v2);
  OUTLINED_FUNCTION_2();
  v36 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_8(v9, v10, v11, v12, v13, v14, v15, v16, v35);
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_25_5();
  v22 = OUTLINED_FUNCTION_13_7(v21);
  v24 = v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_5();
  v27 = v26 - v25;
  type metadata accessor for NLContextProvider(0);
  sub_26941E398(&unk_2879F4098);
  sub_2694235A8();
  sub_269423558();
  sub_26941EBF0();
  sub_26941E408();

  v28 = OUTLINED_FUNCTION_7_6();
  v29(v28);
  sub_269423548();
  v30 = OUTLINED_FUNCTION_8_7();
  v31(v30);
  sub_269423598();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803101E8, &qword_269428898);
  v32 = OUTLINED_FUNCTION_15_10();
  v33 = OUTLINED_FUNCTION_6_9(v32, xmmword_2694256B0);
  v34(v33);
  sub_269423188();
  (*(v36 + 8))();
  (*(v18 + 8))(v1, v7);
  (*(v24 + 8))(v27, v0);
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_26941EC20()
{
  OUTLINED_FUNCTION_14_6();
  v1 = sub_2694239B8();
  OUTLINED_FUNCTION_10_2(v1);
  v2 = sub_2694239A8();
  v0();
  sub_269423828();

  return v2;
}

uint64_t sub_26941EC70()
{
  v1 = sub_269423908();
  OUTLINED_FUNCTION_10_2(v1);
  sub_2694238F8();
  OUTLINED_FUNCTION_14_6();
  v2 = sub_269423998();
  OUTLINED_FUNCTION_10_2(v2);
  sub_269423988();
  OUTLINED_FUNCTION_22_5();
  v3 = sub_269423868();
  OUTLINED_FUNCTION_10_2(v3);
  sub_269423858();
  sub_269423978();

  sub_2694238E8();

  swift_allocObject();
  sub_269423988();
  sub_269423968();

  sub_2694238D8();

  return v0;
}

uint64_t sub_26941ED74()
{
  v1 = sub_269423908();
  OUTLINED_FUNCTION_10_2(v1);
  sub_2694238F8();
  OUTLINED_FUNCTION_14_6();
  v2 = sub_269423998();
  OUTLINED_FUNCTION_10_2(v2);
  sub_269423988();
  OUTLINED_FUNCTION_22_5();
  v3 = sub_269423868();
  OUTLINED_FUNCTION_10_2(v3);
  sub_269423858();
  sub_269423978();

  sub_2694238E8();

  return v0;
}

uint64_t sub_26941EE18()
{
  v1 = sub_269423908();
  OUTLINED_FUNCTION_10_2(v1);
  sub_2694238F8();
  OUTLINED_FUNCTION_14_6();
  v2 = sub_269423998();
  OUTLINED_FUNCTION_10_2(v2);
  sub_269423988();
  OUTLINED_FUNCTION_22_5();
  sub_269423968();

  sub_2694238D8();

  return v0;
}

uint64_t sub_26941EE9C()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents17NLContextProvider_log;
  sub_269423FC8();
  OUTLINED_FUNCTION_4_5();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for NLContextProvider(uint64_t a1)
{
  result = qword_2803101D8;
  if (!qword_2803101D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26941EF94(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_5_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20_8();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_11();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310218, &qword_2694288D0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[v9] <= v13)
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }
}

void sub_26941F074(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_5_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20_8();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_11();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310228, &qword_2694288E0);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_23_6();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26941F15C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_5_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20_8();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_11();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F938, qword_269428910);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_23_6();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

void *sub_26941F23C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26941F388(v9, a2, &qword_280310210, &unk_2694288C0, MEMORY[0x277D5FEB0]);
  v11 = *(sub_269424038() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_26941F584(a4 + v12, v9, v10 + v12, MEMORY[0x277D5FEB0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26941F388(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_22_5();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26941F498(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_26941F584(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_4_5(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_21_6();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_21_6();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_26941F644()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_26941F688(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26941F6AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26941F6DC()
{
  result = qword_2803101F8;
  if (!qword_2803101F8)
  {
    sub_269424038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803101F8);
  }

  return result;
}

unint64_t sub_26941F738(unint64_t result, char a2, uint64_t a3)
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

void *sub_26941F75C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26941F920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26941F7D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26941FC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26941F7F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26941FD94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26941F8C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26941FE88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26941F920(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310238, &qword_2694288F8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26941F498(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_26941FAEC()
{
  OUTLINED_FUNCTION_17_3();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_5_12();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_20_8();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_11();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = *(v6(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v6(0);
  OUTLINED_FUNCTION_93();
  if (v10)
  {
    sub_26941F584(v8 + v23, v15, v20 + v23, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_16_3();
}

char *sub_26941FC8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310228, &qword_2694288E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26941FD94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310218, &qword_2694288D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_26941FE88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803100D8, "B/");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310208, &qword_2694288B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26941FFC0(void *a1)
{
  if (![a1 translationResultItems])
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_6();
  type metadata accessor for TranslationResultItem();
  v2 = sub_269424288();

  return v2;
}

uint64_t sub_26942001C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310208, &qword_2694288B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double OUTLINED_FUNCTION_11_10()
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_15_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 96) = &a9 - v9;

  return sub_269423568();
}

uint64_t OUTLINED_FUNCTION_24_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;

  return sub_2694234C8();
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return sub_2694235B8();
}

uint64_t OUTLINED_FUNCTION_26_4(uint64_t a1)
{

  return sub_269423FA8();
}

id TranslatePhraseIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranslatePhraseIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TranslatePhraseIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id TranslatePhraseIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TranslatePhraseIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for TranslatePhraseIntent();
  v9 = OUTLINED_FUNCTION_0_22(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id TranslatePhraseIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_269424108();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id TranslatePhraseIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_269424108();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for TranslatePhraseIntent();
  v12 = OUTLINED_FUNCTION_0_22(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id TranslatePhraseIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_12(a1, a2);

  v5 = sub_269424108();

  if (v3)
  {
    v6 = sub_269424098();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id TranslatePhraseIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_12(a1, a2);

  v5 = sub_269424108();

  if (v3)
  {
    v6 = sub_269424098();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for TranslatePhraseIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t TranslatePhraseIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2694207D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TranslatePhraseIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TranslatePhraseIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___TranslatePhraseIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2694208A0(uint64_t a1)
{
  v3 = OBJC_IVAR___TranslatePhraseIntentResponse_code;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *TranslatePhraseIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___TranslatePhraseIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id TranslatePhraseIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___TranslatePhraseIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TranslatePhraseIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id TranslatePhraseIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___TranslatePhraseIntentResponse_code) = 0;
  v13 = type metadata accessor for TranslatePhraseIntentResponse();
  v9 = OUTLINED_FUNCTION_0_22(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id TranslatePhraseIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id TranslatePhraseIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___TranslatePhraseIntentResponse_code) = 0;
  v13 = type metadata accessor for TranslatePhraseIntentResponse();
  v9 = OUTLINED_FUNCTION_0_22(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id TranslatePhraseIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_269424098();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id TranslatePhraseIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___TranslatePhraseIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_269424098();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for TranslatePhraseIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_269420D80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_269420DBC()
{
  result = qword_280310258;
  if (!qword_280310258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310258);
  }

  return result;
}

uint64_t sub_269420E10@<X0>(uint64_t *a1@<X8>)
{
  result = TranslatePhraseIntentResponse.code.getter();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t a1, uint64_t a2)
{

  return sub_269424108();
}

uint64_t sub_269420EE4()
{
  v0 = sub_269424738();
  OUTLINED_FUNCTION_1_13(v0);
  return sub_269424758();
}

uint64_t sub_269420F44(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_269424738();
  v4 = a2(a1);
  OUTLINED_FUNCTION_0_23(v4, v5, v6);

  return sub_269424758();
}

uint64_t sub_269420FA0(uint64_t a1)
{
  sub_269424738();
  MEMORY[0x26D63C2F0](a1);
  return sub_269424758();
}

uint64_t sub_269421040(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_269424188();
}

uint64_t sub_269421098(uint64_t a1, char a2)
{
  sub_269424188();
}

uint64_t sub_269421128(uint64_t a1, char a2)
{
  sub_269424188();
}

uint64_t sub_2694211A0(uint64_t a1, char a2)
{
  sub_269424188();
}

uint64_t sub_2694212F4(uint64_t a1, char a2)
{
  sub_269424738();
  sub_269424188();

  return sub_269424758();
}

uint64_t sub_269421380(uint64_t a1)
{
  v1 = sub_269424738();
  OUTLINED_FUNCTION_1_13(v1);
  return sub_269424758();
}

uint64_t sub_2694213B8(uint64_t a1, char a2)
{
  sub_269424738();
  sub_269424188();

  return sub_269424758();
}

uint64_t sub_269421478(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_269424738();
  v5 = a3(a2);
  OUTLINED_FUNCTION_0_23(v5, v6, v7);

  return sub_269424758();
}

uint64_t sub_2694214D0(uint64_t a1, uint64_t a2)
{
  sub_269424738();
  MEMORY[0x26D63C2F0](a2);
  return sub_269424758();
}

id GetSupportedLanguagesIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetSupportedLanguagesIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSupportedLanguagesIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetSupportedLanguagesIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetSupportedLanguagesIntent.init(coder:)(void *a1)
{
  SupportedLanguagesIntent = type metadata accessor for GetSupportedLanguagesIntent();
  v9 = OUTLINED_FUNCTION_0_22(SupportedLanguagesIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetSupportedLanguagesIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_269424108();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id GetSupportedLanguagesIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_269424108();
  }

  else
  {
    v5 = 0;
  }

  SupportedLanguagesIntent = type metadata accessor for GetSupportedLanguagesIntent();
  v12 = OUTLINED_FUNCTION_0_22(SupportedLanguagesIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id GetSupportedLanguagesIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_12(a1, a2);

  v5 = sub_269424108();

  if (v3)
  {
    v6 = sub_269424098();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id GetSupportedLanguagesIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_12(a1, a2);

  v5 = sub_269424108();

  if (v3)
  {
    v6 = sub_269424098();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for GetSupportedLanguagesIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t GetSupportedLanguagesIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_269421A84@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetSupportedLanguagesIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t GetSupportedLanguagesIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___GetSupportedLanguagesIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_269421B48(uint64_t a1)
{
  v3 = OBJC_IVAR___GetSupportedLanguagesIntentResponse_code;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *GetSupportedLanguagesIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetSupportedLanguagesIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetSupportedLanguagesIntentResponse.init()()
{
  *&v0[OBJC_IVAR___GetSupportedLanguagesIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSupportedLanguagesIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetSupportedLanguagesIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetSupportedLanguagesIntentResponse_code) = 0;
  SupportedLanguagesIntentResponse = type metadata accessor for GetSupportedLanguagesIntentResponse();
  v9 = OUTLINED_FUNCTION_0_22(SupportedLanguagesIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetSupportedLanguagesIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id GetSupportedLanguagesIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetSupportedLanguagesIntentResponse_code) = 0;
  SupportedLanguagesIntentResponse = type metadata accessor for GetSupportedLanguagesIntentResponse();
  v9 = OUTLINED_FUNCTION_0_22(SupportedLanguagesIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetSupportedLanguagesIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_269424098();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id GetSupportedLanguagesIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetSupportedLanguagesIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_269424098();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetSupportedLanguagesIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_269422048(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_269422084()
{
  result = qword_280310268;
  if (!qword_280310268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280310268);
  }

  return result;
}

uint64_t sub_2694220D8@<X0>(uint64_t *a1@<X8>)
{
  result = GetSupportedLanguagesIntentResponse.code.getter();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_23(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_269424188();
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1, ...)
{

  return sub_269424188();
}

id TranslationResultItem.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_14();
  if (v2)
  {
    v3 = sub_269424108();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269424108();

  if (v1)
  {
    v5 = sub_269424108();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id TranslationResultItem.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_14();
  if (v2)
  {
    v3 = sub_269424108();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269424108();

  if (v1)
  {
    v5 = sub_269424108();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for TranslationResultItem();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id TranslationResultItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TranslationResultItem.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TranslationResultItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static TranslationResultItemResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TranslationResultItemResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static TranslationResultItemResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_269422694();

    sub_269424578();
  }

  else
  {

    sub_269424698();
    sub_269422694();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_269422694();
  v2 = sub_269424278();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___TranslationResultItemResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_269422694()
{
  result = qword_280310270;
  if (!qword_280310270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280310270);
  }

  return result;
}

id static TranslationResultItemResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TranslationResultItemResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id TranslationResultItemResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_269424098();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id TranslationResultItemResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_269424098();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TranslationResultItemResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_269422AC0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_269424568();
}