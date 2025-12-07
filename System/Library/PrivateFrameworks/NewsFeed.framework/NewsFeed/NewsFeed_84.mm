uint64_t sub_1D62B6AE8(uint64_t a1)
{
  sub_1D5B4B554(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6B70(uint64_t a1, uint64_t a2)
{
  sub_1D5B4B554(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6C00(uint64_t a1)
{
  sub_1D5B4B554(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6C88(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6D24(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6DB8(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6E54(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6EE8(uint64_t a1)
{
  sub_1D5B4B554(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6F70(uint64_t result, uint64_t a2)
{
  if (BYTE2(a2) != 255)
  {
    return sub_1D610CA74(result, a2, SBYTE2(a2), sub_1D60CF6A8, sub_1D60CF6DC);
  }

  return result;
}

double sub_1D62B6FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
  }

  else
  {
  }

  return result;
}

double sub_1D62B7020(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((~(result & a3) & 0x3000000000000007) != 0)
  {
    return sub_1D62B703C(result, a2, a3);
  }

  return v3;
}

double sub_1D62B703C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
  }

  else
  {
  }

  return result;
}

double sub_1D62B7098(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 4) != 0)
  {
  }

  else
  {
  }

  return result;
}

double sub_1D62B7110(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~a2 & 0xF000000000000007) != 0 || (a4 & 7) != 7)
  {
    return sub_1D62B7130(result, a2, a3, a4);
  }

  return v5;
}

double sub_1D62B7130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 4) == 0)
  {
  }

  return result;
}

uint64_t sub_1D62B7198(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5CF4A48(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D62B7204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5CF4A48(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1D62B72BC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double sub_1D62B72CC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double sub_1D62B738C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((~a2 & 0xF000000000000007) != 0 || (a4 & 7) != 7)
  {
    return sub_1D62B7098(a1, a2, a3, a4);
  }

  return result;
}

double sub_1D62B7514(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 6 < 6 || a3 == 12)
  {
  }

  return result;
}

uint64_t sub_1D62B753C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 5u)
  {
    if (a7 > 8u)
    {
      if (a7 != 9 && a7 != 10 && a7 != 11)
      {
        return result;
      }
    }

    else if (a7 != 6 && a7 != 7 && a7 != 8)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (a7 < 4u)
  {
    goto LABEL_15;
  }

  if (a7 == 4)
  {
    sub_1D5D615EC(result, a2);
    sub_1D5D615EC(a3, a4);
    return sub_1D5D615EC(a5, a6);
  }

  if (a7 == 5)
  {
LABEL_15:
  }

  return result;
}

uint64_t sub_1D62B7654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 == 3)
    {
LABEL_8:

      goto LABEL_9;
    }

    if (a7 != 4)
    {
      return result;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (a7 >= 2u)
  {
    if (a7 != 2)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_9:
}

double sub_1D62B772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 == 3)
    {
LABEL_8:

      goto LABEL_9;
    }

    if (a7 != 4)
    {
      return result;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (a7 >= 2u)
  {
    if (a7 != 2)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_9:

  return result;
}

void sub_1D62B78B4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  v7 = a7 >> 13;
  if (v7 == 4 || v7 == 3)
  {
    sub_1D5D27950(a1, a2, a3, a4);
  }

  else if (v7 == 2)
  {

    sub_1D5E1DAEC(a1, a2, a3, a4, a5, a6, a7, HIBYTE(a7) & 0x1F);
  }
}

uint64_t sub_1D62B7904(uint64_t a1)
{
  sub_1D5C5A0E0(0, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D62B7B54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a3 != 1)
  {

    sub_1D5DEA234(a2);

    sub_1D5C75A4C(a5, a6, a7 & 1);
  }
}

void sub_1D62B7BE0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a3 != 1)
  {

    sub_1D5CBF568(a2);

    sub_1D5D2F2C8(a5, a6, a7 & 1);
  }
}

uint64_t sub_1D62B7DCC(uint64_t result, uint64_t a2)
{
  if (BYTE2(a2) != 255)
  {
    return sub_1D610CA74(result, a2, SBYTE2(a2), sub_1D610CA28, sub_1D610CA5C);
  }

  return result;
}

unint64_t sub_1D62B7E1C(unint64_t result)
{
  if (result != 3)
  {
    return sub_1D62B5DD0(result);
  }

  return result;
}

unint64_t sub_1D62B7E2C()
{
  result = qword_1EDF1A690;
  if (!qword_1EDF1A690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A690);
  }

  return result;
}

void sub_1D62B7ECC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1D5F26358(a1, a2, a3 & 1);
  }
}

void sub_1D62B7EE4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D62B5FC8(a1, a2 & 1);
  }
}

uint64_t sub_1D62B8660()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18720 = result;
  return result;
}

uint64_t sub_1D62B8830()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18698 = result;
  return result;
}

uint64_t sub_1D62B8A00()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF3C290 = result;
  return result;
}

uint64_t sub_1D62B8BD0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF186A8 = result;
  return result;
}

uint64_t sub_1D62B8DA0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC8854F0 = result;
  return result;
}

uint64_t sub_1D62B8F70()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF186C8 = result;
  return result;
}

uint64_t sub_1D62B9140()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC8854F8 = result;
  return result;
}

uint64_t sub_1D62B9310()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC885500 = result;
  return result;
}

uint64_t sub_1D62B94E0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18668 = result;
  return result;
}

uint64_t sub_1D62B96D4()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885508 = result;
  return result;
}

uint64_t sub_1D62B98EC()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885510 = result;
  return result;
}

uint64_t sub_1D62B9AE0()
{
  v18 = sub_1D72597EC();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D72597FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D725967C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  v17 = v14;
  sub_1D726207C();
  (*(v10 + 104))(v13, *MEMORY[0x1E69D6D00], v9);
  *v8 = sub_1D726207C();
  v8[1] = v15;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E98], v4);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E90], v18);
  result = sub_1D725984C();
  qword_1EDF186B8 = result;
  return result;
}

uint64_t sub_1D62B9D78()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC885518 = result;
  return result;
}

uint64_t sub_1D62B9F48()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D10], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC885520 = result;
  return result;
}

uint64_t sub_1D62BA118()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18678 = result;
  return result;
}

uint64_t sub_1D62BA2E8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF3C2A0 = result;
  return result;
}

uint64_t sub_1D62BA4B8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC885528 = result;
  return result;
}

uint64_t sub_1D62BA688()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF186E0 = result;
  return result;
}

uint64_t sub_1D62BA858()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18688 = result;
  return result;
}

uint64_t sub_1D62BAA28()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D10], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC885530 = result;
  return result;
}

uint64_t sub_1D62BABF8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885538 = result;
  return result;
}

uint64_t sub_1D62BAE08()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885540 = result;
  return result;
}

uint64_t sub_1D62BAFF8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF187B8 = result;
  return result;
}

uint64_t sub_1D62BB230()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C320 = result;
  return result;
}

uint64_t sub_1D62BB468()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18830 = result;
  return result;
}

uint64_t sub_1D62BB6C8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18778 = result;
  return result;
}

uint64_t sub_1D62BB8E0()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18748 = result;
  return result;
}

uint64_t sub_1D62BBAD0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885548 = result;
  return result;
}

uint64_t sub_1D62BBCC0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885550 = result;
  return result;
}

uint64_t sub_1D62BBEB0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6E12C(0, &qword_1EDF3C208, MEMORY[0x1E69E63B0], MEMORY[0x1E69D6F00]);
  v6[2] = 0x3FD0000000000000;
  v6[3] = 0x3FF0000000000000;
  v6[1] = 0x3FF0000000000000;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  result = sub_1D725985C();
  qword_1EC885558 = result;
  return result;
}

uint64_t sub_1D62BC018()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C358 = result;
  return result;
}

uint64_t sub_1D62BC208()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF187E0 = result;
  return result;
}

uint64_t sub_1D62BC3F8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B77E58(0, &qword_1EDF18188, sub_1D62C5834, &type metadata for DebugWebEmbedRendering);
  v11[15] = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D70FBA8C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  sub_1D62C5888();
  result = sub_1D725982C();
  qword_1EDF187C8 = result;
  return result;
}

uint64_t sub_1D62BC60C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0x2E302E302E373231;
  v11[1] = 0xE900000000000031;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885560 = result;
  return result;
}

uint64_t sub_1D62BC814()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 808988728;
  v11[1] = 0xE400000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885568 = result;
  return result;
}

uint64_t sub_1D62BCA10()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 825765944;
  v11[1] = 0xE400000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885570 = result;
  return result;
}

uint64_t sub_1D62BCC0C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6E12C(0, &qword_1EDF18178, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28]);
  v6[2] = 6;
  v6[3] = 6;
  v6[1] = 18;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  result = sub_1D725985C();
  qword_1EC885578 = result;
  return result;
}

uint64_t sub_1D62BCD74()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885580 = result;
  return result;
}

uint64_t sub_1D62BCF64()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885588 = result;
  return result;
}

uint64_t sub_1D62BD154()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885590 = result;
  return result;
}

uint64_t sub_1D62BD348()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885598 = result;
  return result;
}

uint64_t sub_1D62BD53C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855A0 = result;
  return result;
}

uint64_t sub_1D62BD730()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855A8 = result;
  return result;
}

uint64_t sub_1D62BD920()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855B0 = result;
  return result;
}

uint64_t sub_1D62BDB10()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA7E8 = result;
  return result;
}

uint64_t sub_1D62BDCDC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B77E58(0, &qword_1EC8856A8, sub_1D62C546C, &type metadata for DebugFormatConsoleDisplay);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA7F0 = result;
  return result;
}

uint64_t sub_1D62BDEB4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B77E58(0, &qword_1EC8856A8, sub_1D62C546C, &type metadata for DebugFormatConsoleDisplay);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA7F8 = result;
  return result;
}

uint64_t sub_1D62BE08C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA800 = result;
  return result;
}

uint64_t sub_1D62BE25C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855B8 = result;
  return result;
}

uint64_t sub_1D62BE450()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855C0 = result;
  return result;
}

uint64_t sub_1D62BE644()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = 1;
  sub_1D62C57A0(0);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855C8 = result;
  return result;
}

uint64_t sub_1D62BE820()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = 0;
  sub_1D62C570C(0);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855D0 = result;
  return result;
}

uint64_t sub_1D62BE9F8()
{
  sub_1D5B77F68(0, &unk_1EC88EC80, &type metadata for DebugFormatWeather, MEMORY[0x1E69D6EA8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v16 - v4;
  v21 = sub_1D72597EC();
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v6);
  v20 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D72597FC();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v9);
  v18 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D69990E4(0, 26, 0);
  v11 = 0;
  v12 = v22;
  do
  {
    sub_1D6F4C0D8(byte_1F50F8F40[v11 + 32]);
    v22 = v12;
    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D69990E4((v13 > 1), v14 + 1, 1);
      v12 = v22;
    }

    ++v11;
    *(v12 + 16) = v14 + 1;
    (*(v2 + 32))(v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v5, v1);
  }

  while (v11 != 26);
  sub_1D5B77E58(0, &qword_1EC885690, sub_1D62C52C0, &type metadata for DebugFormatWeather);
  (*(v8 + 104))(v18, *MEMORY[0x1E69D6EA0], v17);
  (*(v19 + 104))(v20, *MEMORY[0x1E69D6E88], v21);
  sub_1D62C5314();
  result = sub_1D725982C();
  qword_1EC9BA808 = result;
  return result;
}

uint64_t sub_1D62BED48()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855D8 = result;
  return result;
}

uint64_t sub_1D62BEF3C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855E0 = result;
  return result;
}

uint64_t sub_1D62BF12C()
{
  v12 = sub_1D72597EC();
  v0 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D72597FC();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B77E58(0, &qword_1EC885740, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget);
  v10[1] = "ormat.upload_diffing_enabled";
  v10[2] = v8;
  v16 = 0;
  sub_1D5B77FB8(0, &qword_1EC885748, &qword_1EC885750, &type metadata for DebugFormatUploadTarget);
  sub_1D5B77F68(0, &qword_1EC885750, &type metadata for DebugFormatUploadTarget, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7279970;
  v15 = 1;
  sub_1D725980C();
  v14 = 2;
  sub_1D725980C();
  v13 = 0;
  sub_1D725980C();
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6EA0], v11);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E88], v12);
  sub_1D62C56B8();
  result = sub_1D725982C();
  qword_1EC8855E8 = result;
  return result;
}

uint64_t sub_1D62BF4A8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855F0 = result;
  return result;
}

uint64_t sub_1D62BF69C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855F8 = result;
  return result;
}

uint64_t sub_1D62BF890()
{
  v12 = sub_1D72597EC();
  v0 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D72597FC();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B77E58(0, &qword_1EC885720, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment);
  v10[1] = "ormat.asset_server_username";
  v10[2] = v8;
  v16 = 0;
  sub_1D5B77FB8(0, &qword_1EC885728, &qword_1EC885730, &type metadata for DebugFormatBackendEnvironment);
  sub_1D5B77F68(0, &qword_1EC885730, &type metadata for DebugFormatBackendEnvironment, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7279970;
  v15 = 0;
  sub_1D725980C();
  v14 = 1;
  sub_1D725980C();
  v13 = 2;
  sub_1D725980C();
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6EA0], v11);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E88], v12);
  sub_1D62C5664();
  result = sub_1D725982C();
  qword_1EC885600 = result;
  return result;
}

uint64_t sub_1D62BFBFC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885608 = result;
  return result;
}

uint64_t sub_1D62BFDF0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885610 = result;
  return result;
}

uint64_t sub_1D62BFFE4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA810 = result;
  return result;
}

uint64_t sub_1D62C01B4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 3;
  sub_1D5B77E58(0, &qword_1EC8856B8, sub_1D62C54C0, &type metadata for DebugFormatContentSizeCategory);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA818 = result;
  return result;
}

uint64_t sub_1D62C0390()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA820 = result;
  return result;
}

uint64_t sub_1D62C055C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA828 = result;
  return result;
}

uint64_t sub_1D62C0728()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA830 = result;
  return result;
}

uint64_t sub_1D62C08F4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA838 = result;
  return result;
}

uint64_t sub_1D62C0AC0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA840 = result;
  return result;
}

uint64_t sub_1D62C0C90()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA848 = result;
  return result;
}

uint64_t sub_1D62C0E60()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC9BA850 = result;
  return result;
}

uint64_t sub_1D62C100C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC9BA858 = result;
  return result;
}

uint64_t sub_1D62C11B8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC9BA860 = result;
  return result;
}

uint64_t sub_1D62C1364()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC9BA868 = result;
  return result;
}

uint64_t sub_1D62C1510()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA870 = result;
  return result;
}

uint64_t sub_1D62C16E0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = 0;
  sub_1D5B6E12C(0, &qword_1EDF3C208, MEMORY[0x1E69E63B0], MEMORY[0x1E69D6F00]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA878 = result;
  return result;
}

uint64_t sub_1D62C18AC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1D62C5368(0);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA880 = result;
  return result;
}

uint64_t sub_1D62C1A68()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1D62C5368(0);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA888 = result;
  return result;
}

uint64_t sub_1D62C1C24()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B77E58(0, &qword_1EC885678, sub_1D62C526C, &type metadata for DebugFormatDebuggerBreakpoints);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA890 = result;
  return result;
}

uint64_t sub_1D62C1E04()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA898 = result;
  return result;
}

uint64_t sub_1D62C1FD4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8A0 = result;
  return result;
}

uint64_t sub_1D62C21A4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8A8 = result;
  return result;
}

uint64_t sub_1D62C2374()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8B0 = result;
  return result;
}

uint64_t sub_1D62C2540()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B77E58(0, &qword_1EC8856C8, sub_1D60CB71C, &type metadata for DebugFormatWorkspaceCanvasSort);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8B8 = result;
  return result;
}

uint64_t sub_1D62C271C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8C0 = result;
  return result;
}

uint64_t sub_1D62C28EC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8C8 = result;
  return result;
}

uint64_t sub_1D62C2ABC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF187F0 = result;
  return result;
}

uint64_t sub_1D62C2CB0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C348 = result;
  return result;
}

uint64_t sub_1D62C2EA0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C330 = result;
  return result;
}

uint64_t sub_1D62C3090()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885618 = result;
  return result;
}

uint64_t sub_1D62C3280()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885620 = result;
  return result;
}

uint64_t sub_1D62C34B8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18848 = result;
  return result;
}

uint64_t sub_1D62C3688()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885628 = result;
  return result;
}

uint64_t sub_1D62C3898()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18878 = result;
  return result;
}

uint64_t sub_1D62C3AA8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18860 = result;
  return result;
}

uint64_t sub_1D62C3C98()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885630 = result;
  return result;
}

uint64_t sub_1D62C3EA8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885638 = result;
  return result;
}

uint64_t sub_1D62C40B8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = 0;
  sub_1D5B6E12C(0, &qword_1EDF18178, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885640 = result;
  return result;
}

uint64_t sub_1D62C42A8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B77E58(0, &qword_1EC8856F8, sub_1D62C55BC, &type metadata for SimulatedBundleSubscriptionDetection);
  v12[1] = "Ineligible Non-Member";
  v12[2] = v10;
  v18 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D5B77FB8(0, &qword_1EC885708, &qword_1EC885710, &type metadata for SimulatedBundleSubscriptionDetection);
  sub_1D5B77F68(0, &qword_1EC885710, &type metadata for SimulatedBundleSubscriptionDetection, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7279960;
  v17 = 0;
  sub_1D725980C();
  v16 = 1;
  sub_1D725980C();
  v15 = 2;
  sub_1D725980C();
  v14 = 3;
  sub_1D725980C();
  v13 = 4;
  sub_1D725980C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  sub_1D62C5610();
  result = sub_1D725982C();
  qword_1EC885648 = result;
  return result;
}

uint64_t sub_1D62C46C0()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B77E58(0, &qword_1EC8856D0, sub_1D62C5514, &type metadata for BundleSessionFamilyStatus);
  v12[1] = "an_number_of_members";
  v12[2] = v10;
  v17 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D5B77FB8(0, &qword_1EC8856E0, &qword_1EC8856E8, &type metadata for BundleSessionFamilyStatus);
  sub_1D5B77F68(0, &qword_1EC8856E8, &type metadata for BundleSessionFamilyStatus, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7274590;
  v16 = 0;
  sub_1D725980C();
  v15 = 1;
  sub_1D725980C();
  v14 = 2;
  sub_1D725980C();
  v13 = 3;
  sub_1D725980C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  sub_1D62C5568();
  result = sub_1D725982C();
  qword_1EC885650 = result;
  return result;
}

uint64_t sub_1D62C4A70()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[1] = 0;
  sub_1D5B6E12C(0, &qword_1EDF18178, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885658 = result;
  return result;
}

uint64_t Settings.NewsFeedModule.BundleSession.FamilyStatusOverrides.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_1D725969C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.NewsFeedModule.BundleSession.FamilyStatusOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_1D725969C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.NewsFeedModule.BundleSession.FamilyStatusOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C8NewsFeedE0cD6ModuleV13BundleSessionV21FamilyStatusOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D62C4ED0()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.NewsFeedModule.BundleSession.FamilyStatusOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EC885660 = result;
  return result;
}

uint64_t type metadata accessor for Settings.NewsFeedModule.BundleSession.FamilyStatusOverrides(uint64_t a1)
{
  result = qword_1EC885668;
  if (!qword_1EC885668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D62C526C()
{
  result = qword_1EC885680;
  if (!qword_1EC885680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885680);
  }

  return result;
}

unint64_t sub_1D62C52C0()
{
  result = qword_1EC88DE60;
  if (!qword_1EC88DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DE60);
  }

  return result;
}

unint64_t sub_1D62C5314()
{
  result = qword_1EC885698;
  if (!qword_1EC885698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885698);
  }

  return result;
}

void sub_1D62C5368(uint64_t a1)
{
  if (!qword_1EC8856A0)
  {
    sub_1D5B77F68(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D62C53F0();
    v1 = sub_1D725986C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8856A0);
    }
  }
}

unint64_t sub_1D62C53F0()
{
  result = qword_1EC88DE20;
  if (!qword_1EC88DE20)
  {
    sub_1D5B77F68(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DE20);
  }

  return result;
}

unint64_t sub_1D62C546C()
{
  result = qword_1EC8856B0;
  if (!qword_1EC8856B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8856B0);
  }

  return result;
}

unint64_t sub_1D62C54C0()
{
  result = qword_1EC8856C0;
  if (!qword_1EC8856C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8856C0);
  }

  return result;
}

unint64_t sub_1D62C5514()
{
  result = qword_1EC8856D8;
  if (!qword_1EC8856D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8856D8);
  }

  return result;
}

unint64_t sub_1D62C5568()
{
  result = qword_1EC8856F0;
  if (!qword_1EC8856F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8856F0);
  }

  return result;
}

unint64_t sub_1D62C55BC()
{
  result = qword_1EC885700;
  if (!qword_1EC885700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885700);
  }

  return result;
}

unint64_t sub_1D62C5610()
{
  result = qword_1EC885718;
  if (!qword_1EC885718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885718);
  }

  return result;
}

unint64_t sub_1D62C5664()
{
  result = qword_1EC885738;
  if (!qword_1EC885738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885738);
  }

  return result;
}

unint64_t sub_1D62C56B8()
{
  result = qword_1EC885758;
  if (!qword_1EC885758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885758);
  }

  return result;
}

void sub_1D62C570C(uint64_t a1)
{
  if (!qword_1EC885760)
  {
    type metadata accessor for UIUserInterfaceLayoutDirection(255);
    sub_1D5B46248(&qword_1EC88DDD0, type metadata accessor for UIUserInterfaceLayoutDirection, &protocol conformance descriptor for UIUserInterfaceLayoutDirection);
    v1 = sub_1D725986C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885760);
    }
  }
}

void sub_1D62C57A0(uint64_t a1)
{
  if (!qword_1EC885768)
  {
    type metadata accessor for UIUserInterfaceStyle(255);
    sub_1D5B46248(&qword_1EC88DDC0, type metadata accessor for UIUserInterfaceStyle, &protocol conformance descriptor for UIUserInterfaceStyle);
    v1 = sub_1D725986C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885768);
    }
  }
}

unint64_t sub_1D62C5834()
{
  result = qword_1EDF0DBB8;
  if (!qword_1EDF0DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DBB8);
  }

  return result;
}

unint64_t sub_1D62C5888()
{
  result = qword_1EDF0DBC0;
  if (!qword_1EDF0DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DBC0);
  }

  return result;
}

uint64_t WebEmbedDataSourceManagerError.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D62C5968()
{
  result = qword_1EC885770;
  if (!qword_1EC885770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885770);
  }

  return result;
}

uint64_t dispatch thunk of WebEmbedDataSourceManagerType.prepare(visualizations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64684;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WebEmbedDataSourceManagerType.record(for:standing:standingRecordConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 72) + **(a6 + 72));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D5B64684;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D62C5CE8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1D62C5F40;
  }

  else
  {

    v2 = sub_1D62C5E38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62C5E38()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  v6 = sub_1D7262EDC();
  sub_1D725C30C("Web embed data source manager did prepare visualizations %{public}@", 67, 2, &dword_1D5B42000, v2, v6, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D62C5F40()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[10];
  v4 = v0[11];

  v6 = sub_1D7262EBC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7270C10;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = v2;
  v0[2] = 0;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v9 = v0[2];
  v10 = v0[3];
  *(v7 + 96) = v8;
  *(v7 + 104) = v2;
  *(v7 + 72) = v9;
  *(v7 + 80) = v10;
  sub_1D725C30C("Web embed data source manager failed to prepare visualizations %{public}@, error=%{public}@", 91, 2, &dword_1D5B42000, v3, v6, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D62C60D0(uint64_t a1)
{
  v3 = 0;
  v117 = *v1;
  v150 = sub_1D725891C();
  v4 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v5);
  v144 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v143 = &v117 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v149 = &v117 - v12;
  v142 = type metadata accessor for WebEmbedDataSourceJson(0);
  MEMORY[0x1EEE9AC00](v142, v13);
  v141 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62D5684(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v117 - v17;
  v153 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
  v19 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v20);
  v148 = (&v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v117 - v24;
  v26 = sub_1D72585BC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v126 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v157 = &v117 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v160 = &v117 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v117 - v38;
  v128 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v128, v40);
  v127 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v131, v42);
  v130 = (&v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44, v45);
  v138 = &v117 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v51 = MEMORY[0x1E69E7CC0];
  v165 = MEMORY[0x1E69E7CC0];
  v52 = *(a1 + 16);
  v151 = v26;
  v120 = v52;
  v118 = a1;
  if (!v52)
  {
    goto LABEL_48;
  }

  v124 = *(v49 + 80);
  v123 = (v124 + 32) & ~v124;
  v122 = a1 + v123;
  v135 = *(v49 + 72);
  v161 = (v27 + 16);
  v162 = (v27 + 32);
  v152 = (v19 + 48);
  v53 = 0;
  v147 = (v4 + 8);
  v140 = (v4 + 16);
  v139 = (v27 + 8);
  v121 = xmmword_1D7273AE0;
  v146 = v18;
  v154 = v25;
  v54 = v27;
  v156 = v27;
  v129 = v39;
  v55 = &v117 - v50;
  v119 = &v117 - v50;
  while (1)
  {
    v125 = v53;
    v159 = type metadata accessor for WebEmbedDataVisualization;
    sub_1D62D47DC(v122 + v135 * v53, v55, type metadata accessor for WebEmbedDataVisualization);
    sub_1D62D5684(0, &qword_1EDF01F70, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6F90]);
    v59 = v123;
    v60 = swift_allocObject();
    *(v60 + 16) = v121;
    sub_1D62D47DC(v55, v60 + v59, v159);
    v61 = sub_1D6D28B24();
    v164 = v60;
    sub_1D5CFED40(v61);
    v62 = v164;
    v164 = v51;
    v134 = *(v62 + 16);
    if (v134)
    {
      break;
    }

    v56 = v51;
LABEL_4:
    v57 = v125 + 1;
    v55 = v119;
    sub_1D5BF1B4C(v119, type metadata accessor for WebEmbedDataVisualization);
    v58 = v56;
    v53 = v57;
    sub_1D698563C(v58);
    if (v57 == v120)
    {
      goto LABEL_47;
    }
  }

  v63 = 0;
  v133 = v62 + v59;
  v64 = v154;
  v132 = v62;
  while (1)
  {
    if (v63 >= *(v62 + 16))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v136 = v63;
    v72 = v133 + v63 * v135;
    v73 = v138;
    sub_1D62D47DC(v72, v138, type metadata accessor for WebEmbedDataVisualization);
    v74 = v73;
    v75 = v130;
    sub_1D62D47DC(v74, v130, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v76 = v127;
      sub_1D5BE74F4(v75, v127, type metadata accessor for GenericDataVisualization);
      v77 = *(v76 + *(v128 + 24));

      sub_1D5BF1B4C(v76, type metadata accessor for GenericDataVisualization);
      if (v77 >> 62)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v163 = *v75;
      v77 = sub_1D6F88478();

      v54 = v156;

      if (v77 >> 62)
      {
LABEL_12:
        v78 = sub_1D7263BFC();
        goto LABEL_15;
      }
    }

    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
    v137 = v3;
    if (!v78)
    {

      v83 = *(v51 + 16);
      if (v83)
      {
        break;
      }

      goto LABEL_7;
    }

    v163 = v51;
    sub_1D69971B4(0, v78 & ~(v78 >> 63), 0);
    if (v78 < 0)
    {
      goto LABEL_53;
    }

    v51 = v163;
    if ((v77 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v78; ++i)
      {
        v80 = MEMORY[0x1DA6FB460](i, v77);
        (*v161)(v39, v80 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v26);
        swift_unknownObjectRelease();
        v163 = v51;
        v82 = *(v51 + 16);
        v81 = *(v51 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_1D69971B4((v81 > 1), v82 + 1, 1);
          v51 = v163;
        }

        *(v51 + 16) = v82 + 1;
        (*(v54 + 32))(v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v82, v39, v26);
      }
    }

    else
    {
      v84 = *v161;
      v85 = 32;
      v86 = v126;
      do
      {
        v84(v86, *(v77 + v85) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v26);
        v163 = v51;
        v88 = *(v51 + 16);
        v87 = *(v51 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_1D69971B4((v87 > 1), v88 + 1, 1);
          v51 = v163;
        }

        *(v51 + 16) = v88 + 1;
        (*(v54 + 32))(v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v88, v86, v26);
        v85 += 8;
        --v78;
      }

      while (v78);
    }

    v18 = v146;
    v64 = v154;
    v83 = *(v51 + 16);
    if (v83)
    {
      break;
    }

LABEL_7:
    v65 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v66 = v136 + 1;

    MEMORY[0x1EEE9AC00](v67, v68);
    v69 = v138;
    *(&v117 - 2) = v155;
    *(&v117 - 1) = v69;
    v3 = v137;
    v70 = sub_1D5FBB884(sub_1D62D4898, (&v117 - 4), v65);
    v63 = v66;

    sub_1D5BF1B4C(v69, type metadata accessor for WebEmbedDataVisualization);
    sub_1D698563C(v70);
    v71 = v66 == v134;
    v51 = MEMORY[0x1E69E7CC0];
    v39 = v129;
    v62 = v132;
    if (v71)
    {

      v56 = v164;
      goto LABEL_4;
    }
  }

  v89 = 0;
  v65 = MEMORY[0x1E69E7CC0];
  v145 = v83;
  while (v89 < *(v51 + 16))
  {
    v159 = ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v158 = *(v54 + 72);
    (*(v54 + 16))(v160, &v159[v51 + v158 * v89], v26);
    sub_1D725B86C();
    if ((*v152)(v18, 1, v153) == 1)
    {
      sub_1D62D4718(v18, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry);
LABEL_40:
      v101 = *v162;
      (*v162)(v157, v160, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v163 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D69971B4(0, *(v65 + 16) + 1, 1);
        v65 = v163;
      }

      v104 = *(v65 + 16);
      v103 = *(v65 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_1D69971B4((v103 > 1), v104 + 1, 1);
        v65 = v163;
      }

      *(v65 + 16) = v104 + 1;
      v101(&v159[v65 + v104 * v158], v157, v26);
      v64 = v154;
      v54 = v156;
      goto LABEL_32;
    }

    sub_1D5BE74F4(v18, v64, type metadata accessor for WebEmbedDataSourceCacheEntry);
    v90 = v148;
    sub_1D62D47DC(v64, v148, type metadata accessor for WebEmbedDataSourceCacheEntry);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v91 = v144;
      v92 = v150;
      (*v140)(v144, *v90 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate, v150);
      v93 = v143;
      sub_1D725880C();
      v94 = *v147;
      (*v147)(v91, v92);
      v95 = v149;
      sub_1D725890C();
      v96 = sub_1D725882C();

      v97 = v95;
      v18 = v146;
      v94(v97, v92);
      v98 = v92;
      v64 = v154;
      v94(v93, v98);
      v83 = v145;
    }

    else
    {
      v99 = v141;
      sub_1D5BE74F4(v90, v141, type metadata accessor for WebEmbedDataSourceJson);
      v100 = v149;
      sub_1D725890C();
      v96 = sub_1D725882C();
      (*v147)(v100, v150);
      sub_1D5BF1B4C(v99, type metadata accessor for WebEmbedDataSourceJson);
    }

    sub_1D5BF1B4C(v64, type metadata accessor for WebEmbedDataSourceCacheEntry);
    v26 = v151;
    v54 = v156;
    if (v96)
    {
      goto LABEL_40;
    }

    (*v139)(v160, v151);
LABEL_32:
    if (v83 == ++v89)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_47:
  v51 = v165;
LABEL_48:
  v165 = v51;
  sub_1D62D5684(0, &qword_1EDF052C8, type metadata accessor for WebEmbedDataVisualizationDataRequest, MEMORY[0x1E69E62F8]);
  sub_1D62D5234(&qword_1EDF052C0, &qword_1EDF052C8, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  sub_1D62D48B4(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v105 = sub_1D72623CC();

  if (*(v105 + 16))
  {
    MEMORY[0x1EEE9AC00](v106, v107);
    v108 = v155;
    *(&v117 - 2) = v105;
    *(&v117 - 1) = v108;
    sub_1D62D4918(0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v118;

    v109 = sub_1D725B92C();
    v110 = sub_1D725BA9C();

    return v110;
  }

  if (qword_1EDF0E798 != -1)
  {
LABEL_54:
    swift_once();
  }

  v112 = qword_1EDFFC588;
  v113 = sub_1D7262EDC();
  sub_1D725C30C("Web embed data source manager attempt to prepare but no stale data", 66, 2, &dword_1D5B42000, v112, v113, MEMORY[0x1E69E7CC0], v117);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v117 - 2) = v116;
  *(&v117 - 1) = v118;
  sub_1D5D077AC(0, &qword_1EDF3B8E0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D62C7210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a2;
  v92 = a1;
  v79 = *v3;
  sub_1D62D5684(0, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v87 = &v77 - v7;
  v8 = type metadata accessor for WebEmbedDatastoreUpdate(0);
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v84 = &v77 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v83 = &v77 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v77 - v27;
  v91 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  MEMORY[0x1EEE9AC00](v91, v29);
  v88 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v93 = &v77 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (&v77 - v36);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v77 - v40;
  v42 = sub_1D7261B9C();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = (&v77 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  *v46 = sub_1D726308C();
  (*(v43 + 104))(v46, *MEMORY[0x1E69E8020], v42);
  v47 = sub_1D7261BBC();
  (*(v43 + 8))(v46, v42);
  if ((v47 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1D62D47DC(a3, v28, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D47DC(v28, v41, type metadata accessor for WebEmbedDataVisualization);
  v94[0] = sub_1D6D28818();

  sub_1D6CD315C(v94);

  sub_1D5BF1B4C(v28, type metadata accessor for WebEmbedDataVisualization);
  v48 = v90;
  *&v41[*(v91 + 20)] = v94[0];
  swift_beginAccess();
  v49 = *(v48 + 56);
  v46 = v37;
  if (*(v49 + 16) && (v50 = sub_1D6D6303C(v41), (v51 & 1) != 0))
  {
    v28 = *(*(v49 + 56) + 8 * v50);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v81 = a3;
  v96 = v28;
  swift_endAccess();
  sub_1D5BF1B4C(v41, type metadata accessor for WebEmbedDatastoreCacheKey);
  v82 = v14;
  v80 = 0;
  if (v28 >> 62)
  {
LABEL_22:
    v52 = sub_1D7263BFC();
    v53 = v93;
    if (v52)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v52 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v53 = v93;
  if (v52)
  {
LABEL_8:
    v54 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v54, v28);
        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:

          return;
        }
      }

      else
      {
        if (v54 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_18;
        }
      }

      v57 = v18;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == v92)
        {
          goto LABEL_19;
        }
      }

      ++v54;
      v55 = v56 == v52;
      v18 = v57;
      v53 = v93;
      v46 = v37;
    }

    while (!v55);
  }

LABEL_23:
  v59 = v81;
  v60 = v83;
  sub_1D62D47DC(v81, v83, type metadata accessor for WebEmbedDataVisualization);
  type metadata accessor for WeakWebEmbedDataSourceManagerObserver(0);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v61 + 24) = v89;
  swift_unknownObjectWeakAssign();
  v62 = sub_1D5BE74F4(v60, v61 + OBJC_IVAR____TtC8NewsFeed37WeakWebEmbedDataSourceManagerObserver_dataVisualization, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1DA6F9CE0](v62);
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  v63 = v96;
  v64 = v84;
  sub_1D62D47DC(v59, v84, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D47DC(v64, v46, type metadata accessor for WebEmbedDataVisualization);
  v94[0] = sub_1D6D28818();

  v65 = v46;
  v66 = v80;
  sub_1D6CD315C(v94);
  v67 = v90;
  if (v66)
  {

    __break(1u);
  }

  else
  {

    sub_1D5BF1B4C(v64, type metadata accessor for WebEmbedDataVisualization);
    v68 = v91;
    *(v65 + *(v91 + 20)) = v94[0];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v67 + 56);
    *(v67 + 56) = 0x8000000000000000;
    sub_1D6D7A064(v63, v65, isUniquelyReferenced_nonNull_native);
    sub_1D5BF1B4C(v65, type metadata accessor for WebEmbedDatastoreCacheKey);
    *(v67 + 56) = v95;
    swift_endAccess();
    sub_1D62D47DC(v59, v18, type metadata accessor for WebEmbedDataVisualization);
    sub_1D62D47DC(v18, v53, type metadata accessor for WebEmbedDataVisualization);
    v94[0] = sub_1D6D28818();

    sub_1D6CD315C(v94);

    sub_1D5BF1B4C(v18, type metadata accessor for WebEmbedDataVisualization);
    *(v53 + *(v68 + 20)) = v94[0];
    v70 = v87;
    sub_1D725B86C();
    sub_1D5BF1B4C(v53, type metadata accessor for WebEmbedDatastoreCacheKey);
    if ((*(v85 + 48))(v70, 1, v86) == 1)
    {
      sub_1D62D4718(v70, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate);
    }

    else
    {
      v71 = v78;
      sub_1D5BE74F4(v70, v78, type metadata accessor for WebEmbedDatastoreUpdate);
      ObjectType = swift_getObjectType();
      v94[3] = v79;
      v94[4] = &off_1F5142C60;
      v94[0] = v67;
      v73 = v89;
      v74 = *(v89 + 8);

      v74(v94, v59, v71, ObjectType, v73);
      sub_1D5BF1B4C(v71, type metadata accessor for WebEmbedDatastoreUpdate);
      __swift_destroy_boxed_opaque_existential_1(v94);
    }

    sub_1D62C7C60(v59);
    sub_1D6CD06D0(v59);
    v75 = v82;
    sub_1D62D47DC(v59, v82, type metadata accessor for WebEmbedDataVisualization);
    v76 = v88;
    sub_1D62D47DC(v75, v88, type metadata accessor for WebEmbedDataVisualization);
    v94[0] = sub_1D6D28818();

    sub_1D6CD315C(v94);

    sub_1D5BF1B4C(v75, type metadata accessor for WebEmbedDataVisualization);
    *(v76 + *(v91 + 20)) = v94[0];
    sub_1D6CD0FB8(v76, 0, 0);
    sub_1D5BF1B4C(v76, type metadata accessor for WebEmbedDatastoreCacheKey);
  }
}

void sub_1D62C7C60(uint64_t a1)
{
  v2 = v1;
  v156 = sub_1D725891C();
  v4 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v5);
  v147 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v146 = &v135 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v145 = &v135 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v144 = &v135 - v15;
  v155 = type metadata accessor for WebEmbedDataSourceJson(0);
  MEMORY[0x1EEE9AC00](v155, v16);
  v143 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v142 = &v135 - v20;
  sub_1D62D5684(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v135 - v23;
  v171 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
  v25 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171, v26);
  v154 = (&v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28, v29);
  v153 = &v135 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v135 - v33;
  v137 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v137, v35);
  v136 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for WebEmbedDataVisualization(0);
  v37 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v38);
  v176 = &v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v175 = &v135 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v141 = (&v135 - v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v170 = &v135 - v48;
  sub_1D62D5684(0, &qword_1EDF01F70, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6F90]);
  v49 = *(v37 + 80);
  v50 = (v49 + 32) & ~v49;
  v168 = *(v37 + 72);
  v164 = v49;
  v165 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1D7273AE0;
  sub_1D62D47DC(a1, v52 + v50, type metadata accessor for WebEmbedDataVisualization);
  v53 = sub_1D6D28B24();
  v179 = v52;
  sub_1D5CFED40(v53);
  v54 = v179;
  v140 = *(v179 + 16);
  if (!v140)
  {

LABEL_61:

    return;
  }

  v161 = v24;
  v55 = 0;
  v139 = v179 + v50;
  v158 = (v25 + 48);
  v152 = (v4 + 16);
  v151 = (v4 + 8);
  v150 = xmmword_1D7270C10;
  v149 = xmmword_1D7279970;
  v162 = a1;
  v163 = v2;
  v160 = v34;
  v159 = v50;
  v138 = v179;
  while (1)
  {
    if (v55 >= *(v54 + 16))
    {
      goto LABEL_64;
    }

    sub_1D62D47DC(v139 + v55 * v168, v170, type metadata accessor for WebEmbedDataVisualization);
    v56 = v141;
    sub_1D62D47DC(a1, v141, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = v136;
      sub_1D5BE74F4(v56, v136, type metadata accessor for GenericDataVisualization);
      v58 = *(v57 + *(v137 + 24));

      sub_1D5BF1B4C(v57, type metadata accessor for GenericDataVisualization);
      goto LABEL_22;
    }

    v59 = *v56;
    v60 = *v56 >> 61;
    if (v60 > 2)
    {
      v61 = v59 & 0x1FFFFFFFFFFFFFFFLL;
      if (v60 > 4)
      {
        if (v60 == 5)
        {
          v62 = *(v61 + 16);
          v63 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources;
        }

        else
        {
          v62 = *(v61 + 16);
          v63 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources;
        }
      }

      else if (v60 == 3)
      {
        v62 = *(v61 + 16);
        v63 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources;
      }

      else
      {
        v62 = *(v61 + 16);
        v63 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources;
      }

LABEL_20:
      v58 = *(v62 + *v63);

      goto LABEL_21;
    }

    if (v60)
    {
      v64 = v59 & 0x1FFFFFFFFFFFFFFFLL;
      if (v60 == 1)
      {
        v62 = *(v64 + 16);
        v63 = &OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources;
      }

      else
      {
        v62 = *(v64 + 16);
        v63 = &OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_urlDataSources;
      }

      goto LABEL_20;
    }

    v58 = *(*(v59 + 16) + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources);

LABEL_21:

LABEL_22:
    v65 = v58;
    if (v58 >> 62)
    {
      break;
    }

    v66 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66)
    {
      goto LABEL_24;
    }

LABEL_3:
    ++v55;

    sub_1D5BF1B4C(v170, type metadata accessor for WebEmbedDataVisualization);
    v54 = v138;
    if (v55 == v140)
    {
      goto LABEL_61;
    }
  }

  v66 = sub_1D7263BFC();
  v65 = v58;
  if (!v66)
  {
    goto LABEL_3;
  }

LABEL_24:
  v67 = 0;
  v177 = *(v2 + 72);
  v173 = v65;
  v174 = v65 & 0xC000000000000001;
  v166 = v55;
  v167 = v65 & 0xFFFFFFFFFFFFFF8;
  v172 = v66;
  while (2)
  {
    if (v174)
    {
      v71 = MEMORY[0x1DA6FB460](v67);
      v72 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      goto LABEL_33;
    }

    if (v67 >= *(v167 + 16))
    {
      goto LABEL_63;
    }

    v71 = *(v65 + 8 * v67 + 32);

    v72 = v67 + 1;
    if (!__OFADD__(v67, 1))
    {
LABEL_33:
      v73 = OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
      sub_1D725B86C();
      v178 = v72;
      if (v179)
      {
        v68 = *(v179 + 16);

        os_unfair_lock_lock(v68 + 6);
        v69 = v176;
        sub_1D62D47DC(a1, v176, type metadata accessor for WebEmbedDataVisualization);
        v70 = v175;
        sub_1D5FEA660(v175, v69);
        sub_1D5BF1B4C(v70, type metadata accessor for WebEmbedDataVisualization);
        os_unfair_lock_unlock(v68 + 6);
      }

      else
      {
        v74 = v161;
        sub_1D725B86C();
        if ((*v158)(v74, 1, v171) == 1)
        {
          sub_1D62D4718(v74, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry);
          if (qword_1EDF0E798 != -1)
          {
            swift_once();
          }

          v75 = qword_1EDFFC588;
          sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v76 = swift_allocObject();
          *(v76 + 16) = v150;
          v77 = v170;
          v78 = sub_1D62CB840();
          v80 = v79;
          v81 = MEMORY[0x1E69E6158];
          *(v76 + 56) = MEMORY[0x1E69E6158];
          v82 = sub_1D5B7E2C0();
          *(v76 + 64) = v82;
          *(v76 + 32) = v78;
          *(v76 + 40) = v80;
          v83 = sub_1D72583DC();
          *(v76 + 96) = v81;
          *(v76 + 104) = v82;
          *(v76 + 72) = v83;
          *(v76 + 80) = v84;
          v85 = sub_1D7262EDC();
          sub_1D725C30C("Web embed data source manager subscribing to visualization data %{public}@ with immediate fetch, %{public}@", 107, 2, &dword_1D5B42000, v75, v85, v76);

          v86 = v159;
          v87 = swift_allocObject();
          sub_1D62D47DC(v77, v87 + v86, type metadata accessor for WebEmbedDataVisualization);
          v88 = sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization, &protocol conformance descriptor for WebEmbedDataVisualization);
          v179 = MEMORY[0x1DA6FA1E0](1, v169, v88);
          v89 = v176;
          sub_1D62D47DC(v87 + v86, v176, type metadata accessor for WebEmbedDataVisualization);
          v90 = v175;
          sub_1D5FEA660(v175, v89);
          sub_1D5BF1B4C(v90, type metadata accessor for WebEmbedDataVisualization);
          swift_setDeallocating();
          sub_1D5BF1B4C(v87 + v86, type metadata accessor for WebEmbedDataVisualization);
          swift_deallocClassInstance();
          v2 = v163;
          sub_1D62CE158(v71 + v73, v179, 0, 1);
        }

        else
        {
          v91 = v160;
          sub_1D5BE74F4(v74, v160, type metadata accessor for WebEmbedDataSourceCacheEntry);
          v92 = v153;
          if (qword_1EDF0E798 != -1)
          {
            swift_once();
          }

          v93 = qword_1EDFFC588;
          sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v94 = swift_allocObject();
          *(v94 + 16) = v149;
          v95 = sub_1D62CB840();
          v97 = v96;
          *(v94 + 56) = MEMORY[0x1E69E6158];
          v157 = sub_1D5B7E2C0();
          *(v94 + 64) = v157;
          *(v94 + 32) = v95;
          *(v94 + 40) = v97;
          sub_1D62D47DC(v91, v92, type metadata accessor for WebEmbedDataSourceCacheEntry);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v98 = v145;
            v99 = v156;
            (*v152)(v145, *v92 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate, v156);
            v100 = v144;
            sub_1D725880C();
            v148 = v93;
            v101 = *v151;
            (*v151)(v98, v99);
            sub_1D725887C();
            v103 = v102;

            v101(v100, v99);
            v93 = v148;
            v91 = v160;
          }

          else
          {
            v104 = v92;
            v105 = v142;
            sub_1D5BE74F4(v104, v142, type metadata accessor for WebEmbedDataSourceJson);
            sub_1D725887C();
            v103 = v106;
            sub_1D5BF1B4C(v105, type metadata accessor for WebEmbedDataSourceJson);
          }

          if (v103 < 0.0)
          {
            v107 = 0.0;
          }

          else
          {
            v107 = v103;
          }

          *(v94 + 96) = MEMORY[0x1E69E63B0];
          *(v94 + 104) = MEMORY[0x1E69E6438];
          *(v94 + 72) = v107;
          v108 = sub_1D72583DC();
          v109 = v157;
          *(v94 + 136) = MEMORY[0x1E69E6158];
          *(v94 + 144) = v109;
          *(v94 + 112) = v108;
          *(v94 + 120) = v110;
          v111 = sub_1D7262EDC();
          sub_1D725C30C("Web embed data source manager subscribing to visualization data %{public}@ with %f delayed fetch %{public}@", 107, 2, &dword_1D5B42000, v93, v111, v94);

          v112 = v154;
          sub_1D62D47DC(v91, v154, type metadata accessor for WebEmbedDataSourceCacheEntry);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v113 = *v112 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate;
            v114 = v147;
            v115 = v156;
            (*v152)(v147, v113, v156);
            v116 = v146;
            sub_1D725880C();
            v117 = *v151;
            (*v151)(v114, v115);
            sub_1D725887C();
            v119 = v118;

            v120 = v160;
            v117(v116, v115);
          }

          else
          {
            v121 = v143;
            sub_1D5BE74F4(v112, v143, type metadata accessor for WebEmbedDataSourceJson);
            sub_1D725887C();
            v119 = v122;
            sub_1D5BF1B4C(v121, type metadata accessor for WebEmbedDataSourceJson);
            v120 = v91;
          }

          if (v119 < 0.0)
          {
            v123 = 0.0;
          }

          else
          {
            v123 = v119;
          }

          v124 = *&v123;
          v125 = v159;
          v126 = swift_allocObject();
          sub_1D62D47DC(v170, v126 + v125, type metadata accessor for WebEmbedDataVisualization);
          v127 = sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization, &protocol conformance descriptor for WebEmbedDataVisualization);
          v179 = MEMORY[0x1DA6FA1E0](1, v169, v127);
          v128 = v176;
          sub_1D62D47DC(v126 + v125, v176, type metadata accessor for WebEmbedDataVisualization);
          v129 = v175;
          sub_1D5FEA660(v175, v128);
          sub_1D5BF1B4C(v129, type metadata accessor for WebEmbedDataVisualization);
          swift_setDeallocating();
          sub_1D5BF1B4C(v126 + v125, type metadata accessor for WebEmbedDataVisualization);
          swift_deallocClassInstance();
          v2 = v163;
          sub_1D62CE158(v71 + v73, v179, v124, 0);

          sub_1D5BF1B4C(v120, type metadata accessor for WebEmbedDataSourceCacheEntry);
        }

        a1 = v162;
        sub_1D725B86C();
        if (v179)
        {
          v130 = *(v179 + 16);

          os_unfair_lock_lock(v130 + 6);
          v131 = v176;
          sub_1D62D47DC(a1, v176, type metadata accessor for WebEmbedDataVisualization);
          v132 = v2;
          v133 = v175;
          sub_1D5FEA660(v175, v131);
          v134 = v133;
          v2 = v132;
          sub_1D5BF1B4C(v134, type metadata accessor for WebEmbedDataVisualization);
          os_unfair_lock_unlock(v130 + 6);
        }

        v55 = v166;
      }

      ++v67;
      v65 = v173;
      if (v178 == v172)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

void sub_1D62C8E30(unint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v81 = a1;
  v77 = sub_1D72585BC();
  v71 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v6);
  v76 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62D5684(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v79 = &v70 - v10;
  v11 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  *&v74 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v72 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v70 - v19;
  v78 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  MEMORY[0x1EEE9AC00](v78, v21);
  v75 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v73 = &v70 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v70 - v28;
  v30 = sub_1D7261B9C();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = (&v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  *v34 = sub_1D726308C();
  (*(v31 + 104))(v34, *MEMORY[0x1E69E8020], v30);
  v35 = sub_1D7261BBC();
  (*(v31 + 8))(v34, v30);
  if ((v35 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v80 = a3;
  sub_1D62D47DC(a3, v20, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D47DC(v20, v29, type metadata accessor for WebEmbedDataVisualization);
  v82[0] = sub_1D6D28818();

  v30 = 0;
  sub_1D6CD315C(v82);

  sub_1D5BF1B4C(v20, type metadata accessor for WebEmbedDataVisualization);
  *&v29[*(v78 + 20)] = v82[0];
  swift_beginAccess();
  v36 = *(v4 + 56);
  v37 = MEMORY[0x1E69E7CC0];
  if (*(v36 + 16))
  {
    v38 = sub_1D6D6303C(v29);
    if (v39)
    {
      v20 = *(*(v36 + 56) + 8 * v38);
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  swift_endAccess();
  sub_1D5BF1B4C(v29, type metadata accessor for WebEmbedDatastoreCacheKey);
  v82[0] = v37;
  if (v20 >> 62)
  {
LABEL_25:
    v40 = sub_1D7263BFC();
    if (v40)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

  v40 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v40)
  {
LABEL_9:
    v70 = v4;
    v41 = 0;
    v4 = v20 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v41, v20);
        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v45 = v82[0];
          v4 = v70;
          goto LABEL_27;
        }
      }

      else
      {
        if (v41 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_21;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v44 = Strong, swift_unknownObjectRelease(), v44 == v81) || !swift_unknownObjectWeakLoadStrong())
      {
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v41;
      if (v42 == v40)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_26:
  v45 = MEMORY[0x1E69E7CC0];
LABEL_27:

  v46 = v80;
  v47 = v72;
  sub_1D62D47DC(v80, v72, type metadata accessor for WebEmbedDataVisualization);
  v48 = v73;
  sub_1D62D47DC(v47, v73, type metadata accessor for WebEmbedDataVisualization);
  v82[0] = sub_1D6D28818();

  sub_1D6CD315C(v82);
  if (v30)
  {
    goto LABEL_58;
  }

  sub_1D5BF1B4C(v47, type metadata accessor for WebEmbedDataVisualization);
  *(v48 + *(v78 + 20)) = v82[0];
  v49 = v74;
  if ((v45 & 0x8000000000000000) == 0 && (v45 & 0x4000000000000000) == 0)
  {
    if (*(v45 + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_53:
  if (!sub_1D7263BFC())
  {
LABEL_31:

    v45 = 0;
  }

LABEL_32:
  swift_beginAccess();
  sub_1D6D6123C(v45, v48);
  swift_endAccess();
  sub_1D62D47DC(v46, v49, type metadata accessor for WebEmbedDataVisualization);
  v50 = v75;
  sub_1D62D47DC(v49, v75, type metadata accessor for WebEmbedDataVisualization);
  v82[0] = sub_1D6D28818();

  sub_1D6CD315C(v82);
  if (!v30)
  {

    sub_1D5BF1B4C(v49, type metadata accessor for WebEmbedDataVisualization);
    *(v50 + *(v78 + 20)) = v82[0];
    swift_beginAccess();
    if (*(*(v4 + 56) + 16))
    {
      sub_1D6D6303C(v50);
      if (v51)
      {
        swift_endAccess();
        sub_1D5BF1B4C(v50, type metadata accessor for WebEmbedDatastoreCacheKey);
        return;
      }
    }

    swift_endAccess();
    sub_1D5BF1B4C(v50, type metadata accessor for WebEmbedDatastoreCacheKey);
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v75 = v52;
    v30 = swift_allocObject();
    v74 = xmmword_1D7273AE0;
    *(v30 + 16) = xmmword_1D7273AE0;
    v53 = WebEmbedDataVisualization.identifier.getter();
    v45 = v54;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v73 = sub_1D5B7E2C0();
    *(v30 + 64) = v73;
    *(v30 + 32) = v53;
    *(v30 + 40) = v45;
    v72 = sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
    v55 = sub_1D72638FC();
    v56 = sub_1D7262EDC();
    sub_1D725C30C("Web embed data source manager detected no more observers for data from visualization %{public}@; cleaning up polling work items", 127, 2, &dword_1D5B42000, v55, v56, v30);

    sub_1D6CCDF90(v46);
    v57 = WebEmbedDataVisualization.urlDataSources.getter();
    v58 = v57;
    if (v57 >> 62)
    {
      v59 = sub_1D7263BFC();
      if (v59)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
LABEL_38:
        if (v59 >= 1)
        {
          v60 = 0;
          v48 = *(v4 + 72);
          v81 = v58 & 0xC000000000000001;
          v78 = v58 & 0xFFFFFFFFFFFFFF8;
          v71 += 2;
          while (1)
          {
            if (v81)
            {
              v45 = MEMORY[0x1DA6FB460](v60, v58);
            }

            else
            {
              if (v60 >= *(v78 + 16))
              {
                __break(1u);
                goto LABEL_53;
              }

              v45 = *(v58 + 8 * v60 + 32);
            }

            v4 = OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
            sub_1D725B86C();
            v49 = v82[0];
            if (v82[0])
            {
              v61 = *(v82[0] + 16);

              os_unfair_lock_lock(v61 + 6);
              v30 = v79;
              sub_1D62D1D18(v80, v79);
              sub_1D62D4718(v30, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
              os_unfair_lock_unlock(v61 + 6);

              v62 = *(v49 + 16);

              os_unfair_lock_lock((v62 + 24));
              v63 = *(v62 + 16);

              os_unfair_lock_unlock((v62 + 24));

              v46 = *(v63 + 16);

              if (!v46)
              {
                v64 = swift_allocObject();
                *(v64 + 16) = v74;
                v65 = sub_1D72583DC();
                v66 = v73;
                *(v64 + 56) = MEMORY[0x1E69E6158];
                *(v64 + 64) = v66;
                *(v64 + 32) = v65;
                *(v64 + 40) = v67;
                v68 = sub_1D72638FC();
                v69 = sub_1D7262EDC();
                sub_1D725C30C("Web embed data source manager canceling and removing work item for url %{public}@", 81, 2, &dword_1D5B42000, v68, v69, v64);

                sub_1D725B86C();
                if (v82[0])
                {

                  sub_1D7261B7C();
                }

                v46 = v76;
                (*v71)(v76, v45 + v4, v77);
                v82[0] = 0;
                sub_1D725B87C();
              }
            }

            if (v59 == ++v60)
            {
              goto LABEL_56;
            }
          }
        }

        __break(1u);
        goto LABEL_58;
      }
    }

LABEL_56:

    return;
  }

LABEL_58:

  __break(1u);
}

uint64_t sub_1D62C991C(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62D5684(0, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v17 - v12;
  sub_1D62D47DC(a1, v5, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D47DC(v5, v9, type metadata accessor for WebEmbedDataVisualization);
  v18 = sub_1D6D28818();

  sub_1D6CD315C(&v18);

  sub_1D5BF1B4C(v5, type metadata accessor for WebEmbedDataVisualization);
  *&v9[*(v6 + 20)] = v18;
  sub_1D725B86C();
  sub_1D5BF1B4C(v9, type metadata accessor for WebEmbedDatastoreCacheKey);
  v14 = type metadata accessor for WebEmbedDatastoreUpdate(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_1D62D4718(v13, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate);
    return 0;
  }

  else
  {
    v15 = *&v13[*(v14 + 20)];

    sub_1D5BF1B4C(v13, type metadata accessor for WebEmbedDatastoreUpdate);
  }

  return v15;
}

uint64_t sub_1D62C9BD0(uint64_t *a1)
{
  v2 = type metadata accessor for WebEmbedDatastoreUpdate(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v14 = *a1;
  v15 = v7;
  sub_1D6CCE3D8(&v14);
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v11 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1D62D47DC(v11, v6, type metadata accessor for WebEmbedDatastoreUpdate);

      sub_1D5BF1B4C(v6, type metadata accessor for WebEmbedDatastoreUpdate);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v11 += v12;
      --v10;
    }

    while (v10);

    return v14;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1D62C9D84()
{
  v1 = v0;
  v2 = type metadata accessor for WebEmbedDataVisualization(0);
  v59 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v49 - v11;
  sub_1D62D5190(0);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v56 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49 - v18;
  sub_1D725B7FC();
  v20 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  type metadata accessor for WebEmbedDatastoreUpdate(0);
  type metadata accessor for WebEmbedDatastore(0);
  sub_1D62D48B4(qword_1EDF23AD0, type metadata accessor for WebEmbedDatastoreCacheKey, &unk_1D7343DEC);
  sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization, &protocol conformance descriptor for WebEmbedDataVisualization);
  sub_1D7261D6C();

  v21 = v12;

  swift_beginAccess();
  v22 = *(v1 + 56);
  v24 = v22 + 64;
  v23 = *(v22 + 64);
  v62 = MEMORY[0x1E69E7CD0];
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v55 = v20 - 8;
  v58 = v22;
  swift_bridgeObjectRetain_n();
  v29 = 0;
  v50 = v28;
  v51 = v24;
  v53 = v21;
  v54 = v5;
  v52 = v19;
  while (v27)
  {
LABEL_10:
    v31 = __clz(__rbit64(v27)) | (v29 << 6);
    v32 = v58;
    sub_1D62D47DC(*(v58 + 48) + *(*v55 + 72) * v31, v19, type metadata accessor for WebEmbedDatastoreCacheKey);
    v33 = *(*(v32 + 56) + 8 * v31);
    v34 = v57;
    *&v19[*(v57 + 48)] = v33;
    v35 = v19;
    v36 = v56;
    sub_1D62D47DC(v35, v56, sub_1D62D5190);
    v37 = *(v36 + *(v34 + 48));

    sub_1D5BF1B4C(v36, type metadata accessor for WebEmbedDatastoreCacheKey);
    if (v37 >> 62)
    {
      v38 = sub_1D7263BFC();
      if (!v38)
      {
LABEL_22:

        v40 = MEMORY[0x1E69E7CC0];
        goto LABEL_23;
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        goto LABEL_22;
      }
    }

    v61 = MEMORY[0x1E69E7CC0];
    sub_1D6997134(0, v38 & ~(v38 >> 63), 0);
    if (v38 < 0)
    {
      goto LABEL_29;
    }

    v39 = 0;
    v40 = v61;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1DA6FB460](v39, v37);
        sub_1D62D47DC(v41 + OBJC_IVAR____TtC8NewsFeed37WeakWebEmbedDataSourceManagerObserver_dataVisualization, v60, type metadata accessor for WebEmbedDataVisualization);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D62D47DC(*(v37 + 8 * v39 + 32) + OBJC_IVAR____TtC8NewsFeed37WeakWebEmbedDataSourceManagerObserver_dataVisualization, v60, type metadata accessor for WebEmbedDataVisualization);
      }

      v61 = v40;
      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1D6997134((v42 > 1), v43 + 1, 1);
        v40 = v61;
      }

      ++v39;
      *(v40 + 16) = v43 + 1;
      sub_1D5BE74F4(v60, v40 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v43, type metadata accessor for WebEmbedDataVisualization);
    }

    while (v38 != v39);

LABEL_23:
    v44 = *(v40 + 16);
    v46 = v53;
    v45 = v54;
    if (v44)
    {
      v47 = v40 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v48 = *(v59 + 72);
      do
      {
        sub_1D62D47DC(v47, v46, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5FEA660(v45, v46);
        sub_1D5BF1B4C(v45, type metadata accessor for WebEmbedDataVisualization);
        v47 += v48;
        --v44;
      }

      while (v44);
    }

    v27 &= v27 - 1;
    v19 = v52;
    sub_1D5BF1B4C(v52, sub_1D62D5190);

    v28 = v50;
    v24 = v51;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      return;
    }

    v27 = *(v24 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1D62CA380(uint64_t a1)
{
  v71 = type metadata accessor for WebEmbedDataSourceJson(0);
  MEMORY[0x1EEE9AC00](v71, v2);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v62 - v7;
  v75 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
  MEMORY[0x1EEE9AC00](v75, v9);
  v70 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v62 - v13;
  v15 = type metadata accessor for WebEmbedDatastoreProperty(0);
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v74 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v68 = &v62 - v20;
  v21 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
  v22 = *(a1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents);
  v73 = v4;
  v62 = a1;
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v65 + 20);
      v66 = v8;
      v67 = v24;
      v25 = v22 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v26 = *(v64 + 72);
      v63 = v14;
      while (1)
      {
        v69 = v23;
        v27 = v68;
        sub_1D62D47DC(v25, v68, type metadata accessor for WebEmbedDatastoreProperty);
        sub_1D62D47DC(v27 + v67, v14, type metadata accessor for WebEmbedDataSourceCacheEntry);
        sub_1D5BF1B4C(v27, type metadata accessor for WebEmbedDatastoreProperty);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        MEMORY[0x1DA6F9CE0](v28);
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();

        v21 = v76;
        v29 = v69;
LABEL_6:
        v25 += v26;
        v23 = v29 - 1;
        if (!v23)
        {
          goto LABEL_20;
        }
      }

      sub_1D5BE74F4(v14, v8, type metadata accessor for WebEmbedDataSourceJson);
      v30 = __swift_project_boxed_opaque_existential_1((v72 + 16), *(v72 + 40));
      v31 = *(v71 + 32);
      v32 = v8;
      v33 = *v30;
      sub_1D725A76C();
      v34 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lastFailedResponses;
      swift_beginAccess();
      v35 = *(v33 + v34);
      if (*(v35 + 16))
      {
        v36 = v21;
        v37 = sub_1D6D62B84(&v32[v31]);
        if (v38)
        {
          v39 = *(*(v35 + 56) + 8 * v37);

LABEL_16:
          v4 = v73;
          v29 = v69;
          swift_endAccess();
          sub_1D725A77C();
          if (v39)
          {

            MEMORY[0x1DA6F9CE0](v40);
            v8 = v66;
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v4 = v73;
            }

            sub_1D726278C();

            sub_1D5BF1B4C(v8, type metadata accessor for WebEmbedDataSourceJson);
            v21 = v76;
          }

          else
          {
            v8 = v66;
            sub_1D5BF1B4C(v66, type metadata accessor for WebEmbedDataSourceJson);
            v21 = v36;
          }

          v14 = v63;
          goto LABEL_6;
        }
      }

      else
      {
        v36 = v21;
      }

      v39 = 0;
      goto LABEL_16;
    }
  }

LABEL_20:
  v41 = *(v62 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents);
  if (v41 && (v67 = *(v41 + 2)) != 0)
  {
    v42 = 0;
    v66 = v41 + 32;
    v43 = v70;
    v63 = v41;
    while (v42 < *(v41 + 2))
    {
      v44 = *&v66[8 * v42];
      v45 = *(v44 + 16);
      if (v45)
      {
        v68 = *&v66[8 * v42];
        v69 = v42;
        v46 = v64;
        v47 = *(v65 + 20);
        v48 = v44 + ((*(v64 + 80) + 32) & ~*(v64 + 80));

        v49 = *(v46 + 72);
        while (1)
        {
          v51 = v74;
          sub_1D62D47DC(v48, v74, type metadata accessor for WebEmbedDatastoreProperty);
          sub_1D62D47DC(v51 + v47, v43, type metadata accessor for WebEmbedDataSourceCacheEntry);
          sub_1D5BF1B4C(v51, type metadata accessor for WebEmbedDatastoreProperty);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            MEMORY[0x1DA6F9CE0](v50);
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();
          }

          else
          {
            v52 = v21;
            sub_1D5BE74F4(v43, v4, type metadata accessor for WebEmbedDataSourceJson);
            v53 = __swift_project_boxed_opaque_existential_1((v72 + 16), *(v72 + 40));
            v54 = *(v71 + 32);
            v55 = *v53;
            sub_1D725A76C();
            v56 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lastFailedResponses;
            swift_beginAccess();
            v57 = *(v55 + v56);
            if (*(v57 + 16) && (v58 = sub_1D6D62B84(&v4[v54]), (v59 & 1) != 0))
            {
              v60 = *(*(v57 + 56) + 8 * v58);
            }

            else
            {
              v60 = 0;
            }

            v43 = v70;
            swift_endAccess();
            sub_1D725A77C();
            if (!v60)
            {
              v4 = v73;
              sub_1D5BF1B4C(v73, type metadata accessor for WebEmbedDataSourceJson);
              v21 = v52;
              goto LABEL_32;
            }

            MEMORY[0x1DA6F9CE0](v61);
            v4 = v73;
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v4 = v73;
            }

            sub_1D726278C();

            sub_1D5BF1B4C(v4, type metadata accessor for WebEmbedDataSourceJson);
          }

          v21 = v76;
LABEL_32:
          v48 += v49;
          if (!--v45)
          {

            v41 = v63;
            v42 = v69;
            break;
          }
        }
      }

      if (++v42 == v67)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_43:
    type metadata accessor for WebEmbedDatastoreFailures();
    *(swift_allocObject() + 16) = v21;
  }
}

uint64_t sub_1D62CAAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v7 = sub_1D72620DC();
  *(v5 + 56) = v7;
  *(v5 + 64) = *(v7 - 8);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = type metadata accessor for WebEmbedDataSourceJson(0);
  *(v5 + 88) = swift_task_alloc();
  sub_1D62D5684(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a4;
  v11 = a4[1];
  *(v5 + 128) = v9;
  *(v5 + 136) = v10;
  *(v5 + 144) = v11;
  *(v5 + 152) = *(a4 + 1);

  return MEMORY[0x1EEE6DFA0](sub_1D62CACB0, 0, 0);
}

uint64_t sub_1D62CACB0()
{
  v1 = *(v0 + 40);
  sub_1D62D5684(0, &qword_1EDF01F70, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6F90]);
  v2 = *(*(type metadata accessor for WebEmbedDataVisualization(0) - 8) + 80);
  *(v0 + 184) = v2;
  v3 = (v2 + 32) & ~v2;
  v4 = swift_allocObject();
  *(v0 + 168) = v4;
  *(v4 + 16) = xmmword_1D7273AE0;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v4 + v3) = v5 | 0x2000000000000000;
  swift_storeEnumTagMultiPayload();

  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = sub_1D62CAE50;

  return sub_1D5D03420(v4);
}

uint64_t sub_1D62CAE50()
{
  v1 = *(*v0 + 168);
  v2 = (*(*v0 + 184) + 32) & ~*(*v0 + 184);

  swift_setDeallocating();
  sub_1D5BF1B4C(v1 + v2, type metadata accessor for WebEmbedDataVisualization);
  swift_deallocClassInstance();

  return MEMORY[0x1EEE6DFA0](sub_1D62CAFA0, 0, 0);
}

uint64_t sub_1D62CAFA0()
{
  v45 = v0;
  v1 = v0;
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources);
  if (v2 >> 62)
  {
LABEL_43:
    v39 = sub_1D7263BFC();
  }

  else
  {
    v39 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v39)
  {
LABEL_28:

    sub_1D62D4788();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

    goto LABEL_38;
  }

  v3 = 0;
  v37 = v1;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1DA6FB460](v3, v2);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        v1 = v37;
        goto LABEL_28;
      }
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_43;
      }

      v4 = *(v2 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_26;
      }
    }

    v6 = *(v4 + 16);
    v1 = *(v4 + 24);
    if (v1 > 1)
    {
      break;
    }

    v7 = 0x617453746E657665;
    v8 = 0xEF61746144636974;
    if (!v1)
    {
      goto LABEL_20;
    }

    if (v1 != 1)
    {
      goto LABEL_19;
    }

LABEL_22:
    v9 = sub_1D72646CC();
    sub_1D5F8E840(v6, v1);
    sub_1D5F8E840(v6, v1);
    sub_1D5F8E840(v6, v1);
    sub_1D5F8E840(0, 0);

    sub_1D62D46F4(v6, v1);
    sub_1D62D46F4(0, 0);
    sub_1D62D46F4(v6, v1);
    if (v9)
    {
      goto LABEL_30;
    }

LABEL_7:
    ++v3;
    if (v5 == v39)
    {
      goto LABEL_27;
    }
  }

  if (v1 == 2 || v1 == 3)
  {
    goto LABEL_22;
  }

  if (v1 == 4)
  {
    sub_1D5F8E840(*(v4 + 16), 4uLL);

    sub_1D62D46F4(v6, 4uLL);
    sub_1D62D46F4(0, 0);
    goto LABEL_7;
  }

LABEL_19:
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
LABEL_20:
  if (v7 != 0x617453746E657665 || v8 != 0xEF61746144636974)
  {
    goto LABEL_22;
  }

  sub_1D5F8E840(*(v4 + 16), *(v4 + 24));
  sub_1D5F8E840(v6, v1);
  sub_1D5F8E840(v6, v1);
  sub_1D5F8E840(0, 0);

  sub_1D62D46F4(v6, v1);
  sub_1D62D46F4(0, 0);
  sub_1D62D46F4(v6, v1);
LABEL_30:
  v1 = v37;
  v11 = *(v37 + 104);
  v12 = *(v37 + 112);
  v13 = *(v37 + 96);

  sub_1D725B86C();
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_1D62D4718(*(v37 + 96), qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry);
    sub_1D62D4788();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    goto LABEL_38;
  }

  v16 = *(v37 + 120);
  v15 = *(v37 + 128);
  v17 = *(v37 + 96);

  sub_1D5BE74F4(v17, v15, type metadata accessor for WebEmbedDataSourceCacheEntry);
  sub_1D62D47DC(v15, v16, type metadata accessor for WebEmbedDataSourceCacheEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v37 + 128);
    sub_1D5BF1B4C(*(v37 + 120), type metadata accessor for WebEmbedDataSourceCacheEntry);
    sub_1D62D4788();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = v18;
    v21 = type metadata accessor for WebEmbedDataSourceCacheEntry;
    v1 = v37;
  }

  else
  {
    v23 = *(v37 + 64);
    v22 = *(v37 + 72);
    v24 = *(v37 + 56);
    sub_1D5BE74F4(*(v37 + 120), *(v37 + 88), type metadata accessor for WebEmbedDataSourceJson);
    sub_1D72620CC();
    v25 = sub_1D726208C();
    v27 = v26;
    (*(v23 + 8))(v22, v24);
    if (v27 >> 60 != 15)
    {
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D62D4844();
      sub_1D725A69C();
      v33 = *(v37 + 152);
      v32 = *(v37 + 160);
      v38 = *(v37 + 136);
      v34 = *(v37 + 24);
      v40 = *(v37 + 32);

      v41 = *(v37 + 16);
      v42 = v38;
      v43 = v33;
      v44 = v32;
      sub_1D611D2A8(v40, &v41, &v42, v34);
      v35 = *(v37 + 88);
      sub_1D5BF1B4C(*(v37 + 128), type metadata accessor for WebEmbedDataSourceCacheEntry);
      sub_1D5B952E4(v25, v27);

      sub_1D5BF1B4C(v35, type metadata accessor for WebEmbedDataSourceJson);

      v36 = *(v37 + 8);
      goto LABEL_39;
    }

    v28 = *(v37 + 128);
    v29 = *(v37 + 88);
    sub_1D62D4788();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();

    sub_1D5BF1B4C(v28, type metadata accessor for WebEmbedDataSourceCacheEntry);
    v21 = type metadata accessor for WebEmbedDataSourceJson;
    v20 = v29;
  }

  sub_1D5BF1B4C(v20, v21);
LABEL_38:

  v36 = *(v1 + 8);
LABEL_39:

  return v36();
}

uint64_t sub_1D62CB840()
{
  v1 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D62D47DC(v0, v8, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE74F4(v8, v4, type metadata accessor for GenericDataVisualization);
    v16 = WebEmbedDataVisualization.kind.getter();
    v17 = v9;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](*v4, v4[1]);
    v10 = v16;
    sub_1D5BF1B4C(v4, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v11 = *v8;
    v16 = WebEmbedDataVisualization.kind.getter();
    v17 = v12;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v15[1] = v11;
    v13 = SportsDataVisualization.umcCanonicalId.getter();
    MEMORY[0x1DA6F9910](v13);

    return v16;
  }

  return v10;
}

uint64_t sub_1D62CB9E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D62CBAD4(__n128 a1)
{
  sub_1D725B7FC();
  type metadata accessor for WebEmbedDatastoreCacheKey(0);
  type metadata accessor for WebEmbedDatastoreUpdate(0);
  type metadata accessor for WebEmbedDataVisualization(0);
  type metadata accessor for WebEmbedDatastore(0);
  sub_1D62D48B4(qword_1EDF23AD0, type metadata accessor for WebEmbedDatastoreCacheKey, &unk_1D7343DEC);
  sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization, &protocol conformance descriptor for WebEmbedDataVisualization);
  v1 = sub_1D7261D6C();

  return v1;
}

uint64_t sub_1D62CBC04(__n128 a1)
{
  sub_1D725B7FC();
  type metadata accessor for WebEmbedDatastoreCacheKey(0);
  type metadata accessor for WebEmbedDatastoreUpdate(0);
  type metadata accessor for WebEmbedDataVisualization(0);
  type metadata accessor for WebEmbedDatastore(0);
  sub_1D62D48B4(qword_1EDF23AD0, type metadata accessor for WebEmbedDatastoreCacheKey, &unk_1D7343DEC);
  sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization, &protocol conformance descriptor for WebEmbedDataVisualization);
  v1 = sub_1D7261D6C();

  sub_1D62C9D84();
  sub_1D62D4F64(v1, sub_1D62D4D44);
  v3 = v2;

  return v3;
}

uint64_t sub_1D62CBDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return sub_1D62CAAE4(a1, a2, a3, a4);
}

uint64_t sub_1D62CBE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) + 24);
  v5 = sub_1D72585BC();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_1D62CBEE4(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v38 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v5);
  v36 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v31 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v31[1] = v2;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v12 = *(v4 + 80);
    v13 = a1 + ((v12 + 32) & ~v12);
    v34 = *(v4 + 72);
    v35 = v12;
    v33 = (v12 + 16) & ~v12;
    v32 = xmmword_1D7273AE0;
    do
    {
      v42 = v13;
      v43 = v11;
      sub_1D62D47DC(v13, v10, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      if (qword_1EDF0E798 != -1)
      {
        swift_once();
      }

      v14 = qword_1EDFFC588;
      sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = v32;
      v16 = sub_1D72583DC();
      v18 = v17;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1D5B7E2C0();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      v19 = sub_1D7262EDC();
      sub_1D725C30C("Web embed data source manager preparing url %{public}@", 54, 2, &dword_1D5B42000, v14, v19, v15);

      MEMORY[0x1EEE9AC00](v20, v21);
      v31[-2] = v39;
      v31[-1] = v10;
      type metadata accessor for WebEmbedDataVisualizationDataResult(0);
      sub_1D725BDCC();
      v41 = type metadata accessor for WebEmbedDataVisualizationDataRequest;
      v22 = v36;
      sub_1D62D47DC(v10, v36, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      v23 = v33;
      v24 = swift_allocObject();
      v40 = type metadata accessor for WebEmbedDataVisualizationDataRequest;
      sub_1D5BE74F4(v22, v24 + v23, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      v25 = sub_1D725B92C();
      sub_1D725BA8C();

      sub_1D62D47DC(v10, v22, v41);
      v26 = swift_allocObject();
      sub_1D5BE74F4(v22, v26 + v23, v40);
      v27 = sub_1D725B92C();
      sub_1D725BACC();

      sub_1D5BF1B4C(v10, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v13 = v42 + v34;
      v11 = v43 - 1;
    }

    while (v43 != 1);
  }

  v28 = sub_1D725B92C();
  v29 = sub_1D725BEFC();

  return v29;
}

uint64_t sub_1D62CC354(uint64_t a1)
{
  v3 = v1;
  v28 = *v1;
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v22 = v6;
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) + 24);
  v24 = a1;
  v25 = v9;
  v26 = v3;
  v27 = a1;
  v20 = type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  sub_1D725BDCC();
  v23 = *(v5 + 16);
  v19 = v4;
  v23(v8, a1 + v9, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v21 = *(v5 + 32);
  v21(v11 + v10, v8, v4);
  v12 = sub_1D725B92C();
  sub_1D725BAAC();

  v13 = v19;
  v23(v8, v24 + v25, v19);
  v14 = swift_allocObject();
  v21(v14 + v10, v8, v13);
  v15 = sub_1D725B92C();
  v16 = sub_1D725BADC();

  return v16;
}

double sub_1D62CC5F0()
{
  if (qword_1EDF0E798 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDFFC588;
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7273AE0;
  type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v2 = sub_1D72583DC();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1D5B7E2C0();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = sub_1D7262EDC();
  sub_1D725C30C("Web embed data source manager prepared url %{public}@", 53, 2, &dword_1D5B42000, v0, v5, v1);

  return result;
}

double sub_1D62CC718(uint64_t a1, __n128 a2)
{
  if (qword_1EDF0E798 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDFFC588;
  v3 = sub_1D7262EBC();
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7270C10;
  type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v5 = sub_1D72583DC();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0xE000000000000000;
  sub_1D725C30C("Web embed data source manager failed to prepare url %{public}@, error=%{public}@", 80, 2, &dword_1D5B42000, v2, v3, v4);

  return result;
}

uint64_t sub_1D62CC8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5D077AC(0, &qword_1EDF3B8E0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D62CC928@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v58 = a3;
  v54 = a2;
  v4 = sub_1D725895C();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebEmbedDataVisualization(0);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62D5684(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v57;
  sub_1D62CCFA8(v15);
  if (v21)
  {

    (*(v17 + 56))(v15, 1, 1, v16);
    sub_1D62D4718(v15, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (qword_1EDF0E798 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDFFC588;
    v23 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v25 = sub_1D72583DC();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1D5B7E2C0();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_1D725C30C("Web embed data source manager failed to derive endpoint URL, requestURL=%{public}@", 82, 2, &dword_1D5B42000, v22, v23, v24);

    v28 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
    return (*(*(v28 - 8) + 56))(v58, 1, 1, v28);
  }

  else
  {
    v49 = v11;
    v51 = v7;
    v57 = 0;
    (*(v17 + 56))(v15, 0, 1, v16);
    (*(v17 + 32))(v20, v15, v16);
    sub_1D725B86C();
    v52 = a1;
    v50 = v16;
    v30 = v20;
    if (v59)
    {
      v31 = *(v59 + 16);

      os_unfair_lock_lock((v31 + 24));
      v48 = *(v31 + 16);

      os_unfair_lock_unlock((v31 + 24));
    }

    else
    {
      v48 = MEMORY[0x1E69E7CD0];
    }

    v32 = v54;
    v33 = v49;
    v46 = type metadata accessor for WebEmbedDataVisualization;
    sub_1D62D47DC(v54, v49, type metadata accessor for WebEmbedDataVisualization);
    LODWORD(v54) = swift_getEnumCaseMultiPayload() == 1;
    sub_1D5BF1B4C(v33, type metadata accessor for WebEmbedDataVisualization);
    v34 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
    v35 = v34[7];
    v49 = *(v17 + 16);
    v36 = v58;
    v47 = v30;
    v37 = v50;
    v49(v58 + v35, v30, v50);
    sub_1D62D5684(0, &qword_1EDF01F70, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6F90]);
    v38 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D7273AE0;
    sub_1D62D47DC(v32, v39 + v38, v46);
    v40 = sub_1D5EEFCFC(v39, v48);
    swift_setDeallocating();
    sub_1D5BF1B4C(v39 + v38, type metadata accessor for WebEmbedDataVisualization);
    swift_deallocClassInstance();
    v41 = v51;
    sub_1D725894C();
    v42 = sub_1D725893C();
    v44 = v43;
    (*(v55 + 8))(v41, v56);
    (*(v17 + 8))(v47, v37);
    *v36 = v42;
    *(v36 + 8) = v44;
    *(v36 + 16) = v54;
    v49(v36 + v34[6], v52, v37);
    *(v36 + v34[8]) = v40;
    return (*(*(v34 - 1) + 56))(v36, 0, 1, v34);
  }
}

uint64_t sub_1D62CCFA8@<X0>(uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D62D5684(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v22 - v6;
  sub_1D62D5684(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v3);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = sub_1D7257C7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7257BCC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D62D4718(v11, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D62D4788();
    swift_allocError();
    *v17 = 3;
    return swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_1D7257C1C();
    sub_1D7257BDC();
    v19 = sub_1D72585BC();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      sub_1D62D4718(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D62D4788();
      swift_allocError();
      *v21 = 4;
      swift_willThrow();
      return (*(v13 + 8))(v16, v12);
    }

    else
    {
      (*(v13 + 8))(v16, v12);
      return (*(v20 + 32))(a2, v7, v19);
    }
  }
}

uint64_t sub_1D62CD300@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  sub_1D725B86C();
  if (v18)
  {
    v4 = *(v18 + 16);

    os_unfair_lock_lock((v4 + 24));
    v5 = *(v4 + 16);

    os_unfair_lock_unlock((v4 + 24));

    v6 = sub_1D5F215E4(v5);
    v8 = v7;
  }

  else
  {
    v8 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
  }

  if (qword_1EDF0E798 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDFFC588;
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7270C10;
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D5B7E2C0();
  *(v10 + 64) = v12;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;
  v13 = sub_1D72583DC();
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v13;
  *(v10 + 80) = v14;
  v15 = sub_1D7262EDC();
  sub_1D725C30C("Web embed data source manager fetched visualization data %{public}@, url=%{public}@", 83, 2, &dword_1D5B42000, v9, v15, v10);

  sub_1D6CCF50C(a1);
  return sub_1D62D47DC(a1, a3, type metadata accessor for WebEmbedDataVisualizationDataResult);
}

double sub_1D62CD4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D725B86C();
  if (v19)
  {
    v5 = *(v19 + 16);

    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);

    os_unfair_lock_unlock((v5 + 24));

    v7 = sub_1D5F215E4(v6);
    v9 = v8;
  }

  else
  {
    v9 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
  }

  if (qword_1EDF0E798 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDFFC588;
  v11 = sub_1D7262EBC();
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7279970;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D5B7E2C0();
  *(v12 + 64) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;
  v15 = sub_1D72583DC();
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v12 + 136) = v13;
  *(v12 + 144) = v14;
  *(v12 + 112) = 0;
  *(v12 + 120) = 0xE000000000000000;
  sub_1D725C30C("Web embed data source manager failed fetching visualization data %{public}@, url=%{public}@,  error=%{public}@", 110, 2, &dword_1D5B42000, v10, v11, v12);

  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  v17 = sub_1D5F1FC7C(a3);
  if (v17)
  {
    sub_1D6CCF888(a3, v17, 30);
  }

  return result;
}

uint64_t sub_1D62CD730(uint64_t a1)
{
  v20 = *v1;
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v17 = v6;
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1;
  v22 = a1;
  v15 = v1;
  v19 = a1;
  type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  sub_1D725BDCC();
  v18 = *(v4 + 16);
  v18(v7, a1, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v16 = *(v4 + 32);
  v16(v9 + v8, v7, v3);
  v10 = sub_1D725B92C();
  sub_1D725BAAC();

  v18(v7, v19, v3);
  v11 = swift_allocObject();
  v16(v11 + v8, v7, v3);
  v12 = sub_1D725B92C();
  v13 = sub_1D725BADC();

  return v13;
}

uint64_t sub_1D62CD9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725895C();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v53 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  MEMORY[0x1EEE9AC00](v52, v7);
  v56 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D72585BC();
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v60 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62D5684(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v50 - v14;
  v16 = type metadata accessor for WebEmbedDataVisualization(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v59 = v50 - v23;
  v24 = *(a1 + 72);
  v25 = a2;
  sub_1D725B86C();
  v26 = v61;
  if (!v61)
  {
    goto LABEL_4;
  }

  v51 = v9;
  v27 = a1;
  v24 = *(v61 + 16);

  os_unfair_lock_lock((v24 + 24));
  v28 = *(v24 + 16);

  os_unfair_lock_unlock((v24 + 24));

  sub_1D5FCFDD0(v28, v15);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_1D62D4718(v15, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
LABEL_4:
    sub_1D62D4788();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
    return v24;
  }

  v30 = v59;
  sub_1D5BE74F4(v15, v59, type metadata accessor for WebEmbedDataVisualization);
  v31 = v60;
  v24 = v27;
  v32 = v58;
  sub_1D62CCFA8(v60);
  if (v32)
  {
    sub_1D5BF1B4C(v30, type metadata accessor for WebEmbedDataVisualization);
  }

  else
  {
    sub_1D62D47DC(v30, v20, type metadata accessor for WebEmbedDataVisualization);
    LODWORD(v58) = swift_getEnumCaseMultiPayload() == 1;
    sub_1D5BF1B4C(v20, type metadata accessor for WebEmbedDataVisualization);
    v33 = v52;
    v34 = *(v52 + 24);
    v50[1] = v27;
    v35 = v31;
    v36 = *(v57 + 16);
    v37 = v56;
    v38 = v25;
    v39 = v51;
    v36(&v56[v34], v38, v51);
    v36(&v37[*(v33 + 28)], v35, v39);
    v40 = v37;
    v41 = *(v26 + 16);

    os_unfair_lock_lock((v41 + 24));
    v42 = *(v41 + 16);

    os_unfair_lock_unlock((v41 + 24));

    v43 = v53;
    sub_1D725894C();
    v44 = sub_1D725893C();
    v46 = v45;
    (*(v54 + 8))(v43, v55);
    *v40 = v44;
    *(v40 + 8) = v46;
    *(v40 + 16) = v58;
    *(v40 + *(v33 + 32)) = v42;
    v47 = sub_1D62CC354(v40);
    v48 = v59;
    v24 = v47;

    sub_1D5BF1B4C(v40, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    (*(v57 + 8))(v60, v51);
    sub_1D5BF1B4C(v48, type metadata accessor for WebEmbedDataVisualization);
  }

  return v24;
}

void sub_1D62CDFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D725B86C();
  if (v13)
  {
    v5 = *(v13 + 16);

    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);

    os_unfair_lock_unlock((v5 + 24));

    if (*(v6 + 16))
    {
      sub_1D62CE158(a3, v6, COERCE__INT64(*(a1 + 16)), 0);

      return;
    }
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v8 = sub_1D72583DC();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D5B7E2C0();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
  v11 = sub_1D72638FC();
  v12 = sub_1D7262EDC();
  sub_1D725C30C("Web embed data source manager got result from url=%{public}@ but work item is gone or empty; canceling polling", 110, 2, &dword_1D5B42000, v11, v12, v7);
}

void sub_1D62CE158(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v59 = a4;
  v7 = sub_1D7261B5C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v51 - v14;
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v58 = v20;
    v60 = a1;
    v52 = v11;
    v53 = v15;
    v22 = a3;
    v54 = v8;
    v55 = v7;
    if (qword_1EDF0E798 != -1)
    {
      swift_once();
    }

    v56 = qword_1EDFFC588;
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7279970;
    v57 = a2;
    v24 = sub_1D5F215E4(a2);
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v28 = sub_1D5B7E2C0();
    v29 = v28;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v30 = MEMORY[0x1E69E6438];
    *(v23 + 96) = MEMORY[0x1E69E63B0];
    *(v23 + 104) = v30;
    v31 = (v59 & 1) == 0;
    v59 &= 1u;
    v51 = v22;
    if (v31)
    {
      v32 = v22;
    }

    else
    {
      v32 = 0;
    }

    *(v23 + 64) = v28;
    *(v23 + 72) = v32;
    v33 = v60;
    v34 = sub_1D72583DC();
    *(v23 + 136) = v27;
    *(v23 + 144) = v29;
    *(v23 + 112) = v34;
    *(v23 + 120) = v35;
    v36 = sub_1D7262EDC();
    sub_1D725C30C("Web embed data source manager queuing fetch for visualization data %{public}@ with %f delay, url=%{public}@", 107, 2, &dword_1D5B42000, v56, v36, v23, v51);

    v37 = swift_allocObject();
    swift_weakInit();
    v38 = *(v17 + 16);
    v39 = v33;
    v40 = v58;
    v38(&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v58);
    v41 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v37;
    (*(v17 + 32))(v42 + v41, &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
    aBlock[4] = sub_1D62D5298;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_32;
    v43 = _Block_copy(aBlock);
    type metadata accessor for WebEmbedDataSourceWorkItem();
    swift_allocObject();
    v44 = v57;

    v45 = sub_1D70DDDF0(v44, v43);
    _Block_release(v43);

    v38(v21, v60, v40);
    aBlock[0] = v45;

    sub_1D725B87C();
    if (v59)
    {

      sub_1D72630AC();
    }

    else
    {
      v46 = v52;
      sub_1D7261B4C();
      v47 = v53;
      sub_1D7261BAC();
      v48 = *(v54 + 8);
      v49 = v46;
      v50 = v55;
      v48(v49, v55);
      sub_1D726306C();
      v48(v47, v50);
    }
  }
}

void sub_1D62CE628(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D725B86C();
  if (v14)
  {
    v5 = *(v14 + 16);

    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);

    os_unfair_lock_unlock((v5 + 24));

    if (*(v6 + 16))
    {
      *&v7 = sub_1D62D54D0(a1, 30);
      sub_1D62CE158(a3, v6, v7, 0);

      return;
    }
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7273AE0;
  v9 = sub_1D72583DC();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D5B7E2C0();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
  v12 = sub_1D72638FC();
  v13 = sub_1D7262EDC();
  sub_1D725C30C("Web embed data source manager got error from url=%{public}@ but work item is gone or empty; canceling polling", 109, 2, &dword_1D5B42000, v12, v13, v8);
}

double sub_1D62CE7CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D62CD730(a2);
  }

  return result;
}

void sub_1D62CE838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  sub_1D62D47DC(a2, v7, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D47DC(v7, v11, type metadata accessor for WebEmbedDataVisualization);
  v27[0] = sub_1D6D28818();

  sub_1D6CD315C(v27);

  sub_1D5BF1B4C(v7, type metadata accessor for WebEmbedDataVisualization);
  *&v11[*(v8 + 20)] = v27[0];
  swift_beginAccess();
  v12 = *(a1 + 56);
  if (!*(v12 + 16) || (v13 = sub_1D6D6303C(v11), (v14 & 1) == 0))
  {
    swift_endAccess();
    sub_1D5BF1B4C(v11, type metadata accessor for WebEmbedDatastoreCacheKey);
    return;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();

  sub_1D5BF1B4C(v11, type metadata accessor for WebEmbedDatastoreCacheKey);
  if (v15 >> 62)
  {
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_19;
    }
  }

  if (v16 < 1)
  {
    __break(1u);

    __break(1u);
    return;
  }

  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  v25 = v15 & 0xC000000000000001;
  do
  {
    if (v18)
    {
      v19 = MEMORY[0x1DA6FB460](v17, v15);
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v27[3] = type metadata accessor for WebEmbedDataSourceManager();
      v27[4] = &off_1F5142C60;
      v27[0] = a1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = v15;
        v21 = *(v19 + 24);
        ObjectType = swift_getObjectType();
        v23 = *(v21 + 8);

        v24 = v21;
        v15 = v20;
        v18 = v25;
        v23(v27, v26, v26, ObjectType, v24);
        swift_unknownObjectRelease();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
    }

    ++v17;
  }

  while (v16 != v17);
LABEL_19:
}

uint64_t sub_1D62CEB68(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebEmbedDataVisualization(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7264A0C();
  sub_1D62D47DC(a1, v14, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE74F4(v14, v9, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1B4C(v9, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v17 = *v14;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  sub_1D7264A5C();
  v15 = sub_1D7263B9C();
  *(a3 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
  result = sub_1D5BE74F4(a1, a3[6] + *(v11 + 72) * v15, type metadata accessor for WebEmbedDataVisualization);
  *(a3[7] + 8 * v15) = a2;
  ++a3[2];
  return result;
}

void *sub_1D62CEDB4(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1D62D4D4C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1D62CEE44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1D62D57AC(0);
  result = sub_1D726412C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1D7264A0C();

    v33 = v21;
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
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
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D62CF078(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1D62D56E8(0, &qword_1EDF1A330, sub_1D5EE6520);
  result = sub_1D726412C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1D7264A0C();
    v22 = v21;

    sub_1D72621EC();
    result = sub_1D7264A5C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D62CF2C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1D62D55EC(0);
  result = sub_1D726412C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1D7264A0C();

    sub_1D5EE6588(v21);
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
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
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1D62CF500(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for WebEmbedDataVisualization(0);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1D62D50E4(0);
  result = sub_1D726412C();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_16:
    v23 = v20 | (v19 << 6);
    sub_1D62D47DC(a4[6] + *(v27 + 72) * v23, v15, type metadata accessor for WebEmbedDataVisualization);
    v24 = *(a4[7] + 8 * v23);
    sub_1D5BE74F4(v15, v11, type metadata accessor for WebEmbedDataVisualization);

    result = sub_1D62CEB68(v11, v24, v17);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
      return v17;
    }
  }

  v21 = v19;
  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v22 = a1[v19];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D62CF710(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SharedItem(0);
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v42 = &v39 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v12;
  sub_1D62D56E8(0, &qword_1EC8857A0, type metadata accessor for SharedItem);
  result = sub_1D726412C();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 64;
  v19 = v41;
  v40 = a4;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v44 = (v16 - 1) & v16;
LABEL_16:
    v23 = v20 | (v17 << 6);
    v24 = a4[7];
    v25 = (a4[6] + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = v42;
    v45 = *(v43 + 72);
    sub_1D62D47DC(v24 + v45 * v23, v42, type metadata accessor for SharedItem);
    sub_1D5BE74F4(v28, v19, type metadata accessor for SharedItem);
    sub_1D7264A0C();

    sub_1D72621EC();
    result = sub_1D7264A5C();
    v29 = -1 << *(v15 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v19 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v18 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v19 = v41;
LABEL_26:
    *(v18 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v15 + 48) + 16 * v32);
    *v37 = v27;
    v37[1] = v26;
    result = sub_1D5BE74F4(v19, *(v15 + 56) + v32 * v45, type metadata accessor for SharedItem);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v16 = v44;
    if (!a3)
    {
      return v15;
    }
  }

  v21 = v17;
  while (1)
  {
    v17 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v22 = a1[v17];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D62CFA6C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();
  v6 = sub_1D7264A5C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D5FFFF14();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1D62D2678(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1D62CFBA8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D72649FC();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D600007C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1D62D283C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1D62CFC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v84 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v83 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v75 - v13);
  v87 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  v15 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v16);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1D72585BC();
  v19 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v20);
  v95 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v96 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v75 - v27;
  v75 = v2;
  v88 = *v2;
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v90 = a1;
  v29 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v29 + 16));
  v30 = v29;
  v31 = *(v29 + 16);
  v86 = v8;
  v85 = v14;
  v78 = v19;
  v77 = a2;
  v76 = v15;
  v91 = v18;
  if (v31)
  {
    v33 = v19 + 16;
    v32 = *(v19 + 16);
    v34 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v94 = v30;
    v35 = v30 + v34;
    v36 = *(v33 + 56);
    do
    {
      v37 = v97;
      v32(v28, v35, v97);
      sub_1D62D48B4(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D7261E8C();
      (*(v33 - 8))(v28, v37);
      v35 += v36;
      --v31;
    }

    while (v31);

    a2 = v77;
    v15 = v76;
    v14 = v85;
    v18 = v91;
    v19 = v78;
  }

  else
  {
  }

  v38 = sub_1D7264A5C();
  v39 = -1 << *(v88 + 32);
  v40 = v38 & ~v39;
  v80 = v88 + 56;
  if (((*(v88 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
  {
    v73 = 1;
    return (*(v15 + 56))(a2, v73, 1, v87);
  }

  v79 = ~v39;
  v82 = *(v15 + 72);
  v93 = v19 + 16;
  v94 = (v19 + 8);
  while (1)
  {
    v41 = v82 * v40;
    sub_1D62D47DC(*(v88 + 48) + v82 * v40, v18, type metadata accessor for WebEmbedDatastoreCacheKey);
    sub_1D62D47DC(v18, v14, type metadata accessor for WebEmbedDataVisualization);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v81 = v41;
    if (EnumCaseMultiPayload == 1)
    {
      v43 = v84;
      sub_1D5BE74F4(v14, v84, type metadata accessor for GenericDataVisualization);
      v99 = 0x3A636972656E6567;
      v100 = 0xE90000000000003ALL;
      MEMORY[0x1DA6F9910](*v43, v43[1]);
      v45 = v99;
      v44 = v100;
      sub_1D5BF1B4C(v43, type metadata accessor for GenericDataVisualization);
    }

    else
    {
      v98 = *v14;
      v99 = 0x3A3A7374726F7073;
      v100 = 0xE800000000000000;
      v46 = SportsDataVisualization.identifier.getter();
      MEMORY[0x1DA6F9910](v46);

      v45 = v99;
      v44 = v100;
    }

    v47 = v83;
    sub_1D62D47DC(v90, v83, type metadata accessor for WebEmbedDataVisualization);
    v48 = swift_getEnumCaseMultiPayload();
    v89 = v40;
    if (v48 != 1)
    {
      break;
    }

    v49 = v84;
    sub_1D5BE74F4(v47, v84, type metadata accessor for GenericDataVisualization);
    v99 = 0x3A636972656E6567;
    v100 = 0xE90000000000003ALL;
    MEMORY[0x1DA6F9910](*v49, v49[1]);
    v51 = v99;
    v50 = v100;
    sub_1D5BF1B4C(v49, type metadata accessor for GenericDataVisualization);
    if (v45 == v51)
    {
      goto LABEL_16;
    }

LABEL_18:
    v53 = sub_1D72646CC();

    if (v53)
    {
      goto LABEL_19;
    }

LABEL_8:
    v18 = v91;
    sub_1D5BF1B4C(v91, type metadata accessor for WebEmbedDatastoreCacheKey);
    v40 = (v89 + 1) & v79;
    v14 = v85;
    if (((*(v80 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
      v73 = 1;
      v15 = v76;
      a2 = v77;
      return (*(v15 + 56))(a2, v73, 1, v87);
    }
  }

  v98 = *v47;
  v99 = 0x3A3A7374726F7073;
  v100 = 0xE800000000000000;
  v52 = SportsDataVisualization.identifier.getter();
  MEMORY[0x1DA6F9910](v52);

  v50 = v100;
  if (v45 != v99)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v44 != v50)
  {
    goto LABEL_18;
  }

LABEL_19:
  v54 = *(v87 + 20);
  v55 = *&v91[v54];
  v56 = *(v90 + v54);
  v57 = *(v55 + 16);
  if (v57 != *(v56 + 16))
  {
    goto LABEL_8;
  }

  if (v57 && v55 != v56)
  {
    v58 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v59 = v55 + v58;
    v60 = v56 + v58;
    v92 = *(v78 + 72);
    v61 = *(v78 + 16);
    do
    {
      v62 = v96;
      v61(v96, v59, v97);
      v63 = v95;
      v64 = v97;
      v65 = v61;
      v61(v95, v60, v97);
      sub_1D62D48B4(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v66 = v62;
      v67 = sub_1D7261FBC();
      v68 = *v94;
      (*v94)(v63, v64);
      v68(v66, v64);
      if ((v67 & 1) == 0)
      {
        goto LABEL_8;
      }

      v60 += v92;
      v59 += v92;
      --v57;
      v61 = v65;
    }

    while (v57);
  }

  sub_1D5BF1B4C(v91, type metadata accessor for WebEmbedDatastoreCacheKey);
  v69 = v75;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v69;
  v99 = *v69;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D6000BA0(v71);
    v72 = v99;
  }

  a2 = v77;
  sub_1D5BE74F4(*(v72 + 48) + v81, v77, type metadata accessor for WebEmbedDatastoreCacheKey);
  sub_1D62D29C0(v89);
  v73 = 0;
  *v69 = v99;
  v15 = v76;
  return (*(v15 + 56))(a2, v73, 1, v87);
}

void sub_1D62D05C8(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  v5 = sub_1D6953BC0(*(*v2 + 40), a1);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 <= 2)
      {
        if (*(*(v4 + 48) + v7))
        {
          if (v9 == 1)
          {
            v10 = 0x726564616568;
          }

          else
          {
            v10 = 0x7265746F6F66;
          }

          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE600000000000000;
          v10 = 0x74756F79616CLL;
        }
      }

      else if (*(*(v4 + 48) + v7) > 4u)
      {
        if (v9 == 5)
        {
          v11 = 0xE700000000000000;
          v10 = 0x7972617262696CLL;
        }

        else
        {
          v10 = 0x756F72676B636162;
          v11 = 0xEA0000000000646ELL;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0x6C6C6177796170;
        }

        else
        {
          v10 = 0x656D656874;
        }

        if (v9 == 3)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }
      }

      v12 = 0x756F72676B636162;
      if (a1 == 5)
      {
        v12 = 0x7972617262696CLL;
      }

      v13 = 0xEA0000000000646ELL;
      if (a1 == 5)
      {
        v13 = 0xE700000000000000;
      }

      v14 = 0x6C6C6177796170;
      if (a1 != 3)
      {
        v14 = 0x656D656874;
      }

      v15 = 0xE500000000000000;
      if (a1 == 3)
      {
        v15 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x7265746F6F66;
      if (a1 == 1)
      {
        v16 = 0x726564616568;
      }

      if (!a1)
      {
        v16 = 0x74756F79616CLL;
      }

      v17 = a1 <= 2u ? v16 : v12;
      v18 = a1 <= 2u ? 0xE600000000000000 : v13;
      if (v10 == v17 && v11 == v18)
      {
        break;
      }

      v19 = sub_1D72646CC();

      if (v19)
      {
        goto LABEL_46;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v22;
    v24 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D6000EE0();
      v21 = v24;
    }

    *a2 = *(*(v21 + 48) + v7);
    sub_1D62D32E8(v7);
    *v22 = v24;
  }

  else
  {
LABEL_44:
    *a2 = 7;
  }
}

void sub_1D62D0890(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v26 = ~v6;
    v27 = a1;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      v9 = v8 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v10 = v8 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v11 = *(*(v4 + 48) + v7) ? 0x64657375636F66 : 0x64656C6261736964;
      v12 = *(*(v4 + 48) + v7) ? 0xE700000000000000 : 0xE800000000000000;
      v13 = *(*(v4 + 48) + v7) <= 1u ? v11 : v9;
      v14 = *(*(v4 + 48) + v7) <= 1u ? v12 : v10;
      v15 = v27 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v16 = v27 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v17 = v27 ? 0x64657375636F66 : 0x64656C6261736964;
      v18 = v27 ? 0xE700000000000000 : 0xE800000000000000;
      v19 = v27 <= 1 ? v17 : v15;
      v20 = v27 <= 1 ? v18 : v16;
      if (v13 == v19 && v14 == v20)
      {
        break;
      }

      v21 = sub_1D72646CC();

      if (v21)
      {
        goto LABEL_45;
      }

      v7 = (v7 + 1) & v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v24;
    v28 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D6000BF4();
      v23 = v28;
    }

    *a2 = *(*(v23 + 48) + v7);
    sub_1D62D3570(v7);
    *v24 = v28;
  }

  else
  {
LABEL_43:
    *a2 = 4;
  }
}

uint64_t sub_1D62D0B28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = type metadata accessor for FeedLayoutCacheKey(0);
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v2;
  v72 = *v2;
  sub_1D7264A0C();
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v64 = a1[7];
  v15 = a1[9];
  v63 = a1[8];
  v62 = v15;
  v75 = v9;
  v76 = v8;
  sub_1D72621EC();
  v74 = v10;
  v68 = v11;
  sub_1D72621EC();
  v67 = v12;
  v66 = v13;
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](*(v14 + 16));
  v65 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = v65 + 40;
    do
    {

      sub_1D72621EC();

      v17 += 16;
      --v16;
    }

    while (v16);
  }

  sub_1D72621EC();
  sub_1D5BE251C(&v77, v62);
  v18 = a1[10];
  v61 = *(a1 + 17);
  v60 = *(a1 + 15);
  v59 = *(a1 + 13);
  v58 = *(a1 + 11);
  v55 = v18;
  MEMORY[0x1DA6FC0B0]();
  sub_1D5BE7138(v58.f64[0], v58.f64[1]);
  sub_1D5BE7138(v59.f64[0], v59.f64[1]);
  v19 = v60.f64[0];
  if (v60.f64[0] == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v19);
  v20 = v60.f64[1];
  if (v60.f64[1] == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v20);
  v21 = v61.f64[0];
  if (v61.f64[0] == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v21);
  v22 = v61.f64[1];
  if (v61.f64[1] == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v22);
  v57 = v4;
  v23 = (a1 + *(v4 + 24));
  sub_1D5BE7138(*v23, v23[1]);
  sub_1D72621EC();
  v24 = type metadata accessor for FeedLayoutCacheDynamicKey(0);
  sub_1D725A19C();
  sub_1D62D48B4(&qword_1EDF3BFB0, MEMORY[0x1E69D7280], MEMORY[0x1E69D7290]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  v25 = *(v24 + 36);
  v52 = v23;
  sub_1D5BE71D0(&v77, *(v23 + v25));
  v26 = sub_1D7264A5C();
  v27 = -1 << *(v72 + 32);
  v28 = v26 & ~v27;
  v71 = v72 + 56;
  if (((*(v72 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
    return (*(v56 + 56))(v53, 1, 1, v57);
  }

  v69 = ~v27;
  v70 = *(v56 + 72);
  v54 = (v65 + 40);
  v51 = xmmword_1D728D640;
  while (1)
  {
    if (v29 = v70 * v28, sub_1D62D47DC(*(v72 + 48) + v70 * v28, v7, type metadata accessor for FeedLayoutCacheKey), v30 = *v7, v31 = *(v7 + 1), v33 = *(v7 + 2), v32 = *(v7 + 3), v35 = *(v7 + 4), v34 = *(v7 + 5), v37 = *(v7 + 6), v36 = *(v7 + 7), v38 = *(v7 + 8), v73 = *(v7 + 9), v30 == v76) && v31 == v75 || (sub_1D72646CC())
    {
      if (v33 == v74 && v32 == v68 || (sub_1D72646CC()) && (v35 == v67 && v34 == v66 || (sub_1D72646CC()))
      {
        v39 = *(v37 + 16);
        if (v39 == *(v65 + 16))
        {
          if (v39 && v37 != v65)
          {
            v40 = (v37 + 40);
            v41 = v54;
            do
            {
              v42 = *(v40 - 1) == *(v41 - 1) && *v40 == *v41;
              if (!v42 && (sub_1D72646CC() & 1) == 0)
              {
                goto LABEL_14;
              }

              v40 += 2;
              v41 += 2;
            }

            while (--v39);
          }

          if (v36 == v64 && v38 == v63 || (sub_1D72646CC()) && (sub_1D5BFC390(v73, v62) & 1) != 0 && *(v7 + 10) == v55 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v7 + 88), v58), vceqq_f64(*(v7 + 104), v59)), vuzp1q_s32(vceqq_f64(*(v7 + 120), v60), vceqq_f64(*(v7 + 136), v61))), v51)) == 255 && (sub_1D5C1968C(&v7[*(v57 + 24)], v52))
          {
            break;
          }
        }
      }
    }

LABEL_14:
    sub_1D5BF1B4C(v7, type metadata accessor for FeedLayoutCacheKey);
    v28 = (v28 + 1) & v69;
    if (((*(v71 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      return (*(v56 + 56))(v53, 1, 1, v57);
    }
  }

  sub_1D5BF1B4C(v7, type metadata accessor for FeedLayoutCacheKey);
  v43 = v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v43;
  *&v77 = *v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D60014AC(v45);
    v46 = v77;
  }

  v47 = v53;
  sub_1D5BE74F4(*(v46 + 48) + v29, v53, type metadata accessor for FeedLayoutCacheKey);
  sub_1D62D37AC(v28);
  *v43 = v77;
  return (*(v56 + 56))(v47, 0, 1, v57);
}

uint64_t sub_1D62D1278(uint64_t a1)
{
  v2 = a1;
  v3 = 0x70616373646E616CLL;
  v4 = *v1;
  sub_1D7264A0C();
  sub_1D6E23ADC(v2);
  sub_1D72621EC();

  if ((v2 & 0x100) != 0)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v3 = 0x7469617274726F70;
    v5 = 0xE800000000000000;
  }

  sub_1D72621EC();

  v6 = sub_1D7264A5C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 512;
  }

  v34 = v1;
  v35 = ~v7;
  v9 = 0x7258656E6F685069;
  while (2)
  {
    v10 = (*(v4 + 48) + 2 * v8);
    v11 = v10[1];
    v12 = 0xE800000000000000;
    v13 = v9;
    switch(*v10)
    {
      case 1:
        goto LABEL_9;
      case 2:
        v12 = 0xEB0000000078614DLL;
LABEL_9:
        v13 = 0x7358656E6F685069;
        break;
      case 3:
        v13 = 0x4553656E6F685069;
        break;
      case 4:
        v13 = 0x3131656E6F685069;
        break;
      case 5:
        v13 = 0x3131656E6F685069;
        goto LABEL_31;
      case 6:
        v13 = 0x3131656E6F685069;
        goto LABEL_47;
      case 7:
        v13 = 0x3231656E6F685069;
        break;
      case 8:
        v13 = 0x3231656E6F685069;
        goto LABEL_36;
      case 9:
        v13 = 0x3231656E6F685069;
        goto LABEL_31;
      case 0xA:
        v13 = 0x3231656E6F685069;
        goto LABEL_47;
      case 0xB:
        v13 = 0x3331656E6F685069;
        break;
      case 0xC:
        v13 = 0x3331656E6F685069;
LABEL_36:
        v12 = 0xEC000000696E694DLL;
        break;
      case 0xD:
        v13 = 0x3331656E6F685069;
        goto LABEL_31;
      case 0xE:
        v13 = 0x3331656E6F685069;
        goto LABEL_47;
      case 0xF:
        v13 = 0x3431656E6F685069;
        break;
      case 0x10:
        v13 = 0x3431656E6F685069;
        goto LABEL_27;
      case 0x11:
        v13 = 0x3431656E6F685069;
        goto LABEL_31;
      case 0x12:
        v13 = 0x3431656E6F685069;
        goto LABEL_47;
      case 0x13:
        v13 = 0x3531656E6F685069;
        break;
      case 0x14:
        v13 = 0x3531656E6F685069;
        goto LABEL_27;
      case 0x15:
        v13 = 0x3531656E6F685069;
        goto LABEL_31;
      case 0x16:
        v13 = 0x3531656E6F685069;
        goto LABEL_47;
      case 0x17:
        v13 = 0x3631656E6F685069;
        break;
      case 0x18:
        v13 = 0x3631656E6F685069;
LABEL_27:
        v12 = 0xEC00000073756C50;
        break;
      case 0x19:
        v13 = 0x3631656E6F685069;
LABEL_31:
        v12 = 0xEB000000006F7250;
        break;
      case 0x1A:
        v13 = 0x3631656E6F685069;
LABEL_47:
        v12 = 0xEE0078614D6F7250;
        break;
      case 0x1B:
        v12 = 0xE400000000000000;
        v13 = 1684099177;
        break;
      case 0x1C:
        v12 = 0xE700000000000000;
        v13 = 0x72694164615069;
        break;
      case 0x1D:
        v13 = 0x696E694D64615069;
        break;
      case 0x1E:
        v14 = 895430705;
        goto LABEL_39;
      case 0x1F:
        v12 = 0xEA00000000003131;
        goto LABEL_40;
      case 0x20:
        v14 = 962540081;
LABEL_39:
        v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_40:
        v13 = 0x5F6F725064615069;
        break;
      case 0x21:
        v12 = 0xE300000000000000;
        v13 = 6513005;
        break;
      case 0x22:
        v13 = 0x6465727265666E69;
        break;
      default:
        break;
    }

    v15 = 0xE800000000000000;
    v16 = v9;
    switch(v2)
    {
      case 1:
        goto LABEL_50;
      case 2:
        v15 = 0xEB0000000078614DLL;
LABEL_50:
        if (v13 != 0x7358656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 3:
        if (v13 != 0x4553656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 4:
        if (v13 != 0x3131656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 5:
        v19 = 0x3131656E6F685069;
        goto LABEL_81;
      case 6:
        v18 = 0x3131656E6F685069;
        goto LABEL_107;
      case 7:
        if (v13 != 0x3231656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 8:
        v17 = 0x3231656E6F685069;
        goto LABEL_87;
      case 9:
        v19 = 0x3231656E6F685069;
        goto LABEL_81;
      case 10:
        v18 = 0x3231656E6F685069;
        goto LABEL_107;
      case 11:
        if (v13 != 0x3331656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 12:
        v17 = 0x3331656E6F685069;
LABEL_87:
        v20 = 1768843597;
        goto LABEL_88;
      case 13:
        v19 = 0x3331656E6F685069;
        goto LABEL_81;
      case 14:
        v18 = 0x3331656E6F685069;
        goto LABEL_107;
      case 15:
        if (v13 != 0x3431656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 16:
        v17 = 0x3431656E6F685069;
        goto LABEL_77;
      case 17:
        v19 = 0x3431656E6F685069;
        goto LABEL_81;
      case 18:
        v18 = 0x3431656E6F685069;
        goto LABEL_107;
      case 19:
        if (v13 != 0x3531656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 20:
        v17 = 0x3531656E6F685069;
        goto LABEL_77;
      case 21:
        v19 = 0x3531656E6F685069;
        goto LABEL_81;
      case 22:
        v18 = 0x3531656E6F685069;
        goto LABEL_107;
      case 23:
        if (v13 != 0x3631656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 24:
        v17 = 0x3631656E6F685069;
LABEL_77:
        v20 = 1937075280;
LABEL_88:
        v15 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v13 != v17)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 25:
        v19 = 0x3631656E6F685069;
LABEL_81:
        v15 = 0xEB000000006F7250;
        if (v13 != v19)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 26:
        v18 = 0x3631656E6F685069;
LABEL_107:
        v15 = 0xEE0078614D6F7250;
        if (v13 != v18)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 27:
        v15 = 0xE400000000000000;
        if (v13 != 1684099177)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 28:
        v15 = 0xE700000000000000;
        if (v13 != 0x72694164615069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 29:
        v9 = 0x696E694D64615069;
        goto LABEL_103;
      case 30:
        v21 = 895430705;
        goto LABEL_92;
      case 31:
        v15 = 0xEA00000000003131;
        goto LABEL_93;
      case 32:
        v21 = 962540081;
LABEL_92:
        v15 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_93:
        if (v13 != 0x5F6F725064615069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 33:
        v15 = 0xE300000000000000;
        if (v13 != 6513005)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 34:
        if (v13 != 0x6465727265666E69)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      default:
LABEL_103:
        if (v13 != v9)
        {
          goto LABEL_108;
        }

LABEL_104:
        if (v12 == v15)
        {
        }

        else
        {
LABEL_108:
          v22 = sub_1D72646CC();

          if ((v22 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        if (v11)
        {
          v23 = 0x70616373646E616CLL;
        }

        else
        {
          v23 = 0x7469617274726F70;
        }

        if (v11)
        {
          v24 = 0xE900000000000065;
        }

        else
        {
          v24 = 0xE800000000000000;
        }

        if (v23 != v3 || v24 != v5)
        {
          v26 = sub_1D72646CC();

          if (v26)
          {
            goto LABEL_123;
          }

LABEL_6:
          v8 = (v8 + 1) & v35;
          v9 = v16;
          if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 512;
          }

          continue;
        }

LABEL_123:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *v34;
        v36 = *v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6000C1C();
          v29 = v36;
        }

        v30 = (*(v29 + 48) + 2 * v8);
        v31 = *v30;
        v32 = v30[1];
        sub_1D62D3C8C(v8);
        *v34 = v36;
        if (v32)
        {
          v33 = 256;
        }

        else
        {
          v33 = 0;
        }

        return v33 | v31;
    }
  }
}

uint64_t sub_1D62D1B60(unint64_t a1, unsigned __int8 a2)
{
  v5 = *v2;
  sub_1D7264A0C();
  if (a2)
  {
    v6 = qword_1D72B6458[a1];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    v6 = a1;
  }

  MEMORY[0x1DA6FC0B0](v6);
  v7 = sub_1D7264A5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(v5 + 48) + 16 * v9;
    v12 = *v11;
    if (*(v11 + 8) != 1)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        if ((a2 & (a1 == 2)) != 0)
        {
          goto LABEL_20;
        }
      }

      else if ((a2 & (a1 > 2)) != 0)
      {
        goto LABEL_20;
      }
    }

    else if (v12)
    {
      if ((a2 & (a1 == 1)) != 0)
      {
        goto LABEL_20;
      }
    }

    else if ((a2 & (a1 == 0)) != 0)
    {
      goto LABEL_20;
    }

LABEL_7:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if ((a2 & 1) != 0 || v12 != a1)
  {
    goto LABEL_7;
  }

LABEL_20:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v17 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D600193C();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 16 * v9);
  sub_1D62D3EAC(v9);
  result = v15;
  *v2 = v17;
  return result;
}

uint64_t sub_1D62D1D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebEmbedDataVisualization(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v44 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v44 - v23);
  v54 = *v2;
  sub_1D7264A0C();
  sub_1D62D47DC(a1, v24, type metadata accessor for WebEmbedDataVisualization);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = v16;
  v46 = v2;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5BE74F4(v24, v7, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1B4C(v7, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v55 = *v24;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();

    v16 = v53;
  }

  v26 = sub_1D7264A5C();
  v27 = -1 << *(v54 + 32);
  v28 = v26 & ~v27;
  v51 = v54 + 56;
  if (((*(v54 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
    v37 = 1;
    v38 = v47;
    return (*(v9 + 56))(v38, v37, 1, v8);
  }

  v48 = a1;
  v49 = ~v27;
  v45 = v9;
  v52 = *(v9 + 72);
  while (1)
  {
    v29 = *(v54 + 48);
    v50 = v52 * v28;
    sub_1D62D47DC(v29 + v52 * v28, v20, type metadata accessor for WebEmbedDataVisualization);
    sub_1D62D47DC(v20, v16, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D5BE74F4(v16, v7, type metadata accessor for GenericDataVisualization);
      v56 = 0x3A636972656E6567;
      v57 = 0xE90000000000003ALL;
      MEMORY[0x1DA6F9910](*v7, v7[1]);
      v31 = v56;
      v30 = v57;
      sub_1D5BF1B4C(v7, type metadata accessor for GenericDataVisualization);
    }

    else
    {
      v55 = *v16;
      v56 = 0x3A3A7374726F7073;
      v57 = 0xE800000000000000;
      v32 = SportsDataVisualization.identifier.getter();
      MEMORY[0x1DA6F9910](v32);

      v31 = v56;
      v30 = v57;
    }

    sub_1D62D47DC(a1, v12, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1D5BE74F4(v12, v7, type metadata accessor for GenericDataVisualization);
    v56 = 0x3A636972656E6567;
    v57 = 0xE90000000000003ALL;
    MEMORY[0x1DA6F9910](*v7, v7[1]);
    v34 = v56;
    v33 = v57;
    sub_1D5BF1B4C(v7, type metadata accessor for GenericDataVisualization);
    if (v31 == v34)
    {
      goto LABEL_13;
    }

LABEL_14:
    v36 = sub_1D72646CC();

    sub_1D5BF1B4C(v20, type metadata accessor for WebEmbedDataVisualization);
    if (v36)
    {
      goto LABEL_19;
    }

    v28 = (v28 + 1) & v49;
    v16 = v53;
    if (((*(v51 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      v37 = 1;
      v38 = v47;
      goto LABEL_22;
    }
  }

  v55 = *v12;
  v56 = 0x3A3A7374726F7073;
  v57 = 0xE800000000000000;
  v35 = SportsDataVisualization.identifier.getter();
  MEMORY[0x1DA6F9910](v35);

  a1 = v48;

  v33 = v57;
  if (v31 != v56)
  {
    goto LABEL_14;
  }

LABEL_13:
  if (v30 != v33)
  {
    goto LABEL_14;
  }

  sub_1D5BF1B4C(v20, type metadata accessor for WebEmbedDataVisualization);
LABEL_19:
  v39 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v39;
  v56 = *v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D600083C(v41);
    v42 = v56;
  }

  v38 = v47;
  sub_1D5BE74F4(*(v42 + 48) + v50, v47, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D4090(v28);
  v37 = 0;
  *v39 = v56;
LABEL_22:
  v9 = v45;
  return (*(v9 + 56))(v38, v37, 1, v8);
}

uint64_t sub_1D62D2310(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 6;
  }

  v23 = v1;
  v8 = ~v6;
  v9 = a1;
  while (1)
  {
    v10 = *(*(v4 + 48) + v7);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v12 = 0xE600000000000000;
        v11 = 0x73656D656874;
      }

      else
      {
        if (v10 == 4)
        {
          v11 = 0x6C6C6177796170;
        }

        else
        {
          v11 = 0x756F72676B636162;
        }

        if (v10 == 4)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xEB0000000073646ELL;
        }
      }
    }

    else if (*(*(v4 + 48) + v7))
    {
      if (v10 == 1)
      {
        v11 = 0x73726564616568;
      }

      else
      {
        v11 = 0x737265746F6F66;
      }

      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
      v11 = 0x7374756F79616CLL;
    }

    v13 = 0x756F72676B636162;
    if (v9 == 4)
    {
      v13 = 0x6C6C6177796170;
    }

    v14 = 0xEB0000000073646ELL;
    if (v9 == 4)
    {
      v14 = 0xE700000000000000;
    }

    if (v9 == 3)
    {
      v13 = 0x73656D656874;
      v14 = 0xE600000000000000;
    }

    v15 = 0x737265746F6F66;
    if (v9 == 1)
    {
      v15 = 0x73726564616568;
    }

    if (!v9)
    {
      v15 = 0x7374756F79616CLL;
    }

    v16 = v9 <= 2 ? v15 : v13;
    v17 = v9 <= 2 ? 0xE700000000000000 : v14;
    if (v11 == v16 && v12 == v17)
    {
      break;
    }

    v18 = sub_1D72646CC();

    if (v18)
    {
      goto LABEL_40;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 6;
    }
  }

LABEL_40:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v2;
  v24 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D600103C();
    v21 = v24;
  }

  v19 = *(*(v21 + 48) + v7);
  sub_1D62D4484(v7);
  *v23 = v24;
  return v19;
}

void sub_1D62D2678(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v10 = sub_1D7264A5C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_1D62D283C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1D72649FC() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_1D62D29C0(unint64_t a1)
{
  v3 = sub_1D72585BC();
  v65 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v63 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v71 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v70 = (&v60 - v15);
  v62 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  v16 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v17);
  v77 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *v1 + 56;
  v21 = -1 << *(*v1 + 32);
  v22 = (a1 + 1) & ~v21;
  v23 = v22 >> 6;
  v24 = 1 << v22;
  if (((1 << v22) & *(v20 + 8 * (v22 >> 6))) != 0)
  {
    v78 = (a1 + 1) & ~v21;
    v25 = ~v21;

    v26 = sub_1D7263B8C();
    if ((*(v20 + 8 * v23) & v24) != 0)
    {
      v64 = v6;
      v69 = v20;
      v27 = 0;
      v66 = (v26 + 1) & v25;
      v28 = *(v16 + 72);
      v29 = (v65 + 8);
      v68 = v10;
      v31 = v77;
      v30 = v78;
      v67 = v19;
      v74 = v28;
      v75 = v25;
      v61 = (v65 + 8);
      while (1)
      {
        v34 = *(v19 + 48);
        v78 = v30;
        v35 = v28 * v30;
        sub_1D62D47DC(v34 + v28 * v30, v31, type metadata accessor for WebEmbedDatastoreCacheKey);
        sub_1D7264A0C();
        v36 = v70;
        sub_1D62D47DC(v31, v70, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v37 = v63;
          sub_1D5BE74F4(v36, v63, type metadata accessor for GenericDataVisualization);
          v81 = 0x3A636972656E6567;
          v82 = 0xE90000000000003ALL;
          MEMORY[0x1DA6F9910](*v37, v37[1]);
          sub_1D5BF1B4C(v37, type metadata accessor for GenericDataVisualization);
        }

        else
        {
          v38 = *v36;
          v81 = 0x3A3A7374726F7073;
          v82 = 0xE800000000000000;
          v80 = v38;
          v39 = SportsDataVisualization.identifier.getter();
          MEMORY[0x1DA6F9910](v39);
        }

        sub_1D72621EC();

        v40 = v71;
        sub_1D62D47DC(v77, v71, type metadata accessor for WebEmbedDataVisualization);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v76 = a1;
        if (EnumCaseMultiPayload == 1)
        {
          v42 = sub_1D6D2968C();
          v43 = sub_1D6D29D78();
          v81 = v42;
          sub_1D6985118(v43);
          v44 = MEMORY[0x1E6968FB0];
          sub_1D62D5684(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
          sub_1D62D5234(&qword_1EDF053F0, &qword_1EDF05400, v44);
          sub_1D62D48B4(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          v45 = sub_1D72623CC();

          sub_1D5BF1B4C(v40, type metadata accessor for WebEmbedDataVisualization);
        }

        else
        {
          v46 = *v40;
          if (*v40 >> 61 == 2)
          {
            v45 = *(*((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
          }

          else
          {
            v81 = *v40;
            v47 = sub_1D6F86D04();
            v80 = v46;
            v48 = sub_1D6F87060();
            v79 = v47;
            sub_1D6985118(v48);
            v81 = v79;
            v49 = MEMORY[0x1E6968FB0];
            sub_1D62D5684(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
            sub_1D62D5234(&qword_1EDF053F0, &qword_1EDF05400, v49);
            sub_1D62D48B4(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
            v45 = sub_1D72623CC();
            v29 = v61;
          }
        }

        MEMORY[0x1DA6FC0B0](*(v45 + 16));
        v50 = *(v45 + 16);
        if (v50)
        {
          v72 = v35;
          v73 = v27;
          v51 = v45 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
          v52 = *(v65 + 72);
          v53 = *(v65 + 16);
          v54 = v64;
          do
          {
            v53(v54, v51, v3);
            sub_1D62D48B4(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
            sub_1D7261E8C();
            (*v29)(v54, v3);
            v51 += v52;
            --v50;
          }

          while (v50);

          v35 = v72;
          v27 = v73;
        }

        else
        {
        }

        v55 = sub_1D7264A5C();
        v31 = v77;
        sub_1D5BF1B4C(v77, type metadata accessor for WebEmbedDatastoreCacheKey);
        v32 = v75;
        a1 = v76;
        v56 = v55 & v75;
        if (v76 >= v66)
        {
          break;
        }

        v19 = v67;
        v33 = v78;
        v28 = v74;
        if (v56 < v66)
        {
          goto LABEL_25;
        }

LABEL_26:
        if (v28 * v76 < v35 || *(v19 + 48) + v28 * v76 >= (*(v19 + 48) + v35 + v28))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v33;
          if (v28 * v76 == v35)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v28 = v74;
        v32 = v75;
        v33 = v78;
        a1 = v78;
LABEL_6:
        v30 = (v33 + 1) & v32;
        if (((*(v69 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {

          v20 = v69;
          goto LABEL_33;
        }
      }

      v19 = v67;
      v33 = v78;
      v28 = v74;
      if (v56 < v66)
      {
        goto LABEL_6;
      }

LABEL_25:
      if (v76 < v56)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }

LABEL_33:
    *(v20 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v20 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v57 = *(v19 + 16);
  v58 = __OFSUB__(v57, 1);
  v59 = v57 - 1;
  if (v58)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v59;
    ++*(v19 + 36);
  }
}

void sub_1D62D32E8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D7264A0C();
        sub_1D72621EC();

        v10 = sub_1D7264A5C() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

void sub_1D62D3570(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D7264A0C();
        sub_1D72621EC();

        v10 = sub_1D7264A5C() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

void sub_1D62D37AC(unint64_t a1)
{
  v44 = type metadata accessor for FeedLayoutCacheKey(0);
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1D7263B8C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = *(v3 + 72);
      v43 = v7;
      v42 = v8;
      v41 = v11;
      v40 = (v12 + 1) & v11;
      v39 = v13;
      while (1)
      {
        v14 = *(v7 + 48);
        v45 = v13 * v10;
        v46 = a1;
        sub_1D62D47DC(v14 + v13 * v10, v6, type metadata accessor for FeedLayoutCacheKey);
        sub_1D7264A0C();
        v15 = *(v6 + 6);
        v16 = *(v6 + 9);
        sub_1D72621EC();
        sub_1D72621EC();
        sub_1D72621EC();
        MEMORY[0x1DA6FC0B0](*(v15 + 16));
        v17 = *(v15 + 16);
        if (v17)
        {
          v18 = v15 + 40;
          do
          {

            sub_1D72621EC();

            v18 += 16;
            --v17;
          }

          while (v17);
        }

        sub_1D72621EC();
        sub_1D5BE251C(v47, v16);
        v19 = *(v6 + 11);
        v20 = *(v6 + 12);
        v21 = *(v6 + 13);
        v22 = *(v6 + 14);
        v23 = *(v6 + 15);
        v24 = *(v6 + 16);
        v26 = *(v6 + 17);
        v25 = *(v6 + 18);
        MEMORY[0x1DA6FC0B0](*(v6 + 10));
        sub_1D5BE7138(v19, v20);
        sub_1D5BE7138(v21, v22);
        v27 = v23 == 0.0 ? 0.0 : v23;
        MEMORY[0x1DA6FC0E0](*&v27);
        v28 = v24 == 0.0 ? 0.0 : v24;
        MEMORY[0x1DA6FC0E0](*&v28);
        v29 = v26 == 0.0 ? 0.0 : v26;
        MEMORY[0x1DA6FC0E0](*&v29);
        v30 = v25 == 0.0 ? 0.0 : v25;
        MEMORY[0x1DA6FC0E0](*&v30);
        v31 = &v6[*(v44 + 24)];
        sub_1D5BE7138(*v31, v31[1]);
        sub_1D72621EC();
        v32 = type metadata accessor for FeedLayoutCacheDynamicKey(0);
        sub_1D725A19C();
        sub_1D62D48B4(&qword_1EDF3BFB0, MEMORY[0x1E69D7280], MEMORY[0x1E69D7290]);
        sub_1D7261E8C();
        sub_1D7264A2C();
        sub_1D7264A2C();
        sub_1D5BE71D0(v47, *(v31 + *(v32 + 36)));
        v33 = sub_1D7264A5C();
        sub_1D5BF1B4C(v6, type metadata accessor for FeedLayoutCacheKey);
        v34 = v41;
        v35 = v33 & v41;
        a1 = v46;
        if (v46 >= v40)
        {
          break;
        }

        v7 = v43;
        v8 = v42;
        v13 = v39;
        if (v35 < v40)
        {
          goto LABEL_26;
        }

LABEL_27:
        if (v13 * v46 < v45 || *(v7 + 48) + v13 * v46 >= (*(v7 + 48) + v45 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v10;
          if (v13 * v46 == v45)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v10;
LABEL_6:
        v10 = (v10 + 1) & v34;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v7 = v43;
      v8 = v42;
      v13 = v39;
      if (v35 < v40)
      {
        goto LABEL_6;
      }

LABEL_26:
      if (v46 < v35)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

LABEL_31:

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }
}

void sub_1D62D3C8C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 2 * v6);
        sub_1D7264A0C();
        sub_1D6E23ADC(v10);
        sub_1D72621EC();

        sub_1D72621EC();

        v11 = sub_1D7264A5C() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 2 * v2);
          v14 = (v12 + 2 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_1D62D3EAC(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(v3 + 48) + 16 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        sub_1D7264A0C();
        if (v13)
        {
          v12 = qword_1D72B6458[v12];
        }

        else
        {
          MEMORY[0x1DA6FC0B0](2);
        }

        MEMORY[0x1DA6FC0B0](v12);
        v14 = sub_1D7264A5C() & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_14;
        }

        if (v2 >= v14)
        {
LABEL_14:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + v10);
          if (16 * v2 != v10 || (v2 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_1D62D4090(int64_t a1)
{
  v3 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v31 - v13;
  v15 = *v1;
  v16 = *v1 + 56;
  v17 = -1 << *(*v1 + 32);
  v18 = (a1 + 1) & ~v17;
  if (((1 << v18) & *(v16 + 8 * (v18 >> 6))) != 0)
  {
    v34 = v12;
    v19 = ~v17;

    v20 = sub_1D7263B8C();
    if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) != 0)
    {
      v21 = (v20 + 1) & v19;
      v22 = *(v34 + 72);
      v31 = v21;
      v33 = v22;
      while (1)
      {
        v23 = *(v15 + 48);
        v34 = v22 * v18;
        sub_1D62D47DC(v23 + v22 * v18, v14, type metadata accessor for WebEmbedDataVisualization);
        sub_1D7264A0C();
        sub_1D62D47DC(v14, v9, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v24 = v32;
          sub_1D5BE74F4(v9, v32, type metadata accessor for GenericDataVisualization);
          sub_1D72621EC();
          sub_1D5BF1B4C(v24, type metadata accessor for GenericDataVisualization);
        }

        else
        {
          v35 = *v9;
          SportsDataVisualization.identifier.getter();
          sub_1D72621EC();

          v21 = v31;
        }

        v25 = sub_1D7264A5C();
        sub_1D5BF1B4C(v14, type metadata accessor for WebEmbedDataVisualization);
        v26 = v25 & v19;
        if (a1 >= v21)
        {
          break;
        }

        v22 = v33;
        if (v26 < v21)
        {
          goto LABEL_14;
        }

LABEL_15:
        v27 = v22 * a1;
        if (v22 * a1 < v34 || *(v15 + 48) + v22 * a1 >= (*(v15 + 48) + v34 + v22))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v18;
          if (v27 == v34)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v18;
LABEL_6:
        v18 = (v18 + 1) & v19;
        if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v22 = v33;
      if (v26 < v21)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v26)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v28 = *(v15 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v30;
    ++*(v15 + 36);
  }
}

void sub_1D62D4484(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D7264A0C();
        sub_1D72621EC();

        v10 = sub_1D7264A5C() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

double sub_1D62D46F4(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1D62D4704(a1, a2);
  }

  return result;
}

double sub_1D62D4704(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1D62D4718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D62D5684(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D62D4788()
{
  result = qword_1EDF097C8[0];
  if (!qword_1EDF097C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF097C8);
  }

  return result;
}

uint64_t sub_1D62D47DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D62D4844()
{
  result = qword_1EC885780;
  if (!qword_1EC885780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885780);
  }

  return result;
}

uint64_t sub_1D62D48B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D62D4918(uint64_t a1)
{
  if (!qword_1EDF04990)
  {
    sub_1D5D077AC(255, &unk_1EDF04980, MEMORY[0x1E69E62F8]);
    sub_1D5B67994(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04990);
    }
  }
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = (type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[9], v4);

  return swift_deallocObject();
}

double sub_1D62D4BBC(uint64_t a1)
{
  type metadata accessor for WebEmbedDataVisualizationDataRequest(0);

  return sub_1D62CC718(a1, v2);
}

uint64_t sub_1D62D4C2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = off_1F5123180;
  v4 = type metadata accessor for WebEmbedDataVisualizationDataService(0);
  return v3(v2, v4);
}

void sub_1D62D4D4C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t, __n128))
{
  v25 = a2;
  v29 = a4;
  v26 = a1;
  v5 = type metadata accessor for WebEmbedDataVisualization(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v30;
    sub_1D62D47DC(v30[6] + *(v28 + 72) * v20, v8, type metadata accessor for WebEmbedDataVisualization);
    v22 = *(v21[7] + 8 * v20);

    v23 = (v29)(v8, v22);

    sub_1D5BF1B4C(v8, type metadata accessor for WebEmbedDataVisualization);
    if (v23)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1D62CF500(v26, v25, v27, v30);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1D62D4F64(uint64_t a1, uint64_t (*a2)(char *, uint64_t, __n128))
{
  v3 = v2;
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 > 0xD)
  {
    v13 = 8 * (v8 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_1D62CEDB4(v14, v9, v5, a2);
      MEMORY[0x1DA6FD500](v14, -1, -1);
      return;
    }

    v10 = v13;
  }

  MEMORY[0x1EEE9AC00](a1, v10);
  v12 = v15 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v12, v11);
  sub_1D62D4D4C(v12, v9, v5, a2);
  if (v3)
  {
    swift_willThrow();
  }
}

void sub_1D62D50E4(uint64_t a1)
{
  if (!qword_1EC885790)
  {
    type metadata accessor for WebEmbedDataVisualization(255);
    type metadata accessor for WebEmbedDatastore(255);
    sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization, &protocol conformance descriptor for WebEmbedDataVisualization);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885790);
    }
  }
}

void sub_1D62D5190(uint64_t a1)
{
  if (!qword_1EC885798)
  {
    type metadata accessor for WebEmbedDatastoreCacheKey(255);
    sub_1D62D5684(255, &unk_1EDF1AF40, type metadata accessor for WeakWebEmbedDataSourceManagerObserver, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC885798);
    }
  }
}

uint64_t sub_1D62D5234(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D62D5684(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D62D5298()
{
  v1 = *(sub_1D72585BC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D62CE7CC(v2, v3);
}

uint64_t objectdestroy_26Tm()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D62D543C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1D72585BC() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

double sub_1D62D54D0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedDataVisualizationDataServiceError(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  v8 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v7[8])
      {
        a2 = *v7;
      }
    }

    else
    {
      sub_1D5BF1B4C(v7, type metadata accessor for WebEmbedDataVisualizationDataServiceError);
    }
  }

  return a2;
}

void sub_1D62D55EC(uint64_t a1)
{
  if (!qword_1EDF1A328)
  {
    sub_1D62D5684(255, &qword_1EDF1A6D0, sub_1D5EE6520, MEMORY[0x1E69E6720]);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A328);
    }
  }
}

void sub_1D62D5684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D62D56E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726413C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D62D574C()
{
  if (!qword_1EC8857A8)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8857A8);
    }
  }
}

void sub_1D62D57AC(uint64_t a1)
{
  if (!qword_1EDF03EB0)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6B0, 0x1E69B5578);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03EB0);
    }
  }
}

void sub_1D62D5828(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v4 &= v4 - 1;
    sub_1D5BF4D9C();
    v9 = sub_1D72639FC();
    if (v9[2] == 3)
    {
      v18 = v9[4];
      v10 = v9[7];
      v17 = v9[6];
      v20 = v9[5];

      v19 = v10;

      v16 = sub_1D72639FC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D6993324(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = sub_1D6993324((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      v13 = &v7[40 * v12];
      *(v13 + 4) = v18;
      *(v13 + 5) = v20;
      *(v13 + 6) = v17;
      *(v13 + 7) = v19;
      *(v13 + 8) = v16;
    }

    else
    {
    }
  }

  while (1)
  {
    v6 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v6 >= v5)
    {

      MEMORY[0x1EEE9AC00](v14, v15);
      sub_1D62D74AC(0, &qword_1EDF053B0, MEMORY[0x1E69D6430], MEMORY[0x1E69E62F8]);
      sub_1D725BDCC();

      return;
    }

    v4 = *(v1 + 8 * v6);
    ++v8;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1D62D5B00(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D7263ECC();
    sub_1D62D74AC(0, &qword_1EDF17A80, MEMORY[0x1E69B40B8], MEMORY[0x1E69D6B18]);
    v6 = (a1 + 64);
    do
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v6 += 5;
      v12 = swift_allocObject();
      v12[2] = v7;
      v12[3] = v8;
      v12[4] = v9;
      v12[5] = v10;
      v12[6] = v11;
      v12[7] = a2;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      sub_1D725BA6C();
      v13 = sub_1D725B92C();
      sub_1D725A9BC();
      sub_1D725BAAC();

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v3;
    }

    while (v3);
  }

  sub_1D62D7444(0, a3);
  v14 = sub_1D725B92C();
  sub_1D62D7478(0, v15);
  sub_1D62D7610(&qword_1EDF05378, sub_1D62D7478, MEMORY[0x1E69E6340]);
  v16 = sub_1D725BA3C();

  return v16;
}

uint64_t sub_1D62D5D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v6 = sub_1D725895C();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_1D72607EC();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v3[20] = *(v8 + 64);
  v3[21] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[22] = v9;
  v10 = swift_task_alloc();
  v3[23] = v10;
  *v10 = v3;
  v10[1] = sub_1D62D5F0C;

  return sub_1D62D65BC(v9, a2, a3);
}