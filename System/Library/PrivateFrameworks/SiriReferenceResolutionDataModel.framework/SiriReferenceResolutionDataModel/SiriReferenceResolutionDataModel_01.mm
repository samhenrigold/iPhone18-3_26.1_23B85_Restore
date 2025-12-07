uint64_t sub_268C7A534@<X0>(uint64_t *a1@<X8>)
{
  result = RRQueryOption.rawValue.getter();
  *a1 = result;
  return result;
}

SiriReferenceResolutionDataModel::RROrdinalDirection_optional __swiftcall RROrdinalDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C88E84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_268C7A5EC@<X0>(unint64_t *a1@<X8>)
{
  result = RROrdinalDirection.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RRExperimentFilter.appBundleId.getter()
{
  v1 = *v0;

  return v1;
}

SiriReferenceResolutionDataModel::RRExperimentFilter __swiftcall RRExperimentFilter.init(appBundleId:actions:)(Swift::String appBundleId, Swift::OpaquePointer actions)
{
  *v2 = appBundleId;
  *(v2 + 16) = actions;
  result.appBundleId = appBundleId;
  result.actions = actions;
  return result;
}

unint64_t sub_268C7A70C()
{
  result = qword_2802D4898;
  if (!qword_2802D4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4898);
  }

  return result;
}

unint64_t sub_268C7A764()
{
  result = qword_2802D48A0;
  if (!qword_2802D48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D48A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_268C7A7E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268C7A820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_268C7A870(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 64) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RRQueryOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RROrdinalDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268C7AA60()
{
  result = qword_2802D48A8;
  if (!qword_2802D48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D48A8);
  }

  return result;
}

uint64_t sub_268C7AAB4(unsigned __int8 a1, char a2)
{
  v2 = 1413891404;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1413891404;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v6 = 1212631378;
      goto LABEL_4;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 5263188;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x4D4F54544F42;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v6 = 1313821254;
LABEL_4:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
      break;
    case 5:
      v5 = 1262698818;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE500000000000000;
      v8 = 1212631378;
      goto LABEL_11;
    case 2:
      v7 = 0xE300000000000000;
      v2 = 5263188;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v2 = 0x4D4F54544F42;
      break;
    case 4:
      v7 = 0xE500000000000000;
      v8 = 1313821254;
LABEL_11:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
      break;
    case 5:
      v2 = 1262698818;
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
    v10 = sub_268C88FD4();
  }

  return v10 & 1;
}

uint64_t sub_268C7AC14(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v4 = 0x6C646E7542707061;
      v5 = 6572389;
      goto LABEL_13;
    case 2:
      v4 = 0x7469746E456F7375;
      v3 = 0xE900000000000079;
      break;
    case 3:
      v4 = 0x6C61566465707974;
      v3 = 0xEA00000000006575;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v4 = 0x6570795461746164;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v4 = 1635017060;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v4 = 0x70756F7267;
      break;
    case 7:
      v3 = 0xE800000000000000;
      v4 = 0x617461646174656DLL;
      break;
    case 8:
      v4 = 0x697461746F6E6E61;
      v5 = 7564911;
LABEL_13:
      v3 = v5 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 9:
      v3 = 0xE600000000000000;
      v4 = 0x644972657375;
      break;
    case 10:
      v3 = 0xE500000000000000;
      v4 = 0x65726F6373;
      break;
    case 11:
      v4 = 0xD000000000000012;
      v3 = 0x8000000268C8D840;
      break;
    default:
      break;
  }

  v6 = 0xE200000000000000;
  v7 = 25705;
  switch(a2)
  {
    case 1:
      v7 = 0x6C646E7542707061;
      v8 = 6572389;
      goto LABEL_26;
    case 2:
      v7 = 0x7469746E456F7375;
      v6 = 0xE900000000000079;
      break;
    case 3:
      v7 = 0x6C61566465707974;
      v6 = 0xEA00000000006575;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v7 = 0x6570795461746164;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v7 = 1635017060;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v7 = 0x70756F7267;
      break;
    case 7:
      v6 = 0xE800000000000000;
      v7 = 0x617461646174656DLL;
      break;
    case 8:
      v7 = 0x697461746F6E6E61;
      v8 = 7564911;
LABEL_26:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 9:
      v6 = 0xE600000000000000;
      v7 = 0x644972657375;
      break;
    case 10:
      v6 = 0xE500000000000000;
      v7 = 0x65726F6373;
      break;
    case 11:
      v7 = 0xD000000000000012;
      v6 = 0x8000000268C8D840;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_268C88FD4();
  }

  return v10 & 1;
}

uint64_t sub_268C7AED8(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000744164;
  v3 = 0x656E6F69746E656DLL;
  v4 = a1;
  v5 = 0x656E6F69746E656DLL;
  v6 = 0xEB00000000744164;
  switch(v4)
  {
    case 1:
      v5 = 0x6E65657263736E6FLL;
      v6 = 0xEA00000000007441;
      break;
    case 2:
      v5 = 0x756F726765726F66;
      v6 = 0xEE0074416465646ELL;
      break;
    case 3:
      v5 = 0xD000000000000016;
      v6 = 0x8000000268C8D870;
      break;
    case 4:
      v5 = 0x6979616C50776F6ELL;
      v6 = 0xEC0000007441676ELL;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v5 = 0x744179627261656ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6E65657263736E6FLL;
      v2 = 0xEA00000000007441;
      break;
    case 2:
      OUTLINED_FUNCTION_42_0();
      break;
    case 3:
      v3 = 0xD000000000000016;
      v2 = 0x8000000268C8D870;
      break;
    case 4:
      v3 = 0x6979616C50776F6ELL;
      v2 = 0xEC0000007441676ELL;
      break;
    case 5:
      v2 = 0xE800000000000000;
      v3 = 0x744179627261656ELL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_268C88FD4();
  }

  return v8 & 1;
}

uint64_t sub_268C7B0B0(char a1, char a2)
{
  if (a1)
  {
    v2 = 1769105779;
  }

  else
  {
    v2 = 1919251317;
  }

  if (a2)
  {
    v3 = 1769105779;
  }

  else
  {
    v3 = 1919251317;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_268C88FD4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_268C7B120(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64616F6C796170;
  }

  else
  {
    v3 = 1702060386;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x64616F6C796170;
  }

  else
  {
    v5 = 1702060386;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_268C88FD4();
  }

  return v8 & 1;
}

uint64_t sub_268C7B1B8(uint64_t a1)
{
  OUTLINED_FUNCTION_34_1(a1);
  v1 = sub_268C79C3C();
  OUTLINED_FUNCTION_41_0(v1, v2, v3);

  return sub_268C890A4();
}

uint64_t sub_268C7B234(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_34_1(a1);
  a2(v5, a1);
  return sub_268C890A4();
}

uint64_t sub_268C7B294(uint64_t a1, char a2)
{
  sub_268C88CA4();
}

uint64_t sub_268C7B350(uint64_t a1, char a2)
{
  sub_268C88CA4();
}

uint64_t sub_268C7B4C4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_42_0();
      break;
    default:
      break;
  }

  sub_268C88CA4();
}

uint64_t sub_268C7B5C4(uint64_t a1, char a2)
{
  sub_268C88CA4();
}

uint64_t sub_268C7B60C(uint64_t a1, char a2)
{
  sub_268C88CA4();
}

uint64_t sub_268C7B670(uint64_t a1, char a2)
{
  sub_268C89064();
  sub_268C88CA4();

  return sub_268C890A4();
}

uint64_t sub_268C7B6E8(uint64_t a1, unsigned __int8 a2)
{
  sub_268C89064();
  MEMORY[0x26D62A380](a2);
  return sub_268C890A4();
}

uint64_t sub_268C7B72C(uint64_t a1, char a2)
{
  sub_268C89064();
  MEMORY[0x26D62A380](a2 & 1);
  return sub_268C890A4();
}

uint64_t sub_268C7B770(uint64_t a1, char a2)
{
  sub_268C89064();
  sub_268C88CA4();

  return sub_268C890A4();
}

uint64_t sub_268C7B7EC(uint64_t a1, uint64_t a2)
{
  sub_268C89064();
  v2 = sub_268C79C3C();
  OUTLINED_FUNCTION_41_0(v2, v3, v4);

  return sub_268C890A4();
}

uint64_t sub_268C7B850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_268C89064();
  a3(v6, a2);
  return sub_268C890A4();
}

uint64_t static RRSurroundingTextsMetadataValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v3 = sub_268C7C41C(v2);

  v5 = sub_268C7C41C(v4);
  v6 = sub_268C7C4E8(v3, v5);

  return v6 & 1;
}

BOOL static RRViewLocationMetadataValue.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

uint64_t static RRDisplayRepresentation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_268C88FD4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_268C88FD4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t RRMetadata.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  OUTLINED_FUNCTION_34_1(a1);
  RRMetadata.hash(into:)(v5);
  return sub_268C890A4();
}

uint64_t sub_268C7BAB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_268C88E84();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268C7BB34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268C7BAB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268C7BB64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268C69DCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268C7BB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C7BAB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C7BBB8(uint64_t a1)
{
  v2 = sub_268C6938C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7BBF4(uint64_t a1)
{
  v2 = sub_268C6938C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RRBoundingBoxMetadataValue.init(xCoordinate:yCoordinate:width:height:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_268C7BC64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6964726F6F4378 && a2 == 0xEB00000000657461;
  if (v3 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6964726F6F4379 && a2 == 0xEB00000000657461;
    if (v6 || (sub_268C88FD4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
      if (v7 || (sub_268C88FD4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_268C88FD4();

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

uint64_t sub_268C7BDC0(char a1)
{
  result = 0x6E6964726F6F4378;
  switch(a1)
  {
    case 1:
      result = 0x6E6964726F6F4379;
      break;
    case 2:
      result = 0x6874646977;
      break;
    case 3:
      result = 0x746867696568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C7BE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C7BC64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C7BE64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C7BDB8();
  *a1 = result;
  return result;
}

uint64_t sub_268C7BE8C(uint64_t a1)
{
  v2 = sub_268C80C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7BEC8(uint64_t a1)
{
  v2 = sub_268C80C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RRBoundingBoxMetadataValue.encode(to:)(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4910, &qword_268C8AE20);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_40_0();
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  OUTLINED_FUNCTION_23_2(a1, a1[3]);
  sub_268C80C34();
  OUTLINED_FUNCTION_35_1();
  sub_268C890F4();
  v15 = v10;
  v14 = 0;
  sub_268C80C88();
  OUTLINED_FUNCTION_9_2(&v15, &v14);
  if (!v2)
  {
    v15 = v9;
    v14 = 1;
    OUTLINED_FUNCTION_9_2(&v15, &v14);
    v15 = v12;
    v14 = 2;
    OUTLINED_FUNCTION_9_2(&v15, &v14);
    v15 = v11;
    v14 = 3;
    OUTLINED_FUNCTION_9_2(&v15, &v14);
  }

  return (*(v7 + 8))(v3, v5);
}

uint64_t RRBoundingBoxMetadataValue.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26D62A3A0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x26D62A3A0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x26D62A3A0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x26D62A3A0](*&v7);
}

uint64_t RRBoundingBoxMetadataValue.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_34_1(a1);
  RRBoundingBoxMetadataValue.hash(into:)();
  return sub_268C890A4();
}

uint64_t RRBoundingBoxMetadataValue.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4928, &qword_268C8AE28);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_1();
  sub_268C80C34();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_30_1();
  sub_268C890D4();
  if (!v2)
  {
    sub_268C80CDC();
    OUTLINED_FUNCTION_4_0();
    sub_268C88F24();
    OUTLINED_FUNCTION_4_0();
    sub_268C88F24();
    OUTLINED_FUNCTION_4_0();
    sub_268C88F24();
    OUTLINED_FUNCTION_4_0();
    sub_268C88F24();
    v8 = OUTLINED_FUNCTION_22_2();
    v9(v8, v5);
    *a2 = v10;
    a2[1] = v10;
    a2[2] = v10;
    a2[3] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_268C7C3C4(uint64_t a1)
{
  sub_268C89064();
  RRBoundingBoxMetadataValue.hash(into:)();
  return sub_268C890A4();
}

uint64_t sub_268C7C41C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_268C834BC();
  result = MEMORY[0x26D62A070](v2, &type metadata for RRSurroundingText, v3);
  v5 = 0;
  v10 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 48)
  {
    if (v6 == v5)
    {

      return v10;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(a1 + i + 16);
    v11[0] = *(a1 + i);
    v11[1] = v8;
    v11[2] = *(a1 + i + 32);
    ++v5;
    sub_268C83510(v11, v9);
    sub_268C7FE14(v9, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_268C7C4E8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v34 = v8;
  v35 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v36 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(result + 48) + 48 * (v10 | (v3 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = *(v13 + 40);
      v38 = *v13;
      v39 = v14;
      v40 = v16;
      v41 = v17;
      v42 = v18;
      v43 = v19;
      sub_268C89064();

      RRSurroundingText.hash(into:)(v37);
      v20 = sub_268C890A4();
      v21 = -1 << *(a2 + 32);
      v22 = v20 & ~v21;
      if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        break;
      }

      v23 = ~v21;
      v24 = *(a2 + 48);
      while (1)
      {
        v25 = v24 + 48 * v22;
        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        v29 = *(v25 + 32);
        v28 = *(v25 + 40);
        v30 = *v25 == v15 && *(v25 + 8) == v14;
        if (v30 || (sub_268C88FD4() & 1) != 0)
        {
          v31 = v27 == v16 && v26 == v17;
          v32 = v31 && v29 == v18;
          if (v32 && v28 == v19)
          {
            break;
          }
        }

        v22 = (v22 + 1) & v23;
        if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v8 = v34;
      result = v35;
      v7 = v36;
      if (!v36)
      {
        goto LABEL_8;
      }
    }

LABEL_35:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268C7C704(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374786574 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268C88FD4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268C7C790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C7C704(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268C7C7BC(uint64_t a1)
{
  v2 = sub_268C80D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7C7F8(uint64_t a1)
{
  v2 = sub_268C80D30();

  return MEMORY[0x2821FE720](a1, v2);
}

void RRSurroundingTextsMetadataValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_19_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4938, &qword_268C8AE30);
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  OUTLINED_FUNCTION_23_2(v24, v24[3]);
  sub_268C80D30();

  OUTLINED_FUNCTION_30_1();
  sub_268C890F4();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4948, &qword_268C8AE38);
  sub_268C80DD8(&qword_2802D4950, sub_268C80D84, MEMORY[0x277D83948]);
  sub_268C88FB4();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_18();
}

uint64_t RRSurroundingTextsMetadataValue.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_34_1(a1);
  sub_268C80810(v4, v2);
  return sub_268C890A4();
}

void RRSurroundingTextsMetadataValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_47_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4960, &qword_268C8AE40);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8_1();
  sub_268C80D30();
  OUTLINED_FUNCTION_30_1();
  sub_268C890D4();
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4948, &qword_268C8AE38);
    sub_268C80DD8(&qword_2802D4968, sub_268C80E50, MEMORY[0x277D83978]);
    sub_268C88F24();
    v14 = OUTLINED_FUNCTION_45_0();
    v15(v14);
    *v12 = a10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_268C7CB98(uint64_t a1)
{
  v2 = *v1;
  sub_268C89064();
  sub_268C80810(v4, v2);
  return sub_268C890A4();
}

__n128 RRSurroundingText.boundingBox.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 RRSurroundingText.init(text:boundingBox:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  return result;
}

uint64_t static RRSurroundingText.== infix(_:_:)(float64x2_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = *(a2 + 16);
  v4 = *(a2 + 32);
  v6 = *&a1->f64[0] == *a2 && *&a1->f64[1] == *(a2 + 8);
  if (v6 || (v13 = a1[2], v11 = *(a2 + 32), v12 = a1[1], v10 = *(a2 + 16), v7 = sub_268C88FD4(), v5 = v10, v4 = v11, v2 = v12, v3 = v13, v8 = 0, (v7 & 1) != 0))
  {
    v8 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v2, v5), vceqq_f64(v3, v4))));
  }

  return v8 & 1;
}

uint64_t sub_268C7CCB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42)
  {

    return 1;
  }

  else
  {
    v7 = sub_268C88FD4();

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

uint64_t sub_268C7CD7C(char a1)
{
  if (a1)
  {
    return 0x676E69646E756F62;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_268C7CDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C7CCB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C7CDE4(uint64_t a1)
{
  v2 = sub_268C80EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7CE20(uint64_t a1)
{
  v2 = sub_268C80EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RRSurroundingText.encode(to:)()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4978, &qword_268C8AE48);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_23_2(v2, v2[3]);
  sub_268C80EA4();
  OUTLINED_FUNCTION_35_1();
  sub_268C890F4();
  OUTLINED_FUNCTION_15();
  sub_268C88F74();
  if (!v0)
  {
    OUTLINED_FUNCTION_21_2();
    sub_268C80BE0();
    OUTLINED_FUNCTION_15();
    sub_268C88FB4();
  }

  v5 = OUTLINED_FUNCTION_29_1();
  v6(v5, v3);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_18();
}

uint64_t RRSurroundingText.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_268C88CA4();
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x26D62A3A0](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x26D62A3A0](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x26D62A3A0](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  return MEMORY[0x26D62A3A0](*&v9);
}

uint64_t RRSurroundingText.hashValue.getter(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(v1 + 2);
  v8 = *(v1 + 1);
  v9 = v3;
  OUTLINED_FUNCTION_34_1(a1);
  RRSurroundingText.hash(into:)(v5);
  return sub_268C890A4();
}

void RRSurroundingText.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_47_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4988, &qword_268C8AE50);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_1();
  sub_268C80EA4();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_30_1();
  sub_268C890D4();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {
    LOBYTE(v32) = 0;
    v27 = sub_268C88EE4();
    v29 = v28;
    OUTLINED_FUNCTION_21_2();
    sub_268C80A3C();
    sub_268C88F24();
    v30 = OUTLINED_FUNCTION_18_2();
    v31(v30);
    *v25 = v27;
    *(v25 + 8) = v29;
    *(v25 + 16) = v32;
    *(v25 + 32) = v33;

    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_18();
}

uint64_t sub_268C7D260(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(v1 + 2);
  v8 = *(v1 + 1);
  v9 = v3;
  sub_268C89064();
  RRSurroundingText.hash(into:)(v5);
  return sub_268C890A4();
}

void RRViewLocationMetadataValue.init(xCoordinate:yCoordinate:zCoordinate:width:height:depth:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

uint64_t sub_268C7D2F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6964726F6F4378 && a2 == 0xEB00000000657461;
  if (v3 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6964726F6F4379 && a2 == 0xEB00000000657461;
    if (v6 || (sub_268C88FD4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6964726F6F437ALL && a2 == 0xEB00000000657461;
      if (v7 || (sub_268C88FD4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
        if (v8 || (sub_268C88FD4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
          if (v9 || (sub_268C88FD4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6874706564 && a2 == 0xE500000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_268C88FD4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_268C7D4C8(char a1)
{
  result = 0x6E6964726F6F4378;
  switch(a1)
  {
    case 1:
      result = 0x6E6964726F6F4379;
      break;
    case 2:
      result = 0x6E6964726F6F437ALL;
      break;
    case 3:
      result = 0x6874646977;
      break;
    case 4:
      result = 0x746867696568;
      break;
    case 5:
      result = 0x6874706564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C7D560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C7D2F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C7D588@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C7D4C0();
  *a1 = result;
  return result;
}

uint64_t sub_268C7D5B0(uint64_t a1)
{
  v2 = sub_268C80EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7D5EC(uint64_t a1)
{
  v2 = sub_268C80EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RRViewLocationMetadataValue.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4990, &qword_268C8AE58);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_23_2(a1, a1[3]);
  sub_268C80EF8();
  OUTLINED_FUNCTION_35_1();
  sub_268C890F4();
  sub_268C80C88();
  OUTLINED_FUNCTION_3_1();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t RRViewLocationMetadataValue.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26D62A3A0](*&v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x26D62A3A0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x26D62A3A0](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x26D62A3A0](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x26D62A3A0](*&v10);
  if (v6 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v6;
  }

  return MEMORY[0x26D62A3A0](*&v11);
}

uint64_t RRViewLocationMetadataValue.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_34_1(a1);
  RRViewLocationMetadataValue.hash(into:)();
  return sub_268C890A4();
}

uint64_t RRViewLocationMetadataValue.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D49A0, &qword_268C8AE60);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_1();
  sub_268C80EF8();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_30_1();
  sub_268C890D4();
  if (!v2)
  {
    sub_268C80CDC();
    OUTLINED_FUNCTION_1_3(MEMORY[0x277D85048]);
    OUTLINED_FUNCTION_1_3(MEMORY[0x277D85048]);
    OUTLINED_FUNCTION_1_3(MEMORY[0x277D85048]);
    OUTLINED_FUNCTION_1_3(MEMORY[0x277D85048]);
    OUTLINED_FUNCTION_1_3(MEMORY[0x277D85048]);
    OUTLINED_FUNCTION_1_3(MEMORY[0x277D85048]);
    v8 = OUTLINED_FUNCTION_22_2();
    v9(v8, v5);
    *a2 = v10;
    a2[1] = v10;
    a2[2] = v10;
    a2[3] = v10;
    a2[4] = v10;
    a2[5] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_268C7DB44(uint64_t a1)
{
  sub_268C89064();
  RRViewLocationMetadataValue.hash(into:)();
  return sub_268C890A4();
}

uint64_t sub_268C7DBAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268C88FD4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268C7DC20(uint64_t a1)
{
  OUTLINED_FUNCTION_34_1(a1);
  MEMORY[0x26D62A380](0);
  return sub_268C890A4();
}

uint64_t sub_268C7DC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C7DBAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268C7DCA0(uint64_t a1)
{
  v2 = sub_268C80F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7DCDC(uint64_t a1)
{
  v2 = sub_268C80F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RRViewState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_19_0();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D49A8, &qword_268C8AE68);
  OUTLINED_FUNCTION_0_0();
  v28 = v27;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_2(v25, v25[3]);
  sub_268C80F4C();
  sub_268C890F4();
  sub_268C80FA0();
  sub_268C88FB4();
  (*(v28 + 8))(v23, v26);
  OUTLINED_FUNCTION_18();
}

void RRViewState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_47_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D49C0, &qword_268C8AE70);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8_1();
  sub_268C80F4C();
  OUTLINED_FUNCTION_30_1();
  sub_268C890D4();
  if (!v14)
  {
    sub_268C80FF4();
    sub_268C88F24();
    v17 = OUTLINED_FUNCTION_45_0();
    v18(v17);
    *v15 = a13;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_268C7DF88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657463656C6573 && a2 == 0xE800000000000000;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6867696C68676968 && a2 == 0xEB00000000646574;
    if (v6 || (sub_268C88FD4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64657375636F66 && a2 == 0xE700000000000000;
      if (v7 || (sub_268C88FD4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
        if (v8 || (sub_268C88FD4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E6974696465 && a2 == 0xE700000000000000;
          if (v9 || (sub_268C88FD4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7972616D697270 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_268C88FD4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_268C7E17C(char a1)
{
  result = 0x64657463656C6573;
  switch(a1)
  {
    case 1:
      result = 0x6867696C68676968;
      break;
    case 2:
      result = 0x64657375636F66;
      break;
    case 3:
      result = 0x64656C6261736964;
      break;
    case 4:
      result = 0x676E6974696465;
      break;
    case 5:
      result = 0x7972616D697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C7E26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C7DF88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C7E294(uint64_t a1)
{
  v2 = sub_268C81048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7E2D0(uint64_t a1)
{
  v2 = sub_268C81048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7E30C(uint64_t a1)
{
  v2 = sub_268C81144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7E348(uint64_t a1)
{
  v2 = sub_268C81144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7E384(uint64_t a1)
{
  v2 = sub_268C810F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7E3C0(uint64_t a1)
{
  v2 = sub_268C810F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7E3FC(uint64_t a1)
{
  v2 = sub_268C81198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7E438(uint64_t a1)
{
  v2 = sub_268C81198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7E474(uint64_t a1)
{
  v2 = sub_268C811EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7E4B0(uint64_t a1)
{
  v2 = sub_268C811EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7E4EC(uint64_t a1)
{
  v2 = sub_268C8109C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7E528(uint64_t a1)
{
  v2 = sub_268C8109C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7E564(uint64_t a1)
{
  v2 = sub_268C81240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7E5A0(uint64_t a1)
{
  v2 = sub_268C81240();

  return MEMORY[0x2821FE720](a1, v2);
}

void RRState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_19_0();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D49D0, &qword_268C8AE78);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D49D8, &qword_268C8AE80);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D49E0, &qword_268C8AE88);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D49E8, &qword_268C8AE90);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D49F0, &qword_268C8AE98);
  OUTLINED_FUNCTION_0_0();
  v48 = v38;
  v49 = v37;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D49F8, &qword_268C8AEA0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_40_0();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A00, &qword_268C8AEA8);
  OUTLINED_FUNCTION_0_0();
  v42 = v41;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_26_2();
  v44 = *v26;
  OUTLINED_FUNCTION_23_2(v32, v32[3]);
  sub_268C81048();
  OUTLINED_FUNCTION_44_0();
  sub_268C890F4();
  switch(v44)
  {
    case 1:
      a12 = 1;
      sub_268C811EC();
      v44 = v50;
      sub_268C88F44();
      (*(v48 + 8))(v28, v49);
      goto LABEL_9;
    case 2:
      a13 = 2;
      sub_268C81198();
      OUTLINED_FUNCTION_15_1(&type metadata for RRState.FocusedCodingKeys, &a13);
      goto LABEL_8;
    case 3:
      a14 = 3;
      sub_268C81144();
      OUTLINED_FUNCTION_15_1(&type metadata for RRState.DisabledCodingKeys, &a14);
      goto LABEL_8;
    case 4:
      a15 = 4;
      sub_268C810F0();
      OUTLINED_FUNCTION_15_1(&type metadata for RRState.EditingCodingKeys, &a15);
      goto LABEL_8;
    case 5:
      a16 = 5;
      sub_268C8109C();
      OUTLINED_FUNCTION_15_1(&type metadata for RRState.PrimaryCodingKeys, &a16);
      goto LABEL_8;
    default:
      a11 = 0;
      sub_268C81240();
      OUTLINED_FUNCTION_15_1(&type metadata for RRState.SelectedCodingKeys, &a11);
LABEL_8:
      v45 = OUTLINED_FUNCTION_29_1();
      v47(v45, v46);
LABEL_9:
      (*(v42 + 8))(v27, v44);
      OUTLINED_FUNCTION_18();
      return;
  }
}

void RRState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_19_0();
  a25 = v29;
  a26 = v30;
  v111 = v26;
  v32 = v31;
  v107 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A40, &qword_268C8AEB0);
  OUTLINED_FUNCTION_0_0();
  v103 = v34;
  v104 = v35;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  v105 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A48, &qword_268C8AEB8);
  OUTLINED_FUNCTION_0_0();
  v101 = v38;
  v102 = v39;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  v110 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A50, &qword_268C8AEC0);
  OUTLINED_FUNCTION_0_0();
  v99 = v43;
  v100 = v42;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_19();
  v106 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A58, &qword_268C8AEC8);
  OUTLINED_FUNCTION_0_0();
  v97 = v47;
  v98 = v46;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_19();
  v109 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A60, &qword_268C8AED0);
  OUTLINED_FUNCTION_0_0();
  v95 = v51;
  v96 = v50;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v52);
  v54 = &v89 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A68, &qword_268C8AED8);
  OUTLINED_FUNCTION_0_0();
  v94 = v56;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_13();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A70, &unk_268C8AEE0);
  OUTLINED_FUNCTION_0_0();
  v108 = v59;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_23_2(v32, v32[3]);
  sub_268C81048();
  OUTLINED_FUNCTION_44_0();
  v61 = v111;
  sub_268C890D4();
  v111 = v61;
  if (v61)
  {
LABEL_12:
    v85 = v32;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    OUTLINED_FUNCTION_18();
    return;
  }

  v90 = v28;
  v89 = v55;
  v91 = v54;
  v92 = v32;
  v62 = v109;
  v63 = v110;
  v64 = v108;
  v93 = v27;
  v65 = sub_268C88F34();
  sub_268C6ACF0(v65, 0);
  v69 = v58;
  if (v67 == v68 >> 1)
  {
    v70 = v64;
LABEL_10:
    v79 = sub_268C88E34();
    v80 = swift_allocError();
    v82 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4720, &qword_268C89A80);
    *v82 = &type metadata for RRState;
    v83 = v93;
    v84 = sub_268C88EA4();
    OUTLINED_FUNCTION_49_0(v84);
    (*(*(v79 - 8) + 104))(v82, *MEMORY[0x277D84160], v79);
    v111 = v80;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v83, v69);
LABEL_11:
    v32 = v92;
    goto LABEL_12;
  }

  if (v67 < (v68 >> 1))
  {
    v71 = *(v66 + v67);
    sub_268C6ACE8(v67 + 1);
    v73 = v72;
    v75 = v74;
    swift_unknownObjectRelease();
    if (v73 == v75 >> 1)
    {
      v76 = v107;
      v77 = v93;
      switch(v71)
      {
        case 1:
          a12 = 1;
          sub_268C811EC();
          v62 = v91;
          OUTLINED_FUNCTION_19_2(&type metadata for RRState.HighlightedCodingKeys, &a12);
          v111 = 0;
          swift_unknownObjectRelease();
          v88 = v95;
          v87 = v96;
          goto LABEL_25;
        case 2:
          a13 = 2;
          sub_268C81198();
          OUTLINED_FUNCTION_19_2(&type metadata for RRState.FocusedCodingKeys, &a13);
          v111 = 0;
          swift_unknownObjectRelease();
          v88 = v97;
          v87 = v98;
          goto LABEL_25;
        case 3:
          a14 = 3;
          sub_268C81144();
          v62 = v106;
          OUTLINED_FUNCTION_19_2(&type metadata for RRState.DisabledCodingKeys, &a14);
          v111 = 0;
          swift_unknownObjectRelease();
          v88 = v99;
          v87 = v100;
          goto LABEL_25;
        case 4:
          a15 = 4;
          sub_268C810F0();
          v86 = v111;
          sub_268C88E94();
          v111 = v86;
          if (v86)
          {
            (*(v64 + 8))(v77, v58);
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*(v102 + 8))(v63, v101);
LABEL_26:
          (*(v64 + 8))(v77, v58);
          *v76 = v71;
          v85 = v92;
          break;
        case 5:
          a16 = 5;
          sub_268C8109C();
          v62 = v105;
          OUTLINED_FUNCTION_19_2(&type metadata for RRState.PrimaryCodingKeys, &a16);
          v111 = 0;
          swift_unknownObjectRelease();
          v87 = v103;
          v88 = v104;
LABEL_25:
          (*(v88 + 8))(v62, v87);
          goto LABEL_26;
        default:
          a11 = 0;
          sub_268C81240();
          v78 = v90;
          OUTLINED_FUNCTION_19_2(&type metadata for RRState.SelectedCodingKeys, &a11);
          v111 = 0;
          swift_unknownObjectRelease();
          (*(v94 + 8))(v78, v89);
          goto LABEL_26;
      }

      goto LABEL_13;
    }

    v70 = v64;
    v69 = v58;
    goto LABEL_10;
  }

  __break(1u);
}

SiriReferenceResolutionDataModel::RRDisplayRepresentation __swiftcall RRDisplayRepresentation.init(title:subtitle:)(Swift::String title, Swift::String_optional subtitle)
{
  v2->value = title;
  v2[1] = subtitle;
  result.subtitle = subtitle;
  result.title = title;
  return result;
}

uint64_t sub_268C7F230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_268C88FD4();

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

uint64_t sub_268C7F2F4(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_34_1(a1);
  MEMORY[0x26D62A380](v1 & 1);
  return sub_268C890A4();
}

uint64_t sub_268C7F334(char a1)
{
  if (a1)
  {
    return 0x656C746974627573;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_268C7F370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C7F230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C7F398(uint64_t a1)
{
  v2 = sub_268C81294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7F3D4(uint64_t a1)
{
  v2 = sub_268C81294();

  return MEMORY[0x2821FE720](a1, v2);
}

void RRDisplayRepresentation.encode(to:)()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A78, &qword_268C8AEF0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_23_2(v2, v2[3]);
  sub_268C81294();
  OUTLINED_FUNCTION_35_1();
  sub_268C890F4();
  OUTLINED_FUNCTION_15();
  sub_268C88F74();
  if (!v0)
  {
    OUTLINED_FUNCTION_15();
    sub_268C88F54();
  }

  v5 = OUTLINED_FUNCTION_29_1();
  v6(v5, v3);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_18();
}

uint64_t RRDisplayRepresentation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_268C88CA4();
  if (!v2)
  {
    return sub_268C89084();
  }

  sub_268C89084();

  return sub_268C88CA4();
}

uint64_t RRDisplayRepresentation.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_34_1(a1);
  sub_268C88CA4();
  sub_268C89084();
  if (v2)
  {
    sub_268C88CA4();
  }

  return sub_268C890A4();
}

void RRDisplayRepresentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_19_0();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A88, &qword_268C8AEF8);
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v31);
  v33 = &v41 - v32;
  OUTLINED_FUNCTION_8_1();
  sub_268C81294();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_30_1();
  sub_268C890D4();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    v34 = sub_268C88EE4();
    v36 = v35;
    v37 = sub_268C88EB4();
    v39 = v38;
    v40 = *(v30 + 8);
    v42 = v37;
    v40(v33, v28);
    *v27 = v34;
    v27[1] = v36;
    v27[2] = v42;
    v27[3] = v39;

    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_268C7F80C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_34_1(a1);
  MEMORY[0x26D62A380](v1);
  return sub_268C890A4();
}

uint64_t sub_268C7F888(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_268C89064();
  sub_268C88CA4();
  sub_268C89084();
  if (v2)
  {
    sub_268C88CA4();
  }

  return sub_268C890A4();
}

uint64_t sub_268C7F910(uint64_t a1)
{
  v2 = sub_268C813E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7F94C(uint64_t a1)
{
  v2 = sub_268C813E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7F988@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C7F804();
  *a1 = result;
  return result;
}

uint64_t sub_268C7F9B0(uint64_t a1)
{
  v2 = sub_268C6A94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7F9EC(uint64_t a1)
{
  v2 = sub_268C6A94C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7FA28(uint64_t a1)
{
  v2 = sub_268C6ACF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7FA64(uint64_t a1)
{
  v2 = sub_268C6ACF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7FAA0(uint64_t a1)
{
  v2 = sub_268C814E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7FADC(uint64_t a1)
{
  v2 = sub_268C814E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7FB18(uint64_t a1)
{
  v2 = sub_268C81390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7FB54(uint64_t a1)
{
  v2 = sub_268C81390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7FB90(uint64_t a1)
{
  v2 = sub_268C812E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7FBCC(uint64_t a1)
{
  v2 = sub_268C812E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7FC08(uint64_t a1)
{
  v2 = sub_268C81438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7FC44(uint64_t a1)
{
  v2 = sub_268C81438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7FC80(uint64_t a1)
{
  v2 = sub_268C8148C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7FCBC(uint64_t a1)
{
  v2 = sub_268C8148C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C7FCF8(uint64_t a1)
{
  v2 = sub_268C8133C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C7FD34(uint64_t a1)
{
  v2 = sub_268C8133C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s32SiriReferenceResolutionDataModel11RRViewStateV9hashValueSivg_0(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_34_1(a1);
  MEMORY[0x26D62A380](v2);
  return sub_268C890A4();
}

uint64_t sub_268C7FDB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_268C8AE00;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_268C7FE14(uint64_t a1, double *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(a2 + 1);
  v35 = *a2;
  v36 = v6;
  v37 = *(a2 + 2);
  sub_268C89064();
  RRSurroundingText.hash(into:)(v34);
  v7 = sub_268C890A4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = a2[2];
    v12 = a2[3];
    v13 = a2[4];
    v14 = a2[5];
    v15 = *a2;
    v16 = *(a2 + 1);
    v17 = *(v5 + 48);
    while (1)
    {
      v18 = v17 + 48 * v9;
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v22 = *(v18 + 32);
      v21 = *(v18 + 40);
      v23 = *v18 == v15 && *(v18 + 8) == v16;
      if (v23 || (sub_268C88FD4() & 1) != 0)
      {
        v24 = v20 == v11 && v19 == v12;
        v25 = v24 && v22 == v13;
        if (v25 && v21 == v14)
        {
          break;
        }
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_268C83548(a2);
    v30 = *(v5 + 48) + 48 * v9;
    v31 = *(v30 + 8);
    *a1 = *v30;
    *(a1 + 8) = v31;
    v32 = *(v30 + 32);
    *(a1 + 16) = *(v30 + 16);
    *(a1 + 32) = v32;

    return 0;
  }

  else
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35 = *v3;
    sub_268C83510(a2, v34);
    sub_268C8026C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    v28 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v28;
    *(a1 + 32) = *(a2 + 2);
    return 1;
  }
}

uint64_t sub_268C7FFE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CA0, &qword_268C8CDE8);
  result = sub_268C88DE4();
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

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      sub_268C7FDB0(0, (v32 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v32;
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
    v16 = (*(v3 + 48) + 48 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = v16[4];
    v22 = v16[5];
    v34 = *v16;
    v35 = v18;
    v36 = v19;
    v37 = v20;
    v38 = v21;
    v39 = v22;
    sub_268C89064();
    RRSurroundingText.hash(into:)(v33);
    result = sub_268C890A4();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v5 + 48) + 48 * v26);
    *v31 = v17;
    v31[1] = v18;
    v31[2] = v19;
    v31[3] = v20;
    v31[4] = v21;
    v31[5] = v22;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v12 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_268C8026C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_268C7FFE0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_268C80448();
      goto LABEL_26;
    }

    sub_268C805AC(v7 + 1);
  }

  v9 = *v3;
  sub_268C89064();
  RRSurroundingText.hash(into:)(v35);
  result = sub_268C890A4();
  v10 = v9 + 56;
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = *(v6 + 16);
    v14 = *(v6 + 24);
    v15 = *(v6 + 32);
    v16 = *(v6 + 40);
    v17 = *v6;
    v18 = *(v6 + 8);
    v19 = *(v9 + 48);
    do
    {
      v20 = v19 + 48 * a2;
      result = *v20;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v24 = *(v20 + 32);
      v23 = *(v20 + 40);
      v25 = *v20 == v17 && *(v20 + 8) == v18;
      if (v25 || (result = sub_268C88FD4(), (result & 1) != 0))
      {
        v26 = v22 == v13 && v21 == v14;
        v27 = v26 && v24 == v15;
        if (v27 && v23 == v16)
        {
          goto LABEL_29;
        }
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_26:
  v29 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = (*(v29 + 48) + 48 * a2);
  v31 = *(v6 + 16);
  *v30 = *v6;
  v30[1] = v31;
  v30[2] = *(v6 + 32);
  v32 = *(v29 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v29 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_29:
  result = sub_268C89004();
  __break(1u);
  return result;
}

void *sub_268C80448()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CA0, &qword_268C8CDE8);
  v2 = *v0;
  v3 = sub_268C88DD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 32);
        v22 = *(v4 + 48) + 16 * v17;
        *v22 = *v18;
        *(v22 + 8) = v19;
        *(v22 + 16) = v20;
        *(v22 + 32) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_268C805AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CA0, &qword_268C8CDE8);
  result = sub_268C88DE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 48 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        v20 = v15[4];
        v21 = v15[5];
        v32 = *v15;
        v33 = v16;
        v34 = v18;
        v35 = v19;
        v36 = v20;
        v37 = v21;
        sub_268C89064();

        RRSurroundingText.hash(into:)(v31);
        result = sub_268C890A4();
        v22 = -1 << *(v5 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v5 + 48) + 48 * v25);
        *v30 = v17;
        v30[1] = v16;
        v30[2] = v18;
        v30[3] = v19;
        v30[4] = v20;
        v30[5] = v21;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v11 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_268C80810(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D62A380](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_268C88CA4();
      if (v6 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v6;
      }

      MEMORY[0x26D62A3A0](*&v10);
      if (v7 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v7;
      }

      MEMORY[0x26D62A3A0](*&v11);
      if (v8 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v8;
      }

      MEMORY[0x26D62A3A0](*&v12);
      if (v9 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v9;
      }

      MEMORY[0x26D62A3A0](*&v13);

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_268C808EC()
{
  result = qword_2802D48B8;
  if (!qword_2802D48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D48B8);
  }

  return result;
}

unint64_t sub_268C80940()
{
  result = qword_2802D48C0;
  if (!qword_2802D48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D48C0);
  }

  return result;
}

unint64_t sub_268C80994()
{
  result = qword_2802D48C8;
  if (!qword_2802D48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D48C8);
  }

  return result;
}

unint64_t sub_268C809E8()
{
  result = qword_2802D48D0;
  if (!qword_2802D48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D48D0);
  }

  return result;
}

unint64_t sub_268C80A3C()
{
  result = qword_2802D48D8;
  if (!qword_2802D48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D48D8);
  }

  return result;
}

unint64_t sub_268C80A90()
{
  result = qword_2802D48E8;
  if (!qword_2802D48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D48E8);
  }

  return result;
}

unint64_t sub_268C80AE4()
{
  result = qword_2802D48F0;
  if (!qword_2802D48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D48F0);
  }

  return result;
}

unint64_t sub_268C80B38()
{
  result = qword_2802D48F8;
  if (!qword_2802D48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D48F8);
  }

  return result;
}

unint64_t sub_268C80B8C()
{
  result = qword_2802D4900;
  if (!qword_2802D4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4900);
  }

  return result;
}

unint64_t sub_268C80BE0()
{
  result = qword_2802D4908;
  if (!qword_2802D4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4908);
  }

  return result;
}

unint64_t sub_268C80C34()
{
  result = qword_2802D4918;
  if (!qword_2802D4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4918);
  }

  return result;
}

unint64_t sub_268C80C88()
{
  result = qword_2802D4920;
  if (!qword_2802D4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4920);
  }

  return result;
}

unint64_t sub_268C80CDC()
{
  result = qword_2802D4930;
  if (!qword_2802D4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4930);
  }

  return result;
}

unint64_t sub_268C80D30()
{
  result = qword_2802D4940;
  if (!qword_2802D4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4940);
  }

  return result;
}

unint64_t sub_268C80D84()
{
  result = qword_2802D4958;
  if (!qword_2802D4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4958);
  }

  return result;
}

uint64_t sub_268C80DD8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D4948, &qword_268C8AE38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_268C80E50()
{
  result = qword_2802D4970;
  if (!qword_2802D4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4970);
  }

  return result;
}

unint64_t sub_268C80EA4()
{
  result = qword_2802D4980;
  if (!qword_2802D4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4980);
  }

  return result;
}

unint64_t sub_268C80EF8()
{
  result = qword_2802D4998;
  if (!qword_2802D4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4998);
  }

  return result;
}

unint64_t sub_268C80F4C()
{
  result = qword_2802D49B0;
  if (!qword_2802D49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D49B0);
  }

  return result;
}

unint64_t sub_268C80FA0()
{
  result = qword_2802D49B8;
  if (!qword_2802D49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D49B8);
  }

  return result;
}

unint64_t sub_268C80FF4()
{
  result = qword_2802D49C8;
  if (!qword_2802D49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D49C8);
  }

  return result;
}

unint64_t sub_268C81048()
{
  result = qword_2802D4A08;
  if (!qword_2802D4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4A08);
  }

  return result;
}

unint64_t sub_268C8109C()
{
  result = qword_2802D4A10;
  if (!qword_2802D4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4A10);
  }

  return result;
}

unint64_t sub_268C810F0()
{
  result = qword_2802D4A18;
  if (!qword_2802D4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4A18);
  }

  return result;
}

unint64_t sub_268C81144()
{
  result = qword_2802D4A20;
  if (!qword_2802D4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4A20);
  }

  return result;
}

unint64_t sub_268C81198()
{
  result = qword_2802D4A28;
  if (!qword_2802D4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4A28);
  }

  return result;
}

unint64_t sub_268C811EC()
{
  result = qword_2802D4A30;
  if (!qword_2802D4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4A30);
  }

  return result;
}

unint64_t sub_268C81240()
{
  result = qword_2802D4A38;
  if (!qword_2802D4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4A38);
  }

  return result;
}

unint64_t sub_268C81294()
{
  result = qword_2802D4A80;
  if (!qword_2802D4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4A80);
  }

  return result;
}

unint64_t sub_268C812E8()
{
  result = qword_2802D4AD8;
  if (!qword_2802D4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4AD8);
  }

  return result;
}

unint64_t sub_268C8133C()
{
  result = qword_2802D4AE0;
  if (!qword_2802D4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4AE0);
  }

  return result;
}

unint64_t sub_268C81390()
{
  result = qword_280D69778;
  if (!qword_280D69778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69778);
  }

  return result;
}

unint64_t sub_268C813E4()
{
  result = qword_2802D4AE8;
  if (!qword_2802D4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4AE8);
  }

  return result;
}

unint64_t sub_268C81438()
{
  result = qword_280D691E0;
  if (!qword_280D691E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D691E0);
  }

  return result;
}

unint64_t sub_268C8148C()
{
  result = qword_280D691F0;
  if (!qword_280D691F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D691F0);
  }

  return result;
}

unint64_t sub_268C814E0()
{
  result = qword_280D691E8;
  if (!qword_280D691E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D691E8);
  }

  return result;
}

unint64_t sub_268C81538()
{
  result = qword_280D693B8;
  if (!qword_280D693B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693B8);
  }

  return result;
}

unint64_t sub_268C81590()
{
  result = qword_2802D4B38;
  if (!qword_2802D4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B38);
  }

  return result;
}

unint64_t sub_268C815E8()
{
  result = qword_2802D4B40;
  if (!qword_2802D4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B40);
  }

  return result;
}

unint64_t sub_268C81640()
{
  result = qword_2802D4B48;
  if (!qword_2802D4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B48);
  }

  return result;
}

unint64_t sub_268C81698()
{
  result = qword_2802D4B50;
  if (!qword_2802D4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B50);
  }

  return result;
}

unint64_t sub_268C816F0()
{
  result = qword_2802D4B58;
  if (!qword_2802D4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B58);
  }

  return result;
}

unint64_t sub_268C81748()
{
  result = qword_2802D4B60;
  if (!qword_2802D4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B60);
  }

  return result;
}

unint64_t sub_268C817A0()
{
  result = qword_2802D4B68;
  if (!qword_2802D4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B68);
  }

  return result;
}

unint64_t sub_268C817F8()
{
  result = qword_2802D4B70;
  if (!qword_2802D4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B70);
  }

  return result;
}

uint64_t sub_268C8184C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 49))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 5)
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

uint64_t sub_268C8188C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_268C818EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268C8190C(uint64_t result, int a2, int a3)
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

uint64_t sub_268C81950(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_268C81990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_268C819EC(uint64_t a1, int a2)
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

uint64_t sub_268C81A2C(uint64_t result, int a2, int a3)
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

uint64_t sub_268C81A84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268C81AA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_268C81B00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_268C81B40(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *sub_268C81B8C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_38_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_36_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_37_1(result, v6);
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
          result = OUTLINED_FUNCTION_33_1(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268C81D88(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_40(a1);
}

_BYTE *sub_268C81DD4(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for RRBoundingBoxMetadataValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for RRBoundingBoxMetadataValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_268C81FE4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_38_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_36_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_37_1(result, v6);
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
          result = OUTLINED_FUNCTION_33_1(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_268C820B0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_38_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_36_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_37_1(result, v6);
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
          result = OUTLINED_FUNCTION_33_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268C82180()
{
  result = qword_2802D4B78;
  if (!qword_2802D4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B78);
  }

  return result;
}

unint64_t sub_268C821D8()
{
  result = qword_2802D4B80;
  if (!qword_2802D4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B80);
  }

  return result;
}

unint64_t sub_268C82230()
{
  result = qword_2802D4B88;
  if (!qword_2802D4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B88);
  }

  return result;
}

unint64_t sub_268C82288()
{
  result = qword_2802D4B90;
  if (!qword_2802D4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B90);
  }

  return result;
}

unint64_t sub_268C822E0()
{
  result = qword_2802D4B98;
  if (!qword_2802D4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4B98);
  }

  return result;
}

unint64_t sub_268C82338()
{
  result = qword_2802D4BA0;
  if (!qword_2802D4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BA0);
  }

  return result;
}

unint64_t sub_268C82390()
{
  result = qword_2802D4BA8;
  if (!qword_2802D4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BA8);
  }

  return result;
}

unint64_t sub_268C823E8()
{
  result = qword_2802D4BB0;
  if (!qword_2802D4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BB0);
  }

  return result;
}

unint64_t sub_268C82440()
{
  result = qword_2802D4BB8;
  if (!qword_2802D4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BB8);
  }

  return result;
}

unint64_t sub_268C82498()
{
  result = qword_2802D4BC0;
  if (!qword_2802D4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BC0);
  }

  return result;
}

unint64_t sub_268C824F0()
{
  result = qword_280D69780;
  if (!qword_280D69780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69780);
  }

  return result;
}

unint64_t sub_268C82548()
{
  result = qword_280D69788;
  if (!qword_280D69788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69788);
  }

  return result;
}

unint64_t sub_268C825A0()
{
  result = qword_280D697A0;
  if (!qword_280D697A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697A0);
  }

  return result;
}

unint64_t sub_268C825F8()
{
  result = qword_280D697A8;
  if (!qword_280D697A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697A8);
  }

  return result;
}

unint64_t sub_268C82650()
{
  result = qword_280D697C0;
  if (!qword_280D697C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697C0);
  }

  return result;
}

unint64_t sub_268C826A8()
{
  result = qword_280D697C8;
  if (!qword_280D697C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697C8);
  }

  return result;
}

unint64_t sub_268C82700()
{
  result = qword_280D69790;
  if (!qword_280D69790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69790);
  }

  return result;
}

unint64_t sub_268C82758()
{
  result = qword_280D69798;
  if (!qword_280D69798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69798);
  }

  return result;
}

unint64_t sub_268C827B0()
{
  result = qword_280D697B0;
  if (!qword_280D697B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697B0);
  }

  return result;
}

unint64_t sub_268C82808()
{
  result = qword_280D697B8;
  if (!qword_280D697B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697B8);
  }

  return result;
}

unint64_t sub_268C82860()
{
  result = qword_280D69768;
  if (!qword_280D69768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69768);
  }

  return result;
}

unint64_t sub_268C828B8()
{
  result = qword_280D69770;
  if (!qword_280D69770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69770);
  }

  return result;
}

unint64_t sub_268C82910()
{
  result = qword_280D697D0;
  if (!qword_280D697D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697D0);
  }

  return result;
}

unint64_t sub_268C82968()
{
  result = qword_280D697D8;
  if (!qword_280D697D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697D8);
  }

  return result;
}

unint64_t sub_268C829C0()
{
  result = qword_280D697E0;
  if (!qword_280D697E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697E0);
  }

  return result;
}

unint64_t sub_268C82A18()
{
  result = qword_280D697E8;
  if (!qword_280D697E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697E8);
  }

  return result;
}

unint64_t sub_268C82A70()
{
  result = qword_280D697F0;
  if (!qword_280D697F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697F0);
  }

  return result;
}

unint64_t sub_268C82AC8()
{
  result = qword_280D697F8;
  if (!qword_280D697F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D697F8);
  }

  return result;
}

unint64_t sub_268C82B20()
{
  result = qword_2802D4BC8;
  if (!qword_2802D4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BC8);
  }

  return result;
}

unint64_t sub_268C82B78()
{
  result = qword_2802D4BD0;
  if (!qword_2802D4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BD0);
  }

  return result;
}

unint64_t sub_268C82BD0()
{
  result = qword_2802D4BD8;
  if (!qword_2802D4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BD8);
  }

  return result;
}

unint64_t sub_268C82C28()
{
  result = qword_2802D4BE0;
  if (!qword_2802D4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BE0);
  }

  return result;
}

unint64_t sub_268C82C80()
{
  result = qword_2802D4BE8;
  if (!qword_2802D4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BE8);
  }

  return result;
}

unint64_t sub_268C82CD8()
{
  result = qword_2802D4BF0;
  if (!qword_2802D4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BF0);
  }

  return result;
}

unint64_t sub_268C82D30()
{
  result = qword_2802D4BF8;
  if (!qword_2802D4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4BF8);
  }

  return result;
}

unint64_t sub_268C82D88()
{
  result = qword_2802D4C00;
  if (!qword_2802D4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C00);
  }

  return result;
}

unint64_t sub_268C82DE0()
{
  result = qword_2802D4C08;
  if (!qword_2802D4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C08);
  }

  return result;
}

unint64_t sub_268C82E38()
{
  result = qword_2802D4C10;
  if (!qword_2802D4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C10);
  }

  return result;
}

unint64_t sub_268C82E90()
{
  result = qword_2802D4C18;
  if (!qword_2802D4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C18);
  }

  return result;
}

unint64_t sub_268C82EE8()
{
  result = qword_2802D4C20;
  if (!qword_2802D4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C20);
  }

  return result;
}

unint64_t sub_268C82F40()
{
  result = qword_2802D4C28;
  if (!qword_2802D4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C28);
  }

  return result;
}

unint64_t sub_268C82F98()
{
  result = qword_2802D4C30;
  if (!qword_2802D4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C30);
  }

  return result;
}

unint64_t sub_268C82FF0()
{
  result = qword_2802D4C38;
  if (!qword_2802D4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C38);
  }

  return result;
}

unint64_t sub_268C83048()
{
  result = qword_2802D4C40;
  if (!qword_2802D4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C40);
  }

  return result;
}

unint64_t sub_268C830A0()
{
  result = qword_2802D4C48;
  if (!qword_2802D4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C48);
  }

  return result;
}

unint64_t sub_268C830F8()
{
  result = qword_2802D4C50;
  if (!qword_2802D4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C50);
  }

  return result;
}

unint64_t sub_268C83150()
{
  result = qword_2802D4C58;
  if (!qword_2802D4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C58);
  }

  return result;
}

unint64_t sub_268C831A8()
{
  result = qword_2802D4C60;
  if (!qword_2802D4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C60);
  }

  return result;
}

unint64_t sub_268C83200()
{
  result = qword_2802D4C68;
  if (!qword_2802D4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C68);
  }

  return result;
}

unint64_t sub_268C83258()
{
  result = qword_2802D4C70;
  if (!qword_2802D4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C70);
  }

  return result;
}

unint64_t sub_268C832B0()
{
  result = qword_2802D4C78;
  if (!qword_2802D4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C78);
  }

  return result;
}

unint64_t sub_268C83308()
{
  result = qword_2802D4C80;
  if (!qword_2802D4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C80);
  }

  return result;
}

unint64_t sub_268C83360()
{
  result = qword_2802D4C88;
  if (!qword_2802D4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C88);
  }

  return result;
}

unint64_t sub_268C833B8()
{
  result = qword_2802D4C90;
  if (!qword_2802D4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C90);
  }

  return result;
}

unint64_t sub_268C83410()
{
  result = qword_280D69960;
  if (!qword_280D69960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69960);
  }

  return result;
}

unint64_t sub_268C83468()
{
  result = qword_280D69968;
  if (!qword_280D69968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69968);
  }

  return result;
}

unint64_t sub_268C834BC()
{
  result = qword_2802D4C98;
  if (!qword_2802D4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4C98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return sub_268C88FB4();
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1, uint64_t a2)
{

  return sub_268C88E94();
}

void OUTLINED_FUNCTION_27_1()
{
  *(v1 - 144) = *(v1 - 160);
  *(v1 - 136) = v0;
  v2 = *(v1 - 168);
  *(v1 - 128) = *(v1 - 176);
  *(v1 - 120) = v2;
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_268C88CA4();
}

void __swiftcall RRHandoffURL.init(key:appBundleId:)(SiriReferenceResolutionDataModel::RRHandoffURL_optional *__return_ptr retstr, Swift::String key, Swift::String appBundleId)
{
  object = appBundleId._object;
  countAndFlagsBits = appBundleId._countAndFlagsBits;
  v5 = key._object;
  v6 = key._countAndFlagsBits;
  if (!String.isValidContinuityKey()())
  {

    goto LABEL_7;
  }

  v8 = sub_268C8394C(v6, v5);

  if (!v8)
  {
LABEL_7:

    retstr->value.recipients.value._rawValue = 0;
    retstr->value.groupid = 0u;
    retstr->value.groupDisplayName = 0u;
    retstr->value.appBundleId = 0u;
    retstr->value.service = 0u;
    return;
  }

  v9 = sub_268C75048(0x646970756F7267, 0xE700000000000000, v8);
  if (v9)
  {
    if (v9[2])
    {
      v17 = v9[5];
      v18 = v9[4];

      goto LABEL_10;
    }
  }

  v17 = 0;
  v18 = 0;
LABEL_10:
  v10 = sub_268C75048(0x6E79616C70736964, 0xEB00000000656D61, v8);
  if (v10)
  {
    if (v10[2])
    {
      v12 = v10[4];
      v11 = v10[5];

      goto LABEL_15;
    }
  }

  v12 = 0;
  v11 = 0;
LABEL_15:
  v13 = sub_268C75048(0x65636976726573, 0xE700000000000000, v8);
  if (!v13)
  {
LABEL_19:
    v14 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  if (!v13[2])
  {

    goto LABEL_19;
  }

  v14 = v13[4];
  v15 = v13[5];

LABEL_20:
  v16 = sub_268C75048(0x6E65697069636572, 0xE900000000000074, v8);
  if (!v16)
  {
    v16 = sub_268C75048(0x6E65697069636572, 0xEA00000000007374, v8);
  }

  retstr->value.appBundleId._countAndFlagsBits = countAndFlagsBits;
  retstr->value.appBundleId._object = object;
  retstr->value.service.value._countAndFlagsBits = v14;
  retstr->value.service.value._object = v15;
  retstr->value.groupid.value._countAndFlagsBits = v18;
  retstr->value.groupid.value._object = v17;
  retstr->value.groupDisplayName.value._countAndFlagsBits = v12;
  retstr->value.groupDisplayName.value._object = v11;
  retstr->value.recipients.value._rawValue = v16;
}

Swift::Bool __swiftcall String.isValidContinuityKey()()
{
  v0 = OUTLINED_FUNCTION_12_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CB0, &qword_268C8CE10);
  v2 = OUTLINED_FUNCTION_13_3(v1);
  OUTLINED_FUNCTION_6_3(v2, xmmword_268C8CDF0)[3].n128_u64[1] = MEMORY[0x277D837D0];
  v3 = sub_268C83C68();
  OUTLINED_FUNCTION_8_2(v3);
  OUTLINED_FUNCTION_4_1(v4 + 22);
  v5 = OUTLINED_FUNCTION_11_1();
  v6 = [v0 evaluateWithObject_];

  return v6;
}

uint64_t sub_268C8394C(uint64_t a1, uint64_t a2)
{
  sub_268C84D3C();
  v2 = sub_268C88DA4();
  sub_268C83CBC(v2);
  v4 = v3;

  if (!v4)
  {
    return v4;
  }

  v13 = OUTLINED_FUNCTION_2_4(v5, v6, v7, v8, v9, v10, v11, v12);

  v22 = 0;
  v48 = *(v13 + 16);
  v4 = MEMORY[0x277D84F98];
LABEL_3:
  if (v22 == v48)
  {

    return v4;
  }

  if (v22 < *(v13 + 16))
  {
    v23 = OUTLINED_FUNCTION_2_4(result, v15, v16, v17, v18, v19, v20, v21);
    if (v23[2])
    {
      v25 = v23[4];
      v24 = v23[5];
      sub_268C83CBC(v23);
      v27 = v26;

      if (v27)
      {
        v49 = v25;
        v50 = v22 + 1;
        v51 = v4;
        v36 = OUTLINED_FUNCTION_2_4(v28, v29, v30, v31, v32, v33, v34, v35);

        v37 = 0;
        v38 = *(v36 + 16);
        v39 = MEMORY[0x277D84F90];
LABEL_8:
        v40 = (v36 + 40 + 16 * v37);
        while (1)
        {
          if (v38 == v37)
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_268C84E38(v39, v49, v24, isUniquelyReferenced_nonNull_native);

            v4 = v51;
            v22 = v50;
            goto LABEL_3;
          }

          if (v37 >= *(v36 + 16))
          {
            break;
          }

          ++v37;
          v41 = *(v40 - 1);
          v42 = *v40;
          v40 += 2;
          v43 = HIBYTE(v42) & 0xF;
          if ((v42 & 0x2000000000000000) == 0)
          {
            v43 = v41 & 0xFFFFFFFFFFFFLL;
          }

          if (v43)
          {

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_268C84FBC(0, *(v39 + 16) + 1, 1);
            }

            v45 = *(v39 + 16);
            v44 = *(v39 + 24);
            if (v45 >= v44 >> 1)
            {
              result = sub_268C84FBC((v44 > 1), v45 + 1, 1);
            }

            *(v39 + 16) = v45 + 1;
            v46 = v39 + 16 * v45;
            *(v46 + 32) = v41;
            *(v46 + 40) = v42;
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    return 0;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_268C83C24()
{
  result = qword_2802D4CA8;
  if (!qword_2802D4CA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802D4CA8);
  }

  return result;
}

unint64_t sub_268C83C68()
{
  result = qword_2802D4CB8;
  if (!qword_2802D4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4CB8);
  }

  return result;
}

uint64_t sub_268C83CBC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

id RRHandoffURL.toAnnotatedEntity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  v2 = OUTLINED_FUNCTION_6(v1);
  MEMORY[0x28223BE20](v2);
  v69 = &v63 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  v5 = OUTLINED_FUNCTION_6(v4);
  MEMORY[0x28223BE20](v5);
  v70 = &v63 - v6;
  v7 = type metadata accessor for RREntity(0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CC0, &qword_268C8CE18);
  v12 = OUTLINED_FUNCTION_6(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v18 = *v0;
  v19 = v0[1];
  *&v73[8] = *(v0 + 1);
  v20 = v0[4];
  v21 = v0[5];
  v76 = *(v0 + 3);
  v22 = v0[8];
  v72 = v18;
  *v73 = v19;
  v74 = v20;
  v75 = v21;
  v77 = v22;
  v71 = sub_268C841A4();
  if (!v71)
  {
    return 0;
  }

  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v7);
  if (v21)
  {
    sub_268C88C24();
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    OUTLINED_FUNCTION_20_2();
    v30 = v7[12];
    *v15 = v20;
    v15[1] = v21;
    v31 = v30;
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v71;
    OUTLINED_FUNCTION_19_3();
    *(v15 + v32) = xmmword_268C8CE00;

    v33 = &unk_287984428;
LABEL_4:
    v34 = (v15 + v31);

    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v15 + v7[11]) = v33;
    *v34 = 0;
    v34[1] = 0;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v7);
    sub_268C84848(v15, v17);
    goto LABEL_5;
  }

  if (v22 && *(v22 + 16))
  {
    v36 = *(v22 + 32);
    v37 = *(v22 + 40);
    v22 = v7[7];
    sub_268C88C24();
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    OUTLINED_FUNCTION_20_2();
    v31 = v7[12];
    *v15 = v36;
    v15[1] = v37;
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v71;
    OUTLINED_FUNCTION_19_3();
    *(v15 + v42) = xmmword_268C8CE00;

    v33 = &unk_287984480;
    goto LABEL_4;
  }

LABEL_5:
  if (__swift_getEnumTagSinglePayload(v17, 1, v7))
  {

    v35 = 0;
  }

  else
  {
    sub_268C661A8(v17, v10);
    v43 = *v10;
    v64 = v10[1];
    v44 = v10[3];
    v67 = v10[2];
    v68 = v43;
    v45 = v10[4];
    sub_268C644F0(v10 + v7[7], v70);
    v46 = v7[9];
    v47 = (v10 + v7[8]);
    v48 = *v47;
    v65 = v47[1];
    v66 = v48;
    v49 = *(v10 + v46);
    v50 = *(v10 + v46 + 8);
    v51 = v7[11];
    v52 = v10 + v7[10];
    v72 = *v52;
    v63 = *(v52 + 8);
    *v73 = v63;
    v53 = *(v10 + v51);
    sub_268C889E4();
    v54 = v69;
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);

    v59 = v44;

    sub_268C66A34(v49, v50);
    type metadata accessor for RRAnnotationValue(0);

    v60 = sub_268C88C44();
    v61 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(0));
    v35 = RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v68, v64, v67, v59, v45, v70, v66, v65, 0.0, v49, v50, &v72, v53, v54, 0, 1, v60, 0, 0);

    sub_268C6620C(v10);
  }

  sub_268C847E0(v17);
  return v35;
}

uint64_t sub_268C841A4()
{
  v36 = sub_268C88A64();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = v0[8];
  if (v0[5])
  {
    v8 = v0[7];
    v9 = sub_268C88B04();
    OUTLINED_FUNCTION_29(v9);

    v10 = sub_268C88AF4();

    v11 = v10;
    sub_268C88A54();
    sub_268C88A44();
    v35 = *(v2 + 8);
    v35(v6, v36);
    if (v8)
    {
      sub_268C88AE4();
    }

    if (v7)
    {
      v12 = *(v7 + 16);
      if (v12)
      {
        sub_268C83C24();
        v33 = sub_268C88B34();
        v13 = v7 + 40;
        v14 = MEMORY[0x277D837D0];
        v34 = v11;
        while (1)
        {
          v37 = v13;
          v38 = v12;
          OUTLINED_FUNCTION_29(v33);

          sub_268C88B24();
          sub_268C84D3C();
          OUTLINED_FUNCTION_0_3();
          sub_268C88DB4();
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CB0, &qword_268C8CE10);
          v16 = OUTLINED_FUNCTION_13_3(v15);
          *(v16 + 16) = xmmword_268C8CDF0;
          *(v16 + 56) = v14;
          v17 = sub_268C83C68();
          *(v16 + 64) = v17;
          *(v16 + 32) = 0xD00000000000001ALL;
          *(v16 + 40) = 0x8000000268C8DD90;
          v18 = sub_268C88D74();
          v19 = sub_268C88C74();
          v20 = [v18 evaluateWithObject_];

          if (v20)
          {
            break;
          }

          v22 = OUTLINED_FUNCTION_13_3(v15);
          *(v22 + 16) = xmmword_268C8CDF0;
          v14 = MEMORY[0x277D837D0];
          *(v22 + 56) = MEMORY[0x277D837D0];
          *(v22 + 64) = v17;
          *(v22 + 32) = 0xD00000000000002BLL;
          *(v22 + 40) = 0x8000000268C8DDB0;
          v23 = sub_268C88D74();
          v24 = sub_268C88C74();
          v25 = [v23 evaluateWithObject_];

          if (v25)
          {
            v26 = sub_268C88B94();
            OUTLINED_FUNCTION_29(v26);
            sub_268C88B84();
            OUTLINED_FUNCTION_9_3();
            sub_268C88B74();

            sub_268C88B14();
            goto LABEL_11;
          }

LABEL_12:

          OUTLINED_FUNCTION_3_2();
          sub_268C88A54();
          sub_268C88A44();
          v35(v6, v36);

          v11 = v34;
          sub_268C88AD4();

          v13 = v37 + 16;
          v12 = v38 - 1;
          if (v38 == 1)
          {
            goto LABEL_23;
          }
        }

        v21 = sub_268C88B64();
        OUTLINED_FUNCTION_29(v21);
        sub_268C88B54();
        OUTLINED_FUNCTION_9_3();
        sub_268C88B44();

        sub_268C88B14();
        v14 = MEMORY[0x277D837D0];
LABEL_11:

        goto LABEL_12;
      }
    }

    goto LABEL_23;
  }

  if (v7 && *(v7 + 16))
  {
    v27 = sub_268C88B34();
    OUTLINED_FUNCTION_29(v27);

    v11 = sub_268C88B24();
    OUTLINED_FUNCTION_1_4();
    sub_268C84D3C();
    OUTLINED_FUNCTION_15_2();
    OUTLINED_FUNCTION_0_3();
    sub_268C88DB4();
    valid = String.isValidPhoneNumber()();

    if (valid)
    {
      v29 = sub_268C88B64();
      OUTLINED_FUNCTION_29(v29);
      sub_268C88B54();
      OUTLINED_FUNCTION_10_3();
      sub_268C88B44();
    }

    else
    {
      if (!String.isValidEmailAddress()())
      {
LABEL_22:

        OUTLINED_FUNCTION_3_2();
        sub_268C88A54();
        sub_268C88A44();
        (*(v2 + 8))(v6, v36);

LABEL_23:
        v30 = MEMORY[0x26D629DB0](v11);

        return v30;
      }

      v31 = sub_268C88B94();
      OUTLINED_FUNCTION_29(v31);
      sub_268C88B84();
      OUTLINED_FUNCTION_10_3();
      sub_268C88B74();
    }

    sub_268C88B14();

    v11 = valid;
    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_268C847E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CC0, &qword_268C8CE18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C84848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CC0, &qword_268C8CE18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static RRHandoffURL.messageRecipientToUSOEntityBuilder(recipient:appBundleId:uniqueId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_268C88A64();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = sub_268C88B34();
  OUTLINED_FUNCTION_29(v14);
  v15 = sub_268C88B24();
  OUTLINED_FUNCTION_1_4();
  sub_268C84D3C();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_0_3();
  sub_268C88DB4();
  valid = String.isValidPhoneNumber()();

  if (valid)
  {
    v17 = sub_268C88B64();
    OUTLINED_FUNCTION_29(v17);
    sub_268C88B54();
    OUTLINED_FUNCTION_17_2();
    sub_268C88B44();
  }

  else
  {
    if (!String.isValidEmailAddress()())
    {
      goto LABEL_6;
    }

    v18 = sub_268C88B94();
    OUTLINED_FUNCTION_29(v18);
    sub_268C88B84();
    OUTLINED_FUNCTION_17_2();
    sub_268C88B74();
  }

  sub_268C88B14();

LABEL_6:
  if (!a6)
  {
  }

  OUTLINED_FUNCTION_3_2();
  sub_268C88A54();
  sub_268C88A44();
  (*(v9 + 8))(v13, v7);
  return v15;
}

uint64_t String.cleanPhoneNumber.getter()
{
  OUTLINED_FUNCTION_1_4();
  sub_268C84D3C();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_0_3();
  return sub_268C88DB4();
}

Swift::Bool __swiftcall String.isValidPhoneNumber()()
{
  v0 = OUTLINED_FUNCTION_12_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CB0, &qword_268C8CE10);
  v2 = OUTLINED_FUNCTION_13_3(v1);
  OUTLINED_FUNCTION_6_3(v2, xmmword_268C8CDF0)[3].n128_u64[1] = MEMORY[0x277D837D0];
  v3 = sub_268C83C68();
  OUTLINED_FUNCTION_8_2(v3);
  OUTLINED_FUNCTION_4_1(v4 + 9);
  v5 = OUTLINED_FUNCTION_11_1();
  v6 = [v0 evaluateWithObject_];

  return v6;
}

Swift::Bool __swiftcall String.isValidEmailAddress()()
{
  v0 = OUTLINED_FUNCTION_12_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CB0, &qword_268C8CE10);
  v2 = OUTLINED_FUNCTION_13_3(v1);
  OUTLINED_FUNCTION_6_3(v2, xmmword_268C8CDF0)[3].n128_u64[1] = MEMORY[0x277D837D0];
  v3 = sub_268C83C68();
  OUTLINED_FUNCTION_8_2(v3);
  OUTLINED_FUNCTION_4_1(v4 + 26);
  v5 = OUTLINED_FUNCTION_11_1();
  v6 = [v0 evaluateWithObject_];

  return v6;
}

Swift::Bool __swiftcall String.isValidContact()()
{
  if (String.isValidEmailAddress()())
  {
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    sub_268C84D3C();
    OUTLINED_FUNCTION_15_2();
    OUTLINED_FUNCTION_0_3();
    sub_268C88DB4();
    valid = String.isValidPhoneNumber()();
  }

  return valid;
}

unint64_t sub_268C84D3C()
{
  result = qword_2802D4CC8;
  if (!qword_2802D4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4CC8);
  }

  return result;
}

uint64_t sub_268C84D98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_268C84DD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268C84E38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_268C68144(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CD0, "h(");
  if ((sub_268C88E54() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_268C68144(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_268C89014();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_268C84F74(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_268C84F74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

char *sub_268C84FBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268C84FDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268C84FDC(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CD8, &qword_268C8CE88);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_268C877BC(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_19_3()
{
  v2 = (v1 + *(v0 + 32));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t RRVisualGroup.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 0;
  return result;
}

uint64_t RRVisualGroup.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_268C8514C(void *a1, double a2)
{
  v3 = v2;
  sub_268C88BB4();
  v7 = v6;
  OUTLINED_FUNCTION_2_5();
  v10 = v8 == 0xD000000000000014 && v9 == v7;
  if (v10 || (v11 = v8, (OUTLINED_FUNCTION_0_4(0xD000000000000014, v9) & 1) != 0) || ((OUTLINED_FUNCTION_2_5(), v11 == 0xD000000000000012) ? (v13 = v12 == v7) : (v13 = 0), v13 || (OUTLINED_FUNCTION_0_4(0xD000000000000012, v12) & 1) != 0 || ((OUTLINED_FUNCTION_2_5(), v11 == 0xD000000000000013) ? (v15 = v14 == v7) : (v15 = 0), v15 || (OUTLINED_FUNCTION_0_4(0xD000000000000013, v14) & 1) != 0 || (v11 == 0x505F6E6F6D6D6F63 ? (v16 = v7 == 0xED00006E6F737265) : (v16 = 0), v16 || (OUTLINED_FUNCTION_0_4(0x505F6E6F6D6D6F63, 0xED00006E6F737265) & 1) != 0 || ((OUTLINED_FUNCTION_2_5(), v11 == 0xD000000000000014) ? (v18 = v17 == v7) : (v18 = 0), v18 || (OUTLINED_FUNCTION_0_4(0xD000000000000014, v17) & 1) != 0 || (v11 == 0x555F6E6F6D6D6F63 ? (v19 = v7 == 0xEA00000000006972) : (v19 = 0), v19))))))
  {
  }

  else
  {
    v20 = OUTLINED_FUNCTION_0_4(0x555F6E6F6D6D6F63, 0xEA00000000006972);

    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  if (a2 > 0.0)
  {
    swift_beginAccess();
    v22 = a1;
    MEMORY[0x26D62A010]();
    sub_268C855C4(*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_268C88D34();
    result = swift_endAccess();
    v23 = *(v3 + 24);
    if (v23 <= a2)
    {
      v23 = a2;
    }

    *(v3 + 24) = v23;
  }

  return result;
}

uint64_t sub_268C8533C()
{
  v2 = v0;
  swift_beginAccess();
  v3 = *(v0 + 16);
  if (v3 >> 62)
  {
    result = sub_268C88E74();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= 2)
  {
    v5 = *(v0 + 16);
    result = sub_268C855A0(v5);
    if (result)
    {
      v6 = result;
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v7 = 0xEE007370614D2E65;
        OUTLINED_FUNCTION_1_5();

        v8 = 0;
        v9 = &OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x26D62A110](v8, v5);
          }

          else
          {
            v10 = *(v5 + 8 * v8 + 32);
          }

          v11 = v10;
          v12 = sub_268C77FD0();
          if ((v13 & 1) == 0)
          {
            v14 = *&v12;
            v15 = &v11[*v9];
            v16 = *v15 == v1 && *(v15 + 1) == v7;
            if (v16 || (sub_268C88FD4() & 1) != 0)
            {
              v17 = &v11[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment];
              v18 = v14 / *(v2 + 24);
              swift_beginAccess();
              *v17 = v18;
              v19 = v17 + 1;
            }

            else
            {
              v1 = v7;
              v20 = v9;
              v21 = &v11[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment];
              swift_beginAccess();
              v22 = *v21;
              v19 = v21 + 8;
              if (v21[8])
              {
                v22 = 1.0;
              }

              *v21 = v22 * (v14 / *(v2 + 24) + 999.0) / 1000.0;
              v9 = v20;
              v7 = v1;
              OUTLINED_FUNCTION_1_5();
            }

            *v19 = 0;
          }

          ++v8;
        }

        while (v6 != v8);
      }
    }
  }

  return result;
}

uint64_t RRVisualGroup.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_268C855A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_268C88E74();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_268C855C4(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t ResolveQuery.restrictedEntitiesKey.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ResolveQuery.__allocating_init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_5();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = 0;
  return result;
}

uint64_t ResolveQuery.init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = 0;
  return v4;
}

uint64_t ResolveQuery.__allocating_init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:matchedResultsSetting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  OUTLINED_FUNCTION_0_5();
  result = swift_allocObject();
  v11 = *a5;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = v11;
  return result;
}

uint64_t ResolveQuery.init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:matchedResultsSetting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v6;
  return v5;
}

uint64_t sub_268C857A8()
{
  sub_268C88DF4();
  MEMORY[0x26D629FC0](0xD000000000000011, 0x8000000268C8DEC0);
  sub_268C88AC4();
  v1 = sub_268C88A74();
  v3 = v2;

  MEMORY[0x26D629FC0](v1, v3);

  MEMORY[0x26D629FC0](0xD000000000000019, 0x8000000268C8DEE0);
  sub_268C85918();
  MEMORY[0x26D629FC0]();

  OUTLINED_FUNCTION_1_6();
  if (*(v0 + 40))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x26D629FC0](v4, v5);

  OUTLINED_FUNCTION_1_6();
  sub_268C88E44();
  return 0;
}

void sub_268C85918()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    if (v1 >> 62)
    {
      v2 = sub_268C88E74();
      if (!v2)
      {
        return;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return;
      }
    }

    if (v2 < 1)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D62A110](v3, v1);
        }

        else
        {
        }

        ++v3;
        sub_268C88AC4();
        v4 = sub_268C88A74();
        v6 = v5;

        MEMORY[0x26D629FC0](10, 0xE100000000000000);

        MEMORY[0x26D629FC0](v4, v6);
      }

      while (v2 != v3);
    }
  }
}

void *ResolveQuery.deinit()
{

  return v0;
}

uint64_t ResolveQuery.__deallocating_deinit()
{
  ResolveQuery.deinit();
  v0 = OUTLINED_FUNCTION_0_5();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t MatchedResultsSetting.hashValue.getter()
{
  v1 = *v0;
  sub_268C89064();
  MEMORY[0x26D62A380](v1);
  return sub_268C890A4();
}

unint64_t sub_268C85B74()
{
  result = qword_2802D4CE0;
  if (!qword_2802D4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4CE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatchedResultsSetting(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MatchedResultsSetting(_BYTE *result, unsigned int a2, unsigned int a3)
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

SiriReferenceResolutionDataModel::RREntityKey __swiftcall RREntityKey.init(appBundleId:entityId:)(Swift::String appBundleId, Swift::String entityId)
{
  *v2 = appBundleId;
  v2[1] = entityId;
  result.entityId = entityId;
  result.appBundleId = appBundleId;
  return result;
}

uint64_t RREntityKey.appBundleId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RREntityKey.entityId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RREntityKey.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_268C88DF4();

  MEMORY[0x26D629FC0](v3, v4);
  MEMORY[0x26D629FC0](0x646E75427070610ALL, 0xEE00203A6449656CLL);
  MEMORY[0x26D629FC0](v1, v2);
  return 0x6449797469746E65;
}

uint64_t static RREntityKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_268C88FD4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_268C88FD4();
    }
  }

  return result;
}

uint64_t sub_268C85FF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449797469746E65 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_268C88FD4();

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

uint64_t sub_268C860C0(char a1)
{
  if (a1)
  {
    return 0x6449797469746E65;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_268C86108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C85FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C86130(uint64_t a1)
{
  v2 = sub_268C86318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C8616C(uint64_t a1)
{
  v2 = sub_268C86318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RREntityKey.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CE8, &qword_268C8D030);
  OUTLINED_FUNCTION_0_0();
  v12 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C86318();
  sub_268C890F4();
  v14 = 0;
  sub_268C88F74();
  if (!v2)
  {
    v13 = 1;
    sub_268C88F74();
  }

  return (*(v12 + 8))(v8, v4);
}

unint64_t sub_268C86318()
{
  result = qword_2802D4CF0;
  if (!qword_2802D4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4CF0);
  }

  return result;
}

uint64_t RREntityKey.hash(into:)(uint64_t a1)
{
  sub_268C88CA4();

  return sub_268C88CA4();
}

uint64_t RREntityKey.hashValue.getter()
{
  sub_268C89064();
  sub_268C88CA4();
  sub_268C88CA4();
  return sub_268C890A4();
}

uint64_t RREntityKey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4CF8, &qword_268C8D038);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C86318();
  sub_268C890D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = 0;
  v11 = sub_268C88EE4();
  v13 = v12;
  v21 = 1;
  v14 = sub_268C88EE4();
  v16 = v15;
  v17 = *(v7 + 8);
  v20 = v14;
  v17(v10, v5);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v20;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_268C86654(uint64_t a1)
{
  sub_268C89064();
  sub_268C88CA4();
  sub_268C88CA4();
  return sub_268C890A4();
}

unint64_t sub_268C866BC()
{
  result = qword_280D69648;
  if (!qword_280D69648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69648);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RREntityKey.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268C86804()
{
  result = qword_2802D4D00;
  if (!qword_2802D4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D00);
  }

  return result;
}

unint64_t sub_268C8685C()
{
  result = qword_2802D4D08;
  if (!qword_2802D4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D08);
  }

  return result;
}

unint64_t sub_268C868B4()
{
  result = qword_2802D4D10;
  if (!qword_2802D4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D10);
  }

  return result;
}

SiriReferenceResolutionDataModel::RRMentionAuthor_optional __swiftcall RRMentionAuthor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C88E84();

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

uint64_t RRMentionAuthor.rawValue.getter()
{
  if (*v0)
  {
    return 1769105779;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_268C869C0@<X0>(uint64_t *a1@<X8>)
{
  result = RRMentionAuthor.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_268C86AB0()
{
  BYTE8(v5) = 0;
  sub_268C88DF4();
  MEMORY[0x26D629FC0](0xD000000000000011, 0x8000000268C8E030);
  *&v5 = *(v0 + 16);
  sub_268C88E44();
  MEMORY[0x26D629FC0](0x65697469746E6520, 0xEB00000000203A73);
  v1 = *(v0 + 24);
  v2 = type metadata accessor for RREntity(0);
  v3 = MEMORY[0x26D62A020](v1, v2);
  MEMORY[0x26D629FC0](v3);

  return *(&v5 + 1);
}

uint64_t RRMentionedEvent.__allocating_init(entities:mentionedBy:)(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_1_7();
  result = swift_allocObject();
  v5 = *a2;
  *(result + 24) = a1;
  *(result + 16) = v5;
  return result;
}

uint64_t RRMentionedEvent.init(entities:mentionedBy:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t RRMentionedEvent.__allocating_init(entitiesInGroup:mentionedBy:)(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_1_7();
  v4 = swift_allocObject();
  RRMentionedEvent.init(entitiesInGroup:mentionedBy:)(a1, a2);
  return v4;
}

uint64_t RRMentionedEvent.init(entitiesInGroup:mentionedBy:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for RREntity(0);
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v50[-v16];
  v18 = *a2;
  type metadata accessor for GroupIdentifierGenerator();
  swift_initStackObject();
  v62 = GroupIdentifierGenerator.init()();
  v19 = *(a1 + 16);
  if (v19)
  {
    v51 = v18;
    v53 = v2;
    v20 = v6[9];
    v59 = (v17 + v6[8]);
    v54 = v17;
    v58 = (v17 + v20);
    v61 = v6;
    v57 = v6[11];
    v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v52 = a1;
    v56 = v21;
    v22 = a1 + v21;
    v55 = *(v8 + 72);
    v23 = MEMORY[0x277D84F90];
    v60 = v12;
    do
    {
      v71 = v23;
      v72 = v19;
      v65 = v22;
      v24 = v54;
      sub_268C661A8(v22, v54);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[3];
      v66 = v24[2];
      v67 = v25;
      v28 = v24[4];
      v29 = v59[1];
      v68 = *v59;
      v64 = v29;
      v31 = v58[1];
      v63 = *v58;
      v30 = v63;
      sub_268C74494(&v73);
      v70 = v73;
      v69 = v74;
      v32 = *(v24 + v57);

      v33 = v26;

      sub_268C66A34(v30, v31);
      v34 = v32;

      sub_268C6620C(v24);
      v35 = v61;
      v36 = v61[7];
      v37 = sub_268C88C24();
      __swift_storeEnumTagSinglePayload(v15 + v36, 1, 1, v37);
      v38 = (v15 + v35[10]);
      *v38 = 0;
      v38[1] = 0;
      v38[2] = 0;
      v39 = (v15 + v35[12]);
      v40 = v66;
      *v15 = v67;
      v15[1] = v33;
      v23 = v71;
      v15[2] = v40;
      v15[3] = v27;
      v15[4] = v28;
      v41 = v60;
      v42 = (v15 + v35[8]);
      v43 = v63;
      v44 = v64;
      *v42 = v68;
      v42[1] = v44;
      v45 = (v15 + v35[9]);
      *v45 = v43;
      v45[1] = v31;

      *v38 = v70;
      v38[2] = v69;
      *(v15 + v35[11]) = v34;
      *v39 = 0;
      v39[1] = 0;
      sub_268C661A8(v15, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_268C878BC(0, v23[2] + 1, 1, v23);
      }

      v47 = v23[2];
      v46 = v23[3];
      if (v47 >= v46 >> 1)
      {
        v23 = sub_268C878BC((v46 > 1), v47 + 1, 1, v23);
      }

      v23[2] = v47 + 1;
      v48 = v55;
      sub_268C879A8(v41, v23 + v56 + v47 * v55);
      sub_268C6620C(v15);
      v22 = v65 + v48;
      v19 = v72 - 1;
    }

    while (v72 != 1);

    v3 = v53;
    LOBYTE(v18) = v51;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  *(v3 + 24) = v23;
  *(v3 + 16) = v18;
  return v3;
}

uint64_t sub_268C87020(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F69746E656DLL && a2 == 0xEF726F6874754164;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_268C88FD4();

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

uint64_t sub_268C870F0(char a1)
{
  if (a1)
  {
    return 0x7365697469746E65;
  }

  else
  {
    return 0x656E6F69746E656DLL;
  }
}

uint64_t sub_268C8713C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C87020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C87164(uint64_t a1)
{
  v2 = sub_268C87A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C871A0(uint64_t a1)
{
  v2 = sub_268C87A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C871FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4D18, &qword_268C8D280);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C87A0C();
  sub_268C890F4();
  v15 = *(v3 + 16);
  v14 = 0;
  sub_268C87A60();
  sub_268C88FB4();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4D30, &qword_268C8D288);
    sub_268C87B2C(&qword_2802D4D38, &qword_280D691D0, &protocol conformance descriptor for RREntity, MEMORY[0x277D83948]);
    sub_268C88FB4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t RRMentionedEvent.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_1_7();
  v2 = swift_allocObject();
  RRMentionedEvent.init(from:)(a1);
  return v2;
}

uint64_t RRMentionedEvent.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4D40, &qword_268C8D290);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C87A0C();
  sub_268C890D4();
  if (v2)
  {
    type metadata accessor for RRMentionedEvent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = 0;
    sub_268C87AD8();
    sub_268C88F24();
    *(v1 + 16) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4D30, &qword_268C8D288);
    v12 = 1;
    sub_268C87B2C(&qword_2802D4D50, &qword_2802D4750, &protocol conformance descriptor for RREntity, MEMORY[0x277D83978]);
    sub_268C88F24();
    (*(v6 + 8))(v9, v4);
    *(v1 + 24) = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_268C8764C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = RRMentionedEvent.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_268C876C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4D80, &unk_268C8D580);
  v4 = *(type metadata accessor for RREntity(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_268C877BC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_268C877E8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for RREntity(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for RREntity(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

void *sub_268C878BC(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_268C876C0(v8, v7);
  v10 = *(type metadata accessor for RREntity(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_268C877E8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_268C879A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RREntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_268C87A0C()
{
  result = qword_2802D4D20;
  if (!qword_2802D4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D20);
  }

  return result;
}

unint64_t sub_268C87A60()
{
  result = qword_2802D4D28;
  if (!qword_2802D4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D28);
  }

  return result;
}

unint64_t sub_268C87AD8()
{
  result = qword_2802D4D48;
  if (!qword_2802D4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D48);
  }

  return result;
}

uint64_t sub_268C87B2C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D4D30, &qword_268C8D288);
    sub_268C87BB4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268C87BB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RREntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_268C87BFC()
{
  result = qword_2802D4D58;
  if (!qword_2802D4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D58);
  }

  return result;
}

_BYTE *sub_268C87D24(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268C87E04()
{
  result = qword_2802D4D60;
  if (!qword_2802D4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D60);
  }

  return result;
}

unint64_t sub_268C87E5C()
{
  result = qword_2802D4D68;
  if (!qword_2802D4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D68);
  }

  return result;
}

unint64_t sub_268C87EB4()
{
  result = qword_2802D4D70;
  if (!qword_2802D4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D70);
  }

  return result;
}

unint64_t sub_268C87F08()
{
  result = qword_2802D4D78;
  if (!qword_2802D4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D78);
  }

  return result;
}

uint64_t RRFilter.userId.getter()
{
  v1 = *v0;

  return v1;
}

SiriReferenceResolutionDataModel::RRFilter __swiftcall RRFilter.init(userId:)(SiriReferenceResolutionDataModel::RRFilter userId)
{
  *v1 = userId.userId.value;
  *(v1 + 16) = 0;
  return userId;
}

uint64_t static RRFilter.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_268C88FD4() & 1) != 0)
      {
        return v4 ^ v6 ^ 1u;
      }
    }
  }

  else if (!v5)
  {
    return v4 ^ v6 ^ 1u;
  }

  return 0;
}

uint64_t sub_268C88014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C6F467369 && a2 == 0xEE006E7275547055)
  {

    return 1;
  }

  else
  {
    v7 = sub_268C88FD4();

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

uint64_t sub_268C880E0(char a1)
{
  if (a1)
  {
    return 0x776F6C6C6F467369;
  }

  else
  {
    return 0x644972657375;
  }
}

uint64_t sub_268C88128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C88014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C88150(uint64_t a1)
{
  v2 = sub_268C88334();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C8818C(uint64_t a1)
{
  v2 = sub_268C88334();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RRFilter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4D88, &qword_268C8D590);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C88334();
  sub_268C890F4();
  v14 = 0;
  v9 = v11[1];
  sub_268C88F54();
  if (!v9)
  {
    v13 = 1;
    sub_268C88F84();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_268C88334()
{
  result = qword_2802D4D90;
  if (!qword_2802D4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4D90);
  }

  return result;
}

uint64_t RRFilter.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_268C89084();
    sub_268C88CA4();
  }

  else
  {
    sub_268C89084();
  }

  return sub_268C89084();
}

uint64_t RRFilter.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_268C89064();
  sub_268C89084();
  if (v1)
  {
    sub_268C88CA4();
  }

  sub_268C89084();
  return sub_268C890A4();
}

uint64_t RRFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4D98, &qword_268C8D598);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C88334();
  sub_268C890D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = 0;
  v11 = sub_268C88EB4();
  v13 = v12;
  v17 = 1;
  v14 = sub_268C88EF4();
  (*(v7 + 8))(v10, v5);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_268C88664(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_268C89064();
  RRFilter.hash(into:)(v4);
  return sub_268C890A4();
}

unint64_t sub_268C886B8()
{
  result = qword_2802D4DA0;
  if (!qword_2802D4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4DA0);
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

_BYTE *storeEnumTagSinglePayload for RRFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268C88810()
{
  result = qword_2802D4DA8;
  if (!qword_2802D4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4DA8);
  }

  return result;
}

unint64_t sub_268C88868()
{
  result = qword_2802D4DB0;
  if (!qword_2802D4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4DB0);
  }

  return result;
}

unint64_t sub_268C888C0()
{
  result = qword_2802D4DB8;
  if (!qword_2802D4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4DB8);
  }

  return result;
}