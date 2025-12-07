IDSFoundation::CLIText __swiftcall CLIText.align(_:)(IDSFoundation::CLITextAlign a1)
{
  v3 = *a1;
  v4 = *(v2 + 24);
  *v1 = *v2;
  *(v1 + 24) = v4;
  *(v1 + 16) = v3;

  result.segments._rawValue = v8;
  result.trailingPadding = v6;
  result.leadingPadding = v5;
  result.alignment = v7;
  return result;
}

uint64_t *sub_1A7CDD04C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v2;
  return result;
}

uint64_t sub_1A7CDD0E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1A7E22DA0();
  }

  return sub_1A7E22BB0();
}

uint64_t sub_1A7CDD144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A7E418C0;
  (*(a3 + 8))(a2, a3);
  (*(v5 + 8))(v8, a2);
  return v9;
}

uint64_t sub_1A7CDD274(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4D08, &qword_1A7E41C58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A7CDD2EC()
{
  result = qword_1EB2B4F98;
  if (!qword_1EB2B4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F98);
  }

  return result;
}

unint64_t sub_1A7CDD344()
{
  result = qword_1EB2B4FA0;
  if (!qword_1EB2B4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FA0);
  }

  return result;
}

unint64_t sub_1A7CDD398(uint64_t a1)
{
  result = sub_1A7CDD3C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A7CDD3C0()
{
  result = qword_1EB2B4FA8;
  if (!qword_1EB2B4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FA8);
  }

  return result;
}

unint64_t sub_1A7CDD418()
{
  result = qword_1EB2B4FB0;
  if (!qword_1EB2B4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FB0);
  }

  return result;
}

unint64_t sub_1A7CDD470()
{
  result = qword_1EB2B4FB8;
  if (!qword_1EB2B4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetatypeWrapper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for MetatypeWrapper(uint64_t result, int a2, int a3)
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

uint64_t sub_1A7CDD58C(uint64_t a1, int a2)
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

uint64_t sub_1A7CDD5D4(uint64_t result, int a2, int a3)
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

uint64_t IDSNAT64PrefixWrapper.prefix.getter()
{
  v1 = v0 + OBJC_IVAR___IDSNAT64PrefixWrapper_prefix;
  swift_beginAccess();
  return *v1;
}

uint64_t IDSNAT64PrefixWrapper.prefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___IDSNAT64PrefixWrapper_prefix);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t type metadata accessor for IDSNAT64PrefixWrapper()
{
  result = qword_1EB2B4FC8;
  if (!qword_1EB2B4FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B4FC8);
  }

  return result;
}

uint64_t sub_1A7CDD7D0()
{
  v1 = *v0;
  v2 = 1701669236;
  v3 = 0x415265746F6D6572;
  v4 = 0x736E657078457369;
  if (v1 != 3)
  {
    v4 = 0x7274736E6F437369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5441526C61636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A7CDD87C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7CDE1C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7CDD8A4(uint64_t a1)
{
  v2 = sub_1A7CDDB34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CDD8E0(uint64_t a1)
{
  v2 = sub_1A7CDDB34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportExpenseMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4FD0, &qword_1A7E42E20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *(v1 + 8);
  v14 = *(v1 + 16);
  v15 = v8;
  v9 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = v9;
  v11[1] = *(v1 + 40);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDDB34();
  sub_1A7E23260();
  v20 = 0;
  sub_1A7E23010();
  if (!v2)
  {
    v19 = 1;
    sub_1A7E22FF0();
    v18 = 2;
    sub_1A7E22FF0();
    v17 = 3;
    sub_1A7E23000();
    v16 = 4;
    sub_1A7E23000();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A7CDDB34()
{
  result = qword_1EB2B4FD8;
  if (!qword_1EB2B4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FD8);
  }

  return result;
}

uint64_t IDSLinkQualityReportExpenseMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B4FE0, &qword_1A7E42E28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDDB34();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  v27 = 0;
  sub_1A7E22F10();
  v10 = v9;
  v26 = 1;
  v11 = sub_1A7E22EF0();
  v13 = v12;
  v22 = v11;
  v25 = 2;
  v20 = sub_1A7E22EF0();
  v21 = v14;
  v24 = 3;
  v15 = sub_1A7E22F00();
  v23 = 4;
  v17 = sub_1A7E22F00();
  (*(v6 + 8))(v8, v5);
  v18 = v17 & 1;
  *a2 = v10;
  v19 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v13;
  *(a2 + 24) = v20;
  *(a2 + 32) = v19;
  *(a2 + 40) = v15 & 1;
  *(a2 + 41) = v18;

  sub_1A7B0CD6C(a1);
}

__n128 sub_1A7CDDEB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A7CDDECC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_1A7CDDF14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSLinkQualityReportExpenseMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSLinkQualityReportExpenseMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A7CDE0C4()
{
  result = qword_1EB2B4FE8;
  if (!qword_1EB2B4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FE8);
  }

  return result;
}

unint64_t sub_1A7CDE11C()
{
  result = qword_1EB2B4FF0;
  if (!qword_1EB2B4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FF0);
  }

  return result;
}

unint64_t sub_1A7CDE174()
{
  result = qword_1EB2B4FF8;
  if (!qword_1EB2B4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FF8);
  }

  return result;
}

uint64_t sub_1A7CDE1C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5441526C61636F6CLL && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x415265746F6D6572 && a2 == 0xE900000000000054 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E657078457369 && a2 == 0xEB00000000657669 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7274736E6F437369 && a2 == 0xED000064656E6961)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

IDSFoundation::IDSLinkQualityReportStatsMeasurement __swiftcall IDSLinkQualityReportStatsMeasurement.init(start:end:)(Swift::Double start, Swift::Double end)
{
  *v2 = start;
  v2[1] = end;
  result.end = end;
  result.start = start;
  return result;
}

uint64_t sub_1A7CDE3F4()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1A7CDE424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7CDE4FC(uint64_t a1)
{
  v2 = sub_1A7CDE6FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CDE538(uint64_t a1)
{
  v2 = sub_1A7CDE6FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportStatsMeasurement.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5000, &qword_1A7E42FF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDE6FC();
  sub_1A7E23260();
  v8[15] = 0;
  sub_1A7E23010();
  if (!v1)
  {
    v8[14] = 1;
    sub_1A7E23010();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A7CDE6FC()
{
  result = qword_1EB2B5008;
  if (!qword_1EB2B5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5008);
  }

  return result;
}

uint64_t IDSLinkQualityReportStatsMeasurement.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5010, &qword_1A7E42FF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDE6FC();
  sub_1A7E23250();
  if (!v2)
  {
    v16 = 0;
    sub_1A7E22F10();
    v10 = v9;
    v15 = 1;
    sub_1A7E22F10();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t getEnumTagSinglePayload for CLIString.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CLIString.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A7CDEA8C()
{
  result = qword_1EB2B5018;
  if (!qword_1EB2B5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5018);
  }

  return result;
}

unint64_t sub_1A7CDEAE4()
{
  result = qword_1EB2B5020;
  if (!qword_1EB2B5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5020);
  }

  return result;
}

unint64_t sub_1A7CDEB3C()
{
  result = qword_1EB2B5028;
  if (!qword_1EB2B5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5028);
  }

  return result;
}

uint64_t EndpointLinkCreationController.__allocating_init(linkInitializer:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  type metadata accessor for LinkCreationController();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CD0];
  *(v5 + 16) = 0;
  *(v5 + 24) = v6;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v4 + 16) = v5;
  return v4;
}

uint64_t static LinkDefinitionInitializer.custom(_:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

uint64_t EndpointLinkCreationController.update(_:localEndpoints:remoteEndpoints:permutating:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v165 = a4;
  v153 = a1;
  v171 = sub_1A7E220D0();
  v8 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v169 = &v152 - v11;
  v172 = sub_1A7E220A0();
  v12 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v163 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v162 = &v152 - v15;
  v16 = swift_allocObject();
  v17 = sub_1A7CE2290(MEMORY[0x1E69E7CC0]);
  v164 = v16;
  *(v16 + 16) = v17;
  v154 = v16 + 16;
  *&v188 = 0;
  *(&v188 + 1) = 0xE000000000000000;
  sub_1A7E22B70();

  *&v188 = 0xD000000000000011;
  *(&v188 + 1) = 0x80000001A7EAE1A0;
  v18 = MEMORY[0x1AC561E20](a2, &type metadata for LinkEndpoint);
  MEMORY[0x1AC561C90](v18);

  v19 = v188;
  v20 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v20;
  v159 = a5;
  if (isUniquelyReferenced_nonNull_native)
  {
    v22 = a5;
  }

  else
  {
    v144 = sub_1A7CCCAA4(0, *(v20 + 2) + 1, 1, v20);
    v22 = v159;
    v20 = v144;
    *v159 = v144;
  }

  v24 = *(v20 + 2);
  v23 = *(v20 + 3);
  if (v24 >= v23 >> 1)
  {
    v145 = sub_1A7CCCAA4((v23 > 1), v24 + 1, 1, v20);
    v22 = v159;
    v20 = v145;
  }

  *(v20 + 2) = v24 + 1;
  *&v20[16 * v24 + 32] = v19;
  *v22 = v20;
  *&v188 = 0;
  *(&v188 + 1) = 0xE000000000000000;
  sub_1A7E22B70();

  *&v188 = 0xD000000000000012;
  *(&v188 + 1) = 0x80000001A7EAE1C0;
  v25 = MEMORY[0x1AC561E20](a3, &type metadata for LinkEndpoint);
  MEMORY[0x1AC561C90](v25);

  v26 = v159;
  v27 = v188;
  *v159 = v20;
  v29 = *(v20 + 2);
  v28 = *(v20 + 3);
  if (v29 >= v28 >> 1)
  {
    v146 = sub_1A7CCCAA4((v28 > 1), v29 + 1, 1, v20);
    v26 = v159;
    v20 = v146;
  }

  *(v20 + 2) = v29 + 1;
  *&v20[16 * v29 + 32] = v27;
  *v26 = v20;
  strcpy(&v188, "Permutating: ");
  HIWORD(v188) = -4864;
  v30 = sub_1A7CC7FFC(&qword_1EB2B4AF8, &unk_1A7E431B0);
  v31 = MEMORY[0x1AC561E20](v165, v30);
  MEMORY[0x1AC561C90](v31);

  v33 = v159;
  v34 = v188;
  *v159 = v20;
  v36 = *(v20 + 2);
  v35 = *(v20 + 3);
  v37 = v36 + 1;
  if (v36 >= v35 >> 1)
  {
    v147 = sub_1A7CCCAA4((v35 > 1), v36 + 1, 1, v20);
    v33 = v159;
    v20 = v147;
  }

  *(v20 + 2) = v37;
  *&v20[16 * v36 + 32] = v34;
  *v33 = v20;
  v38 = *(v20 + 3);
  if ((v36 + 2) > (v38 >> 1))
  {
    v148 = sub_1A7CCCAA4((v38 > 1), v36 + 2, 1, v20);
    v33 = v159;
    v20 = v148;
  }

  *(v20 + 2) = v36 + 2;
  v39 = &v20[16 * v37];
  *(v39 + 4) = 0;
  *(v39 + 5) = 0xE000000000000000;
  *v33 = v20;
  v40 = v33;
  v158 = *(a2 + 16);
  if (v158)
  {
    v41 = 0;
    v173 = *(a3 + 16);
    v167 = "LinkCreationController:";
    v168 = a3 + 32;
    v156 = (v8 + 8);
    v157 = a2 + 32;
    v160 = (v12 + 8);
    *&v32 = 136315650;
    v166 = v32;
    v42 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v161 = v41;
      v45 = *(v157 + 8 * v41);
      *&v188 = 0x206D6F7246202DLL;
      *(&v188 + 1) = 0xE700000000000000;
      *&v183 = v45;

      v46 = LinkEndpoint.uniqueID.getter();
      MEMORY[0x1AC561C90](v46);

      v47 = v188;
      v48 = *v40;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v48;
      if ((v49 & 1) == 0)
      {
        v122 = sub_1A7CCCAA4(0, *(v48 + 2) + 1, 1, v48);
        v40 = v159;
        v48 = v122;
        *v159 = v122;
      }

      v51 = *(v48 + 2);
      v50 = *(v48 + 3);
      if (v51 >= v50 >> 1)
      {
        v123 = sub_1A7CCCAA4((v50 > 1), v51 + 1, 1, v48);
        v40 = v159;
        v48 = v123;
      }

      *(v48 + 2) = v51 + 1;
      *&v48[16 * v51 + 32] = v47;
      *v40 = v48;
      v194 = v42;
      if (v173)
      {
        break;
      }

      v43 = v42;
LABEL_14:
      v41 = v161 + 1;
      *&v188 = v43;
      v44._countAndFlagsBits = 538976288;
      v44._object = 0xE400000000000000;
      v40 = v159;
      LinkEngineStateLog.log(_:indentation:)(&v188, v44);

      if (v41 == v158)
      {
        v20 = *v40;
        goto LABEL_96;
      }
    }

    v52 = 0;
    v53 = v172;
    while (1)
    {
      v175 = v52;
      v56 = *(v168 + 8 * v52);
      v57 = qword_1EB2B2D08;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = sub_1A7E22060();
      v59 = sub_1A7B0CB00(v58, qword_1EB2B2D10);

      v174 = v59;
      v60 = sub_1A7E22040();
      v61 = sub_1A7E228D0();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v188 = v63;
        *v62 = v166;
        *(v62 + 4) = sub_1A7B0CB38(0xD000000000000039, v167 | 0x8000000000000000, &v188);
        *(v62 + 12) = 2080;
        *&v183 = v45;
        v64 = LinkEndpoint.uniqueID.getter();
        v66 = sub_1A7B0CB38(v64, v65, &v188);

        *(v62 + 14) = v66;
        *(v62 + 22) = 2080;
        *&v183 = v56;
        v67 = LinkEndpoint.uniqueID.getter();
        v69 = sub_1A7B0CB38(v67, v68, &v188);

        *(v62 + 24) = v69;
        v53 = v172;
        _os_log_impl(&dword_1A7AD9000, v60, v61, "%s: checking %s -> %s", v62, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v63, -1, -1);
        v70 = v62;
        v42 = MEMORY[0x1E69E7CC0];
        MEMORY[0x1AC5654B0](v70, -1, -1);
      }

      v72 = v170;
      v71 = v171;
      v73 = v169;
      if (!*(v45 + 16))
      {
        break;
      }

      v74 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP);
      if ((v75 & 1) == 0)
      {
        break;
      }

      sub_1A7B0CD10(*(v45 + 56) + 32 * v74, &v183);
      sub_1A7B1503C(&v183, &v177);
      sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        goto LABEL_34;
      }

      if (!*(&v189 + 1))
      {
        goto LABEL_34;
      }

      sub_1A7CC99E0(&v188, &v183);
      sub_1A7CC7FFC(&qword_1EB2B5048, &qword_1A7E431D0);
      v76 = v162;
      if (swift_dynamicCast())
      {
        (*v160)(v76, v53);
        sub_1A7B0CD6C(&v183);
        sub_1A7CE23DC(&v188);
        v77 = 0;
      }

      else if (swift_dynamicCast())
      {
        (*v156)(v73, v71);
        sub_1A7B0CD6C(&v183);
        sub_1A7CE23DC(&v188);
        v77 = 1;
      }

      else
      {
        sub_1A7B0CD6C(&v183);
        sub_1A7CE23DC(&v188);
        v77 = 2;
      }

      v42 = MEMORY[0x1E69E7CC0];
      if (!*(v56 + 16))
      {
LABEL_54:
        v188 = 0u;
        v189 = 0u;
        v190 = 0u;
        v191 = 0u;
        goto LABEL_55;
      }

LABEL_41:
      v80 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP);
      if ((v81 & 1) == 0)
      {
        goto LABEL_54;
      }

      sub_1A7B0CD10(*(v56 + 56) + 32 * v80, &v183);
      sub_1A7B1503C(&v183, &v177);
      sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
      if (swift_dynamicCast())
      {
        if (*(&v189 + 1))
        {
          sub_1A7CC99E0(&v188, &v183);
          sub_1A7CC7FFC(&qword_1EB2B5048, &qword_1A7E431D0);
          v82 = v53;
          v83 = v163;
          if (swift_dynamicCast())
          {
            (*v160)(v83, v82);
            sub_1A7B0CD6C(&v183);
            sub_1A7CE23DC(&v188);
            v84 = 0;
          }

          else if (swift_dynamicCast())
          {
            (*v156)(v72, v71);
            sub_1A7B0CD6C(&v183);
            sub_1A7CE23DC(&v188);
            v84 = 1;
          }

          else
          {
            sub_1A7B0CD6C(&v183);
            sub_1A7CE23DC(&v188);
            v84 = 2;
          }

          v53 = v82;
          v42 = MEMORY[0x1E69E7CC0];
          goto LABEL_82;
        }
      }

      else
      {
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
      }

LABEL_55:
      sub_1A7CC9970(&v188, &qword_1EB2B5030, &unk_1A7E52250);
      if (!*(v56 + 16) || (v85 = sub_1A7CD0DFC(&type metadata for LinkEndpointIPFamily), (v86 & 1) == 0) || (sub_1A7B0CD10(*(v56 + 56) + 32 * v85, &v188), sub_1A7B1503C(&v188, &v183), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) == 0) || !v178)
      {
        if (v77 != 3)
        {
          goto LABEL_87;
        }

        goto LABEL_61;
      }

      v84 = v177;

LABEL_82:
      if (v77 == 3)
      {
        if (v84 != 3)
        {
          goto LABEL_87;
        }
      }

      else if (v84 == 3 || qword_1A7E434C0[v77] != qword_1A7E434C0[v84])
      {
LABEL_87:

        v106 = sub_1A7E22040();
        v107 = sub_1A7E228C0();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *&v188 = v109;
          *v108 = v166;
          *(v108 + 4) = sub_1A7B0CB38(0xD000000000000039, v167 | 0x8000000000000000, &v188);
          *(v108 + 12) = 2080;
          *&v183 = v45;
          v110 = LinkEndpoint.uniqueID.getter();
          v112 = sub_1A7B0CB38(v110, v111, &v188);

          *(v108 + 14) = v112;
          *(v108 + 22) = 2080;
          *&v183 = v56;
          v113 = LinkEndpoint.uniqueID.getter();
          v115 = v114;

          v116 = sub_1A7B0CB38(v113, v115, &v188);

          *(v108 + 24) = v116;
          _os_log_impl(&dword_1A7AD9000, v106, v107, "%s: skipping %s -> %s because IP family is different", v108, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1AC5654B0](v109, -1, -1);
          v117 = v108;
          v42 = MEMORY[0x1E69E7CC0];
          MEMORY[0x1AC5654B0](v117, -1, -1);
        }

        else
        {
        }

        goto LABEL_22;
      }

LABEL_61:
      v193 = v42;
      *&v188 = 0x206F54202DLL;
      *(&v188 + 1) = 0xE500000000000000;
      *&v183 = v56;
      v87 = LinkEndpoint.uniqueID.getter();
      MEMORY[0x1AC561C90](v87);

      v88 = v188;
      v89 = sub_1A7CCCAA4(0, 1, 1, v42);
      v91 = *(v89 + 2);
      v90 = *(v89 + 3);
      if (v91 >= v90 >> 1)
      {
        v89 = sub_1A7CCCAA4((v90 > 1), v91 + 1, 1, v89);
      }

      *(v89 + 2) = v91 + 1;
      *&v89[16 * v91 + 32] = v88;
      v193 = v89;
      sub_1A7CE0488(v56, &type metadata for IDSLinkEndpointInterfaceAllowList, 1, &v188);
      v92 = v188;
      v53 = v172;
      if (v188 < 2)
      {
LABEL_21:
        *&v188 = v42;
        sub_1A7CE1350(v45, v56, v42, v165, &v188, v164);

        *&v183 = v188;
        v54._countAndFlagsBits = 538976288;
        v54._object = 0xE400000000000000;
        LinkEngineStateLog.log(_:indentation:)(&v183, v54);

        *&v183 = v193;
        v55._countAndFlagsBits = 538976288;
        v55._object = 0xE400000000000000;
        LinkEngineStateLog.log(_:indentation:)(&v183, v55);
      }

      else
      {
        sub_1A7CE03D4(v45, &v183);
        v191 = v186;
        v192 = v187;
        v189 = v184;
        v190 = v185;
        v188 = v183;
        if (!*(&v187 + 1) || (v93 = BYTE8(v189), v94 = v189, sub_1A7CC9970(&v188, &qword_1EB2B5038, &unk_1A7E431C0), (v93 & 1) != 0))
        {
          v94 = -1;
        }

        v95 = *(v92 + 16);
        v96 = 32;
        while (v95)
        {
          v97 = *(v92 + v96);
          v96 += 8;
          --v95;
          if (v97 == v94)
          {
            sub_1A7CE23BC(v92);
            goto LABEL_21;
          }
        }

        swift_bridgeObjectRetain_n();
        sub_1A7CE23CC(v92);
        v98 = sub_1A7E22040();
        v99 = sub_1A7E228C0();
        sub_1A7CE23BC(v92);
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v182 = v101;
          *v100 = v166;
          *(v100 + 4) = sub_1A7B0CB38(0xD000000000000039, v167 | 0x8000000000000000, &v182);
          *(v100 + 12) = 2048;
          if (!*(v45 + 16) || (v102 = sub_1A7CD0DFC(&type metadata for LinkEndpointInterface), (v103 & 1) == 0) || (sub_1A7B0CD10(*(v45 + 56) + 32 * v102, &v177), sub_1A7B1503C(&v177, &v176), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) == 0))
          {
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
          }

          v180 = v186;
          v181 = v187;
          v178 = v184;
          v179 = v185;
          v177 = v183;
          if (*(&v187 + 1))
          {
            v104 = BYTE8(v178);
            v105 = v178;
            sub_1A7CC9970(&v177, &qword_1EB2B5038, &unk_1A7E431C0);

            if ((v104 & 1) == 0)
            {
              goto LABEL_93;
            }
          }

          else
          {
          }

          v105 = -1;
LABEL_93:
          *(v100 + 14) = v105;

          *(v100 + 22) = 2080;
          v118 = MEMORY[0x1AC561E20](v92, MEMORY[0x1E69E6530]);
          v120 = v119;
          sub_1A7CE23BC(v92);
          v121 = sub_1A7B0CB38(v118, v120, &v182);

          *(v100 + 24) = v121;
          _os_log_impl(&dword_1A7AD9000, v98, v99, "%s: interface not in allow list; interface: %ld, allow list: %s", v100, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1AC5654B0](v101, -1, -1);
          MEMORY[0x1AC5654B0](v100, -1, -1);

          v42 = MEMORY[0x1E69E7CC0];
          goto LABEL_22;
        }

        swift_bridgeObjectRelease_n();
        sub_1A7CE23BC(v92);
      }

LABEL_22:
      v52 = v175 + 1;
      if (v175 + 1 == v173)
      {

        v43 = v194;
        goto LABEL_14;
      }
    }

    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
LABEL_34:
    sub_1A7CC9970(&v188, &qword_1EB2B5030, &unk_1A7E52250);
    if (*(v45 + 16) && (v78 = sub_1A7CD0DFC(&type metadata for LinkEndpointIPFamily), (v79 & 1) != 0) && (sub_1A7B0CD10(*(v45 + 56) + 32 * v78, &v188), sub_1A7B1503C(&v188, &v183), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) != 0) && v178)
    {
      v77 = v177;

      if (!*(v56 + 16))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v77 = 3;
      if (!*(v56 + 16))
      {
        goto LABEL_54;
      }
    }

    goto LABEL_41;
  }

LABEL_96:
  v124 = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v20;
  if ((v124 & 1) == 0)
  {
    v149 = sub_1A7CCCAA4(0, *(v20 + 2) + 1, 1, v20);
    v40 = v159;
    v20 = v149;
    *v159 = v149;
  }

  v125 = v155;
  v127 = *(v20 + 2);
  v126 = *(v20 + 3);
  v128 = v127 + 1;
  if (v127 >= v126 >> 1)
  {
    v150 = sub_1A7CCCAA4((v126 > 1), v127 + 1, 1, v20);
    v40 = v159;
    v20 = v150;
  }

  *(v20 + 2) = v128;
  v129 = &v20[16 * v127];
  *(v129 + 4) = 0;
  *(v129 + 5) = 0xE000000000000000;
  *v40 = v20;
  v130 = *(v20 + 3);
  v131 = v127 + 2;
  if (v131 > (v130 >> 1))
  {
    v151 = sub_1A7CCCAA4((v130 > 1), v131, 1, v20);
    v40 = v159;
    v20 = v151;
  }

  *(v20 + 2) = v131;
  v132 = &v20[16 * v128];
  *(v132 + 4) = 0xD000000000000017;
  *(v132 + 5) = 0x80000001A7EAE1E0;
  *v40 = v20;
  v133 = MEMORY[0x1E69E7CC0];
  *&v177 = MEMORY[0x1E69E7CC0];
  v134 = *(v125 + 16);
  v135 = v154;
  swift_beginAccess();
  v136 = *v135;
  v137 = *(*v135 + 16);
  if (!v137)
  {
    goto LABEL_105;
  }

  v175 = v134;
  v138 = sub_1A7CE0B74(v137, 0);
  v139 = sub_1A7CE0E08(&v188, v138 + 4, v137, v136);
  v140 = v188;

  result = sub_1A7CC9770(v140);
  if (v139 == v137)
  {
    v133 = v138;
LABEL_105:
    v142 = sub_1A7DEA990(v153, v133, &v177);

    *&v188 = v177;
    v143._countAndFlagsBits = 538976288;
    v143._object = 0xE400000000000000;
    LinkEngineStateLog.log(_:indentation:)(&v188, v143);

    return v142;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7CDFFF4()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2D10);
  sub_1A7B0CB00(v0, qword_1EB2B2D10);
  return sub_1A7E22050();
}

uint64_t LinkDefinitionInitializer.initializer.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LinkDefinitionInitializer.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LinkDefinitionInitializer.init(initializer:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static LinkDefinitionInitializer.protocolStack(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;

  sub_1A7E22B70();

  v5 = MEMORY[0x1AC561E20](a1, &type metadata for LinkProtocolID);
  MEMORY[0x1AC561C90](v5);

  result = MEMORY[0x1AC561C90](41, 0xE100000000000000);
  *a2 = sub_1A7CE2430;
  a2[1] = v4;
  a2[2] = 0x6F636F746F72702ELL;
  a2[3] = 0xEF286B636174536CLL;
  return result;
}

_OWORD *sub_1A7CE01D0(uint64_t a1, uint64_t a2)
{
  v3[3] = &type metadata for LinkDefinitionProtocolStack;
  v3[0] = a2;

  return sub_1A7CC8D74(v3, &type metadata for LinkDefinitionProtocolStack);
}

uint64_t EndpointLinkCreationController.init(linkInitializer:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LinkCreationController();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CD0];
  *(v5 + 16) = 0;
  *(v5 + 24) = v6;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v2 + 16) = v5;
  return v2;
}

uint64_t EndpointLinkCreationController.update(_:localEndpoints:remoteEndpoints:permutating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E69E7CC0];
  v4 = EndpointLinkCreationController.update(_:localEndpoints:remoteEndpoints:permutating:log:)(a1, a2, a3, a4, &v6);

  return v4;
}

uint64_t EndpointLinkCreationController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1A7CE0318@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP), (v5 & 1) == 0) || (sub_1A7B0CD10(*(a1 + 56) + 32 * v4, v8), sub_1A7B1503C(v8, &v7), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) == 0))
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1A7CE03D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1A7CD0DFC(&type metadata for LinkEndpointInterface), (v5 & 1) == 0) || (sub_1A7B0CD10(*(a1 + 56) + 32 * v4, v8), sub_1A7B1503C(v8, &v7), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) == 0))
  {
    result = 0.0;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_1A7CE0488@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!*(result + 16) || (v6 = result, result = sub_1A7CD0DFC(a2), (v7 & 1) == 0) || (sub_1A7B0CD10(*(v6 + 56) + 32 * result, v9), sub_1A7B1503C(v9, &v8), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a4 = a3;
  }

  return result;
}

uint64_t sub_1A7CE0528@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(result + 16) || (v3 = result, result = sub_1A7CD0DFC(&type metadata for LinkDefinitionProtocolStack), (v4 & 1) == 0) || (sub_1A7B0CD10(*(v3 + 56) + 32 * result, v6), sub_1A7B1503C(v6, &v5), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1A7CE05CC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (!*(result + 16) || (v3 = result, result = sub_1A7CD0DFC(&type metadata for LinkDefinitionIsPreferred), (v4 & 1) == 0) || (sub_1A7B0CD10(*(v3 + 56) + 32 * result, v6), sub_1A7B1503C(v6, &v5), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 2;
  }

  return result;
}

uint64_t sub_1A7CE0680@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*(result + 16) || (v4 = result, result = sub_1A7CD0DFC(a2), (v5 & 1) == 0) || (sub_1A7B0CD10(*(v4 + 56) + 32 * result, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_1A7CE072C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) && (v3 = result, result = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v4 & 1) != 0))
  {
    sub_1A7B0CD10(*(v3 + 56) + 32 * result, v7);
    sub_1A7B1503C(v7, &v6);
    sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 0;
    }

    v5 = result ^ 1;
  }

  else
  {
    *a2 = 0;
    v5 = 1;
  }

  *(a2 + 4) = v5;
  return result;
}

double sub_1A7CE07D8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointRelaySessionID), (v5 & 1) == 0) || (sub_1A7B0CD10(*(a1 + 56) + 32 * v4, v8), sub_1A7B1503C(v8, &v7), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) == 0))
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1A7CE0874@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) && (v3 = result, result = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointNAT64Prefix), (v4 & 1) != 0))
  {
    sub_1A7B0CD10(*(v3 + 56) + 32 * result, v6);
    sub_1A7B1503C(v6, &v5);
    sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *(a2 + 17) = result ^ 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 256;
  }

  return result;
}

uint64_t sub_1A7CE0934@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!*(result + 16) || (v4 = result, result = sub_1A7CD0DFC(a2), (v5 & 1) == 0) || (sub_1A7B0CD10(*(v4 + 56) + 32 * result, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a3 = 2;
  }

  return result;
}

uint64_t sub_1A7CE09D4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(result + 16) || (v3 = result, result = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointQRPlaceholderMarker), (v4 & 1) == 0) || (sub_1A7B0CD10(*(v3 + 56) + 32 * result, v6), sub_1A7B1503C(v6, &v5), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *sub_1A7CE0A6C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&qword_1EB2B4AC8, &qword_1A7E43290);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1A7CE0AF0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&qword_1EB2B4B98, &qword_1A7E41AE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1A7CE0B74(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&qword_1EB2B5228, &qword_1A7E434A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1A7CE0C04(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&unk_1EB2B7C00, &qword_1A7E41A90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_1A7CE0C80(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&qword_1EB2B4A98, &unk_1A7E41930);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1A7CE0D08(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1A7CE0E08(void *result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v22 = -1 << *(a4 + 32);
    v23 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = a4;
      v17 = (*(a4 + 56) + 24 * (v15 | (v10 << 6)));
      v18 = v17[1];
      v19 = v17[2];
      *v9 = *v17;
      v9[1] = v18;
      v9[2] = v19;
      if (v12 == v23)
      {

        a4 = v16;
        v6 = v22;
        a3 = v23;
        goto LABEL_24;
      }

      v9 += 3;

      result = v12;
      v20 = __OFADD__(v12++, 1);
      a4 = v16;
      if (v20)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v21 = v10 + 1;
    }

    else
    {
      v21 = v11;
    }

    v10 = v21 - 1;
    a3 = result;
    v6 = v22;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A7CE0FA4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A7CE10F8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A7CE1250(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1A7CE1350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6)
{
  v64 = a6;
  v11 = sub_1A7CC7FFC(&qword_1EB2B5220, &qword_1A7E43498);
  v77[3] = v11;
  v77[4] = sub_1A7CE5090();
  v77[0] = a4;
  if (*(a4 + 16))
  {
    v63 = a1;
    v12 = *(a4 + 32);
    v13 = sub_1A7CC9878(v77, v11);
    v14 = MEMORY[0x1EEE9AC00](v13);
    (*(v16 + 16))(&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v62 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v76 = AssociatedConformanceWitness;
    v17 = sub_1A7CC98BC(&v72);

    v60 = v17;
    sub_1A7E22880();
    v55 = v12;
    v18 = *(v12 + 16);
    if (v18)
    {
      v19 = (v55 + 56);
      v56 = xmmword_1A7E418C0;
      v59 = a5;
      v58 = a2;
      v57 = a3;
      do
      {
        v20 = *(v19 - 2);
        v65 = *(v19 - 3);
        v22 = *(v19 - 1);
        v21 = *v19;
        v67 = 8237;
        v68 = 0xE200000000000000;

        MEMORY[0x1AC561C90](v22, v21);
        MEMORY[0x1AC561C90](58, 0xE100000000000000);
        v23 = v67;
        v24 = v68;
        v25 = *a5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_1A7CCCAA4(0, *(v25 + 2) + 1, 1, v25);
          *a5 = v25;
        }

        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        if (v28 >= v27 >> 1)
        {
          v25 = sub_1A7CCCAA4((v27 > 1), v28 + 1, 1, v25);
        }

        *(v25 + 2) = v28 + 1;
        v29 = &v25[16 * v28];
        *(v29 + 4) = v23;
        *(v29 + 5) = v24;
        a5 = v59;
        *v59 = v25;
        v67 = MEMORY[0x1E69E7CC0];
        v66[0] = v63;
        v71 = v58;
        sub_1A7CC7FFC(&qword_1EB2B4B60, &qword_1A7E434A0);
        inited = swift_initStackObject();
        *(inited + 16) = v56;
        *(inited + 32) = v65;
        *(inited + 40) = v20;
        *(inited + 48) = v22;
        *(inited + 56) = v21;
        v70 = v57;

        sub_1A7DDEF70(inited);
        sub_1A7CE19D0(v66, &v71, v70, v60, &v67, v64, v62, AssociatedConformanceWitness);

        v66[0] = v67;
        v31._countAndFlagsBits = 538976288;
        v31._object = 0xE400000000000000;
        LinkEngineStateLog.log(_:indentation:)(v66, v31);

        v19 += 4;
        --v18;
      }

      while (v18);
    }

    sub_1A7B0CD6C(&v72);
  }

  else
  {
    v32 = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
    v72 = v32;
    v73 = a1;
    v74 = a2;
    v33 = a3;
    v34 = *(a3 + 16);
    if (v34)
    {

      v35 = v33 + 56;
      do
      {
        v36 = *(v35 - 24);
        v35 += 32;

        v36(&v72);

        --v34;
      }

      while (v34);
      v37 = v72;
      a1 = v73;
      a2 = v74;
    }

    else
    {
      v37 = v32;
    }

    v67 = v37;
    v68 = a1;
    v69 = a2;
    LinkDefinition.uniqueID.getter();
    v39 = v38;
    v41 = v40;
    v42 = v64;
    swift_beginAccess();

    v43 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v64 + 16);
    *(v64 + 16) = 0x8000000000000000;
    sub_1A7DC3CE4(v37, a1, a2, v39, v41, v43);

    *(v42 + 16) = v71;
    swift_endAccess();
    v66[0] = 8237;
    v66[1] = 0xE200000000000000;
    v67 = v72;
    v68 = v73;
    v69 = v74;
    LinkDefinition.uniqueID.getter();
    v45 = v44;
    v47 = v46;

    MEMORY[0x1AC561C90](v45, v47);

    v48 = *a5;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v48;
    if ((v49 & 1) == 0)
    {
      v48 = sub_1A7CCCAA4(0, *(v48 + 2) + 1, 1, v48);
      *a5 = v48;
    }

    v51 = *(v48 + 2);
    v50 = *(v48 + 3);
    if (v51 >= v50 >> 1)
    {
      v48 = sub_1A7CCCAA4((v50 > 1), v51 + 1, 1, v48);
    }

    *(v48 + 2) = v51 + 1;
    v52 = &v48[16 * v51];
    *(v52 + 4) = 8237;
    *(v52 + 5) = 0xE200000000000000;
    *a5 = v48;
  }

  return sub_1A7B0CD6C(v77);
}

uint64_t sub_1A7CE19D0(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a6;
  v85 = a7;
  v86 = a8;
  v14 = sub_1A7CC98BC(v84);
  (*(*(a7 - 8) + 16))(v14, a4, a7);
  v15 = *a1;
  v16 = *a2;
  sub_1A7E22870();
  v17 = v73;
  if (v73)
  {
    v69 = v15;
    v18 = sub_1A7CC9878(v84, v85);
    v19 = MEMORY[0x1EEE9AC00](v18);
    (*(v21 + 16))(&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v68 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v77 = AssociatedConformanceWitness;
    v66 = sub_1A7CC98BC(&v73);
    sub_1A7E22880();
    v61 = v17;
    v22 = *(v17 + 2);
    if (v22)
    {
      v23 = (v61 + 56);
      v62 = xmmword_1A7E418C0;
      v65 = a5;
      v64 = v16;
      v63 = a3;
      do
      {
        v24 = *(v23 - 2);
        v71 = *(v23 - 3);
        v26 = *(v23 - 1);
        v25 = *v23;
        v81 = 8237;
        v82 = 0xE200000000000000;

        MEMORY[0x1AC561C90](v26, v25);
        MEMORY[0x1AC561C90](58, 0xE100000000000000);
        v28 = v81;
        v27 = v82;
        v29 = *a5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_1A7CCCAA4(0, *(v29 + 2) + 1, 1, v29);
          *a5 = v29;
        }

        v32 = *(v29 + 2);
        v31 = *(v29 + 3);
        if (v32 >= v31 >> 1)
        {
          v29 = sub_1A7CCCAA4((v31 > 1), v32 + 1, 1, v29);
        }

        *(v29 + 2) = v32 + 1;
        v33 = &v29[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v27;
        a5 = v65;
        *v65 = v29;
        v81 = MEMORY[0x1E69E7CC0];
        v78 = v64;
        v79 = v69;
        sub_1A7CC7FFC(&qword_1EB2B4B60, &qword_1A7E434A0);
        inited = swift_initStackObject();
        *(inited + 16) = v62;
        *(inited + 32) = v71;
        *(inited + 40) = v24;
        *(inited + 48) = v26;
        *(inited + 56) = v25;
        v72 = v63;

        sub_1A7DDEF70(inited);
        sub_1A7CE19D0(&v79, &v78, v72, v66, &v81, v70, v68, AssociatedConformanceWitness);

        v79 = v81;
        v35._countAndFlagsBits = 538976288;
        v35._object = 0xE400000000000000;
        LinkEngineStateLog.log(_:indentation:)(&v79, v35);

        v23 += 4;
        --v22;
      }

      while (v22);
    }

    sub_1A7B0CD6C(&v73);
  }

  else
  {
    v36 = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
    v73 = v36;
    v74 = v15;
    v75 = v16;
    v37 = a3;
    v38 = *(a3 + 16);
    if (v38)
    {

      v39 = v37 + 56;
      do
      {
        v40 = *(v39 - 24);
        v39 += 32;

        v40(&v73);

        --v38;
      }

      while (v38);
      v41 = v73;
      v15 = v74;
      v16 = v75;
    }

    else
    {
      v41 = v36;
    }

    v81 = v41;
    v82 = v15;
    v83 = v16;
    LinkDefinition.uniqueID.getter();
    v43 = v42;
    v45 = v44;
    v46 = v70;
    swift_beginAccess();

    v47 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v70 + 16);
    *(v70 + 16) = 0x8000000000000000;
    sub_1A7DC3CE4(v41, v15, v16, v43, v45, v47);

    *(v46 + 16) = v78;
    swift_endAccess();
    v79 = 8237;
    v80 = 0xE200000000000000;
    v81 = v73;
    v82 = v74;
    v83 = v75;
    LinkDefinition.uniqueID.getter();
    v49 = v48;
    v51 = v50;

    MEMORY[0x1AC561C90](v49, v51);

    v52 = v79;
    v53 = v80;
    v54 = *a5;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_1A7CCCAA4(0, *(v54 + 2) + 1, 1, v54);
      *a5 = v54;
    }

    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    if (v57 >= v56 >> 1)
    {
      v54 = sub_1A7CCCAA4((v56 > 1), v57 + 1, 1, v54);
    }

    *(v54 + 2) = v57 + 1;
    v58 = &v54[16 * v57];
    *(v58 + 4) = v52;
    *(v58 + 5) = v53;
    *a5 = v54;
  }

  return sub_1A7B0CD6C(v84);
}

unint64_t sub_1A7CE2010(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50D0, &unk_1A7E43330);
    v3 = sub_1A7E22E20();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = *(v4 + 1);
      v8 = *(v4 + 2);
      v9 = *(v4 + 3);
      v10 = *(v4 + 4);

      result = sub_1A7CD0D3C(v5 | (v6 << 8), v7, v8, v9);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 32 * result;
      *v13 = v5;
      *(v13 + 1) = v6;
      *(v13 + 8) = v7;
      *(v13 + 16) = v8;
      *(v13 + 24) = v9;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v4 += 40;
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

unint64_t sub_1A7CE2144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50C8, &unk_1A7E52140);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 40); ; i += 6)
    {
      v19 = v1;
      v5 = *(i - 8);
      v6 = *(i - 7);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];

      result = sub_1A7CD0D3C(v5 | (v6 << 8), v7, v8, v9);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 32 * result;
      *v14 = v5;
      *(v14 + 1) = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 24) = v9;
      v15 = (v3[7] + 16 * result);
      *v15 = v10;
      v15[1] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      v1 = v19 - 1;
      if (v19 == 1)
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

unint64_t sub_1A7CE2290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5230, &unk_1A7E434B0);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
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

uint64_t sub_1A7CE23BC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A7CE23CC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

_OWORD *sub_1A7CE2430()
{
  v1 = *(v0 + 16);
  v3[3] = &type metadata for LinkDefinitionProtocolStack;
  v3[0] = v1;

  return sub_1A7CC8D74(v3, &type metadata for LinkDefinitionProtocolStack);
}

uint64_t sub_1A7CE2480(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A7CE24C8(uint64_t result, int a2, int a3)
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

unint64_t sub_1A7CE2568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5208, &qword_1A7E43480);
    v3 = sub_1A7E22E20();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1A7CD1F00(i, &v10, &qword_1EB2B5210, &qword_1A7E43488);
      result = sub_1A7CD0DFC(v10);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v10;
      result = sub_1A7B1503C(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_1A7CE267C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51F8, &qword_1A7E43470);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B5200, &qword_1A7E43478);
      result = sub_1A7CD12C0(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4B30, &qword_1A7E41A70);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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

unint64_t sub_1A7CE27BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5050, &qword_1A7E43298);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B5058, &unk_1A7E432A0);
      result = sub_1A7CD1220(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4B00, &qword_1A7E41A40);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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

unint64_t sub_1A7CE28FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5218, &qword_1A7E43490);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1A7CE2A10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5090, &qword_1A7E432F0);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B5098, &qword_1A7E432F8);
      result = sub_1A7CD1220(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4B00, &qword_1A7E41A40);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1A7CE2B54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51F0, &qword_1A7E43468);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1A7CE2C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51C0, &qword_1A7E43430);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B51C8, &qword_1A7E43438);
      result = sub_1A7CD1368(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4BE0, &qword_1A7E41B28);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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

unint64_t sub_1A7CE2D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51E0, &qword_1A7E43458);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B51E8, &qword_1A7E43460);
      result = sub_1A7CD137C(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4B40, &qword_1A7E41A80);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1A7CE2ED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51D0, &qword_1A7E43440);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B51D8, &unk_1A7E43448);
      result = sub_1A7CD137C(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4B40, &qword_1A7E41A80);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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

unint64_t sub_1A7CE3028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5148, &qword_1A7E433B8);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1A7CE312C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5118, &qword_1A7E43390);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B5120, &qword_1A7E43398);
      result = sub_1A7CD12C0(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4B30, &qword_1A7E41A70);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1A7CE3270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5128, &unk_1A7E520F0);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B5130, &unk_1A7E433A0);
      result = sub_1A7CD1234(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4AE8, &qword_1A7E43370);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1A7CE33B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5138, &unk_1A7E52100);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B5140, &qword_1A7E433B0);
      result = sub_1A7CD1390(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4B18, &qword_1A7E4F270);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1A7CE34F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50E8, &qword_1A7E43348);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B50F0, &unk_1A7E43350);
      result = sub_1A7CD1368(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4BE0, &qword_1A7E41B28);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1A7CE363C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5060, &qword_1A7E432B0);
    v3 = sub_1A7E22E20();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v25 = *v4;
      *v26 = v6;
      v7 = v4[5];
      *&v26[48] = v4[4];
      *&v26[64] = v7;
      v8 = v4[7];
      *&v26[80] = v4[6];
      *&v26[96] = v8;
      v9 = v4[3];
      *&v26[16] = v4[2];
      *&v26[32] = v9;
      v10 = v25;
      v11 = *v26;
      sub_1A7CD1F00(&v25, &v24, &qword_1EB2B5068, &qword_1A7E432B8);
      result = sub_1A7CD12D4(v10, *(&v10 + 1), v11);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 24 * result;
      *v14 = v10;
      *(v14 + 16) = v11;
      v15 = v3[7] + 104 * result;
      v16 = *&v26[8];
      v17 = *&v26[40];
      *(v15 + 16) = *&v26[24];
      *(v15 + 32) = v17;
      *v15 = v16;
      v18 = *&v26[56];
      v19 = *&v26[72];
      v20 = *&v26[88];
      *(v15 + 96) = *&v26[104];
      *(v15 + 64) = v19;
      *(v15 + 80) = v20;
      *(v15 + 48) = v18;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_11;
      }

      v3[2] = v23;
      if (!i)
      {

        return v3;
      }

      v4 += 8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE37CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5170, &qword_1A7E433E0);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 56); ; i = (i + 56))
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v15 = i[1];
      v16 = *i;

      result = sub_1A7CD1424(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 40 * result;
      *v11 = v7;
      *(v11 + 24) = v15;
      *(v11 + 8) = v16;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1A7CE38F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51A8, &unk_1A7E52150);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1A7CD12D4(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1A7CE3A04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51A0, &unk_1A7E43410);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1A7CD12D4(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
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

unint64_t sub_1A7CE3B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5088, &unk_1A7E52120);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *(i - 7);
      v11 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 32 * result;
      *v15 = v8;
      *(v15 + 8) = v7;
      *(v15 + 16) = v9;
      *(v15 + 17) = v10;
      *(v15 + 24) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_1A7CE3C64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51B0, &unk_1A7E43420);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, &v13, &qword_1EB2B51B8, &qword_1A7E54870);
      v5 = v13;
      v6 = v14;
      result = sub_1A7CD1248(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A7B1503C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1A7CE3D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50B8, &unk_1A7E52170);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1A7CE3EC0(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5188, &qword_1A7E433F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A7CC7FFC(&qword_1EB2B5190, &qword_1A7E43400);
    v7 = sub_1A7E22E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A7CD1F00(v9, v5, &qword_1EB2B5188, &qword_1A7E433F8);
      result = sub_1A7CD14FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1A7E21B60();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1A7CE40A8(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5178, &qword_1A7E433E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A7CC7FFC(&qword_1EB2B5180, &qword_1A7E433F0);
    v7 = sub_1A7E22E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1A7CD1F00(v9, v5, &qword_1EB2B5178, &qword_1A7E433E8);
      v11 = *v5;
      result = sub_1A7CD14B8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1A7CE4290(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5160, &qword_1A7E433D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A7CC7FFC(&qword_1EB2B5168, &qword_1A7E433D8);
    v7 = sub_1A7E22E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A7CD1F00(v9, v5, &qword_1EB2B5160, &qword_1A7E433D0);
      result = sub_1A7CD14FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1A7E21B60();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1A7CE4478(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5150, &unk_1A7E433C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A7CC7FFC(&qword_1EB2B5158, &unk_1A7E52160);
    v7 = sub_1A7E22E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A7CD1F00(v9, v5, &qword_1EB2B5150, &unk_1A7E433C0);
      result = sub_1A7CD14FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1A7E21B60();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1A7CE4674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5108, &qword_1A7E43378);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B5110, &unk_1A7E43380);
      result = sub_1A7CD1390(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4B18, &qword_1A7E4F270);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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

unint64_t sub_1A7CE47B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50F8, &qword_1A7E43360);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B5100, &qword_1A7E43368);
      result = sub_1A7CD1234(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4AE8, &qword_1A7E43370);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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

unint64_t sub_1A7CE48F4(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5070, &qword_1A7E432C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A7CC7FFC(&qword_1EB2B5078, &qword_1A7E432C8);
    v7 = sub_1A7E22E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1A7CD1F00(v9, v5, &qword_1EB2B5070, &qword_1A7E432C0);
      v11 = *v5;
      result = sub_1A7CD15C0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1A7CE4AF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1A7CC7FFC(a2, a3);
    v5 = sub_1A7E22E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1A7CD1248(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1A7CE4BEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50D8, &qword_1A7E4F800);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1A7CD162C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1A7CE4CF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1A7CC7FFC(a2, a3);
    v5 = sub_1A7E22E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1A7CD1248(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1A7CE4DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50A0, &unk_1A7E43300);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1A7CD162C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_1A7CE4F14(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A7CC7FFC(a2, a3);
  v7 = sub_1A7E22E20();
  LOBYTE(v8) = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = (a1 + 56);
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 8);
    v19 = *v14;

    v12 = a4(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7CE5028(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A7CC7FFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A7CE5090()
{
  result = qword_1EB2B2908;
  if (!qword_1EB2B2908)
  {
    sub_1A7CC9830(&qword_1EB2B5220, &qword_1A7E43498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2908);
  }

  return result;
}

uint64_t sub_1A7CE5100()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B5238);
  sub_1A7B0CB00(v0, qword_1EB2B5238);
  return sub_1A7E22050();
}

uint64_t sub_1A7CE5188(void *a1)
{
  LinkEndpoint.init(_:isRemote:relaySessionID:)([a1 local], 0, 0);
  if (!v21)
  {
    return 0;
  }

  LinkEndpoint.init(_:isRemote:relaySessionID:)([a1 remote], 1, 0);
  v25 = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
  v26 = v21;
  v27 = v21;
  if ([a1 isVirtualRelayStunCandidatePair])
  {
    v2 = &unk_1F1AABBE8;
  }

  else if ([a1 isP2P])
  {
    v2 = &unk_1F1AABC18;
  }

  else
  {
    if (![a1 isRelayStunCandidatePair])
    {
      if (qword_1EB2B4710 != -1)
      {
        swift_once();
      }

      v16 = sub_1A7E22060();
      sub_1A7B0CB00(v16, qword_1EB2B5238);
      v17 = sub_1A7E22040();
      v18 = sub_1A7E228E0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1A7B0CB38(0xD00000000000001ALL, 0x80000001A7EAE2A0, &v21);
        _os_log_impl(&dword_1A7AD9000, v17, v18, "%s: Unexpected candidate pair type: neither VR nor P2P, and not Relay.", v19, 0xCu);
        sub_1A7B0CD6C(v20);
        MEMORY[0x1AC5654B0](v20, -1, -1);
        MEMORY[0x1AC5654B0](v19, -1, -1);
      }

      goto LABEL_14;
    }

    if (qword_1EB2B4710 != -1)
    {
      swift_once();
    }

    v4 = sub_1A7E22060();
    sub_1A7B0CB00(v4, qword_1EB2B5238);
    v5 = sub_1A7E22040();
    v6 = sub_1A7E228E0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1A7B0CB38(0xD00000000000001ALL, 0x80000001A7EAE2A0, &v21);
      _os_log_impl(&dword_1A7AD9000, v5, v6, "%s: LinkEngine Relay Links generally should not be created from existing IDSStunCandidatePairs.", v7, 0xCu);
      sub_1A7B0CD6C(v8);
      MEMORY[0x1AC5654B0](v8, -1, -1);
      MEMORY[0x1AC5654B0](v7, -1, -1);
    }

    v2 = &unk_1F1AABC48;
  }

  v24 = &type metadata for LinkDefinitionProtocolStack;
  v21 = v2;
  sub_1A7CC8D74(&v21, &type metadata for LinkDefinitionProtocolStack);
LABEL_14:
  v9 = v25;
  v10 = v26;
  v11 = v27;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  LinkDefinition.uniqueID.getter();
  v13 = v12;
  v15 = LinkEngine.add(linkWithUniqueName:)(v12, v14);
  os_unfair_lock_lock(v15 + 10);
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = &type metadata for LinkDefinitionComponent;

  sub_1A7CC8D74(&v21, &type metadata for LinkDefinitionComponent);
  os_unfair_lock_unlock(v15 + 10);

  return v13;
}

uint64_t LEToolLinkStatePrintStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t LEToolRelayEngineResponseMessage.print(to:style:)(void *a1, uint64_t *a2)
{
  v5 = v2[3];
  v44 = v2[2];
  v45 = v5;
  v46 = v2[4];
  v47 = *(v2 + 10);
  v6 = v2[1];
  v42 = *v2;
  v43 = v6;
  v7 = a1[3];
  v8 = a1[4];
  sub_1A7CC9878(a1, v7);
  strcpy(&v38, "Relay Engine");
  BYTE13(v38) = 0;
  HIWORD(v38) = -5120;
  LOWORD(v39) = 513;
  *(&v39 + 1) = 0;
  v40 = 0;
  v41 = 2;
  CLIPrinter.print(_:)(&v38, v7, v8);

  v9 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v10 = v42;
    v11 = a1[3];
    v12 = a1[4];
    v13 = sub_1A7CC9878(a1, v11);
    MEMORY[0x1EEE9AC00](v13);
    v30 = v10;
    v31 = v9;
    CLIPrinter.print(_:)(sub_1A7CE5EF4, v29, v11, v12);
  }

  v14 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v15 = v43;
    v16 = a1[3];
    v17 = a1[4];
    v18 = sub_1A7CC9878(a1, v16);
    MEMORY[0x1EEE9AC00](v18);
    v30 = v15;
    v31 = v14;
    CLIPrinter.print(_:)(sub_1A7CE5EEC, v29, v16, v17);
  }

  if (*(v44 + 16))
  {
    v19 = a1[3];
    v20 = a1[4];
    v21 = sub_1A7CC9878(a1, v19);
    MEMORY[0x1EEE9AC00](v21);
    v30 = &v42;
    CLIPrinter.print(_:)(sub_1A7CE5C64, v29, v19, v20);
  }

  v22 = a1[3];
  v23 = a1[4];
  v24 = sub_1A7CC9878(a1, v22);
  MEMORY[0x1EEE9AC00](v24);
  v30 = &v42;
  CLIPrinter.print(_:)(sub_1A7CE5D48, v29, v22, v23);
  v25 = a1[3];
  v26 = a1[4];
  sub_1A7CC9878(a1, v25);
  *(&v39 + 1) = &type metadata for CLIRule;
  v40 = sub_1A7CE5D50();
  LOBYTE(v38) = 9;
  CLIPrinter.print(_:)(&v38, v25, v26);
  sub_1A7B0CD6C(&v38);
  sub_1A7CC9878(a1, a1[3]);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v27);
  v38 = v45;
  v39 = v46;
  v40 = v47;
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v33 = *a2;
  v34 = *(a2 + 8);
  sub_1A7CE5DA4(&v38, v32);
  LEToolResponse.print(to:style:)(a1, &v33);
  return sub_1A7CE5E00(v35, *(&v35 + 1), v36, *(&v36 + 1), v37);
}

uint64_t sub_1A7CE5994(uint64_t a1, uint64_t a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x80000001A7EAE2C0;
  *(v4 + 48) = 513;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 768;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;

  sub_1A7DDF090(inited);
  return v4;
}

uint64_t sub_1A7CE5A80(uint64_t a1, uint64_t a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = 0x6973736553205251;
  *(v4 + 40) = 0xEF203A4449206E6FLL;
  *(v4 + 48) = 513;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 768;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;

  sub_1A7DDF090(inited);
  return v4;
}

uint64_t sub_1A7CE5B74(uint64_t a1)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 0xD000000000000014;
  *(v2 + 40) = 0x80000001A7EAE2E0;
  *(v2 + 48) = 512;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  v3 = MEMORY[0x1AC561E20](*(a1 + 32), MEMORY[0x1E69E6158]);
  v5 = v4;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  *(inited + 48) = 768;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;
  sub_1A7DDF090(inited);
  return v2;
}

uint64_t sub_1A7CE5C6C(uint64_t a1)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 0x657461636F6C6C41;
  *(v2 + 40) = 0xEF203A6570795420;
  *(v2 + 48) = 513;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  v3 = *(a1 + 40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  IDSQuickRelayAllocateType.cli.getter(v3, inited + 32);
  sub_1A7DDF090(inited);
  return v2;
}

unint64_t sub_1A7CE5D50()
{
  result = qword_1EB2B5250;
  if (!qword_1EB2B5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5250);
  }

  return result;
}

uint64_t sub_1A7CE5E00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 60) & 7;
  switch(v5)
  {
    case 2:
      return sub_1A7CE5E84(result, a2, a3, a4 & 0x8FFFFFFFFFFFFFFFLL, a5);
    case 1:
      return sub_1A7CE5E2C(result, a2, a3);
    case 0:
  }

  return result;
}

uint64_t sub_1A7CE5E2C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return v4;
    }
  }
}

uint64_t sub_1A7CE5E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (a4 < 0)
  {
  }

  return result;
}

unint64_t sub_1A7CE5F00()
{
  result = qword_1EB2B5258;
  if (!qword_1EB2B5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5258);
  }

  return result;
}

uint64_t MetatypeWrapper.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7CE5FF0()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7CE6064(uint64_t a1)
{
  v2 = *v1;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v2);
  return sub_1A7E23240();
}

unint64_t sub_1A7CE60AC()
{
  result = qword_1EB2B3378;
  if (!qword_1EB2B3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3378);
  }

  return result;
}

uint64_t sub_1A7CE611C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A7CE6178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A7CE6208(uint64_t a1)
{
  v2 = sub_1A7CE6D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE6244(uint64_t a1)
{
  v2 = sub_1A7CE6D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CE6280()
{
  v1 = *v0;
  v2 = 0x65736E65707865;
  v3 = 0x74536C616E676973;
  v4 = 0x7374656B636170;
  if (v1 != 3)
  {
    v4 = 0x7473727562;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7374617473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A7CE6320@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7CE8480(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7CE6348(uint64_t a1)
{
  v2 = sub_1A7CE6D14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE6384(uint64_t a1)
{
  v2 = sub_1A7CE6D14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CE63C0(uint64_t a1)
{
  v2 = sub_1A7CE7008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE63FC(uint64_t a1)
{
  v2 = sub_1A7CE7008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CE6438(uint64_t a1)
{
  v2 = sub_1A7CE6E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE6474(uint64_t a1)
{
  v2 = sub_1A7CE6E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CE64B0(uint64_t a1)
{
  v2 = sub_1A7CE6EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE64EC(uint64_t a1)
{
  v2 = sub_1A7CE6EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CE6528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7CE65A8(uint64_t a1)
{
  v2 = sub_1A7CE6F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE65E4(uint64_t a1)
{
  v2 = sub_1A7CE6F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportMeasurement.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5260, &qword_1A7E436D0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v34 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B5268, &qword_1A7E436D8);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v34 - v6;
  v37 = sub_1A7CC7FFC(&qword_1EB2B5270, &qword_1A7E436E0);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v34 - v7;
  v8 = sub_1A7CC7FFC(&qword_1EB2B5278, &qword_1A7E436E8);
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B5280, &qword_1A7E436F0);
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v49 = sub_1A7CC7FFC(&qword_1EB2B5288, &qword_1A7E436F8);
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = v1[1];
  v50 = *v1;
  v51 = v14;
  v15 = v1[3];
  v46 = v1[2];
  v47 = v15;
  v48 = v1[4];
  v16 = *(v1 + 20);
  v17 = a1[3];
  v18 = a1;
  v20 = &v34 - v19;
  sub_1A7CC9878(v18, v17);
  sub_1A7CE6D14();
  sub_1A7E23260();
  v21 = v16 >> 13;
  if (v16 >> 13 <= 1)
  {
    v27 = v44;
    v26 = v45;
    if (!v21)
    {
      LOBYTE(v53) = 0;
      sub_1A7CE7008();
      v28 = v20;
      v29 = v49;
      sub_1A7E22F80();
      v53 = v50;
      v54 = v51;
      v55 = v46;
      v56 = v47;
      v57 = v48;
      v58 = v16 & 0x101;
      sub_1A7CE705C();
      sub_1A7E23030();
      (*(v27 + 8))(v13, v11);
      return (*(v52 + 8))(v28, v29);
    }

    LOBYTE(v53) = 1;
    sub_1A7CE6F60();
    v22 = v49;
    sub_1A7E22F80();
    v53 = v50;
    v54 = v51;
    sub_1A7CE6FB4();
    sub_1A7E23030();
    (*(v26 + 8))(v10, v8);
  }

  else
  {
    if (v21 == 2)
    {
      LOBYTE(v53) = 2;
      sub_1A7CE6EB8();
      v31 = v35;
      v32 = v49;
      sub_1A7E22F80();
      v53 = v50;
      v54 = v51;
      sub_1A7CE6F0C();
      v33 = v37;
      sub_1A7E23030();
      (*(v36 + 8))(v31, v33);
      return (*(v52 + 8))(v20, v32);
    }

    v22 = v49;
    if (v21 == 3)
    {
      LOBYTE(v53) = 3;
      sub_1A7CE6E10();
      v23 = v38;
      sub_1A7E22F80();
      v53 = v50;
      v54 = v51;
      v55 = v46;
      v56 = v47;
      v57 = v48;
      sub_1A7CE6E64();
      v24 = v40;
      sub_1A7E23030();
      v25 = v39;
    }

    else
    {
      LOBYTE(v53) = 4;
      sub_1A7CE6D68();
      v23 = v41;
      sub_1A7E22F80();
      v53 = v50;
      v54 = v51;
      v55 = v46;
      v56 = v47;
      v57 = v48;
      sub_1A7CE6DBC();
      v24 = v43;
      sub_1A7E23030();
      v25 = v42;
    }

    (*(v25 + 8))(v23, v24);
  }

  return (*(v52 + 8))(v20, v22);
}

unint64_t sub_1A7CE6D14()
{
  result = qword_1EB2B5290;
  if (!qword_1EB2B5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5290);
  }

  return result;
}

unint64_t sub_1A7CE6D68()
{
  result = qword_1EB2B5298;
  if (!qword_1EB2B5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5298);
  }

  return result;
}

unint64_t sub_1A7CE6DBC()
{
  result = qword_1EB2B52A0;
  if (!qword_1EB2B52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52A0);
  }

  return result;
}

unint64_t sub_1A7CE6E10()
{
  result = qword_1EB2B52A8;
  if (!qword_1EB2B52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52A8);
  }

  return result;
}

unint64_t sub_1A7CE6E64()
{
  result = qword_1EB2B52B0;
  if (!qword_1EB2B52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52B0);
  }

  return result;
}

unint64_t sub_1A7CE6EB8()
{
  result = qword_1EB2B52B8;
  if (!qword_1EB2B52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52B8);
  }

  return result;
}

unint64_t sub_1A7CE6F0C()
{
  result = qword_1EB2B52C0;
  if (!qword_1EB2B52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52C0);
  }

  return result;
}

unint64_t sub_1A7CE6F60()
{
  result = qword_1EB2B52C8;
  if (!qword_1EB2B52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52C8);
  }

  return result;
}

unint64_t sub_1A7CE6FB4()
{
  result = qword_1EB2B52D0;
  if (!qword_1EB2B52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52D0);
  }

  return result;
}

unint64_t sub_1A7CE7008()
{
  result = qword_1EB2B52D8;
  if (!qword_1EB2B52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52D8);
  }

  return result;
}

unint64_t sub_1A7CE705C()
{
  result = qword_1EB2B52E0;
  if (!qword_1EB2B52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52E0);
  }

  return result;
}

uint64_t IDSLinkQualityReportMeasurement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v67 = a2;
  v71 = sub_1A7CC7FFC(&qword_1EB2B52E8, &qword_1A7E43700);
  v65 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v57 - v3;
  v63 = sub_1A7CC7FFC(&qword_1EB2B52F0, &qword_1A7E43708);
  v66 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v70 = &v57 - v4;
  v62 = sub_1A7CC7FFC(&qword_1EB2B52F8, &qword_1A7E43710);
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v69 = &v57 - v5;
  v60 = sub_1A7CC7FFC(&qword_1EB2B5300, &qword_1A7E43718);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v7 = &v57 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B5308, &qword_1A7E43720);
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B5310, &unk_1A7E43728);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - v13;
  v15 = a1[3];
  v72 = a1;
  sub_1A7CC9878(a1, v15);
  sub_1A7CE6D14();
  v16 = v83;
  sub_1A7E23250();
  if (v16)
  {
    goto LABEL_11;
  }

  v17 = v10;
  v57 = v8;
  v19 = v69;
  v18 = v70;
  v58 = 0;
  v20 = v71;
  v83 = v12;
  v21 = sub_1A7E22F70();
  v22 = (2 * *(v21 + 16)) | 1;
  v79 = v21;
  v80 = v21 + 32;
  v81 = 0;
  v82 = v22;
  v23 = sub_1A7CDB548();
  v24 = v11;
  if (v23 == 5 || v81 != v82 >> 1)
  {
    v30 = sub_1A7E22BD0();
    swift_allocError();
    v31 = v14;
    v33 = v32;
    sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
    *v33 = &type metadata for IDSLinkQualityReportMeasurement;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v30 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v83 + 8))(v31, v11);
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v34 = v72;
    return sub_1A7B0CD6C(v34);
  }

  if (v23 <= 1u)
  {
    if (!v23)
    {
      LOBYTE(v73) = 0;
      sub_1A7CE7008();
      v36 = v17;
      v37 = v58;
      sub_1A7E22E70();
      v38 = v14;
      v39 = v83;
      if (!v37)
      {
        sub_1A7CE7C44();
        v40 = v57;
        sub_1A7E22F30();
        (*(v59 + 8))(v36, v40);
        (*(v39 + 8))(v38, v24);
        swift_unknownObjectRelease();
        v51 = v73;
        v52 = v74;
        v53 = v75;
        v55 = v76;
        if (v78)
        {
          v41 = 256;
        }

        else
        {
          v41 = 0;
        }

        v54 = v41 | v77;
        goto LABEL_29;
      }

      (*(v83 + 8))(v38, v24);
      goto LABEL_10;
    }

    LOBYTE(v73) = 1;
    sub_1A7CE6F60();
    v48 = v58;
    sub_1A7E22E70();
    v26 = v14;
    v27 = v83;
    if (!v48)
    {
      v49 = v26;
      sub_1A7CE7BF0();
      v50 = v60;
      sub_1A7E22F30();
      (*(v61 + 8))(v7, v50);
      (*(v27 + 8))(v49, v24);
      swift_unknownObjectRelease();
      v52 = 0;
      v53 = 0;
      v55 = 0;
      v51 = v73;
      v54 = 0x2000;
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (v23 == 2)
  {
    LOBYTE(v73) = 2;
    sub_1A7CE6EB8();
    v42 = v58;
    sub_1A7E22E70();
    if (!v42)
    {
      sub_1A7CE7B9C();
      v43 = v62;
      sub_1A7E22F30();
      (*(v64 + 8))(v19, v43);
      (*(v83 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v52 = 0;
      v53 = 0;
      v55 = 0;
      v51 = v73;
      v54 = 0x4000;
      goto LABEL_29;
    }

    (*(v83 + 8))(v14, v11);
    goto LABEL_10;
  }

  if (v23 == 3)
  {
    LOBYTE(v73) = 3;
    sub_1A7CE6E10();
    v25 = v58;
    sub_1A7E22E70();
    v26 = v14;
    v27 = v83;
    if (!v25)
    {
      v28 = v26;
      sub_1A7CE7B48();
      v29 = v63;
      sub_1A7E22F30();
      (*(v66 + 8))(v18, v29);
      (*(v27 + 8))(v28, v24);
      swift_unknownObjectRelease();
      v51 = v73;
      v52 = v74;
      v53 = v75;
      v54 = 24576;
      v55 = v76;
LABEL_29:
      v34 = v72;
      v56 = v67;
      *v67 = v51;
      *(v56 + 2) = v52;
      *(v56 + 3) = v53;
      *(v56 + 4) = v55;
      *(v56 + 20) = v54;
      return sub_1A7B0CD6C(v34);
    }

LABEL_25:
    (*(v27 + 8))(v26, v11);
    goto LABEL_10;
  }

  LOBYTE(v73) = 4;
  sub_1A7CE6D68();
  v44 = v68;
  v45 = v58;
  sub_1A7E22E70();
  v46 = v14;
  v47 = v83;
  if (!v45)
  {
    v70 = v46;
    sub_1A7CE7AF4();
    sub_1A7E22F30();
    (*(v65 + 8))(v44, v20);
    (*(v47 + 8))(v70, v24);
    swift_unknownObjectRelease();
    v51 = v73;
    v52 = v74;
    v53 = v75;
    v54 = 0x8000;
    v55 = v76;
    goto LABEL_29;
  }

  (*(v83 + 8))(v46, v24);
  swift_unknownObjectRelease();
  v34 = v72;
  return sub_1A7B0CD6C(v34);
}

unint64_t sub_1A7CE7AF4()
{
  result = qword_1EB2B5318;
  if (!qword_1EB2B5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5318);
  }

  return result;
}

unint64_t sub_1A7CE7B48()
{
  result = qword_1EB2B5320;
  if (!qword_1EB2B5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5320);
  }

  return result;
}

unint64_t sub_1A7CE7B9C()
{
  result = qword_1EB2B5328;
  if (!qword_1EB2B5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5328);
  }

  return result;
}

unint64_t sub_1A7CE7BF0()
{
  result = qword_1EB2B5330;
  if (!qword_1EB2B5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5330);
  }

  return result;
}

unint64_t sub_1A7CE7C44()
{
  result = qword_1EB2B5338;
  if (!qword_1EB2B5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5338);
  }

  return result;
}

uint64_t sub_1A7CE7CD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 2 >= 0xFFF && *(a1 + 42))
  {
    return (*a1 + 16380);
  }

  v3 = ((*(a1 + 40) >> 13) | (8 * ((*(a1 + 40) >> 2) & 0x780 | (*(a1 + 40) >> 1)))) ^ 0x3FFF;
  if (v3 >= 0x3FFB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A7CE7D3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 2 > 0xFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 16380;
    if (a3 >> 2 >= 0xFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >> 2 >= 0xFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

unint64_t sub_1A7CE7E54()
{
  result = qword_1EB2B5340;
  if (!qword_1EB2B5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5340);
  }

  return result;
}

unint64_t sub_1A7CE7EAC()
{
  result = qword_1EB2B5348;
  if (!qword_1EB2B5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5348);
  }

  return result;
}

unint64_t sub_1A7CE7F04()
{
  result = qword_1EB2B5350;
  if (!qword_1EB2B5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5350);
  }

  return result;
}

unint64_t sub_1A7CE7F5C()
{
  result = qword_1EB2B5358;
  if (!qword_1EB2B5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5358);
  }

  return result;
}

unint64_t sub_1A7CE7FB4()
{
  result = qword_1EB2B5360;
  if (!qword_1EB2B5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5360);
  }

  return result;
}

unint64_t sub_1A7CE800C()
{
  result = qword_1EB2B5368;
  if (!qword_1EB2B5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5368);
  }

  return result;
}

unint64_t sub_1A7CE8064()
{
  result = qword_1EB2B5370;
  if (!qword_1EB2B5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5370);
  }

  return result;
}

unint64_t sub_1A7CE80BC()
{
  result = qword_1EB2B5378;
  if (!qword_1EB2B5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5378);
  }

  return result;
}

unint64_t sub_1A7CE8114()
{
  result = qword_1EB2B5380;
  if (!qword_1EB2B5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5380);
  }

  return result;
}

unint64_t sub_1A7CE816C()
{
  result = qword_1EB2B5388;
  if (!qword_1EB2B5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5388);
  }

  return result;
}

unint64_t sub_1A7CE81C4()
{
  result = qword_1EB2B5390;
  if (!qword_1EB2B5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5390);
  }

  return result;
}

unint64_t sub_1A7CE821C()
{
  result = qword_1EB2B5398;
  if (!qword_1EB2B5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5398);
  }

  return result;
}

unint64_t sub_1A7CE8274()
{
  result = qword_1EB2B53A0;
  if (!qword_1EB2B53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53A0);
  }

  return result;
}

unint64_t sub_1A7CE82CC()
{
  result = qword_1EB2B53A8;
  if (!qword_1EB2B53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53A8);
  }

  return result;
}

unint64_t sub_1A7CE8324()
{
  result = qword_1EB2B53B0;
  if (!qword_1EB2B53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53B0);
  }

  return result;
}

unint64_t sub_1A7CE837C()
{
  result = qword_1EB2B53B8;
  if (!qword_1EB2B53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53B8);
  }

  return result;
}

unint64_t sub_1A7CE83D4()
{
  result = qword_1EB2B53C0;
  if (!qword_1EB2B53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53C0);
  }

  return result;
}

unint64_t sub_1A7CE842C()
{
  result = qword_1EB2B53C8;
  if (!qword_1EB2B53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53C8);
  }

  return result;
}

uint64_t sub_1A7CE8480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E65707865 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374617473 && a2 == 0xE500000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74536C616E676973 && a2 == 0xEE006874676E6572 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7374656B636170 && a2 == 0xE700000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473727562 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1A7CE8644@<X0>(unint64_t *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 200));
  sub_1A7CC94C0((v1 + 208), v4);
  os_unfair_lock_unlock((v1 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = 0;
LABEL_5:

    result = sub_1A7CE2B54(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  result = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a1 = result;
  return result;
}

uint64_t sub_1A7CE86F4()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2C10);
  sub_1A7B0CB00(v0, qword_1EB2B2C10);
  return sub_1A7E22050();
}

uint64_t IDSLinksQualityBasicStatsOngoingTask.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A7CE87B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A7CE87D0, 0, 0);
}

uint64_t sub_1A7CE87D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1A7CE88C8;
    v3 = v0[5];

    return sub_1A7CE8AA4(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A7CE88C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7CE8A40, 0, 0);
  }

  else
  {

    v8 = *(v6 + 56) == 0;
    v9 = *(v7 + 8);

    return v9(a1, a2, v8);
  }
}

uint64_t sub_1A7CE8A40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7CE8AA4(uint64_t a1)
{
  v2[82] = v1;
  v2[81] = a1;
  v2[83] = type metadata accessor for IDSLinksQualityReportBuilder(0);
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7CE8B48, 0, 0);
}

uint64_t sub_1A7CE8B48()
{
  v1 = (v0 + 624);
  v2 = *(v0 + 648);
  os_unfair_lock_lock((v2 + 16));
  v3 = *(v2 + 24);

  os_unfair_lock_unlock((v2 + 16));
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = &qword_1EB2B66D0;
  v53 = v3;
LABEL_4:
  v52 = v10;
  *(v0 + 688) = v10;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v13 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));

      os_unfair_lock_lock((v13 + 40));
      v14 = *(v13 + 48);
      if (*(v14 + 16) && (v15 = sub_1A7CD0DFC(&type metadata for LinkEngineLinkIDSTestableLinkComponent), (v16 & 1) != 0))
      {
        sub_1A7B0CD10(*(v14 + 56) + 32 * v15, v0 + 400);
      }

      else
      {
        *(v0 + 400) = 0u;
        *(v0 + 416) = 0u;
      }

      v7 &= v7 - 1;
      os_unfair_lock_unlock((v13 + 40));
      sub_1A7CC7FFC(v11, &unk_1A7E41920);
      if (swift_dynamicCast())
      {
        break;
      }

      *(v0 + 592) = xmmword_1A7E43F70;
LABEL_7:
      sub_1A7CEB438(1);

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v17 = v11;
    v18 = *(v0 + 592);
    v19 = *(v0 + 600);
    if (v18 == 1)
    {
      v11 = v17;
      v3 = v53;
      goto LABEL_7;
    }

    v20 = swift_unknownObjectRetain();
    sub_1A7CEB438(v20);
    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1A7CCCE58(0, v52[2] + 1, 1, v52);
      }

      v22 = v52[2];
      v21 = v52[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v50 = v52[2];
        v51 = v22 + 1;
        v25 = sub_1A7CCCE58((v21 > 1), v22 + 1, 1, v52);
        v22 = v50;
        v23 = v51;
        v52 = v25;
      }

      v10 = v52;
      v52[2] = v23;
      v24 = &v52[3 * v22];
      v24[4] = v13;
      v24[5] = v18;
      v24[6] = v19;
      v11 = v17;
      v3 = v53;
      goto LABEL_4;
    }

    v11 = v17;
    v3 = v53;
  }

  while (v7);
  while (1)
  {
LABEL_8:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_12;
    }
  }

  if (qword_1EB2B2C08 == -1)
  {
    goto LABEL_28;
  }

LABEL_53:
  swift_once();
LABEL_28:
  v26 = sub_1A7E22060();
  *(v0 + 696) = sub_1A7B0CB00(v26, qword_1EB2B2C10);
  v27 = sub_1A7E22040();
  v28 = sub_1A7E228F0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1A7AD9000, v27, v28, "IDSLinksQualityBasicStatsOngoingTask started", v29, 2u);
    MEMORY[0x1AC5654B0](v29, -1, -1);
  }

  v30 = v52[2];
  *(v0 + 704) = v30;
  if (v30)
  {
    v31 = 0;
    while (1)
    {
      *(v0 + 720) = v31;
      *(v0 + 712) = 0;
      v32 = *(v0 + 688);
      if (v31 >= *(v32 + 16))
      {
        goto LABEL_52;
      }

      v33 = *(v0 + 648);
      v34 = (v32 + 24 * v31);
      v35 = v34[4];
      *(v0 + 728) = v35;
      *(v0 + 736) = v34[5];
      v36 = v34[6];
      *(v0 + 744) = v36;

      swift_unknownObjectRetain();
      os_unfair_lock_lock((v33 + 200));
      v37 = *(v33 + 208);
      if (*(v37 + 16) && (v38 = sub_1A7CD0DFC(&type metadata for IDSLinksQualityLinkCycleAssignmentsComponent), (v39 & 1) != 0))
      {
        sub_1A7B0CD10(*(v37 + 56) + 32 * v38, v0 + 432);
      }

      else
      {
        *(v0 + 432) = 0u;
        *(v0 + 448) = 0u;
      }

      os_unfair_lock_unlock((*(v0 + 648) + 200));
      *(v0 + 752) = sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v40 = *v1;
      if (!*v1)
      {
        goto LABEL_43;
      }

      if (!*(v40 + 16))
      {
        goto LABEL_32;
      }

LABEL_44:
      v41 = sub_1A7CD1248(*(v35 + 16), *(v35 + 24));
      if (v42)
      {
        *(v0 + 760) = *(*(v40 + 56) + 8 * v41);

        ObjectType = swift_getObjectType();
        *(v0 + 768) = ObjectType;
        v54 = (*(v36 + 40) + **(v36 + 40));
        v44 = swift_task_alloc();
        *(v0 + 776) = v44;
        *v44 = v0;
        v44[1] = sub_1A7CE9190;

        return v54(v0 + 176, ObjectType, v36);
      }

LABEL_32:
      swift_unknownObjectRelease();

      v31 = *(v0 + 720) + 1;
      if (v31 == *(v0 + 704))
      {
        goto LABEL_48;
      }
    }

    *v1 = 0;
LABEL_43:

    v40 = MEMORY[0x1E69E7CC8];
    if (!*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_44;
  }

LABEL_48:
  v46 = *(v0 + 656);

  v47 = *(v46 + 64);
  v48 = *(v46 + 72);

  v49 = *(v0 + 8);

  return v49(v47, v48);
}

uint64_t sub_1A7CE9190()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7CE928C, 0, 0);
}

uint64_t sub_1A7CE928C()
{
  v1 = *(v0 + 192);
  *(v0 + 120) = *(v0 + 176);
  v2 = *(v0 + 744);
  *(v0 + 136) = v1;
  *(v0 + 152) = *(v0 + 208);
  *(v0 + 167) = *(v0 + 223);
  v7 = (*(v2 + 48) + **(v2 + 48));
  v3 = swift_task_alloc();
  *(v0 + 784) = v3;
  *v3 = v0;
  v3[1] = sub_1A7CE93BC;
  v4 = *(v0 + 768);
  v5 = *(v0 + 744);

  return v7(v0 + 464, v4, v5);
}

uint64_t sub_1A7CE93BC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7CE94B8, 0, 0);
}

void sub_1A7CE94B8()
{
  v69 = v0;
  v1 = *(v0 + 728);
  v64 = *(v0 + 472);
  v65 = *(v0 + 464);
  v62 = *(v0 + 488);
  v63 = *(v0 + 480);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_bridgeObjectRetain_n();
  v4 = sub_1A7E22040();
  v5 = sub_1A7E228F0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 760);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v68 = v8;
    *v7 = 136315138;
    *(v0 + 608) = v2;
    *(v0 + 616) = v3;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1AC561C90](58, 0xE100000000000000);
    *(v0 + 640) = v6;
    v9 = sub_1A7E23090();
    MEMORY[0x1AC561C90](v9);

    v10 = sub_1A7B0CB38(*(v0 + 608), *(v0 + 616), &v68);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_1A7AD9000, v4, v5, "    %s", v7, 0xCu);
    sub_1A7B0CD6C(v8);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v11 = (v0 + 632);
  v12 = *(v0 + 648);

  sub_1A7CEB448(v0 + 120, v0 + 232);
  os_unfair_lock_lock((v12 + 200));
  v13 = type metadata accessor for IDSLinksQualityReportBuilderComponent(0);
  v14 = v13;
  v15 = *(v12 + 208);
  if (*(v15 + 16) && (v16 = sub_1A7CD0DFC(v13), (v17 & 1) != 0))
  {
    sub_1A7B0CD10(*(v15 + 56) + 32 * v16, v0 + 496);
  }

  else
  {
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
  }

  v66 = v2;
  if (swift_dynamicCast())
  {
    v18 = *v11;
    if (*v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v11 = 0;
  }

  v19 = *(v0 + 680);
  v20 = *(v0 + 672);
  v21 = *(v0 + 664);
  sub_1A7E22050();
  v22 = *(v21 + 20);
  v23 = MEMORY[0x1E69E7CC0];
  *(v19 + v22) = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
  v18 = swift_allocObject();
  v24 = (v18 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
  sub_1A7E22050();
  v25 = *(v21 + 20);
  *(v20 + v25) = sub_1A7CE363C(v23);
  v24->_os_unfair_lock_opaque = 0;
  v26 = *(sub_1A7CC7FFC(&qword_1EB2B53D8, &qword_1A7E44060) + 28);
  v27 = sub_1A7CC7FFC(&qword_1EB2B53E0, &qword_1A7E44068);
  bzero(v24 + v26, *(*(v27 - 8) + 64));
  sub_1A7CEB4A4(v20, v24 + v26);
  os_unfair_lock_lock(v24);
  sub_1A7CEB508(v24 + v26);
  sub_1A7CEB564(v19, v24 + v26);
  os_unfair_lock_unlock(v24);
  sub_1A7CEB508(v19);
  *(v0 + 632) = v18;
LABEL_12:
  v28 = *(v0 + 664);
  v29 = *(v0 + 648);
  *(v0 + 552) = v14;
  *(v0 + 528) = v18;
  swift_retain_n();
  sub_1A7CC8D74(v0 + 528, v14);

  os_unfair_lock_unlock(v29 + 50);
  v30 = (v18 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
  os_unfair_lock_lock((v18 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
  v31 = v30 + *(sub_1A7CC7FFC(&qword_1EB2B53D8, &qword_1A7E44060) + 28);
  v32 = *(v28 + 20);
  v33 = *(*&v31[v32] + 16);

  if (v33)
  {
    v34 = *(v0 + 760);
    sub_1A7CEB448(v0 + 120, v0 + 288);
    v35 = v66;
    sub_1A7CD12D4(v66, v3, v34);
    if (v36)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_1A7CEB448(v0 + 120, v0 + 344);
    v35 = v66;
  }

  v37 = *(v0 + 760);
  *(v0 + 16) = v35;
  *(v0 + 24) = v3;
  *(v0 + 32) = v37;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 4;
  *(v0 + 80) = 0xA0000000ALL;
  *(v0 + 88) = 0;
  *(v0 + 90) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = MEMORY[0x1E69E7CC0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *&v31[v32];
  sub_1A7DC4018((v0 + 16), v35, v3, v37, isUniquelyReferenced_nonNull_native);
  *&v31[v32] = v68;
LABEL_17:
  v39 = sub_1A7DC9138((v0 + 560), v35, v3, *(v0 + 760));
  if (!*(v40 + 8))
  {
LABEL_44:
    __break(1u);
    return;
  }

  v41 = v39;
  v42 = *(v0 + 712);
  sub_1A7CE9DD0(v40, v65, v64, v63, v62, *(v0 + 656), (v0 + 120));
  if (v42)
  {
    (v41)(v0 + 560, 0);

    sub_1A7CEB5C8(v0 + 120);

    sub_1A7CEB5C8(v0 + 120);

    os_unfair_lock_unlock(v30);
    return;
  }

  (v41)(v0 + 560, 0);

  sub_1A7CEB5C8(v0 + 120);
  os_unfair_lock_unlock(v30);

  swift_unknownObjectRelease();

  sub_1A7CEB5C8(v0 + 120);

  sub_1A7CEB5C8(v0 + 120);
  v43 = *(v0 + 720) + 1;
  if (v43 == *(v0 + 704))
  {
LABEL_23:
    v44 = *(v0 + 656);

    v45 = *(v44 + 64);
    v46 = *(v44 + 72);

    v47 = *(v0 + 8);

    v47(v45, v46);
    return;
  }

  v48 = (v0 + 624);
  while (1)
  {
    *(v0 + 720) = v43;
    *(v0 + 712) = 0;
    v49 = *(v0 + 688);
    if (v43 >= *(v49 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v50 = *(v0 + 648);
    v51 = (v49 + 24 * v43);
    v52 = v51[4];
    *(v0 + 728) = v52;
    *(v0 + 736) = v51[5];
    v53 = v51[6];
    *(v0 + 744) = v53;

    swift_unknownObjectRetain();
    os_unfair_lock_lock((v50 + 200));
    v54 = *(v50 + 208);
    if (*(v54 + 16) && (v55 = sub_1A7CD0DFC(&type metadata for IDSLinksQualityLinkCycleAssignmentsComponent), (v56 & 1) != 0))
    {
      sub_1A7B0CD10(*(v54 + 56) + 32 * v55, v0 + 432);
    }

    else
    {
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
    }

    os_unfair_lock_unlock((*(v0 + 648) + 200));
    *(v0 + 752) = sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if (swift_dynamicCast())
    {
      break;
    }

    *v48 = 0;
LABEL_38:

    v57 = MEMORY[0x1E69E7CC8];
    if (*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_39;
    }

LABEL_27:
    swift_unknownObjectRelease();

    v43 = *(v0 + 720) + 1;
    if (v43 == *(v0 + 704))
    {
      goto LABEL_23;
    }
  }

  v57 = *v48;
  if (!*v48)
  {
    goto LABEL_38;
  }

  if (!*(v57 + 16))
  {
    goto LABEL_27;
  }

LABEL_39:
  v58 = sub_1A7CD1248(*(v52 + 16), *(v52 + 24));
  if ((v59 & 1) == 0)
  {
    goto LABEL_27;
  }

  *(v0 + 760) = *(*(v57 + 56) + 8 * v58);

  ObjectType = swift_getObjectType();
  *(v0 + 768) = ObjectType;
  v67 = (*(v53 + 40) + **(v53 + 40));
  v61 = swift_task_alloc();
  *(v0 + 776) = v61;
  *v61 = v0;
  v61[1] = sub_1A7CE9190;

  v67(v0 + 176, ObjectType, v53);
}

uint64_t LinkEngine.basicStatsQualityMeasurementTask.setter(uint64_t a1)
{
  sub_1A7CEAF64(a1);
}

uint64_t sub_1A7CE9DD0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  if (qword_1EB2B2C08 != -1)
  {
    swift_once();
  }

  v14 = sub_1A7E22060();
  sub_1A7B0CB00(v14, qword_1EB2B2C10);
  v15 = sub_1A7E22040();
  v16 = sub_1A7E228F0();
  v57 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v56 = a2;
    v17 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v60 = v55;
    *v17 = 136315138;
    *&v64 = v56;
    *(&v64 + 1) = a3;
    *&v65 = a4;
    *(&v65 + 1) = a5;
    v18 = IDSTestableLinkPacketStats.description.getter();
    v20 = a7;
    v21 = a3;
    v22 = a4;
    v23 = a6;
    v24 = sub_1A7B0CB38(v18, v19, &v60);

    *(v17 + 4) = v24;
    a6 = v23;
    a4 = v22;
    a3 = v21;
    a7 = v20;
    _os_log_impl(&dword_1A7AD9000, v15, v16, "        Adding packet metrics: %s", v17, 0xCu);
    sub_1A7B0CD6C(v55);
    a1 = v57;
    MEMORY[0x1AC5654B0](v55, -1, -1);
    v25 = v17;
    a2 = v56;
    MEMORY[0x1AC5654B0](v25, -1, -1);
  }

  v26 = *(a6 + 48);
  v26();
  if (((a3 | a2 | a4 | a5) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v27;
    v15 = a3;
    a3 = *(a1 + 96);
    a6 = a2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }
  }

  a3 = sub_1A7CCCFA0(0, *(a3 + 2) + 1, 1, a3);
LABEL_7:
  v29 = *(a3 + 2);
  v28 = *(a3 + 3);
  if (v29 >= v28 >> 1)
  {
    a3 = sub_1A7CCCFA0((v28 > 1), v29 + 1, 1, a3);
  }

  *(a3 + 2) = v29 + 1;
  v30 = &a3[64 * v29];
  *(v30 + 4) = 0;
  *(v30 + 5) = 0;
  *(v30 + 6) = v7;
  *(v30 + 7) = a6;
  *(v30 + 8) = v15;
  *(v30 + 9) = a4;
  *(v30 + 10) = a5;
  *(v30 + 44) = 24576;
  *(a1 + 96) = a3;
  sub_1A7CEB448(a7, &v64);
  v31 = sub_1A7E22040();
  v32 = sub_1A7E228F0();
  sub_1A7CEB5C8(a7);
  if (os_log_type_enabled(v31, v32))
  {
    v59 = v26;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v63 = v34;
    *v33 = 136315138;
    v35 = a7[1];
    v60 = *a7;
    v61 = v35;
    *v62 = a7[2];
    *&v62[15] = *(a7 + 47);
    sub_1A7CEB448(a7, &v64);
    v36 = IDSTestableLinkMetadata.description.getter();
    v38 = v37;
    v64 = v60;
    v65 = v61;
    v66[0] = *v62;
    *(v66 + 15) = *&v62[15];
    sub_1A7CEB5C8(&v64);
    v39 = sub_1A7B0CB38(v36, v38, &v63);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_1A7AD9000, v31, v32, "        Adding expense metrics: %s", v33, 0xCu);
    sub_1A7B0CD6C(v34);
    MEMORY[0x1AC5654B0](v34, -1, -1);
    v40 = v33;
    v26 = v59;
    MEMORY[0x1AC5654B0](v40, -1, -1);
  }

  v41 = (v26)();
  v42 = IDSRadioAccessTechnology.description.getter(*(a7 + 10));
  v44 = v43;
  v45 = IDSRadioAccessTechnology.description.getter(*(a7 + 11));
  v47 = v46;
  v48 = *(a7 + 48);
  v49 = *(a7 + 49);
  v51 = *(a3 + 2);
  v50 = *(a3 + 3);

  if (v51 >= v50 >> 1)
  {
    a3 = sub_1A7CCCFA0((v50 > 1), v51 + 1, 1, a3);
  }

  *(a3 + 2) = v51 + 1;
  if (v49)
  {
    v53 = 256;
  }

  else
  {
    v53 = 0;
  }

  v54 = &a3[64 * v51];
  *(v54 + 4) = 0;
  *(v54 + 5) = 0;
  *(v54 + 6) = v41;
  *(v54 + 7) = v42;
  *(v54 + 8) = v44;
  *(v54 + 9) = v45;
  *(v54 + 10) = v47;
  *(v54 + 44) = v53 & 0xFFFE | v48 & 1;
  *(v57 + 96) = a3;
  return result;
}

uint64_t IDSLinksQualityBasicStatsOngoingTask.stop()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1A7CEA284, 0, 0);
}

uint64_t sub_1A7CEA284()
{
  v12 = v0;
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  v0[4] = v2;

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_1A7CEA404;

    return IDSLinksQualityRepeatingAsyncTask.stop()();
  }

  else
  {
    v5 = v0[2];
    os_unfair_lock_lock((v5 + 32));
    v6 = *(v5 + 40);

    os_unfair_lock_unlock((v5 + 32));
    if (v6)
    {
      v7 = (v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
      os_unfair_lock_lock((v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
      Strong = swift_weakLoadStrong();
      os_unfair_lock_unlock(v7);

      if (Strong)
      {
        v9 = v0[3];
        os_unfair_lock_lock(Strong + 50);
        memset(v11, 0, sizeof(v11));
        sub_1A7CC8D74(v11, v9);
        os_unfair_lock_unlock(Strong + 50);
      }
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1A7CEA404()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7CEA51C, 0, 0);
}

uint64_t sub_1A7CEA51C()
{
  v9 = v0;
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
    Strong = swift_weakLoadStrong();
    os_unfair_lock_unlock(v3);

    if (Strong)
    {
      v5 = v0[3];
      os_unfair_lock_lock(Strong + 50);
      memset(v8, 0, sizeof(v8));
      sub_1A7CC8D74(v8, v5);
      os_unfair_lock_unlock(Strong + 50);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t IDSLinksQualityBasicStatsOngoingTask.deinit()
{

  sub_1A7CEAFFC(v0 + 40);

  return v0;
}

uint64_t IDSLinksQualityBasicStatsOngoingTask.__deallocating_deinit()
{

  sub_1A7CEAFFC(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7CEA680()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return IDSLinksQualityBasicStatsOngoingTask.stop()();
}

uint64_t LinkEngine.basicStatsQualityMeasurementTask.getter()
{
  os_unfair_lock_lock((v0 + 200));
  sub_1A7CC94E0((v0 + 208), v2);
  os_unfair_lock_unlock((v0 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  type metadata accessor for IDSLinksQualityBasicStatsOngoingTask();
  if (swift_dynamicCast())
  {
    return v2[4];
  }

  else
  {
    return 0;
  }
}

void (*LinkEngine.basicStatsQualityMeasurementTask.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  os_unfair_lock_lock((v1 + 200));
  sub_1A7CC94E0((v1 + 208), v4);
  os_unfair_lock_unlock((v1 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  v4[8] = type metadata accessor for IDSLinksQualityBasicStatsOngoingTask();
  v5 = swift_dynamicCast();
  v6 = v4[5];
  if (!v5)
  {
    v6 = 0;
  }

  v4[4] = v6;
  return sub_1A7CEA880;
}

void sub_1A7CEA880(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);

  v5 = v3[7];
  if (a2)
  {

    os_unfair_lock_lock(v5 + 50);
    if (v4)
    {
      v6 = v3[8];
      v7 = v4;
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v15 = 0;
      v16 = 0;
      v6 = v3[8];
    }

    v12 = v3[7];
    v14 = v7;
    v17 = v8;

    sub_1A7CC8D74(&v14, v6);
    os_unfair_lock_unlock(v12 + 50);
  }

  else
  {
    os_unfair_lock_lock(v5 + 50);
    if (v4)
    {
      v9 = v3[8];
      v10 = v4;
      v11 = v9;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v15 = 0;
      v16 = 0;
      v9 = v3[8];
    }

    v13 = v3[7];
    v14 = v10;
    v17 = v11;

    sub_1A7CC8D74(&v14, v9);
    os_unfair_lock_unlock(v13 + 50);
  }

  free(v3);
}

uint64_t sub_1A7CEA9C4(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a1;
  v60 = *v6;
  v11 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v47 - v12;
  v62 = sub_1A7E226D0();
  v56 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A7E22060();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v57 = v17;
  v58 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0xD000000000000026;
  *(v6 + 24) = 0x80000001A7EAE350;
  *(v6 + 40) = 0;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;

  v59 = (v6 + 32);
  os_unfair_lock_lock((v6 + 32));

  v21 = *(v6 + 24);
  v53 = *(v6 + 16);
  v22 = qword_1EB2B2C08;
  v50 = v21;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1A7B0CB00(v15, qword_1EB2B2C10);
  v55 = v16;
  v24 = *(v16 + 16);
  v25 = v20;
  v24(v20, v23, v15);
  v49 = v24;
  v54 = swift_allocObject();
  swift_weakInit();

  sub_1A7E226B0();
  type metadata accessor for IDSLinksQualityRepeatingAsyncTask(0);
  v26 = swift_allocObject();
  v52 = v14;
  v27 = v15;
  v28 = v26 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  v29 = swift_weakInit();
  v64[1] = 0;
  *v28 = 0;
  *(v28 + 16) = 0;
  *(v28 + 8) = 0;
  sub_1A7CEB2D0(v29, v28 + 8);
  v51 = v20;
  v48 = v27;
  v24((v26 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger), v20, v27);
  v30 = (v26 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
  v31 = v50;
  *v30 = v53;
  v30[1] = v31;
  v32 = v26 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  os_unfair_lock_lock((v26 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
  swift_weakAssign();
  v33 = v56;
  v34 = v61;
  v35 = v14;
  v36 = v62;
  (*(v56 + 16))(v61, v35, v62);
  (*(v33 + 56))(v34, 0, 1, v36);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v58;
  v49(v58, v25, v27);
  v39 = v55;
  v40 = (*(v55 + 80) + 56) & ~*(v55 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 4) = v37;
  *(v41 + 5) = &unk_1A7E44048;
  *(v41 + 6) = v54;
  v42 = v38;
  v43 = v48;
  (*(v39 + 32))(&v41[v40], v42, v48);

  *(v32 + 16) = sub_1A7D3F5DC(0, 0, v61, &unk_1A7E44050, v41);

  os_unfair_lock_unlock(v32);

  (*(v33 + 8))(v52, v62);
  (*(v39 + 8))(v51, v43);

  *(v6 + 40) = v26;
  os_unfair_lock_unlock(v59);

  v44 = v63;
  os_unfair_lock_lock(v63 + 50);
  v45 = v60;
  v64[3] = v60;
  v64[0] = v6;

  sub_1A7CC8D74(v64, v45);
  os_unfair_lock_unlock(v44 + 50);

  return v6;
}

uint64_t sub_1A7CEAF64(uint64_t a1)
{

  os_unfair_lock_lock(v1 + 50);
  v3 = type metadata accessor for IDSLinksQualityBasicStatsOngoingTask();
  v4 = v3;
  if (!a1)
  {
    v4 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  v6[0] = a1;
  v6[3] = v4;

  sub_1A7CC8D74(v6, v3);
  os_unfair_lock_unlock(v1 + 50);
}

uint64_t sub_1A7CEB068(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A7CEB0C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A7CEB124(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7CEB1BC;

  return sub_1A7CE87B0(a1, v1);
}

uint64_t sub_1A7CEB1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_1A7CEB32C(uint64_t a1)
{
  v4 = *(sub_1A7E22060() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A7CD22FC;

  return sub_1A7D12A0C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1A7CEB438(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A7CEB4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSLinksQualityReportBuilder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7CEB508(uint64_t a1)
{
  v2 = type metadata accessor for IDSLinksQualityReportBuilder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7CEB564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSLinksQualityReportBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IDSToolOutputStyleFlag.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSToolPrintStyle.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7CEB7C4()
{
  if (qword_1EB2B4738 != -1)
  {
    result = swift_once();
  }

  LOBYTE(qword_1EB2B53E8) = 0;
  *(&qword_1EB2B53E8 + 1) = qword_1EB2B5600;
  return result;
}

uint64_t static IDSToolPrintStyle.full.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4720 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EB2B53E8;
  *(a1 + 8) = byte_1EB2B53F0;
  return result;
}

uint64_t sub_1A7CEB898()
{
  if (qword_1EB2B4730 != -1)
  {
    result = swift_once();
  }

  LOBYTE(qword_1EB2B53F1) = 1;
  *(&qword_1EB2B53F1 + 1) = qword_1EB2B55F8;
  return result;
}

uint64_t static IDSToolPrintStyle.summary.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4728 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EB2B53F1;
  *(a1 + 8) = byte_1EB2B53F9;
  return result;
}

unint64_t sub_1A7CEB970()
{
  result = qword_1EB2B5400;
  if (!qword_1EB2B5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5400);
  }

  return result;
}

unint64_t sub_1A7CEB9C8()
{
  result = qword_1EB2B5408;
  if (!qword_1EB2B5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5408);
  }

  return result;
}

unint64_t sub_1A7CEBA20()
{
  result = qword_1EB2B5410;
  if (!qword_1EB2B5410)
  {
    sub_1A7CC9830(&qword_1EB2B5418, &qword_1A7E44118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5410);
  }

  return result;
}

unint64_t sub_1A7CEBA88()
{
  result = qword_1EB2B5420;
  if (!qword_1EB2B5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5420);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for IDSToolPrintStyle(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSToolPrintStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSToolPrintStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSToolOutputStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[9])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDSToolOutputStyle(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1A7CEBC30(unsigned __int8 *a1)
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

uint64_t sub_1A7CEBC44(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_1A7CEBC80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1A7CEBC94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_1A7CEBCDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7CEBD30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1A7CCE988(0, v2, 0);
  v6 = 0;
  result = v26;
  v20 = a1 + 32;
  v21 = v2;
  do
  {
    v24 = result;
    v8 = (v20 + 16 * v6);
    v9 = *v8;
    v22 = v8[9];
    v23 = v8[8];
    v10 = *(*v8 + 16);
    v11 = *(*a2 + 16);

    if (v10 >= v11)
    {
      v12 = v9;
    }

    else
    {

      v12 = v9;
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1A7CCC868(0, *(v12 + 2) + 1, 1, v12);
        }

        v14 = *(v12 + 2);
        v13 = *(v12 + 3);
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          v12 = sub_1A7CCC868((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v15;
        v16 = &v12[40 * v14];
        *(v16 + 4) = 0;
        *(v16 + 5) = 0;
        v16[48] = 1;
        *(v16 + 13) = *&v25[3];
        *(v16 + 49) = *v25;
        *(v16 + 7) = v3;
        *(v16 + 16) = 0;
        *(v16 + 34) = 0;
      }

      while (v15 < *(*a2 + 16));
    }

    result = v24;
    v18 = *(v24 + 16);
    v17 = *(v24 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1A7CCE988((v17 > 1), v18 + 1, 1);
      result = v24;
    }

    *(result + 16) = v18 + 1;
    v19 = result + 16 * v18;
    *(v19 + 32) = v12;
    ++v6;
    *(v19 + 40) = v23;
    *(v19 + 41) = v22;
  }

  while (v6 != v21);
  return result;
}

void sub_1A7CEBF20()
{
  v12 = v0[1];
  v11 = *(v12 + 2);
  if (v11)
  {
    v1 = 0;
    while (v1 < *(v12 + 2))
    {
      v2 = *&v12[16 * v1 + 32];
      v3 = *(v2 + 16);
      if (v3)
      {
        v13 = v1;

        v4 = 0;
        while (v4 < *(v2 + 16))
        {
          v5 = *v0;
          if (*(*v0 + 2) <= v4)
          {
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = sub_1A7CCC644(0, *(v5 + 2) + 1, 1, v5);
              }

              v7 = *(v5 + 2);
              v6 = *(v5 + 3);
              if (v7 >= v6 >> 1)
              {
                v5 = sub_1A7CCC644((v6 > 1), v7 + 1, 1, v5);
              }

              *(v5 + 2) = v7 + 1;
              v8 = &v5[56 * v7];
              *(v8 + 2) = xmmword_1A7E44250;
              *(v8 + 6) = 1;
              v8[56] = 2;
              *(v8 + 57) = *v14;
              *(v8 + 15) = *&v14[3];
              *(v8 + 4) = vdupq_n_s64(1uLL);
              *(v8 + 40) = 0;
              v8[82] = 1;
            }

            while (v7 < v4);
            *v0 = v5;
          }

          if (++v4 == v3)
          {

            v1 = v13;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      if (++v1 == v11)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v10 = sub_1A7CEBD30(v9, v0);
    swift_bridgeObjectRelease_n();
    v0[1] = v10;
  }
}

char *sub_1A7CEC0F8()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    goto LABEL_10;
  }

  v2 = v0;
  if (v1[80] <= *(v0 + 17))
  {
    LOBYTE(v3) = *(v0 + 17);
  }

  else
  {
    LOBYTE(v3) = v1[80];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_56;
  }

  v4 = *(v1 + 2);
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  for (result = sub_1A7CDD090(v0); ; result = v0)
  {
    v0 = (result + 16);
    v2 = *(result + 2);
    if (!v2)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    result[40] = v3;
    v10 = v0 + 16 * v2;
    v11 = *(v10 + 9);
    if (v11 <= *(v33 + 20))
    {
      LOBYTE(v11) = *(v33 + 20);
    }

    *(v10 + 9) = v11;
    v36 = v1 + 82;
    v37 = result + 32;
    v12 = MEMORY[0x1E69E7CC0];
    v39 = v1;
    v34 = v2;
    v35 = result + 16;
    while (v9 < *v0)
    {
      v13 = &v37[16 * v9];
      v42 = v13[9];
      v43 = v13[8];
      v3 = *(*v13 + 16);
      if (v3)
      {
        v38 = v12;

        v15 = *(v14 + 32);
        v16 = *(v14 + 48);
        *&v53[14] = *(v14 + 62);
        v52 = v15;
        *v53 = v16;
        v17 = v53[17];
        v51 = *(v14 + 64);
        v18 = *(v14 + 48);
        v49 = *(v14 + 32);
        v50 = v18;
        if (!*(v1 + 2))
        {
LABEL_54:
          __break(1u);
          break;
        }

        v1 = 0;
        LODWORD(v2) = v53[21];
        v41 = (v3 - 1);
        v0 = 72;
        v3 = v36;
        v19 = MEMORY[0x1E69E7CC0];
        v40 = v14;
        while (1)
        {
          if (v17 <= *(v3 - 2))
          {
            v17 = *(v3 - 2);
          }

          v44 = v17;
          if (v53[19] <= *(v3 - 1))
          {
            v20 = *(v3 - 1);
          }

          else
          {
            v20 = v53[19];
          }

          if (v53[18] <= v43)
          {
            v21 = v43;
          }

          else
          {
            v21 = v53[18];
          }

          if (v53[20] <= v42)
          {
            v22 = v42;
          }

          else
          {
            v22 = v53[20];
          }

          if (!v2)
          {
            LOBYTE(v2) = *v3;
          }

          v46 = v49;
          v47 = v50;
          v48 = v51;
          sub_1A7CF36A8(&v52, v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1A7CCC868(0, *(v19 + 2) + 1, 1, v19);
          }

          v24 = *(v19 + 2);
          v23 = *(v19 + 3);
          if (v24 >= v23 >> 1)
          {
            v19 = sub_1A7CCC868((v23 > 1), v24 + 1, 1, v19);
          }

          *(v19 + 2) = v24 + 1;
          v25 = &v19[40 * v24];
          v26 = v46;
          v27 = v47;
          v25[64] = v48;
          *(v25 + 2) = v26;
          *(v25 + 3) = v27;
          v25[65] = v44;
          v25[66] = v21;
          v25[67] = v20;
          v25[68] = v22;
          v25[69] = v2;
          if (v41 == v1)
          {
            break;
          }

          v28 = *(v40 + v0);
          v29 = *(v40 + v0 + 16);
          *&v53[14] = *(v40 + v0 + 30);
          v52 = v28;
          *v53 = v29;
          v17 = v53[17];
          v51 = *(v40 + v0 + 32);
          v30 = *(v40 + v0 + 16);
          v49 = *(v40 + v0);
          v50 = v30;
          v2 = v53[21];
          v3 += 56;
          v0 += 40;
          if (++v1 >= *(v39 + 2))
          {
            goto LABEL_54;
          }
        }

        v1 = v39;
        v2 = v34;
        v0 = v35;
        v12 = v38;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1A7CCC75C(0, *(v12 + 2) + 1, 1, v12);
      }

      v3 = *(v12 + 2);
      v31 = *(v12 + 3);
      if (v3 >= v31 >> 1)
      {
        v12 = sub_1A7CCC75C((v31 > 1), v3 + 1, 1, v12);
      }

      *(v12 + 2) = v3 + 1;
      v32 = &v12[16 * v3];
      *(v32 + 4) = v19;
      ++v9;
      v32[40] = v43;
      v32[41] = v42;
      if (v9 == v2)
      {

        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_56:
    v1 = sub_1A7CDD0A4(v1);
    v4 = *(v1 + 2);
    if (!v4)
    {
      goto LABEL_57;
    }

LABEL_7:
    v1[80] = v3;
    v5 = &v1[56 * v4];
    v6 = v5[25];
    if (v6 <= *(v2 + 18))
    {
      LOBYTE(v6) = *(v2 + 18);
    }

    v5[25] = v6;
    v0 = v2;
    *v2 = v1;
LABEL_10:
    v7 = *(v0 + 8);
    v33 = v0;
    if (!*(v7 + 16))
    {
      break;
    }

    if (*(v7 + 40) <= *(v0 + 19))
    {
      LOBYTE(v3) = *(v0 + 19);
    }

    else
    {
      LOBYTE(v3) = *(v7 + 40);
    }

    v0 = *(v0 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_53:
  *(v33 + 8) = v12;
  return result;
}

char *sub_1A7CEC4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v132 = a4;
  v136 = a3;
  v143 = a1;
  v131 = sub_1A7CC7FFC(&qword_1EB2B5438, &qword_1A7E442F8);
  v124 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v123 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v123 - v9;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CD0];
  v135 = a2;
  v140 = v10;
  if (v10)
  {
    v153[0] = MEMORY[0x1E69E7CC0];
    sub_1A7CCE9A8(0, v10, 0);
    v13 = v153[0];
    v14 = (a2 + 32);
    v15 = *(v153[0] + 2);
    v16 = (a2 + 32);
    v17 = v10;
    do
    {
      v19 = *v16;
      v16 += 7;
      v18 = v19;
      v153[0] = v13;
      v20 = *(v13 + 3);
      if (v15 >= v20 >> 1)
      {
        sub_1A7CCE9A8((v20 > 1), v15 + 1, 1);
        v13 = v153[0];
      }

      *(v13 + 2) = v15 + 1;
      *&v13[8 * v15++ + 32] = v18;
      --v17;
    }

    while (v17);
    v21 = swift_allocObject();
    v134 = v21;
    v147 = v13;
    *(v21 + 16) = v13;
    v139 = (v21 + 16);
    v153[0] = v11;
    v10 = v140;
    sub_1A7CCE9A8(0, v140, 0);
    v11 = v153[0];
    v22 = *(v153[0] + 2);
    v23 = v10;
    do
    {
      v25 = *v14;
      v14 += 7;
      v24 = v25;
      v153[0] = v11;
      v26 = *(v11 + 3);
      if (v22 >= v26 >> 1)
      {
        sub_1A7CCE9A8((v26 > 1), v22 + 1, 1);
        v11 = v153[0];
      }

      *(v11 + 2) = v22 + 1;
      *&v11[8 * v22++ + 32] = v24;
      --v23;
    }

    while (v23);
    v27 = swift_allocObject();
    v133 = v27;
    *(v27 + 16) = v11;
    v28 = (v27 + 16);
    v158 = v12;
    a2 = v135;
    v29 = (v135 + 48);
    v12 = v10;
    do
    {
      v30 = *v29;
      v29 += 7;
      sub_1A7CF0038(v153, v30);
      --v12;
    }

    while (v12);
    v31 = v147;
  }

  else
  {
    v32 = swift_allocObject();
    v134 = v32;
    *(v32 + 16) = v11;
    v139 = (v32 + 16);
    v33 = swift_allocObject();
    v133 = v33;
    *(v33 + 16) = v11;
    v28 = (v33 + 16);
    v158 = v12;
    v31 = v11;
  }

  v34 = *(v136 + 16);
  v138 = v28;
  if (!v34)
  {
LABEL_56:
    v78 = *(v11 + 2);
    if (!v78)
    {
      goto LABEL_64;
    }

    v79 = (v11 + 32);
    v80 = 1;
    while (1)
    {
      v81 = *v79++;
      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      v64 = __OFADD__(v80, v82);
      v80 += v82;
      if (v64)
      {
        goto LABEL_109;
      }

      if (!--v78)
      {
        goto LABEL_65;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v35 = 0;
  v36 = v136 + 32;
  v37 = a2 + 32;
  v12 = 40;
  v126 = v34;
  v125 = v136 + 32;
  v137 = a2 + 32;
  while (1)
  {
    v38 = *(v36 + 16 * v35);
    v39 = *(v38 + 16);
    if (v39)
    {
      break;
    }

LABEL_17:
    if (++v35 == v34)
    {
      goto LABEL_56;
    }
  }

  v127 = v35;
  v148 = (v38 + 32);

  v40 = 0;
  v142 = v38;
  v141 = v39;
  while (1)
  {
    v41 = &v148[40 * v40];
    v42 = *v41;
    v43 = *(v41 + 1);
    *&v157[14] = *(v41 + 30);
    v156 = v42;
    *v157 = v43;
    if (v40 == v10)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
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
      goto LABEL_108;
    }

    v44 = v37 + 56 * v40;
    v45 = *(v44 + 24);
    if (v45 == 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1A7CDD0B8(v11);
      }

      if (v40 >= *(v11 + 2))
      {
        goto LABEL_103;
      }

      *&v11[8 * v40 + 32] = v143;
      *v28 = v11;
      goto LABEL_53;
    }

    if (v45 == 1)
    {
      break;
    }

LABEL_53:
    if (++v40 == v39)
    {

      v34 = v126;
      v35 = v127;
      v36 = v125;
      goto LABEL_17;
    }

    if (v40 >= *(v38 + 16))
    {
      goto LABEL_100;
    }
  }

  if (v40 >= *(v11 + 2))
  {
    goto LABEL_104;
  }

  v147 = v31;
  v12 = *(v44 + 32);
  v149 = *(v44 + 40);
  v145 = v11;
  v46 = *&v11[8 * v40 + 32];
  v47 = *&v157[8];
  v48 = *(*&v157[8] + 16);
  v144 = *&v157[8];
  if (v48)
  {
    v146 = v12;
    sub_1A7CF36A8(&v156, v153);
    sub_1A7CF36A8(&v156, v153);
    v153[0] = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v48, 0);
    v49 = v153[0];
    v50 = (v47 + 40);
    do
    {
      v52 = *(v50 - 1);
      v51 = *v50;
      v153[0] = v49;
      v54 = *(v49 + 2);
      v53 = *(v49 + 3);

      if (v54 >= v53 >> 1)
      {
        sub_1A7CCE918((v53 > 1), v54 + 1, 1);
        v49 = v153[0];
      }

      *(v49 + 2) = v54 + 1;
      v55 = &v49[16 * v54];
      *(v55 + 4) = v52;
      *(v55 + 5) = v51;
      v50 += 6;
      --v48;
    }

    while (v48);
    sub_1A7CF3704(&v156);
    v28 = v138;
    v12 = v146;
  }

  else
  {
    sub_1A7CF36A8(&v156, v153);
    v49 = MEMORY[0x1E69E7CC0];
  }

  v153[0] = v49;
  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CF3788(&qword_1EB2B3088, &qword_1EB2B4AA0, &qword_1A7E45010, MEMORY[0x1E69E6310]);
  v56 = sub_1A7E221F0();
  v58 = v57;

  v153[0] = v56;
  v153[1] = v58;
  sub_1A7CC7DFC();
  v59 = sub_1A7E22A40();

  v146 = v59;
  v60 = *(v59 + 16);
  if (!v60)
  {
LABEL_42:

    v11 = v145;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1A7CDD0B8(v11);
    }

    v66 = v147;
    v67 = v144;
    if (v40 >= *(v11 + 2))
    {
      goto LABEL_105;
    }

    *&v11[8 * v40 + 32] = v46;
    *v28 = v11;
    if (v40 >= *(v66 + 2))
    {
      goto LABEL_106;
    }

    v68 = *&v66[8 * v40 + 32];
    v150[0] = v12;
    v150[1] = v149;
    v151 = v157[21];
    v152 = v67;
    sub_1A7CF36A8(&v156, v153);
    CLIText.formatted(maxWidth:pad:useColors:)(1uLL, 1, v153);

    v69 = v154;
    v70 = v155;
    sub_1A7CC9878(v153, v154);
    v71 = *(v70 + 8);
    sub_1A7CF36A8(&v156, v150);
    v72 = v71(v69, v70);
    v73 = v154;
    v74 = v155;
    sub_1A7CC9878(v153, v154);
    (*(v74 + 16))(v73, v74);
    v75 = v154;
    v76 = v155;
    sub_1A7CC9878(v153, v154);
    (*(v76 + 24))(v75, v76);
    sub_1A7CF3704(&v156);
    sub_1A7B0CD6C(v153);
    v31 = v147;

    if (v72 <= v68)
    {
      v77 = v68;
    }

    else
    {
      v77 = v72;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1A7CDD0B8(v31);
    }

    v10 = v140;
    v12 = 40;
    v38 = v142;
    v39 = v141;
    if (v40 >= *(v31 + 2))
    {
      goto LABEL_107;
    }

    *&v31[8 * v40 + 32] = v77;
    *v139 = v31;
    v37 = v137;
    goto LABEL_53;
  }

  v61 = (v146 + 56);
  while (1)
  {
    v11 = *v61;

    v62 = sub_1A7E229D0();

    v63 = v62 + v12;
    if (__OFADD__(v62, v12))
    {
      break;
    }

    v64 = __OFADD__(v63, v149);
    v65 = v149 + v63;
    if (v64)
    {
      goto LABEL_63;
    }

    if (v65 > v46)
    {
      v46 = v65;
    }

    v61 += 4;
    if (!--v60)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  v80 = 1;
LABEL_65:
  v83 = v158;
  v12 = *(v158 + 16);
  v84 = MEMORY[0x1E69E7CC0];
  v146 = v158;
  if (!v12)
  {
LABEL_68:
    v153[0] = v84;
    v12 = 0;
    sub_1A7CEF724(v153);
    v87 = v11;
    v88 = v153[0];
    v89 = *(v153[0] + 2);
    swift_beginAccess();
    v149 = v89;
    if (!v89)
    {
LABEL_81:

      v104 = v146;
      v105 = *(v146 + 16);
      v106 = MEMORY[0x1E69E7CC0];
      if (v105)
      {
        v106 = sub_1A7CE0A6C(*(v146 + 16), 0);
        v149 = sub_1A7CE0D08(v153, v106 + 4, v105, v104);
        v107 = v153[0];

        sub_1A7CC9770(v107);
        if (v149 != v105)
        {
          goto LABEL_115;
        }
      }

      v153[0] = v106;
      sub_1A7CEF724(v153);

      v108 = v153[0];
      v109 = *(v153[0] + 2);
      swift_beginAccess();
      v149 = v109;
      if (!v109)
      {
LABEL_96:

        return v87;
      }

      v110 = 0;
      v148 = v108 + 32;
      v147 = (v124 + 8);
      v111 = v129;
      v112 = v131;
      while (v110 < *(v108 + 2))
      {
        v113 = v80 - v143;
        if (v80 <= v143)
        {
          goto LABEL_96;
        }

        if (__OFSUB__(v80, v143))
        {
          goto LABEL_113;
        }

        v114 = *&v148[8 * v110];
        v150[0] = MEMORY[0x1E69E7CC0];
        sub_1A7CC7FFC(&qword_1EB2B5440, &qword_1A7E44300);
        sub_1A7CF3788(&qword_1EB2B5448, &qword_1EB2B5440, &qword_1A7E44300, MEMORY[0x1E69E6328]);
        v115 = v128;
        sub_1A7E23300();
        v116 = v135;
        sub_1A7CEDAF0(v135, v114);
        sub_1A7E232C0();
        sub_1A7CED37C(v111, v113, 0, v116, v136, v132 & 0xFFFFFFFF01, v133, v134);
        v117 = *v147;
        (*v147)(v111, v112);
        v117(v115, v112);
        v87 = *v138;
        v118 = *(*v138 + 2);
        if (v118)
        {
          v119 = (v87 + 32);
          v80 = 1;
          while (1)
          {
            v120 = *v119++;
            v121 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              goto LABEL_101;
            }

            v64 = __OFADD__(v80, v121);
            v80 += v121;
            if (v64)
            {
              goto LABEL_102;
            }

            if (!--v118)
            {
              goto LABEL_86;
            }
          }
        }

        v80 = 1;
LABEL_86:
        if (++v110 == v149)
        {
          goto LABEL_96;
        }
      }

LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v90 = 0;
    v148 = v88 + 32;
    v147 = (v124 + 8);
    while (v90 < *(v88 + 2))
    {
      v91 = v80 - v143;
      if (v80 <= v143)
      {
        goto LABEL_81;
      }

      if (__OFSUB__(v80, v143))
      {
        goto LABEL_111;
      }

      v92 = *&v148[8 * v90];
      v153[0] = MEMORY[0x1E69E7CC0];
      sub_1A7CC7FFC(&qword_1EB2B5440, &qword_1A7E44300);
      sub_1A7CF3788(&qword_1EB2B5448, &qword_1EB2B5440, &qword_1A7E44300, MEMORY[0x1E69E6328]);
      v93 = v128;
      sub_1A7E23300();
      v94 = v135;
      sub_1A7CEDAF0(v135, v92);
      v95 = v129;
      v96 = v131;
      sub_1A7E232C0();
      sub_1A7CED37C(v95, v91, 0, v94, v136, v132 & 0xFFFFFFFF01, v133, v134);
      v97 = *v147;
      (*v147)(v95, v96);
      v98 = v96;
      v99 = v138;
      v97(v93, v98);
      v100 = *(*v99 + 2);
      if (v100)
      {
        v87 = *v99;
        v101 = (*v99 + 32);
        v80 = 1;
        while (1)
        {
          v102 = *v101++;
          v103 = v102 + 1;
          if (__OFADD__(v102, 1))
          {
            break;
          }

          v64 = __OFADD__(v80, v103);
          v80 += v103;
          if (v64)
          {
            goto LABEL_98;
          }

          if (!--v100)
          {
            goto LABEL_71;
          }
        }

        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v87 = *v99;
      v80 = 1;
LABEL_71:
      if (++v90 == v149)
      {
        goto LABEL_81;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v145 = v11;
  v84 = sub_1A7CE0A6C(v12, 0);
  v85 = sub_1A7CE0D08(v153, v84 + 4, v12, v83);
  v86 = v153[0];

  sub_1A7CC9770(v86);
  if (v85 == v12)
  {
    v11 = v145;
    goto LABEL_68;
  }

LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1A7CED37C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a8;
  v81 = a2;
  v82 = a7;
  v79 = a3;
  v10 = sub_1A7CC7FFC(&qword_1EB2B5450, &qword_1A7E44308);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v67 - v12;
  v14 = sub_1A7CC7FFC(&qword_1EB2B5458, &qword_1A7E44310);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  v19 = sub_1A7CC7FFC(&qword_1EB2B5438, &qword_1A7E442F8);
  result = sub_1A7E232F0();
  if (result)
  {
    return result;
  }

  v72 = v19;
  v77 = a1;
  sub_1A7E232E0();
  v21 = *(v11 + 16);
  v71 = v11 + 16;
  v70 = v21;
  v21(v18, v13, v10);
  v76 = v14;
  v22 = *(v14 + 36);
  v23 = sub_1A7CF3788(&qword_1EB2B5460, &qword_1EB2B5450, &qword_1A7E44308, MEMORY[0x1E69E7BC8]);
  sub_1A7E22830();
  v24 = *(v11 + 8);
  v78 = v11 + 8;
  v69 = v24;
  v24(v13, v10);
  v25 = 0;
  v80 = a4;
  v68 = a4 + 40;
LABEL_3:
  while (1)
  {
    sub_1A7E22850();
    if (*&v18[v22] == v83[0])
    {
      break;
    }

    v26 = sub_1A7E22890();
    v28 = *v27;
    v29 = v27[1];
    v26(v83, 0);
    result = sub_1A7E22860();
    if (v29 != v28)
    {
      if (v29 >= v28)
      {
        v30 = v29 - v28;
        if (v29 > v28)
        {
          v31 = *(v80 + 16);
          v32 = v31 >= v28;
          v33 = v31 - v28;
          if (!v32)
          {
            v33 = 0;
          }

          v34 = (v68 + 56 * v28);
          while (v33)
          {
            v35 = *v34;
            if (*v34 <= 1)
            {
              v35 = 1;
            }

            v36 = __OFADD__(v25, v35);
            v25 += v35;
            if (v36)
            {
              goto LABEL_59;
            }

            --v33;
            v34 += 7;
            if (!--v30)
            {
              goto LABEL_3;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        return result;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }
  }

  result = sub_1A7CC9970(v18, &qword_1EB2B5458, &qword_1A7E44310);
  v37 = v81;
  v38 = v81;
  v39 = ceil(v81 / v25);
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_73;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_1A7E232E0();
  v40 = v73;
  v70(v73, v13, v10);
  v41 = *(v76 + 36);
  sub_1A7E22830();
  v69(v13, v10);
  sub_1A7E22850();
  v72 = v41;
  v42 = *(v40 + v41);
  v43 = v80;
  if (v42 != v83[0])
  {
    v71 = v80 + 40;
    v76 = v39;
    v75 = v10;
    while (2)
    {
      v44 = sub_1A7E22890();
      v46 = *v45;
      v47 = v45[1];
      v44(v83, 0);
      sub_1A7E22860();
      swift_beginAccess();
      swift_beginAccess();
      result = swift_beginAccess();
      v48 = v46;
      v49 = v46;
LABEL_24:
      if (v48 <= v47)
      {
        v50 = v47;
      }

      else
      {
        v50 = v48;
      }

      v78 = v50;
      v51 = (v71 + 56 * v48);
      v77 = v48;
      while (v47 != v49)
      {
        if (v47 < v46)
        {
          goto LABEL_60;
        }

        if (v48 < v46)
        {
          goto LABEL_61;
        }

        if (v78 == v49)
        {
          goto LABEL_62;
        }

        if (v37 < 1)
        {
          return sub_1A7CC9970(v73, &qword_1EB2B5458, &qword_1A7E44310);
        }

        if (v48 < 0)
        {
          goto LABEL_63;
        }

        if (v49 >= *(v43 + 16))
        {
          goto LABEL_64;
        }

        v52 = *v51;
        v53 = v76 * *v51;
        if ((v76 * *v51) >> 64 != v53 >> 63)
        {
          goto LABEL_65;
        }

        v54 = *(v82 + 16);
        if (v49 >= *(v54 + 16))
        {
          goto LABEL_66;
        }

        v55 = *(v54 + 8 * v49 + 32);
        v36 = __OFSUB__(v55, v53);
        v56 = v55 - v53;
        if (v36)
        {
          goto LABEL_67;
        }

        v81 = v37;
        if (v56 <= 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = v56;
        }

        if ((v79 & 1) == 0)
        {
          v58 = *(v74 + 16);
          if (v49 >= *(v58 + 16))
          {
            goto LABEL_72;
          }

          v59 = *(v58 + 8 * v49 + 32);
          if (v57 <= v59)
          {
            v57 = v59;
          }
        }

        v60 = v47;
        v61 = v23;
        v62 = v46;
        v63 = v55 - v57;
        if (__OFSUB__(v55, v57))
        {
          goto LABEL_68;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *(v82 + 16) = v54;
        if ((result & 1) == 0)
        {
          result = sub_1A7CDD0B8(v54);
          v54 = result;
        }

        v48 = v77;
        if (v49 >= *(v54 + 16))
        {
          goto LABEL_69;
        }

        *(v54 + 8 * v49 + 32) = v57;
        v64 = v81;
        *(v82 + 16) = v54;
        v36 = __OFSUB__(v64, v63);
        v37 = v64 - v63;
        if (v36)
        {
          goto LABEL_70;
        }

        v36 = __OFSUB__(v25, v52);
        v25 -= v52;
        if (v36)
        {
          goto LABEL_71;
        }

        v51 += 7;
        ++v49;
        v43 = v80;
        v46 = v62;
        v23 = v61;
        v47 = v60;
        if (v25 >= 1)
        {
          v65 = ceil(v38 / v25);
          if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_78;
          }

          if (v65 <= -9.22337204e18)
          {
            goto LABEL_79;
          }

          if (v65 >= 9.22337204e18)
          {
            goto LABEL_80;
          }

          v76 = v65;
          v48 = v49;
          goto LABEL_24;
        }
      }

      v66 = v73;
      sub_1A7E22850();
      if (*(v66 + v72) != v83[0])
      {
        continue;
      }

      break;
    }
  }

  return sub_1A7CC9970(v73, &qword_1EB2B5458, &qword_1A7E44310);
}

uint64_t sub_1A7CEDAF0(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = 0;
    v6 = result + 48;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = (v6 + 56 * v5);
      v9 = v8;
      while (1)
      {
        v10 = *v9;
        v9 += 7;
        if (v10 == a2)
        {
          break;
        }

        ++v5;
        v8 = v9;
        if (v3 == v5)
        {
          goto LABEL_22;
        }
      }

      if (v2)
      {
      }

      if (v3 < v5)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      if (v5 < 0)
      {
        goto LABEL_26;
      }

      v11 = 0;
      v12 = v5;
      while (v8[v11] == a2)
      {
        ++v12;
        v11 += 7;
        if (v3 == v12)
        {
          v12 = v3;
          break;
        }
      }

      if (v12 < v5)
      {
        goto LABEL_27;
      }

      if (v3 < v12)
      {
        goto LABEL_28;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A7CCC08C(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1A7CCC08C((v13 > 1), v14 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v5;
      *(v15 + 40) = v12;
      if (v12 >= v3)
      {
        return sub_1A7E232D0();
      }

      v5 = v12 + 1;
    }

    while (v3 != v12 + 1);
  }

LABEL_22:
  if (v2)
  {
  }

  return sub_1A7E232D0();
}