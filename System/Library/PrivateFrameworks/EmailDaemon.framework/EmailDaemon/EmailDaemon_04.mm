double sub_1C643A6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1C643A700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SearchableIndexMetric.init(name:unit:value:healthy:warning:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a5 < a7 || a8 < a6)
  {
    __break(1u);
  }

  else
  {
    if (a8 < a4 || a4 < a7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = a6 < a4 || a4 < a5;
    *a9 = result;
    *(a9 + 8) = a2;
    if (!v11)
    {
      v10 = 0;
    }

    *(a9 + 16) = *a3;
    *(a9 + 32) = a4;
    *(a9 + 40) = v10;
  }

  return result;
}

uint64_t SearchableIndexMetric.Unit.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  return MEMORY[0x1C6958D60](v2);
}

uint64_t SearchableIndexMetric.Unit.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t sub_1C643A888()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t sub_1C643A8F0()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  return MEMORY[0x1C6958D60](v2);
}

uint64_t sub_1C643A938(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

uint64_t SearchableIndexMetric.Level.hashValue.getter()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t SearchableIndexMetric.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchableIndexMetric.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 SearchableIndexMetric.unit.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 SearchableIndexMetric.unit.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

__n128 SearchableIndexMetric.init(name:unit:value:level:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unsigned __int8 *a5@<X4>, __n128 *a6@<X8>)
{
  v6 = *a5;
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = a4;
  a6[2].n128_u8[8] = v6;
  return result;
}

uint64_t sub_1C643AB98()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t sub_1C643ABE0(uint64_t a1)
{
  v2 = *v1;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t sub_1C643AC24()
{
  v1 = 1701667182;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6C6576656CLL;
  }

  if (*v0)
  {
    v1 = 1953066613;
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

uint64_t sub_1C643AC88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C643BB1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C643ACBC(uint64_t a1)
{
  v2 = sub_1C643B460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C643ACF8(uint64_t a1)
{
  v2 = sub_1C643B460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchableIndexMetric.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  return MEMORY[0x1C6958D60](v5);
}

uint64_t SearchableIndexMetric.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  return sub_1C645D024();
}

uint64_t sub_1C643AE50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  return sub_1C645D024();
}

uint64_t sub_1C643AEFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  return MEMORY[0x1C6958D60](v5);
}

uint64_t sub_1C643AF6C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](0);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return sub_1C645D024();
}

uint64_t SearchableIndexMetric.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4578, &qword_1C6473B10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v7;
  v11 = *(v1 + 32);
  v17 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C643B460();
  sub_1C645D064();
  LOBYTE(v15) = 0;
  v8 = v14;
  sub_1C645CEC4();
  if (!v8)
  {
    v9 = v17;
    v15 = v13;
    v16 = v12;
    v18 = 1;
    sub_1C643B4B4();
    sub_1C645CEE4();
    LOBYTE(v15) = 2;
    sub_1C645CED4();
    LOBYTE(v15) = v9;
    v18 = 3;
    sub_1C643B508();
    sub_1C645CEE4();
  }

  return (*(v4 + 8))(v6, v3);
}

BOOL _s11EmailDaemon21SearchableIndexMetricV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v11 = sub_1C645CF24();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v7 && v4 == v6 && v3 == v8)
  {
    return v5 == v9;
  }

  return result;
}

unint64_t sub_1C643B460()
{
  result = qword_1EC1C4580;
  if (!qword_1EC1C4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4580);
  }

  return result;
}

unint64_t sub_1C643B4B4()
{
  result = qword_1EC1C4588;
  if (!qword_1EC1C4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4588);
  }

  return result;
}

unint64_t sub_1C643B508()
{
  result = qword_1EC1C4590;
  if (!qword_1EC1C4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4590);
  }

  return result;
}

unint64_t sub_1C643B560()
{
  result = qword_1EC1C4598;
  if (!qword_1EC1C4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4598);
  }

  return result;
}

unint64_t sub_1C643B5B8()
{
  result = qword_1EC1C45A0;
  if (!qword_1EC1C45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45A0);
  }

  return result;
}

unint64_t sub_1C643B610()
{
  result = qword_1EC1C45A8;
  if (!qword_1EC1C45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45A8);
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

uint64_t sub_1C643B678(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1C643B6C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchableIndexMetric.Unit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SearchableIndexMetric.Unit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ItemKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemKind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchableIndexMetric.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchableIndexMetric.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C643BA18()
{
  result = qword_1EC1C45B0;
  if (!qword_1EC1C45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45B0);
  }

  return result;
}

unint64_t sub_1C643BA70()
{
  result = qword_1EC1C45B8;
  if (!qword_1EC1C45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45B8);
  }

  return result;
}

unint64_t sub_1C643BAC8()
{
  result = qword_1EC1C45C0;
  if (!qword_1EC1C45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45C0);
  }

  return result;
}

uint64_t sub_1C643BB1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C645CF24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (sub_1C645CF24() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1C645CF24() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6576656CLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C645CF24();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1C643BC88(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C645C9C4();
  }

  else
  {
    return 0;
  }
}

EmailDaemon::SearchableMessage::EmailAddress __swiftcall SearchableMessage.EmailAddress.init(displayName:address:)(Swift::String_optional displayName, Swift::String address)
{
  *v2 = displayName;
  v2[1].value = address;
  result.address = address;
  result.displayName = displayName;
  return result;
}

void __swiftcall SearchableMessage.EmailAddress.init(commentedAddress:)(EmailDaemon::SearchableMessage::EmailAddress_optional *__return_ptr retstr, Swift::String commentedAddress)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C45C8, &unk_1C6473E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v40 - v4;
  v6 = sub_1C645C844();
  v7 = [v6 emailAddressValue];
  v8 = [v7 displayName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 stringValue];
  }

  v11 = v10;

  v12 = v11;
  v13 = sub_1C645C874();
  v15 = v14;

  v16 = sub_1C645C844();

  v17 = v16;
  v18 = [v17 emailAddressValue];
  v19 = [v18 simpleAddress];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [v17 stringValue];
  }

  v22 = v21;

  v23 = v22;
  v24 = sub_1C645C874();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    retstr->value.displayName = 0u;
    retstr->value.address = 0u;
    return;
  }

  v28 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v28 = v13;
  }

  v29 = 7;
  if (((v15 >> 60) & ((v13 & 0x800000000000000) == 0)) != 0)
  {
    v29 = 11;
  }

  v30 = v29 | (v28 << 16);
  if (sub_1C645C8F4() < 3)
  {
    goto LABEL_27;
  }

  v31 = sub_1C643BC88(v13, v15);
  if (!v32)
  {
    goto LABEL_27;
  }

  if (v31 == 60 && v32 == 0xE100000000000000)
  {
  }

  else
  {
    v33 = sub_1C645CF24();

    if ((v33 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v34 = sub_1C643D3FC(v13, v15);
  if (v35)
  {
    if (v34 == 62 && v35 == 0xE100000000000000)
    {

LABEL_26:
      v37 = sub_1C645C904();
      v30 = sub_1C645C914();
      goto LABEL_28;
    }

    v36 = sub_1C645CF24();

    if (v36)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v37 = 15;
LABEL_28:
  v40[2] = v13;
  v40[3] = v15;
  v40[0] = v24;
  v40[1] = v26;
  if (v30 >> 14 < v37 >> 14)
  {
    __break(1u);
  }

  else
  {
    v38 = sub_1C645C684();
    (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
    sub_1C640DAC0();
    v39 = sub_1C645CC04();
    sub_1C640D570(v5, &qword_1EC1C45C8, &unk_1C6473E50);
    if (!v39)
    {

      v13 = 0;
      v15 = 0;
    }

    retstr->value.displayName.value._countAndFlagsBits = v13;
    retstr->value.displayName.value._object = v15;
    retstr->value.address._countAndFlagsBits = v24;
    retstr->value.address._object = v26;
  }
}

id sub_1C643C098(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  if (a1[1])
  {

    v3 = sub_1C645C844();
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6472810;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;

  v6 = sub_1C645CA04();

  v7 = [v4 initWithDisplayName:v3 handles:v6 handleIdentifier:*MEMORY[0x1E695C208]];

  return v7;
}

EmailDaemon::SearchableMessage::Priority_optional __swiftcall SearchableMessage.Priority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SearchableMessage.init(subjectWithoutPrefix:dateSent:dateReceived:isEncrypted:priority:senders:to:cc:bcc:allHeaders:htmlContent:summary:messageID:notificationID:isPartOfExistingThread:hasCompleteData:accountIdentifier:accountOwner:accountType:accountEmailAddresses:update:attachments:category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, unsigned __int8 *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 *a30, uint64_t a31)
{
  v80 = a8;
  v79 = a7;
  v96 = a5;
  v94 = a4;
  v71 = a3;
  v76 = a2;
  v74 = a1;
  v101 = a31;
  v102 = a16;
  v95 = a27;
  v91 = a23;
  v92 = a24;
  v89 = a21;
  v90 = a22;
  v86 = a20;
  v97 = a28;
  v98 = a18;
  v83 = a19;
  v99 = a15;
  v100 = a17;
  v78 = a14;
  v87 = a12;
  v75 = a13;
  v73 = a11;
  v72 = a10;
  v93 = a29;
  v88 = a26;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v69 - v34;
  v36 = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  v37 = (v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = (&v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *a6;
  v77 = *a25;
  v41 = *(a30 + 4);
  v84 = *(a30 + 5);
  v85 = v41;
  v42 = sub_1C645C674();
  v43 = *(v42 - 8);
  v70 = *(v43 + 32);
  v44 = a30[1];
  v82 = *a30;
  v81 = v44;
  v70(v35, v71, v42);
  v45 = *(v43 + 56);
  v45(v35, 0, 1, v42);
  v46 = v37[7];
  v45(v39 + v46, 1, 1, v42);
  v47 = v37[8];
  *(v39 + v47) = 5;
  v48 = v39 + v37[13];
  *v48 = xmmword_1C64738F0;
  v49 = v76;
  *v39 = v74;
  v39[1] = v49;
  sub_1C64239A8(v35, v39 + v46);
  *(v39 + v47) = v40;
  *(v39 + v37[9]) = v79;
  *(v39 + v37[10]) = v80;
  *(v39 + v37[11]) = v72;
  *(v39 + v37[12]) = v73;
  sub_1C641711C(*v48, *(v48 + 1));
  v50 = v78;
  *v48 = v75;
  *(v48 + 1) = v50;
  sub_1C643F0C0(v39, a9, type metadata accessor for SearchableMessage.InfoFromEMLX);
  v51 = type metadata accessor for SearchableMessage(0);
  v52 = (a9 + v51[5]);
  v53 = v51[8];
  v54 = (a9 + v51[11]);
  v55 = (a9 + v51[16]);
  *(v55 + 1) = 0u;
  *(v55 + 2) = 0u;
  *v55 = 0u;
  v56 = v51[17];
  v80 = v51[18];
  v57 = (a9 + v56);
  v58 = (a9 + v51[19]);
  v59 = v86;
  *v52 = v83;
  v52[1] = v59;
  v70((a9 + v51[6]), v94, v42);
  *(a9 + v51[7]) = v96;
  *(a9 + v53) = v87;
  v60 = v90;
  *(a9 + v51[9]) = v89;
  *(a9 + v51[10]) = v60;
  v61 = v92;
  *v54 = v91;
  v54[1] = v61;
  *(a9 + v51[12]) = v77;
  v62 = (a9 + v51[13]);
  v63 = v95;
  *v62 = v88;
  v62[1] = v63;
  *(a9 + v51[14]) = v97;
  sub_1C643F210(v93, a9 + v51[15], type metadata accessor for SearchableMessageUpdate);
  sub_1C64340F4(*v55, v55[1], v55[2], v55[3], v55[4], v55[5]);
  v64 = v81;
  *v55 = v82;
  *(v55 + 1) = v64;
  v65 = v84;
  v55[4] = v85;
  v55[5] = v65;
  v66 = v98;
  *v57 = v100;
  v57[1] = v66;
  *(a9 + v80) = v101;
  v67 = v102;
  *v58 = v99;
  v58[1] = v67;
  return sub_1C643F064(v39);
}

void sub_1C643C638(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v96 = a2;
  v97 = a3;
  v6 = sub_1C645C734();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v96 - v9;
  v11 = sub_1C645C844();
  [a1 setSubject_];

  v12 = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  sub_1C6423890(v4 + v12[5], v10);
  v13 = sub_1C645C674();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    v15 = sub_1C645C614();
    (*(v14 + 8))(v10, v13);
  }

  [a1 setContentCreationDate_];

  v98 = type metadata accessor for SearchableMessage(0);
  v16 = sub_1C645C614();
  [a1 setMailDateReceived_];

  v17 = *(v4 + v12[7]);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E695C208];
  v104 = v4;
  v105 = a1;
  v103 = v12;
  if (v18)
  {
    v107 = MEMORY[0x1E69E7CC0];
    sub_1C645CDA4();
    v20 = *v19;
    v21 = (v17 + 56);
    v106 = xmmword_1C6472810;
    do
    {
      v27 = *(v21 - 1);
      v28 = *v21;
      if (*(v21 - 2))
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v22 = sub_1C645C844();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v22 = 0;
      }

      v23 = objc_allocWithZone(MEMORY[0x1E6964E50]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
      v24 = swift_allocObject();
      *(v24 + 16) = v106;
      *(v24 + 32) = v27;
      *(v24 + 40) = v28;

      v25 = sub_1C645CA04();

      v26 = v20;
      [v23 initWithDisplayName:v22 handles:v25 handleIdentifier:v26];

      sub_1C645CD84();
      sub_1C645CDB4();
      sub_1C645CDC4();
      sub_1C645CD94();
      v21 += 4;
      --v18;
    }

    while (v18);
    v4 = v104;
    a1 = v105;
    v12 = v103;
    v19 = MEMORY[0x1E695C208];
  }

  v29 = sub_1C6401D00(0, &qword_1EDC93598, 0x1E6964E50);
  v30 = sub_1C645CA04();

  [a1 setAuthors_];

  v31 = *(v4 + v12[8]);
  v32 = *(v31 + 16);
  v102 = v29;
  if (v32)
  {
    v107 = MEMORY[0x1E69E7CC0];
    sub_1C645CDA4();
    v33 = *v19;
    v34 = (v31 + 56);
    v106 = xmmword_1C6472810;
    do
    {
      v40 = *(v34 - 1);
      v41 = *v34;
      if (*(v34 - 2))
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v35 = sub_1C645C844();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v35 = 0;
      }

      v36 = objc_allocWithZone(MEMORY[0x1E6964E50]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
      v37 = swift_allocObject();
      *(v37 + 16) = v106;
      *(v37 + 32) = v40;
      *(v37 + 40) = v41;

      v38 = sub_1C645CA04();

      v39 = v33;
      [v36 initWithDisplayName:v35 handles:v38 handleIdentifier:v39];

      sub_1C645CD84();
      sub_1C645CDB4();
      sub_1C645CDC4();
      sub_1C645CD94();
      v34 += 4;
      --v32;
    }

    while (v32);
    v4 = v104;
    a1 = v105;
    v12 = v103;
    v19 = MEMORY[0x1E695C208];
  }

  v42 = sub_1C645CA04();

  [a1 setPrimaryRecipients_];

  v43 = *(v4 + v12[9]);
  v44 = *(v43 + 16);
  if (v44)
  {
    v107 = MEMORY[0x1E69E7CC0];
    sub_1C645CDA4();
    v45 = *v19;
    v46 = (v43 + 56);
    v106 = xmmword_1C6472810;
    do
    {
      v52 = *(v46 - 1);
      v53 = *v46;
      if (*(v46 - 2))
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v47 = sub_1C645C844();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v47 = 0;
      }

      v48 = objc_allocWithZone(MEMORY[0x1E6964E50]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
      v49 = swift_allocObject();
      *(v49 + 16) = v106;
      *(v49 + 32) = v52;
      *(v49 + 40) = v53;

      v50 = sub_1C645CA04();

      v51 = v45;
      [v48 initWithDisplayName:v47 handles:v50 handleIdentifier:v51];

      sub_1C645CD84();
      sub_1C645CDB4();
      sub_1C645CDC4();
      sub_1C645CD94();
      v46 += 4;
      --v44;
    }

    while (v44);
    v4 = v104;
    a1 = v105;
    v12 = v103;
    v19 = MEMORY[0x1E695C208];
  }

  v54 = sub_1C645CA04();

  [a1 setAdditionalRecipients_];

  v55 = *(v4 + v12[10]);
  v56 = *(v55 + 16);
  if (v56)
  {
    v107 = MEMORY[0x1E69E7CC0];
    sub_1C645CDA4();
    v57 = *v19;
    v58 = (v55 + 56);
    v106 = xmmword_1C6472810;
    do
    {
      v64 = *(v58 - 1);
      v65 = *v58;
      if (*(v58 - 2))
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v59 = sub_1C645C844();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v59 = 0;
      }

      v60 = objc_allocWithZone(MEMORY[0x1E6964E50]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
      v61 = swift_allocObject();
      *(v61 + 16) = v106;
      *(v61 + 32) = v64;
      *(v61 + 40) = v65;

      v62 = sub_1C645CA04();

      v63 = v57;
      [v60 initWithDisplayName:v59 handles:v62 handleIdentifier:v63];

      sub_1C645CD84();
      sub_1C645CDB4();
      sub_1C645CDC4();
      sub_1C645CD94();
      v58 += 4;
      --v56;
    }

    while (v56);
    v4 = v104;
    a1 = v105;
    v12 = v103;
  }

  v66 = sub_1C645CA04();

  [a1 setHiddenAdditionalRecipients_];

  v67 = v98;
  sub_1C6441998(a1, v96, v97);
  if (*(v4 + v67[7]))
  {
    v68 = sub_1C645C844();
    [a1 setSecurityMethod_];
  }

  v69 = *(v4 + v12[6]);
  if (v69 != 5)
  {
    v70 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [a1 setMailPriority_];
  }

  v71 = v4 + v12[11];
  v72 = *(v71 + 8);
  if (v72 >> 60 != 15)
  {
    v73 = *v71;
    sub_1C6416234(*v71, *(v71 + 8));
    v74 = sub_1C645C584();
    [a1 setHTMLContentData_];

    sub_1C641711C(v73, v72);
  }

  v75 = *(v4 + v67[8]);
  if (v75)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4450, &qword_1C6473900);
    v75 = sub_1C645C7D4();
  }

  [a1 setEmailHeaders_];

  v76 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [a1 setExistingThread_];

  v77 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [a1 setPartiallyDownloaded_];

  v78 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [a1 setDataOwnerType_];

  if (*(v4 + v67[11] + 8))
  {
    v79 = sub_1C645C844();
  }

  else
  {
    v79 = 0;
  }

  [a1 setAccountIdentifier_];

  v80 = sub_1C645C844();
  [a1 setAccountType_];

  v81 = sub_1C645CA04();
  [a1 setAccountHandles_];

  v82 = (v4 + v67[16]);
  if (*v82)
  {
    v84 = v82[4];
    v83 = v82[5];
    v86 = v82[2];
    v85 = v82[3];
    v87 = v82[1];
    v107 = *v82;
    v108 = v87;
    v109 = v86;
    v110 = v85;
    v111 = v84;
    v112 = v83;

    SearchableMessageAttachments.addTo(_:)(a1);
  }

  if (*(v4 + v67[5] + 8))
  {
    v88 = sub_1C645C844();
    if (qword_1EDC93D88 != -1)
    {
      swift_once();
    }

    if (qword_1EDC954D8)
    {
      [a1 setValue:v88 forCustomKey:?];
    }
  }

  v89 = *(v4 + v67[18]);
  if (v89)
  {
    v90 = v89;
    [a1 setMailCategories_];
  }

  v91 = v99;
  v92 = v100;
  v93 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x1E69ADAF8], v101);
  v94 = sub_1C645C724();
  (*(v92 + 8))(v91, v93);
  if ((v94 & 1) != 0 && *(v4 + v67[19] + 8))
  {
    v95 = sub_1C645C844();
    if (qword_1EC1C3AC0 != -1)
    {
      swift_once();
    }

    if (qword_1EC1C9000)
    {
      [a1 setValue:v95 forCustomKey:?];
    }
  }
}

uint64_t sub_1C643D3FC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1C645C914();
  return sub_1C645C9C4();
}

void sub_1C643D47C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C645C844();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

  qword_1EDC954D8 = v2;
}

void sub_1C643D4FC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C645C844();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

  qword_1EC1C9000 = v2;
}

EmailDaemon::SearchableMessage::AccountOwner_optional __swiftcall SearchableMessage.AccountOwner.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C643D5BC()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1 + 1);
  return sub_1C645D024();
}

uint64_t sub_1C643D604(uint64_t a1)
{
  v2 = *v1;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v2 + 1);
  return sub_1C645D024();
}

uint64_t sub_1C643D648()
{
  getuid();
  result = sub_1C645CF14();
  qword_1EDC954E0 = result;
  *algn_1EDC954E8 = v1;
  return result;
}

uint64_t SearchableMessage.notificationID.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for SearchableMessage(0) + 20));

  return v3;
}

uint64_t SearchableMessage.notificationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessage(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessage.dateReceived.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SearchableMessage(0) + 24);
  v5 = sub_1C645C674();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SearchableMessage.dateReceived.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for SearchableMessage(0) + 24);
  v5 = sub_1C645C674();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SearchableMessage.isEncrypted.setter(char a1, uint64_t a2)
{
  result = type metadata accessor for SearchableMessage(0);
  *(v2 + *(result + 28)) = a1;
  return result;
}

double SearchableMessage.allHeaders.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchableMessage(0);

  return result;
}

uint64_t SearchableMessage.allHeaders.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for SearchableMessage(0) + 32);

  *(v2 + v4) = a1;
  return result;
}

uint64_t SearchableMessage.isPartOfExistingThread.setter(char a1, uint64_t a2)
{
  result = type metadata accessor for SearchableMessage(0);
  *(v2 + *(result + 36)) = a1;
  return result;
}

uint64_t SearchableMessage.hasCompleteData.setter(char a1, uint64_t a2)
{
  result = type metadata accessor for SearchableMessage(0);
  *(v2 + *(result + 40)) = a1;
  return result;
}

uint64_t SearchableMessage.accountIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for SearchableMessage(0) + 44));

  return v3;
}

uint64_t SearchableMessage.accountIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessage(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessage.accountOwner.getter@<X0>(_BYTE *a2@<X8>)
{
  result = type metadata accessor for SearchableMessage(0);
  *a2 = *(v2 + *(result + 48));
  return result;
}

uint64_t SearchableMessage.accountOwner.setter(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SearchableMessage(0);
  *(v2 + *(result + 48)) = v3;
  return result;
}

uint64_t SearchableMessage.accountType.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for SearchableMessage(0) + 52));

  return v3;
}

uint64_t SearchableMessage.accountType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessage(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double SearchableMessage.accountEmailAddresses.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchableMessage(0);

  return result;
}

uint64_t SearchableMessage.accountEmailAddresses.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for SearchableMessage(0) + 56);

  *(v2 + v4) = a1;
  return result;
}

double SearchableMessage.attachments.getter@<D0>(uint64_t *a2@<X8>)
{
  v4 = (v2 + *(type metadata accessor for SearchableMessage(0) + 64));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  *a2 = *v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;

  return sub_1C643F190(v5, v6, v7, v8, v9, v10);
}

__n128 SearchableMessage.attachments.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = (v2 + *(type metadata accessor for SearchableMessage(0) + 64));
  sub_1C64340F4(*v6, v6[1], v6[2], v6[3], v6[4], v6[5]);
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v8;
  v6[4] = v4;
  v6[5] = v5;
  return result;
}

uint64_t SearchableMessage.messageID.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for SearchableMessage(0) + 68));

  return v3;
}

uint64_t SearchableMessage.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessage(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *SearchableMessage.category.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for SearchableMessage(0) + 72));
  v4 = v3;
  return v3;
}

void SearchableMessage.category.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for SearchableMessage(0) + 72);

  *(v2 + v4) = a1;
}

uint64_t SearchableMessage.summary.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for SearchableMessage(0) + 76));

  return v3;
}

uint64_t SearchableMessage.summary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessage(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.init(subjectWithoutPrefix:dateSent:priority:senders:to:cc:bcc:htmlContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a4;
  v17 = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  v18 = v17[5];
  v19 = sub_1C645C674();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = v17[6];
  a9[v20] = 5;
  v21 = &a9[v17[11]];
  *v21 = xmmword_1C64738F0;
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1C64239A8(a3, &a9[v18]);
  a9[v20] = v16;
  *&a9[v17[7]] = a5;
  *&a9[v17[8]] = a6;
  *&a9[v17[9]] = a7;
  *&a9[v17[10]] = a8;
  result = sub_1C641711C(*v21, *(v21 + 1));
  *v21 = a10;
  *(v21 + 1) = a11;
  return result;
}

__n128 SearchableMessage.init(infoFromEMLX:notificationID:dateReceived:isEncrypted:allHeaders:isPartOfExistingThread:hasCompleteData:accountIdentifier:accountOwner:accountType:accountEmailAddresses:update:attachments:messageID:category:summary:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v39 = *a12;
  v47 = *(a17 + 32);
  v46 = *(a17 + 40);
  v24 = type metadata accessor for SearchableMessage(0);
  v25 = (a9 + v24[5]);
  v26 = v24[8];
  v27 = (a9 + v24[11]);
  v28 = (a9 + v24[16]);
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *v28 = 0u;
  v44 = v24[18];
  v29 = (a9 + v24[17]);
  v30 = (a9 + v24[19]);
  sub_1C643F210(a1, a9, type metadata accessor for SearchableMessage.InfoFromEMLX);
  *v25 = a2;
  v25[1] = a3;
  v31 = v24[6];
  v32 = sub_1C645C674();
  v36 = *(a17 + 16);
  v38 = *a17;
  (*(*(v32 - 8) + 32))(a9 + v31, a4, v32);
  *(a9 + v24[7]) = a5;
  *(a9 + v26) = a6;
  *(a9 + v24[9]) = a7;
  *(a9 + v24[10]) = a8;
  *v27 = a10;
  v27[1] = a11;
  *(a9 + v24[12]) = v39;
  v33 = (a9 + v24[13]);
  *v33 = a13;
  v33[1] = a14;
  *(a9 + v24[14]) = a15;
  sub_1C643F210(a16, a9 + v24[15], type metadata accessor for SearchableMessageUpdate);
  sub_1C64340F4(*v28, v28[1], v28[2], v28[3], v28[4], v28[5]);
  result = v38;
  *v28 = v38;
  *(v28 + 1) = v36;
  v28[4] = v47;
  v28[5] = v46;
  *v29 = a18;
  v29[1] = a19;
  *(a9 + v44) = a20;
  *v30 = a21;
  v30[1] = a22;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.subjectWithoutPrefix.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchableMessage.InfoFromEMLX.subjectWithoutPrefix.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.dateSent.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 20);

  return sub_1C64239A8(a1, v3);
}

uint64_t SearchableMessage.InfoFromEMLX.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.priority.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.senders.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.to.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.cc.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.bcc.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchableMessage.InfoFromEMLX.htmlContent.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 44);
  result = sub_1C641711C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV8dateSent10Foundation4DateVSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 20);

  return sub_1C6423890(v3, a1);
}

double _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV7sendersSayAC0A7AddressVGvg_0()
{
  type metadata accessor for SearchableMessage.InfoFromEMLX(0);

  return result;
}

double _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV2toSayAC0A7AddressVGvg_0()
{
  type metadata accessor for SearchableMessage.InfoFromEMLX(0);

  return result;
}

double _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV2ccSayAC0A7AddressVGvg_0()
{
  type metadata accessor for SearchableMessage.InfoFromEMLX(0);

  return result;
}

double _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV3bccSayAC0A7AddressVGvg_0()
{
  type metadata accessor for SearchableMessage.InfoFromEMLX(0);

  return result;
}

uint64_t sub_1C643EC18()
{
  v1 = v0 + *(type metadata accessor for SearchableMessage.InfoFromEMLX(0) + 44);
  v2 = *v1;
  sub_1C6434018(*v1, *(v1 + 8));
  return v2;
}

uint64_t SearchableMessage.EmailAddress.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchableMessage.EmailAddress.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchableMessage.EmailAddress.address.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchableMessage.EmailAddress.address.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SearchableMessage.EmailAddress.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C645C8E4();
}

uint64_t SearchableMessage.EmailAddress.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1C645CFE4();
  sub_1C645D004();
  if (v1)
  {
    sub_1C645C8E4();
  }

  sub_1C645C8E4();
  return sub_1C645D024();
}

uint64_t sub_1C643EE84()
{
  v1 = *(v0 + 8);
  sub_1C645CFE4();
  sub_1C645D004();
  if (v1)
  {
    sub_1C645C8E4();
  }

  sub_1C645C8E4();
  return sub_1C645D024();
}

uint64_t sub_1C643EF10(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C645C8E4();
}

uint64_t sub_1C643EF98(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1C645CFE4();
  sub_1C645D004();
  if (v2)
  {
    sub_1C645C8E4();
  }

  sub_1C645C8E4();
  return sub_1C645D024();
}

uint64_t sub_1C643F064(uint64_t a1)
{
  v2 = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C643F0C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C643F128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_1C643F190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1C643F210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C643F278@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1C645C354();
    if (v10)
    {
      v11 = sub_1C645C384();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1C645C374();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1C645C354();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C645C384();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C645C374();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1C643F4A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1C643F638(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C6414FE8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1C643F278(v13, a3, a4, &v12);
  v10 = v4;
  sub_1C6414FE8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1C643F638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C645C354();
  v11 = result;
  if (result)
  {
    result = sub_1C645C384();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C645C374();
  sub_1C643F278(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1C643F6F0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1C6416234(a3, a4);
          return sub_1C643F4A8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s11EmailDaemon17SearchableMessageV0A7AddressV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_1C645CF24() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_1C645CF24();
}

BOOL _s11EmailDaemon17SearchableMessageV12InfoFromEMLXV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1C645C674();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C40D0, &unk_1C6472D20);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  if (*a1 != *a2 && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  v33 = type metadata accessor for SearchableMessage.InfoFromEMLX(0);
  v14 = v33[5];
  v15 = *(v11 + 48);
  sub_1C6423890(a1 + v14, v13);
  sub_1C6423890(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C640D570(v13, &qword_1EC1C4050, &unk_1C6472830);
      goto LABEL_11;
    }

LABEL_8:
    sub_1C640D570(v13, &qword_1EC1C40D0, &unk_1C6472D20);
    return 0;
  }

  sub_1C6423890(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1C6440380();
  v18 = sub_1C645C834();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1C640D570(v13, &qword_1EC1C4050, &unk_1C6472830);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v20 = v33;
  v21 = v33[6];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 5)
  {
    if (v23 == 5)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v22 != v23)
  {
    return 0;
  }

LABEL_15:
  if ((sub_1C64422C4(*(a1 + v33[7]), *(a2 + v33[7])) & 1) == 0 || (sub_1C64422C4(*(a1 + v20[8]), *(a2 + v20[8])) & 1) == 0 || (sub_1C64422C4(*(a1 + v20[9]), *(a2 + v20[9])) & 1) == 0 || (sub_1C64422C4(*(a1 + v20[10]), *(a2 + v20[10])) & 1) == 0)
  {
    return 0;
  }

  v24 = v20[11];
  v25 = a1 + v24;
  v27 = *(a1 + v24);
  v26 = *(v25 + 1);
  v28 = (a2 + v24);
  v30 = *v28;
  v29 = v28[1];
  if (v26 >> 60 == 15)
  {
    if (v29 >> 60 == 15)
    {
      sub_1C6434018(v27, *(v25 + 1));
      sub_1C6434018(v30, v29);
      sub_1C641711C(v27, v26);
      return 1;
    }

    goto LABEL_23;
  }

  if (v29 >> 60 == 15)
  {
LABEL_23:
    sub_1C6434018(v27, *(v25 + 1));
    sub_1C6434018(v30, v29);
    sub_1C641711C(v27, v26);
    sub_1C641711C(v30, v29);
    return 0;
  }

  sub_1C6434018(v27, *(v25 + 1));
  sub_1C6434018(v30, v29);
  v31 = sub_1C643F6F0(v27, v26, v30, v29);
  sub_1C641711C(v30, v29);
  sub_1C641711C(v27, v26);
  return v31;
}

unint64_t sub_1C643FD70()
{
  result = qword_1EC1C45D0;
  if (!qword_1EC1C45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45D0);
  }

  return result;
}

unint64_t sub_1C643FDC8()
{
  result = qword_1EC1C45D8;
  if (!qword_1EC1C45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45D8);
  }

  return result;
}

unint64_t sub_1C643FE20()
{
  result = qword_1EC1C45E0;
  if (!qword_1EC1C45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45E0);
  }

  return result;
}

void sub_1C643FE9C(uint64_t a1)
{
  type metadata accessor for SearchableMessage.InfoFromEMLX(319);
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x1E69E6158];
    sub_1C644028C(319, &qword_1EDC939A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1C645C674();
      if (v4 <= 0x3F)
      {
        sub_1C6440044(319);
        if (v5 <= 0x3F)
        {
          sub_1C644028C(319, &qword_1EDC93980, v2, MEMORY[0x1E69E62F8]);
          if (v6 <= 0x3F)
          {
            type metadata accessor for SearchableMessageUpdate(319);
            if (v7 <= 0x3F)
            {
              sub_1C644028C(319, &qword_1EDC93B30, &type metadata for SearchableMessageAttachments, MEMORY[0x1E69E6720]);
              if (v8 <= 0x3F)
              {
                sub_1C64400A8(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C6440044(uint64_t a1)
{
  if (!qword_1EDC939C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1C45E8, "4;\t");
    v1 = sub_1C645CBA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC939C0);
    }
  }
}

void sub_1C64400A8(uint64_t a1)
{
  if (!qword_1EDC93960)
  {
    sub_1C6401D00(255, &qword_1EDC93968, 0x1E699AC48);
    v1 = sub_1C645CBA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC93960);
    }
  }
}

void sub_1C6440158(uint64_t a1)
{
  sub_1C64167FC(319);
  if (v1 <= 0x3F)
  {
    sub_1C644028C(319, &unk_1EDC93D78, &type metadata for SearchableMessage.Priority, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C644028C(319, &qword_1EDC93988, &type metadata for SearchableMessage.EmailAddress, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C644028C(319, &qword_1EDC93E50, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C644028C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C64402E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6440330(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1C6440380()
{
  result = qword_1EC1C40D8;
  if (!qword_1EC1C40D8)
  {
    sub_1C645C674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C40D8);
  }

  return result;
}

unint64_t sub_1C64403EC()
{
  result = qword_1EC1C45F0;
  if (!qword_1EC1C45F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C45F0);
  }

  return result;
}

uint64_t SearchableMessageAttachments.init(names:paths:utis:specificUTIs:mimeTypes:kinds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

Swift::Void __swiftcall SearchableMessageAttachments.addTo(_:)(CSSearchableItemAttributeSet a1)
{
  v36 = sub_1C645C794();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  if (*(*v1 + 16))
  {
    v11 = sub_1C645CA04();
    [(objc_class *)a1.super.isa setAttachmentNames:v11];
  }

  if (*(v6 + 16))
  {
    v12 = sub_1C645CA04();
    [(objc_class *)a1.super.isa setAttachmentPaths:v12];
  }

  if (*(v7 + 16))
  {
    v13 = sub_1C645CA04();
    [(objc_class *)a1.super.isa setMailAttachmentTypes:v13];
  }

  if (*(v9 + 16))
  {
    v14 = sub_1C645CA04();
    [(objc_class *)a1.super.isa setAttachmentTypes:v14];
  }

  v15 = *(v8 + 16);
  if (v15)
  {
    v31 = v10;
    isa = a1.super.isa;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C6440AD0(0, v15, 0);
    v16 = v37;
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v19 = v8 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v33 = *(v17 + 56);
    v34 = v18;
    v35 = v17;
    v20 = (v17 - 8);
    do
    {
      v21 = v36;
      v34(v5, v19, v36);
      v22 = sub_1C645C744();
      v24 = v23;
      (*v20)(v5, v21);
      v37 = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C6440AD0((v25 > 1), v26 + 1, 1);
        v16 = v37;
      }

      *(v16 + 16) = v26 + 1;
      v27 = v16 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v19 += v33;
      --v15;
    }

    while (v15);
    v28 = sub_1C645CA04();

    if (qword_1EC1C3AD0 != -1)
    {
      swift_once();
    }

    a1.super.isa = isa;
    [(objc_class *)isa setValue:v28 forCustomKey:qword_1EC1C45F8];

    v10 = v31;
  }

  if (*(v10 + 16))
  {
    v29 = sub_1C645CA04();
    [(objc_class *)a1.super.isa setMailAttachmentKinds:v29];
  }
}

void sub_1C64407B4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C645C844();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:1 multiValued:1];

  if (v2)
  {
    qword_1EC1C45F8 = v2;
  }

  else
  {
    __break(1u);
  }
}

id static SearchableMessageAttachments.specificUTIsAttribute.getter()
{
  if (qword_1EC1C3AD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC1C45F8;

  return v1;
}

uint64_t SearchableMessageAttachments.names.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  return result;
}

uint64_t SearchableMessageAttachments.paths.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  return result;
}

uint64_t SearchableMessageAttachments.utis.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  return result;
}

uint64_t SearchableMessageAttachments.specificUTIs.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  return result;
}

uint64_t SearchableMessageAttachments.mimeTypes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  return result;
}

uint64_t SearchableMessageAttachments.kinds.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  return result;
}

char *sub_1C6440A90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6440BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6440AB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6440CCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6440AD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6440DD8(a1, a2, a3, *v3);
  *v3 = result;
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

uint64_t sub_1C6440B04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6440B4C(uint64_t result, int a2, int a3)
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

char *sub_1C6440BA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6440EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6440BC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4600, &unk_1C64742F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C6440CCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4458, &unk_1C64742E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6440DD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6440EE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4398, &qword_1C6473848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void sub_1C6440FEC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1C645C844();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:0 multiValued:0];

  qword_1EDC954B0 = v2;
}

uint64_t SearchableMessageAuthenticationState.hashValue.getter()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D80](v1);
  return sub_1C645D024();
}

unint64_t sub_1C6441128()
{
  result = qword_1EC1C4608;
  if (!qword_1EC1C4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4608);
  }

  return result;
}

uint64_t sub_1C644118C(void *a1)
{
  if ([a1 isUserCategorized])
  {
    v2 = [a1 type];
    if ((v2 - 1) < 3)
    {
      v3 = &unk_1C6474404 + 4 * (v2 - 1);
LABEL_6:
      v5 = *v3;
      goto LABEL_8;
    }
  }

  v4 = [a1 subtype];
  if (v4 < 9)
  {
    v3 = &unk_1C6474410 + 4 * v4;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_8:
  if ([a1 isHighImpact])
  {
    return v5 | 0x20;
  }

  else
  {
    return v5;
  }
}

EmailDaemon::SearchableMessageFlags __swiftcall SearchableMessageFlags.init(read:flagged:replied:)(Swift::Bool read, EmailDaemon::SearchableMessageFlags::Color_optional flagged, Swift::Bool replied)
{
  v4 = *flagged.value;
  *v3 = read;
  v3[1] = v4;
  v3[2] = replied;
  result.read = read;
  return result;
}

void sub_1C6441258(void *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [a1 setMailRead_];

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [a1 setMailFlagged_];

  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [a1 setMailRepliedTo_];

  if (v3 != 7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [a1 setMailFlagColor_];
  }
}

EmailDaemon::SearchableMessageFlags::Color_optional __swiftcall SearchableMessageFlags.Color.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SearchableMessageFlags.hash(into:)()
{
  v1 = *(v0 + 1);
  sub_1C645D004();
  sub_1C645D004();
  if (v1 != 7)
  {
    MEMORY[0x1C6958D60](v1);
  }

  return sub_1C645D004();
}

uint64_t SearchableMessageFlags.hashValue.getter()
{
  v1 = *(v0 + 1);
  sub_1C645CFE4();
  sub_1C645D004();
  sub_1C645D004();
  if (v1 != 7)
  {
    MEMORY[0x1C6958D60](v1);
  }

  sub_1C645D004();
  return sub_1C645D024();
}

uint64_t sub_1C6441578(uint64_t a1)
{
  v2 = *(v1 + 1);
  sub_1C645CFE4();
  sub_1C645D004();
  sub_1C645D004();
  if (v2 != 7)
  {
    MEMORY[0x1C6958D60](v2);
  }

  sub_1C645D004();
  return sub_1C645D024();
}

uint64_t _s11EmailDaemon22SearchableMessageFlagsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 7)
  {
    if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v4 == 7 || v3 != v4)
  {
    return 0;
  }

  return a1[2] ^ a2[2] ^ 1u;
}

unint64_t sub_1C644166C()
{
  result = qword_1EC1C4610;
  if (!qword_1EC1C4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4610);
  }

  return result;
}

unint64_t sub_1C64416C4()
{
  result = qword_1EC1C4618;
  if (!qword_1EC1C4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4618);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchableMessageFlags(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchableMessageFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SearchableMessageFlags.Color(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchableMessageFlags.Color(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C6441998(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v6 = sub_1C645C844();
  [a1 setMailConversationID_];

  v7 = sub_1C645CA04();
  [a1 setMailboxIdentifiers_];

  sub_1C6443814();
  v8 = sub_1C645CA04();
  [a1 setMailGMailLabels_];

  v9 = type metadata accessor for SearchableMessageUpdate(0);
  v10 = (v4 + *(v9 + 36));
  v11 = *v10;
  v12 = v10[1];
  LOBYTE(v10) = v10[2];
  LOBYTE(v52.version._countAndFlagsBits) = v11;
  BYTE1(v52.version._countAndFlagsBits) = v12;
  BYTE2(v52.version._countAndFlagsBits) = v10;
  sub_1C6441258(a1);
  v13 = *(v4 + 32);
  if (v13 != 2)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [a1 setLikelyJunk_];
  }

  v50 = a1;
  v15 = sub_1C645C674();
  v49 = &v47;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v9;
  v19 = *(v9 + 32);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v47 - v21;
  sub_1C6401820(v4 + v19, &v47 - v21, &qword_1EC1C4050, &unk_1C6472830);
  if ((*(v16 + 48))(v22, 1, v15) == 1)
  {
    sub_1C640D570(v22, &qword_1EC1C4050, &unk_1C6472830);
    v23 = v50;
  }

  else
  {
    (*(v16 + 32))(v18, v22, v15);
    v24 = sub_1C645C614();
    v23 = v50;
    [v50 setMailDateLastViewed_];

    v25 = sub_1C645C614();
    [v23 setLastUsedDate_];

    (*(v16 + 8))(v18, v15);
  }

  v26 = v51;
  v27 = v4 + *(v51 + 40);
  if (*(v27 + 8))
  {
    goto LABEL_18;
  }

  v28 = *v27;
  if (qword_1EDC93A08 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if (!qword_1EDC954B0)
    {
      goto LABEL_18;
    }

    v29 = qword_1EDC954B0;
    if ((v28 & 0xE08) == 0x408)
    {
      if ((v28 & 0x10) != 0)
      {
        v30 = 0;
        if ((v28 & 0x20) == 0 || (v28 & 0x1C0) == 0xC0 || (v28 & 3) == 1)
        {
          goto LABEL_17;
        }

LABEL_16:
        v30 = 1;
        goto LABEL_17;
      }

      if ((v28 & 0x1C2) == 0x82)
      {
        goto LABEL_16;
      }
    }

    v30 = 0;
LABEL_17:
    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [v23 setValue:v31 forCustomKey:v29];

LABEL_18:
    if (*(v4 + *(v26 + 48) + 8))
    {
      v32 = sub_1C645C844();
    }

    else
    {
      v32 = 0;
    }

    [v23 setMailMessageHeader_];

    if (!*(v4 + *(v26 + 44) + 8))
    {
      return;
    }

    v33 = sub_1C645C844();
    [v23 setMailMessageID_];

    if (!MEMORY[0x1E695A838])
    {
      return;
    }

    v34 = [v23 mailboxIdentifiers];
    v35 = "com_apple_mail_is_authenticated";
    if (!v34)
    {
      break;
    }

    v36 = v34;
    v37 = sub_1C645CA14();

    v28 = (v37 + 40);
    v26 = -*(v37 + 16);
    v38 = -1;
    while (1)
    {
      if (v26 + v38 == -1)
      {
LABEL_32:

LABEL_35:
        v23 = v50;
        goto LABEL_36;
      }

      if (++v38 >= *(v37 + 16))
      {
        break;
      }

      v23 = v35;
      v40 = *(v28 - 1);
      v39 = *v28;
      if (v40 == sub_1C645C874() && v39 == v41)
      {

        goto LABEL_35;
      }

      v28 += 2;
      v43 = sub_1C645CF24();

      v35 = v23;
      if (v43)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_36:
  v44 = v23;
  v45 = v48;

  v46._countAndFlagsBits = v47;
  v46._object = v45;
  MailMessageEntityID.init(using:uniqueIdentifier:)(&v52, v44, v46);

  sub_1C6443914(&v52);
  sub_1C6443968(MEMORY[0x1E69E7CC0]);
  sub_1C645CB24();
}

uint64_t sub_1C6441FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C645CF24() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C6442084(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1C6443814();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1C6958AC0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1C6958AC0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1C645CB64();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1C645CB64();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1C645CC74();
  }

  result = sub_1C645CC74();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C64422C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11 && (sub_1C645CF24() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v12 = v6 == v9 && v7 == v10;
      if (!v12 && (sub_1C645CF24() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t SearchableMessageUpdate.conversationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchableMessageUpdate.conversationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchableMessageUpdate.mailboxIdentifiers.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  return result;
}

uint64_t SearchableMessageUpdate.gmailLabels.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  return result;
}

uint64_t type metadata accessor for SearchableMessageUpdate(uint64_t a1)
{
  result = qword_1EDC93BE8;
  if (!qword_1EDC93BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchableMessageUpdate.dateLastViewed.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SearchableMessageUpdate(0) + 32);

  return sub_1C64239A8(a1, v3);
}

uint64_t SearchableMessageUpdate.flags.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SearchableMessageUpdate(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

uint64_t SearchableMessageUpdate.flags.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  result = type metadata accessor for SearchableMessageUpdate(0);
  v6 = (v1 + *(result + 36));
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  return result;
}

uint64_t SearchableMessageUpdate.authenticationState.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SearchableMessageUpdate(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t SearchableMessageUpdate.authenticationState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for SearchableMessageUpdate(0);
  v5 = v1 + *(result + 40);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t SearchableMessageUpdate.messageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchableMessageUpdate(0) + 44));

  return v1;
}

uint64_t SearchableMessageUpdate.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessageUpdate(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessageUpdate.messageIDHeader.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchableMessageUpdate(0) + 48));

  return v1;
}

uint64_t SearchableMessageUpdate.messageIDHeader.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessageUpdate(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessageUpdate.subjectWithoutPrefix.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchableMessageUpdate(0) + 52));

  return v1;
}

uint64_t SearchableMessageUpdate.subjectWithoutPrefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchableMessageUpdate(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchableMessageUpdate.hash(into:)(uint64_t a1)
{
  v3 = sub_1C645C674();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  sub_1C645C8E4();
  v10 = *(v1 + 16);
  MEMORY[0x1C6958D60](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 40;
    do
    {

      sub_1C645C8E4();

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  sub_1C6442EE8(a1, *(v1 + 24));
  if (*(v1 + 32) != 2)
  {
    sub_1C645D004();
  }

  sub_1C645D004();
  v13 = type metadata accessor for SearchableMessageUpdate(0);
  sub_1C6401820(v1 + v13[8], v9, &qword_1EC1C4050, &unk_1C6472830);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1C645D004();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1C645D004();
    sub_1C6443A98(&qword_1EC1C4570, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1C645C814();
    (*(v4 + 8))(v6, v3);
  }

  v14 = *(v1 + v13[9] + 1);
  sub_1C645D004();
  sub_1C645D004();
  if (v14 != 7)
  {
    MEMORY[0x1C6958D60](v14);
  }

  sub_1C645D004();
  v15 = (v1 + v13[10]);
  if (*(v15 + 8) == 1)
  {
    sub_1C645D004();
  }

  else
  {
    v16 = *v15;
    sub_1C645D004();
    MEMORY[0x1C6958D80](v16);
  }

  if (*(v1 + v13[11] + 8))
  {
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  if (*(v1 + v13[12] + 8))
  {
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  if (!*(v1 + v13[13] + 8))
  {
    return sub_1C645D004();
  }

  sub_1C645D004();
  return sub_1C645C8E4();
}

uint64_t SearchableMessageUpdate.hashValue.getter()
{
  sub_1C645CFE4();
  SearchableMessageUpdate.hash(into:)(v1);
  return sub_1C645D024();
}

uint64_t sub_1C6442E64()
{
  sub_1C645CFE4();
  SearchableMessageUpdate.hash(into:)(v1);
  return sub_1C645D024();
}

uint64_t sub_1C6442EA8(uint64_t a1)
{
  sub_1C645CFE4();
  SearchableMessageUpdate.hash(into:)(v2);
  return sub_1C645D024();
}

void sub_1C6442EE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1C645CC74();
    MEMORY[0x1C6958D60](v8);
    v3 = sub_1C645CC74();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1C6958D60](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1C6958AC0](i, a2);
      sub_1C645CB74();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1C645CB74();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1C6442FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C6958D60](v3);
  if (v3)
  {
    v5 = a2 + 56;
    do
    {
      if (*(v5 - 16))
      {
        sub_1C645D004();

        sub_1C645C8E4();
      }

      else
      {
        sub_1C645D004();
      }

      sub_1C645C8E4();

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s11EmailDaemon23SearchableMessageUpdateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C645C674();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50[-v9 - 6];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C40D0, &unk_1C6472D20);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50[-v12 - 6];
  if (*a1 != *a2 && (sub_1C645CF24() & 1) == 0 || (sub_1C6441FF4(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1C6442084(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }

LABEL_10:
    v49 = type metadata accessor for SearchableMessageUpdate(0);
    v17 = *(v49 + 32);
    v18 = *(v11 + 48);
    sub_1C6401820(a1 + v17, v13, &qword_1EC1C4050, &unk_1C6472830);
    sub_1C6401820(a2 + v17, &v13[v18], &qword_1EC1C4050, &unk_1C6472830);
    v19 = *(v5 + 48);
    if (v19(v13, 1, v4) == 1)
    {
      if (v19(&v13[v18], 1, v4) == 1)
      {
        sub_1C640D570(v13, &qword_1EC1C4050, &unk_1C6472830);
LABEL_17:
        v22 = v49;
        v23 = *(v49 + 36);
        v24 = *(a1 + v23 + 1);
        v25 = *(a1 + v23 + 2);
        v51[0] = *(a1 + v23);
        v51[1] = v24;
        v51[2] = v25;
        v26 = (a2 + v23);
        v27 = *v26;
        v28 = v26[1];
        LOBYTE(v26) = v26[2];
        v50[0] = v27;
        v50[1] = v28;
        v50[2] = v26;
        if (_s11EmailDaemon22SearchableMessageFlagsV2eeoiySbAC_ACtFZ_0(v51, v50))
        {
          v29 = v22[10];
          v30 = (a1 + v29);
          v31 = *(a1 + v29 + 8);
          v32 = (a2 + v29);
          v33 = *(a2 + v29 + 8);
          if (v31)
          {
            if (!v33)
            {
              return 0;
            }
          }

          else
          {
            if (*v30 != *v32)
            {
              LOBYTE(v33) = 1;
            }

            if (v33)
            {
              return 0;
            }
          }

          v34 = v22[11];
          v35 = (a1 + v34);
          v36 = *(a1 + v34 + 8);
          v37 = (a2 + v34);
          v38 = v37[1];
          if (v36)
          {
            if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_1C645CF24() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v38)
          {
            return 0;
          }

          v39 = v22[12];
          v40 = (a1 + v39);
          v41 = *(a1 + v39 + 8);
          v42 = (a2 + v39);
          v43 = v42[1];
          if (v41)
          {
            if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_1C645CF24() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v43)
          {
            return 0;
          }

          v44 = v22[13];
          v45 = (a1 + v44);
          v46 = *(a1 + v44 + 8);
          v47 = (a2 + v44);
          v48 = v47[1];
          if (v46)
          {
            return v48 && (*v45 == *v47 && v46 == v48 || (sub_1C645CF24() & 1) != 0);
          }

          if (!v48)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
      sub_1C6401820(v13, v10, &qword_1EC1C4050, &unk_1C6472830);
      if (v19(&v13[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v13[v18], v4);
        sub_1C6443A98(&qword_1EC1C40D8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v20 = sub_1C645C834();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_1C640D570(v13, &qword_1EC1C4050, &unk_1C6472830);
        if ((v20 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_17;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_1C640D570(v13, &qword_1EC1C40D0, &unk_1C6472D20);
    return 0;
  }

  result = 0;
  if (v15 != 2 && ((v15 ^ v14) & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_1C6443628(uint64_t a1)
{
  sub_1C64438C4(319, &qword_1EDC93980, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6443860(319, &qword_1EDC93978, sub_1C6443814, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C64438C4(319, &qword_1EDC93970, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C6443860(319, &qword_1EDC93E48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C64438C4(319, &unk_1EDC939F8, &type metadata for SearchableMessageAuthenticationState, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C64438C4(319, &qword_1EDC939A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C6443814()
{
  result = qword_1EDC93590;
  if (!qword_1EDC93590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC93590);
  }

  return result;
}

void sub_1C6443860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C64438C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C6443968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4628, &qword_1C6474688);
    v3 = sub_1C645CE24();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C6401820(v4, &v13, &qword_1EC1C4630, &unk_1C6474690);
      v5 = v13;
      v6 = v14;
      result = sub_1C63FDE68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C641ECF0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C6443A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6443AE0(void *a1)
{
  v2 = v1;
  if (*(v1 + 8))
  {
    v4 = sub_1C645C844();
  }

  else
  {
    v4 = 0;
  }

  [a1 setAccountIdentifier_];

  v5 = *(v2 + 16);
  v6 = sub_1C645CA04();
  [a1 setMailboxIdentifiers_];

  v7 = sub_1C645C844();
  [a1 setRelatedUniqueIdentifier_];

  if (*(v2 + 64))
  {
    v8 = sub_1C645C844();
    v9 = sub_1C645C844();
    [a1 setAttribute:v8 forKey:v9];
  }

  v10 = sub_1C645C844();
  v11 = sub_1C645C844();
  [a1 setAttribute:v10 forKey:v11];

  v12 = sub_1C645C844();
  v13 = sub_1C645C844();
  [a1 setAttribute:v12 forKey:v13];

  v14 = type metadata accessor for SearchableRichLink(0);
  v15 = v14;
  v16 = *(v14 + 48);
  v17 = (v2 + v16);
  v18 = *(v2 + v16 + 24);
  if (v18)
  {
    v72 = v5;
    v73 = v14;
    v19 = *v17;
    v20 = v17[1];
    v21 = v17[2];
    v22 = (v2 + v16);
    if (v20)
    {
      sub_1C643A6BC(*v17, v17[1], v17[2], v18);

      v23 = sub_1C645C844();
    }

    else
    {

      v23 = 0;
    }

    v24 = objc_allocWithZone(MEMORY[0x1E6964E50]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4460, &unk_1C64739F0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C6472810;
    *(v25 + 32) = v21;
    *(v25 + 40) = v18;

    sub_1C6423964(v19, v20, v21, v18);
    v26 = sub_1C645CA04();

    v27 = [v24 initWithDisplayName:v23 handles:v26 handleIdentifier:*MEMORY[0x1E695C208]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3D18, &qword_1C6472530);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C6472520;
    *(v28 + 32) = v27;
    sub_1C6444780();
    v18 = sub_1C645CA04();

    v5 = v72;
    v15 = v73;
    v17 = v22;
  }

  [a1 setAuthors_];

  v29 = *(v15 + 40);
  v30 = sub_1C645C614();
  v71 = a1;
  [a1 setContentCreationDate_];

  v74 = sub_1C645C874();
  v75 = v31;
  MEMORY[0x1EEE9AC00](v74);
  v66 = &v74;
  v32 = sub_1C6444358(sub_1C644470C, v65, v5);

  if ((v32 & 1) == 0)
  {
    v74 = sub_1C645C874();
    v75 = v33;
    MEMORY[0x1EEE9AC00](v74);
    v66 = &v74;
    v34 = sub_1C6444358(sub_1C6444EAC, v65, v5);

    if ((v34 & 1) == 0)
    {
      v70 = v29;
      v73 = v15;
      v35 = *(v2 + *(v15 + 52));
      v36 = *(v35 + 16);
      if (v36)
      {
        v68 = 0;
        v69 = v17;
        v72 = v5;
        v74 = MEMORY[0x1E69E7CC0];
        sub_1C6440AD0(0, v36, 0);
        v37 = v74;
        v67 = v35;
        v38 = (v35 + 40);
        v39 = (v35 + 40);
        do
        {
          v41 = *v39;
          v39 += 4;
          v40 = v41;
          if (v41)
          {
            v42 = *(v38 - 1);
            v43 = v40;
          }

          else
          {
            v42 = 0;
            v43 = 0xE000000000000000;
          }

          v74 = v37;
          v45 = *(v37 + 16);
          v44 = *(v37 + 24);

          if (v45 >= v44 >> 1)
          {
            sub_1C6440AD0((v44 > 1), v45 + 1, 1);
            v37 = v74;
          }

          *(v37 + 16) = v45 + 1;
          v46 = v37 + 16 * v45;
          *(v46 + 32) = v42;
          *(v46 + 40) = v43;
          v38 = v39;
          --v36;
        }

        while (v36);
        v47 = v67;
        v48 = *(v67 + 16);
        if (v48)
        {
          v74 = MEMORY[0x1E69E7CC0];
          sub_1C6440AD0(0, v48, 0);
          v49 = v74;
          v50 = (v47 + 56);
          do
          {
            v51 = *(v50 - 1);
            v52 = *v50;
            v74 = v49;
            v53 = *(v49 + 16);
            v54 = *(v49 + 24);

            if (v53 >= v54 >> 1)
            {
              sub_1C6440AD0((v54 > 1), v53 + 1, 1);
              v49 = v74;
            }

            *(v49 + 16) = v53 + 1;
            v55 = v49 + 16 * v53;
            *(v55 + 32) = v51;
            *(v55 + 40) = v52;
            v50 += 4;
            --v48;
          }

          while (v48);
        }

        v5 = v72;
        v17 = v69;
      }

      v74 = sub_1C645C874();
      v75 = v56;
      MEMORY[0x1EEE9AC00](v74);
      v66 = &v74;
      v57 = sub_1C6444358(sub_1C6444EAC, v65, v5);

      if (v57)
      {
        v58 = sub_1C645C614();
        v59 = v71;
        if (v17[3] && v17[1])
        {
        }

        else
        {
        }

        v61 = sub_1C645C844();

        if (v17[3])
        {
        }

        v62 = sub_1C645C844();

        v63 = sub_1C645CA04();

        v64 = sub_1C645CA04();

        [v59 markAsSent:v58 sender:v61 senderHandle:v62 recipients:v63 recipientHandles:v64 transport:{@"com.apple.mail", v67}];
      }

      else
      {
        v58 = sub_1C645C614();
        v60 = v71;
        if (v17[3] && v17[1])
        {
        }

        else
        {
        }

        v61 = sub_1C645C844();

        if (v17[3])
        {
        }

        v62 = sub_1C645C844();

        v63 = sub_1C645CA04();

        v64 = sub_1C645CA04();

        [v60 markAsReceived:v58 sender:v61 senderHandle:v62 recipients:v63 recipientHandles:v64 transport:{@"com.apple.mail", v67}];
      }
    }
  }
}

uint64_t type metadata accessor for SearchableRichLink(uint64_t a1)
{
  result = qword_1EC1C4638;
  if (!qword_1EC1C4638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6444358(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C6444404(uint64_t a1)
{
  if (v1[1])
  {
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  v3 = v1[2];
  MEMORY[0x1C6958D60](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40;
    do
    {

      sub_1C645C8E4();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  sub_1C645C8E4();
  sub_1C645C8E4();
  if (v1[8])
  {
    sub_1C645D004();
    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  sub_1C645C8E4();
  v6 = type metadata accessor for SearchableRichLink(0);
  sub_1C645C674();
  sub_1C64449BC(&qword_1EC1C4570, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C645C814();
  sub_1C645C814();
  v7 = v1 + *(v6 + 48);
  if (*(v7 + 3))
  {
    v8 = *(v7 + 1);
    sub_1C645D004();
    sub_1C645D004();
    if (v8)
    {
      sub_1C645C8E4();
    }

    sub_1C645C8E4();
  }

  else
  {
    sub_1C645D004();
  }

  v9 = *(v1 + *(v6 + 52));

  return sub_1C6442FD8(a1, v9);
}

uint64_t sub_1C6444630()
{
  sub_1C645CFE4();
  sub_1C6444404(v1);
  return sub_1C645D024();
}

uint64_t sub_1C6444674(uint64_t a1)
{
  sub_1C645CFE4();
  sub_1C6444404(v2);
  return sub_1C645D024();
}

uint64_t sub_1C64446B4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C645CF24() & 1;
  }
}

uint64_t sub_1C6444728(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C645CF24() & 1;
  }
}

unint64_t sub_1C6444780()
{
  result = qword_1EDC93598;
  if (!qword_1EDC93598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC93598);
  }

  return result;
}

void sub_1C64447F4(uint64_t a1)
{
  sub_1C6439E90(319, &qword_1EDC939A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C6439E90(319, &qword_1EDC93980, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C645C674();
      if (v3 <= 0x3F)
      {
        sub_1C6439E90(319, &qword_1EDC93E40, &type metadata for SearchableMessage.EmailAddress, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C6439E90(319, &qword_1EDC93988, &type metadata for SearchableMessage.EmailAddress, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C64449BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6444A04(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1C645CF24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((sub_1C6441FF4(a1[2], a2[2]) & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_1C645CF24() & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[8];
  v8 = a2[8];
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v8 || (a1[7] != a2[7] || v7 != v8) && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  if ((a1[9] != a2[9] || a1[10] != a2[10]) && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for SearchableRichLink(0);
  if ((sub_1C645C644() & 1) == 0 || (sub_1C645C644() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v9 + 48);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v14 = *(a1 + v10 + 24);
  v15 = (a2 + v10);
  v17 = *v15;
  v16 = v15[1];
  v19 = v15[2];
  v18 = v15[3];
  if (!v14)
  {
    v38 = v11;
    sub_1C643A6BC(v11, v12, v13, 0);
    if (!v18)
    {
      sub_1C643A6BC(v17, v16, v19, 0);
      v14 = 0;
      v32 = v38;
      goto LABEL_50;
    }

    sub_1C643A6BC(v17, v16, v19, v18);
    v25 = v38;
LABEL_40:
    sub_1C6423964(v25, v12, v13, v14);
    v26 = v17;
    v27 = v16;
    v28 = v19;
    v29 = v18;
LABEL_44:
    sub_1C6423964(v26, v27, v28, v29);
    return 0;
  }

  if (!v18)
  {
    v25 = v11;
    sub_1C643A6BC(v11, v12, v13, v14);
    sub_1C643A6BC(v17, v16, v19, 0);
    sub_1C643A6BC(v25, v12, v13, v14);

    goto LABEL_40;
  }

  if (v12)
  {
    if (!v16 || (v11 != v17 || v12 != v16) && (v37 = v15[2], v20 = v13, v21 = *v15, v22 = v11, v23 = sub_1C645CF24(), v11 = v22, v17 = v21, v13 = v20, v19 = v37, (v23 & 1) == 0))
    {
      v24 = v12;
LABEL_43:
      v30 = v11;
      sub_1C643A6BC(v11, v24, v13, v14);
      sub_1C643A6BC(v17, v16, v19, v18);
      sub_1C643A6BC(v30, v24, v13, v14);
      sub_1C6423964(v17, v16, v19, v18);

      v26 = v30;
      v27 = v12;
      v28 = v13;
      v29 = v14;
      goto LABEL_44;
    }
  }

  else if (v16)
  {
    v24 = 0;
    goto LABEL_43;
  }

  if (v13 == v19 && v14 == v18)
  {
    v32 = v11;
    sub_1C643A6BC(v11, v12, v13, v14);
    sub_1C643A6BC(v17, v16, v13, v14);
    sub_1C643A6BC(v32, v12, v13, v14);
    sub_1C6423964(v17, v16, v13, v14);

LABEL_50:
    sub_1C6423964(v32, v12, v13, v14);
    goto LABEL_51;
  }

  v39 = v11;
  v36 = sub_1C645CF24();
  sub_1C643A6BC(v39, v12, v13, v14);
  sub_1C643A6BC(v17, v16, v19, v18);
  sub_1C643A6BC(v39, v12, v13, v14);
  sub_1C6423964(v17, v16, v19, v18);

  sub_1C6423964(v39, v12, v13, v14);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v33 = *(v9 + 52);
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);

  return sub_1C64422C4(v34, v35);
}

void __swiftcall BatchCounts.init(batchesAttempted:batchesLost:batchesSuccessful:batchesErrored:totalRuntime:)(IndexingAnalytics::BatchCounts *__return_ptr retstr, Swift::Int batchesAttempted, Swift::Int batchesLost, Swift::Int batchesSuccessful, Swift::Int batchesErrored, Swift::Int totalRuntime)
{
  retstr->batchesAttempted = batchesAttempted;
  retstr->batchesLost = batchesLost;
  retstr->batchesSuccessful = batchesSuccessful;
  retstr->batchesErrored = batchesErrored;
  retstr->totalRuntime = totalRuntime;
}

uint64_t BatchCounts.batchesFailed.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t BatchCounts.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return MEMORY[0x1C6958D60](v4);
}

uint64_t BatchCounts.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return sub_1C645D024();
}

uint64_t sub_1C64450D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return sub_1C645D024();
}

uint64_t sub_1C6445168()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return MEMORY[0x1C6958D60](v4);
}

uint64_t sub_1C64451CC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  return sub_1C645D024();
}

unint64_t sub_1C64452A0()
{
  result = qword_1EC1C4650;
  if (!qword_1EC1C4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4650);
  }

  return result;
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

uint64_t sub_1C6445308(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6445328(uint64_t result, int a2, int a3)
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

void __swiftcall ItemCounts.init(donationsIdentified:donationsLost:donationsAttempted:donationsSuccessful:retriesAttempted:retriesSuccessful:donationsEvictedFromQueue:)(IndexingAnalytics::ItemCounts *__return_ptr retstr, Swift::Int donationsIdentified, Swift::Int donationsLost, Swift::Int donationsAttempted, Swift::Int donationsSuccessful, Swift::Int retriesAttempted, Swift::Int retriesSuccessful, Swift::Int donationsEvictedFromQueue)
{
  retstr->donationsIdentified = donationsIdentified;
  retstr->donationsLost = donationsLost;
  retstr->donationsAttempted = donationsAttempted;
  retstr->donationsSuccessful = donationsSuccessful;
  retstr->retriesAttempted = retriesAttempted;
  retstr->retriesSuccessful = retriesSuccessful;
  retstr->donationsEvictedFromQueue = donationsEvictedFromQueue;
}

uint64_t ItemCounts.donationsFailed.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t ItemCounts.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return MEMORY[0x1C6958D60](v6);
}

uint64_t ItemCounts.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  MEMORY[0x1C6958D60](v7);
  return sub_1C645D024();
}

uint64_t sub_1C6445620()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return MEMORY[0x1C6958D60](v6);
}

uint64_t sub_1C64456A0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  MEMORY[0x1C6958D60](v7);
  MEMORY[0x1C6958D60](v8);
  return sub_1C645D024();
}

void __swiftcall ItemCounts.init()(IndexingAnalytics::ItemCounts *__return_ptr retstr)
{
  retstr->donationsEvictedFromQueue = 0;
  *&retstr->donationsAttempted = 0u;
  *&retstr->retriesAttempted = 0u;
  *&retstr->donationsIdentified = 0u;
}

void *static ItemCounts.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2[1];
  v4 = result[1];
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result[2];
  v8 = a2[2];
  v5 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result[3];
  v11 = a2[3];
  v5 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result[4];
  v14 = a2[4];
  v5 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = result[5];
  v17 = a2[5];
  v5 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result[6];
  v20 = a2[6];
  v5 = __OFADD__(v19, v20);
  v21 = v19 + v20;
  if (!v5)
  {
    *a3 = *result + *a2;
    a3[1] = v6;
    a3[2] = v9;
    a3[3] = v12;
    a3[4] = v15;
    a3[5] = v18;
    a3[6] = v21;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

BOOL _s17IndexingAnalytics10ItemCountsV2eeoiySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0] && a1[2].i64[1] == a2[2].i64[1])
  {
    return a1[3].i64[0] == a2[3].i64[0];
  }

  return result;
}

unint64_t sub_1C6445870()
{
  result = qword_1EC1C4658;
  if (!qword_1EC1C4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4658);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C64458E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6445900(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
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

  *(result + 56) = v3;
  return result;
}

IndexingAnalytics::TimeValues __swiftcall TimeValues.init(mean:median:p95:)(Swift::Int mean, Swift::Int median, Swift::Int p95)
{
  *v3 = mean;
  v3[1] = median;
  v3[2] = p95;
  result.p95 = p95;
  result.median = median;
  result.mean = mean;
  return result;
}

uint64_t TimeValues.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  return MEMORY[0x1C6958D60](v2);
}

uint64_t TimeValues.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

uint64_t sub_1C6445AC8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

uint64_t sub_1C6445B34()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  return MEMORY[0x1C6958D60](v2);
}

uint64_t sub_1C6445B7C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  return sub_1C645D024();
}

__n128 ItemTimes.timeToPartialDonation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.timeToPartialDonation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.partialDonationsInQueueAge.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.partialDonationsInQueueAge.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

__n128 ItemTimes.timeToFullDonation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u64[0];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.timeToFullDonation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.fullDonationsInQueueAge.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 88);
  result = *(v1 + 72);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.fullDonationsInQueueAge.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v2;
  return result;
}

__n128 ItemTimes.timeToDroppedDonation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[7].n128_u64[0];
  result = v1[6];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.timeToDroppedDonation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.droppedDonationsInQueueAge.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 136);
  result = *(v1 + 120);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.droppedDonationsInQueueAge.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v2;
  return result;
}

__n128 ItemTimes.timeToUpdate.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[10].n128_u64[0];
  result = v1[9];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.timeToUpdate.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v1[9] = *a1;
  v1[10].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.updatesInQueueAge.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 184);
  result = *(v1 + 168);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.updatesInQueueAge.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v2;
  return result;
}

__n128 ItemTimes.timeToRedonation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[13].n128_u64[0];
  result = v1[12];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.timeToRedonation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v1[12] = *a1;
  v1[13].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.redonationsInQueueAge.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 232);
  result = *(v1 + 216);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 ItemTimes.redonationsInQueueAge.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 216) = *a1;
  *(v1 + 232) = v2;
  return result;
}

void __swiftcall ItemTimes.init(timeToPartialDonation:partialDonationsInQueueAge:timeToFullDonation:fullDonationsInQueueAge:timeToDroppedDonation:droppedDonationsInQueueAge:timeToUpdate:updatesInQueueAge:timeToRedonation:redonationsInQueueAge:)(IndexingAnalytics::ItemTimes *__return_ptr retstr, IndexingAnalytics::TimeValues timeToPartialDonation, IndexingAnalytics::TimeValues partialDonationsInQueueAge, IndexingAnalytics::TimeValues timeToFullDonation, IndexingAnalytics::TimeValues fullDonationsInQueueAge, IndexingAnalytics::TimeValues timeToDroppedDonation, IndexingAnalytics::TimeValues droppedDonationsInQueueAge, IndexingAnalytics::TimeValues timeToUpdate, IndexingAnalytics::TimeValues updatesInQueueAge, IndexingAnalytics::TimeValues timeToRedonation, IndexingAnalytics::TimeValues redonationsInQueueAge)
{
  v11 = *(timeToPartialDonation.mean + 16);
  v12 = *(timeToPartialDonation.median + 16);
  v13 = *(timeToPartialDonation.p95 + 16);
  v14 = *(partialDonationsInQueueAge.mean + 16);
  v15 = *(partialDonationsInQueueAge.median + 16);
  v16 = *(partialDonationsInQueueAge.p95 + 16);
  v17 = *(timeToFullDonation.mean + 16);
  v18 = *(timeToFullDonation.median + 16);
  v19 = *(timeToFullDonation.p95 + 16);
  v20 = *(fullDonationsInQueueAge.mean + 16);
  *&retstr->timeToPartialDonation.mean = *timeToPartialDonation.mean;
  retstr->timeToPartialDonation.p95 = v11;
  *&retstr->partialDonationsInQueueAge.mean = *timeToPartialDonation.median;
  retstr->partialDonationsInQueueAge.p95 = v12;
  *&retstr->timeToFullDonation.mean = *timeToPartialDonation.p95;
  retstr->timeToFullDonation.p95 = v13;
  *&retstr->fullDonationsInQueueAge.mean = *partialDonationsInQueueAge.mean;
  retstr->fullDonationsInQueueAge.p95 = v14;
  *&retstr->timeToDroppedDonation.mean = *partialDonationsInQueueAge.median;
  retstr->timeToDroppedDonation.p95 = v15;
  *&retstr->droppedDonationsInQueueAge.mean = *partialDonationsInQueueAge.p95;
  retstr->droppedDonationsInQueueAge.p95 = v16;
  *&retstr->timeToUpdate.mean = *timeToFullDonation.mean;
  retstr->timeToUpdate.p95 = v17;
  *&retstr->updatesInQueueAge.mean = *timeToFullDonation.median;
  retstr->updatesInQueueAge.p95 = v18;
  *&retstr->timeToRedonation.mean = *timeToFullDonation.p95;
  retstr->timeToRedonation.p95 = v19;
  *&retstr->redonationsInQueueAge.mean = *fullDonationsInQueueAge.mean;
  retstr->redonationsInQueueAge.p95 = v20;
}

uint64_t ItemTimes.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[16];
  v18 = v0[17];
  v19 = v0[18];
  v20 = v0[19];
  v21 = v0[20];
  v22 = v0[21];
  v23 = v0[22];
  v24 = v0[23];
  v25 = v0[24];
  v26 = v0[25];
  v27 = v0[26];
  v28 = v0[27];
  v29 = v0[28];
  v30 = v0[29];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v6);
  MEMORY[0x1C6958D60](v7);
  MEMORY[0x1C6958D60](v9);
  MEMORY[0x1C6958D60](v8);
  MEMORY[0x1C6958D60](v11);
  MEMORY[0x1C6958D60](v12);
  MEMORY[0x1C6958D60](v13);
  MEMORY[0x1C6958D60](v14);
  MEMORY[0x1C6958D60](v15);
  MEMORY[0x1C6958D60](v16);
  MEMORY[0x1C6958D60](v17);
  MEMORY[0x1C6958D60](v18);
  MEMORY[0x1C6958D60](v19);
  MEMORY[0x1C6958D60](v20);
  MEMORY[0x1C6958D60](v21);
  MEMORY[0x1C6958D60](v22);
  MEMORY[0x1C6958D60](v23);
  MEMORY[0x1C6958D60](v24);
  MEMORY[0x1C6958D60](v25);
  MEMORY[0x1C6958D60](v26);
  MEMORY[0x1C6958D60](v27);
  MEMORY[0x1C6958D60](v28);
  MEMORY[0x1C6958D60](v29);
  return MEMORY[0x1C6958D60](v30);
}

uint64_t ItemTimes.hashValue.getter()
{
  sub_1C645CFE4();
  ItemTimes.hash(into:)();
  return sub_1C645D024();
}

uint64_t sub_1C644617C()
{
  sub_1C645CFE4();
  ItemTimes.hash(into:)();
  return sub_1C645D024();
}

uint64_t sub_1C64461C0(uint64_t a1)
{
  sub_1C645CFE4();
  ItemTimes.hash(into:)();
  return sub_1C645D024();
}

BOOL _s17IndexingAnalytics9ItemTimesV2eeoiySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  result = 0;
  if (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])), vuzp1q_s32(vceqq_s64(a1[2], a2[2]), vceqq_s64(a1[3], a2[3]))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(a1[4], a2[4]), vceqq_s64(a1[5], a2[5])), vuzp1q_s32(vceqq_s64(a1[6], a2[6]), vceqq_s64(a1[7], a2[7]))))))
  {
    v4 = vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(a1[8], a2[8]), vceqq_s64(a1[9], a2[9])), vuzp1q_s32(vceqq_s64(a1[10], a2[10]), vceqq_s64(a1[11], a2[11]))), xmmword_1C6474890)) != 255 || a1[12].i64[0] != a2[12].i64[0];
    v5 = v4 || a1[12].i64[1] != a2[12].i64[1];
    if (!v5 && a1[13].i64[0] == a2[13].i64[0])
    {
      return a1[13].i64[1] == a2[13].i64[1] && a1[14].i64[0] == a2[14].i64[0] && a1[14].i64[1] == a2[14].i64[1];
    }
  }

  return result;
}

unint64_t sub_1C6446318()
{
  result = qword_1EC1C4660;
  if (!qword_1EC1C4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4660);
  }

  return result;
}

unint64_t sub_1C6446370()
{
  result = qword_1EC1C4668;
  if (!qword_1EC1C4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4668);
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

uint64_t getEnumTagSinglePayload for TimeValues(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeValues(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1C6446478(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 240))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6446498(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0;
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

  *(result + 240) = v3;
  return result;
}

uint64_t Batch.ID.hashValue.getter()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t sub_1C64465D0()
{
  v1 = *v0;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t sub_1C6446644(uint64_t a1)
{
  v2 = *v1;
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t Batch.Error.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Batch.Error.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

IndexingAnalytics::Batch::Error __swiftcall Batch.Error.init(domain:code:)(Swift::String domain, Swift::Int code)
{
  *v2 = domain;
  v2[1]._countAndFlagsBits = code;
  result.domain = domain;
  result.code = code;
  return result;
}

BOOL static Batch.Error.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1C645CF24();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t Batch.Error.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C645C8E4();
  return MEMORY[0x1C6958D60](v2);
}

uint64_t Batch.Error.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t sub_1C6446844()
{
  v1 = *(v0 + 16);
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](v1);
  return sub_1C645D024();
}

uint64_t sub_1C64468A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C645C8E4();
  return MEMORY[0x1C6958D60](v2);
}

uint64_t sub_1C64468E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C645CFE4();
  sub_1C645C8E4();
  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

BOOL sub_1C6446940(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1C645CF24();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

IndexingAnalytics::Batch::FailureReason_optional __swiftcall Batch.FailureReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C645CE64();

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

uint64_t Batch.FailureReason.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 1953722220;
  }
}

uint64_t sub_1C6446A34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = 1953722220;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = 1953722220;
  }

  if (*a2)
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
    v8 = sub_1C645CF24();
  }

  return v8 & 1;
}

uint64_t sub_1C6446AD4@<X0>(char *a2@<X8>)
{
  v3 = sub_1C645CE64();

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

void sub_1C6446B34(uint64_t *a1@<X8>)
{
  v2 = 1953722220;
  if (*v1)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6446B6C()
{
  sub_1C645CFE4();
  sub_1C645C8E4();

  return sub_1C645D024();
}

uint64_t sub_1C6446BE8(uint64_t a1)
{
  sub_1C645C8E4();
}

uint64_t sub_1C6446C50(uint64_t a1)
{
  sub_1C645CFE4();
  sub_1C645C8E4();

  return sub_1C645D024();
}

double Batch.Outcome.error.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Batch.Outcome(0) + 20);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);

  return result;
}

__n128 Batch.Outcome.error.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for Batch.Outcome(0) + 20));

  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

__n128 Batch.Outcome.init(timestamp:error:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *a2;
  v5 = a2[1].n128_u64[0];
  v6 = (a3 + *(type metadata accessor for Batch.Outcome(0) + 20));
  v7 = sub_1C645C674();
  v6->n128_u64[1] = 0;
  v6[1].n128_u64[0] = 0;
  v6->n128_u64[0] = 0;
  (*(*(v7 - 8) + 32))(a3, a1, v7);

  result = v9;
  *v6 = v9;
  v6[1].n128_u64[0] = v5;
  return result;
}

uint64_t Batch.Outcome.hash(into:)(uint64_t a1)
{
  sub_1C645C674();
  sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C645C814();
  v2 = v1 + *(type metadata accessor for Batch.Outcome(0) + 20);
  if (!*(v2 + 8))
  {
    return sub_1C645D004();
  }

  v3 = *(v2 + 16);
  sub_1C645D004();
  sub_1C645C8E4();
  return MEMORY[0x1C6958D60](v3);
}

uint64_t Batch.Outcome.hashValue.getter()
{
  sub_1C645CFE4();
  sub_1C645C674();
  sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C645C814();
  v1 = v0 + *(type metadata accessor for Batch.Outcome(0) + 20);
  if (*(v1 + 8))
  {
    v2 = *(v1 + 16);
    sub_1C645D004();
    sub_1C645C8E4();
    MEMORY[0x1C6958D60](v2);
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C645D024();
}

uint64_t sub_1C6447068(uint64_t a1)
{
  sub_1C645CFE4();
  sub_1C645C674();
  sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C645C814();
  v3 = v1 + *(a1 + 20);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 16);
    sub_1C645D004();
    sub_1C645C8E4();
    MEMORY[0x1C6958D60](v4);
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C645D024();
}

uint64_t sub_1C644714C(uint64_t a1, uint64_t a2)
{
  sub_1C645C674();
  sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C645C814();
  v4 = v2 + *(a2 + 20);
  if (!*(v4 + 8))
  {
    return sub_1C645D004();
  }

  v5 = *(v4 + 16);
  sub_1C645D004();
  sub_1C645C8E4();
  return MEMORY[0x1C6958D60](v5);
}

uint64_t sub_1C644721C(uint64_t a1, uint64_t a2)
{
  sub_1C645CFE4();
  sub_1C645C674();
  sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C645C814();
  v4 = v2 + *(a2 + 20);
  if (*(v4 + 8))
  {
    v5 = *(v4 + 16);
    sub_1C645D004();
    sub_1C645C8E4();
    MEMORY[0x1C6958D60](v5);
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C645D024();
}

IndexingAnalytics::Batch::Counts __swiftcall Batch.Counts.init()()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  return result;
}

IndexingAnalytics::Batch::Counts __swiftcall Batch.Counts.init(messages:attachments:richLinks:)(Swift::Int messages, Swift::Int attachments, Swift::Int richLinks)
{
  *v3 = messages;
  v3[1] = attachments;
  v3[2] = richLinks;
  result.richLinks = richLinks;
  result.attachments = attachments;
  result.messages = messages;
  return result;
}

uint64_t Batch.Counts.items.getter()
{
  v1 = v0[1];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = v0[2];
  result = v2 + v3;
  if (__OFADD__(v2, v3))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Batch.Counts.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  return MEMORY[0x1C6958D60](v2);
}

uint64_t Batch.Counts.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

uint64_t _s17IndexingAnalytics5BatchV7OutcomeV9timestamp10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C645C674();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s17IndexingAnalytics5BatchV7OutcomeV9timestamp10Foundation4DateVvs_0(uint64_t a1)
{
  v3 = sub_1C645C674();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 Batch.counts.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Batch(0) + 20));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

__n128 Batch.counts.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for Batch(0) + 20));
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t Batch.outcome.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Batch(0) + 24);

  return sub_1C64484E8(v3, a1);
}

uint64_t Batch.outcome.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Batch(0) + 24);

  return sub_1C6448558(a1, v3);
}

uint64_t Batch.init(startedAt:counts:outcome:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = *a2;
  v7 = *(a2 + 2);
  v8 = type metadata accessor for Batch(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for Batch.Outcome(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = sub_1C645C674();
  (*(*(v11 - 8) + 32))(a4, a1, v11);
  v12 = a4 + *(v8 + 20);
  *v12 = v14;
  *(v12 + 16) = v7;

  return sub_1C6448558(a3, a4 + v9);
}

uint64_t Batch.runtime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_1C645C674();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Batch(0);
  sub_1C64484E8(v0 + *(v8 + 24), v3);
  v9 = type metadata accessor for Batch.Outcome(0);
  if ((*(*(v9 - 8) + 48))(v3, 1, v9) == 1)
  {
    sub_1C640D570(v3, &qword_1EC1C4670, "~3\t");
    return 0;
  }

  else
  {
    (*(v5 + 16))(v7, v3, v4);
    sub_1C64485C8(v3);
    sub_1C645C5F4();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    return v12;
  }
}

uint64_t Batch.endedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Batch(0);
  sub_1C64484E8(v1 + *(v6 + 24), v5);
  v7 = type metadata accessor for Batch.Outcome(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1C640D570(v5, &qword_1EC1C4670, "~3\t");
    v8 = sub_1C645C674();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    v10 = sub_1C645C674();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a1, v5, v10);
    sub_1C64485C8(v5);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }
}

uint64_t Batch.failureReason.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = *(type metadata accessor for Batch(0) + 24);
  sub_1C64484E8(v1 + v12, v8);
  v13 = type metadata accessor for Batch.Outcome(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v8, 1, v13) != 1)
  {
    v22 = a1;
    v18 = sub_1C645C674();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v11, v8, v18);
    sub_1C64485C8(v8);
    (*(v19 + 56))(v11, 0, 1, v18);
    sub_1C640D570(v11, &qword_1EC1C4050, &unk_1C6472830);
    sub_1C64484E8(v1 + v12, v6);
    if (v14(v6, 1, v13) == 1)
    {
      result = sub_1C640D570(v6, &qword_1EC1C4670, "~3\t");
    }

    else
    {
      v20 = *&v6[*(v13 + 20) + 8];

      result = sub_1C64485C8(v6);
      if (v20)
      {

        v17 = 1;
LABEL_8:
        a1 = v22;
        goto LABEL_9;
      }
    }

    v17 = 2;
    goto LABEL_8;
  }

  sub_1C640D570(v8, &qword_1EC1C4670, "~3\t");
  v15 = sub_1C645C674();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  result = sub_1C640D570(v11, &qword_1EC1C4050, &unk_1C6472830);
  v17 = 0;
LABEL_9:
  *a1 = v17;
  return result;
}

uint64_t Batch.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Batch(0);
  sub_1C64484E8(v1 + *(v6 + 24), v5);
  v7 = type metadata accessor for Batch.Outcome(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    result = sub_1C640D570(v5, &qword_1EC1C4670, "~3\t");
    v9 = 0;
    v10 = 0uLL;
  }

  else
  {
    v11 = &v5[*(v7 + 20)];
    v9 = *v11;
    v12 = *(v11 + 8);

    result = sub_1C64485C8(v5);
    v10 = v12;
  }

  *a1 = v9;
  *(a1 + 8) = v10;
  return result;
}

uint64_t Batch.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for Batch.Outcome(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_1C645C674();
  v17[0] = sub_1C6448A9C(&qword_1EC1C4570, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v17[1] = v9;
  sub_1C645C814();
  v10 = type metadata accessor for Batch(0);
  v11 = (v1 + *(v10 + 20));
  v12 = v11[1];
  v13 = v11[2];
  MEMORY[0x1C6958D60](*v11);
  MEMORY[0x1C6958D60](v12);
  MEMORY[0x1C6958D60](v13);
  sub_1C64484E8(v1 + *(v10 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1C645D004();
  }

  sub_1C64488E8(v8, v5);
  sub_1C645D004();
  sub_1C645C814();
  v15 = &v5[*(v2 + 20)];
  if (*(v15 + 1))
  {
    v16 = *(v15 + 2);
    sub_1C645D004();
    sub_1C645C8E4();
    MEMORY[0x1C6958D60](v16);
  }

  else
  {
    sub_1C645D004();
  }

  return sub_1C64485C8(v5);
}

uint64_t Batch.hashValue.getter()
{
  sub_1C645CFE4();
  Batch.hash(into:)(v1);
  return sub_1C645D024();
}

uint64_t sub_1C64482B4()
{
  sub_1C645CFE4();
  Batch.hash(into:)(v1);
  return sub_1C645D024();
}

uint64_t sub_1C64482F8(uint64_t a1)
{
  sub_1C645CFE4();
  Batch.hash(into:)(v2);
  return sub_1C645D024();
}

IndexingAnalytics::Batch::Error __swiftcall Batch.Error.init(_:)(NSError *a1)
{
  v3 = v1;
  v4 = [(NSError *)a1 domain];
  v5 = sub_1C645C874();
  v7 = v6;

  *v3 = v5;
  v3[1] = v7;
  v8 = [(NSError *)a1 code];

  v3[2] = v8;
  result.code = v11;
  result.domain._object = v10;
  result.domain._countAndFlagsBits = v9;
  return result;
}

BOOL _s17IndexingAnalytics5BatchV7OutcomeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1C645C644() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Batch.Outcome(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = v5[2];
      v10 = v7[2];
      if (*v5 == *v7 && v6 == v8)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v12 = sub_1C645CF24();
        swift_bridgeObjectRetain_n();
        if ((v12 & 1) == 0)
        {
          swift_bridgeObjectRelease_n();
          return 0;
        }
      }

      swift_bridgeObjectRelease_n();
      return v9 == v10;
    }

LABEL_11:

    return 0;
  }

  if (v8)
  {
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_1C64484E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6448558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C64485C8(uint64_t a1)
{
  v2 = type metadata accessor for Batch.Outcome(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s17IndexingAnalytics5BatchV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Batch.Outcome(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4670, "~3\t");
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C46D8, "J0\t");
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  if ((sub_1C645C644() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for Batch(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = *(a1 + v15 + 16);
  v19 = (a2 + v15);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v16 == v20 && v17 == v21;
  if (!v23 || v18 != v22)
  {
    return 0;
  }

  v25 = *(v14 + 24);
  v26 = *(v11 + 48);
  sub_1C64484E8(a1 + v25, v13);
  sub_1C64484E8(a2 + v25, &v13[v26]);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_1C640D570(v13, &qword_1EC1C4670, "~3\t");
      return 1;
    }

    goto LABEL_15;
  }

  sub_1C64484E8(v13, v10);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    sub_1C64485C8(v10);
LABEL_15:
    sub_1C640D570(v13, &qword_1EC1C46D8, "J0\t");
    return 0;
  }

  sub_1C64488E8(&v13[v26], v7);
  v29 = _s17IndexingAnalytics5BatchV7OutcomeV2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1C64485C8(v7);
  sub_1C64485C8(v10);
  sub_1C640D570(v13, &qword_1EC1C4670, "~3\t");
  return v29;
}

uint64_t sub_1C64488E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Batch.Outcome(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6448950()
{
  result = qword_1EC1C4678;
  if (!qword_1EC1C4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4678);
  }

  return result;
}

unint64_t sub_1C64489A8()
{
  result = qword_1EC1C4680;
  if (!qword_1EC1C4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4680);
  }

  return result;
}

unint64_t sub_1C6448A00()
{
  result = qword_1EC1C4688;
  if (!qword_1EC1C4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4688);
  }

  return result;
}

uint64_t sub_1C6448A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C6448AE8()
{
  result = qword_1EC1C4698;
  if (!qword_1EC1C4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4698);
  }

  return result;
}

void sub_1C6448BAC(uint64_t a1)
{
  sub_1C645C674();
  if (v1 <= 0x3F)
  {
    sub_1C6448C38(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6448C38(uint64_t a1)
{
  if (!qword_1EC1C46B8)
  {
    type metadata accessor for Batch.Outcome(255);
    v1 = sub_1C645CBA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1C46B8);
    }
  }
}

uint64_t sub_1C6448CA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C6448CE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Batch.FailureReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Batch.FailureReason(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C6448EB0(uint64_t a1)
{
  sub_1C645C674();
  if (v1 <= 0x3F)
  {
    sub_1C6448F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6448F34()
{
  if (!qword_1EC1C46D0)
  {
    v0 = sub_1C645CBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1C46D0);
    }
  }
}

BOOL static ItemEvent.DonationReason.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

uint64_t ItemEvent.DonationReason.hash(into:)(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else if (a2 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    v2 = a2 & 1;
  }

  return MEMORY[0x1C6958D60](v2);
}

uint64_t ItemEvent.DonationReason.hashValue.getter(char a1)
{
  sub_1C645CFE4();
  if (a1 == 2)
  {
    v2 = 1;
  }

  else if (a1 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    v2 = a1 & 1;
  }

  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t sub_1C644910C()
{
  v1 = *v0;
  sub_1C645CFE4();
  if (v1 == 2)
  {
    v2 = 1;
  }

  else if (v1 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    v2 = v1 & 1;
  }

  MEMORY[0x1C6958D60](v2);
  return sub_1C645D024();
}

uint64_t sub_1C6449180()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 1;
  }

  else if (v1 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    v2 = v1 & 1;
  }

  return MEMORY[0x1C6958D60](v2);
}

uint64_t sub_1C64491D8(uint64_t a1)
{
  v2 = *v1;
  sub_1C645CFE4();
  if (v2 == 2)
  {
    v3 = 1;
  }

  else if (v2 == 3)
  {
    v3 = 2;
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    v3 = v2 & 1;
  }

  MEMORY[0x1C6958D60](v3);
  return sub_1C645D024();
}

BOOL sub_1C6449248(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 2;
  v5 = v3 == 3;
  v6 = v3 & 0xFE;
  v7 = ((v3 ^ v2) & 1) == 0;
  if (v6 == 2)
  {
    v7 = 0;
  }

  if (v2 == 3)
  {
    v7 = v5;
  }

  if (v2 == 2)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t _s17IndexingAnalytics9ItemEventO12AvailabilityO9hashValueSivg_0(char a1)
{
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](a1 & 1);
  return sub_1C645D024();
}

uint64_t ItemEvent.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = a2;
  v3 = a2;
  if (HIBYTE(a2) <= 1u)
  {
    if (HIBYTE(a2))
    {
      MEMORY[0x1C6958D60](2);
LABEL_15:
      v4 = v2 & 1;
      return MEMORY[0x1C6958D60](v4);
    }

    MEMORY[0x1C6958D60](0);
    if (v3 == 2)
    {
      v4 = 1;
      return MEMORY[0x1C6958D60](v4);
    }

    if (v3 == 3)
    {
      v4 = 2;
      return MEMORY[0x1C6958D60](v4);
    }

    v5 = 0;
LABEL_14:
    MEMORY[0x1C6958D60](v5);
    goto LABEL_15;
  }

  if (HIBYTE(a2) == 2)
  {
    v5 = 3;
    goto LABEL_14;
  }

  if (a2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return MEMORY[0x1C6958D60](v4);
}

uint64_t ItemEvent.hashValue.getter(__int16 a1)
{
  sub_1C645CFE4();
  ItemEvent.hash(into:)(v3, a1);
  return sub_1C645D024();
}

uint64_t sub_1C64493C4()
{
  v1 = *v0;
  sub_1C645CFE4();
  ItemEvent.hash(into:)(v3, v1);
  return sub_1C645D024();
}

uint64_t sub_1C6449414(uint64_t a1)
{
  v2 = *v1;
  sub_1C645CFE4();
  ItemEvent.hash(into:)(v4, v2);
  return sub_1C645D024();
}

uint64_t Int.init(_:)(char a1)
{
  v1 = 4;
  if (a1 != 3)
  {
    v1 = (a1 & 1u) + 1;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

BOOL _s17IndexingAnalytics9ItemEventO2eeoiySbAC_ACtFZ_0(int a1, int a2)
{
  if (BYTE1(a1) <= 1u)
  {
    if (!BYTE1(a1))
    {
      if (!BYTE1(a2))
      {
        if (a1 == 2)
        {
          if (a2 == 2)
          {
            return 1;
          }
        }

        else if (a1 == 3)
        {
          if (a2 == 3)
          {
            return 1;
          }
        }

        else if ((a2 & 0xFE) != 2 && ((a2 ^ a1) & 1) == 0)
        {
          return 1;
        }
      }

      return 0;
    }

    if (BYTE1(a2) != 1)
    {
      return 0;
    }

    return ((a2 ^ a1) & 1) == 0;
  }

  if (BYTE1(a1) != 2)
  {
    if (a1)
    {
      if (BYTE1(a2) == 3 && a2 == 1)
      {
        return 1;
      }
    }

    else if (BYTE1(a2) == 3 && !a2)
    {
      return 1;
    }

    return 0;
  }

  if (BYTE1(a2) == 2)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  return 0;
}

unint64_t sub_1C6449568()
{
  result = qword_1EC1C46E0;
  if (!qword_1EC1C46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C46E0);
  }

  return result;
}

unint64_t sub_1C64495C0()
{
  result = qword_1EC1C46E8;
  if (!qword_1EC1C46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C46E8);
  }

  return result;
}

unint64_t sub_1C6449618()
{
  result = qword_1EC1C46F0;
  if (!qword_1EC1C46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C46F0);
  }

  return result;
}

unint64_t sub_1C6449670()
{
  result = qword_1EC1C46F8;
  if (!qword_1EC1C46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C46F8);
  }

  return result;
}

unint64_t sub_1C64496C8()
{
  result = qword_1EC1C4700;
  if (!qword_1EC1C4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4700);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C6449870(unsigned __int8 *a1)
{
  if (a1[1] <= 2u)
  {
    return a1[1];
  }

  else
  {
    return *a1 + 3;
  }
}

_BYTE *sub_1C6449888(_BYTE *result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  result[1] = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ItemEvent.DonationReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ItemEvent.DonationReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C6449A18(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C6449A2C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void __swiftcall BatchRates.init(batchSuccessRate:batchFailureRate:batchAverageRuntime:batchLossRate:batchErrorRate:)(IndexingAnalytics::BatchRates *__return_ptr retstr, Swift::Int batchSuccessRate, Swift::Int batchFailureRate, Swift::Int batchAverageRuntime, Swift::Int batchLossRate, Swift::Int batchErrorRate)
{
  retstr->batchSuccessRate = batchSuccessRate;
  retstr->batchFailureRate = batchFailureRate;
  retstr->batchAverageRuntime = batchAverageRuntime;
  retstr->batchLossRate = batchLossRate;
  retstr->batchErrorRate = batchErrorRate;
}

uint64_t BatchRates.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  return MEMORY[0x1C6958D60](v4);
}

uint64_t BatchRates.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  return sub_1C645D024();
}

void __swiftcall BatchRates.init(_:)(IndexingAnalytics::BatchRates *__return_ptr retstr, IndexingAnalytics::BatchCounts *a2)
{
  v3 = *&a2->batchesSuccessful;
  v31[0] = *&a2->batchesAttempted;
  v31[1] = v3;
  totalRuntime = a2->totalRuntime;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_1C6449E70(KeyPath, v5, v31);
  v8 = v7;

  if (v8)
  {
    v9 = 100;
  }

  else
  {
    v9 = v6;
  }

  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = sub_1C6449E70(v10, v11, v31);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = sub_1C6449F60(v16, v17, v31);

  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = sub_1C6449E70(v19, v20, v31);
  v23 = v22;

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v21;
  }

  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = sub_1C6449E70(v25, v26, v31);
  v29 = v28;

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  retstr->batchSuccessRate = v9;
  retstr->batchFailureRate = v15;
  retstr->batchAverageRuntime = v18;
  retstr->batchLossRate = v24;
  retstr->batchErrorRate = v30;
}

void *sub_1C6449E70(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_getAtKeyPath();
  if (v5 >= 1)
  {
    result = swift_getAtKeyPath();
    v4 = v5 / v5 * 100.0;
    if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return v4;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  return 0;
}

void *sub_1C6449F60(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_getAtKeyPath();
  if (v5 >= 1)
  {
    result = swift_getAtKeyPath();
    v4 = round(v5 / v5);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return v4;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  return 0;
}

unint64_t sub_1C644A044()
{
  result = qword_1EC1C4708;
  if (!qword_1EC1C4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4708);
  }

  return result;
}

void __swiftcall ItemRates.init(donationRetryRate:retrySuccessRate:donationSuccessRate:donationFailureRate:donationLossRate:donationQueueEvictionRate:)(IndexingAnalytics::ItemRates *__return_ptr retstr, Swift::Int donationRetryRate, Swift::Int retrySuccessRate, Swift::Int donationSuccessRate, Swift::Int donationFailureRate, Swift::Int donationLossRate, Swift::Int donationQueueEvictionRate)
{
  retstr->donationRetryRate = donationRetryRate;
  retstr->retrySuccessRate = retrySuccessRate;
  retstr->donationSuccessRate = donationSuccessRate;
  retstr->donationFailureRate = donationFailureRate;
  retstr->donationLossRate = donationLossRate;
  retstr->donationQueueEvictionRate = donationQueueEvictionRate;
}

uint64_t ItemRates.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  return MEMORY[0x1C6958D60](v5);
}

uint64_t ItemRates.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  return sub_1C645D024();
}

uint64_t sub_1C644A2F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  return sub_1C645D024();
}

uint64_t sub_1C644A398()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x1C6958D60](*v0);
  MEMORY[0x1C6958D60](v1);
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  return MEMORY[0x1C6958D60](v5);
}

uint64_t sub_1C644A40C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](v2);
  MEMORY[0x1C6958D60](v3);
  MEMORY[0x1C6958D60](v4);
  MEMORY[0x1C6958D60](v5);
  MEMORY[0x1C6958D60](v6);
  MEMORY[0x1C6958D60](v7);
  return sub_1C645D024();
}

void __swiftcall ItemRates.init(_:)(IndexingAnalytics::ItemRates *__return_ptr retstr, IndexingAnalytics::ItemCounts *a2)
{
  v3 = *&a2->donationsAttempted;
  v40[0] = *&a2->donationsIdentified;
  v40[1] = v3;
  v40[2] = *&a2->retriesAttempted;
  donationsEvictedFromQueue = a2->donationsEvictedFromQueue;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_1C644A6F8(KeyPath, v5, v40);
  v8 = v7;

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = sub_1C644A6F8(v10, v11, v40);
  v14 = v13;

  v15 = 100;
  if (v14)
  {
    v16 = 100;
  }

  else
  {
    v16 = v12;
  }

  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = sub_1C644A6F8(v17, v18, v40);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    v15 = v19;
  }

  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = sub_1C644A6F8(v22, v23, v40);
  v26 = v25;

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = sub_1C644A6F8(v28, v29, v40);
  v32 = v31;

  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v36 = sub_1C644A6F8(v34, v35, v40);
  v38 = v37;

  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v36;
  }

  retstr->donationRetryRate = v9;
  retstr->retrySuccessRate = v16;
  retstr->donationSuccessRate = v15;
  retstr->donationFailureRate = v27;
  retstr->donationLossRate = v33;
  retstr->donationQueueEvictionRate = v39;
}

void *sub_1C644A6F8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_getAtKeyPath();
  if (v5 >= 1)
  {
    result = swift_getAtKeyPath();
    v4 = round(v5 / v5 * 100.0);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return v4;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  return 0;
}

BOOL _s17IndexingAnalytics9ItemRatesV2eeoiySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0])
  {
    return a1[2].i64[1] == a2[2].i64[1];
  }

  return result;
}

unint64_t sub_1C644A850()
{
  result = qword_1EC1C4710;
  if (!qword_1EC1C4710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4710);
  }

  return result;
}

uint64_t sub_1C644A8A4(uint64_t a1, int a2)
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

uint64_t sub_1C644A8C4(uint64_t result, int a2, int a3)
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

uint64_t Event.Value.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) == 1)
  {
    MEMORY[0x1C6958D60](1);

    return sub_1C645C8E4();
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    return MEMORY[0x1C6958D60](v2);
  }
}

uint64_t Event.Value.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1C645CFE4();
  if (v2 == 1)
  {
    MEMORY[0x1C6958D60](1);
    sub_1C645C8E4();
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    MEMORY[0x1C6958D60](v1);
  }

  return sub_1C645D024();
}

uint64_t sub_1C644AA20()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1C645CFE4();
  if (v2 == 1)
  {
    MEMORY[0x1C6958D60](1);
    sub_1C645C8E4();
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    MEMORY[0x1C6958D60](v1);
  }

  return sub_1C645D024();
}

uint64_t sub_1C644AAA8(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) == 1)
  {
    MEMORY[0x1C6958D60](1);

    return sub_1C645C8E4();
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    return MEMORY[0x1C6958D60](v2);
  }
}

uint64_t sub_1C644AB30(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_1C645CFE4();
  if (v3 == 1)
  {
    MEMORY[0x1C6958D60](1);
    sub_1C645C8E4();
  }

  else
  {
    MEMORY[0x1C6958D60](0);
    MEMORY[0x1C6958D60](v2);
  }

  return sub_1C645D024();
}

uint64_t Event.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Event.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Event.data.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  return result;
}

IndexingAnalytics::Event __swiftcall Event.init(name:data:)(Swift::String name, Swift::OpaquePointer data)
{
  *v2 = name;
  *(v2 + 16) = data;
  result.name = name;
  result.data = data;
  return result;
}

uint64_t static Event.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  return sub_1C644AD14(v2, v3);
}

uint64_t sub_1C644AD14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v33 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v32 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = v8 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_1C644DB9C(v17, v18, v19);
    v20 = v14 == 0;
    if (!v14)
    {
      return v20;
    }

    v34 = v9;
    v21 = v3;
    v22 = sub_1C63FDE68(v15, v14);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_30;
    }

    v25 = *(a2 + 56) + 24 * v22;
    v27 = *v25;
    v26 = *(v25 + 8);
    if (*(v25 + 16) == 1)
    {
      if ((v19 & 1) == 0)
      {
        v31 = *(v25 + 8);

        sub_1C644DBAC(v27, v31, 1);
        v19 = 0;
        goto LABEL_30;
      }

      v3 = v21;
      if (v27 == v17 && v26 == v18)
      {

        sub_1C644DBAC(v17, v18, 1);
        result = sub_1C644DBAC(v17, v18, 1);
        v7 = v34;
      }

      else
      {
        v29 = *(v25 + 8);
        v30 = sub_1C645CF24();

        sub_1C644DBAC(v27, v29, 1);
        result = sub_1C644DBAC(v17, v18, 1);
        v7 = v34;
        if ((v30 & 1) == 0)
        {
          return v20;
        }
      }
    }

    else
    {
      sub_1C644DBAC(v27, v26, 0);
      if (v19)
      {
        v19 = 1;
LABEL_30:
        sub_1C644DBAC(v17, v18, v19);
        return 0;
      }

      v3 = v21;
      result = sub_1C644DBAC(v17, v18, 0);
      v7 = v34;
      if (v27 != v17)
      {
        return v20;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v32)
    {
      return 1;
    }

    v11 = *(v33 + 8 * v4);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void Event.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1C645C8E4();

  sub_1C644D584(a1, v3);
}

uint64_t Event.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C645CFE4();
  sub_1C645C8E4();
  sub_1C644D584(v3, v1);
  return sub_1C645D024();
}

uint64_t sub_1C644B044()
{
  v1 = *(v0 + 16);
  sub_1C645CFE4();
  sub_1C645C8E4();
  sub_1C644D584(v3, v1);
  return sub_1C645D024();
}

void sub_1C644B0A8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1C645C8E4();

  sub_1C644D584(a1, v3);
}

uint64_t sub_1C644B0EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C645CFE4();
  sub_1C645C8E4();
  sub_1C644D584(v4, v2);
  return sub_1C645D024();
}

uint64_t sub_1C644B14C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C645CF24() & 1) == 0)
  {
    return 0;
  }

  return sub_1C644AD14(v2, v3);
}

void *sub_1C644B1C0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3DF0, &qword_1C64725F0);
  result = sub_1C645CE04();
  v3 = result;
  v4 = 0;
  v5 = v1 + 64;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  v26 = v1;
  v27 = result + 8;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v15 = v14[1];
      v28 = *v14;
      v16 = *(v1 + 56) + 24 * v13;
      v17 = *v16;
      if (*(v16 + 16) == 1)
      {
        v18 = *(v16 + 8);

        sub_1C644DB9C(v17, v18, 1);
        v19 = sub_1C645C844();
        v20 = v18;
        v1 = v26;
        result = sub_1C644DBAC(v17, v20, 1);
      }

      else
      {
        v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        result = [v21 initWithInteger_];
        v19 = result;
      }

      *(v27 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v22 = (v3[6] + 16 * v13);
      *v22 = v28;
      v22[1] = v15;
      *(v3[7] + 8 * v13) = v19;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return v3;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void static Event.send(_:)(void *a1)
{
  v1 = sub_1C645C844();
  sub_1C644B1C0();
  sub_1C644D8A4();
  v2 = sub_1C645C7D4();

  AnalyticsSendEvent();
}

char *Event.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v7[0] = sub_1C644B574(*(v0 + 16));

  sub_1C644C9A8(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3FB0, &unk_1C6473850);
  sub_1C6431A68();
  v3 = sub_1C645C824();
  v5 = v4;

  v7[0] = v2;
  v7[1] = v1;

  MEMORY[0x1C69586A0](10, 0xE100000000000000);

  MEMORY[0x1C69586A0](v3, v5);

  return v7[0];
}

uint64_t sub_1C644B574(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1C6440AD0(0, v1, 0);
  v2 = v38;
  v4 = v3 + 64;
  result = sub_1C645CC34();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v31 = v3 + 72;
  v32 = v1;
  v33 = v8;
  v34 = v3 + 64;
  v35 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v36 = v7;
    v37 = v2;
    v11 = *(v3 + 56);
    v12 = (*(v3 + 48) + 16 * v6);
    v14 = *v12;
    v13 = v12[1];
    v15 = v11 + 24 * v6;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    swift_bridgeObjectRetain_n();
    sub_1C644DB9C(v17, v16, v18);
    sub_1C644DB9C(v17, v16, v18);

    sub_1C644DBAC(v17, v16, v18);
    MEMORY[0x1C69586A0](v14, v13);
    MEMORY[0x1C69586A0](8250, 0xE200000000000000);
    sub_1C644DB9C(v17, v16, v18);
    v19 = sub_1C645C894();
    MEMORY[0x1C69586A0](v19);

    v20 = v17;
    v2 = v37;
    result = sub_1C644DBAC(v20, v16, v18);
    v22 = *(v37 + 16);
    v21 = *(v37 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_1C6440AD0((v21 > 1), v22 + 1, 1);
      v2 = v37;
    }

    *(v2 + 16) = v22 + 1;
    v23 = v2 + 16 * v22;
    *(v23 + 32) = 8237;
    *(v23 + 40) = 0xE200000000000000;
    v3 = v35;
    v9 = 1 << *(v35 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v34;
    v24 = *(v34 + 8 * v10);
    if ((v24 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v33;
    if (v33 != *(v35 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v6 & 0x3F));
    if (v25)
    {
      v9 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v10 << 6;
      v27 = v10 + 1;
      v28 = (v31 + 8 * v10);
      while (v27 < (v9 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1C644DBBC(v6, v33, 0);
          v9 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_1C644DBBC(v6, v33, 0);
    }

LABEL_4:
    v7 = v36 + 1;
    v6 = v9;
    if (v36 + 1 == v32)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t Event.Value.debugDescription.getter()
{
  if (*(v0 + 16) != 1)
  {
    return sub_1C645CF14();
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_1C644B8FC()
{
  if (*(v0 + 16) != 1)
  {
    return sub_1C645CF14();
  }

  v1 = *v0;

  return v1;
}

uint64_t static Event.daily(itemCounts:batchCounts:)@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v17 = *a1;
  v18 = a1[1];
  v32.donationsIdentified = *a1;
  v32.donationsLost = v18;
  v32.donationsAttempted = v4;
  v32.donationsSuccessful = v3;
  v21 = v6;
  v22 = v5;
  v32.retriesAttempted = v6;
  v32.retriesSuccessful = v5;
  v31 = v7;
  v32.donationsEvictedFromQueue = v7;
  ItemRates.init(_:)(&v33, &v32);
  donationRetryRate = v33.donationRetryRate;
  retrySuccessRate = v33.retrySuccessRate;
  donationFailureRate = v33.donationFailureRate;
  donationLossRate = v33.donationLossRate;
  donationSuccessRate = v33.donationSuccessRate;
  donationQueueEvictionRate = v33.donationQueueEvictionRate;
  v33.donationRetryRate = v8;
  v33.retrySuccessRate = v9;
  v33.donationSuccessRate = v10;
  v33.donationFailureRate = v11;
  v33.donationLossRate = v12;
  BatchRates.init(_:)(&v32, &v33);
  donationsLost = v32.donationsLost;
  donationsAttempted = v32.donationsAttempted;
  donationsSuccessful = v32.donationsSuccessful;
  donationsIdentified = v32.donationsIdentified;
  retriesAttempted = v32.retriesAttempted;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4718, &qword_1C6475338);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C6475310;
  *(result + 32) = 0xD000000000000015;
  *(result + 40) = 0x80000001C64EB3D0;
  *(result + 48) = v8;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0xD000000000000011;
  *(result + 80) = 0x80000001C64EB3F0;
  *(result + 88) = v11;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0xD000000000000012;
  *(result + 120) = 0x80000001C64EB410;
  if (__OFADD__(v9, v11))
  {
    __break(1u);
  }

  else
  {
    *(result + 128) = v9 + v11;
    *(result + 136) = 0;
    *(result + 144) = 0;
    *(result + 152) = 0xD000000000000010;
    *(result + 160) = 0x80000001C64EB430;
    *(result + 168) = v9;
    *(result + 176) = 0;
    *(result + 184) = 0;
    strcpy((result + 192), "batchesRuntime");
    *(result + 207) = -18;
    *(result + 208) = v12;
    *(result + 216) = 0;
    *(result + 224) = 0;
    *(result + 232) = 0xD000000000000016;
    *(result + 240) = 0x80000001C64EB450;
    *(result + 248) = v10;
    *(result + 256) = 0;
    *(result + 264) = 0;
    *(result + 272) = 0xD000000000000013;
    *(result + 280) = 0x80000001C64EB470;
    *(result + 288) = donationsAttempted;
    *(result + 296) = 0;
    *(result + 304) = 0;
    strcpy((result + 312), "batchErrorRate");
    *(result + 327) = -18;
    *(result + 328) = retriesAttempted;
    *(result + 336) = 0;
    *(result + 344) = 0;
    *(result + 352) = 0xD000000000000010;
    *(result + 360) = 0x80000001C64EB490;
    *(result + 368) = donationsLost;
    *(result + 376) = 0;
    *(result + 384) = 0;
    strcpy((result + 392), "batchLossRate");
    *(result + 406) = -4864;
    *(result + 408) = donationsSuccessful;
    *(result + 416) = 0;
    *(result + 424) = 0;
    *(result + 432) = 0xD000000000000010;
    *(result + 440) = 0x80000001C64EB4B0;
    *(result + 448) = donationsIdentified;
    *(result + 456) = 0;
    *(result + 464) = 0;
    *(result + 472) = 0xD000000000000017;
    *(result + 480) = 0x80000001C64EB4D0;
    *(result + 488) = v4;
    *(result + 496) = 0;
    *(result + 504) = 0;
    *(result + 512) = 0xD00000000000001ELL;
    *(result + 520) = 0x80000001C64EB4F0;
    *(result + 528) = v31;
    *(result + 536) = 0;
    *(result + 544) = 0;
    *(result + 552) = 0xD000000000000014;
    *(result + 560) = 0x80000001C64EB510;
    if (!__OFSUB__(v4, v3))
    {
      *(result + 568) = v4 - v3;
      *(result + 576) = 0;
      *(result + 584) = 0;
      *(result + 592) = 0xD000000000000018;
      *(result + 600) = 0x80000001C64EB530;
      *(result + 608) = v17;
      *(result + 616) = 0;
      *(result + 624) = 0;
      *(result + 632) = 0xD000000000000012;
      *(result + 640) = 0x80000001C64EB550;
      *(result + 648) = v18;
      *(result + 656) = 0;
      *(result + 664) = 0;
      *(result + 672) = 0xD000000000000018;
      *(result + 680) = 0x80000001C64EB570;
      *(result + 688) = v3;
      *(result + 696) = 0;
      *(result + 704) = 0;
      *(result + 712) = 0xD000000000000015;
      *(result + 720) = 0x80000001C64EB590;
      *(result + 728) = v21;
      *(result + 736) = 0;
      *(result + 744) = 0;
      *(result + 752) = 0xD000000000000016;
      *(result + 760) = 0x80000001C64EB5B0;
      *(result + 768) = v22;
      *(result + 776) = 0;
      *(result + 784) = 0;
      *(result + 792) = 0xD000000000000013;
      *(result + 800) = 0x80000001C64EB5D0;
      *(result + 808) = donationFailureRate;
      *(result + 816) = 0;
      *(result + 824) = 0;
      *(result + 832) = 0xD000000000000010;
      *(result + 840) = 0x80000001C64EB5F0;
      *(result + 848) = donationLossRate;
      *(result + 856) = 0;
      *(result + 864) = 0;
      *(result + 872) = 0xD000000000000013;
      *(result + 880) = 0x80000001C64EB610;
      *(result + 888) = donationSuccessRate;
      *(result + 896) = 0;
      *(result + 904) = 0;
      *(result + 912) = 0xD000000000000019;
      *(result + 920) = 0x80000001C64EB630;
      *(result + 928) = donationQueueEvictionRate;
      *(result + 936) = 0;
      *(result + 944) = 0;
      *(result + 952) = 0xD000000000000011;
      *(result + 960) = 0x80000001C64EB650;
      *(result + 968) = donationRetryRate;
      *(result + 976) = 0;
      *(result + 984) = 0;
      *(result + 992) = 0xD000000000000010;
      *(result + 1000) = 0x80000001C64EB670;
      *(result + 1008) = retrySuccessRate;
      *(result + 1016) = 0;
      *(result + 1024) = 0;
      v16 = sub_1C644D8F0(result);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4720, &qword_1C6475340);
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      *a3 = 0xD000000000000024;
      a3[1] = 0x80000001C64EB3A0;
      a3[2] = v16;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Event.weekly(itemCounts:batchCounts:itemTimes:)@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v34 = *a3;
  v35 = a3[1];
  v37 = a3[2];
  v53 = a3[3];
  v55 = a3[4];
  v57 = a3[5];
  v27 = a3[6];
  v32 = a3[7];
  v33 = a3[8];
  v49 = a3[9];
  v50 = a3[10];
  v51 = a3[11];
  v26 = a3[12];
  v25 = a3[13];
  v24 = a3[14];
  v46 = a3[15];
  v47 = a3[16];
  v48 = a3[17];
  v40 = a3[18];
  v41 = a3[19];
  v42 = a3[20];
  v43 = a3[21];
  v44 = a3[22];
  v45 = a3[23];
  v36 = a3[24];
  v38 = a3[25];
  v39 = a3[26];
  v52 = a3[27];
  v54 = a3[28];
  v56 = a3[29];
  v30 = a1[1];
  v31 = *a1;
  v63.donationsIdentified = *a1;
  v63.donationsLost = v30;
  v63.donationsAttempted = v5;
  v63.donationsSuccessful = v4;
  v28 = v7;
  v29 = v6;
  v63.retriesAttempted = v6;
  v63.retriesSuccessful = v7;
  v62 = v8;
  v63.donationsEvictedFromQueue = v8;
  ItemRates.init(_:)(&v64, &v63);
  retrySuccessRate = v64.retrySuccessRate;
  donationRetryRate = v64.donationRetryRate;
  donationLossRate = v64.donationLossRate;
  donationFailureRate = v64.donationFailureRate;
  donationQueueEvictionRate = v64.donationQueueEvictionRate;
  donationSuccessRate = v64.donationSuccessRate;
  v64.donationRetryRate = v9;
  v64.retrySuccessRate = v10;
  v64.donationSuccessRate = v11;
  v64.donationFailureRate = v12;
  v64.donationLossRate = v13;
  BatchRates.init(_:)(&v63, &v64);
  donationsLost = v63.donationsLost;
  donationsAttempted = v63.donationsAttempted;
  donationsSuccessful = v63.donationsSuccessful;
  donationsIdentified = v63.donationsIdentified;
  retriesAttempted = v63.retriesAttempted;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4718, &qword_1C6475338);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C6475320;
  *(result + 32) = 0xD000000000000015;
  *(result + 40) = 0x80000001C64EB3D0;
  *(result + 48) = v9;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0xD000000000000011;
  *(result + 80) = 0x80000001C64EB3F0;
  *(result + 88) = v12;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0xD000000000000012;
  *(result + 120) = 0x80000001C64EB410;
  if (__OFADD__(v10, v12))
  {
    __break(1u);
  }

  else
  {
    *(result + 128) = v10 + v12;
    *(result + 136) = 0;
    *(result + 144) = 0;
    *(result + 152) = 0xD000000000000010;
    *(result + 160) = 0x80000001C64EB430;
    *(result + 168) = v10;
    *(result + 176) = 0;
    *(result + 184) = 0;
    strcpy((result + 192), "batchesRuntime");
    *(result + 207) = -18;
    *(result + 208) = v13;
    *(result + 216) = 0;
    *(result + 224) = 0;
    *(result + 232) = 0xD000000000000016;
    *(result + 240) = 0x80000001C64EB450;
    *(result + 248) = v11;
    *(result + 256) = 0;
    *(result + 264) = 0;
    *(result + 272) = 0xD000000000000013;
    *(result + 280) = 0x80000001C64EB470;
    *(result + 288) = donationsAttempted;
    *(result + 296) = 0;
    *(result + 304) = 0;
    strcpy((result + 312), "batchErrorRate");
    *(result + 327) = -18;
    *(result + 328) = retriesAttempted;
    *(result + 336) = 0;
    *(result + 344) = 0;
    *(result + 352) = 0xD000000000000010;
    *(result + 360) = 0x80000001C64EB490;
    *(result + 368) = donationsLost;
    *(result + 376) = 0;
    *(result + 384) = 0;
    strcpy((result + 392), "batchLossRate");
    *(result + 406) = -4864;
    *(result + 408) = donationsSuccessful;
    *(result + 416) = 0;
    *(result + 424) = 0;
    *(result + 432) = 0xD000000000000010;
    *(result + 440) = 0x80000001C64EB4B0;
    *(result + 448) = donationsIdentified;
    *(result + 456) = 0;
    *(result + 464) = 0;
    *(result + 472) = 0xD000000000000017;
    *(result + 480) = 0x80000001C64EB4D0;
    *(result + 488) = v5;
    *(result + 496) = 0;
    *(result + 504) = 0;
    *(result + 512) = 0xD00000000000001ELL;
    *(result + 520) = 0x80000001C64EB4F0;
    *(result + 528) = v62;
    *(result + 536) = 0;
    *(result + 544) = 0;
    *(result + 552) = 0xD000000000000014;
    *(result + 560) = 0x80000001C64EB510;
    if (!__OFSUB__(v5, v4))
    {
      *(result + 568) = v5 - v4;
      *(result + 608) = v31;
      *(result + 648) = v30;
      *(result + 688) = v4;
      *(result + 728) = v29;
      *(result + 768) = v28;
      *(result + 808) = donationFailureRate;
      *(result + 848) = donationLossRate;
      *(result + 888) = donationSuccessRate;
      *(result + 928) = donationQueueEvictionRate;
      *(result + 968) = donationRetryRate;
      *(result + 1008) = retrySuccessRate;
      *(result + 1048) = v26;
      *(result + 1088) = v25;
      *(result + 1128) = v24;
      *(result + 1168) = v27;
      *(result + 600) = 0x80000001C64EB530;
      *(result + 632) = 0xD000000000000012;
      *(result + 640) = 0x80000001C64EB550;
      *(result + 680) = 0x80000001C64EB570;
      *(result + 720) = 0x80000001C64EB590;
      *(result + 760) = 0x80000001C64EB5B0;
      *(result + 800) = 0x80000001C64EB5D0;
      *(result + 840) = 0x80000001C64EB5F0;
      *(result + 880) = 0x80000001C64EB610;
      *(result + 920) = 0x80000001C64EB630;
      *(result + 960) = 0x80000001C64EB650;
      *(result + 1000) = 0x80000001C64EB670;
      *(result + 1040) = 0x80000001C64EB6C0;
      *(result + 1080) = 0x80000001C64EB6E0;
      *(result + 1120) = 0x80000001C64EB700;
      *(result + 1160) = 0x80000001C64EB720;
      *(result + 1200) = 0x80000001C64EB740;
      *(result + 1208) = v32;
      *(result + 1240) = 0x80000001C64EB760;
      *(result + 576) = 0;
      *(result + 584) = 0;
      *(result + 1248) = v33;
      *(result + 1280) = 0x80000001C64EB780;
      *(result + 592) = 0xD000000000000018;
      *(result + 616) = 0;
      *(result + 624) = 0;
      *(result + 656) = 0;
      *(result + 664) = 0;
      *(result + 672) = 0xD000000000000018;
      *(result + 696) = 0;
      *(result + 704) = 0;
      *(result + 1288) = v34;
      *(result + 1320) = 0x80000001C64EB7A0;
      *(result + 712) = 0xD000000000000015;
      *(result + 736) = 0;
      *(result + 744) = 0;
      *(result + 752) = 0xD000000000000016;
      *(result + 776) = 0;
      *(result + 784) = 0;
      *(result + 792) = 0xD000000000000013;
      *(result + 816) = 0;
      *(result + 824) = 0;
      *(result + 832) = 0xD000000000000010;
      *(result + 856) = 0;
      *(result + 864) = 0;
      *(result + 872) = 0xD000000000000013;
      *(result + 896) = 0;
      *(result + 904) = 0;
      *(result + 1328) = v35;
      *(result + 1360) = 0x80000001C64EB7C0;
      *(result + 912) = 0xD000000000000019;
      *(result + 936) = 0;
      *(result + 944) = 0;
      *(result + 1368) = v37;
      *(result + 1400) = 0x80000001C64EB7E0;
      *(result + 952) = 0xD000000000000011;
      *(result + 976) = 0;
      *(result + 984) = 0;
      *(result + 992) = 0xD000000000000010;
      *(result + 1016) = 0;
      *(result + 1024) = 0;
      *(result + 1408) = v36;
      *(result + 1032) = 0xD00000000000001ALL;
      *(result + 1056) = 0;
      *(result + 1064) = 0;
      *(result + 1152) = 0xD000000000000017;
      *(result + 1432) = 0xD000000000000017;
      *(result + 1440) = 0x80000001C64EB800;
      *(result + 1072) = 0xD00000000000001CLL;
      *(result + 1096) = 0;
      *(result + 1104) = 0;
      *(result + 1112) = 0xD000000000000019;
      *(result + 1136) = 0;
      *(result + 1144) = 0;
      *(result + 1176) = 0;
      *(result + 1184) = 0;
      *(result + 1192) = 0xD000000000000019;
      *(result + 1216) = 0;
      *(result + 1224) = 0;
      *(result + 1232) = 0xD000000000000016;
      *(result + 1256) = 0;
      *(result + 1264) = 0;
      *(result + 1272) = 0xD00000000000001ALL;
      *(result + 1296) = 0;
      *(result + 1304) = 0;
      *(result + 1312) = 0xD00000000000001CLL;
      *(result + 1336) = 0;
      *(result + 1344) = 0;
      *(result + 1352) = 0xD000000000000019;
      *(result + 1376) = 0;
      *(result + 1384) = 0;
      *(result + 1392) = 0xD000000000000015;
      *(result + 1416) = 0;
      *(result + 1424) = 0;
      *(result + 1448) = v38;
      *(result + 1456) = 0;
      *(result + 1464) = 0;
      *(result + 1472) = 0xD000000000000014;
      *(result + 1480) = 0x80000001C64EB820;
      *(result + 1488) = v39;
      *(result + 1496) = 0;
      *(result + 1504) = 0;
      *(result + 1512) = 0xD000000000000011;
      *(result + 1520) = 0x80000001C64EB840;
      *(result + 1528) = v40;
      *(result + 1536) = 0;
      *(result + 1544) = 0;
      *(result + 1552) = 0xD000000000000013;
      *(result + 1560) = 0x80000001C64EB860;
      *(result + 1568) = v41;
      *(result + 1576) = 0;
      *(result + 1584) = 0;
      *(result + 1592) = 0xD000000000000010;
      *(result + 1600) = 0x80000001C64EB880;
      *(result + 1608) = v42;
      *(result + 1616) = 0;
      *(result + 1624) = 0;
      *(result + 1632) = 0xD000000000000016;
      *(result + 1640) = 0x80000001C64EB8A0;
      *(result + 1648) = v43;
      *(result + 1656) = 0;
      *(result + 1664) = 0;
      *(result + 1672) = 0xD000000000000018;
      *(result + 1680) = 0x80000001C64EB8C0;
      *(result + 1688) = v44;
      *(result + 1696) = 0;
      *(result + 1704) = 0;
      *(result + 1712) = 0xD000000000000015;
      *(result + 1720) = 0x80000001C64EB8E0;
      *(result + 1728) = v45;
      *(result + 1736) = 0;
      *(result + 1744) = 0;
      *(result + 1752) = 0xD00000000000001FLL;
      *(result + 1760) = 0x80000001C64EB900;
      *(result + 1768) = v46;
      *(result + 1776) = 0;
      *(result + 1784) = 0;
      *(result + 1792) = 0xD000000000000021;
      *(result + 1800) = 0x80000001C64EB920;
      *(result + 1808) = v47;
      *(result + 1816) = 0;
      *(result + 1824) = 0;
      *(result + 1832) = 0xD00000000000001ELL;
      *(result + 1840) = 0x80000001C64EB950;
      *(result + 1848) = v48;
      *(result + 1856) = 0;
      *(result + 1864) = 0;
      *(result + 1872) = 0xD00000000000001CLL;
      *(result + 1880) = 0x80000001C64EB970;
      *(result + 1888) = v49;
      *(result + 1896) = 0;
      *(result + 1904) = 0;
      *(result + 1912) = 0xD00000000000001ELL;
      *(result + 1920) = 0x80000001C64EB990;
      *(result + 1928) = v50;
      *(result + 1936) = 0;
      *(result + 1944) = 0;
      *(result + 1952) = 0xD00000000000001BLL;
      *(result + 1960) = 0x80000001C64EB9B0;
      *(result + 1968) = v51;
      *(result + 1976) = 0;
      *(result + 1984) = 0;
      *(result + 1992) = 0xD00000000000001FLL;
      *(result + 2000) = 0x80000001C64EB9D0;
      *(result + 2008) = v53;
      *(result + 2016) = 0;
      *(result + 2024) = 0;
      *(result + 2032) = 0xD000000000000021;
      *(result + 2040) = 0x80000001C64EB9F0;
      *(result + 2048) = v55;
      *(result + 2056) = 0;
      *(result + 2064) = 0;
      *(result + 2072) = 0xD00000000000001ELL;
      *(result + 2080) = 0x80000001C64EBA20;
      *(result + 2088) = v57;
      *(result + 2096) = 0;
      *(result + 2104) = 0;
      *(result + 2112) = 0xD00000000000001ALL;
      *(result + 2120) = 0x80000001C64EBA40;
      *(result + 2128) = v52;
      *(result + 2136) = 0;
      *(result + 2144) = 0;
      *(result + 2152) = 0xD00000000000001CLL;
      *(result + 2160) = 0x80000001C64EBA60;
      *(result + 2168) = v54;
      *(result + 2176) = 0;
      *(result + 2184) = 0;
      *(result + 2192) = 0xD000000000000019;
      *(result + 2200) = 0x80000001C64EBA80;
      *(result + 2208) = v56;
      *(result + 2216) = 0;
      *(result + 2224) = 0;
      v17 = sub_1C644D8F0(result);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4720, &qword_1C6475340);
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      *a4 = 0xD000000000000025;
      a4[1] = 0x80000001C64EB690;
      a4[2] = v17;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C644C9A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C644D72C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C644CA14(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C644CA14(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C645CF04();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C645CA34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C644CBDC(v7, v8, a1, v4);
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
    return sub_1C644CB0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C644CB0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1C645CF24(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C644CBDC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1C644D46C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C644D1B8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1C645CF24();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1C645CF24();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C644D480(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C644D480((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1C644D1B8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C644D46C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1C644D3E0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1C645CF24(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1C644D1B8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1C645CF24() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1C645CF24() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1C644D3E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C644D46C(v3);
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

char *sub_1C644D480(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4740, &qword_1C6475528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1C644D584(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v16 = 0;
  v7 = 0;
  while (v5)
  {
LABEL_11:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = *(*(a2 + 48) + 16 * v9 + 8);
    v11 = *(a2 + 56) + 24 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);

    sub_1C644DB9C(v12, v13, v14);
    if (!v10)
    {
LABEL_14:

      MEMORY[0x1C6958D60](v16);
      return;
    }

    sub_1C645C8E4();

    if (v14)
    {
      MEMORY[0x1C6958D60](1);
      sub_1C645C8E4();
      sub_1C644DBAC(v12, v13, 1);
    }

    else
    {
      MEMORY[0x1C6958D60](0);
      MEMORY[0x1C6958D60](v12);
    }

    v5 &= v5 - 1;
    v16 ^= sub_1C645D024();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}

BOOL _s17IndexingAnalytics5EventV5ValueO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  if (v5 != 1)
  {
    if ((a2[2] & 1) == 0)
    {
      sub_1C644DBAC(*a1, v4, 0);
      sub_1C644DBAC(v6, v7, 0);
      return v3 == v6;
    }

    goto LABEL_11;
  }

  if ((a2[2] & 1) == 0)
  {

LABEL_11:
    sub_1C644DB9C(v6, v7, v8);
    sub_1C644DBAC(v3, v4, v5);
    sub_1C644DBAC(v6, v7, v8);
    return 0;
  }

  v9 = *a1;
  if (v3 == v6 && v4 == v7)
  {
    sub_1C644DB9C(v9, v4, 1);
    sub_1C644DB9C(v3, v4, 1);
    sub_1C644DBAC(v3, v4, 1);
    sub_1C644DBAC(v3, v4, 1);
    return 1;
  }

  else
  {
    v11 = sub_1C645CF24();
    sub_1C644DB9C(v6, v7, 1);
    sub_1C644DB9C(v3, v4, 1);
    sub_1C644DBAC(v3, v4, 1);
    sub_1C644DBAC(v6, v7, 1);
    return v11 & 1;
  }
}

unint64_t sub_1C644D8A4()
{
  result = qword_1EC1C3E28;
  if (!qword_1EC1C3E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1C3E28);
  }

  return result;
}

unint64_t sub_1C644D8F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4738, &qword_1C6475520);
    v3 = sub_1C645CE24();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1C644DB9C(v7, v8, v9);
      result = sub_1C63FDE68(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C644DA18()
{
  result = qword_1EC1C4728;
  if (!qword_1EC1C4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4728);
  }

  return result;
}

unint64_t sub_1C644DA70()
{
  result = qword_1EC1C4730;
  if (!qword_1EC1C4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4730);
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

uint64_t sub_1C644DAF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C644DB3C(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_1C644DB9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C644DBAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C644DBBC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t ItemKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1C645CFE4();
  MEMORY[0x1C6958D60](a1);
  return sub_1C645D024();
}

unint64_t sub_1C644DC58()
{
  result = qword_1EC1C4748;
  if (!qword_1EC1C4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4748);
  }

  return result;
}

unint64_t sub_1C644DCB0()
{
  result = qword_1EC1C4750;
  if (!qword_1EC1C4750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1C4758, &qword_1C6475598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1C4750);
  }

  return result;
}

void __checkOutScheduler_block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(*(*(a1 + 32) + 8) + 40);
  *&v3[12] = 2048;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, a2, a3, "Using existing scheduler %@ with count %lu", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void __checkOutScheduler_block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(*(*a1 + 8) + 40);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, a2, a3, "Created new scheduler %@ %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void _expandForCompoundPredicate_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _expandPredicate_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void cachedMetadataArgumentsAreValid_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void cachedMetadataArgumentsAreValid_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void and64_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "wrong number of arguments (%d) to and64", v2, 8u);
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}