uint64_t storeEnumTagSinglePayload for AXMDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FetchNonceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FetchNonceError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001C670()
{
  result = qword_1000CA138;
  if (!qword_1000CA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA138);
  }

  return result;
}

unint64_t sub_10001C6C8()
{
  result = qword_1000CA140;
  if (!qword_1000CA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA140);
  }

  return result;
}

unint64_t sub_10001C720()
{
  result = qword_1000CA148;
  if (!qword_1000CA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA148);
  }

  return result;
}

unint64_t sub_10001C778()
{
  result = qword_1000CA150;
  if (!qword_1000CA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA150);
  }

  return result;
}

unint64_t sub_10001C7CC()
{
  result = qword_1000CA158;
  if (!qword_1000CA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA158);
  }

  return result;
}

unint64_t sub_10001C820(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BE8B0;
  v6._object = a2;
  v4 = sub_10008E06C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

__n128 sub_10001C874(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001C888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10001C8D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10001C93C@<X0>(char a1@<W0>, uint64_t a4@<X8>)
{
  sub_100019E50();

  v6 = sub_10008D68C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (a1)
  {
    v13 = sub_10008D8AC();
    v14 = sub_10008D83C();
    KeyPath = swift_getKeyPath();
  }

  else
  {
    v13 = 0;
    KeyPath = 0;
    v14 = 0;
  }

  sub_10001CC9C(v6, v8, v10 & 1);

  sub_10001CCAC(v13, KeyPath, v14);
  sub_10001CCFC(v13, KeyPath, v14);
  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v12;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v13;
  *(a4 + 56) = KeyPath;
  *(a4 + 64) = v14;
  sub_10001CCFC(v13, KeyPath, v14);
  sub_10001CD48(v6, v8, v10 & 1);
}

double sub_10001CAB0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_10008D2BC();
  v16 = 1;
  sub_10001C93C(v3, &v10);
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v17 = v10;
  v22[1] = v11;
  v22[2] = v12;
  v22[3] = v13;
  v23 = v14;
  v22[0] = v10;
  sub_10001CBC4(&v17, v9);
  sub_10001CC34(v22);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *v15;
  *(a1 + 33) = *&v15[16];
  v6 = *&v15[48];
  *(a1 + 49) = *&v15[32];
  *(a1 + 65) = v6;
  result = *&v15[63];
  *(a1 + 80) = *&v15[63];
  v8 = v16;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 17) = v5;
  return result;
}

uint64_t sub_10001CBC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CA160, &qword_100090620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001CC34(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000CA160, &qword_100090620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001CC9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001CCAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001CCFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001CD48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10001CD64()
{
  result = qword_1000CA168;
  if (!qword_1000CA168)
  {
    sub_100007108(&qword_1000CA170, &qword_100090658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA168);
  }

  return result;
}

uint64_t sub_10001CDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10001CE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

Swift::Int sub_10001CE88(unsigned __int8 a1)
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

Swift::Int sub_10001CFA0(uint64_t a1, unsigned __int8 a2)
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10001D0B4(void *a1)
{
  v3 = v1;
  v5 = sub_100009C08(&qword_1000CA1D0, &qword_100090900);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11[-v8];
  sub_10000BB24(a1, a1[3]);
  sub_10001EA28();
  sub_10008E24C();
  v11[15] = *v3;
  v11[14] = 0;
  sub_10001EB24();
  sub_10008E14C();
  if (!v2)
  {
    v11[13] = 1;
    sub_10008E10C();
    v11[12] = 2;
    sub_10008E12C();
    v11[11] = 3;
    sub_10008E12C();
    v11[10] = 4;
    sub_10008E10C();
    v11[9] = v3[72];
    v11[8] = 5;
    sub_10001EB78();
    sub_10008E11C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001D30C(void *a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CA1E8, &qword_100090908);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - v7;
  sub_10000BB24(a1, a1[3]);
  sub_10001E92C();
  sub_10008E24C();
  v10[1] = a2;
  sub_100009C08(&qword_1000CA190, &qword_1000908F0);
  sub_10001EBCC(&qword_1000CA1F0, sub_10001EC44, &protocol conformance descriptor for <A> [A]);
  sub_10008E14C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10001D4AC(uint64_t a1)
{
  sub_10008DC8C();
}

unint64_t sub_10001D5B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001E2CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10001D5E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737574617473;
  v5 = 0xE400000000000000;
  v6 = 1684628597;
  v7 = 0xED000064695F7265;
  v8 = 0x767265735F6D646DLL;
  if (v2 != 4)
  {
    v8 = 0x65725F726F727265;
    v7 = 0xEC0000006E6F7361;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x65756C6176;
  if (v2 != 1)
  {
    v10 = 0x6E5F6C6169726573;
    v9 = 0xED00007265626D75;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10001D6B4()
{
  v1 = *v0;
  v2 = 0x737574617473;
  v3 = 1684628597;
  v4 = 0x767265735F6D646DLL;
  if (v1 != 4)
  {
    v4 = 0x65725F726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65756C6176;
  if (v1 != 1)
  {
    v5 = 0x6E5F6C6169726573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001D780@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001E2CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001D7B4(uint64_t a1)
{
  v2 = sub_10001EA28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D7F0(uint64_t a1)
{
  v2 = sub_10001EA28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D82C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x44454C494146;
  }

  else
  {
    v3 = 0x53534543435553;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x44454C494146;
  }

  else
  {
    v5 = 0x53534543435553;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10008E18C();
  }

  return v8 & 1;
}

Swift::Int sub_10001D8D0()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10001D950(uint64_t a1)
{
  sub_10008DC8C();
}

Swift::Int sub_10001D9BC()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

void sub_10001DA44(uint64_t *a1@<X8>)
{
  v2 = 0x53534543435553;
  if (*v1)
  {
    v2 = 0x44454C494146;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 sub_10001DAA4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001DAC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001DB10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001DC34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x4C414E5245544E49;
  }

  if (v2)
  {
    v4 = 0xEE00524F5252455FLL;
  }

  else
  {
    v4 = 0x8000000100097990;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x4C414E5245544E49;
  }

  if (*a2)
  {
    v6 = 0x8000000100097990;
  }

  else
  {
    v6 = 0xEE00524F5252455FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10008E18C();
  }

  return v8 & 1;
}

Swift::Int sub_10001DCEC()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10001DD80(uint64_t a1)
{
  sub_10008DC8C();
}

Swift::Int sub_10001DE00()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10001DE9C@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_10008E06C(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_10001DEF8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000100097990;
  v3 = 0x4C414E5245544E49;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xEE00524F5252455FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

__n128 sub_10001DFF8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10001E318(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_10001E064()
{
  sub_10008E1FC();
  sub_10008E20C(0);
  return sub_10008E22C();
}

Swift::Int sub_10001E0D0()
{
  sub_10008E1FC();
  sub_10008E20C(0);
  return sub_10008E22C();
}

uint64_t sub_10001E124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365636E6F6ELL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10008E18C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001E1B4(uint64_t a1)
{
  v2 = sub_10001E92C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E1F0(uint64_t a1)
{
  v2 = sub_10001E92C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001E22C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001E778(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10001E278()
{
  result = qword_1000CA178;
  if (!qword_1000CA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA178);
  }

  return result;
}

unint64_t sub_10001E2CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BE918;
  v6._object = a2;
  v4 = sub_10008E06C(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001E318@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100009C08(&qword_1000CA1B0, &qword_1000908F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v25 - v8;
  sub_10000BB24(a1, a1[3]);
  sub_10001EA28();
  sub_10008E23C();
  if (v2)
  {
    sub_10000BC74(a1);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_10001EA7C();
    sub_10008E0DC();
    v10 = v38[0];
    v38[0] = 1;
    v11 = sub_10008E09C();
    v48 = v10;
    v33 = v12;
    v38[0] = 2;
    v13 = sub_10008E0BC();
    v32 = v14;
    v30 = v13;
    v38[0] = 3;
    v29 = sub_10008E0BC();
    v31 = v15;
    v38[0] = 4;
    v27 = sub_10008E09C();
    v28 = v16;
    v49 = 5;
    sub_10001EAD0();
    sub_10008E0AC();
    (*(v6 + 8))(v9, v5);
    v26 = v50;
    v17 = v48;
    LOBYTE(v34) = v48;
    v18 = v33;
    *(&v34 + 1) = v11;
    *&v35 = v33;
    v19 = v32;
    *(&v35 + 1) = v30;
    *&v36 = v32;
    v20 = v31;
    *(&v36 + 1) = v29;
    *v37 = v31;
    v21 = v28;
    *&v37[8] = v27;
    *&v37[16] = v28;
    v37[24] = v50;
    sub_10000B4B0(&v34, v38);
    sub_10000BC74(a1);
    v38[0] = v17;
    v39 = v11;
    v40 = v18;
    v41 = v30;
    v42 = v19;
    v43 = v29;
    v44 = v20;
    v45 = v27;
    v46 = v21;
    v47 = v26;
    result = sub_10000B8E8(v38);
    v23 = *v37;
    a2[2] = v36;
    a2[3] = v23;
    *(a2 + 57) = *&v37[9];
    v24 = v35;
    *a2 = v34;
    a2[1] = v24;
  }

  return result;
}

void *sub_10001E778(void *a1)
{
  v3 = sub_100009C08(&qword_1000CA180, &qword_1000908E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v10 - v6;
  v8 = sub_10000BB24(a1, a1[3]);
  sub_10001E92C();
  sub_10008E23C();
  if (v1)
  {
    sub_10000BC74(a1);
  }

  else
  {
    sub_100009C08(&qword_1000CA190, &qword_1000908F0);
    sub_10001EBCC(&qword_1000CA198, sub_10001E980, &protocol conformance descriptor for <A> [A]);
    sub_10008E0DC();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_10000BC74(a1);
  }

  return v8;
}

unint64_t sub_10001E92C()
{
  result = qword_1000CA188;
  if (!qword_1000CA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA188);
  }

  return result;
}

unint64_t sub_10001E980()
{
  result = qword_1000CA1A0;
  if (!qword_1000CA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA1A0);
  }

  return result;
}

unint64_t sub_10001E9D4()
{
  result = qword_1000CA1A8;
  if (!qword_1000CA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA1A8);
  }

  return result;
}

unint64_t sub_10001EA28()
{
  result = qword_1000CA1B8;
  if (!qword_1000CA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA1B8);
  }

  return result;
}

unint64_t sub_10001EA7C()
{
  result = qword_1000CA1C0;
  if (!qword_1000CA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA1C0);
  }

  return result;
}

unint64_t sub_10001EAD0()
{
  result = qword_1000CA1C8;
  if (!qword_1000CA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA1C8);
  }

  return result;
}

unint64_t sub_10001EB24()
{
  result = qword_1000CA1D8;
  if (!qword_1000CA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA1D8);
  }

  return result;
}

unint64_t sub_10001EB78()
{
  result = qword_1000CA1E0;
  if (!qword_1000CA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA1E0);
  }

  return result;
}

uint64_t sub_10001EBCC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007108(&qword_1000CA190, &qword_1000908F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001EC44()
{
  result = qword_1000CA1F8;
  if (!qword_1000CA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA1F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXMNonceInfoForDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXMNonceInfoForDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXMNonceResponse.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AXMNonceResponse.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for NetworkInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NetworkInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001F024()
{
  result = qword_1000CA200;
  if (!qword_1000CA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA200);
  }

  return result;
}

unint64_t sub_10001F07C()
{
  result = qword_1000CA208;
  if (!qword_1000CA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA208);
  }

  return result;
}

unint64_t sub_10001F0D4()
{
  result = qword_1000CA210;
  if (!qword_1000CA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA210);
  }

  return result;
}

unint64_t sub_10001F12C()
{
  result = qword_1000CA218;
  if (!qword_1000CA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA218);
  }

  return result;
}

unint64_t sub_10001F184()
{
  result = qword_1000CA220;
  if (!qword_1000CA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA220);
  }

  return result;
}

unint64_t sub_10001F1DC()
{
  result = qword_1000CA228;
  if (!qword_1000CA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA228);
  }

  return result;
}

unint64_t sub_10001F234()
{
  result = qword_1000CA230;
  if (!qword_1000CA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA230);
  }

  return result;
}

unint64_t sub_10001F288()
{
  result = qword_1000CA238;
  if (!qword_1000CA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA238);
  }

  return result;
}

uint64_t sub_10001F2E8()
{
  v0 = sub_10008CCDC();
  sub_10001F360(v0, qword_1000D6D38);
  sub_100009F94(v0, qword_1000D6D38);
  return sub_10008CCCC();
}

uint64_t *sub_10001F360(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_10001F3C4()
{
  v0 = sub_10008CB2C();
  __chkstk_darwin(v0 - 8, v1);
  v2 = sub_10008DBBC();
  __chkstk_darwin(v2 - 8, v3);
  sub_100009C08(&qword_1000CA240, &unk_100090C70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100090C60;
  sub_10008DB5C();
  sub_10008CB1C();
  v5 = sub_10008DC3C();
  v7 = v6;
  sub_10008DB5C();
  sub_10008CB1C();
  v8 = sub_10008DC3C();
  v10 = v9;
  v11 = sub_10008DBCC();
  v12 = objc_opt_self();
  v13 = [v12 imageNamed:v11];

  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 48) = v8;
  *(v4 + 56) = v10;
  *(v4 + 64) = v13;
  sub_10008DB5C();
  sub_10008CB1C();
  v14 = sub_10008DC3C();
  v37 = v15;
  v38 = v14;
  sub_10008DB5C();
  sub_10008CB1C();
  v16 = sub_10008DC3C();
  v18 = v17;
  v19 = sub_10008DBCC();
  v39 = v12;
  v20 = [v12 systemImageNamed:v19];

  if (!v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v21 = objc_opt_self();
  v22 = [v21 systemBlueColor];
  v23 = objc_opt_self();
  v24 = [v23 configurationWithHierarchicalColor:v22];

  v25 = [v20 imageWithConfiguration:v24];
  *(v4 + 72) = v38;
  *(v4 + 80) = v37;
  *(v4 + 88) = v16;
  *(v4 + 96) = v18;
  *(v4 + 104) = v25;
  sub_10008DB5C();
  sub_10008CB1C();
  v26 = sub_10008DC3C();
  v28 = v27;
  if (qword_1000C8D68 != -1)
  {
    swift_once();
  }

  sub_10008DB5C();
  sub_10008CB1C();
  v29 = sub_10008DC3C();
  v31 = v30;
  v32 = sub_10008DBCC();
  v33 = [v39 systemImageNamed:v32];

  if (v33)
  {
    v34 = [v21 systemBlueColor];
    v35 = [v23 configurationWithHierarchicalColor:v34];

    v36 = [v33 imageWithConfiguration:v35];
    *(v4 + 112) = v26;
    *(v4 + 120) = v28;
    *(v4 + 128) = v29;
    *(v4 + 136) = v31;
    *(v4 + 144) = v36;
    qword_1000D6D50 = v4;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10001F924(uint64_t a1, int a2)
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

uint64_t sub_10001F96C(uint64_t result, int a2, int a3)
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

uint64_t sub_10001F9BC()
{
  v0 = sub_10008CB2C();
  __chkstk_darwin(v0 - 8, v1);
  v2 = sub_10008DBBC();
  __chkstk_darwin(v2 - 8, v3);
  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  qword_1000D6D58 = result;
  unk_1000D6D60 = v5;
  return result;
}

uint64_t sub_10001FABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = sub_10008CA5C();
  v6 = *(v71 - 8);
  __chkstk_darwin(v71, v7);
  v70 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10008CA8C();
  v9 = *(v69 - 8);
  __chkstk_darwin(v69, v10);
  v68 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Device(0);
  __chkstk_darwin(v12, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for EnrolledDeviceRecord(0);
  v16 = *(v67 - 8);
  __chkstk_darwin(v67, v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1;
  v89 = a2;

  v90._countAndFlagsBits = 10;
  v90._object = 0xE100000000000000;
  sub_10008DCBC(v90);
  v66 = *(a3 + 16);
  if (v66)
  {
    v62 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v61 = (v6 + 8);
    v60 = (v9 + 8);
    v59 = *(v16 + 72);
    v20 = 0;
    v21 = &_swiftEmptyArrayStorage;
    v65 = v12;
    v64 = v15;
    v63 = v19;
    do
    {
      sub_1000206E8(v62 + v59 * v20, v19, type metadata accessor for EnrolledDeviceRecord);
      sub_1000206E8(v19, v15, type metadata accessor for Device);
      v22 = &v15[v12[7]];
      v23 = *(v22 + 1);
      if (v23)
      {
        v24 = *v22;
        v25 = v23;
      }

      else
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v78 = v24;
      v79 = v25;
      v26 = &v15[v12[5]];
      v27 = v26[1];
      if (v27)
      {
        v80 = *v26;
        v81 = v27;
      }

      else
      {
        v28 = qword_1000C8D08;

        if (v28 != -1)
        {
          swift_once();
        }

        v80 = qword_1000D6D58;
        v81 = unk_1000D6D60;
      }

      v72 = v21;

      v29 = &v15[v12[6]];
      v30 = *(v29 + 1);
      if (v30)
      {
        v31 = *v29;
      }

      else
      {
        v31 = 0;
        v30 = 0xE000000000000000;
      }

      v73 = v20 + 1;
      v82 = v31;
      v83 = v30;
      v32 = v19[*(v67 + 24)];

      v84 = sub_1000205A0(v32);
      v85 = v33;
      v34 = v68;
      sub_10008CA7C();
      v35 = v70;
      sub_10008CA4C();
      v36 = sub_10008CA9C();
      v38 = v37;
      (*v61)(v35, v71);
      (*v60)(v34, v69);
      v86 = v36;
      v87 = v38;
      v76 = &_swiftEmptyArrayStorage;
      sub_10000A9D0(0, 5, 0);
      v39 = 0;
      v40 = v76;
      do
      {
        v41 = *&v77[v39 + 32];
        v42 = *(&v79 + v39);
        v74 = 34;
        v75 = 0xE100000000000000;

        v91._countAndFlagsBits = v41;
        v91._object = v42;
        sub_10008DCBC(v91);
        v92._countAndFlagsBits = 34;
        v92._object = 0xE100000000000000;
        sub_10008DCBC(v92);

        v43 = v74;
        v44 = v75;
        v76 = v40;
        v46 = v40[2];
        v45 = v40[3];
        if (v46 >= v45 >> 1)
        {
          sub_10000A9D0((v45 > 1), v46 + 1, 1);
          v40 = v76;
        }

        v40[2] = v46 + 1;
        v47 = &v40[2 * v46];
        v47[4] = v43;
        v47[5] = v44;
        v39 += 16;
      }

      while (v39 != 80);
      swift_arrayDestroy();
      v74 = v40;
      sub_100009C08(&qword_1000CA248, &qword_100090CD8);
      sub_100020750();
      v48 = sub_10008DB3C();
      v50 = v49;

      v21 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10003B108(0, *(v21 + 2) + 1, 1, v21);
      }

      v15 = v64;
      v52 = *(v21 + 2);
      v51 = *(v21 + 3);
      v19 = v63;
      if (v52 >= v51 >> 1)
      {
        v21 = sub_10003B108((v51 > 1), v52 + 1, 1, v21);
      }

      sub_1000207B4(v15, type metadata accessor for Device);
      sub_1000207B4(v19, type metadata accessor for EnrolledDeviceRecord);
      *(v21 + 2) = v52 + 1;
      v53 = &v21[16 * v52];
      *(v53 + 4) = v48;
      *(v53 + 5) = v50;
      v20 = v73;
      v12 = v65;
    }

    while (v73 != v66);
  }

  else
  {
    v21 = &_swiftEmptyArrayStorage;
  }

  v74 = v21;
  sub_100009C08(&qword_1000CA248, &qword_100090CD8);
  sub_100020750();
  v54 = sub_10008DB3C();
  v56 = v55;

  v93._countAndFlagsBits = v54;
  v93._object = v56;
  sub_10008DCBC(v93);

  return v88;
}

uint64_t sub_100020198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_10008DC2C();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_10002025C, 0, 0);
}

uint64_t sub_10002025C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = [objc_opt_self() defaultManager];
  sub_10008C99C();
  v4 = sub_10008DBCC();

  isa = sub_10008C9FC().super.isa;
  [v3 createFileAtPath:v4 contents:isa attributes:0];

  v0[2] = v2;
  v0[3] = v1;
  sub_10008DC1C();
  sub_100019E50();
  sub_10008DF2C();
  (*(v0[8] + 8))(v0[9], v0[7]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000203C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;

  return _swift_task_switch(sub_100020454, 0, 0);
}

uint64_t sub_100020454()
{
  v1 = [objc_opt_self() defaultManager];
  sub_10008C95C(v2);
  v4 = v3;
  *(v0 + 16) = 0;
  v5 = [v1 removeItemAtURL:v3 error:v0 + 16];

  v6 = *(v0 + 16);
  if (v5)
  {
    v11 = *(v0 + 8);
    v7 = v6;
    v8 = v11;
  }

  else
  {
    v9 = v6;
    sub_10008C8EC();

    swift_willThrow();
    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_1000205A0(char a1)
{
  v1 = sub_10008CB2C();
  __chkstk_darwin(v1 - 8, v2);
  v3 = sub_10008DBBC();
  __chkstk_darwin(v3 - 8, v4);
  sub_10008DB5C();
  sub_10008CB1C();
  return sub_10008DC3C();
}

uint64_t sub_1000206E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100020750()
{
  result = qword_1000CA250;
  if (!qword_1000CA250)
  {
    sub_100007108(&qword_1000CA248, &qword_100090CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA250);
  }

  return result;
}

uint64_t sub_1000207B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_100020814@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t (*sub_1000208B8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10008CD9C();
  return sub_10002095C;
}

void sub_10002095C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1000209C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[39] = a6;
  v7[40] = v6;
  v7[37] = a4;
  v7[38] = a5;
  v7[35] = a2;
  v7[36] = a3;
  v7[34] = a1;
  return _swift_task_switch(sub_1000209F0, 0, 0);
}

uint64_t sub_1000209F0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  *(v2 + 88) = *(v0 + 304);
  *(v2 + 96) = v1;

  *(v0 + 128) = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 48);
  v9 = *(v2 + 64);
  *(v0 + 192) = *(v2 + 80);
  *(v0 + 160) = v8;
  *(v0 + 176) = v9;
  *(v0 + 144) = v7;
  v11 = *(v2 + 48);
  v10 = *(v2 + 64);
  v12 = *(v2 + 32);
  *(v0 + 112) = *(v2 + 80);
  *(v0 + 80) = v11;
  *(v0 + 96) = v10;
  *(v0 + 64) = v12;
  *(v0 + 48) = *(v2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v3;
  *(v0 + 120) = &_swiftEmptyArrayStorage;

  sub_10002137C(v0 + 128, v0 + 200);

  sub_10008CDBC();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100020B3C()
{

  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension19FakeAccountProvider__account;
  v2 = sub_100009C08(&qword_1000C92D0, &qword_10008F410);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeAccountProvider(uint64_t a1)
{
  result = qword_1000CA288;
  if (!qword_1000CA288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100020C74(uint64_t a1)
{
  sub_1000070A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100020D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000092CC;

  return sub_1000209C4(a1, a2, a3, a4, a5, a6);
}

__n128 sub_100020DF0@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100020EA0()
{
  v0 = sub_100009C08(&qword_1000C92C8, &qword_100090DC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000C92D0, &qword_10008F410);
  sub_10008CD8C();
  swift_endAccess();
  sub_10000BB68();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100020FD0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10008CDBC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000210F0()
{
  v2 = sub_1000208B8((v0 + 16));
  if (*(v1 + 8))
  {
    *(v1 + 104) = &_swiftEmptyArrayStorage;
  }

  (v2)(v0 + 16, 0);
  v3 = *(v0 + 8);

  return v3();
}

__n128 sub_100021190@<Q0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = v5;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_100021244(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v11[4] = a1[4];
  v11[5] = v3;
  v11[6] = a1[6];
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v10[11] = a1[4];
  v10[12] = v6;
  v10[13] = a1[6];
  v7 = a1[1];
  v10[7] = *a1;
  v10[8] = v7;
  v8 = a1[3];
  v10[9] = a1[2];
  v10[10] = v8;
  sub_10002130C(v11, v10);

  return sub_10008CDBC();
}

uint64_t sub_10002130C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000C90E8, &qword_10008F350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000213D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  [a5 setInProgress:1];
  v8 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
    v11 = sub_10008DBCC();
    [v10 setServiceIdentifier:v11];

    v12 = sub_10008DBCC();
    [v10 setUsername:v12];

    if (a4)
    {
      v13 = sub_10008DBCC();
      [v10 _setPassword:v13];
    }

    [v10 setSupportsPiggybacking:0];
    [v10 setIsEphemeral:1];
    [v10 setShouldUpdatePersistentServiceTokens:0];
    [v10 setPresentingViewController:a5];
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    aBlock[4] = sub_10002283C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000218A0;
    aBlock[3] = &unk_1000BFA48;
    v15 = _Block_copy(aBlock);
    v16 = v5;

    [v9 authenticateWithContext:v10 completion:v15];
    _Block_release(v15);
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v17 = sub_10008CCDC();
    sub_100009F94(v17, qword_1000D6D38);
    oslog = sub_10008CCBC();
    v18 = sub_10008DE2C();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v18, "Unable to create AKAppleIDAuthenticationController", v19, 2u);
    }
  }
}

uint64_t sub_1000216F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v6 = sub_10008CCDC();
  sub_100009F94(v6, qword_1000D6D38);
  v7 = sub_10008CCBC();
  v8 = sub_10008DE1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000A2D8(0xD000000000000029, 0x8000000100098D10, &v17);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: Authentication finished", v9, 0xCu);
    sub_10000BC74(v10);
  }

  v11 = a3 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38DMCEnrollmentAuthenticationCoordinator_parentView;
  v12 = *(a3 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38DMCEnrollmentAuthenticationCoordinator_parentView);
  v13 = *(a3 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38DMCEnrollmentAuthenticationCoordinator_parentView + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  if (a1)
  {
    a1 = sub_10000E678(a1);
  }

  sub_10000C5B8(a1, a2, v12, v13, v14, v15);
}

uint64_t sub_1000218A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100009C08(&qword_1000C9440, &unk_100090E40);
    v4 = sub_10008DB1C();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_100021980(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DMCEnrollmentAuthenticationCoordinator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100021A20(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setInProgress:1];
  v6 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    v9 = sub_10008DBCC();
    [v8 setUsername:v9];

    v10 = sub_10008DBCC();
    [v8 setServiceIdentifier:v10];

    [v8 setIsEphemeral:1];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v3;
    v12[4] = a2;
    v12[5] = a3;
    aBlock[4] = sub_1000226CC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100022160;
    aBlock[3] = &unk_1000BF980;
    v13 = _Block_copy(aBlock);
    v14 = v8;
    v15 = v3;

    [v7 fetchAuthModeWithContext:v14 completion:v13];
    _Block_release(v13);
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v16 = sub_10008CCDC();
    sub_100009F94(v16, qword_1000D6D38);
    oslog = sub_10008CCBC();
    v17 = sub_10008DE2C();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Unable to create AKAppleIDAuthenticationController", v18, 2u);
    }
  }
}

void sub_100021CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v8 = sub_10008DA5C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10008DA8C();
  v13 = *(v31 - 8);
  __chkstk_darwin(v31, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_1000167AC();
    v29 = sub_10008DE7C();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a1;
    v21 = v30;
    v20[4] = v18;
    v20[5] = v21;
    v20[6] = a6;
    aBlock[4] = sub_100022738;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100077134;
    aBlock[3] = &unk_1000BF9F8;
    v22 = _Block_copy(aBlock);
    v23 = v18;

    sub_10008DA7C();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100022748();
    sub_100009C08(&qword_1000CA450, &qword_100097630);
    sub_1000227A0();
    sub_10008DF5C();
    v24 = v29;
    sub_10008DE8C();
    _Block_release(v22);

    (*(v9 + 8))(v12, v8);
    (*(v13 + 8))(v16, v31);
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v25 = sub_10008CCDC();
    sub_100009F94(v25, qword_1000D6D38);
    v26 = sub_10008CCBC();
    v27 = sub_10008DE2C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Sign in dismissed before authentication mode was fetched", v28, 2u);
    }
  }
}

void sub_1000220A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2 == 1)
    {
      [a3 setInProgress:0];
      [a3 showPasswordField:1];
    }

    else
    {
      sub_1000213D8(a4, a5, 0, 0, a3);
    }
  }
}

void sub_100022160(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100022250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v10 = sub_10008CCDC();
  sub_100009F94(v10, qword_1000D6D38);
  v11 = sub_10008CCBC();
  v12 = sub_10008DE1C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000A2D8(0xD00000000000003FLL, 0x8000000100098C80, &v15);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_10000BC74(v14);
  }

  sub_1000213D8(a4, a5, a2, a3, a1);
}

void sub_1000224E8()
{
  v1 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE2C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000A2D8(0xD000000000000029, 0x8000000100098C50, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Going back to welcome view", v5, 0xCu);
    sub_10000BC74(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38DMCEnrollmentAuthenticationCoordinator_parentView + 16);
  v8 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38DMCEnrollmentAuthenticationCoordinator_parentView + 24);

  sub_10000DC18(v7, v8);
}

uint64_t sub_10002264C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022684()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000226D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000226F0()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100022748()
{
  result = qword_1000CD7D0;
  if (!qword_1000CD7D0)
  {
    sub_10008DA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD7D0);
  }

  return result;
}

unint64_t sub_1000227A0()
{
  result = qword_1000CD7E0;
  if (!qword_1000CD7E0)
  {
    sub_100007108(&qword_1000CA450, &qword_100097630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD7E0);
  }

  return result;
}

uint64_t sub_100022804()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100022858()
{
  v0 = type metadata accessor for SystemKeychainProvider();
  v1 = swift_allocObject();
  type metadata accessor for SystemKeychainBackedKeyValuePasswordStorage();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_100022958();
  *(v1 + 16) = v2;
  *(v1 + 24) = result;
  qword_1000D6D80 = v0;
  unk_1000D6D88 = &off_1000BFA70;
  qword_1000D6D68 = v1;
  return result;
}

uint64_t sub_1000228D0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_100022958()
{
  result = qword_1000CA4F8;
  if (!qword_1000CA4F8)
  {
    type metadata accessor for SystemKeychainBackedKeyValuePasswordStorage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA4F8);
  }

  return result;
}

NSString sub_1000229B0()
{
  result = sub_10008DBCC();
  qword_1000D6D90 = result;
  return result;
}

NSString sub_1000229E8()
{
  result = sub_10008DBCC();
  qword_1000D6D98 = result;
  return result;
}

__n128 sub_100022A20(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100022A44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_100022A8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100022AF8(void *a1)
{
  v3 = v1;
  v5 = sub_100009C08(&qword_1000CA528, &qword_100090F88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v14[-v8];
  sub_10000BB24(a1, a1[3]);
  sub_1000234F0();
  sub_10008E24C();
  LOBYTE(v19) = 0;
  sub_10008E12C();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_10008E12C();
    v11 = *(v3 + 48);
    v12 = *(v3 + 80);
    v25 = *(v3 + 64);
    v26 = v12;
    v13 = *(v3 + 48);
    v24[0] = *(v3 + 32);
    v24[1] = v13;
    v20 = v11;
    v21 = v25;
    v22 = *(v3 + 80);
    v27 = *(v3 + 96);
    v23 = *(v3 + 96);
    v19 = v24[0];
    v18 = 2;
    sub_10002137C(v24, v16);
    sub_1000235C8();
    sub_10008E14C();
    v16[2] = v21;
    v16[3] = v22;
    v17 = v23;
    v16[1] = v20;
    v16[0] = v19;
    sub_10000BC20(v16);
    v15 = *(v3 + 104);
    v14[7] = 3;
    sub_100009C08(&qword_1000CA510, &qword_100090F80);
    sub_10002361C(&qword_1000CA538, sub_100023694, &protocol conformance descriptor for <A> [A]);
    sub_10008E14C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100022E24()
{
  v1 = 0x4449656C707061;
  v2 = 0x617A696E6167726FLL;
  if (*v0 != 2)
  {
    v2 = 0x65767265536D646DLL;
  }

  if (*v0)
  {
    v1 = 0x44495344746C61;
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

uint64_t sub_100022EAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100022FB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100022ED4(uint64_t a1)
{
  v2 = sub_1000234F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100022F10(uint64_t a1)
{
  v2 = sub_1000234F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100022F4C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100023128(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_100022FB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_10008E18C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_10008E18C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974 || (sub_10008E18C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65767265536D646DLL && a2 == 0xEA00000000007372)
  {

    return 3;
  }

  else
  {
    v6 = sub_10008E18C();

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

uint64_t sub_100023128@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = sub_100009C08(&qword_1000CA500, &qword_100090F78);
  v5 = *(v56 - 8);
  __chkstk_darwin(v56, v6);
  v8 = &v25 - v7;
  sub_10000BB24(a1, a1[3]);
  sub_1000234F0();
  sub_10008E23C();
  if (v2)
  {
    return sub_10000BC74(a1);
  }

  v9 = v5;
  v28 = a2;
  LOBYTE(v36[0]) = 0;
  v10 = v56;
  v11 = sub_10008E0BC();
  v13 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 1;
  v14 = sub_10008E0BC();
  v27 = v15;
  v25 = v14;
  v45 = 2;
  sub_10000BBCC();
  sub_10008E0DC();
  v53 = v48;
  v54 = v49;
  v55 = v50;
  v51 = v46;
  v52 = v47;
  sub_100009C08(&qword_1000CA510, &qword_100090F80);
  v43 = 3;
  sub_10002361C(&qword_1000CA518, sub_100023544, &protocol conformance descriptor for <A> [A]);
  sub_10008E0DC();
  (*(v9 + 8))(v8, v10);
  v16 = v44;
  v18 = v25;
  v17 = v26;
  *&v29 = v26;
  *(&v29 + 1) = v13;
  v19 = v27;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  v33 = v53;
  v34 = v54;
  LOBYTE(v35) = v55;
  v31 = v51;
  v32 = v52;
  *(&v35 + 1) = v44;
  sub_10000C048(&v29, v36);
  sub_10000BC74(a1);
  v36[0] = v17;
  v36[1] = v13;
  v36[2] = v18;
  v36[3] = v19;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v37 = v51;
  v38 = v52;
  v42 = v16;
  result = sub_100023598(v36);
  v21 = v34;
  v22 = v28;
  v28[4] = v33;
  v22[5] = v21;
  v22[6] = v35;
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  v24 = v32;
  v22[2] = v31;
  v22[3] = v24;
  return result;
}

unint64_t sub_1000234F0()
{
  result = qword_1000CA508;
  if (!qword_1000CA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA508);
  }

  return result;
}

unint64_t sub_100023544()
{
  result = qword_1000CA520;
  if (!qword_1000CA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA520);
  }

  return result;
}

unint64_t sub_1000235C8()
{
  result = qword_1000CA530;
  if (!qword_1000CA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA530);
  }

  return result;
}

uint64_t sub_10002361C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007108(&qword_1000CA510, &qword_100090F80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100023694()
{
  result = qword_1000CA540;
  if (!qword_1000CA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA540);
  }

  return result;
}

unint64_t sub_1000236FC()
{
  result = qword_1000CA548;
  if (!qword_1000CA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA548);
  }

  return result;
}

unint64_t sub_100023754()
{
  result = qword_1000CA550;
  if (!qword_1000CA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA550);
  }

  return result;
}

unint64_t sub_1000237AC()
{
  result = qword_1000CA558;
  if (!qword_1000CA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA558);
  }

  return result;
}

__n128 sub_100023800(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100023824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10002386C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000238D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007265626D75;
  v3 = 0x6E5F6C6169726573;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x767265735F6D646DLL;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000100097920;
    }

    else
    {
      v6 = 0xED000064695F7265;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1684628597;
    }

    else
    {
      v5 = 0x6E5F6C6169726573;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xED00007265626D75;
    }
  }

  v7 = 0xD000000000000013;
  v8 = 0x8000000100097920;
  if (a2 != 2)
  {
    v7 = 0x767265735F6D646DLL;
    v8 = 0xED000064695F7265;
  }

  if (a2)
  {
    v3 = 1684628597;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10008E18C();
  }

  return v11 & 1;
}

uint64_t sub_100023A24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x69616D655F67726FLL;
    }

    else
    {
      v3 = 0x656D616E5F67726FLL;
    }

    if (v2)
    {
      v4 = 0xE90000000000006CLL;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6E6F68705F67726FLL;
    v4 = 0xE900000000000065;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x657079745F67726FLL;
    }

    else
    {
      v3 = 0x635F6562615F7369;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xEF72656D6F747375;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x69616D655F67726FLL;
    }

    else
    {
      v6 = 0x656D616E5F67726FLL;
    }

    if (a2)
    {
      v5 = 0xE90000000000006CLL;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000065;
    if (v3 != 0x6E6F68705F67726FLL)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x657079745F67726FLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEF72656D6F747375;
    if (v3 != 0x635F6562615F7369)
    {
LABEL_34:
      v7 = sub_10008E18C();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_100023BF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684628597;
  v6 = 0x767265735F6D646DLL;
  v7 = 0xED000064695F7265;
  if (a1 != 4)
  {
    v6 = 0x65725F726F727265;
    v7 = 0xEC0000006E6F7361;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x65756C6176;
  if (a1 != 1)
  {
    v9 = 0x6E5F6C6169726573;
    v8 = 0xED00007265626D75;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x737574617473;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x737574617473)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65756C6176)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v13 = 0x6E5F6C6169726573;
    v14 = 0x7265626D75;
LABEL_29:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v10 != v13)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1684628597)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 4)
  {
    v13 = 0x767265735F6D646DLL;
    v14 = 0x64695F7265;
    goto LABEL_29;
  }

  v12 = 0xEC0000006E6F7361;
  if (v10 != 0x65725F726F727265)
  {
LABEL_34:
    v15 = sub_10008E18C();
    goto LABEL_35;
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v15 = 1;
LABEL_35:

  return v15 & 1;
}

uint64_t sub_100023DF0(void *a1)
{
  v3 = sub_100009C08(&qword_1000CA570, &qword_100091168);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_10000BB24(a1, a1[3]);
  sub_100024A28();
  sub_10008E24C();
  v9[15] = 0;
  sub_10008E12C();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9[14] = 1;
  sub_10008E12C();
  v9[13] = 2;
  sub_10008E12C();
  v9[12] = 3;
  sub_10008E12C();
  v9[11] = 4;
  sub_10008E13C();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int sub_100023FDC()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_1000240D0(uint64_t a1)
{
  sub_10008DC8C();
}

Swift::Int sub_1000241B0()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

unint64_t sub_1000242A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100024624(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000242D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D616E5F67726FLL;
  v5 = 0x6E6F68705F67726FLL;
  v6 = 0xE800000000000000;
  v7 = 0x657079745F67726FLL;
  if (v2 != 3)
  {
    v7 = 0x635F6562615F7369;
    v6 = 0xEF72656D6F747375;
  }

  if (v2 == 2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x69616D655F67726FLL;
    v3 = 0xE90000000000006CLL;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_100024380()
{
  v1 = *v0;
  v2 = 0x656D616E5F67726FLL;
  v3 = 0x6E6F68705F67726FLL;
  v4 = 0x657079745F67726FLL;
  if (v1 != 3)
  {
    v4 = 0x635F6562615F7369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69616D655F67726FLL;
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

unint64_t sub_10002442C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100024624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100024454(uint64_t a1)
{
  v2 = sub_100024A28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100024490(uint64_t a1)
{
  v2 = sub_100024A28();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000244CC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100024670(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_100024538()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = v1 == 6779503 && v2 == 0xE300000000000000;
  v4 = v3;
  if (v3 || (sub_10008E18C()) && (*(v0 + 64))
  {
    return 3;
  }

  if (v1 == 7693413 && v2 == 0xE300000000000000)
  {
    return 1;
  }

  v7 = sub_10008E18C();
  v8 = v4 | v7;
  if (v7)
  {
    result = 1;
  }

  else
  {
    result = 2;
  }

  if ((v8 & 1) == 0)
  {
    if (sub_10008E18C())
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100024624(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BEA68;
  v6._object = a2;
  v4 = sub_10008E06C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100024670@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100009C08(&qword_1000CA560, &qword_100091160);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v25 - v8;
  sub_10000BB24(a1, a1[3]);
  sub_100024A28();
  sub_10008E23C();
  if (v2)
  {
    return sub_10000BC74(a1);
  }

  LOBYTE(v37[0]) = 0;
  v10 = sub_10008E0BC();
  v31 = v11;
  LOBYTE(v37[0]) = 1;
  v12 = sub_10008E0BC();
  v30 = v13;
  v27 = v12;
  LOBYTE(v37[0]) = 2;
  v26 = sub_10008E0BC();
  v29 = v14;
  LOBYTE(v37[0]) = 3;
  v25 = sub_10008E0BC();
  v28 = v15;
  v40 = 4;
  v16 = sub_10008E0CC();
  (*(v6 + 8))(v9, v5);
  v39 = v16 & 1;
  v18 = v30;
  v17 = v31;
  *&v32 = v10;
  *(&v32 + 1) = v31;
  v19 = v27;
  *&v33 = v27;
  *(&v33 + 1) = v30;
  v20 = v29;
  *&v34 = v26;
  *(&v34 + 1) = v29;
  v21 = v28;
  *&v35 = v25;
  *(&v35 + 1) = v28;
  v36 = v39;
  sub_10002137C(&v32, v37);
  sub_10000BC74(a1);
  v37[0] = v10;
  v37[1] = v17;
  v37[2] = v19;
  v37[3] = v18;
  v37[4] = v26;
  v37[5] = v20;
  v37[6] = v25;
  v37[7] = v21;
  v38 = v39;
  result = sub_10000BC20(v37);
  v23 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v23;
  *(a2 + 64) = v36;
  v24 = v33;
  *a2 = v32;
  *(a2 + 16) = v24;
  return result;
}

unint64_t sub_100024A28()
{
  result = qword_1000CA568;
  if (!qword_1000CA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA568);
  }

  return result;
}

unint64_t sub_100024A90()
{
  result = qword_1000CA578;
  if (!qword_1000CA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA578);
  }

  return result;
}

unint64_t sub_100024AE8()
{
  result = qword_1000CA580;
  if (!qword_1000CA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA580);
  }

  return result;
}

unint64_t sub_100024B40()
{
  result = qword_1000CA588;
  if (!qword_1000CA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA588);
  }

  return result;
}

__n128 sub_100024B94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100024BA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100024BF0(uint64_t result, int a2, int a3)
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

uint64_t sub_100024C44(void *a1)
{
  v3 = v1;
  v5 = sub_100009C08(&qword_1000CA5B0, &qword_1000913D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11[-v8];
  sub_10000BB24(a1, a1[3]);
  sub_1000262F4();
  sub_10008E24C();
  v11[15] = 0;
  sub_10008E12C();
  if (!v2)
  {
    v11[14] = 1;
    sub_10008E12C();
    v11[13] = *(v3 + 32);
    v11[12] = 2;
    sub_10002639C();
    sub_10008E14C();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_100024E24()
{
  sub_10008E1FC();
  sub_10008DC8C();
  sub_10008DC8C();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_100024F08(void *a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CA5F8, &qword_1000916D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - v7;
  sub_10000BB24(a1, a1[3]);
  sub_100026790();
  sub_10008E24C();
  v10[1] = a2;
  sub_100009C08(&qword_1000CA510, &qword_100090F80);
  sub_10002361C(&qword_1000CA538, sub_100023694, &protocol conformance descriptor for <A> [A]);
  sub_10008E14C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100025094(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000013;
  v4 = 0x80000001000979F0;
  if (v2 == 1)
  {
    v5 = 0x80000001000979F0;
  }

  else
  {
    v3 = 0x444D5F44554F4C43;
    v5 = 0xE90000000000004DLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x52414C55474552;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000013;
  if (*a2 != 1)
  {
    v8 = 0x444D5F44554F4C43;
    v4 = 0xE90000000000004DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x52414C55474552;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10008E18C();
  }

  return v11 & 1;
}

Swift::Int sub_100025198()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_100025244(uint64_t a1)
{
  sub_10008DC8C();
}

Swift::Int sub_1000252DC()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

unint64_t sub_100025384@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100025FFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000253B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001000979F0;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0x444D5F44554F4C43;
    v4 = 0xE90000000000004DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x52414C55474552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000254CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  if (v2 != 1)
  {
    v4 = 0x745F726576726573;
    v3 = 0xEB00000000657079;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x767265735F6D646DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED000064695F7265;
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (*a2 != 1)
  {
    v8 = 0x745F726576726573;
    v7 = 0xEB00000000657079;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x767265735F6D646DLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED000064695F7265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10008E18C();
  }

  return v11 & 1;
}

Swift::Int sub_1000255D8()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_100025688(uint64_t a1)
{
  sub_10008DC8C();
}

Swift::Int sub_100025724()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

unint64_t sub_1000257D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100026048(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100025800(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000064695F7265;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x745F726576726573;
    v4 = 0xEB00000000657079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x767265735F6D646DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10002586C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x745F726576726573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x767265735F6D646DLL;
  }
}

unint64_t sub_1000258D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100026048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100025908(uint64_t a1)
{
  v2 = sub_1000262F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025944(uint64_t a1)
{
  v2 = sub_1000262F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100025980@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100026094(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000259E4(uint64_t a1)
{
  sub_10008DC8C();
  sub_10008DC8C();
  sub_10008DC8C();
}

Swift::Int sub_100025AA8()
{
  sub_10008E1FC();
  sub_10008DC8C();
  sub_10008DC8C();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_100025B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100025EB0(v5, v7) & 1;
}

unint64_t sub_100025BD8()
{
  result = qword_1000CA590;
  if (!qword_1000CA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA590);
  }

  return result;
}

Swift::Int sub_100025C2C()
{
  sub_10008E1FC();
  sub_10008DC8C();
  return sub_10008E22C();
}

Swift::Int sub_100025CA8()
{
  sub_10008E1FC();
  sub_10008DC8C();
  return sub_10008E22C();
}

uint64_t sub_100025D00@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000BEBD0;
  v7._object = v3;
  v5 = sub_10008E06C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100025D98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000BEC08;
  v8._object = a2;
  v6 = sub_10008E06C(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100025DF0(uint64_t a1)
{
  v2 = sub_100026790();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025E2C(uint64_t a1)
{
  v2 = sub_100026790();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100025E68@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000265DC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100025EB0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_10008E18C()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), v5 || (sub_10008E18C()))
  {
    v6 = 0xD000000000000013;
    v7 = 0x80000001000979F0;
    if (*(a1 + 32) == 1)
    {
      v8 = 0x80000001000979F0;
    }

    else
    {
      v6 = 0x444D5F44554F4C43;
      v8 = 0xE90000000000004DLL;
    }

    if (*(a1 + 32))
    {
      v9 = v6;
    }

    else
    {
      v9 = 0x52414C55474552;
    }

    if (*(a1 + 32))
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = 0xD000000000000013;
    if (*(a2 + 32) != 1)
    {
      v11 = 0x444D5F44554F4C43;
      v7 = 0xE90000000000004DLL;
    }

    if (*(a2 + 32))
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x52414C55474552;
    }

    if (*(a2 + 32))
    {
      v13 = v7;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    if (v9 == v12 && v10 == v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_10008E18C();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_100025FFC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BEB00;
  v6._object = a2;
  v4 = sub_10008E06C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100026048(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BEB68;
  v6._object = a2;
  v4 = sub_10008E06C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100026094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100009C08(&qword_1000CA598, &qword_1000913C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v17 - v8;
  sub_10000BB24(a1, a1[3]);
  sub_1000262F4();
  sub_10008E23C();
  if (v2)
  {
    return sub_10000BC74(a1);
  }

  v24 = 0;
  v10 = sub_10008E0BC();
  v12 = v11;
  v20 = v10;
  v23 = 1;
  v18 = sub_10008E0BC();
  v19 = v13;
  v21 = 2;
  sub_100026348();
  sub_10008E0DC();
  (*(v6 + 8))(v9, v5);
  v14 = v22;
  result = sub_10000BC74(a1);
  *a2 = v20;
  *(a2 + 8) = v12;
  v16 = v19;
  *(a2 + 16) = v18;
  *(a2 + 24) = v16;
  *(a2 + 32) = v14;
  return result;
}

unint64_t sub_1000262F4()
{
  result = qword_1000CA5A0;
  if (!qword_1000CA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA5A0);
  }

  return result;
}

unint64_t sub_100026348()
{
  result = qword_1000CA5A8;
  if (!qword_1000CA5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA5A8);
  }

  return result;
}

unint64_t sub_10002639C()
{
  result = qword_1000CA5B8;
  if (!qword_1000CA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA5B8);
  }

  return result;
}

unint64_t sub_10002642C()
{
  result = qword_1000CA5C0;
  if (!qword_1000CA5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA5C0);
  }

  return result;
}

unint64_t sub_100026484()
{
  result = qword_1000CA5C8;
  if (!qword_1000CA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA5C8);
  }

  return result;
}

unint64_t sub_1000264DC()
{
  result = qword_1000CA5D0;
  if (!qword_1000CA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA5D0);
  }

  return result;
}

unint64_t sub_100026534()
{
  result = qword_1000CA5D8;
  if (!qword_1000CA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA5D8);
  }

  return result;
}

unint64_t sub_100026588()
{
  result = qword_1000CA5E0;
  if (!qword_1000CA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA5E0);
  }

  return result;
}

void *sub_1000265DC(void *a1)
{
  v3 = sub_100009C08(&qword_1000CA5E8, &unk_1000916C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v10 - v6;
  v8 = sub_10000BB24(a1, a1[3]);
  sub_100026790();
  sub_10008E23C();
  if (v1)
  {
    sub_10000BC74(a1);
  }

  else
  {
    sub_100009C08(&qword_1000CA510, &qword_100090F80);
    sub_10002361C(&qword_1000CA518, sub_100023544, &protocol conformance descriptor for <A> [A]);
    sub_10008E0DC();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_10000BC74(a1);
  }

  return v8;
}

unint64_t sub_100026790()
{
  result = qword_1000CA5F0;
  if (!qword_1000CA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA5F0);
  }

  return result;
}

unint64_t sub_1000267F8()
{
  result = qword_1000CA600;
  if (!qword_1000CA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA600);
  }

  return result;
}

unint64_t sub_100026850()
{
  result = qword_1000CA608;
  if (!qword_1000CA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA608);
  }

  return result;
}

unint64_t sub_1000268A8()
{
  result = qword_1000CA610;
  if (!qword_1000CA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA610);
  }

  return result;
}

uint64_t sub_100026904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v23 - v10;
  sub_10000C314(a3, v23 - v10, &unk_1000CCC50, &qword_10008F440);
  v12 = sub_10008DDEC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000C3F8(v11, &unk_1000CCC50, &qword_10008F440);
  }

  else
  {
    sub_10008DDDC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10008DD8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10008DC6C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000C3F8(a3, &unk_1000CCC50, &qword_10008F440);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000C3F8(a3, &unk_1000CCC50, &qword_10008F440);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

__n128 sub_100026BB8@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100026C84(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v3;
}

double sub_100026D18@<D0>(uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_100026DBC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v3;
}

uint64_t sub_100026E50(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_unownedRetainStrong();
  sub_100026E98(v2);
}

uint64_t sub_100026E98(char a1)
{
  if (a1 == 1)
  {
    v2 = v1[25];
    v3 = v1[26];
    sub_10000BB24(v1 + 22, v2);
    (*(v3 + 24))(v2, v3);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10008CDBC();
  v4 = v1[25];
  v5 = v1[26];
  sub_10000BB24(v1 + 22, v4);
  (*(v5 + 8))(v4, v5);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_100026FF8(_OWORD *a1, uint64_t a2)
{
  v3 = a1[5];
  v11[4] = a1[4];
  v11[5] = v3;
  v11[6] = a1[6];
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  swift_unownedRetainStrong();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v10[11] = a1[4];
  v10[12] = v6;
  v10[13] = a1[6];
  v7 = a1[1];
  v10[7] = *a1;
  v10[8] = v7;
  v8 = a1[3];
  v10[9] = a1[2];
  v10[10] = v8;
  sub_10000C314(v11, v10, &unk_1000C90E8, &qword_10008F350);
  return sub_10008CDBC();
}

uint64_t sub_1000270CC()
{
  v0[2] = sub_10008DDBC();
  v0[3] = sub_10008DDAC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100027178;

  return sub_1000272B4();
}

uint64_t sub_100027178()
{

  v1 = sub_10008DD8C();

  return _swift_task_switch(sub_10002E288, v1, v0);
}

uint64_t sub_1000272B4()
{
  v1[3] = v0;
  sub_10008DDBC();
  v1[4] = sub_10008DDAC();
  v3 = sub_10008DD8C();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10002734C, v3, v2);
}

uint64_t sub_10002734C()
{
  v1 = *(*(v0 + 24) + 72);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 16) + **(v1 + 16));
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_100027470;

  return v5(ObjectType, v1);
}

uint64_t sub_100027470(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = v6[5];
    v8 = v6[6];
    v9 = sub_100027628;
  }

  else
  {
    v6[9] = a2;
    v6[10] = a1;
    v7 = v6[5];
    v8 = v6[6];
    v9 = sub_1000275A4;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000275A4()
{
  v2 = v0[9];
  v1 = v0[10];

  sub_10002C08C(v1, v2);
  sub_10002D980(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100027628()
{
  v13 = v0;

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_10008CCDC();
  sub_100009F94(v1, qword_1000D6D38);
  swift_errorRetain();
  v2 = sub_10008CCBC();
  v3 = sub_10008DE2C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    *(v0 + 16) = v4;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v7 = sub_10008DC4C();
    v9 = sub_10000A2D8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching network info, defaulting to .shareWiFi: %{public}s", v5, 0xCu);
    sub_10000BC74(v6);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 88) = 0;

  sub_10008CDBC();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10002783C()
{
  v1 = v0;
  v2 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v14[-v4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v7 = v15;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  if (*(&v15 + 1))
  {
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v15 = v22;
    v16 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    v14[15] = 1;

    sub_10008CDBC();
    v8 = sub_10008DDEC();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_10008DDBC();

    v9 = sub_10008DDAC();
    v10 = swift_allocObject();
    v11 = v18;
    *(v10 + 88) = v17;
    *(v10 + 104) = v11;
    v12 = v20;
    *(v10 + 120) = v19;
    *(v10 + 136) = v12;
    v13 = v16;
    *(v10 + 56) = v15;
    *(v10 + 16) = v9;
    *(v10 + 24) = &protocol witness table for MainActor;
    *(v10 + 32) = v1;
    *(v10 + 40) = v7;
    *(v10 + 72) = v13;
    sub_10007B228(0, 0, v5, &unk_100091D80, v10);
  }

  return result;
}

uint64_t sub_100027A88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v21[-v6];
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v8 = sub_10008CCDC();
  sub_100009F94(v8, qword_1000D6D38);
  sub_10002DBA4(a1, v23);
  v9 = sub_10008CCBC();
  v10 = sub_10008DE1C();
  sub_10002DC00(a1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10000A2D8(0xD000000000000023, 0x80000001000993A0, &v22);
    *(v11 + 12) = 2080;
    v12 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v12;
    v24 = *(a1 + 32);
    sub_10002DBA4(a1, v21);
    v13 = sub_10008DC4C();
    v15 = sub_10000A2D8(v13, v14, &v22);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: persisting MDM Server: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v16 = sub_10008DDEC();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_10008DDBC();
  sub_10002DBA4(a1, v23);

  v17 = sub_10008DDAC();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = v2;
  v19 = *(a1 + 16);
  *(v18 + 40) = *a1;
  *(v18 + 56) = v19;
  *(v18 + 72) = *(a1 + 32);
  sub_10007B228(0, 0, v7, &unk_100091C50, v18);
}

uint64_t sub_100027D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_10008DDBC();
  v5[3] = sub_10008DDAC();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100027178;

  return sub_100027E28(a5);
}

uint64_t sub_100027E28(uint64_t a1)
{
  *(v2 + 264) = a1;
  *(v2 + 272) = v1;
  v3 = *(a1 + 16);
  *(v2 + 280) = *a1;
  *(v2 + 296) = v3;
  *(v2 + 49) = *(a1 + 32);
  sub_10008DDBC();
  *(v2 + 312) = sub_10008DDAC();
  v5 = sub_10008DD8C();
  *(v2 + 320) = v5;
  *(v2 + 328) = v4;

  return _swift_task_switch(sub_100027ED4, v5, v4);
}

uint64_t sub_100027ED4()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 272);
  v3 = v2[13];
  v4 = v2[14];
  v7 = *(v0 + 296);
  v8 = *(v0 + 280);
  sub_10000BB24(v2 + 10, v3);
  *(v0 + 32) = v7;
  *(v0 + 16) = v8;
  *(v0 + 48) = v1;
  v9 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  *(v0 + 336) = v5;
  *v5 = v0;
  v5[1] = sub_100028030;

  return v9(v0 + 16, v3, v4);
}

uint64_t sub_100028030()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_1000282F8;
  }

  else
  {
    v5 = sub_10002816C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002816C()
{
  v1 = *(v0 + 264);

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 72) = v2;
  *(v0 + 88) = *(v0 + 48);
  sub_10002DBA4(v1, v0 + 96);
  sub_10002DBA4(v1, v0 + 136);

  sub_10008CDBC();
  v3 = *(v1 + 8);
  v4 = *(v0 + 264);
  if (v3 >= 2)
  {
    v5 = *(v4 + 32);
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    v8 = *v4;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 216) = v8;
    *(v0 + 224) = v3;
    *(v0 + 232) = v7;
    *(v0 + 240) = v6;
    *(v0 + 248) = v5;
  }

  else
  {
    sub_10002DC00(v4);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
  }

  sub_10008CDBC();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000282F8()
{
  v14 = v0;

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_10008CCDC();
  sub_100009F94(v1, qword_1000D6D38);
  swift_errorRetain();
  v2 = sub_10008CCBC();
  v3 = sub_10008DE2C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[43];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[32] = v5;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v8 = sub_10008DC4C();
    v10 = sub_10000A2D8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to store Device Management Service info %{public}s", v6, 0xCu);
    sub_10000BC74(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000284D0()
{
  v1 = v0;
  v2 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v15 - v4;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v6 = sub_10008CCDC();
  sub_100009F94(v6, qword_1000D6D38);
  v7 = sub_10008CCBC();
  v8 = sub_10008DE1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000A2D8(0xD00000000000001FLL, 0x8000000100099380, &v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: persisting network type to credential", v9, 0xCu);
    sub_10000BC74(v10);
  }

  v11 = sub_10008DDEC();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_10008DDBC();

  v12 = sub_10008DDAC();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v1;
  sub_10007B228(0, 0, v5, &unk_100091C40, v13);
}

uint64_t sub_10002870C()
{
  v0[2] = sub_10008DDBC();
  v0[3] = sub_10008DDAC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000287C0;

  return sub_10002895C(0, 0);
}

uint64_t sub_1000287C0()
{

  v1 = sub_10008DD8C();

  return _swift_task_switch(sub_1000288FC, v1, v0);
}

uint64_t sub_1000288FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002895C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_10008DDBC();
  v3[7] = sub_10008DDAC();
  v5 = sub_10008DD8C();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1000289FC, v5, v4);
}

uint64_t sub_1000289FC()
{
  v1 = v0[5];
  v0[10] = *(v1 + 64);
  v2 = *(v1 + 72);
  v0[11] = v2;
  ObjectType = swift_getObjectType();
  v0[12] = ObjectType;
  v6 = (*(v2 + 16) + **(v2 + 16));
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_100028B30;

  return v6(ObjectType, v2);
}

uint64_t sub_100028B30(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {
    v5 = v4[8];
    v6 = v4[9];

    return _swift_task_switch(sub_10002938C, v5, v6);
  }

  else
  {
    v13 = (*(v4[11] + 24) + **(v4[11] + 24));
    v7 = swift_task_alloc();
    v4[17] = v7;
    *v7 = v4;
    v7[1] = sub_100028D28;
    v9 = v4[11];
    v8 = v4[12];
    v10 = v4[4];
    v11 = v4[3];

    return v13(v11, v10, v8, v9);
  }
}

uint64_t sub_100028D28()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_100029560;
  }

  else
  {
    v5 = sub_100028E64;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100028E64(uint64_t a1)
{
  v1[19] = sub_10008DDAC();
  v3 = sub_10008DD8C();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_100028EF0, v3, v2);
}

uint64_t sub_100028EF0()
{
  v1 = v0[15];
  if (v1 >= 2)
  {
    if (v1 != 2)
    {
      v2 = v0[5];
      v0[22] = *(v2 + 160);
      v3 = *(v2 + 168);
      v0[23] = v3;
      v0[24] = swift_getObjectType();
      v0[25] = *(v3 + 32);
      v0[26] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x5359000000000000;
      v4 = sub_10008DD8C();
      v6 = v5;
      v7 = sub_100028FCC;
      v8 = v4;
      v9 = v6;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10002D980(v0[14], v1);
  }

  v8 = v0[8];
  v9 = v0[9];
  v7 = sub_100029310;
LABEL_6:

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100028FCC()
{
  v1 = *(v0 + 144);
  (*(v0 + 200))(*(v0 + 112), *(v0 + 120), *(v0 + 192), *(v0 + 184));
  *(v0 + 216) = v1;
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  if (v1)
  {
    v4 = sub_1000290CC;
  }

  else
  {
    v4 = sub_100029060;
  }

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100029060()
{
  sub_10002D980(v0[14], v0[15]);

  v1 = v0[8];
  v2 = v0[9];

  return _swift_task_switch(sub_100029310, v1, v2);
}

uint64_t sub_1000290CC()
{
  sub_10002D980(v0[14], v0[15]);

  v1 = v0[8];
  v2 = v0[9];

  return _swift_task_switch(sub_10002913C, v1, v2);
}

uint64_t sub_10002913C()
{
  v13 = v0;

  v1 = v0[27];
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  swift_errorRetain();
  v3 = sub_10008CCBC();
  v4 = sub_10008DE2C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v7 = sub_10008DC4C();
    v9 = sub_10000A2D8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to store networking info as .credential: %{public}s", v5, 0xCu);
    sub_10000BC74(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100029310()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_10002C08C(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10002938C()
{
  v13 = v0;

  v1 = v0[16];
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  swift_errorRetain();
  v3 = sub_10008CCBC();
  v4 = sub_10008DE2C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v7 = sub_10008DC4C();
    v9 = sub_10000A2D8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to store networking info as .credential: %{public}s", v5, 0xCu);
    sub_10000BC74(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100029560()
{
  v15 = v0;
  v1 = v0[14];
  v2 = v0[15];

  sub_10002D980(v1, v2);
  v3 = v0[18];
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10008CCDC();
  sub_100009F94(v4, qword_1000D6D38);
  swift_errorRetain();
  v5 = sub_10008CCBC();
  v6 = sub_10008DE2C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v9 = sub_10008DC4C();
    v11 = sub_10000A2D8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to store networking info as .credential: %{public}s", v7, 0xCu);
    sub_10000BC74(v8);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100029744()
{
  v1 = v0;
  v2 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v15 - v4;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v6 = sub_10008CCDC();
  sub_100009F94(v6, qword_1000D6D38);
  v7 = sub_10008CCBC();
  v8 = sub_10008DE1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000A2D8(0xD00000000000001CLL, 0x8000000100099360, &v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: persisting network type to not shared", v9, 0xCu);
    sub_10000BC74(v10);
  }

  v11 = sub_10008DDEC();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_10008DDBC();

  v12 = sub_10008DDAC();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v1;
  sub_10007B228(0, 0, v5, &unk_100091B90, v13);
}

uint64_t sub_100029980()
{
  v0[2] = sub_10008DDBC();
  v0[3] = sub_10008DDAC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100027178;

  return sub_10002895C(0, 1);
}

uint64_t sub_100029A34()
{
  v1 = v0;
  v2 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v15 - v4;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v6 = sub_10008CCDC();
  sub_100009F94(v6, qword_1000D6D38);
  v7 = sub_10008CCBC();
  v8 = sub_10008DE1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000A2D8(0x2874754F6E676973, 0xE900000000000029, &v15);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: Handling sign out from settings", v9, 0xCu);
    sub_10000BC74(v10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = 1;

  sub_10008CDBC();
  v11 = sub_10008DDEC();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_10008DDBC();

  v12 = sub_10008DDAC();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v1;
  sub_100026904(0, 0, v5, &unk_100091B68, v13);
}

uint64_t sub_100029CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[99] = a4;
  v4[105] = sub_10008DDBC();
  v4[111] = sub_10008DDAC();
  v6 = sub_10008DD8C();
  v4[117] = v6;
  v4[123] = v5;

  return _swift_task_switch(sub_100029D54, v6, v5);
}

uint64_t sub_100029D54()
{
  v1 = *(v0 + 792);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000BB24(v1 + 3, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 992) = v4;
  *v4 = v0;
  v4[1] = sub_100029E7C;

  return v6(v2, v3);
}

uint64_t sub_100029E7C()
{
  v1 = *v0;

  v2 = *(v1 + 984);
  v3 = *(v1 + 936);

  return _swift_task_switch(sub_100029F9C, v3, v2);
}

uint64_t sub_100029F9C()
{

  sub_100009C08(&qword_1000CD8C0, &qword_100091B80);
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 776, sub_10002A04C, v0 + 656);
}

uint64_t sub_10002A04C()
{
  v1[125] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 2, v1 + 97, sub_10002AA6C, v1 + 92);
  }

  else
  {
    v2 = v1[97];
    v1[126] = v2;
    v3 = v1[98];
    v1[127] = v3;
    sub_10002D95C(v2, v3);
    v1[128] = sub_10008DDAC();
    v5 = sub_10008DD8C();
    v1[129] = v5;
    v1[130] = v4;

    return _swift_task_switch(sub_10002A134, v5, v4);
  }
}

uint64_t sub_10002A134()
{
  v1 = v0[127];
  if (v1 >= 2)
  {
    if (v1 != 2)
    {
      v2 = v0[99];
      v0[131] = *(v2 + 160);
      v3 = *(v2 + 168);
      v0[132] = v3;
      v0[133] = swift_getObjectType();
      v0[134] = *(v3 + 32);
      v0[135] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x5359000000000000;
      v4 = sub_10008DD8C();
      v6 = v5;
      v7 = sub_10002A218;
      v8 = v4;
      v9 = v6;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10002D980(v0[126], v1);
  }

  v9 = v0[123];
  v8 = v0[117];
  v7 = sub_10002A438;
LABEL_6:

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10002A218()
{
  v1 = *(v0 + 1000);
  (*(v0 + 1072))(*(v0 + 1008), *(v0 + 1016), *(v0 + 1064), *(v0 + 1056));
  *(v0 + 1088) = v1;
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  if (v1)
  {
    v4 = sub_10002A330;
  }

  else
  {
    v4 = sub_10002A2BC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10002A2BC()
{
  sub_10002D980(v0[126], v0[127]);

  v1 = v0[123];
  v2 = v0[117];

  return _swift_task_switch(sub_10002A438, v2, v1);
}

uint64_t sub_10002A330()
{
  sub_10002D980(*(v0 + 1008), *(v0 + 1016));

  return _swift_asyncLet_finish(v0 + 16, v0 + 776, sub_10002A3AC, v0 + 944);
}

uint64_t sub_10002A3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002A438()
{
  v1 = *(*(v0 + 792) + 72);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 24) + **(v1 + 24));
  v3 = swift_task_alloc();
  *(v0 + 1096) = v3;
  *v3 = v0;
  v3[1] = sub_10002A564;

  return v5(0, 2, ObjectType, v1);
}

uint64_t sub_10002A564()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {

    return _swift_asyncLet_finish(v2 + 16, v2 + 776, sub_10002AAF8, v2 + 800);
  }

  else
  {
    v3 = *(v2 + 984);
    v4 = *(v2 + 936);

    return _swift_task_switch(sub_10002A6A4, v4, v3);
  }
}

uint64_t sub_10002A6A4()
{
  v1 = *(v0 + 792);
  v2 = v1[13];
  v3 = v1[14];
  sub_10000BB24(v1 + 10, v2);
  *(v0 + 696) = 0;
  *(v0 + 704) = 2;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 1112) = v4;
  *v4 = v0;
  v4[1] = sub_10002A7F0;

  return v6(v0 + 696, v2, v3);
}

uint64_t sub_10002A7F0()
{
  v2 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {

    return _swift_asyncLet_finish(v2 + 16, v2 + 776, sub_10002AB84, v2 + 848);
  }

  else
  {
    v3 = *(v2 + 984);
    v4 = *(v2 + 936);

    return _swift_task_switch(sub_10002A930, v4, v3);
  }
}

uint64_t sub_10002A930()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 729) = 0;

  sub_10008CDBC();

  return _swift_asyncLet_finish(v0 + 16, v0 + 776, sub_10002A9E0, v0 + 896);
}

uint64_t sub_10002A9FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002AA88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002AB14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002ABA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002AC10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10002AC30, 0, 0);
}

uint64_t sub_10002AC30()
{
  v1 = *(*(v0 + 24) + 72);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 16) + **(v1 + 16));
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_10002AD54;

  return v5(ObjectType, v1);
}

uint64_t sub_10002AD54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;

    return _swift_task_switch(sub_10002AEB0, 0, 0);
  }
}

unint64_t sub_10002AED8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10008CDAC();

    if (v4)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (qword_1000C8D68 != -1)
    {
      swift_once();
    }

    v1 = byte_1000D6E08;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10008CDAC();

    if (v1 == 1)
    {
      v2 = 0x204E414C57206F4ELL;
    }

    else
    {
      v2 = 0xD000000000000010;
    }

    if (v4)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10002B090()
{
  v0 = sub_10008DB9C();
  __chkstk_darwin(v0 - 8, v1);
  v2 = sub_10008CB2C();
  __chkstk_darwin(v2 - 8, v3);
  v4 = sub_10008DBBC();
  __chkstk_darwin(v4 - 8, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (!v7)
  {
    if (qword_1000C8D68 == -1)
    {
LABEL_5:
      sub_10008DB5C();
      sub_10008CB1C();
      return sub_10008DC3C();
    }

LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  if (v7 != 1)
  {
    if (qword_1000C8D68 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  sub_10008DB8C();
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  sub_10008DB7C(v8);
  v9._countAndFlagsBits = sub_10002AED8();
  sub_10008DB6C(v9);

  v10._object = 0x8000000100099180;
  v10._countAndFlagsBits = 0xD000000000000020;
  sub_10008DB7C(v10);
  sub_10008DBAC();
  sub_10008CB1C();
  return sub_10008DC3C();
}

void *sub_10002B434()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v0 = v10;
  v16 = v9;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v11 = v4;
  v12 = v5;
  if (v3)
  {
    v6 = v13;
    v7 = v14;
    v8 = v15;
    v4 = v11;
    v5 = v12;
    v9 = v16;

    sub_10000C3F8(&v2, &unk_1000C90E8, &qword_10008F350);
  }

  else
  {
    v3 = 0;
    v6 = v13;
    v7 = v14;
    v8 = v15;
    v4 = v11;
    v5 = v12;
    v9 = v16;
    sub_10000C3F8(&v2, &unk_1000C90E8, &qword_10008F350);
    return &_swiftEmptyArrayStorage;
  }

  return v0;
}

uint64_t sub_10002B55C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

char *sub_10002B5D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if ((v24 & 0x2000000000000000) != 0)
  {
    v0 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v0 = *v23 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_10002B434();
  if (v0)
  {
    v2 = *(result + 2);
    if (v2)
    {
      v3 = 0;
      v4 = result + 64;
      v5 = &_swiftEmptyArrayStorage;
      v17 = result + 64;
      v18 = *(result + 2);
      v21 = result;
      do
      {
        v19 = v5;
        v6 = &v4[40 * v3];
        v7 = v2 - v3;
        while (1)
        {
          if (v3 >= *(result + 2))
          {
            __break(1u);
            return result;
          }

          v22 = v7;
          v8 = *(v6 - 3);
          v20 = *(v6 - 4);
          v10 = *(v6 - 2);
          v9 = *(v6 - 1);
          v11 = *v6;
          sub_10008DC5C();
          swift_getKeyPath();
          swift_getKeyPath();

          sub_10008CDAC();

          sub_10008DC5C();

          sub_100019E50();
          v12 = sub_10008DF3C();

          if (v12)
          {
            break;
          }

          v6 += 40;
          ++v3;
          v7 = v22 - 1;
          result = v21;
          if (v22 == 1)
          {
            v5 = v19;
            goto LABEL_19;
          }
        }

        v5 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000A928(0, v19[2] + 1, 1);
          v5 = v19;
        }

        result = v21;
        v13 = v11;
        v15 = v5[2];
        v14 = v5[3];
        if (v15 >= v14 >> 1)
        {
          sub_10000A928((v14 > 1), v15 + 1, 1);
          v13 = v11;
          result = v21;
          v5 = v19;
        }

        ++v3;
        v5[2] = v15 + 1;
        v16 = &v5[5 * v15];
        *(v16 + 4) = v20;
        *(v16 + 5) = v8;
        *(v16 + 6) = v10;
        *(v16 + 7) = v9;
        v16[64] = v13;
        v4 = v17;
        v2 = v18;
      }

      while (v22 != 1);
    }

    else
    {
      v5 = &_swiftEmptyArrayStorage;
    }

LABEL_19:

    return v5;
  }

  return result;
}

char *sub_10002B880()
{

  sub_10000BC74(v0 + 3);
  swift_unknownObjectRelease();
  sub_10000BC74(v0 + 10);
  sub_10000BC74(v0 + 15);
  swift_unknownObjectRelease();
  sub_10000BC74(v0 + 22);
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__account;
  v2 = sub_100009C08(&qword_1000C92D0, &qword_10008F410);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__wifiNetworkStatus;
  v4 = sub_100009C08(&qword_1000CAA40, &unk_100091D40);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__networkType;
  v6 = sub_100009C08(&qword_1000CAA48, &unk_100095830);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__currentMDMServerInfo;
  v8 = sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__mdmServerSelected;
  v10 = sub_100009C08(&qword_1000CAA50, &unk_100095820);
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__currentNetworkName;
  v12 = sub_100009C08(&qword_1000CAA58, &unk_100091D60);
  v13 = *(*(v12 - 8) + 8);
  v13(&v0[v11], v12);
  v13(&v0[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__networkProfileName], v12);
  v14 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__isSignOutInProgress;
  v15 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v16 = *(*(v15 - 8) + 8);
  v16(&v0[v14], v15);
  v16(&v0[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__isFetchingMDMServerInProgress], v15);
  v17 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__serverSelectionSearchText;
  v18 = sub_100009C08(&qword_1000CAA60, &qword_100091D70);
  (*(*(v18 - 8) + 8))(&v0[v17], v18);
  return v0;
}

uint64_t sub_10002BB88()
{
  sub_10002B880();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingsViewModel(uint64_t a1)
{
  result = qword_1000CA690;
  if (!qword_1000CA690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002BC34(uint64_t a1)
{
  sub_100016420(319, &qword_1000C90E0, &unk_1000C90E8, &qword_10008F350);
  if (v1 <= 0x3F)
  {
    sub_10002BF30(319, &qword_1000CA6A0, &type metadata for SettingsViewModel.WiFiNetworkStatus);
    if (v2 <= 0x3F)
    {
      sub_10002BF30(319, &qword_1000CA6A8, &type metadata for SettingsViewModel.NetworkType);
      if (v3 <= 0x3F)
      {
        sub_100016420(319, &qword_1000C9900, &unk_1000CD8B0, &qword_100090200);
        if (v4 <= 0x3F)
        {
          sub_100016420(319, &qword_1000CA6B0, &qword_1000CA6B8, &unk_1000918A8);
          if (v5 <= 0x3F)
          {
            sub_100016420(319, &qword_1000CA6C0, &qword_1000C92F0, &qword_10008F430);
            if (v6 <= 0x3F)
            {
              sub_10002BF30(319, &qword_1000CA6C8, &type metadata for Bool);
              if (v7 <= 0x3F)
              {
                sub_10002BF30(319, &unk_1000CA6D0, &type metadata for String);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10002BF30(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10008CDCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10002BFA0()
{
  result = qword_1000CAA30;
  if (!qword_1000CAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAA30);
  }

  return result;
}

unint64_t sub_10002BFF8()
{
  result = qword_1000CAA38;
  if (!qword_1000CAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAA38);
  }

  return result;
}

uint64_t sub_10002C04C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SettingsViewModel(0);
  result = sub_10008CD1C();
  *a2 = result;
  return result;
}

uint64_t sub_10002C08C(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  if (a2 > 2)
  {

    sub_10002D95C(a1, a2);
    sub_10008CDBC();
    swift_getKeyPath();
    swift_getKeyPath();
  }

  return sub_10008CDBC();
}

uint64_t sub_10002C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[48] = a4;
  v5[49] = a5;
  sub_10008DDBC();
  v5[50] = sub_10008DDAC();
  v7 = sub_10008DD8C();
  v5[51] = v7;
  v5[52] = v6;

  return _swift_task_switch(sub_10002C218, v7, v6);
}

uint64_t sub_10002C218()
{
  v1 = *(v0 + 384);
  v2 = v1[13];
  v3 = v1[14];
  sub_10000BB24(v1 + 10, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 424) = v4;
  *v4 = v0;
  v4[1] = sub_10002C348;

  return v6(v0 + 56, v2, v3);
}

uint64_t sub_10002C348()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);
  if (v0)
  {
    v5 = sub_10002CC54;
  }

  else
  {
    v5 = sub_10002C484;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002C484()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v2 == 2)
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
  }

  else
  {
    v6 = *(v0 + 72);
    *(v0 + 176) = *(v0 + 56);
    *(v0 + 192) = v6;
    *(v0 + 208) = *(v0 + 88);
    sub_10000C314(v0 + 56, v0 + 216, &unk_1000CD8B0, &qword_100090200);
    sub_10000C314(v0 + 56, v0 + 256, &unk_1000CD8B0, &qword_100090200);

    sub_10008CDBC();
    if (v2 >= 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 336) = v1;
      *(v0 + 344) = v2;
      *(v0 + 352) = v4;
      *(v0 + 360) = v3;
      *(v0 + 368) = v5;
    }

    else
    {
      sub_10000C3F8(v0 + 56, &unk_1000CD8B0, &qword_100090200);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 296) = 0u;
      *(v0 + 312) = 0u;
      *(v0 + 328) = 0;
    }
  }

  sub_10008CDBC();
  v7 = *(v0 + 384);
  v8 = v7[6];
  v9 = v7[7];
  sub_10000BB24(v7 + 3, v8);
  v12 = (*(v9 + 48) + **(v9 + 48));
  v10 = swift_task_alloc();
  *(v0 + 440) = v10;
  *v10 = v0;
  v10[1] = sub_10002C750;

  return v12(v8, v9);
}

uint64_t sub_10002C750()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);
  if (v0)
  {
    v5 = sub_10002CE60;
  }

  else
  {
    v5 = sub_10002C88C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002C88C()
{
  v1 = *(v0 + 64);
  if (v1 < 2)
  {
    sub_10000C3F8(v0 + 56, &unk_1000CD8B0, &qword_100090200);
    goto LABEL_5;
  }

  if (v1 == 2 || (v2 = *(*(v0 + 392) + 104), *(v0 + 136) = *(v0 + 56), v3 = *(v0 + 88), v4 = *(v0 + 72), v5 = *(v0 + 80), *(v0 + 144) = v1, *(v0 + 152) = v4, *(v0 + 160) = v5, *(v0 + 168) = v3, v6 = swift_task_alloc(), *(v6 + 16) = v0 + 136, LOBYTE(v2) = sub_10002E154(sub_10002E220, v6, v2), , , , (v2 & 1) != 0))
  {
LABEL_5:

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 50) = 0;

    sub_10008CDBC();
    v7 = *(v0 + 8);

    return v7();
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v9 = swift_task_alloc();
  *(v0 + 456) = v9;
  *v9 = v0;
  v9[1] = sub_10002CA84;

  return sub_100027E28(v0 + 16);
}

uint64_t sub_10002CA84()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_10002CBA4, v3, v2);
}

uint64_t sub_10002CBA4()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 50) = 0;

  sub_10008CDBC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002CC54()
{
  v13 = v0;

  v1 = *(v0 + 432);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  swift_errorRetain();
  v3 = sub_10008CCBC();
  v4 = sub_10008DE2C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    *(v0 + 376) = v1;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v7 = sub_10008DC4C();
    v9 = sub_10000A2D8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error fetching Device Management Service list: %{public}s", v5, 0xCu);
    sub_10000BC74(v6);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 49) = 0;

  sub_10008CDBC();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10002CE60()
{
  v13 = v0;

  sub_10000C3F8(v0 + 56, &unk_1000CD8B0, &qword_100090200);
  v1 = *(v0 + 448);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  swift_errorRetain();
  v3 = sub_10008CCBC();
  v4 = sub_10008DE2C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    *(v0 + 376) = v1;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v7 = sub_10008DC4C();
    v9 = sub_10000A2D8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error fetching Device Management Service list: %{public}s", v5, 0xCu);
    sub_10000BC74(v6);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 49) = 0;

  sub_10008CDBC();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10002D084@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10002D104(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

__n128 sub_10002D188@<Q0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = v5;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_10002D23C(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v11[4] = a1[4];
  v11[5] = v3;
  v11[6] = a1[6];
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v10[11] = a1[4];
  v10[12] = v6;
  v10[13] = a1[6];
  v7 = a1[1];
  v10[7] = *a1;
  v10[8] = v7;
  v8 = a1[3];
  v10[9] = a1[2];
  v10[10] = v8;
  sub_10000C314(v11, v10, &unk_1000C90E8, &qword_10008F350);

  return sub_10008CDBC();
}

uint64_t sub_10002D3B0@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a4 = v6;
  return result;
}

uint64_t sub_10002D440(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

double sub_10002D500@<D0>(uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 32) = v8;
  return result;
}

uint64_t sub_10002D5AC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  a7(v8, v9, v10, v11, v12);

  return sub_10008CDBC();
}

double sub_10002D664@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10002D6E4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_10002D80C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000E290;

  return sub_100029CB4(a1, v4, v5, v6);
}

uint64_t sub_10002D8C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000092CC;

  return sub_10002AC10(a1, v1);
}

uint64_t sub_10002D95C(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_10002D96C(a1, a2);
  }

  return a1;
}

uint64_t sub_10002D96C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10002D980(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_10002D990(a1, a2);
  }

  return a1;
}

uint64_t sub_10002D990(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10002D9A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000E290;

  return sub_100029980();
}

uint64_t sub_10002DAB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002DAF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000092CC;

  return sub_10002870C();
}

uint64_t sub_10002DC54()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10002DCAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000E290;

  return sub_100027D6C(a1, v4, v5, v6, (v1 + 5));
}

void sub_10002DE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_10002DEC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10002DF40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000E290;

  return sub_10002C180(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10002E000(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_10008E18C()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), v5 || (sub_10008E18C()))
  {
    v6 = 0xD000000000000013;
    v7 = 0x80000001000979F0;
    if (*(a1 + 32) == 1)
    {
      v8 = 0x80000001000979F0;
    }

    else
    {
      v6 = 0x444D5F44554F4C43;
      v8 = 0xE90000000000004DLL;
    }

    if (*(a1 + 32))
    {
      v9 = v6;
    }

    else
    {
      v9 = 0x52414C55474552;
    }

    if (*(a1 + 32))
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = 0xD000000000000013;
    if (*(a2 + 32) != 1)
    {
      v11 = 0x444D5F44554F4C43;
      v7 = 0xE90000000000004DLL;
    }

    if (*(a2 + 32))
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x52414C55474552;
    }

    if (*(a2 + 32))
    {
      v13 = v7;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    if (v9 == v12 && v10 == v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_10008E18C();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_10002E154(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *(v7 - 3);
      v15[0] = *(v7 - 4);
      v15[1] = v11;
      v15[2] = v9;
      v15[3] = v10;
      v16 = v8;

      v12 = a1(v15);

      if (v3)
      {
        break;
      }

      v7 += 40;
      v13 = v6-- == 0;
    }

    while (((v12 | v13) & 1) == 0);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

uint64_t sub_10002E220(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v9 = *(v2 + 32);
  return sub_10002E000(v6, v8) & 1;
}

unint64_t sub_10002E2A0()
{
  result = qword_1000CAA68;
  if (!qword_1000CAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAA68);
  }

  return result;
}

uint64_t sub_10002E2F4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002E348@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a6@<X8>)
{
  sub_100009C08(&qword_1000CAB20, &qword_100091ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100090C60;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v8;
  *(inited + 72) = kSecReturnData;
  if (!kCFBooleanTrue)
  {
    __break(1u);
  }

  type metadata accessor for CFBoolean(0);
  *(inited + 80) = kCFBooleanTrue;
  *(inited + 104) = v9;
  *(inited + 112) = kSecAttrService;
  *(inited + 144) = &type metadata for String;
  *(inited + 120) = a2;
  *(inited + 128) = a3;
  v10 = kSecClass;
  v11 = kSecClassGenericPassword;
  v12 = kSecReturnData;
  v13 = kSecAttrService;

  v14 = kCFBooleanTrue;
  sub_10002E780(inited);
  swift_setDeallocating();
  sub_100009C08(&qword_1000CAB28, &qword_100091ED8);
  swift_arrayDestroy();
  result = 0;
  sub_10002EB70(&qword_1000C8FD0, 255, type metadata accessor for CFString, &unk_10008F204);
  isa = sub_10008DB0C().super.isa;

  v16 = SecItemCopyMatching(isa, &result);

  if (sub_10000E298(v16))
  {
    swift_willThrow();
  }

  else if (result && (swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    if (a1 == &type metadata for Data)
    {
      v18 = swift_dynamicCast();
      (*(*(a4 - 8) + 56))(a6, v18 ^ 1u, 1, a4);
    }

    else
    {
      sub_10008C7CC();
      swift_allocObject();
      sub_10008C7BC();
      sub_10008C7AC();
      if (v22)
      {

        sub_10000B408(v24, v25);
      }

      else
      {
        sub_10000B408(v24, v25);

        (*(*(a4 - 8) + 56))(a6, 0, 1, a4);
      }
    }
  }

  else
  {
    (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10002E728(uint64_t a1, uint64_t a2)
{
  result = sub_10002EB70(&qword_1000CAB18, a2, type metadata accessor for SystemKeychainBackedKeyValuePasswordStorage, &unk_100091EA8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E780(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009C08(&qword_1000CAB38, &qword_100091EE8);
    v3 = sub_10008E03C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C314(v4, &v11, &qword_1000CAB28, &qword_100091ED8);
      v5 = v11;
      result = sub_10000E8D8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000C37C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002E8A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009C08(&qword_1000CAB30, &qword_100091EE0);
    v3 = sub_10008E03C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000A1A8(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10002E9BC(uint64_t a1, uint64_t a2)
{
  sub_100009C08(&qword_1000CAB20, &qword_100091ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091E50;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrService;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  v6 = kSecClass;
  v7 = kSecClassGenericPassword;
  v8 = kSecAttrService;

  sub_10002E780(inited);
  swift_setDeallocating();
  sub_100009C08(&qword_1000CAB28, &qword_100091ED8);
  swift_arrayDestroy();
  sub_10002EB70(&qword_1000C8FD0, 255, type metadata accessor for CFString, &unk_10008F204);
  isa = sub_10008DB0C().super.isa;
  v10 = SecItemDelete(isa);

  if (!sub_10000E298(v10))
  {
  }

  result = sub_10000E298(v10);
  if (result)
  {
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_10002EB70(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_10002EBB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100009C08(&qword_1000CAB20, &qword_100091ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008FD50;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v8;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
  *(inited + 104) = v8;
  *(inited + 112) = kSecAttrService;
  *(inited + 120) = a3;
  *(inited + 128) = a4;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecValueData;
  *(inited + 184) = &type metadata for Data;
  *(inited + 160) = a1;
  *(inited + 168) = a2;
  v9 = kSecClass;
  v10 = kSecClassGenericPassword;
  v11 = kSecAttrAccessible;
  v12 = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
  v13 = kSecAttrService;

  v14 = kSecValueData;
  sub_10000B3B4(a1, a2);
  sub_10002E780(inited);
  swift_setDeallocating();
  sub_100009C08(&qword_1000CAB28, &qword_100091ED8);
  swift_arrayDestroy();
  sub_10002EB70(&qword_1000C8FD0, 255, type metadata accessor for CFString, &unk_10008F204);
  isa = sub_10008DB0C().super.isa;
  v16 = SecItemAdd(isa, 0);

  if (!sub_10000E298(v16))
  {
  }

  result = sub_10000E298(v16);
  if (result)
  {
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002EDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __chkstk_darwin(a1, a2);
  (*(v11 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  if (swift_dynamicCast())
  {
    v13 = v21;
    v14 = v22;
    sub_10002EBB8(v21, v22, a2, a3);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    sub_10008C7FC();
    swift_allocObject();
    sub_10008C7EC();
    v17 = sub_10008C7DC();
    v19 = v18;

    if (v6)
    {
      return result;
    }

    sub_10002EBB8(v17, v19, a2, a3);
    v15 = v17;
    v16 = v19;
  }

  return sub_10000B408(v15, v16);
}

unint64_t sub_10002EF8C(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000CAB40, &unk_100091EF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100009C08(&unk_1000CCBD0, &unk_1000946A0);
    v8 = sub_10008E03C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000C314(v10, v6, &qword_1000CAB40, &unk_100091EF0);
      result = sub_10000EA60(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10008CB0C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10002F1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v4 = sub_100009C08(&qword_1000CAB50, &qword_100091FE8);
  v5 = v4 - 8;
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7, v10);
  v12 = &v32[-v11];
  v13 = sub_10008CB2C();
  __chkstk_darwin(v13 - 8, v14);
  v15 = sub_10008DBBC();
  __chkstk_darwin(v15 - 8, v16);
  sub_10008DB5C();
  sub_10008CB1C();
  v36 = sub_10008DC3C();
  v37 = v17;
  sub_100019E50();
  v18 = sub_10008D68C();
  v20 = v19;
  v33 = v21;
  v23 = v22;
  sub_10008DB5C();
  sub_10008CB1C();
  v36 = sub_10008DC3C();
  v37 = v24;
  v25 = swift_allocObject();
  v26 = v35;
  *(v25 + 16) = v34;
  *(v25 + 24) = v26;

  sub_10008D92C();
  v27 = sub_10008D83C();
  KeyPath = swift_getKeyPath();
  v29 = &v12[*(v5 + 44)];
  *v29 = KeyPath;
  v29[1] = v27;
  sub_10002F5C4(v12, v9);
  *a3 = v18;
  *(a3 + 8) = v20;
  LOBYTE(v5) = v33 & 1;
  *(a3 + 16) = v33 & 1;
  *(a3 + 24) = v23;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v30 = sub_100009C08(&qword_1000CAB58, &qword_100092020);
  sub_10002F5C4(v9, a3 + *(v30 + 64));
  sub_10001CC9C(v18, v20, v5);

  sub_10002F634(v12);
  sub_10002F634(v9);
  sub_10001CD48(v18, v20, v5);
}

uint64_t sub_10002F4B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_10001602C();
  }

  else
  {
    type metadata accessor for DeviceStatusViewModel(0);
    sub_10002F69C();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002F518@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_10008D2BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_100009C08(&qword_1000CAB48, &qword_100091FE0);
  return sub_10002F1A0(v4, v3, a1 + *(v5 + 44));
}

uint64_t sub_10002F57C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CAB50, &qword_100091FE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F634(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000CAB50, &qword_100091FE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002F69C()
{
  result = qword_1000C9F08;
  if (!qword_1000C9F08)
  {
    type metadata accessor for DeviceStatusViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9F08);
  }

  return result;
}

unint64_t sub_10002F6F8()
{
  result = qword_1000CAB60;
  if (!qword_1000CAB60)
  {
    sub_100007108(&qword_1000CAB68, &qword_100092028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB60);
  }

  return result;
}

uint64_t sub_10002F788@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = sub_10008D2BC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = sub_100009C08(&qword_1000CAB80, &qword_1000920C8);
  return sub_10002F7F0(a1, (a3 + *(v5 + 44)));
}

uint64_t sub_10002F7F0@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_100009C08(&qword_1000CAB88, &qword_1000920D0);
  v7 = __chkstk_darwin(v5, v6);
  v9 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &KeyPath - v12;
  __chkstk_darwin(v11, v14);
  v16 = &KeyPath - v15;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_10008CDAC();

    v48 = sub_10008D8AC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10008CDAC();

    v51 = v9;
    v47 = v5;
    if (v52 == 2)
    {
      v17 = sub_10008D81C();
    }

    else
    {
      v17 = sub_10008D87C();
    }

    v46 = v17;
    v49 = v16;

    KeyPath = swift_getKeyPath();
    v18 = sub_10002AED8();
    v20 = v19;

    v52 = v18;
    v53 = v20;
    sub_100019E50();
    v21 = sub_10008D68C();
    v23 = v22;
    v25 = v24;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10008CDAC();

    v50 = a3;
    if (v52 == 2)
    {
      sub_10008D88C();
    }

    else
    {
      sub_10008D89C();
    }

    v26 = sub_10008D65C();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_10001CD48(v21, v23, v25 & 1);

    v33 = swift_getKeyPath();
    v34 = &v13[*(v47 + 36)];
    v35 = *(sub_100009C08(&qword_1000CAB90, &qword_100092180) + 28);
    v36 = enum case for Text.TruncationMode.tail(_:);
    v37 = sub_10008D64C();
    (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
    *v34 = swift_getKeyPath();
    *v13 = v26;
    *(v13 + 1) = v28;
    v13[16] = v30 & 1;
    *(v13 + 3) = v32;
    *(v13 + 4) = v33;
    *(v13 + 5) = 1;
    v13[48] = 0;
    v38 = v49;
    sub_10002FE24(v13, v49);
    v39 = v51;
    sub_10002FE94(v38, v51);
    v40 = v50;
    v42 = KeyPath;
    v41 = v46;
    *v50 = v48;
    v40[1] = v42;
    v40[2] = v41;
    v43 = sub_100009C08(&qword_1000CAB98, &qword_1000921B8);
    sub_10002FE94(v39, v40 + *(v43 + 48));

    sub_10002FF04(v38);
    sub_10002FF04(v39);
  }

  else
  {
    type metadata accessor for SettingsViewModel(0);
    sub_100013A10();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002FC4C()
{
  if (*v0)
  {

    sub_10002B090();

    sub_100019E50();
    v3 = sub_10008D68C();
    __chkstk_darwin(v3, v1);
    sub_100009C08(&qword_1000CAB70, &qword_1000920C0);
    sub_10002FDA0();
    return sub_10008D99C();
  }

  else
  {
    type metadata accessor for SettingsViewModel(0);
    sub_100013A10();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

unint64_t sub_10002FDA0()
{
  result = qword_1000CAB78;
  if (!qword_1000CAB78)
  {
    sub_100007108(&qword_1000CAB70, &qword_1000920C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB78);
  }

  return result;
}

uint64_t sub_10002FE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CAB88, &qword_1000920D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FE94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CAB88, &qword_1000920D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FF04(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000CAB88, &qword_1000920D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002FF70()
{
  result = qword_1000CABA0;
  if (!qword_1000CABA0)
  {
    sub_100007108(&qword_1000CABA8, &unk_1000921C0);
    sub_10002FDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CABA0);
  }

  return result;
}

uint64_t sub_10003002C()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension20FakeBluetoothMonitor__bluetoothStatus;
  v2 = sub_100009C08(&qword_1000CAD48, &unk_100092240);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeBluetoothMonitor(uint64_t a1)
{
  result = qword_1000CAC80;
  if (!qword_1000CAC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100030128(uint64_t a1)
{
  sub_1000301B8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000301B8()
{
  if (!qword_1000CAC90)
  {
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CAC90);
    }
  }
}

uint64_t sub_100030208()
{
  v0 = sub_100009C08(&unk_1000CE120, &unk_100095D00);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000CAD48, &unk_100092240);
  sub_10008CD8C();
  swift_endAccess();
  sub_100030338();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_100030338()
{
  result = qword_1000CE130;
  if (!qword_1000CE130)
  {
    sub_100007108(&unk_1000CE120, &unk_100095D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CE130);
  }

  return result;
}

uint64_t sub_10003039C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000303E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003044C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v69 = sub_100009C08(&qword_1000CAD50, &qword_1000922E0);
  __chkstk_darwin(v69, v5);
  v7 = &v62 - v6;
  v71 = a1;
  v72 = a2;
  sub_100019E50();

  v8 = sub_10008D68C();
  v10 = v9;
  v12 = v11;
  sub_10008D5FC();
  v13 = sub_10008D67C();
  v15 = v14;
  v17 = v16;

  sub_10001CD48(v8, v10, v12 & 1);

  sub_10008D5DC();
  v18 = sub_10008D63C();
  v67 = v19;
  v68 = v18;
  LOBYTE(v8) = v20;
  v66 = v21;
  sub_10001CD48(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v65 = sub_10008D86C();
  v63 = swift_getKeyPath();
  v22 = v8 & 1;
  v74 = v8 & 1;
  v73 = 0;
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  v23 = swift_allocObject();
  v62 = xmmword_100091E50;
  *(v23 + 16) = xmmword_100091E50;
  LOBYTE(v8) = sub_10008D54C();
  *(v23 + 32) = v8;
  v24 = sub_10008D55C();
  *(v23 + 33) = v24;
  v25 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v8)
  {
    v25 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v24)
  {
    v25 = sub_10008D57C();
  }

  sub_10008CF0C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v75 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = v62;
  v35 = sub_10008D56C();
  *(v34 + 32) = v35;
  v36 = sub_10008D58C();
  *(v34 + 33) = v36;
  v37 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v35)
  {
    v37 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v36)
  {
    v37 = sub_10008D57C();
  }

  sub_10008CF0C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  LOBYTE(v71) = 0;
  v46 = objc_opt_self();
  v47 = [v46 systemGray6Color];
  v48 = sub_10008D80C();
  v49 = sub_10008D53C();
  v50 = &v7[*(v69 + 36)];
  v51 = enum case for RoundedCornerStyle.continuous(_:);
  v52 = sub_10008D2DC();
  (*(*(v52 - 8) + 104))(v50, v51, v52);
  *&v50[*(sub_100009C08(&qword_1000CAD60, &qword_100092350) + 36)] = 256;
  v53 = v67;
  *v7 = v68;
  *(v7 + 1) = v53;
  v7[16] = v22;
  v54 = KeyPath;
  *(v7 + 3) = v66;
  *(v7 + 4) = v54;
  *(v7 + 5) = 1;
  v7[48] = 0;
  v55 = v65;
  *(v7 + 7) = v63;
  *(v7 + 8) = v55;
  v7[72] = v25;
  *(v7 + 10) = v27;
  *(v7 + 11) = v29;
  *(v7 + 12) = v31;
  *(v7 + 13) = v33;
  v7[112] = 0;
  v7[120] = v37;
  *(v7 + 16) = v39;
  *(v7 + 17) = v41;
  *(v7 + 18) = v43;
  *(v7 + 19) = v45;
  v7[160] = 0;
  *(v7 + 21) = v48;
  v7[176] = v49;
  v56 = [v46 systemGray6Color];
  v57 = sub_10008D80C();
  v58 = v7;
  v59 = v70;
  sub_10003090C(v58, v70);
  result = sub_100009C08(&qword_1000CAD68, &qword_100092358);
  v61 = (v59 + *(result + 36));
  *v61 = v57;
  v61[1] = 0x402E000000000000;
  v61[2] = 0;
  v61[3] = 0;
  return result;
}

uint64_t sub_10003090C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CAD50, &qword_1000922E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100030980()
{
  result = qword_1000CAD70;
  if (!qword_1000CAD70)
  {
    sub_100007108(&qword_1000CAD68, &qword_100092358);
    sub_100030A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAD70);
  }

  return result;
}

unint64_t sub_100030A0C()
{
  result = qword_1000CAD78;
  if (!qword_1000CAD78)
  {
    sub_100007108(&qword_1000CAD50, &qword_1000922E0);
    sub_100030AC4();
    sub_10001121C(&qword_1000CADF0, &qword_1000CAD60, &qword_100092350, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAD78);
  }

  return result;
}

unint64_t sub_100030AC4()
{
  result = qword_1000CAD80;
  if (!qword_1000CAD80)
  {
    sub_100007108(&qword_1000CAD88, &qword_100092360);
    sub_100030BD8(&qword_1000CAD90, &qword_1000CAD98, &qword_100092368, sub_100030BA8);
    sub_10001121C(&qword_1000CADE0, &qword_1000CADE8, &unk_100094510, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAD80);
  }

  return result;
}

uint64_t sub_100030BD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007108(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100030C5C()
{
  result = qword_1000CADB0;
  if (!qword_1000CADB0)
  {
    sub_100007108(&qword_1000CADB8, &qword_100092378);
    sub_100030D14();
    sub_10001121C(&qword_1000C9FE8, &qword_1000C9FF0, &unk_100092390, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CADB0);
  }

  return result;
}

unint64_t sub_100030D14()
{
  result = qword_1000CADC0;
  if (!qword_1000CADC0)
  {
    sub_100007108(&qword_1000CADC8, &unk_100092380);
    sub_10001121C(&qword_1000CADD0, &qword_1000CADD8, &qword_1000977F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CADC0);
  }

  return result;
}

uint64_t sub_100030DCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_100030E40(char *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (v3 == 1)
  {
    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10008CDBC();
  }

  else
  {
    v5 = *(a1 + 1);
    v6 = *a1;
    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10008CDBC();
    swift_unownedRetainStrong();
    v7 = a2 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesExtensionContainerViewModel_hostAppInfo;
    *v7 = v6 & 1;
    *(v7 + 8) = v5;
    *(v7 + 16) = v3;
  }
}

uint64_t sub_100030F48()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesExtensionContainerViewModel__isHostAppInfoLoaded;
  v2 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddDevicesExtensionContainerViewModel(uint64_t a1)
{
  result = qword_1000CAE28;
  if (!qword_1000CAE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031068(uint64_t a1)
{
  sub_100031118();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100031118()
{
  if (!qword_1000CA6C8)
  {
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CA6C8);
    }
  }
}

uint64_t sub_100031168@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AddDevicesExtensionContainerViewModel(0);
  result = sub_10008CD1C();
  *a2 = result;
  return result;
}

uint64_t sub_1000311A8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v4;
  return result;
}

uint64_t sub_10003122C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

char *sub_1000312A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v14 - v9;
  *(v3 + 4) = &_swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesExtensionContainerViewModel__isHostAppInfoLoaded;
  LOBYTE(v15) = 0;
  sub_10008CD7C();
  (*(v7 + 32))(&v3[v11], v10, v6);
  v12 = &v3[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesExtensionContainerViewModel_hostAppInfo];
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  type metadata accessor for ConcreteHostAppCommunicationProvider(0);
  swift_unknownObjectRetain();
  v15 = sub_10001346C();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v3;
  sub_100009C08(&qword_1000CAF30, &unk_100092490);
  sub_10001121C(&qword_1000CAF38, &qword_1000CAF30, &unk_100092490, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10008CE1C();

  swift_beginAccess();
  sub_100009C08(&qword_1000CAF40, &unk_100095840);
  sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840, &protocol conformance descriptor for [A]);
  sub_10008CCEC();
  swift_endAccess();

  return v3;
}

uint64_t sub_100031540()
{
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031580()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_1000315F4()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension18FakeNetworkMonitor__networkStatus;
  v2 = sub_100009C08(&qword_1000CB058, &qword_1000924D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeNetworkMonitor(uint64_t a1)
{
  result = qword_1000CAF78;
  if (!qword_1000CAF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000316F0(uint64_t a1)
{
  sub_100031780();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100031780()
{
  if (!qword_1000CAF88)
  {
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CAF88);
    }
  }
}

uint64_t sub_1000317D0()
{
  v0 = sub_100009C08(&qword_1000CB050, &unk_100093FD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000CB058, &qword_1000924D0);
  sub_10008CD8C();
  swift_endAccess();
  sub_100031B40();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100031904@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v4;
  return result;
}

uint64_t sub_100031984(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

void sub_1000319F8()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  oslog = sub_10008CCBC();
  v1 = sub_10008DE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10000A2D8(0xD00000000000001CLL, 0x80000001000996C0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000BC74(v3);
  }
}

unint64_t sub_100031B40()
{
  result = qword_1000CB060;
  if (!qword_1000CB060)
  {
    sub_100007108(&qword_1000CB050, &unk_100093FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB060);
  }

  return result;
}

uint64_t sub_100031BBC(void *a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CB068, &qword_1000925A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - v7;
  sub_10000BB24(a1, a1[3]);
  sub_100031FA4();
  sub_10008E24C();
  v10[1] = a2;
  sub_100009C08(&qword_1000CB078, &qword_1000925B0);
  sub_100032200(&qword_1000CB080, sub_100031FF8, &protocol conformance descriptor for <A> [A]);
  sub_10008E14C();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int sub_100031D48()
{
  sub_10008E1FC();
  sub_10008DC8C();
  return sub_10008E22C();
}

Swift::Int sub_100031DB4()
{
  sub_10008E1FC();
  sub_10008DC8C();
  return sub_10008E22C();
}

uint64_t sub_100031E04@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000BECA8;
  v7._object = v3;
  v5 = sub_10008E06C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100031E8C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000BECE0;
  v8._object = a2;
  v6 = sub_10008E06C(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100031EE4(uint64_t a1)
{
  v2 = sub_100031FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100031F20(uint64_t a1)
{
  v2 = sub_100031FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100031F5C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003204C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100031FA4()
{
  result = qword_1000CB070;
  if (!qword_1000CB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB070);
  }

  return result;
}

unint64_t sub_100031FF8()
{
  result = qword_1000CB088;
  if (!qword_1000CB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB088);
  }

  return result;
}

void *sub_10003204C(void *a1)
{
  v3 = sub_100009C08(&qword_1000CB090, &qword_1000925B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v10 - v6;
  v8 = sub_10000BB24(a1, a1[3]);
  sub_100031FA4();
  sub_10008E23C();
  if (v1)
  {
    sub_10000BC74(a1);
  }

  else
  {
    sub_100009C08(&qword_1000CB078, &qword_1000925B0);
    sub_100032200(&qword_1000CB098, sub_100032278, &protocol conformance descriptor for <A> [A]);
    sub_10008E0DC();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_10000BC74(a1);
  }

  return v8;
}

uint64_t sub_100032200(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007108(&qword_1000CB078, &qword_1000925B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100032278()
{
  result = qword_1000CB0A0;
  if (!qword_1000CB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB0A0);
  }

  return result;
}

unint64_t sub_1000322E0()
{
  result = qword_1000CB0A8;
  if (!qword_1000CB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB0A8);
  }

  return result;
}

unint64_t sub_100032338()
{
  result = qword_1000CB0B0;
  if (!qword_1000CB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB0B0);
  }

  return result;
}

unint64_t sub_100032390()
{
  result = qword_1000CB0B8;
  if (!qword_1000CB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB0B8);
  }

  return result;
}

uint64_t sub_1000323F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_10008CABC();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100032514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Device(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10008CABC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for EnrolledDeviceRecord(uint64_t a1)
{
  result = qword_1000CB118;
  if (!qword_1000CB118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032668(uint64_t a1)
{
  result = type metadata accessor for Device(319);
  if (v2 <= 0x3F)
  {
    result = sub_10008CABC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100032704(void *a1)
{
  v3 = v1;
  v5 = sub_100009C08(&qword_1000CB188, &qword_100092880);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12[-v8];
  sub_10000BB24(a1, a1[3]);
  sub_100033370();
  sub_10008E24C();
  v12[15] = 0;
  type metadata accessor for Device(0);
  sub_1000334E0(&qword_1000CB190, type metadata accessor for Device, &unk_10008F828);
  sub_10008E14C();
  if (!v2)
  {
    v10 = type metadata accessor for EnrolledDeviceRecord(0);
    v12[14] = 1;
    sub_10008CABC();
    sub_1000334E0(&qword_1000CB198, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10008E14C();
    v12[13] = *(v3 + *(v10 + 24));
    v12[12] = 2;
    sub_100033528();
    sub_10008E14C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10003294C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_10008CABC();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Device(0);
  __chkstk_darwin(v7, v8);
  v31 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100009C08(&qword_1000CB160, &qword_100092878);
  v29 = *(v32 - 8);
  __chkstk_darwin(v32, v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for EnrolledDeviceRecord(0);
  __chkstk_darwin(v13, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v33 = a1;
  sub_10000BB24(a1, v17);
  sub_100033370();
  sub_10008E23C();
  if (v2)
  {
    return sub_10000BC74(v33);
  }

  v26 = v13;
  v18 = v16;
  v20 = v29;
  v19 = v30;
  v37 = 0;
  sub_1000334E0(&qword_1000CB170, type metadata accessor for Device, &unk_10008F850);
  sub_10008E0DC();
  v21 = v31;
  v31 = v18;
  sub_1000333C4(v21, v18);
  v36 = 1;
  sub_1000334E0(&qword_1000CB178, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = v6;
  sub_10008E0DC();
  v23 = v26;
  (*(v28 + 32))(&v31[*(v26 + 20)], v22, v19);
  v34 = 2;
  sub_100033428();
  sub_10008E0DC();
  (*(v20 + 8))(v12, v32);
  v24 = v31;
  v31[*(v23 + 24)] = v35;
  sub_10003347C(v24, v27);
  sub_10000BC74(v33);
  return sub_1000207B4(v24, type metadata accessor for EnrolledDeviceRecord);
}

uint64_t sub_100032DDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x64656C696166;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64656C6C6F726E65;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64656C6C6F726E65;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10008E18C();
  }

  return v11 & 1;
}

Swift::Int sub_100032ED8()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_100032F78(uint64_t a1)
{
  sub_10008DC8C();
}

Swift::Int sub_100033004()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

unint64_t sub_1000330A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003357C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000330D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64656C696166;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656C6C6F726E65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1000331E0()
{
  result = qword_1000CB158;
  if (!qword_1000CB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB158);
  }

  return result;
}

uint64_t sub_100033234()
{
  v1 = 0x64656C6C6F726E65;
  if (*v0 != 1)
  {
    v1 = 0x656D6C6C6F726E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656369766564;
  }
}

uint64_t sub_1000332A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100033734(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000332C8(uint64_t a1)
{
  v2 = sub_100033370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033304(uint64_t a1)
{
  v2 = sub_100033370();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100033370()
{
  result = qword_1000CB168;
  if (!qword_1000CB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB168);
  }

  return result;
}

uint64_t sub_1000333C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100033428()
{
  result = qword_1000CB180;
  if (!qword_1000CB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB180);
  }

  return result;
}

uint64_t sub_10003347C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrolledDeviceRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000334E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100033528()
{
  result = qword_1000CB1A0;
  if (!qword_1000CB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB1A0);
  }

  return result;
}

unint64_t sub_10003357C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BEC40;
  v6._object = a2;
  v4 = sub_10008E06C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000335C8()
{
  result = qword_1000CB1A8;
  if (!qword_1000CB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB1A8);
  }

  return result;
}

unint64_t sub_100033630()
{
  result = qword_1000CB1B0;
  if (!qword_1000CB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB1B0);
  }

  return result;
}

unint64_t sub_100033688()
{
  result = qword_1000CB1B8;
  if (!qword_1000CB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB1B8);
  }

  return result;
}

unint64_t sub_1000336E0()
{
  result = qword_1000CB1C0;
  if (!qword_1000CB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB1C0);
  }

  return result;
}

uint64_t sub_100033734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (sub_10008E18C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C6C6F726E65 && a2 == 0xEC00000065746144 || (sub_10008E18C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6C6C6F726E65 && a2 == 0xEF6574617453746ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_10008E18C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100033854()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_1000338C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000092CC;

  return sub_100033958();
}

uint64_t sub_100033978()
{
  v1 = v0[6];
  v0[7] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[8] = v2;
  v0[9] = swift_getObjectType();
  v0[10] = *(v2 + 24);
  v0[11] = (v2 + 24) & 0xFFFFFFFFFFFFLL | 0xA2EC000000000000;
  v4 = sub_10008DD8C();

  return _swift_task_switch(sub_100033A18, v4, v3);
}

uint64_t sub_100033A18()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v4 = sub_1000347F0();
  v5 = sub_1000348BC();
  v1(&type metadata for NetworkInfo, 0x7774654E69666977, 0xEF6F666E496B726FLL, &type metadata for NetworkInfo, v4, v5, v2, v3);
  v0[12] = 0;
  v6 = v0[6];

  return _swift_task_switch(sub_100033B08, v6, 0);
}

uint64_t sub_100033B08()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[4] = v1;
  v0[5] = v2;

  sub_10008CDBC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100033BDC()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37KeyValueStoreBackedNetworkInfoStorage__networkInfo;
  v2 = sub_100009C08(&qword_1000CB2E0, &qword_100092A78);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for KeyValueStoreBackedNetworkInfoStorage(uint64_t a1)
{
  result = qword_1000CB1F8;
  if (!qword_1000CB1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}