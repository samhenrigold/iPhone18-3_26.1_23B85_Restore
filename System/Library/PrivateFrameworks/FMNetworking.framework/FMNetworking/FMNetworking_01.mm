uint64_t sub_24A897C08(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790E0, &qword_24A8BC618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A898278();
  sub_24A8BB984();
  swift_beginAccess();
  v10[64] = 0;

  sub_24A8BB6E4();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    swift_beginAccess();
    v10[40] = 1;

    sub_24A8BB6E4();

    swift_beginAccess();
    v10[16] = 2;

    sub_24A8BB6E4();

    swift_beginAccess();
    v10[15] = *(v3 + 64);
    FMNAccountType.rawValue.getter();
    v10[14] = 3;
    sub_24A8BB6E4();
    (*(v6 + 8))(v8, v5);
  }
}

void *FMNAuthenticationCredential.deinit()
{

  return v0;
}

uint64_t FMNAuthenticationCredential.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

uint64_t sub_24A897F04()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_24A897F54(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t sub_24A898000(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
}

uint64_t sub_24A8980AC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 64);
  return result;
}

uint64_t sub_24A8980F4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
}

uint64_t sub_24A8981A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FMNAuthenticationCredential();
  v5 = swift_allocObject();
  result = FMNAuthenticationCredential.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24A89822C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A8BB624();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A898278()
{
  result = qword_27EF790D0;
  if (!qword_27EF790D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790D0);
  }

  return result;
}

unint64_t sub_24A8982CC()
{
  result = qword_27EF790D8;
  if (!qword_27EF790D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790D8);
  }

  return result;
}

unint64_t sub_24A898320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B0, &qword_24A8BC4E0);
    v3 = sub_24A8BB614();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A898C1C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24A88C87C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24A890B2C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s12FMNetworking27FMNAuthenticationCredentialC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (v6 || (sub_24A8BB804()) && ((swift_beginAccess(), v7 = a1[4], v8 = a1[5], swift_beginAccess(), v7 == a2[4]) && v8 == a2[5] || (sub_24A8BB804()) && ((swift_beginAccess(), v9 = a1[6], v10 = a1[7], swift_beginAccess(), v9 == a2[6]) && v10 == a2[7] || (sub_24A8BB804()))
  {
    swift_beginAccess();
    swift_beginAccess();
    v11 = FMNAccountType.rawValue.getter();
    v13 = v12;
    if (v11 == FMNAccountType.rawValue.getter() && v13 == v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_24A8BB804();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_24A89860C()
{
  result = qword_27EF790E8;
  if (!qword_27EF790E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMNAPSTokenProvidingError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FMNAPSTokenProvidingError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMNAuthenticationCredential.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNAuthenticationCredential.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A898B18()
{
  result = qword_27EF790F0;
  if (!qword_27EF790F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790F0);
  }

  return result;
}

unint64_t sub_24A898B70()
{
  result = qword_27EF790F8;
  if (!qword_27EF790F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790F8);
  }

  return result;
}

unint64_t sub_24A898BC8()
{
  result = qword_27EF79100;
  if (!qword_27EF79100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79100);
  }

  return result;
}

uint64_t sub_24A898C1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79108, &unk_24A8BC940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A898C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v52);
  v53 = (&v51 - v11);
  v12 = sub_24A8BAF24();
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v58 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v51 - v15;
  sub_24A886914(a1, v78);
  sub_24A886914(a2, v79);
  sub_24A883EEC(v78, &v65, &qword_27EF79160, &qword_24A8BC968);
  sub_24A883B44(&v65, v75);
  sub_24A883B44(v68, v74);
  v16 = sub_24A886978(v75);
  sub_24A886B10(v16, v73);
  v63 = v6;
  v64 = v16;
  v62 = v16;
  type metadata accessor for FMNHttpClient();
  sub_24A8BB424();
  v56 = 0;
  v17 = v65;
  sub_24A886914(v78, v71);
  sub_24A886914(v79, &v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
  swift_allocObject();
  v18 = sub_24A8BB1D4();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;

  sub_24A8BB184();

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;

  sub_24A8BB194();

  v21 = *(v6 + 16);
  v22 = *(v6 + 24);
  sub_24A883EEC(v71, &v67, &qword_27EF79160, &qword_24A8BC968);
  v23 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
  swift_beginAccess();
  v54 = v17;
  sub_24A883EEC(v17 + v23, &v69, &qword_27EF79120, &qword_24A8BC960);
  sub_24A883EEC(v73, v70, &qword_27EF79118, &unk_24A8BD720);
  swift_unknownObjectWeakInit();
  *(&v65 + 1) = v21;
  v66 = v22;
  swift_weakInit();
  v70[8] = v61;
  swift_unknownObjectRetain();
  v24 = sub_24A8A2F40(a3, a4, v18);
  sub_24A886D90(&v65, &qword_27EF79168, &unk_24A8BC970);
  sub_24A886D90(v71, &qword_27EF79160, &qword_24A8BC968);
  v25 = swift_allocObject();
  v25[2] = v6;
  v25[3] = v24;
  v25[4] = v18;
  v27 = v76;
  v26 = v77;
  __swift_project_boxed_opaque_existential_1(v75, v76);
  v28 = *(v26 + 16);
  v61 = v18;

  v29 = v24;
  v30 = v59;
  v55 = v29;

  v31 = v58;
  v32 = v27;
  v33 = v57;
  v34 = v26;
  v35 = v60;
  v28(v32, v34);
  v36 = v54;
  sub_24A888D88(v31, v73, v33);
  v37 = *(v30 + 8);
  v37(v31, v35);
  v38 = v56;
  sub_24A8AA108(v74, v33, sub_24A8995D4, v25);
  if (v38)
  {
    v37(v33, v35);
    v39 = sub_24A8BB3C4();
    sub_24A882E60();
    v40 = sub_24A8BB464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24A8BC300;
    swift_getErrorValue();
    v42 = sub_24A8BB8D4();
    v44 = v43;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_24A8897F0();
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    sub_24A8BB0B4(v39, &dword_24A881000, v40, "FMNServerInteractionController: Unable to request %@", 52, 2, v41);

    v45 = v53;
    *v53 = v38;
    swift_storeEnumTagMultiPayload();
    v46 = v38;
    v47 = sub_24A8BB3D4();
    v48 = sub_24A8BB464();
    sub_24A8BB0B4(v47, &dword_24A881000, v48, "Calling response handler's completion.", 38, 2, MEMORY[0x277D84F90]);

    v49 = v55;
    sub_24A88F02C(v45, v55, v61);

    sub_24A886D90(v45, &qword_27EF79110, &qword_24A8BDC50);
  }

  else
  {

    v37(v33, v35);
  }

  sub_24A886D90(v73, &qword_27EF79118, &unk_24A8BD720);
  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  sub_24A886D90(v78, &qword_27EF79160, &qword_24A8BC968);
  return __swift_destroy_boxed_opaque_existential_0Tm(v75);
}

uint64_t sub_24A89936C(void *a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v4);
  v6 = (v16 - v5);
  v7 = sub_24A8BB3C4();
  sub_24A882E60();
  v8 = sub_24A8BB464();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A8BC300;
  v16[1] = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79130, "VC");
  v11 = sub_24A8BB2A4();
  v13 = v12;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_24A8897F0();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_24A8BB0B4(v7, &dword_24A881000, v8, "Calling response handler's completion with error: %@.", 53, 2, v9);

  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v14 = a1;
  a2(v6);
  return sub_24A886D90(v6, &qword_27EF79110, &qword_24A8BDC50);
}

char *sub_24A899520@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  result = sub_24A888B10(a1);
  *a2 = result;
  return result;
}

unint64_t sub_24A899560()
{
  result = qword_2814AAA18;
  if (!qword_2814AAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAA18);
  }

  return result;
}

uint64_t FMNServerCommand.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A8BAFC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FMNServerCommand.data.getter()
{
  v1 = v0 + *(type metadata accessor for FMNServerCommand(0) + 20);
  v2 = *v1;
  sub_24A88C9AC(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for FMNServerCommand(uint64_t a1)
{
  result = qword_27EF79170;
  if (!qword_27EF79170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMNServerCommand.headers.getter()
{
  type metadata accessor for FMNServerCommand(0);
}

void sub_24A899734(uint64_t a1)
{
  sub_24A8BAFC4();
  if (v1 <= 0x3F)
  {
    sub_24A883CB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_24A8997C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = sub_24A8BAD74();
  v9 = sub_24A8BAF84();
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24A88D49C;
  v13[3] = &block_descriptor_0;
  v10 = _Block_copy(v13);

  v11 = [v7 uploadTaskWithRequest:v8 fromFile:v9 completionHandler:v10];

  _Block_release(v10);

  return v11;
}

FMNetworking::FMNAccountType_optional __swiftcall FMNAccountType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = rawValue._countAndFlagsBits == 6712678 && rawValue._object == 0xE300000000000000;
  if (v4 || (countAndFlagsBits = rawValue._countAndFlagsBits, (sub_24A8BB804() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x707041666D66 && object == 0xE600000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 1885957478 && object == 0xE400000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x6972695370696D66 && object == 0xE800000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x7075746573 && object == 0xE500000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x6150686372616573 && object == 0xEB00000000797472 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0x4C676E6972696170 && object == 0xEB000000006B636FLL || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 6;
  }

  else if (countAndFlagsBits == 0x726F737365636361 && object == 0xE900000000000079 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 7;
  }

  else if (countAndFlagsBits == 0xD000000000000013 && 0x800000024A8BF270 == object || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 8;
  }

  else if (countAndFlagsBits == 0x7373656363413277 && object == 0xEB0000000079726FLL || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 9;
  }

  else if (countAndFlagsBits == 0xD000000000000014 && 0x800000024A8BF290 == object || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 10;
  }

  else if (countAndFlagsBits == 0x6F4C657275636573 && object == 0xEF736E6F69746163 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 11;
  }

  else if (countAndFlagsBits == 0xD000000000000014 && 0x800000024A8BF2B0 == object || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 12;
  }

  else if (countAndFlagsBits == 0x726168536D657469 && object == 0xEB00000000676E69 || (sub_24A8BB804() & 1) != 0)
  {

    v7 = 13;
  }

  else if (countAndFlagsBits == 1701736302 && object == 0xE400000000000000)
  {

    v7 = 14;
  }

  else
  {
    v8 = sub_24A8BB804();

    if (v8)
    {
      v7 = 14;
    }

    else
    {
      v7 = 15;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24A899DA4()
{
  v0 = sub_24A8BB934();
  FMNAccountType.description.getter(v0);
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A899E0C(uint64_t a1)
{
  FMNAccountType.description.getter(a1);
  sub_24A8BB2C4();
}

uint64_t sub_24A899E70(uint64_t a1)
{
  v1 = sub_24A8BB934();
  FMNAccountType.description.getter(v1);
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A899ED4(uint64_t a1)
{
  v1 = FMNAccountType.description.getter(a1);
  v3 = v2;
  if (v1 == FMNAccountType.description.getter(v1) && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_24A8BB804();
  }

  return v6 & 1;
}

uint64_t sub_24A899F7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FMNAccountType.description.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FMNAuthenticationProviderError.hashValue.getter()
{
  v1 = *v0;
  sub_24A8BB934();
  MEMORY[0x24C21EF50](v1);
  return sub_24A8BB954();
}

uint64_t sub_24A89A030()
{
  v1 = *v0;
  sub_24A8BB934();
  MEMORY[0x24C21EF50](v1);
  return sub_24A8BB954();
}

uint64_t sub_24A89A078(uint64_t a1)
{
  v2 = *v1;
  sub_24A8BB934();
  MEMORY[0x24C21EF50](v2);
  return sub_24A8BB954();
}

FMNetworking::FMNAuthenticationOverride_optional __swiftcall FMNAuthenticationOverride.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A8BB624();

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

unint64_t FMNAuthenticationOverride.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_24A89A158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = "Id";
  }

  else
  {
    v4 = "FMNetworking.fmip.token";
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (*a2)
  {
    v6 = "FMNetworking.fmip.token";
  }

  else
  {
    v6 = "Id";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A8BB804();
  }

  return v8 & 1;
}

uint64_t sub_24A89A200()
{
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A89A27C(uint64_t a1)
{
  sub_24A8BB2C4();
}

uint64_t sub_24A89A2E4(uint64_t a1)
{
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A89A35C@<X0>(char *a2@<X8>)
{
  v3 = sub_24A8BB624();

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

  *a2 = v5;
  return result;
}

void sub_24A89A3BC(unint64_t *a1@<X8>)
{
  v2 = "FMNetworking.fmip.token";
  v3 = 0xD000000000000016;
  if (!*v1)
  {
    v3 = 0xD000000000000017;
    v2 = "Id";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_24A89A42C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t FMNAuthenticationProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  FMNAuthenticationProvider.init()();
  return v0;
}

void sub_24A89A4F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a2)
  {
    sub_24A89C6F4();
    v4 = swift_allocError();
    *v5 = 4;
    (a3)(0, v4);
  }

  else
  {
    (a3)(a1);
  }
}

uint64_t sub_24A89A588(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24A8BB0D4();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A8BB104();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    v22 = v16;
    swift_once();
    v16 = v22;
  }

  v17 = MEMORY[0x277D84F90];
  sub_24A8BB0B4(v16, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: credentialDidFail", 44, 2, MEMORY[0x277D84F90]);
  v23 = *(v5 + 24);
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a1;
  v18[6] = a2;
  aBlock[4] = sub_24A89BBE4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_12;
  v19 = _Block_copy(aBlock);

  v20 = a2;
  sub_24A8BB0F4();
  v26 = v17;
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v15, v12, v19);
  _Block_release(v19);
  (*(v25 + 8))(v12, v10);
  (*(v13 + 8))(v15, v24);
}

void sub_24A89A8E0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5)
{
  *(a1 + 56) = 0;

  v10 = sub_24A8844D8();
  v11 = [v10 aa_primaryAppleAccount];

  if (v11)
  {
    swift_beginAccess();
    v16 = *(a4 + 64);

    sub_24A89CE14(v11, &v16, a5, a1, a2, a3);
  }

  else
  {
    v12 = sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      v15 = v12;
      swift_once();
      v12 = v15;
    }

    sub_24A8BB0B4(v12, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider credentialDidFail: error retrieving primary account", 77, 2, MEMORY[0x277D84F90]);
    sub_24A89C6F4();
    v13 = swift_allocError();
    *v14 = 0;
    (a2)();
  }
}

uint64_t sub_24A89AA7C(void *a1, uint64_t (*a2)(void *))
{
  if (a1)
  {
    v4 = sub_24A8BB3C4();
    if (qword_2814AB038 != -1)
    {
      swift_once();
    }

    v5 = qword_2814AB698;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24A8BC300;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
    v8 = sub_24A8BB2A4();
    v10 = v9;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_24A8897F0();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    sub_24A8BB0B4(v4, &dword_24A881000, v5, "FMNAuthenticationProvider: Failed renewCredentials %@", 53, 2, v6);
  }

  return a2(a1);
}

void sub_24A89ABC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_24A89AC2C(void *a1, void (*a2)(void, void *), uint64_t a3, char a4)
{
  v8 = sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    v38 = v8;
    swift_once();
    v8 = v38;
  }

  v9 = qword_2814AB698;
  sub_24A8BB0B4(v8, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Attempting to automatically renew credentials.", 73, 2, MEMORY[0x277D84F90]);
  swift_beginAccess();
  v10 = a1[2];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a1[2] = v12;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = a1;
    *(v13 + 40) = a4;
    swift_beginAccess();
    if (a1[5])
    {

      v14 = sub_24A8BB244();
      v15 = [objc_opt_self() bundleWithIdentifier_];

      if (v15)
      {
        sub_24A8BAF34();
        v16 = objc_opt_self();
        v17 = sub_24A8BB244();

        v18 = sub_24A8BB244();

        v19 = swift_allocObject();
        *(v19 + 16) = sub_24A89D4F8;
        *(v19 + 24) = v13;
        aBlock[4] = sub_24A89D508;
        aBlock[5] = v19;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24A89ABC0;
        aBlock[3] = &block_descriptor_58;
        v20 = _Block_copy(aBlock);

        [v16 renewCredentialsWithBundleId:v17 force:0 reason:v18 completion:{v20, 0xE000000000000000}];

        _Block_release(v20);

        return;
      }

      sub_24A89C6F4();
      v30 = swift_allocError();
      *v31 = 8;
      v32 = sub_24A8BB3C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_24A8BC300;
      aBlock[0] = v30;
      v34 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
      v35 = sub_24A8BB2A4();
      v37 = v36;
      *(v33 + 56) = MEMORY[0x277D837D0];
      *(v33 + 64) = sub_24A8897F0();
      *(v33 + 32) = v35;
      *(v33 + 40) = v37;
      sub_24A8BB0B4(v32, &dword_24A881000, v9, "FMIPAuthenticationProviderError: Automatic renew credentials failed %@", 70, 2, v33);

      a2(0, v30);

      v29 = v30;
    }

    else
    {
      sub_24A89C6F4();
      v21 = swift_allocError();
      *v22 = 8;

      v23 = sub_24A8BB3C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24A8BC300;
      aBlock[0] = v21;
      v25 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
      v26 = sub_24A8BB2A4();
      v28 = v27;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_24A8897F0();
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      sub_24A8BB0B4(v23, &dword_24A881000, v9, "FMIPAuthenticationProviderError: Automatic renew credentials failed %@", 70, 2, v24);

      a2(0, v21);

      v29 = v21;
    }
  }
}

uint64_t sub_24A89B140(void *a1, uint64_t (*a2)(void, void *), uint64_t a3, uint64_t a4, char a5)
{
  if (a1)
  {
    v8 = sub_24A8BB3C4();
    if (qword_2814AB038 != -1)
    {
      swift_once();
    }

    v9 = qword_2814AB698;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24A8BC300;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
    v12 = sub_24A8BB2A4();
    v14 = v13;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_24A8897F0();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    sub_24A8BB0B4(v8, &dword_24A881000, v9, "FMIPAuthenticationProviderError: Automatic renew credentials failed %@", 70, 2, v10, a1);

    return a2(0, a1);
  }

  else
  {
    v17 = sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      v18 = v17;
      swift_once();
      v17 = v18;
    }

    sub_24A8BB0B4(v17, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Automatically renewed credentials!", 61, 2, MEMORY[0x277D84F90]);
    v19 = a5;
    return sub_24A883F54(&v19, a2, a3);
  }
}

void static FMNAuthenticationProvider.configurationURL(accountType:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = *a1;
  if (v8 <= 9)
  {
    if (*a1 <= 7u)
    {
      if (v8 - 6 < 2)
      {
        v9 = "icloud_fmip_al_service";
LABEL_12:
        v13 = v9 - 32;
        v11 = MEMORY[0x24C21F020](v5);
        v14 = v13 | 0x8000000000000000;
        v15 = a2;
        v12 = 0xD000000000000016;
LABEL_21:
        sub_24A89B654(v12, v14, v15);

        objc_autoreleasePoolPop(v11);
        return;
      }

      if (v8 == 5)
      {
        v16 = "icloud_acsn_gateway_url";
LABEL_19:
        v10 = (v16 - 32);
        v11 = MEMORY[0x24C21F020](v5);
        v12 = 0xD000000000000017;
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    if (v8 == 8)
    {
      v17 = MEMORY[0x24C21F020](v5);
      sub_24A89B654(0xD000000000000021, 0x800000024A8BF420, v7);
      objc_autoreleasePoolPop(v17);
      v18 = sub_24A8BAFC4();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v7, 1, v18) == 1)
      {
        sub_24A886D90(v7, &qword_27EF79180, &qword_24A8BC9F0);
        sub_24A8BAFB4();
      }

      else
      {
        (*(v19 + 32))(a2, v7, v18);
        (*(v19 + 56))(a2, 0, 1, v18);
      }

      return;
    }

    if (v8 != 9)
    {
      goto LABEL_26;
    }

    v10 = "findmy_owner_device_url";
    v11 = MEMORY[0x24C21F020](v5);
    v12 = 0xD000000000000015;
LABEL_20:
    v14 = v10 | 0x8000000000000000;
    v15 = a2;
    goto LABEL_21;
  }

  if (*a1 <= 0xBu)
  {
    if (v8 != 10 && v8 != 11)
    {
      goto LABEL_26;
    }

    v10 = "nProvider: credentialDidFail";
    v11 = MEMORY[0x24C21F020](v5);
    v12 = 0xD000000000000019;
    goto LABEL_20;
  }

  if (v8 == 12)
  {
    v16 = "findmy_owner_device_url";
    goto LABEL_19;
  }

  if (v8 == 13)
  {
    v9 = "findmy_key_sharing_url";
    goto LABEL_12;
  }

LABEL_26:
  v20 = sub_24A8BAFC4();
  v21 = *(*(v20 - 8) + 56);

  v21(a2, 1, 1, v20);
}

id sub_24A89B654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v10 = result;
    v11 = [result aa_primaryAppleAccount];

    if (!v11)
    {
      v22 = sub_24A8BB3C4();
      if (qword_2814AB038 != -1)
      {
        swift_once();
      }

      v23 = qword_2814AB698;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24A8BC300;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_24A8897F0();
      *(v24 + 32) = a1;
      *(v24 + 40) = a2;

      sub_24A8BB0B4(v22, &dword_24A881000, v23, "FMNAuthenticationProvider: Unable to get primary AppleAccount for endpoint: %@", 78, 2, v24);

      goto LABEL_20;
    }

    v12 = sub_24A8BB244();
    v13 = [v11 propertiesForDataclass_];

    if (!v13 || (v14 = sub_24A8BB1F4(), v13, v15 = sub_24A88DD3C(v14), , !v15))
    {
      v19 = sub_24A8BB3C4();
      if (qword_2814AB038 != -1)
      {
        swift_once();
      }

      v20 = qword_2814AB698;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_24A8BC300;
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = sub_24A8897F0();
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;

      sub_24A8BB0B4(v19, &dword_24A881000, v20, "FMNAuthenticationProvider: Unable to get properties dictionary for endpoint: %@", 79, 2, v21);
      goto LABEL_19;
    }

    if (!*(v15 + 16) || (sub_24A88C87C(a1, a2), (v16 & 1) == 0))
    {

      goto LABEL_16;
    }

    sub_24A8BAFB4();

    v17 = sub_24A8BAFC4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_24A886D90(v8, &qword_27EF79180, &qword_24A8BC9F0);
LABEL_16:
      v25 = sub_24A8BB3C4();
      if (qword_2814AB038 != -1)
      {
        swift_once();
      }

      v26 = qword_2814AB698;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_24A8BC300;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 64) = sub_24A8897F0();
      *(v27 + 32) = a1;
      *(v27 + 40) = a2;

      sub_24A8BB0B4(v25, &dword_24A881000, v26, "FMNAuthenticationProvider: Unable to get URL: %@", 48, 2, v27);
LABEL_19:

LABEL_20:
      v28 = sub_24A8BAFC4();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }

    (*(v18 + 32))(a3, v8, v17);
    return (*(v18 + 56))(a3, 0, 1, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FMNAuthenticationProvider.deinit()
{

  return v0;
}

uint64_t FMNAuthenticationProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_24A89BBF8()
{
  result = qword_27EF79188;
  if (!qword_27EF79188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79188);
  }

  return result;
}

unint64_t sub_24A89BC50()
{
  result = qword_27EF79190;
  if (!qword_27EF79190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79190);
  }

  return result;
}

unint64_t sub_24A89BCA8()
{
  result = qword_27EF79198;
  if (!qword_27EF79198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMNAccountType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNAccountType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMNAuthenticationProviderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNAuthenticationProviderError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMNAuthenticationOverride(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNAuthenticationOverride(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_24A89C284(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791A0, &qword_24A8BCD88);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_24A8BAFC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 dataclassProperties];
  if (result)
  {
    v13 = result;
    v14 = sub_24A8BB244();
    v15 = [v13 valueForKey_];

    if (v15)
    {
      sub_24A8BB4D4();
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    v31 = v29;
    v32 = v30;
    if (*(&v30 + 1))
    {
      sub_24A882CB8(0, &unk_2814AACC0, 0x277CBEAC0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v16 = v28;
      v17 = sub_24A8BB244();
      v18 = v16;
      v19 = [v16 valueForKey_];

      if (v19)
      {
        sub_24A8BB4D4();
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
      }

      v31 = v29;
      v32 = v30;
      if (*(&v30 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {

          return 0;
        }

        sub_24A8BAFB4();

        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {

          v20 = &qword_27EF79180;
          v21 = &qword_24A8BC9F0;
          v22 = v7;
        }

        else
        {
          (*(v9 + 32))(v11, v7, v8);
          sub_24A8BAEA4();
          v23 = sub_24A8BAF24();
          v24 = *(v23 - 8);
          if ((*(v24 + 48))(v4, 1, v23) != 1)
          {
            v25 = sub_24A8BAEC4();
            v27 = v26;

            (*(v9 + 8))(v11, v8);
            (*(v24 + 8))(v4, v23);
            if (v27)
            {
              return v25;
            }

            return 0;
          }

          (*(v9 + 8))(v11, v8);

          v20 = &qword_27EF791A0;
          v21 = &qword_24A8BCD88;
          v22 = v4;
        }

        goto LABEL_17;
      }
    }

    v20 = &qword_27EF79078;
    v21 = &qword_24A8BC4B0;
    v22 = &v31;
LABEL_17:
    sub_24A886D90(v22, v20, v21);
    return 0;
  }

  return result;
}

unint64_t sub_24A89C6F4()
{
  result = qword_27EF791A8;
  if (!qword_27EF791A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF791A8);
  }

  return result;
}

uint64_t sub_24A89C748(void *a1, char *a2, void *a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t a6)
{
  v47 = a1;
  v11 = sub_24A8BB0D4();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A8BB104();
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = *a2;

  if ((sub_24A8BAD54() & 1) == 0)
  {
    v43 = a5;
    v23 = swift_beginAccess();
    if (*(a4 + 16) > 0)
    {
      LOBYTE(aBlock[0]) = v18;
      if (FMNAccountType.description.getter(v23) == 1701736302 && v24 == 0xE400000000000000)
      {
      }

      else
      {
        v25 = sub_24A8BB804();

        if ((v25 & 1) == 0)
        {
          aBlock[0] = a3;
          v30 = a3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79130, "VC");
          if (swift_dynamicCast() && !v48)
          {
            v35 = sub_24A8BB3D4();
            if (qword_2814AB038 != -1)
            {
              v41 = v35;
              swift_once();
              v35 = v41;
            }

            sub_24A8BB0B4(v35, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Cannot renew credentials, iCloud signed out.", 71, 2, MEMORY[0x277D84F90]);
          }

          else
          {
            if (![v47 aa_isManagedAppleID])
            {
              v47 = *(a4 + 24);
              v32 = swift_allocObject();
              *(v32 + 16) = a4;
              *(v32 + 24) = sub_24A89D510;
              *(v32 + 32) = v17;
              *(v32 + 40) = v18;
              aBlock[4] = sub_24A89D538;
              aBlock[5] = v32;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_24A8875B4;
              aBlock[3] = &block_descriptor_68;
              v33 = _Block_copy(aBlock);

              sub_24A8BB0F4();
              v48 = MEMORY[0x277D84F90];
              sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
              sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
              v34 = v46;
              sub_24A8BB4E4();
              MEMORY[0x24C21EA40](0, v16, v13, v33);
              _Block_release(v33);
              (*(v45 + 8))(v13, v34);
              (*(v44 + 8))(v16, v14);
            }

            v31 = sub_24A8BB3D4();
            if (qword_2814AB038 != -1)
            {
              v40 = v31;
              swift_once();
              v31 = v40;
            }

            sub_24A8BB0B4(v31, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Skipping renew credentials, account is managed.", 74, 2, MEMORY[0x277D84F90]);
          }

          sub_24A89C6F4();
          v36 = swift_allocError();
          *v37 = 4;
          v43(0, v36);
          v29 = v36;
          goto LABEL_15;
        }
      }
    }

    v26 = sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      v39 = v26;
      swift_once();
      v26 = v39;
    }

    sub_24A8BB0B4(v26, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Cannot renew credentials, limit reached.", 67, 2, MEMORY[0x277D84F90]);
    sub_24A89C6F4();
    v27 = swift_allocError();
    *v28 = 4;
    v43(0, v27);
    v29 = v27;
LABEL_15:
  }

  v19 = sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    v38 = v19;
    swift_once();
    v19 = v38;
  }

  sub_24A8BB0B4(v19, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Cannot renew credentials, unsupported platform (VM).", 79, 2, MEMORY[0x277D84F90]);
  sub_24A89C6F4();
  v20 = swift_allocError();
  *v21 = 4;
  a5(0, v20);
}

uint64_t sub_24A89CE14(void *a1, char *a2, void *a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v46 = a1;
  v11 = sub_24A8BB0D4();
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A8BB104();
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v19 = *a2;

  if (sub_24A8BAD54())
  {
    v20 = sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      v37 = v20;
      swift_once();
      v20 = v37;
    }

    sub_24A8BB0B4(v20, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Cannot renew credentials, unsupported platform (VM).", 79, 2, MEMORY[0x277D84F90]);
    sub_24A89C6F4();
    v21 = swift_allocError();
    *v22 = 10;
    (a5)();
  }

  v42 = v11;
  v24 = swift_beginAccess();
  if (*(a4 + 16) <= 0)
  {
    goto LABEL_12;
  }

  LOBYTE(aBlock[0]) = v19;
  if (FMNAccountType.description.getter(v24) == 1701736302 && v25 == 0xE400000000000000)
  {

LABEL_12:
    v27 = sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      v38 = v27;
      swift_once();
      v27 = v38;
    }

    sub_24A8BB0B4(v27, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Cannot renew credentials, limit reached.", 67, 2, MEMORY[0x277D84F90]);
    sub_24A89C6F4();
    v29 = swift_allocError();
    v30 = 6;
LABEL_15:
    *v28 = v30;
    (a5)();
  }

  v26 = sub_24A8BB804();

  if (v26)
  {
    goto LABEL_12;
  }

  aBlock[0] = a3;
  v31 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79130, "VC");
  if (!swift_dynamicCast() || v47)
  {
    if (![v46 aa_isManagedAppleID])
    {
      v33 = swift_allocObject();
      *(v33 + 16) = a4;
      *(v33 + 24) = sub_24A89D4BC;
      *(v33 + 32) = v18;
      *(v33 + 40) = v19;
      aBlock[4] = sub_24A89D4E8;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A8875B4;
      aBlock[3] = &block_descriptor_49;
      v34 = _Block_copy(aBlock);

      sub_24A8BB0F4();
      v47 = MEMORY[0x277D84F90];
      sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
      sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
      v35 = v42;
      sub_24A8BB4E4();
      MEMORY[0x24C21EA40](0, v17, v13, v34);
      _Block_release(v34);
      (*(v45 + 8))(v13, v35);
      (*(v44 + 8))(v17, v43);
    }

    v32 = sub_24A8BB3D4();
    if (qword_2814AB038 != -1)
    {
      v39 = v32;
      swift_once();
      v32 = v39;
    }

    sub_24A8BB0B4(v32, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Skipping renew credentials, account is managed.", 74, 2, MEMORY[0x277D84F90]);
    sub_24A89C6F4();
    v29 = swift_allocError();
    v30 = 7;
    goto LABEL_15;
  }

  v36 = sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    v40 = v36;
    swift_once();
    v36 = v40;
  }

  sub_24A8BB0B4(v36, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Cannot renew credentials, iCloud signed out.", 71, 2, MEMORY[0x277D84F90]);
  a5(a3);
}

uint64_t type metadata accessor for FMNHTTPArchiveReader(uint64_t a1)
{
  result = qword_27EF791B0;
  if (!qword_27EF791B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A89D5B0(uint64_t a1)
{
  result = sub_24A8BAFC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24A89D61C()
{
  v1 = v0;
  v2 = sub_24A8BAE04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v6 = swift_allocObject();
  v18 = xmmword_24A8BC300;
  *(v6 + 16) = xmmword_24A8BC300;
  v7 = sub_24A8BAF64();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_24A8897F0();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_24A882E60();
  v10 = sub_24A8BB464();
  v11 = sub_24A8BB3D4();
  sub_24A8BB0A4("HTTPArchiveReader: Reading contents of %@", 41, 2, &dword_24A881000, v10, v11, v6);

  v17[1] = v1;
  v12 = sub_24A8BAFE4();
  v14 = v13;
  sub_24A8BAE44();
  swift_allocObject();
  sub_24A8BAE34();
  (*(v3 + 104))(v5, *MEMORY[0x277CC86D0], v2);
  sub_24A8BAE14();
  sub_24A89DB84();
  sub_24A8BAE24();

  sub_24A88C828(v12, v14);
  v15 = v19[2];

  v19[0] = v15;

  sub_24A89DEF8(v19);

  return v19[0];
}

void *sub_24A89D9C0()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = (v1 + 56);
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    v7 = *(v3 - 3);
    v6 = *(v3 - 2);
    v9 = *(v3 - 1);
    v8 = *v3;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_24A88C87C(v7, v6);
    v13 = v4[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v4[3] < v16)
    {
      sub_24A894EF4(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_24A88C87C(v7, v6);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v11;
    sub_24A8958FC();
    v11 = v23;
    if (v17)
    {
LABEL_3:
      v5 = (v4[7] + 16 * v11);
      *v5 = v9;
      v5[1] = v8;

      goto LABEL_4;
    }

LABEL_11:
    v4[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v4[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v4[7] + 16 * v11);
    *v20 = v9;
    v20[1] = v8;

    v21 = v4[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_18;
    }

    v4[2] = v22;
LABEL_4:
    v3 += 4;
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_24A8BB8C4();
  __break(1u);
  return result;
}

unint64_t sub_24A89DB84()
{
  result = qword_27EF791C0;
  if (!qword_27EF791C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF791C0);
  }

  return result;
}

void *sub_24A89DBD8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79098, &qword_24A8BC4D0);
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
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79090, &unk_24A8BCDF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A89DD20(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79060, &unk_24A8BCDE0);
  v10 = *(type metadata accessor for HAREntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HAREntry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24A89DEF8(uint64_t *a1)
{
  v2 = *(type metadata accessor for HAREntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24A89F104(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_24A89DFA0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_24A89DFA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24A8BB714();
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
        type metadata accessor for HAREntry(0);
        v6 = sub_24A8BB364();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HAREntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24A89E2C0(v8, v9, a1, v4);
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
    return sub_24A89E0CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24A89E0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for HAREntry(0);
  v8 = MEMORY[0x28223BE20](v33);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_24A89F118(v23, v17);
      sub_24A89F118(v20, v13);
      v24 = sub_24A8BB034();
      sub_24A89F17C(v13);
      result = sub_24A89F17C(v17);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v18)
      {
        break;
      }

      sub_24A89F1D8(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_24A89F1D8(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A89E2C0(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v99 = a1;
  v110 = type metadata accessor for HAREntry(0);
  v106 = *(v110 - 8);
  v9 = MEMORY[0x28223BE20](v110);
  v101 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v109 = &v95 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v95 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v95 - v17;
  v108 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_24A89F00C(a4);
    }

    v111 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v108)
      {
        v91 = *(result + 16 * a4);
        v92 = result;
        v93 = *(result + 16 * (a4 - 1) + 40);
        sub_24A89EAF8(*v108 + *(v106 + 72) * v91, *v108 + *(v106 + 72) * *(result + 16 * (a4 - 1) + 32), *v108 + *(v106 + 72) * v93, v5);
        if (v6)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_24A89F00C(v92);
        }

        if (a4 - 2 >= *(v92 + 2))
        {
          goto LABEL_124;
        }

        v94 = &v92[16 * a4];
        *v94 = v91;
        *(v94 + 1) = v93;
        v111 = v92;
        sub_24A89EF80(a4 - 1);
        result = v111;
        a4 = *(v111 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v102 = v21;
    if (v23 >= v19)
    {
      v29 = v23;
    }

    else
    {
      v24 = *v108;
      v105 = v24;
      v25 = *(v106 + 72);
      v5 = v24 + v25 * v23;
      sub_24A89F118(v5, v18);
      sub_24A89F118(v24 + v25 * v22, v15);
      v26 = sub_24A8BB034();
      sub_24A89F17C(v15);
      result = sub_24A89F17C(v18);
      v97 = v22;
      a4 = v22 + 2;
      v107 = v25;
      v27 = v105 + v25 * (v22 + 2);
      while (v19 != a4)
      {
        sub_24A89F118(v27, v18);
        sub_24A89F118(v5, v15);
        v28 = sub_24A8BB034() & 1;
        sub_24A89F17C(v15);
        result = sub_24A89F17C(v18);
        ++a4;
        v27 += v107;
        v5 += v107;
        if ((v26 & 1) != v28)
        {
          v29 = a4 - 1;
          goto LABEL_11;
        }
      }

      v29 = v19;
      v22 = v97;
      if ((v26 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (v29 < v97)
      {
        goto LABEL_127;
      }

      if (v97 < v29)
      {
        v96 = v6;
        v30 = v107 * (v29 - 1);
        v31 = v29;
        v32 = v29 * v107;
        v105 = v29;
        v33 = v97 * v107;
        do
        {
          if (v22 != --v31)
          {
            v34 = *v108;
            if (!*v108)
            {
              goto LABEL_133;
            }

            v5 = v34 + v33;
            sub_24A89F1D8(v34 + v33, v101);
            if (v33 < v30 || v5 >= v34 + v32)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v33 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_24A89F1D8(v101, v34 + v30);
          }

          ++v22;
          v30 -= v107;
          v32 -= v107;
          v33 += v107;
        }

        while (v22 < v31);
        v6 = v96;
        v22 = v97;
        a4 = v98;
        v29 = v105;
      }

      else
      {
LABEL_24:
        a4 = v98;
      }
    }

    v35 = v108[1];
    if (v29 < v35)
    {
      if (__OFSUB__(v29, v22))
      {
        goto LABEL_126;
      }

      if (v29 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v35)
        {
          v36 = v108[1];
        }

        else
        {
          v36 = v22 + a4;
        }

        if (v36 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v29 != v36)
        {
          break;
        }
      }
    }

    v37 = v29;
    if (v29 < v22)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v102;
    }

    else
    {
      result = sub_24A8960E8(0, *(v102 + 2) + 1, 1, v102);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v38 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v38 >> 1)
    {
      result = sub_24A8960E8((v38 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v39 = &v21[16 * a4];
    *(v39 + 4) = v22;
    *(v39 + 5) = v37;
    v40 = *v99;
    if (!*v99)
    {
      goto LABEL_135;
    }

    v103 = v37;
    if (a4)
    {
      while (1)
      {
        v41 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v42 = *(v21 + 4);
          v43 = *(v21 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_55:
          if (v45)
          {
            goto LABEL_114;
          }

          v58 = &v21[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_117;
          }

          v64 = &v21[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_121;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v68 = &v21[16 * v5];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_69:
        if (v63)
        {
          goto LABEL_116;
        }

        v71 = &v21[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_119;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v41 - 1;
        if (v41 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v108)
        {
          goto LABEL_132;
        }

        v79 = v21;
        v80 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v41 + 40];
        sub_24A89EAF8(*v108 + *(v106 + 72) * v80, *v108 + *(v106 + 72) * *&v21[16 * v41 + 32], *v108 + *(v106 + 72) * v5, v40);
        if (v6)
        {
        }

        if (v5 < v80)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_24A89F00C(v79);
        }

        if (a4 >= *(v79 + 2))
        {
          goto LABEL_111;
        }

        v81 = &v79[16 * a4];
        *(v81 + 4) = v80;
        *(v81 + 5) = v5;
        v111 = v79;
        result = sub_24A89EF80(v41);
        v21 = v111;
        v5 = *(v111 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v21[16 * v5 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_112;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_113;
      }

      v53 = &v21[16 * v5];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_115;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_118;
      }

      if (v57 >= v49)
      {
        v75 = &v21[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_122;
        }

        if (v44 < v78)
        {
          v41 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v19 = v108[1];
    v20 = v103;
    a4 = v98;
    if (v103 >= v19)
    {
      goto LABEL_97;
    }
  }

  v96 = v6;
  v97 = v22;
  v82 = *v108;
  v83 = *(v106 + 72);
  v84 = *v108 + v83 * (v29 - 1);
  v85 = -v83;
  v86 = v22 - v29;
  v105 = v29;
  v100 = v83;
  a4 = v82 + v29 * v83;
  v103 = v36;
LABEL_87:
  v5 = a4;
  v104 = v86;
  v107 = v84;
  v87 = v84;
  while (1)
  {
    sub_24A89F118(v5, v18);
    sub_24A89F118(v87, v15);
    v88 = sub_24A8BB034();
    sub_24A89F17C(v15);
    result = sub_24A89F17C(v18);
    if ((v88 & 1) == 0)
    {
LABEL_86:
      v84 = v107 + v100;
      v86 = v104 - 1;
      a4 += v100;
      v37 = v103;
      if (++v105 != v103)
      {
        goto LABEL_87;
      }

      v6 = v96;
      v22 = v97;
      if (v103 < v97)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v82)
    {
      break;
    }

    v89 = v109;
    sub_24A89F1D8(v5, v109);
    swift_arrayInitWithTakeFrontToBack();
    sub_24A89F1D8(v89, v87);
    v87 += v85;
    v5 += v85;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_24A89EAF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v42 = type metadata accessor for HAREntry(0);
  v8 = MEMORY[0x28223BE20](v42);
  v43 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38[1] = v4;
    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = v23;
      v40 = v24;
      v41 = a4;
      do
      {
        v38[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v44;
          if (v27 <= a1)
          {
            v47 = v27;
            v45 = v38[0];
            goto LABEL_59;
          }

          v39 = v26;
          v44 += v24;
          v31 = v25 + v24;
          sub_24A89F118(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v43;
          sub_24A89F118(v33, v43);
          v36 = sub_24A8BB034();
          v37 = v35;
          v12 = v34;
          sub_24A89F17C(v37);
          sub_24A89F17C(v34);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v44 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v40;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v44 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          v24 = v40;
        }

        else
        {
          v26 = v39;
          v24 = v40;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_58:
    v47 = a2;
    v45 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < v44)
    {
      do
      {
        sub_24A89F118(a2, v12);
        v21 = v43;
        sub_24A89F118(a4, v43);
        v22 = sub_24A8BB034();
        sub_24A89F17C(v21);
        sub_24A89F17C(v12);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v19 && a2 < v44);
    }
  }

LABEL_59:
  sub_24A89F020(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_24A89EF80(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24A89F00C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24A89F020(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for HAREntry(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_24A89F118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HAREntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A89F17C(uint64_t a1)
{
  v2 = type metadata accessor for HAREntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A89F1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HAREntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMNMockingPreferences.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMNMockingPreferences.filePath.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

FMNetworking::FMNMockingPreferences __swiftcall FMNMockingPreferences.init(domain:filePath:)(Swift::String domain, Swift::String filePath)
{
  *v2 = domain;
  v2[1] = filePath;
  result.filePath = filePath;
  result.domain = domain;
  return result;
}

uint64_t type metadata accessor for FMNResponseSerializableCodingStrategy(uint64_t a1)
{
  result = qword_27EF791E0;
  if (!qword_27EF791E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMNResponseSerializableCodingStrategy.init(dateDecodingStrategy:dateEncodingStrategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24A88B1BC(a1, a3, &qword_27EF791C8, &qword_24A8BCED0);
  v5 = type metadata accessor for FMNResponseSerializableCodingStrategy(0);
  return sub_24A88B1BC(a2, a3 + *(v5 + 20), &qword_27EF791D0, &qword_24A8BCED8);
}

uint64_t static FMNResponseSerializable.decode(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v37[6] = a2;
  v37[5] = a1;
  v37[2] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791D8, &qword_24A8BCEE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791C8, &qword_24A8BCED0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v37 - v11;
  v13 = sub_24A8BAE04();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  sub_24A8BAE44();
  swift_allocObject();
  v37[1] = sub_24A8BAE34();
  v20 = *(a4 + 48);
  v37[3] = a3;
  v37[4] = a4;
  v20(a3, a4);
  v21 = type metadata accessor for FMNResponseSerializableCodingStrategy(0);
  if ((*(*(v21 - 8) + 48))(v9, 1, v21) == 1)
  {
    sub_24A886D90(v9, &qword_27EF791D8, &qword_24A8BCEE0);
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_4:
    v22 = sub_24A886D90(v12, &qword_27EF791C8, &qword_24A8BCED0);
    goto LABEL_6;
  }

  sub_24A883EEC(v9, v12, &qword_27EF791C8, &qword_24A8BCED0);
  sub_24A8A07F4(v9);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  (*(v14 + 32))(v19, v12, v13);
  (*(v14 + 16))(v17, v19, v13);
  sub_24A8BAE14();
  v22 = (*(v14 + 8))(v19, v13);
LABEL_6:
  v23 = MEMORY[0x24C21F020](v22);
  v24 = v37[7];
  sub_24A8BAE24();
  objc_autoreleasePoolPop(v23);
  if (!v24)
  {
  }

  v25 = sub_24A8BB3C4();
  sub_24A882E60();
  v26 = sub_24A8BB464();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24A8BCEB0;
  MetatypeMetadata = swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  v28 = sub_24A8BB2A4();
  v30 = v29;
  v31 = MEMORY[0x277D837D0];
  *(v27 + 56) = MEMORY[0x277D837D0];
  v32 = sub_24A8897F0();
  *(v27 + 64) = v32;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  MetatypeMetadata = v24;
  v33 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79130, "VC");
  v34 = sub_24A8BB2A4();
  *(v27 + 96) = v31;
  *(v27 + 104) = v32;
  *(v27 + 72) = v34;
  *(v27 + 80) = v35;
  sub_24A8BB0B4(v25, &dword_24A881000, v26, "Failed to convert %@ from dictionary %@", 39, 2, v27);

  return swift_willThrow();
}

uint64_t FMNResponseSerializable.dictionaryValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v9 = MEMORY[0x277D84F98];
  v6 = MEMORY[0x24C21F020]();
  sub_24A8A0850(v3, &v9, a1, a2, &v8);
  objc_autoreleasePoolPop(v6);
  return v9;
}

uint64_t FMNResponseSerializable.data.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791D8, &qword_24A8BCEE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791D0, &qword_24A8BCED8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_24A8BAE54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  sub_24A8BAE94();
  swift_allocObject();
  sub_24A8BAE84();
  (*(a2 + 48))(a1, a2);
  v17 = type metadata accessor for FMNResponseSerializableCodingStrategy(0);
  if ((*(*(v17 - 8) + 48))(v6, 1, v17) == 1)
  {
    sub_24A886D90(v6, &qword_27EF791D8, &qword_24A8BCEE0);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  else
  {
    sub_24A883EEC(&v6[*(v17 + 20)], v9, &qword_27EF791D0, &qword_24A8BCED8);
    sub_24A8A07F4(v6);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v16, v9, v10);
      (*(v11 + 16))(v14, v16, v10);
      sub_24A8BAE64();
      (*(v11 + 8))(v16, v10);
      goto LABEL_6;
    }
  }

  sub_24A886D90(v9, &qword_27EF791D0, &qword_24A8BCED8);
LABEL_6:
  v18 = sub_24A8BAE74();

  return v18;
}

void KeyedDecodingContainer.compactDecode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = MEMORY[0x24C21F020]();
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  sub_24A8A0230(v6, a1, v13, a3, v12, a4, &v28);
  if (v5)
  {
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    v14 = MEMORY[0x24C21F020]();
    sub_24A8A0330(a3, v12, a4, &v29);
    objc_autoreleasePoolPop(v14);
    type metadata accessor for OptionalDecodable(0, a3, a4, v15);
    v16 = sub_24A8BB384();

    v17 = sub_24A8BB384();
    if (v16 != v17)
    {
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24A8BCEC0;
      v29 = a3;
      swift_getMetatypeMetadata();
      v20 = sub_24A8BB2A4();
      v22 = v21;
      *(v19 + 56) = MEMORY[0x277D837D0];
      v23 = sub_24A8897F0();
      *(v19 + 32) = v20;
      *(v19 + 40) = v22;
      v24 = MEMORY[0x277D83B88];
      v25 = MEMORY[0x277D83C10];
      *(v19 + 96) = MEMORY[0x277D83B88];
      *(v19 + 104) = v25;
      *(v19 + 64) = v23;
      *(v19 + 72) = v16;
      *(v19 + 136) = v24;
      *(v19 + 144) = v25;
      *(v19 + 112) = v18;
      sub_24A882E60();
      v26 = sub_24A8BB464();
      v27 = sub_24A8BB3D4();
      sub_24A8BB0A4("Compacted decoded objects %@ from %i to %i", 42, 2, &dword_24A881000, v26, v27, v19);
    }
  }
}

uint64_t sub_24A8A0230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  type metadata accessor for OptionalDecodable(255, a4, a6, a4);
  sub_24A8BB3A4();
  sub_24A8BB6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_24A8BB6A4();
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t sub_24A8A0330@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for OptionalDecodable(255, a3, a5, a4);
  sub_24A8BB3A4();
  swift_getWitnessTable();
  result = sub_24A8BB344();
  *a6 = result;
  return result;
}

uint64_t sub_24A8A03EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v24 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v25 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v7;
  v10 = type metadata accessor for OptionalDecodable(0, v8, v7, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_24A8BB964();
  if (v3)
  {
    v15 = a1;
  }

  else
  {
    v16 = v24;
    v21 = a1;
    v22 = v11;
    v23 = v10;
    v17 = MEMORY[0x24C21F020](v14);
    v18 = v25;
    sub_24A8A074C(v28, a2, v26, &v29);
    objc_autoreleasePoolPop(v17);
    (*(v16 + 32))(v13, v18, a2);
    (*(v16 + 56))(v13, 0, 1, a2);
    v19 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    (*(v22 + 32))(v27, v13, v23);
    v15 = v19;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_24A8A074C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_24A8BB814();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_24A8A07F4(uint64_t a1)
{
  v2 = type metadata accessor for FMNResponseSerializableCodingStrategy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A8A0850(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v7 = (*(a4 + 40))(a3, a4);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = sub_24A8BB004();
  v18[0] = 0;
  v12 = [v10 JSONObjectWithData:v11 options:0 error:v18];

  if (v12)
  {
    v13 = v18[0];
    sub_24A8BB4D4();
    sub_24A88C828(v7, v9);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79010, &qword_24A8BC320);
    result = swift_dynamicCast();
    if (result)
    {
      *a2 = v17;
    }
  }

  else
  {
    v15 = v18[0];
    v16 = sub_24A8BAF44();

    swift_willThrow();
    result = sub_24A88C828(v7, v9);
    *a5 = v16;
  }

  return result;
}

void sub_24A8A0A2C(uint64_t a1)
{
  sub_24A8A0AE8(319, &qword_27EF791F0, MEMORY[0x277CC86E0]);
  if (v1 <= 0x3F)
  {
    sub_24A8A0AE8(319, qword_27EF791F8, MEMORY[0x277CC8780]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A8A0AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A8BB484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24A8A0BA8(uint64_t a1)
{
  result = sub_24A8BB484();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24A8A0C18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_24A8A0D98(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

FMNetworking::FMNRequestMethod_optional __swiftcall FMNRequestMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A8BB624();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMNRequestMethod.rawValue.getter()
{
  v1 = 5522759;
  v2 = 5526864;
  if (*v0 != 2)
  {
    v2 = 0x4554454C4544;
  }

  if (*v0)
  {
    v1 = 1414745936;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A8A1104()
{
  result = qword_27EF79280;
  if (!qword_27EF79280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79280);
  }

  return result;
}

uint64_t sub_24A8A1158()
{
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A8A1200(uint64_t a1)
{
  sub_24A8BB2C4();
}

uint64_t sub_24A8A1294(uint64_t a1)
{
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

void sub_24A8A1344(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5522759;
  v4 = 0xE300000000000000;
  v5 = 5526864;
  if (*v1 != 2)
  {
    v5 = 0x4554454C4544;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 1414745936;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_24A8A1504(uint64_t a1)
{
  sub_24A8BAFC4();
  if (v1 <= 0x3F)
  {
    sub_24A883CB0();
    if (v2 <= 0x3F)
    {
      sub_24A8899E8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24A8A15B0()
{
  result = qword_27EF79298;
  if (!qword_27EF79298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79298);
  }

  return result;
}

unint64_t sub_24A8A1628()
{
  result = qword_27EF792A0;
  if (!qword_27EF792A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792A0);
  }

  return result;
}

unint64_t sub_24A8A1680()
{
  result = qword_27EF792A8;
  if (!qword_27EF792A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792A8);
  }

  return result;
}

Swift::String_optional __swiftcall FMNRedirectHostStore.redirectedHost()()
{
  v1 = v0;
  v15 = 0;
  v16 = 0;
  v2 = *v0;
  sub_24A887424(v1, v13);
  v3 = swift_allocObject();
  v4 = v13[1];
  *(v3 + 16) = v13[0];
  *(v3 + 32) = v4;
  *(v3 + 48) = v13[2];
  *(v3 + 64) = v14;
  *(v3 + 72) = &v15;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24A88BB7C;
  *(v5 + 24) = v3;
  aBlock[4] = sub_24A88B9D4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A88B9FC;
  aBlock[3] = &block_descriptor_9;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v2, v6);
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v9 = v15;
    v10 = v16;

    v7 = v9;
    v8 = v10;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_24A8A1880()
{
  if (*v0)
  {
    return 0x64496E6F73726570;
  }

  else
  {
    return 1953722216;
  }
}

uint64_t sub_24A8A18B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953722216 && a2 == 0xE400000000000000;
  if (v5 || (sub_24A8BB804() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64496E6F73726570 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A8BB804();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24A8A1990(uint64_t a1)
{
  v2 = sub_24A8A1E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8A19CC(uint64_t a1)
{
  v2 = sub_24A8A1E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMNRedirectedHost.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF792B0, &qword_24A8BD2C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8A1E94();
  sub_24A8BB984();
  v12 = 0;
  v8 = v10[3];
  sub_24A8BB6E4();
  if (!v8)
  {
    v11 = 1;
    sub_24A8BB6E4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FMNRedirectedHost.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF792C0, &qword_24A8BD2D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8A1E94();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v19 = 0;
  v9 = sub_24A8BB664();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24A8BB664();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void sub_24A8A1E00()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24A8BB244();
  [v0 removeObjectForKey_];
}

unint64_t sub_24A8A1E94()
{
  result = qword_27EF792B8;
  if (!qword_27EF792B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792B8);
  }

  return result;
}

Swift::Void __swiftcall FMNRedirectHostStore.saveRedirectedHost(host:)(Swift::String host)
{
  v2 = v1;
  object = host._object;
  countAndFlagsBits = host._countAndFlagsBits;
  v5 = sub_24A8BB0D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A8BB104();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  sub_24A887424(v2, v19);
  v12 = swift_allocObject();
  *(v12 + 16) = countAndFlagsBits;
  *(v12 + 24) = object;
  v13 = v19[1];
  *(v12 + 32) = v19[0];
  *(v12 + 48) = v13;
  *(v12 + 64) = v19[2];
  *(v12 + 80) = v20;
  aBlock[4] = sub_24A8A247C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_21;
  v14 = _Block_copy(aBlock);

  sub_24A8BB0F4();
  v17 = MEMORY[0x277D84F90];
  sub_24A8870CC(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v11, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_24A8A21DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[4];
  v6 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3 + 1, v5);
  v7 = *(v6 + 32);

  v7(v5, v6);
  sub_24A8BAE94();
  swift_allocObject();
  sub_24A8BAE84();
  sub_24A8A25B0();
  v8 = sub_24A8BAE74();
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24A8BC300;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_24A8897F0();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);

  v12 = sub_24A8BB464();
  v13 = sub_24A8BB3D4();
  sub_24A8BB0A4("Saving redirected host item %@.", 31, 2, &dword_24A881000, v12, v13, v11);

  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_24A8BB004();
  v16 = sub_24A8BB244();
  [v14 setValue:v15 forKey:v16];

  sub_24A88C828(v8, v10);
}

unint64_t sub_24A8A24AC()
{
  result = qword_27EF792C8;
  if (!qword_27EF792C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792C8);
  }

  return result;
}

unint64_t sub_24A8A2504()
{
  result = qword_27EF792D0;
  if (!qword_27EF792D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792D0);
  }

  return result;
}

unint64_t sub_24A8A255C()
{
  result = qword_27EF792D8;
  if (!qword_27EF792D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792D8);
  }

  return result;
}

unint64_t sub_24A8A25B0()
{
  result = qword_27EF792E0;
  if (!qword_27EF792E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792E0);
  }

  return result;
}

void sub_24A8A2604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_24A8A2648()
{
  result = qword_27EF792E8;
  if (!qword_27EF792E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792E8);
  }

  return result;
}

uint64_t FMNPreferenceKey.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24A8BB624();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_24A8A2730()
{
  sub_24A8BB934();
  sub_24A8BB2C4();
  return sub_24A8BB954();
}

uint64_t sub_24A8A27B4(uint64_t a1)
{
  sub_24A8BB934();
  sub_24A8BB2C4();
  return sub_24A8BB954();
}

uint64_t sub_24A8A2810@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24A8BB624();

  *a2 = v3 != 0;
  return result;
}

uint64_t FMNURLSessionFactory.mockSessionCreationBlock.getter()
{
  v1 = *(v0 + 16);
  sub_24A88D378(v1, *(v0 + 24));
  return v1;
}

__n128 FMNURLSessionFactory.__allocating_init(mockSessionCreationBlock:preferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  result = *a3;
  v8 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v8;
  return result;
}

uint64_t FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = a3[1];
  *(v3 + 32) = *a3;
  *(v3 + 48) = v4;
  return v3;
}

unint64_t sub_24A8A2920()
{
  result = qword_27EF792F0;
  if (!qword_27EF792F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792F0);
  }

  return result;
}

void sub_24A8A2974(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_24A8BAFC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40))
  {
    sub_24A88C21C(a1, v5);
    v10 = *(v7 + 48);
    if (v10(v5, 1, v6) == 1)
    {
      sub_24A88C1B4(v5);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v11 = sub_24A8BAF54();
      (*(v7 + 8))(v9, v6);
      if ((v11 & 1) == 0)
      {
        __break(1u);
        return;
      }
    }

    v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v13 = sub_24A8BB244();
    v14 = [v12 initWithSuiteName_];

    if (v10(a1, 1, v6) == 1)
    {
      if (!v14)
      {
        return;
      }

      v15 = v14;
      v16 = sub_24A8BB244();
      [v15 removeObjectForKey_];
    }

    else
    {
      if (!v14)
      {
        return;
      }

      v17 = v14;
      v16 = sub_24A8BB244();
      [v17 setBool:1 forKey:v16];
    }
  }
}

uint64_t *FMNURLSessionFactory.deinit()
{
  sub_24A8895E8(v0[2], v0[3]);
  sub_24A8A2604(v0[4], v0[5], v0[6], v0[7]);
  return v0;
}

uint64_t FMNURLSessionFactory.__deallocating_deinit()
{
  sub_24A8895E8(v0[2], v0[3]);
  sub_24A8A2604(v0[4], v0[5], v0[6], v0[7]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_24A8A2C88()
{
  result = qword_27EF792F8;
  if (!qword_27EF792F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF792F8);
  }

  return result;
}

unint64_t sub_24A8A2DC4()
{
  result = qword_27EF79300;
  if (!qword_27EF79300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79300);
  }

  return result;
}

id MockURLDataTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockURLDataTask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSObject *sub_24A8A2F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = dispatch_group_create();
  sub_24A883EEC(v4, v25, &qword_27EF79168, &unk_24A8BC970);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_24A88B1BC(v25, v9 + 24, &qword_27EF79168, &unk_24A8BC970);
  sub_24A883EEC(v4, v25, &qword_27EF79168, &unk_24A8BC970);
  sub_24A883EEC(v4 + 24, v24, &qword_27EF79160, &qword_24A8BC968);
  sub_24A883EEC(v4 + 144, v22, &qword_27EF79118, &unk_24A8BD720);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  sub_24A88B1BC(v25, v10 + 24, &qword_27EF79168, &unk_24A8BC970);
  *(v10 + 240) = a3;
  v11 = v24[2];
  v12 = v24[3];
  v13 = v24[0];
  *(v10 + 264) = v24[1];
  *(v10 + 280) = v11;
  v14 = v24[4];
  *(v10 + 296) = v12;
  *(v10 + 312) = v14;
  *(v10 + 248) = v13;
  v15 = v22[1];
  *(v10 + 328) = v22[0];
  *(v10 + 344) = v15;
  *(v10 + 360) = v22[2];
  *(v10 + 376) = v23;
  *(v10 + 384) = a1;
  *(v10 + 392) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79340, &qword_24A8BDA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A8BCEB0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_24A8A8584;
  *(v17 + 24) = v9;
  *(inited + 32) = 401;
  *(inited + 40) = sub_24A8A868C;
  *(inited + 48) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24A8A85C0;
  *(v18 + 24) = v10;
  *(inited + 56) = 330;
  *(inited + 64) = sub_24A8A868C;
  *(inited + 72) = v18;
  v21[2] = v4;
  v19 = v8;

  sub_24A88B224(sub_24A8A861C, v21, inited);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79348, &qword_24A8BDA48);
  swift_arrayDestroy();
  return v19;
}

uint64_t FMNServerInteractionController.FMNServerInteractionError.hashValue.getter()
{
  v1 = *v0;
  sub_24A8BB934();
  MEMORY[0x24C21EF50](v1);
  return sub_24A8BB954();
}

FMNetworking::FMNServerInteractionController::InternalServerMetadata::HeaderKeys_optional __swiftcall FMNServerInteractionController.InternalServerMetadata.HeaderKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A8BB624();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMNServerInteractionController.InternalServerMetadata.HeaderKeys.rawValue.getter()
{
  v1 = 0xD000000000000012;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A8A335C()
{
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A8A3410(uint64_t a1)
{
  sub_24A8BB2C4();
}

uint64_t sub_24A8A34B0(uint64_t a1)
{
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

void sub_24A8A356C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "PUT";
  v4 = "x-apple-request-uuid";
  v5 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = "x-responding-instance";
  }

  if (*v1)
  {
    v2 = 0xD000000000000014;
    v3 = "x-apple-error-code";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t FMNServerInteractionController.InternalServerMetadata.errorCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A8BB174();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FMNServerInteractionController.InternalServerMetadata.respondingInstance.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0) + 24));

  return v1;
}

uint64_t FMNServerInteractionController.InternalServerMetadata.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79310, &qword_24A8BD700);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = sub_24A8BB094();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_24A8BB594();
  MEMORY[0x24C21E8E0](0x5574736575716572, 0xED0000203A444955);
  v9 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
  sub_24A883EEC(v0 + *(v9 + 20), v3, &qword_27EF79310, &qword_24A8BD700);
  v10 = *(v5 + 48);
  if (v10(v3, 1, v4) == 1)
  {
    sub_24A8BB084();
    sub_24A8BB064();
    if (v10(v3, 1, v4) != 1)
    {
      sub_24A886D90(v3, &qword_27EF79310, &qword_24A8BD700);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
  }

  sub_24A8831E4(&qword_2814AAA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v11 = sub_24A8BB724();
  MEMORY[0x24C21E8E0](v11);

  (*(v5 + 8))(v8, v4);
  MEMORY[0x24C21E8E0](0xD000000000000015, 0x800000024A8C0170);
  v12 = (v0 + *(v9 + 24));
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v12[1];
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  MEMORY[0x24C21E8E0](v14, v15);

  MEMORY[0x24C21E8E0](0x6F43726F72726520, 0xEC000000203A6564);
  sub_24A8BB174();
  sub_24A8831E4(&qword_2814AAA10, MEMORY[0x277D498D8], MEMORY[0x277D498E0]);
  v16 = sub_24A8BB724();
  MEMORY[0x24C21E8E0](v16);

  return v18[0];
}

uint64_t FMNServerInteractionController.FMNResponseFields.data.getter()
{
  v1 = *v0;
  sub_24A88C9AC(*v0, *(v0 + 8));
  return v1;
}

uint64_t FMNServerInteractionController.FMNResponseFields.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FMNServerInteractionController.FMNResponseFields(0) + 28);

  return sub_24A8A3B74(a1, v3);
}

uint64_t sub_24A8A3B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79450, &unk_24A8BD708);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FMNServerInteractionController.FMNResponseFields.init(data:statusCode:responseHeaders:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for FMNServerInteractionController.FMNResponseFields(0) + 28);
  v13 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
  (*(*(v13 - 8) + 56))(&a6[v12], 1, 1, v13);
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;

  return sub_24A8A3B74(a5, &a6[v12]);
}

uint64_t FMNServerInteractionController.FMNResponseFields.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79450, &unk_24A8BD708);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_24A8BB594();

  strcpy(v14, "statusCode: ");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  v13[1] = *(v0 + 16);
  v4 = sub_24A8BB724();
  MEMORY[0x24C21E8E0](v4);

  MEMORY[0x24C21E8E0](0x7461646174656D20, 0xEB00000000203A61);
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  sub_24A883EEC(v0 + *(v5 + 28), v3, &unk_27EF79450, &unk_24A8BD708);
  v6 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_24A886D90(v3, &unk_27EF79450, &unk_24A8BD708);
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v9 = FMNServerInteractionController.InternalServerMetadata.description.getter();
    v8 = v10;
    sub_24A890DF4(v3, type metadata accessor for FMNServerInteractionController.InternalServerMetadata);
    v7 = v9;
  }

  MEMORY[0x24C21E8E0](v7, v8);

  MEMORY[0x24C21E8E0](0xD000000000000012, 0x800000024A8C0190);
  v11 = sub_24A8BB204();
  MEMORY[0x24C21E8E0](v11);

  return v14[0];
}

void FMNServerInteractionController.mockingPreferences.getter(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_24A883290(v2, v3, v4, v5);
}

uint64_t sub_24A8A3F30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A8BAFC4();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  v8 = type metadata accessor for FMNMockClientURLSession(0);
  swift_allocObject();
  result = FMNMockClientURLSession.init(httpArchiveFileURL:)(v6);
  a2[3] = v8;
  a2[4] = &protocol witness table for FMNMockClientURLSession;
  *a2 = result;
  return result;
}

uint64_t FMNServerInteractionController.__allocating_init(authenticationProvider:mockingPreferences:urlSessionFactory:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)(a1, a2, a3, a4);
  return v8;
}

uint64_t FMNServerInteractionController.deinit()
{
  v1 = v0;
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79318, &qword_24A8BD718);
  sub_24A8BB424();

  swift_unknownObjectRelease();
  sub_24A886D90(v1 + 48, &qword_27EF79118, &unk_24A8BD720);
  sub_24A8A2604(*(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128));

  return v1;
}

void sub_24A8A4150(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    MEMORY[0x28223BE20](a1);
    v4 = v3;

    sub_24A8BB0C4();
  }

  *a2 = v3 == 0;
}

uint64_t FMNServerInteractionController.__deallocating_deinit()
{
  FMNServerInteractionController.deinit();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_24A8A4284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24A886914(a1, v13);
  sub_24A886914(a2, &v14);
  sub_24A883EEC(v13, v11, &qword_27EF79160, &qword_24A8BC968);
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;

  sub_24A898C9C(v11, v12, sub_24A8A4380, v9, 0);

  sub_24A886D90(v13, &qword_27EF79160, &qword_24A8BC968);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t sub_24A8A4388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24A886914(a1, v16);
  sub_24A886914(a2, &v17);
  sub_24A883EEC(v16, v14, &qword_27EF79160, &qword_24A8BC968);
  sub_24A886914(v14, v12);
  sub_24A886914(v15, &v13);
  sub_24A883EEC(v12, v10, &qword_27EF79160, &qword_24A8BC968);
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;

  sub_24A898C9C(v10, v11, sub_24A8A8690, v8, 0);

  sub_24A886D90(v12, &qword_27EF79160, &qword_24A8BC968);
  sub_24A886D90(v16, &qword_27EF79160, &qword_24A8BC968);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_24A8A44D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24A886914(a1, v13);
  sub_24A886914(a2, &v14);
  sub_24A883EEC(v13, v11, &qword_27EF79160, &qword_24A8BC968);
  sub_24A898C9C(v11, v12, a4, a5, a6);
  sub_24A886D90(v13, &qword_27EF79160, &qword_24A8BC968);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t sub_24A8A45A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24A886914(a1, v12);
  sub_24A886914(a2, &v13);
  sub_24A883EEC(v12, v10, &qword_27EF79140, &unk_24A8BD730);
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;

  sub_24A8833C4(v10, v11, sub_24A8A8694, v8);

  sub_24A886D90(v12, &qword_27EF79140, &unk_24A8BD730);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return __swift_destroy_boxed_opaque_existential_0Tm(v10);
}

uint64_t sub_24A8A46A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24A886914(a1, v11);
  sub_24A886914(a2, &v12);
  sub_24A883EEC(v11, v9, &qword_27EF79140, &unk_24A8BD730);
  sub_24A8833C4(v9, v10, a4, a5);
  sub_24A886D90(v11, &qword_27EF79140, &unk_24A8BD730);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

uint64_t sub_24A8A4754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v61 = a6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v52);
  v53 = (&v51 - v12);
  v13 = sub_24A8BAF24();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v58 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v51 - v16;
  sub_24A886914(a1, v82);
  sub_24A886914(a2, &v83);
  sub_24A883EEC(v82, v80, &qword_27EF79140, &unk_24A8BD730);
  sub_24A886914(v80, v78);
  sub_24A886914(v81, v79);
  sub_24A883EEC(v78, &v65, &qword_27EF79140, &unk_24A8BD730);
  sub_24A883B44(&v65, v75);
  sub_24A883B44(v68, v74);
  v17 = sub_24A886978(v75);
  sub_24A886B10(v17, v73);
  v63 = v7;
  v64 = v17;
  v62 = v17;
  type metadata accessor for FMNHttpClient();
  sub_24A8BB424();
  v56 = 0;
  v18 = v65;
  sub_24A886914(v78, v71);
  sub_24A886914(v79, &v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
  swift_allocObject();
  v19 = sub_24A8BB1D4();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  sub_24A8BB184();

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;

  sub_24A8BB194();

  v22 = *(v7 + 16);
  v23 = *(v7 + 24);
  sub_24A883EEC(v71, &v67, &qword_27EF79140, &unk_24A8BD730);
  v24 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
  swift_beginAccess();
  v54 = v18;
  sub_24A883EEC(v18 + v24, &v69, &qword_27EF79120, &qword_24A8BC960);
  sub_24A883EEC(v73, v70, &qword_27EF79118, &unk_24A8BD720);
  swift_unknownObjectWeakInit();
  *(&v65 + 1) = v22;
  v66 = v23;
  swift_weakInit();
  v70[8] = v61;
  swift_unknownObjectRetain();
  v25 = sub_24A8887E8(a4, a5, v19);
  sub_24A886D90(&v65, &qword_27EF79150, &unk_24A8BD750);
  sub_24A886D90(v71, &qword_27EF79140, &unk_24A8BD730);
  v26 = swift_allocObject();
  v26[2] = v7;
  v26[3] = v25;
  v26[4] = v19;
  v27 = v76;
  v28 = v77;
  __swift_project_boxed_opaque_existential_1(v75, v76);
  v29 = *(v28 + 16);
  v61 = v19;

  v55 = v25;

  v30 = v58;
  v31 = v27;
  v32 = v57;
  v33 = v28;
  v34 = v59;
  v29(v31, v33);
  v35 = v54;
  v36 = v60;
  sub_24A888D88(v30, v73, v32);
  v37 = *(v34 + 8);
  v37(v30, v36);
  v38 = v56;
  sub_24A889A4C(v74, v32, sub_24A88EF80, v26);
  if (v38)
  {
    v37(v32, v36);
    v39 = sub_24A8BB3C4();
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v40 = sub_24A8BB464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24A8BC300;
    swift_getErrorValue();
    v42 = sub_24A8BB8D4();
    v44 = v43;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_24A8897F0();
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    sub_24A8BB0B4(v39, &dword_24A881000, v40, "FMNServerInteractionController: Unable to request %@", 52, 2, v41);

    v45 = v53;
    *v53 = v38;
    swift_storeEnumTagMultiPayload();
    v46 = v38;
    v47 = sub_24A8BB3D4();
    v48 = sub_24A8BB464();
    sub_24A8BB0B4(v47, &dword_24A881000, v48, "Calling response handler's completion.", 38, 2, MEMORY[0x277D84F90]);

    v49 = v55;
    sub_24A88F02C(v45, v55, v61);

    sub_24A886D90(v45, &qword_27EF79110, &qword_24A8BDC50);
  }

  else
  {

    v37(v32, v36);
  }

  sub_24A886D90(v73, &qword_27EF79118, &unk_24A8BD720);
  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  sub_24A886D90(v78, &qword_27EF79140, &unk_24A8BD730);
  sub_24A886D90(v82, &qword_27EF79140, &unk_24A8BD730);
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  __swift_destroy_boxed_opaque_existential_0Tm(v81);
  return __swift_destroy_boxed_opaque_existential_0Tm(v80);
}

unint64_t sub_24A8A4E90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B0, &qword_24A8BC4E0);
    v2 = sub_24A8BB614();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_24A890B2C(&v22, v24);
        sub_24A890B2C(v24, v25);
        sub_24A890B2C(v25, &v23);
        result = sub_24A88C87C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_24A890B2C(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_24A890B2C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_24A8A50E8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24A8BB5D4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_24A8A7718(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_24A8A53E8(int a1, int a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6)
{
  dispatch_group_enter(group);
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v9 = sub_24A8BB464();
  v10 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNHTTPClientStatusCodeHandler: Renewing credentials because of 401", 67, 2, &dword_24A881000, v9, v10, MEMORY[0x277D84F90]);

  sub_24A883EEC(a4 + 104, &v43, &qword_27EF79120, &qword_24A8BC960);
  if (v44)
  {
    sub_24A883B44(&v43, v45);
    if (*(a4 + 8))
    {
      v41 = *(a4 + 16);
      v11 = v46;
      v12 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v42 = a6;
      v13 = *(v12 + 8);
      swift_unknownObjectRetain();
      v40 = v13(v11, v12);
      v15 = v14;
      v16 = v46;
      v17 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v18 = (*(v17 + 32))(v16, v17);
      v20 = v19;
      v22 = v46;
      v21 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v23 = (*(v21 + 72))(v22, v21);
      v25 = v24;
      v27 = v46;
      v26 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      (*(v26 + 64))(&v43, v27, v26);
      v28 = v43;
      type metadata accessor for FMNAuthenticationCredential();
      v29 = swift_allocObject();
      *(v29 + 16) = v40;
      *(v29 + 24) = v15;
      *(v29 + 32) = v18;
      *(v29 + 40) = v20;
      *(v29 + 48) = v23;
      *(v29 + 56) = v25;
      *(v29 + 64) = v28;
      ObjectType = swift_getObjectType();
      sub_24A899560();
      v31 = swift_allocError();
      *v32 = 2;
      v33 = swift_allocObject();
      *(v33 + 16) = group;
      v34 = *(v41 + 16);
      v35 = group;
      v34(v29, v31, v42, v33, ObjectType, v41);

      swift_unknownObjectRelease();
    }

    else
    {
      v38 = sub_24A8BB464();
      v39 = sub_24A8BB3D4();
      sub_24A8BB0A4("FMNHTTPClientStatusCodeHandler: Could not renew credentials - no authentication provider.", 89, 2, &dword_24A881000, v38, v39, MEMORY[0x277D84F90]);

      dispatch_group_leave(group);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  else
  {
    sub_24A886D90(&v43, &qword_27EF79120, &qword_24A8BC960);
    v36 = sub_24A8BB464();
    v37 = sub_24A8BB3D4();
    sub_24A8BB0A4("FMNHTTPClientStatusCodeHandler: Could not renew credentials - no credentials.", 77, 2, &dword_24A881000, v36, v37, MEMORY[0x277D84F90]);

    dispatch_group_leave(group);
  }
}

uint64_t sub_24A8A574C(int a1, uint64_t a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8, void (*a9)(void, void))
{
  dispatch_group_enter(group);
  if (*(a2 + 16) && (v12 = sub_24A88C87C(0xD000000000000010, 0x800000024A8C02C0), (v13 & 1) != 0))
  {
    v14 = (*(a2 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v17 = sub_24A8BB3D4();
  if (qword_27EF78FF0 != -1)
  {
    swift_once();
  }

  v18 = qword_27EF7D4D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A8BC300;
  v37[0] = v16;
  v37[1] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
  v20 = sub_24A8BB2A4();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_24A8897F0();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  sub_24A8BB0B4(v17, &dword_24A881000, v18, "FMNHTTPClientStatusCodeHandler: Request redirected to host %@.", 62, 2, v19);

  sub_24A883EEC(a4, v37, &qword_27EF79168, &unk_24A8BC970);
  sub_24A883EEC(a6, v36, &qword_27EF79160, &qword_24A8BC968);
  sub_24A883EEC(a7, v35, &qword_27EF79118, &unk_24A8BD720);
  if (v15)
  {
    sub_24A883EEC(a4 + 144, v34, &qword_27EF79118, &unk_24A8BD720);
    if (v34[0])
    {
      v23._countAndFlagsBits = v16;
      v23._object = v15;
      FMNRedirectHostStore.saveRedirectedHost(host:)(v23);
      sub_24A887480(v34);
    }

    else
    {
      sub_24A886D90(v34, &qword_27EF79118, &unk_24A8BD720);
    }

    sub_24A8A66B4(*(a4 + 208) < 1, a5, v37, v36, v35, a8, a9, group);
  }

  else
  {
    v24 = sub_24A8BB3C4();
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v25 = sub_24A8BB464();
    sub_24A8BB0B4(v24, &dword_24A881000, v25, "FMNHTTPClientStatusCodeHandler: Request redirected, no host name provided.", 74, 2, MEMORY[0x277D84F90]);

    v26 = swift_allocObject();
    v27 = MEMORY[0x277D839B0];
    *(v26 + 16) = xmmword_24A8BC300;
    v28 = MEMORY[0x277D839F0];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    *(v26 + 32) = 0;
    sub_24A8BB3D4();
    sub_24A8BB0A4("FMNHTTPClientStatusCodeHandler: Redirect determined we should retry %i", 1);

    dispatch_group_leave(group);
  }

  sub_24A886D90(v35, &qword_27EF79118, &unk_24A8BD720);
  sub_24A886D90(v36, &qword_27EF79160, &qword_24A8BC968);
  return sub_24A886D90(v37, &qword_27EF79168, &unk_24A8BC970);
}

void sub_24A8A5AE8(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v91 = a8;
  v96 = a5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v89);
  v90 = (&v83 - v13);
  v14 = sub_24A8BAF24();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v92 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v83 - v18;
  v98 = a3;
  dispatch_group_enter(a3);
  v20 = *(a2 + 16);
  v93 = v19;
  if (v20 && (v21 = sub_24A88C87C(0xD000000000000010, 0x800000024A8C02C0), (v22 & 1) != 0))
  {
    v23 = (*(a2 + 56) + 16 * v21);
    v24 = *v23;
    v25 = v23[1];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v94 = v15;
  v95 = v14;
  v26 = sub_24A8BB3D4();
  if (qword_27EF78FF0 != -1)
  {
    swift_once();
  }

  v27 = qword_27EF7D4D0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v29 = swift_allocObject();
  v99 = xmmword_24A8BC300;
  *(v29 + 16) = xmmword_24A8BC300;
  v124[0] = v24;
  v124[1] = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
  v30 = sub_24A8BB2A4();
  v100 = v25;
  v32 = v31;
  *(v29 + 56) = MEMORY[0x277D837D0];
  v88 = sub_24A8897F0();
  *(v29 + 64) = v88;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = v100;
  sub_24A8BB0B4(v26, &dword_24A881000, v27, "FMNHTTPClientStatusCodeHandler: Request redirected to host %@.", 62, 2, v29);

  sub_24A883EEC(a4, v124, &qword_27EF79150, &unk_24A8BD750);
  sub_24A883EEC(a6, v123, &qword_27EF79140, &unk_24A8BD730);
  if (!v33)
  {
    v35 = sub_24A8BB3C4();
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v36 = sub_24A8BB464();
    sub_24A8BB0B4(v35, &dword_24A881000, v36, "FMNHTTPClientStatusCodeHandler: Request redirected, no host name provided.", 74, 2, MEMORY[0x277D84F90]);

    v37 = swift_allocObject();
    v38 = MEMORY[0x277D839B0];
    *(v37 + 16) = v99;
    v39 = MEMORY[0x277D839F0];
    *(v37 + 56) = v38;
    *(v37 + 64) = v39;
    *(v37 + 32) = 0;
    sub_24A8BB3D4();
    sub_24A8BB0A4("FMNHTTPClientStatusCodeHandler: Redirect determined we should retry %i", v83);

    dispatch_group_leave(v98);
LABEL_21:
    sub_24A886D90(v123, &qword_27EF79140, &unk_24A8BD730);
    sub_24A886D90(v124, &qword_27EF79150, &unk_24A8BD750);
    return;
  }

  v97 = v28;
  sub_24A883EEC(a4 + 144, &v101, &qword_27EF79118, &unk_24A8BD720);
  if (v101)
  {
    v34._countAndFlagsBits = v24;
    v34._object = v33;
    FMNRedirectHostStore.saveRedirectedHost(host:)(v34);
    sub_24A887480(&v101);
  }

  else
  {
    sub_24A886D90(&v101, &qword_27EF79118, &unk_24A8BD720);
  }

  v40 = *(a4 + 208);
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D839B0];
  *(v41 + 16) = v99;
  v43 = MEMORY[0x277D839F0];
  *(v41 + 56) = v42;
  *(v41 + 64) = v43;
  *(v41 + 32) = v40 < 1;
  sub_24A8BB3D4();
  sub_24A8BB0A4("FMNHTTPClientStatusCodeHandler: Redirect determined we should retry %i", v83);

  if (v40 > 0)
  {
LABEL_20:
    dispatch_group_leave(v98);

    goto LABEL_21;
  }

  sub_24A899560();
  v44 = swift_allocError();
  *v45 = 5;
  sub_24A8BB1B4();

  v46 = v125 + 1;
  if (!__OFADD__(v125, 1))
  {
    sub_24A883EEC(v123, v122, &qword_27EF79140, &unk_24A8BD730);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v48 = Strong;
      sub_24A883EEC(v122, v120, &qword_27EF79140, &unk_24A8BD730);
      v86 = v46;
      sub_24A886914(v120, v118);
      sub_24A886914(v121, &v119);
      sub_24A883EEC(v118, v116, &qword_27EF79140, &unk_24A8BD730);
      sub_24A886914(v116, v114);
      sub_24A886914(v117, v115);
      sub_24A883EEC(v114, &v101, &qword_27EF79140, &unk_24A8BD730);
      sub_24A883B44(&v101, v111);
      sub_24A883B44(v104, v110);
      v49 = sub_24A886978(v111);
      sub_24A886B10(v49, v109);
      MEMORY[0x28223BE20](v50);
      *(&v83 - 2) = v48;
      *(&v83 - 1) = v49;
      v96 = v49;
      type metadata accessor for FMNHttpClient();
      sub_24A8BB424();
      v87 = 0;
      v51 = v101;
      sub_24A886914(v114, v107);
      sub_24A886914(v115, &v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
      swift_allocObject();
      v52 = sub_24A8BB1D4();
      v53 = swift_allocObject();
      v54 = v91;
      *(v53 + 16) = v91;
      *(v53 + 24) = a9;

      sub_24A8BB184();

      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      *(v55 + 24) = a9;

      sub_24A8BB194();

      v56 = *(v48 + 16);
      v57 = *(v48 + 24);
      sub_24A883EEC(v107, &v103, &qword_27EF79140, &unk_24A8BD730);
      v58 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
      swift_beginAccess();
      v84 = v51;
      sub_24A883EEC(v51 + v58, &v105, &qword_27EF79120, &qword_24A8BC960);
      sub_24A883EEC(v109, v106, &qword_27EF79118, &unk_24A8BD720);
      swift_unknownObjectWeakInit();
      *(&v101 + 1) = v56;
      v102 = v57;
      swift_weakInit();
      v106[8] = v86;
      swift_unknownObjectRetain();
      v59 = sub_24A8887E8(v54, a9, v52);
      sub_24A886D90(&v101, &qword_27EF79150, &unk_24A8BD750);
      sub_24A886D90(v107, &qword_27EF79140, &unk_24A8BD730);
      v60 = swift_allocObject();
      v60[2] = v48;
      v60[3] = v59;
      v60[4] = v52;
      v61 = v112;
      v62 = v113;
      __swift_project_boxed_opaque_existential_1(v111, v112);
      v63 = *(v62 + 16);
      v91 = v52;

      v85 = v59;

      v64 = v92;
      v63(v61, v62);
      v65 = v93;
      v86 = v48;
      sub_24A888D88(v64, v109, v93);
      v66 = v95;
      v67 = v94[1];
      v68 = v64;
      v69 = v84;
      v67(v68, v95);
      v94 = v60;
      v70 = v60;
      v71 = v87;
      sub_24A889A4C(v110, v65, sub_24A8995D4, v70);
      if (v71)
      {
        v67(v65, v66);
        v72 = sub_24A8BB3C4();
        sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
        v73 = sub_24A8BB464();
        v74 = swift_allocObject();
        *(v74 + 16) = v99;
        swift_getErrorValue();
        v75 = sub_24A8BB8D4();
        v76 = v88;
        *(v74 + 56) = MEMORY[0x277D837D0];
        *(v74 + 64) = v76;
        *(v74 + 32) = v75;
        *(v74 + 40) = v77;
        sub_24A8BB0B4(v72, &dword_24A881000, v73, "FMNServerInteractionController: Unable to request %@", 52, 2, v74);

        v78 = v90;
        *v90 = v71;
        swift_storeEnumTagMultiPayload();
        v79 = v71;
        v80 = sub_24A8BB3D4();
        v81 = sub_24A8BB464();
        sub_24A8BB0B4(v80, &dword_24A881000, v81, "Calling response handler's completion.", 38, 2, MEMORY[0x277D84F90]);

        v82 = v85;
        sub_24A88F02C(v78, v85, v91);

        sub_24A886D90(v78, &qword_27EF79110, &qword_24A8BDC50);
      }

      else
      {

        v67(v65, v66);
      }

      sub_24A886D90(v109, &qword_27EF79118, &unk_24A8BD720);
      __swift_destroy_boxed_opaque_existential_0Tm(v110);
      sub_24A886D90(v114, &qword_27EF79140, &unk_24A8BD730);
      sub_24A886D90(v118, &qword_27EF79140, &unk_24A8BD730);
      sub_24A886D90(v122, &qword_27EF79140, &unk_24A8BD730);
      __swift_destroy_boxed_opaque_existential_0Tm(v111);
      __swift_destroy_boxed_opaque_existential_0Tm(v117);
      __swift_destroy_boxed_opaque_existential_0Tm(v116);
      __swift_destroy_boxed_opaque_existential_0Tm(v121);
      __swift_destroy_boxed_opaque_existential_0Tm(v120);
    }

    else
    {
      sub_24A886D90(v122, &qword_27EF79140, &unk_24A8BD730);
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_24A8A66B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void (*a7)(void, void), NSObject *a8)
{
  v113 = a6;
  v114 = a7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v111);
  v13 = &v103 - v12;
  v14 = sub_24A8BAF24();
  v116 = *(v14 - 8);
  v117 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v112 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v115 = &v103 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v103 - v19;
  if (qword_27EF78FF0 != -1)
  {
    swift_once();
  }

  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v21 = swift_allocObject();
  v109 = xmmword_24A8BC300;
  *(v21 + 16) = xmmword_24A8BC300;
  v22 = MEMORY[0x277D839F0];
  *(v21 + 56) = MEMORY[0x277D839B0];
  *(v21 + 64) = v22;
  *(v21 + 32) = a1 & 1;
  sub_24A8BB3D4();
  sub_24A8BB0A4("FMNHTTPClientStatusCodeHandler: Redirect determined we should retry %i", v103);

  if ((a1 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_24A899560();
  v23 = swift_allocError();
  *v24 = 5;
  sub_24A8BB1B4();

  v25 = *(a3 + 208);
  v108 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    sub_24A883EEC(a4, &v118, &qword_27EF79160, &qword_24A8BC968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79160, &qword_24A8BC968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79140, &unk_24A8BD730);
    if (swift_dynamicCast())
    {
      sub_24A886D90(v143, &qword_27EF79140, &unk_24A8BD730);
      sub_24A883EEC(a4, &v118, &qword_27EF79160, &qword_24A8BC968);
      if (swift_dynamicCast())
      {
        v105 = v13;
        v143[2] = v140;
        v143[3] = v141;
        v143[4] = v142;
        v143[0] = v138;
        v143[1] = v139;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v27 = Strong;
          v106 = a8;
          sub_24A883EEC(v143, &v138, &qword_27EF79140, &unk_24A8BD730);
          sub_24A886914(&v138, v136);
          sub_24A886914(&v140 + 8, v137);
          sub_24A883EEC(v136, v134, &qword_27EF79140, &unk_24A8BD730);
          sub_24A886914(v134, v132);
          sub_24A886914(v135, v133);
          sub_24A883EEC(v132, &v118, &qword_27EF79140, &unk_24A8BD730);
          sub_24A883B44(&v118, v129);
          sub_24A883B44(v121, v128);
          v28 = sub_24A886978(v129);
          sub_24A886B10(v28, v127);
          MEMORY[0x28223BE20](v29);
          *(&v103 - 2) = v27;
          *(&v103 - 1) = v28;
          v104 = v28;
          type metadata accessor for FMNHttpClient();
          sub_24A8BB424();
          v103 = 0;
          v107 = v118;
          sub_24A886914(v132, v125);
          sub_24A886914(v133, v126);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
          swift_allocObject();
          v30 = sub_24A8BB1D4();
          v31 = swift_allocObject();
          v32 = v27;
          v33 = v113;
          v34 = v114;
          *(v31 + 16) = v113;
          *(v31 + 24) = v34;

          v112 = v30;
          sub_24A8BB184();

          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = v34;

          sub_24A8BB194();

          v36 = v32;
          v37 = *(v32 + 16);
          v38 = *(v32 + 24);
          sub_24A883EEC(v125, v120, &qword_27EF79140, &unk_24A8BD730);
          v39 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
          v40 = v107;
          swift_beginAccess();
          sub_24A883EEC(v40 + v39, v122, &qword_27EF79120, &qword_24A8BC960);
          sub_24A883EEC(v127, v123, &qword_27EF79118, &unk_24A8BD720);
          swift_unknownObjectWeakInit();
          *(&v118 + 1) = v37;
          v119 = v38;
          swift_weakInit();
          v124 = v108;
          swift_unknownObjectRetain();
          v41 = v33;
          v42 = v112;
          v43 = sub_24A8887E8(v41, v34, v112);
          sub_24A886D90(&v118, &qword_27EF79150, &unk_24A8BD750);
          sub_24A886D90(v125, &qword_27EF79140, &unk_24A8BD730);
          v44 = swift_allocObject();
          v44[2] = v36;
          v44[3] = v43;
          v44[4] = v42;
          v45 = v130;
          v46 = v131;
          __swift_project_boxed_opaque_existential_1(v129, v130);
          v114 = *(v46 + 16);

          v113 = v43;

          v47 = v115;
          v114(v45, v46);
          v114 = v36;
          sub_24A888D88(v47, v127, v20);
          v48 = v117;
          v49 = v116[1];
          v50 = v47;
          v51 = v107;
          v49(v50, v117);
          v116 = v44;
          v52 = v44;
          v53 = v103;
          sub_24A889A4C(v128, v20, sub_24A8995D4, v52);
          if (v53)
          {
            v49(v20, v48);
            v54 = sub_24A8BB3C4();
            sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
            v55 = sub_24A8BB464();
            v56 = swift_allocObject();
            *(v56 + 16) = v109;
            swift_getErrorValue();
            v57 = sub_24A8BB8D4();
            v59 = v58;
            *(v56 + 56) = MEMORY[0x277D837D0];
            *(v56 + 64) = sub_24A8897F0();
            *(v56 + 32) = v57;
            *(v56 + 40) = v59;
            sub_24A8BB0B4(v54, &dword_24A881000, v55, "FMNServerInteractionController: Unable to request %@", 52, 2, v56);

            v60 = v105;
            *v105 = v53;
            swift_storeEnumTagMultiPayload();
            v61 = v53;
            v62 = sub_24A8BB3D4();
            v63 = sub_24A8BB464();
            sub_24A8BB0B4(v62, &dword_24A881000, v63, "Calling response handler's completion.", 38, 2, MEMORY[0x277D84F90]);

            v64 = v113;
            sub_24A88F02C(v60, v113, v112);

            sub_24A886D90(v60, &qword_27EF79110, &qword_24A8BDC50);
          }

          else
          {

            v49(v20, v48);
          }

          a8 = v106;
          sub_24A886D90(v127, &qword_27EF79118, &unk_24A8BD720);
          __swift_destroy_boxed_opaque_existential_0Tm(v128);
          v101 = &qword_27EF79140;
          v102 = &unk_24A8BD730;
LABEL_21:
          sub_24A886D90(v132, v101, v102);
          sub_24A886D90(v136, v101, v102);
          sub_24A886D90(v143, v101, v102);
          __swift_destroy_boxed_opaque_existential_0Tm(v129);
          __swift_destroy_boxed_opaque_existential_0Tm(v135);
          __swift_destroy_boxed_opaque_existential_0Tm(v134);
          __swift_destroy_boxed_opaque_existential_0Tm(&v140 + 1);
          __swift_destroy_boxed_opaque_existential_0Tm(&v138);
          goto LABEL_22;
        }

        v99 = &qword_27EF79140;
        v100 = &unk_24A8BD730;
        goto LABEL_18;
      }

      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v138 = 0u;
      sub_24A886D90(&v138, &unk_27EF79350, &qword_24A8BDA60);
    }

    sub_24A883EEC(a4, v143, &qword_27EF79160, &qword_24A8BC968);
    v65 = swift_weakLoadStrong();
    if (v65)
    {
      v66 = v65;
      v105 = v13;
      v106 = a8;
      sub_24A883EEC(v143, &v138, &qword_27EF79160, &qword_24A8BC968);
      sub_24A886914(&v138, v136);
      sub_24A886914(&v140 + 8, v137);
      sub_24A883EEC(v136, v134, &qword_27EF79160, &qword_24A8BC968);
      sub_24A886914(v134, v132);
      sub_24A886914(v135, v133);
      sub_24A883EEC(v132, &v118, &qword_27EF79160, &qword_24A8BC968);
      sub_24A883B44(&v118, v129);
      sub_24A883B44(v121, v128);
      v67 = sub_24A886978(v129);
      sub_24A886B10(v67, v127);
      MEMORY[0x28223BE20](v68);
      *(&v103 - 2) = v66;
      *(&v103 - 1) = v67;
      v104 = v67;
      type metadata accessor for FMNHttpClient();
      sub_24A8BB424();
      v103 = 0;
      v69 = v118;
      sub_24A886914(v132, v125);
      sub_24A886914(v133, v126);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
      swift_allocObject();
      v70 = sub_24A8BB1D4();
      v71 = swift_allocObject();
      v73 = v113;
      v72 = v114;
      *(v71 + 16) = v113;
      *(v71 + 24) = v72;

      sub_24A8BB184();

      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      *(v74 + 24) = v72;

      sub_24A8BB194();

      v75 = *(v66 + 16);
      v76 = *(v66 + 24);
      sub_24A883EEC(v125, v120, &qword_27EF79160, &qword_24A8BC968);
      v77 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
      swift_beginAccess();
      v107 = v69;
      sub_24A883EEC(v69 + v77, v122, &qword_27EF79120, &qword_24A8BC960);
      sub_24A883EEC(v127, v123, &qword_27EF79118, &unk_24A8BD720);
      swift_unknownObjectWeakInit();
      *(&v118 + 1) = v75;
      v119 = v76;
      swift_weakInit();
      v124 = v108;
      swift_unknownObjectRetain();
      v78 = sub_24A8A2F40(v73, v72, v70);
      sub_24A886D90(&v118, &qword_27EF79168, &unk_24A8BC970);
      sub_24A886D90(v125, &qword_27EF79160, &qword_24A8BC968);
      v79 = swift_allocObject();
      v79[2] = v66;
      v79[3] = v78;
      v79[4] = v70;
      v80 = v130;
      v81 = v131;
      __swift_project_boxed_opaque_existential_1(v129, v130);
      v82 = *(v81 + 16);
      v114 = v70;

      v113 = v78;

      v83 = v115;
      v82(v80, v81);
      v84 = v112;
      sub_24A888D88(v83, v127, v112);
      v85 = v117;
      v86 = v116[1];
      v86(v83, v117);
      v87 = v103;
      sub_24A8AA108(v128, v84, sub_24A8995D4, v79);
      if (v87)
      {
        v86(v84, v85);
        v88 = sub_24A8BB3C4();
        sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
        v89 = sub_24A8BB464();
        v90 = swift_allocObject();
        *(v90 + 16) = v109;
        swift_getErrorValue();
        v91 = sub_24A8BB8D4();
        v93 = v92;
        *(v90 + 56) = MEMORY[0x277D837D0];
        *(v90 + 64) = sub_24A8897F0();
        *(v90 + 32) = v91;
        *(v90 + 40) = v93;
        sub_24A8BB0B4(v88, &dword_24A881000, v89, "FMNServerInteractionController: Unable to request %@", 52, 2, v90);

        v94 = v105;
        *v105 = v87;
        swift_storeEnumTagMultiPayload();
        v95 = v87;
        v96 = sub_24A8BB3D4();
        v97 = sub_24A8BB464();
        sub_24A8BB0B4(v96, &dword_24A881000, v97, "Calling response handler's completion.", 38, 2, MEMORY[0x277D84F90]);

        v98 = v113;
        sub_24A88F02C(v94, v113, v114);

        sub_24A886D90(v94, &qword_27EF79110, &qword_24A8BDC50);
      }

      else
      {

        v86(v84, v85);
      }

      a8 = v106;
      sub_24A886D90(v127, &qword_27EF79118, &unk_24A8BD720);
      __swift_destroy_boxed_opaque_existential_0Tm(v128);
      v101 = &qword_27EF79160;
      v102 = &qword_24A8BC968;
      goto LABEL_21;
    }

    v99 = &qword_27EF79160;
    v100 = &qword_24A8BC968;
LABEL_18:
    sub_24A886D90(v143, v99, v100);
LABEL_22:
    dispatch_group_leave(a8);
    return;
  }

  __break(1u);
}

unsigned __int8 *sub_24A8A7718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24A8BB324();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24A8A7CA4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24A8BB5D4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24A8A7CA4(uint64_t a1, unint64_t a2)
{
  v2 = sub_24A8BB334();
  v6 = sub_24A8A7D24(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24A8A7D24(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24A8BB494();
    if (!v9 || (v10 = v9, v11 = sub_24A8A7E7C(v9, 0), v12 = sub_24A8A7EF0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24A8BB2B4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24A8BB2B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24A8BB5D4();
LABEL_4:

  return sub_24A8BB2B4();
}

void *sub_24A8A7E7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79338, "6;");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_24A8A7EF0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24A8A8110(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24A8BB304();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24A8BB5D4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24A8A8110(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24A8BB2E4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_24A8A8110(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24A8BB314();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C21E900](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_24A8A8190()
{
  result = qword_27EF79328;
  if (!qword_27EF79328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79328);
  }

  return result;
}

unint64_t sub_24A8A81E8()
{
  result = qword_27EF79330;
  if (!qword_27EF79330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79330);
  }

  return result;
}

uint64_t dispatch thunk of FMNServerInteractionController.retryUpload(consolidatedContent:redirectedHostStore:responseHandler:retryCount:)()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

uint64_t dispatch thunk of FMNServerInteractionController.retryRequest(consolidatedContent:redirectedHostStore:responseHandler:retryCount:)()
{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

uint64_t getEnumTagSinglePayload for FMNServerInteractionController.FMNServerInteractionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMNServerInteractionController.FMNServerInteractionError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A8A8530()
{
  result = qword_2814AAA70;
  if (!qword_2814AAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAA70);
  }

  return result;
}

unint64_t sub_24A8A869C(char a1)
{
  result = 6712678;
  switch(a1)
  {
    case 1:
      result = 0x707041666D66;
      break;
    case 2:
      result = 1885957478;
      break;
    case 3:
      result = 0x6972695370696D66;
      break;
    case 4:
      result = 0x7075746573;
      break;
    case 5:
      result = 0x6150686372616573;
      break;
    case 6:
      result = 0x4C676E6972696170;
      break;
    case 7:
      result = 0x726F737365636361;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x7373656363413277;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6F4C657275636573;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x726168536D657469;
      break;
    case 14:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A8A888C(uint64_t a1)
{
  swift_beginAccess();
  sub_24A8A88DC(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_24A8A88DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79120, &qword_24A8BC960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A8A899C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A8BAF24();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 160))(v6);
}

uint64_t sub_24A8A8A88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FMNetworking14FMNHTTPRequest_urlComponents;
  swift_beginAccess();
  v4 = sub_24A8BAF24();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t FMNHTTPRequest.__allocating_init(hostName:scheme:path:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v10 + 56) = 14;
  sub_24A8BAF14();
  swift_beginAccess();
  sub_24A8BAF04();
  MEMORY[0x24C21E4E0](a1, a2);
  MEMORY[0x24C21E500](a5, a6);
  swift_endAccess();
  return v10;
}

uint64_t sub_24A8A8C5C(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 168))(v7);

  MEMORY[0x24C21E4E0](a1, a2);
  return v5(v7, 0);
}

unint64_t sub_24A8A8CF4()
{
  v1 = sub_24A8BAF24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_24A8BB594();

  v19 = 0xD000000000000011;
  v20 = 0x800000024A8C0550;
  (*(*v0 + 152))(v5);
  sub_24A889310();
  v6 = sub_24A8BB724();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x24C21E8E0](v6, v8);

  MEMORY[0x24C21E8E0](8236, 0xE200000000000000);
  v10 = v19;
  v9 = v20;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_24A8BB594();

  strcpy(v21, "accountType: ");
  HIWORD(v21[1]) = -4864;
  (*(*v0 + 128))(&v19, v11);
  v12 = sub_24A8A869C(v19);
  MEMORY[0x24C21E8E0](v12);

  v13 = MEMORY[0x24C21E8E0](0x746E656465726320, 0xED0000203A6C6169);
  (*(*v0 + 104))(&v19, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79120, &qword_24A8BC960);
  v14 = sub_24A8BB2A4();
  MEMORY[0x24C21E8E0](v14);

  v15 = v21[0];
  v16 = v21[1];
  v19 = v10;
  v20 = v9;

  MEMORY[0x24C21E8E0](v15, v16);

  return v19;
}

uint64_t FMNHTTPRequest.deinit()
{
  sub_24A8A900C(v0 + 16);
  v1 = OBJC_IVAR____TtC12FMNetworking14FMNHTTPRequest_urlComponents;
  v2 = sub_24A8BAF24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_24A8A900C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79120, &qword_24A8BC960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMNHTTPRequest.__deallocating_deinit()
{
  sub_24A8A900C(v0 + 16);
  v1 = OBJC_IVAR____TtC12FMNetworking14FMNHTTPRequest_urlComponents;
  v2 = sub_24A8BAF24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

id FMNHttpClient.__allocating_init(credential:urlSessionFactory:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_24A886534(a1, a2);

  return v6;
}

uint64_t sub_24A8A932C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_24A8BAFC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMNFileUploadRequest(0);
  (*(v6 + 16))(v8, v3 + v9[6], v5);
  sub_24A8BAD94();
  v38 = a1;
  sub_24A8BAD64();
  sub_24A883EEC(v3 + v9[8], &v33, &qword_27EF79120, &qword_24A8BC960);
  if (v34)
  {
    sub_24A883B44(&v33, v35);
    v10 = v36;
    v11 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    result = (*(v11 + 56))(v10, v11);
    v13 = result;
    if (!*(result + 16))
    {

      sub_24A8AC55C();
      swift_allocError();
      *v30 = 1;
      swift_willThrow();
      v31 = sub_24A8BADF4();
      (*(*(v31 - 8) + 8))(v38, v31);
      return __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    v32[0] = v3;
    v32[1] = v2;
    v14 = 0;
    v15 = 1 << *(result + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(result + 64);
    v18 = (v15 + 63) >> 6;
    if (v17)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_28;
      }

      if (v19 >= v18)
      {
        break;
      }

      v17 = *(v13 + 64 + 8 * v19);
      ++v14;
      if (v17)
      {
        v14 = v19;
        do
        {
LABEL_11:
          v17 &= v17 - 1;

          sub_24A8BADE4();
        }

        while (v17);
        continue;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v3 = v32[0];
  }

  else
  {
    sub_24A886D90(&v33, &qword_27EF79120, &qword_24A8BC960);
  }

  v20 = *(v3 + v9[7]);
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  v24 = 1 << *(*(v3 + v9[7]) + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  if (v26)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {
    }

    v26 = *(v22 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      do
      {
LABEL_23:
        v26 &= v26 - 1;

        sub_24A8BADE4();
      }

      while (v26);
      continue;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_24A8A9750@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A8AC548;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A88D378(v4, v5);
}

uint64_t sub_24A8A97F0(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, sub_24A8AC4D4, v7);
}

uint64_t sub_24A8A9888(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A8AC510;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A88D378(v3, v4);
  return sub_24A8895E8(v8, v9);
}

uint64_t sub_24A8A9950(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *))
{
  v10 = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[0] = sub_24A8AC518;
  v9[1] = v7;

  a4(&v10, v9);
}

uint64_t sub_24A8A99F4()
{
  v1 = (v0 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_24A88D378(*v1, v1[1]);
  return v2;
}

uint64_t sub_24A8A9A50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24A8895E8(v6, v7);
}

uint64_t sub_24A8A9B10(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24A8A9B7C()
{
  v1 = (v0 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24A8A9BD4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id FMNHttpClient.init(credential:urlSessionFactory:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A886534(a1, a2);

  return v2;
}

id FMNHttpClient.__deallocating_deinit()
{

  sub_24A8BB0C4();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNHttpClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A8A9F04()
{

  sub_24A8BB0C4();
}

uint64_t sub_24A8A9F84(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_session;
  swift_beginAccess();
  sub_24A883EEC(a1 + v2, &v9, &qword_27EF79478, &unk_24A8BDC70);
  if (*(&v10 + 1))
  {
    sub_24A886914(&v9, v6);
    sub_24A886D90(&v9, &qword_27EF79478, &unk_24A8BDC70);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 24))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
    sub_24A886D90(&v9, &qword_27EF79478, &unk_24A8BDC70);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  swift_beginAccess();
  sub_24A8874D4(&v9, a1 + v2, &qword_27EF79478, &unk_24A8BDC70);
  return swift_endAccess();
}

uint64_t sub_24A8AA108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a4;
  v94 = a3;
  v109 = a2;
  v100 = sub_24A8BADF4();
  v99 = *(v100 - 8);
  v5 = MEMORY[0x28223BE20](v100);
  v97 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v96 = &v92 - v8;
  MEMORY[0x28223BE20](v7);
  v98 = &v92 - v9;
  v101 = type metadata accessor for FMNFileUploadRequest(0);
  MEMORY[0x28223BE20](v101);
  v104 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v11 = MEMORY[0x28223BE20](v107);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  *&v106 = &v92 - v14;
  v15 = sub_24A8BAF24();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A8BAFC4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v93 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v108 = &v92 - v23;
  v24 = a1[3];
  v25 = a1[4];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = (*(v25 + 56))(v24, v25);
  v27 = 0;
  v28 = 0;
  if (v26)
  {
    v29 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
    v30 = v114;
    swift_beginAccess();
    sub_24A883EEC(v30 + v29, v111, &qword_27EF79120, &qword_24A8BC960);
    v27 = v112;
    if (v112)
    {
      v31 = v113;
      __swift_project_boxed_opaque_existential_1(v111, v112);
      v27 = (*(v31 + 32))(v27, v31);
      v28 = v32;
      sub_24A886D90(v111, &qword_27EF79120, &qword_24A8BC960);
    }

    else
    {
      sub_24A886D90(v111, &qword_27EF79120, &qword_24A8BC960);
      v28 = 0;
    }
  }

  (*(v16 + 16))(v18, v109, v15);
  if (v28)
  {
    v33 = sub_24A8BAEE4();
    v109 = v20;
    v111[0] = v33;
    v111[1] = v34;
    v110[2] = 16421;
    v110[3] = 0xE200000000000000;
    v110[0] = v27;
    v110[1] = v28;
    sub_24A88A774();
    v35 = MEMORY[0x277D837D0];
    v36 = sub_24A8BB4B4();
    v102 = v15;
    v38 = v37;

    MEMORY[0x24C21E500](v36, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_24A8BC300;
    sub_24A8BAEB4();
    v40 = sub_24A8BB2A4();
    v42 = v41;
    *(v39 + 56) = v35;
    *(v39 + 64) = sub_24A8897F0();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    v20 = v109;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v43 = sub_24A8BB464();
    v44 = sub_24A8BB3D4();
    sub_24A8BB0A4("FMNHttpClient: new path %@", 26, 2, &dword_24A881000, v43, v44, v39);
    v15 = v102;
  }

  sub_24A8BAEB4();
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    sub_24A886D90(v13, &qword_27EF79180, &qword_24A8BC9F0);
    sub_24A8AC098();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();

    return (*(v16 + 8))(v18, v15);
  }

  else
  {

    (*(v16 + 8))(v18, v15);
    v47 = v108;
    v48 = (*(v20 + 32))(v108, v13, v19);
    MEMORY[0x28223BE20](v48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79388, &qword_24A8BDB10);
    v49 = v105;
    sub_24A8BB0C4();
    if (v49)
    {
      (*(v20 + 8))(v47, v19);
    }

    else
    {

      v107 = MEMORY[0x24C21F020](v50);
      v51 = v103;
      v52 = v103[3];
      v53 = v103[4];
      __swift_project_boxed_opaque_existential_1(v103, v52);
      (*(v53 + 40))(v110, v52, v53);
      v54 = v47;
      LODWORD(v109) = LOBYTE(v110[0]);
      v55 = v101;
      v56 = v104;
      (*(v20 + 16))(v104 + *(v101 + 24), v54, v19);
      v57 = v51[3];
      v58 = v51[4];
      __swift_project_boxed_opaque_existential_1(v51, v57);
      (*(v58 + 8))(v57, v58);
      v59 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
      v60 = v114;
      swift_beginAccess();
      sub_24A883EEC(v60 + v59, v56 + v55[8], &qword_27EF79120, &qword_24A8BC960);
      v61 = v51[3];
      v62 = v51[4];
      __swift_project_boxed_opaque_existential_1(v51, v61);
      v63 = (*(v62 + 16))(v61, v62);
      *(v56 + v55[5]) = v109;
      *(v56 + v55[7]) = v63;
      v64 = v51[3];
      v65 = v51[4];
      __swift_project_boxed_opaque_existential_1(v51, v64);
      if ((*(v65 + 48))(v64, v65))
      {
        v66 = &v115;
      }

      else
      {
        v66 = &v116;
      }

      v67 = *(v66 - 32);
      sub_24A8A932C(v67);
      v109 = v20;
      (*(v99 + 32))(v98, v67, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v68 = swift_allocObject();
      v106 = xmmword_24A8BC300;
      *(v68 + 16) = xmmword_24A8BC300;
      v69 = sub_24A88CA00();
      v71 = v70;
      *(v68 + 56) = MEMORY[0x277D837D0];
      *(v68 + 64) = sub_24A8897F0();
      *(v68 + 32) = v69;
      *(v68 + 40) = v71;
      sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
      v72 = sub_24A8BB464();
      v73 = sub_24A8BB3D4();
      sub_24A8BB0A4("Client URL Request: %@", 22, 2, &dword_24A881000, v72, v73, v68);

      v74 = swift_allocObject();
      *(v74 + 16) = v106;
      v75 = sub_24A8BAD84();
      *(v74 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF793A8, &qword_24A8BDB18);
      *(v74 + 64) = sub_24A882D9C(&qword_2814AABC0, &unk_27EF793A8, &qword_24A8BDB18, MEMORY[0x277CC9BB8]);
      v92 = v19;
      if (!v75)
      {
        v75 = sub_24A88B040(MEMORY[0x277D84F90]);
      }

      *(v74 + 32) = v75;
      v76 = sub_24A8BB464();
      v77 = sub_24A8BB3D4();
      sub_24A8BB0A4("Server Request Headers: %@", 26, 2, &dword_24A881000, v76, v77, v74);

      v78 = v103[3];
      v79 = v103[4];
      __swift_project_boxed_opaque_existential_1(v103, v78);
      v80 = v93;
      (*(v79 + 8))(v78, v79);
      v81 = v112;
      v82 = v113;
      __swift_project_boxed_opaque_existential_1(v111, v112);
      v83 = swift_allocObject();
      v84 = v114;
      v85 = v94;
      v83[2] = v114;
      v83[3] = v85;
      v83[4] = v95;
      v86 = *(v82 + 16);
      v87 = v84;

      v88 = v98;
      v89 = v86(v98, v80, sub_24A88DCF8, v83, v81, v82);

      v90 = *(v109 + 8);
      v91 = v92;
      v90(v80, v92);
      [v89 resume];
      (*(v99 + 8))(v88, v100);
      sub_24A88CDF4(v104, type metadata accessor for FMNFileUploadRequest);
      objc_autoreleasePoolPop(v107);

      v90(v108, v91);
      return __swift_destroy_boxed_opaque_existential_0Tm(v111);
    }
  }
}

uint64_t sub_24A8AADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  a7(a1, a2, a6, v13);
}

uint64_t sub_24A8AAE60(uint64_t a1, void (*a2)(void **))
{
  v17 = a2;
  v3 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79158, &unk_24A8BDC80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v16 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - v11);
  sub_24A883EEC(a1, &v16 - v11, &qword_27EF79110, &qword_24A8BDC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    *v9 = *v12;
    (*(v7 + 104))(v9, *MEMORY[0x277D498C0], v6);
    v14 = v13;
    v17(v9);

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_24A88F45C(v12, v5);
    sub_24A88ECB0(v5, v9, type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    (*(v7 + 104))(v9, *MEMORY[0x277D498C8], v6);
    v17(v9);
    (*(v7 + 8))(v9, v6);
    return sub_24A88CDF4(v5, type metadata accessor for FMNServerInteractionController.FMNResponseFields);
  }
}

uint64_t sub_24A8AB0F8@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = sub_24A8BB294();
  v87 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A8BADF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v9 = sub_24A8BB464();
  v10 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNHttpClient: signRequestBodyIfNeeded...", 41, 2, &dword_24A881000, v9, v10, MEMORY[0x277D84F90]);

  result = sub_24A88C28C(v8);
  if (!v1)
  {
    v12 = v87;
    v84 = v5;
    v85 = v6;
    v83 = 0;
    v13 = sub_24A8BB244();
    v14 = NSClassFromString(v13);

    if (v14)
    {
      return (*(v85 + 32))(v86, v8, v84);
    }

    v15 = sub_24A8BB464();
    v16 = sub_24A8BB3D4();
    sub_24A8BB0A4("FMNHttpClient: body requires signature", 38, 2, &dword_24A881000, v15, v16, MEMORY[0x277D84F90]);

    v17 = v8;
    v18 = sub_24A8BAD84();
    v19 = v84;
    if (!v18)
    {
      goto LABEL_11;
    }

    if (!*(v18 + 16) || (sub_24A88C87C(0x7A69726F68747541, 0xED00006E6F697461), (v20 & 1) == 0))
    {

      goto LABEL_11;
    }

    sub_24A8BB284();
    v82 = sub_24A8BB264();
    v22 = v21;

    (v12[1])(v4, v2);
    if (v22 >> 60 == 15)
    {
LABEL_11:
      sub_24A8AC098();
      swift_allocError();
      *v25 = 2;
      swift_willThrow();
      return (*(v85 + 8))(v8, v19);
    }

    v23 = sub_24A8BADC4();
    if (v24 >> 60 == 15)
    {
      sub_24A88C814(v82, v22);
      goto LABEL_11;
    }

    v26 = v23;
    v27 = v24;
    v28 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
    v80 = v22;
    v29 = sub_24A8BB004();
    [v28 appendData_];

    v79 = v26;
    v78 = v27;
    v30 = sub_24A8BB004();
    [v28 appendData_];

    v77 = v28;
    v31 = [v28 fm_sha256Hash];
    v32 = sub_24A8BB024();
    v34 = v33;

    v35 = dispatch_group_create();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v87 = (v36 + 16);
    v37 = swift_allocObject();
    *(v37 + 16) = MEMORY[0x277D84F98];
    dispatch_group_enter(v35);
    v81 = [objc_opt_self() sharedInstance];
    v75 = v32;
    v74 = v34;
    v38 = sub_24A8BB004();
    v39 = swift_allocObject();
    v39[2] = v35;
    v39[3] = v36;
    v39[4] = v37;
    aBlock[4] = sub_24A8AC550;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A8ABFF8;
    aBlock[3] = &block_descriptor_105;
    v40 = _Block_copy(aBlock);
    v41 = v35;
    v76 = v36;
    v42 = v37 + 16;

    v73 = v37;

    v43 = v81;
    [v81 signatureHeadersWithData:v38 completion:v40];
    _Block_release(v40);

    v81 = v41;
    sub_24A8BB3F4();
    swift_beginAccess();
    if (!*(*(v37 + 16) + 16))
    {
      v72 = sub_24A8BB3C4();
      v71 = sub_24A8BB464();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_24A8BCEB0;
      v45 = v87;
      swift_beginAccess();
      v88 = *v45;
      v46 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
      v47 = sub_24A8BB2A4();
      v49 = v48;
      v50 = MEMORY[0x277D837D0];
      *(v44 + 56) = MEMORY[0x277D837D0];
      v51 = sub_24A8897F0();
      *(v44 + 64) = v51;
      *(v44 + 32) = v47;
      *(v44 + 40) = v49;

      v52 = sub_24A8BB204();
      v54 = v53;

      *(v44 + 96) = v50;
      *(v44 + 104) = v51;
      *(v44 + 72) = v52;
      *(v44 + 80) = v54;
      v55 = v71;
      sub_24A8BB0B4(v72, &dword_24A881000, v71, "FMNHttpClient: failed to sign %@ %@", 35, 2, v44);

      v56 = *v45;
      v57 = *v45;
      v58 = *v45;
      if (!*v45)
      {
        sub_24A8AC098();
        v58 = swift_allocError();
        *v59 = 3;
        v57 = *v45;
      }

      *v45 = v58;
      v60 = v56;
    }

    v61 = v87;
    swift_beginAccess();
    if (*v61)
    {
      aBlock[8] = 3;
      sub_24A8BB724();
      sub_24A8BADE4();
    }

    v62 = *v42 + 64;
    v63 = 1 << *(*v42 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & *(*v42 + 64);
    v66 = (v63 + 63) >> 6;
    v87 = *v42;

    v67 = 0;
    v68 = v85;
    v69 = v86;
    if (v65)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v70 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v70 >= v66)
      {
        sub_24A88C814(v82, v80);
        sub_24A88C814(v79, v78);
        sub_24A88C828(v75, v74);

        (*(v68 + 32))(v69, v17, v84);
      }

      v65 = *(v62 + 8 * v70);
      ++v67;
      if (v65)
      {
        v67 = v70;
        do
        {
LABEL_27:
          v65 &= v65 - 1;

          sub_24A8BADE4();

          v68 = v85;
          v69 = v86;
        }

        while (v65);
        continue;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A8ABA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v5 = a1;
  return a3(&v5, &v4);
}

id FMNHttpClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FMNHttpClient.urlSession(_:didReceive:completionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void), uint64_t a4)
{
  v32 = a3;
  v29 = a2;
  v6 = sub_24A8BB0D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A8BB104();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A8BB0E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v4 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v18 = *v17;
  if (!*v17)
  {
    return v32(1, 0);
  }

  v28 = v7;
  v19 = v17[1];
  sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v14 + 104))(v16, *MEMORY[0x277D851C8], v13);

  v27 = sub_24A8BB454();
  (*(v14 + 8))(v16, v13);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v21 = v29;
  v22 = v32;
  v20[4] = v29;
  v20[5] = v22;
  v20[6] = a4;
  aBlock[4] = sub_24A88D404;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_23;
  v23 = _Block_copy(aBlock);
  sub_24A88D378(v18, v19);
  v24 = v21;

  sub_24A8BB0F4();
  v33 = MEMORY[0x277D84F90];
  sub_24A8870CC(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0, MEMORY[0x277D83970]);
  sub_24A8BB4E4();
  v25 = v27;
  MEMORY[0x24C21EA40](0, v12, v9, v23);
  _Block_release(v23);

  sub_24A8895E8(v18, v19);
  (*(v28 + 8))(v9, v6);
  (*(v30 + 8))(v12, v31);
}

void sub_24A8ABF24(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  if (a1)
  {
    v12 = a1;
  }

  else
  {
    swift_beginAccess();
    v12 = *(a5 + 16);
  }

  swift_beginAccess();
  *(a5 + 16) = v12;

  dispatch_group_leave(a3);
}

uint64_t sub_24A8ABFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24A8BB1F4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

unint64_t sub_24A8AC098()
{
  result = qword_27EF79380;
  if (!qword_27EF79380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79380);
  }

  return result;
}

uint64_t dispatch thunk of FMNHttpClient.upload(requestContent:urlComponents:completionHandler:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x150))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
}

uint64_t dispatch thunk of FMNHttpClient.fetch(requestContent:urlComponents:completionHandler:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x160))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x168))();
}

unint64_t sub_24A8AC480()
{
  result = qword_27EF79448;
  if (!qword_27EF79448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79448);
  }

  return result;
}

uint64_t sub_24A8AC4D4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

unint64_t sub_24A8AC55C()
{
  result = qword_27EF79490;
  if (!qword_27EF79490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79490);
  }

  return result;
}

uint64_t type metadata accessor for HAREntry(uint64_t a1)
{
  result = qword_27EF79520;
  if (!qword_27EF79520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A8AC6A4(uint64_t a1)
{
  result = sub_24A8BB054();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24A8AC754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A8AC79C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24A8AC834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A8AC87C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A8AC8E4()
{
  v0 = sub_24A8BB294();
  __swift_allocate_value_buffer(v0, qword_27EF7D4D8);
  __swift_project_value_buffer(v0, qword_27EF7D4D8);
  return sub_24A8BB284();
}

uint64_t sub_24A8AC930(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79530, &qword_24A8BDF30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8AE718();
  sub_24A8BB984();
  v8 = *(v2 + 16);
  v12 = *v2;
  v13 = v8;
  v14 = *(v2 + 32);
  v15 = *(v2 + 48);
  sub_24A8AE76C(v2, v11);
  sub_24A8AE7A4();
  sub_24A8BB704();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24A8ACAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A8BB804();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A8ACB64(uint64_t a1)
{
  v2 = sub_24A8AE718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8ACBA0(uint64_t a1)
{
  v2 = sub_24A8AE718();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A8ACBDC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A8AF3F0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_24A8ACC70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79678, &qword_24A8BE560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B1444();
  sub_24A8BB984();
  LOBYTE(v11[0]) = 0;
  sub_24A8BB6E4();
  if (!v2)
  {
    *&v11[0] = *(v3 + 16);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79688, &qword_24A8BE568);
    sub_24A8B1498(&qword_27EF79690, &qword_27EF79698, &unk_24A8BDE8C, MEMORY[0x277D83948]);
    sub_24A8BB704();
    v9 = *(v3 + 40);
    v11[0] = *(v3 + 24);
    v11[1] = v9;
    v12 = 2;
    sub_24A8B1534();
    sub_24A8BB704();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24A8ACE7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79580, &qword_24A8BDF48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8AF5DC();
  sub_24A8BB984();
  v59 = 0;
  sub_24A8BB054();
  sub_24A8B1588(&qword_27EF79588, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_24A8BB704();
  if (!v2)
  {
    v9 = type metadata accessor for HAREntry(0);
    v10 = v3 + *(v9 + 20);
    v11 = *(v10 + 48);
    v12 = *(v10 + 80);
    v54 = *(v10 + 64);
    v55 = v12;
    v13 = *(v10 + 16);
    v14 = *(v10 + 48);
    v52 = *(v10 + 32);
    v53 = v14;
    v15 = *(v10 + 16);
    v51[0] = *v10;
    v51[1] = v15;
    v16 = *(v10 + 80);
    v48 = v54;
    v49 = v16;
    v44 = v51[0];
    v45 = v13;
    v56 = *(v10 + 96);
    v50 = *(v10 + 96);
    v46 = v52;
    v47 = v11;
    v58 = 1;
    sub_24A8AF708(v51, v37);
    sub_24A8AF740();
    sub_24A8BB704();
    v35[4] = v48;
    v35[5] = v49;
    v36 = v50;
    v35[0] = v44;
    v35[1] = v45;
    v35[2] = v46;
    v35[3] = v47;
    sub_24A8AF684(v35);
    v17 = v3 + *(v9 + 24);
    v18 = *(v17 + 80);
    v19 = *(v17 + 48);
    v40 = *(v17 + 64);
    v41 = v18;
    v20 = *(v17 + 80);
    v42 = *(v17 + 96);
    v21 = *(v17 + 16);
    v22 = *(v17 + 48);
    v38 = *(v17 + 32);
    v39 = v22;
    v23 = *(v17 + 16);
    v37[0] = *v17;
    v37[1] = v23;
    v31 = v40;
    v32 = v20;
    v33 = *(v17 + 96);
    v27 = v37[0];
    v28 = v21;
    v43 = *(v17 + 112);
    v34 = *(v17 + 112);
    v29 = v38;
    v30 = v19;
    v57 = 2;
    sub_24A8AF794(v37, v25);
    sub_24A8AF7CC();
    sub_24A8BB704();
    v25[4] = v31;
    v25[5] = v32;
    v25[6] = v33;
    v26 = v34;
    v25[0] = v27;
    v25[1] = v28;
    v25[2] = v29;
    v25[3] = v30;
    sub_24A8AF820(v25);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24A8AD1E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_24A8BB054();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79558, &qword_24A8BDF40);
  v30 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v26 - v6;
  v8 = type metadata accessor for HAREntry(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8AF5DC();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = v30;
  v28 = a1;
  v27 = v10;
  v12 = v31;
  LOBYTE(v34) = 0;
  sub_24A8B1588(&qword_27EF79568, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v13 = v32;
  v14 = v50;
  sub_24A8BB6A4();
  (*(v12 + 32))(v27, v13, v4);
  v42 = 1;
  sub_24A8AF630();
  sub_24A8BB6A4();
  v15 = &v27[*(v8 + 20)];
  v16 = v48;
  *(v15 + 4) = v47;
  *(v15 + 5) = v16;
  *(v15 + 12) = v49;
  v17 = v44;
  *v15 = v43;
  *(v15 + 1) = v17;
  v18 = v46;
  *(v15 + 2) = v45;
  *(v15 + 3) = v18;
  v33 = 2;
  sub_24A8AF6B4();
  sub_24A8BB6A4();
  (*(v11 + 8))(v7, v14);
  v19 = *(v8 + 24);
  v20 = v27;
  v21 = &v27[v19];
  v22 = v39;
  *(v21 + 4) = v38;
  *(v21 + 5) = v22;
  *(v21 + 6) = v40;
  *(v21 + 14) = v41;
  v23 = v35;
  *v21 = v34;
  *(v21 + 1) = v23;
  v24 = v37;
  *(v21 + 2) = v36;
  *(v21 + 3) = v24;
  sub_24A89F118(v20, v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  return sub_24A89F17C(v20);
}