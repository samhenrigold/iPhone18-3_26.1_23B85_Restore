void sub_268169858()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v22[1] = v6;
  v7 = sub_2683CCA28();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v13 = v12 - v11;
  v23 = v5;
  v22[4] = v3;
  v22[5] = v1;
  v14 = sub_2683CFD28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD48, &qword_2683D4D18);
  OUTLINED_FUNCTION_6_6();
  sub_26816A078();
  v22[0] = sub_2683CFC48();
  if (qword_28024CB88 != -1)
  {
    swift_once();
  }

  sub_2683CD158();
  v15 = sub_2683CCA08();
  v23 = v5;
  MEMORY[0x28223BE20](v15);
  v22[-2] = v3;
  v22[-1] = v1;
  KeyPath = swift_getKeyPath();
  v17 = MEMORY[0x28223BE20](KeyPath);
  v22[-2] = v1;
  v22[-1] = v17;
  v18 = sub_2683CC288();
  WitnessTable = swift_getWitnessTable();
  sub_268167FAC(sub_26816A0DC, &v22[-4], v14, v18, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);

  v21 = sub_2683CCA18();

  (*(v9 + 8))(v13, v7);
  v23 = v22[0];
  sub_2682C00E0(v21);
  sub_268169078();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268169AEC@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, void, void)@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD40, &qword_2683D4D10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v13 = type metadata accessor for SimpleDisambiguationItem(255, a3, v11, v12);
  v16 = type metadata accessor for IdentifiableItem(0, v13, v14, v15);
  sub_2682B2AD8(*(a1 + *(v16 + 28) + *(v13 + 32)));
  v17 = sub_2683CC288();
  if (__swift_getEnumTagSinglePayload(v10, 1, v17) == 1)
  {
    sub_26812C310(v10, &qword_28024DD40, &qword_2683D4D10);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = sub_2683CC268();
    v19 = v20;
    (*(*(v17 - 8) + 8))(v10, v17);
  }

  v21 = a2(v18, v19, *a1, a1[1]);

  *a4 = v21;
  return result;
}

uint64_t sub_268169C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for SimpleDisambiguationItem(255, a2, a4, a5);
  v10 = type metadata accessor for IdentifiableItem(0, v7, v8, v9);
  return sub_26816A168(a1 + *(v7 + 36) + *(v10 + 28), a3);
}

uint64_t sub_268169CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (*(*(a3 + 8) + 8))(a2);
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a1;
  v9 = sub_268152950(sub_26816A108, v11, v8);

  *a4 = v9;
  return result;
}

uint64_t sub_268169D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2683CC288();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD40, &qword_2683D4D10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  (*(a4 + 16))(a3, a4);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v7);
  (*(v8 + 16))(v10, a1, v7);
  return sub_2683CC158();
}

void sub_268169F04()
{
  sub_268168DC4();
  v0 = [objc_allocWithZone(MEMORY[0x277D47128]) init];
  v1 = sub_2683CFA78();
  sub_26816A1D8(v1, v2, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2683D2250;
  *(v3 + 32) = v0;
  v4 = v0;
  sub_2683CC4C8();
  sub_2683CC8C8();
  swift_allocObject();
  sub_2683CC8B8();
  sub_2683CF258();
  sub_2683CC898();

  sub_2683CC8A8();

  sub_2683CC508();
}

unint64_t sub_26816A078()
{
  result = qword_28024DD50;
  if (!qword_28024DD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024DD48, &qword_2683D4D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD50);
  }

  return result;
}

uint64_t sub_26816A168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26816A1D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setReason_];
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_2683CFB08();
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;

  JUMPOUT(0x26D616690);
}

void *OUTLINED_FUNCTION_17_3()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

void OUTLINED_FUNCTION_18_5()
{

  JUMPOUT(0x26D616690);
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t Snippet.LocalizableLabel.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_2683D0408();

  v6 = 7;
  if (v4 < 7)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t Snippet.LocalizableLabel.rawValue.getter()
{
  result = 0x474E495649525241;
  switch(*v0)
  {
    case 1:
      result = 0x474E495641454CLL;
      break;
    case 2:
      result = 0x41435F5245544E45;
      break;
    case 3:
      result = 0x5241435F54495845;
      break;
    case 4:
      result = 0x4E4947415353454DLL;
      break;
    case 5:
      result = 5457241;
      break;
    case 6:
      result = 20302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26816A534@<X0>(uint64_t *a1@<X8>)
{
  result = Snippet.LocalizableLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_26816A560()
{
  result = qword_28024DD58;
  if (!qword_28024DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD58);
  }

  return result;
}

uint64_t _s14descr2878F8F29V16LocalizableLabelOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14descr2878F8F29V16LocalizableLabelOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26816A7E0()
{
  result = qword_28024DD60;
  if (!qword_28024DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD60);
  }

  return result;
}

uint64_t sub_26816A834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v21 - v18;
  sub_26816AC94(a5, &v21 - v18);

  swift_unknownObjectRetain();

  return RREntity.init<A>(_:appBundleId:objectIdOverride:groupId:)(a1, a2, a3, a4, v19, a6, a7, a8);
}

uint64_t RREntity.init<A>(_:appBundleId:objectIdOverride:groupId:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a6;
  v31 = a3;
  v29[0] = a4;
  v29[1] = a2;
  v32 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_23(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  v19 = v29 - v18;
  swift_getAssociatedTypeWitness();
  v20 = sub_2683CE308();
  OUTLINED_FUNCTION_23(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v21);
  sub_2683CE288();
  (*(a8 + 32))(a7, a8);
  sub_2683CE278();
  if (sub_2683CD568())
  {
    v22 = v30;
    if (!a5)
    {
      (*(a8 + 24))(a7, a8);
    }

    sub_26816AC94(v22, v15);
    sub_2683CF868();
    sub_26812C310(v22, &qword_28024DD70, &unk_2683D4E80);

    v23 = sub_2683CF8B8();
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v23);
    if (!__swift_getEnumTagSinglePayload(v19, 1, v23))
    {
      v27 = v32;
      (*(*(v23 - 8) + 32))(v32, v19, v23);
      v25 = v27;
      v26 = 0;
      v24 = v23;
      return __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
    }

    sub_26812C310(v19, &qword_28024DD28, &qword_2683D4CF0);
  }

  else
  {
    sub_26812C310(v30, &qword_28024DD70, &unk_2683D4E80);
    swift_unknownObjectRelease();
  }

  v24 = sub_2683CF8B8();
  v25 = v32;
  v26 = 1;
  return __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
}

uint64_t sub_26816AC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26816AD2C(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_1_11(a1, a2);

      v3 = 0x657A6F6F6E73;
      goto LABEL_10;
    case 2:
      v5 = 0x73746E65746E6F63;
      goto LABEL_13;
    case 3:
      v4 = 1702129518;
      goto LABEL_6;
    case 4:
      v4 = 1802723700;
LABEL_6:
      v5 = v4 & 0xFFFF0000FFFFFFFFLL | 0x5B7300000000;
      goto LABEL_13;
    case 5:
      v5 = 0x7473694C6B736174;
      goto LABEL_13;
    case 6:
      v5 = 0x7361546465646461;
      goto LABEL_13;
    case 7:
      result = 0x6465696669646F6DLL;
      switch(a1)
      {
        case 1:
          OUTLINED_FUNCTION_0_15();
          result = v10 + 3;
          break;
        case 2:
          OUTLINED_FUNCTION_0_15();
          result = v11 + 5;
          break;
        case 3:
          OUTLINED_FUNCTION_0_15();
          result = v9 + 11;
          break;
        case 4:
          result = 0xD000000000000019;
          break;
        case 5:
          result = 0xD000000000000019;
          break;
        case 6:
          OUTLINED_FUNCTION_0_15();
          result = v12 - 9;
          break;
        case 7:
          return result;
        case 8:
          result = 0x5464657461657263;
          break;
        case 9:
          result = 0x70756F7267;
          break;
        case 10:
          result = 0x656C746974;
          break;
        case 11:
          result = 0;
          break;
        default:
          OUTLINED_FUNCTION_0_15();
          result = v7 - 3;
          break;
      }

      return result;
    default:
      OUTLINED_FUNCTION_1_11(a1, a2);

      v3 = 0x6574656C6564;
LABEL_10:
      v5 = v3 & 0xFFFFFFFFFFFFLL | 0x5464000000000000;
LABEL_13:
      v13 = v5;
      v8 = sub_2683D0568();
      MEMORY[0x26D616690](v8);

      MEMORY[0x26D616690](93, 0xE100000000000000);
      return v13;
  }
}

BOOL sub_26816AFAC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 == 1)
      {
        return a1 == a3;
      }

      return 0;
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      return a1 == a3;
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

      return a1 == a3;
    case 4:
      if (a4 != 4)
      {
        return 0;
      }

      return a1 == a3;
    case 5:
      if (a4 != 5)
      {
        return 0;
      }

      return a1 == a3;
    case 6:
      if (a4 == 6)
      {
        return a1 == a3;
      }

      return 0;
    case 7:
      switch(a1)
      {
        case 1:
          if (a4 != 7 || a3 != 1)
          {
            return 0;
          }

          break;
        case 2:
          if (a4 != 7 || a3 != 2)
          {
            return 0;
          }

          break;
        case 3:
          if (a4 != 7 || a3 != 3)
          {
            return 0;
          }

          break;
        case 4:
          if (a4 != 7 || a3 != 4)
          {
            return 0;
          }

          break;
        case 5:
          if (a4 != 7 || a3 != 5)
          {
            return 0;
          }

          break;
        case 6:
          if (a4 != 7 || a3 != 6)
          {
            return 0;
          }

          break;
        case 7:
          if (a4 != 7 || a3 != 7)
          {
            return 0;
          }

          break;
        case 8:
          if (a4 != 7 || a3 != 8)
          {
            return 0;
          }

          break;
        case 9:
          if (a4 != 7 || a3 != 9)
          {
            return 0;
          }

          break;
        case 10:
          if (a4 != 7 || a3 != 10)
          {
            return 0;
          }

          break;
        case 11:
          if (a4 != 7 || a3 != 11)
          {
            return 0;
          }

          break;
        default:
          if (a4 != 7 || a3 != 0)
          {
            return 0;
          }

          break;
      }

      return 1;
    default:
      return !a4 && a1 == a3;
  }
}

uint64_t sub_26816B19C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_26816AD2C(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ParameterKeyPathComponent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 9))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 7)
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

uint64_t storeEnumTagSinglePayload for ParameterKeyPathComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26816B268(uint64_t a1)
{
  if (*(a1 + 8) <= 6u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 7);
  }
}

uint64_t sub_26816B280(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_11(uint64_t a1, uint64_t a2)
{

  return sub_2683D0178();
}

id sub_26816B2DC(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_2683CB3C8();
  [v2 setPunchOutUri_];

  v4 = sub_2683CB438();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26816B39C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26816B3DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26816B434()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  sub_2683CCB88();
  v6 = OUTLINED_FUNCTION_27_2();
  v5(v6);
  (*(v2 + 8))(v4, v1);
  sub_2681340E8(v35, v34, &qword_28024D460, &qword_2683D5050);
  if (v34[56] == 255)
  {
    goto LABEL_6;
  }

  sub_2681340E8(v34, v30, &qword_28024D460, &qword_2683D5050);
  if (v33)
  {
    if (v33 == 7)
    {
      v7 = vorrq_s8(v31, v32);
      if (!(*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v30[2] | v30[1] | v30[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v23 = sub_2683CF7E8();
        __swift_project_value_buffer(v23, qword_28027C958);
        v24 = sub_2683CF7C8();
        v25 = sub_2683CFE98();
        if (os_log_type_enabled(v24, v25))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v26, v27, "AddTasks.NeedsValueStrategy actionForInput returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v30);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    sub_2681340E8(v35, v30, &qword_28024D460, &qword_2683D5050);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;
      sub_2681340E8(v30, v28, &qword_28024D460, &qword_2683D5050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v13 = sub_2683CFAD8();
      v15 = v14;
      sub_2681433DC(v30, &qword_28024D460, &qword_2683D5050);
      v16 = sub_2681610A0(v13, v15, &v29);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2680EB000, v9, v10, "AddTasks.NeedsValueStrategy actionForInput returning .ignore() for unsupported task: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_2681433DC(v30, &qword_28024D460, &qword_2683D5050);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_2681433DC(v35, &qword_28024D460, &qword_2683D5050);
    return sub_2681433DC(v34, &qword_28024D460, &qword_2683D5050);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v17 = sub_2683CF7E8();
  __swift_project_value_buffer(v17, qword_28027C958);
  v18 = sub_2683CF7C8();
  v19 = sub_2683CFE98();
  if (os_log_type_enabled(v18, v19))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v20, v21, "AddTasks.NeedsValueStrategy actionForInput returning .handle()");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_2681433DC(v35, &qword_28024D460, &qword_2683D5050);
  sub_26813A1A0(v30);
  return sub_2681433DC(v34, &qword_28024D460, &qword_2683D5050);
}

uint64_t sub_26816B8B8()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2683CCBA8();
  v1[19] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CC748();
  v1[22] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[23] = v8;
  v1[24] = OUTLINED_FUNCTION_15_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v1[25] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[26] = v10;
  v1[27] = OUTLINED_FUNCTION_15_1();
  v11 = sub_2683CCC18();
  v1[28] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[29] = v12;
  v1[30] = OUTLINED_FUNCTION_15_1();
  v13 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_26816BA50(uint64_t a1)
{
  v34 = v1;
  v3 = *(v1 + 232);
  v2 = *(v1 + 240);
  v4 = *(v1 + 224);
  v5 = *(*(v1 + 144) + 24);
  sub_2683CCB88();
  v5(v2, 0);
  (*(v3 + 8))(v2, v4);
  if (*(v1 + 72))
  {
    if (*(v1 + 72) == 255)
    {
      sub_2681433DC(v1 + 16, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v1 + 16);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v12 = *(v1 + 160);
    v11 = *(v1 + 168);
    v13 = *(v1 + 152);
    v14 = *(v1 + 128);
    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    (*(v12 + 16))(v11, v14, v13);
    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE88();
    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v1 + 160);
      v18 = *(v1 + 168);
      v20 = *(v1 + 152);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      sub_2683CCB88();
      v23 = sub_2683CFAD8();
      v25 = v24;
      (*(v19 + 8))(v18, v20);
      v26 = sub_2681610A0(v23, v25, &v33);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2680EB000, v16, v17, "AddTasks.NeedsValueStrategy.parseValueResponse Did not find an .addTasks task from parse: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
      v28 = *(v1 + 160);
      v27 = *(v1 + 168);
      v29 = *(v1 + 152);

      (*(v28 + 8))(v27, v29);
    }

    sub_26812C6B8();
    swift_allocError();
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 4;
    swift_willThrow();
    OUTLINED_FUNCTION_43_3();

    OUTLINED_FUNCTION_40();

    return v31();
  }

  else
  {
    sub_268128148((v1 + 16), v1 + 80);
    v6 = *(v1 + 104);
    v7 = *(v1 + 112);
    __swift_project_boxed_opaque_existential_1((v1 + 80), v6);
    v8 = sub_2683CC9B8();
    *(v1 + 248) = v8;
    v32 = (*(v7 + 24) + **(v7 + 24));
    v9 = swift_task_alloc();
    *(v1 + 256) = v9;
    *v9 = v1;
    OUTLINED_FUNCTION_26_4(v9);

    return v32(1, v8, v6, v7);
  }
}

uint64_t sub_26816BE44()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v5;
  *(v3 + 272) = v0;

  if (v0)
  {
    v6 = sub_26816C2AC;
  }

  else
  {

    v6 = sub_26816BF54;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26816BF54()
{
  v1 = v0[33];
  v2 = sub_2683CC9C8();
  v3 = sub_2682D33A8(v1);

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[17];
  v8 = sub_2683CF7E8();
  __swift_project_value_buffer(v8, qword_28027C958);
  (*(v5 + 16))(v4, v7, v6);
  v9 = v3;
  v10 = sub_2683CF7C8();
  v11 = sub_2683CFE98();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[25];
  if (v12)
  {
    v16 = v0[23];
    v17 = v0[24];
    v31 = v0[22];
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v18 = 136315394;
    log = v10;
    sub_2683CC9E8();
    sub_2683CC738();
    (*(v16 + 8))(v17, v31);
    (*(v13 + 8))(v14, v15);
    v19 = OUTLINED_FUNCTION_41_0();
    v22 = sub_2681610A0(v19, v20, v21);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v9;
    *v33 = v9;
    v23 = v9;
    _os_log_impl(&dword_2680EB000, log, v11, "Updated intent after prompt for %s: %@", v18, 0x16u);
    sub_2681433DC(v33, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  v24 = v0[33];
  v25 = v0[15];
  v26 = sub_2683CC9D8();
  v27 = [v26 resolvedValue];

  sub_2683D0038();
  swift_unknownObjectRelease();
  sub_26816E814();
  sub_2683CC618();

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD98, &qword_2683D5058);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  OUTLINED_FUNCTION_7_4();

  return v29();
}

uint64_t sub_26816C2AC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  OUTLINED_FUNCTION_43_3();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26816C338()
{
  OUTLINED_FUNCTION_14();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[30] = v4;
  OUTLINED_FUNCTION_23(v4);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v5 = sub_2683CC9A8();
  v1[35] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[36] = v6;
  v1[37] = OUTLINED_FUNCTION_15_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v7);
  v1[38] = OUTLINED_FUNCTION_15_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v8);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CC138();
  v1[40] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[41] = v10;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v11);
  v1[44] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v12);
  v1[45] = v13;
  v1[46] = *(v14 + 64);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v15 = sub_2683CC528();
  v1[55] = v15;
  OUTLINED_FUNCTION_3_1(v15);
  v1[56] = v16;
  v1[57] = OUTLINED_FUNCTION_15_1();
  v17 = sub_2683CC748();
  v1[58] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[59] = v18;
  v1[60] = OUTLINED_FUNCTION_15_1();
  v19 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_26816C664()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = OUTLINED_FUNCTION_0_0();
  v9 = sub_2681E290C(v7, v8);
  if (v9 == 8)
  {
    sub_26812C6B8();
    swift_allocError();
    *v10 = v4;
    *(v10 + 8) = v6;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_24_3();

    __asm { BRAA            X1, X16 }
  }

  v13 = v9;
  v14 = v0[54];
  v15 = v0[30];

  v0[5] = &type metadata for AddTasks.Parameter;
  v0[6] = &off_287903B10;
  *(v0 + 16) = v13;
  sub_2681687C8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = OUTLINED_FUNCTION_27_2();
  __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
  v18 = swift_task_alloc();
  v0[61] = v18;
  *v18 = v0;
  v18[1] = sub_26816C930;
  OUTLINED_FUNCTION_24_3();

  return sub_26816DD24(v19);
}

uint64_t sub_26816C930()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  *v4 = *v1;
  v3[62] = v5;
  v3[63] = v0;

  if (v0)
  {
    sub_2681433DC(v3[53], &qword_28024E770, &qword_2683D80D0);
    v6 = OUTLINED_FUNCTION_41_0();
    sub_2681433DC(v6, v7, &qword_2683D80D0);
    v8 = sub_26816DBAC;
  }

  else
  {
    v3[64] = *(v3[29] + 8);
    v8 = sub_26816CA7C;
  }

  return MEMORY[0x2822009F8](v8);
}

void sub_26816CA7C()
{
  v1 = v0[62];
  v2 = v0[55];
  v3 = v0[44];
  v4 = v0[39];
  (*(v0[56] + 16))(v3, v0[57], v2);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  sub_2683CC118();
  v5 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_2683CC1D8();
  v6 = OUTLINED_FUNCTION_27_2();
  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v9 = swift_allocObject();
  v0[65] = v9;
  *(v9 + 16) = xmmword_2683D2250;
  *(v9 + 32) = v1;
  v10 = v1;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26D616C90](0, v9);
    }

    else
    {
      v11 = *(v9 + 32);
    }

    v12 = v11;
    v13 = [v11 catId];

    v77 = sub_2683CFA78();
    v80 = v14;
  }

  else
  {
    v77 = 0;
    v80 = 0;
  }

  v15 = v0[64];
  v16 = v0[54];
  v76 = v16;
  v18 = v0[51];
  v17 = v0[52];
  v20 = v0[45];
  v19 = v0[46];
  v72 = v0[43];
  v73 = v0[44];
  v21 = v0[41];
  v70 = v0[42];
  v71 = v0[40];
  v74 = v0[39];
  v75 = v0[38];
  v78 = v0[30];
  v79 = v0[50];
  sub_2681340E8(v0[53], v17, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v16, v18, &qword_28024E770, &qword_2683D80D0);
  v22 = *(v20 + 80);
  v23 = (v22 + 24) & ~v22;
  v24 = (v19 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  v0[66] = v25;
  *(v25 + 16) = v15;
  sub_2681430AC(v17, v25 + v23);
  sub_2681430AC(v18, v25 + v24);
  (*(v21 + 16))(v70, v72, v71);
  v26 = swift_task_alloc();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 40) = v77;
  *(v26 + 48) = v80;
  *(v26 + 56) = v73;
  *(v26 + 64) = 513;
  *(v26 + 72) = sub_26814311C;
  *(v26 + 80) = v25;
  *(v26 + 88) = 0;
  *(v26 + 96) = v74;
  *(v26 + 104) = 2;
  *(v26 + 112) = v75;

  sub_2683CC8E8();

  sub_2681340E8(v76, v79, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v79, 1, v78) == 1)
  {
    v27 = v0 + 50;
  }

  else
  {
    v28 = v0[49];
    v29 = v0[30];
    sub_26814320C(v0[50], v0[34]);
    v30 = OUTLINED_FUNCTION_41_0();
    sub_2681340E8(v30, v31, v32, v33);
    if (__swift_getEnumTagSinglePayload(v28, 1, v29) != 1)
    {
      v53 = v0[33];
      v54 = v0[34];
      v55 = v0[30];
      sub_26814320C(v0[49], v53);
      v0[20] = v55;
      v56 = sub_268143270();
      v0[21] = v56;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v54, boxed_opaque_existential_0);
      v0[25] = v55;
      v0[26] = v56;
      v58 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      sub_2681432C8(v53, v58);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      v0[67] = v59;
      *v59 = v60;
      OUTLINED_FUNCTION_30_2(v59);
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v27 = v0 + 49;
    sub_26814332C(v0[34]);
  }

  v34 = v0[48];
  v35 = v0[30];
  sub_2681433DC(*v27, &qword_28024E770, &qword_2683D80D0);
  v36 = OUTLINED_FUNCTION_41_0();
  sub_2681340E8(v36, v37, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v35);
  v39 = v0[48];
  v40 = v0[30];
  if (EnumTagSinglePayload == 1)
  {
    v41 = v0[53];
    v42 = v0[47];
    sub_2681433DC(v39, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v41, v42, &qword_28024E770, &qword_2683D80D0);
    v43 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v43, v44, v40) == 1)
    {
      sub_2681433DC(v0[47], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      v0[70] = v45;
      *v45 = v46;
      OUTLINED_FUNCTION_30_2(v45);
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v63 = v0[30];
    v64 = v0[31];
    sub_26814320C(v0[47], v64);
    v0[10] = v63;
    v0[11] = sub_268143270();
    v65 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v64, v65);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    v0[69] = v66;
    *v66 = v67;
    OUTLINED_FUNCTION_30_2(v66);
  }

  else
  {
    v49 = v0[32];
    sub_26814320C(v39, v49);
    v0[15] = v40;
    v0[16] = sub_268143270();
    v50 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2681432C8(v49, v50);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    v0[68] = v51;
    *v51 = v52;
    OUTLINED_FUNCTION_30_2(v51);
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_26816D11C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26816D3D0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26816D674()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26816D918()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26816DBAC()
{
  (*(v0[56] + 8))(v0[57], v0[55]);

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26816DD24(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26816DD50()
{
  switch(*(v0 + 56))
  {
    case 2:
      OUTLINED_FUNCTION_35_2();
      v9 = swift_task_alloc();
      *(v0 + 24) = v9;
      *v9 = v0;
      OUTLINED_FUNCTION_26_4(v9);

      result = sub_268324F34();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_35_2();
      v7 = swift_task_alloc();
      *(v0 + 32) = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_26_4(v7);

      result = sub_268324E90();
      break;
    case 5:
      OUTLINED_FUNCTION_35_2();
      v10 = swift_task_alloc();
      *(v0 + 40) = v10;
      *v10 = v0;
      OUTLINED_FUNCTION_26_4(v10);

      result = sub_268324FD8();
      break;
    case 6:
      OUTLINED_FUNCTION_35_2();
      v8 = swift_task_alloc();
      *(v0 + 48) = v8;
      *v8 = v0;
      OUTLINED_FUNCTION_26_4(v8);

      result = sub_268324DEC();
      break;
    default:
      v1 = sub_2681E6434(*(v0 + 56));
      v3 = v2;
      sub_26816E7C0();
      swift_allocError();
      *v4 = v1;
      *(v4 + 8) = v3;
      *(v4 + 16) = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_40();

      result = v5();
      break;
  }

  return result;
}

uint64_t sub_26816DFCC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_37();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26816E0B8()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_37();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26816E1A4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_37();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26816E290()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_37();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26816E380()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_26816E858;

  return sub_26816B8B8();
}

uint64_t sub_26816E444()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_26816E500;

  return sub_26816C338();
}

uint64_t sub_26816E500()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26816E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268133EC8;

  return MEMORY[0x2821B9BF8](a1, a2, a3, a4);
}

uint64_t sub_26816E6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821B9C00](a1, a2, a3, a4);
}

unint64_t sub_26816E76C()
{
  result = qword_28024DD78;
  if (!qword_28024DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD78);
  }

  return result;
}

unint64_t sub_26816E7C0()
{
  result = qword_28024DD88;
  if (!qword_28024DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD88);
  }

  return result;
}

unint64_t sub_26816E814()
{
  result = qword_28024DD90;
  if (!qword_28024DD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024DD90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_12()
{
  result = v0[37];
  v3 = v0[31];
  v4 = v0[32];
  *(v1 - 96) = v0[33];
  *(v1 - 88) = v4;
  *(v1 - 80) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_2681433DC(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_2681433DC(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_43_3()
{
}

uint64_t OUTLINED_FUNCTION_46_3(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_2681433DC(a10, a2, a3);
}

uint64_t sub_26816E9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2681E73A0(a1);
  sub_2683CC808();
  swift_allocObject();

  sub_2683CC7F8();
  sub_2683CC7E8();
  if (v5)
  {
    sub_2683CF288();

    sub_2683CB668();
    OUTLINED_FUNCTION_0_9();
    (*(v6 + 8))(a2);
    v7 = sub_2683CF2A8();

    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v7);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);

    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE78();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      sub_2683CF278();
      sub_26816EC88();
      v14 = sub_2683D0568();
      v16 = sub_2681610A0(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2680EB000, v10, v11, "Could not construct an AppDisplayInfo for app: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x26D617A40](v13, -1, -1);
      MEMORY[0x26D617A40](v12, -1, -1);
    }

    else
    {
    }

    sub_2683CB668();
    OUTLINED_FUNCTION_0_9();
    (*(v17 + 8))(a2);
    v18 = sub_2683CF2A8();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v18);
  }
}

unint64_t sub_26816EC88()
{
  result = qword_280253330;
  if (!qword_280253330)
  {
    sub_2683CF278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253330);
  }

  return result;
}

uint64_t sub_26816ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  if (a4)
  {

    return sub_2681E658C(v5);
  }

  return result;
}

uint64_t sub_26816ED20()
{
  result = *(v0 + *(type metadata accessor for SetTaskAttributeIntentModelNLv4(0) + 36));
  if (result)
  {

    return sub_2681E658C(v2);
  }

  return result;
}

uint64_t sub_26816ED60()
{
  result = *(v0 + 32);
  if (result)
  {

    return sub_2681E658C(v2);
  }

  return result;
}

uint64_t sub_26816ED94()
{
  result = *(v0 + 56);
  if (result)
  {

    return sub_2681E658C(v2);
  }

  return result;
}

uint64_t sub_26816EDC8()
{
  result = *(v0 + 40);
  if (result)
  {

    return sub_2681E658C(v2);
  }

  return result;
}

uint64_t sub_26816EDFC()
{
  result = *(v0 + 24);
  if (result)
  {

    return sub_2681E658C(v2);
  }

  return result;
}

void sub_26816EF9C()
{
  OUTLINED_FUNCTION_30_0();
  v29[0] = v0;
  v1 = sub_2683CF8B8();
  OUTLINED_FUNCTION_0_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  v9 = OUTLINED_FUNCTION_23(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  v16 = sub_2683CDB98();
  OUTLINED_FUNCTION_0_3();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_3();
  v22 = v21 - v20;
  v23 = sub_2683CE038();
  OUTLINED_FUNCTION_42_3(v23);
  sub_2683CE028();
  (*(v18 + 104))(v22, *MEMORY[0x277D5EE50], v16);
  sub_2683CE018();
  (*(v18 + 8))(v22, v16);
  v24 = sub_2683CE0F8();
  OUTLINED_FUNCTION_42_3(v24);
  v25 = sub_2683CE0E8();

  sub_2683CD898();

  sub_26816F2D8(v25, 3u, v15);
  sub_2681340E8(v15, v12, &qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_72(v12, 1, v1);
  if (v26)
  {
    sub_26812D9E0(v15, &qword_28024DD28, &qword_2683D4CF0);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_36_3();
    v28(v27);
    sub_2683CF8A8();
    sub_2683CDC28();
    sub_2683CD8A8();

    if (v29[1])
    {
      sub_2683CDC18();
    }

    (*(v3 + 8))(v7, v1);
    sub_26812D9E0(v15, &qword_28024DD28, &qword_2683D4CF0);
  }

  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26816F2D8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v72 = sub_2683CF808();
  v69 = *(v72 - 8);
  v6 = MEMORY[0x28223BE20](v72);
  v68 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = v65 - v8;
  v9 = sub_2683CF838();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDA0, &unk_2683D50C0);
  MEMORY[0x28223BE20](v13);
  v15 = v65 - v14;
  v16 = sub_2683CF8C8();
  v73 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v74 = v65 - v20;
  v21 = MEMORY[0x26D614230](a1);
  if (!v21)
  {
    goto LABEL_4;
  }

  v22 = v21;
  v65[1] = v3;
  v66 = v16;
  v71 = a3;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  *v12 = v22;
  (*(v10 + 104))(v12, *MEMORY[0x277D5FEA8], v9);

  sub_2683CF6D8();
  (*(v10 + 8))(v12, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_26812D9E0(v15, &qword_28024DDA0, &unk_2683D50C0);
    a3 = v71;
LABEL_4:
    v23 = sub_2683CF8B8();
    v24 = a3;
LABEL_5:
    v25 = 1;
    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
  }

  v65[0] = v22;
  v28 = v73;
  v27 = v74;
  v29 = v66;
  (*(v73 + 32))(v74, v15, v66);
  (*(v28 + 16))(v19, v27, v29);
  v30 = (*(v28 + 88))(v19, v29);
  if (v30 == *MEMORY[0x277D5FEC0])
  {
    (*(v28 + 96))(v19, v29);
    v32 = v69;
    v31 = v70;
    v33 = v72;
    (*(v69 + 32))(v70, v19, v72);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v34 = sub_2683CF7E8();
    __swift_project_value_buffer(v34, qword_28027C958);
    v35 = v68;
    (*(v32 + 16))(v68, v31, v33);
    v36 = sub_2683CF7C8();
    v37 = sub_2683CFE98();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v35;
      v40 = swift_slowAlloc();
      v75 = v40;
      *v38 = 136315138;
      sub_268172F84();
      v41 = sub_2683D0568();
      v43 = v42;
      v44 = *(v32 + 8);
      v44(v39, v72);
      v45 = v41;
      v27 = v74;
      v46 = sub_2681610A0(v45, v43, &v75);
      v33 = v72;

      *(v38 + 4) = v46;
      _os_log_impl(&dword_2680EB000, v36, v37, "Found single candidate of %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x26D617A40](v40, -1, -1);
      v47 = v38;
      v31 = v70;
      MEMORY[0x26D617A40](v47, -1, -1);
    }

    else
    {

      v44 = *(v32 + 8);
      v44(v35, v33);
    }

    v53 = v71;
    sub_2683CF7F8();

    v44(v31, v33);
    (*(v28 + 8))(v27, v66);
    v23 = sub_2683CF8B8();
    v24 = v53;
    v25 = 0;
    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
  }

  v48 = v30 == *MEMORY[0x277D5FED0] || v30 == *MEMORY[0x277D5FEC8];
  v49 = v71;
  if (v48)
  {
    (*(v28 + 96))(v19, v29);
    v50 = v49;
    v51 = *v19;
    v52 = v67;
LABEL_31:
    sub_2681725F0(v51, v52, v50);

    return (*(v28 + 8))(v27, v29);
  }

  if (v30 == *MEMORY[0x277D5FED8])
  {
    (*(v28 + 96))(v19, v29);
    if (*(*v19 + 16))
    {
      v54 = *(*v19 + 32);
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

    v50 = v49;
    v51 = v54;
    v52 = v67;
    goto LABEL_31;
  }

  if (v30 == *MEMORY[0x277D5FEE0])
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v55 = sub_2683CF7E8();
    __swift_project_value_buffer(v55, qword_28027C958);

    v56 = sub_2683CF7C8();
    v57 = sub_2683CFE98();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v75 = v59;
      *v58 = 136446210;
      v60 = sub_2683CE318();
      v62 = sub_2681610A0(v60, v61, &v75);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_2680EB000, v56, v57, "No match found for %{public}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x26D617A40](v59, -1, -1);
      MEMORY[0x26D617A40](v58, -1, -1);
    }

    else
    {
    }

    (*(v28 + 8))(v27, v29);
    v23 = sub_2683CF8B8();
    v24 = v49;
    goto LABEL_5;
  }

  v63 = *(v28 + 8);
  v63(v27, v29);

  v64 = sub_2683CF8B8();
  __swift_storeEnumTagSinglePayload(v49, 1, 1, v64);
  return (v63)(v19, v29);
}

void sub_26816FB84()
{
  OUTLINED_FUNCTION_30_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB8, &unk_2683D50D8);
  v5 = OUTLINED_FUNCTION_23(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_3();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v29 = &v28 - v10;
  OUTLINED_FUNCTION_8_0();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v28 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_26816FE98(0, 0, &v28 - v21);
  sub_2681340E8(v22, v20, &qword_28024DDB8, &unk_2683D50D8);
  v23 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_72(v23, v24, v0);
  if (!v25)
  {
    sub_268172F14(v20, v3);
    sub_2683CF848();
    sub_26812D9E0(v3, &qword_28024DDB0, &qword_2683D50D0);
    v26 = v22;
LABEL_9:
    sub_26812D9E0(v26, &qword_28024DDB8, &unk_2683D50D8);
    goto LABEL_10;
  }

  sub_26812D9E0(v22, &qword_28024DDB8, &unk_2683D50D8);
  sub_26816FE98(1, 1u, v17);
  sub_2681340E8(v17, v14, &qword_28024DDB8, &unk_2683D50D8);
  OUTLINED_FUNCTION_72(v14, 1, v0);
  if (!v25)
  {
    v27 = v14;
LABEL_8:
    sub_268172F14(v27, v3);
    sub_2683CF848();
    sub_26812D9E0(v3, &qword_28024DDB0, &qword_2683D50D0);
    v26 = v17;
    goto LABEL_9;
  }

  sub_26812D9E0(v17, &qword_28024DDB8, &unk_2683D50D8);
  v17 = v29;
  sub_26816FE98(2, 2u, v29);
  sub_2681340E8(v17, v8, &qword_28024DDB8, &unk_2683D50D8);
  OUTLINED_FUNCTION_72(v8, 1, v0);
  if (!v25)
  {
    v27 = v8;
    goto LABEL_8;
  }

  sub_26812D9E0(v17, &qword_28024DDB8, &unk_2683D50D8);
LABEL_10:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26816FE98@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = a2;
  v3 = a1;
  v4 = sub_2683CF8B8();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = sub_2683CDB98();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CE038();
  swift_allocObject();
  sub_2683CE028();
  (*(v14 + 104))(v16, *MEMORY[0x277D5EE50], v13);
  sub_2683CE018();
  (*(v14 + 8))(v16, v13);
  if (v3)
  {
    if (v3 == 1)
    {
      sub_2683CDFE8();
      swift_allocObject();
      v17 = sub_2683CDFD8();
    }

    else
    {
      sub_2683CD9C8();
      swift_allocObject();
      v17 = sub_2683CD9B8();
    }
  }

  else
  {
    sub_2683CDD18();
    swift_allocObject();
    v17 = sub_2683CDD08();
  }

  v18 = v17;
  v19 = v26;

  sub_2683CD898();

  sub_26816F2D8(v18, v25, v12);
  sub_2681340E8(v12, v10, &qword_28024DD28, &qword_2683D4CF0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {

    sub_26812D9E0(v12, &qword_28024DD28, &qword_2683D4CF0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
    return __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  }

  else
  {
    v22 = v24;
    (*(v24 + 32))(v6, v10, v4);
    sub_268172398(v6, v3, v19);

    (*(v22 + 8))(v6, v4);
    return sub_26812D9E0(v12, &qword_28024DD28, &qword_2683D4CF0);
  }
}

void sub_268170280()
{
  OUTLINED_FUNCTION_30_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v2 = OUTLINED_FUNCTION_23(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_3();
  v5 = v3 - v4;
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_25_6(v7, v8, v9, v10, v11, v12, v13, v14, v98);
  v15 = sub_2683CB7D8();
  OUTLINED_FUNCTION_0_3();
  v103 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_3();
  v20 = v19 - v18;
  sub_2683CB7A8();
  OUTLINED_FUNCTION_0_3();
  v104 = v22;
  v105 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_3();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v26);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_28_2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB8, &unk_2683D50D8);
  OUTLINED_FUNCTION_23(v28);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v98 - v30;
  v32 = sub_2683CF8B8();
  OUTLINED_FUNCTION_0_3();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_3();
  v38 = v37 - v36;
  sub_26816FE98(0, 0, v31);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
  OUTLINED_FUNCTION_72(v31, 1, v39);
  if (!v50)
  {
    v102 = v5;
    v43 = &v31[*(v39 + 48)];
    v44 = *v43;
    v45 = v38;
    v46 = v43[8];
    (*(v34 + 32))(v45, v31, v32);
    sub_2683CF888();
    sub_2683CF828();
    v47 = OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_72(v47, v48, v49);
    v51 = v32;
    if (!v50)
    {
      (*(v34 + 8))(v45, v32);
      sub_268173250(v44, v46);
      v40 = &qword_28024DD70;
      v41 = &unk_2683D4E80;
      v42 = v0;
      goto LABEL_12;
    }

    v52 = v45;
    v101 = v34;
    sub_26812D9E0(v0, &qword_28024DD70, &unk_2683D4E80);
    if (v46)
    {
      if (v46 == 1)
      {
        v53 = v44;
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v54 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v54, qword_28027C958);

        v55 = sub_2683CF7C8();
        v56 = sub_2683CFE98();
        sub_268173250(v44, 1u);
        if (os_log_type_enabled(v55, v56))
        {
          OUTLINED_FUNCTION_49();
          v57 = OUTLINED_FUNCTION_40_3();
          v107 = v57;
          OUTLINED_FUNCTION_39_3(4.8149e-34);
          v58 = sub_2683CFAD8();
          v60 = sub_2681610A0(v58, v59, &v107);

          *(v51 + 4) = v60;
          OUTLINED_FUNCTION_38_3(&dword_2680EB000, v61, v62, "Resolved notebook item is not a task or reminder %s");
          __swift_destroy_boxed_opaque_existential_0(v57);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();

          v63 = v53;
          v64 = 1;
LABEL_22:
          sub_268173250(v63, v64);
          (*(v101 + 8))(v52, v25);
          goto LABEL_13;
        }

        v90 = v44;
        v91 = 1;
      }

      else
      {
        v80 = v44;
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v81 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v81, qword_28027C958);

        v82 = sub_2683CF7C8();
        v83 = sub_2683CFE98();
        sub_268173250(v44, 2u);
        if (os_log_type_enabled(v82, v83))
        {
          OUTLINED_FUNCTION_49();
          v84 = OUTLINED_FUNCTION_40_3();
          v107 = v84;
          OUTLINED_FUNCTION_39_3(4.8149e-34);
          v85 = sub_2683CFAD8();
          v87 = sub_2681610A0(v85, v86, &v107);

          *(v51 + 4) = v87;
          OUTLINED_FUNCTION_38_3(&dword_2680EB000, v88, v89, "Resolved notebook item is not a task or reminder %s");
          __swift_destroy_boxed_opaque_existential_0(v84);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();

          v63 = v80;
          v64 = 2;
          goto LABEL_22;
        }

        v90 = v44;
        v91 = 2;
      }

      sub_268173250(v90, v91);
      (*(v101 + 8))(v52, v51);
      goto LABEL_13;
    }

    v100 = v51;
    if (v44)
    {

      v65 = sub_2683CD7C8();
      v66 = v101;
      if (v65)
      {
        v67 = sub_2683CDA58();

        if (v67)
        {
          v99 = sub_2683CD758();

          sub_2683CB768();
          sub_2683CB788();
          v68 = sub_2683CEB38();
          v98 = v68;
          (*(v103 + 8))(v20, v15);
          v69 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];
          sub_2683CD7B8();
          v70 = v66;
          v103 = sub_268129504(0, &qword_280253310, 0x277CD4220);
          sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
          OUTLINED_FUNCTION_35_3();
          v71 = sub_26835E5F8();
          sub_2683CB0D8();
          v72 = v106;
          OUTLINED_FUNCTION_18_6(v106);
          v73 = v102;
          OUTLINED_FUNCTION_18_6(v102);
          v74 = v69;
          sub_2683CF878();
          OUTLINED_FUNCTION_13_7();
          sub_26835E66C(v71, 0, 0, v69, 0, v72, v73, v75, v98, v99, v100, v101, v102, v103);
          v76 = OUTLINED_FUNCTION_37_2();
          sub_268173250(v76, v77);

          v78 = OUTLINED_FUNCTION_37_2();
          sub_268173250(v78, v79);

          (*(v104 + 8))(v25, v105);
          (*(v70 + 8))(v52, v100);
          goto LABEL_13;
        }
      }

      v92 = v44;
      sub_268173250(v44, 0);
      sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
      sub_268129504(0, &qword_280253310, 0x277CD4220);
      sub_2683CD7B8();
      if (v93)
      {
        v94 = v102;
LABEL_30:
        v95 = sub_26835E5F8();
        sub_2683CB0D8();
        v96 = v106;
        OUTLINED_FUNCTION_18_6(v106);
        OUTLINED_FUNCTION_18_6(v94);
        sub_2683CF878();
        OUTLINED_FUNCTION_13_7();
        sub_26835E66C(v95, 0, 0, 0, 0, v96, v94, v97, v98, v99, v100, v101, v102, v103);
        sub_268173250(v92, 0);
        (*(v66 + 8))(v52, v100);
        goto LABEL_13;
      }
    }

    else
    {
      sub_268129504(0, &qword_280253310, 0x277CD4220);
      sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
      v66 = v101;
      v92 = 0;
    }

    v94 = v102;

    goto LABEL_30;
  }

  v40 = &qword_28024DDB8;
  v41 = &unk_2683D50D8;
  v42 = v31;
LABEL_12:
  sub_26812D9E0(v42, v40, v41);
LABEL_13:
  OUTLINED_FUNCTION_29_0();
}

void sub_268170B28()
{
  OUTLINED_FUNCTION_30_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v75 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB8, &unk_2683D50D8);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v75 - v6;
  sub_2683CF8B8();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  sub_26816FE98(1, 1u, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
  OUTLINED_FUNCTION_72(v7, 1, v9);
  if (v19)
  {
    v10 = &qword_28024DDB8;
    v11 = &unk_2683D50D8;
    v12 = v7;
  }

  else
  {
    v13 = &v7[*(v9 + 48)];
    v14 = *v13;
    v15 = v13[8];
    v16 = OUTLINED_FUNCTION_36_3();
    v17(v16);
    sub_2683CF888();
    v18 = sub_2683CF828();
    OUTLINED_FUNCTION_72(v3, 1, v18);
    if (v19)
    {
      sub_26812D9E0(v3, &qword_28024DD70, &unk_2683D4E80);
      if (v15)
      {
        if (v15 == 1)
        {
          if (v14)
          {

            sub_2683CDA98();
            if (v20)
            {
              sub_268129504(0, &qword_280253320, 0x277CD4228);
              sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
              OUTLINED_FUNCTION_35_3();
              v21 = sub_26835E5F8();
              v22 = sub_2683CF878();
              sub_268177814(v21, MEMORY[0x277D84F90], 0, 0, v22, v23);
              v24 = OUTLINED_FUNCTION_8_8();
              sub_268173250(v24, v25);
              v26 = OUTLINED_FUNCTION_8_8();
              sub_268173250(v26, v27);
              v28 = OUTLINED_FUNCTION_19_6();
              v29(v28);
              goto LABEL_33;
            }

            v60 = OUTLINED_FUNCTION_8_8();
            sub_268173250(v60, v61);
          }

          if (qword_28024C8E0 != -1)
          {
            OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
          }

          v62 = sub_2683CF7E8();
          OUTLINED_FUNCTION_67(v62, qword_28027C958);

          v63 = sub_2683CF7C8();
          v64 = sub_2683CFE98();
          v65 = OUTLINED_FUNCTION_8_8();
          sub_268173250(v65, v66);
          if (os_log_type_enabled(v63, v64))
          {
            OUTLINED_FUNCTION_49();
            v67 = OUTLINED_FUNCTION_27_3();
            v76 = v67;
            *v7 = 136315138;
            v78 = v14;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDE8, &qword_2683D5278);
            v68 = sub_2683CFAD8();
            v70 = sub_2681610A0(v68, v69, &v76);

            *(v7 + 4) = v70;
            OUTLINED_FUNCTION_16_9(&dword_2680EB000, v71, v72, "Resolved notebook list did not have a title %s");
            __swift_destroy_boxed_opaque_existential_0(v67);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();
          }

          v49 = OUTLINED_FUNCTION_8_8();
        }

        else
        {
          if (qword_28024C8E0 != -1)
          {
            OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
          }

          v51 = sub_2683CF7E8();
          OUTLINED_FUNCTION_67(v51, qword_28027C958);

          v52 = sub_2683CF7C8();
          v53 = sub_2683CFE98();
          sub_268173250(v14, 2u);
          if (os_log_type_enabled(v52, v53))
          {
            OUTLINED_FUNCTION_49();
            v54 = OUTLINED_FUNCTION_27_3();
            v78 = v54;
            *v7 = 136315138;
            v76 = v14;
            v77 = 2;

            v55 = sub_2683CFAD8();
            v57 = sub_2681610A0(v55, v56, &v78);

            *(v7 + 4) = v57;
            OUTLINED_FUNCTION_16_9(&dword_2680EB000, v58, v59, "Resolved notebook list item is not actually a list %s");
            __swift_destroy_boxed_opaque_existential_0(v54);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();
          }

          v49 = v14;
          v50 = 2;
        }
      }

      else
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v38 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v38, qword_28027C958);

        v39 = sub_2683CF7C8();
        v40 = sub_2683CFE98();
        v41 = OUTLINED_FUNCTION_37_2();
        sub_268173250(v41, v42);
        if (os_log_type_enabled(v39, v40))
        {
          OUTLINED_FUNCTION_49();
          v43 = OUTLINED_FUNCTION_27_3();
          v78 = v43;
          *v7 = 136315138;
          v76 = v14;
          v77 = 0;

          v44 = sub_2683CFAD8();
          v46 = sub_2681610A0(v44, v45, &v78);

          *(v7 + 4) = v46;
          OUTLINED_FUNCTION_16_9(&dword_2680EB000, v47, v48, "Resolved notebook list item is not actually a list %s");
          __swift_destroy_boxed_opaque_existential_0(v43);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();
        }

        v49 = OUTLINED_FUNCTION_37_2();
      }

      sub_268173250(v49, v50);
      v73 = OUTLINED_FUNCTION_19_6();
      v74(v73);
      goto LABEL_33;
    }

    v30 = OUTLINED_FUNCTION_19_6();
    v31(v30);
    sub_268173250(v14, v15);
    v10 = &qword_28024DD70;
    v11 = &unk_2683D4E80;
    v12 = v3;
  }

  sub_26812D9E0(v12, v10, v11);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v32 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v32, qword_28027C958);
  v33 = sub_2683CF7C8();
  v34 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_11_9(v34))
  {
    v35 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_32_5(v35);
    OUTLINED_FUNCTION_4_7(&dword_2680EB000, v36, v37, "No notebook list items resolved");
    OUTLINED_FUNCTION_38();
  }

LABEL_33:
  OUTLINED_FUNCTION_29_0();
}

void sub_268171184()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  sub_2683CF8B8();
  OUTLINED_FUNCTION_0_3();
  v136 = v3;
  v137 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_19_3();
  v132 = v5 - v6;
  OUTLINED_FUNCTION_8_0();
  v8 = MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_6(v8, v9, v10, v11, v12, v13, v14, v15, v127);
  v138 = sub_2683CF808();
  OUTLINED_FUNCTION_0_3();
  v133 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_3();
  v131 = v18 - v19;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v20);
  v134 = &v127 - v21;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v22);
  v127 = &v127 - v23;
  v24 = sub_2683CF838();
  OUTLINED_FUNCTION_0_3();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_3();
  v30 = (v29 - v28);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDA0, &unk_2683D50C0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v127 - v32;
  v34 = sub_2683CF8C8();
  OUTLINED_FUNCTION_0_3();
  v129 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19_3();
  v128 = (v37 - v38);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v39);
  v41 = &v127 - v40;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  *v30 = v2;
  (*(v26 + 104))(v30, *MEMORY[0x277D5FEA8], v24);

  sub_2683CF6D8();
  (*(v26 + 8))(v30, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26812D9E0(v33, &qword_28024DDA0, &unk_2683D50C0);
    OUTLINED_FUNCTION_31_2();
    if (!v61)
    {
LABEL_77:
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v42 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v42, qword_28027C958);
    v43 = sub_2683CF7C8();
    v44 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_11_9(v44))
    {
      v45 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v45);
      OUTLINED_FUNCTION_4_7(&dword_2680EB000, v46, v47, "[NotebookReferenceResolver] Failed to resolve");
      OUTLINED_FUNCTION_38();
    }
  }

  else
  {
    v48 = v129;
    (*(v129 + 32))(v41, v33, v34);
    v49 = v128;
    (*(v48 + 16))(v128, v41, v34);
    v50 = (*(v48 + 88))(v49, v34);
    v51 = v41;
    if (v50 == *MEMORY[0x277D5FEC0])
    {
      v52 = OUTLINED_FUNCTION_5_7();
      v53(v52);
      v54 = v127;
      (*(v133 + 32))(v127, v49, v138);
      OUTLINED_FUNCTION_31_2();
      if (!v61)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v55 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v55, qword_28027C958);
      v56 = sub_2683CF7C8();
      v57 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_11_9(v57))
      {
        v58 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_32_5(v58);
        OUTLINED_FUNCTION_4_7(&dword_2680EB000, v59, v60, "[NotebookReferenceResolver] One match");
        OUTLINED_FUNCTION_38();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDA8, &qword_2683E6540);
      *(swift_allocObject() + 16) = xmmword_2683D1EC0;
      sub_2683CF7F8();
      (*(v133 + 8))(v54, v138);
      (*(v48 + 8))(v51, v34);
    }

    else
    {
      v61 = v50 == *MEMORY[0x277D5FED0] || v50 == *MEMORY[0x277D5FEC8];
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_5_7();
        v63(v62);
        v64 = *v49;
        OUTLINED_FUNCTION_31_2();
        if (!v61)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v130 = v41;
        v65 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v65, qword_28027C958);
        v66 = sub_2683CF7C8();
        v67 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_11_9(v67))
        {
          v68 = OUTLINED_FUNCTION_21_5();
          OUTLINED_FUNCTION_33_4(v68);
          _os_log_impl(&dword_2680EB000, v66, OS_LOG_TYPE_DEFAULT, "[NotebookReferenceResolver] Plural matches, returning all", v41, 2u);
          OUTLINED_FUNCTION_38();
        }

        v69 = *(v64 + 16);
        if (v69)
        {
          v128 = v34;
          v70 = *(v133 + 16);
          v132 = v64;
          v133 = v70;
          OUTLINED_FUNCTION_34_4();
          v72 = *(v71 + 56);
          v73 = (v71 - 8);
          v74 = MEMORY[0x277D84F90];
          do
          {
            v75 = v134;
            v76 = v138;
            (v133)(v134, v41, v138);
            sub_2683CF7F8();
            (*v73)(v75, v76);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_29_4();
              v74 = v81;
            }

            v77 = *(v74 + 16);
            if (v77 >= *(v74 + 24) >> 1)
            {
              OUTLINED_FUNCTION_28_4();
              v74 = v82;
            }

            OUTLINED_FUNCTION_12_5();
            (*(v80 + 32))(v78 + v79 * v77, v135);
            v41 += v72;
            --v69;
          }

          while (v69);

          v34 = v128;
          v48 = v129;
        }

        else
        {
        }

        (*(v48 + 8))(v130, v34);
      }

      else if (v50 == *MEMORY[0x277D5FED8])
      {
        v130 = v41;
        v83 = OUTLINED_FUNCTION_5_7();
        v84(v83);
        v85 = *v49;
        OUTLINED_FUNCTION_31_2();
        if (!v61)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v128 = v34;
        v86 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v86, qword_28027C958);
        v87 = sub_2683CF7C8();
        v88 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_17_5(v88))
        {
          v89 = OUTLINED_FUNCTION_21_5();
          OUTLINED_FUNCTION_33_4(v89);
          OUTLINED_FUNCTION_15_7(&dword_2680EB000, v90, v91, "[NotebookReferenceResolver] Plural matches, returning all");
          OUTLINED_FUNCTION_38();
        }

        v92 = 0;
        v93 = *(v85 + 16);
        v94 = MEMORY[0x277D84F90];
        while (v93 != v92)
        {
          if (v92 >= *(v85 + 16))
          {
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          v95 = *(v85 + 8 * v92 + 32);
          v96 = *(v95 + 16);
          v97 = *(v94 + 16);
          if (__OFADD__(v97, v96))
          {
            goto LABEL_73;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v97 + v96 > *(v94 + 24) >> 1)
          {
            sub_2682E4F8C();
            v94 = v98;
          }

          if (*(v95 + 16))
          {
            if ((*(v94 + 24) >> 1) - *(v94 + 16) < v96)
            {
              goto LABEL_75;
            }

            swift_arrayInitWithCopy();

            if (v96)
            {
              v99 = *(v94 + 16);
              v100 = __OFADD__(v99, v96);
              v101 = v99 + v96;
              if (v100)
              {
                goto LABEL_76;
              }

              *(v94 + 16) = v101;
            }
          }

          else
          {

            if (v96)
            {
              goto LABEL_74;
            }
          }

          ++v92;
        }

        v108 = *(v94 + 16);
        if (v108)
        {
          OUTLINED_FUNCTION_34_4();
          v134 = *(v109 + 56);
          v135 = v110;
          v111 = (v109 - 8);
          v112 = MEMORY[0x277D84F90];
          do
          {
            v113 = v131;
            v114 = v138;
            v135(v131, v93, v138);
            sub_2683CF7F8();
            (*v111)(v113, v114);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_29_4();
              v112 = v120;
            }

            v115 = *(v112 + 16);
            v116 = v132;
            if (v115 >= *(v112 + 24) >> 1)
            {
              OUTLINED_FUNCTION_28_4();
              v116 = v132;
              v112 = v121;
            }

            OUTLINED_FUNCTION_12_5();
            (*(v119 + 32))(v117 + v118 * v115, v116);
            v93 += v134;
            --v108;
          }

          while (v108);
        }

        (*(v129 + 8))(v130, v128);
      }

      else if (v50 == *MEMORY[0x277D5FEE0])
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v102 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v102, qword_28027C958);
        v103 = sub_2683CF7C8();
        v104 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_11_9(v104))
        {
          v105 = OUTLINED_FUNCTION_21_5();
          OUTLINED_FUNCTION_32_5(v105);
          OUTLINED_FUNCTION_4_7(&dword_2680EB000, v106, v107, "[NotebookReferenceResolver] No matches");
          OUTLINED_FUNCTION_38();
        }

        (*(v48 + 8))(v41, v34);
      }

      else
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v122 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v122, qword_28027C958);
        v123 = sub_2683CF7C8();
        v124 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_17_5(v124))
        {
          v125 = OUTLINED_FUNCTION_21_5();
          *v125 = 0;
          _os_log_impl(&dword_2680EB000, v123, v33, "[NotebookReferenceResolver] No matches from unknown case", v125, 2u);
          OUTLINED_FUNCTION_38();
        }

        v126 = *(v48 + 8);
        v126(v41, v34);
        v126(v49, v34);
      }
    }
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268171C84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_23(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_28_2();
  v3 = sub_2683CE138();
  OUTLINED_FUNCTION_42_3(v3);
  v4 = sub_2683CE128();
  OUTLINED_FUNCTION_41_2(v4);
  v5 = sub_2683CF8B8();
  v6 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_72(v6, v7, v5);
  if (v8)
  {
    sub_26812D9E0(v0, &qword_28024DD28, &qword_2683D4CF0);
  }

  else
  {
    sub_2683CF8A8();
    (*(*(v5 - 8) + 8))(v0, v5);
    v9 = sub_268171E88();
    if ((v9 & 1) != 0 && (sub_2683CDD38(), , sub_2683CD8A8(), , v20))
    {
      v10 = sub_2683CDD28();
      v12 = v11;

      if (v12)
      {

        return v10;
      }
    }

    else
    {
    }
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v13 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v13, qword_28027C958);
  v14 = sub_2683CF7C8();
  v15 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_17_5(v15))
  {
    v16 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_33_4(v16);
    OUTLINED_FUNCTION_15_7(&dword_2680EB000, v17, v18, "[NotebookReferenceResolver] Did not resolve formatted text entity.");
    OUTLINED_FUNCTION_38();
  }

  return 0;
}

uint64_t sub_268171E88()
{
  v0 = sub_2683CD1F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2683CE458();
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  v16[2] = v1 + 16;
  v17 = v7;
  v16[1] = "AddTasksIntentResponse";
  v8 = (v1 + 8);
  while (1)
  {
    v9 = v6;
    if (v17 == v6)
    {
      goto LABEL_11;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    (*(v1 + 16))(v3, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6, v0);
    sub_2683CD1B8();
    v10 = sub_2683CFAF8();
    v12 = v11;

    if (v10 == sub_2683CFAF8() && v12 == v13)
    {

      (*v8)(v3, v0);
LABEL_11:

      return v17 != v9;
    }

    ++v6;
    v15 = sub_2683D0598();

    result = (*v8)(v3, v0);
    if (v15)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_268172098()
{
  OUTLINED_FUNCTION_30_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_23(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_28_2();
  v3 = sub_2683CD018();
  OUTLINED_FUNCTION_42_3(v3);
  v4 = sub_2683CD008();
  OUTLINED_FUNCTION_41_2(v4);
  v5 = sub_2683CF8B8();
  v6 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_72(v6, v7, v5);
  if (v8)
  {
    sub_26812D9E0(v0, &qword_28024DD28, &qword_2683D4CF0);
  }

  else
  {
    sub_2683CF8A8();
    (*(*(v5 - 8) + 8))(v0, v5);
    sub_2683CCFE8();

    sub_2683CD8A8();

    if (v23)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v9 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v9, qword_28027C958);

      v10 = sub_2683CF7C8();
      v11 = sub_2683CFE98();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = OUTLINED_FUNCTION_49();
        v13 = swift_slowAlloc();
        v24 = v13;
        *v12 = 136315138;
        sub_2683CCFD8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
        v14 = sub_2683CFAD8();
        v16 = sub_2681610A0(v14, v15, &v24);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_2680EB000, v10, v11, "[NotebookReferenceResolver] Resolved content topic as: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      sub_2683CCFD8();

      goto LABEL_16;
    }
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v17 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v17, qword_28027C958);
  v18 = sub_2683CF7C8();
  v19 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_17_5(v19))
  {
    v20 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_33_4(v20);
    OUTLINED_FUNCTION_15_7(&dword_2680EB000, v21, v22, "[NotebookReferenceResolver] Did not resolve content topic entity.");
    OUTLINED_FUNCTION_38();
  }

LABEL_16:
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268172398@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    sub_2683CF8A8();
    sub_2683CD7E8();
    sub_2683CD8A8();

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
    v6 = v12;
    if (v19)
    {
      v13 = a3 + *(v12 + 48);
      v14 = sub_2683CF8B8();
      (*(*(v14 - 8) + 16))(a3, a1, v14);
      v11 = 0;
      *v13 = v19;
      *(v13 + 8) = 0;
LABEL_11:
      v10 = a3;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v6);
    }

LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    sub_2683CF8A8();
    sub_2683CD6A8();
    sub_2683CD8A8();

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
    v6 = v15;
    if (v19)
    {
      v16 = a3 + *(v15 + 48);
      v17 = sub_2683CF8B8();
      (*(*(v17 - 8) + 16))(a3, a1, v17);
      v11 = 0;
      *v16 = v19;
      *(v16 + 8) = 2;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_2683CF8A8();
  sub_2683CDAC8();
  sub_2683CD8A8();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
  v6 = v5;
  v7 = 1;
  if (v19)
  {
    v8 = a3 + *(v5 + 48);
    v9 = sub_2683CF8B8();
    (*(*(v9 - 8) + 16))(a3, a1, v9);
    *v8 = v19;
    *(v8 + 8) = 1;
    v7 = 0;
  }

  v10 = a3;
  v11 = v7;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v6);
}

uint64_t sub_2681725F0@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v108) = a2;
  v5 = a2;
  v110 = sub_2683CF8B8();
  v106 = *(v110 - 8);
  v6 = MEMORY[0x28223BE20](v110);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v99 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v99 - v12;
  v14 = sub_2683CF808();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v99 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v99 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  if (v5 == 3)
  {
    if (a1[2])
    {
      sub_2683CF7F8();
      v31 = a3;
      v32 = 0;
    }

    else
    {
      v31 = a3;
      v32 = 1;
    }

    v62 = v110;

    return __swift_storeEnumTagSinglePayload(v31, v32, 1, v62);
  }

  v105 = a3;
  v100 = &v99 - v28;
  v101 = v30;
  v107 = a1;
  v102 = v29;
  v109 = v27;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v33 = sub_2683CF7E8();
  __swift_project_value_buffer(v33, qword_28027C958);
  v34 = v107;

  v35 = v34;
  v36 = sub_2683CF7C8();
  v37 = sub_2683CFE98();

  v103 = v37;
  v38 = os_log_type_enabled(v36, v37);
  v104 = v15;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v99 = v36;
    v40 = v39;
    v41 = swift_slowAlloc();
    v112 = v41;
    *v40 = 136315394;
    v111 = v108;
    v42 = sub_2683CFAD8();
    v44 = sub_2681610A0(v42, v43, &v112);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    v45 = MEMORY[0x26D6167A0](v107, v109);
    v47 = sub_2681610A0(v45, v46, &v112);
    v35 = v107;

    *(v40 + 14) = v47;
    v48 = v99;
    _os_log_impl(&dword_2680EB000, v99, v103, "Found multiple candidates, filtering for specific type (nil if no filter) then taking the first %s from candidates: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v41, -1, -1);
    MEMORY[0x26D617A40](v40, -1, -1);
  }

  else
  {
  }

  v49 = v35[2];
  v50 = v109;
  if (!v108)
  {
    if (v49)
    {
      v64 = sub_268129504(0, &qword_280253310, 0x277CD4220);
      v107 = *(v104 + 16);
      v108 = v64;
      v65 = v35 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
      v66 = (v106 + 8);
      v67 = (v104 + 8);
      v106 = *(v104 + 72);
      do
      {
        (v107)(v26, v65, v50);
        sub_2683CF7F8();
        v68 = sub_2683CF898();
        v70 = v69;
        (*v66)(v13, v110);
        v112 = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDD8, &qword_2683D50F8);
        v71 = sub_2683CFAD8();
        if (v70)
        {
          if (v68 == v71 && v70 == v72)
          {

LABEL_54:
            v93 = v104 + 32;
            v94 = v100;
            v95 = v26;
            v96 = v109;
            (*(v104 + 32))(v100, v95, v109);
            v97 = v105;
            sub_2683CF7F8();
            (*(v93 - 24))(v94, v96);
            goto LABEL_58;
          }

          v74 = sub_2683D0598();

          if (v74)
          {
            goto LABEL_54;
          }
        }

        else
        {
        }

        v50 = v109;
        (*v67)(v26, v109);
        v65 += v106;
        --v49;
      }

      while (v49);
    }

LABEL_50:
    v86 = v105;
    v87 = 1;
    return __swift_storeEnumTagSinglePayload(v86, v87, 1, v110);
  }

  if (v108 != 1)
  {
    if (v49)
    {
      v75 = sub_268129504(0, &qword_28024D350, 0x277CD3E00);
      v107 = *(v104 + 16);
      v108 = v75;
      v76 = v35 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
      v77 = (v106 + 8);
      v78 = (v104 + 8);
      v106 = *(v104 + 72);
      do
      {
        (v107)(v22, v76, v50);
        sub_2683CF7F8();
        v79 = sub_2683CF898();
        v81 = v80;
        (*v77)(v11, v110);
        v112 = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDD0, &qword_2683D50F0);
        v82 = sub_2683CFAD8();
        if (v81)
        {
          if (v79 == v82 && v81 == v83)
          {

LABEL_56:
            v89 = v104 + 32;
            v88 = *(v104 + 32);
            v90 = v101;
            v91 = v101;
            v92 = v22;
            goto LABEL_57;
          }

          v85 = sub_2683D0598();

          if (v85)
          {
            goto LABEL_56;
          }
        }

        else
        {
        }

        v50 = v109;
        (*v78)(v22, v109);
        v76 += v106;
        --v49;
      }

      while (v49);
    }

    goto LABEL_50;
  }

  if (!v49)
  {
    goto LABEL_50;
  }

  v51 = sub_268129504(0, &qword_280253320, 0x277CD4228);
  v107 = *(v104 + 16);
  v108 = v51;
  v52 = v35 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
  v53 = (v106 + 8);
  v54 = (v104 + 8);
  v106 = *(v104 + 72);
  while (1)
  {
    (v107)(v18, v52, v50);
    sub_2683CF7F8();
    v55 = sub_2683CF898();
    v57 = v56;
    (*v53)(v8, v110);
    v112 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDC8, &qword_2683D50E8);
    v58 = sub_2683CFAD8();
    if (!v57)
    {

      goto LABEL_21;
    }

    if (v55 == v58 && v57 == v59)
    {
      break;
    }

    v61 = sub_2683D0598();

    if (v61)
    {
      goto LABEL_52;
    }

LABEL_21:
    v50 = v109;
    (*v54)(v18, v109);
    v52 += v106;
    if (!--v49)
    {
      goto LABEL_50;
    }
  }

LABEL_52:
  v89 = v104 + 32;
  v88 = *(v104 + 32);
  v90 = v102;
  v91 = v102;
  v92 = v18;
LABEL_57:
  v98 = v109;
  v88(v91, v92, v109);
  v97 = v105;
  sub_2683CF7F8();
  (*(v89 - 24))(v90, v98);
LABEL_58:
  v86 = v97;
  v87 = 0;
  return __swift_storeEnumTagSinglePayload(v86, v87, 1, v110);
}

uint64_t sub_268172F14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_268172F84()
{
  result = qword_28024DDC0;
  if (!qword_28024DDC0)
  {
    sub_2683CF808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DDC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookReferenceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2681730C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_268173104(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_268173160(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2681731A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_2681731FC()
{
  result = qword_28024DDE0;
  if (!qword_28024DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DDE0);
  }

  return result;
}

uint64_t sub_268173250(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_4_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_11_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_15_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_16_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_17_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_28_4()
{

  sub_2682E48E8();
}

void OUTLINED_FUNCTION_29_4()
{

  sub_2682E48E8();
}

void OUTLINED_FUNCTION_38_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_39_3(float a1)
{
  *v1 = a1;
  *(v4 - 104) = v3;
  *(v4 - 96) = v2;
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1)
{

  return sub_26816F2D8(a1, 3u, v1);
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t a1)
{

  return swift_allocObject();
}

void sub_268173518()
{
  *&xmmword_28024DDF0 = 0xD000000000000028;
  *(&xmmword_28024DDF0 + 1) = 0x80000002683FD670;
  qword_28024DE00 = 0xD000000000000016;
  unk_28024DE08 = 0x80000002683FD650;
}

uint64_t static DIDisambiguationResponse.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_28024C888 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_28024DDF0 + 1);
  v3 = qword_28024DE00;
  v4 = unk_28024DE08;
  *a1 = xmmword_28024DDF0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

BOOL static DIDisambiguationResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_26817370C(*a1, v3, 1);
      v7 = OUTLINED_FUNCTION_113();
      sub_26817370C(v7, v8, 1);
      return v2 == v5;
    }

    goto LABEL_6;
  }

  if (a2[2])
  {

LABEL_6:
    v10 = OUTLINED_FUNCTION_113();
    sub_2681736FC(v10, v11, v6);
    sub_26817370C(v2, v3, v4);
    v12 = OUTLINED_FUNCTION_113();
    sub_26817370C(v12, v13, v6);
    return 0;
  }

  v14 = *a1;
  if (v2 == v5 && v3 == a2[1])
  {
    sub_2681736FC(v14, v3, 0);
    v27 = OUTLINED_FUNCTION_1_13();
    sub_2681736FC(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_1_13();
    sub_26817370C(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_1_13();
    sub_26817370C(v33, v34, v35);
    return 1;
  }

  else
  {
    v16 = sub_2683D0598();
    v17 = OUTLINED_FUNCTION_113();
    sub_2681736FC(v17, v18, 0);
    v19 = OUTLINED_FUNCTION_1_13();
    sub_2681736FC(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_1_13();
    sub_26817370C(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_113();
    sub_26817370C(v25, v26, 0);
    return v16 & 1;
  }
}

uint64_t sub_2681736FC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26817370C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26817371C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497463656C6573 && a2 == 0xE800000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E497463656C6573 && a2 == 0xEB00000000786564)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_2681737E8(char a1)
{
  sub_2683D0698();
  MEMORY[0x26D617190](a1 & 1);
  return sub_2683D06D8();
}

uint64_t sub_268173830(char a1)
{
  if (a1)
  {
    return 0x6E497463656C6573;
  }

  else
  {
    return 0x64497463656C6573;
  }
}

uint64_t sub_268173880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26817371C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681738A8(uint64_t a1)
{
  v2 = sub_268173CD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681738E4(uint64_t a1)
{
  v2 = sub_268173CD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268173920(uint64_t a1)
{
  v2 = sub_268173D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26817395C(uint64_t a1)
{
  v2 = sub_268173D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268173998(uint64_t a1)
{
  v2 = sub_268173D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681739D4(uint64_t a1)
{
  v2 = sub_268173D24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DIDisambiguationResponse.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE10, &qword_2683D5290);
  OUTLINED_FUNCTION_0_3();
  v28 = v4;
  v29 = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v27 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE18, &qword_2683D5298);
  OUTLINED_FUNCTION_0_3();
  v25 = v8;
  v26 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE20, &qword_2683D52A0);
  OUTLINED_FUNCTION_0_3();
  v14 = v13;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  v18 = v1[1];
  v30 = *v1;
  v24 = v18;
  v19 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268173CD0();
  sub_2683D0718();
  if (v19)
  {
    v32 = 1;
    sub_268173D24();
    v20 = v27;
    sub_2683D04C8();
    v21 = v29;
    sub_2683D0538();
    (*(v28 + 8))(v20, v21);
  }

  else
  {
    v31 = 0;
    sub_268173D78();
    sub_2683D04C8();
    v22 = v26;
    sub_2683D0518();
    (*(v25 + 8))(v11, v22);
  }

  return (*(v14 + 8))(v17, v12);
}

unint64_t sub_268173CD0()
{
  result = qword_28024DE28;
  if (!qword_28024DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE28);
  }

  return result;
}

unint64_t sub_268173D24()
{
  result = qword_28024DE30;
  if (!qword_28024DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE30);
  }

  return result;
}

unint64_t sub_268173D78()
{
  result = qword_28024DE38;
  if (!qword_28024DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE38);
  }

  return result;
}

uint64_t DIDisambiguationResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE40, &qword_2683D52A8);
  OUTLINED_FUNCTION_0_3();
  v51 = v3;
  v52 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE48, &qword_2683D52B0);
  OUTLINED_FUNCTION_0_3();
  v50 = v9;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v12 = v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE50, &qword_2683D52B8);
  OUTLINED_FUNCTION_0_3();
  v53 = v14;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v17 = v47 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268173CD0();
  v18 = v54;
  sub_2683D06F8();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v47[1] = v8;
  v47[2] = v12;
  v48 = v7;
  v54 = a1;
  sub_2683D04B8();
  result = sub_268151B7C();
  if (v21 == v22 >> 1)
  {
LABEL_8:
    v34 = sub_2683D01D8();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0);
    *v36 = &type metadata for DIDisambiguationResponse;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v17, v13);
    a1 = v54;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v13;
    v24 = *(v20 + v21);
    sub_268151B68();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = v26 == v28 >> 1;
    v30 = v52;
    if (!v29)
    {
      v13 = v23;
      goto LABEL_8;
    }

    v55 = v24;
    if (v24)
    {
      v57 = 1;
      sub_268173D24();
      v31 = v48;
      OUTLINED_FUNCTION_6_7(&type metadata for DIDisambiguationResponse.SelectIndexCodingKeys);
      v32 = v31;
      v33 = v51;
      v38 = sub_2683D0498();
      swift_unknownObjectRelease();
      (*(v30 + 8))(v32, v33);
      v39 = OUTLINED_FUNCTION_46();
      v40(v39);
      v41 = 0;
      v42 = v38;
    }

    else
    {
      v56 = 0;
      sub_268173D78();
      OUTLINED_FUNCTION_6_7(&type metadata for DIDisambiguationResponse.SelectIdCodingKeys);
      v37 = v53;
      v42 = sub_2683D0478();
      v41 = v43;
      swift_unknownObjectRelease();
      v44 = OUTLINED_FUNCTION_5_8();
      v45(v44);
      (*(v37 + 8))(v17, v23);
    }

    v46 = v49;
    *v49 = v42;
    v46[1] = v41;
    *(v46 + 16) = v55;
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  return result;
}

unint64_t sub_268174330(void *a1)
{
  a1[1] = sub_268174368();
  a1[2] = sub_2681743BC();
  result = sub_268174410();
  a1[3] = result;
  return result;
}

unint64_t sub_268174368()
{
  result = qword_28024DE58;
  if (!qword_28024DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE58);
  }

  return result;
}

unint64_t sub_2681743BC()
{
  result = qword_28024DE60;
  if (!qword_28024DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE60);
  }

  return result;
}

unint64_t sub_268174410()
{
  result = qword_28024DE68;
  if (!qword_28024DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE68);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_268174484(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2681744C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIDisambiguationResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_268174610(_BYTE *result, int a2, int a3)
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

unint64_t sub_2681746C0()
{
  result = qword_28024DE70;
  if (!qword_28024DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE70);
  }

  return result;
}

unint64_t sub_268174718()
{
  result = qword_28024DE78;
  if (!qword_28024DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE78);
  }

  return result;
}

unint64_t sub_268174770()
{
  result = qword_28024DE80;
  if (!qword_28024DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE80);
  }

  return result;
}

unint64_t sub_2681747C8()
{
  result = qword_28024DE88;
  if (!qword_28024DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE88);
  }

  return result;
}

unint64_t sub_268174820()
{
  result = qword_28024DE90;
  if (!qword_28024DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE90);
  }

  return result;
}

unint64_t sub_268174878()
{
  result = qword_28024DE98;
  if (!qword_28024DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE98);
  }

  return result;
}

unint64_t sub_2681748D0()
{
  result = qword_28024DEA0;
  if (!qword_28024DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DEA0);
  }

  return result;
}

unint64_t sub_268174928()
{
  result = qword_28024DEA8;
  if (!qword_28024DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DEA8);
  }

  return result;
}

unint64_t sub_268174980()
{
  result = qword_28024DEB0;
  if (!qword_28024DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DEB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{

  return sub_2683D0418();
}

uint64_t sub_268174A2C()
{
  v0 = sub_2683CD5F8();
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = v0 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v1)
    {

      sub_2683CD5E8();
      sub_2683CD618();
      return sub_2683CD608();
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    sub_26813CA00(v3, v12);
    sub_268174BC8(v12, &v9);
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (v10)
    {
      sub_268128148(&v9, v11);
      sub_268128148(v11, &v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4594();
        v4 = v6;
      }

      v5 = *(v4 + 16);
      if (v5 >= *(v4 + 24) >> 1)
      {
        sub_2682E4594();
        v4 = v7;
      }

      *(v4 + 16) = v5 + 1;
      sub_268128148(&v9, v4 + 40 * v5 + 32);
    }

    else
    {
      sub_268175034(&v9);
    }

    v3 += 40;
    ++v1;
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0(v12);

  __break(1u);
  return result;
}

uint64_t sub_268174BC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_2683CD628();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_2683CD548();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v35 = a1;
  sub_26813CA00(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEC0, &qword_2683E6550);
  if (swift_dynamicCast())
  {
    (*(v11 + 32))(v14, v16, v10);
    if (sub_2682E87E8())
    {
      v17 = MEMORY[0x277D5E670];
      v18 = v36;
      v36[3] = v10;
      v18[4] = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
      (*(v11 + 16))(boxed_opaque_existential_0, v14, v10);
      (*(v11 + 8))(v14, v10);
    }

    else
    {
      (*(v11 + 8))(v14, v10);
      v22 = v36;
      v36[4] = 0;
      *v22 = 0u;
      *(v22 + 1) = 0u;
    }
  }

  else if (swift_dynamicCast())
  {
    (*(v4 + 32))(v7, v9, v3);
    v20 = MEMORY[0x277D5E728];
    v21 = v36;
    v36[3] = v3;
    v21[4] = v20;
    __swift_allocate_boxed_opaque_existential_0(v21);
    sub_268174A2C();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v23 = sub_2683CF7E8();
    __swift_project_value_buffer(v23, qword_28027C958);
    v24 = v35;
    sub_26813CA00(v35, v39);
    v25 = sub_2683CF7C8();
    v26 = sub_2683CFE88();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136446210;
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      DynamicType = swift_getDynamicType();
      v38 = v39[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEC8, &qword_2683D5758);
      v29 = sub_2683CFAD8();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_0(v39);
      v32 = sub_2681610A0(v29, v31, &v41);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_2680EB000, v25, v26, "Got unknown node type: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x26D617A40](v28, -1, -1);
      MEMORY[0x26D617A40](v27, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v39);
    }

    sub_26813CA00(v24, v36);
  }

  return __swift_destroy_boxed_opaque_existential_0(v40);
}

uint64_t sub_268175034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEB8, &qword_2683D5750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26817509C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_2683CB0D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v16 - v12;
  sub_268176AE4(v4, v16 - v12);
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    v14 = sub_2683CB528();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    a1(v10);
    result = (*(v8 + 8))(v10, v7);
    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_268175270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a2;
  if (a2)
  {
    sub_268133FA8();
    v16 = sub_26835E5F8();
  }

  if (a4)
  {
    v17 = sub_2683CFA68();
  }

  else
  {
    v17 = 0;
  }

  if (a14)
  {
    v18 = sub_2683CFA68();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v16 content:v17 itemType:a5 status:a6 location:a7 locationSearchType:a8 dateTime:a9 dateSearchType:a10 temporalEventTriggerTypes:a11 taskPriority:a12 notebookItemIdentifier:v18];

  return v19;
}

id sub_2681753A0(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      result = sub_26817551C(0, 1, 1, 0, 0, 0, 1, 0, 0, v23, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
    case 2:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      v31 = v14;
      v15 = OUTLINED_FUNCTION_3_7();
      result = sub_26817551C(v15, v16, v17, 0, 1uLL, 0, 1, 0, v29, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
    case 3:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      v32 = v18;
      v19 = OUTLINED_FUNCTION_3_7();
      result = sub_26817551C(v19, v20, v21, 0, 0, 1, 1, 0, v29, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
    case 4:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      v30 = v3;
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_4_8();
      result = sub_26817551C(v4, v5, v6, v7, v8, v9, v10, 1, v29, v30, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
    case 5:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      result = sub_26817551C(0, 1, 0, 0, 0, 0, 1, 0, v24, v24, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
    case 6:
      OUTLINED_FUNCTION_1_14();
      result = sub_26817551C(0, 1, 0, 0, 0, 0, 1, 0, 0, v25, v25, 0, v35, v36, v37, v38, v39, 0, 0);
      break;
    case 7:
      OUTLINED_FUNCTION_1_14();
      result = sub_26817551C(0, 1, 0, 0, 0, 0, 1, 0, 0, v22, 0, v22, v35, v36, v37, v38, v39, 0, 0);
      break;
    case 8:
      v26 = OUTLINED_FUNCTION_2_9();
      result = sub_26817551C(0, 1, 0, 0, 0, 0, 1, 0, 0, v27, *&v26, v28, v27, v27, v27, 0, v39, v40, v41);
      break;
    case 9:
      v11 = OUTLINED_FUNCTION_2_9();
      result = sub_26817551C(0, 1, 0, 0, 0, 0, 1, 0, 0, v12, *&v11, v13, v12, 0, v12, v12, v39, v40, v41);
      break;
    default:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      result = sub_26817551C(1, 1, 0, 0, 0, 0, 1, 0, 0, v1, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
  }

  return result;
}

id sub_26817551C(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, unint64_t a19)
{
  v20 = v19;
  v29 = [v20 title];
  v30 = v29;
  if (a3 == 1)
  {
    v70 = 0;
  }

  else if (a3)
  {
    v70 = a3;
  }

  else
  {
    v31 = v29;
    v70 = v30;
  }

  sub_2680F1DAC(a3);

  v32 = sub_26812E98C(v20, &selRef_content);
  v34 = v33;
  if (a5)
  {
    if (a5 == 1)
    {
      v69 = 0;
      v35 = 0;
    }

    else
    {
      v69 = a4;
      v35 = a5;
    }

    v34 = v35;
  }

  else
  {
    v69 = v32;
  }

  sub_268176C38(a4, a5);
  v36 = [v20 itemType];
  v67 = [v20 status];
  v37 = [v20 location];
  v38 = v37;
  if (a8 == 1)
  {
    v66 = 0;
  }

  else if (a8)
  {
    v66 = a8;
  }

  else
  {
    v39 = v37;
    v66 = v38;
  }

  sub_2680F1DAC(a8);

  v40 = [v20 locationSearchType];
  v41 = [v20 dateTime];
  v42 = v41;
  v74 = a6;
  v73 = a7;
  v72 = a1;
  v71 = a2;
  v68 = v36;
  if (a11 == 1)
  {
    v65 = 0;
  }

  else if (a11)
  {
    v65 = a11;
  }

  else
  {
    v43 = v41;
    v65 = v42;
  }

  v44 = a12;
  sub_2680F1DAC(a11);

  v45 = [v20 dateSearchType];
  v46 = [v20 temporalEventTriggerTypes];
  v47 = [v20 taskPriority];
  v48 = sub_26812E98C(v20, &selRef_notebookItemIdentifier);
  v50 = v49;
  v51 = a19;
  if (a19)
  {
    if (a19 == 1)
    {
      v52 = 0;
      v51 = 0;
    }

    else
    {
      v52 = a18;
    }

    v50 = v51;
  }

  else
  {
    v52 = v48;
  }

  if (a14)
  {
    v53 = 0;
  }

  else
  {
    v53 = v47;
  }

  if (a15)
  {
    v54 = v53;
  }

  else
  {
    v54 = a14;
  }

  if (a16)
  {
    v55 = 0;
  }

  else
  {
    v55 = v46;
  }

  if (a17)
  {
    v56 = v55;
  }

  else
  {
    v56 = a16;
  }

  if (a12)
  {
    v57 = 0;
  }

  else
  {
    v57 = v45;
  }

  if (a13)
  {
    v44 = v57;
  }

  v58 = v40;
  if (a9)
  {
    v58 = 0;
  }

  if (a10)
  {
    v59 = v58;
  }

  else
  {
    v59 = a9;
  }

  v60 = v67;
  if (v74)
  {
    v60 = 0;
  }

  if (v73)
  {
    v61 = v60;
  }

  else
  {
    v61 = v74;
  }

  v62 = v68;
  if (v72)
  {
    v62 = 0;
  }

  if (v71)
  {
    v63 = v62;
  }

  else
  {
    v63 = v72;
  }

  objc_allocWithZone(MEMORY[0x277CD4058]);
  sub_268176C38(a18, a19);
  return sub_268133AC0(v70, v69, v34, v63, v61, v66, v59, v65, v44, v56, v54, v52, v50);
}

id sub_2681758A8(char a1, void *a2)
{
  switch(a1)
  {
    case 1:
      result = sub_2681DF4C8(a2);
      if (!v2)
      {
        v5 = result;
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v45 = v30;
        v42 = 0;
        goto LABEL_20;
      }

      break;
    case 2:
      result = sub_2681DF800(a2);
      if (!v2)
      {
        v18 = v17;
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v46 = v19;
        v20 = OUTLINED_FUNCTION_3_7();
        v24 = sub_26817551C(v20, v21, v22, v23, v18, 0, 1, 0, v42, v46, v48[0], v48[1], v49, v50, v51, v52, v53, v54, v55);

        goto LABEL_22;
      }

      break;
    case 3:
      result = sub_2681DF7D4(a2, a2);
      if (!v2)
      {
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v47 = v25;
        v26 = OUTLINED_FUNCTION_3_7();
        result = sub_26817551C(v26, v27, v28, 0, 0, v29, 0, 0, v42, v47, v48[0], v48[1], v49, v50, v51, v52, v53, v54, v55);
      }

      break;
    case 4:
      result = sub_2681DF79C(a2);
      if (!v2)
      {
        v5 = result;
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v45 = v6;
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_4_8();
        v14 = v5;
        goto LABEL_21;
      }

      break;
    case 5:
      result = sub_2681DF760(a2);
      if (!v2)
      {
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v44 = 0;
        v43 = v31;
        goto LABEL_28;
      }

      break;
    case 6:
      result = sub_2681DF614(a2);
      if (!v2)
      {
        v5 = result;
        v54 = 0;
        v55 = 0;
        OUTLINED_FUNCTION_1_14();
        *v48 = v32;
        v45 = v33;
        OUTLINED_FUNCTION_3_7();
LABEL_20:
        OUTLINED_FUNCTION_4_8();
        v14 = 0;
LABEL_21:
        v24 = sub_26817551C(v7, v8, v9, v10, v11, v12, v13, v14, v42, v45, v48[0], v48[1], v49, v50, v51, v52, v53, v54, v55);

LABEL_22:
        result = v24;
      }

      break;
    case 7:
      result = sub_2681DF724(a2);
      if (!v2)
      {
        v54 = 0;
        v55 = 0;
        v53 = 1;
        v52 = 0;
        v51 = 1;
        v50 = 0;
        v49 = 0;
        v48[0] = 0;
        v48[1] = result;
        goto LABEL_27;
      }

      break;
    case 8:
      result = sub_2681DF6F8(a2, a2);
      if (!v2)
      {
        *&v15 = OUTLINED_FUNCTION_5_9();
        v53 = 1;
        v52 = 0;
        v51 = 0;
        v50 = v34;
        goto LABEL_26;
      }

      break;
    case 9:
      result = sub_2681DF6BC(a2);
      if (!v2)
      {
        *&v15 = OUTLINED_FUNCTION_5_9();
        v53 = 0;
        v52 = v16;
        v51 = 1;
        v50 = 0;
LABEL_26:
        v49 = 1;
        *v48 = v15;
LABEL_27:
        v44 = 1;
        v43 = 0;
        goto LABEL_28;
      }

      break;
    default:
      result = sub_2681DF8FC(a2);
      if (!v2)
      {
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_0_17();
        v44 = v4;
        v43 = 0;
LABEL_28:
        OUTLINED_FUNCTION_4_8();
        result = sub_26817551C(v35, v36, v37, v38, v39, v40, v41, 0, v43, v44, v48[0], v48[1], v49, v50, v51, v52, v53, v54, v55);
      }

      break;
  }

  return result;
}

id sub_268175B40(void *a1)
{
  v24 = [a1 itemType];
  if (v24)
  {
    v27 = [a1 itemType];
  }

  else
  {
    v27 = 0;
  }

  v26 = [a1 title];
  v21 = sub_26812E98C(a1, &selRef_content);
  v25 = v2;
  v20 = [a1 status];
  if (v20)
  {
    v22 = [a1 status];
  }

  else
  {
    v22 = 0;
  }

  v23 = [a1 location];
  v3 = [a1 locationSearchType];
  if (v3)
  {
    v18 = [a1 locationSearchType];
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 dateTime];
  v4 = [a1 dateSearchType];
  if (v4)
  {
    v17 = [a1 dateSearchType];
  }

  else
  {
    v17 = 0;
  }

  v5 = [a1 taskPriority];
  if (v5)
  {
    v16 = [a1 taskPriority];
  }

  else
  {
    v16 = 0;
  }

  v6 = [a1 temporalEventTriggerTypes];
  if (v6)
  {
    v7 = [a1 temporalEventTriggerTypes];
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 == 0;
  v9 = v3 == 0;
  if (v25)
  {
    v10 = v21;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_26812E98C(a1, &selRef_notebookItemIdentifier);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_26817551C(v27, v24 == 0, v26, v10, v25, v22, v20 == 0, v23, v18, v9, v19, v17, v4 == 0, v16, v5 == 0, v7, v8, v13, v12);

  return v14;
}

uint64_t sub_268175DF4(uint64_t a1)
{
  if (sub_268175F4C(a1))
  {
    return 0;
  }

  if (sub_2681767E0())
  {
    return 0;
  }

  if (sub_2681768A4(&selRef_taskPriority, 0, 1))
  {
    return 0;
  }

  if (sub_268176928(0, 0, 0, 0, 0, 0, 0, 0))
  {
    return 0;
  }

  if (sub_26817682C())
  {
    return 0;
  }

  v3 = [v1 title];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 spokenPhrase];

    v2 = sub_2683CFA78();
  }

  else
  {
    v6 = sub_26812E98C(v1, &selRef_content);
    if (v7)
    {
      return v6;
    }

    else
    {
      v2 = 0;
      sub_2681768A4(&selRef_status, 1, 0);
    }
  }

  return v2;
}

uint64_t sub_268175F4C(uint64_t a1)
{
  v3 = v1;
  v96 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_19_3();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v93 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_19_3();
  v94 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v95 = &v93 - v15;
  v16 = sub_2683CB7A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v98 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_19_3();
  v93 = v20 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v93 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v93 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v97 = &v93 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v93 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v93 - v34;
  v36 = [v3 dateTime];
  v99 = v3;
  v100 = v17;
  v101 = v35;
  if (v36)
  {
    v2 = v36;
    v37 = v16;
    v38 = v10;
    v39 = v7;
    v40 = [v36 startDateComponents];

    if (v40)
    {
      sub_2683CAFE8();

      v41 = sub_2683CB0D8();
      v42 = 0;
    }

    else
    {
      v41 = sub_2683CB0D8();
      v42 = 1;
    }

    v47 = v97;
    __swift_storeEnumTagSinglePayload(v33, v42, 1, v41);
    sub_268176BC8(v33, v101);
    v7 = v39;
    v10 = v38;
    v16 = v37;
    v3 = v99;
  }

  else
  {
    sub_2683CB0D8();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    v47 = v97;
  }

  v48 = [v3 dateTime];
  v49 = v94;
  if (v48)
  {
    v50 = v48;
    v2 = [v48 endDateComponents];

    v51 = v95;
    if (v2)
    {
      sub_2683CAFE8();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v57 = sub_2683CB0D8();
    __swift_storeEnumTagSinglePayload(v28, v52, 1, v57);
    sub_268176BC8(v28, v47);
  }

  else
  {
    sub_2683CB0D8();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    v51 = v95;
  }

  v58 = v101;
  sub_268176AE4(v101, v25);
  v59 = sub_2683CB0D8();
  OUTLINED_FUNCTION_2_6(v25);
  if (v63)
  {
    sub_26812C310(v25, &qword_28024D4B0, &unk_2683D26E0);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v16);
  }

  else
  {
    sub_2683CB0B8();
    (*(*(v59 - 8) + 8))(v25, v59);
    OUTLINED_FUNCTION_3_5(v51);
    if (!v63)
    {
      v69 = v7;
      v70 = OUTLINED_FUNCTION_11_10();
      v72 = v71(v70, v51, v16);
      goto LABEL_27;
    }
  }

  v64 = v93;
  sub_268176AE4(v47, v93);
  OUTLINED_FUNCTION_2_6(v64);
  if (v63)
  {
    sub_26812C310(v64, &qword_28024D4B0, &unk_2683D26E0);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v16);
    goto LABEL_23;
  }

  sub_2683CB0B8();
  (*(*(v59 - 8) + 8))(v64, v59);
  OUTLINED_FUNCTION_3_5(v49);
  if (v68)
  {
LABEL_23:
    v2 = v98;
    sub_2683CB728();
    OUTLINED_FUNCTION_3_5(v49);
    if (!v63)
    {
      sub_26812C310(v49, &qword_28024DBB8, &unk_2683D4310);
    }

    goto LABEL_25;
  }

  v73 = OUTLINED_FUNCTION_11_10();
  v74(v73, v49, v16);
LABEL_25:
  v69 = v7;
  v72 = OUTLINED_FUNCTION_3_5(v51);
  if (!v63)
  {
    v72 = sub_26812C310(v51, &qword_28024DBB8, &unk_2683D4310);
  }

LABEL_27:
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_8();
  v75 = v96;
  *(v76 - 16) = v2;
  *(v76 - 8) = v75;
  v77 = sub_26817509C(sub_268176C4C, v10);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_6_8();
  *(v78 - 16) = v2;
  *(v78 - 8) = v75;
  sub_26817509C(sub_268176B54, v69);
  sub_2683CB528();
  v79 = OUTLINED_FUNCTION_2_6(v10);
  if (v63)
  {
    v79 = OUTLINED_FUNCTION_2_6(v69);
    if (v63)
    {
      sub_26812C310(v47, &qword_28024D4B0, &unk_2683D26E0);
      v80 = v58;
LABEL_42:
      sub_26812C310(v80, &qword_28024D4B0, &unk_2683D26E0);
      v90 = 0;
      goto LABEL_45;
    }
  }

  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_6_8();
  *(v81 - 16) = v2;
  v82 = sub_2683B03A0(sub_268176B84);
  v83 = v82;
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_6_8();
  *(v84 - 16) = v2;
  v85 = sub_2683B03A0(sub_268176C64);
  v86 = v85 == 2 || v83 == 2;
  if (v86 || (v83 & 1) != 0 || (v85 & 1) != 0)
  {
    sub_26812C310(v47, &qword_28024D4B0, &unk_2683D26E0);
    v80 = v101;
    goto LABEL_42;
  }

  v87 = [v99 dateTime];
  v88 = v87;
  if (v87)
  {
    v89 = [v87 allDay];

    if (v89)
    {
      LODWORD(v88) = [v89 BOOLValue];
    }

    else
    {
      LODWORD(v88) = 0;
    }
  }

  v91 = sub_268176928(0, 0, 1, 0, 0, 1, 0, 0);
  sub_26812C310(v47, &qword_28024D4B0, &unk_2683D26E0);
  sub_26812C310(v101, &qword_28024D4B0, &unk_2683D26E0);
  v90 = v88 & v91;
LABEL_45:
  sub_26812C310(v10, &qword_28024DB08, qword_2683D5760);
  sub_26812C310(v69, &qword_28024DB08, qword_2683D5760);
  (*(v100 + 8))(v2, v16);
  return v90;
}

uint64_t sub_2681767E0()
{
  if (![v0 temporalEventTriggerTypes])
  {
    result = [v0 dateTime];
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t sub_26817682C()
{
  if ([v0 itemType] == 2)
  {
    v1 = [v0 title];
    if (v1)
    {

      return 1;
    }

    sub_26812E98C(v0, &selRef_content);
    if (v2)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_2681768A4(SEL *a1, char a2, char a3)
{
  if ([v3 *a1] != 2)
  {
    return 0;
  }

  return sub_268176928(0, 0, 0, a2 & 1, 0, 0, a3 & 1, 0);
}

uint64_t sub_268176928(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v17 = [v8 title];
  if (v17)
  {

    if ((a1 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (a1)
  {
    goto LABEL_23;
  }

  sub_26812E98C(v8, &selRef_content);
  if (v18)
  {

    if ((a2 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (a2)
  {
    goto LABEL_23;
  }

  v19 = [v8 dateTime];
  if (v19)
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (a3)
  {
    goto LABEL_23;
  }

  if (([v8 status] == 0) == (a4 & 1))
  {
    goto LABEL_23;
  }

  v20 = [v8 location];
  if (!v20)
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    v23 = 0;
    return v23 & 1;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (([v8 temporalEventTriggerTypes] == 0) == (a6 & 1) || (objc_msgSend(v8, sel_taskPriority) == 0) == (a7 & 1))
  {
    goto LABEL_23;
  }

  sub_26812E98C(v8, &selRef_notebookItemIdentifier);
  v22 = v21;
  if (v21)
  {
  }

  v23 = (v22 != 0) ^ a8 ^ 1;
  return v23 & 1;
}

uint64_t sub_268176AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268176B84@<X0>(BOOL *a1@<X8>)
{
  result = sub_2683CB688();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_268176BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268176C38(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

id sub_268176D1C(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v92 = a5;
  v90 = a3;
  v77 = a2;
  sub_2683CE7B8();
  OUTLINED_FUNCTION_0_3();
  v88 = v10;
  v89 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_18();
  v87 = v11;
  OUTLINED_FUNCTION_3_8();
  v85 = sub_2683CE948();
  OUTLINED_FUNCTION_0_3();
  v83 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_18();
  v86 = v14;
  OUTLINED_FUNCTION_3_8();
  v15 = sub_2683CE898();
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_0_18();
  v81 = v16;
  OUTLINED_FUNCTION_3_8();
  v17 = sub_2683CB668();
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_0_18();
  v79 = v18;
  OUTLINED_FUNCTION_3_8();
  v84 = sub_2683CE878();
  OUTLINED_FUNCTION_0_3();
  v82 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_18();
  v80 = v21;
  OUTLINED_FUNCTION_3_8();
  v22 = sub_2683CE628();
  OUTLINED_FUNCTION_0_3();
  v74 = v23;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a4 - 1);
  MEMORY[0x28223BE20](v25);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8D8 != -1)
  {
    swift_once();
  }

  v75 = sub_2683CF7E8();
  v31 = __swift_project_value_buffer(v75, qword_28027C940);
  v32 = *(v28 + 16);
  v78 = v6;
  v76 = v32;
  v32(v30, v6, a4);
  v73 = v31;
  v33 = sub_2683CF7C8();
  v34 = sub_2683CFE98();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_49();
    v91 = a4;
    v36 = v35;
    v37 = swift_slowAlloc();
    v72 = a1;
    v71 = v37;
    v93[0] = v37;
    *v36 = 136315138;
    sub_2683CE718();
    sub_268177738();
    v38 = sub_2683D0568();
    v40 = v39;
    (*(v74 + 8))(v27, v22);
    (*(v28 + 8))(v30, v91);
    v41 = sub_2681610A0(v38, v40, v93);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_2680EB000, v33, v34, "[PersonIntentNodeRepresenting] Attempting to resolve contact query: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    a1 = v72;
    OUTLINED_FUNCTION_38();
    a4 = v91;
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v28 + 8))(v30, a4);
  }

  v91 = __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  sub_2681776CC(a4, a4);
  swift_allocObject();
  v77 = sub_2683CFCC8();
  v76(v42, v78, a4);
  v43 = [a1 identifier];
  if (v43)
  {
    v44 = v43;
    sub_2683CFA78();
  }

  sub_2683CFD28();
  v45 = [a1 typeName];
  sub_2683CFA78();

  sub_2683CB628();
  sub_2683CE888();
  (*(v83 + 104))(v86, *MEMORY[0x277D56148], v85);
  (*(v88 + 104))(v87, *MEMORY[0x277D560D0], v89);
  sub_2683CE868();
  v46 = sub_2683CE488();
  v47 = OUTLINED_FUNCTION_5_10();
  v48(v47);

  if (sub_268229348() == 1 && sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v46 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x26D616C90](0, v46);
    }

    else
    {
      v49 = *(v46 + 32);
    }

    v50 = v49;

    v51 = v50;
    v52 = sub_2683CF7C8();
    v53 = sub_2683CFE98();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_49();
      v55 = swift_slowAlloc();
      v93[0] = v55;
      *v54 = 136315138;
      v56 = v51;
      v57 = [v56 description];
      v58 = sub_2683CFA78();
      v60 = v59;

      v61 = sub_2681610A0(v58, v60, v93);

      *(v54 + 4) = v61;
      OUTLINED_FUNCTION_6_9(&dword_2680EB000, v62, v63, "[PersonIntentNodeRepresenting] Result: %s");
      __swift_destroy_boxed_opaque_existential_0(v55);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    __swift_project_value_buffer(v75, qword_28027C958);

    v64 = sub_2683CF7C8();
    v65 = sub_2683CFE88();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = OUTLINED_FUNCTION_49();
      *v66 = 134217984;
      v67 = sub_268229348();

      *(v66 + 4) = v67;

      OUTLINED_FUNCTION_6_9(&dword_2680EB000, v68, v69, "[PersonIntentNodeRepresenting] Contact resolver created %ld skeletons when exactly 1 is expected.");
      OUTLINED_FUNCTION_38();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  return v51;
}

uint64_t sub_2681776CC(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

unint64_t sub_268177738()
{
  result = qword_28024DED0;
  if (!qword_28024DED0)
  {
    sub_2683CE628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DED0);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_6_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_268177814(void *a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6)
{
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v9 = sub_2683CFC98();

  if (a4)
  {
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    a4 = sub_26835E5F8();
  }

  if (a6)
  {
    v10 = sub_2683CFA68();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:a1 tasks:v9 groupName:a4 createdDateComponents:0 modifiedDateComponents:0 identifier:v10];

  return v11;
}

id sub_268177934(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  swift_getKeyPath();
  v7 = *(a1 + 16);
  if (v7)
  {
    v13[1] = v1;
    v16 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v8 = *(v4 + 16);
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    v15 = v8;
    do
    {
      v15(v6, v9, v3);
      swift_getAtKeyPath();
      (*(v4 + 8))(v6, v3);
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v9 += v14;
      --v7;
    }

    while (v7);

    v10 = v16;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v11 = sub_268177B14(v10);

  return v11;
}

id sub_268177B14(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = [v2 title];
  v11 = [v2 groupName];
  v12 = [v2 createdDateComponents];
  if (v12)
  {
    v13 = v12;
    sub_2683CAFE8();

    v14 = sub_2683CB0D8();
    v15 = 0;
  }

  else
  {
    v14 = sub_2683CB0D8();
    v15 = 1;
  }

  v16 = 1;
  __swift_storeEnumTagSinglePayload(v9, v15, 1, v14);
  v17 = [v2 modifiedDateComponents];
  if (v17)
  {
    v18 = v17;
    sub_2683CAFE8();

    v16 = 0;
  }

  v19 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v7, v16, 1, v19);
  v20 = sub_2683BA54C(v2);
  v22 = v21;
  objc_allocWithZone(MEMORY[0x277CD4228]);

  return sub_268177CF0(v10, a1, v11, v9, v7, v20, v22);
}

id sub_268177CF0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v14 = sub_2683CFC98();

  v15 = sub_2683CB0D8();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v15) != 1)
  {
    v16 = sub_2683CAFD8();
    (*(*(v15 - 8) + 8))(a4, v15);
  }

  if (__swift_getEnumTagSinglePayload(a5, 1, v15) != 1)
  {
    v17 = sub_2683CAFD8();
    (*(*(v15 - 8) + 8))(a5, v15);
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_5:
  v18 = sub_2683CFA68();

LABEL_8:
  v19 = [v8 initWithTitle:a1 tasks:v14 groupName:a3 createdDateComponents:v16 modifiedDateComponents:v17 identifier:v18];

  return v19;
}

BOOL sub_268177EA4(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  if (!v7)
  {
    if (a2[2].i8[0])
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v7 == 1)
  {
    if (a2[2].i8[0] != 1)
    {
      return 0;
    }

LABEL_6:
    v8 = a2[1].i64[0];
    v9 = a2[1].i64[1];
    v10 = v3 == a2->i64[0] && v4 == a2->i64[1];
    if (!v10 && (sub_2683D0598() & 1) == 0)
    {
      return 0;
    }

    v11 = v5 == v8 && v6 == v9;
    return v11 || (sub_2683D0598() & 1) != 0;
  }

  if (v5 | v4 | v3 | v6)
  {
    if (a2[2].i8[0] != 2 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
    {
      return 0;
    }
  }

  else
  {
    if (a2[2].i8[0] != 2)
    {
      return 0;
    }

    v12 = vorrq_s8(*a2, a2[1]);
    if (vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
    {
      return 0;
    }
  }

  return 1;
}

void sub_268177FC4(uint64_t a1)
{
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  sub_26817A158(a1, v13);
  v3 = sub_2683CF7C8();
  v4 = sub_2683CFE98();
  sub_26817A190(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v7;
    v14 = *(a1 + 32);
    sub_26817A158(a1, &v11);
    v8 = sub_2683CFAD8();
    v10 = sub_2681610A0(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2680EB000, v3, v4, "[AnnounceOrchestratorFlow] Transitioning to state: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D617A40](v6, -1, -1);
    MEMORY[0x26D617A40](v5, -1, -1);
  }
}

unint64_t sub_268178140(uint64_t a1, uint64_t a2)
{
  sub_2683D0178();

  MEMORY[0x26D616690](a1, a2);
  MEMORY[0x26D616690](0xD000000000000010, 0x80000002683FD7C0);
  v4 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x26D616690](v4);
  MEMORY[0x26D616690](10530, 0xE200000000000000);
  return 0xD000000000000016;
}

uint64_t sub_268178210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_2683D0598(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_2683D0598();
    }
  }

  return result;
}

uint64_t sub_2681782B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2683CFB48();

  return sub_2683CFB48();
}

uint64_t sub_268178300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_2681783B0(uint64_t a1)
{
  v2 = v1;
  sub_2683CCBA8();
  OUTLINED_FUNCTION_0_3();
  v51 = v5;
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2683CCC18();
  OUTLINED_FUNCTION_0_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2683CCBD8();
  OUTLINED_FUNCTION_0_3();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  sub_2683CCB88();
  if ((*(v10 + 88))(v13, v8) == *MEMORY[0x277D5C150])
  {
    (*(v10 + 96))(v13, v8);
    (*(v16 + 32))(v22, v13, v14);
    (*(v16 + 16))(v20, v22, v14);
    v23 = sub_26834C7E0(v20, &v53);
    v24 = *(&v53 + 1);
    if (*(&v53 + 1))
    {
      v52 = v56;
      v26 = *(&v54 + 1);
      v25 = v55;
      v27 = v53;

      sub_26817A2A4(v27, v24);
      *&v53 = v26;
      *(&v53 + 1) = v25;
      *&v54 = v27;
      *(&v54 + 1) = v24;
      LOBYTE(v55) = 0;
      sub_268177FC4(&v53);
      (*(v16 + 8))(v22, v14);
      v28 = *(v2 + 176);
      v29 = *(v2 + 184);
      v30 = *(v2 + 192);
      v31 = *(v2 + 200);
      v32 = v54;
      *(v2 + 176) = v53;
      *(v2 + 192) = v32;
      v33 = *(v2 + 208);
      *(v2 + 208) = v55;
      sub_26817A10C(v28, v29, v30, v31, v33);
      return 1;
    }

    (*(v16 + 8))(v22, v14, v23);
  }

  else
  {
    (*(v10 + 8))(v13, v8);
  }

  v36 = v51;
  v35 = v52;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v37 = sub_2683CF7E8();
  __swift_project_value_buffer(v37, qword_28027C958);
  (*(v36 + 16))(v7, a1, v35);
  v38 = sub_2683CF7C8();
  v39 = sub_2683CFE98();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_49();
    v41 = OUTLINED_FUNCTION_53();
    *&v53 = v41;
    *v40 = 136446210;
    sub_26817A25C(&qword_28024DEE8, 255, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v42 = sub_2683D0568();
    v44 = v43;
    v45 = OUTLINED_FUNCTION_0_0();
    v46(v45);
    v47 = sub_2681610A0(v42, v44, &v53);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_2680EB000, v38, v39, "[AnnounceOrchestratorFlow] Ignoring non-announce-DI input: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v48 = OUTLINED_FUNCTION_0_0();
    v49(v48);
  }

  return 0;
}

uint64_t sub_268178858(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26817886C()
{
  v41 = v0;
  v1 = v0[9];
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v0[10] = v3;
  v5 = *(v1 + 192);
  v4 = *(v1 + 200);
  v0[11] = v4;
  if (*(v1 + 208))
  {
    if (*(v1 + 208) == 1)
    {
      v6 = qword_28024C8E0;

      if (v6 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v7 = sub_2683CF7E8();
      __swift_project_value_buffer(v7, qword_28027C958);
      v8 = sub_2683CF7C8();
      v9 = sub_2683CFE98();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2680EB000, v8, v9, "[AnnounceOrchestratorFlow] Finished announcing reminder, searching for more to announce.", v10, 2u);
        OUTLINED_FUNCTION_38();
      }

      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      OUTLINED_FUNCTION_6_10(v11);
      OUTLINED_FUNCTION_12_0();

      return sub_268179AB8(v12, v13, v14, v15);
    }

    else
    {
      if (v5 | v3 | v2 | v4)
      {
        v25 = *(v1 + 240);
        v24 = *(v1 + 248);
        if (v25 < 1 || (v24 - 5) >= 0xFFFFFFFFFFFFFFFELL)
        {
          if (qword_28024C8E0 != -1)
          {
            OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
          }

          v27 = sub_2683CF7E8();
          __swift_project_value_buffer(v27, qword_28027C958);
          v28 = sub_2683CF7C8();
          v29 = sub_2683CFE98();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = OUTLINED_FUNCTION_53();
            v40 = v31;
            *v30 = 134218242;
            *(v30 + 4) = v25;
            *(v30 + 12) = 2080;
            v0[7] = v24;
            type metadata accessor for AFSiriAnnouncementPlatform(0);
            v32 = sub_2683CFAD8();
            v34 = sub_2681610A0(v32, v33, &v40);

            *(v30 + 14) = v34;
            _os_log_impl(&dword_2680EB000, v28, v29, "[AnnounceOrchestratorFlow] Skipping FollowUpHintFlow. Announced Tasks: %ld, Platform: %s", v30, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v31);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();
          }

          sub_2683CC3F8();
        }

        else
        {
          __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
          sub_2683CC3D8();
        }

        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_12_0();

        __asm { BRAA            X1, X16 }
      }

      v35 = swift_task_alloc();
      v0[13] = v35;
      *v35 = v0;
      v35[1] = sub_268178E08;
      OUTLINED_FUNCTION_12_0();

      return sub_26817971C(v36);
    }
  }

  else
  {

    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_6_10(v18);
    OUTLINED_FUNCTION_12_0();

    return sub_268179074(v19, v20, v21, v22);
  }
}

uint64_t sub_268178C40()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_268178D5C()
{
  v1 = *(v0 + 72);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 2;
  sub_268177FC4(v0 + 16);
  v2 = OUTLINED_FUNCTION_11_11();
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  *(v1 + 176) = *(v0 + 16);
  *(v1 + 192) = v4;
  v5 = *(v1 + 208);
  *(v1 + 208) = v3;
  sub_26817A10C(v2, v6, v7, v8, v5);
  sub_2683CC388();
  OUTLINED_FUNCTION_40();

  return v9();
}

uint64_t sub_268178E08()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_268178EE8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_268179004()
{
  OUTLINED_FUNCTION_14();
  sub_2683CC388();
  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268179074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268179090()
{
  v29 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v2 + 216);

  LOBYTE(v1) = sub_2681F70AC(v5, v4, v3, v1, v6);

  if (v1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v7 = sub_2683CF7E8();
    __swift_project_value_buffer(v7, qword_28027C958);

    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[13];
      v10 = v0[14];
      v12 = OUTLINED_FUNCTION_49();
      v13 = OUTLINED_FUNCTION_53();
      v28 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_2681610A0(v11, v10, &v28);
      OUTLINED_FUNCTION_13_8(&dword_2680EB000, v14, v15, "[AnnounceOrchestratorFlow] Reminder id %{public}s has already been processed. Skipping...");
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    OUTLINED_FUNCTION_40();

    return v16();
  }

  else
  {
    v18 = v0[14];
    v19 = v0[15];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];
    swift_beginAccess();

    sub_268159390(&v28, v22, v21, v20, v18);
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1((v19 + 16), *(v19 + 40));
    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_268179328;
    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[11];
    v27 = v0[12];

    return sub_268366990(v25, v24, v26, v27);
  }
}

uint64_t sub_268179328()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v1 + 136) = v0;

  v2 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_268179418()
{
  v35 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v2 = sub_2683CF7E8();
    __swift_project_value_buffer(v2, qword_28027C958);
    v3 = v1;
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_49();
      v7 = OUTLINED_FUNCTION_53();
      v34 = v7;
      *v6 = 136315138;
      v8 = v3;
      v9 = [v8 description];
      v10 = sub_2683CFA78();
      v12 = v11;

      v13 = sub_2681610A0(v10, v12, &v34);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_2680EB000, v4, v5, "[AnnounceOrchestratorFlow] Enqueueing task to be announced: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v14 = v0[14];
    v15 = v0[15];
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    swift_beginAccess();

    v19 = v3;
    sub_26817A1C0();
    v20 = *(*(v15 + 224) + 16);
    sub_26817A20C(v20);
    v21 = *(v15 + 224);
    *(v21 + 16) = v20 + 1;
    v22 = (v21 + 40 * v20);
    v22[4] = v18;
    v22[5] = v16;
    v22[6] = v17;
    v22[7] = v14;
    v22[8] = v19;
    *(v15 + 224) = v21;
    swift_endAccess();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v23 = sub_2683CF7E8();
    __swift_project_value_buffer(v23, qword_28027C958);

    v24 = sub_2683CF7C8();
    v25 = sub_2683CFE78();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = v0[13];
      v26 = v0[14];
      v28 = OUTLINED_FUNCTION_49();
      v29 = OUTLINED_FUNCTION_53();
      v34 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_2681610A0(v27, v26, &v34);
      OUTLINED_FUNCTION_13_8(&dword_2680EB000, v30, v31, "[AnnounceOrchestratorFlow] unable to fetch reminder with id %{public}s. Skipping...");
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  OUTLINED_FUNCTION_40();

  return v32();
}

uint64_t sub_26817971C(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268179730()
{
  v20 = v0;
  v1 = *(v0 + 112);
  swift_beginAccess();
  if (*(*(v1 + 224) + 16))
  {
    v2 = *(v0 + 112);
    swift_beginAccess();
    sub_26822291C(v19);
    v3 = v19[0];
    v4 = v19[1];
    v5 = v19[2];
    v6 = v19[3];
    v7 = v19[4];
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
    sub_26813D8DC(v7, v3, v4, v2[29]);
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = v3;
    v8[4] = v4;
    v8[5] = v5;
    v8[6] = v6;

    sub_2683CC3A8();
  }

  else
  {
    v9 = *(v0 + 112);
    *(v0 + 16) = 1;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 2;
    sub_268177FC4(v0 + 16);
    v10 = OUTLINED_FUNCTION_11_11();
    v11 = *(v0 + 48);
    v12 = *(v0 + 32);
    *(v9 + 176) = *(v0 + 16);
    *(v9 + 192) = v12;
    v13 = *(v9 + 208);
    *(v9 + 208) = v11;
    sub_26817A10C(v10, v14, v15, v16, v13);
    sub_2683CC388();
  }

  OUTLINED_FUNCTION_40();

  return v17();
}

_BYTE *sub_2681798D8(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*result == 1)
  {
    v7 = *(a2 + 240);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (!v8)
    {
      *(a2 + 240) = v9;
      v10 = *(a2 + 232);
      v8 = __OFADD__(v10, 1);
      v11 = v10 + 1;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        *(a2 + 232) = v11;
        *&v28 = a3;
        *(&v28 + 1) = a4;
        *&v29 = a5;
        *(&v29 + 1) = a6;
        v30 = 1;
        sub_268177FC4(&v28);
        v12 = *(a2 + 176);
        v13 = *(a2 + 184);
        v14 = *(a2 + 192);
        v15 = *(a2 + 200);
        v16 = v29;
        *(a2 + 176) = v28;
        *(a2 + 192) = v16;
        v17 = *(a2 + 208);
        *(a2 + 208) = v30;
        sub_26817A10C(v12, v13, v14, v15, v17);
      }

      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_28024C8E0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C958);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE98();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2680EB000, v19, v20, "[AnnounceOrchestratorFlow] Announce child flow failed. Stopping orchestrator flow.", v21, 2u);
    MEMORY[0x26D617A40](v21, -1, -1);
  }

  v28 = 1uLL;
  v29 = 0uLL;
  v30 = 2;
  sub_268177FC4(&v28);
  v22 = *(a2 + 176);
  v23 = *(a2 + 184);
  v24 = *(a2 + 192);
  v25 = *(a2 + 200);
  v26 = v29;
  *(a2 + 176) = v28;
  *(a2 + 192) = v26;
  v27 = *(a2 + 208);
  *(a2 + 208) = v30;

  return sub_26817A10C(v22, v23, v24, v25, v27);
}

uint64_t sub_268179AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268179AD4()
{
  __swift_project_boxed_opaque_existential_1((v0[16] + 56), *(v0[16] + 80));

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_268179B9C;
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];

  return sub_2683BDC64(v5, v4, v2, v3);
}

uint64_t sub_268179B9C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v1 + 144) = v0;

  v2 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_268179C8C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  if (v1[2])
  {
    v3 = v0 + 16;
    v4 = *(v0 + 96);
    v6 = v1[4];
    v5 = v1[5];

    v7 = 0;
    *(v0 + 16) = v4;
    *(v0 + 24) = v2;
    v8 = (v0 + 48);
    *(v0 + 32) = v6;
    *(v0 + 40) = v5;
  }

  else
  {
    v3 = v0 + 56;

    v8 = (v0 + 88);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    v7 = 2;
  }

  v9 = *(v0 + 128);
  *v8 = v7;
  sub_268177FC4(v3);
  v10 = OUTLINED_FUNCTION_11_11();
  v11 = *(v3 + 32);
  v12 = *(v3 + 16);
  *(v9 + 176) = *v3;
  *(v9 + 192) = v12;
  v13 = *(v9 + 208);
  *(v9 + 208) = v11;
  sub_26817A10C(v10, v14, v15, v16, v13);
  OUTLINED_FUNCTION_40();

  return v17();
}

uint64_t sub_268179D80()
{
  type metadata accessor for AnnounceRemindersOrchestratorFlow();
  sub_26817A25C(&qword_28024DEE0, v0, type metadata accessor for AnnounceRemindersOrchestratorFlow, &unk_2683D59E0);
  OUTLINED_FUNCTION_0_0();
  return sub_2683CBF48();
}

uint64_t sub_268179E08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v1 = OUTLINED_FUNCTION_11_11();
  sub_26817A10C(v1, v2, v3, v4, *(v0 + 208));

  return v0;
}

uint64_t sub_268179E5C()
{
  sub_268179E08();

  return MEMORY[0x2821FE8D8](v0, 256, 7);
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook33AnnounceRemindersOrchestratorFlowC5StateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_268179EE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_268179F20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_268179F68(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_268179F98()
{
  result = qword_28024DED8;
  if (!qword_28024DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DED8);
  }

  return result;
}

uint64_t sub_26817A038(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268133EC8;

  return sub_268178858(a1);
}

uint64_t sub_26817A0D4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnnounceRemindersOrchestratorFlow();

  return sub_2683CBF88();
}

uint64_t sub_26817A10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

void sub_26817A1C0()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2682E5054();
    *v0 = v3;
  }
}

void sub_26817A20C(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_2682E5054();
    *v1 = v2;
  }
}

uint64_t sub_26817A25C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26817A2A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_13_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_26817A460(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_79(a1);
  a2(v5, a1);
  return sub_2683D06D8();
}

uint64_t sub_26817A514(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_79(a1);
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817A604(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_79(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_7_7(v4, v5, v6);

  return sub_2683D06D8();
}

uint64_t sub_26817A684(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_79(a1);
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817A86C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_79(a1);
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817A8E0(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  sub_26817AE98(v2);
  return sub_2683D06D8();
}

uint64_t sub_26817A920(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_79(a1);
  v9 = OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  OUTLINED_FUNCTION_33_5(v9, v10, v11);
  return sub_2683D06D8();
}

uint64_t sub_26817A96C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_79(a1);
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_23_6();
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817A9B0(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_79(a1);
  v9 = OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  OUTLINED_FUNCTION_33_5(v9, v10, v11);
  return sub_2683D06D8();
}

uint64_t sub_26817A9FC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_79(a1);
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817AA94(uint64_t a1, unsigned __int8 a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817AB50(uint64_t a1, char a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817AC44()
{
  OUTLINED_FUNCTION_29_5();
  sub_2683CFB48();
}

uint64_t sub_26817ACA4(uint64_t a1)
{
  OUTLINED_FUNCTION_15_8();
  sub_2683CFB48();
}

uint64_t sub_26817ADA4(uint64_t a1, char a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817AE24()
{
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_14_7();
  sub_2683CFB48();
}

uint64_t sub_26817AE98(uint64_t a1)
{
  OUTLINED_FUNCTION_9_8();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_32_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817AFB0(uint64_t a1)
{
  OUTLINED_FUNCTION_9_8();
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_17_6();
      break;
    case 3:
      OUTLINED_FUNCTION_32_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817B06C(uint64_t a1)
{
  OUTLINED_FUNCTION_9_8();
  switch(v1)
  {
    case 3:
      OUTLINED_FUNCTION_32_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817B12C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_7();
  sub_2683CFB48();
}

uint64_t sub_26817B18C(uint64_t a1)
{
  OUTLINED_FUNCTION_15_8();
  sub_2683CFB48();
}

uint64_t sub_26817B278(uint64_t a1)
{
  OUTLINED_FUNCTION_15_8();
  sub_2683CFB48();
}

uint64_t sub_26817B394(uint64_t a1)
{
  OUTLINED_FUNCTION_9_8();
  sub_2683CFB48();
}

uint64_t sub_26817B43C(uint64_t a1, char a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817B4B4(uint64_t a1, unsigned __int8 a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817B534(uint64_t a1, unsigned __int8 a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817B5B8(uint64_t a1)
{
  OUTLINED_FUNCTION_15_8();
  sub_2683CFB48();
}

uint64_t sub_26817B674()
{
  OUTLINED_FUNCTION_29_5();
  sub_2683CFB48();
}

uint64_t sub_26817B6D4()
{
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_14_7();
  sub_2683CFB48();
}

uint64_t sub_26817B748(uint64_t a1)
{
  OUTLINED_FUNCTION_9_8();
  switch(v1)
  {
    case 8:
      OUTLINED_FUNCTION_32_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817B8A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_22_4(v3, v4);
}

uint64_t sub_26817B90C(uint64_t a1, char a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817B974(uint64_t a1)
{
  OUTLINED_FUNCTION_9_8();
  sub_2683CFB48();
}

uint64_t sub_26817BA60(uint64_t a1, char a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817BABC(uint64_t a1, char a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817BB34(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_5_11();
      break;
    case 2:
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_5_11();
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817BC18()
{
  OUTLINED_FUNCTION_11_12();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_11_12();
      break;
    case 2:
    case 5:
      OUTLINED_FUNCTION_23_6();
      goto LABEL_4;
    case 4:
LABEL_4:
      OUTLINED_FUNCTION_5_11();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817BD04()
{
  OUTLINED_FUNCTION_12_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_3_9();
      break;
    case 2:
      OUTLINED_FUNCTION_30_3();
      break;
    case 6:
      OUTLINED_FUNCTION_4_9();
      break;
    case 7:
      OUTLINED_FUNCTION_5_11();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817BE00(uint64_t a1)
{
  OUTLINED_FUNCTION_15_8();
  sub_2683CFB48();
}

uint64_t sub_26817BEA8()
{
  OUTLINED_FUNCTION_28_5();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_30_3();
      break;
    case 2:
      OUTLINED_FUNCTION_25_7();
      break;
    case 4:
      goto LABEL_5;
    case 5:
    case 6:
      OUTLINED_FUNCTION_23_6();
LABEL_5:
      OUTLINED_FUNCTION_5_11();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817BF88(uint64_t a1)
{
  OUTLINED_FUNCTION_3_9();
  switch(v1)
  {
    case 1:
    case 2:
    case 5:
    case 6:
      OUTLINED_FUNCTION_24_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C0D8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_9();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_16_10();
      break;
    case 2:
      OUTLINED_FUNCTION_26_5();
      break;
    case 3:
      OUTLINED_FUNCTION_12_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C168(uint64_t a1, char a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817C1DC(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_9();
  }

  sub_2683CFB48();
}

uint64_t sub_26817C25C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      break;
    case 4:
      OUTLINED_FUNCTION_28_5();
      break;
    default:
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_17_6();
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C3E8(uint64_t a1, char a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817C454(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_4_9();
  }

  sub_2683CFB48();
}

uint64_t sub_26817C4D8(uint64_t a1, char a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817C560(uint64_t a1)
{
  OUTLINED_FUNCTION_3_9();
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_30_3();
      break;
    case 3:
      OUTLINED_FUNCTION_11_12();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C654(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_30_3();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C724(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 8:
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_5_11();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817C88C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  OUTLINED_FUNCTION_22_4(v3, v4);
}

uint64_t sub_26817C8D0(uint64_t a1, char a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817CA08(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 6:
      OUTLINED_FUNCTION_26_5();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817CAD8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_12_6();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817CBF0(uint64_t a1, unsigned __int8 a2)
{
  sub_2683CFB48();
}

uint64_t sub_26817CC64(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_3_9();
      break;
    case 2:
      OUTLINED_FUNCTION_16_10();
      break;
    case 3:
      OUTLINED_FUNCTION_25_7();
      break;
    case 4:
      OUTLINED_FUNCTION_4_9();
      break;
    case 5:
    case 9:
      OUTLINED_FUNCTION_5_11();
      break;
    default:
      break;
  }

  sub_2683CFB48();
}

uint64_t sub_26817CD98(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_9(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 0x6C65636E6163;
    }
  }

  else
  {
    v5 = 7562617;
  }

  OUTLINED_FUNCTION_18_7(v3, v5, v4);

  return sub_2683D06D8();
}

uint64_t sub_26817CEE8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_9(a1, a2);
  if (v2)
  {
    v5 = 0x6C75616665447369;
  }

  else
  {
    v5 = 0x6C7469547473696CLL;
  }

  OUTLINED_FUNCTION_18_7(v3, v5, v4);

  return sub_2683D06D8();
}

uint64_t sub_26817CF5C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_9(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x746E657665;
    }

    else
    {
      v5 = 0x7053656C69626F6DLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
  }

  OUTLINED_FUNCTION_18_7(v3, v5, v4);

  return sub_2683D06D8();
}

uint64_t sub_26817CFE4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_9(a1, a2);
  if (v2)
  {
    v5 = 0x7961446C6C417369;
  }

  else
  {
    v5 = 0x65746144657564;
  }

  OUTLINED_FUNCTION_18_7(v3, v5, v4);

  return sub_2683D06D8();
}

uint64_t sub_26817D06C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_9(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x746E65746E6F63;
    }

    else
    {
      v5 = 0x6D614E70756F7267;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_9();
  }

  OUTLINED_FUNCTION_18_7(v3, v5, v4);

  return sub_2683D06D8();
}

uint64_t sub_26817D0F0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_9(a1, a2);
  if (v2)
  {
    v5 = 0x736B736174;
  }

  else
  {
    v5 = 0x676972547478656ELL;
  }

  OUTLINED_FUNCTION_18_7(v3, v5, v4);

  return sub_2683D06D8();
}

uint64_t sub_26817D168(uint64_t a1)
{
  v1 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817D1CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_7(a1, a2);
  v2(v5, v3);
  return sub_2683D06D8();
}

uint64_t sub_26817D29C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_9(a1, a2);
  if (v2)
  {
    v5 = 0x6F4E686372616573;
  }

  else
  {
    v5 = 0x6F4E657461657263;
  }

  OUTLINED_FUNCTION_18_7(v3, v5, v4);

  return sub_2683D06D8();
}

uint64_t sub_26817D318(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_8_9(a1, a2);
  OUTLINED_FUNCTION_6_11(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D394(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_9(a1, a2);
  if (v2)
  {
    v10 = 0xD00000000000001BLL;
  }

  else
  {
    v10 = 0xD00000000000001FLL;
  }

  OUTLINED_FUNCTION_6_11(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D404(uint64_t a1)
{
  v1 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817D4C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_9(a1, a2);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_6_11(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D52C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_9(a1, a2);
  OUTLINED_FUNCTION_29_5();
  if (v2)
  {
    v10 = 0xD00000000000001DLL;
  }

  else
  {
    v10 = 0xD00000000000001CLL;
  }

  OUTLINED_FUNCTION_6_11(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D5AC(uint64_t a1, char a2)
{
  v3 = sub_2683D0698();
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xD000000000000024;
    }

    else
    {
      v10 = 0xD00000000000001FLL;
    }
  }

  else
  {
    v10 = 0xD000000000000021;
  }

  OUTLINED_FUNCTION_6_11(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D640(uint64_t a1, char a2)
{
  v3 = sub_2683D0698();
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xD000000000000022;
    }

    else
    {
      v10 = 0xD000000000000021;
    }
  }

  else
  {
    v10 = 0xD000000000000024;
  }

  OUTLINED_FUNCTION_6_11(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D6D0(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_8_9(a1, a2);
  OUTLINED_FUNCTION_6_11(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D798(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_9(a1, a2);
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_6_11(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D830(uint64_t a1)
{
  v1 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817D894(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_9(a1, a2);
  sub_26817AE98(v3);
  return sub_2683D06D8();
}

uint64_t sub_26817D8D0(uint64_t a1)
{
  v1 = sub_2683D0698();
  v9 = OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  OUTLINED_FUNCTION_33_5(v9, v10, v11);
  return sub_2683D06D8();
}

uint64_t sub_26817D914(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_9(a1, a2);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_6_11(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817D978(uint64_t a1)
{
  v1 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_23_6();
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817D9C0(uint64_t a1)
{
  v1 = sub_2683D0698();
  v9 = OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  OUTLINED_FUNCTION_33_5(v9, v10, v11);
  return sub_2683D06D8();
}

uint64_t sub_26817DA04(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_9(a1, a2);
  if (v2)
  {
    v10 = 0xD000000000000017;
  }

  else
  {
    v10 = 0xD00000000000001BLL;
  }

  OUTLINED_FUNCTION_6_11(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817DA74(uint64_t a1)
{
  v1 = sub_2683D0698();
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t sub_26817DAD8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_7(a1, a2);
  v4 = v2(v3);
  OUTLINED_FUNCTION_7_7(v4, v5, v6);

  return sub_2683D06D8();
}

uint64_t sub_26817DB3C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_9(a1, a2);
  OUTLINED_FUNCTION_29_5();
  if (v2)
  {
    v10 = 0xD00000000000001ALL;
  }

  else
  {
    v10 = 0xD00000000000001BLL;
  }

  OUTLINED_FUNCTION_6_11(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_2683CFB48();

  return sub_2683D06D8();
}

uint64_t sub_26817DBD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_7(a1, a2);
  v4 = v2(v3);
  OUTLINED_FUNCTION_7_7(v4, v5, v6);

  return sub_2683D06D8();
}

uint64_t sub_26817DC1C(uint64_t a1, char a2)
{
  sub_2683D0698();
  sub_2683CFB48();

  return sub_2683D06D8();
}

void sub_26817DCD4()
{
  v1 = v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);

  oslog = sub_2683CF7C8();
  v3 = sub_2683CFE68();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = 0xEF776F6C466E6961;
    v7 = 0x4D65747563657865;
    if (*(v1 + 48) != 1)
    {
      v7 = 0x6574656C706D6F63;
      v6 = 0xE800000000000000;
    }

    if (*(v1 + 48))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x5065747563657865;
    }

    if (*(v1 + 48))
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEF73776F6C466572;
    }

    v10 = sub_2681610A0(v8, v9, &v12);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_2680EB000, oslog, v3, "[RootFlow] transitioned to state %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26D617A40](v5, -1, -1);
    MEMORY[0x26D617A40](v4, -1, -1);
  }
}

uint64_t sub_26817DEA0(char a1)
{
  if (!a1)
  {
    return 0x5065747563657865;
  }

  if (a1 == 1)
  {
    return 0x4D65747563657865;
  }

  return 0x6574656C706D6F63;
}

uint64_t sub_26817DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = 0;
  v8 = qword_28024C8E0;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v9 = sub_2683CF7E8();
  __swift_project_value_buffer(v9, qword_28027C958);

  v10 = sub_2683CF7C8();
  v11 = sub_2683CFE98();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
    v14 = MEMORY[0x26D6167A0](a1, v13);
    v16 = v15;

    v17 = sub_2681610A0(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = sub_2683CBC28();
    v19 = MEMORY[0x26D6167A0](a2, v18);
    v21 = v20;

    v22 = sub_2681610A0(v19, v21, &v24);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_2680EB000, v10, v11, "[RootFlow] \n<preconditionFlows: %s \n prerequisiteFlows: %s>", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_26817E138(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_26817E158);
}

uint64_t sub_26817E158(uint64_t a1)
{
  v2 = v1[6];
  if (*(v2 + 48))
  {
    if (*(v2 + 48) == 1)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v3 = sub_2683CF7E8();
      __swift_project_value_buffer(v3, qword_28027C958);
      v4 = sub_2683CF7C8();
      v5 = sub_2683CFE98();
      if (os_log_type_enabled(v4, v5))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_8(&dword_2680EB000, v6, v5, "[RootFlow] Creating the main flow and finishing this flow as complete with it.");
        OUTLINED_FUNCTION_38();
      }

      v7 = v1[6];

      v15 = (*(v7 + 32) + **(v7 + 32));
      v8 = swift_task_alloc();
      v1[7] = v8;
      *v8 = v1;
      v8[1] = sub_26817E4CC;

      return v15();
    }

    sub_2683CC3F8();
  }

  else
  {
    sub_2683CBC78();
    swift_allocObject();

    v10 = sub_2683CBC68();
    v11 = *(v2 + 24);
    type metadata accessor for EachFlow();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v1[2] = v12;
    v1[3] = v10;
    sub_26817F050(&qword_28024DF00, 255, type metadata accessor for EachFlow, &unk_2683D8CC0);

    v1[4] = sub_2683CBF68();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_26817F098;
    *(v13 + 24) = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF08, &unk_2683D6750);
    sub_26817F0AC();
    sub_2683CC398();
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_26817E4CC()
{
  OUTLINED_FUNCTION_14();
  *(*v0 + 64) = v1;

  return MEMORY[0x2822009F8](sub_26817E5C8);
}

uint64_t sub_26817E5C8()
{
  OUTLINED_FUNCTION_14();
  sub_2683CC3E8();

  v1 = *(v0 + 8);

  return v1();
}

void sub_26817E65C(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v3 = sub_2683CF7E8();
    __swift_project_value_buffer(v3, qword_28027C958);
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();
    v6 = 2;
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_20_8(&dword_2680EB000, v7, v5, "[RootFlow] A Guard flow failed, prerequisiteFlows did not execute. Finishing flow as complete.");
LABEL_10:
      OUTLINED_FUNCTION_38();
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    v4 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (os_log_type_enabled(v4, v9))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_20_8(&dword_2680EB000, v10, v9, "[RootFlow] All guard flows passed and all prerequisiteFlows executed.");
      v6 = 1;
      goto LABEL_10;
    }

    v6 = 1;
  }

  *(v2 + 48) = v6;

  sub_26817DCD4();
}

uint64_t sub_26817E7C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RootFlow();
  sub_26817F050(&qword_28024DEF8, v2, type metadata accessor for RootFlow, &unk_2683D5B28);
  return sub_2683CBF48();
}

unint64_t sub_26817E84C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2683D0408();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26817E8BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26817E84C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26817E8EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26817DEA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26817E918()
{

  return v0;
}

uint64_t sub_26817E948()
{
  sub_26817E918();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

_BYTE *storeEnumTagSinglePayload for RootFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26817EA80()
{
  result = qword_28024DEF0;
  if (!qword_28024DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DEF0);
  }

  return result;
}

uint64_t sub_26817EAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26817EB84;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26817EB84()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_26817ECA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26817ED3C;

  return sub_26817E138(a1);
}

uint64_t sub_26817ED3C()
{
  OUTLINED_FUNCTION_14();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26817EE2C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RootFlow();

  return sub_2683CBF88();
}

uint64_t sub_26817EE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2683CBCE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v26 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v13 = v9 + 16;
    v25 = *(v9 + 16);
    v14 = *(v9 + 80);
    v21 = a1;
    v15 = a1 + ((v14 + 32) & ~v14);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v25(v11, v15, v8);
      sub_2683CBC98();
      (*v17)(v11, v8);
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v15 += v16;
      --v12;
    }

    while (v12);

    v18 = v26;
    a3 = v23;
    a4 = v24;
    a2 = v22;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  type metadata accessor for RootFlow();
  v19 = swift_allocObject();
  sub_26817DF10(v18, a2, a3, a4);
  return v19;
}

uint64_t sub_26817F050(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26817F0AC()
{
  result = qword_28024DF10;
  if (!qword_28024DF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024DF08, &unk_2683D6750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DF10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_2683CFB48();
}

void *OUTLINED_FUNCTION_8_9(uint64_t a1, uint64_t a2, ...)
{

  return sub_2683D0698();
}

uint64_t OUTLINED_FUNCTION_18_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_2683CFB48();
}

void *OUTLINED_FUNCTION_19_7(uint64_t a1, uint64_t a2, ...)
{

  return sub_2683D0698();
}

void OUTLINED_FUNCTION_20_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2)
{

  return sub_26817DAD8(0, a2);
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2)
{

  return sub_2683CFB48();
}

uint64_t OUTLINED_FUNCTION_33_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2683CFB48();
}

uint64_t sub_26817F368(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26817F3A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26817F40C()
{
  OUTLINED_FUNCTION_14();
  v1[114] = v0;
  v1[113] = v2;
  v1[107] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[115] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC598();
  v1[116] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[117] = v5;
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  sub_2683CB668();
  v1[120] = OUTLINED_FUNCTION_15_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  OUTLINED_FUNCTION_3_1(v6);
  v1[121] = v7;
  v1[122] = *(v8 + 64);
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v9 = sub_2683CC748();
  v1[125] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[126] = v10;
  v1[127] = OUTLINED_FUNCTION_15_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v1[128] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[129] = v12;
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26817F650);
}

uint64_t sub_26817F650()
{
  v40 = v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[113];
  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = *(v3 + 16);
  v7(v1, v5, v4);
  v7(v2, v5, v4);
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[129];
  v14 = v0[128];
  if (v10)
  {
    v15 = v0[127];
    log = v8;
    v16 = v0[126];
    v35 = v0[125];
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v17 = 136315394;
    v36 = v9;
    sub_2683CC9E8();
    v18 = sub_2683CC738();
    v20 = v19;
    (*(v16 + 8))(v15, v35);
    v21 = *(v13 + 8);
    v21(v11, v14);
    v22 = sub_2681610A0(v18, v20, &v39);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    v23 = sub_2683CC9D8();
    v24 = [v23 unsupportedReason];

    v21(v12, v14);
    *(v17 + 14) = v24;
    _os_log_impl(&dword_2680EB000, log, v36, "[SearchForNotebookItems UnsupportedValueStrategy] Making unsupported dialog for %s with reason: %ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x26D617A40](v37, -1, -1);
    MEMORY[0x26D617A40](v17, -1, -1);
  }

  else
  {
    v25 = *(v13 + 8);
    v25(v0[130], v0[128]);

    v25(v11, v14);
  }

  v26 = v0[124];
  v27 = v0[123];
  v28 = v0[121];
  v29 = v0[120];
  v30 = v0[114];
  v31 = sub_2683CC9B8();
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_2683CC088();
  sub_26816E9C8(v31, v29, v26);
  sub_268180318(v30, (v0 + 87));
  sub_268180350(v26, v27);
  v32 = (*(v28 + 80) + 96) & ~*(v28 + 80);
  v33 = swift_allocObject();
  v0[132] = v33;
  memcpy((v33 + 16), v0 + 87, 0x50uLL);
  sub_2681803C0(v27, v33 + v32);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2);
}

uint64_t sub_26817FA18()
{
  *(v1 + 1064) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 16);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_26817FA54);
  }
}

uint64_t sub_26817FA54()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v10 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 856);
  (*(v2 + 16))(v1, *(v0 + 952));
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2683CC0A8();
  v6 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v7 = sub_2683CCC98();
  *(v0 + 776) = 0u;
  *(v0 + 792) = 0u;
  *(v0 + 808) = 0;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_2683CC328();
  sub_26812C310(v0 + 776, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v3, &qword_28024D400, &qword_2683D2460);
  (*(v2 + 8))(v1, v10);

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_26817FC08()
{
  OUTLINED_FUNCTION_2_11();
  sub_26812C310(v0, &qword_28024DF28, &qword_2683D5C70);

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26817FD00()
{
  OUTLINED_FUNCTION_2_11();
  sub_26812C310(v0, &qword_28024DF28, &qword_2683D5C70);

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26817FDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26817FE08);
}

uint64_t sub_26817FE08()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_26817FEB0;
  v2 = v0[4];
  v3 = v0[2];

  return sub_2682DD0F4(v3, v2);
}

uint64_t sub_26817FEB0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26817FF90()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_2683CC748();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_26818003C);
}

uint64_t sub_26818003C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = sub_26818CD7C(v4, v6);
  if (v7 == 10)
  {
    sub_26812C6B8();
    swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v6;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_40();

    return v9();
  }

  else
  {
    v11 = v7;

    v12 = sub_2683CC9C8();
    v13 = sub_2681753A0(v11);

    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_2681801DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_26817F40C();
}