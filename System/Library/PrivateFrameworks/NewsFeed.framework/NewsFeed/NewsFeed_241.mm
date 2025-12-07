unint64_t sub_1D70F3D34(uint64_t a1)
{
  result = sub_1D70F3D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70F3D5C()
{
  result = qword_1EC89AB08;
  if (!qword_1EC89AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB08);
  }

  return result;
}

unint64_t sub_1D70F3DB0(void *a1)
{
  a1[1] = sub_1D66C99C0();
  a1[2] = sub_1D66C9A14();
  result = sub_1D70F3DE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70F3DE8()
{
  result = qword_1EC89AB10;
  if (!qword_1EC89AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB10);
  }

  return result;
}

uint64_t sub_1D70F3E48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 13) & 0xFFFFFFF8 | (*(a1 + 48) >> 11) & 7;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D70F3E9C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 106) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (-a2 << 13) & 0x1FFFFFFF0000 | ((-a2 & 7) << 11);
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D70F3F30(uint64_t result, char a2)
{
  v2 = *(result + 104) & 0xC7FF | ((a2 & 3) << 12);
  *(result + 48) &= 0xC7FFuLL;
  *(result + 104) = v2;
  return result;
}

uint64_t sub_1D70F3F68(uint64_t a1)
{
  sub_1D70F3FC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D70F3FC4()
{
  if (!qword_1EC88A020)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A020);
    }
  }
}

uint64_t FCArticleRole.selector.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1 == 1)
      {
        return 0x7472612D656C6F72;
      }

      return 0x6B6E752D656C6F72;
    }

    if (a1 != 2)
    {
      v1 = 10;
      return v1 | 0xD000000000000010;
    }

    return 0xD000000000000010;
  }

  else if (a1 <= 5)
  {
    if (a1 == 4)
    {
      return 0xD000000000000020;
    }

    else
    {
      return 0x6F70732D656C6F72;
    }
  }

  else
  {
    switch(a1)
    {
      case 6:
        return 0x6165662D656C6F72;
      case 7:
        return 0xD000000000000011;
      case 8:
        v1 = 9;
        return v1 | 0xD000000000000010;
      default:
        return 0x6B6E752D656C6F72;
    }
  }
}

Swift::Bool __swiftcall FCArticleRole.allowsEndOfArticle(useMoreFromIssueEOA:)(Swift::Bool useMoreFromIssueEOA)
{
  v2 = ((1 << v1) & 0x11C) == 0 && useMoreFromIssueEOA;
  v3 = ((1 << v1) & 0x63) != 0 || v2;
  if (v1 <= 8)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1D70F4230(void *a1)
{
  v3 = v1;
  sub_1D5C30338(0, &qword_1EC89AB68, sub_1D70F6A10, &_s10RepeatDataV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F6A10();
  sub_1D7264B5C();
  LOBYTE(v12[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v12[0] = *(v3 + 16);
    *(v12 + 14) = *(v3 + 30);
    v13 = 1;
    sub_1D70F6AB8();
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D70F43E8(uint64_t a1)
{
  sub_1D72621EC();
  if (*(v1 + 45) == 1)
  {
    return sub_1D7264A2C();
  }

  v3 = *(v1 + 44);
  v4 = *(v1 + 40);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 16);
  sub_1D7264A2C();
  if ((v7 & 0x100000000) != 0)
  {
    if (v7)
    {
      MEMORY[0x1DA6FC0B0](1);
      if ((v6 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](0);
      if ((v6 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_5:
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
    v8 = v4 | (v3 << 32);
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    if (v5)
    {
      MEMORY[0x1DA6FC0B0](1);
      if ((v8 & 0x100000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](0);
      if ((v8 & 0x100000000) == 0)
      {
        goto LABEL_7;
      }
    }

    return MEMORY[0x1DA6FC0B0](v4 != 0);
  }

  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  if ((v6 & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_10:
  MEMORY[0x1DA6FC0B0](v6 != 0);
  v8 = v4 | (v3 << 32);
  if ((v5 & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  if ((v8 & 0x100000000) == 0)
  {
LABEL_7:
    MEMORY[0x1DA6FC0B0](2);
    return sub_1D7264A3C();
  }

  return MEMORY[0x1DA6FC0B0](v4 != 0);
}

uint64_t sub_1D70F451C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 44);
  v5 = *(v0 + 40);
  v6 = *(v0 + 45);
  sub_1D7264A0C();
  sub_1D72621EC();
  if (v6 != 1)
  {
    sub_1D7264A2C();
    if ((v2 & 0x100000000) != 0)
    {
      MEMORY[0x1DA6FC0B0](v2 != 0);
      if ((v1 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((v1 & 0x100000000) == 0)
      {
LABEL_5:
        MEMORY[0x1DA6FC0B0](2);
        sub_1D7264A3C();
        goto LABEL_8;
      }
    }

    MEMORY[0x1DA6FC0B0](v1 != 0);
LABEL_8:
    v7 = v5 | (v4 << 32);
    if ((v3 & 0x100000000) != 0)
    {
      MEMORY[0x1DA6FC0B0](v3 != 0);
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((v7 & 0x100000000) == 0)
      {
LABEL_10:
        MEMORY[0x1DA6FC0B0](2);
        sub_1D7264A3C();
        return sub_1D7264A5C();
      }
    }

    MEMORY[0x1DA6FC0B0](v5 != 0);
    return sub_1D7264A5C();
  }

  sub_1D7264A2C();
  return sub_1D7264A5C();
}

uint64_t sub_1D70F4694(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v20 = a3;
  sub_1D5C30338(0, &qword_1EC89ABC0, sub_1D70F708C, &_s17RepeatDataBindingV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F708C();
  sub_1D7264B5C();
  v21 = a2;
  v22 = BYTE4(a2) & 1;
  v23 = 0;
  sub_1D70F7134();
  sub_1D726443C();
  if (!v5)
  {
    v15 = v18;
    v14 = v19;
    v21 = v20;
    v22 = BYTE4(v20) & 1;
    v23 = 1;
    sub_1D726443C();
    v21 = v15;
    v22 = BYTE4(v15) & 1;
    v23 = 2;
    sub_1D726443C();
    v21 = v14;
    v22 = BYTE4(v14) & 1;
    v23 = 3;
    sub_1D726443C();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D70F48DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      MEMORY[0x1DA6FC0B0](1);
      if ((a3 & 0x100000000) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](0);
      if ((a3 & 0x100000000) != 0)
      {
        goto LABEL_9;
      }
    }

LABEL_6:
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
    if ((a4 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  if ((a3 & 0x100000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (a3)
  {
    MEMORY[0x1DA6FC0B0](1);
    if ((a4 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](0);
    if ((a4 & 0x100000000) == 0)
    {
LABEL_11:
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((a5 & 0x100000000) != 0)
      {
        return MEMORY[0x1DA6FC0B0](a5 != 0);
      }

LABEL_16:
      MEMORY[0x1DA6FC0B0](2);
      return sub_1D7264A3C();
    }
  }

LABEL_14:
  if (a4)
  {
    MEMORY[0x1DA6FC0B0](1);
    if ((a5 & 0x100000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](0);
    if ((a5 & 0x100000000) == 0)
    {
      goto LABEL_16;
    }
  }

  return MEMORY[0x1DA6FC0B0](a5 != 0);
}

uint64_t sub_1D70F49E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7264A0C();
  if ((a1 & 0x100000000) != 0)
  {
    MEMORY[0x1DA6FC0B0](a1 != 0);
    if ((a2 & 0x100000000) == 0)
    {
LABEL_3:
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((a3 & 0x100000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      MEMORY[0x1DA6FC0B0](a3 != 0);
      if ((a4 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      MEMORY[0x1DA6FC0B0](a4 != 0);
      return sub_1D7264A5C();
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x1DA6FC0B0](a2 != 0);
  if ((a3 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  if ((a4 & 0x100000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  return sub_1D7264A5C();
}

uint64_t sub_1D70F4B18()
{
  if (*v0)
  {
    return 0x676E69646E6962;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1D70F4B58(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x676E69646E6962 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D70F4C3C(uint64_t a1)
{
  v2 = sub_1D70F6A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70F4C78(uint64_t a1)
{
  v2 = sub_1D70F6A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D70F4CB4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D70F63EC(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 14);
    *(a1 + 30) = *(v7 + 14);
  }

  return result;
}

BOOL sub_1D70F4D10(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 14) = *(a1 + 30);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 14) = *(a2 + 30);
  return sub_1D70F5CC4(&v5, &v7);
}

uint64_t sub_1D70F4D64(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 44);
  v6 = *(v1 + 40);
  v7 = *(v1 + 45);
  sub_1D7264A0C();
  sub_1D72621EC();
  if (v7 != 1)
  {
    sub_1D7264A2C();
    if ((v3 & 0x100000000) != 0)
    {
      MEMORY[0x1DA6FC0B0](v3 != 0);
      if ((v2 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((v2 & 0x100000000) == 0)
      {
LABEL_5:
        MEMORY[0x1DA6FC0B0](2);
        sub_1D7264A3C();
        goto LABEL_8;
      }
    }

    MEMORY[0x1DA6FC0B0](v2 != 0);
LABEL_8:
    v8 = v6 | (v5 << 32);
    if ((v4 & 0x100000000) != 0)
    {
      MEMORY[0x1DA6FC0B0](v4 != 0);
      if ((v8 & 0x100000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((v8 & 0x100000000) == 0)
      {
LABEL_10:
        MEMORY[0x1DA6FC0B0](2);
        sub_1D7264A3C();
        return sub_1D7264A5C();
      }
    }

    MEMORY[0x1DA6FC0B0](v6 != 0);
    return sub_1D7264A5C();
  }

  sub_1D7264A2C();
  return sub_1D7264A5C();
}

uint64_t sub_1D70F4ED8()
{
  v1 = 7235949;
  v2 = 0x6F69746172657469;
  if (*v0 != 2)
  {
    v2 = 0x61726574496E696DLL;
  }

  if (*v0)
  {
    v1 = 7889261;
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

uint64_t sub_1D70F4F50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D70F72A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D70F4F78(uint64_t a1)
{
  v2 = sub_1D70F708C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70F4FB4(uint64_t a1)
{
  v2 = sub_1D70F708C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D70F4FF0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D70F6DB0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
    *(a1 + 8) = v5;
    *(a1 + 12) = BYTE4(v5) & 1;
    *(a1 + 16) = v6;
    *(a1 + 20) = BYTE4(v6) & 1;
    *(a1 + 24) = v7;
    *(a1 + 28) = BYTE4(v7) & 1;
  }

  return result;
}

uint64_t sub_1D70F528C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = v1[2];
  v5 = *(v1 + 12);
  v6 = v1[4];
  v7 = *(v1 + 20);
  v8 = v1[6];
  v9 = *(v1 + 28);
  sub_1D7264A0C();
  if (v3 == 1)
  {
    MEMORY[0x1DA6FC0B0](v2 != 0);
    if (!v5)
    {
LABEL_6:
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  MEMORY[0x1DA6FC0B0](v4 != 0);
  if (v7)
  {
LABEL_7:
    MEMORY[0x1DA6FC0B0](v6 != 0);
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_9:
  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  if (!v9)
  {
LABEL_12:
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
    return sub_1D7264A5C();
  }

LABEL_10:
  MEMORY[0x1DA6FC0B0](v8 != 0);
  return sub_1D7264A5C();
}

uint64_t sub_1D70F53E0(void *a1, uint64_t a2)
{
  sub_1D5C30338(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if ((a2 & 0x100000000) != 0)
  {
    LOBYTE(v18) = a2 == 0;
    sub_1D70F6978();
    v17 = 0uLL;
    goto LABEL_5;
  }

  LOBYTE(v18) = 2;
  sub_1D70F6978();
  v17 = 0uLL;
  sub_1D726443C();
  if (!v2)
  {
    v18 = a2;
    v17 = xmmword_1D7279980;
    sub_1D70F6920(0, v11, v12, v13);
    sub_1D70F69CC(&qword_1EC89AB48, &protocol conformance descriptor for FormatValue<A>, v14, v15);
LABEL_5:
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D70F5608(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4D7465536D657469;
  v4 = 0xEA00000000006E69;
  if (v2 != 1)
  {
    v3 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7889261;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x4D7465536D657469;
  v8 = 0xEA00000000006E69;
  if (*a2 != 1)
  {
    v7 = 0x65756C6176;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7889261;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D70F5704()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D70F57A0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D70F5828(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D70F58C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D70F5EF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D70F58F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEA00000000006E69;
  v5 = 0x4D7465536D657469;
  if (v2 != 1)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7889261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D70F59F8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D70F6640(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_1D70F5A60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D70F5A9C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D7264A0C();
  if (v2 == 1)
  {
    MEMORY[0x1DA6FC0B0](v1 != 0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D70F5B18()
{
  if (*(v0 + 4) == 1)
  {
    return MEMORY[0x1DA6FC0B0](*v0 != 0);
  }

  MEMORY[0x1DA6FC0B0](2);
  return sub_1D7264A3C();
}

uint64_t sub_1D70F5B74(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_1D7264A0C();
  if (v3 == 1)
  {
    MEMORY[0x1DA6FC0B0](v2 != 0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D70F5BEC()
{
  if (*(v0 + 4) == 1)
  {
    if (*v0)
    {
      return 7889261;
    }

    else
    {
      return 0x4D7465536D657469;
    }
  }

  else
  {
    sub_1D70F5C70();
    return sub_1D7263ADC();
  }
}

unint64_t sub_1D70F5C70()
{
  result = qword_1EDF01CD8;
  if (!qword_1EDF01CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF01CD8);
  }

  return result;
}

BOOL sub_1D70F5CC4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_1D72646CC(), result = 0, (v5 & 1) != 0))
  {
    if (*(a1 + 45))
    {
      return (*(a2 + 45) & 1) != 0;
    }

    if (*(a2 + 45))
    {
      return 0;
    }

    v8 = a1[2];
    v7 = a1[3];
    v9 = a1[4];
    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    v12 = *(a2 + 32);
    if ((v8 & 0x100000000) != 0)
    {
      if (v8)
      {
        if ((v11 & 0x100000000) == 0 || !v11)
        {
          return 0;
        }
      }

      else if ((v11 & 0x100000000) == 0 || v11)
      {
        return 0;
      }
    }

    else if ((v11 & 0x100000000) != 0 || v8 != v11)
    {
      return 0;
    }

    if ((v7 & 0x100000000) != 0)
    {
      if (v7)
      {
        if ((v10 & 0x100000000) == 0 || !v10)
        {
          return 0;
        }
      }

      else if ((v10 & 0x100000000) == 0 || v10)
      {
        return 0;
      }
    }

    else if ((v10 & 0x100000000) != 0 || v7 != v10)
    {
      return 0;
    }

    if ((v9 & 0x100000000) != 0)
    {
      if (v9)
      {
        if ((v12 & 0x100000000) == 0 || !v12)
        {
          return 0;
        }
      }

      else if ((v12 & 0x100000000) == 0 || v12)
      {
        return 0;
      }
    }

    else if ((v12 & 0x100000000) != 0 || v9 != v12)
    {
      return 0;
    }

    v13 = *(a2 + 40) | (*(a2 + 44) << 32);
    if (((*(a1 + 10) | (*(a1 + 44) << 32)) & 0x100000000) != 0)
    {
      if (*(a1 + 10))
      {
        if ((v13 & 0x100000000) != 0)
        {
          return *(a2 + 40) != 0;
        }
      }

      else if ((v13 & 0x100000000) != 0)
      {
        return *(a2 + 40) == 0;
      }
    }

    else if ((v13 & 0x100000000) == 0 && *(a1 + 10) == *(a2 + 40))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL sub_1D70F5E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if ((a1 & 0x100000000) != 0)
  {
    result = 0;
    if (v8)
    {
      if ((a5 & 0x100000000) == 0 || !a5)
      {
        return result;
      }
    }

    else if ((a5 & 0x100000000) == 0 || a5)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((a5 & 0x100000000) != 0 || v8 != a5)
    {
      return result;
    }
  }

  result = 0;
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      if ((a6 & 0x100000000) == 0 || !a6)
      {
        return result;
      }
    }

    else if ((a6 & 0x100000000) == 0 || a6)
    {
      return result;
    }
  }

  else if ((a6 & 0x100000000) != 0 || a2 != a6)
  {
    return result;
  }

  result = 0;
  if ((a3 & 0x100000000) != 0)
  {
    if (a3)
    {
      if ((a7 & 0x100000000) == 0 || !a7)
      {
        return result;
      }
    }

    else if ((a7 & 0x100000000) == 0 || a7)
    {
      return result;
    }
  }

  else if ((a7 & 0x100000000) != 0 || a3 != a7)
  {
    return result;
  }

  if ((a4 & 0x100000000) != 0)
  {
    if (a4)
    {
      if ((a8 & 0x100000000) != 0)
      {
        return a8 != 0;
      }
    }

    else if ((a8 & 0x100000000) != 0)
    {
      return a8 == 0;
    }
  }

  else if ((a8 & 0x100000000) == 0 && a4 == a8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D70F5EF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_1D70F5F40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for FormatVariableCollection();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for FormatOptionCollection();
  swift_allocObject();

  v7 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v6);
  type metadata accessor for FormatContextLayoutOptions();
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(inited + 24) = _Q0;
  *(inited + 40) = v7;
  *(inited + 48) = 0;
  *(inited + 56) = MEMORY[0x1E69E7CD0];
  v15 = *(a1 + 48);
  if (!v15)
  {
    v17 = 0;
    v18 = *(a1 + 56);
    if (!v18)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v16 = sub_1D5E03020(inited, v15);
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = *(a1 + 56);
  if (!v18)
  {
LABEL_5:
    v19 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v20 = sub_1D5E03020(v9, v18);
  if (v20 < 0xFFFFFFFF80000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v20;
LABEL_10:
  v21 = *(a1 + 40);
  if (v21 != 1)
  {
    swift_setDeallocating();

    v22 = 1;
LABEL_16:
    v24 = v18 == 0;
    v25 = *(a1 + 40);

    *a2 = v5;
    *(a2 + 8) = v4;
    *(a2 + 16) = v17;
    *(a2 + 24) = v19 | (v24 << 32);
    *(a2 + 32) = v22 | ((v21 ^ 1u) << 32);
    *(a2 + 40) = 0;
    *(a2 + 44) = v25;
    *(a2 + 45) = 0;
    return;
  }

  v23 = sub_1D5E03020(v9, *(a1 + 32));
  swift_setDeallocating();

  if (v23 < 0xFFFFFFFF80000000)
  {
    goto LABEL_21;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v22 = v23;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

uint64_t _s15RepeatDataValueOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15RepeatDataValueOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1D70F6248(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D70F6264(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1D70F6294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 46))
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

uint64_t sub_1D70F62DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 46) = 1;
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

    *(result + 46) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D70F6340()
{
  result = qword_1EC89AB18;
  if (!qword_1EC89AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB18);
  }

  return result;
}

unint64_t sub_1D70F6398()
{
  result = qword_1EC89AB20;
  if (!qword_1EC89AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB20);
  }

  return result;
}

void sub_1D70F63EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1D5C30338(0, &qword_1EC89AB50, sub_1D70F6A10, &_s10RepeatDataV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F6A10();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v20;
    LOBYTE(v21) = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v14 = v11;
    v26 = 1;
    sub_1D70F6A64();
    sub_1D726427C();
    (*(v6 + 8))(v9, v5);
    v19 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *v10 = v14;
    *(v10 + 8) = v13;
    *(v10 + 16) = v19;
    *(v10 + 32) = v15;
    *(v10 + 44) = v17;
    *(v10 + 40) = v16;
    *(v10 + 45) = v18;
  }
}

unint64_t sub_1D70F6640(void *a1)
{
  sub_1D5C30338(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D70F68CC();
  v17 = 0uLL;
  sub_1D726431C();
  if (v18)
  {
    if (v18 != 1)
    {
      sub_1D70F6920(0, v9, v10, v11);
      v17 = xmmword_1D7279980;
      sub_1D70F69CC(&qword_1EC89AB38, &protocol conformance descriptor for FormatValue<A>, v15, v16);
      sub_1D726431C();
      (*(v5 + 8))(v8, v4);
      v14 = 0;
      v13 = v18;
      goto LABEL_9;
    }

    (*(v5 + 8))(v8, v4);
    v13 = 0;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v13 = 1;
  }

  v14 = 1;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v17) = v14;
  return v13 | (v14 << 32);
}

unint64_t sub_1D70F68CC()
{
  result = qword_1EC89AB28;
  if (!qword_1EC89AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB28);
  }

  return result;
}

void sub_1D70F6920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EC89AB30)
  {
    v4 = type metadata accessor for FormatValue(0, MEMORY[0x1E69E72F0], &protocol witness table for Int32, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC89AB30);
    }
  }
}

unint64_t sub_1D70F6978()
{
  result = qword_1EC89AB40;
  if (!qword_1EC89AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB40);
  }

  return result;
}

uint64_t sub_1D70F69CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D70F6920(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D70F6A10()
{
  result = qword_1EC89AB58;
  if (!qword_1EC89AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB58);
  }

  return result;
}

unint64_t sub_1D70F6A64()
{
  result = qword_1EC89AB60;
  if (!qword_1EC89AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB60);
  }

  return result;
}

unint64_t sub_1D70F6AB8()
{
  result = qword_1EC89AB70;
  if (!qword_1EC89AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB70);
  }

  return result;
}

__n128 __swift_memcpy29_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1D70F6B40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D70F6B60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
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

  *(result + 29) = v3;
  return result;
}

unint64_t sub_1D70F6BA8()
{
  result = qword_1EC89AB78;
  if (!qword_1EC89AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB78);
  }

  return result;
}

unint64_t sub_1D70F6C00()
{
  result = qword_1EC89AB80;
  if (!qword_1EC89AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB80);
  }

  return result;
}

unint64_t sub_1D70F6C58()
{
  result = qword_1EC89AB88;
  if (!qword_1EC89AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB88);
  }

  return result;
}

unint64_t sub_1D70F6CB0()
{
  result = qword_1EC89AB90;
  if (!qword_1EC89AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB90);
  }

  return result;
}

unint64_t sub_1D70F6D08()
{
  result = qword_1EC89AB98;
  if (!qword_1EC89AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB98);
  }

  return result;
}

unint64_t sub_1D70F6D5C()
{
  result = qword_1EC89ABA0;
  if (!qword_1EC89ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABA0);
  }

  return result;
}

unint64_t sub_1D70F6DB0(void *a1)
{
  sub_1D5C30338(0, &qword_1EC89ABA8, sub_1D70F708C, &_s17RepeatDataBindingV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F708C();
  sub_1D7264B0C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_1D70F70E0();
  sub_1D726431C();
  v9 = v22;
  v10 = v23;
  v21 = 1;
  sub_1D726431C();
  v17 = v10;
  v18 = v9;
  v11 = v22;
  v12 = v23;
  v21 = 2;
  sub_1D726431C();
  HIDWORD(v15) = v12;
  v16 = v11;
  LOBYTE(v12) = v23;
  v21 = 3;
  sub_1D726431C();
  (*(v5 + 8))(v8, v4);
  v13 = v23;
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v22) = v17;
  v21 = BYTE4(v15);
  v20 = v12;
  v19 = v13;
  return v18 | (v17 << 32);
}

unint64_t sub_1D70F708C()
{
  result = qword_1EC89ABB0;
  if (!qword_1EC89ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABB0);
  }

  return result;
}

unint64_t sub_1D70F70E0()
{
  result = qword_1EC89ABB8;
  if (!qword_1EC89ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABB8);
  }

  return result;
}

unint64_t sub_1D70F7134()
{
  result = qword_1EC89ABC8;
  if (!qword_1EC89ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABC8);
  }

  return result;
}

unint64_t sub_1D70F719C()
{
  result = qword_1EC89ABD0;
  if (!qword_1EC89ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABD0);
  }

  return result;
}

unint64_t sub_1D70F71F4()
{
  result = qword_1EC89ABD8;
  if (!qword_1EC89ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABD8);
  }

  return result;
}

unint64_t sub_1D70F724C()
{
  result = qword_1EC89ABE0;
  if (!qword_1EC89ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABE0);
  }

  return result;
}

uint64_t sub_1D70F72A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746172657469 && a2 == 0xE90000000000006ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61726574496E696DLL && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

double sub_1D70F7410(void *a1, uint64_t a2, uint64_t a3)
{
  v250 = a3;
  v251 = a2;
  v4 = MEMORY[0x1E69E6720];
  sub_1D70F99B4(0, &qword_1EC89ABF0, MEMORY[0x1E69D7970], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v262 = &v246 - v7;
  v271 = sub_1D725D52C();
  v261 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271, v8);
  v266 = &v246 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_1D725D7FC();
  v246 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248, v10);
  v247 = &v246 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70F99B4(0, &unk_1EDF3B6E0, MEMORY[0x1E69D77E8], v4);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v252 = &v246 - v14;
  sub_1D70F99B4(0, &unk_1EC88DF00, MEMORY[0x1E69D8750], v4);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v249 = &v246 - v17;
  v18 = type metadata accessor for WebEmbedDataSourceJson(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v300 = &v246 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v299 = &v246 - v23;
  v306 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
  MEMORY[0x1EEE9AC00](v306, v24);
  v301 = (&v246 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26, v27);
  v290 = (&v246 - v28);
  v305 = sub_1D725ACFC();
  v29 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305, v30);
  v308 = &v246 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v289 = &v246 - v34;
  v304 = type metadata accessor for WebEmbedDatastoreProperty(0);
  v288 = *(v304 - 8);
  MEMORY[0x1EEE9AC00](v304, v35);
  v307 = &v246 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v321 = (&v246 - v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v296 = &v246 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v297 = &v246 - v45;
  sub_1D70F99B4(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v4);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v277 = &v246 - v48;
  v283 = type metadata accessor for WebEmbedDataVisualization(0);
  v49 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283, v50);
  v269 = &v246 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v268 = &v246 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v282 = &v246 - v57;
  v58 = sub_1D725B47C();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v60);
  v265 = &v246 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v264 = &v246 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v298 = (&v246 - v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  v322 = (&v246 - v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  v295 = (&v246 - v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  v263 = (&v246 - v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  v276 = (&v246 - v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  v285 = (&v246 - v82);
  v85 = MEMORY[0x1EEE9AC00](v83, v84);
  v87 = (&v246 - v86);
  sub_1D70B9F1C(0, v85);
  v89 = v88;
  v90 = swift_allocBox();
  v310 = v89;
  v92 = (v91 + *(v89 + 48));
  v93 = swift_unknownObjectRetain();
  v255 = a1;
  sub_1D70B7F00(v93);
  *v92 = 0xD000000000000010;
  v92[1] = 0x80000001D73FDC90;
  *v87 = v90;
  v94 = *MEMORY[0x1E69D67F0];
  v270 = v59;
  v95 = *(v59 + 104);
  v309 = v94;
  v320 = v58;
  v314 = v95;
  v315 = v59 + 104;
  (v95)(v87);
  v96 = sub_1D6990368(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v98 = *(v96 + 2);
  v97 = *(v96 + 3);
  v99 = v98 + 1;
  if (v98 >= v97 >> 1)
  {
LABEL_98:
    v96 = sub_1D6990368((v97 > 1), v99, 1, v96);
  }

  *(v96 + 2) = v99;
  v100 = *(v270 + 32);
  v316 = (*(v270 + 80) + 32) & ~*(v270 + 80);
  v319 = *(v270 + 72);
  v312 = v100;
  v313 = v270 + 32;
  v100(&v96[v316 + v319 * v98], v87, v320);
  v101 = v281[5];
  v102 = v281[6];
  __swift_project_boxed_opaque_existential_1(v281 + 2, v101);
  v323 = v255;
  LOBYTE(v324) = 5;
  v103 = *(v102 + 40);
  swift_unknownObjectRetain();
  v99 = v103(&v323, v101, v102);
  swift_unknownObjectRelease();
  v323 = v99;
  sub_1D70F99B4(0, &qword_1EC89ABF8, type metadata accessor for WebEmbedDatastore, MEMORY[0x1E69E62F8]);
  sub_1D70F9A18();
  v87 = &v323;
  v104 = sub_1D72623DC();

  v105 = 0;
  v107 = v104 + 64;
  v106 = *(v104 + 64);
  v259 = v104;
  v108 = 1 << *(v104 + 32);
  v109 = -1;
  if (v108 < 64)
  {
    v109 = ~(-1 << v108);
  }

  v98 = v109 & v106;
  v110 = (v108 + 63) >> 6;
  v275 = "sports-event.txt";
  v274 = *MEMORY[0x1E69D67D8];
  v273 = (v49 + 6);
  v267 = "isualization-failure-";
  v260 = "-visualization-model";
  v303 = (v29 + 32);
  v291 = "-visualization-datastore";
  v49 = v297;
  v253 = v110;
  v254 = v107;
  while (1)
  {
    if (!v98)
    {
      while (1)
      {
        v97 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          break;
        }

        if (v97 >= v110)
        {

          sub_1D725F82C();
          v222 = sub_1D725F7DC();
          if (qword_1EC87D8A8 != -1)
          {
            swift_once();
          }

          v223 = sub_1D725D19C();
          v224 = __swift_project_value_buffer(v223, qword_1EC88FCE0);
          v225 = *(v223 - 8);
          v226 = v252;
          (*(v225 + 16))(v252, v224, v223);
          (*(v225 + 56))(v226, 0, 1, v223);
          v323 = 0;
          v324 = 0xE000000000000000;
          sub_1D7263D4C();

          v323 = 0x45207374726F7053;
          v324 = 0xEF3C203A746E6576;
          v227 = [v255 identifier];
          v228 = sub_1D726207C();
          v230 = v229;

          MEMORY[0x1DA6F9910](v228, v230);

          MEMORY[0x1DA6F9910](62, 0xE100000000000000);
          v231 = *(v96 + 2);
          v315 = v324;
          if (v231)
          {
            v313 = v323;
            v314 = v222;
            v232 = &v96[v316];
            v322 = *(v270 + 16);
            v270 += 16;
            v321 = (v270 - 8);
            v317 = (v261 + 32);
            v318 = (v261 + 48);
            v233 = MEMORY[0x1E69E7CC0];
            v234 = v262;
            v235 = v265;
            do
            {
              v236 = v264;
              v237 = v320;
              v238 = v322;
              v322(v264, v232, v320);
              v238(v235, v236, v237);
              sub_1D725D51C();
              (*v321)(v236, v237);
              v239 = v271;
              if ((*v318)(v234, 1, v271) == 1)
              {
                sub_1D70F9BD0(v234, &qword_1EC89ABF0, MEMORY[0x1E69D7970]);
              }

              else
              {
                v240 = *v317;
                (*v317)(v266, v234, v239);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v233 = sub_1D69932BC(0, *(v233 + 2) + 1, 1, v233);
                }

                v242 = *(v233 + 2);
                v241 = *(v233 + 3);
                if (v242 >= v241 >> 1)
                {
                  v233 = sub_1D69932BC((v241 > 1), v242 + 1, 1, v233);
                }

                *(v233 + 2) = v242 + 1;
                v240(&v233[((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v242], v266, v271);
                v234 = v262;
              }

              v232 += v319;
              --v231;
            }

            while (v231);
          }

          goto LABEL_93;
        }

        ++v105;
        if (*(v107 + 8 * v97))
        {
          v105 = v97;
          v98 = *(v107 + 8 * v97);
          goto LABEL_11;
        }
      }

LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

LABEL_11:
    v256 = v98;
    v257 = v105;
    v111 = __clz(__rbit64(v98)) | (v105 << 6);
    v112 = *(v259 + 56);
    v113 = (*(v259 + 48) + 16 * v111);
    v115 = *v113;
    v114 = v113[1];
    v317 = v115;
    v318 = v114;
    v98 = *(v112 + 8 * v111);
    v87 = v98 >> 62 ? sub_1D7263BFC() : *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v258 = v98;
    if (v87)
    {
      break;
    }

LABEL_5:
    v98 = (v256 - 1) & v256;

    v107 = v254;
    v105 = v257;
    v110 = v253;
  }

  v116 = 0;
  v280 = v98 & 0xC000000000000001;
  v279 = v98 & 0xFFFFFFFFFFFFFF8;
  v278 = v98 + 32;
  v272 = v87;
  while (1)
  {
    if (v280)
    {
      v286 = MEMORY[0x1DA6FB460](v116, v258);
      v97 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        goto LABEL_95;
      }
    }

    else
    {
      v97 = *(v279 + 16);
      if (v116 >= v97)
      {
        goto LABEL_96;
      }

      v286 = *(v278 + 8 * v116);

      v97 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        goto LABEL_95;
      }
    }

    v284 = v97;
    v117 = swift_allocObject();
    v118 = [*(v286 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
    v119 = sub_1D726207C();
    v121 = v120;

    v117[2] = v119;
    v117[3] = v121;
    v323 = 0;
    v324 = 0xE000000000000000;
    sub_1D7263D4C();
    v122 = v318;

    v323 = v317;
    v324 = v122;
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v311 = v116;
    v329 = v116;
    v123 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v123);

    MEMORY[0x1DA6F9910](0xD000000000000018, v275 | 0x8000000000000000);
    v124 = v324;
    v117[4] = v323;
    v117[5] = v124;
    *v285 = v117;
    v125 = v320;
    v314();
    v127 = *(v96 + 2);
    v126 = *(v96 + 3);
    v87 = (v127 + 1);
    if (v127 >= v126 >> 1)
    {
      v96 = sub_1D6990368((v126 > 1), v127 + 1, 1, v96);
    }

    v99 = v308;
    v128 = v307;
    *(v96 + 2) = v87;
    v312(&v96[v316 + v127 * v319], v285, v125);
    v98 = v277;
    sub_1D686B7BC(v286 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, v277);
    if ((*v273)(v98, 1, v283) == 1)
    {
      sub_1D70F9BD0(v98, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      goto LABEL_33;
    }

    v129 = v282;
    sub_1D70F9B68(v98, v282, type metadata accessor for WebEmbedDataVisualization);
    v130 = v310;
    v131 = swift_allocBox();
    v133 = v132;
    v134 = (v132 + *(v130 + 48));
    v135 = v129;
    v136 = v268;
    sub_1D70F9AA0(v135, v268, type metadata accessor for WebEmbedDataVisualization);
    sub_1D70B6F30(v136, v133);
    v323 = 0;
    v324 = 0xE000000000000000;
    sub_1D7263D4C();
    v137 = v318;

    v323 = v317;
    v324 = v137;
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v329 = v311;
    v138 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v138);

    MEMORY[0x1DA6F9910](0xD000000000000014, v267 | 0x8000000000000000);
    v139 = v324;
    *v134 = v323;
    v134[1] = v139;
    *v276 = v131;
    v140 = v320;
    v314();
    v142 = *(v96 + 2);
    v141 = *(v96 + 3);
    if (v142 >= v141 >> 1)
    {
      v96 = sub_1D6990368((v141 > 1), v142 + 1, 1, v96);
    }

    *(v96 + 2) = v142 + 1;
    v312(&v96[v316 + v142 * v319], v276, v140);
    v143 = v282;
    v98 = v269;
    sub_1D70F9AA0(v282, v269, type metadata accessor for WebEmbedDataVisualization);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v99 = v308;
    if (EnumCaseMultiPayload == 1)
    {
      v87 = type metadata accessor for WebEmbedDataVisualization;
      sub_1D70F9B08(v143, type metadata accessor for WebEmbedDataVisualization);
      v145 = v98;
LABEL_32:
      sub_1D70F9B08(v145, type metadata accessor for WebEmbedDataVisualization);
      goto LABEL_33;
    }

    v98 = *v98;
    v329 = v98;
    v87 = &v329;
    SportsDataVisualization.config.getter(&v323);

    v146 = v324;
    if (!v324)
    {
      v145 = v143;
      goto LABEL_32;
    }

    v147 = v323;
    v148 = v325;
    v149 = v326;
    v150 = v327;
    v151 = v328;
    v152 = v310;
    v293 = swift_allocBox();
    v154 = v153;
    v155 = (v153 + *(v152 + 48));
    v323 = v147;
    v324 = v146;
    v325 = v148;
    v326 = v149;
    v327 = v150;
    v328 = v151;
    swift_unknownObjectRetain();

    v302 = v150;

    v294 = v151;

    sub_1D70B76E4(&v323, v154);
    v323 = 0;
    v324 = 0xE000000000000000;
    sub_1D7263D4C();
    v156 = v318;

    v323 = v317;
    v324 = v156;
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v329 = v311;
    v157 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v157);
    v158 = v320;

    MEMORY[0x1DA6F9910](0xD000000000000015, v260 | 0x8000000000000000);
    v159 = v324;
    *v155 = v323;
    v155[1] = v159;
    *v263 = v293;
    v314();
    v98 = *(v96 + 2);
    v160 = *(v96 + 3);
    v87 = (v98 + 1);
    if (v98 >= v160 >> 1)
    {
      v96 = sub_1D6990368((v160 > 1), v98 + 1, 1, v96);
    }

    v99 = v308;
    sub_1D5F8BBC8(v147, v146, v148, v149, v302, v294);
    sub_1D70F9B08(v282, type metadata accessor for WebEmbedDataVisualization);
    *(v96 + 2) = v87;
    v312(&v96[v316 + v98 * v319], v263, v158);
    v128 = v307;
LABEL_33:
    v29 = *(v286 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents);
    if (v29)
    {
      v98 = *(v29 + 2);
      if (v98)
      {
        v161 = v288;
        v162 = &v29[(*(v288 + 80) + 32) & ~*(v288 + 80)];

        v163 = *(v161 + 72);
        do
        {
          sub_1D70F9AA0(v162, v49, type metadata accessor for WebEmbedDatastoreProperty);
          v164 = v296;
          sub_1D70F9AA0(v49, v296, type metadata accessor for WebEmbedDatastoreProperty);
          v165 = v290;
          sub_1D70F9AA0(v164 + *(v304 + 20), v290, type metadata accessor for WebEmbedDataSourceCacheEntry);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v166 = *v165;
            v167 = v289;
            sub_1D70B879C(v166, v289);
          }

          else
          {
            v168 = v299;
            sub_1D70F9B68(v165, v299, type metadata accessor for WebEmbedDataSourceJson);
            v169 = v300;
            sub_1D70F9AA0(v168, v300, type metadata accessor for WebEmbedDataSourceJson);
            v170 = v169;
            v167 = v289;
            sub_1D70BA578(v170, v289);
            sub_1D70F9B08(v168, type metadata accessor for WebEmbedDataSourceJson);
          }

          sub_1D70F9B08(v296, type metadata accessor for WebEmbedDatastoreProperty);
          v171 = v310;
          v172 = swift_allocBox();
          v174 = (v173 + *(v171 + 48));
          (*v303)(v173, v167, v305);
          v323 = 0;
          v324 = 0xE000000000000000;
          sub_1D7263D4C();
          v175 = v318;

          v323 = v317;
          v324 = v175;
          MEMORY[0x1DA6F9910](45, 0xE100000000000000);
          v329 = v311;
          v176 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v176);

          MEMORY[0x1DA6F9910](0x696C61757369762DLL, 0xEF2D6E6F6974617ALL);
          MEMORY[0x1DA6F9910](*v49, v49[1]);
          v177 = v324;
          *v174 = v323;
          v174[1] = v177;
          *v295 = v172;
          v178 = v320;
          v314();
          v180 = *(v96 + 2);
          v179 = *(v96 + 3);
          v87 = (v180 + 1);
          if (v180 >= v179 >> 1)
          {
            v96 = sub_1D6990368((v179 > 1), v180 + 1, 1, v96);
          }

          v128 = v307;
          sub_1D70F9B08(v49, type metadata accessor for WebEmbedDatastoreProperty);
          *(v96 + 2) = v87;
          v312(&v96[v316 + v180 * v319], v295, v178);
          v162 += v163;
          --v98;
          v99 = v308;
        }

        while (v98);
      }
    }

    v181 = *(v286 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents);
    if (v181)
    {
      v98 = *(v181 + 16);

      v293 = v98;
      if (v98)
      {
        v183 = 0;
        v292 = v182 + 32;
        v287 = v182;
        while (1)
        {
          v97 = *(v182 + 16);
          if (v183 >= v97)
          {
            break;
          }

          v184 = *(v292 + 8 * v183);
          v98 = *(v184 + 16);
          if (v98)
          {
            v185 = v288;
            v186 = v184 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
            v294 = *(v292 + 8 * v183);

            v302 = *(v185 + 72);
            do
            {
              v187 = v321;
              sub_1D70F9AA0(v186, v321, type metadata accessor for WebEmbedDatastoreProperty);
              sub_1D70F9AA0(v187, v128, type metadata accessor for WebEmbedDatastoreProperty);
              v188 = v301;
              sub_1D70F9AA0(v128 + *(v304 + 20), v301, type metadata accessor for WebEmbedDataSourceCacheEntry);
              v29 = v96;
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_1D70B879C(*v188, v99);
                v189 = type metadata accessor for WebEmbedDatastoreProperty;
                v190 = v128;
              }

              else
              {
                v191 = v299;
                sub_1D70F9B68(v188, v299, type metadata accessor for WebEmbedDataSourceJson);
                v192 = v300;
                sub_1D70F9AA0(v191, v300, type metadata accessor for WebEmbedDataSourceJson);
                sub_1D70BA578(v192, v99);
                sub_1D70F9B08(v128, type metadata accessor for WebEmbedDatastoreProperty);
                v189 = type metadata accessor for WebEmbedDataSourceJson;
                v190 = v191;
              }

              sub_1D70F9B08(v190, v189);
              v193 = v310;
              v194 = swift_allocBox();
              v196 = (v195 + *(v193 + 48));
              (*v303)(v195, v99, v305);
              v323 = 0;
              v324 = 0xE000000000000000;
              sub_1D7263D4C();
              v197 = v318;

              v323 = v317;
              v324 = v197;
              MEMORY[0x1DA6F9910](45, 0xE100000000000000);
              v329 = v311;
              v198 = sub_1D72644BC();
              MEMORY[0x1DA6F9910](v198);

              MEMORY[0x1DA6F9910](0x2D646C6968632DLL, 0xE700000000000000);
              v329 = v183;
              v199 = sub_1D72644BC();
              MEMORY[0x1DA6F9910](v199);

              MEMORY[0x1DA6F9910](0x696C61757369762DLL, 0xEF2D6E6F6974617ALL);
              v200 = v321;
              MEMORY[0x1DA6F9910](*v321, v321[1]);
              sub_1D70F9B08(v200, type metadata accessor for WebEmbedDatastoreProperty);
              v201 = v324;
              *v196 = v323;
              v196[1] = v201;
              *v322 = v194;
              v202 = v320;
              v314();
              v204 = *(v96 + 2);
              v203 = *(v96 + 3);
              v87 = (v204 + 1);
              if (v204 >= v203 >> 1)
              {
                v96 = sub_1D6990368((v203 > 1), v204 + 1, 1, v96);
              }

              *(v96 + 2) = v87;
              v312(&v96[v316 + v204 * v319], v322, v202);
              v186 += v302;
              --v98;
              v99 = v308;
              v128 = v307;
            }

            while (v98);

            v49 = v297;
            v182 = v287;
          }

          if (++v183 == v293)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

LABEL_57:
    }

    v99 = v281[5];
    v205 = v281[6];
    __swift_project_boxed_opaque_existential_1(v281 + 2, v99);
    v206 = *((*(v205 + 64))(v286, v99, v205) + 16);

    if (v206 >> 62)
    {
      break;
    }

    v207 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v207)
    {
      goto LABEL_60;
    }

LABEL_15:

    v116 = v284;
    v87 = v272;
    if (v284 == v272)
    {
      goto LABEL_5;
    }
  }

  v207 = sub_1D7263BFC();
  if (!v207)
  {
    goto LABEL_15;
  }

LABEL_60:
  v208 = 0;
  v294 = v206 & 0xC000000000000001;
  v293 = v206 & 0xFFFFFFFFFFFFFF8;
  v292 = v207;
  while (2)
  {
    if (v294)
    {
      MEMORY[0x1DA6FB460](v208, v206);
      v209 = v208 + 1;
      if (__OFADD__(v208, 1))
      {
        break;
      }

      goto LABEL_64;
    }

    if (v208 >= *(v293 + 16))
    {
      goto LABEL_92;
    }

    v209 = v208 + 1;
    if (!__OFADD__(v208, 1))
    {
LABEL_64:
      v210 = v310;
      v302 = swift_allocBox();
      v212 = v211;
      v213 = (v211 + *(v210 + 48));

      sub_1D70B879C(v214, v212);
      v323 = 0;
      v324 = 0xE000000000000000;
      sub_1D7263D4C();
      v215 = v318;

      v323 = v317;
      v324 = v215;
      MEMORY[0x1DA6F9910](45, 0xE100000000000000);
      v329 = v311;
      v29 = v96;
      v98 = MEMORY[0x1E69E6590];
      v216 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v216);

      MEMORY[0x1DA6F9910](0xD000000000000025, v291 | 0x8000000000000000);
      v329 = v208;
      v217 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v217);
      v99 = v320;

      v218 = v324;
      *v213 = v323;
      v213[1] = v218;
      *v298 = v302;
      v314();
      v220 = *(v96 + 2);
      v219 = *(v96 + 3);
      if (v220 >= v219 >> 1)
      {
        v96 = sub_1D6990368((v219 > 1), v220 + 1, 1, v96);
      }

      *(v96 + 2) = v220 + 1;
      v312(&v96[v316 + v220 * v319], v298, v99);
      ++v208;
      v221 = v209 == v292;
      v49 = v297;
      if (v221)
      {
        goto LABEL_15;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:

  swift_getObjectType();
  (*(v246 + 104))(v247, *MEMORY[0x1E69D79C8], v248);
  v243 = v249;
  sub_1D725F61C();
  v244 = sub_1D725F62C();
  (*(*(v244 - 8) + 56))(v243, 0, 1, v244);
  sub_1D725D9CC();
  sub_1D70F9BD0(v243, &unk_1EC88DF00, MEMORY[0x1E69D8750]);

  return result;
}

uint64_t sub_1D70F967C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WebEmbedDataVisualization(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70F99B4(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  sub_1D686B7BC(*a1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, &v17 - v11);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    result = sub_1D70F9BD0(v12, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    sub_1D70F9AA0(v12, v8, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D70F9B08(v8, type metadata accessor for WebEmbedDataVisualization);
      v15 = 0xE700000000000000;
      v14 = 0x636972656E6567;
    }

    else
    {
      v16 = *v8 >> 61;

      if (v16 <= 2)
      {
        if (v16)
        {
          if (v16 == 1)
          {
            v15 = 0xE800000000000000;
            v14 = 0x676E69646E617473;
          }

          else
          {
            v15 = 0xE700000000000000;
            v14 = 0x74656B63617262;
          }
        }

        else
        {
          v15 = 0xE500000000000000;
          v14 = 0x65726F6373;
        }
      }

      else if (v16 > 4)
      {
        if (v16 == 5)
        {
          v15 = 0xEC00000074726F70;
          v14 = 0x65527972756A6E69;
        }

        else
        {
          v15 = 0xE900000000000072;
          v14 = 0x6579616C5079656BLL;
        }
      }

      else if (v16 == 3)
      {
        v15 = 0xE800000000000000;
        v14 = 0x65726F6353786F62;
      }

      else
      {
        v14 = 0x726F6353656E696CLL;
        v15 = 0xE900000000000065;
      }
    }

    result = sub_1D70F9B08(v12, type metadata accessor for WebEmbedDataVisualization);
  }

  *a2 = v14;
  a2[1] = v15;
  return result;
}

void sub_1D70F99B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D70F9A18()
{
  result = qword_1EC89AC00;
  if (!qword_1EC89AC00)
  {
    sub_1D70F99B4(255, &qword_1EC89ABF8, type metadata accessor for WebEmbedDatastore, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC00);
  }

  return result;
}

uint64_t sub_1D70F9AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70F9B08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D70F9B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70F9BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D70F99B4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t WeakFormatTracker.__allocating_init(tracker:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t WeakFormatTracker.init(tracker:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t WeakFormatTracker.trackFormatStartedImpression(for:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakFormatTracker.trackFormatImpression(for:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakFormatTracker.trackFormatImpressionSection(for:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakFormatTracker.trackFormatCancelImpression(for:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakFormatTracker.trackFormatSelection(for:context:)(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakFormatTracker.__deallocating_deinit()
{
  sub_1D5B87E10(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D70FA094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D70FA134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D70FA1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D70FA274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D70FA314(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WebEmbedRendering.description.getter()
{
  if (*v0)
  {
    return 0x6567616D49;
  }

  else
  {
    return 0x7765695620626557;
  }
}

uint64_t sub_1D70FA4BC()
{
  if (*v0)
  {
    return 0x6567616D69;
  }

  else
  {
    return 0x77656956626577;
  }
}

void sub_1D70FA4F4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x77656956626577 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D70FA5CC(uint64_t a1)
{
  v2 = sub_1D70FAAF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70FA608(uint64_t a1)
{
  v2 = sub_1D70FAAF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D70FA644(uint64_t a1)
{
  v2 = sub_1D70FAA4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70FA680(uint64_t a1)
{
  v2 = sub_1D70FAA4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D70FA6BC(uint64_t a1)
{
  v2 = sub_1D70FAAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70FA6F8(uint64_t a1)
{
  v2 = sub_1D70FAAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WebEmbedRendering.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D70FB074(0, &qword_1EC89AC10, sub_1D70FAA4C, &type metadata for WebEmbedRendering.ImageCodingKeys, MEMORY[0x1E69E6F58]);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v26 = &v22 - v6;
  sub_1D70FB074(0, &qword_1EC89AC20, sub_1D70FAAA0, &type metadata for WebEmbedRendering.WebViewCodingKeys, v3);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v23 = &v22 - v9;
  sub_1D70FB074(0, &qword_1EC89AC30, sub_1D70FAAF4, &type metadata for WebEmbedRendering.CodingKeys, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FAAF4();
  sub_1D7264B5C();
  v17 = (v12 + 8);
  if (v16)
  {
    v30 = 1;
    sub_1D70FAA4C();
    v18 = v26;
    sub_1D726436C();
    v20 = v27;
    v19 = v28;
  }

  else
  {
    v29 = 0;
    sub_1D70FAAA0();
    v18 = v23;
    sub_1D726436C();
    v20 = v24;
    v19 = v25;
  }

  (*(v20 + 8))(v18, v19);
  return (*v17)(v15, v11);
}

unint64_t sub_1D70FAA4C()
{
  result = qword_1EC89AC18;
  if (!qword_1EC89AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC18);
  }

  return result;
}

unint64_t sub_1D70FAAA0()
{
  result = qword_1EC89AC28;
  if (!qword_1EC89AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC28);
  }

  return result;
}

unint64_t sub_1D70FAAF4()
{
  result = qword_1EC89AC38;
  if (!qword_1EC89AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC38);
  }

  return result;
}

uint64_t WebEmbedRendering.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t WebEmbedRendering.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D70FB074(0, &qword_1EC89AC40, sub_1D70FAA4C, &type metadata for WebEmbedRendering.ImageCodingKeys, MEMORY[0x1E69E6F48]);
  v32 = v4;
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v34 = &v30 - v6;
  sub_1D70FB074(0, &qword_1EC89AC48, sub_1D70FAAA0, &type metadata for WebEmbedRendering.WebViewCodingKeys, v3);
  v8 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v30 - v10;
  sub_1D70FB074(0, &qword_1EC89AC50, sub_1D70FAAF4, &type metadata for WebEmbedRendering.CodingKeys, v3);
  v13 = v12;
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FAAF4();
  v17 = v37;
  sub_1D7264B0C();
  if (v17)
  {
    goto LABEL_7;
  }

  v30 = v8;
  v18 = v34;
  v19 = v35;
  v37 = a1;
  v20 = v33;
  v21 = v36;
  v22 = sub_1D726433C();
  v23 = (2 * *(v22 + 16)) | 1;
  v38 = v22;
  v39 = v22 + 32;
  v40 = 0;
  v41 = v23;
  v24 = sub_1D60F9620();
  if (v24 == 2 || v40 != v41 >> 1)
  {
    v25 = sub_1D7263E3C();
    swift_allocError();
    v27 = v26;
    sub_1D5EEA608(0);
    *v27 = &type metadata for WebEmbedRendering;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v20 + 8))(v16, v13);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v42 = v24;
  if (v24)
  {
    v43 = 1;
    sub_1D70FAA4C();
    sub_1D72641EC();
    (*(v19 + 8))(v18, v32);
  }

  else
  {
    v43 = 0;
    sub_1D70FAAA0();
    sub_1D72641EC();
    (*(v31 + 8))(v11, v30);
  }

  (*(v20 + 8))(v16, v13);
  swift_unknownObjectRelease();
  *v21 = v42 & 1;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

void sub_1D70FB074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D70FB10C()
{
  if (*v0)
  {
    return 0x6567616D49;
  }

  else
  {
    return 0x7765695620626557;
  }
}

NewsFeed::DebugWebEmbedRendering_optional __swiftcall DebugWebEmbedRendering.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DebugWebEmbedRendering.rawValue.getter()
{
  v1 = 0x77656956626577;
  if (*v0 != 1)
  {
    v1 = 0x6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

unint64_t sub_1D70FB1FC()
{
  result = qword_1EC89AC58;
  if (!qword_1EC89AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC58);
  }

  return result;
}

uint64_t sub_1D70FB250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x77656956626577;
  if (v2 != 1)
  {
    v5 = 0x6567616D69;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x77656956626577;
  if (*a2 != 1)
  {
    v8 = 0x6567616D69;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v3;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D70FB348()
{
  result = qword_1EDF0DBB0;
  if (!qword_1EDF0DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DBB0);
  }

  return result;
}

uint64_t sub_1D70FB39C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D70FB43C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D70FB4C8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D70FB570(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x77656956626577;
  if (v2 != 1)
  {
    v5 = 0x6567616D69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D70FB67C(uint64_t a1)
{
  v2 = sub_1D70FBA38();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D70FB6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D70FBA38();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D70FB72C(uint64_t a1)
{
  v2 = sub_1D70FBA38();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D70FB7D4()
{
  result = qword_1EC89AC60;
  if (!qword_1EC89AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC60);
  }

  return result;
}

unint64_t sub_1D70FB82C()
{
  result = qword_1EC89AC68;
  if (!qword_1EC89AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC68);
  }

  return result;
}

unint64_t sub_1D70FB884()
{
  result = qword_1EC89AC70;
  if (!qword_1EC89AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC70);
  }

  return result;
}

unint64_t sub_1D70FB8DC()
{
  result = qword_1EC89AC78;
  if (!qword_1EC89AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC78);
  }

  return result;
}

unint64_t sub_1D70FB934()
{
  result = qword_1EC89AC80;
  if (!qword_1EC89AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC80);
  }

  return result;
}

unint64_t sub_1D70FB98C()
{
  result = qword_1EC89AC88;
  if (!qword_1EC89AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC88);
  }

  return result;
}

unint64_t sub_1D70FB9E4()
{
  result = qword_1EC89AC90;
  if (!qword_1EC89AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC90);
  }

  return result;
}

unint64_t sub_1D70FBA38()
{
  result = qword_1EDF0DBA8;
  if (!qword_1EDF0DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DBA8);
  }

  return result;
}

uint64_t sub_1D70FBA8C()
{
  sub_1D70FBC1C(0);
  sub_1D70FBC74();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7279970;
  sub_1D725980C();
  sub_1D725980C();
  sub_1D725980C();
  return v0;
}

void sub_1D70FBC1C(uint64_t a1)
{
  if (!qword_1EDF02428)
  {
    sub_1D70FBC74();
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02428);
    }
  }
}

void sub_1D70FBC74()
{
  if (!qword_1EDF181B0)
  {
    v0 = sub_1D725981C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF181B0);
    }
  }
}

uint64_t sub_1D70FBCD8(void *a1)
{
  sub_1D70FEE84(0, &qword_1EC89AD38, sub_1D70FEE30, &type metadata for A12_V9.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  memcpy(v14, v1 + 2, sizeof(v14));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FEE30();
  sub_1D7264B5C();
  v9 = *v1;
  v13[1] = v1[1];
  v13[0] = v9;
  v15 = 0;
  type metadata accessor for CGRect(0);
  sub_1D70FEAE0(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  v10 = v12;
  sub_1D726443C();
  if (!v10)
  {
    memcpy(v13, v14, sizeof(v13));
    v15 = 1;
    sub_1D5C0B904();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D70FBF00@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16 = a2;
  sub_1D70FEE84(0, &qword_1EC89AD28, sub_1D70FEE30, &type metadata for A12_V9.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v17 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FEE30();
  sub_1D7264B0C();
  if (!v2)
  {
    v9 = v5;
    v10 = v16;
    type metadata accessor for CGRect(0);
    v19 = 0;
    sub_1D70FEAE0(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    v11 = v17;
    sub_1D726431C();
    v14 = v18[1];
    v15 = v18[0];
    v19 = 1;
    sub_1D5BEE208();
    sub_1D726431C();
    (*(v9 + 8))(v8, v11);
    v13 = v14;
    *v10 = v15;
    v10[1] = v13;
    memcpy(v10 + 2, v18, 0x130uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D70FC160(uint64_t a1)
{
  v2 = sub_1D70FEE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70FC19C(uint64_t a1)
{
  v2 = sub_1D70FEE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D70FC208(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D70FEB84();

  return sub_1D725A24C();
}

uint64_t sub_1D70FC284@<X0>(uint64_t *a1@<X8>)
{
  memset(__src, 0, 32);
  __src[32] = 1;
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D69B3C3C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D70FEE84(0, &qword_1EC88F6A8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  result = sub_1D725996C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D70FC360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v259 = a2;
  v265 = a1;
  v227 = a3;
  sub_1D5C15644(0);
  v246 = v4;
  v232 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v247 = (&v218 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69E6720];
  sub_1D5C143F8(0, &unk_1EDF1ACB0, sub_1D5C15644, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v233 = &v218 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v235 = (&v218 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v239 = &v218 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v238 = (&v218 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v240 = &v218 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v248 = (&v218 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v237 = &v218 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v244 = (&v218 - v31);
  sub_1D5C14518(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v220 = &v218 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v221 = &v218 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v222 = &v218 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v225 = &v218 - v43;
  sub_1D5C143F8(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v7);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v229 = &v218 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v230 = &v218 - v49;
  v231 = type metadata accessor for FeedHeadline(0);
  v245 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v50);
  v234 = &v218 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v236 = &v218 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v242 = &v218 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v243 = &v218 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v224 = &v218 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v223 = &v218 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v228 = &v218 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v226 = &v218 - v72;
  v73 = sub_1D725895C();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v75);
  v77 = &v218 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for GroupLayoutContext(0);
  v255 = *(v78 - 8);
  v256 = v78;
  MEMORY[0x1EEE9AC00](v78, v79);
  v258 = &v218 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81, v82);
  v84 = &v218 - v83;
  v252 = &v218 - v83;
  v257 = type metadata accessor for GroupLayoutBindingContext(0);
  v253 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257, v85);
  v87 = &v218 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *v3;
  LODWORD(v251) = *v3;
  v89 = *(v3 + 1);
  v90 = v3[16];
  sub_1D5BE3ED8(v265, v87, type metadata accessor for GroupLayoutBindingContext);
  v254 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v259, v84, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v250 = sub_1D725893C();
  v249 = v91;
  (*(v74 + 8))(v77, v73);
  v263 = &type metadata for A12_V9;
  v92 = sub_1D5ECEA6C();
  v264 = v92;
  LOBYTE(v261) = v88;
  *(&v261 + 1) = v89;
  v262 = v90;
  type metadata accessor for GroupLayoutKey(0);
  v93 = swift_allocObject();
  sub_1D5BEE8A0(v89, v90);
  v260[0] = sub_1D7264C5C();
  v260[1] = v94;
  v260[6] = 95;
  v260[7] = 0xE100000000000000;
  v260[4] = 45;
  v260[5] = 0xE100000000000000;
  v216 = sub_1D5BF4D9C();
  v217 = v216;
  v215[0] = MEMORY[0x1E69E6158];
  v215[1] = v216;
  v95 = sub_1D7263A6C();
  v97 = v96;

  *(v93 + 16) = v95;
  *(v93 + 24) = v97;
  v98 = (v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v99 = v249;
  *v98 = v250;
  v98[1] = v99;
  sub_1D5B68374(&v261, v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v100 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  v101 = v258;
  sub_1D5BDAB0C(v87, v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  v102 = v257;
  (*(v253 + 56))(v93 + v100, 0, 1, v257);
  v103 = v265;
  v104 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDAB0C(v252, v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v255 + 56))(v93 + v104, 0, 1, v256);
  __swift_destroy_boxed_opaque_existential_1(&v261);
  v263 = &type metadata for A12_V9;
  v264 = v92;
  LOBYTE(v261) = v251;
  *(&v261 + 1) = v89;
  v262 = v90;
  v105 = v101;
  sub_1D5BE3ED8(v259, v101, v254);
  v106 = *(v103 + *(v102 + 56));
  v107 = *(v106 + 16);
  sub_1D5BEE8A0(v89, v90);
  if (!v107)
  {
    goto LABEL_20;
  }

  v108 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
  if ((v109 & 1) == 0)
  {
    goto LABEL_20;
  }

  v110 = *(*(v106 + 56) + 8 * v108);
  if (!*(v110 + 16))
  {
    goto LABEL_20;
  }

  v112 = v241;
  v113 = sub_1D5BF08EC(v111, 0, 0);
  if (v112)
  {

LABEL_21:
    v137 = v105;
LABEL_22:
    sub_1D5BE792C(v137, type metadata accessor for GroupLayoutContext);
    return __swift_destroy_boxed_opaque_existential_1(&v261);
  }

  v256 = v110;
  v114 = sub_1D5C14D80(v113);

  if (!v114)
  {
LABEL_19:

LABEL_20:

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v136, "FeedHeadline");
    v136[13] = 0;
    *(v136 + 7) = -5120;
    *(v136 + 2) = 0;
    *(v136 + 3) = 0;
    *(v136 + 2) = xmmword_1D733D120;
    *(v136 + 6) = 0;
    *(v136 + 7) = 0;
    v136[64] = 0;
    swift_willThrow();
    goto LABEL_21;
  }

  result = v114;
  if (!*(v114 + 16))
  {

    v105 = v258;
    goto LABEL_19;
  }

  v116 = *(v114 + 16);
  v117 = v257;
  v118 = *(v103 + *(v257 + 68));
  v253 = *(v257 + 76);
  v119 = *(v103 + v253);
  v120 = v240;
  v121 = v248;
  v259 = result;
  v219 = v93;
  v254 = 0;
  v255 = v119;
  if (v119 < v118)
  {
    v122 = (v232 + 56);
    v123 = (v232 + 48);

    v124 = 0;
    v125 = v237;
    if (v116)
    {
      goto LABEL_11;
    }

LABEL_10:
    v126 = 1;
    v124 = v116;
    v127 = v246;
    while (1)
    {
      (*v122)(v125, v126, 1, v127);
      v132 = v244;
      sub_1D5C1516C(v125, v244);
      if ((*v123)(v132, 1, v127) == 1)
      {
        v138 = v259;

        result = v138;
        v103 = v265;
        v119 = v255;
        v117 = v257;
        goto LABEL_24;
      }

      v133 = *v132;
      v134 = v132 + *(v127 + 48);
      v135 = v243;
      sub_1D5BDAB0C(v134, v243, type metadata accessor for FeedHeadline);
      if ((~*(v135 + 32) & 0x1004) == 0)
      {
        v167 = v259;

        v260[0] = v167;
        v168 = v225;
        sub_1D5C17DC4(v133, v225);
        sub_1D5BE792C(v135, type metadata accessor for FeedHeadline);

        v169 = v224;
        sub_1D5BDAB0C(v168, v224, type metadata accessor for FeedHeadline);
        v170 = v169;
        v171 = v223;
        sub_1D5BDAB0C(v170, v223, type metadata accessor for FeedHeadline);
        v172 = v230;
        sub_1D5BDAB0C(v171, v230, type metadata accessor for FeedHeadline);
        v173 = v245;
        v174 = v231;
        (*(v245 + 56))(v172, 0, 1, v231);
        v175 = v265;
        v144 = v173;
        goto LABEL_58;
      }

      result = sub_1D5BE792C(v135, type metadata accessor for FeedHeadline);
      v121 = v248;
      if (v124 == v116)
      {
        goto LABEL_10;
      }

LABEL_11:
      if ((v124 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v124 >= *(v259 + 16))
      {
        goto LABEL_71;
      }

      v128 = v259 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v124;
      v127 = v246;
      v129 = *(v246 + 48);
      v130 = v247;
      *v247 = v124;
      sub_1D5BE3ED8(v128, v130 + v129, type metadata accessor for FeedHeadline);
      v131 = v130;
      v125 = v237;
      sub_1D5BDAB0C(v131, v237, sub_1D5C15644);
      v126 = 0;
      ++v124;
      v121 = v248;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_24:
  v139 = *(v103 + *(v117 + 72));
  v140 = v139 - v119;
  if (__OFSUB__(v139, v119))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v141 = *(result + 16);
  v142 = (v232 + 56);
  v143 = (v232 + 48);

  v144 = v245;
  v145 = v246;
  if (v140 < 1)
  {
    v156 = 0;
    if (v141)
    {
      goto LABEL_37;
    }

LABEL_36:
    v157 = 1;
    v156 = v141;
    v158 = v239;
    while (1)
    {
      v162 = *v142;
      (*v142)(v158, v157, 1, v145);
      v163 = v238;
      sub_1D5C1516C(v158, v238);
      v164 = *v143;
      if ((*v143)(v163, 1, v145) == 1)
      {
        break;
      }

      v165 = *v163;
      v166 = v236;
      sub_1D5BDAB0C(v163 + *(v145 + 48), v236, type metadata accessor for FeedHeadline);
      if ((*(v166 + 32) & 0x1004) == 4)
      {
        v194 = v259;

        v260[0] = v194;
        v195 = v221;
        sub_1D5C17DC4(v165, v221);
        sub_1D5BE792C(v166, type metadata accessor for FeedHeadline);

        v196 = v229;
        sub_1D5BDAB0C(v195, v229, type metadata accessor for FeedHeadline);
        v144 = v245;
        v197 = *(v245 + 56);
        v174 = v231;
        v197(v196, 0, 1, v231);
        v198 = v196;
        v172 = v230;
        sub_1D5BDAB0C(v198, v230, type metadata accessor for FeedHeadline);
        v197(v172, 0, 1, v174);
        goto LABEL_57;
      }

      result = sub_1D5BE792C(v166, type metadata accessor for FeedHeadline);
      v144 = v245;
      if (v156 == v141)
      {
        goto LABEL_36;
      }

LABEL_37:
      if ((v156 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      if (v156 >= *(v259 + 16))
      {
        goto LABEL_75;
      }

      v159 = v259 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v156;
      v160 = *(v145 + 48);
      v161 = v247;
      *v247 = v156;
      sub_1D5BE3ED8(v159, v161 + v160, type metadata accessor for FeedHeadline);
      v158 = v239;
      sub_1D5BDAB0C(v161, v239, sub_1D5C15644);
      v157 = 0;
      ++v156;
    }

    v179 = v259;

    v180 = *(v245 + 56);
    v252 = v245 + 56;
    v251 = v180;
    v180(v229, 1, 1, v231);
    v181 = *(v179 + 16);

    v182 = 0;
    v183 = v233;
    v257 = v181;
    v184 = v235;
    if (v181)
    {
      goto LABEL_49;
    }

LABEL_48:
    v185 = 1;
    v182 = v181;
    v186 = v246;
    while (1)
    {
      v162(v183, v185, 1, v186);
      sub_1D5C1516C(v183, v184);
      if (v164(v184, 1, v186) == 1)
      {
        swift_bridgeObjectRelease_n();
        v210 = 1;
        v172 = v230;
        goto LABEL_68;
      }

      v191 = *v184;
      v192 = v184 + *(v186 + 48);
      v193 = v234;
      sub_1D5BDAB0C(v192, v234, type metadata accessor for FeedHeadline);
      if ((*(v193 + 32) & 4) != 0)
      {
        break;
      }

      result = sub_1D5BE792C(v193, type metadata accessor for FeedHeadline);
      v181 = v257;
      if (v182 == v257)
      {
        goto LABEL_48;
      }

LABEL_49:
      if ((v182 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v182 >= *(v259 + 16))
      {
        goto LABEL_77;
      }

      v187 = v259 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v182;
      v186 = v246;
      v188 = *(v246 + 48);
      v189 = v247;
      *v247 = v182;
      sub_1D5BE3ED8(v187, v189 + v188, type metadata accessor for FeedHeadline);
      v190 = v189;
      v183 = v233;
      sub_1D5BDAB0C(v190, v233, sub_1D5C15644);
      v185 = 0;
      ++v182;
    }

    v211 = v259;

    v260[0] = v211;
    v212 = v220;
    sub_1D5C17DC4(v191, v220);
    sub_1D5BE792C(v193, type metadata accessor for FeedHeadline);

    v172 = v230;
    sub_1D5BDAB0C(v212, v230, type metadata accessor for FeedHeadline);
    v210 = 0;
LABEL_68:
    v174 = v231;
    v251(v172, v210, 1, v231);
    v144 = v245;
    v213 = v229;
    v214 = (*(v245 + 48))(v229, 1, v174);
    v175 = v265;
    v176 = v258;
    if (v214 != 1)
    {
      sub_1D69B359C(v213);
    }
  }

  else
  {
    i = 0;
    if (v141)
    {
      goto LABEL_28;
    }

LABEL_27:
    v147 = 1;
    for (i = v141; ; ++i)
    {
      (*v142)(v120, v147, 1, v145);
      sub_1D5C1516C(v120, v121);
      if ((*v143)(v121, 1, v145) == 1)
      {
        swift_bridgeObjectRelease_n();

        v172 = v230;
        (*(v144 + 56))(v230, 1, 1, v231);
        v176 = v258;
        goto LABEL_61;
      }

      v152 = v142;
      v153 = v121;
      v154 = *v121;
      v155 = v242;
      sub_1D5BDAB0C(v153 + *(v145 + 48), v242, type metadata accessor for FeedHeadline);
      if ((*(v155 + 32) & 4) != 0)
      {
        break;
      }

      result = sub_1D5BE792C(v155, type metadata accessor for FeedHeadline);
      v121 = v248;
      v142 = v152;
      if (i == v141)
      {
        goto LABEL_27;
      }

LABEL_28:
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      if (i >= *(v259 + 16))
      {
        goto LABEL_73;
      }

      v148 = v259 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * i;
      v149 = *(v145 + 48);
      v150 = v247;
      *v247 = i;
      sub_1D5BE3ED8(v148, v150 + v149, type metadata accessor for FeedHeadline);
      v151 = v150;
      v120 = v240;
      sub_1D5BDAB0C(v151, v240, sub_1D5C15644);
      v147 = 0;
      v121 = v248;
    }

    v177 = v259;

    v260[0] = v177;
    v178 = v222;
    sub_1D5C17DC4(v154, v222);
    sub_1D5BE792C(v155, type metadata accessor for FeedHeadline);

    v172 = v230;
    sub_1D5BDAB0C(v178, v230, type metadata accessor for FeedHeadline);
    v174 = v231;
    (*(v144 + 56))(v172, 0, 1, v231);
LABEL_57:
    v175 = v265;
LABEL_58:
    v176 = v258;
  }

  if ((*(v144 + 48))(v172, 1, v174) == 1)
  {

LABEL_61:
    sub_1D69B359C(v172);
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v199, "FeedHeadline");
    v199[13] = 0;
    *(v199 + 7) = -5120;
    *(v199 + 2) = 0;
    *(v199 + 3) = 0;
    *(v199 + 2) = xmmword_1D733D120;
    *(v199 + 6) = 0;
    *(v199 + 7) = 0;
    v199[64] = 0;
    swift_willThrow();
    v137 = v176;
    goto LABEL_22;
  }

  v200 = v172;
  v201 = v228;
  result = sub_1D5BDAB0C(v200, v228, type metadata accessor for FeedHeadline);
  v203 = v219;
  if ((*(v201 + 33) & 0x10) == 0)
  {
LABEL_65:
    MEMORY[0x1EEE9AC00](result, v202);
    v216 = v201;
    v204 = sub_1D5BF5F6C(sub_1D5BF619C, v215, v256);
    strcpy(v260, "FeedHeadline");
    BYTE5(v260[1]) = 0;
    HIWORD(v260[1]) = -5120;
    v260[2] = 0;
    v260[3] = 0;
    sub_1D5BDACA8(v260, v204);

    v205 = v201;
    v206 = v226;
    sub_1D5BDAB0C(v205, v226, type metadata accessor for FeedHeadline);
    v207 = type metadata accessor for A12_V9.Bound(0);
    v208 = v227;
    v227[3] = v207;
    v208[4] = sub_1D70FEAE0(&qword_1EC89ACA8, type metadata accessor for A12_V9.Bound, &unk_1D7397094);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v208);
    *boxed_opaque_existential_1 = v203;
    sub_1D5B63F14(&v261, (boxed_opaque_existential_1 + 1));
    sub_1D5BDAB0C(v176, boxed_opaque_existential_1 + *(v207 + 24), type metadata accessor for GroupLayoutContext);
    return sub_1D5BDAB0C(v206, boxed_opaque_existential_1 + *(v207 + 28), type metadata accessor for FeedHeadline);
  }

  if (!__OFADD__(v255, 1))
  {
    *(v175 + v253) = v255 + 1;
    goto LABEL_65;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1D70FDBA0@<X0>(_BYTE *a1@<X8>)
{
  v40 = a1;
  v2 = sub_1D725A36C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *v1;
  v16 = type metadata accessor for A12_V9.Bound(0);
  sub_1D5BE3ED8(v1 + *(v16 + 28), v10, type metadata accessor for FeedHeadline);
  v17 = v1 + *(v16 + 24);
  v18 = type metadata accessor for GroupLayoutContext(0);
  v19 = *(*&v17[v18[10]] + 16);
  v20 = *&v17[v18[8]];
  sub_1D5B68374(v19 + 16, v42);
  sub_1D5B68374(v19 + 56, v46);
  v21 = v20 * *(v19 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v42, inited + 16);
  sub_1D5B63F14(v46, inited + 56);
  *(inited + 96) = v21;
  v45 = 1;

  FeedLayoutStylerFactory.styler(withHeading:)(&v45, v43);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  __swift_destroy_boxed_opaque_existential_1((inited + 56));
  HeadlineViewLayout.Context.init(key:model:styler:)(v15, v10, v43, v14);
  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v2);
  v41 = v14;
  sub_1D70FEC24(0, &qword_1EC89ACC8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();
  sub_1D725A4DC();
  memcpy(v42, v44, sizeof(v42));
  sub_1D5BF662C(0, &qword_1EDF19A30, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7273AE0;
  sub_1D5BE5E28(0);
  v27 = v26;
  v38 = v43[1];
  v39 = v43[0];
  v28 = swift_allocBox();
  v30 = v29;
  v31 = *(v27 + 48);
  v32 = *(v27 + 64);
  sub_1D5BE3ED8(v14, v29, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v30 + v31), v42, 0x130uLL);
  *(v30 + v32) = *&v17[v18[7]];
  *(v25 + 32) = v28 | 0x4000000000000000;
  v33 = v40;
  *v40 = 0;
  v34 = v39;
  *(v33 + 24) = v38;
  *(v33 + 8) = v34;
  *&v46[0] = v25;
  sub_1D5BF662C(0, &qword_1EDF1B4C8, MEMORY[0x1E69E62F8]);
  sub_1D5C184C4();
  sub_1D5BDEFF8();
  v35 = sub_1D72623BC();

  v36 = MEMORY[0x1E69E7CC0];
  *(v33 + 5) = v35;
  *(v33 + 6) = v36;
  return sub_1D5BE792C(v14, type metadata accessor for HeadlineViewLayout.Context);
}

uint64_t sub_1D70FE04C(uint64_t a1, uint64_t a2)
{
  sub_1D70FEE84(0, &qword_1EC89ACE0, sub_1D70FEB30, &type metadata for A12_V9.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 12;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D70FEC24(0, &qword_1EC89ACE8, MEMORY[0x1E69D7150]);
  sub_1D70FEBE0(&qword_1EC89ACF0, &qword_1EC89ACE8, v11, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D70FE238(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  sub_1D70FEE84(0, &qword_1EC89ACE0, sub_1D70FEB30, &type metadata for A12_V9.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v25 - v7);
  v29 = a1;
  v9 = sub_1D725994C();
  v10 = swift_allocBox();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69D6F50], v9);
  *v8 = v10;
  v12 = *MEMORY[0x1E69D73C0];
  v26 = *(v5 + 104);
  v26(v8, v12, v4);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D70FEC24(0, &qword_1EC89ACF8, MEMORY[0x1E69D6F38]);
  v25[1] = v14;
  sub_1D70FEBE0(&qword_1EC89AD00, &qword_1EC89ACF8, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v29 = a1;
  sub_1D60DF7C0(0);
  v17 = v16;
  v18 = swift_allocBox();
  v20 = v19;
  v21 = *(v17 + 48);
  *v19 = 7;
  v22 = *MEMORY[0x1E69D7348];
  v23 = sub_1D725A34C();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  *v8 = v18;
  v26(v8, *MEMORY[0x1E69D73E0], v4);
  v28 = v27;
  sub_1D72599EC();
  return (v15)(v8, v4);
}

uint64_t sub_1D70FE540(uint64_t a1, uint64_t a2)
{
  v22[0] = a2;
  v3 = type metadata accessor for HeadlineViewLayout.Options(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70FEE84(0, &qword_1EC89ACE0, sub_1D70FEB30, &type metadata for A12_V9.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v22 - v12;
  v22[1] = a1;
  swift_getKeyPath();
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7460], v9);
  v14 = v4[7];
  v15 = *MEMORY[0x1E69D7348];
  v16 = sub_1D725A34C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(&v7[v14], v15, v16);
  (*(v17 + 56))(&v7[v14], 0, 1, v16);
  v18 = *MEMORY[0x1E69DDC70];
  *v7 = 1;
  *&v7[v4[8]] = 0;
  *&v7[v4[9]] = v18;
  v19 = v18;
  sub_1D61F750C(v22[0], v7);
  sub_1D5BE792C(v7, type metadata accessor for HeadlineViewLayout.Options);
  v20 = MEMORY[0x1E69D6F38];
  sub_1D70FEC24(0, &qword_1EC89ACF8, MEMORY[0x1E69D6F38]);
  sub_1D70FEBE0(&qword_1EC89AD00, &qword_1EC89ACF8, v20, MEMORY[0x1E69D6F40]);
  sub_1D69B3980();
  sub_1D7259A4C();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D70FE850(uint64_t a1)
{
  sub_1D5BDEE4C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  v4 = *(a1 + 28);
  *(v3 + 56) = type metadata accessor for FeedHeadline(0);
  *(v3 + 64) = sub_1D70FEAE0(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  sub_1D5BE3ED8(v1 + v4, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
  return v3;
}

unint64_t sub_1D70FE93C(uint64_t a1)
{
  *(a1 + 8) = sub_1D70FE96C();
  result = sub_1D70FE9C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D70FE96C()
{
  result = qword_1EC89AC98;
  if (!qword_1EC89AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC98);
  }

  return result;
}

unint64_t sub_1D70FE9C0()
{
  result = qword_1EC89ACA0;
  if (!qword_1EC89ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ACA0);
  }

  return result;
}

uint64_t type metadata accessor for A12_V9.Bound(uint64_t a1)
{
  result = qword_1EC89ACB0;
  if (!qword_1EC89ACB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D70FEA88(uint64_t a1)
{
  result = sub_1D70FEAE0(&qword_1EC89ACC0, type metadata accessor for A12_V9.Bound, &unk_1D739706C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70FEAE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D70FEB30()
{
  result = qword_1EC89ACD0;
  if (!qword_1EC89ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ACD0);
  }

  return result;
}

unint64_t sub_1D70FEB84()
{
  result = qword_1EC89ACD8;
  if (!qword_1EC89ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ACD8);
  }

  return result;
}

uint64_t sub_1D70FEBE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D70FEC24(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D70FEC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V9.Layout;
    v8[1] = &type metadata for A12_V9.Layout.Attributes;
    v8[2] = sub_1D70FEB30();
    v8[3] = sub_1D70FEB84();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D70FECD4()
{
  result = qword_1EC89AD08;
  if (!qword_1EC89AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD08);
  }

  return result;
}

unint64_t sub_1D70FED2C()
{
  result = qword_1EC89AD10;
  if (!qword_1EC89AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD10);
  }

  return result;
}

unint64_t sub_1D70FED84()
{
  result = qword_1EC89AD18;
  if (!qword_1EC89AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD18);
  }

  return result;
}

unint64_t sub_1D70FEDDC()
{
  result = qword_1EC89AD20;
  if (!qword_1EC89AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD20);
  }

  return result;
}

unint64_t sub_1D70FEE30()
{
  result = qword_1EC89AD30;
  if (!qword_1EC89AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD30);
  }

  return result;
}

void sub_1D70FEE84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D70FEF00()
{
  result = qword_1EC89AD40;
  if (!qword_1EC89AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD40);
  }

  return result;
}

unint64_t sub_1D70FEF58()
{
  result = qword_1EC89AD48;
  if (!qword_1EC89AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD48);
  }

  return result;
}

unint64_t sub_1D70FEFB0()
{
  result = qword_1EC89AD50;
  if (!qword_1EC89AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD50);
  }

  return result;
}

uint64_t static FormatCodingArticleOverridesStrategy.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatArticleOverrides(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF28AD0);

  return sub_1D5CE5788(v3, a1);
}

BOOL static FormatCodingArticleOverridesStrategy.shouldEncode(wrappedValue:)(void *a1)
{
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatArticleOverrides(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF28AD0);
  return !_s8NewsFeed22FormatArticleOverridesV2eeoiySbAC_ACtFZ_0(a1, v3);
}

uint64_t sub_1D70FF0F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatArticleOverrides(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF28AD0);

  return sub_1D5CE5788(v3, a1);
}

BOOL sub_1D70FF16C(void *a1)
{
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatArticleOverrides(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF28AD0);
  return !_s8NewsFeed22FormatArticleOverridesV2eeoiySbAC_ACtFZ_0(a1, v3);
}

unint64_t sub_1D70FF1E4(uint64_t a1)
{
  result = sub_1D5E9E7F8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70FF20C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatArticleOverrides(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FormatCustomNodeName.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t FormatCustomNodeName.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v5 = sub_1D72646FC();
    v7 = v6;
    v8 = sub_1D726203C();
    v9 = NSClassFromString(v8);

    if (v9 && (swift_getObjCClassMetadata(), sub_1D5E2B010(), (v10 = swift_dynamicCastMetatype()) != 0))
    {
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v14);
      *a2 = v5;
      a2[1] = v7;
      a2[2] = v11;
    }

    else
    {
      sub_1D5E2D970();
      swift_allocError();
      *v12 = v5;
      v12[1] = v7;
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = 4;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCustomNodeName.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D726473C();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_1D70FF478(void *a1)
{
  a1[1] = sub_1D6702734();
  a1[2] = sub_1D666FFC4();
  result = sub_1D70FF4B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70FF4B0()
{
  result = qword_1EC89AD58;
  if (!qword_1EC89AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD58);
  }

  return result;
}

uint64_t sub_1D70FF51C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D726473C();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t FeedAutomation.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedAutomation.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedAutomation.altIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall FeedAutomation.init(type:identifier:altIdentifier:)(NewsFeed::FeedAutomation *__return_ptr retstr, Swift::String type, Swift::String_optional identifier, Swift::String_optional altIdentifier)
{
  retstr->type = type;
  retstr->identifier = identifier;
  retstr->altIdentifier = altIdentifier;
}

uint64_t sub_1D70FF674()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x746E656449746C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D70FF6D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D70FFDC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D70FF700(uint64_t a1)
{
  v2 = sub_1D70FF928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70FF73C(uint64_t a1)
{
  v2 = sub_1D70FF928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedAutomation.encode(to:)(void *a1)
{
  sub_1D70FFC04(0, &qword_1EC89AD60, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = v1[2];
  v13[3] = v1[3];
  v13[4] = v9;
  v10 = v1[4];
  v13[1] = v1[5];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FF928();
  sub_1D7264B5C();
  v16 = 0;
  v11 = v13[5];
  sub_1D72643FC();
  if (!v11)
  {
    v15 = 1;
    sub_1D726437C();
    v14 = 2;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D70FF928()
{
  result = qword_1EC89AD68;
  if (!qword_1EC89AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD68);
  }

  return result;
}

void FeedAutomation.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D70FFC04(0, &qword_1EC89AD70, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FF928();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v23 = v11;
    v25 = 1;
    v21 = sub_1D726422C();
    v22 = v14;
    v24 = 2;
    v15 = sub_1D726422C();
    v17 = v16;
    v18 = v15;
    (*(v7 + 8))(v10, v6);
    v19 = v22;
    *a2 = v23;
    a2[1] = v13;
    a2[2] = v21;
    a2[3] = v19;
    a2[4] = v18;
    a2[5] = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D70FFC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70FF928();
    v7 = a3(a1, &type metadata for FeedAutomation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D70FFCBC()
{
  result = qword_1EC89AD78;
  if (!qword_1EC89AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD78);
  }

  return result;
}

unint64_t sub_1D70FFD14()
{
  result = qword_1EC89AD80;
  if (!qword_1EC89AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD80);
  }

  return result;
}

unint64_t sub_1D70FFD6C()
{
  result = qword_1EC89AD88;
  if (!qword_1EC89AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD88);
  }

  return result;
}

uint64_t sub_1D70FFDC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656449746C61 && a2 == 0xED00007265696669)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D70FFEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, id *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v58 = a6;
  v59 = a1;
  v60 = a2;
  v63 = a7;
  v12 = type metadata accessor for FeedHeadline(0);
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49960(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v65 = &v57 - v18;
  v62 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v62, v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v57 - v24;
  v26 = v8[14];
  v27 = v8[15];
  __swift_project_boxed_opaque_existential_1(v8 + 11, v26);
  v28 = HeadlineServiceType.cachedHeadline(for:)(a3, a4, v26, v27);
  if (v28)
  {
    v29 = v28;
    v61 = v12;
    sub_1D5D1FEE4(v28, a5, v25);
    sub_1D5D20C8C(v29, a5, &v66);
    v30 = v66;
    v31 = type metadata accessor for FeedContext(0);
    if (*(a5 + *(v31 + 36)) == 1)
    {
      swift_unknownObjectRetain();
      v32 = 1;
    }

    else
    {
      v36 = v31;
      v37 = v25[*(v62 + 32)];
      v38 = *a5;
      swift_unknownObjectRetain();
      v39 = [v38 containsHeadline_];
      v32 = v39;
      if (v39 && !v37)
      {
        v32 = *(a5 + *(v36 + 32));
      }
    }

    swift_getObjectType();
    v40 = v65;
    sub_1D5BC7A6C(v58, v65);
    sub_1D5D20F80(v25, v21);
    v42 = v60;
    v41 = v61;
    *&v15[v61[12]] = xmmword_1D727C330;
    *v15 = v59;
    *(v15 + 1) = v42;
    *(v15 + 5) = v29;
    *(v15 + 6) = v29;
    sub_1D5BC7A6C(v40, &v15[v41[11]]);
    sub_1D5D20F80(v21, &v15[v41[10]]);
    *&v15[v41[14]] = v30;
    v15[56] = v32;
    v43 = v30;
    swift_unknownObjectRetain_n();

    v44 = [v29 title];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 ne_isNaturallyRTL];

      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v48 = v62;
    *(v15 + 2) = v47;
    v15[24] = 0;
    sub_1D5BC7BD4(&v66);
    swift_unknownObjectRelease();
    if (v21[v48[8]] - 1 <= 1 && (v66 & 0x1000) == 0)
    {
      v66 |= 0x1000uLL;
    }

    v49 = v48[10];
    v50 = v66;
    v51 = 0x80000000;
    if (!v21[v49])
    {
      v51 = 0x100000000;
    }

    if ((v66 & v51) != 0)
    {
      v51 = 0;
    }

    v52 = v66 | v51;
    if (v30)
    {

      v52 |= ~v50 & 0x200000;
    }

    *(v15 + 4) = v52;
    v53 = v61;
    if (v21[v48[7]])
    {
      v54 = v63;
      if (v21[v48[9]])
      {
        swift_unknownObjectRelease();
        sub_1D5D21134(v21, type metadata accessor for FeedHeadline.State);
        sub_1D5D2079C(v65, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
        sub_1D5D21134(v25, type metadata accessor for FeedHeadline.State);
        v55 = 1;
      }

      else if (v21[v49] == 1)
      {
        v56 = [v29 sourceChannel];
        swift_unknownObjectRelease();
        sub_1D5D21134(v21, type metadata accessor for FeedHeadline.State);
        sub_1D5D2079C(v65, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
        sub_1D5D21134(v25, type metadata accessor for FeedHeadline.State);
        v55 = 2;
        if (v56)
        {
          v55 = v56;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1D5D21134(v21, type metadata accessor for FeedHeadline.State);
        sub_1D5D2079C(v65, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
        sub_1D5D21134(v25, type metadata accessor for FeedHeadline.State);
        v55 = 2;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1D5D21134(v21, type metadata accessor for FeedHeadline.State);
      sub_1D5D2079C(v65, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      sub_1D5D21134(v25, type metadata accessor for FeedHeadline.State);
      v55 = 0;
      v54 = v63;
    }

    *&v15[v53[13]] = v55;
    sub_1D5BE318C(v15, v54, type metadata accessor for FeedHeadline);
    return (*(v64 + 56))(v54, 0, 1, v53);
  }

  else
  {
    v33 = v63;
    v34 = *(v64 + 56);

    return v34(v33, 1, 1, v12);
  }
}

uint64_t sub_1D7100538()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

unint64_t sub_1D7100598()
{
  result = qword_1EC89AD90;
  if (!qword_1EC89AD90)
  {
    sub_1D5B5A498(255, &qword_1EDF1A9B0, 0x1E69B5190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD90);
  }

  return result;
}

uint64_t _s8NewsFeed29MailShareLinkTextProviderTypePAAE4text3forSSSo19FCHeadlineProviding_p_tF_0(void *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D725811C();

  v11 = v4;
  v5 = [a1 sourceName];
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  v7 = sub_1D726207C();
  v9 = v8;

  MEMORY[0x1DA6F9910](v7, v9);

  MEMORY[0x1DA6F9910](8250, 0xE200000000000000);
  return v11;
}

uint64_t sub_1D7100748()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t MailShareLinkTextProviderType.sharedFromName.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t MailShareLinkTextProviderType.sharedFromURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D72585BC();
  v11 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() nss_MarketingPageURL];
  if (v6)
  {
    v7 = v6;
    sub_1D72584EC();

    (*(v11 + 32))(a1, v5, v2);
    return (*(v11 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v9 = *(v11 + 56);

    return v9(a1, 1, 1, v2);
  }
}

uint64_t sub_1D7100A64@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() nss_MarketingPageURL];
  if (v2)
  {
    v3 = v2;
    sub_1D72584EC();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1D72585BC();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

double sub_1D7100B78@<D0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *v1 & 7;
  v4 = *v1 & 0xFFFFFFFFFFFFFFF8;
  v5 = v4;
  if (v3 == 2)
  {
    v5 = *v1 & 0xFFFFFFFFFFFFFFF8;
  }

  if (!v3)
  {
    v4 = *v1;
  }

  if ((*v1 & 7u) <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  *a1 = v6;
  return sub_1D6086744(v2);
}

void sub_1D7100BB0(uint64_t *a1@<X8>)
{
  v3 = *v1 & 7;
  if ((*v1 & 7u) <= 1)
  {
    if (v3)
    {
      sub_1D6E0CAE0(&v5);
      v4 = v5 | 1;
    }

    else
    {
      sub_1D6E0CAE0(&v5);
      v4 = v5;
    }
  }

  else if (v3 == 2)
  {
    sub_1D6E0CAE0(&v5);
    v4 = v5 | 2;
  }

  else if (v3 == 3)
  {
    sub_1D6E0CAE0(&v5);
    v4 = v5 | 3;
  }

  else
  {
    sub_1D6E0CAE0(&v5);
    v4 = v5 | 4;
  }

  *a1 = v4;
}

uint64_t _s8NewsFeed11FormatShineO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 & 0xFFFFFFFFFFFFFFF8;
  v5 = v2 & 0xFFFFFFFFFFFFFFF8;
  if ((v2 & 7) == 2)
  {
    v5 = v2 & 0xFFFFFFFFFFFFFFF8;
  }

  if ((v2 & 7) == 0)
  {
    v4 = v2;
  }

  if ((v2 & 7) <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = *a2 & 7;
  v8 = v3 & 0xFFFFFFFFFFFFFFF8;
  v9 = v3 & 0xFFFFFFFFFFFFFFF8;
  if (v7 == 2)
  {
    v9 = v3 & 0xFFFFFFFFFFFFFFF8;
  }

  if (!v7)
  {
    v8 = *a2;
  }

  if ((*a2 & 7u) <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v13 = v10;
  v14 = v6;
  sub_1D6086744(v2);
  sub_1D6086744(v3);
  v11 = static FormatColor.== infix(_:_:)(&v14, &v13);

  return v11 & 1;
}

unint64_t sub_1D7100D48(uint64_t a1)
{
  result = sub_1D7100D70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7100D70()
{
  result = qword_1EC89AD98;
  if (!qword_1EC89AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD98);
  }

  return result;
}

unint64_t sub_1D7100DC4(void *a1)
{
  a1[1] = sub_1D5C49CDC();
  a1[2] = sub_1D5D44F04();
  result = sub_1D7100DFC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7100DFC()
{
  result = qword_1EC89ADA0;
  if (!qword_1EC89ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ADA0);
  }

  return result;
}

void *sub_1D7100E88(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if ((~*a2 & 7) != 0)
  {
    v10 = v2 & 7;
    if (v10 > 1)
    {
      v11 = v2 & 0xFFFFFFFFFFFFFFF8;
      if (v10 == 2)
      {
        v29 = MEMORY[0x1E69E6F90];
        sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        v50 = inited + 32;
        sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v29);
        sub_1D5EA74B8(0);
        v31 = *(*(v30 - 8) + 72);
        v32 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1D7270C10;
        v33 = v16 + v32;
        v34 = 0x206D75696D657250;
        v35 = 0xED00006567646142;
        v36 = (v16 + v32);
      }

      else
      {
        if (v10 == 3)
        {
          v12 = MEMORY[0x1E69E6F90];
          sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D7273AE0;
          v50 = inited + 32;
          sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v12);
          sub_1D5EA74B8(0);
          v14 = *(*(v13 - 8) + 72);
          v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_1D7270C10;
          v17 = v16 + v15;
          v18 = 0x80000001D73FE000;
          v19 = (v16 + v15);
          v20 = 0xD000000000000012;
LABEL_13:
          sub_1D711F844(1701869908, 0xE400000000000000, v20, v18, v19);
          v25 = type metadata accessor for FormatInspectionItem(0);
          v26 = *(*(v25 - 8) + 56);
          v26(v17, 0, 1, v25);
          v27 = v17 + v14;
          goto LABEL_14;
        }

        v37 = MEMORY[0x1E69E6F90];
        sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        v50 = inited + 32;
        sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v37);
        sub_1D5EA74B8(0);
        v31 = *(*(v38 - 8) + 72);
        v39 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1D7270C10;
        v33 = v16 + v39;
        v34 = 0x70756F7247;
        v36 = (v16 + v39);
        v35 = 0xE500000000000000;
      }

      sub_1D711F844(1701869908, 0xE400000000000000, v34, v35, v36);
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v33, 0, 1, v25);
      v27 = v33 + v31;
LABEL_14:
      v28 = *(v25 + 24);
      *(v27 + v28) = v11;
      goto LABEL_15;
    }

    if ((v2 & 7) == 0)
    {
      v21 = MEMORY[0x1E69E6F90];
      sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v50 = inited + 32;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v21);
      sub_1D5EA74B8(0);
      v23 = *(*(v22 - 8) + 72);
      v24 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7270C10;
      sub_1D711F844(1701869908, 0xE400000000000000, 1685217603, 0xE400000000000000, (v16 + v24));
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v16 + v24, 0, 1, v25);
      v27 = v16 + v24 + v23;
      v28 = *(v25 + 24);
      *(v27 + v28) = v2;
LABEL_15:
      v43 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      v44 = v27 + v28;
      v5 = v50;
      (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
      *v27 = xmmword_1D72EBCC0;
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      v45 = v27 + *(v25 + 28);
      *v45 = 0;
      *(v45 + 8) = 0;
      *(v45 + 16) = -1;
      v26(v27, 0, 1, v25);
      sub_1D6086744(v2);
      sub_1D6795150(0xD000000000000012, 0x80000001D73E40B0, 0, 0, v16, v51);
      swift_setDeallocating();
      swift_arrayDestroy();
      goto LABEL_16;
    }

    v11 = v2 & 0xFFFFFFFFFFFFFFF8;
    v40 = MEMORY[0x1E69E6F90];
    sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v50 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v40);
    sub_1D5EA74B8(0);
    v14 = *(*(v41 - 8) + 72);
    v42 = (*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7270C10;
    v17 = v16 + v42;
    v20 = 0x656C746954;
    v19 = (v16 + v42);
    v18 = 0xE500000000000000;
    goto LABEL_13;
  }

  v3 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v5 = inited + 32;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v3);
  sub_1D5EA74B8(0);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7273AE0;
  sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v8 + v7));
  v9 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v9 - 8) + 56))(v8 + v7, 0, 1, v9);
  sub_1D6795150(0xD000000000000012, 0x80000001D73E40B0, 0, 0, v8, v51);
  swift_setDeallocating();
  sub_1D5EF5F0C(v8 + v7, sub_1D5EA74B8);
LABEL_16:
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v46 = swift_allocObject();
  *(inited + 32) = v46;
  *(v46 + 48) = v52;
  v47 = v51[1];
  *(v46 + 16) = v51[0];
  *(v46 + 32) = v47;
  v48 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v5, sub_1D5E4F358);
  return v48;
}

BOOL sub_1D7101920(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 12)
  {
    return a2 & 1;
  }

  if (a4 == 13)
  {
    a2 ^= 1u;
    return a2 & 1;
  }

  if (a2)
  {
    return 0;
  }

  v8 = off_1F51B94D0[0];
  type metadata accessor for FormatNodeBinderContext(0);
  v9 = v8();
  FormatFloat.value(contextLayoutOptions:)(v9);
  v11 = v10;

  if (!v4)
  {
    if (a4 > 5u)
    {
      if (a4 <= 8u)
      {
        if (a4 != 6)
        {
          if (a4 != 7)
          {
            return v11 > *&a1;
          }

          return v11 != *&a1;
        }

        return v11 == *&a1;
      }

      if (a4 != 9)
      {
        if (a4 != 10)
        {
          return v11 <= *&a1;
        }

        return v11 < *&a1;
      }
    }

    else
    {
      if (a4 <= 2u)
      {
        if (a4)
        {
          if (a4 != 1)
          {
            return v11 > *&a1;
          }

          return v11 != *&a1;
        }

        return v11 == *&a1;
      }

      if (a4 != 3)
      {
        if (a4 != 4)
        {
          return v11 <= *&a1;
        }

        return v11 < *&a1;
      }
    }

    return v11 >= *&a1;
  }

  return v12;
}

void sub_1D7101AA0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v56 = a2;
  v54 = a1;
  sub_1D5B7B7A4(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v50 - v7;
  sub_1D5B7B7A4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v50 - v11;
  v13 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  v20 = v3[1];
  v21 = *(v3 + 2) | (*(v3 + 3) << 32);
  v22 = *(v3 + 4);
  v23 = v3[10];
  v24 = *(v3 + 11) | (v3[15] << 32);
  v25 = *(v3 + 2);
  v26 = *(v3 + 3);
  v27 = v3[106];
  v28 = *(v3 + 52);
  v29 = (v27 >> 1) & 8 | (v28 >> 13);
  if (v29 <= 3)
  {
    if (v29 <= 1)
    {
      if (!v29)
      {
        v32 = *MEMORY[0x1E69D6B30];
        v33 = sub_1D725BC7C();
        (*(*(v33 - 8) + 104))(v55, v32, v33);
        return;
      }

      v36 = *(v3 + 8);
      v37 = *(v3 + 9);
      v38 = *(v3 + 11);
      v50 = *(v3 + 10);
      v51 = v38;
      v52 = *(v3 + 12);
      v39 = v28 | (v27 << 16);
      v40 = *(v3 + 6);
      v41 = *(v3 + 7);
      v77 = v39 & 0xFFEF1FFF;
      v65 = v19;
      v66 = v20;
      v67 = v21;
      v68 = WORD2(v21);
      v69 = v22;
      v70 = v23;
      v71 = v24;
      v72 = BYTE4(v24);
      v73 = v25;
      v74 = v26;
      v75 = *(v3 + 2);
      v76 = v40;
      v42 = sub_1D688F2A4(v56, 0);
      if (v4)
      {

        v53 = 0;
        v54 = 0xE000000000000000;
      }

      else
      {
        v53 = v42;
        v54 = v43;
      }

      v57 = v41;
      v58 = v36;
      v47 = v50;
      v46 = v51;
      v59 = v37;
      v60 = v50;
      v48 = v52;
      v61 = v51;
      v62 = v52;
      v49 = v77;
      v63 = v77;
      v64 = BYTE2(v77);
      sub_1D5CA8444(v41, v36, v37, v50, v51, v52, v77);
      LODWORD(v56) = sub_1D6DD2414(v56, v53, v54);

      sub_1D5CA8488(v41, v36, v37, v47, v46, v48, v49);
      goto LABEL_27;
    }

    if (v29 != 2)
    {
      v78 = v19 & 1;
      v79 = v20 & 1;
      sub_1D71EDE90(v54, v56);
      return;
    }

    sub_1D7248E0C(v56, v19 | (v20 << 8) | (v21 << 16), *(v3 + 4));
    if (!v4)
    {
      goto LABEL_27;
    }

LABEL_26:
    sub_1D725BC1C();

    return;
  }

  if (v29 > 5)
  {
    if (v29 == 6)
    {
      v34 = *(v3 + 2);
      v35 = v56;
      sub_1D6F4132C(v56, v19 | (v20 << 8) | (v21 << 16), v8);
      if (!v4)
      {
        sub_1D6F45178(v8, v35, v22 | (v23 << 16) | (v24 << 24), v34);
        sub_1D725BC1C();
        sub_1D5B87C28(v8, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        return;
      }
    }

    else
    {
      v30 = v56;
      if (v29 != 7)
      {
        v78 = *v3;
        sub_1D5F947E4(v54, v56);
        return;
      }

      sub_1D6D2E854(v56, v19);
      if (!v4)
      {
        sub_1D7101920(v31, 0, v30, v22);
LABEL_27:
        sub_1D725BC1C();
        return;
      }
    }

    goto LABEL_26;
  }

  if (v29 == 4)
  {
    v78 = v19 & 1;
    sub_1D6EEC660(v54, v56);
    return;
  }

  v44 = v16;
  v45 = v15;
  sub_1D6D4D54C(v56, v19 | (v20 << 8) | (v21 << 16), v22 | (v23 << 16) | (v24 << 24), v25, v26, v18);
  if (v4)
  {
    goto LABEL_26;
  }

  v78 = BYTE1(v26);
  (*(v44 + 16))(v12, v18, v45);
  (*(v44 + 56))(v12, 0, 1, v45);
  sub_1D705A638(v12);
  sub_1D5B87C28(v12, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D725BC1C();
  (*(v44 + 8))(v18, v45);
}

uint64_t _s8NewsFeed23FormatBindingExpressionO2eeoiySbAC_ACtFZ_0(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  v5 = a1[5];
  v62 = a1[4];
  *v63 = v5;
  *&v63[11] = *(a1 + 91);
  v6 = a1[1];
  v58 = *a1;
  v59 = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v60 = a1[2];
  v61 = v7;
  v10 = a2[1];
  *v64 = *a2;
  *&v64[16] = v10;
  *&v68[11] = *(a2 + 91);
  v11 = a2[3];
  v12 = a2[5];
  v67 = a2[4];
  *v68 = v12;
  v13 = a2[3];
  v14 = *a2;
  v15 = a2[1];
  v65 = a2[2];
  v66 = v13;
  v69[0] = v9;
  v69[1] = v8;
  *(v70 + 11) = *(a1 + 91);
  v16 = a1[5];
  v69[4] = v62;
  v70[0] = v16;
  v69[2] = v60;
  v69[3] = v4;
  v70[2] = v14;
  v70[3] = v15;
  *(v71 + 11) = *(a2 + 91);
  v17 = *(a2 + 5);
  v70[6] = v67;
  v71[0] = v17;
  v70[4] = v65;
  v70[5] = v11;
  v18 = *(&v58 + 2) | (WORD3(v58) << 32);
  v19 = *(&v58 + 11) | (HIBYTE(v58) << 32);
  v20 = BYTE10(v58);
  v21 = (v63[26] >> 1) & 8 | (*&v63[24] >> 13);
  v22 = (v68[26] >> 1) & 8 | (*&v68[24] >> 13);
  v23 = WORD4(v59);
  if (v21 > 3)
  {
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        if (v22 == 6)
        {
          LOWORD(v43) = v58;
          *(&v43 + 2) = *(&v58 + 2);
          WORD3(v43) = WORD2(v18);
          WORD4(v43) = WORD4(v58);
          BYTE10(v43) = BYTE10(v58);
          *(&v43 + 11) = *(&v58 + 11);
          HIBYTE(v43) = BYTE4(v19);
          *&v44 = v59;
          *v40 = *v64;
          *&v40[16] = *&v64[16];
          sub_1D62B48E4(&v58, &v52);
          sub_1D62B48E4(v64, &v52);
          sub_1D62B48E4(&v58, &v52);
          sub_1D62B48E4(v64, &v52);
          v24 = _s8NewsFeed31FormatBindingDateTimeExpressionV2eeoiySbAC_ACtFZ_0(&v43, v40);
          goto LABEL_21;
        }

        sub_1D5F33D5C(v58);
        sub_1D620757C(SBYTE8(v58), v59);
      }

      else if (v21 == 7)
      {
        if (v22 == 7)
        {
          LOBYTE(v43) = v58;
          WORD4(v43) = WORD4(v58);
          BYTE10(v43) = BYTE10(v58);
          *(&v43 + 11) = *(&v58 + 11);
          HIBYTE(v43) = BYTE4(v19);
          *&v44 = v59;
          v40[0] = v64[0];
          *&v40[8] = *&v64[8];
          sub_1D62B48E4(&v58, &v52);
          sub_1D62B48E4(v64, &v52);
          sub_1D62B48E4(&v58, &v52);
          sub_1D62B48E4(v64, &v52);
          v24 = _s8NewsFeed28FormatBindingFloatExpressionV2eeoiySbAC_ACtFZ_0(&v43, v40);
LABEL_21:
          v27 = v24;
          sub_1D71029B4(v69);
          sub_1D62B4940(v64);
          sub_1D62B4940(&v58);
          return v27 & 1;
        }

        sub_1D62B50D4(SBYTE8(v58));
      }

      else if (v22 == 8)
      {
        sub_1D71029B4(v69);
        v27 = v58 == v64[0];
        return v27 & 1;
      }

      goto LABEL_34;
    }

    if (v21 == 4)
    {
      if (v22 == 4)
      {
        sub_1D71029B4(v69);
        v27 = v58 ^ v64[0] ^ 1;
        return v27 & 1;
      }

      goto LABEL_34;
    }

    if (v22 != 5)
    {
      sub_1D5D27950(v58, *(&v58 + 1), v59, SBYTE8(v59));
      goto LABEL_34;
    }

    v28 = *&v64[24];
    LOWORD(v43) = v58;
    *(&v43 + 2) = *(&v58 + 2);
    WORD3(v43) = WORD2(v18);
    WORD4(v43) = WORD4(v58);
    BYTE10(v43) = BYTE10(v58);
    *(&v43 + 11) = *(&v58 + 11);
    HIBYTE(v43) = BYTE4(v19);
    *&v44 = v59;
    BYTE8(v44) = BYTE8(v59);
    *v40 = *v64;
    *&v40[16] = *&v64[16];
    v40[24] = v64[24];
    sub_1D62B48E4(v64, &v52);
    sub_1D62B48E4(&v58, &v52);
    sub_1D62B48E4(&v58, &v52);
    sub_1D62B48E4(v64, &v52);
    sub_1D62B48E4(&v58, &v52);
    sub_1D62B48E4(v64, &v52);
    v29 = _s8NewsFeed16FormatURLBindingO2eeoiySbAC_ACtFZ_0(&v43, v40);
    sub_1D5D28C84(*v40, *&v40[8], *&v40[16], v40[24]);
    sub_1D5D28C84(v43, *(&v43 + 1), v44, SBYTE8(v44));
    sub_1D71029B4(v69);
    sub_1D62B4940(v64);
    sub_1D62B4940(&v58);
    if (!v29 || ((v28 ^ v23) & 0xFF00) != 0)
    {
      goto LABEL_35;
    }

LABEL_39:
    v27 = 1;
    return v27 & 1;
  }

  if (v21 <= 1)
  {
    v25 = BYTE9(v60);
    if (v21)
    {
      if (v22 == 1)
      {
        LOWORD(v52) = v58;
        *(&v52 + 2) = *(&v58 + 2);
        WORD3(v52) = WORD2(v18);
        WORD4(v52) = WORD4(v58);
        BYTE10(v52) = BYTE10(v58);
        *(&v52 + 11) = *(&v58 + 11);
        HIBYTE(v52) = BYTE4(v19);
        v53 = v59;
        v54 = v60;
        v55 = v61;
        v56 = v62;
        *v57 = *v63;
        *&v57[16] = *&v63[16];
        *&v57[24] = *&v63[24] & 0x1FFF;
        v57[26] = ((*&v63[24] | (v63[26] << 16)) & 0xEF1FFFu) >> 16;
        v43 = *v64;
        v44 = *&v64[16];
        v45 = v65;
        v46 = v66;
        v47 = v67;
        v48 = *v68;
        v49 = *&v68[16];
        v51 = ((*&v68[24] | (v68[26] << 16)) & 0xEF1FFFu) >> 16;
        v50 = *&v68[24] & 0x1FFF;
        sub_1D62B48E4(&v58, v40);
        sub_1D62B48E4(v64, v40);
        sub_1D62B48E4(&v58, v40);
        sub_1D62B48E4(v64, v40);
        v24 = _s8NewsFeed27FormatBindingTextExpressionV2eeoiySbAC_ACtFZ_0(&v52, &v43);
        goto LABEL_21;
      }

      *&v57[11] = *(a1 + 91);
      v30 = a1[5];
      v56 = a1[4];
      *v57 = v30;
      v31 = a1[1];
      v52 = *a1;
      v53 = v31;
      v32 = a1[3];
      v54 = a1[2];
      v55 = v32;
      v33 = (*&v57[24] | (v57[26] << 16)) & 0xEF1FFF;
      *&v57[24] &= 0x1FFFu;
      v57[26] = BYTE2(v33);
      sub_1D7102A6C(&v52, &v43);
      goto LABEL_34;
    }

    if (v22)
    {
      sub_1D62B4B68(v58, *(&v58 + 1), v59, *(&v59 + 1), v60, BYTE8(v60), v17);
      goto LABEL_34;
    }

    v35 = BYTE9(v65);
    LOWORD(v43) = v58;
    *(&v43 + 2) = *(&v58 + 2);
    WORD3(v43) = WORD2(v18);
    WORD4(v43) = WORD4(v58);
    BYTE10(v43) = BYTE10(v58);
    *(&v43 + 11) = *(&v58 + 11);
    HIBYTE(v43) = BYTE4(v19);
    v44 = v59;
    *&v45 = v60;
    BYTE8(v45) = BYTE8(v60);
    *v40 = *v64;
    *&v40[16] = *&v64[16];
    v41 = v65;
    v42 = BYTE8(v65);
    sub_1D62B48E4(v64, &v52);
    sub_1D62B48E4(&v58, &v52);
    sub_1D62B48E4(&v58, &v52);
    sub_1D62B48E4(v64, &v52);
    sub_1D62B48E4(&v58, &v52);
    sub_1D62B48E4(v64, &v52);
    v37 = _s8NewsFeed22FormatImageNodeBindingO2eeoiySbAC_ACtFZ_0(&v43, v40, v36);
    v39.n128_f64[0] = sub_1D62B4C5C(*v40, *&v40[8], *&v40[16], *&v40[24], v41, v42, v38);
    sub_1D62B4C5C(v43, *(&v43 + 1), v44, *(&v44 + 1), v45, BYTE8(v45), v39);
    sub_1D71029B4(v69);
    sub_1D62B4940(v64);
    sub_1D62B4940(&v58);
    if (!v37 || ((v25 ^ v35) & 1) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  if (v21 != 2)
  {
    if (v22 == 3)
    {
      sub_1D71029B4(v69);
      v27 = (v58 ^ v64[0] | BYTE1(v58) ^ v64[1]) ^ 1;
      return v27 & 1;
    }

    goto LABEL_34;
  }

  if (v22 != 2)
  {
LABEL_34:
    sub_1D62B48E4(v64, &v52);
    sub_1D71029B4(v69);
LABEL_35:
    v27 = 0;
    return v27 & 1;
  }

  v26 = v64[10];
  sub_1D71029B4(v69);
  LOWORD(v52) = v58;
  WORD3(v52) = WORD2(v18);
  *(&v52 + 2) = *(&v58 + 2);
  WORD4(v52) = WORD4(v58);
  *&v43 = *v64;
  WORD4(v43) = *&v64[8];
  v27 = _s8NewsFeed17FormatBoolBindingO2eeoiySbAC_ACtFZ_0(&v52, &v43) & (v20 ^ v26 ^ 1);
  return v27 & 1;
}

unint64_t sub_1D7102814(uint64_t a1)
{
  result = sub_1D710283C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D710283C()
{
  result = qword_1EC89ADA8;
  if (!qword_1EC89ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ADA8);
  }

  return result;
}

unint64_t sub_1D7102890(void *a1)
{
  a1[1] = sub_1D5C96924();
  a1[2] = sub_1D66FEB18();
  result = sub_1D71028C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D71028C8()
{
  result = qword_1EC89ADB0;
  if (!qword_1EC89ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ADB0);
  }

  return result;
}

uint64_t sub_1D7102934(uint64_t a1)
{
  v2 = *(a1 + 104);
  result = a1 + 104;
  v3 = (v2 | (*(result + 2) << 16)) & 0xEF1FFF;
  *result = v2 & 0x1FFF;
  *(result + 2) = BYTE2(v3);
  return result;
}

uint64_t sub_1D710295C(uint64_t a1, int a2)
{
  v3 = *(a1 + 104);
  result = a1 + 104;
  v4 = ((a2 << 17) | ((a2 & 7) << 13)) & 0x10E000 | (v3 | (*(result + 2) << 16)) & 0xEF07FF;
  *(result - 56) &= 0x7FFuLL;
  *result = v4;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_1D71029B4(uint64_t a1)
{
  sub_1D7102A10();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7102A10()
{
  if (!qword_1EC89ADB8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC89ADB8);
    }
  }
}

uint64_t sub_1D7102ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v20[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6D4D5A4(a1, a2, a3, a4, a5, v18);
  v20[7] = BYTE1(a5);
  (*(v15 + 16))(v13, v18, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  LOBYTE(a5) = sub_1D705A638(v13);
  sub_1D5E3E404(v13);
  (*(v15 + 8))(v18, v14);
  return a5 & 1;
}

uint64_t _s8NewsFeed26FormatBindingURLExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 25);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 25);
  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  v16 = *a1;
  v17 = v2;
  v18 = v3;
  v19 = v9;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v10;
  sub_1D5D27950(v16, v2, v3, v9);
  sub_1D5D27950(v5, v6, v7, v10);
  LOBYTE(v5) = _s8NewsFeed16FormatURLBindingO2eeoiySbAC_ACtFZ_0(&v16, &v12);
  sub_1D5D28C84(v12, v13, v14, v15);
  sub_1D5D28C84(v16, v17, v18, v19);
  return v5 & (v4 == v8);
}

unint64_t sub_1D7102D94(uint64_t a1)
{
  result = sub_1D7102DBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7102DBC()
{
  result = qword_1EC89ADC0;
  if (!qword_1EC89ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ADC0);
  }

  return result;
}

unint64_t sub_1D7102E10(void *a1)
{
  a1[1] = sub_1D6677CEC();
  a1[2] = sub_1D6701144();
  result = sub_1D7102E48();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7102E48()
{
  result = qword_1EC89ADC8;
  if (!qword_1EC89ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ADC8);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1D7102EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 26))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D7102EF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 3;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed011DebugFormatB14ViewDescriptorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7102F6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1D7102FB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7103038@<X0>(void *a1@<X8>)
{
  sub_1D7105C6C(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7105F34(0, &qword_1EC89AEA0, sub_1D71061C4, sub_1D7105C6C, MEMORY[0x1E697F948]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v60 - v11;
  sub_1D71061C4(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v60 - v20;
  v22 = *(v1 + 48);
  v23 = *(v1 + 16);
  v66 = *(v1 + 32);
  v67 = v22;
  v24 = *(v1 + 48);
  v68 = *(v1 + 64);
  v25 = *(v1 + 16);
  *v65 = *v1;
  *&v65[16] = v25;
  v63[2] = v66;
  v26 = *(v1 + 64);
  v63[3] = v24;
  v63[4] = v26;
  v69 = *(v1 + 80);
  v64 = *(v1 + 80);
  v63[0] = *v65;
  v63[1] = v23;
  v27 = sub_1D7103688();
  if (v27)
  {
    v28 = v27;
    v60 = v9;
    v61 = a1;
    if (v67 == 255 || (v67 & 1) == 0)
    {
      v29 = 0xE400000000000000;
      v30 = 1684366662;
    }

    else
    {
      v29 = 0xEC0000006E6F6974;
      v30 = 0x6365532064656546;
    }

    v31 = *v65;
    v32 = v17 + *(v14 + 48);
    LOBYTE(v70) = 0;

    sub_1D72618EC();
    v33 = *(&v63[0] + 1);
    *v32 = v63[0];
    *(v32 + 1) = v33;
    *v17 = v31;
    v17[1] = v30;
    v17[2] = v29;
    v17[3] = v28;
    v34 = v17 + *(v14 + 44);
    *v34 = sub_1D72611CC();
    *(v34 + 1) = 0;
    v34[16] = 1;
    sub_1D71063E8(0);
    sub_1D7103A5C(v65, &v34[*(v35 + 44)], v36);
    sub_1D7105D0C(0);
    v34[*(v37 + 36)] = 0;
    v70 = *&v65[8];
    v38 = *&v65[24];
    v39 = swift_allocObject();
    v40 = v67;
    *(v39 + 48) = v66;
    *(v39 + 64) = v40;
    *(v39 + 80) = v68;
    *(v39 + 96) = v69;
    v41 = *&v65[16];
    *(v39 + 16) = *v65;
    *(v39 + 32) = v41;
    v42 = &v34[*(v4 + 36)];
    sub_1D710615C(0, &unk_1EC89AE90, sub_1D7033954, &type metadata for FormatWorkspaceFeed, MEMORY[0x1E697C518]);
    v44 = v43;
    sub_1D68C4644(v65, v63);
    sub_1D726291C();
    v45 = &v42[*(v44 + 40)];
    v63[0] = v70;
    v71[0] = v38;
    *v45 = v70;
    *(v45 + 2) = v38;
    *v42 = &unk_1D739BC50;
    *(v42 + 1) = v39;
    sub_1D7106658(v17, v21);
    sub_1D7107364(v21, v12, sub_1D71061C4);
    swift_storeEnumTagMultiPayload();
    sub_1D5E422A8(v63, v62);
    sub_1D7106530(v71, v62);
    sub_1D7106000(&qword_1EC89AEE8, sub_1D71061C4, &unk_1D731F2D0);
    sub_1D7106228();
    sub_1D726135C();
    v46 = sub_1D71061C4;
    v47 = v21;
  }

  else
  {
    *v7 = sub_1D72611CC();
    *(v7 + 1) = 0;
    v7[16] = 1;
    sub_1D71063E8(0);
    sub_1D7103A5C(v65, &v7[*(v48 + 44)], v49);
    sub_1D7105D0C(0);
    v7[*(v50 + 36)] = 0;
    v70 = *&v65[8];
    v51 = *&v65[24];
    v52 = swift_allocObject();
    v53 = v67;
    *(v52 + 48) = v66;
    *(v52 + 64) = v53;
    *(v52 + 80) = v68;
    *(v52 + 96) = v69;
    v54 = *&v65[16];
    *(v52 + 16) = *v65;
    *(v52 + 32) = v54;
    v55 = &v7[*(v4 + 36)];
    sub_1D710615C(0, &unk_1EC89AE90, sub_1D7033954, &type metadata for FormatWorkspaceFeed, MEMORY[0x1E697C518]);
    v57 = v56;
    v61 = v4;
    sub_1D68C4644(v65, v63);
    sub_1D726291C();
    v58 = &v55[*(v57 + 40)];
    v63[0] = v70;
    v71[0] = v51;
    *v58 = v70;
    *(v58 + 2) = v51;
    *v55 = &unk_1D739BC48;
    *(v55 + 1) = v52;
    sub_1D7107364(v7, v12, sub_1D7105C6C);
    swift_storeEnumTagMultiPayload();
    sub_1D5E422A8(v63, v62);
    sub_1D7106530(v71, v62);
    sub_1D7106000(&qword_1EC89AEE8, sub_1D71061C4, &unk_1D731F2D0);
    sub_1D7106228();
    sub_1D726135C();
    v46 = sub_1D7105C6C;
    v47 = v7;
  }

  return sub_1D71066BC(v47, v46);
}

void *sub_1D7103688()
{
  v1 = *(v0 + 48);
  if (v1 == 255)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = v2;

    v5 = [objc_msgSend(v3 backingTag];
    swift_unknownObjectRelease();
    if (v5)
    {
      v20 = v30;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v16 = v26;
      v17 = v27;
      v18 = v28;
      v19 = v29;
      v14 = v24;
      v15 = v25;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v7 = sub_1D6A5AE4C(&v14, v5, MEMORY[0x1E69E7CC0], ObjectType);

      swift_unknownObjectRelease_n();
    }

    else
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D7106000(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      v12 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v7 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v8 = *(v0 + 40);
    sub_1D71073CC(*(v0 + 32), v8, *(v0 + 48));

    sub_1D6A9DF10(v9, &v24, 0.0, 0.0, 22.0, 22.0);
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v16 = v26;
    v17 = v27;
    v18 = v28;
    v19 = v29;
    v14 = v24;
    v15 = v25;
    sub_1D7106784(v2, v8, 0);
    v10 = FCFeedDescriptor.feedTag.getter();
    sub_1D71067D0(v2, v8, v1);
    v11 = swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = sub_1D6A5AE4C(&v14, v10, MEMORY[0x1E69E7CC0], v11);
    swift_unknownObjectRelease();
    sub_1D71067D0(v2, v8, v1);
    swift_unknownObjectRelease();
  }

  sub_1D6202060(&v24);
  return v7;
}

unint64_t sub_1D7103940()
{
  v1 = *(v0 + 48);
  if (v1 == 255)
  {
    v6 = *(v0 + 24);
    if (v6)
    {
      v5 = *(v6 + 32);
    }

    else
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);

      v9._countAndFlagsBits = v7;
      v9._object = v8;
      FeedKind.init(rawValue:)(v9);
      return FeedKind.description.getter();
    }
  }

  else
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    if (v1)
    {
      sub_1D7106784(v3, v2, 1);

      v4 = [v2 name];
      v5 = sub_1D726207C();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7106784(v3, v2, 0);
      v5 = FCFeedDescriptor.feedTitle.getter();
      sub_1D71067D0(v3, v2, v1);
    }
  }

  return v5;
}

uint64_t sub_1D7103A5C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v96 = a2;
  v4 = MEMORY[0x1E697F948];
  sub_1D7105F34(0, &qword_1EC89AF08, sub_1D6BB29B0, sub_1D5F257F0, MEMORY[0x1E697F948]);
  v89 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v91 = (&v83 - v7);
  sub_1D6BB29B0(0);
  v90 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v84 = (&v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7105FB8(0);
  v93 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v92 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7105F34(0, &qword_1EC89AF10, sub_1D7105FB8, sub_1D672B3A4, v4);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v83 - v17;
  sub_1D672B3A4();
  v20 = v19;
  v21 = *(v19 - 8);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7105EEC(0, v23);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v95 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v83 - v31;
  v33 = a1;
  v109 = *(a1 + 56);
  sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  sub_1D72618FC();
  v94 = a1;
  if (v107[0])
  {
    v34 = v107[0];
    v87 = v18;
    v88 = v15;
    v85 = v32;
    v86 = v20;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);

    v37._countAndFlagsBits = v35;
    v37._object = v36;
    FeedKind.init(rawValue:)(v37);
    v38 = v109;
    if (v109 == 30)
    {
      v38 = 0;
    }

    LOBYTE(v109) = v38;
    v39 = sub_1D692F84C();
    if (v39)
    {

      v40 = v34;
      v41 = v34;
      v42 = sub_1D72618BC();
      v43 = sub_1D726188C();
      KeyPath = swift_getKeyPath();
      v45 = v91;
      *v91 = v42;
      v45[1] = KeyPath;
      v45[2] = v43;
      swift_storeEnumTagMultiPayload();
      sub_1D5F257F0(0);
      sub_1D7106868();
      sub_1D61ABEFC();
      v46 = v92;
      sub_1D726135C();
    }

    else
    {
      v47 = v34;
      v48 = v34;
      v49 = sub_1D72618BC();
      sub_1D6BB2A58(0);
      v51 = v84;
      v52 = v84 + *(v50 + 36);
      v53 = *(sub_1D726106C() + 20);
      v54 = *MEMORY[0x1E697F468];
      v55 = sub_1D726123C();
      (*(*(v55 - 8) + 104))(&v52[v53], v54, v55);
      __asm { FMOV            V0.2D, #4.0 }

      *v52 = _Q0;
      sub_1D6BB2A94(0);
      *&v52[*(v61 + 36)] = 256;
      *v51 = v49;
      v62 = sub_1D7261A5C();
      v64 = v63;
      v65 = v51 + *(v90 + 36);
      sub_1D7104310(v33, v65);
      sub_1D6BB2AB4(0);
      v67 = (v65 + *(v66 + 36));
      *v67 = v62;
      v67[1] = v64;
      sub_1D7107364(v51, v91, sub_1D6BB29B0);
      swift_storeEnumTagMultiPayload();
      sub_1D5F257F0(0);
      sub_1D7106868();
      sub_1D61ABEFC();
      v46 = v92;
      sub_1D726135C();
      v68 = v51;
      v40 = v47;
      sub_1D71066BC(v68, sub_1D6BB29B0);
    }

    sub_1D7107364(v46, v87, sub_1D7105FB8);
    swift_storeEnumTagMultiPayload();
    sub_1D71067E8();
    sub_1D7106000(&qword_1EC89AF50, sub_1D672B3A4, MEMORY[0x1E697BF38]);
    v32 = v85;
    sub_1D726135C();

    sub_1D71066BC(v46, sub_1D7105FB8);
  }

  else
  {
    sub_1D7260EBC();
    (*(v21 + 16))(v18, v25, v20);
    swift_storeEnumTagMultiPayload();
    sub_1D71067E8();
    sub_1D7106000(&qword_1EC89AF50, sub_1D672B3A4, MEMORY[0x1E697BF38]);
    sub_1D726135C();
    (*(v21 + 8))(v25, v20);
  }

  v69 = sub_1D726125C();
  v98 = 1;
  sub_1D71045E4(v94, &v109, v70);
  v101 = *&v110[16];
  v102 = *&v110[32];
  v103 = *&v110[48];
  v104 = v110[64];
  v99 = v109;
  v100 = *v110;
  v106 = v110[64];
  v105[2] = *&v110[16];
  v105[3] = *&v110[32];
  v105[4] = *&v110[48];
  v105[0] = v109;
  v105[1] = *v110;
  sub_1D7107364(&v99, v107, sub_1D71060C4);
  sub_1D71066BC(v105, sub_1D71060C4);
  *&v97[39] = v101;
  *&v97[55] = v102;
  *&v97[71] = v103;
  v97[87] = v104;
  *&v97[7] = v99;
  *&v97[23] = v100;
  v71 = v98;
  v72 = v95;
  sub_1D7107364(v32, v95, sub_1D7105EEC);
  v73 = v96;
  sub_1D7107364(v72, v96, sub_1D7105EEC);
  sub_1D7105E74(0, v74);
  v76 = (v73 + *(v75 + 48));
  v107[0] = v69;
  v107[1] = 0;
  LOBYTE(v108[0]) = v71;
  *(v108 + 1) = *v97;
  *(&v108[1] + 1) = *&v97[16];
  *(&v108[4] + 1) = *&v97[64];
  *(&v108[3] + 1) = *&v97[48];
  *(&v108[2] + 1) = *&v97[32];
  *(&v108[5] + 1) = *&v97[80];
  v77 = v108[0];
  *v76 = v69;
  v76[1] = v77;
  v78 = v108[1];
  v79 = v108[2];
  *(v76 + 89) = *(&v108[4] + 9);
  v80 = v108[4];
  v76[4] = v108[3];
  v76[5] = v80;
  v76[2] = v78;
  v76[3] = v79;
  v81 = v73 + *(v75 + 64);
  *v81 = 0;
  *(v81 + 8) = 1;
  sub_1D7107364(v107, &v109, sub_1D6BB2C54);
  sub_1D71066BC(v32, sub_1D7105EEC);
  *&v110[33] = *&v97[32];
  *&v110[49] = *&v97[48];
  v111 = *&v97[64];
  *&v110[1] = *v97;
  v109 = v69;
  v110[0] = v71;
  v112 = *&v97[80];
  *&v110[17] = *&v97[16];
  sub_1D71066BC(&v109, sub_1D6BB2C54);
  return sub_1D71066BC(v72, sub_1D7105EEC);
}

void sub_1D7104310(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D72611AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D726106C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v13 + 28);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1D726123C();
  (*(*(v16 - 8) + 104))(&v12[v14], v15, v16);
  __asm { FMOV            V0.2D, #4.0 }

  *v12 = _Q0;
  v22 = sub_1D726145C();
  v38 = *(a1 + 80);
  v37 = *(a1 + 72);
  if (v38 != 1)
  {

    v23 = sub_1D7262ECC();
    v24 = sub_1D726158C();
    sub_1D725C31C(v23, &dword_1D5B42000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1D726119C();
    swift_getAtKeyPath();
    sub_1D71072E4(&v37);
    (*(v5 + 8))(v8, v4);
  }

  sub_1D7260EAC();
  sub_1D7107364(v12, a2, MEMORY[0x1E697EAF0]);
  sub_1D6BB339C(0);
  v26 = a2 + *(v25 + 36);
  v27 = v35;
  *v26 = *&v34[8];
  *(v26 + 16) = v27;
  *(v26 + 32) = v36;
  sub_1D6BB3458(0);
  *(a2 + *(v28 + 52)) = v22;
  *(a2 + *(v28 + 56)) = 256;
  v29 = sub_1D7261A5C();
  v31 = v30;
  sub_1D71066BC(v12, MEMORY[0x1E697EAF0]);
  sub_1D6BB3568(0);
  v33 = (a2 + *(v32 + 36));
  *v33 = v29;
  v33[1] = v31;
}

double sub_1D71045E4@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>)
{
  v61 = a2;
  sub_1D68723A4(0, a3);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 48);
  if (v8 == 255 || (v8 & 1) == 0)
  {
    v9 = 0xE400000000000000;
    v10 = 1684366662;
  }

  else
  {
    v9 = 0xEC0000006E6F6974;
    v10 = 0x6365532064656546;
  }

  *&v66 = v10;
  *(&v66 + 1) = v9;
  v56 = sub_1D5BF4D9C();
  v11 = sub_1D726171C();
  v13 = v12;
  v15 = v14;
  v55 = sub_1D726163C();
  v16 = *(v55 - 8);
  v54 = *(v16 + 56);
  v52 = v16 + 56;
  v54(v7, 1, 1, v55);
  sub_1D726167C();
  v53 = sub_1D68723A4;
  sub_1D71066BC(v7, sub_1D68723A4);
  v17 = sub_1D72616DC();
  v19 = v18;
  v51 = v7;
  v21 = v20;

  sub_1D5F26348(v11, v13, v15 & 1);

  LODWORD(v66) = sub_1D726144C();
  v60 = sub_1D72616CC();
  v58 = v22;
  v57 = v23;
  v59 = v24;
  sub_1D5F26348(v17, v19, v21 & 1);

  v25 = a1[3];
  v68 = a1[2];
  v69 = v25;
  v70 = a1[4];
  v71 = *(a1 + 80);
  v26 = a1[1];
  v66 = *a1;
  v67 = v26;
  v64 = sub_1D7103940();
  v65 = v27;
  v28 = sub_1D726171C();
  v30 = v29;
  LOBYTE(v13) = v31;
  v32 = v51;
  v54(v51, 1, 1, v55);
  sub_1D726167C();
  sub_1D71066BC(v32, v53);
  v33 = sub_1D72616DC();
  v35 = v34;
  v37 = v36;

  sub_1D5F26348(v28, v30, v13 & 1);

  LODWORD(v66) = sub_1D726145C();
  v38 = sub_1D72616CC();
  v40 = v39;
  LOBYTE(v30) = v41;
  v43 = v42;
  sub_1D5F26348(v33, v35, v37 & 1);

  KeyPath = swift_getKeyPath();
  v45 = v57 & 1;
  LOBYTE(v66) = v57 & 1;
  LOBYTE(v64) = v57 & 1;
  LOBYTE(v30) = v30 & 1;
  v63 = v30;
  v62 = 0;
  v47 = v60;
  v46 = v61;
  v48 = v58;
  *v61 = v60;
  v46[1] = v48;
  *(v46 + 16) = v45;
  v46[3] = v59;
  v46[4] = v38;
  v46[5] = v40;
  *(v46 + 48) = v30;
  v46[7] = v43;
  v46[8] = KeyPath;
  v46[9] = 1;
  *(v46 + 80) = 0;
  sub_1D5F26358(v47, v48, v45);

  sub_1D5F26358(v38, v40, v30);

  sub_1D5F26348(v38, v40, v30);

  sub_1D5F26348(v47, v48, v66);

  return result;
}

uint64_t sub_1D7104A5C(uint64_t a1)
{
  v1[73] = a1;
  sub_1D726290C();
  v1[74] = sub_1D72628FC();
  v3 = sub_1D726285C();
  v1[75] = v3;
  v1[76] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D7104AF8, v3, v2);
}

uint64_t sub_1D7104AF8()
{
  v1 = *(v0 + 584);
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *(v0 + 616) = v4;

  v5._countAndFlagsBits = v2;
  v5._object = v3;
  FeedKind.init(rawValue:)(v5);
  v6 = sub_1D692F84C();
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 584);

    v9 = [v7 imageWithRenderingMode_];
    v10 = *(v8 + 56);
    v11 = *(v8 + 64);
    *(v0 + 424) = v10;
    *(v0 + 408) = v11;
    *(v0 + 336) = v10;
    *(v0 + 344) = v11;
    *(v0 + 560) = v9;
    sub_1D7107364(v0 + 424, v0 + 568, sub_1D6851ABC);
    sub_1D7107364(v0 + 408, v0 + 576, sub_1D710671C);
    sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
    v12 = v9;
    sub_1D726190C();

    sub_1D71066BC(v0 + 424, sub_1D6851ABC);
    sub_1D71066BC(v0 + 408, sub_1D710671C);
LABEL_3:
    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 584);
  v16 = *(v15 + 32);
  *(v0 + 624) = v16;
  v17 = *(v15 + 40);
  *(v0 + 632) = v17;
  v18 = *(v15 + 48);
  *(v0 + 161) = v18;
  if (v18 != 255)
  {
    if (v18)
    {
      v19 = v16;
    }

    else
    {
      sub_1D7106784(v16, v17, 0);
    }

    sub_1D7106784(v16, v17, v18 & 1);
    sub_1D7106784(v16, v17, v18 & 1);
    v20 = FCFeedDescriptor.feedTag.getter();

    v21 = [v20 asSportsEvent];
    *(v0 + 640) = v21;
    swift_unknownObjectRelease();
    sub_1D71067D0(v16, v17, v18);
    if (v21)
    {
      *(v0 + 648) = *(**(v0 + 584) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache);
      v22 = swift_task_alloc();
      *(v0 + 656) = v22;
      *v22 = v0;
      v22[1] = sub_1D71051C0;

      return sub_1D6F8D30C(v21);
    }

    v23 = v16;
    v24 = FCFeedDescriptor.feedTag.getter();
    v25 = [v24 identifier];
    v26 = sub_1D726207C();
    v28 = v27;

    *(v0 + 96) = xmmword_1D7279980;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0;
    *(v0 + 16) = v26;
    *(v0 + 24) = v28;
    *(v0 + 32) = v24;
    *(v0 + 40) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    v29 = MEMORY[0x1E69E7CD0];
    *(v0 + 80) = 0;
    *(v0 + 88) = v29;
    v30 = FeedTag.debugAssetHandle.getter();
    *(v0 + 672) = v30;
    sub_1D5EE5B54(v0 + 16);
    if (v30)
    {
      v31 = *(v0 + 584);

      *(v0 + 680) = *(*v31 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache);
      if (v18)
      {
        v32 = v23;
      }

      else
      {
        sub_1D7106784(v16, v17, 0);
      }

      v50 = FCFeedDescriptor.feedTag.getter();

      v51 = [v50 identifier];
      swift_unknownObjectRelease();
      v52 = sub_1D726207C();
      v54 = v53;

      *(v0 + 688) = v52;
      *(v0 + 696) = v54;
      v48 = sub_1D7105490;
      goto LABEL_26;
    }

    sub_1D71067D0(v16, v17, v18);
  }

  if (!v4)
  {
    v49 = *(v0 + 584);

    v33 = *v49;
LABEL_31:
    v55 = *(*(v33 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache) + 16);
    *(v0 + 320) = *(*(v0 + 584) + 56);
    *(v0 + 416) = v55;
    sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
    v56 = v55;
    sub_1D726190C();
    goto LABEL_3;
  }

  v33 = **(v0 + 584);
  v34 = *(v33 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_cloudContext);

  v35 = [v34 tagController];

  v36 = sub_1D726203C();

  v37 = [v35 slowCachedTagForID_];
  *(v0 + 728) = v37;

  if (!v37)
  {

LABEL_30:

    goto LABEL_31;
  }

  v38 = [swift_unknownObjectRetain() identifier];
  v39 = sub_1D726207C();
  v41 = v40;

  *(v0 + 248) = xmmword_1D7279980;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0;
  *(v0 + 168) = v39;
  *(v0 + 176) = v41;
  *(v0 + 184) = v37;
  *(v0 + 192) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  v42 = MEMORY[0x1E69E7CD0];
  *(v0 + 232) = 0;
  *(v0 + 240) = v42;
  v43 = FeedTag.debugAssetHandle.getter();
  *(v0 + 736) = v43;
  sub_1D5EE5B54(v0 + 168);
  if (!v43)
  {

    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  *(v0 + 744) = *(v33 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache);
  v44 = [v37 identifier];
  v45 = sub_1D726207C();
  v47 = v46;

  *(v0 + 752) = v45;
  *(v0 + 760) = v47;
  v48 = sub_1D7105880;
LABEL_26:

  return MEMORY[0x1EEE6DFA0](v48, 0, 0);
}

uint64_t sub_1D71051C0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 664) = a1;

  v3 = *(v2 + 608);
  v4 = *(v2 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D71052E8, v4, v3);
}

uint64_t sub_1D71052E8()
{
  v1 = *(v0 + 664);

  if (v1)
  {
    v2 = *(v0 + 664);
  }

  else
  {
    v2 = *(*(v0 + 648) + 16);
  }

  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 584);
  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  *(v0 + 472) = v7;
  *(v0 + 440) = v6;
  *(v0 + 352) = v7;
  *(v0 + 360) = v6;
  *(v0 + 528) = v2;
  v8 = *(v0 + 161);
  sub_1D7107364(v0 + 472, v0 + 536, sub_1D6851ABC);
  sub_1D7107364(v0 + 440, v0 + 544, sub_1D710671C);
  sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  v9 = v2;
  sub_1D726190C();
  swift_unknownObjectRelease();
  sub_1D71067D0(v4, v3, v8);

  sub_1D71066BC(v0 + 472, sub_1D6851ABC);
  sub_1D71066BC(v0 + 440, sub_1D710671C);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D7105490()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v5 = swift_task_alloc();
  v0[88] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[89] = v6;
  v7 = sub_1D62B7E2C();
  *v6 = v0;
  v6[1] = sub_1D71055A4;

  return MEMORY[0x1EEE6DDE0](v0 + 60, 0, 0, 0xD00000000000001FLL, 0x80000001D73EA5B0, sub_1D7107AC8, v5, v7);
}

uint64_t sub_1D71055A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D71056D8, 0, 0);
}

uint64_t sub_1D71056FC()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 672);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 584);
  v6 = *(v0 + 161);

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  *(v0 + 520) = v7;
  *(v0 + 368) = v7;
  *(v0 + 376) = v8;
  *(v0 + 488) = v8;
  *(v0 + 496) = v1;
  sub_1D7107364(v0 + 520, v0 + 504, sub_1D6851ABC);
  sub_1D7107364(v0 + 488, v0 + 512, sub_1D710671C);
  sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  v9 = v1;
  sub_1D726190C();

  sub_1D71067D0(v4, v3, v6);
  sub_1D71066BC(v0 + 520, sub_1D6851ABC);
  sub_1D71066BC(v0 + 488, sub_1D710671C);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D7105880()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[92];
  v5 = swift_task_alloc();
  v0[96] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[97] = v6;
  v7 = sub_1D62B7E2C();
  *v6 = v0;
  v6[1] = sub_1D7105994;

  return MEMORY[0x1EEE6DDE0](v0 + 54, 0, 0, 0xD00000000000001FLL, 0x80000001D73EA5B0, sub_1D6BB31F8, v5, v7);
}

uint64_t sub_1D7105994()
{

  return MEMORY[0x1EEE6DFA0](sub_1D7105AC8, 0, 0);
}

uint64_t sub_1D7105AEC()
{
  v1 = v0[98];
  v2 = v0[92];
  v3 = v0[73];

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  v0[49] = v5;
  v0[50] = v4;
  v0[69] = v5;
  v0[48] = v4;
  v0[56] = v1;
  sub_1D7107364((v0 + 50), (v0 + 57), sub_1D6851ABC);
  sub_1D7107364((v0 + 69), (v0 + 58), sub_1D710671C);
  sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  v6 = v1;
  sub_1D726190C();

  swift_unknownObjectRelease();
  sub_1D71066BC((v0 + 50), sub_1D6851ABC);
  sub_1D71066BC((v0 + 69), sub_1D710671C);
  v7 = v0[1];

  return v7();
}

void sub_1D7105C6C(uint64_t a1)
{
  if (!qword_1EC89ADD0)
  {
    sub_1D7105D0C(255);
    sub_1D710615C(255, &unk_1EC89AE90, sub_1D7033954, &type metadata for FormatWorkspaceFeed, MEMORY[0x1E697C518]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC89ADD0);
    }
  }
}

void sub_1D7105D0C(uint64_t a1)
{
  if (!qword_1EC89ADD8)
  {
    sub_1D7105DAC(255);
    sub_1D710615C(255, &qword_1EC89AE80, sub_1D5F25AA0, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC89ADD8);
    }
  }
}

void sub_1D7105DAC(uint64_t a1)
{
  if (!qword_1EC89ADE0)
  {
    sub_1D7105E40(255);
    sub_1D7106000(&qword_1EC89AE78, sub_1D7105E40, MEMORY[0x1E6981F48]);
    v1 = sub_1D726197C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC89ADE0);
    }
  }
}

void sub_1D7105E74(uint64_t a1, __n128 a2)
{
  if (!qword_1EC89ADF0)
  {
    sub_1D7105EEC(255, a2);
    sub_1D6BB2C54(255, v2);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC89ADF0);
    }
  }
}

void sub_1D7105F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D7106000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D7106048(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D71078C4(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D71060F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D710615C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D71061C4(uint64_t a1)
{
  if (!qword_1EC89AEA8)
  {
    sub_1D7105C6C(255);
    v3 = v2;
    v4 = sub_1D7106228();
    v6 = type metadata accessor for DebugFormatInspectorPopoverView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC89AEA8);
    }
  }
}

unint64_t sub_1D7106228()
{
  result = qword_1EC89AEB0;
  if (!qword_1EC89AEB0)
  {
    sub_1D7105C6C(255);
    sub_1D71062A8();
    sub_1D7106358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AEB0);
  }

  return result;
}

unint64_t sub_1D71062A8()
{
  result = qword_1EC89AEB8;
  if (!qword_1EC89AEB8)
  {
    sub_1D7105D0C(255);
    sub_1D7106000(&unk_1EC89AEC0, sub_1D7105DAC, MEMORY[0x1E69817F8]);
    sub_1D68C611C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AEB8);
  }

  return result;
}

unint64_t sub_1D7106358()
{
  result = qword_1EC89AED0;
  if (!qword_1EC89AED0)
  {
    sub_1D710615C(255, &unk_1EC89AE90, sub_1D7033954, &type metadata for FormatWorkspaceFeed, MEMORY[0x1E697C518]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AED0);
  }

  return result;
}

void sub_1D71063E8(uint64_t a1)
{
  if (!qword_1EC89AED8)
  {
    sub_1D7105E40(255);
    v1 = sub_1D7260F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC89AED8);
    }
  }
}

void sub_1D7106450(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D710649C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D5B64680;

  return sub_1D7104A5C(v0 + 16);
}

uint64_t sub_1D7106530(uint64_t a1, uint64_t a2)
{
  sub_1D71060F8(0, &qword_1EC89AEE0, type metadata accessor for FormatWorkspaceFeedDescriptor, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D71065C4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D5B64684;

  return sub_1D7104A5C(v0 + 16);
}

uint64_t sub_1D7106658(uint64_t a1, uint64_t a2)
{
  sub_1D71061C4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D71066BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7106784(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = a1;

    swift_unknownObjectRetain();
  }

  else
  {

    v5 = a1;
  }
}

void sub_1D71067D0(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1D7106450(a1, a2, a3 & 1);
  }
}

unint64_t sub_1D71067E8()
{
  result = qword_1EC89AF18;
  if (!qword_1EC89AF18)
  {
    sub_1D7105FB8(255);
    sub_1D7106868();
    sub_1D61ABEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AF18);
  }

  return result;
}

unint64_t sub_1D7106868()
{
  result = qword_1EC89AF20;
  if (!qword_1EC89AF20)
  {
    sub_1D6BB29B0(255);
    sub_1D7106918();
    sub_1D7106000(&qword_1EC89AF38, sub_1D6BB2AB4, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AF20);
  }

  return result;
}

unint64_t sub_1D7106918()
{
  result = qword_1EC89AF28;
  if (!qword_1EC89AF28)
  {
    sub_1D6BB2A58(255);
    sub_1D7106000(&qword_1EC89AF30, sub_1D6BB2A94, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AF28);
  }

  return result;
}

double sub_1D71069C8@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v27 = v2[2];
  v28 = v4;
  v29 = *(v2 + 8);
  v5 = v2[1];
  v25 = *v2;
  v26 = v5;
  v6 = sub_1D726124C();
  v24 = 1;
  sub_1D7106BA0(&v25, &v17);
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v30 = v17;
  v31 = v18;
  v37 = v22;
  v36[2] = v19;
  v36[3] = v20;
  v36[4] = v21;
  v36[0] = v17;
  v36[1] = v18;
  sub_1D7107514(&v30, v16);
  sub_1D71075F4(v36);
  *&v23[39] = v32;
  *&v23[55] = v33;
  *&v23[71] = v34;
  *&v23[87] = v35;
  *&v23[7] = v30;
  *&v23[23] = v31;
  v7 = v24;
  v8 = swift_allocObject();
  v9 = v28;
  *(v8 + 48) = v27;
  *(v8 + 64) = v9;
  *(v8 + 80) = v29;
  v10 = v26;
  *(v8 + 16) = v25;
  *(v8 + 32) = v10;
  sub_1D7105F34(0, &qword_1EC89AFA8, sub_1D710770C, MEMORY[0x1E697C028], MEMORY[0x1E697E830]);
  v12 = (a2 + *(v11 + 36));
  sub_1D7260F2C();
  sub_1D710788C(&v25, &v17);
  sub_1D726291C();
  *v12 = &unk_1D739BEA0;
  v12[1] = v8;
  v13 = *&v23[48];
  *(a2 + 49) = *&v23[32];
  *(a2 + 65) = v13;
  *(a2 + 81) = *&v23[64];
  *(a2 + 90) = *&v23[73];
  result = *v23;
  v15 = *&v23[16];
  *(a2 + 17) = *v23;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 33) = v15;
  return result;
}

double sub_1D7106BA0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 7);
  v33 = *(a1 + 5);
  v34 = v4;
  sub_1D7106048(0, &qword_1EC89AFC8, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E6981790]);
  sub_1D72618FC();
  v6 = v28;
  v5 = v29;
  v7 = v30;
  if (v30 == 255)
  {
    v11 = *a1;
    v27 = *(a1 + 1);
    v12 = a1[3];
    *v18 = v27;
    *&v32 = v12;
    KeyPath = swift_getKeyPath();
    *v23 = 0;

    sub_1D5E422A8(v18, &v33);
    sub_1D7106530(&v32, &v33);
    sub_1D6851ABC(0);
    sub_1D72618EC();
    v14 = v33;
    LOBYTE(v33) = 0;
    LOBYTE(v31) = 1;
    *v23 = v11;
    *&v23[8] = v27;
    *&v23[24] = v12;
    *&v24 = v6;
    *(&v24 + 1) = v5;
    v25[0] = -1;
    *&v25[8] = v14;
    *&v25[24] = KeyPath;
    v26 = 256;
    sub_1D7107838();
    sub_1D726135C();
  }

  else
  {
    v8 = *a1;
    v32 = *(a1 + 1);
    v33 = v32;
    v31 = a1[3];
    v9 = v31;
    v10 = swift_getKeyPath();

    sub_1D5E422A8(&v32, v23);
    sub_1D7106530(&v31, v23);
    sub_1D71073CC(v6, v5, v7);
    sub_1D6851ABC(0);
    sub_1D72618EC();
    *v18 = v8;
    *&v18[8] = v33;
    *&v18[24] = v9;
    *&v19 = v6;
    *(&v19 + 1) = v5;
    v20[0] = v7;
    *&v20[1] = *v23;
    *&v20[4] = *&v23[3];
    *&v20[8] = *v23;
    *&v20[24] = v10;
    v21 = 0;
    v36 = *v20;
    v37 = *&v20[16];
    v38 = 0;
    v34 = *&v18[16];
    v35 = v19;
    v33 = *v18;
    v22 = 0;
    sub_1D68C4644(v18, v23);
    sub_1D7107838();
    sub_1D726135C();
    sub_1D71067D0(v6, v5, v7);
    sub_1D68C4700(v18);
    v35 = v24;
    v36 = *v25;
    v37 = *&v25[16];
    v38 = v26;
    v33 = *v23;
    v34 = *&v23[16];
  }

  v15 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v15;
  *(a2 + 64) = v37;
  *(a2 + 80) = v38;
  result = *&v33;
  v17 = v34;
  *a2 = v33;
  *(a2 + 16) = v17;
  return result;
}

uint64_t sub_1D7106E5C(uint64_t a1)
{
  v1[20] = a1;
  v1[21] = sub_1D726290C();
  v1[22] = sub_1D72628FC();
  v3 = *(a1 + 32);
  v4 = swift_task_alloc();
  v1[23] = v4;
  sub_1D71078C4(0, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E69E6720]);
  v6 = v5;
  v7 = sub_1D5BA6EF4();
  *v4 = v1;
  v4[1] = sub_1D7106F6C;
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v1 + 14, v3, v6, v7, v8);
}

uint64_t sub_1D7106F6C()
{

  if (v0)
  {

    v1 = sub_1D726285C();
    v3 = v2;
    v4 = sub_1D71071E8;
  }

  else
  {
    v1 = sub_1D726285C();
    v3 = v5;
    v4 = sub_1D71070F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v1, v3);
}

uint64_t sub_1D71070F0()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = *(v2 + 56);
  *(v0 + 16) = *(v2 + 40);
  *(v0 + 32) = v4;
  v5 = *(v2 + 56);
  *(v0 + 48) = *(v2 + 40);
  *(v0 + 64) = v5;
  *(v0 + 136) = v3;
  *(v0 + 152) = v1;
  sub_1D7107914(v0 + 16, v0 + 80);
  sub_1D7106048(0, &qword_1EC89AFC8, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E6981790]);
  sub_1D726190C();
  sub_1D71067D0(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D71071E8()
{

  v1 = *(v0 + 160);
  v2 = *(v1 + 56);
  *(v0 + 16) = *(v1 + 40);
  *(v0 + 32) = v2;
  v3 = *(v1 + 56);
  *(v0 + 48) = *(v1 + 40);
  *(v0 + 64) = v3;
  *(v0 + 144) = 0;
  *(v0 + 136) = 0;
  *(v0 + 152) = -1;
  sub_1D7107914(v0 + 16, v0 + 80);
  sub_1D7106048(0, &qword_1EC89AFC8, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E6981790]);
  sub_1D726190C();
  sub_1D71067D0(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D71072E4(uint64_t a1)
{
  sub_1D71078C4(0, &qword_1EC89AF58, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7107364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D71073CC(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1D7106784(a1, a2, a3 & 1);
  }
}

unint64_t sub_1D7107404()
{
  result = qword_1EC89AF90;
  if (!qword_1EC89AF90)
  {
    sub_1D7105F34(255, &qword_1EC89AF98, sub_1D71061C4, sub_1D7105C6C, MEMORY[0x1E697F960]);
    sub_1D7106000(&qword_1EC89AEE8, sub_1D71061C4, &unk_1D731F2D0);
    sub_1D7106228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AF90);
  }

  return result;
}

uint64_t sub_1D7107514(uint64_t a1, uint64_t a2)
{
  sub_1D71075A0(0, &qword_1EC89AFA0, &type metadata for DebugFormatFeedView, &type metadata for DebugFormatFeedView, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D71075A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D71075F4(uint64_t a1)
{
  sub_1D71075A0(0, &qword_1EC89AFA0, &type metadata for DebugFormatFeedView, &type metadata for DebugFormatFeedView, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7107678()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D5B64680;

  return sub_1D7106E5C(v0 + 16);
}

void sub_1D710770C(uint64_t a1)
{
  if (!qword_1EC89AFB0)
  {
    sub_1D71075A0(255, &qword_1EC89AFA0, &type metadata for DebugFormatFeedView, &type metadata for DebugFormatFeedView, MEMORY[0x1E697F960]);
    sub_1D7107798();
    v1 = sub_1D726198C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC89AFB0);
    }
  }
}

unint64_t sub_1D7107798()
{
  result = qword_1EC89AFB8;
  if (!qword_1EC89AFB8)
  {
    sub_1D71075A0(255, &qword_1EC89AFA0, &type metadata for DebugFormatFeedView, &type metadata for DebugFormatFeedView, MEMORY[0x1E697F960]);
    sub_1D7107838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AFB8);
  }

  return result;
}

unint64_t sub_1D7107838()
{
  result = qword_1EC89AFC0;
  if (!qword_1EC89AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AFC0);
  }

  return result;
}

void sub_1D71078C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7107914(uint64_t a1, uint64_t a2)
{
  sub_1D7106048(0, &qword_1EC89AFC8, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E6981790]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D71079A4()
{
  result = qword_1EC89AFD0;
  if (!qword_1EC89AFD0)
  {
    sub_1D7105F34(255, &qword_1EC89AFA8, sub_1D710770C, MEMORY[0x1E697C028], MEMORY[0x1E697E830]);
    sub_1D7106000(&qword_1EC89AFD8, sub_1D710770C, MEMORY[0x1E6981870]);
    sub_1D7106000(qword_1EC89AFE0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AFD0);
  }

  return result;
}

uint64_t sub_1D7107ACC(uint64_t a1)
{
  v2[185] = v1;
  v2[179] = a1;
  type metadata accessor for GroupLayoutBindingContext(0);
  v2[191] = swift_task_alloc();
  v2[197] = swift_task_alloc();
  v3 = *(type metadata accessor for DebugFormatBindingRequest(0) - 8);
  v2[203] = v3;
  v2[209] = *(v3 + 64);
  v2[215] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v2[222] = type metadata accessor for FormatContent.Resolved(0);
  v2[223] = swift_task_alloc();
  v2[224] = swift_task_alloc();
  v2[225] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7107C20, 0, 0);
}

uint64_t sub_1D7107C20()
{
  v1 = v0[221];
  v10 = v0[215];
  v2 = v0[203];
  v3 = v0[185];
  v4 = v0[179];
  sub_1D7110060(v4, v1, type metadata accessor for DebugFormatBindingRequest);
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[226] = v6;
  *(v6 + 16) = v3;
  sub_1D71100C8(v1, v6 + v5, type metadata accessor for DebugFormatBindingRequest);

  swift_asyncLet_begin();
  sub_1D7110060(v4, v10, type metadata accessor for DebugFormatBindingRequest);
  v7 = swift_allocObject();
  v0[227] = v7;
  *(v7 + 16) = v3;
  sub_1D71100C8(v10, v7 + v5, type metadata accessor for DebugFormatBindingRequest);

  sub_1D71108AC(0, &unk_1EC89AFF8, &type metadata for FeedDescriptor, MEMORY[0x1E69E6720]);
  swift_asyncLet_begin();
  v8 = v0[225];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v8, sub_1D7107E14, v0 + 162);
}

uint64_t sub_1D7107E14()
{
  v1[228] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D7108338, 0, 0);
  }

  else
  {
    sub_1D7110060(v1[225], v1[224], type metadata accessor for FormatContent.Resolved);

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 167, sub_1D7107ED8, v1 + 180);
  }
}

uint64_t sub_1D7107ED8()
{
  *(v1 + 1832) = v0;
  if (v0)
  {
    v2 = sub_1D7108494;
  }

  else
  {
    v2 = sub_1D7107F0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7107F0C()
{
  v1 = v0[167];
  v0[230] = v1;
  v0[173] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[231] = v3;
  *v3 = v0;
  v3[1] = sub_1D7107FC4;
  v4 = v0[224];
  v5 = v0[197];
  v6 = v0[179];

  return sub_1D710A090(v5, v6, v4, v0 + 173);
}

uint64_t sub_1D7107FC4()
{
  *(*v1 + 1856) = v0;

  if (v0)
  {
    v2 = sub_1D7108650;
  }

  else
  {
    v2 = sub_1D71080D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D71080D8()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1528);

  sub_1D71100C8(v1, v2, type metadata accessor for FormatContent.Resolved);
  sub_1D71100C8(v3, v4, type metadata accessor for GroupLayoutBindingContext);
  type metadata accessor for DebugFormatBindingResult(0);
  v5 = swift_allocObject();
  *(v0 + 1864) = v5;
  sub_1D71100C8(v2, v5 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_content, type metadata accessor for FormatContent.Resolved);
  sub_1D71100C8(v4, v5 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, type metadata accessor for GroupLayoutBindingContext);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1336, sub_1D7108200, v0 + 1680);
}

uint64_t sub_1D7108258()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1864);

  return v1(v2);
}

uint64_t sub_1D71083B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7108494()
{
  sub_1D5CED8B0(*(v0 + 1792), type metadata accessor for FormatContent.Resolved);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1336, sub_1D7108514, v0 + 1488);
}

uint64_t sub_1D710856C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7108650()
{
  v1 = *(v0 + 1840);
  sub_1D5CED8B0(*(v0 + 1792), type metadata accessor for FormatContent.Resolved);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1336, sub_1D71086D8, v0 + 1584);
}

uint64_t sub_1D7108730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7108814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D5B64684;

  return sub_1D71088C4(a1, a3);
}

uint64_t sub_1D71088C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(type metadata accessor for FormatOption(0) - 8);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for FormatTransformData(0);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for FormatServiceOptions(0);
  v3[10] = swift_task_alloc();
  type metadata accessor for FormatContentPool(0);
  v3[11] = swift_task_alloc();
  sub_1D5BB1670(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v4 = sub_1D725891C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_1D725895C();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for FormatContent(0);
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7108B60, 0, 0);
}

uint64_t sub_1D7108B60(uint64_t a1)
{
  v3 = v1[18];
  v2 = v1[19];
  v4 = v1[17];
  v5 = v1[13];
  v6 = v1[3];
  sub_1D725894C();
  v7 = sub_1D725893C();
  v84 = v8;
  v85 = v7;
  (*(v3 + 8))(v2, v4);
  sub_1D725890C();
  v9 = v6[13];
  if (v9)
  {
    v10 = v6[12];
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[16];
  v12 = v6[17];
  if (!v12)
  {
    v11 = 0;
  }

  v80 = v11;
  v81 = v10;
  v13 = v6[14];
  v14 = v6[15];
  if (!v14)
  {
    v13 = 0;
  }

  v79 = v13;
  v15 = v6[18];
  v16 = v6[19];
  if (!v16)
  {
    v15 = 0;
  }

  v82 = v15;
  v17 = sub_1D72608BC();
  v87 = *(*(v17 - 8) + 56);
  v87(v5, 1, 1, v17);
  sub_1D5BB1670(0, &unk_1EDF3C5F0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E6F90]);
  v18 = *(type metadata accessor for FormatContentSubgroup(0) - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  v21 = type metadata accessor for DebugFormatBindingRequest(0);
  v78 = v20;
  sub_1D7110060(v6 + *(v21 + 20), v20 + v19, type metadata accessor for FormatContentSubgroup);
  v22 = v6[20];
  v23 = *(v22 + 16);
  v92 = v1;
  v88 = v17;
  v83 = v16;
  if (v23)
  {
    v24 = v1[5];
    v25 = v1[6];
    v93 = MEMORY[0x1E69E7CC0];
    v76 = v9;

    v74 = v12;

    v73 = v14;

    sub_1D69988B8(0, v23, 0);
    v26 = v93;
    v27 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v90 = *(v24 + 72);
    do
    {
      v28 = v1[6];
      sub_1D7110060(v27, v28, type metadata accessor for FormatOption);
      v29 = *v28;
      v31 = *(v25 + 8);
      v30 = *(v25 + 16);

      sub_1D5CED8B0(v28, type metadata accessor for FormatOption);
      v33 = *(v93 + 16);
      v32 = *(v93 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D69988B8((v32 > 1), v33 + 1, 1);
      }

      *(v93 + 16) = v33 + 1;
      v34 = (v93 + 24 * v33);
      v34[4] = v29;
      v34[5] = v31;
      v34[6] = v30;
      v1 = v92;
      v27 += v90;
      --v23;
    }

    while (v23);

    v36 = v74;
    v35 = v76;
    v37 = v73;
  }

  else
  {

    v37 = v14;
    v36 = v12;
    v26 = MEMORY[0x1E69E7CC0];
    v35 = v9;
  }

  v39 = v1[20];
  v38 = v1[21];
  v41 = v1[15];
  v40 = v1[16];
  v43 = v1[13];
  v42 = v1[14];
  v75 = v1[12];
  v77 = v1[11];
  v44 = v1[4];
  v45 = *(v1[3] + 168);
  *v38 = v85;
  *(v38 + 1) = v84;
  (*(v41 + 32))(&v38[v39[5]], v40, v42);
  v46 = &v38[v39[6]];
  *v46 = v81;
  *(v46 + 1) = v35;
  v47 = &v38[v39[7]];
  *v47 = v80;
  *(v47 + 1) = v36;
  v48 = &v38[v39[8]];
  *v48 = v79;
  *(v48 + 1) = v37;
  v49 = &v38[v39[9]];
  *v49 = 0;
  *(v49 + 1) = 0;
  v50 = &v38[v39[10]];
  *v50 = v82;
  *(v50 + 1) = v83;
  sub_1D5CEB57C(v43, &v38[v39[11]]);
  v51 = MEMORY[0x1E69E7CC0];
  *&v38[v39[12]] = MEMORY[0x1E69E7CC0];
  *&v38[v39[13]] = v51;
  *&v38[v39[14]] = v51;
  *&v38[v39[15]] = v51;
  *&v38[v39[16]] = v51;
  *&v38[v39[17]] = v78;
  *&v38[v39[18]] = v26;
  *&v38[v39[19]] = v45;
  v86 = v44[6];
  v91 = v44[5];
  __swift_project_boxed_opaque_existential_1(v44 + 2, v91);
  v87(v75, 1, 1, v88);

  v52 = sub_1D605A62C(v51);
  v53 = sub_1D605A62C(v51);
  v54 = sub_1D605A5F8(v51);
  v55 = sub_1D605AD18(v51);
  v56 = sub_1D605B9BC(v51);
  v57 = sub_1D605B9F0(v51);
  v58 = sub_1D605ACB8(v51);
  FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)(v51, v52, v51, v51, v53, v54, v51, v51, v77, v51, v51, v55, v51, v51, v56, v57, v51, v58, v75);
  v59 = MEMORY[0x1E69B5078];
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  v60 = *v59;
  v61 = qword_1EDFFCEB0;
  if (qword_1EDF2BBB8 != -1)
  {
    swift_once();
  }

  v63 = v92[9];
  v62 = v92[10];
  v64 = v92[8];
  v65 = __swift_project_value_buffer(v92[7], qword_1EDFFCAD0);
  sub_1D7110060(v65, v64, type metadata accessor for FormatTransformData);
  *(v62 + 40) = 0;
  *(v62 + 48) = 1;
  *(v62 + v63[12]) = v60;
  *(v62 + v63[13]) = v61;
  *(v62 + 56) = xmmword_1D7282F10;
  *(v62 + 72) = 0x40F5180000000000;
  *(v62 + 80) = 30;
  sub_1D7110060(v64, v62 + v63[10], type metadata accessor for FormatTransformData);
  v66 = v60;
  v67 = v61;
  sub_1D5CED8B0(v64, type metadata accessor for FormatTransformData);
  *(v62 + v63[11]) = MEMORY[0x1E69E7CD0];
  *(v62 + v63[16]) = 0;
  *(v62 + 32) = 0;
  *v62 = 0u;
  *(v62 + 16) = 0u;
  *(v62 + v63[15]) = 0;
  *(v62 + v63[14]) = 0;
  v89 = (*(v86 + 16) + **(v86 + 16));
  v68 = swift_task_alloc();
  v92[22] = v68;
  *v68 = v92;
  v68[1] = sub_1D71092CC;
  v70 = v92[10];
  v69 = v92[11];
  v71 = v92[21];

  return v89(v71, v69, v70, v91, v86);
}

uint64_t sub_1D71092CC(uint64_t a1)
{
  v4 = *v2;
  v4[23] = v1;

  v5 = v4[11];
  v6 = v4[10];
  if (v1)
  {
    sub_1D5CED8B0(v6, type metadata accessor for FormatServiceOptions);
    sub_1D5CED8B0(v5, type metadata accessor for FormatContentPool);
    v7 = sub_1D71095C4;
  }

  else
  {
    v4[24] = a1;
    sub_1D5CED8B0(v6, type metadata accessor for FormatServiceOptions);
    sub_1D5CED8B0(v5, type metadata accessor for FormatContentPool);
    v7 = sub_1D7109488;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D7109488()
{
  v1 = v0[24];
  v2 = v0[2];
  sub_1D5CED8B0(v0[21], type metadata accessor for FormatContent);
  sub_1D7110060(v1 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent, v2, type metadata accessor for FormatContent.Resolved);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D71095C4()
{
  sub_1D5CED8B0(*(v0 + 168), type metadata accessor for FormatContent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D71096C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D71096E4, 0, 0);
}

uint64_t sub_1D71096E4()
{
  v1 = *(*(v0 + 32) + 88);
  *(v0 + 40) = v1;
  if (v1)
  {

    v2 = objc_opt_self();
    v3 = sub_1D726203C();
    LOBYTE(v2) = [v2 isSportsEventIdentifier_];

    if (v2)
    {
      v4 = swift_task_alloc();
      *(v0 + 56) = v4;
      *v4 = v0;
      v4[1] = sub_1D7109AE8;
      v5 = *(v0 + 32);

      return sub_1D710BC4C(v5, v1);
    }

    else
    {
      v8 = objc_opt_self();
      v9 = sub_1D726203C();
      v10 = [v8 isPuzzleTypeIdentifier_];

      if (v10)
      {
        v11 = swift_task_alloc();
        *(v0 + 64) = v11;
        *v11 = v0;
        v11[1] = sub_1D7109C74;
        v12 = *(v0 + 32);

        return sub_1D710BF1C(v12, v1);
      }

      else
      {
        v13 = swift_task_alloc();
        *(v0 + 48) = v13;
        *v13 = v0;
        v13[1] = sub_1D710995C;
        v14 = *(v0 + 32);

        return sub_1D710B718(v14, v1);
      }
    }
  }

  else
  {
    **(v0 + 16) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D710995C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v4[13] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D710A02C, 0, 0);
  }

  else
  {
    v6 = v4[5];
    v4[9] = a1;
    v7 = swift_task_alloc();
    v4[10] = v7;
    *v7 = v5;
    v7[1] = sub_1D7109E00;
    v8 = v4[3];
    v9 = v4[4];

    return sub_1D710C468(v6, v8, v9);
  }
}

uint64_t sub_1D7109AE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v4[13] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D710A02C, 0, 0);
  }

  else
  {
    v6 = v4[5];
    v4[9] = a1;
    v7 = swift_task_alloc();
    v4[10] = v7;
    *v7 = v5;
    v7[1] = sub_1D7109E00;
    v8 = v4[3];
    v9 = v4[4];

    return sub_1D710C468(v6, v8, v9);
  }
}

uint64_t sub_1D7109C74(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v4[13] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D710A02C, 0, 0);
  }

  else
  {
    v6 = v4[5];
    v4[9] = a1;
    v7 = swift_task_alloc();
    v4[10] = v7;
    *v7 = v5;
    v7[1] = sub_1D7109E00;
    v8 = v4[3];
    v9 = v4[4];

    return sub_1D710C468(v6, v8, v9);
  }
}

uint64_t sub_1D7109E00(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1D7109FC0;
  }

  else
  {
    v4 = sub_1D7109F14;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7109F14()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = [*(v0 + 72) associateAlternativeFeedDescriptor_];

    v2 = v3;
  }

  **(v0 + 16) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D7109FC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D710A02C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D710A090(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[128] = v4;
  v5[127] = a3;
  v5[126] = a2;
  v5[125] = a1;
  v5[129] = type metadata accessor for GroupLayoutBindingContext(0);
  v5[130] = swift_task_alloc();
  v7 = sub_1D725A0AC();
  v5[131] = v7;
  v5[132] = *(v7 - 8);
  v5[133] = swift_task_alloc();
  v8 = sub_1D725895C();
  v5[134] = v8;
  v5[135] = *(v8 - 8);
  v5[136] = swift_task_alloc();
  type metadata accessor for FeedContext(0);
  v5[137] = swift_task_alloc();
  sub_1D5BB1670(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v5[138] = swift_task_alloc();
  v9 = type metadata accessor for FeedItem(0);
  v5[139] = v9;
  v5[140] = *(v9 - 8);
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = *(type metadata accessor for FormatContentSlotItemObject.Resolved(0) - 8);
  v5[145] = swift_task_alloc();
  v5[146] = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D710A348, 0, 0);
}

uint64_t sub_1D710A348()
{
  v1 = *(v0 + 1016);
  v2 = type metadata accessor for FormatContent.Resolved(0);
  *(v0 + 1176) = v2;
  v3 = *(v1 + *(v2 + 36));
  if (*(v3 + 16))
  {
    v4 = *(v0 + 1168);
    *(v0 + 16) = *(v3 + 32);
    v5 = *(v3 + 80);
    v6 = *(v3 + 96);
    v7 = *(v3 + 64);
    *(v0 + 32) = *(v3 + 48);
    *(v0 + 48) = v7;
    *(v0 + 64) = v5;
    *(v0 + 80) = v6;
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 88);
    v11 = *(v0 + 48) & 0x7FFFFFFFFFFFFFFFLL;
    *(v0 + 176) = *(v0 + 16);
    *(v0 + 192) = v8;
    *(v0 + 200) = v9;
    *(v0 + 208) = v11;
    *(v0 + 216) = *(v0 + 56);
    *(v0 + 232) = *(v0 + 72);
    *(v0 + 248) = v10;
    *(v0 + 976) = v4;
    sub_1D5CE9930(v0 + 16, v0 + 256);
    sub_1D5CE9930(v0 + 16, v0 + 336);
    v12 = swift_task_alloc();
    *(v0 + 1184) = v12;
    *v12 = v0;
    v12[1] = sub_1D710A580;
    v13 = *(v0 + 1016);
    v14 = *(v0 + 1008);

    return sub_1D710CE94(v14, v13, v0 + 176, (v0 + 976), 0x70756F7267, 0xE500000000000000);
  }

  else
  {
    sub_1D7110640();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1D710A580(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 1192) = a1;

  v3 = *(v2 + 224);
  *(v2 + 128) = *(v2 + 208);
  *(v2 + 144) = v3;
  *(v2 + 160) = *(v2 + 240);
  v4 = *(v2 + 192);
  *(v2 + 96) = *(v2 + 176);
  *(v2 + 112) = v4;
  sub_1D5CB71DC(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D710A6A0, 0, 0);
}

void sub_1D710A6A0()
{
  v1 = (v0 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  v139 = MEMORY[0x1E69E7CC0];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[11];
  v6 = v0[6] & 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 26) = *(v0 + 1);
  v0[54] = v3;
  v0[55] = v4;
  v0[56] = v6;
  v136 = *(v0 + 9);
  *(v0 + 57) = *(v0 + 7);
  *(v0 + 59) = v136;
  v0[61] = v5;
  sub_1D5CE9930((v0 + 2), (v0 + 62));
  v7 = v136;

  sub_1D5CB71DC((v0 + 52));
  v119 = (v0 + 2);
  v106 = *(v136 + 16);
  if (v106)
  {
    v8 = 0;
    v107 = v0[144];
    v115 = v0[128];
    v105 = v136 + 32;
    v133 = v0[140];
    v131 = MEMORY[0x1E69E7CC8];
    v112 = v2;
    v137 = v0;
    v104 = v7;
    while (2)
    {
      v113 = v8;
      v9 = (v105 + (v8 << 6));
      v10 = v9[4];
      v11 = *(v10 + 16);
      v125 = v9[2];
      v128 = v9[1];
      v120 = *v9;
      v123 = v9[3];
      v110 = v9[5];
      if (v11)
      {
        v12 = v10 + ((*(v107 + 80) + 32) & ~*(v107 + 80));

        v13 = *(v107 + 72);
        v14 = MEMORY[0x1E69E7CC0];
        do
        {
          v15 = v0[145];
          v16 = v0[139];
          v17 = v0[138];
          sub_1D7110060(v12, v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D710EDC4(v15, 0x73676E69646E6962, 0xE800000000000000, v17);
          sub_1D5CED8B0(v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if ((*(v133 + 48))(v17, 1, v16) == 1)
          {
            sub_1D7110598(v0[138], qword_1EDF34EF0, type metadata accessor for FeedItem);
          }

          else
          {
            sub_1D71100C8(v0[138], v0[143], type metadata accessor for FeedItem);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1D6991604(0, v14[2] + 1, 1, v14);
            }

            v19 = v14[2];
            v18 = v14[3];
            if (v19 >= v18 >> 1)
            {
              v14 = sub_1D6991604((v18 > 1), v19 + 1, 1, v14);
            }

            v20 = v0[143];
            v14[2] = v19 + 1;
            sub_1D71100C8(v20, v14 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v19, type metadata accessor for FeedItem);
          }

          v12 += v13;
          --v11;
        }

        while (v11);
      }

      else
      {

        v14 = v2;
      }

      v21 = v14[2];
      v116 = v14;
      if (v21)
      {
        v140 = MEMORY[0x1E69E7CC0];

        sub_1D5BFC364(0, v21, 0);
        v22 = v140;
        v23 = v14 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
        v24 = *(v133 + 72);
        do
        {
          v25 = v0[142];
          sub_1D7110060(v23, v25, type metadata accessor for FeedItem);
          v26 = FeedItem.identifier.getter();
          v28 = v27;
          sub_1D5CED8B0(v25, type metadata accessor for FeedItem);
          v30 = *(v140 + 16);
          v29 = *(v140 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1D5BFC364((v29 > 1), v30 + 1, 1);
          }

          *(v140 + 16) = v30 + 1;
          v31 = v140 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
          v23 += v24;
          --v21;
          v0 = v137;
        }

        while (v21);
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      v109 = sub_1D5B86020(v22);

      v32 = swift_task_alloc();
      *(v32 + 16) = 0x73676E69646E6962;
      *(v32 + 24) = 0xE800000000000000;
      sub_1D5B81B04();
      v33 = v110;
      v108 = sub_1D7261D6C();

      v34 = swift_task_alloc();
      *(v34 + 16) = 0x73676E69646E6962;
      *(v34 + 24) = 0xE800000000000000;
      sub_1D5BB1670(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      v35 = sub_1D7261D6C();

      v36 = swift_task_alloc();
      *(v36 + 16) = 0x73676E69646E6962;
      *(v36 + 24) = 0xE800000000000000;
      v37 = sub_1D7261D6C();

      v1 = v119;
      v0[92] = v120;
      v0[93] = v128;
      v0[94] = v109;
      v0[95] = v108;
      v0[96] = v35;
      v0[97] = v37;
      v0[98] = v125;
      v0[99] = v123;
      sub_1D5E3FA60(v119 + 720, v119 + 784);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1D6991638(0, *(v112 + 2) + 1, 1, v112);
      }

      v39 = *(v112 + 2);
      v38 = *(v112 + 3);
      v40 = v116;
      if (v39 >= v38 >> 1)
      {
        v112 = sub_1D6991638((v38 > 1), v39 + 1, 1, v112);
        v40 = v116;
      }

      v114 = v113 + 1;
      *(v112 + 2) = v39 + 1;
      v41 = &v112[64 * v39];
      v42 = *(v119 + 720);
      v43 = *(v119 + 736);
      v44 = *(v119 + 768);
      *(v41 + 4) = *(v119 + 752);
      *(v41 + 5) = v44;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      sub_1D6986C7C(v40);
      v45 = v0[97];

      sub_1D5E3FABC(v119 + 720);
      v46 = 0;
      v111 = v45 + 64;
      v121 = v45;
      v47 = -1 << *(v45 + 32);
      if (-v47 < 64)
      {
        v48 = ~(-1 << -v47);
      }

      else
      {
        v48 = -1;
      }

      v49 = v48 & *(v45 + 64);
      v50 = (63 - v47) >> 6;
      v117 = v50;
      while (v49)
      {
        v51 = v46;
LABEL_35:
        v52 = v0[137];
        v53 = __clz(__rbit64(v49));
        v49 &= v49 - 1;
        v54 = (v51 << 10) | (16 * v53);
        v55 = (*(v121 + 48) + v54);
        v37 = v55[1];
        v56 = (*(v121 + 56) + v54);
        v57 = v56[1];
        v126 = *v56;
        v129 = *v55;
        v58 = *(v115 + 96);
        v59 = *(v58 + 32);
        ObjectType = swift_getObjectType();

        v0 = v137;
        FeedContextFactoryType.createFeedContext()(ObjectType, v59);
        v61 = *(v58 + 16);
        v62 = swift_task_alloc();
        v33 = v129;
        v62[2] = v129;
        v62[3] = v37;
        v62[4] = v61;
        v62[5] = v52;

        v63 = sub_1D5FBD224(sub_1D5FC4D50, v62, v126);

        sub_1D5CED8B0(v52, type metadata accessor for FeedContext);

        v137[108] = v129;
        v137[109] = v37;
        v137[110] = v63;
        v137[111] = v57;
        v137[112] = 0x7261696C69787561;
        v137[113] = 0xE900000000000079;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v1 = v119;
        sub_1D6D78C78((v119 + 848), v129, v37, isUniquelyReferenced_nonNull_native);

        v50 = v117;
      }

      while (1)
      {
        v51 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v51 >= v50)
        {
          break;
        }

        v49 = *(v111 + 8 * v51);
        ++v46;
        if (v49)
        {
          v46 = v51;
          goto LABEL_35;
        }
      }

      v8 = v114;
      if (v114 == v106)
      {

        v65 = v139;
        goto LABEL_41;
      }

      v2 = MEMORY[0x1E69E7CC0];
      if (v114 < *(v104 + 16))
      {
        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {

    v131 = MEMORY[0x1E69E7CC8];
    v65 = MEMORY[0x1E69E7CC0];
    v112 = MEMORY[0x1E69E7CC0];
LABEL_41:
    v0[123] = v65;
    sub_1D5BB1670(0, &qword_1EDF1B4A0, type metadata accessor for FeedItem, MEMORY[0x1E69E62F8]);
    sub_1D6C78C34();

    v66 = sub_1D72623CC();

    v67 = *(v66 + 16);

    v68 = v0[149];
    if (v67 == *(v65 + 16))
    {
      v69 = v0[136];
      v70 = v0[135];
      v71 = v0[134];
      v138 = v0[133];
      v132 = v0[132];
      v134 = v0[131];
      v127 = v0[130];
      v135 = v0[129];
      v130 = v0[126];
      v72 = *(v0[127] + *(v0[147] + 48));
      v73 = v0[4];
      v74 = v0[5];
      v75 = v0[7];
      v76 = v0[6] & 0x7FFFFFFFFFFFFFFFLL;
      *(v0 + 36) = *(v0 + 1);
      v0[74] = v73;
      v0[75] = v74;
      v0[76] = v76;
      v0[77] = v75;
      v77 = *(v0 + 5);
      v124 = *(v0 + 4);
      *(v0 + 39) = v124;
      *(v0 + 40) = v77;
      v122 = v68;
      sub_1D5CE9930(v1, v1 + 640);

      sub_1D5CB71DC(v1 + 560);
      *&v124 = sub_1D5D6021C(v124, v72);
      v118 = type metadata accessor for FeedGroupRegion();
      v37 = swift_allocObject();
      *(v37 + 224) = 0u;
      *(v37 + 240) = 0u;
      *(v37 + 249) = 0u;
      *(v37 + 208) = 0u;
      *(v37 + 265) = 1;
      sub_1D725894C();
      v78 = sub_1D725893C();
      v80 = v79;
      v81 = *(v70 + 8);
      v81(v69, v71);
      *(v37 + 16) = v78;
      *(v37 + 24) = v80;
      sub_1D725894C();
      v82 = sub_1D725893C();
      v84 = v83;
      v81(v69, v71);
      *(v37 + 32) = v82;
      *(v37 + 40) = v84;
      *(v37 + 136) = 0;
      *(v37 + 144) = 0xE000000000000000;
      *(v37 + 64) = v65;
      *(v37 + 72) = v122;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0xE000000000000000;
      *(v37 + 80) = 0x8000000000000030;
      *(v37 + 88) = 0u;
      *(v37 + 104) = 0u;
      *(v37 + 120) = 0u;
      *(v37 + 152) = v112;
      *(v37 + 160) = 0;
      *(v37 + 168) = 0u;
      *(v37 + 184) = 0u;
      *(v37 + 200) = 0;
      swift_beginAccess();
      *(v37 + 249) = 0u;
      *(v37 + 224) = 0u;
      *(v37 + 240) = 0u;
      *(v37 + 208) = 0u;
      *(v37 + 265) = 1;
      *(v37 + 272) = v124;
      v0[117] = v118;
      v0[118] = sub_1D5B4A3E4(&qword_1EDF39740, type metadata accessor for FeedGroupRegion, &protocol conformance descriptor for FeedGroupRegion);
      v0[114] = v37;
      v85 = MEMORY[0x1E69E7CC0];
      v86 = sub_1D5BF796C(MEMORY[0x1E69E7CC0]);
      LOBYTE(v124) = *(v130 + 177);
      (*(v132 + 104))(v138, *MEMORY[0x1E69D7210], v134);
      LOBYTE(v130) = *(v130 + 176);
      *(v127 + v135[14]) = MEMORY[0x1E69E7CC8];
      *(v127 + v135[15]) = v85;
      *(v127 + v135[19]) = 0;
      sub_1D5B68374(v119 + 896, v127 + 8);
      *(v127 + 48) = v86;
      v0[124] = *(v37 + 152);
      sub_1D71108AC(0, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E62F8]);
      sub_1D7110694(&qword_1EDF1B480, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E6328], v87);
      sub_1D5BCAF5C();
      *(v127 + 72) = sub_1D72623BC();
      *(v127 + 80) = *(v37 + 152);
      v88 = *(v37 + 72);
      *(v127 + 56) = v88;
      swift_bridgeObjectRetain_n();

      v89 = sub_1D5BCB16C(v88);

      *(v127 + 64) = v89;
      *(v127 + v135[16]) = v124;
      (*(v132 + 16))(v127 + v135[13], v138, v134);
      *v127 = v130;
      *(v127 + 96) = v131;
      *(v127 + 88) = 0;
      LOBYTE(v51) = *(v37 + 265);
      v33 = v0;
      if (v51 & 1) != 0 || (*(v37 + 248))
      {
        v90 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
LABEL_47:
        v90 = *(v37 + 240);
      }

      v93 = v33[130];
      v94 = v33[129];
      *(v93 + *(v94 + 72)) = v90;
      if ((v51 | *(v37 + 264)))
      {
        v95 = 0;
      }

      else
      {
        v95 = *(v37 + 256);
      }

      *(v93 + *(v94 + 68)) = v95;
      v96 = *(v37 + 64);
      v97 = *(v96 + 16);
      if (v97)
      {
        v98 = v33[140];
        v99 = v96 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
        v100 = *(v98 + 72);

        do
        {
          v101 = v33[141];
          sub_1D7110060(v99, v101, type metadata accessor for FeedItem);
          sub_1D5BCEE08(v101);
          sub_1D5CED8B0(v101, type metadata accessor for FeedItem);
          v99 += v100;
          --v97;
        }

        while (v97);
      }

      else
      {
      }

      v102 = v33[130];
      v103 = v33[125];
      (*(v33[132] + 8))(v33[133], v33[131]);

      sub_1D5CEC67C(v119);
      sub_1D71100C8(v102, v103, type metadata accessor for GroupLayoutBindingContext);
      __swift_destroy_boxed_opaque_existential_1((v119 + 896));

      v92 = v33[1];
    }

    else
    {

      sub_1D7110640();
      swift_allocError();
      *v91 = 1;
      swift_willThrow();
      sub_1D5CEC67C(v1);

      v92 = v0[1];
    }

    v92();
  }
}