_BYTE *storeEnumTagSinglePayload for StructuredParameterCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D482BC()
{
  result = qword_27D03C860;
  if (!qword_27D03C860)
  {
    result = swift_getWitnessTable(aQ, &type metadata for StructuredParameterCodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C860);
  }

  return result;
}

unint64_t sub_222D48314()
{
  result = qword_27D03C868;
  if (!qword_27D03C868)
  {
    result = swift_getWitnessTable(byte_222D58D48, &type metadata for ResponseManifestCodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C868);
  }

  return result;
}

unint64_t sub_222D4836C()
{
  result = qword_27D03C870;
  if (!qword_27D03C870)
  {
    result = swift_getWitnessTable("!#N_Ё", &type metadata for ResponseManifestCodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C870);
  }

  return result;
}

unint64_t sub_222D483C4()
{
  result = qword_27D03C878;
  if (!qword_27D03C878)
  {
    result = swift_getWitnessTable(a1, &type metadata for ResponseManifestCodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C878);
  }

  return result;
}

unint64_t sub_222D4841C()
{
  result = qword_27D03C880;
  if (!qword_27D03C880)
  {
    result = swift_getWitnessTable(byte_222D58B90, &type metadata for StructuredParameterCodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C880);
  }

  return result;
}

unint64_t sub_222D48474()
{
  result = qword_27D03C888;
  if (!qword_27D03C888)
  {
    result = swift_getWitnessTable(aN_2, &type metadata for StructuredParameterCodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C888);
  }

  return result;
}

uint64_t sub_222D48528(uint64_t a1)
{
  OUTLINED_FUNCTION_3_2(a1);
  *(v2 + 16) = v1;
}

uint64_t DialogLocationValue.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t DialogLocationValue.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_222D48590(uint64_t a1)
{
  OUTLINED_FUNCTION_3_2(a1);
  *(v2 + 16) = v1;
}

uint64_t sub_222D485E0(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = (*(*a1 + 664))();
  }

  else
  {
    v3 = 0;
  }

  swift_beginAccess();
  *(v2 + 16) = v3;
}

uint64_t sub_222D48670()
{
  type metadata accessor for DialogLocationValue();
  v0 = swift_allocObject();

  DialogLocationValue.init(builder:)(v1, v2);
  return v0;
}

uint64_t DialogLocationValue.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v2 = swift_allocObject();
  DialogLocationValue.init(builder:)(a1, v3);
  return v2;
}

uint64_t DialogLocationValue.Builder.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t DialogLocationValue.init(builder:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_8(a1 + 16, a2);
  v4 = *(a1 + 16);

  *(v2 + 24) = v4;
  return v2;
}

double sub_222D487E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v5 || (sub_222D5305C()) && (v6 = *(v3 + 24)) != 0)
  {
    *(a3 + 24) = type metadata accessor for DialogLocationAddress();
    *a3 = v6;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

BOOL sub_222D4887C(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  return v2 != 0;
}

BOOL sub_222D488D0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D4887C(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_222D48938@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D4887C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D48964(uint64_t a1)
{
  v2 = sub_222D48B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D489A0(uint64_t a1)
{
  v2 = sub_222D48B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogLocationValue.__deallocating_deinit()
{
  DialogLocationValue.deinit();
  v0 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D48A30(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C890, &qword_222D58E10);
  OUTLINED_FUNCTION_113();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D48B9C();
  sub_222D531AC();
  v13[1] = *(v2 + 24);
  type metadata accessor for DialogLocationAddress();
  OUTLINED_FUNCTION_0_25();
  sub_222D48EF8(v10, 255, v11, "%$N_ȉ");
  sub_222D52FBC();
  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_222D48B9C()
{
  result = qword_27D03C898;
  if (!qword_27D03C898)
  {
    result = swift_getWitnessTable(a5N_0, &type metadata for DialogLocationValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C898);
  }

  return result;
}

uint64_t DialogLocationValue.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_5_1();
  v2 = swift_allocObject();
  DialogLocationValue.init(from:)(a1);
  return v2;
}

uint64_t DialogLocationValue.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C8A0, &qword_222D58E18);
  OUTLINED_FUNCTION_113();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D48B9C();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogLocationValue();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DialogLocationAddress();
    OUTLINED_FUNCTION_0_25();
    sub_222D48EF8(v10, 255, v11, protocol conformance descriptor for DialogLocationAddress);
    sub_222D52F1C();
    (*(v6 + 8))(v9, v4);
    *(v1 + 24) = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D48E74(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222D48EF8(&qword_27D03BF30, a2, type metadata accessor for DialogLocationValue, protocol conformance descriptor for DialogLocationValue);
  result = sub_222D48EF8(&qword_27D03BF18, v3, type metadata accessor for DialogLocationValue, protocol conformance descriptor for DialogLocationValue);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D48EF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D48F40@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of DialogLocationValue.Builder.withAddress(_:)()
{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 128))();
}

_BYTE *storeEnumTagSinglePayload for DialogLocationValue.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_222D49300()
{
  result = qword_27D03C8A8;
  if (!qword_27D03C8A8)
  {
    result = swift_getWitnessTable(byte_222D58FCC, &type metadata for DialogLocationValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C8A8);
  }

  return result;
}

unint64_t sub_222D49358()
{
  result = qword_27D03C8B0;
  if (!qword_27D03C8B0)
  {
    result = swift_getWitnessTable(byte_222D58F04, &type metadata for DialogLocationValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C8B0);
  }

  return result;
}

unint64_t sub_222D493B0()
{
  result = qword_27D03C8B8;
  if (!qword_27D03C8B8)
  {
    result = swift_getWitnessTable(byte_222D58F2C, &type metadata for DialogLocationValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C8B8);
  }

  return result;
}

uint64_t sub_222D49404(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D5292C();
  v4 = v3;
  v5 = sub_222D5292C();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_222D49488(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7955819;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7955819;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x65756C6176;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x74616D726F66;
      break;
    case 5:
      OUTLINED_FUNCTION_33_6();
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1701667182;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x65756C6176;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1701869940;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x74616D726F66;
      break;
    case 5:
      v2 = 0x74696E61666F7270;
      v6 = 0xEF7265746C694679;
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
    v8 = OUTLINED_FUNCTION_3_20(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_222D49600(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6574656D61726170;
  v3 = 0xEA00000000007372;
  v4 = a1;
  v5 = 0x6574656D61726170;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x656D614E6C6F6F74;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x676F6C616964;
      break;
    case 3:
      v5 = 0x6574616C706D6574;
      v3 = 0xEA00000000006449;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v3 = 0x8000000222D59D90;
      break;
    case 5:
      v3 = 0x8000000222D59DB0;
      v5 = 0xD000000000000015;
      break;
    case 6:
      v3 = 0x8000000222D59DD0;
      v5 = 0xD000000000000013;
      break;
    default:
      break;
  }

  v6 = 0xEA00000000007372;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x656D614E6C6F6F74;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x676F6C616964;
      break;
    case 3:
      v2 = 0x6574616C706D6574;
      v6 = 0xEA00000000006449;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v6 = 0x8000000222D59D90;
      break;
    case 5:
      v6 = 0x8000000222D59DB0;
      v2 = 0xD000000000000015;
      break;
    case 6:
      v6 = 0x8000000222D59DD0;
      v2 = 0xD000000000000013;
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
    v8 = OUTLINED_FUNCTION_3_20(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_222D497F0(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_20(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_222D4987C(char a1, char a2)
{
  v2 = 0xD000000000000025;
  v3 = "rofanityFilter";
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = "ntact#Person#firstName";
    }

    else
    {
      v4 = "ntact#Person#lastName";
    }

    v5 = 0xD000000000000025;
  }

  else
  {
    v5 = 0xD000000000000026;
    v4 = "rofanityFilter";
  }

  if (a2)
  {
    v3 = "ntact#Person#firstName";
    if (a2 != 1)
    {
      v3 = "ntact#Person#lastName";
    }
  }

  else
  {
    v2 = 0xD000000000000026;
  }

  if (v5 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_222D5305C();
  }

  return v7 & 1;
}

uint64_t sub_222D49970(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6449707061;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x8000000222D59A40;
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6449707061;
  }

  if (a2)
  {
    v6 = 0x8000000222D59A40;
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
    v8 = OUTLINED_FUNCTION_3_20(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_222D49A1C(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_20(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_222D49AA4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1918985593;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1918985593;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x68746E6F6DLL;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7954788;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_26_7();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x68746E6F6DLL;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 7954788;
      break;
    case 3:
      OUTLINED_FUNCTION_29_6();
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
    v8 = OUTLINED_FUNCTION_3_20(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_222D49BA8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1935893875;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1935893875;
  switch(v4)
  {
    case 1:
      v5 = 0x657366664F637475;
      v6 = 0x7363655374;
      goto LABEL_5;
    case 2:
      v5 = OUTLINED_FUNCTION_26_7();
      break;
    case 3:
      v5 = 0x6D726F4665746164;
      v6 = 0x7265747461;
LABEL_5:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x657366664F637475;
      v8 = 0x7363655374;
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_29_6();
      break;
    case 3:
      v2 = 0x6D726F4665746164;
      v8 = 0x7265747461;
LABEL_10:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_20(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_222D49CEC(char a1)
{
  if (a1)
  {
    v1 = 0xEE006E756F6E6F72;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_20(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_222D49D9C(char a1, uint64_t a2)
{
  v2 = 0x65756C6176;
  if (a1)
  {
    OUTLINED_FUNCTION_9_12();
    if (v3)
    {
      v5 = 0x7374696E75;
    }

    else
    {
      v5 = 0x6E5574757074756FLL;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEB00000000737469;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x65756C6176;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_9_12();
    if (v7)
    {
      v2 = 0x7374696E75;
    }

    else
    {
      v2 = 0x6E5574757074756FLL;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEB00000000737469;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_20(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_222D49E88()
{
  OUTLINED_FUNCTION_14_9();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_222D5305C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_222D49F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
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
    v11 = OUTLINED_FUNCTION_3_20(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_222D49F98(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_20(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_222D4A024(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x6365537472617473;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x73636553646E65;
    }

    else
    {
      v5 = 0x656E6F5A656D6974;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x6365537472617473;
    v6 = 0xE900000000000073;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x73636553646E65;
    }

    else
    {
      v3 = 0x656E6F5A656D6974;
    }

    if (a2 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222D5305C();
  }

  return v8 & 1;
}

uint64_t sub_222D4A124(char a1, uint64_t a2)
{
  v2 = 1701869940;
  if (a1)
  {
    OUTLINED_FUNCTION_9_12();
    if (v3)
    {
      v5 = 0x65756C6176;
    }

    else
    {
      v5 = 0x6C6562616CLL;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1701869940;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_9_12();
    if (v7)
    {
      v2 = 0x65756C6176;
    }

    else
    {
      v2 = 0x6C6562616CLL;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_20(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_222D4A1F8(char a1)
{
  if (a1)
  {
    v1 = 0xEB0000000065646FLL;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_20(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_222D4A28C(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_20(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_222D4A334(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_31_6(a1);
  OUTLINED_FUNCTION_6_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4A3AC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_31_6(a1);
  OUTLINED_FUNCTION_6_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4A46C(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_31_6(a1);
  a2(v5, a1);
  return sub_222D5315C();
}

uint64_t sub_222D4A570(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_31_6(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_32_5(v4, v5, v6);

  return sub_222D5315C();
}

uint64_t sub_222D4A5D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_6(a1);
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4A62C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_5_19();
      break;
    case 3:
      OUTLINED_FUNCTION_23_8();
      break;
    case 5:
      OUTLINED_FUNCTION_33_6();
      break;
    default:
      break;
  }

  sub_222D529DC();
}

uint64_t sub_222D4A6E0(uint64_t a1, char a2)
{
  sub_222D529DC();
}

uint64_t sub_222D4A818(uint64_t a1, char a2)
{
  sub_222D529DC();
}

uint64_t sub_222D4A880(uint64_t a1, char a2)
{
  sub_222D529DC();
}

uint64_t sub_222D4A918(uint64_t a1, char a2)
{
  sub_222D529DC();
}

uint64_t sub_222D4A99C(uint64_t a1, char a2)
{
  sub_222D529DC();
}

uint64_t sub_222D4AA24(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_27_6();
      break;
    default:
      break;
  }

  sub_222D529DC();
}

uint64_t sub_222D4AAB8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_27_6();
      break;
    default:
      break;
  }

  sub_222D529DC();
}

uint64_t sub_222D4AB70(uint64_t a1, char a2)
{
  sub_222D529DC();
}

uint64_t sub_222D4ABFC(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_9_12();
  }

  else
  {
    OUTLINED_FUNCTION_5_19();
  }

  sub_222D529DC();
}

uint64_t sub_222D4AC78(uint64_t a1, char a2)
{
  sub_222D529DC();
}

uint64_t sub_222D4ACE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_222D529DC();
}

uint64_t sub_222D4AD6C(uint64_t a1, char a2)
{
  sub_222D529DC();
}

uint64_t sub_222D4ADD4(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_15_9();
  }

  sub_222D529DC();
}

uint64_t sub_222D4AE68(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_9_12();
  }

  else
  {
    OUTLINED_FUNCTION_23_8();
  }

  sub_222D529DC();
}

uint64_t sub_222D4AED8(uint64_t a1, char a2)
{
  sub_222D529DC();
}

uint64_t sub_222D4AF48(uint64_t a1, char a2)
{
  sub_222D529DC();
}

uint64_t sub_222D4AFAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10(a1, a2);
  if (v2)
  {
    v5 = 0x646E6F636573;
  }

  else
  {
    v5 = 0x7473726966;
  }

  OUTLINED_FUNCTION_19_9(v3, v5, v4);

  return sub_222D5315C();
}

uint64_t sub_222D4B014(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10(a1, a2);
  if (v2)
  {
    v5 = 0x437972746E756F63;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  OUTLINED_FUNCTION_19_9(v3, v5, v4);

  return sub_222D5315C();
}

uint64_t sub_222D4B088(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_10(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_9_12();
    if (v5)
    {
      v6 = 0x65756C6176;
    }

    else
    {
      v6 = 0x6C6562616CLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_8();
  }

  OUTLINED_FUNCTION_19_9(v3, v6, v4);

  return sub_222D5315C();
}

uint64_t sub_222D4B0FC(uint64_t a1)
{
  v1 = sub_222D5313C();
  OUTLINED_FUNCTION_6_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4B148(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x73636553646E65;
    }

    else
    {
      v5 = 0x656E6F5A656D6974;
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_9();
  }

  OUTLINED_FUNCTION_19_9(v3, v5, v4);

  return sub_222D5315C();
}

uint64_t sub_222D4B1C8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10(a1, a2);
  if (v2)
  {
    v5 = 0x7261655974696D6FLL;
  }

  else
  {
    v5 = 0x6874676E656CLL;
  }

  OUTLINED_FUNCTION_19_9(v3, v5, v4);

  return sub_222D5315C();
}

uint64_t sub_222D4B280(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_10(a1, a2);
  sub_222D529DC();

  return sub_222D5315C();
}

uint64_t sub_222D4B2E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_10(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_9_12();
    if (v5)
    {
      v6 = 0x7374696E75;
    }

    else
    {
      v6 = 0x6E5574757074756FLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_19();
  }

  OUTLINED_FUNCTION_19_9(v3, v6, v4);

  return sub_222D5315C();
}

uint64_t sub_222D4B37C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10(a1, a2);
  if (v2)
  {
    v5 = 0x506C616974696E69;
  }

  else
  {
    v5 = 0x7265646E6567;
  }

  OUTLINED_FUNCTION_19_9(v3, v5, v4);

  return sub_222D5315C();
}

uint64_t sub_222D4B424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_222D5313C();
  a3(v6, a2);
  return sub_222D5315C();
}

uint64_t sub_222D4B494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222D5313C();
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4B4E0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10(a1, a2);
  if (v2)
  {
    v5 = 0x656E6F5A656D6974;
  }

  else
  {
    v5 = 1935893875;
  }

  OUTLINED_FUNCTION_19_9(v3, v5, v4);

  return sub_222D5315C();
}

uint64_t sub_222D4B560(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10(a1, a2);
  if (v2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6449707061;
  }

  OUTLINED_FUNCTION_19_9(v3, v5, v4);

  return sub_222D5315C();
}

uint64_t sub_222D4B5E8(uint64_t a1, char a2)
{
  sub_222D5313C();
  sub_222D529DC();

  return sub_222D5315C();
}

uint64_t sub_222D4B67C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10(a1, a2);
  if (v2)
  {
    v5 = 0x656D614E707061;
  }

  else
  {
    v5 = 0x656C61636F6CLL;
  }

  OUTLINED_FUNCTION_19_9(v3, v5, v4);

  return sub_222D5315C();
}

uint64_t sub_222D4B6E8(uint64_t a1)
{
  v1 = sub_222D5313C();
  OUTLINED_FUNCTION_6_19(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4B764(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_222D5313C();
  v5 = a3(a2);
  OUTLINED_FUNCTION_32_5(v5, v6, v7);

  return sub_222D5315C();
}

uint64_t PhonemeData.asNameComponents(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_222D5206C();
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v59 = sub_222D5217C();
  v60 = v12;
  v57 = 45;
  v58 = 0xE100000000000000;
  v55 = 95;
  v56 = 0xE100000000000000;
  sub_222CE0BD0(v59, v12, v13);
  v14 = sub_222D52D5C();
  v16 = v15;

  if (*(v11 + 16))
  {
    v17 = sub_222CE1050(v14, v16);
    v19 = v18;

    if (v19)
    {
      v51 = v7;
      v52 = v5;
      v53 = a2;
      v20 = (*(v11 + 56) + 72 * v17);
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[3];
      v24 = v20[4];
      v25 = v20[5];
      v26 = v20[6];
      v27 = v20[7];
      v28 = v20[8];
      v29 = *v20;
      v47 = v20[2];
      v48 = v21;
      sub_222D4D814(v29, v21, v47);
      v54 = v23;
      v49 = v25;
      v50 = v24;
      sub_222D4D814(v23, v24, v25);
      sub_222D4D814(v26, v27, v28);
      v30 = sub_222D5205C();
      if (v26)
      {
        MEMORY[0x28223BE20](v30);
        OUTLINED_FUNCTION_24_8();
        *(v31 - 32) = a1;
        *(v31 - 24) = v26;
        *(v31 - 16) = v27;
        *(v31 - 8) = v28;
        v59 = sub_222D4BC84(sub_222D4E6DC, v32, v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
        sub_222D3DAFC();
        OUTLINED_FUNCTION_8_13();
        sub_222D528DC();

        sub_222D4D874(v26);
      }

      v36 = sub_222D5204C();
      v5 = v52;
      v37 = v54;
      if (v22)
      {
        MEMORY[0x28223BE20](v36);
        OUTLINED_FUNCTION_24_8();
        *(v38 - 32) = a1;
        *(v38 - 24) = v22;
        v39 = v47;
        *(v38 - 16) = v48;
        *(v38 - 8) = v39;
        v59 = sub_222D4BC84(sub_222D4E6DC, v40, v22);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
        sub_222D3DAFC();
        OUTLINED_FUNCTION_8_13();
        sub_222D528DC();

        v37 = v54;
        sub_222D4D874(v22);
      }

      a2 = v53;
      OUTLINED_FUNCTION_6();
      v41 = sub_222D51FDC();
      if (v37)
      {
        MEMORY[0x28223BE20](v41);
        OUTLINED_FUNCTION_24_8();
        *(v42 - 32) = a1;
        *(v42 - 24) = v37;
        v43 = v49;
        *(v42 - 16) = v50;
        *(v42 - 8) = v43;
        v59 = sub_222D4BC84(sub_222D4D854, v44, v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
        sub_222D3DAFC();
        OUTLINED_FUNCTION_8_13();
        sub_222D528DC();

        sub_222D4D874(v37);
      }

      OUTLINED_FUNCTION_6();
      sub_222D51FFC();
      (*(v51 + 32))(a2, v10, v5);
      v35 = 0;
      return __swift_storeEnumTagSinglePayload(a2, v35, 1, v5);
    }
  }

  else
  {
  }

  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  v33 = qword_280D3DB80;
  v34 = sub_222D52C2C();
  sub_222D5280C("No phonemeData entry for locale", 31, 2, &dword_222CDA000, v33, v34, MEMORY[0x277D84F90]);
  v35 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v35, 1, v5);
}

uint64_t sub_222D4BC84(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = v5[1];
      v29[0] = *v5;
      v29[1] = v7;
      v8 = v5[3];
      v10 = *v5;
      v9 = v5[1];
      v29[2] = v5[2];
      v29[3] = v8;
      v25 = v10;
      v26 = v9;
      v11 = v5[3];
      v27 = v5[2];
      v28 = v11;
      sub_222D4DC78(v29, &v19);
      v30(&v23, &v25);
      if (v3)
      {
        break;
      }

      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      sub_222D4DCB0(&v19);
      v12 = v24;
      if (v24)
      {
        v13 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_222D28358();
          v6 = v16;
        }

        v14 = *(v6 + 16);
        if (v14 >= *(v6 + 24) >> 1)
        {
          sub_222D28358();
          v6 = v17;
        }

        *(v6 + 16) = v14 + 1;
        v15 = v6 + 16 * v14;
        *(v15 + 32) = v13;
        *(v15 + 40) = v12;
      }

      v5 += 4;
      if (!--v4)
      {
        return v6;
      }
    }

    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    sub_222D4DCB0(&v19);
  }

  return v6;
}

uint64_t sub_222D4BE04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = 0;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v17[0] = a1;
      v17[1] = v7;
      v11 = *(v17 + v6);
      if (*(v17 + v6) < 0)
      {
        OUTLINED_FUNCTION_25_7();
        switch(v15)
        {
          case 1:
LABEL_19:
            v14 = 2;
            v11 = v12[1] & 0x3F | ((v11 & 0x1F) << 6);
            break;
          case 2:
LABEL_20:
            v11 = ((v11 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v14 = 3;
            break;
          case 3:
LABEL_21:
            v11 = ((v11 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v14 = 4;
            break;
          default:
            goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v9 = v8;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v9 = sub_222D52E2C();
      }

      v10 = *(v9 + v6);
      v11 = *(v9 + v6);
      if (v10 < 0)
      {
        OUTLINED_FUNCTION_25_7();
        switch(v13)
        {
          case 1:
            goto LABEL_19;
          case 2:
            goto LABEL_20;
          case 3:
            goto LABEL_21;
          default:
            break;
        }
      }
    }

LABEL_15:
    v14 = 1;
LABEL_16:
    v6 += v14;
    v5 = (v11 - v5 + 32 * v5);
    if (v6 >= v2)
    {
      return v5;
    }
  }

  v11 = sub_222D52DAC();
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  __break(1u);
  return 0;
}

uint64_t sub_222D4BFA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000222D5D010 == a2;
  if (v3 || (sub_222D5305C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63656843656D616ELL && a2 == 0xEC0000006D75736BLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_222D5305C();

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

uint64_t sub_222D4C07C(char a1)
{
  if (a1)
  {
    return 0x63656843656D616ELL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_222D4C0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D4BFA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D4C0F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D4C074();
  *a1 = result;
  return result;
}

uint64_t sub_222D4C118(uint64_t a1)
{
  v2 = sub_222D4D8B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D4C154(uint64_t a1)
{
  v2 = sub_222D4D8B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void PhonemeData.init(from:)()
{
  OUTLINED_FUNCTION_19_4();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C8C0, &qword_222D59048);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28_7();
  sub_222D4D8B4();
  sub_222D5318C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C8D0, &qword_222D59050);
    sub_222D4D908();
    OUTLINED_FUNCTION_13_9();
    sub_222D52F6C();
    OUTLINED_FUNCTION_16_5();
    v7 = sub_222D52F7C();
    v8 = OUTLINED_FUNCTION_2();
    v9(v8);
    *v5 = v1;
    *(v5 + 8) = v7;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_20();
}

unint64_t sub_222D4C310(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_222D4C35C(char a1)
{
  result = 0xD000000000000025;
  if (!a1)
  {
    return 0xD000000000000026;
  }

  return result;
}

unint64_t sub_222D4C3E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D4C310(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_222D4C418@<X0>(unint64_t *a1@<X8>)
{
  result = sub_222D4C35C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_222D4C44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D4C310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D4C474(uint64_t a1)
{
  v2 = sub_222D4D9E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D4C4B0(uint64_t a1)
{
  v2 = sub_222D4D9E8();

  return MEMORY[0x2821FE720](a1, v2);
}

SiriDialogEngine::TokenPhonemeDataList_optional __swiftcall PhonemeDataLocaleEntry.getFirstName()()
{
  v2 = OUTLINED_FUNCTION_1_22(*v1, v1[1], v1[2], v0);
  result.value.value._object = v4;
  result.value.value._countAndFlagsBits = v3;
  result.value.tokenPhonemeDataList._rawValue = v2;
  result.is_nil = v5;
  return result;
}

SiriDialogEngine::TokenPhonemeDataList_optional __swiftcall PhonemeDataLocaleEntry.getLastName()()
{
  v2 = OUTLINED_FUNCTION_1_22(v1[3], v1[4], v1[5], v0);
  result.value.value._object = v4;
  result.value.value._countAndFlagsBits = v3;
  result.value.tokenPhonemeDataList._rawValue = v2;
  result.is_nil = v5;
  return result;
}

SiriDialogEngine::TokenPhonemeDataList_optional __swiftcall PhonemeDataLocaleEntry.getNickName()()
{
  v2 = OUTLINED_FUNCTION_1_22(v1[6], v1[7], v1[8], v0);
  result.value.value._object = v4;
  result.value.value._countAndFlagsBits = v3;
  result.value.tokenPhonemeDataList._rawValue = v2;
  result.is_nil = v5;
  return result;
}

void PhonemeDataLocaleEntry.init(from:)()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C8E8, &qword_222D59058);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_28_7();
  v4 = sub_222D4D9E8();
  OUTLINED_FUNCTION_30_6(&unk_283623AF8, v5, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    sub_222D4DA3C();
    OUTLINED_FUNCTION_4_24();
    sub_222D52F1C();
    v14 = v18;
    v15 = v19;
    v16 = v20;
    LOBYTE(v17[0]) = 1;
    OUTLINED_FUNCTION_4_24();
    sub_222D52F1C();
    v11 = v18;
    v12 = v19;
    v13 = v20;
    OUTLINED_FUNCTION_4_24();
    sub_222D52F1C();
    v6 = OUTLINED_FUNCTION_2();
    v7(v6);
    v10 = v27;
    v9 = v28;
    v8 = v29;
    v17[0] = v14;
    v17[1] = v15;
    v17[2] = v16;
    v17[3] = v11;
    v17[4] = v12;
    v17[5] = v13;
    v17[6] = v27;
    v17[7] = v28;
    v17[8] = v29;
    memcpy(v2, v17, 0x48uLL);
    sub_222D4DA90(v17, &v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v24 = v10;
    v25 = v9;
    v26 = v8;
    sub_222D4DAC8(&v18);
  }

  OUTLINED_FUNCTION_20();
}

Swift::String __swiftcall TokenPhonemeDataList.getValue()()
{

  v0 = OUTLINED_FUNCTION_6();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_222D4C854@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_222D521AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v13 = a1[6];
  result = a1[7];
  if (v11)
  {
    v14 = HIBYTE(v11) & 0xF;
    v60 = a1[2];
    if ((v11 & 0x2000000000000000) == 0)
    {
      v14 = v60 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v52[2] = v3;
      v53 = a3;
      (*(v8 + 16))(v10, a2, v7);
      v58 = sub_222D5217C();
      v59 = v15;
      v56 = 45;
      v57 = 0xE100000000000000;
      v54 = 95;
      v55 = 0xE100000000000000;
      v17 = sub_222CE0BD0(v58, v15, v16);
      v50 = v17;
      v51 = v17;
      v48 = MEMORY[0x277D837D0];
      v49 = v17;
      v18 = sub_222D52D5C();
      v20 = v19;

      if (qword_27D03BCE8 != -1)
      {
        swift_once();
      }

      v21 = sub_222D2822C(v18, v20, qword_27D03C0B0);

      if (v21)
      {

        v23 = sub_222D50CDC(v22);

        (*(v8 + 8))(v10, v7);
        v24 = v23;

        v25 = sub_222D508A0(v60, v11, v21, v23);
        v27 = v26;

        swift_bridgeObjectRelease_n();
      }

      else
      {
        if (qword_280D3DB78 != -1)
        {
          swift_once();
        }

        v52[1] = qword_280D3DB80;
        HIDWORD(v52[0]) = sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_222D53980;
        sub_222D4E680(v29, v30);
        v31 = sub_222D5303C();
        v33 = v32;
        *(v29 + 56) = MEMORY[0x277D837D0];
        *(v29 + 64) = sub_222CDDCB0(v31, v32, v34);
        *(v29 + 32) = v31;
        *(v29 + 40) = v33;
        sub_222D5280C("No phonemeMap for %s", v52[0]);

        (*(v8 + 8))(v10, v7);
        v25 = 0;
        v27 = 0;
      }

      if (!sub_222D15214(v25, v27))
      {
        if (!v27)
        {
          goto LABEL_26;
        }

        v35 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v35 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          v58 = sub_222D5217C();
          v59 = v36;
          v56 = 45;
          v57 = 0xE100000000000000;
          v54 = 95;
          v55 = 0xE100000000000000;
          v51 = v17;
          v49 = v17;
          v48 = MEMORY[0x277D837D0];
          v37 = sub_222D52D5C();
          v39 = v38;

          v58 = v37;
          v59 = v39;
          MEMORY[0x28223BE20](v40);
          v50 = &v58;
          LOBYTE(v37) = sub_222D3D900(sub_222CE9D88, &v48, &unk_283621008);

          if (v37)
          {
            v58 = 0xD000000000000017;
            v59 = 0x8000000222D5D070;
          }

          else
          {
            v58 = 0x686C3D696F745C1BLL;
            v59 = 0xEA00000000005C70;
          }

          MEMORY[0x223DCB4F0](v25, v27);
          MEMORY[0x223DCB4F0](0x726F3D696F745C1BLL, 0xEB000000005C6874);

          goto LABEL_30;
        }
      }

LABEL_26:
      v58 = sub_222D5217C();
      v59 = v41;
      v56 = 45;
      v57 = 0xE100000000000000;
      v54 = 95;
      v55 = 0xE100000000000000;
      v51 = v17;
      v49 = v17;
      v48 = MEMORY[0x277D837D0];
      v42 = sub_222D52D5C();
      v44 = v43;

      v58 = v42;
      v59 = v44;
      MEMORY[0x28223BE20](v45);
      v50 = &v58;
      LOBYTE(v42) = sub_222D3D900(sub_222CE9D68, &v48, &unk_283621008);

      if (v42)
      {
        v58 = 0xD000000000000017;
        v59 = 0x8000000222D5D070;
      }

      else
      {
        v58 = 0x686C3D696F745C1BLL;
        v59 = 0xEA00000000005C70;
      }

      MEMORY[0x223DCB4F0](v60, v11);
      result = MEMORY[0x223DCB4F0](0x726F3D696F745C1BLL, 0xEB000000005C6874);
LABEL_30:
      v46 = v59;
      v47 = v53;
      *v53 = v58;
      v47[1] = v46;
      return result;
    }
  }

  if (!result)
  {
    goto LABEL_14;
  }

  v28 = HIBYTE(result) & 0xF;
  if ((result & 0x2000000000000000) == 0)
  {
    v28 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    *a3 = v13;
    a3[1] = result;
  }

  else
  {
LABEL_14:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_222D4CEBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000222D5D030 == a2;
  if (v3 || (sub_222D5305C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_222D5305C();

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

uint64_t sub_222D4CF88(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_31_6(a1);
  MEMORY[0x223DCBC20](v1 & 1);
  return sub_222D5315C();
}

uint64_t sub_222D4CFC8(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_222D4D008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D4CEBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D4D030(uint64_t a1)
{
  v2 = sub_222D4DAF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D4D06C(uint64_t a1)
{
  v2 = sub_222D4DAF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void TokenPhonemeDataList.init(from:)()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C900, &qword_222D59060);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_28_7();
  v5 = sub_222D4DAF8();
  OUTLINED_FUNCTION_30_6(&type metadata for TokenPhonemeDataList.CodingKeys, v6, v5);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C910, &qword_222D59068);
    sub_222D4DB4C();
    OUTLINED_FUNCTION_13_9();
    sub_222D52F6C();
    OUTLINED_FUNCTION_16_5();
    v7 = sub_222D52F4C();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    *v2 = v3;
    v2[1] = v7;
    v2[2] = v9;

    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  OUTLINED_FUNCTION_20();
}

Swift::String_optional __swiftcall TokenPhonemeData.getApgId()()
{

  v0 = OUTLINED_FUNCTION_6();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall TokenPhonemeData.getTtsData()()
{

  v0 = OUTLINED_FUNCTION_6();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::Int_optional __swiftcall TokenPhonemeData.getTokenOffset()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::String_optional __swiftcall TokenPhonemeData.getOrthography()()
{

  v0 = OUTLINED_FUNCTION_6();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_222D4D2E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449677061 && a2 == 0xE500000000000000;
  if (v4 || (sub_222D5305C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61746144737474 && a2 == 0xE700000000000000;
    if (v6 || (sub_222D5305C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x66664F6E656B6F74 && a2 == 0xEB00000000746573;
      if (v7 || (sub_222D5305C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6172676F6874726FLL && a2 == 0xEB00000000796870)
      {

        return 3;
      }

      else
      {
        v9 = sub_222D5305C();

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

uint64_t sub_222D4D440(char a1)
{
  result = 0x6449677061;
  switch(a1)
  {
    case 1:
      result = 0x61746144737474;
      break;
    case 2:
      result = 0x66664F6E656B6F74;
      break;
    case 3:
      result = 0x6172676F6874726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D4D4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D4D2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D4D508(uint64_t a1)
{
  v2 = sub_222D4DC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D4D544(uint64_t a1)
{
  v2 = sub_222D4DC24();

  return MEMORY[0x2821FE720](a1, v2);
}

void TokenPhonemeData.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_7();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C928, &qword_222D59070);
  OUTLINED_FUNCTION_113();
  v29 = v28;
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v30);
  v32 = &v47 - v31;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_222D4DC24();
  sub_222D5318C();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    LOBYTE(v54[0]) = 0;
    OUTLINED_FUNCTION_21_8();
    v33 = sub_222D52EDC();
    v35 = v34;
    v50 = v33;
    LOBYTE(v54[0]) = 1;
    OUTLINED_FUNCTION_21_8();
    *&v49 = sub_222D52EDC();
    *(&v49 + 1) = v36;
    LOBYTE(v54[0]) = 2;
    OUTLINED_FUNCTION_21_8();
    v48 = sub_222D52F0C();
    v60 = v37 & 1;
    v38 = sub_222D52EDC();
    v39 = v32;
    v41 = v40;
    (*(v29 + 8))(v39, v27);
    v42 = v50;
    *&v51[0] = v50;
    *(&v51[0] + 1) = v35;
    v43 = v48;
    v44 = v49;
    v51[1] = v49;
    *&v52 = v48;
    HIDWORD(v47) = v60;
    BYTE8(v52) = v60;
    *&v53 = v38;
    *(&v53 + 1) = v41;
    v45 = v49;
    *v26 = v51[0];
    v26[1] = v45;
    v46 = v53;
    v26[2] = v52;
    v26[3] = v46;
    sub_222D4DC78(v51, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v54[0] = v42;
    v54[1] = v35;
    v55 = __PAIR128__(*(&v49 + 1), v44);
    v56 = v43;
    v57 = BYTE4(v47);
    v58 = v38;
    v59 = v41;
    sub_222D4DCB0(v54);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_222D4D814(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_222D4D874(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_222D4D8B4()
{
  result = qword_27D03C8C8;
  if (!qword_27D03C8C8)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for PhonemeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C8C8);
  }

  return result;
}

unint64_t sub_222D4D908()
{
  result = qword_27D03C8D8;
  if (!qword_27D03C8D8)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C8D0, &qword_222D59050);
    v4 = sub_222D4D994();
    v5[0] = MEMORY[0x277D83808];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83528], v3, v5);
    atomic_store(result, &qword_27D03C8D8);
  }

  return result;
}

unint64_t sub_222D4D994()
{
  result = qword_27D03C8E0;
  if (!qword_27D03C8E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhonemeDataLocaleEntry, &type metadata for PhonemeDataLocaleEntry, v0, v1);
    atomic_store(result, &qword_27D03C8E0);
  }

  return result;
}

unint64_t sub_222D4D9E8()
{
  result = qword_27D03C8F0;
  if (!qword_27D03C8F0)
  {
    result = swift_getWitnessTable(byte_222D59664, &unk_283623AF8, v0, v1);
    atomic_store(result, &qword_27D03C8F0);
  }

  return result;
}

unint64_t sub_222D4DA3C()
{
  result = qword_27D03C8F8;
  if (!qword_27D03C8F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TokenPhonemeDataList, &type metadata for TokenPhonemeDataList, v0, v1);
    atomic_store(result, &qword_27D03C8F8);
  }

  return result;
}

unint64_t sub_222D4DAF8()
{
  result = qword_27D03C908;
  if (!qword_27D03C908)
  {
    result = swift_getWitnessTable(byte_222D59614, &type metadata for TokenPhonemeDataList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C908);
  }

  return result;
}

unint64_t sub_222D4DB4C()
{
  result = qword_27D03C918;
  if (!qword_27D03C918)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C910, &qword_222D59068);
    v4[0] = sub_222D4DBD0();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27D03C918);
  }

  return result;
}

unint64_t sub_222D4DBD0()
{
  result = qword_27D03C920;
  if (!qword_27D03C920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TokenPhonemeData, &type metadata for TokenPhonemeData, v0, v1);
    atomic_store(result, &qword_27D03C920);
  }

  return result;
}

unint64_t sub_222D4DC24()
{
  result = qword_27D03C930;
  if (!qword_27D03C930)
  {
    result = swift_getWitnessTable("e N_Hz", &type metadata for TokenPhonemeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C930);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_222D4DCF4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_222D4DD34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriDialogEngine20TokenPhonemeDataListVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222D4DD98(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_222D4DDEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
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

uint64_t sub_222D4DE70(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_222D4DEB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222D4DEFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_222D4DF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TokenPhonemeData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_222D4E0AC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_222D4E184(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D4E264()
{
  result = qword_27D03C938;
  if (!qword_27D03C938)
  {
    result = swift_getWitnessTable(byte_222D5933C, &type metadata for PhonemeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C938);
  }

  return result;
}

unint64_t sub_222D4E2BC()
{
  result = qword_27D03C940;
  if (!qword_27D03C940)
  {
    result = swift_getWitnessTable(byte_222D5942C, &unk_283623AF8, v0, v1);
    atomic_store(result, &qword_27D03C940);
  }

  return result;
}

unint64_t sub_222D4E314()
{
  result = qword_27D03C948;
  if (!qword_27D03C948)
  {
    result = swift_getWitnessTable(byte_222D594E4, &type metadata for TokenPhonemeDataList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C948);
  }

  return result;
}

unint64_t sub_222D4E36C()
{
  result = qword_27D03C950;
  if (!qword_27D03C950)
  {
    result = swift_getWitnessTable("-\vN_pz", &type metadata for TokenPhonemeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C950);
  }

  return result;
}

unint64_t sub_222D4E3C4()
{
  result = qword_27D03C958;
  if (!qword_27D03C958)
  {
    result = swift_getWitnessTable(byte_222D5950C, &type metadata for TokenPhonemeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C958);
  }

  return result;
}

unint64_t sub_222D4E41C()
{
  result = qword_27D03C960;
  if (!qword_27D03C960)
  {
    result = swift_getWitnessTable(byte_222D59534, &type metadata for TokenPhonemeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C960);
  }

  return result;
}

unint64_t sub_222D4E474()
{
  result = qword_27D03C968;
  if (!qword_27D03C968)
  {
    result = swift_getWitnessTable(aMN_2, &type metadata for TokenPhonemeDataList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C968);
  }

  return result;
}

unint64_t sub_222D4E4CC()
{
  result = qword_27D03C970;
  if (!qword_27D03C970)
  {
    result = swift_getWitnessTable(asc_222D5947C, &type metadata for TokenPhonemeDataList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C970);
  }

  return result;
}

unint64_t sub_222D4E524()
{
  result = qword_27D03C978;
  if (!qword_27D03C978)
  {
    result = swift_getWitnessTable(asc_222D59364, &unk_283623AF8, v0, v1);
    atomic_store(result, &qword_27D03C978);
  }

  return result;
}

unint64_t sub_222D4E57C()
{
  result = qword_27D03C980;
  if (!qword_27D03C980)
  {
    result = swift_getWitnessTable(aM, &unk_283623AF8, v0, v1);
    atomic_store(result, &qword_27D03C980);
  }

  return result;
}

unint64_t sub_222D4E5D4()
{
  result = qword_27D03C988;
  if (!qword_27D03C988)
  {
    result = swift_getWitnessTable(byte_222D592AC, &type metadata for PhonemeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C988);
  }

  return result;
}

unint64_t sub_222D4E62C()
{
  result = qword_27D03C990;
  if (!qword_27D03C990)
  {
    result = swift_getWitnessTable(byte_222D592D4, &type metadata for PhonemeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C990);
  }

  return result;
}

unint64_t sub_222D4E680(uint64_t a1, uint64_t a2)
{
  result = qword_27D03C998;
  if (!qword_27D03C998)
  {
    v5 = sub_222D521AC();
    result = swift_getWitnessTable(MEMORY[0x277CC97B0], v5, v2, v3);
    atomic_store(result, &qword_27D03C998);
  }

  return result;
}

unint64_t sub_222D4E708(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    OUTLINED_FUNCTION_5_20();
    result = sub_222D52A0C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_222D52AEC();
      OUTLINED_FUNCTION_0_26();

      return OUTLINED_FUNCTION_1_23();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222D4E7C0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_20();
    result = sub_222D52CEC();
    if (v2)
    {
      result = v1;
    }

    if (v1 >> 14 >= result >> 14)
    {
      OUTLINED_FUNCTION_8_14(result, v1);
      OUTLINED_FUNCTION_0_26();

      return OUTLINED_FUNCTION_1_23();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222D4E844(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_222CF78D4(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_222D4F100(result, v3, a2);
      OUTLINED_FUNCTION_0_26();

      return OUTLINED_FUNCTION_1_23();
    }
  }

  __break(1u);
  return result;
}

SiriDialogEngine::SpeakableString __swiftcall SpeakableString.init(print:speak:)(Swift::String print, Swift::String_optional speak)
{
  object = print._object;
  countAndFlagsBits = print._countAndFlagsBits;
  v5 = v2;
  if (!speak.value._object)
  {

    OUTLINED_FUNCTION_5_20();
  }

  v5->value._countAndFlagsBits = countAndFlagsBits;
  v5->value._object = object;
  v5[1] = speak;
  result.speak = speak.value;
  result.print = print;
  return result;
}

SiriDialogEngine::SpeakableString __swiftcall SpeakableString.init(serializedValue:)(Swift::String serializedValue)
{
  object = serializedValue._object;
  countAndFlagsBits = serializedValue._countAndFlagsBits;
  v4 = v1;
  OUTLINED_FUNCTION_5_20();
  if (sub_222D52A9C())
  {
    OUTLINED_FUNCTION_5_20();
    if (sub_222D52AAC())
    {
      if (qword_280D3BDF8 != -1)
      {
        swift_once();
      }

      v36 = v4;
      sub_222D4E708(qword_280D3DDD0, countAndFlagsBits, object);
      OUTLINED_FUNCTION_0_26();
      if (qword_280D3BDF0 != -1)
      {
        swift_once();
      }

      v5 = sub_222D4EBF4(qword_280D3DDC8);
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = v7 >> 14;
      object = 0x3A7374742FLL;
      while (1)
      {
        v14 = v5;
        v4 = (v5 >> 14);
        if (v5 >> 14 >= v13)
        {
          countAndFlagsBits = MEMORY[0x223DCB480](v6, v8, v10, v12);
          object = v25;

          v23 = countAndFlagsBits;
          v24 = object;
          v4 = v36;
          goto LABEL_12;
        }

        v15 = OUTLINED_FUNCTION_2_24(v5, v8);
        countAndFlagsBits = v16;
        v18 = sub_222D4EFC0(0x3A7374742FLL, 0xE500000000000000, v15, v17);

        if (v18)
        {
          break;
        }

        v5 = sub_222D52CCC();
      }

      if (v4 < v6 >> 14)
      {
        __break(1u);
      }

      else
      {

        v26 = OUTLINED_FUNCTION_2_24(v6, v14);
        v28 = v27;
        v30 = v29;
        v32 = v31;

        countAndFlagsBits = MEMORY[0x223DCB480](v26, v28, v30, v32);
        object = v33;

        OUTLINED_FUNCTION_2_24(v14, v8);

        v4 = v36;
        if (qword_280D3BDE8 == -1)
        {
LABEL_16:
          v34 = sub_222D4E7C0(qword_280D3DDC0);
          v23 = MEMORY[0x223DCB480](v34);
          v24 = v35;

          goto LABEL_12;
        }
      }

      swift_once();
      goto LABEL_16;
    }
  }

  v23 = countAndFlagsBits;
  v24 = object;
LABEL_12:
  *v4 = countAndFlagsBits;
  v4[1] = object;
  v4[2] = v23;
  v4[3] = v24;
  result.speak._object = v22;
  result.speak._countAndFlagsBits = v21;
  result.print._object = v20;
  result.print._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_222D4EBF4(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_20();
    result = sub_222D52CEC();
    if (v2)
    {
      v3 = v1;
    }

    else
    {
      v3 = result;
    }

    if (v3 >> 14 >= v1 >> 14)
    {
      OUTLINED_FUNCTION_8_14(v1, v3);
      OUTLINED_FUNCTION_0_26();

      return OUTLINED_FUNCTION_1_23();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222D4EC7C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_222D52A0C();
    sub_222D52AEC();
    OUTLINED_FUNCTION_0_26();

    return OUTLINED_FUNCTION_1_23();
  }

  return result;
}

uint64_t static SpeakableString.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_222D5305C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_222D5305C();
    }
  }

  return result;
}

uint64_t sub_222D4EDC8()
{
  result = sub_222D529EC();
  qword_280D3DDD0 = result;
  return result;
}

uint64_t sub_222D4EDF4()
{
  result = sub_222D529EC();
  qword_280D3DDC8 = result;
  return result;
}

uint64_t sub_222D4EE1C()
{
  result = sub_222D529EC();
  qword_280D3DDC0 = result;
  return result;
}

uint64_t SpeakableString.print.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SpeakableString.speak.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

SiriDialogEngine::SpeakableString __swiftcall SpeakableString.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  return result;
}

uint64_t SpeakableString.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_7_13();
  sub_222D5317C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_7_13();
    v5._countAndFlagsBits = sub_222D5306C();
    SpeakableString.init(serializedValue:)(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t String.toSpeakableString.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = a1;
  a3[3] = a2;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_222D4EFC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  v6 = a3;
  while ((v6 ^ a4) >= 0x4000)
  {
    OUTLINED_FUNCTION_4_25();
    v7 = sub_222D52D1C();
    v9 = v8;
    OUTLINED_FUNCTION_4_25();
    v6 = sub_222D52CCC();
    v10 = sub_222D52A2C();
    if (!v11)
    {

      return 1;
    }

    if (v7 == v10 && v11 == v9)
    {
    }

    else
    {
      v13 = sub_222D5305C();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  sub_222D52A2C();
  v15 = v14;

  if (!v15)
  {
    return 1;
  }

LABEL_15:

  return 0;
}

unint64_t sub_222D4F100(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_222D4F16C()
{
  OUTLINED_FUNCTION_14_2();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t static CATResponse.executeDialog(templateDir:catId:parameters:globals:callback:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[7] = a5;
  v7[8] = a6;
  v7[5] = a3;
  v7[6] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v7[9] = *a7;
  return OUTLINED_FUNCTION_0_27();
}

uint64_t sub_222D4F1EC()
{
  OUTLINED_FUNCTION_19_10();
  type metadata accessor for CATExecutor();
  OUTLINED_FUNCTION_11_9();
  v2 = v1;
  *(v0 + 80) = v1;
  if (v3)
  {
    swift_willThrow();

LABEL_3:
    OUTLINED_FUNCTION_13();

    return v4();
  }

  if (!v1)
  {
    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_7_14("CATResponse: executor object is nil");
    swift_willThrow();
    goto LABEL_3;
  }

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_17_7(v6);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  sub_222CF279C();
  *v7 = v0;
  v7[1] = sub_222D4F390;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_222D4F390()
{
  OUTLINED_FUNCTION_14_2();
  v2 = *v1;
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

double sub_222D4F4CC@<D0>(_OWORD *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC16SiriDialogEngineP33_0765C0C49696B08FD742D29DC8B43ED916CATParamsWrapper_mCatParams);
  v6 = sub_222D528FC();
  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_222D52D6C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_222D4F70C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CATParamsWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static CATResponse.executePattern(bundle:patternId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v8 = OUTLINED_FUNCTION_5_21(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_9_13(v8);
  v1[11] = v9;
  v10 = OUTLINED_FUNCTION_25_8();
  v11 = *v0;
  v1[12] = v10;
  v1[13] = v11;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

id sub_222D4F7E4()
{
  OUTLINED_FUNCTION_15_10();
  v1 = *(v0 + 24);
  [objc_opt_self() registerBundle_];
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    sub_222D5292C();
    OUTLINED_FUNCTION_24_9();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_18_11();
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_16_6(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_1_24(v4);

    return static CATResponse.executePattern(templateDir:patternId:parameters:globals:callback:options:)(v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D4F8E0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_15();
  v4 = v3;
  OUTLINED_FUNCTION_3_22();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_5();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  OUTLINED_FUNCTION_4_26();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t static CATResponse.executeDialog(bundle:catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v8 = OUTLINED_FUNCTION_5_21(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_9_13(v8);
  v1[11] = v9;
  v10 = OUTLINED_FUNCTION_25_8();
  v11 = *v0;
  v1[12] = v10;
  v1[13] = v11;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

id sub_222D4FAC8()
{
  OUTLINED_FUNCTION_15_10();
  v1 = *(v0 + 24);
  [objc_opt_self() registerBundle_];
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    sub_222D5292C();
    OUTLINED_FUNCTION_24_9();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_18_11();
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_16_6(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_1_24(v4);

    return static CATResponse.executeDialog(templateDir:catId:parameters:globals:callback:options:)(v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D4FBC4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_15();
  v4 = v3;
  OUTLINED_FUNCTION_3_22();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_5();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  OUTLINED_FUNCTION_4_26();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t static CATResponse.executeDialog(catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v3 = v2;
  v1[7] = v4;
  v1[8] = v0;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v9 = sub_222D5210C();
  v1[9] = v9;
  v1[10] = *(v9 - 8);
  v10 = OUTLINED_FUNCTION_25_8();
  v11 = *v3;
  v1[11] = v10;
  v1[12] = v11;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void *sub_222D4FD88()
{
  OUTLINED_FUNCTION_15_10();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v0[13] = v2;
  [objc_opt_self() registerBundle_];
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v4 = result;
    sub_222D5292C();
    OUTLINED_FUNCTION_24_9();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_18_11();
    v5 = swift_task_alloc();
    v6 = OUTLINED_FUNCTION_16_6(v5);
    *v6 = v7;
    v6[1] = sub_222D4FED4;
    v8 = v0[11];
    v9 = v0[6];
    v10 = v0[7];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];

    return static CATResponse.executeDialog(templateDir:catId:parameters:globals:callback:options:)(v8, v13, v11, v12, v9, v10, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D4FED4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_15();
  v4 = v3;
  OUTLINED_FUNCTION_3_22();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_5();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  OUTLINED_FUNCTION_4_26();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t static CATResponse.executeVisual(templateDir:visualCatId:parameters:globals:callback:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[7] = a5;
  v7[8] = a6;
  v7[5] = a3;
  v7[6] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v7[9] = *a7;
  return OUTLINED_FUNCTION_0_27();
}

uint64_t sub_222D4FFFC()
{
  if (qword_280D3DB38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_19_10();
  type metadata accessor for CATExecutor();
  OUTLINED_FUNCTION_11_9();
  v2 = v1;
  *(v0 + 80) = v1;
  if (v3)
  {
    swift_willThrow();

LABEL_5:
    OUTLINED_FUNCTION_13();

    return v4();
  }

  if (!v1)
  {
    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_7_14("CATResponse: executor object is nil");
    swift_willThrow();
    goto LABEL_5;
  }

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_17_7(v6);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  sub_222CF279C();
  *v7 = v0;
  v7[1] = sub_222D501E8;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_222D501E8()
{
  OUTLINED_FUNCTION_14_2();
  v2 = *v1;
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_222D502EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
  OUTLINED_FUNCTION_113();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, a1, v12);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v14 + 32))(v19 + v18, v17, v12);
  aBlock[4] = a6;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222CE3BA4;
  aBlock[3] = a7;
  v20 = _Block_copy(aBlock);

  [v22 executeWithCompletionBlock_];
  _Block_release(v20);
}

uint64_t sub_222D504E4(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATResultProvider();
  sub_222D0C8D4(a1, a2, a3);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
    return sub_222D52B9C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
    return sub_222D52BAC();
  }
}

uint64_t static CATResponse.executeVisual(bundle:visualCatId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v8 = OUTLINED_FUNCTION_5_21(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_9_13(v8);
  v1[11] = v9;
  v10 = OUTLINED_FUNCTION_25_8();
  v11 = *v0;
  v1[12] = v10;
  v1[13] = v11;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

id sub_222D50638()
{
  OUTLINED_FUNCTION_15_10();
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    sub_222D5292C();
    OUTLINED_FUNCTION_24_9();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_18_11();
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_16_6(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_1_24(v3);

    return static CATResponse.executeVisual(templateDir:visualCatId:parameters:globals:callback:options:)(v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
  OUTLINED_FUNCTION_113();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_222D508A0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = MEMORY[0x277D84F90];
  v44 = 4 * v6;
  v8 = 15;
  while (1)
  {
    if (v44 <= v8 >> 14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
      OUTLINED_FUNCTION_1_25();
      sub_222D50C94(v32, v33, &qword_222D560C0, v34);
      v35 = sub_222D528DC();

      return v35;
    }

    if (!v4)
    {
      break;
    }

    v9 = sub_222D528FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA18, &qword_222D59888);
    v10 = sub_222D50C94(&unk_27D03CA20, &qword_27D03CA18, &qword_222D59888, MEMORY[0x277D84338]);
    sub_222CE0BD0(v10, v11, v12);
    v13 = sub_222D52C9C();
    v15 = [v4 firstMatchInString:v9 options:4 range:{v13, v14}];

    if (!v15)
    {
      break;
    }

    [v15 range];
    sub_222D52BEC();
    if (v17)
    {

      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280D3DB78);
      }

      v38 = qword_280D3DB80;
      v39 = sub_222D52C3C();
      sub_222D5280C("Match range for phoneme regex match was nil", 43, 2, &dword_222CDA000, v38, v39, MEMORY[0x277D84F90]);
      goto LABEL_26;
    }

    v8 = v16;
    v18 = sub_222D52AEC();
    v19 = MEMORY[0x223DCB480](v18);
    v21 = v20;

    if (!*(a3 + 16))
    {

LABEL_23:

      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280D3DB78);
      }

      v40 = qword_280D3DB80;
      v41 = sub_222D52C3C();
      sub_222D5280C("Token cannot be converted.", 26, 2, &dword_222CDA000, v40, v41, MEMORY[0x277D84F90]);
LABEL_26:

      return 0;
    }

    v22 = sub_222CE1050(v19, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }

    v25 = (*(a3 + 56) + 16 * v22);
    v26 = *v25;
    v27 = v25[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_222D28358();
      v7 = v30;
    }

    v28 = *(v7 + 16);
    if (v28 >= *(v7 + 24) >> 1)
    {
      sub_222D28358();
      v7 = v31;
    }

    *(v7 + 16) = v28 + 1;
    v29 = v7 + 16 * v28;
    *(v29 + 32) = v26;
    *(v29 + 40) = v27;
    v4 = a4;
  }

  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  v36 = qword_280D3DB80;
  v37 = sub_222D52C3C();
  sub_222D5280C("Token cannot be converted.", 26, 2, &dword_222CDA000, v36, v37, MEMORY[0x277D84F90]);
  return 0;
}

uint64_t sub_222D50C94(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

id sub_222D50CDC(uint64_t a1)
{

  v27 = sub_222D5109C(v1);
  sub_222D51030(&v27);
  v2 = v27;
  v3 = *(v27 + 16);
  v4 = 0x277CCA000uLL;
  if (v3)
  {
    v27 = MEMORY[0x277D84F90];
    sub_222CEA040(0, v3, 0);
    v5 = v27;
    v6 = objc_opt_self();
    v7 = v2 + 40;
    do
    {

      v8 = sub_222D528FC();
      v9 = [v6 escapedPatternForString_];

      v10 = sub_222D5292C();
      v12 = v11;

      v27 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_222CEA040((v13 > 1), v14 + 1, 1);
        v5 = v27;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v7 += 16;
      --v3;
    }

    while (v3);

    v4 = 0x277CCA000;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v27 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
  OUTLINED_FUNCTION_1_25();
  sub_222D50C94(v16, v17, &qword_222D560C0, v18);
  v19 = sub_222D528DC();
  v21 = v20;

  v27 = 40;
  v28 = 0xE100000000000000;
  MEMORY[0x223DCB4F0](v19, v21);

  MEMORY[0x223DCB4F0](41, 0xE100000000000000);
  v22 = v27;
  v23 = v28;
  v24 = objc_allocWithZone(*(v4 + 3176));
  v25 = sub_222D50F54(v22, v23, 0);

  return v25;
}

id sub_222D50F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_222D528FC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_222D5207C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_222D51030(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_222D51EC8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_222D51158(v5);
  *a1 = v2;
  return result;
}

void *sub_222D5109C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_222D28868(*(a1 + 16), 0);
  v4 = sub_222D51D64(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_222D51EC0(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_222D51158(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_222D5302C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_222D52B6C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_222D51350(v7, v8, a1, v4);
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
    return sub_222D5124C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_222D5124C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
    while (2)
    {
      v14 = v7;
      v15 = v6;
      do
      {

        v8 = sub_222D529EC();
        v9 = sub_222D529EC();

        if (v9 >= v8)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v10 = *v6;
        v11 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 1) = v11;
        *(v6 - 2) = v10;
        v6 -= 2;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v15 + 2;
      v7 = v14 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_222D51350(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v84 = (v8 + 16);
      v85 = *(v8 + 16);
      while (v85 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v86 = v8;
        v87 = (v8 + 16 * v85);
        v88 = *v87;
        v89 = &v84[2 * v85];
        v8 = v89[1];
        sub_222D519FC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v8), v102);
        if (v5)
        {
          break;
        }

        if (v8 < v88)
        {
          goto LABEL_117;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_118;
        }

        *v87 = v88;
        v87[1] = v8;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_119;
        }

        v85 = *v84 - 1;
        memmove(v89, v89 + 2, 16 * v90);
        *v84 = v85;
        v8 = v86;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v8 = sub_222D51C50(v8);
    goto LABEL_93;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v92 = v8;
      v93 = v5;
      v8 = *(*a3 + 16 * v10 + 8);
      v11 = *a3 + 16 * v7;
      v97 = 16 * v7;
      v5 = *(v11 + 8);

      v102 = sub_222D529EC();
      v99 = sub_222D529EC();

      v12 = v11 + 24;
      v13 = v9 + 2;
      while (1)
      {
        v14 = v13;
        if (++v10 >= v6)
        {
          break;
        }

        v15 = v12 + 16;
        v8 = *(v12 + 16);

        v16 = sub_222D529EC();
        v5 = sub_222D529EC();

        v13 = v14 + 1;
        v12 = v15;
        if (v99 < v102 == v5 >= v16)
        {
          goto LABEL_9;
        }
      }

      v10 = v6;
LABEL_9:
      if (v99 >= v102)
      {
        v8 = v92;
        v5 = v93;
      }

      else
      {
        v17 = v9;
        if (v10 < v9)
        {
          goto LABEL_123;
        }

        if (v9 >= v10)
        {
          v8 = v92;
          v5 = v93;
        }

        else
        {
          if (v6 >= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v6;
          }

          v19 = 16 * v18;
          v20 = v10;
          v8 = v92;
          v5 = v93;
          v21 = v97;
          do
          {
            if (v17 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v23 = (v22 + v21);
              v24 = v22 + v19;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v17;
            v19 -= 16;
            v21 += 16;
          }

          while (v17 < v20);
        }
      }
    }

    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_122;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_222D28794();
      v8 = v82;
    }

    v39 = *(v8 + 16);
    v40 = v39 + 1;
    if (v39 >= *(v8 + 24) >> 1)
    {
      sub_222D28794();
      v8 = v83;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v39);
    *v42 = v9;
    v42[1] = v10;
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    v102 = v10;
    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        v44 = (v41 + 16 * (v40 - 1));
        v45 = (v8 + 16 * v40);
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v46 = *(v8 + 32);
          v47 = *(v8 + 40);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_59:
          if (v49)
          {
            goto LABEL_108;
          }

          v61 = *v45;
          v60 = v45[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_111;
          }

          v65 = v44[1];
          v66 = v65 - *v44;
          if (__OFSUB__(v65, *v44))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v63, v66))
          {
            goto LABEL_116;
          }

          if (v63 + v66 >= v48)
          {
            if (v48 < v66)
            {
              v43 = v40 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v40 < 2)
        {
          goto LABEL_110;
        }

        v68 = *v45;
        v67 = v45[1];
        v56 = __OFSUB__(v67, v68);
        v63 = v67 - v68;
        v64 = v56;
LABEL_74:
        if (v64)
        {
          goto LABEL_113;
        }

        v70 = *v44;
        v69 = v44[1];
        v56 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v56)
        {
          goto LABEL_115;
        }

        if (v71 < v63)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v75 = v8;
        v76 = (v41 + 16 * (v43 - 1));
        v77 = *v76;
        v78 = v43;
        v8 = v41 + 16 * v43;
        v79 = *(v8 + 8);
        sub_222D519FC((*a3 + 16 * *v76), (*a3 + 16 * *v8), (*a3 + 16 * v79), v101);
        if (v5)
        {
          goto LABEL_101;
        }

        if (v79 < v77)
        {
          goto LABEL_103;
        }

        v5 = *(v75 + 16);
        if (v78 > v5)
        {
          goto LABEL_104;
        }

        *v76 = v77;
        v76[1] = v79;
        if (v78 >= v5)
        {
          goto LABEL_105;
        }

        v80 = v78;
        v40 = v5 - 1;
        memmove(v8, (v8 + 16), 16 * (v5 - 1 - v80));
        v8 = v75;
        *(v75 + 16) = v5 - 1;
        v81 = v5 > 2;
        v5 = 0;
        if (!v81)
        {
          goto LABEL_88;
        }
      }

      v50 = v41 + 16 * v40;
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_106;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_107;
      }

      v57 = v45[1];
      v58 = v57 - *v45;
      if (__OFSUB__(v57, *v45))
      {
        goto LABEL_109;
      }

      v56 = __OFADD__(v48, v58);
      v59 = v48 + v58;
      if (v56)
      {
        goto LABEL_112;
      }

      if (v59 >= v53)
      {
        v73 = *v44;
        v72 = v44[1];
        v56 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v74)
        {
          v43 = v40 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v6 = a3[1];
    v7 = v10;
    if (v10 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_124;
  }

  if (v28 >= v27)
  {
    v28 = a3[1];
  }

  if (v28 < v9)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v10 == v28)
  {
    goto LABEL_39;
  }

  v94 = v5;
  v29 = *a3;
  v30 = *a3 + 16 * v10;
  v95 = v9;
  v31 = v9 - v10;
  v98 = v28;
LABEL_32:
  v100 = v30;
  v102 = v10;
  v32 = v31;
  v33 = v30;
  while (1)
  {

    v34 = sub_222D529EC();
    v35 = sub_222D529EC();

    if (v35 >= v34)
    {
LABEL_37:
      ++v10;
      v30 = v100 + 16;
      --v31;
      if (v102 + 1 == v98)
      {
        v10 = v98;
        v5 = v94;
        v9 = v95;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v29)
    {
      break;
    }

    v36 = *v33;
    v37 = v33[1];
    *v33 = *(v33 - 1);
    *(v33 - 1) = v37;
    *(v33 - 2) = v36;
    v33 -= 2;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_222D519FC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_222D289CC(a1, (a2 - a1) / 16, a4);
    for (i = &v4[16 * v8]; ; i = v12)
    {
      if (v4 >= i || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_27;
      }

      v12 = i;

      v13 = v6;
      v14 = sub_222D529EC();
      v15 = sub_222D529EC();

      if (v15 >= v14)
      {
        break;
      }

      v16 = v13;
      v6 = v13 + 16;
      if (v7 != v13)
      {
        goto LABEL_11;
      }

LABEL_12:
      v7 += 16;
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 16;
    v6 = v13;
    if (v17)
    {
      goto LABEL_12;
    }

LABEL_11:
    *v7 = *v16;
    goto LABEL_12;
  }

  sub_222D289CC(a2, (a3 - a2) / 16, a4);
  i = &v4[16 * v9];
  v30 = v4;
  v29 = v7;
LABEL_14:
  v18 = v6 - 16;
  v5 -= 16;
  while (i > v4 && v6 > v7)
  {
    v20 = i - 16;
    v21 = v6;
    v22 = i;

    v23 = sub_222D529EC();
    v24 = sub_222D529EC();

    v25 = v5 + 16;
    if (v24 < v23)
    {
      v17 = v25 == v21;
      v6 = v18;
      v7 = v29;
      i = v22;
      v4 = v30;
      if (!v17)
      {
        *v5 = *v18;
        v6 = v18;
      }

      goto LABEL_14;
    }

    if (v22 != v25)
    {
      *v5 = *v20;
    }

    v5 -= 16;
    i = v20;
    v7 = v29;
    v4 = v30;
    v6 = v21;
  }

LABEL_27:
  v26 = (i - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v26])
  {
    memmove(v6, v4, 16 * v26);
  }

  return 1;
}

char *sub_222D51C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3D0, &unk_222D567A0);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_222D51D64(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}