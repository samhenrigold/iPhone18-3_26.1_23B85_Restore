uint64_t MapsConfiguration.EndpointConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v23 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64F0, &qword_1C96B62B0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  v24 = type metadata accessor for MapsConfiguration.EndpointConfiguration(0);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C94780D8();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = v9;
  v29 = 0;
  sub_1C947812C();
  OUTLINED_FUNCTION_21_18();
  sub_1C96A7CB4();
  *v12 = v30;
  v28 = 1;
  OUTLINED_FUNCTION_8_26();
  sub_1C947F368(v13, v14, MEMORY[0x1E6968FD0]);
  v15 = v25;
  OUTLINED_FUNCTION_21_18();
  sub_1C96A7CB4();
  (*(v23 + 32))(&v12[*(v24 + 20)], v7, v15);
  v27 = 2;
  sub_1C94784A8();
  OUTLINED_FUNCTION_21_18();
  sub_1C96A7C74();
  v26 = 4;
  OUTLINED_FUNCTION_21_18();
  v16 = sub_1C96A7C54();
  v17 = OUTLINED_FUNCTION_17_22();
  v18(v17);
  v12[*(v24 + 28)] = (v16 == 2) | v16 & 1;
  sub_1C947F8E0(v12, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1C947F944(v12);
}

unint64_t sub_1C9478080()
{
  result = qword_1EDB7EF40;
  if (!qword_1EDB7EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF40);
  }

  return result;
}

unint64_t sub_1C94780D8()
{
  result = qword_1EDB7EF50;
  if (!qword_1EDB7EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF50);
  }

  return result;
}

unint64_t sub_1C947812C()
{
  result = qword_1EDB7FBF0;
  if (!qword_1EDB7FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return sub_1C96A7EE4();
}

uint64_t OUTLINED_FUNCTION_21_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_21_10(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_21_11@<X0>(void *a1@<X8>)
{

  return a1;
}

id OUTLINED_FUNCTION_21_13()
{
  v2 = *(v0 + 2648);

  return v2;
}

uint64_t OUTLINED_FUNCTION_21_19()
{

  return type metadata accessor for UserIdentity(0);
}

uint64_t OUTLINED_FUNCTION_21_20()
{
}

uint64_t OUTLINED_FUNCTION_21_22()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_21_23(uint64_t a1)
{
  *(v1 + 152) = a1;

  return sub_1C96A5184();
}

uint64_t OUTLINED_FUNCTION_21_26()
{

  return swift_beginAccess();
}

unint64_t sub_1C94783F8(char a1)
{
  result = 0x656372756F73;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x646E694B656C6974;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C94784A8()
{
  result = qword_1EDB7EF28;
  if (!qword_1EDB7EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF28);
  }

  return result;
}

uint64_t MapsConfiguration.EndpointConfiguration.TileColorFormat.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C96A7BE4();

  *a3 = v4 != 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t a1)
{

  return sub_1C96A53C4();
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (v11 + v12[7]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v11 + v12[8]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v11 + v12[9]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v11 + v12[10]);
  *v17 = 0;
  v17[1] = 0;
}

void OUTLINED_FUNCTION_17_11(uint64_t a1, double a2, double a3)
{

  sub_1C95447DC(a1, 0xE90000000000006DLL, v4, v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_17_16()
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_34_1(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_17_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_17_23(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_26(unint64_t *a1)
{

  return sub_1C95F5C14(a1, &protocol conformance descriptor for SyncedData);
}

uint64_t OUTLINED_FUNCTION_17_34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_17_35(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 514;
  *(a1 + 10) = 2;
}

uint64_t OUTLINED_FUNCTION_17_39(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_17_40(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7DE4();
}

unint64_t sub_1C94788F4()
{
  result = qword_1EDB7EE38;
  if (!qword_1EDB7EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE38);
  }

  return result;
}

unint64_t sub_1C94789A8()
{
  result = qword_1EDB7EE40;
  if (!qword_1EDB7EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsConfiguration.OverlayKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9478AC8);
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

void MapsConfiguration.ZoomLevelsConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_27_11();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6508, &unk_1C96B62C8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C9478DBC();
  sub_1C96A7F44();
  if (!v0)
  {
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v12 = v11;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v14 = v13;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v16 = v15;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v18 = v17;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v20 = v19;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v22 = v21;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v24 = v23;
    v40 = 7;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v36 = v25;
    v39 = 8;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v27 = v26;
    v38 = 9;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v35 = v28;
    v37 = 10;
    OUTLINED_FUNCTION_2_46();
    v29 = sub_1C96A7C64();
    v31 = v30;
    (*(v7 + 8))(v10, v5);
    *v4 = v12;
    *(v4 + 8) = v14;
    *(v4 + 16) = v16;
    *(v4 + 24) = v18;
    *(v4 + 32) = v20;
    *(v4 + 40) = v22;
    v32 = v35;
    v33 = v36;
    *(v4 + 48) = v24;
    *(v4 + 56) = v33;
    *(v4 + 64) = v27;
    *(v4 + 72) = v32;
    *(v4 + 80) = v29;
    *(v4 + 88) = v31 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_28_11();
}

unint64_t sub_1C9478DBC()
{
  result = qword_1EDB7EF78[0];
  if (!qword_1EDB7EF78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7EF78);
  }

  return result;
}

unint64_t sub_1C9478E10(char a1)
{
  result = 0x696C617551726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0x74617265706D6574;
      break;
    case 10:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9478FAC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_55_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6A68, &qword_1C96BA168);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C947904C()
{
  result = qword_1EDB7DB78;
  if (!qword_1EDB7DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB78);
  }

  return result;
}

uint64_t sub_1C94790AC(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_1C94790E0()
{
  result = qword_1EDB7E840;
  if (!qword_1EDB7E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E840);
  }

  return result;
}

unint64_t sub_1C9479168(char a1)
{
  result = 0x797274655278616DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      OUTLINED_FUNCTION_26_4();
      result = v4 - 2;
      break;
    case 3:
      OUTLINED_FUNCTION_26_4();
      result = v5 + 27;
      break;
    case 4:
      OUTLINED_FUNCTION_26_4();
      result = v3 + 15;
      break;
    case 5:
      return result;
    case 6:
      OUTLINED_FUNCTION_26_4();
      result = v7 + 2;
      break;
    case 7:
      OUTLINED_FUNCTION_26_4();
      result = v6 + 5;
      break;
    case 8:
      OUTLINED_FUNCTION_26_4();
      result = v8 + 3;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x1C94793A8);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C94793D0()
{
  result = qword_1EDB7EDD0;
  if (!qword_1EDB7EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDD0);
  }

  return result;
}

uint64_t NewsConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6308, &qword_1C96B51E0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9480D44();
  sub_1C96A7F44();
  if (!v2)
  {
    v21 = 0;
    sub_1C96A7C24();
    v11 = v22;
    v19 = 1;
    sub_1C9480F04();
    sub_1C96A7C24();
    v12 = v20;
    v17 = 2;
    sub_1C947978C();
    sub_1C96A7C24();
    (*(v7 + 8))(v10, v5);
    v13 = v18;
    if (v12 == 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    *a2 = (v11 == 2) | v11 & 1;
    a2[1] = v14;
    a2[2] = (v13 == 2) | v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9479620()
{
  result = qword_1EDB7EE10;
  if (!qword_1EDB7EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE10);
  }

  return result;
}

unint64_t sub_1C9479674()
{
  result = qword_1EDB7EE18;
  if (!qword_1EDB7EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE18);
  }

  return result;
}

unint64_t sub_1C94796DC()
{
  result = qword_1EDB7EDE8;
  if (!qword_1EDB7EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDE8);
  }

  return result;
}

WeatherCore::NewsConfiguration::TrendingPlacement_optional __swiftcall NewsConfiguration.TrendingPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C947978C()
{
  result = qword_1EDB7EDF8;
  if (!qword_1EDB7EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDF8);
  }

  return result;
}

unint64_t sub_1C94797E0()
{
  result = qword_1EDB7EE00;
  if (!qword_1EDB7EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NewsConfiguration.SeverePlacement(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947990CLL);
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

void NotificationsConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_7_8();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4FB8, &qword_1C96AC0C0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C9481230();
  sub_1C96A7F44();
  if (!v0)
  {
    LOBYTE(v52) = 0;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v11 = v58;
    LODWORD(v39) = v59;
    LOBYTE(v52) = 1;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v12 = v56;
    v37 = v57;
    LOBYTE(v52) = 2;
    OUTLINED_FUNCTION_0_11();
    v13 = sub_1C96A7C24();
    v14 = v54;
    v36 = v55;
    LOBYTE(v51[0]) = 3;
    v38 = v7;
    v15 = OUTLINED_FUNCTION_9_7(v13, v51);
    v35 = v52;
    v34 = v53;
    LOBYTE(v49) = 4;
    OUTLINED_FUNCTION_9_7(v15, &v49);
    v32 = v51[0];
    v31 = v51[1];
    v47 = 5;
    sub_1C96A7C24();
    v33 = v49;
    v30[7] = v50;
    v45 = 6;
    sub_1C96A7C24();
    v30[6] = v48;
    v43 = 7;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v30[5] = v46;
    LOBYTE(v41) = 8;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v30[4] = v44;
    v40 = 9;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v16 = v41;
    v30[3] = v42;
    OUTLINED_FUNCTION_5_11();
    if (!v17)
    {
      v11 = 900.0;
    }

    OUTLINED_FUNCTION_5_11();
    if (!v17)
    {
      v12 = v18;
    }

    OUTLINED_FUNCTION_5_11();
    if (!v17)
    {
      v14 = 2700.0;
    }

    v19 = 0x80000001C96CC960;
    if (v34)
    {
      v20 = v35;
    }

    else
    {
      v20 = 0xD000000000000022;
    }

    if (v34)
    {
      v19 = v34;
    }

    v39 = v19;
    v21 = sub_1C9479EAC(v32, v31);
    v23 = v22;

    (*(v38 + 8))(v10, v5);
    OUTLINED_FUNCTION_5_11();
    OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_6_8();
    *v4 = v11;
    *(v4 + 8) = v12;
    OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_6_8();
    if (v17)
    {
      v27 = v16;
    }

    *(v4 + 16) = v14;
    v29 = v39;
    *(v4 + 24) = v20;
    *(v4 + 32) = v29;
    *(v4 + 40) = v21;
    *(v4 + 48) = v23;
    *(v4 + 56) = v24;
    *(v4 + 64) = v25;
    *(v4 + 72) = v28;
    *(v4 + 80) = v26;
    *(v4 + 88) = v27;
    *(v4 + 96) = xmmword_1C96AC0B0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_8_9();
}

_BYTE *storeEnumTagSinglePayload for NotificationsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x1C9479E84);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9479EAC(unint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1C96A4EE4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      swift_once();
    }

    sub_1C96A4EB4();

    if (v4)
    {
      a1 = 0xD000000000000068;
    }

    else
    {
      a1 = 0;
    }
  }

  sub_1C96A53C4();
  return a1;
}

uint64_t sub_1C9479F7C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1C9479FEC()
{
  result = qword_1EDB7D5C0;
  if (!qword_1EDB7D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5C0);
  }

  return result;
}

uint64_t PredictedLocationsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C30, &qword_1C96B2640);
  OUTLINED_FUNCTION_1();
  v99 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9481524();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v95) = 0;
    OUTLINED_FUNCTION_0_46();
    v63 = 0;
    sub_1C96A7C24();
    v62 = v97;
    v61 = v98;
    LOBYTE(v93) = 1;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v60 = v95;
    v59 = v96;
    LOBYTE(v91) = 2;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v58 = v93;
    v57 = v94;
    LOBYTE(v89) = 3;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v56 = v91;
    v55 = v92;
    LOBYTE(v87) = 4;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v54 = v89;
    v53 = v90;
    LOBYTE(v85) = 5;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v52 = v87;
    v51 = v88;
    LOBYTE(v83) = 6;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v50 = v85;
    v49 = v86;
    LOBYTE(v81) = 7;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v48 = v83;
    v47 = v84;
    LOBYTE(v79) = 8;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v10 = v81;
    v46 = v82;
    LOBYTE(v77) = 9;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v11 = v79;
    v45 = v80;
    LOBYTE(v75) = 10;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v12 = v77;
    v44 = v78;
    LOBYTE(v73) = 11;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v13 = v75;
    v43 = v76;
    LOBYTE(v71) = 12;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v14 = v73;
    v42 = v74;
    LOBYTE(v69) = 13;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v15 = v71;
    v41 = v72;
    LOBYTE(v67) = 14;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v16 = v69;
    v40 = v70;
    LOBYTE(v65) = 15;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v17 = v67;
    v18 = v68;
    v64 = 16;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    (*(v99 + 8))(v9, v5);
    v19 = v65;
    v20 = v66;
    v21 = 0x408C200000000000;
    v22 = v62;
    if (v61)
    {
      v22 = 900.0;
    }

    if (!v59)
    {
      v21 = v60;
    }

    v23 = v58;
    if (v57)
    {
      v23 = 0.0;
    }

    v24 = 129600.0;
    v25 = v56;
    if (v55)
    {
      v25 = 129600.0;
    }

    v26 = v54;
    if (v53)
    {
      v26 = 21600.0;
    }

    v27 = v52;
    if (v51)
    {
      v27 = 8000.0;
    }

    v28 = v50;
    if (v49)
    {
      v28 = 0.0;
    }

    v29 = v48;
    if (v47)
    {
      v29 = 0.8;
    }

    v30 = 3600.0;
    if (!v46)
    {
      v30 = v10;
    }

    if (v45)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v11;
    }

    if (!v44)
    {
      v24 = v12;
    }

    v32 = v42;
    if (v43)
    {
      v33 = 21600.0;
    }

    else
    {
      v33 = v13;
    }

    *a2 = v22;
    *(a2 + 8) = v21;
    if (v32)
    {
      v34 = 8000.0;
    }

    else
    {
      v34 = v14;
    }

    *(a2 + 16) = v23;
    *(a2 + 24) = v25;
    v35 = v40;
    if (v41)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v15;
    }

    *(a2 + 32) = v26;
    *(a2 + 40) = v27;
    if (v35)
    {
      v37 = 21600.0;
    }

    else
    {
      v37 = v16;
    }

    *(a2 + 48) = v28;
    *(a2 + 56) = v29;
    if (v18)
    {
      v38 = 0.95;
    }

    else
    {
      v38 = v17;
    }

    *(a2 + 64) = v30;
    *(a2 + 72) = v31;
    *(a2 + 80) = v24;
    *(a2 + 88) = v33;
    if (v20)
    {
      v19 = 0.8;
    }

    *(a2 + 96) = v34;
    *(a2 + 104) = v36;
    *(a2 + 112) = v37;
    *(a2 + 120) = v38;
    *(a2 + 128) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947A564()
{
  result = qword_1EDB7D5D0;
  if (!qword_1EDB7D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5D0);
  }

  return result;
}

unint64_t sub_1C947A5BC(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000037;
      break;
    case 3:
    case 8:
      result = 0xD000000000000035;
      break;
    case 4:
      result = 0xD000000000000031;
      break;
    case 5:
      result = 0xD00000000000004CLL;
      break;
    case 6:
      result = 0xD00000000000004BLL;
      break;
    case 7:
      result = 0xD00000000000003CLL;
      break;
    case 9:
      result = 0xD000000000000027;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD00000000000003BLL;
      break;
    case 13:
      result = 0xD00000000000003ALL;
      break;
    case 14:
      result = 0xD00000000000002BLL;
      break;
    case 15:
      result = 0xD00000000000003DLL;
      break;
    case 16:
      result = 0xD00000000000003FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictedLocationsConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C947A808(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
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

  *(result + 136) = v3;
  return result;
}

unint64_t sub_1C947A854()
{
  result = qword_1EDB7E818;
  if (!qword_1EDB7E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E818);
  }

  return result;
}

uint64_t PrivacyConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7978, &qword_1C96C0B00);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947ACA4();
  sub_1C96A7F44();
  if (!v2)
  {
    v38 = v7;
    LOBYTE(v49) = 0;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v37 = v51;
    LOBYTE(v47) = 1;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v36 = v50;
    LOBYTE(v45) = 2;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v35 = v48;
    LOBYTE(v43) = 3;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v11 = v45;
    v52 = v46;
    LOBYTE(v41) = 4;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v12 = v43;
    v34 = v44;
    LOBYTE(v39) = 5;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v13 = v41;
    v33 = v42;
    v55 = 6;
    sub_1C96A7C24();
    v32 = v39;
    v31 = v40;
    v54 = 7;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v14 = v55;
    v53 = 8;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v15 = 0.2;
    v16 = v54;
    v17 = 0.2;
    if ((v37 & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_1_32();
      v17 = sub_1C96A7534(v18, v19);
    }

    v20 = 0.2;
    if ((v36 & 1) == 0)
    {
      v21 = OUTLINED_FUNCTION_1_32();
      v20 = sub_1C96A7534(v21, v22);
    }

    if ((v35 & 1) == 0)
    {
      v23 = OUTLINED_FUNCTION_1_32();
      v15 = sub_1C96A7534(v23, v24);
    }

    (*(v38 + 8))(v10, v5);
    v25 = 33696000.0;
    if (!v52)
    {
      v25 = v11;
    }

    v26 = 2592000.0;
    if (v34)
    {
      v27 = 2592000.0;
    }

    else
    {
      v27 = v12;
    }

    if (!v33)
    {
      v26 = v13;
    }

    v28 = 10;
    if (!v31)
    {
      v28 = v32;
    }

    *a2 = v17;
    *(a2 + 8) = v20;
    *(a2 + 16) = v15;
    *(a2 + 24) = v25;
    *(a2 + 32) = v27;
    *(a2 + 40) = v26;
    *(a2 + 48) = v28;
    *(a2 + 56) = (v14 == 2) | v14 & 1;
    *(a2 + 57) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947ACA4()
{
  result = qword_1EDB7E838;
  if (!qword_1EDB7E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E838);
  }

  return result;
}

unint64_t sub_1C947AD14(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000026;
      break;
    case 5:
      result = 0xD00000000000002CLL;
      break;
    case 6:
      result = 0xD000000000000036;
      break;
    case 7:
      result = 0xD000000000000022;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrivacyConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x1C947AEE4);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C947AF0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C947AF60()
{
  result = qword_1EDB7D950;
  if (!qword_1EDB7D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D950);
  }

  return result;
}

uint64_t WidgetPrivacyConfiguration.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C18, &qword_1C96B23F0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948172C();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v37) = 0;
    OUTLINED_FUNCTION_0_45();
    sub_1C96A7C24();
    v30 = v39;
    LOBYTE(v35) = 1;
    OUTLINED_FUNCTION_0_45();
    sub_1C96A7C24();
    v40 = v38;
    LOBYTE(v33) = 2;
    OUTLINED_FUNCTION_0_45();
    sub_1C96A7C24();
    v29 = v36;
    LOBYTE(v31) = 3;
    OUTLINED_FUNCTION_0_45();
    sub_1C96A7C24();
    HIDWORD(v28) = v34;
    v41 = 4;
    OUTLINED_FUNCTION_0_45();
    sub_1C96A7C24();
    v11 = v32;
    if (v30)
    {
      v12 = 0.2;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_1_32();
      v12 = sub_1C96A7534(v13, v14);
    }

    v15 = v12;
    if ((v40 & 1) == 0)
    {
      v16 = OUTLINED_FUNCTION_1_32();
      v15 = sub_1C96A7534(v16, v17);
    }

    v18 = v12;
    if ((v29 & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_1_32();
      v18 = sub_1C96A7534(v19, v20);
    }

    v21 = v12;
    if ((v28 & 0x100000000) == 0)
    {
      v22 = OUTLINED_FUNCTION_1_32();
      v21 = sub_1C96A7534(v22, v23);
    }

    v24 = v12;
    if ((v11 & 1) == 0)
    {
      v25 = OUTLINED_FUNCTION_1_32();
      v24 = sub_1C96A7534(v25, v26);
    }

    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v15;
    a2[2] = v18;
    a2[3] = v21;
    a2[4] = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947B280()
{
  result = qword_1EDB7D960;
  if (!qword_1EDB7D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D960);
  }

  return result;
}

unint64_t sub_1C947B2D4()
{
  result = qword_1EDB7D968;
  if (!qword_1EDB7D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D968);
  }

  return result;
}

unint64_t sub_1C947B330(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetPrivacyConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947B4A0);
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

uint64_t sub_1C947B4C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1C947B518()
{
  result = qword_1EDB7D4B8;
  if (!qword_1EDB7D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D4B8);
  }

  return result;
}

uint64_t sub_1C947B56C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void TemperatureScaleConfiguration.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_119();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68C0, &qword_1C96B8BA8);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_6_38(v13);
  sub_1C948B51C();
  OUTLINED_FUNCTION_69_0();
  sub_1C96A7F44();
  if (!v10)
  {
    sub_1C948B570();
    sub_1C96A7C24();
    v20 = a10;
    if (a10)
    {
      if (*(a10 + 16))
      {
LABEL_8:
        (*(v18 + 8))(v11, v16);
        *v15 = v20;
        goto LABEL_9;
      }
    }

    if (qword_1EDB7D638 != -1)
    {
      OUTLINED_FUNCTION_1_45();
      swift_once();
    }

    v20 = qword_1EDB7D640;
    sub_1C96A53C4();
    goto LABEL_8;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  OUTLINED_FUNCTION_118();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return swift_unknownObjectRelease();
}

unint64_t sub_1C947B7B0()
{
  result = qword_1EDB7D660;
  if (!qword_1EDB7D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D660);
  }

  return result;
}

unint64_t sub_1C947B804()
{
  result = qword_1EDB7D668;
  if (!qword_1EDB7D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D668);
  }

  return result;
}

unint64_t sub_1C947B870()
{
  result = qword_1EDB7D5F8;
  if (!qword_1EDB7D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5F8);
  }

  return result;
}

unint64_t sub_1C947B8D8()
{
  result = qword_1EDB7D648;
  if (!qword_1EDB7D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D648);
  }

  return result;
}

unint64_t sub_1C947B92C()
{
  result = qword_1EDB7D650;
  if (!qword_1EDB7D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D650);
  }

  return result;
}

unint64_t sub_1C947B9BC()
{
  result = qword_1EDB7D608;
  if (!qword_1EDB7D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D608);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureScaleConfiguration.ColorStop.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947BAE4);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_1C947BB38()
{
  result = qword_1EDB7FF48;
  if (!qword_1EDB7FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF48);
  }

  return result;
}

unint64_t sub_1C947BB8C()
{
  result = qword_1EDB7FF50;
  if (!qword_1EDB7FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF50);
  }

  return result;
}

unint64_t sub_1C947BBF0()
{
  result = qword_1EDB7FF30;
  if (!qword_1EDB7FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF30);
  }

  return result;
}

unint64_t sub_1C947BC50()
{
  result = qword_1EDB7EBD0;
  if (!qword_1EDB7EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBD0);
  }

  return result;
}

WeatherCore::UnitConfiguration::WindSpeed_optional __swiftcall UnitConfiguration.WindSpeed.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_5_45();
  v2 = sub_1C96A7BE4();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1C947BD1C()
{
  result = qword_1EDB7FC30;
  if (!qword_1EDB7FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC30);
  }

  return result;
}

unint64_t sub_1C947BD80()
{
  result = qword_1EDB7FC50;
  if (!qword_1EDB7FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC50);
  }

  return result;
}

uint64_t sub_1C947BDD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1C947BE04()
{
  result = qword_1EDB7FBD8;
  if (!qword_1EDB7FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBD8);
  }

  return result;
}

unint64_t sub_1C947BE58()
{
  result = qword_1EDB7FBE0;
  if (!qword_1EDB7FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBE0);
  }

  return result;
}

unint64_t sub_1C947BEAC()
{
  result = qword_1EDB7FBE8;
  if (!qword_1EDB7FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBE8);
  }

  return result;
}

uint64_t WeatherMenuConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A86D8, &qword_1C96C88A0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24.i8[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947C128();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v27) = 0;
    sub_1C9490164();
    sub_1C96A7C24();
    v24 = v29;
    v25 = v30;
    v11 = v31;
    v12 = v32;
    v26 = 1;
    sub_1C948BFF4();
    sub_1C96A7C24();
    (*(v7 + 8))(v10, v5);
    v13 = v27;
    v14 = 60.0;
    if (v12)
    {
      v15 = -1;
    }

    else
    {
      v14 = v11;
      v15 = 0;
    }

    v16 = vdupq_n_s64(v15);
    v17.i64[1] = v25.i64[1];
    v18 = vbslq_s8(v16, xmmword_1C96B5080, v24);
    v19.i64[1] = 0x403E000000000000;
    v20 = vbslq_s8(v16, xmmword_1C96B5090, v25);
    v19.i64[0] = 2;
    v17.i64[0] = v27;
    v21 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v17, v19).i64[0], 0), xmmword_1C96B50A0, v28);
    *a2 = v18;
    *(a2 + 16) = v20;
    *(a2 + 32) = v14;
    *(a2 + 40) = (v13 != 2) & v13;
    if (v13 == 2)
    {
      v22 = 0;
    }

    else
    {
      v22 = HIBYTE(v13) & 1;
    }

    *(a2 + 41) = v22;
    *(a2 + 48) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947C128()
{
  result = qword_1EDB7FC28;
  if (!qword_1EDB7FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMenuConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947C248);
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

uint64_t WeatherMenuRefreshConfiguration.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5590, &qword_1C96AE620);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948BDF8();
  sub_1C96A7F44();
  if (!v2)
  {
    v29 = 0;
    OUTLINED_FUNCTION_0_25();
    sub_1C96A7C24();
    v11 = v26;
    v28 = v27;
    v29 = 1;
    OUTLINED_FUNCTION_0_25();
    sub_1C96A7C24();
    v12 = v26;
    v25 = v27;
    v29 = 2;
    OUTLINED_FUNCTION_0_25();
    sub_1C96A7C24();
    v13 = v26;
    v24 = v27;
    v29 = 3;
    OUTLINED_FUNCTION_0_25();
    sub_1C96A7C24();
    v14 = v26;
    v15 = v27;
    v29 = 4;
    OUTLINED_FUNCTION_0_25();
    sub_1C96A7C24();
    (*(v7 + 8))(v10, v5);
    v16 = v26;
    v17 = v27;
    v18 = 900.0;
    if (!v28)
    {
      v18 = v11;
    }

    v19 = 300.0;
    if (v25)
    {
      v20 = 300.0;
    }

    else
    {
      v20 = v12;
    }

    if (!v24)
    {
      v19 = v13;
    }

    v21 = 30.0;
    if (!v15)
    {
      v21 = v14;
    }

    *a2 = v18;
    a2[1] = v20;
    if (v17)
    {
      v16 = 60.0;
    }

    a2[2] = v19;
    a2[3] = v21;
    a2[4] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void *sub_1C947C4C4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A60, &qword_1C96BA160);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946DAF8();
  sub_1C96A7F44();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A48, &qword_1C96AA2F8);
    LOBYTE(v16[0]) = 31;
    OUTLINED_FUNCTION_19_21();
    sub_1C95DA0FC(v4);
    OUTLINED_FUNCTION_39_4();
    v5 = v18;
    if (!v18)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v6 = sub_1C96A7F34();
      if (qword_1EDB7CCF8 != -1)
      {
        swift_once();
      }

      v7 = sub_1C96A7B74();
      v8 = __swift_project_value_buffer(v7, qword_1EDB7CD00);
      sub_1C94FA860(v8, v6);

      if (v17)
      {
        if (OUTLINED_FUNCTION_47_2())
        {
          v5 = v19;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        sub_1C9470AFC(v16, &qword_1EC3A4A90, &qword_1C96B0AA0);
        v5 = 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A50, &unk_1C96AA300);
    LOBYTE(v16[0]) = 32;
    OUTLINED_FUNCTION_19_21();
    sub_1C95D9FF0(v9);
    OUTLINED_FUNCTION_39_4();
    if (v18)
    {
      if (v5)
      {
        a1 = v5;
      }

      else
      {
        a1 = MEMORY[0x1E69E7CC0];
      }

LABEL_27:
      v14 = OUTLINED_FUNCTION_43_9();
      v15(v14);
      return a1;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1C96A7F34();
    if (qword_1EDB7CCD0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C96A7B74();
    v13 = __swift_project_value_buffer(v12, qword_1EDB7CCD8);
    sub_1C94FA860(v13, v11);

    if (v17)
    {
      if (OUTLINED_FUNCTION_47_2())
      {
        if (v5)
        {
          a1 = v5;
        }

        else
        {
          a1 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_27;
      }
    }

    else
    {
      sub_1C9470AFC(v16, &qword_1EC3A4A90, &qword_1C96B0AA0);
    }

    if (v5)
    {
      a1 = v5;
    }

    else
    {
      a1 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_27;
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  return sub_1C9469B6C(va1, va);
}

uint64_t OUTLINED_FUNCTION_30_7@<X0>(char a1@<W8>)
{
  *v1 = a1;

  return type metadata accessor for MapsConfiguration.EndpointConfiguration(0);
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_13(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C96A7544();
}

void OUTLINED_FUNCTION_30_15(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2].n128_u64[0] = 0x404E000000000000;
  a1[2].n128_u16[4] = 0;
}

unint64_t sub_1C947C9D4()
{
  result = qword_1EDB7D910;
  if (!qword_1EDB7D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppStoreReviewConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947CAF8);
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

uint64_t sub_1C947CB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1C947CB78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C96A4764();
  OUTLINED_FUNCTION_16_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
    OUTLINED_FUNCTION_16_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[9]) = a2 + 1;
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t EndpointConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v36 - v5;
  v6 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v38 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_28();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7958, &qword_1C96C08B8);
  OUTLINED_FUNCTION_1();
  v39 = v16;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1C947D174();
  v21 = v42;
  sub_1C96A7F44();
  if (!v21)
  {
    v42 = v2;
    v36 = v11;
    v22 = v39;
    v23 = v40;
    v48 = 0;
    sub_1C946E750();
    sub_1C96A7CB4();
    v24 = v49;
    v47 = 1;
    v25 = v15;
    v26 = v6;
    sub_1C947D430(&qword_1EDB7FD78, MEMORY[0x1E6968FD0]);
    sub_1C96A7CB4();
    v46 = 2;
    v28 = v23;
    sub_1C96A7C74();
    v29 = v22;
    v45 = 3;
    sub_1C96A7CB4();
    v30 = v38;
    v44 = 4;
    v31 = v36;
    sub_1C96A7CB4();
    (*(v29 + 8))(v19, v41);
    v32 = type metadata accessor for EndpointConfiguration(0);
    v33 = v32[5];
    LODWORD(v41) = v24;
    v34 = *(v30 + 32);
    v35 = v37;
    v34(&v37[v33], v25, v26);
    sub_1C947D474(v28, &v35[v32[6]]);
    v34(&v35[v32[7]], v42, v26);
    v34(&v35[v32[8]], v31, v26);
    *v35 = v41;
    v35[v32[9]] = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v43);
}

unint64_t sub_1C947D120()
{
  result = qword_1EDB7E408;
  if (!qword_1EDB7E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E408);
  }

  return result;
}

unint64_t sub_1C947D174()
{
  result = qword_1EDB7E410;
  if (!qword_1EDB7E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E410);
  }

  return result;
}

unint64_t sub_1C947D1C8(char a1)
{
  result = 0x6D6E6F7269766E65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMenuRefreshConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1C947D324()
{
  result = qword_1EDB7EAF8;
  if (!qword_1EDB7EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EAF8);
  }

  return result;
}

WeatherCore::ContentEnvironment_optional sub_1C947D378@<W0>(Swift::String *a1@<X0>, WeatherCore::ContentEnvironment_optional *a2@<X8>)
{
  result.value = ContentEnvironment.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentEnvironment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C947D430(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C96A4764();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C947D474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C947D4F8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C96A4764();
  OUTLINED_FUNCTION_16_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
    OUTLINED_FUNCTION_16_1();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + a3[9]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a3[6];
  }

  return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
}

uint64_t FeaturesConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5618, &qword_1C96AF1D0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947D86C();
  sub_1C96A7F44();
  if (!v2)
  {
    v18 = 0;
    sub_1C96A7C24();
    v11 = v19;
    v16 = 1;
    sub_1C96A7C24();
    (*(v7 + 8))(v10, v5);
    v12 = v17;
    v13 = v17 == 2;
    *a2 = (v11 == 2) | v11 & 1;
    a2[1] = (v13 | v12) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947D7C0()
{
  result = qword_1EDB7E338;
  if (!qword_1EDB7E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E338);
  }

  return result;
}

unint64_t sub_1C947D818()
{
  result = qword_1EDB7E340;
  if (!qword_1EDB7E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E340);
  }

  return result;
}

unint64_t sub_1C947D86C()
{
  result = qword_1EDB7E348[0];
  if (!qword_1EDB7E348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7E348);
  }

  return result;
}

unint64_t sub_1C947D8C8(char a1)
{
  if (a1)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

_BYTE *storeEnumTagSinglePayload for FeaturesConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947D9CCLL);
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

uint64_t storeEnumTagSinglePayload for FeaturesConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C947DAC0);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

unint64_t sub_1C947DAE8()
{
  result = qword_1EDB7E868;
  if (!qword_1EDB7E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E868);
  }

  return result;
}

uint64_t GeocodeConfiguration.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5108, &unk_1C96AC9E0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947DE54();
  sub_1C96A7F44();
  if (!v2)
  {
    v17 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0, &qword_1C96B3F70);
    LOBYTE(v19) = 0;
    sub_1C946E8FC(&qword_1EDB7CE68, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C96A7C24();
    v11 = v22;
    LOBYTE(v19) = 2;
    sub_1C96A7C24();
    v12 = v21;
    v18 = 1;
    sub_1C96A7C24();
    v13 = 1.0;
    v14 = v19;
    v15 = v20;
    if ((v12 & 1) == 0)
    {
      v13 = sub_1C96A7534(0.0, 1.0);
    }

    if (!v11)
    {
      v11 = &unk_1F48FACF0;
    }

    (*(v17 + 8))(v10, v5);
    *a2 = v11;
    a2[1] = v13;
    *(a2 + 2) = v14;
    *(a2 + 3) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947DDA8()
{
  result = qword_1EDB7E878;
  if (!qword_1EDB7E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E878);
  }

  return result;
}

unint64_t sub_1C947DE00()
{
  result = qword_1EDB7E880;
  if (!qword_1EDB7E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E880);
  }

  return result;
}

unint64_t sub_1C947DE54()
{
  result = qword_1EDB7E888[0];
  if (!qword_1EDB7E888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7E888);
  }

  return result;
}

unint64_t sub_1C947DEB0(char a1)
{
  result = 0xD000000000000017;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000026;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeocodeConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947DFD4);
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

uint64_t getEnumTagSinglePayload for GeocodedLocationEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C947E084(uint64_t result, int a2, int a3)
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

unint64_t sub_1C947E0C4()
{
  result = qword_1EDB7D880;
  if (!qword_1EDB7D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D880);
  }

  return result;
}

uint64_t HistoricalFactsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6350, &qword_1C96B5750);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947E3B4();
  sub_1C96A7F44();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6358, &qword_1C96B5758);
    sub_1C947E408(&qword_1EDB7CDF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1C96A7C24();
    v11 = v14;
    if (!v14)
    {
      if (qword_1EDB7D890 != -1)
      {
        OUTLINED_FUNCTION_0_62();
        swift_once();
      }

      v11 = qword_1EDB7D898;
      sub_1C96A53C4();
    }

    (*(v7 + 8))(v10, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947E308()
{
  result = qword_1EDB7D8A0;
  if (!qword_1EDB7D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D8A0);
  }

  return result;
}

unint64_t sub_1C947E360()
{
  result = qword_1EDB7D8A8;
  if (!qword_1EDB7D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D8A8);
  }

  return result;
}

unint64_t sub_1C947E3B4()
{
  result = qword_1EDB7D8B0;
  if (!qword_1EDB7D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D8B0);
  }

  return result;
}

uint64_t sub_1C947E408(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6358, &qword_1C96B5758);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoricalFactsConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1C947E530);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_14()
{
}

uint64_t OUTLINED_FUNCTION_26_15()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 - 120));

  return sub_1C96A63C4();
}

uint64_t LocationsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v91 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v93 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24();
  v88 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v78[-v7];
  v94 = type metadata accessor for LocationsConfiguration(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v78[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_24();
  v86 = v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_1();
  v95 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_1();
  v87 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_1();
  v96 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_1();
  v99 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v78[-v24];
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_1();
  v97 = v27;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78[-v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A70F8, &qword_1C96BCD28);
  OUTLINED_FUNCTION_1();
  v92 = v32;
  MEMORY[0x1EEE9AC00](v33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947EF84();
  v34 = v100;
  sub_1C96A7F44();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v100 = v22;
  v82 = 0;
  v81 = a1;
  v36 = v91;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v91);
  v37 = v97;
  __swift_storeEnumTagSinglePayload(v97, 1, 1, v36);
  LOBYTE(v105) = 4;
  sub_1C96A7C24();
  v38 = v31;
  if (v108)
  {
    v39 = v25;
    sub_1C96A4754();

    sub_1C947F1BC(v30);
    sub_1C947D474(v25, v30);
    v40 = v100;
  }

  else
  {
    v40 = v100;
    v39 = v25;
  }

  LOBYTE(v105) = 5;
  v41 = sub_1C96A7C24();
  v85 = v30;
  v42 = v36;
  if (v108)
  {
    sub_1C96A4754();

    sub_1C947F1BC(v37);
    v41 = sub_1C947D474(v39, v37);
  }

  v43 = v37;
  LOBYTE(v105) = 0;
  v44 = OUTLINED_FUNCTION_5_41(v41, &v105);
  v91 = v107;
  v109 = v108;
  LOBYTE(v103) = 1;
  v45 = OUTLINED_FUNCTION_5_41(v44, &v103);
  v84 = v105;
  v83 = v106;
  LOBYTE(v101) = 2;
  OUTLINED_FUNCTION_5_41(v45, &v101);
  v46 = v38;
  v47 = v103;
  v48 = v104;
  v111 = 3;
  sub_1C96A7C24();
  v49 = v101;
  v50 = v102;
  sub_1C947F224(v85, v40);
  sub_1C947F224(v43, v99);
  v110 = 6;
  v80 = v46;
  sub_1C96A7C24();
  v79 = v111;
  v51 = 5000;
  v52 = v91;
  if (v109)
  {
    v52 = 5000;
  }

  v53 = 1600;
  if (!v83)
  {
    v53 = v84;
  }

  v54 = v98;
  *v98 = v52;
  v54[1] = v53;
  v55 = 30000;
  if (!v48)
  {
    v55 = v47;
  }

  v56 = v50 == 0;
  v57 = v54;
  if (v56)
  {
    v51 = v49;
  }

  v54[2] = v55;
  v54[3] = v51;
  v58 = v96;
  sub_1C947F224(v40, v96);
  if (__swift_getEnumTagSinglePayload(v58, 1, v42) == 1)
  {
    v59 = v87;
    OUTLINED_FUNCTION_52();
    sub_1C96A4754();
    result = OUTLINED_FUNCTION_28(v59);
    v60 = v94;
    if (v56)
    {
      __break(1u);
      goto LABEL_30;
    }

    v61 = OUTLINED_FUNCTION_8_37();
    v42(v61, v59, v42);
    v62 = v96;
    OUTLINED_FUNCTION_28(v96);
    if (!v56)
    {
      sub_1C947F1BC(v62);
    }
  }

  else
  {
    v63 = OUTLINED_FUNCTION_8_37();
    v42(v63, v58, v42);
    v60 = v94;
  }

  v42(v57 + v60[8], v40, v42);
  v64 = v99;
  v65 = v95;
  sub_1C947F224(v99, v95);
  OUTLINED_FUNCTION_28(v65);
  if (!v56)
  {
    sub_1C947F1BC(v64);
    sub_1C947F1BC(v100);
    sub_1C947F1BC(v97);
    sub_1C947F1BC(v85);
    v71 = OUTLINED_FUNCTION_12_29();
    v72(v71);
    v73 = v88;
    v42(v88, v65, v42);
    v74 = v81;
    v75 = v89;
    v76 = v42;
LABEL_28:
    v77 = v98;
    v42(v98 + v60[9], v73, v76);
    *(v77 + v60[10]) = (v79 == 2) | v79 & 1;
    sub_1C947F294(v77, v75);
    return __swift_destroy_boxed_opaque_existential_1Tm(v74);
  }

  v66 = v86;
  OUTLINED_FUNCTION_52();
  sub_1C96A4754();
  result = OUTLINED_FUNCTION_28(v66);
  v67 = v100;
  if (!v56)
  {
    sub_1C947F1BC(v99);
    sub_1C947F1BC(v67);
    sub_1C947F1BC(v97);
    sub_1C947F1BC(v85);
    v68 = OUTLINED_FUNCTION_12_29();
    v69(v68);
    v73 = v88;
    v42(v88, v66, v42);
    v70 = v95;
    OUTLINED_FUNCTION_28(v95);
    v74 = v81;
    v75 = v89;
    v76 = v42;
    if (!v56)
    {
      sub_1C947F1BC(v70);
    }

    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1C947EED8()
{
  result = qword_1EDB7E0B8;
  if (!qword_1EDB7E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0B8);
  }

  return result;
}

unint64_t sub_1C947EF30()
{
  result = qword_1EDB7E0C0;
  if (!qword_1EDB7E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0C0);
  }

  return result;
}

unint64_t sub_1C947EF84()
{
  result = qword_1EDB7E0C8;
  if (!qword_1EDB7E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0C8);
  }

  return result;
}

unint64_t sub_1C947EFF4(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000034;
      break;
    case 3:
      result = 0xD000000000000035;
      break;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
    case 6:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947F194);
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

uint64_t sub_1C947F1BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C947F224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C947F294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationsConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C947F2F8()
{
  result = qword_1EDB7EE28;
  if (!qword_1EDB7EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE28);
  }

  return result;
}

uint64_t sub_1C947F368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for MapsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947F47CLL);
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

uint64_t getEnumTagSinglePayload for MapsConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1C947F548()
{
  result = qword_1EDB7EF48;
  if (!qword_1EDB7EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsConfiguration.EndpointConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947F684);
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

unint64_t sub_1C947F70C()
{
  result = qword_1EDB7FBF8;
  if (!qword_1EDB7FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBF8);
  }

  return result;
}

WeatherCore::WeatherMapOverlayServiceSource_optional __swiftcall WeatherMapOverlayServiceSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C947F7C8()
{
  result = qword_1EDB7EF30;
  if (!qword_1EDB7EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsConfiguration.EndpointConfiguration.TileColorFormat(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1C947F8B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C947F8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsConfiguration.EndpointConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C947F944(uint64_t a1)
{
  v2 = type metadata accessor for MapsConfiguration.EndpointConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

WeatherCore::MapsConfiguration::OverlayKind_optional __swiftcall MapsConfiguration.OverlayKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C947FA08()
{
  result = qword_1EDB7EF58;
  if (!qword_1EDB7EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF58);
  }

  return result;
}

unint64_t sub_1C947FA78()
{
  result = qword_1EDB7EF68;
  if (!qword_1EDB7EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF68);
  }

  return result;
}

unint64_t sub_1C947FAD0()
{
  result = qword_1EDB7EF70;
  if (!qword_1EDB7EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsConfiguration.ZoomLevelsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947FBF8);
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

void OUTLINED_FUNCTION_28_5()
{
  v3 = *(v1 + *(v0 + 44));
}

uint64_t OUTLINED_FUNCTION_28_8(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_28_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A7D74();
}

BOOL OUTLINED_FUNCTION_28_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_28_16()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_28_17(uint64_t result)
{
  *(v1 + *(result + 44)) = 0;
  *v1 = v5;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v7;
  v1[5] = v6;
  return result;
}

uint64_t sub_1C947FDE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

uint64_t sub_1C947FE2C(uint64_t a1)
{
  v4 = type metadata accessor for MapsConfiguration.EndpointConfiguration(0);
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_15_22();
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_14();
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  if (!a1)
  {
    return 0;
  }

  v33 = v8;
  v34 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v13 = *(v36 + 72);
    v35 = 0x80000001C96CB820;
    sub_1C96A53C4();
    while (2)
    {
      sub_1C947F8E0(v12, v10);
      v14 = 0xE500000000000000;
      v15 = 0x4C45564544;
      switch(*v10)
      {
        case 1:
          goto LABEL_10;
        case 2:
          v14 = 0xE700000000000000;
          v15 = OUTLINED_FUNCTION_48_1();
          goto LABEL_10;
        case 3:
          v14 = 0xE200000000000000;
          v15 = 16721;
          goto LABEL_10;
        case 4:
          v14 = 0xEA00000000004E4FLL;
          v15 = 0x49544355444F5250;
          goto LABEL_10;
        case 5:

          sub_1C947F944(v10);
          return v34;
        case 6:
          v15 = 0x6C61636F6CLL;
          goto LABEL_10;
        default:
          v14 = v35;
          v15 = 0xD000000000000017;
LABEL_10:
          v16 = OUTLINED_FUNCTION_18_21(v15, v14);

          sub_1C947F944(v10);
          if (v16)
          {
            return v34;
          }

          v12 += v13;
          if (!--v11)
          {
            goto LABEL_15;
          }

          continue;
      }
    }
  }

  sub_1C96A53C4();
LABEL_15:
  if (qword_1EDB7EF18 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    OUTLINED_FUNCTION_108();
    swift_beginAccess();
    v18 = off_1EDB7EF20;
    v19 = *(off_1EDB7EF20 + 2);
    if (!v19)
    {
      return v34;
    }

    v30 = *(v36 + 80);
    v31 = (v30 + 32) & ~v30;
    v32 = v2;
    v20 = off_1EDB7EF20 + v31;
    v35 = 0x80000001C96CB820;
    sub_1C96A53C4();
    v21 = 0;
LABEL_18:
    if (v21 < v18[2])
    {
      break;
    }

    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_0_64();
    swift_once();
  }

  v2 = v21 + 1;
  sub_1C947F8E0(&v20[*(v36 + 72) * v21], v1);
  v22 = 0xE500000000000000;
  v23 = 0x4C45564544;
  switch(*v1)
  {
    case 1:
      goto LABEL_25;
    case 2:
      v22 = 0xE700000000000000;
      v23 = OUTLINED_FUNCTION_48_1();
      goto LABEL_25;
    case 3:
      v22 = 0xE200000000000000;
      v23 = 16721;
      goto LABEL_25;
    case 4:
      v22 = 0xEA00000000004E4FLL;
      v23 = 0x49544355444F5250;
      goto LABEL_25;
    case 5:

      goto LABEL_31;
    case 6:
      v23 = 0x6C61636F6CLL;
      goto LABEL_25;
    default:
      v22 = v35;
      v23 = 0xD000000000000017;
LABEL_25:
      v24 = OUTLINED_FUNCTION_18_21(v23, v22);

      if ((v24 & 1) == 0)
      {
        sub_1C947F944(v1);
        v21 = v2;
        if (v19 == v2)
        {

          return v34;
        }

        goto LABEL_18;
      }

LABEL_31:
      v25 = v33;

      sub_1C95B25DC(v1, v25);
      v26 = v32;
      sub_1C95B25DC(v25, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CD0, &unk_1C96B6B60);
      v27 = v31;
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1C96AA1C0;
      sub_1C947F8E0(v26, v28 + v27);
      v37 = v34;
      sub_1C9648EB0(v28);
      sub_1C947F944(v26);
      return v37;
  }
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return swift_slowAlloc();
}

uint64_t sub_1C9480308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C9480370()
{
  result = qword_1EDB7DB68;
  if (!qword_1EDB7DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB68);
  }

  return result;
}

uint64_t NamedNetworkConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A98, &qword_1C96AA4A0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948067C();
  sub_1C96A7F44();
  if (!v2)
  {
    v39 = v7;
    LOBYTE(v40) = 0;
    sub_1C96A7C24();
    v11 = v50;
    v12 = v51;
    v52[0] = 1;
    sub_1C94790E0();
    sub_1C96A7C24();
    v13 = v41;
    if (v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v38 = v14;
    v15 = 0xE000000000000000;
    if (v12)
    {
      v15 = v12;
    }

    v36 = v15;
    v16 = v5;
    if (v41)
    {
      v37 = v49;
      v34 = v48;
      v35 = v46;
      v32 = v41;
      v33 = v45;
      v17 = v40;
      v18 = v47;
      v19 = v44;
      v13 = v43;
      v20 = v42;
    }

    else
    {
      v17 = 0;
      v20 = 0;
      v35 = 0;
      v37 = &unk_1F48FA9C0;
      v32 = MEMORY[0x1E69E7CC0];
      v33 = 1;
      v18 = 1;
      v34 = MEMORY[0x1E69E7CC0];
      v19 = 1;
    }

    v21 = v17 & 1;
    v22 = v20 & 1;
    v23 = v13 & 1;
    v24 = v19 & 1;
    v25 = v18 & 1;
    v52[0] = v18 & 1;
    (*(v39 + 8))(v10, v16);
    v26 = v36;
    *a2 = v38;
    *(a2 + 8) = v26;
    *(a2 + 16) = v21;
    v27 = v33;
    *(a2 + 24) = v32;
    *(a2 + 32) = v22;
    *(a2 + 33) = v23;
    *(a2 + 34) = v24;
    v29 = v34;
    v28 = v35;
    *(a2 + 40) = v27;
    *(a2 + 48) = v28;
    *(a2 + 56) = v25;
    v30 = v37;
    *(a2 + 64) = v29;
    *(a2 + 72) = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9480628()
{
  result = qword_1EDB7DB80;
  if (!qword_1EDB7DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB80);
  }

  return result;
}

unint64_t sub_1C948067C()
{
  result = qword_1EDB7DB88;
  if (!qword_1EDB7DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NamedNetworkConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C948079CLL);
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

uint64_t NetworkConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57A8, &qword_1C96B03A0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9480BF0();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v38) = 0;
    v32 = v7;
    OUTLINED_FUNCTION_1_25();
    v33 = 0;
    sub_1C96A7C24();
    v31 = v41[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57B0, &qword_1C96B03A8);
    LOBYTE(v38) = 1;
    v11 = sub_1C95548AC(&qword_1EDB7CE58, MEMORY[0x1E69E63E8], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_8_15(v11, &v38);
    v30 = v40;
    LOBYTE(v38) = 2;
    OUTLINED_FUNCTION_1_25();
    sub_1C96A7C24();
    v29 = v41[6];
    LOBYTE(v38) = 3;
    OUTLINED_FUNCTION_1_25();
    sub_1C96A7C24();
    v28 = v41[5];
    LOBYTE(v38) = 4;
    OUTLINED_FUNCTION_1_25();
    sub_1C96A7C24();
    v27 = v41[4];
    LOBYTE(v36) = 5;
    sub_1C96A7C24();
    v25 = v38;
    v24 = v39;
    LOBYTE(v35) = 6;
    v12 = sub_1C96A7C24();
    v26 = v36;
    v23 = v37;
    LOBYTE(v34) = 7;
    v13 = OUTLINED_FUNCTION_8_15(v12, &v34);
    v14 = v35;
    v41[0] = 8;
    OUTLINED_FUNCTION_8_15(v13, v41);
    v31 &= 1u;
    v15 = v30;
    if (!v30)
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v30 = v15;
    v16 = v29 & 1;
    v29 = v28 & 1;
    v17 = (v27 == 2) | v27 & 1;
    if (v24)
    {
      v18 = 1;
    }

    else
    {
      v18 = v25;
    }

    v41[0] = v23;
    if (!v14)
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    if (v34)
    {
      v19 = v34;
    }

    else
    {
      v19 = &unk_1F48FB2B0;
    }

    (*(v32 + 8))(v10, v5);
    v20 = v41[0];
    *a2 = v31;
    *(a2 + 8) = v30;
    *(a2 + 16) = v16;
    *(a2 + 17) = v29;
    *(a2 + 18) = v17;
    v21 = v26;
    *(a2 + 24) = v18;
    *(a2 + 32) = v21;
    *(a2 + 40) = v20;
    *(a2 + 48) = v14;
    *(a2 + 56) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9480B44()
{
  result = qword_1EDB7E850;
  if (!qword_1EDB7E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E850);
  }

  return result;
}

unint64_t sub_1C9480B9C()
{
  result = qword_1EDB7E858;
  if (!qword_1EDB7E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E858);
  }

  return result;
}

unint64_t sub_1C9480BF0()
{
  result = qword_1EDB7E860;
  if (!qword_1EDB7E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E860);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C9480CCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C9480D44()
{
  result = qword_1EDB7EE20;
  if (!qword_1EDB7EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE20);
  }

  return result;
}

uint64_t sub_1C9480DA0(char a1)
{
  if (!a1)
  {
    return 0x64656C62616E65;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6C50657265766573;
}

_BYTE *sub_1C9480E08(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9480ED4);
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

unint64_t sub_1C9480F04()
{
  result = qword_1EDB7EDE0;
  if (!qword_1EDB7EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDE0);
  }

  return result;
}

WeatherCore::NewsConfiguration::SeverePlacement_optional __swiftcall NewsConfiguration.SeverePlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t storeEnumTagSinglePayload for NewsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1C9481108()
{
  result = qword_1EDB7D978;
  if (!qword_1EDB7D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D978);
  }

  return result;
}

unint64_t sub_1C9481188()
{
  result = qword_1EDB7D988;
  if (!qword_1EDB7D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D988);
  }

  return result;
}

unint64_t sub_1C94811DC()
{
  result = qword_1EDB7D990;
  if (!qword_1EDB7D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D990);
  }

  return result;
}

unint64_t sub_1C9481230()
{
  result = qword_1EDB7D998[0];
  if (!qword_1EDB7D998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7D998);
  }

  return result;
}

unint64_t sub_1C9481284(char a1)
{
  result = 0x726F4D6E7261656CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      return result;
    case 4:
      OUTLINED_FUNCTION_10_6();
      result = v4 + 6;
      break;
    case 5:
      OUTLINED_FUNCTION_10_6();
      result = v7 + 4;
      break;
    case 6:
      OUTLINED_FUNCTION_10_6();
      result = v8 + 15;
      break;
    case 7:
      OUTLINED_FUNCTION_10_6();
      result = v6 + 17;
      break;
    case 8:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      OUTLINED_FUNCTION_10_6();
      result = v5 + 25;
      break;
    default:
      OUTLINED_FUNCTION_10_6();
      result = v3 + 5;
      break;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationNotificationContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C94814D0()
{
  result = qword_1EDB7D5D8;
  if (!qword_1EDB7D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5D8);
  }

  return result;
}

unint64_t sub_1C9481524()
{
  result = qword_1EDB7D5E0;
  if (!qword_1EDB7D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
        JUMPOUT(0x1C9481650);
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C948167C()
{
  result = qword_1EDB7E828;
  if (!qword_1EDB7E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E828);
  }

  return result;
}

unint64_t sub_1C94816D4()
{
  result = qword_1EDB7E830;
  if (!qword_1EDB7E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E830);
  }

  return result;
}

unint64_t sub_1C948172C()
{
  result = qword_1EDB7D970;
  if (!qword_1EDB7D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D970);
  }

  return result;
}

unint64_t sub_1C9481780()
{
  result = qword_1EDB7D4B0;
  if (!qword_1EDB7D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D4B0);
  }

  return result;
}

unint64_t sub_1C94817D4()
{
  result = qword_1EDB7D4C0;
  if (!qword_1EDB7D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D4C0);
  }

  return result;
}

unint64_t sub_1C9481830(char a1)
{
  if (!a1)
  {
    return 0xD000000000000016;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000021;
}

_BYTE *storeEnumTagSinglePayload for ProviderAttributionConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9481950);
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

unint64_t sub_1C9481978()
{
  result = qword_1EDB7D5E8;
  if (!qword_1EDB7D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5E8);
  }

  return result;
}

_BYTE *sub_1C94819D4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1C9481A70);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9481A9C()
{
  result = qword_1EDB7D658;
  if (!qword_1EDB7D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D658);
  }

  return result;
}

uint64_t sub_1C9481AFC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A68B0, &qword_1C96B8B98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9481B7C()
{
  result = qword_1EDB7FF28;
  if (!qword_1EDB7FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF28);
  }

  return result;
}

unint64_t sub_1C9481C44()
{
  result = qword_1EDB7FF38;
  if (!qword_1EDB7FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF38);
  }

  return result;
}

unint64_t sub_1C9481C9C()
{
  result = qword_1EDB7FBC8;
  if (!qword_1EDB7FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBC8);
  }

  return result;
}

uint64_t WeatherDataServiceConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A87A8, &qword_1C96C8EF0);
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947BEAC();
  sub_1C96A7F44();
  if (!v2)
  {
    sub_1C96A7C24();
    if (v15)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    if (v15)
    {
      v12 = v15;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

_BYTE *storeEnumTagSinglePayload for WeatherDataServiceConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1C9481F08);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9481F48(char a1)
{
  if (a1)
  {
    return 0x636974796C616E61;
  }

  else
  {
    return 0x68736572666572;
  }
}

unint64_t sub_1C9481FA0()
{
  result = qword_1EDB7FBB8;
  if (!qword_1EDB7FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBB8);
  }

  return result;
}

unint64_t sub_1C948201C()
{
  result = qword_1EDB7FB90;
  if (!qword_1EDB7FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FB90);
  }

  return result;
}

unint64_t sub_1C9482070()
{
  result = qword_1EDB7FB98;
  if (!qword_1EDB7FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FB98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMenuAnalyticsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C94821ACLL);
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

uint64_t sub_1C94821D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C9482228()
{
  result = qword_1EDB7E990;
  if (!qword_1EDB7E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E990);
  }

  return result;
}

unint64_t sub_1C9482294()
{
  result = qword_1EDB7E9A8;
  if (!qword_1EDB7E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E9A8);
  }

  return result;
}

uint64_t sub_1C94822F0(char a1)
{
  if (!a1)
  {
    return 0x68736572666572;
  }

  if (a1 == 1)
  {
    return 0xD000000000000025;
  }

  return 0xD000000000000020;
}

uint64_t WidgetRefreshConfiguration.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57E8, &qword_1C96B0720);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948C798();
  sub_1C96A7F44();
  if (!v2)
  {
    v40 = 0;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v11 = v39;
    v38 = v7;
    v40 = 1;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v13 = OUTLINED_FUNCTION_2_26();
    if (v14)
    {
      v15 = v11;
    }

    else
    {
      v15 = 1800.0;
    }

    v37 = v15;
    if (v12)
    {
      v13 = 2700.0;
    }

    v36 = v13;
    v40 = 2;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v16 = v39;
    v40 = 3;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v18 = OUTLINED_FUNCTION_2_26();
    if (v14)
    {
      v19 = v16;
    }

    else
    {
      v19 = 1800.0;
    }

    v35 = v19;
    if (v17)
    {
      v20 = 2700.0;
    }

    else
    {
      v20 = v18;
    }

    v40 = 4;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v21 = v39;
    v40 = 5;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v23 = OUTLINED_FUNCTION_2_26();
    if (!v14)
    {
      v21 = 1800.0;
    }

    if (v22)
    {
      v24 = 2700.0;
    }

    else
    {
      v24 = v23;
    }

    v40 = 6;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v25 = v39;
    v40 = 7;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v27 = OUTLINED_FUNCTION_2_26();
    if (!v14)
    {
      v25 = 1800.0;
    }

    if (v26)
    {
      v28 = 2700.0;
    }

    else
    {
      v28 = v27;
    }

    v40 = 8;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v29 = v39;
    v40 = 9;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    (*(v38 + 8))(v10, v5);
    v31 = OUTLINED_FUNCTION_2_26();
    if (v14)
    {
      v32 = v29;
    }

    else
    {
      v32 = 1800.0;
    }

    if (v30)
    {
      v31 = 2700.0;
    }

    v33 = v36;
    *a2 = v37;
    a2[1] = v33;
    a2[2] = v35;
    a2[3] = v20;
    a2[4] = v21;
    a2[5] = v24;
    a2[6] = v25;
    a2[7] = v28;
    a2[8] = v32;
    a2[9] = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9482630(char a1)
{
  result = 0x694D657265766573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      return result;
    case 5:
      result = 0x614D657265766573;
      break;
    case 6:
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x1C948282CLL);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9482868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C96A4764();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C9482928(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_58();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return a2;
}

uint64_t sub_1C9482980(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C94829E0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id OUTLINED_FUNCTION_35_8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_35_9()
{
}

uint64_t OUTLINED_FUNCTION_24_1(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_24_6(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return sub_1C949A950(v0, type metadata accessor for LocationModel);
}

id OUTLINED_FUNCTION_24_8()
{
  v2 = *(v0 + 2648);

  return v2;
}

uint64_t OUTLINED_FUNCTION_24_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_24_14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E6995330];

  return sub_1C9469CB4(a1, a2, a3, v4);
}

__n128 *OUTLINED_FUNCTION_24_16(uint64_t a1)
{

  return sub_1C950B354();
}

uint64_t OUTLINED_FUNCTION_24_19()
{
}

uint64_t OUTLINED_FUNCTION_24_20()
{

  return sub_1C96A4A54();
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_42_4(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return sub_1C96A7924();
}

__n128 OUTLINED_FUNCTION_42_7@<Q0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  result = *v3;
  v5 = *(v3 + 16);
  *v1 = *v3;
  v1[1] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A6344();
}

__n128 OUTLINED_FUNCTION_42_11@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  *(v2 - 96) = result;
  return result;
}

uint64_t sub_1C9482E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C9470A40(a1, &v5 - v3, &unk_1EC3A5430, &unk_1C96AAB30);
  sub_1C96A3D04();
  sub_1C96A55E4();

  return sub_1C9470AFC(a1, &unk_1EC3A5430, &unk_1C96AAB30);
}

uint64_t sub_1C9482EF0(uint64_t a1, char a2)
{
  sub_1C96A3D04();
  sub_1C96A55E4();
}

uint64_t sub_1C9482F3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1C9482F94()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB7CFF8);
  OUTLINED_FUNCTION_2_19();
  return OUTLINED_FUNCTION_7_39();
}

uint64_t sub_1C9482FEC()
{
  v0 = sub_1C96A5154();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D63C8], v0, v2);
  v5 = sub_1C94830F4(v4);
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    return sub_1C9483720();
  }

  sub_1C965C21C();
}

BOOL sub_1C94830F4(uint64_t a1)
{
  v2 = sub_1C96A5154();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D63C8], v2, v4);
  v7 = sub_1C96A5144();
  (*(v3 + 8))(v6, v2);
  result = 0;
  if (v7)
  {
    v8 = (v1 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore);
    v9 = *(v1 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore + 24);
    v10 = *(v1 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore), v9);
    if ((*(v10 + 8))(v9, v10))
    {
      v11 = v8[3];
      v12 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v11);
      if (((*(v12 + 16))(v11, v12) & 1) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL AppConfigurationStore.isCached.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  sub_1C948334C();
  v4 = sub_1C96A4A54();
  v5 = __swift_getEnumTagSinglePayload(v3, 1, v4) != 1;
  sub_1C9470AFC(v3, &unk_1EC3A5430, &unk_1C96AAB30);
  return v5;
}

uint64_t sub_1C948334C()
{
  sub_1C96A3D04();
  sub_1C96A55D4();
}

BOOL AppConfigurationStore.isExpired.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62E0, &unk_1C96B50C8);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v33 - v2;
  v4 = type metadata accessor for AppConfiguration(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  sub_1C948334C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C9470AFC(v11, &unk_1EC3A5430, &unk_1C96AAB30);
  }

  else
  {
    (*(v14 + 32))(v21, v11, v12);
    *&v22 = COERCE_DOUBLE(sub_1C94836D8());
    if ((v23 & 1) == 0)
    {
      v29 = *&v22;
      sub_1C96A5954();
      sub_1C96A5944();
      sub_1C96A4964();
      v31 = v30;
      v32 = *(v14 + 8);
      v32(v18, v12);
      v32(v21, v12);
      return v31 >= v29;
    }

    (*(v14 + 8))(v21, v12);
  }

  AppConfigurationStore.read()(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1C9470AFC(v3, &qword_1EC3A62E0, &unk_1C96B50C8);
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_2_44();
    sub_1C948CDA4(v3, v7, v25);
    sub_1C96A5954();
    sub_1C96A5944();
    sub_1C96A4964();
    v27 = v26;
    (*(v14 + 8))(v18, v12);
    v28 = *&v7[*(v4 + 20)];
    sub_1C9484108(v7);
    return v28 <= v27;
  }
}

uint64_t sub_1C94836D8()
{
  sub_1C96A3D04();
  sub_1C96A55D4();

  return v1;
}

uint64_t sub_1C9483720()
{
  v0 = sub_1C96A6564();
  v57 = *(v0 - 8);
  v58 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v55 = v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1C96A65E4();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C96A6554();
  v52 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v51 = (v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v62 = (v48 - v5);
  v64 = sub_1C96A6604();
  v49 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v50 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = v48 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v60 = v48 - v10;
  v11 = type metadata accessor for AppConfiguration(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C96A77A4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1C946B5D0(0, &qword_1EDB7CDA0, 0x1E69E9630);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C946F950(&qword_1EDB7CDA8, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7BA0, &qword_1C96C3658);
  sub_1C9469C60(&unk_1EDB7CE40, &qword_1EC3A7BA0, &qword_1C96C3658);
  sub_1C96A79E4();
  v48[1] = sub_1C96A77B4();
  (*(v16 + 8))(v18, v15);
  AppConfigurationManager.appConfiguration.getter(v14);
  v19 = *&v14[*(v12 + 28)];
  v20 = v19;
  sub_1C9484108(v14);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v19 < 9.22337204e18)
  {
    v21 = v59;
    sub_1C96A65F4();
    v23 = v62;
    v22 = v63;
    *v62 = v19;
    v24 = v52;
    (*(v52 + 104))(v23, *MEMORY[0x1E69E7F48], v22);
    v20 = *&v60;
    MEMORY[0x1CCA8C000](v21, v23);
    v14 = *(v24 + 8);
    (v14)(v23, v22);
    v12 = v49;
    v15 = v64;
    v61 = *(v49 + 8);
    v61(v21, v64);
    if (qword_1EDB7CFF0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  swift_once();
LABEL_5:
  v25 = sub_1C96A6154();
  __swift_project_value_buffer(v25, qword_1EDB7CFF8);
  v26 = *(v12 + 16);
  v27 = v50;
  v26(v50, *&v20, v15);
  v28 = sub_1C96A6134();
  v29 = sub_1C96A76A4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136446210;
    v26(v59, v27, v64);
    v32 = sub_1C96A70A4();
    v34 = v33;
    v61(v27, v64);
    v35 = sub_1C9484164(v32, v34, aBlock);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_1C945E000, v28, v29, "Queueing up the next app config update: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v36 = v31;
    v20 = *&v60;
    MEMORY[0x1CCA8E3D0](v36, -1, -1);
    v37 = v30;
    v15 = v64;
    MEMORY[0x1CCA8E3D0](v37, -1, -1);
  }

  else
  {

    v61(v27, v15);
  }

  ObjectType = swift_getObjectType();
  v39 = v62;
  sub_1C9484384(v62);
  v40 = v51;
  sub_1C94843F8(v51);
  MEMORY[0x1CCA8D210](*&v20, v39, v40, ObjectType);
  v41 = v63;
  (v14)(v40, v63);
  (v14)(v39, v41);
  v42 = v20;
  v43 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1C965E724;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_20;
  v44 = _Block_copy(aBlock);
  sub_1C96A3D04();
  v45 = v53;
  sub_1C96A6594();
  v46 = v55;
  sub_1C9484470();
  sub_1C96A77C4();
  _Block_release(v44);
  (*(v57 + 8))(v46, v58);
  (*(v54 + 8))(v45, v56);

  sub_1C96A77D4();
  swift_unknownObjectRelease();
  return (v61)(*&v42, v15);
}

uint64_t sub_1C9483FFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t AppConfigurationManager.appConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C96A50E4();
  v3 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfig;
  swift_beginAccess();
  sub_1C94840A4(v1 + v3, a1);
  return sub_1C96A50F4();
}

uint64_t sub_1C94840A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9484108(uint64_t a1)
{
  v2 = type metadata accessor for AppConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C9484164(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1C96A53C4();
  v6 = sub_1C9484228(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1C9484328(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1C9484228(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C94AF094(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1C96A7AF4();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C9484328(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C9484384@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1C96A6554();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C94843F8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1C96A6554();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C9484470()
{
  sub_1C96A6564();
  sub_1C946F950(&qword_1EDB7CF40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
  return sub_1C96A79E4();
}

uint64_t sub_1C9484590(uint64_t a1)
{
  result = type metadata accessor for AppConfiguration(0);
  v3 = *(a1 + *(result + 68) + 137);
  if (v3 != 2)
  {
    if (qword_1EDB79EA8 != -1)
    {
      result = OUTLINED_FUNCTION_0_26(&qword_1EDB79EA8);
    }

    MEMORY[0x1EEE9AC00](result);
    OUTLINED_FUNCTION_1_21();
    *(v4 - 8) = v3 & 1;
    sub_1C96A5134();
    sub_1C96A3D04();
    sub_1C96A5554();
  }

  return result;
}

void *NanoPreferencesSynchronizer.init(domain:container:appGroupContainer:)()
{
  OUTLINED_FUNCTION_0_28();
  v7 = [objc_allocWithZone(NPSManagerBridge) init];
  v1[7] = v0;
  v1[8] = v7;
  v1[2] = v6;
  v1[3] = v5;
  v1[4] = v4;
  v1[5] = v3;
  v1[6] = v2;
  return v1;
}

uint64_t sub_1C9484800()
{
  type metadata accessor for UnitManager();
  swift_allocObject();
  result = sub_1C9484860();
  qword_1EDB80320 = result;
  return result;
}

uint64_t sub_1C9484860()
{
  v1 = v0;
  v2 = sub_1C96A4C14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7 + 40;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1C9484BA4(&v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5678, &qword_1C96AF6A0);
  swift_allocObject();
  v9 = sub_1C96A55B4();
  sub_1C94BE204(&v20, &qword_1EC3A5630, &qword_1C96AF4D0);
  *(v1 + 24) = v9;
  sub_1C96A4B74();
  (*(v3 + 16))(v5, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5680, &qword_1C96AF6A8);
  swift_allocObject();
  v10 = sub_1C96A55B4();
  (*(v3 + 8))(v8, v2);
  *(v1 + 32) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5688, &qword_1C96AF6B0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = MEMORY[0x1E69E7CC8];
  *(v1 + 40) = v11;
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB80330 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  *(v1 + 48) = v20;
  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_1EDB80358;
  v13 = type metadata accessor for SyncedUnitProvider();
  v14 = swift_allocObject();
  v15 = sub_1C9484E28(v12, v14);
  swift_beginAccess();
  *(&v21 + 1) = v13;
  v22 = &off_1F490AB30;
  *&v20 = v15;
  sub_1C9469B6C(&v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5690, &unk_1C96AF6B8);
  swift_allocObject();
  sub_1C96A3D04();
  v16 = sub_1C96A55B4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  *(v1 + 16) = v16;
  swift_endAccess();

  return v1;
}

uint64_t sub_1C9484BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5630, &qword_1C96AF4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9484C14()
{
  v0 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0, &unk_1C96B1390);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB80338 = result;
  return result;
}

uint64_t sub_1C9484DBC()
{
  sub_1C96A4FD4();
  sub_1C96A4FB4();
  v0 = sub_1C96A4FA4();

  qword_1EDB80358 = v0;
  return result;
}

uint64_t sub_1C9484E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v11[3] = sub_1C946B5D0(0, &qword_1EDB80340, 0x1E695E000);
  v11[4] = &protocol witness table for NSUserDefaults;
  v11[0] = a1;
  *(a2 + 16) = 0xD000000000000012;
  *(a2 + 24) = 0x80000001C96CEE20;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(a2 + 32) = sub_1C96A5124();
  *(a2 + 88) = 0;
  sub_1C9469B6C(v11, a2 + 40);
  *(a2 + 80) = 33882626;
  *(a2 + 84) = 261;
  sub_1C9484F64(&v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v5 = v9;
  v6 = v10;
  *(a2 + 80) = v8;
  *(a2 + 84) = v5;
  *(a2 + 85) = v6;
  return a2;
}

void sub_1C9484F64(char *a1@<X8>)
{
  v4 = v1[8];
  v5 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v4);
  sub_1C9485198(v1[2], v1[3], v4, v5, &v29);
  v6 = v29 | (WORD2(v29) << 32);
  v7 = BYTE4(v6);
  v8 = (v6 >> 40) & 1;
  if (v29 == 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = v29;
  }

  if (v29 == 3)
  {
    v10 = 2;
  }

  else
  {
    v10 = BYTE1(v29);
  }

  if (v29 == 3)
  {
    v11 = 5;
  }

  else
  {
    v11 = BYTE2(v29);
  }

  if (v29 == 3)
  {
    v12 = 2;
  }

  else
  {
    v12 = BYTE3(v29);
  }

  if (v29 == 3)
  {
    v13 = 5;
  }

  else
  {
    v13 = v7;
  }

  if (v29 == 3)
  {
    v14 = 1;
  }

  else
  {
    v14 = v8;
  }

  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_79(&qword_1EDB80080);
  }

  v15 = sub_1C96A6154();
  __swift_project_value_buffer(v15, qword_1EDB80088);
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();
  if (os_log_type_enabled(v16, v17))
  {
    swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_7_49();
    v29 = v28;
    *v2 = 136446210;
    sub_1C9485C10();
    v18 = sub_1C96A53A4();
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v14;
    v25 = v13;
    v26 = sub_1C9484164(v18, v19, &v29);

    *(buf + 4) = v26;
    v13 = v25;
    v14 = v24;
    v12 = v23;
    v11 = v22;
    v10 = v21;
    v9 = v20;
    _os_log_impl(&dword_1C945E000, v16, v17, "Read units from locale storage. Units=%{public}s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20();
  }

  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  a1[5] = v14;
  OUTLINED_FUNCTION_18_3();
}

void *sub_1C9485198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = (*(a4 + 8))(&v11, a1, a2, MEMORY[0x1E6969080], a3);
  v7 = v12;
  if (v12 >> 60 == 15)
  {
    v9 = 3;
  }

  else
  {
    v8 = v11;
    sub_1C96A4184();
    swift_allocObject();
    sub_1C96A4174();
    sub_1C9485390();
    sub_1C96A4154();
    sub_1C9485BFC(v8, v7);

    v10 = 0x10000000000;
    if (!BYTE5(v11))
    {
      v10 = 0;
    }

    v9 = v11 | (BYTE4(v11) << 32) | v10;
  }

  *a5 = v9;
  *(a5 + 4) = WORD2(v9);
  return result;
}

uint64_t NSUserDefaults.get<A>(for:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = sub_1C96A7004();
  v9 = [v5 objectForKey_];

  if (v9)
  {
    sub_1C96A79C4();
    swift_unknownObjectRelease();
    sub_1C946306C(&v12, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A90, &qword_1C96B0AA0);
  v10 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v10 ^ 1u, 1, a3);
}

unint64_t sub_1C9485390()
{
  result = qword_1EDB7DB90;
  if (!qword_1EDB7DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB90);
  }

  return result;
}

uint64_t sub_1C94853E4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77C0, &qword_1C96BFBA0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948574C();
  sub_1C96A7F44();
  if (!v2)
  {
    v25[0] = 0;
    sub_1C947BC50();
    OUTLINED_FUNCTION_0_95(&type metadata for UnitConfiguration.Distance, v25);
    v11 = v25[1];
    v24[0] = 1;
    sub_1C948588C();
    OUTLINED_FUNCTION_0_95(&type metadata for UnitConfiguration.Precipitation, v24);
    v12 = v24[1];
    v23[0] = 2;
    sub_1C94858E0();
    OUTLINED_FUNCTION_0_95(&type metadata for UnitConfiguration.Pressure, v23);
    v19 = v12;
    v13 = v23[1];
    v22[0] = 3;
    sub_1C9485A2C();
    OUTLINED_FUNCTION_0_95(&type metadata for UnitConfiguration.Temperature, v22);
    v18 = v13;
    LOBYTE(v13) = v22[1];
    v21[0] = 4;
    sub_1C947BBF0();
    OUTLINED_FUNCTION_0_95(&type metadata for UnitConfiguration.WindSpeed, v21);
    v17 = v21[1];
    v20[0] = 5;
    sub_1C9481B7C();
    OUTLINED_FUNCTION_0_95(&type metadata for UnitConfiguration, v20);
    (*(v7 + 8))(v10, v5);
    v15 = v20[1];
    *a2 = v11;
    v16 = v18;
    a2[1] = v19;
    a2[2] = v16;
    a2[3] = v13;
    a2[4] = v17;
    a2[5] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C94856A0()
{
  result = qword_1EDB7DB98;
  if (!qword_1EDB7DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB98);
  }

  return result;
}

unint64_t sub_1C94856F8()
{
  result = qword_1EDB7DBA0;
  if (!qword_1EDB7DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DBA0);
  }

  return result;
}

unint64_t sub_1C948574C()
{
  result = qword_1EDB7DBA8[0];
  if (!qword_1EDB7DBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7DBA8);
  }

  return result;
}

unint64_t sub_1C94857A8(char a1)
{
  result = 0x65636E6174736964;
  switch(a1)
  {
    case 1:
      result = 0x7469706963657270;
      break;
    case 2:
      result = 0x6572757373657270;
      break;
    case 3:
      result = 0x74617265706D6574;
      break;
    case 4:
      result = 0x65657053646E6977;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C948588C()
{
  result = qword_1EDB7EBD8;
  if (!qword_1EDB7EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBD8);
  }

  return result;
}

unint64_t sub_1C94858E0()
{
  result = qword_1EDB7EBC8;
  if (!qword_1EDB7EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBC8);
  }

  return result;
}

_BYTE *sub_1C948593C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9485A04);
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
          result = OUTLINED_FUNCTION_42_13(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9485A2C()
{
  result = qword_1EDB7EBE0;
  if (!qword_1EDB7EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoredUnitsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9485B4CLL);
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

uint64_t getEnumTagSinglePayload for MockHomeAndWorkLocation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C9485BFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C9482F3C(result, a2);
  }

  return result;
}

unint64_t sub_1C9485C10()
{
  result = qword_1EDB800B0;
  if (!qword_1EDB800B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB800B0);
  }

  return result;
}

unint64_t sub_1C9485C68()
{
  result = qword_1EDB800A8;
  if (!qword_1EDB800A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB800A8);
  }

  return result;
}

uint64_t sub_1C9485CBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330, &qword_1C96B5620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96B20F0;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 32) = 0x65636E6174736964;
  *(inited + 40) = 0xE800000000000000;
  v10 = 28011;
  if ((v3 & 1) == 0)
  {
    v10 = 0x73656C696DLL;
  }

  v11 = 0xE500000000000000;
  if (v3)
  {
    v11 = 0xE200000000000000;
  }

  if (v3 == 2)
  {
    v10 = 7104878;
    v11 = 0xE300000000000000;
  }

  *(inited + 48) = v10;
  *(inited + 56) = v11;
  *(inited + 72) = v9;
  *(inited + 80) = 0x7469706963657270;
  v12 = 28265;
  if (v4)
  {
    v12 = 0x6D63202C6D6DLL;
  }

  v13 = 0xE600000000000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0xE200000000000000;
  }

  if (v4 == 2)
  {
    v12 = 7104878;
  }

  *(inited + 88) = 0xED00006E6F697461;
  *(inited + 96) = v12;
  if (v4 == 2)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = v13;
  }

  *(inited + 104) = v14;
  *(inited + 120) = v9;
  *(inited + 128) = 0x6572757373657270;
  v15 = 0xE400000000000000;
  *(inited + 136) = 0xE800000000000000;
  v16 = 1918984813;
  switch(v5)
  {
    case 1:
      v16 = 1732800105;
      v15 = 0xE400000000000000;
      goto LABEL_21;
    case 2:
      v16 = 1732799853;
      goto LABEL_21;
    case 3:
      v15 = 0xE300000000000000;
      v16 = 6377576;
      goto LABEL_21;
    case 4:
      v16 = 6377579;
      v15 = 0xE300000000000000;
      goto LABEL_21;
    case 5:
      *(inited + 168) = v9;
      *(inited + 144) = 7104878;
      v15 = 0xE300000000000000;
      goto LABEL_22;
    default:
LABEL_21:
      *(inited + 168) = v9;
      *(inited + 144) = v16;
LABEL_22:
      *(inited + 152) = v15;
      *(inited + 176) = 0x74617265706D6574;
      *(inited + 184) = 0xEB00000000657275;
      v17 = 102;
      if (v6)
      {
        v17 = 99;
      }

      if (v6 == 2)
      {
        v18 = 7104878;
      }

      else
      {
        v18 = v17;
      }

      v19 = 0xE100000000000000;
      v20 = 0xE300000000000000;
      if (v6 == 2)
      {
        v19 = 0xE300000000000000;
      }

      *(inited + 192) = v18;
      *(inited + 200) = v19;
      *(inited + 216) = v9;
      *(inited + 224) = 0x65657053646E6977;
      *(inited + 232) = 0xE900000000000064;
      v21 = 6844525;
      switch(v7)
      {
        case 1:
          v21 = 6843755;
          goto LABEL_34;
        case 2:
          v20 = 0xE200000000000000;
          v21 = 29549;
          goto LABEL_34;
        case 3:
          v21 = 7628386;
          goto LABEL_34;
        case 4:
          v21 = 7566443;
          goto LABEL_34;
        case 5:
          *(inited + 264) = v9;
          *(inited + 240) = 7104878;
          goto LABEL_35;
        default:
LABEL_34:
          *(inited + 264) = v9;
          *(inited + 240) = v21;
LABEL_35:
          *(inited + 248) = v20;
          sub_1C96A6F04();
          a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77B8, &qword_1C96BFB98);
          a1[4] = sub_1C948602C();
          __swift_allocate_boxed_opaque_existential_1(a1);
          return sub_1C96A53B4();
      }
  }
}

unint64_t sub_1C948602C()
{
  result = qword_1EDB800A0;
  if (!qword_1EDB800A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A77B8, &qword_1C96BFB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB800A0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t UnitManager.setInitialUnitConfiguration(_:)()
{
  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_1EDB80080);
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB80088);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C945E000, v1, v2, "Set initial unit configuration.", v3, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_52_3(v4, v5, v6, v7, v8);
  sub_1C96A3D04();
  v9 = sub_1C96A55C4();
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v14 = 0;
  (*(v12 + 56))(&v14, v11, v12);
  v9(v15, 0);
}

uint64_t OUTLINED_FUNCTION_63@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 224) = v1;
  *(v2 - 216) = v3;
  return v2 - 224;
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

uint64_t sub_1C9486320(char *a1)
{
  v2 = *a1;
  sub_1C96A50E4();
  *(v1 + 85) = v2;
  return sub_1C96A50F4();
}

uint64_t UnitManager.setupUnitsPushing(nanoPrefencesSynchronizer:)(uint64_t a1)
{
  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_1EDB80080);
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB80088);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C945E000, v3, v4, "Set up unit synchronisation", v5, 2u);
    OUTLINED_FUNCTION_26();
  }

  sub_1C9486640();
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v6 = OUTLINED_FUNCTION_9_14();
  v7(v6);
  v8 = v21[0];
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  sub_1C9469B6C(a1, v22);
  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_1EDB80358;
  v10 = type metadata accessor for UnitSyncManager();
  v11 = swift_allocObject();
  v12 = qword_1EDB79D90;
  v13 = v9;
  if (v12 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5258, &qword_1C96AD490);
  swift_allocObject();
  sub_1C96A3D04();
  *(v11 + 136) = sub_1C96A4F14();
  sub_1C9469B6C(v22, v11 + 96);
  v14 = sub_1C9484E28(v13, v11);
  sub_1C94868B8();

  v15 = __swift_destroy_boxed_opaque_existential_1Tm(v22);
  v23 = v10;
  v24 = &off_1F490AB30;
  *v22 = v14;
  OUTLINED_FUNCTION_52_3(v15, v16, v17, v18, v19);
  sub_1C9469B6C(v22, v21);
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A55E4();

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  v23 = v10;
  v24 = &off_1F4908D18;
  *v22 = v14;
  sub_1C96A3D04();
  sub_1C94879AC(v22);
  v22[0] = v8;
  sub_1C96A3D04();
  sub_1C9486320(v22);

  sub_1C9487A10();
}

uint64_t sub_1C9486640()
{
  swift_beginAccess();
  sub_1C96A3D04();
  sub_1C96A55D4();
}

uint64_t sub_1C948671C()
{
  v0 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  (*(v10 + 104))(v9 - v8, *MEMORY[0x1E69D6E88]);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6EA0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5F20, &qword_1C96B3D10);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB79D98 = result;
  return result;
}

uint64_t sub_1C94868B8()
{
  v1 = sub_1C96A6EB4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_14();
  v16 = *(v0 + 32);
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  v18 = &type metadata for StoredUnitsConfiguration;
  v19 = sub_1C9486B70();
  LODWORD(v16) = v20;
  WORD2(v16) = v21;
  sub_1C9486BC4(&v16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  v2 = sub_1C9487768();
  v4 = v3;
  v5 = sub_1C96A4844();
  v7 = v6;
  sub_1C9482F3C(v2, v4);
  sub_1C96A3D04();
  sub_1C96A4EF4();

  if (v16 == v5 && v17 == v7)
  {
  }

  v9 = sub_1C96A7DE4();

  if (v9)
  {
  }

  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_79(&qword_1EDB80080);
  }

  v11 = sub_1C96A6154();
  __swift_project_value_buffer(v11, qword_1EDB80088);
  v12 = sub_1C96A6134();
  v13 = sub_1C96A76A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C945E000, v12, v13, "Watch units out of sync - force sync to watch.", v14, 2u);
    MEMORY[0x1CCA8E3D0](v14, -1, -1);
  }

  sub_1C9630E3C(v15);
  v16 = v5;
  v17 = v7;
  sub_1C96A3D04();
  sub_1C96A4F04();
}

uint64_t sub_1C9486B4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 84);
  v3 = *(result + 85);
  *a2 = *(result + 80);
  *(a2 + 4) = v2;
  *(a2 + 5) = v3;
  return result;
}

unint64_t sub_1C9486B70()
{
  result = qword_1EDB795D8;
  if (!qword_1EDB795D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795D8);
  }

  return result;
}

uint64_t sub_1C9486BC4(void *a1)
{
  v3 = sub_1C96A6EA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = sub_1C96A41A4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_14();
  sub_1C96A4204();
  swift_allocObject();
  sub_1C96A41F4();
  sub_1C96A4194();
  sub_1C96A41B4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C96A41E4();
  if (v1)
  {
  }

  sub_1C9487478(&qword_1EDB77D98, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  sub_1C96A6E74();
  v10 = OUTLINED_FUNCTION_6_11();
  sub_1C94874C0(v10, v11);
  v12 = OUTLINED_FUNCTION_6_11();
  sub_1C9487518(v12, v13, v7);
  v14 = OUTLINED_FUNCTION_6_11();
  sub_1C9482F3C(v14, v15);
  sub_1C96A6E54();
  (*(v4 + 8))(v7, v3);

  v16 = OUTLINED_FUNCTION_6_11();
  return sub_1C9482F3C(v16, v17);
}

uint64_t sub_1C9486DE4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77C8, &qword_1C96BFBA8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *v1;
  v11 = v1[1];
  v23 = v1[2];
  v24 = v11;
  v12 = v1[3];
  v21 = v1[4];
  v22 = v12;
  v20 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948574C();
  v13 = v4;
  sub_1C96A7F54();
  v34[2] = v10;
  v34[1] = 0;
  sub_1C9487068();
  sub_1C96A7D14();
  if (!v2)
  {
    v15 = v22;
    v14 = v23;
    v17 = v20;
    v16 = v21;
    v34[0] = v24;
    v33 = 1;
    sub_1C94870BC();
    OUTLINED_FUNCTION_1_68(v34, &v33);
    v32 = v14;
    v31 = 2;
    sub_1C9487110();
    OUTLINED_FUNCTION_1_68(&v32, &v31);
    v30 = v15;
    v29 = 3;
    sub_1C9487164();
    OUTLINED_FUNCTION_1_68(&v30, &v29);
    v28 = v16;
    v27 = 4;
    sub_1C94871B8();
    OUTLINED_FUNCTION_1_68(&v28, &v27);
    v26 = v17;
    v25 = 5;
    sub_1C948720C();
    OUTLINED_FUNCTION_1_68(&v26, &v25);
  }

  return (*(v6 + 8))(v9, v13);
}

unint64_t sub_1C9487068()
{
  result = qword_1EDB799C8;
  if (!qword_1EDB799C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799C8);
  }

  return result;
}

unint64_t sub_1C94870BC()
{
  result = qword_1EDB799D8;
  if (!qword_1EDB799D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799D8);
  }

  return result;
}

unint64_t sub_1C9487110()
{
  result = qword_1EDB799C0;
  if (!qword_1EDB799C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799C0);
  }

  return result;
}

unint64_t sub_1C9487164()
{
  result = qword_1EDB799E0;
  if (!qword_1EDB799E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799E0);
  }

  return result;
}

unint64_t sub_1C94871B8()
{
  result = qword_1EDB7EBC0;
  if (!qword_1EDB7EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBC0);
  }

  return result;
}

unint64_t sub_1C948720C()
{
  result = qword_1EDB7EBB8;
  if (!qword_1EDB7EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBB8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t UnitConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8518, &qword_1C96C7488);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947BB8C();
  sub_1C96A7F54();
  return (*(v5 + 8))(v1, v3);
}

uint64_t sub_1C94873D8@<X0>(uint64_t *a1@<X8>)
{
  result = UnitConfiguration.WindSpeed.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t UnitConfiguration.WindSpeed.rawValue.getter()
{
  result = 6844525;
  switch(*v0)
  {
    case 1:
      result = 6843755;
      break;
    case 2:
      result = 29549;
      break;
    case 3:
      result = 7628386;
      break;
    case 4:
      result = 7566443;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9487478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C94874C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }

    sub_1C96A3D04();
  }

  return sub_1C96A3D04();
}

uint64_t sub_1C9487574(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v18 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v18;
LABEL_9:
      result = sub_1C9487640(a1, v16, v15, a3, a4, a5, a6, a7);
      if (v7)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v14 = *(a1 + 24);
      v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v16 = v14;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v13 = 0;
      goto LABEL_5;
    default:
      v13 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1C96A3610(a1, v13, a3, a4, a5, a6, a7);
      if (v7)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x1C9487630);
      }

      return result;
  }
}

uint64_t sub_1C9487640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_1C96A43E4();
  if (!result || (result = sub_1C96A4404(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C96A43F4();
      a5(0);
      sub_1C9487720(a6, a7, a8);
      return sub_1C96A6E44();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9487720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C94877B0(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = a2(0);
  v14 = v9;
  v15 = sub_1C9487478(a3, a4, a5);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  v11 = *(v9 - 8);
  (*(v11 + 16))(boxed_opaque_existential_1, a1, v9);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  OUTLINED_FUNCTION_0_16();
  sub_1C96A44B4();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  (*(v11 + 8))(a1, v9);
  return OUTLINED_FUNCTION_4_4();
}

uint64_t sub_1C94878C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1C96A4784();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1CCA8A130]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1CCA8A150]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}